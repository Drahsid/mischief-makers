#! /usr/bin/env python3

import argparse
import os
import platform
import shutil
import sys
import subprocess
from pathlib import Path
from typing import Dict, List, Set, Union

import ninja_syntax
import requests
import splat
import splat.scripts.split as split
from splat.segtypes.common.codesubsegment import CommonSegCodeSubsegment
from splat.segtypes.linker_entry import LinkerEntry
from splat.util import options as splat_options

ROOT = Path(__file__).parent.relative_to(os.getcwd())
TOOLS_DIR = ROOT / "tools"
PYTHON = sys.executable

BASENAME = "mischiefmakers"
GAME_VERSION = "us1"

# TODO: Not this
def split_as_asmtu_file_with_dot_siblings(self, out_path):
    out_path.parent.mkdir(parents=True, exist_ok=True)

    self.print_file_boundaries()

    with open(out_path, "w", encoding="utf-8", newline="\n") as asm_file:
        for line in self.get_asm_file_header():
            asm_file.write(line + "\n")

        if self.spim_section is not None:
            asm_file.write(self.spim_section.disassemble())

        emitted_sections = {self.get_linker_section_linksection()}
        for section in self.section_order:
            if section in emitted_sections:
                continue

            sibling = self.siblings.get(section)
            if asmtu_should_emit_sibling(self, sibling):
                asm_file.write("\n")
                asm_file.write(f"{sibling.get_section_asm_line()}\n\n")
                asm_file.write(sibling.spim_section.disassemble())
                emitted_sections.add(section)

        for section, sibling in self.siblings.items():
            if section in emitted_sections:
                continue

            if asmtu_should_emit_sibling(self, sibling):
                asm_file.write("\n")
                asm_file.write(f"{sibling.get_section_asm_line()}\n\n")
                asm_file.write(sibling.spim_section.disassemble())
                emitted_sections.add(section)


def asmtu_should_emit_sibling(parent, sibling):
    if not isinstance(sibling, CommonSegCodeSubsegment):
        return False

    if sibling.spim_section is None:
        return False

    if parent.type == "asmtu" and sibling.type.startswith("."):
        return True

    return (not sibling.should_self_split()) or splat_options.opts.make_full_disasm_for_code


CommonSegCodeSubsegment.split_as_asmtu_file = split_as_asmtu_file_with_dot_siblings

def preferred_tool(programs: List[str]) -> str:
    """determine which if any executable is available in PATH"""
    for prog in programs:
        for path in os.environ.get("PATH", "").split(os.pathsep):
            fpath = Path(path) / prog
            if fpath.is_file() and os.access(fpath, os.X_OK):
                return prog
    return ""

YAML_FILE = f"versions/{GAME_VERSION}/{BASENAME}.yaml"
LD_PATH = f"versions/{GAME_VERSION}/{BASENAME}.ld"
MAP_PATH = f"build/{BASENAME}.map"
ELF_PATH = f"build/{BASENAME}.elf"
Z64_PATH = f"build/{BASENAME}.z64"
OK_PATH = f"build/{BASENAME}.ok"

GAME_VERSION_DEFINE = f"-DGAME_VERSION=GAME_VERSION_{GAME_VERSION.upper()}"

IDO_DEFS = f"-D_LANGUAGE_C -D_DEBUG -DF3DEX_GBI {GAME_VERSION_DEFINE} -DBUILD_VERSION=VERSION_H"
COMMON_INCLUDES = "-I include -I src -I ultralib/include -I ultralib/include/PR -I ultralib/src"

# Stock libultra_d.a version H IDO flags from ultralib/makefiles/ido.mk
LIBULTRA_INCLUDES = "-I include -I ultralib/include -I ultralib/include/compiler/ido -I ultralib/include/PR -I ultralib/src"
LIBULTRA_CFLAGS = "-c -Wab,-r4300_mul -G 0 -nostdinc -Xcpluscomm -fullwarn -woff 516,649,838,712"
LIBULTRA_ASFLAGS = "-c -Wab,-r4300_mul -G 0 -nostdinc -woff 516,649,838,712"
LIBULTRA_VERSION_DEFS = "-DBUILD_VERSION=VERSION_H -DBUILD_VERSION_STRING=\\\"2.0H\\\""
LIBULTRA_DEFAULT_DEFS = f"-D_MIPS_SZLONG=32 -DF3DEX_GBI {LIBULTRA_VERSION_DEFS} -non_shared -D_DEBUG"
LIBULTRA_NODEBUG_DEFS = f"-D_MIPS_SZLONG=32 -DF3DEX_GBI {LIBULTRA_VERSION_DEFS} -non_shared -DNDEBUG"
LIBULTRA_DEFAULT_OPT_FLAGS = "-O1 -g2"
LIBULTRA_DEFAULT_ASOPT_FLAGS = "-O0 -g2"
LIBULTRA_DEFAULT_MIPS_FLAGS = "-mips2 -o32"
LIBULTRA_MIPS3_FLAGS = "-mips3 -32"
LIBULTRA_MATCHING_MIPS2_G1_FLAGS = "-mips2 -g1 -32"
LIBULTRA_O3_DIRS = ["audio", "gt", "gu", "mgu", "rg", "sched", "sp"]

