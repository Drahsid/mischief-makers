#!/usr/bin/env python3

# See: https://raw.githubusercontent.com/AngheloAlf/drmario64/refs/heads/master/tools/progress.py

from __future__ import annotations

import argparse
import os
import sys
from pathlib import Path

import decomp_settings
import mapfile_parser


MATCHED_ASM_PREFIXES = (
    "build/asm/data/rsp/",
)

ANSI_RESET = "\033[0m"
ANSI_BOLD_YELLOW = "\033[1;33m"
ANSI_RED = "\033[31m"
ANSI_MAGENTA = "\033[35m"
ANSI_CYAN = "\033[36m"


def markMatchedAsm(mapFile: mapfile_parser.MapFile):
    for segment in mapFile.copySegmentList():
        for section in segment:
            filepath = section.filepath.as_posix()
            if not any(filepath.startswith(prefix) for prefix in MATCHED_ASM_PREFIXES):
                continue

            if hasattr(section, "_symbols"):
                section._symbols = [
                    symbol for symbol in section._symbols
                    if not symbol.name.endswith(".NON_MATCHING")
                ]

            for symbol in section:
                symbol.nonmatchingSymExists = False


def findCategoryWarnings(report, categories, reportData):
    unitNames = sorted({unit.name for unit in report.units})

    categoryPaths = [
        (category.ide, path)
        for category in categories
        for path in category.paths
    ]

    emptyCategories = [
        category.ide for category in categories if len(category.paths) == 0
    ]
    bogusPaths = [
        (categoryId, path)
        for categoryId, path in categoryPaths
        if not any(unitName.startswith(path) for unitName in unitNames)
    ]

    uncategorizedUnits = sorted(
        {
            unit.name
            for unit in report.units
            if (reportData or unit.measures.total_code > 0)
            and not any(unit.name.startswith(path) for _, path in categoryPaths)
        }
    )

    return emptyCategories, bogusPaths, uncategorizedUnits


def printCategoryWarnings(report, categories, reportData):
    emptyCategories, bogusPaths, uncategorizedUnits = findCategoryWarnings(
        report,
        categories,
        reportData,
    )
    if not emptyCategories and not bogusPaths and not uncategorizedUnits:
        return

    useColor = sys.stdout.isatty() and "NO_COLOR" not in os.environ

    def color(text: str, ansiCode: str) -> str:
        if not useColor:
            return text
        return f"{ansiCode}{text}{ANSI_RESET}"

    print()
    print(color("decomp.yaml warnings:", ANSI_BOLD_YELLOW))
    for categoryId in emptyCategories:
        print(
            f"  {color('Empty category:', ANSI_RED)} "
            f"{color(categoryId, ANSI_CYAN)} has no paths."
        )
    for categoryId, path in bogusPaths:
        print(
            f"  {color('Bogus category:', ANSI_RED)} "
            f"{color(categoryId, ANSI_CYAN)}: "
            f"{color(path, ANSI_MAGENTA)} matches no unit."
        )
    for unitName in uncategorizedUnits:
        print(
            f"  {color('Uncategorized:', ANSI_RED)} "
            f"{color(unitName, ANSI_MAGENTA)} is missing a "
            "decomp.yaml path."
        )


def doThing(
    version: str,
    settings: decomp_settings.Config,
    units: bool,
    sort: bool,
    remaining: bool,
):
    selectedVersion = settings.get_version_by_name(version)
    assert selectedVersion is not None

    mapPath = Path(selectedVersion.paths.map)
    outputPath = Path("versions") / version / f"{version}_report.json"

    specificSettings = (
        mapfile_parser.frontends.objdiff_report.SpecificSettings.fromDecompConfig(
            settings
        )
    )
    assert specificSettings is not None

    prefixesToTrim = specificSettings.prefixesToTrim
    pathIndex = specificSettings.pathIndex
    assert pathIndex is not None

    reportCategories = mapfile_parser.ReportCategories()
    reportCategories.setReportData(specificSettings.reportData)
    for cat in specificSettings.categories:
        reportCategories.push(cat.ide, cat.name, cat.paths)

    if specificSettings.checkAsmPaths:
        assert selectedVersion.paths.asm is not None
        asmPath = Path(selectedVersion.paths.asm)
    else:
        asmPath = None

    summaryTableConfig = mapfile_parser.frontends.objdiff_report.SummaryTableConfig(
        doUnits=units,
        sort=sort,
        remaining=remaining,
    )

    mapFile = mapfile_parser.MapFile.newFromMapFile(mapPath)
    markMatchedAsm(mapFile)

    mapFile.writeObjdiffReportToFile(
        outputPath,
        prefixesToTrim,
        reportCategories,
        pathIndex=pathIndex,
        asmPath=asmPath,
    )

    report = mapfile_parser.frontends.objdiff_report.report_internal.Report.readFile(
        outputPath
    )
    assert report is not None

    table = report.asTableStr(
        do_units=summaryTableConfig.doUnits,
        sort=summaryTableConfig.sort,
        remaining=summaryTableConfig.remaining,
    )
    print(table, end="")
    printCategoryWarnings(
        report,
        specificSettings.categories,
        specificSettings.reportData,
    )

    summaryPath = os.getenv("GITHUB_STEP_SUMMARY")
    if summaryPath is not None:
        with open(summaryPath, "a", encoding="UTF-8") as summaryFile:
            summaryFile.write("```\n")
            summaryFile.write(table)
            summaryFile.write("```\n")


def progressMain():
    settings = decomp_settings.scan_for_config()
    versionsChoices = [x.name for x in settings.versions]

    parser = argparse.ArgumentParser(
        description="Print the progress for each category in your terminal."
    )
    parser.add_argument(
        "-v",
        "--version",
        help="version to process",
        choices=versionsChoices,
        default=versionsChoices[0],
    )
    parser.add_argument(
        "-u",
        "--units",
        help="Print units instead of categories",
        action="store_true",
    )
    parser.add_argument(
        "-s",
        "--sort",
        help="Sort by decomped size",
        action="store_true",
    )
    parser.add_argument(
        "-r",
        "--remaining",
        help="Print an extra column indicating the remaining percentage to match of each entry",
        action="store_true",
    )

    args = parser.parse_args()

    version: str = args.version
    units: bool = args.units
    sort: bool = args.sort
    remaining: bool = args.remaining

    doThing(
        version,
        settings,
        units,
        sort,
        remaining,
    )


if __name__ == "__main__":
    progressMain()
