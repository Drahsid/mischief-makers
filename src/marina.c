#include "common.h"
#include "actor.h"
#include "data_symbols.h"

#include "boot.h"

#include "input.h"

u8 func_80048600(u16 actor_index) {
    u8 ret;

    if (D_801370CC & D_800BE50C) {
        ret = 1;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret = 0x81;
        }
    }
    else {
        if (D_801370CC & D_800BE510) {
            ret = 2;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            }
            else {
                ret = 0x82;
            }
        }
        else {
            ret = 0;
        }
    }

    if (D_801370CC & D_800BE508) {
        ret |= 0x10;
    }

    if (D_801370CC & D_800BE504) {
        ret |= 0x20;
    }

    return ret;
}

s32 func_800486F4(void) {
    s32 v0 = D_801373F0;
    s32 v1 = (v0 << 0x18) >> 0x18;

    if ((v0 == 2) || (v0 == 6)) {
        v1 = 4;
    }

    if ((v0 == 0xE) || (v0 == 0xA)) {
        v1 = 0xC;
    }

    return v1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048C28.s")

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

void func_8004E1D4(s32 arg0) {
}

void func_8004E1DC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EAE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004ED10.s")
