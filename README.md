# Mischief Makers
[![Total Matching](https://img.shields.io/badge/Total%20Matching-9.76%25-brightgreen.svg)]()
[![Main Code Segment](https://img.shields.io/badge/Main%20Code%20Segment-21.44%25-yellow.svg)]()
[![Overlays](https://img.shields.io/badge/Overlays-2.37%25-orange.svg)]()

A in-progress decompilation of Mischief Makers (or Yuke-Yuke!! Trouble Makers, ゆけゆけ!!トラブルメーカーズ, Yuke Yuke!! Toraburu Mēkāzu in Japanese.)

This project currently supports the 1.1 release of the US version, with very minor support for the other versions of the game.

## Building (Linux)

### Install build dependencies
The build process has the following package requirements:
- git
- build-essential
- binutils-mips-linux-gnu
- gcc-mips-linux-gnu
- python3
- python3-venv
- ninja-build

Under a Debian based distribution, you can install these with the following commands:
```
sudo apt update
sudo apt install git build-essential binutils-mips-linux-gnu gcc-mips-linux-gnu python3 python3-venv ninja-build
```

### Clone the repository
Clone `https://github.com/Drahsid/mischief-makers.git` in whatever directory you wish.
```
git clone https://github.com/Drahsid/mischief-makers.git --recursive
```

For an existing checkout, synchronize and initialize the submodules before building:
```
git submodule sync --recursive
git submodule update --init --recursive
```

### Install Python requirements
Create a project venv and install the pinned Python requirements into it:
```
python3 -m venv .venv
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install -r requirements.txt
```

Also note that you can do the following:
```
source .venv/bin/activate
```

Run `configure.py` through this venv Python.

### Prepare the base rom
Copy over your copy of Mischief Makers 1.1 US into the root folder of this repository. Rename the rom to baserom.us1.z64.

For first-time setup, run the following command to download and extract the compiler:
```
.venv/bin/python configure.py --setup
```

To extract, disassemble, generate the build script, and build the ROM:
```
.venv/bin/python configure.py --split --build
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
.venv/bin/python configure.py --clean
.venv/bin/python configure.py --fullclean
.venv/bin/python configure.py --split
```

## Contributing
Contributions are welcome. If you would like to reserve a function, open a PR with the function or file name(s).
If you plan to contribute, be sure to take a look at the [style guide](https://github.com/Drahsid/mischief-makers/wiki/Style-Guide).
