#!/usr/bin/env python3

import argparse
import json
import csv
import git
import os
import re

parser = argparse.ArgumentParser(description="Computes current decompilation progress")
parser.add_argument("-m", "--matching", dest='matching', action='store_true',
                    help="Output matching progress instead of decompilation progress")
parser.add_argument("-s", "--silent", dest='silent', action='store_true', help="Run silently")
parser.add_argument("-u", "--update", dest='update', action='store_true', help="Update the readme")
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

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if not args.matching else []

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

nonMatchingASM = GetNonMatchingSize("asm/nonmatchings")

print("src: " + hex(src) + ", asm: " + hex(asm) + ", nonmatching: " + hex(nonMatchingASM) + ", total: " + hex(src + asm + nonMatchingASM))
src -= nonMatchingASM
asm += nonMatchingASM

total = src + asm
srcPct = 100 * src / total
asmPct = 100 * asm / total

adjective = "decompiled" if not args.matching else "matched"

if (not args.silent):
    print(hex(total) + " total bytes of decompilable code")
    print("\033[0;32m" + hex(src) + " bytes " + adjective + " in src " + str(srcPct) + "%\033[0;0m")
    print("------------------------------------")

if (args.update):
    with open('README.md', 'r') as file:
        filedata = file.read()

    tofind = "/" + adjective + "-"
    index = filedata.find(tofind)
    if (not index == -1):
        index += len(tofind)
        qndex = filedata.find("%-", index)
        if (not qndex == -1):
            filedata = filedata.replace(filedata[index:qndex], '%.2f' % srcPct, 1)

    with open('README.md', 'w') as file:
        file.write(filedata)