CROSS_AS = preferred_tool(["mips-linux-gnu-as", "mips64-linux-gnu-as", "mips64-elf-as"])
CROSS = CROSS_AS.removesuffix("as")
CROSS_LD = f"{CROSS}ld"
CROSS_STRIP = f"{CROSS}strip"
CROSS_OBJCOPY = f"{CROSS}objcopy"
CPP = preferred_tool([f"{CROSS}cpp", "clang", "cpp"])
CPP_FLAGS = "-E -P -x c" if CPP == "clang" else "-P"
AS_FLAGS = f"{COMMON_INCLUDES} -EB -mtune=vr4300 -march=vr4300 -mabi=32"
OPT_FLAGS = "-O2"
MIPS_FLAGS = "-mips1 -32"

IDO_VER = "5.3"
IDO_CC = TOOLS_DIR / f"ido{IDO_VER}" / "cc"

O32_TOOL = ROOT / "ultralib/tools/set_o32abi_bit.py"
ASM_PROCESSOR_PRELUDE = "include/asm_processor_prelude.inc"
GAME_WARNING_SUPPRESSIONS = "-woff 649,838"

GAME_CC_CMD = f"{PYTHON} tools/asm_processor/build.py --input-enc=utf-8 --output-enc=EUC-JP --asm-prelude {ASM_PROCESSOR_PRELUDE} {IDO_CC} -- {CROSS_AS} {AS_FLAGS} -- -G 0 -non_shared -fullwarn {GAME_WARNING_SUPPRESSIONS} -verbose -Xcpluscomm -nostdinc -Wab,-r4300_mul $flags {MIPS_FLAGS} {COMMON_INCLUDES} {IDO_DEFS} -c -o $out $in"

LIBULTRA_CC_CMD = f"$ido {LIBULTRA_CFLAGS} $mips $defs $opt_flags $in {LIBULTRA_INCLUDES} -o $out && {O32_TOOL} $out"

LIBULTRA_AS_CMD = f"{IDO_CC} {LIBULTRA_ASFLAGS} {LIBULTRA_DEFAULT_MIPS_FLAGS} {LIBULTRA_DEFAULT_DEFS} {LIBULTRA_DEFAULT_ASOPT_FLAGS} $in {LIBULTRA_INCLUDES} -o $out && {O32_TOOL} $out && {CROSS_STRIP} $out -N asdasdasdasd"

def remove_file(fpath: str | os.PathLike, verbose: bool = False):
    if os.path.exists(fpath):
        if verbose:
            print(f"Deleting {fpath}")
        os.remove(fpath)

def clean(verbose: bool = False):
    files = [
        f"versions/{GAME_VERSION}/.splache",
    ]
    for f in files:
        remove_file(f, verbose)

    shutil.rmtree("asm", ignore_errors=True)
    shutil.rmtree("assets", ignore_errors=True)
    shutil.rmtree("build", ignore_errors=True)

def fullclean(verbose: bool = False):
    files = [
        ".ninja.log",
        "build.ninja",
        "permuter_settings.toml",
        f"versions/{GAME_VERSION}/{BASENAME}.d",
        f"versions/{GAME_VERSION}/{BASENAME}.ld",
        f"versions/{GAME_VERSION}/undefined_funcs_auto.txt",
        f"versions/{GAME_VERSION}/undefined_syms_auto.txt",
    ]
    for f in files:
        remove_file(f, verbose)
    clean(verbose)

