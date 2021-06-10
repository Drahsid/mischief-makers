def apply(config, args):
    config['mapfile'] = 'build/mischiefmakers.map'
    config['myimg'] = 'build/mischiefmakers.z64'
    config['baseimg'] = 'baserom.z64'
    config['makeflags'] = []
    config['source_directories'] = ['src', 'include', 'spec']