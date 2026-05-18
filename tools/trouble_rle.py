#!/usr/bin/env python3

import argparse
import sys
from pathlib import Path


TYPE1_WINDOW_MULTIPLIERS = [1, 1, 1, 1, 1, 2, 2, 2]
TYPE1_WINDOW_OFFSETS = [-2, -1, 0, 1, 2, -1, 0, 1]
TYPE2_DECODED_SIZE_CANDIDATES = [
    0x100,
    0x400,
    0x900,
    0x1000,
    0x1200,
    0x2400,
    0x4000,
]


class DecodeError(ValueError):
    pass


def parse_int(value: str) -> int:
    return int(value, 0)


def require_bytes(data: bytes, offset: int, size: int, context: str) -> None:
    if offset < 0 or offset + size > len(data):
        raise DecodeError(f"{context}: stream ended at 0x{offset:X}, need 0x{size:X} bytes")


def infer_subtype(path: Path, subtype: str | None) -> str:
    if subtype is not None:
        return subtype

    if path.suffix == ".rle1":
        return "Type1"
    if path.suffix == ".rle2":
        return "Type2"

    raise DecodeError(f"{path}: expected .rle1 or .rle2 input, or pass --subtype")


def check_trailing_bytes(data: bytes, consumed: int, strict: bool) -> None:
    trailing = data[consumed:]
    if not trailing:
        return

    if any(byte != 0 for byte in trailing):
        message = f"non-zero trailing bytes after compressed stream at 0x{consumed:X}"
        if strict:
            raise DecodeError(message)
        print(f"warning: {message}", file=sys.stderr)


def trouble_rle_type1_decode(data: bytes) -> tuple[bytes, int]:
    if not data:
        raise DecodeError("Type1 input is empty")

    output = bytearray()
    position = 0
    command = data[position]
    window_size = 4

    while command != 0xFF:
        current_command = command

        if current_command < 0x80:
            while current_command < 0x80:
                table_index = (current_command >> 4) & 7
                copy_position = (
                    len(output)
                    - (window_size * TYPE1_WINDOW_MULTIPLIERS[table_index])
                    - TYPE1_WINDOW_OFFSETS[table_index]
                )
                count = (current_command & 0xF) + 1

                if copy_position < 0:
                    raise DecodeError("Type1 back-reference before output start")

                for _ in range(count):
                    if copy_position >= len(output):
                        raise DecodeError("Type1 back-reference beyond current output")
                    output.append(output[copy_position])
                    copy_position += 1

                position += 1
                require_bytes(data, position, 1, "Type1 command")
                command = data[position]
                current_command = command

        if current_command == 0x80:
            require_bytes(data, position, 4, "Type1 window-size command")
            position += 1
            window_size = (data[position] << 8) + data[position + 1]
            command = data[position + 2]
            position += 2
        elif current_command < 0xA0:
            require_bytes(data, position, 3, "Type1 short back-reference command")
            copy_position = len(output) - data[position + 1]
            count = (current_command & 0x1F) + 1

            if copy_position < 0:
                raise DecodeError("Type1 short back-reference before output start")

            for _ in range(count):
                if copy_position >= len(output):
                    raise DecodeError("Type1 short back-reference beyond current output")
                output.append(output[copy_position])
                copy_position += 1

            command = data[position + 2]
            position += 2
        elif current_command < 0xC0:
            count = (current_command & 0x1F) + 1
            position += 1
            require_bytes(data, position, count + 1, "Type1 literal command")
            output.extend(data[position : position + count])
            position += count
            command = data[position]
        elif current_command < 0xD0:
            require_bytes(data, position, 3, "Type1 fill command")
            count = (current_command & 0xF) + 2
            output.extend(bytes([data[position + 1]]) * count)
            command = data[position + 2]
            position += 2
        elif current_command < 0xE0:
            require_bytes(data, position, 2, "Type1 zero-fill command")
            count = (current_command & 0xF) + 1
            output.extend(bytes(count))
            command = data[position + 1]
            position += 1
        elif current_command < 0xF0:
            require_bytes(data, position, 2, "Type1 wide repeat command")
            if not output:
                raise DecodeError("Type1 repeat needs previous output byte")
            count = (current_command & 0xF) + 1
            output.extend(bytes([output[-1]]) * (count * 0x10))
            command = data[position + 1]
            position += 1
        elif current_command < 0xFF:
            require_bytes(data, position, 2, "Type1 repeat command")
            if not output:
                raise DecodeError("Type1 repeat needs previous output byte")
            count = (current_command & 0xF) + 1
            output.extend(bytes([output[-1]]) * count)
            command = data[position + 1]
            position += 1

    return bytes(output), position + 1


