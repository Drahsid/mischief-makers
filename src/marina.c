#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_800486F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048BB0.s")

u32 func_80048C28(s32 arg0) {
    u16 flags;
    u32 result;

    if ((arg0 == 0) && ((D_801373D8 & 0x33) == 0)) {
        return 0xFF;
    }

    flags = D_801373D8;
    result = 4;

    if (flags & 0x10) {
        if (flags & 3) {
            result = 6;
        } else {
            result = 8;
        }
    }

    if (flags & 0x20) {
        if (flags & 3) {
            result = 2;
        } else {
            result = 0;
        }
    }

    return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_800490BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_800491B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049AC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004A8E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004A918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004A960.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004AA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004AB3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B18C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004BB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004BEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004C5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004CE1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004DA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004DC44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E1DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EAE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004ED10.s")
