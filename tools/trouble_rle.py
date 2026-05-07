#!/usr/bin/env python3

import argparse
import hashlib
import json
import math
import shutil
import struct
from pathlib import Path


TYPE1_WINDOW_MULTIPLIERS = [1, 1, 1, 1, 1, 2, 2, 2]
TYPE1_WINDOW_OFFSETS = [-2, -1, 0, 1, 2, -1, 0, 1]
TYPE2_SIZE_CANDIDATES = [
    16 * 16,
    32 * 32,
    48 * 48,
    64 * 64,
    96 * 96,
    128 * 128,
]


def Align(value, alignment):
    return (value + alignment - 1) & ~(alignment - 1)


def Sha1(data):
    return hashlib.sha1(data).hexdigest()


def Read_U32(data, offset):
    return struct.unpack_from(">I", data, offset)[0]


def Write_File(path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def Trouble_RLE_Type1_Decode(data, offset=0, initial_output=b""):
    output = bytearray(initial_output)
    initial_size = len(output)
    position = offset
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
                    raise ValueError("Type1 back-reference before output start")

                for _ in range(count):
                    output.append(output[copy_position])
                    copy_position += 1

                position += 1
                command = data[position]
                current_command = command

        if current_command == 0x80:
            position += 1
            window_size = (data[position] << 8) + data[position + 1]
            command = data[position + 2]
            position += 2
        elif current_command < 0xA0:
            copy_position = len(output) - data[position + 1]
            count = (current_command & 0x1F) + 1
            if copy_position < 0:
                raise ValueError("Type1 short back-reference before output start")

            for _ in range(count):
                output.append(output[copy_position])
                copy_position += 1

            position += 1
            command = data[position + 1]
            position += 1
        elif current_command < 0xC0:
            count = (current_command & 0x1F) + 1
            position += 1
            output.extend(data[position:position + count])
            position += count
            command = data[position]
        elif current_command < 0xD0:
            count = (current_command & 0xF) + 2
            output.extend(bytes([data[position + 1]]) * count)
            command = data[position + 2]
            position += 2
        elif current_command < 0xE0:
            count = (current_command & 0xF) + 1
            output.extend(bytes(count))
            command = data[position + 1]
            position += 1
        elif current_command < 0xF0:
            if len(output) == initial_size:
                raise ValueError("Type1 repeat needs previous output byte")
            count = (current_command & 0xF) + 1
            output.extend(bytes([output[-1]]) * (count * 0x10))
            command = data[position + 1]
            position += 1
        elif current_command < 0xFF:
            if len(output) == initial_size:
                raise ValueError("Type1 repeat needs previous output byte")
            count = (current_command & 0xF) + 1
            output.extend(bytes([output[-1]]) * count)
            command = data[position + 1]
            position += 1
        else:
            break

    return bytes(output[initial_size:]), position + 1


def Trouble_RLE_Type1_Encode(data):
    output = bytearray()
    position = 0

    while position < len(data):
        count = min(0x20, len(data) - position)
        output.append(0xA0 | (count - 1))
        output.extend(data[position:position + count])
        position += count

    output.append(0xFF)
    return bytes(output)


def Trouble_RLE_Type2_Decode(data, decoded_size):
    output = bytearray()
    position = 0

    while len(output) < decoded_size:
        command = data[position]
        position += 1

        if command == 0:
            break

        if command < 0x80:
            count = min(command, decoded_size - len(output))
            output.extend(data[position:position + count])
            position += command
        elif command < 0xC0:
            count = min(command & 0x3F, decoded_size - len(output))
            output.extend(bytes(count))
        elif command < 0xE0:
            count = min((command & 0x1F) << 6, decoded_size - len(output))
            output.extend(bytes(count))
        else:
            count = min(command & 0x1F, decoded_size - len(output))
            value = data[position]
            position += 1
            output.extend(bytes([value]) * count)

    if len(output) != decoded_size:
        raise ValueError(f"Type2 decoded 0x{len(output):X} bytes, expected 0x{decoded_size:X}")

    return bytes(output), position


def Trouble_RLE_Type2_Encode(data):
    output = bytearray()
    position = 0

    while position < len(data):
        zero_run = 0
        while position + zero_run < len(data) and data[position + zero_run] == 0:
            zero_run += 1

        if zero_run >= 64:
            count = min(31, zero_run // 64)
            output.append(0xC0 | count)
            position += count * 64
            continue

        if zero_run >= 2:
            count = min(0x3F, zero_run)
            output.append(0x80 | count)
            position += count
            continue

        repeat_run = 1
        while (
            position + repeat_run < len(data)
            and data[position + repeat_run] == data[position]
            and repeat_run < 0x1F
        ):
            repeat_run += 1

        if repeat_run >= 3:
            output.append(0xE0 | repeat_run)
            output.append(data[position])
            position += repeat_run
            continue

        literal_start = position
        position += 1
        while position < len(data) and position - literal_start < 0x7F:
            if data[position] == 0 and position + 1 < len(data) and data[position + 1] == 0:
                break

            repeat_run = 1
            while (
                position + repeat_run < len(data)
                and data[position + repeat_run] == data[position]
                and repeat_run < 3
            ):
                repeat_run += 1
            if repeat_run >= 3:
                break

            position += 1

        count = position - literal_start
        output.append(count)
        output.extend(data[literal_start:position])

    return bytes(output)


def Parse_Type2_Table_Candidate(segment, table_offset):
    payload_size = table_offset
    table_address_base = Read_U32(segment, table_offset)
    offsets = []
    seen_terminator = False

    if table_address_base == 0:
        return None

    for offset in range(table_offset, len(segment), 4):
        word = Read_U32(segment, offset)

        if word == 0:
            seen_terminator = True
            continue

        if seen_terminator:
            return None

        payload_offset = word - table_address_base
        if payload_offset < 0 or payload_offset > payload_size:
            return None

        if offsets and payload_offset <= offsets[-1]:
            return None

        offsets.append(payload_offset)

    if len(offsets) < 2 or offsets[0] != 0:
        return None

    has_payload_end_pointer = offsets[-1] == payload_size
    if not has_payload_end_pointer:
        offsets.append(payload_size)

    ranges = []
    for index in range(len(offsets) - 1):
        start = offsets[index]
        end = offsets[index + 1]
        if start >= end:
            return None
        ranges.append((start, end))

    return {
        "tableOffset": table_offset,
        "tableAddressBase": table_address_base,
        "hasPayloadEndPointer": has_payload_end_pointer,
        "ranges": ranges,
    }


def Infer_Type2_Table(segment):
    candidates = []

    for table_offset in range(4, len(segment) - 7, 4):
        parsed = Parse_Type2_Table_Candidate(segment, table_offset)
        if parsed is None:
            continue
        candidates.append(parsed)

    if not candidates:
        raise ValueError("could not infer Type2 pointer table")

    candidates.sort(key=lambda candidate: len(candidate["ranges"]), reverse=True)
    return candidates[0]


def Infer_Type2_Decoded_Size(segment, ranges, requested_size):
    if requested_size is not None:
        return requested_size

    passing_sizes = []
    for decoded_size in TYPE2_SIZE_CANDIDATES:
        try:
            for start, end in ranges:
                Trouble_RLE_Type2_Decode(segment[start:end], decoded_size)
        except (IndexError, ValueError):
            continue
        passing_sizes.append(decoded_size)

    if not passing_sizes:
        raise ValueError("could not infer Type2 decoded size")

    return max(passing_sizes)


def Add_Raw_Part(parts, data, output_dir, start, end):
    if end <= start:
        return

    index = len(parts)
    name = f"raw_{index:04d}_{start:06X}_{end:06X}.bin"
    path = Path("raw") / name
    raw = data[start:end]
    Write_File(output_dir / path, raw)
    parts.append({
        "kind": "raw",
        "start": start,
        "end": end,
        "file": str(path).replace("\\", "/"),
        "sha1": Sha1(raw),
    })


def Add_Stream_Part(parts, subtype, compressed, decoded, output_dir, start, end):
    index = len([part for part in parts if part["kind"] == "stream"])
    compressed_name = f"{subtype.lower()}_{index:04d}_{start:06X}_{end:06X}.rle"
    decoded_suffix = ".ci8" if subtype == "Type2" else ".bin"
    decoded_name = f"{subtype.lower()}_{index:04d}_{start:06X}_{end:06X}{decoded_suffix}"
    compressed_path = Path("compressed") / compressed_name
    decoded_path = Path("decoded") / decoded_name

    Write_File(output_dir / compressed_path, compressed)
    Write_File(output_dir / decoded_path, decoded)
    parts.append({
        "kind": "stream",
        "subtype": subtype,
        "start": start,
        "end": end,
        "compressedFile": str(compressed_path).replace("\\", "/"),
        "decodedFile": str(decoded_path).replace("\\", "/"),
        "compressedSha1": Sha1(compressed),
        "decodedSha1": Sha1(decoded),
        "decodedSize": len(decoded),
    })


def Find_Next_Type1_Stream(data, start):
    for candidate in range(Align(start + 1, 0x10), len(data), 0x10):
        try:
            decoded, consumed = Trouble_RLE_Type1_Decode(data, candidate)
        except (IndexError, ValueError):
            continue

        if consumed > candidate and decoded:
            return candidate

    return None


def Extract_Type1_Scan(data, output_dir, start_offset=0, scan_end=None):
    if scan_end is None:
        scan_end = len(data)

    parts = []
    position = 0
    Add_Raw_Part(parts, data, output_dir, 0, start_offset)
    position = start_offset

    while position < scan_end:
        try:
            decoded, consumed = Trouble_RLE_Type1_Decode(data, position)
            Add_Stream_Part(parts, "Type1", data[position:consumed], decoded, output_dir, position, consumed)
            aligned = Align(consumed, 0x10)
            Add_Raw_Part(parts, data, output_dir, consumed, min(aligned, scan_end))
            position = aligned
        except (IndexError, ValueError):
            next_position = Find_Next_Type1_Stream(data[:scan_end], position)
            if next_position is None:
                Add_Raw_Part(parts, data, output_dir, position, scan_end)
                position = scan_end
            else:
                Add_Raw_Part(parts, data, output_dir, position, next_position)
                position = next_position

    Add_Raw_Part(parts, data, output_dir, scan_end, len(data))
    return parts


def Extract_Type1_Single(data, output_dir):
    parts = []
    decoded, consumed = Trouble_RLE_Type1_Decode(data, 0)
    Add_Stream_Part(parts, "Type1", data[:consumed], decoded, output_dir, 0, consumed)
    Add_Raw_Part(parts, data, output_dir, consumed, len(data))
    return parts


def Extract_Type2_Table(data, output_dir, decoded_size):
    table = Infer_Type2_Table(data)
    decoded_size = Infer_Type2_Decoded_Size(data, table["ranges"], decoded_size)
    parts = []

    for start, end in table["ranges"]:
        decoded, _ = Trouble_RLE_Type2_Decode(data[start:end], decoded_size)
        Add_Stream_Part(parts, "Type2", data[start:end], decoded, output_dir, start, end)

    Add_Raw_Part(parts, data, output_dir, table["tableOffset"], len(data))
    dimension = int(math.sqrt(decoded_size))
    table["decodedSize"] = decoded_size
    table["width"] = dimension if dimension * dimension == decoded_size else None
    table["height"] = dimension if dimension * dimension == decoded_size else None
    return parts, table


def Extract_Type1_Pointer_Table(decoded, output_dir, address_base, table_offset):
    table_dir = output_dir / "tables"
    palette_dir = output_dir / "palettes"
    table_dir.mkdir(parents=True, exist_ok=True)
    palette_dir.mkdir(parents=True, exist_ok=True)
    lines = ["index\tdecoded_offset\taddress\tpalette_file\n"]
    index = 0

    while table_offset + index * 4 + 4 <= len(decoded):
        pointer = Read_U32(decoded, table_offset + index * 4)
        decoded_offset = pointer - address_base
        if decoded_offset < 0 or decoded_offset + 0x200 > len(decoded):
            break

        palette_name = f"tlut_{index:04d}_{decoded_offset:06X}.pal"
        Write_File(palette_dir / palette_name, decoded[decoded_offset:decoded_offset + 0x200])
        lines.append(f"{index}\t0x{decoded_offset:06X}\t0x{pointer:08X}\tpalettes/{palette_name}\n")
        index += 1

    (table_dir / "tlut_pointer_table.tsv").write_text("".join(lines))


def Guess_Profile(input_path, subtype, profile):
    if profile != "auto":
        return profile

    name = input_path.name.lower()
    if subtype == "Type2":
        return "type2-table"
    if "common_gfx_resources" in name:
        return "type1-single-common-gfx-resources"
    if "bin_f00d0" in name:
        return "type1-bin-f00d0"
    return "type1-scan"


def Extract(args):
    input_path = Path(args.input)
    output_dir = Path(args.output)
    data = input_path.read_bytes()

    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True)

    decoded_size = args.decoded_size
    if decoded_size is None and args.width is not None and args.height is not None:
        decoded_size = args.width * args.height

    profile = Guess_Profile(input_path, args.subtype, args.profile)
    layout = {}

    if args.subtype == "Type2":
        parts, layout = Extract_Type2_Table(data, output_dir, decoded_size)
    elif profile == "type1-single" or profile == "type1-single-common-gfx-resources":
        parts = Extract_Type1_Single(data, output_dir)
        decoded = (output_dir / parts[0]["decodedFile"]).read_bytes()
        Write_File(output_dir / "decoded.bin", decoded)
        if profile == "type1-single-common-gfx-resources" and len(decoded) > 0x684F8:
            Extract_Type1_Pointer_Table(decoded, output_dir, 0x80200400, 0x684F8)
    elif profile == "type1-bin-f00d0":
        scan_end = min(len(data), 0xF5120)
        parts = Extract_Type1_Scan(data, output_dir, 0x30, scan_end)
    else:
        parts = Extract_Type1_Scan(data, output_dir)

    manifest = {
        "format": "Trouble_RLE_assets_v1",
        "source": str(input_path),
        "subtype": args.subtype,
        "profile": profile,
        "inputSize": len(data),
        "inputSha1": Sha1(data),
        "layout": layout,
        "parts": parts,
    }
    (output_dir / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")


def Read_Part(output_dir, part, key):
    return (output_dir / part[key]).read_bytes()


def Part_Data_For_Pack(output_dir, part):
    if part["kind"] == "raw":
        return Read_Part(output_dir, part, "file")

    decoded_path = output_dir / part["decodedFile"]
    compressed_path = output_dir / part["compressedFile"]

    if decoded_path.exists():
        decoded = decoded_path.read_bytes()
        if Sha1(decoded) == part["decodedSha1"] and compressed_path.exists():
            return compressed_path.read_bytes()

        if part["subtype"] == "Type1":
            return Trouble_RLE_Type1_Encode(decoded)
        return Trouble_RLE_Type2_Encode(decoded)

    return compressed_path.read_bytes()


def Pack(args):
    manifest_path = Path(args.manifest)
    output_path = Path(args.output)
    output_dir = manifest_path.parent
    manifest = json.loads(manifest_path.read_text())
    output = bytearray(manifest["inputSize"])

    for part in manifest["parts"]:
        data = Part_Data_For_Pack(output_dir, part)
        start = part["start"]
        end = part["end"]
        if len(data) > end - start:
            raise ValueError(
                f"{part.get('decodedFile', part.get('file'))}: recompressed size "
                f"0x{len(data):X} exceeds original slot 0x{end - start:X}"
            )

        output[start:start + len(data)] = data

    Write_File(output_path, bytes(output))


def Main():
    parser = argparse.ArgumentParser(description="Extract and rebuild Mischief Makers Trouble_RLE assets.")
    subparsers = parser.add_subparsers(dest="command", required=True)

    extract_parser = subparsers.add_parser("extract")
    extract_parser.add_argument("input")
    extract_parser.add_argument("output")
    extract_parser.add_argument("--subtype", required=True, choices=["Type1", "Type2"])
    extract_parser.add_argument(
        "--profile",
        default="auto",
        choices=[
            "auto",
            "type1-single",
            "type1-single-common-gfx-resources",
            "type1-bin-f00d0",
            "type1-scan",
            "type2-table",
        ],
    )
    extract_parser.add_argument("--decoded-size", type=lambda value: int(value, 0))
    extract_parser.add_argument("--width", type=int)
    extract_parser.add_argument("--height", type=int)
    extract_parser.set_defaults(func=Extract)

    pack_parser = subparsers.add_parser("pack")
    pack_parser.add_argument("manifest")
    pack_parser.add_argument("output")
    pack_parser.set_defaults(func=Pack)

    args = parser.parse_args()
    args.func(args)


if __name__ == "__main__":
    Main()
