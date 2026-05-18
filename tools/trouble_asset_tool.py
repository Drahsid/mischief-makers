#! /usr/bin/env python3

import argparse
import re
from pathlib import Path

import yaml


TYPE2_DECODED_SIZE_CANDIDATES = [0x400, 0x900, 0x1000, 0x1200, 0x2400, 0x4000]
DEFAULT_ALIGNMENTS = {
    "Type1": 0x10,
    "Type2": 0x8,
}
SUBTYPE_SUFFIXES = {
    "Type1": ".rle1",
    "Type2": ".rle2",
}


def align(value: int, alignment: int) -> int:
    return (value + alignment - 1) & ~(alignment - 1)


def parse_int(value) -> int:
    if isinstance(value, str):
        return int(value, 0)
    return int(value)


def load_yaml(path: Path) -> dict:
    return yaml.safe_load(path.read_text(encoding="utf-8")) or {}


def subtype_suffix(subtype: str) -> str:
    try:
        return SUBTYPE_SUFFIXES[subtype]
    except KeyError as error:
        raise ValueError(f"unknown subtype {subtype}") from error


def trouble_rle_type1_end(data: bytes, offset: int) -> int:
    position = offset
    command = data[position]

    while command != 0xFF:
        current_command = command

        if current_command < 0x80:
            while current_command < 0x80:
                position += 1
                command = data[position]
                current_command = command

        if current_command == 0x80:
            command = data[position + 3]
            position += 3
        elif current_command < 0xA0:
            command = data[position + 2]
            position += 2
        elif current_command < 0xC0:
            position += (current_command & 0x1F) + 2
            command = data[position]
        elif current_command < 0xD0:
            command = data[position + 2]
            position += 2
        elif current_command < 0xF0:
            command = data[position + 1]
            position += 1
        elif current_command < 0xFF:
            command = data[position + 1]
            position += 1

    return position + 1


def trouble_rle_type2_end(data: bytes, offset: int, decoded_size: int) -> tuple[int, int]:
    position = offset
    decoded_position = 0

    while decoded_position < decoded_size:
        command = data[position]
        position += 1

        if command == 0:
            break
        if command < 0x80:
            decoded_position += command
            position += command
        elif command < 0xC0:
            decoded_position += command & 0x3F
        elif command < 0xE0:
            decoded_position += (command & 0x1F) << 6
        else:
            decoded_position += command & 0x1F
            position += 1

    return position, decoded_position


def infer_segment_vram(segment: str) -> int:
    match = re.fullmatch(r"Segment_([0-9A-Fa-f]+)", segment)
    if match is None:
        raise ValueError(f"{segment}: vram_start required when 'segment' does not follow [Segment_XX] format")

    return int(match.group(1), 16) << 24


def pool_rom_start(pool: dict) -> int:
    return parse_int(pool["rom_start"])


def pool_rom_end(pool: dict) -> int:
    return parse_int(pool["rom_end"])


def pool_vram_start(pool: dict) -> int:
    if "vram_start" in pool:
        return parse_int(pool["vram_start"])

    return infer_segment_vram(pool["segment"])


def pool_alignment(pool: dict) -> int:
    try:
        return DEFAULT_ALIGNMENTS[pool["subtype"]]
    except KeyError as error:
        raise ValueError(f"{pool['segment']}: unknown subtype {pool['subtype']}") from error


def pool_entry_pattern(pool: dict) -> str:
    return f"{pool['segment']}/{pool['entry_name']}"


def table_base(data: bytes, pool: dict) -> int:
    if "table_base" in pool:
        return parse_int(pool["table_base"])

    table_rom = parse_int(pool["table_rom"])
    return int.from_bytes(data[table_rom : table_rom + 4], "big")


def format_name(pattern: str, index: int, rom: int, rom_start: int, vram_start: int) -> str:
    vram = vram_start + (rom - rom_start)

    return (
        pattern.replace("$INDEX", f"{index:04d}")
        .replace("$ROM", f"{rom:X}")
        .replace("$VRAM", f"{vram:08X}")
    )


