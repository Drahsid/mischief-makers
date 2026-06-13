#include "common.h"
#include "actor.h"
#include "music.h"

extern u16 SpawnParticle_Image_90C0_16(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z);

extern s16 D_801A2110_6CCDE0;
extern s16 D_801A2190_6CCE60;
extern s16 D_801A2924_6CD5F4;
extern s16 D_801A29A4_6CD674;
extern u8 D_801A5204_6CFED4;
extern u16 D_801A5208_6CFED8;
extern u8 D_801A5218_6CFEE8;
extern u16 D_801A522C_6CFEFC[];
extern s16 D_801A5F98_6D0C68;
extern s16 D_801A5F9C_6D0C6C;
extern u16 D_801A6F60;
extern u16 D_801A6F62;
extern u16 D_801A6F64;
extern s16 D_801A6820_6D14F0[];
extern s16 D_801A68C4_6D1594[];
extern s16 D_801A68CC_6D159C[];
extern s16 D_801A68D4_6D15A4[];
extern u8 D_801A51FC_6CFECC;
extern u8 D_801A5214_6CFEE4;
extern u16 D_801A6794_6D1464[];
extern u8 D_801A6F58_6D1C28;
extern u8 D_801A6F59_6D1C29;
extern u32 D_801A1038_6CBD08[];
extern u16 D_801A6F3C_6D1C0C;
extern f32 D_801A6F40_6D1C10;
extern f32 D_801A6F44_6D1C14;
extern f32 D_801A6F48_6D1C18;
extern f32 D_801A6F4C_6D1C1C;
extern f32 D_801A6F50_6D1C20;
extern f32 D_801A6F54_6D1C24;
extern f32 D_801A6AD0_6D17A0;
extern f32 D_801A6AD4_6D17A4;
extern f64 D_801A6E78_6D1B48;
extern f64 D_801A6E80_6D1B50;
extern s16 D_801A6F5A_6D1C2A;
extern s16 D_801A6F5C_6D1C2C;
extern s16 D_801A6F5E_6D1C2E;
extern u16 D_801A5FD4_6D0CA4[];
extern u16 D_801A61C4_6D0E94[];
extern u16 D_801A63C4_6D1094[];
extern u16 D_801A65B4_6D1284[];
extern u32 D_801A5234_6CFF04[];
extern u32 D_801A52A0_6CFF70[];
extern u32 D_801A5358_6D0028[];
extern u32 D_801A5414_6D00E4[];
extern u32 D_801A5DE0_6D0AB0[];
extern u32 D_801A5E24_6D0AF4[];
extern u32 D_801A5EAC_6D0B7C[];
extern u32 D_801A5EF4_6D0BC4[];
extern u32 D_801A554C_6D021C[];
extern u32 D_801A55AC_6D027C[];
extern u32 D_801A5E68_6D0B38[];
extern u32 D_801A5F38_6D0C08[];
extern u32 D_801A68EC_6D15BC[];
extern s32 Math_Atan2(s32 arg0, s32 arg1);

void func_801932DC_6BDFAC(u16 actor_index);
void func_80193EFC_6BEBCC(u16 actor_index, f32 arg1, f32 arg2, s32 arg3);
void func_801971A0_6C1E70(u16 actor_index);
void func_80197968_6C2638(u16 actor_index);
void func_80197F00_6C2BD0(void);
void func_8019DF44_6C8C14(u16 actor_index);
void func_80198F10_6C3BE0(s32 arg0);
void func_8019902C_6C3CFC(u16 actor_index);


void func_80192100_6BCDD0(u16 actor_index) {
    ACTOR_INIT(actor_index,0x21);
    gActors[actor_index].graphicFlags = (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ);
    gActors[actor_index].flags = (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
}

void func_8019216C_6BCE3C(u16 actor_index) {
    gActors[0x51].posZ.raw = gActors[actor_index + 2].posZ.raw - 1;
    func_80033204(0x51, actor_index + 2, 0, 0, 0);
}

void func_801921E0_6BCEB0(s32 arg0) {
    func_80192100_6BCDD0(0x51);
    gActors[0x51].graphicIndex = 0x83A;
}


void func_8019220C_6BCEDC(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_138 != 0.0f) {
        index = actor_index + 0xB;
    }
    else {
        index = actor_index + 6;
    }

    gActors[0x52].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x52, index, 0, 0.0f, 0x200);
    gActors[0x53].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x53, index, 0x3D0, 6.0f, 0x1D8);
}

void func_801922EC_6BCFBC(s32 arg0) {
    func_80192100_6BCDD0(0x52);
    gActors[0x52].graphicIndex = 0x1010;
    func_80192100_6BCDD0(0x53);
    gActors[0x53].graphicIndex = 0x1018;
}


void func_8019232C_6BCFFC(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_138 != 0.0f) {
        index = actor_index + 0xF;
    }
    else {
        index = actor_index + 0xA;
    }

    if (D_801A51FC_6CFECC != 0) {
        gActors[index].graphicIndex = 0x2036;
    }
    else {
        gActors[index].graphicIndex = 0x203A;
    }
}

void func_801923D0_6BD0A0(s32 arg0) {
}


void func_801923D8_6BD0A8(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_138 != 0.0f) {
        index = actor_index + 6;
    }
    else {
        index = actor_index + 0xB;
    }

    gActors[0x54].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x54, index, 0, 0.0f, 0);
    gActors[0x55].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x55, index, 0x114, 18.0f, 0x3F0);
}

void func_801924B4_6BD184(s32 arg0) {
    func_80192100_6BCDD0(0x54);
    gActors[0x54].graphicIndex = 0x100E;
    func_80192100_6BCDD0(0x55);
    gActors[0x55].graphicIndex = 0x1016;
}


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801924F4_6BD1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80192698_6BD368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801929DC_6BD6AC.s")

