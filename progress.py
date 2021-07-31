#!/usr/bin/env python3

import argparse
import json
import csv
import git
import os
import re
import math

parser = argparse.ArgumentParser(description="Computes current decompilation progress")
parser.add_argument("-s", "--silent", dest='silent', action='store_true', help="Run silently")
parser.add_argument("-u", "--update", dest='update', action='store_true', help="Update the readme")
parser.add_argument("-d", "--dumpcsv", dest='dumpcsv', action='store_true', help="Append progress data to csv file")
parser.add_argument("-f", "--csvfile", dest='csvfile', type=str, default="")
args = parser.parse_args()

NON_MATCHING_PATTERN = r"#ifdef\s+NON_MATCHING.*?#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
PROGRAM = "mischiefmakers"

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read(), re.DOTALL)

    return functions

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path, ext):
    files = []

    for r, d, f in os.walk(path):
        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

def GetNonMatchingSize(path):
    size = 0
    asmFiles = GetFiles(path, ".s")

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.startswith("/*")):
                    size += 4

    return size

def UpdateReadme(tofind, pct):
    with open('README.md', 'r') as file:
        filedata = file.read()

    index = filedata.find(tofind)
    if (not index == -1):
        index += len(tofind)
        qndex = filedata.find("-", index)
        if (not qndex == -1):
            filedata = filedata.replace(filedata[index:qndex], '%.2f' % pct, 1)

    with open('README.md', 'w') as file:
        file.write(filedata)


mapFile = ReadAllLines("build/" + PROGRAM + ".map")
src = 0
asm = 0

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/src")):
                src += size
            elif (objFile.startswith("build/asm")):
                asm += size

total = src + asm

nonMatchingFunctions = []
nonMatchingSize = GetNonMatchingSize("asm/nonmatchings")
srcSize = src - nonMatchingSize
asmSize = asm + nonMatchingSize


nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c"))
nonMatchingSize = GetNonMatchingSize("asm/nonmatchings")
nonMatchingSrcSize = src - nonMatchingSize
nonMatchingAsmSize = asm + nonMatchingSize

srcPct = 100 * srcSize / total
asmPct = 100 * asmSize / total
nonMatchingSrcPct = 100 * nonMatchingSrcSize / total
nonMatchingAsmPct = 100 * nonMatchingAsmSize / total

hexformat = '%06x'

levelNames = [
    [
        "Meet Marina!!",
        "Meet Calina!!",
        "Clanball Land",
        "Spike Land",
        "3 Clancer Kids",
        "Blockman Rises",
        "Wormin\' Up!!",
        "Crisis: Nepton",
        "Western World",
        "Volcano!!"
    ],
    [
        "Sea of Lava",
        "Vertigo!!",
        "Sink or Float!",
        "Hot Rush",
        "Searin\' Swing!",
        "Flambéé!!",
        "Tightrope Ride",
        "Freefall!!",
        "Magma Rafts!!",
        "Seasick Climb",
        "Migen Brawl!!"
    ],
    [
        "Clanpot Shake",
        "Clance War",
        "Missile Surf!!",
        "Clanball Lift!",
        "Go Marzen 64",
        "Chilly Dog!!",
        "Snowstorm Maze",
        "LUNAR!!",
        "The Day Before",
        "The Day Of",
        "Cat-astrophe!!",
        "CERBERUS α"
    ],
    [
        "Rolling Rock!!",
        "Toadly Raw!!",
        "7 Clancer Kids",
        "Rescue! Act 1",
        "Rescue! Act 2",
        "TARUS!!",
        "Ghost Catcher!",
        "Aster\'s Tryke!",
        "Moley Cow!!",
        "Aster\'s Maze!",
        "SASQUATCH β"
    ],
    [
        "Clance War II",
        "Counterattack",
        "Bee\'s the One!",
        "MERCO!!",
        "Trapped!?",
        "PHOENIX γ",
        "Inner Struggle",
        "Final Battle",
        "Ending"
    ]
]

chapters = len(levelNames)
totalLevels = 0
for levels in levelNames:
    totalLevels += len(levels)



if (args.dumpcsv):
    git_object = git.Repo().head.object
    data = [
        str(git_object.committed_date),
        git_object.hexsha,
        str(srcSize), str(asmSize),
        str(nonMatchingSrcSize), str(nonMatchingAsmSize),
        str(len(nonMatchingFunctions)),
        str(total)
    ]

    if (not args.silent):
        print(",".join(data))

    dir = args.csvfile
    if (dir == ""):
        dir = "progress.csv"

    with open(dir, 'a') as file:
        file.write("\n" + ",".join(data))

if (not args.silent):
    levelIndex = math.floor((nonMatchingSrcSize / total) * totalLevels)
    chapter = math.floor((nonMatchingSrcSize / total) * chapters)
    levelCounter = levelIndex

    # Super laziness
    for levels in levelNames:
        if (len(levels) > levelCounter): break
        else: levelCounter -= len(levels)

    levelName = levelNames[chapter][levelIndex]
    goldGems = math.floor((srcSize / total) * totalLevels)

    print("0x" + (hexformat % total).upper() + " total bytes of decompilable code")
    print("\033[0;32m0x" + (hexformat % srcSize).upper() + " / 0x" + (hexformat % total).upper() + " matching   (" + str(srcPct) + "%)\033[0;0m")
    print("\033[0;33m0x" + (hexformat % nonMatchingSrcSize).upper() + " / 0x" + (hexformat % total).upper() + " decompiled (" + str(nonMatchingSrcPct) + "%)\033[0;0m")
    print("------------------------------------")
    print("You are on " + str(chapter + 1) + "-" + str(levelIndex + 1) + ": " + levelName)
    print("You have collected " + str(goldGems) + " / " + str(totalLevels) + " gold gems!")

if (args.update):
    UpdateReadme("/matched-", srcPct)
    UpdateReadme("/decompiled-", nonMatchingSrcPct)