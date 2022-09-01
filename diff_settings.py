#!/usr/bin/env python3

import os

def apply(config, args):
    config['mapfile'] = f'build/mischiefmakers.map'
    config['myimg'] = f'build/mischiefmakers.z64'
    config['baseimg'] = f'baserom.z64'
    config['source_directories'] = ['src', 'include', 'asm']
    if os.name == 'nt':
        config['objdump_executable'] = f'tools/windows/mips-gcc/mips64-objdump.exe'