void func_80192C8C_6BD95C(s32 arg0) {
    func_80192100_6BCDD0(0x56);
    gActors[0x56].graphicIndex = 0x200C;
    func_80192100_6BCDD0(0x57);
    gActors[0x57].graphicIndex = 0x2014;
}


void func_80192CCC_6BD99C(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_138 != 0.0f) {
        index = actor_index + 0x16;
    }
    else {
        index = actor_index + 0x10;
    }

    gActors[0x58].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x58, index, 0x170, 17.0f, 0x130);
}

void func_80192D74_6BDA44(s32 arg0) {
    func_80192100_6BCDD0(0x58);
    gActors[0x58].graphicIndex = 0x812;
}


void func_80192DA0_6BDA70(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_138 != 0.0f) {
        index = actor_index + 0x10;
    }
    else {
        index = actor_index + 0x16;
    }

    gActors[0x59].posZ.raw = gActors[index].posZ.raw + 1;
    func_80033204(0x59, index, 0xB0, 17.0f, 0xD0);
}

void func_80192E48_6BDB18(s32 arg0) {
    func_80192100_6BCDD0(0x59);
    gActors[0x59].graphicIndex = 0x812;
}


void func_80192E74_6BDB44(u16 actor_index) {
    u16 index;
    u16 table_index;
    s32 threshold;

    index = actor_index + 4;
    gActors[index].unk_138 = (0xC0000 - gActors[index].var_154) / 0x10000;

    threshold = 0xC0000;
    for (table_index = 0; table_index < 3; table_index++) {
        if (gActors[index].var_154 < threshold) {
            gActors[index].graphicIndex = D_801A522C_6CFEFC[table_index];
            return;
        }
        threshold += 0x20000;
    }

    gActors[index].graphicIndex = 0x1030;
}

void func_80192F30_6BDC00(u16 actor_index) {
    s16 color;

    color = -gActors[actor_index].posZ.whole / 2;
    if (color >= 0x81) {
        color = 0x80;
    }
    else if (color < 0) {
        color = 0;
    }
    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;
}

void func_80192FB4_6BDC84(u16 actor_index, s32 offset) {
    u16 index;

    for (index = actor_index; index < actor_index + 0x1C; index++) {
        if (index != D_801A5208_6CFED8) {
            gActors[index].posZ.raw -= offset;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80193024_6BDCF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801932DC_6BDFAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80193B50_6BE820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80193EFC_6BEBCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801940E4_6BEDB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801946D8_6BF3A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801948DC_6BF5AC.s")

void func_80194C14_6BF8E4(u16 actor_index) {
    func_80192100_6BCDD0(actor_index);
    gActors[actor_index].graphicIndex = 0x200C;
    D_801A5218_6CFEE8 = 0;
}

void func_80194C70_6BF940(u16 actor_index, u16 val) {
    gActors[actor_index].flags |= (ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[actor_index].health = 10;
    func_8002AC30(actor_index, val);
}

s32 func_80194CE8_6BF9B8(u16 actor_index) {
    func_80194C70_6BF940(0x33, 0x18);
    func_80194C70_6BF940(0x35, 8);
    func_80194C70_6BF940(0x36, 0x18);
    func_80194C70_6BF940(0x37, 0x12);
    func_80194C70_6BF940(0x39, 8);
    func_80194C70_6BF940(0x3B, 0x10);
    func_80194C70_6BF940(0x3C, 0x12);
    func_80194C70_6BF940(0x3E, 8);
    func_80194C70_6BF940(0x40, 8);
    func_80194C70_6BF940(0x41, 0xC);
    func_80194C70_6BF940(0x43, 0xC);
    func_80194C70_6BF940(0x47, 0xC);
    func_80194C70_6BF940(0x49, 0xC);

    if ((gActors[0x33].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x35].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x36].flags_098 & ACTOR_FLAG3_UNK1) ||
        (gActors[0x37].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x39].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x3B].flags_098 & ACTOR_FLAG3_UNK1) ||
        (gActors[0x3C].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x3E].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x40].flags_098 & ACTOR_FLAG3_UNK1) ||
        (gActors[0x41].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x43].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[0x47].flags_098 & ACTOR_FLAG3_UNK1) ||
        (gActors[0x49].flags_098 & ACTOR_FLAG3_UNK1)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        return TRUE;
    }

    return FALSE;
}

void func_80194EEC_6BFBBC(s32 arg0) {
    gActors[0x33].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x35].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x36].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x37].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x39].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x3B].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x3C].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x3E].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x40].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x41].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x43].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x47].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
    gActors[0x49].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80194FA0_6BFC70.s")