def obtain_ido_recomp(version: str):
    download_dir = TOOLS_DIR / f"ido{version}"

    if download_dir.exists():
        print(
            f"IDO {version} already exists at {download_dir}, removing and re-downloading"
        )
        shutil.rmtree(download_dir)

    IDO_RECOMP_VERSION = "v1.2"

    host_arch = ""
    if sys.platform == "darwin":
        ido_os = "macos"
    elif sys.platform == "linux":
        ido_os = "linux"
        if platform.machine() == "aarch64":
            host_arch = "-arm"
    elif sys.platform == "win32":
        ido_os = "windows"
    else:
        print(f"Unsupported platform {sys.platform}")
        sys.exit(1)

    ido_tar_name = f"ido-{version}-recomp-{ido_os}{host_arch}.tar.gz"
    url = f"https://github.com/decompals/ido-static-recomp/releases/download/{IDO_RECOMP_VERSION}/{ido_tar_name}"
    target_path = TOOLS_DIR / ido_tar_name

    print(f"Downloading IDO {version}: {url}")
    response = requests.get(url)
    if response.status_code != requests.codes.OK:
        print(f"Failed to download IDO tarball from {url}")
        sys.exit(1)
    with open(target_path, "wb") as f:
        f.write(response.content)

    shutil.unpack_archive(target_path, download_dir)
    os.remove(target_path)


def setup():
    obtain_ido_recomp(IDO_VER)
    print("Setup complete!")


def write_permuter_settings():
    with open("permuter_settings.toml", "w") as f:
        f.write(
            f"""build_system = "ninja"
compiler_type = "ido"

[preserve_macros]
"g[DS]P.*" = "void"
"gs[DS]P.*" = "void"
"G_IM_SIZ_.*" = "int"
"G_[AC]C.*" = "int"
ABS = "int"
ABS_ALT = "int"
SQ = "int"
ARRAY_COUNT = "int"
ARRAY_COUNTU = "int"
CLAMP = "int"
NULL = "int"

[decompme.compilers]
"{IDO_CC}" = "ido{IDO_VER}"
"""
        )


def get_libultra_c_flags(c_path: Path) -> Dict[str, str]:
    opt_level = LIBULTRA_DEFAULT_OPT_FLAGS
    mips = LIBULTRA_DEFAULT_MIPS_FLAGS

    parts = c_path.parts
    if "libc" in parts:
        opt_level = "-O3"

        if c_path.stem in ["ll", "llbit", "llcvt"]:
            opt_level = LIBULTRA_DEFAULT_OPT_FLAGS
            mips = LIBULTRA_MIPS3_FLAGS
        # Matching exceptions observed in the ROM
        elif c_path.stem in ["ldiv", "sprintf", "xldtob", "xlitob", "xprintf"]:
            opt_level = "-O2 -g2"
            mips = "-mips2 -32"
        elif c_path.stem == "syncprintf":
            opt_level = "-O2 -g2"
            mips = "-mips2 -32"
        elif c_path.stem == "string":
            opt_level = "-g2"
    elif "ultralib" in parts:
        source_dir = c_path.parent.name

        if (source_dir == "audio" and c_path.stem in ["bnkf", "heapalloc", "heapinit"]) or (
            source_dir == "io" and c_path.stem == "aisetfreq"
        ):
            opt_level = ""
            mips = LIBULTRA_MATCHING_MIPS2_G1_FLAGS
        elif source_dir == "audio" and c_path.stem == "csplayer":
            opt_level = ""
            mips = "-mips1 -g1 -32"
        elif source_dir == "audio" and c_path.stem == "seqplayer":
            opt_level = "-O1 -g2"
        elif source_dir == "audio" and c_path.stem in [
            "seqpsetbank",
            "seqpsetvol",
            "seqpsetfxmix",
            "seqpgetstate",
            "seqpsetseq",
            "seqpplay",
            "seqpstop",
            "seqpsetchlvol",
            "seqpsetpan",
        ]:
            opt_level = "-O2 -g2"
            mips = "-mips2 -32"
        elif source_dir == "audio" and c_path.stem in ["synthesizer", "cseq"]:
            opt_level = "-O1 -g2"
        elif source_dir == "audio" and c_path.stem in [
            "auxbus",
            "cents2ratio",
            "copy",
            "drvrnew",
            "event",
            "env",
            "filter",
            "load",
            "mainbus",
            "reverb",
            "resample",
            "save",
            "seq",
            "sl",
            "synallocvoice",
            "synallocfx",
            "synstartvoiceparam",
            "syndelete",
            "synfreevoice",
            "synsetfxmix",
            "synsetpitch",
            "synsetpan",
            "synsetpriority",
            "synsetvol",
            "synstopvoice",
        ]:
            opt_level = "-O1 -g2"
        elif source_dir == "sp" and c_path.stem in ["sprite", "clearattribute", "setattribute", "color", "spscale"]:
            opt_level = "-g2"
        elif source_dir == "gu" and c_path.stem in [
            "perspective",
            "ortho",
            "rotate",
            "scale",
            "translate",
            "lookat",
            "mtxutil",
            "normalize",
        ]:
            opt_level = "-g2"
        elif source_dir == "gu" and c_path.stem in ["cosf", "sinf"]:
            opt_level = "-g2"
        elif source_dir in LIBULTRA_O3_DIRS:
            opt_level = "-O3"
        elif c_path.stem == "initialize_isv":
            opt_level = "-O2"

    return {"opt_flags": opt_level, "mips": mips}


