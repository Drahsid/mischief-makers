from splat.segtypes.common.bin import CommonSegBin


class N64SegTrouble_RLE(CommonSegBin):
    def __init__(
        self,
        rom_start,
        rom_end,
        type,
        name,
        vram_start,
        args,
        yaml,
    ):
        super().__init__(rom_start, rom_end, type, name, vram_start, args, yaml)

        subtype = yaml.get("subtype")
        if subtype not in ("Type1", "Type2"):
            raise ValueError(f"{name}: Trouble_RLE requires subtype Type1 or Type2")

        self.subtype = subtype