void func_80195D44_6C0A14(s32 arg0) {
    if (Rand() & 1) {
        D_801A2924_6CD5F4 = 0x129;
        D_801A29A4_6CD674 = 0x108;
    }
    else {
        D_801A2924_6CD5F4 = 0xF9;
        D_801A29A4_6CD674 = 0xD8;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80195DA0_6C0A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80195F14_6C0BE4.s")

s32 func_80196030_6C0D00(s32 arg0) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x5E, 0x62);
    if (actor_index != 0) {
        ACTOR_INIT(actor_index, 0x1604);
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        return TRUE;
    }
    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801960B0_6C0D80.s")

void func_80196530_6C1200(s32 arg0) {
    D_801A2110_6CCDE0 = 720;
    D_801A2190_6CCE60 = 720;
}

void func_8019654C_6C121C(u16 actor_index) {
    u16 rand;

    rand = Rand();\
    D_801A2190_6CCE60 = (Math_Atan2(gActors[0].posX.whole - gActors[actor_index + 8].posX.whole,
                                       gActors[0].posY.whole - gActors[actor_index + 8].posY.whole) - (rand & 0x3F) - 0x310) & 0x3FF;
}

void func_801965D0_6C12A0(u16 actor_index, u16 angle) {
    s32 target;

    target = gCosineLookup[angle & 0x3FF] * 393216.0f;
    gActors[actor_index].velocityX.raw =
        Math_ApproachS32(gActors[actor_index].velocityX.raw, target, Math_AbsS32(gCosineLookup[angle & 0x3FF] * 49152.0f));
}

void func_801966B0_6C1380(u16 actor_index, u16 angle) {
    s32 target;

    target = gCosineLookup[(angle - 0x100) & 0x3FF] * 393216.0f;
    gActors[actor_index].velocityY.raw = Math_ApproachS32(
        gActors[actor_index].velocityY.raw, target, Math_AbsS32(gCosineLookup[(angle - 0x100) & 0x3FF] * 49152.0f));
}

void func_80196794_6C1464(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0xC000);
}

void func_801967F4_6C14C4(u16 actor_index) {
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, 0xC000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80196854_6C1524.s")

void func_80196BE8_6C18B8(s32 arg0) {
}

// spawn gem actor with specified x-velocity
// @param index index of parent actor.
// @param flags flags of gem spawned (use GemFlags)
// @param velocity_x x-velocity of gem when spawned.
void func_80196BF0_6C18C0(u16 index, u16 flags, s32 velocity_x) {
    s32 actor_index;

    actor_index = func_8002F154(index, flags, 0);
    if (actor_index != 0) {
        gActors[actor_index].velocityX.raw = velocity_x;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
        gActors[actor_index].posY.whole += 0x20;
    }
}

void func_80196C78_6C1948(u16 actor_index) {
    if (gActors[0x31].state != 0x41A) {
        gActors[actor_index].flags = 0;
    }

    gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[0].posX.raw, gActors[actor_index].var_154);
    gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, gActors[0].posY.raw + 0x60000, gActors[actor_index].var_150);
    gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, 0x1A000, 0x2000);
    gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x3C000, 0x700);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80196D60_6C1A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80196E88_6C1B58.s")

void func_801970F8_6C1DC8(s32 arg0) {
}


void func_80197100_6C1DD0(s32 arg0) {
}


s32 func_80197108_6C1DD8(void) {
    return 0x32;
}


