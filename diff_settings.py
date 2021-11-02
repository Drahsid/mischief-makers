#!/usr/bin/env python3

def apply(config, args):
    config['mapfile'] = f'build/mischiefmakers.map'
    config['myimg'] = f'build/mischiefmakers.z64'
    config['baseimg'] = f'baserom.z64'
    config['source_directories'] = ['src', 'include', 'asm']
