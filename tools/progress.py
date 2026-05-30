#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

from mapfile_parser import MapFile


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_VERSION = "us1"
README_PATH = ROOT / "README.md"

MAIN_SECTION = ".main"
TEXT_SIZE_RE = re.compile(r"0x([0-9A-Fa-f]+)\s+([A-Za-z0-9_]+)_TEXT_SIZE =")

SUMMARY_CATEGORIES = (
    ("total_matching", "Total Matching"),
    ("main_code_segment", "Main Code Segment"),
    ("overlays", "Overlays"),
)
SUMMARY_CATEGORY_IDS = frozenset(category_id for category_id, _ in SUMMARY_CATEGORIES)
BADGE_PATTERNS = {
    "total_matching": (
        r"(img\.shields\.io/badge/Total%20Matching-)[^-]+(-brightgreen\.svg)"
    ),
    "main_code_segment": (
        r"(img\.shields\.io/badge/Main%20Code%20Segment-)[^-]+(-yellow\.svg)"
    ),
    "overlays": r"(img\.shields\.io/badge/Overlays-)[^-]+(-orange\.svg)",
}


@dataclass
class Totals:
    total_code: int = 0
    nonmatching_code: int = 0
    total_functions: int = 0
    nonmatching_functions: int = 0
    total_units: int = 0


def percent(part: int, total: int) -> float:
    if total == 0:
        return 0.0
    return part / total * 100.0


def version_paths(version: str) -> tuple[Path, Path, Path, Path]:
    version_dir = ROOT / "versions" / version
    yaml_path = version_dir / "mischiefmakers.yaml"
    map_path = ROOT / "build" / f"{yaml_path.stem}.map"
    nonmatchings_path = ROOT / "asm" / "nonmatchings"
    output_path = version_dir / f"{version}_report.json"

    return yaml_path, map_path, nonmatchings_path, output_path


def format_code_size(byte_count: int) -> str:
    kibibyte = 1024
    mebibyte = kibibyte * 1024

    if byte_count < kibibyte:
        return f"{byte_count} B"
    if byte_count < mebibyte:
        return f"{byte_count / kibibyte:.2f} KiB"
    return f"{byte_count / mebibyte:.2f} MiB"


def read_text_segments(map_path: Path) -> set[str]:
    return {
        f".{section_name}"
        for _, section_name in TEXT_SIZE_RE.findall(
            map_path.read_text(encoding="utf-8")
        )
    }


def read_nonmatching_names(nonmatchings_path: Path) -> set[str]:
    return {path.stem for path in nonmatchings_path.rglob("*.s")}


def source_unit(filepath: Path) -> str:
    parts = filepath.parts
    if len(parts) >= 2 and parts[0] == "build" and parts[1] in {"asm", "src"}:
        parts = parts[2:]
    elif len(parts) >= 1 and parts[0] == "build":
        parts = parts[1:]

    path = Path(*parts)
    while path.suffix:
        path = path.with_suffix("")
    return path.as_posix()


def is_whole_file_nonmatching_asm(filepath: Path) -> bool:
    parts = filepath.parts
    if len(parts) < 3 or parts[0] != "build" or parts[1] != "asm":
        return False
    if parts[2] in {"data", "matchings"}:
        return False
    return str(filepath).endswith(".s.o")