s32 func_80197110_6C1DE0(void) {
    if ((gActors[0x32].posY.whole < gActors[0x35].posY.whole) &&
        (gActors[0x46].posY.whole < gActors[0x35].posY.whole) &&
        (gActors[0x4C].posY.whole < gActors[0x35].posY.whole)) {
        return 0x35;
    }

    if ((gActors[0x46].posY.whole < gActors[0x32].posY.whole) &&
        (gActors[0x4C].posY.whole < gActors[0x32].posY.whole)) {
        return 0x32;
    }

    if (gActors[0x4C].posY.whole < gActors[0x46].posY.whole) {
        return 0x46;
    }

    return 0x4C;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801971A0_6C1E70.s")

void func_80197968_6C2638(u16 actor_index) {
    D_801A6F3C_6D1C0C = 0;
    D_801A6F50_6D1C20 = 0.0f;
    D_801A6F54_6D1C24 = 0.0f;
    func_801971A0_6C1E70(actor_index);
    gLookatAtX = D_801A6F40_6D1C10;
    gLookatAtY = D_801A6F44_6D1C14;
    gLookatEyeZ = D_801A6F48_6D1C18;
    gLookatEyeX = gLookatAtX;
    gLookatEyeY = gLookatAtY + 4.0f;
}

void func_80197A04_6C26D4(u16 actor_index) {
    D_801A6F3C_6D1C0C = 1;
    D_801A6F50_6D1C20 = -0.5f;
    D_801A6F54_6D1C24 = -296.0f;
    func_801971A0_6C1E70(actor_index);
    gLookatAtX = D_801A6F40_6D1C10;
    gLookatAtY = D_801A6F44_6D1C14;
    gLookatEyeZ = D_801A6F48_6D1C18;
    gLookatEyeX = gLookatAtX;
    gLookatEyeY = gLookatAtY + 4.0f;
    gActors[0x90].colorA = 0x10;
    gActors[0x90].colorR = 0x70;
    gActors[0x90].colorG = 0x70;
    gActors[0x90].colorB = 0x70;
}

void func_80197AD0_6C27A0(u16 actor_index) {
    D_801A6F3C_6D1C0C = 2;
    D_801A6F4C_6D1C1C = -256.0f;
    D_801A6F50_6D1C20 = -80.0f;
    D_801A6F54_6D1C24 = 256.0f;
    func_801971A0_6C1E70(actor_index);
    gLookatAtX = D_801A6F40_6D1C10;
    gLookatAtY = D_801A6F44_6D1C14;
    gLookatEyeZ = D_801A6F48_6D1C18;
    gLookatEyeX = gLookatAtX;
    gLookatEyeY = gLookatAtY + 4.0f;
    gActors[0x90].colorR = 0x70;
    gActors[0x90].colorG = 0x70;
    gActors[0x90].colorB = 0x70;
}

void func_80197BA4_6C2874(u16 actor_index) {
    D_801A6F3C_6D1C0C = 3;
    D_801A6F50_6D1C20 = 0.0f;
    D_801A6F54_6D1C24 = 256.0f;
    func_801971A0_6C1E70(actor_index);
    gLookatAtX = D_801A6F40_6D1C10;
    gLookatAtY = D_801A6F44_6D1C14;
    gLookatEyeZ = D_801A6F48_6D1C18;
    gLookatEyeX = gLookatAtX;
    gLookatEyeY = gLookatAtY + 4.0f;
    gActors[0x90].colorR = 0x70;
    gActors[0x90].colorG = 0x70;
    gActors[0x90].colorB = 0x70;
}

void func_80197C64_6C2934(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80197C6C_6C293C.s")

void func_80197E08_6C2AD8(void) {
    Palette_AdjustRgb5551Array(D_801A5FD4_6D0CA4, (u16*)0x803068D0, 0x100, D_801A6F5E_6D1C2E,
                               D_801A6F5C_6D1C2C, D_801A6F5A_6D1C2A);
    Palette_AdjustRgb5551Array(D_801A61C4_6D0E94, (u16*)0x80347B08, 0x100, D_801A6F5E_6D1C2E,
                               D_801A6F5C_6D1C2C, D_801A6F5A_6D1C2A);
    Palette_AdjustRgb5551Array(D_801A63C4_6D1094, (u16*)0x802EB5B8, 0x100, D_801A6F5E_6D1C2E,
                               D_801A6F5C_6D1C2C, D_801A6F5A_6D1C2A);
    Palette_AdjustRgb5551Array(D_801A65B4_6D1284, (u16*)0x8030FAC0, 0x100, D_801A6F5E_6D1C2E,
                               D_801A6F5C_6D1C2C, D_801A6F5A_6D1C2A);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80197F00_6C2BD0.s")

void func_80198330_6C3000(u16 arg0, s32 arg1) {
    Sound_StopSfx(D_801A6F60);
    Sound_PlaySfx(arg0);
    D_801A6F60 = arg0;
}


void func_80198370_6C3040(u16 arg0, s32 arg1) {
    Sound_StopSfx(D_801A6F62);
    Sound_PlaySfx(arg0);
    D_801A6F62 = arg0;
}


void func_801983B0_6C3080(u16 arg0, s32 arg1) {
    Sound_StopSfx(D_801A6F64);
    Sound_PlaySfx(arg0);
    D_801A6F64 = arg0;
}


void func_801983F0_6C30C0(u16 arg0, u16 arg1) {
    Sound_StopSfx(D_801A6F60);
    Sound_PlaySfxAtPan(arg0, 0);
    D_801A6F60 = arg0;
}


void func_80198430_6C3100(u16 arg0, u16 arg1) {
    Sound_StopSfx(D_801A6F62);
    Sound_PlaySfxAtPan(arg0, 0x40);
    D_801A6F62 = arg0;
}


void func_80198470_6C3140(u16 arg0, u16 arg1) {
    Sound_StopSfx(D_801A6F64);
    Sound_PlaySfxAtPan(arg0, 0x7F);
    D_801A6F64 = arg0;
}

void func_801984B0_6C3180(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    func_801983F0_6C30C0(arg0, arg3);
    func_80198430_6C3100(arg1, arg3);
    func_80198470_6C3140(arg2, arg3);
}

void func_80198508_6C31D8(u16 arg0, s32 arg1) {
    Sound_PlaySfx(arg0);
    Sound_StopSfx(D_801A6F60);
    D_801A6F60 = arg0;
    Sound_StopSfx(D_801A6F62);
    D_801A6F62 = arg0;
    Sound_StopSfx(D_801A6F64);
    D_801A6F64 = arg0;
}

void func_80198578_6C3248(u16 actor_index, u16 count) {
    u16 index;

    for (index = actor_index + 1; count != 0; index++, count--) {
        gActors[index].flags = 0;
    }
}

void func_801985D8_6C32A8(u16 actor_index) {
    u16 index1 = actor_index + 0x1B;
    u16 index2 = actor_index + 0x15;

    gActors[index1].unk_0DE = 1;
    gActors[index1].unk_0CE = 0xE;
    gActors[index1].unk_0DF = 2;
    gActors[index1].health = 0xA;
    gActors[index2].health = 0xA;
}

void func_80198638_6C3308(u16 actor_index) {
    u16 index = actor_index + 0x1B;

    gActors[index].flags |= 0x9200;
    gActors[index].damage = 0x64;
    gActors[index].hitboxAY0 = 0xB;\
    gActors[index].hitboxAY1 = -8;
    gActors[index].hitboxAX0 = -0xB;
    gActors[index].hitboxAX1 = 0xB;
    gActors[index].hitboxBY0 = 0x10;\
    gActors[index].hitboxBY1 = -0x10;
    gActors[index].hitboxBX1 = 8;
    gActors[index].hitboxBX0 = -8;
    gActors[index].unk_0FC.raw = (gActors[index].unk_0F8.raw = (gActors[index].unk_0DB = (gActors[index].unk_0DA = 0x81, 8), 0x8000), 0x10000);
}

void func_801986DC_6C33AC(u16 actor_index) {
    u16 index = actor_index + 0x15;

    gActors[index].flags |= 0x9200;
    gActors[index].damage = 0x12C;
    gActors[index].hitboxAY0 = 0xE;\
    gActors[index].hitboxAY1 = -0xE;
    gActors[index].hitboxAX0 = -0xA;\
    gActors[index].hitboxAX1 = 0xA;
    gActors[index].hitboxBY0 = 0xC;\
    gActors[index].hitboxBY1 = -0xC;
    gActors[index].hitboxBX0 = -0x14;\
    gActors[index].hitboxBX1 = 0x14;
    gActors[index].unk_0FC.raw = (gActors[index].unk_0F8.raw = (gActors[index].unk_0DB = (gActors[index].unk_0DA = 0x85, 7), 0xFFF10000), 0x55000);
}

void func_8019878C_6C345C(u16 actor_index, u16 other_actor_index) {
    gActors[other_actor_index].flags &= -0x1601;
    gActors[actor_index].unk_128 = (f32)other_actor_index;
    gActors[actor_index].unk_12C = (f32)other_actor_index;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityZ.raw = 0;
    gActors[other_actor_index].posX.raw = gActors[other_actor_index].unk_104;
    gActors[other_actor_index].posY.raw = gActors[other_actor_index].unk_108;
    gActors[other_actor_index].posZ.raw = gActors[other_actor_index].unk_10C;
    func_80197A04_6C26D4(actor_index);
    D_801A5204_6CFED4 = 1;
    D_801A5F9C_6D0C6C = 0;
    Sound_PlaySfx(0x2F);
}

void func_80198858_6C3528(s32 arg0, u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
    gActors[0].flags_098 |= (ACTOR_FLAG3_UNK16);
    gActors[0].unk_0FC.raw = FIXED_UNIT(-2.0);
    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
        gActors[0].unk_0F8.raw = FIXED_UNIT(3.0);
    }
    else {
        gActors[0].unk_0F8.raw = FIXED_UNIT(-3.0);
    }
    D_800D294C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801988E8_6C35B8.s")

s32 func_80198AE4_6C37B4(u16 actor_index, u16 other_actor_index) {
    if (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].unk_128 = (f32)other_actor_index;
        gActors[actor_index].unk_12C = (f32)other_actor_index;
        gActors[other_actor_index].posX.raw = gActors[other_actor_index].unk_104;
        gActors[other_actor_index].posY.raw = gActors[other_actor_index].unk_108;
        gActors[other_actor_index].posZ.raw = gActors[other_actor_index].unk_10C;
        return -1;
    }

    gActors[other_actor_index].flags &= ~ACTOR_FLAG3_UNK12;
    gActors[actor_index].unk_128 = (f32)actor_index;
    gActors[actor_index].unk_12C = (f32)actor_index;
    D_801A5204_6CFED4 = 0;
    func_80197968_6C2638(actor_index);

    if (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
        gActors[actor_index].velocityX.raw = gActors[other_actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[other_actor_index].unk_0FC.raw;
    }
    else {
        return 0;
    }

    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80198C24_6C38F4.s")

void func_80198E70_6C3B40(u16 arg0) {
    if (D_801A5214_6CFEE4 == 0) {
        if (D_801A6F58_6D1C28 != 0) {
            D_801A6F59_6D1C29 = Math_ApproachS32(D_801A6F59_6D1C29, 0, 4);
        }
        else {
            D_801A6F59_6D1C29 = Math_ApproachS32(D_801A6F59_6D1C29, 0x30, 4);
        }
        gActors[0x57].graphicIndex = D_801A6794_6D1464[D_801A6F59_6D1C29 / 16];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80198F10_6C3BE0.s")

void func_8019902C_6C3CFC(u16 actor_index) {
    s16 diff;
    s16* camera_x;

    camera_x = &gScreenPosCurrentX.whole;
    if (!(gActors[actor_index].state & 0x800) && (D_801A6F3C_6D1C0C != 0xFFFF)) {
        diff = gActors[actor_index].posX.whole - gActors[0].posX.whole;
        if (diff >= 0x141) {
            gActors[0].posX.whole = gActors[actor_index].posX.whole - 0x140;
            gPlayerPosX.whole = gActors[0].posX.whole + *camera_x;
            return;
        }
        if (diff < -0x140) {
            gActors[0].posX.whole = gActors[actor_index].posX.whole + 0x140;
            gPlayerPosX.whole = gActors[0].posX.whole + *camera_x;
        }
    }
}

void func_801990EC_6C3DBC(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        func_800819A8(actor_index, D_801A1038_6CBD08);
        func_80197F00_6C2BD0();
        func_801971A0_6C1E70(actor_index);
        func_801932DC_6BDFAC(actor_index);
        func_80198E70_6C3B40(actor_index);
        func_80198F10_6C3BE0(0);
        func_8019902C_6C3CFC(actor_index);
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
    }
}

void func_80199190_6C3E60(u16 actor_index) {
    if (D_801A5F98_6D0C68 >= 0) {
        D_801A5F98_6D0C68--;
    }

    if (gActors[actor_index].health & 0x8000) {
        gActors[actor_index].health = 0;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

f32 func_80199208_6C3ED8(u16 actor_index) {
    return (gActors[actor_index].posZ.whole + 0x400) / (f32)0x400;
}

void func_80199254_6C3F24(s32 arg0, s32 arg1) {
    D_801A5F98_6D0C68 = arg1;
    func_8005CA34(arg0, arg1);
}


void func_80199278_6C3F48(s32 arg0, s32 arg1) {
    if (D_801A5F98_6D0C68 < 0) {
        func_80199254_6C3F24(arg0, arg1);
    }
}

void func_801992A4_6C3F74(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801992AC_6C3F7C.s")

void func_8019946C_6C413C(void) {
    D_800D294C = 0;
    Actor_ClearRange_10To20();
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
    gActors[0].flags |= (ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    func_800282F0(gActors[0x31].posX.whole, -0x18);
    D_800BE5F4.unk_00_u32 = 5;
    gActors[0].iFrames = 0;
    gActors[0x31].state = 0x410;
    gActors[0x31].posZ.whole = -0xE0;
    func_80081478(0x31, D_801A1038_6CBD08, 1);
    func_80197968_6C2638(0x31);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80199504_6C41D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801996A4_6C4374.s")

void func_80199BA8_6C4878(u16 actor_index) {
    u16 index;

    func_80199278_6C3F48(-3, 4);
    if (!(gActiveFrames & 1)) {
        if (gActiveFrames & 2) {
            if (gActors[actor_index].unk_138 != 0.0f) {
                index = actor_index + 0x1B;
            }
            else {
                index = actor_index + 0x15;
            }
            func_80193EFC_6BEBCC(index, D_801A6AD0_6D17A0, D_801A6AD0_6D17A0, 0xFFFB0000);
        }
        else {
            if (gActors[actor_index].unk_138 != 0.0f) {
                index = actor_index + 0x15;
            }
            else {
                index = actor_index + 0x1B;
            }
            func_80193EFC_6BEBCC(index, D_801A6AD4_6D17A4, D_801A6AD4_6D17A4, 0x50000);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_80199CD4_6C49A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_8019D4D8_6C81A8.s")

void func_8019D7A0_6C8470(u16 actor_index) {
    gActors[actor_index].posX.whole = gLookatAtX;
    gActors[actor_index].posY.whole = gLookatAtY;
    gActors[actor_index].unk_188 = gLookatEyeZ - 320.0f;

    switch (gActors[actor_index].state) {
        case 1:
            gActors[actor_index].colorA =
                Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_154);
            if (gActors[actor_index].colorA == 0) {
                gActors[actor_index].state = 0;
                gActors[actor_index].graphicFlags = 0;
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            }
            break;

        case 2:
            gActors[actor_index].colorA =
                Math_ApproachS32(gActors[actor_index].colorA, 0xFF, gActors[actor_index].var_154);
            break;

        case 3:
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA,
                                                           gActors[actor_index].var_158,
                                                           gActors[actor_index].var_154);
            break;
    }

    gActors[actor_index].var_150++;
}

void func_8019D908_6C85D8(void) {
    ACTOR_INIT(0xC1,0x160D);
    gActors[0xC1].graphicFlags = 0;
    gActors[0xC1].flags = ACTOR_FLAG_ACTIVE;
    gActors[0xC1].graphicIndex = GINDEX_SOLIDSQARE;
    gActors[0xC1].posZ.whole = 0xE0;
    gActors[0xC1].var_154 = 4;
    gActors[0xC1].scaleX = 20.0f;
    gActors[0xC1].scaleY = 20.0f;
}

void func_8019D970_6C8640(u16 arg0) {
    gActors[0xC1].state = 1;
    gActors[0xC1].graphicFlags = (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 |
         ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE);
    gActors[0xC1].flags = (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[0xC1].palette_18C = D_800D8588;
    gActors[0xC1].colorA = 0xFF;
    gActors[0xC1].var_150 = 0;
    gActors[0xC1].var_154 = arg0;
    Actor_SetColorRgb(0xC1, 0);
}

void func_8019D9D8_6C86A8(u16 arg0) {
    gActors[0xC1].state = 2;
    gActors[0xC1].graphicFlags = (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 |
         ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE);
    gActors[0xC1].flags = (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[0xC1].palette_18C = D_800D8588;
    gActors[0xC1].colorA = 0;
    gActors[0xC1].var_150 = 0;
    gActors[0xC1].var_154 = arg0;
    Actor_SetColorRgb(0xC1, 0);
}

void func_8019DA3C_6C870C(u16 arg0, u16 arg1) {
    gActors[0xC1].state = 3;
    gActors[0xC1].graphicFlags = (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 |
         ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE);
    gActors[0xC1].flags = (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[0xC1].palette_18C = D_800D8588;
    gActors[0xC1].colorA = 0;
    gActors[0xC1].var_150 = 0;
    gActors[0xC1].var_154 = arg1;
    gActors[0xC1].var_158 = arg0;
    Actor_SetColorRgb(0xC1, 0);
}

s32 func_8019DAAC_6C877C(u16 arg0) {
    if (gActors[0xC1].colorA == 0xFF) {
        if (arg0 < gActors[0xC1].var_150) {
            return TRUE;
        }
    }

    return FALSE;
}

void func_8019DAF0_6C87C0(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    gLookatAtX = (gActors[arg0].posX.whole + gActors[arg1].posX.whole) / 2;
    gLookatAtY = (gActors[arg2].posY.whole + gActors[arg3].posY.whole) / 2;
    gLookatEyeX = gLookatAtX;
    gLookatEyeY = gLookatAtY + 4.0f;
}

void func_8019DBEC_6C88BC(u16 actor_index) {
    ACTOR_INIT(actor_index,0x1D);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].graphicIndex = 0xE6;
    gActors[actor_index].colorA = 0x40;
    gActors[actor_index].scaleX = 12.0f;
    gActors[actor_index].scaleY = 12.0f;
}

void func_8019DC88_6C8958(void) {
    gActors[0x7A].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x7B].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x7A].flags |= ACTOR_FLAG_DRAW;
    gActors[0x7B].flags |= ACTOR_FLAG_DRAW;
}


void func_8019DCB8_6C8988(void) {
    gActors[0x7A].graphicFlags = 0;
    gActors[0x7B].graphicFlags = 0;
    gActors[0x7A].flags &= ~ACTOR_FLAG_DRAW;
    gActors[0x7B].flags &= ~ACTOR_FLAG_DRAW;
}


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_8019DCE8_6C89B8.s")

void func_8019DF44_6C8C14(u16 actor_index) {
    ACTOR_INIT(actor_index,0x1D);
    gActors[actor_index].graphicFlags = (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ);
    gActors[actor_index].flags = (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
}

void func_8019DFB0_6C8C80(s32 arg0) {
    func_8019DF44_6C8C14(0x76);
    gActors[0x76].graphicIndex = 0x200A;
    func_8019DF44_6C8C14(0x77);
    gActors[0x77].graphicIndex = 0x200C;
    func_8019DF44_6C8C14(0x78);
    gActors[0x78].graphicIndex = 0x2014;
}

void func_8019E004_6C8CD4(s32 arg0) {
    func_8019DF44_6C8C14(0x79);
    gActors[0x79].graphicIndex = 0x203A;
}


void func_8019E030_6C8D00(s32 arg0) {
    func_8019DF44_6C8C14(0x74);
    gActors[0x74].graphicFlags = ACTOR_GFLAG_UNK8;
    gActors[0x74].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x74].graphicList = D_801A6820_6D14F0;
    gActors[0x74].graphicTimer = 1;
}

void func_8019E07C_6C8D4C(s32 arg0) {
    func_8019DF44_6C8C14(0x75);
    gActors[0x75].graphicFlags |= ACTOR_GFLAG_UNK15;
    gActors[0x75].flags &= ~ACTOR_FLAG_DRAW;
    gActors[0x75].graphicIndex = 0x101E;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_8019E0C8_6C8D98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_8019E12C_6C8DFC.s")

void func_8019E424_6C90F4(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0x100:
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[actor_index].colorR = 0x7F;
            gActors[actor_index].colorA = 0xF0;
            break;

        case 0x101:
            gActors[actor_index].colorR += 3;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].posX.raw = 0;
            gActors[actor_index].posY.raw = gActors[0x30].posY.raw - FIXED_UNIT(4);
            gActors[actor_index].posZ.raw = gActors[0x30].posZ.raw - FIXED_UNIT(32);
            break;

        case 0x3000:
            gActors[actor_index].state++;
            break;

        case 0x3001:
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].posX.raw = 0;
            gActors[actor_index].posY.raw = gActors[0x30].posY.raw - FIXED_UNIT(4);
            gActors[actor_index].posZ.raw = gActors[0x43].posZ.raw + FIXED_UNIT(32);
            break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_8019E564_6C9234(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0x200:
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].posX.whole = 8;
            gActors[actor_index].posY.whole = 0x16;
            gActors[actor_index].posZ.whole = 2;
            gActors[actor_index].unk_174 = 0x3C;

        case 0x201:
            gActors[actor_index].unk_174--;
            if (gActors[actor_index].unk_174 < 0) {
                gActors[actor_index].state++;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3.0);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                func_8005CA34(5, 8);
                Sound_PlaySfxAtVol(0x59, 0xC8);
            }
            break;

        case 0x202:
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x1000000, 0x40000);
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x1000);
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0xA000, 0xF00);
            break;

        case 0x3000:
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_16C = 0x1000000;
            gActors[actor_index].posX.whole = -0x3A;
            gActors[actor_index].posY.whole = -0x6A;
            gActors[actor_index].posZ.whole = 2;

        case 0x3001:
            gActors[actor_index].posY.raw += FIXED_UNIT(0.1875);
            break;

        case 0x3002:
            gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, 0x60000, 0x12000);
            if (gActors[actor_index].posY.whole == 6) {
                gActors[actor_index].state++;
                gActors[actor_index].colorR = 0x7F;
                gActors[0x30].colorR = 0x7F;
                gActors[0x43].colorR = 0x7F;
                gActors[0x54].colorR = 0x7F;
                gActors[0x75].colorR = 0x7F;
                gActors[0x76].colorR = 0x7F;
                func_8005CA34(8, 5);
                Sound_PlaySfx(0x59);
            }
            break;

        case 0x3003:
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x1200000, 0xC000);
            break;
    }

    gActors[actor_index].rotateZ = (gActors[actor_index].unk_16C / 0x10000) * D_801A6E78_6D1B48;
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_8019E7E8_6C94B8(u16 actor_index) {
    gActors[0x77].posZ.raw = gActors[actor_index].posZ.raw + 1;
    func_80033204(0x77, 0x76, 0, (f32)gActors[actor_index].unk_174, 0);
    gActors[0x78].posZ.raw = gActors[actor_index].posZ.raw;
    func_80033204(0x78, 0x77, 0, 24.0f, 0);
    Actor_SetColorRgb(0x77, gActors[0x76].colorR);
    Actor_SetColorRgb(0x78, gActors[0x76].colorR);
}

void func_8019E8B0_6C9580(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0x200:
            gActors[actor_index].state++;
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].posX.whole = -4;
            gActors[actor_index].posY.whole = 0;
            gActors[actor_index].posZ.whole = 3;
            gActors[actor_index].unk_170 = 0x3C;
            gActors[actor_index].unk_174 = 0x1C;

        case 0x201:
            func_8019E7E8_6C94B8(actor_index);
            gActors[actor_index].unk_170--;
            if (gActors[actor_index].unk_170 < 0x1E) {
                gActors[actor_index].unk_174 = Math_ApproachS32(gActors[actor_index].unk_174, 6, 1);
                gActors[actor_index].posX.whole++;
            }
            if (gActors[actor_index].unk_170 < 0) {
                gActors[actor_index].state++;
                gActors[actor_index].unk_16C = 0x3FF0000;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2.3125);
            }
            break;

        case 0x202:
            func_8019E7E8_6C94B8(actor_index);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x3000000, 0x40000);
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x1000);
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x9000, 0xF00);
            break;

        case 0x3000:
            gActors[actor_index].state++;
            gActors[actor_index].unk_16C = 0x3000000;
            gActors[actor_index].posX.whole = 0x3A;
            gActors[actor_index].posY.whole = -0x6A;
            gActors[actor_index].posZ.whole = 2;
            gActors[actor_index].unk_174 = 6;

        case 0x3001:
            gActors[actor_index].posY.raw += FIXED_UNIT(0.1875);
            func_8019E7E8_6C94B8(actor_index);
            break;

        case 0x3002:
            gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, 0x60000, 0x12000);
            if (gActors[actor_index].posY.whole == 6) {
                gActors[actor_index].state++;
                gActors[actor_index].colorR = 0x7F;
                gActors[0x30].colorR = 0x7F;
                gActors[0x43].colorR = 0x7F;
                gActors[0x54].colorR = 0x7F;
                gActors[0x75].colorR = 0x7F;
                func_8005CA34(8, 5);
                Sound_PlaySfx(0x59);
            }
            func_8019E7E8_6C94B8(actor_index);
            break;

        case 0x3003:
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x2E00000, 0xC000);
            func_8019E7E8_6C94B8(actor_index);
            break;
    }

    gActors[actor_index].rotateZ = (gActors[actor_index].unk_16C / 0x10000) * D_801A6E80_6D1B50;
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_8019EB80_6C9850(u16 actor_index) {
    ACTOR_INIT(actor_index,0x1D);
    gActors[actor_index].graphicFlags = (ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8);
    gActors[actor_index].flags = (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[actor_index].posZ.whole = 0xA0;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].colorA = 0;
}