def format_label(name: str) -> str:
    stem = name.rsplit("/", 1)[-1]
    label = "".join(character if character.isalnum() or character == "_" else "_" for character in stem)

    if label[0].isdigit():
        label = "rle_" + label

    return label


def header_guard(path: Path) -> str:
    guard = "".join(character if character.isalnum() or character == "_" else "_" for character in path.with_suffix("").as_posix())

    if guard[0].isdigit():
        guard = "_" + guard

    return f"{guard.upper()}_H"


def infer_type2_decoded_size(data: bytes, pool: dict, alignment: int) -> int:
    candidates = pool.get("decoded_size_candidates", TYPE2_DECODED_SIZE_CANDIDATES)
    start = pool_rom_start(pool)
    end = pool_rom_end(pool)
    count = parse_int(pool.get("count", 1))
    valid_candidates = []

    for candidate in candidates:
        decoded_size = parse_int(candidate)
        position = start

        try:
            for _ in range(count):
                stream_end, decoded_position = trouble_rle_type2_end(data, position, decoded_size)
                if decoded_position != decoded_size:
                    break
                position = align(stream_end, alignment)
            else:
                if position <= end:
                    valid_candidates.append((position, decoded_size))
        except IndexError:
            pass

    if valid_candidates:
        return max(valid_candidates)[1]

    raise ValueError(f"{pool['segment']}: could not infer Type2 decoded size")