def append_limited(output: bytearray, data: bytes, decoded_size: int | None) -> None:
    if decoded_size is None:
        output.extend(data)
        return

    remaining = decoded_size - len(output)
    if remaining > 0:
        output.extend(data[:remaining])


def append_fill(output: bytearray, value: int, count: int, decoded_size: int | None) -> None:
    if decoded_size is not None:
        count = min(count, decoded_size - len(output))
    if count > 0:
        output.extend(bytes([value]) * count)


def trouble_rle_type2_decode_with_size(data: bytes, decoded_size: int) -> tuple[bytes, int]:
    decoded, consumed, stopped = trouble_rle_type2_decode(data, decoded_size)

    if len(decoded) != decoded_size:
        if stopped:
            raise DecodeError(f"Type2 terminator reached after 0x{len(decoded):X} bytes, expected 0x{decoded_size:X}")
        raise DecodeError(f"Type2 decoded 0x{len(decoded):X} bytes, expected 0x{decoded_size:X}")

    return decoded, consumed


def trouble_rle_type2_decode(data: bytes, decoded_size: int | None = None) -> tuple[bytes, int, bool]:
    output = bytearray()
    position = 0

    while position < len(data) and (decoded_size is None or len(output) < decoded_size):
        command = data[position]
        position += 1

        if command == 0:
            return bytes(output), position, True

        if command < 0x80:
            require_bytes(data, position, command, "Type2 literal command")
            append_limited(output, data[position : position + command], decoded_size)
            position += command
        elif command < 0xC0:
            append_fill(output, 0, command & 0x3F, decoded_size)
        elif command < 0xE0:
            append_fill(output, 0, (command & 0x1F) << 6, decoded_size)
        else:
            require_bytes(data, position, 1, "Type2 repeat command")
            append_fill(output, data[position], command & 0x1F, decoded_size)
            position += 1

    return bytes(output), position, False


def infer_type2_decoded_size(data: bytes) -> tuple[bytes, int]:
    valid_candidates = []

    for decoded_size in TYPE2_DECODED_SIZE_CANDIDATES:
        try:
            decoded, consumed = trouble_rle_type2_decode_with_size(data, decoded_size)
        except DecodeError:
            continue

        if all(byte == 0 for byte in data[consumed:]):
            valid_candidates.append((decoded_size, decoded, consumed))

    if valid_candidates:
        _, decoded, consumed = max(valid_candidates, key=lambda candidate: candidate[0])
        return decoded, consumed

    decoded, consumed, _ = trouble_rle_type2_decode(data)
    return decoded, consumed


def decode_file(input_path: Path, subtype: str, decoded_size: int | None, strict_trailing: bool) -> tuple[bytes, int]:
    data = input_path.read_bytes()

    if subtype == "Type1":
        decoded, consumed = trouble_rle_type1_decode(data)
    elif subtype == "Type2":
        if decoded_size is None:
            decoded, consumed = infer_type2_decoded_size(data)
        else:
            decoded, consumed = trouble_rle_type2_decode_with_size(data, decoded_size)
    else:
        raise DecodeError(f"unknown subtype {subtype}")

    check_trailing_bytes(data, consumed, strict_trailing)
    return decoded, consumed


def main() -> int:
    parser = argparse.ArgumentParser(description="Decode a Mischief Makers Trouble RLE stream to a raw .bin file.")
    parser.add_argument("input", type=Path, help="Input .rle1 or .rle2 file")
    parser.add_argument("output", type=Path, help="Output decoded .bin file")
    parser.add_argument("--subtype", choices=["Type1", "Type2"], help="Override subtype inferred from extension")
    parser.add_argument("--decoded-size", type=parse_int, help="Expected Type2 decoded size")
    parser.add_argument("--width", type=parse_int, help="Expected Type2 decoded width")
    parser.add_argument("--height", type=parse_int, help="Expected Type2 decoded height")
    parser.add_argument("--strict-trailing", action="store_true", help="Fail if bytes remain after the stream")
    args = parser.parse_args()

    try:
        subtype = infer_subtype(args.input, args.subtype)
        decoded_size = args.decoded_size

        if args.width is not None or args.height is not None:
            if args.width is None or args.height is None:
                raise DecodeError("--width and --height must be provided together")
            size_from_dimensions = args.width * args.height
            if decoded_size is not None and decoded_size != size_from_dimensions:
                raise DecodeError("--decoded-size does not match --width * --height")
            decoded_size = size_from_dimensions

        decoded, consumed = decode_file(args.input, subtype, decoded_size, args.strict_trailing)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_bytes(decoded)
        print(f"{args.input} -> {args.output}: decoded 0x{len(decoded):X} bytes, consumed 0x{consumed:X} bytes")
        return 0
    except (OSError, DecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
