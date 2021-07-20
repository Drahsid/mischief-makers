#!/usr/bin/env python3

import argparse
import json
import csv
import git
import os
import re

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

hexformat = '0x%06x'

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
    print((hexformat % total).upper() + " total bytes of decompilable code")
    print("\033[0;32m" + (hexformat % srcSize).upper() + " / " + (hexformat % total).upper() + " matching   (" + str(srcPct) + "%)\033[0;0m")
    print("\033[0;33m" + (hexformat % nonMatchingSrcSize).upper() + " / " + (hexformat % total).upper() + " decompiled (" + str(nonMatchingSrcPct) + "%)\033[0;0m")
    print("------------------------------------")

if (args.update):
    UpdateReadme("/matched-", srcPct)
    UpdateReadme("/decompiled-", nonMatchingSrcPct)