def expand_table_pool(data: bytes, pool: dict) -> list[dict]:
    start = pool_rom_start(pool)
    end = pool_rom_end(pool)
    rom_start = start
    vram_start = pool_vram_start(pool)
    entry_name = pool_entry_pattern(pool)
    table_rom = parse_int(pool["table_rom"])
    record_count = parse_int(pool["record_count"])
    stride = parse_int(pool["stride"])
    pointer_offsets = [parse_int(offset) for offset in pool["pointer_offsets"]]
    base = table_base(data, pool)
    first_record = table_rom + 4
    pointers = {base, base + (end - start)}
    chunks = []

    if (stride % 4) != 0:
        raise ValueError(f"{pool['segment']}: invalid table stride 0x{stride:X}")

    for pointer_offset in pointer_offsets:
        if (pointer_offset % 4) != 0 or pointer_offset >= stride:
            raise ValueError(f"{pool['segment']}: invalid table pointer offset 0x{pointer_offset:X}")

    for record_index in range(record_count):
        record_start = first_record + record_index * stride
        record = []
        for word_index in range(stride // 4):
            word_start = record_start + word_index * 4
            record.append(int.from_bytes(data[word_start : word_start + 4], "big"))

        for pointer_offset in pointer_offsets:
            pointer = record[pointer_offset // 4]
            if pointer < base or pointer > base + (end - start):
                raise ValueError(f"{pool['segment']}: table pointer 0x{pointer:X} outside pool")
            pointers.add(pointer)

    pointer_list = sorted(pointers)
    for index, (chunk_start_pointer, chunk_end_pointer) in enumerate(
        zip(pointer_list, pointer_list[1:])
    ):
        chunk_start = start + (chunk_start_pointer - base)
        chunk_end = start + (chunk_end_pointer - base)
        name = format_name(entry_name, index, chunk_start, rom_start, vram_start)
        chunks.append(
            {
                "start": chunk_start,
                "end": chunk_end,
                "name": name,
                "label": format_label(name),
            }
        )

    return chunks


def expand_rle_pool(data: bytes, pool: dict) -> list[dict]:
    if "table_rom" in pool:
        return expand_table_pool(data, pool)

    subtype = pool["subtype"]
    start = pool_rom_start(pool)
    end = pool_rom_end(pool)
    rom_start = start
    vram_start = pool_vram_start(pool)
    count = parse_int(pool.get("count", 1))
    alignment = pool_alignment(pool)
    entry_name = pool_entry_pattern(pool)
    position = start
    chunks = []

    if subtype == "Type2":
        if count == 1 and "decoded_size" not in pool:
            decoded_size = None
        elif "decoded_size" in pool:
            decoded_size = parse_int(pool["decoded_size"])
        else:
            decoded_size = infer_type2_decoded_size(data, pool, alignment)
    else:
        decoded_size = None

    for index in range(count):
        name = format_name(entry_name, index, position, rom_start, vram_start)

        if subtype == "Type1":
            if count == 1:
                chunk_end = end
            else:
                chunk_end = align(trouble_rle_type1_end(data, position), alignment)
        elif subtype == "Type2":
            if decoded_size is None:
                chunk_end = end
            else:
                stream_end, _ = trouble_rle_type2_end(data, position, decoded_size)
                chunk_end = align(stream_end, alignment)
        else:
            raise ValueError(f"{pool['segment']}: unknown subtype {subtype}")

        chunks.append(
            {
                "start": position,
                "end": chunk_end,
                "name": name,
                "label": format_label(name),
            }
        )
        position = chunk_end

    if position != end:
        raise ValueError(
            f"{pool['segment']}: RLE entries end at 0x{position:X}, expected 0x{end:X}"
        )

    return chunks


def write_asm_entry(file, label: str, asset_path: Path, size: int) -> None:
    file.write(f"dlabel {label}\n")
    file.write(f'    .incbin "{asset_path.as_posix()}", 0x0, 0x{size:X}\n')
    file.write(f"dlabel {label}_end\n")


def write_asm_entry_list(path: Path, entries: list[tuple[str, Path, int]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="\n") as file:
        file.write("# Generated by tools/trouble_asset_tool.py.\n")
        file.write('.section .data, "wa"\n\n')
        for label, asset_path, size in entries:
            write_asm_entry(file, label, asset_path, size)
        file.write("\n.section .text\n")


def write_binary_file(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def write_symbol_header(path: Path, entries: list[dict]) -> None:
    guard = header_guard(path)

    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="\n") as file:
        file.write("// Generated by tools/trouble_asset_tool.py.\n")
        file.write(f"#ifndef {guard}\n")
        file.write(f"#define {guard}\n\n")
        file.write("#include <PR/ultratypes.h>\n\n")

        for entry in entries:
            if entry.get("exclude", False):
                continue

            label = entry["label"]
            file.write(f"extern u8 {label}[];\n")
            file.write(f"extern u8 {label}_end[];\n")
            file.write(f"#define {label}_size 0x{entry['size']:X}\n")
            file.write(f"#define {label}_offset 0x{entry['offset']:X}\n\n")

        file.write(f"#endif // {guard}\n")


def remove_stale_entry_wrappers(generated_dir: Path, aggregate_names: set[str]) -> None:
    for path in generated_dir.glob("*.s"):
        if path.name not in aggregate_names:
            path.unlink()

    for path in generated_dir.glob("*.h"):
        if path.name not in aggregate_names:
            path.unlink()

    for path in generated_dir.glob("*.inc.h"):
        path.unlink()


def clean_generated_outputs(config: dict, generated_root: Path) -> None:
    aggregate_names_by_segment = {}

    for pool in config.get("rle_pools", []):
        aggregate_names_by_segment.setdefault(pool["segment"], set()).update(
            {"rle.h", "rle.inc.s"}
        )

    for group in config.get("assets", []):
        aggregate_names_by_segment.setdefault(group["segment"], set()).update(
            {f"{group['name']}.h", f"{group['name']}.inc.s"}
        )

    for segment, aggregate_names in aggregate_names_by_segment.items():
        generated_dir = generated_root / segment
        if generated_dir.exists():
            remove_stale_entry_wrappers(generated_dir, aggregate_names)


def write_rle_pool(
    rom: bytes,
    pool: dict,
    chunks: list[dict],
    generated_root: Path,
    assets_root: Path,
) -> None:
    segment = pool["segment"]
    generated_dir = generated_root / segment
    suffix = subtype_suffix(pool["subtype"])
    rom_start = pool_rom_start(pool)
    asm_entries = []
    header_entries = []

    generated_dir.mkdir(parents=True, exist_ok=True)

    for chunk in chunks:
        chunk_data = rom[chunk["start"] : chunk["end"]]
        asset_path = assets_root / f"{chunk['name']}{suffix}"

        write_binary_file(asset_path, chunk_data)

        asm_entries.append((chunk["label"], asset_path, len(chunk_data)))
        header_entries.append(
            {
                "label": chunk["label"],
                "size": len(chunk_data),
                "offset": chunk["start"] - rom_start,
            }
        )

    write_asm_entry_list(generated_dir / "rle.inc.s", asm_entries)
    write_symbol_header(generated_dir / "rle.h", header_entries)


def segment_rom_start_by_name(config: dict) -> dict[str, int]:
    starts = {}

    for pool in config.get("rle_pools", []):
        starts.setdefault(pool["segment"], pool_rom_start(pool))

    for group in config.get("assets", []):
        if "rom_start" in group:
            starts.setdefault(group["segment"], parse_int(group["rom_start"]))
        elif group.get("entries"):
            starts.setdefault(
                group["segment"],
                parse_int(group["entries"][0]["rom_start"]),
            )

    return starts


def expand_asset_group_entries(group: dict) -> list[dict]:
    entries = group["entries"]
    expanded_entries = []

    for index, entry in enumerate(entries):
        expanded_entry = dict(entry)
        rom_start = parse_int(entry["rom_start"])

        if "rom_end" in entry:
            rom_end = parse_int(entry["rom_end"])
        elif index + 1 < len(entries):
            rom_end = parse_int(entries[index + 1]["rom_start"])
        elif "rom_end" in group:
            rom_end = parse_int(group["rom_end"])
        else:
            raise ValueError(
                f"{group['segment']}/{entry['name']}: rom_end required on final asset entry"
            )

        if rom_end < rom_start:
            raise ValueError(f"{group['segment']}/{entry['name']}: rom_end before rom_start")

        expanded_entry["rom_start"] = rom_start
        expanded_entry["rom_end"] = rom_end
        expanded_entries.append(expanded_entry)

    return expanded_entries


def write_asset_group(
    rom: bytes,
    group: dict,
    segment_rom_starts: dict[str, int],
    generated_root: Path,
    assets_root: Path,
) -> None:
    segment = group["segment"]
    name = group["name"]
    generated_dir = generated_root / segment
    if "rom_start" in group:
        segment_rom_start = parse_int(group["rom_start"])
    else:
        segment_rom_start = segment_rom_starts[segment]
    asm_entries = []
    header_entries = []

    generated_dir.mkdir(parents=True, exist_ok=True)

    for entry in expand_asset_group_entries(group):
        label = entry["name"]
        rom_start = entry["rom_start"]
        rom_end = entry["rom_end"]
        size = rom_end - rom_start
        asset_path = assets_root / segment / f"{label}.bin"

        write_binary_file(asset_path, rom[rom_start:rom_end])
        asm_entries.append((label, asset_path, size))
        header_entries.append(
            {
                "label": entry["name"],
                "size": size,
                "offset": rom_start - segment_rom_start,
                "exclude": bool(entry.get("exclude", False)),
            }
        )

    write_asm_entry_list(generated_dir / f"{name}.inc.s", asm_entries)
    write_symbol_header(generated_dir / f"{name}.h", header_entries)


def generate_headers_from_yaml(
    config_path: Path,
    rom_path: Path,
    generated_root: Path = Path("assets/generated"),
    assets_root: Path = Path("assets"),
) -> None:
    config = load_yaml(config_path)
    rom = rom_path.read_bytes()
    segment_rom_starts = segment_rom_start_by_name(config)

    clean_generated_outputs(config, generated_root)

    for pool in config.get("rle_pools", []):
        chunks = expand_rle_pool(rom, pool)
        write_rle_pool(rom, pool, chunks, generated_root, assets_root)

    for group in config.get("assets", []):
        write_asset_group(rom, group, segment_rom_starts, generated_root, assets_root)


def extract_assets_from_yaml(
    config_path: Path,
    rom_path: Path,
    assets_root: Path = Path("assets"),
) -> None:
    config = load_yaml(config_path)
    rom = rom_path.read_bytes()

    for pool in config.get("rle_pools", []):
        chunks = expand_rle_pool(rom, pool)
        suffix = subtype_suffix(pool["subtype"])
        for chunk in chunks:
            asset_path = assets_root / f"{chunk['name']}{suffix}"
            write_binary_file(asset_path, rom[chunk["start"] : chunk["end"]])

    for group in config.get("assets", []):
        for entry in expand_asset_group_entries(group):
            asset_path = assets_root / group["segment"] / f"{entry['name']}.bin"
            write_binary_file(asset_path, rom[entry["rom_start"] : entry["rom_end"]])


def parse_entry_rom(stem: str) -> int:
    parts = stem.split("_")
    if len(parts) < 2:
        raise ValueError(f"{stem}: expected name ending in _ROM_VRAM")

    try:
        return int(parts[-2], 16)
    except ValueError as error:
        raise ValueError(f"{stem}: expected name ending in _ROM_VRAM") from error


def generate_headers_from_files(
    files: list[Path],
    generated_root: Path = Path("assets/generated"),
    assets_root: Path = Path("assets"),
    segment: str | None = None,
    rom_start: int | None = None,
) -> None:
    entries_by_segment = {}

    for path in files:
        if path.suffix not in [".rle1", ".rle2"]:
            raise ValueError(f"{path}: expected .rle1 or .rle2")

        entry_segment = segment or path.parent.name
        if not entry_segment:
            raise ValueError(f"{path}: segment not provided and could not be inferred from path")

        rom = parse_entry_rom(path.stem)
        entries_by_segment.setdefault(entry_segment, []).append((rom, path))

    for entry_segment, entries in entries_by_segment.items():
        entries.sort(key=lambda entry: entry[0])
        entry_rom_start = rom_start if rom_start is not None else entries[0][0]
        generated_dir = generated_root / entry_segment
        asm_entries = []
        header_entries = []

        for rom, path in entries:
            data = path.read_bytes()
            name = f"{entry_segment}/{path.stem}"
            label = format_label(name)
            asset_path = assets_root / f"{name}{path.suffix}"

            if path.resolve() != asset_path.resolve():
                write_binary_file(asset_path, data)

            asm_entries.append((label, asset_path, len(data)))
            header_entries.append(
                {
                    "label": label,
                    "size": len(data),
                    "offset": rom - entry_rom_start,
                }
            )

        generated_dir.mkdir(parents=True, exist_ok=True)
        write_asm_entry_list(generated_dir / "rle.inc.s", asm_entries)
        write_symbol_header(generated_dir / "rle.h", header_entries)


def main() -> None:
    parser = argparse.ArgumentParser(description="Trouble Makers asset/header tool")
    subparsers = parser.add_subparsers(dest="command", required=True)

    headers_yaml = subparsers.add_parser(
        "headers-yaml",
        help="Generate asset asm wrappers and headers from a YAML manifest and ROM",
    )
    headers_yaml.add_argument("config", type=Path)
    headers_yaml.add_argument("rom", type=Path)
    headers_yaml.add_argument("--generated-root", type=Path, default=Path("assets/generated"))
    headers_yaml.add_argument("--assets-root", type=Path, default=Path("assets"))

    extract_yaml = subparsers.add_parser(
        "extract-yaml",
        help="Extract files from a YAML manifest and ROM",
    )
    extract_yaml.add_argument("config", type=Path)
    extract_yaml.add_argument("rom", type=Path)
    extract_yaml.add_argument("--assets-root", type=Path, default=Path("assets"))

    headers_files = subparsers.add_parser(
        "headers-files",
        help="Generate RLE asm wrappers and headers from existing .rle1/.rle2 files",
    )
    headers_files.add_argument("files", type=Path, nargs="+")
    headers_files.add_argument("--generated-root", type=Path, default=Path("assets/generated"))
    headers_files.add_argument("--assets-root", type=Path, default=Path("assets"))
    headers_files.add_argument("--segment")
    headers_files.add_argument("--rom-start")

    args = parser.parse_args()

    if args.command == "headers-yaml":
        generate_headers_from_yaml(args.config, args.rom, args.generated_root, args.assets_root)
    elif args.command == "extract-yaml":
        extract_assets_from_yaml(args.config, args.rom, args.assets_root)
    elif args.command == "headers-files":
        rom_start = parse_int(args.rom_start) if args.rom_start is not None else None
        generate_headers_from_files(args.files, args.generated_root, args.assets_root, args.segment, rom_start)


if __name__ == "__main__":
    main()