def read_totals(
    map_path: Path,
    text_segments: set[str],
    nonmatching_names: set[str],
) -> tuple[dict[str, Totals], dict[str, dict[str, float]]]:
    unit_totals: dict[str, Totals] = defaultdict(Totals)
    unit_function_percents: dict[str, dict[str, float]] = defaultdict(dict)

    for segment in MapFile.newFromMapFile(map_path).copySegmentList():
        if segment.name not in text_segments:
            continue

        for section in segment:
            if section.sectionType != ".text":
                continue

            section_size = section.size or 0
            unit_name = source_unit(section.filepath)
            unit_stats = unit_totals[unit_name]
            whole_file_nonmatching = is_whole_file_nonmatching_asm(section.filepath)
            unit_stats.total_code += section_size
            unit_stats.total_units = 1

            current_nonmatching_function = False
            for symbol in section:
                name = symbol.name
                size = symbol.size or 0

                if name.endswith(".NON_MATCHING"):
                    if size == 0:
                        continue
                    name = name.removesuffix(".NON_MATCHING")

                # TODO: migrate rodata
                if name.startswith(".L"):
                    if current_nonmatching_function:
                        unit_stats.nonmatching_code += size
                    continue

                current_nonmatching_function = False
                if size == 0 or symbol.inferredStatic:
                    continue

                unit_stats.total_functions += 1
                if whole_file_nonmatching or name in nonmatching_names:
                    unit_stats.nonmatching_code += size
                    unit_stats.nonmatching_functions += 1
                    unit_function_percents[unit_name][name] = 0.0
                    current_nonmatching_function = True
                else:
                    unit_function_percents[unit_name][name] = 100.0

    return (
        dict(unit_totals),
        {name: dict(functions) for name, functions in unit_function_percents.items()},
    )


def make_measures(stats: Totals) -> dict:
    matched_code = stats.total_code - stats.nonmatching_code
    matched_functions = stats.total_functions - stats.nonmatching_functions
    matched_code_percent = percent(matched_code, stats.total_code)

    return {
        "fuzzy_match_percent": matched_code_percent,
        "total_code": str(stats.total_code),
        "matched_code": str(matched_code),
        "matched_code_percent": matched_code_percent,
        "matched_data_percent": 100.0,
        "complete_data_percent": 100.0,
        "total_functions": stats.total_functions,
        "matched_functions": matched_functions,
        "matched_functions_percent": percent(
            matched_functions,
            stats.total_functions,
        ),
        "total_units": stats.total_units,
    }


def measure_int(measures: dict, key: str) -> int:
    value = measures.get(key, 0)
    if value is None:
        return 0
    return int(value)


def merge_measures(destination: dict, source: dict) -> None:
    for key in ("total_code", "matched_code"):
        if key in destination or key in source:
            destination[key] = str(measure_int(destination, key) + measure_int(source, key))

    for key in ("total_functions", "matched_functions", "total_units"):
        if key in destination or key in source:
            destination[key] = measure_int(destination, key) + measure_int(source, key)


def finalize_measures(measures: dict) -> None:
    if "total_code" in measures or "matched_code" in measures:
        total_code = measure_int(measures, "total_code")
        matched_code = measure_int(measures, "matched_code")
        measures["total_code"] = str(total_code)
        measures["matched_code"] = str(matched_code)
        measures["matched_code_percent"] = percent(matched_code, total_code)
        measures["fuzzy_match_percent"] = measures["matched_code_percent"]

    total_functions = measure_int(measures, "total_functions")
    matched_functions = measure_int(measures, "matched_functions")
    measures["total_functions"] = total_functions
    measures["matched_functions"] = matched_functions
    measures["matched_functions_percent"] = percent(matched_functions, total_functions)
    measures.setdefault("matched_data_percent", 100.0)
    measures.setdefault("complete_data_percent", 100.0)
    measures.setdefault("total_units", 0)


def run_mapfile_parser(map_path: Path, output_path: Path) -> int:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    command = [
        sys.executable,
        "-m",
        "mapfile_parser",
        "objdiff_report",
        str(map_path),
        str(output_path),
        "-a",
        "asm",
        "-n",
        "asm/nonmatchings",
        "-t",
        "build/src/",
        "-t",
        "build/asm/",
        "-t",
        "build/",
        "--quiet",
    ]

    return subprocess.run(command, cwd=ROOT).returncode


