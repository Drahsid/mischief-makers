# Mischief Makers
[![Total Matching](https://img.shields.io/badge/Total%20Matching-16.85%25-brightgreen.svg)]()
[![Main Code Segment](https://img.shields.io/badge/Main%20Code%20Segment-27.57%25-yellow.svg)]()
[![Overlays](https://img.shields.io/badge/Overlays-10.07%25-orange.svg)]()

A in-progress decompilation of Mischief Makers (or Yuke-Yuke!! Trouble Makers, ゆけゆけ!!トラブルメーカーズ, Yuke Yuke!! Toraburu Mēkāzu in Japanese.)

This project currently supports the 1.1 release of the US version, with very minor support for the other versions of the game.

## Building
The build process has the following package requirements:
- git
- build-essential
- binutils-mips-linux-gnu
- python3
- python3 venv
- ninja

### Linux Dependencies
Under a Debian based distribution, you can install these with the following commands:
```
sudo apt update
sudo apt install git build-essential binutils-mips-linux-gnu python3 python3-venv ninja-build
```

## macOS Dependencies
Under macOS, homebrew can be used to install the dependencies with the following commands:
```
brew update
brew install git python3 ninja tehzz/n64-dev/mips64-elf-binutils
```

### Clone the repository
Clone `https://github.com/Drahsid/mischief-makers.git` in whatever directory you wish.
```
git clone --recurse-submodules https://github.com/Drahsid/mischief-makers.git
```

For an existing checkout, synchronize and initialize the submodules before building:
```
git submodule sync --recursive
git submodule update --init --recursive
```

### Install Python requirements
Create a project venv and install the pinned Python requirements into it:
```sh
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
```

Alternative using `uv`:
```sh
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt
```

Run `configure.py` through this venv Python.

### Prepare the base rom
Copy over your copy of Mischief Makers 1.1 US into the root folder of this repository. Rename the rom to baserom.us1.z64.

For first-time setup, run the following command to download and extract the IDO compiler. This automatically detects your host platform.
```
python3 configure.py --setup
```

To extract, disassemble, generate the build script, and build the ROM:
```
python3 configure.py --split --build
```

## Build the rom
Just run `ninja`, or alternatively, `./configure.py -sb`. A folder named 'build' will be produced, inside this will be the output rom `mischiefmakers.z64`. If the rom matches, you should see the following output in the console:
```
source: 811709c6473f74cbf283aa61f056e1de3046ec73; target: 811709c6473f74cbf283aa61f056e1de3046ec73
OK!
```

## Other configure options
Use the venv Python for configure commands:
```
python3 configure.py --clean
python3 configure.py --fullclean
python3 configure.py --split
```

## Python tools
Use the venv Python for repository tools:

- `tools/checksum.py`: compare the checksum of binfile to sha1file. ex: `python3 tools/checksum.py [binfile] [sha1file]`
- `tools/progress.py`: generate  progress report. `--output [path]`, `--map [mapfile path]`, `--update-readme`, `--quiet`
- `tools/m2ctx.py`: generate m2c context from a C file. ex: `python3 tools/m2ctx.py [path to c_file]`
- `tools/trouble_rle.py`: decode an extracted `.rle1` or `.rle2` file to a raw `.bin`. ex: `python3 tools/trouble_rle.py file.rle1 file.bin` or `python3 tools/trouble_rle.py file.rle2 file.bin --decoded-size 0x1000`
- `tools/trouble_asset_tool.py`: extract static segment assets. A bit complex, check the usage in `configure.py` and the source for more info on how to use it. Otherwise see [trouble_assets.yaml](versions/us1/trouble_assets.yaml)

## Contributing
Contributions are welcome. If you would like to reserve a function, open a PR with the function or file name(s).
If you plan to contribute, be sure to take a look at the [style guide](https://github.com/Drahsid/mischief-makers/wiki/Style-Guide).