void func_8019EC00_6C98D0(u16 actor_index) {
    func_8019EB80_6C9850(actor_index);
    gActors[actor_index].posY.whole = -0x30;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
    gActors[actor_index].graphicList = D_801A68C4_6D1594;
}

void func_8019EC70_6C9940(u16 actor_index) {
    func_8019EB80_6C9850(actor_index);
    gActors[actor_index].posX.whole = -0x60;\
    gActors[actor_index].posY.whole = -0x30;
    gActors[actor_index].velocityX.raw = FIXED_UNIT(4.0);
    gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
    gActors[actor_index].graphicList = D_801A68D4_6D15A4;
}

void func_8019ECEC_6C99BC(u16 actor_index) {
    func_8019EB80_6C9850(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    gActors[actor_index].posX.whole = 0x60;\
    gActors[actor_index].posY.whole = -0x30;
    gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.0);
    gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
    gActors[actor_index].graphicList = D_801A68CC_6D159C;
}

void func_8019ED74_6C9A44(u16 arg0) {
    if (arg0 == 0) {
        gActors[0x43].velocityX.raw = Math_ApproachS32(gActors[0x43].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[0x30].colorA = Math_ApproachS32(gActors[0x30].colorA, 0xC0, 8);
        gActors[0x43].colorA = gActors[0x30].colorA;
        gActors[0x30].velocityY.raw = Math_ApproachS32(gActors[0x30].velocityY.raw, 0, FIXED_UNIT(0.25));
        gActors[0x43].velocityY.raw = Math_ApproachS32(gActors[0x43].velocityY.raw, 0, FIXED_UNIT(0.25));
    }
    else {
        gActors[0x30].velocityY.raw -= FIXED_UNIT(0.21875);
        gActors[0x30].posZ.whole += 5;
        gActors[0x43].velocityY.raw -= FIXED_UNIT(0.375);
        gActors[0x43].velocityX.raw -= FIXED_UNIT(0.5);
        gActors[0x43].colorA = Math_ApproachS32(gActors[0x43].colorA, 0, 8);
    }

    gActors[0x54].colorA = gActors[0x43].colorA;
    gActors[0x54].velocityX.raw = -gActors[0x43].velocityX.raw;
    gActors[0x54].velocityY.raw = gActors[0x43].velocityY.raw;
}

void func_8019EE70_6C9B40(void) {
    gActors[0x30].flags = 0;
    gActors[0x43].flags = 0;
    gActors[0x54].flags = 0;
}


void func_8019EE8C_6C9B5C(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = SpawnParticle_Image_90C0_16(gActors[actor_index].graphicIndex, gActors[actor_index].posX.whole,
                                    gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags |= 0x8110;
        gActors[new_actor_index].colorA = gActors[actor_index].colorA;
        gActors[new_actor_index].var_154 = -1;
        gActors[new_actor_index].pfn_17C = func_80030A24;
        gActors[new_actor_index].unk_104 = -1;
        gActors[new_actor_index].velocityZ.raw = -0x1800;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_8019EF50_6C9C20.s")

void func_801A0228_6CAEF8(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
    func_8008105C(actor_index + 0x8000, D_801A52A0_6CFF70, D_801A5234_6CFF04);
    gActors[actor_index].unk_178 = (s32)D_801A5DE0_6D0AB0;
    func_80081478(actor_index, D_801A52A0_6CFF70, 0);
    func_80081790(actor_index, D_801A5EAC_6D0B7C);
    func_800819A8(actor_index, D_801A52A0_6CFF70);
    gActors[actor_index].colorA = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801A02F4_6CAFC4.s")

void func_801A05A0_6CB270(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
    func_8008105C(actor_index + 0x8000, D_801A55AC_6D027C, D_801A554C_6D021C);
    gActors[actor_index].unk_178 = (s32)D_801A5E68_6D0B38;
    func_80081478(actor_index, D_801A55AC_6D027C, 0);
    func_80081790(actor_index, D_801A5F38_6D0C08);
    func_800819A8(actor_index, D_801A55AC_6D027C);
    gActors[actor_index].colorA = 0xFF;
    ACTOR_GFX_INIT(actor_index + 0xA, D_801A68EC_6D15BC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801A06B4_6CB384.s")

void func_801A0BA8_6CB878(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
    func_8008105C(actor_index + 0x8000, D_801A5414_6D00E4, D_801A5358_6D0028);
    gActors[actor_index].unk_178 = (s32)D_801A5E24_6D0AF4;
    func_80081478(actor_index, D_801A5414_6D00E4, 0);
    func_80081790(actor_index, D_801A5EF4_6D0BC4);
    func_800819A8(actor_index, D_801A5414_6D00E4);
    gActors[actor_index].colorA = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6BCD80/6BCDD0/func_801A0C74_6CB944.s")