def apply_unit_measures(
    report: dict,
    unit_totals: dict[str, Totals],
    unit_function_percents: dict[str, dict[str, float]],
) -> None:
    for unit in report.get("units", []):
        unit_name = unit.get("name", "")
        measures = unit.setdefault("measures", {})
        function_percents = unit_function_percents.get(unit_name, {})

        if unit_name in unit_totals:
            measures.update(make_measures(unit_totals[unit_name]))
        else:
            measures.setdefault("total_units", 1)

        functions = []
        for function in unit.get("functions", []) or []:
            name = str(function.get("name", "")).removesuffix(".NON_MATCHING")
            if name not in function_percents:
                continue
            function["name"] = name
            function["fuzzy_match_percent"] = function_percents[name]
            functions.append(function)
        unit["functions"] = functions

        measures["total_functions"] = len(functions)
        measures["matched_functions"] = sum(
            1 for function in functions if function.get("fuzzy_match_percent") == 100.0
        )
        measures["matched_functions_percent"] = percent(
            measures["matched_functions"],
            measures["total_functions"],
        )

        matched_code_percent = float(measures.get("matched_code_percent", 100.0))
        for section in unit.get("sections", []) or []:
            if section.get("name") == ".text":
                section["fuzzy_match_percent"] = matched_code_percent


def set_report_measures(report: dict) -> None:
    total_measures: dict = {}
    main_measures: dict = {}
    overlay_measures: dict = {}
    category_measures: dict[str, dict] = {}

    for unit in report.get("units", []):
        module_name = unit.get("metadata", {}).get("module_name", "")
        measures = unit.get("measures", {})
        merge_measures(total_measures, measures)

        if module_name == MAIN_SECTION:
            merge_measures(main_measures, measures)
        elif module_name.startswith(".overlay_"):
            merge_measures(overlay_measures, measures)

        for category_id in unit.get("metadata", {}).get("progress_categories", []) or []:
            category_stats = category_measures.setdefault(category_id, {})
            merge_measures(category_stats, measures)

    for measures in (
        total_measures,
        main_measures,
        overlay_measures,
        *category_measures.values(),
    ):
        finalize_measures(measures)

    categories = [
        category
        for category in report.get("categories", [])
        if category.get("id") not in SUMMARY_CATEGORY_IDS
    ]

    for category in categories:
        category["measures"] = category_measures.get(category.get("id", ""), {})

    report["measures"] = total_measures
    summary_measures = {
        "total_matching": dict(total_measures),
        "main_code_segment": main_measures,
        "overlays": overlay_measures,
    }
    report["categories"] = [
        {
            "id": category_id,
            "name": category_name,
            "measures": summary_measures[category_id],
        }
        for category_id, category_name in SUMMARY_CATEGORIES
    ] + categories


def build_report(
    map_path: Path,
    nonmatchings_path: Path,
    output_path: Path,
) -> dict:
    returncode = run_mapfile_parser(map_path, output_path)
    if returncode != 0:
        raise SystemExit(returncode)

    with output_path.open("r", encoding="utf-8") as report_file:
        report = json.load(report_file)

    text_segments = read_text_segments(map_path)
    unit_totals, unit_function_percents = read_totals(
        map_path,
        text_segments,
        read_nonmatching_names(nonmatchings_path),
    )

    apply_unit_measures(report, unit_totals, unit_function_percents)
    set_report_measures(report)
    write_report(report, output_path)

    return report


def write_report(report: dict, output_path: Path) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8") as report_file:
        json.dump(report, report_file, indent=2)
        report_file.write("\n")


def print_table_row(name: str, measures: dict, total_code: int, width: int) -> None:
    matched_code = int(measures["matched_code"])
    category_code = int(measures["total_code"])

    print(
        f"{name:<{width}} : "
        f"{matched_code:>12} / {category_code:>8} "
        f"{float(measures['matched_code_percent']):>11.4f}%  "
        f"({percent(matched_code, total_code):>8.4g}% / "
        f"{percent(category_code, total_code):>8.4g}%)"
    )


