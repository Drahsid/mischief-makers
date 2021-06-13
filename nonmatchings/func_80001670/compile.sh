#!/usr/bin/env bash
INPUT="$(realpath "$1")"
OUTPUT="$(realpath "$3")"
cd /mnt/d/VsProjs/mischief-makers
tools/ido_recomp/linux/7.1/cc -c -G0 -Xfullwarn -Xcpluscomm -signed -nostdinc -non_shared -Wab,-r4300_mul -D_LANGUAGE_C -D_FINALROM -DF3DEX_GBI -DWIN32 -woff 649,838 -I . -I include -I libreultra/include/2.0I -O2 -mips1 -o32 "$INPUT" -o "$OUTPUT"