def get_libultra_c_defs(c_path: Path) -> str:
    if "ultralib" in c_path.parts and c_path.parent.name == "audio" and c_path.stem == "csplayer":
        return LIBULTRA_NODEBUG_DEFS

    if "ultralib" in c_path.parts and c_path.parent.name == "sp" and c_path.stem == "sprite":
        return LIBULTRA_DEFAULT_DEFS.replace("-DF3DEX_GBI", "-DF3D_GBI")

    return LIBULTRA_DEFAULT_DEFS


def build_c_segment(entry: any, build):
    opt_level = OPT_FLAGS

    c_path = entry.src_paths[0]
    if "libc" in c_path.parts or "ultralib" in c_path.parts:
        libultra_flags = get_libultra_c_flags(c_path)
        build(
            entry.object_path,
            entry.src_paths,
            "cc_libultra",
            variables={
                "opt_flags": libultra_flags["opt_flags"],
                "mips": libultra_flags["mips"],
                "defs": get_libultra_c_defs(c_path),
                "ido": IDO_CC,
            },
        )
    else:
        build(
            entry.object_path,
            entry.src_paths,
            "cc",
            implicit=[ASM_PROCESSOR_PRELUDE],
            variables={"flags": opt_level},
        )

def create_build_script(linker_entries: List[LinkerEntry]):
    built_objects: Set[Path] = set()

    def build(
        object_paths: Union[Path, List[Path]],
        src_paths: List[Path],
        task: str,
        variables: Dict[str, str] = {},
        implicit: List[str] = [],
        implicit_outputs: List[str] = [],
    ):
        if not isinstance(object_paths, list):
            object_paths = [object_paths]

        object_strs = [str(obj) for obj in object_paths]

        for object_path in object_paths:
            if object_path.suffix == ".o":
                built_objects.add(object_path)
            ninja.build(
                outputs=object_strs,
                rule=task,
                inputs=[str(s) for s in src_paths],
                implicit=implicit,
                variables=variables,
                implicit_outputs=implicit_outputs,
            )

    ninja = ninja_syntax.Writer(open(str(ROOT / "build.ninja"), "w"), width=96)

    # Rules
    ninja.rule(
        "bin",
        description="bin $in",
        command=f"{CROSS_LD} -r -b binary $in -o $out",
    )

    ninja.rule(
        "as",
        description="as $in",
        command=f"{CPP} {CPP_FLAGS} {COMMON_INCLUDES} -D_LANGUAGE_ASSEMBLY {GAME_VERSION_DEFINE} $in -o - | iconv -t EUC-JP | {CROSS_AS} -G0 {COMMON_INCLUDES} -EB -mtune=vr4300 -march=vr4300 -o $out && {O32_TOOL} $out",
    )

    ninja.rule(
        "as_libultra",
        description="as $in",
        command=f"{LIBULTRA_AS_CMD}",
    )

    ninja.rule(
        "cc",
        description="cc $in",
        command=f"{GAME_CC_CMD}",
    )

    ninja.rule(
        "cc_libultra",
        description="cc $in",
        command=f"{LIBULTRA_CC_CMD}",
    )

    ninja.rule(
        "ld",
        description="link $out",
        command=f"{CROSS_LD} -T versions/{GAME_VERSION}/undefined_syms_auto.txt -T versions/{GAME_VERSION}/undefined_funcs_auto.txt -T versions/{GAME_VERSION}/undefined_funcs.txt -T versions/{GAME_VERSION}/undefined_syms.txt -Map $mapfile -T $in -o $out",
    )

    ninja.rule(
        "sha1sum",
        description=f"{PYTHON} {TOOLS_DIR}/checksum.py $in",
        command=f"{PYTHON} {TOOLS_DIR}/checksum.py $in && touch $out",
    )

    ninja.rule(
        "elf",
        description="elf $out",
        command=f"{CROSS_OBJCOPY} $in $out -O binary",
    )

    ninja.rule(
        "z64",
        description="rom $out",
        command=f"{CROSS_OBJCOPY} $in $out -O binary",
    )

    for entry in linker_entries:
        seg = entry.segment

        if entry.object_path is None:
            continue

        if entry.object_path in built_objects:
            continue

        if seg.type[0] == ".":
            if entry.src_paths and entry.src_paths[0].suffix == ".c":
                build_c_segment(entry, build)
            elif entry.src_paths and entry.src_paths[0].suffix == ".s":
                build(entry.object_path, entry.src_paths, "as")
            continue

        if isinstance(seg, splat.segtypes.n64.header.N64SegHeader):
            build(entry.object_path, entry.src_paths, "as")
        elif isinstance(seg, splat.segtypes.common.asm.CommonSegAsm) or isinstance(
            seg, splat.segtypes.common.data.CommonSegData
        ):
            build(entry.object_path, entry.src_paths, "as")
        elif isinstance(seg, splat.segtypes.common.c.CommonSegC):
            build_c_segment(entry, build)
        elif isinstance(seg, splat.segtypes.common.textbin.CommonSegTextbin):
            if seg.sibling is None:
                build(entry.object_path, entry.src_paths, "as")
        elif isinstance(seg, splat.segtypes.common.bin.CommonSegBin):
            build(entry.object_path, entry.src_paths, "bin")
        else:
            print(f"ERROR: Unsupported build segment type {seg.type}")
            sys.exit(1)

    ninja.build(
        ELF_PATH,
        "ld",
        LD_PATH,
        implicit=[str(obj) for obj in sorted(built_objects)]
        + [
            f"versions/{GAME_VERSION}/undefined_syms_auto.txt",
            f"versions/{GAME_VERSION}/undefined_funcs_auto.txt",
            f"versions/{GAME_VERSION}/undefined_funcs.txt",
            f"versions/{GAME_VERSION}/undefined_syms.txt",
        ],
        variables={"mapfile": MAP_PATH},
    )

    ninja.build(
        Z64_PATH,
        "z64",
        ELF_PATH,
    )

    ninja.build(
        OK_PATH,
        "sha1sum",
        [Z64_PATH, f"checksum.{GAME_VERSION}.sha1"],
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Configure the project")
    parser.add_argument(
        "-c",
        "--clean",
        help="Clean extraction and build artifacts",
        action="store_true",
    )
    parser.add_argument(
        "-f",
        "--fullclean",
        help="Fully clean extraction and build artifacts",
        action="store_true",
    )
    parser.add_argument(
        "-i",
        "--setup",
        help="Download and extract IDO compiler",
        action="store_true",
    )
    parser.add_argument(
        "-b",
        "--build",
        help="Build",
        action="store_true",
    )
    parser.add_argument(
        "-s",
        "--split",
        help="Split",
        action="store_true",
    )
    parser.add_argument(
        "-v",
        "--verbose",
        help="Verbose",
        action="store_true",
    )
    args = parser.parse_args()

    if args.fullclean:
        fullclean(args.verbose)
    elif args.clean:
        clean(args.verbose)

    if args.setup:
        setup()

    if not any([args.split, args.build]):
        sys.exit(0)

    if not Path(f"baserom.{GAME_VERSION}.z64").exists():
        print(f"baserom.{GAME_VERSION}.z64 is missing!")
        sys.exit(1)

    if args.split:
        split.main(
            [Path(YAML_FILE)],
            modes=["all"],
            verbose=False,
            use_cache=not (args.clean or args.fullclean),
        )
        linker_entries = split.linker_writer.entries
        create_build_script(linker_entries)
        write_permuter_settings()

    if args.build:
        build_command = ["ninja"]
        if args.verbose:
            build_command += ["-v"]
            print(f"{CROSS_AS=}")
            print(f"{CROSS_LD=}")
            print(f"{CROSS_OBJCOPY=}")
            print(f"{CPP=}")
            print(f"{IDO_CC=}")
        subprocess.run(build_command, check=True)
