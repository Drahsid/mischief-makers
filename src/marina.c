#include "common.h"
#include "actor.h"
#include "data_symbols.h"

#include "boot.h"

#include "input.h"

extern u16 D_801373D8;
extern s32 D_800D5794[];
extern s16* D_800D54EC[];

u8 func_80048600(u16 actor_index) {
    u8 ret;

    if (D_801370CC & gButton_DLeft) {
        ret = 1;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret = 0x81;
        }
    }
    else {
        if (D_801370CC & gButton_DRight) {
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

    if (D_801370CC & gButton_DDown) {
        ret |= 0x10;
    }

    if (D_801370CC & gButton_DUp) {
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

u8 func_80048C28(s32 arg0) {
    u8 ret;

    if ((arg0 != 0) && !(D_801373D8 & 0x33)) {
        return 0xFF;
    }

    ret = 4;
    if (D_801373D8 & 0x10) {
        ret = 8;
        if (D_801373D8 & 3) {
            ret = 6;
        }
    }
    if (D_801373D8 & 0x20) {
        ret = 0;
        if (D_801373D8 & 3) {
            ret = 2;
        }
    }
    return ret;
}

s32 func_80048C94(s32 arg0) {
    return D_800D5794[arg0] * gActors[0].unk_120;
}

s32 func_80048CE4(void) {
    if (gActors[0].stateLower == 1) {
        return 1;
    }
    if (gActors[0].stateLower < 0x2e) {
        return 0;
    }
    if (gActors[0].stateLower < 0x37) {
        return 2;
    }
    return 3;
}

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

void func_8004A8E0(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 = 0xFF;
}

void func_8004A918(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    gActors[actor_index].flags = gActors[actor_index].var_150;
}

void func_8004A960(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 index;

    actor->unk_12E_u8 |= 0x41;

    for (index = 0; index < 0x20; index++) {
        D_801373E0.raw[index] = 0;
    }

    D_801373E0.unk_13 = 0;
    D_801373E0.unk_12 = 100;
    actor->unk_140_u16[1] = 0;
    actor->unk_140_u8[1] = 0;
    actor->unk_180 = 0;
    actor->unk_12F_u8 = 0;
    actor->graphicLists = D_800D54EC;
    actor->velocityX.raw = actor->velocityY.raw = actor->velocityZ.raw = 0;
    actor->graphicFlags |= ACTOR_GFLAG_UNK10 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    actor->flags &= ACTOR_FLAG_FLIPPED;
    actor->flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ENABLED;
    actor->unk_0DE = 1;
    actor->unk_0DF = 1;
    actor->unk_17C = 0;
    gActors[0].unk_120 = actor->unk_124 = actor->unk_128 = 1.0f;
    actor->unk_170 = 1;
    actor->state = 3;
}

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
