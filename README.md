# Mischief Makers
[![Match Status](https://img.shields.io/badge/matched-3.15-brightgreen.svg)]()
[![Decomp Status](https://img.shields.io/badge/decompiled-5.28-yellow.svg)]()

A in-progress decompilation of Mischief Makers (or Yuke-Yuke!! Trouble Makers, ゆけゆけ!!トラブルメーカーズ, Yuke Yuke!! Toraburu Mēkāzu in Japanese.)

This project currently supports the 1.1 release of the US version.

## Building (Linux)

### Install build dependencies
The build process has the following package requirements:
- git
- build-essential
- binutils-mips-linux-gnu
- python3

Under a Debian based distribution, you can install these with the following commands:
```
sudo apt-get update
sudo apt-get install git build-essential binutils-mips-linux-gnu python3
```

### Clone the repository
Clone `https://github.com/Drahsid/mischief-makers.git` in whatever directory you wish. Make sure to initialize the submodules!
```
git clone https://github.com/Drahsid/mischief-makers.git --recursive
cd mischief-makers
git submodule init
```

### Install Python3 requirements
Navigate to `tools/splat/` and run `pip3 install requirements.txt`

### Prepare the base rom
Copy over your copy of Mischief Makers 1.1 US into the root folder of this repository. Rename the rom to baserom.z64.

Next, run `make setup` to extract the assets of the rom.

### Build the rom
Just run `make` to build the rom. If the build succeeds, a folder will be produced with the name `build`, inside this will be the output rom `mischiefmakers.z64`.

Addtionally, if the rom matches, you should see this output:
```
CRC 1: 0xBFA526B4  Calculated: 0xBFA526B4 (Good)
CRC 2: 0x0691E430  Calculated: 0x0691E430 (Good)
2ee917366f64a06472d7622a2a05990e  build/mischiefmakers.z64
baserom.z64: OK
```

## Contributing
Contributions are welcome. If you would like to reserve a function, open a PR with the function or file name(s).
If you plan to contribute, be sure to take a look at the [style guide](https://github.com/Drahsid/mischief-makers/wiki/Style-Guide).