def print_progress_table(report: dict) -> None:
    total_code = int(report["measures"]["total_code"])
    summary_rows = [
        (category["id"], category["measures"])
        for category in report["categories"]
        if category["id"] in SUMMARY_CATEGORY_IDS
    ]
    detail_rows = [
        (category["id"], category["measures"])
        for category in report["categories"]
        if category["id"] not in SUMMARY_CATEGORY_IDS
        and "total_code" in category["measures"]
    ]
    width = max(
        len("Category"),
        *(len(name) for name, _ in summary_rows),
        *(len(name) for name, _ in detail_rows),
    )

    print(
        f"{'Category':<{width}} : "
        f"{'Matched':>12} / {'Total':>8} "
        f"{'OfCategory%':>12}  ({'OfTotal%':>21})"
    )
    for name, measures in summary_rows:
        print_table_row(name, measures, total_code, width)

    print()
    for name, measures in detail_rows:
        print_table_row(name, measures, total_code, width)
    print()


def print_summary(report: dict, output_path: Path) -> None:
    measures = report["measures"]
    category_measures = {
        category["id"]: category["measures"] for category in report["categories"]
    }
    main_measures = category_measures["main_code_segment"]
    overlay_measures = category_measures["overlays"]
    total_code = int(measures["total_code"])
    matched_code = int(measures["matched_code"])

    print_progress_table(report)
    print(
        "progress: "
        f"{matched_code:,}/{total_code:,} text bytes "
        f"({float(measures['matched_code_percent']):.2f}%), "
        f"{measures['matched_functions']:,}/{measures['total_functions']:,} functions "
        f"({float(measures['matched_functions_percent']):.2f}%)"
    )
    print(
        "progress: "
        f"{format_code_size(matched_code)} matched / "
        f"{format_code_size(total_code)} total"
    )
    print(
        "progress: "
        f"main {float(main_measures['matched_code_percent']):.2f}%, "
        f"overlays {float(overlay_measures['matched_code_percent']):.2f}%"
    )

    try:
        display_path = output_path.relative_to(ROOT)
    except ValueError:
        display_path = output_path
    print(f"progress: wrote {display_path}")


def update_readme_badges(report: dict) -> int:
    badge_values = {
        category["id"]: float(category["measures"]["matched_code_percent"])
        for category in report["categories"]
        if category["id"] in SUMMARY_CATEGORY_IDS
    }

    text = README_PATH.read_text(encoding="utf-8")
    new_text = text
    for category_id, pattern in BADGE_PATTERNS.items():
        replacement = rf"\g<1>{badge_values[category_id]:.2f}%25\2"
        new_text, count = re.subn(pattern, replacement, new_text, count=1)
        if count != 1:
            print(
                f"progress: README badge pattern not found: {pattern}",
                file=sys.stderr,
            )
            return 1

    if new_text != text:
        README_PATH.write_text(new_text, encoding="utf-8")
        print(f"progress: updated {README_PATH.relative_to(ROOT)} badges")
    else:
        print(f"progress: {README_PATH.relative_to(ROOT)} badges already current")

    return 0


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate a decomp.dev progress report."
    )
    parser.add_argument(
        "version",
        nargs="?",
        default=DEFAULT_VERSION,
        help=f"Version to use. (default: {DEFAULT_VERSION}).",
    )
    parser.add_argument(
        "--quiet",
        action="store_true",
        help="Suppress mapfile_parser's detailed summary.",
    )
    parser.add_argument(
        "--update-readme",
        action="store_true",
        help="Update README badge percentages from the generated report.",
    )
    args = parser.parse_args()

    yaml_path, map_path, nonmatchings_path, output_path = version_paths(args.version)
    missing_paths = [
        path for path in (yaml_path, map_path, nonmatchings_path) if not path.exists()
    ]

    if missing_paths:
        for path in missing_paths:
            print(f"progress: file not found: {path}", file=sys.stderr)
        print("progress: build first", file=sys.stderr)
        return 1

    report = build_report(
        map_path,
        nonmatchings_path,
        output_path,
    )

    if not args.quiet:
        print_summary(report, output_path)
    if args.update_readme:
        return update_readme_badges(report)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
