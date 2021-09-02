def apply(config, args):
    config["baseimg"] = "baserom.z64"
    config["myimg"] = "build/mischiefmakers.z64"
    config["mapfile"] = "build/mischiefmakers.map"
    config["source_directories"] = [".", "src"]
    # config["arch"] = "mips"
    # config["map_format"] = "gnu" # gnu or mw
    # config["mw_build_dir"] = "build/" # only needed for mw map format
    # config["makeflags"] = []
    # config["objdump_executable"] = ""
