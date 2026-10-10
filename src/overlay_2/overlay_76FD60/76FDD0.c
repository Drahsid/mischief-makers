#define func_80012AB4_ARGS s32 arg0, s32 arg1
#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "74A50.h"
#include "66250.h"
#include "8F080.h"
#include "80D90.h"
#include "input.h"
#include "cosine.h"

extern s16 D_800E151C[];
extern s16 D_800E1700[];
extern s16 D_800E17F8[];
extern s16 D_800E223C[];
extern s16 D_800E2274[];
extern s16 D_800E57F0[];
extern s16 D_800E5808[];
extern s16 D_800E581C[];
extern s16 D_800E5830[];
extern s16 D_800E5840[];
extern s16 D_800E5864[];

u16 D_801AB8D0_774DA0;
s16 D_801AB8D2_774DA2;
u16 D_801AB8D4_774DA4;
s16 D_801AB8D6_774DA6;

u16 D_801AB050_774520[] = {
    0x2000, 0x2002, 0x2004, 0x0000,
};

u16 D_801AB058_774528[] = {
//  graphic posX    posY    posZ    flags
    0x2000, 0x01C0, 0x0144, 0x0040, 0x0001,
    0x2004, 0x0240, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0280, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x02C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0320, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0340, 0x0140, 0x0080, 0x0080,
    0x2004, 0x0440, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0480, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x04C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0520, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0640, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0680, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x06C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0720, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0740, 0x0140, 0x0080, 0x0080,
    0x2004, 0x0780, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x07C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0920, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0940, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0A80, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x0AC0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0B20, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0B40, 0x0140, 0x0080, 0x0080,
    0x2004, 0x0B80, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x0BC0, 0x0148, 0x0080, 0x0080,
    0x2000, 0x0BED, 0x0140, 0x0040, 0x0001,
    0x690F, 0x0C0E, 0x0130, 0x0041, 0x0001,
    0x2004, 0x0C20, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0C80, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x0CC0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0D20, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0D40, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0D80, 0x0150, 0x00A0, 0x0080,
    0x2004, 0x0DC0, 0x01A0, 0x00C0, 0x0080,
    0x2004, 0x0E00, 0x01E0, 0x00A0, 0x0080,
    0x2004, 0x0E40, 0x0220, 0x00B0, 0x0080,
    0x2004, 0x0E80, 0x0260, 0x00B0, 0x0080,
    0x2004, 0x0EC0, 0x02A0, 0x00A0, 0x0080,
    0x2002, 0x0EC1, 0x02D8, 0x0040, 0x0001,
    0x2004, 0x0F00, 0x0300, 0x00E0, 0x0080,
    0x2004, 0x0F40, 0x0320, 0x00B0, 0x0080,
    0x2004, 0x0F80, 0x0360, 0x00B0, 0x0080,
    0x2004, 0x0FC0, 0x03C0, 0x00E0, 0x0080,
    0xFFFF
};

u16 D_801AB208_7746D8[] = {
//  graphic posX    posY    posZ    flags
    0x2004, 0x0240, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0280, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x02C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0320, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0340, 0x0140, 0x0080, 0x0080,
    0x2004, 0x0640, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0680, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x06C0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0920, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0940, 0x0150, 0x0080, 0x0080,
    0x2004, 0x0A80, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x0AC0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0B20, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0C20, 0x0138, 0x00A0, 0x0080,
    0x2004, 0x0C80, 0x0130, 0x00A0, 0x0080,
    0x2004, 0x0CC0, 0x0148, 0x0080, 0x0080,
    0x2004, 0x0D20, 0x0138, 0x00A0, 0x0080,
    0xFFFF
};

u16 D_801AB2B4_774784[] = {
//  graphic posX    posY    posZ    flags
    0x2004, 0x0080, 0x0158, 0x00A0, 0x0080,
    0x2004, 0x00C0, 0x0148, 0x00C0, 0x0080,
    0x2004, 0x0100, 0x0150, 0x00A0, 0x0080,
    0x2004, 0x0180, 0x0188, 0x00C0, 0x0080,
    0x2004, 0x01C0, 0x01D8, 0x00E0, 0x0080,
    0x2004, 0x0200, 0x0210, 0x00C0, 0x0080,
    0x2004, 0x0280, 0x0250, 0x00A0, 0x0080,
    0x2004, 0x02C0, 0x0248, 0x00C0, 0x0080,
    0x2004, 0x0300, 0x0258, 0x00A0, 0x0080,
    0x2004, 0x0780, 0x0458, 0x00A0, 0x0080,
    0x2004, 0x07C0, 0x0448, 0x00C0, 0x0080,
    0x2004, 0x0800, 0x0450, 0x00A0, 0x0080,
    0x2004, 0x0890, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x08D0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0910, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0990, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x09D0, 0x0430, 0x00C0, 0x0080,
    0x2004, 0x0A10, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0A90, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0AD0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0B10, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0B60, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0BA0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0BE0, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0C90, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0CD0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0D10, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0D90, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0DD0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0E10, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0E90, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0ED0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0F10, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x0F60, 0x0448, 0x00A0, 0x0080,
    0x2004, 0x0FA0, 0x0438, 0x00C0, 0x0080,
    0x2004, 0x0FE0, 0x0440, 0x00A0, 0x0080,
    0x2004, 0x1030, 0x0448, 0x00C0, 0x0080,
    0x2004, 0x1070, 0x0438, 0x00E0, 0x0080,
    0x2004, 0x10B0, 0x0440, 0x00C0, 0x0080,
    0x0000
};

u16 D_801AB43C_77490C[] = {
//  graphic posX    posY    posZ    flags
    0x2004, 0x0080, 0x0250, 0x00A0, 0x0080,
    0x2004, 0x00C0, 0x0248, 0x00C0, 0x0080,
    0x2004, 0x0100, 0x0258, 0x00A0, 0x0080,
    0x2004, 0x0180, 0x0250, 0x00A0, 0x0080,
    0x2004, 0x01C0, 0x0248, 0x00C0, 0x0080,
    0x2004, 0x0200, 0x0258, 0x00A0, 0x0080,
    0x2004, 0x0280, 0x0250, 0x00A0, 0x0080,
    0x2004, 0x02C0, 0x0248, 0x00C0, 0x0080,
    0x2004, 0x0300, 0x0258, 0x00A0, 0x0080,
    0x2004, 0x0380, 0x0288, 0x00C0, 0x0080,
    0x2004, 0x03C0, 0x02D8, 0x00E0, 0x0080,
    0x2004, 0x0400, 0x0310, 0x00C0, 0x0080,
    0x2004, 0x0480, 0x0350, 0x00A0, 0x0080,
    0x2004, 0x04C0, 0x0348, 0x00C0, 0x0080,
    0x2004, 0x0500, 0x0358, 0x00A0, 0x0080,
    0x2004, 0x0580, 0x0388, 0x00C0, 0x0080,
    0x2004, 0x05C0, 0x03D8, 0x00E0, 0x0080,
    0x2004, 0x0600, 0x0410, 0x00C0, 0x0080,
    0x2004, 0x0680, 0x0450, 0x00A0, 0x0080,
    0x2004, 0x06C0, 0x0448, 0x00C0, 0x0080,
    0x2004, 0x0700, 0x0458, 0x00A0, 0x0080,
    0x2004, 0x0780, 0x0450, 0x00A0, 0x0080,
    0x2004, 0x07C0, 0x0448, 0x00C0, 0x0080,
    0x2004, 0x0800, 0x0458, 0x00A0, 0x0080,
    0x2004, 0x0880, 0x0450, 0x00A0, 0x0080,
    0x2004, 0x08C0, 0x0448, 0x00C0, 0x0080,
    0x2004, 0x0900, 0x0458, 0x00A0, 0x0080,
    0x2004, 0x0980, 0x0488, 0x00A0, 0x0080,
    0x2004, 0x09C0, 0x04D8, 0x00C0, 0x0080,
    0x2004, 0x0A00, 0x0510, 0x00A0, 0x0080,
    0x2004, 0x0A80, 0x0550, 0x00A0, 0x0080,
    0x2004, 0x0AC0, 0x0548, 0x00C0, 0x0080,
    0x2004, 0x0B00, 0x0558, 0x00A0, 0x0080,
    0x2004, 0x0B80, 0x0550, 0x00A0, 0x0080,
    0x2004, 0x0BC0, 0x0548, 0x00C0, 0x0080,
    0x2004, 0x0C00, 0x0558, 0x00A0, 0x0080,
    0x2004, 0x0C80, 0x0550, 0x00A0, 0x0080,
    0x2004, 0x0CC0, 0x0548, 0x00C0, 0x0080,
    0x2004, 0x0D00, 0x0558, 0x00A0, 0x0080,
    0x2004, 0x0D80, 0x0550, 0x00A0, 0x0080,
    0x2004, 0x0DC0, 0x0548, 0x00C0, 0x0080,
    0x2004, 0x0E00, 0x0558, 0x00A0, 0x0080,
    0x2004, 0x0E80, 0x0550, 0x00A0, 0x0080,
    0x2004, 0x0EC0, 0x0548, 0x00C0, 0x0080,
    0x2004, 0x0F00, 0x0558, 0x00A0, 0x0080,
    0x0000
};

// points to above
u16* D_801AB600_774AD0[] = {
    D_801AB058_774528,
    D_801AB208_7746D8,
    D_801AB2B4_774784,
    D_801AB43C_77490C,
};

u16 D_801AB610_774AE0[] = {
    0x1808, 0x180A, 0x180C, 0x180E, 0x1810, 0x1812,
    0x02D0, 0x1820, 0x3812, 0x0000,
};

u16 D_801AB624_774AF4[] = {
    0x00C4, 0x00C4, 0x0084, 0x0084, 0x0044, 0x0044,
    0x0000, 0x0000, 0x0000, 0x0000,
};

f32 D_801AB638_774B08[] = {
    1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f,
    40.0f, 2.0f, 2.5f,
};

f32 D_801AB65C_774B2C[] = {
    1.5f, 1.5f, 1.5f, 1.5f, 1.5f, 1.5f,
    17.0f, 1.8f, 2.5f,
};

s16 D_801AB680_774B50[] = {
    -32, -16, 0, 16, 32, 0,
};

u16 D_801AB68C_774B5C[] = {
    0x183E, 0x000E,
    0x1840, 0x0006,
    0x1842, 0x000E,
    0x1840, 0x0006,
    0xFFF8, 0x0000,
};

u16 D_801AB6A0_774B70[] = {
    0x1844, 0x0003,
    0x1846, 0x0003,
    0x1848, 0x0003,
    0x184A, 0x0004,
    0x0000, 0x0000,
    0x184C, 0x0004,
    0x184E, 0x0008,
    0x1850, 0x0004,
    0x1852, 0x0004,
    0x1854, 0x0003,
    0x0000, 0x0000,
    0x1858, 0x0008,
    0x185A, 0x0004,
    0x185C, 0x0002,
    0x185E, 0x0004,
    0x185A, 0x0004,
    0xFFF6, 0x0000,
    0x0000, 0x0000,
    0x0000, 0x0000,
    0x0000, 0x0000,
};

void func_801AA154_773624(u16 actor_index);
void func_801AA034_773504(u16 actor_index);
void func_801A9B80_773050(u16 actor_index);
s32 func_801A9974_772E44(u16 actor_index, u16 other_actor_index);
s32 func_801A9900_772DD0(u16 actor_index, u16 other_actor_index);
s32 func_801A9788_772C58(u16 actor_index);
void func_801A9734_772C04(u16 actor_index);
void func_801A951C_7729EC(u16 actor_index);
void func_801A9064_772534(u16 actor_index);
void func_8003E52C(u16 arg0, s16 arg1, s16 arg2, f32 arg3);
void func_801A85E0_771AB0(u16 actor_index, f32 scale);
void func_801A8FE4_7724B4(u16 actor_index, u16 new_actor_index);
void func_801AAD20_7741F0(u16 actor_index);
u16 func_801AACFC_7741CC(void);
void func_801A7D54_771224(u16 actor_index, u16 new_actor_index);
void func_801A96DC_772BAC(u16 actor_index);
s32 func_801A97D8_772CA8(u16 actor_index, u16 other_actor_index);
void func_801A73D4_7708A4(u16 actor_index);
void func_801AA2B0_773780(u16 actor_index);
void func_801A9CC8_773198(u16 actor_index, s16 left, s16 right, s16 top, s16 bottom);
void func_801A9630_772B00(u16 actor_index);
void func_801A9E6C_77333C(u16 actor_index);
s32 func_801A97E8_772CB8(u16 actor_index);

void func_801A6900_76FDD0(u16 actor_index) {
    s16* actor_data;
    s16 left;
    s16 right;
    s16 top;
    s16 bottom;
    u16 new_actor_index;

    actor_data = (s16*)D_801AB600_774AD0[gActors[actor_index].var_0D8];
    left = gScreenPosCurrentX.whole - 0xB0;
    right = gScreenPosCurrentX.whole + 0xB0;
    top = gScreenPosCurrentY.whole + 0x90;
    bottom = gScreenPosCurrentY.whole - 0x90;

    for (; actor_data[0] != 0xFFFF; actor_data += 5) {
        if (actor_data[1] > right) {
            break;
        }

        if ((left >= actor_data[1]) || (actor_data[2] >= top) || (bottom >= actor_data[2])) {
            continue;
        }

        new_actor_index = Actor_RangeFindInactive(0xB0, 0xC0);
        if (new_actor_index == 0) {
            continue;
        }

        ACTOR_INIT(new_actor_index, ACTORTYPE_GRAPHIC_52);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        if (((u16*)actor_data)[4] & 1) {
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[new_actor_index].unk_188 = 0;
        }

        gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].graphicIndex = actor_data[0];
        gActors[new_actor_index].posX.whole = actor_data[1] - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posY.whole = actor_data[2] - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = actor_data[3];
        gActors[new_actor_index].unk_148 = 1.0f;
        if ((((u16*)actor_data)[4] & 0x80) == 0) {
            continue;
        }

        if ((gActors[new_actor_index].posX.whole > 0x98) || (gActors[new_actor_index].posX.whole < -0x98)) {
            gActors[new_actor_index].colorA = 0xFF;
            continue;
        }

        if (gActors[new_actor_index].posX.whole > 0) {
            gActors[new_actor_index].colorA = gActors[new_actor_index].posX.whole + 0x68;
            continue;
        }

        gActors[new_actor_index].colorA = 0x68 - gActors[new_actor_index].posX.whole;
    }
}

void func_801A6B24_76FFF4(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        if (gActors[actor_index].posX.whole < -0x400) {
            gActors[actor_index].posX.whole += 0x800;
        }

        if (gActors[actor_index].posX.whole > 0x400) {
            gActors[actor_index].posX.whole -= 0x800;
        }

        if (gActors[actor_index].var_0D8 < 2) {
            gActors[actor_index].posX.raw = gActors[actor_index].posX.raw - D_800BE73C / 4 - FIXED_UNIT(0.5);
        }
        else if (gActors[actor_index].var_0D8 < 4) {
            gActors[actor_index].posX.raw = gActors[actor_index].posX.raw - D_800BE73C / 4 - FIXED_UNIT(0.25);
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = gActors[actor_index].var_110 - 256.0f;
        gActors[actor_index].posY.whole += D_801AB624_774AF4[gActors[actor_index].var_0D8];
        gActors[actor_index].graphicIndex = D_801AB610_774AE0[gActors[actor_index].var_0D8];
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].posZ.whole = -0x101;
        gActors[actor_index].unk_188 = -0x140;
        gActors[actor_index].scaleX = D_801AB638_774B08[gActors[actor_index].var_0D8];
        gActors[actor_index].scaleY = D_801AB65C_774B2C[gActors[actor_index].var_0D8];
    }

    if (gActors[actor_index].posX.whole - 0x100 > 0x180) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        return;
    }

    if (gActors[actor_index].posX.whole + 0x100 < -0x180) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        return;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
}

void func_801A6D14_7701E4(u16 actor_index) {
    s16 position_y;

    gActors[actor_index].colorA -= 8;
    if (gActors[actor_index].colorA == 0) {
        gActors[actor_index].flags = 0;
        return;
    }

    if (gActors[actor_index].unk_180 != 0) {
        gActors[actor_index].var_158 -= (f32)((f32)gActors[actor_index].unk_150.whole * 0.05 * (f32)D_800BE73C / 20);
        gActors[actor_index].var_15C -= (f32)((f32)((FixedCoord*)&gActors[actor_index].var_154)->whole * 0.05 * (f32)D_800BE73C / 16);
        gActors[actor_index].var_150 += gActors[actor_index].velocityY.raw;
        gActors[actor_index].var_154 += gActors[actor_index].velocityY.raw;

        if (gActiveFrames & 1) {
            gActors[actor_index].posX.raw = gActors[actor_index].var_158;
            gActors[actor_index].posY.whole = gActors[actor_index].unk_150.whole - (gScreenPosCurrentY.whole - 0x1A0) / 16;
            return;
        }

        gActors[actor_index].posX.raw = gActors[actor_index].var_15C;
        gActors[actor_index].posY.whole = ((FixedCoord*)&gActors[actor_index].var_154)->whole - (gScreenPosCurrentY.whole - 0x1A0) / 16;
        return;
    }

    position_y = gActors[actor_index].unk_150.whole;
    gActors[actor_index].posX.raw -= (f32)((f32)position_y * 0.05 * (f32)D_800BE73C / 12);
    gActors[actor_index].posY.whole = position_y - (gScreenPosCurrentY.whole - 0x1A0) / 16;
    gActors[actor_index].var_150 += gActors[actor_index].velocityY.raw;
    if (!(actor_index & 7)) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].rotateZ += 90.0f;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].scaleY += 0.02;
    }
}

void func_801A7004_7704D4(u16 actor_index) {
    u16 new_actor_index;

    D_800BE73C = FIXED_UNIT(1);
    new_actor_index = Actor_RangeFindInactive(0xA8, 0xB8);
    if (new_actor_index == 0) {
        return;
    }

    ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_W3_20);
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[new_actor_index].graphicIndex = GINDEX_STAREFFECT;
    gActors[new_actor_index].posX.whole = (f32)(0x80 - Rand()) * 1.25;
    gActors[new_actor_index].var_150 = TO_FIXED(Rand() & 0x7F);
    if (new_actor_index & 1) {
        gActors[new_actor_index].unk_180 = 1;
        gActors[new_actor_index].var_154 = TO_FIXED(Rand() & 0x7F);
        gActors[new_actor_index].var_158 = gActors[new_actor_index].posX.raw;
        gActors[new_actor_index].var_15C = TO_FIXED((s32)((f32)(0x80 - Rand()) * 1.25));
    }

    gActors[new_actor_index].var_110 = Rand() & 0x1F;
    gActors[new_actor_index].posZ.whole = -64.0f - gActors[new_actor_index].var_110;
    gActors[new_actor_index].palette_18C = &D_800D84E8[(Rand() % 5) * 16];
    gActors[new_actor_index].colorA = 0;
    gActors[new_actor_index].colorR = Rand() & 0x7F;
    gActors[new_actor_index].colorG = Rand() & 0x7F;
    gActors[new_actor_index].colorB = Rand() & 0x7F;
    gActors[new_actor_index].velocityY.raw = (Rand() & 3) * FIXED_UNIT(-0.03125);
    gActors[new_actor_index].scaleX = 0.05f;
    gActors[new_actor_index].scaleY = 0.1f;
}

void func_801A7240_770710(u16 actor_index) {
    Hovercraft_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x20;
        break;

    case 0x21:
        if ((D_800E3584 & 0x30000) && func_80029B00(0x80, 0x80, -0x80) && ((gActiveFrames & 0xF) == 0)) {
            gActors[actor_index].var_150 |= 0x8000;
        }

        if (gActiveFrames & 0x100) {
            gActors[actor_index].unk_184 = gActors[actor_index].unk_174 - 0x50;
        }
        else {
            gActors[actor_index].unk_184 = gActors[actor_index].unk_174 + 0x50;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A735C_77082C(u16 actor_index) {
    Hovercraft_Update(actor_index);
}

void func_801A7384_770854(u16 actor_index) {
    Hovercraft_Update(actor_index);
}

void func_801A73AC_77087C(u16 actor_index) {
    Hovercraft_Update(actor_index);
}

void func_801A73D4_7708A4(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = func_8007A3CC(actor_index);
    if (new_actor_index == 0) {
        return;
    }

    ACTOR_INIT(new_actor_index, 0x2600);
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
    gActors[new_actor_index].posZ.whole = 0;
    gActors[new_actor_index].velocityX.raw = 0;
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(1.0);
}

void func_801A748C_77095C(u16 actor_index) {
    s32 unused;

    Rocketeer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x2F;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 0x10:
        if (func_80029B00(0x80, 0x20, -0xC0) != 0) {
            gActors[actor_index].unk_184 = gPlayerPosY.whole + 0x70;
        }
        else {
            gActors[actor_index].unk_184 = gActors[actor_index].unk_174;
        }

        if (gActors[actor_index].var_0D8 & 0xF) {
            break;
        }

        if (gActors[actor_index].unk_128 >= 0.0f) {
            if (func_80029B00(0x70, -0x60, -0xE0) != 0) {
                gActors[actor_index].state = 0x50;
                gActors[actor_index].var_154 = (s32)&func_8007A118;
            }
            break;
        }

        if (gActors[actor_index].unk_124 > 180.0f) {
            gActors[actor_index].unk_124 = 0.0f;
            gActors[actor_index].unk_128 = 0.0f;
            break;
        }

        gActors[actor_index].unk_180 = gActors[actor_index].unk_170 - (Rand() & 0x7F) + 0x40;
        break;
    case 0x30:
        if ((func_80029B74(0x70) == 0) || (gActors[actor_index].var_154 < 0x29)) {
            break;
        }

        gActors[actor_index].state = 0x70;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
        break;
    case 0x72:
        gActors[actor_index].state = 0xF;
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A7658_770B28(u16 actor_index) {
    Rocketeer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x4010;
        gActors[actor_index].var_154 = FIXED_UNIT(-2048);
        gActors[actor_index].var_158 = FIXED_UNIT(16);
        gActors[actor_index].var_150 &= ~0x10000000;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 0x4011:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].rotateZ = 0.0f - gActors[actor_index].velocityX.whole * 8.0f;
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-4), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].rotateZ = gActors[actor_index].velocityX.whole * 8.0f;
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(4), FIXED_UNIT(0.25));
        }

        if ((gActors[actor_index].var_154 > FIXED_UNIT(-1024)) && !(gActors[actor_index].var_150 & 0x10000000)) {
            gActors[actor_index].var_150 |= 0x10000000;
            Sound_PlaySfxAtActor2(SFX_00FE, actor_index);
        }

        if (gActors[actor_index].var_154 > 0) {
            gActors[actor_index].velocityY.raw += FIXED_UNIT(0.0625);
        }

        if ((gActors[actor_index].unk_128 == 0.0f) && (gActors[actor_index].var_154 > FIXED_UNIT(-32))) {
            func_801A73D4_7708A4(actor_index);
        }

        if (gActors[actor_index].var_154 <= FIXED_UNIT(336)) {
            break;
        }

        gActors[actor_index].var_154 = FIXED_UNIT(-2048);
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = 0x60;
        gActors[actor_index].var_150 &= ~0x10000000;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A788C_770D5C(u16 actor_index) {
    u16 collision_flags;

    Rocketeer_Update(actor_index);
    collision_flags = func_80029FB8(
        actor_index,
        gActors[actor_index].unk_170 - 0x80,
        gActors[actor_index].unk_170 + 0x80,
        gActors[actor_index].unk_174 + 0x80,
        gActors[actor_index].unk_174 - 0x80
    );

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x2F;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 0x10:
        switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if ((collision_flags & 0x8000) || (func_80029B00(0x60, 0x40, -0x40) == 0)) {
                break;
            }

            gActors[actor_index].state = 0x74;
            Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].var_158 = TO_FIXED(Math_Atan2(
                gPlayerActor.posX.raw - gActors[actor_index].posX.raw,
                gPlayerActor.posY.raw - gActors[actor_index].posY.raw
            ));
            break;
        case 1:
            gActors[actor_index].state = 0x74;
            Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].var_158 = TO_FIXED(Math_Atan2(
                gPlayerActor.posX.raw - gActors[actor_index].posX.raw,
                gPlayerActor.posY.raw - gActors[actor_index].posY.raw
            ));
            break;
        }
        break;
    case 0x30:
        switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if ((func_80029B74(0x70) == 0) || (gActors[actor_index].var_154 < 0x29)) {
                break;
            }

            gActors[actor_index].state = 0x70;
            Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1.625));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            break;
        case 1:
            if (gActors[actor_index].var_154 < 0x3D) {
                break;
            }

            gActors[actor_index].state = 0x70;
            Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1.625));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            break;
        }
        break;
    case 0x72:
        gActors[actor_index].state = 0xF;
        break;
    case 0x76:
        gActors[actor_index].state = 0x20;
        gActors[actor_index].unk_114 = 2.8f;
        break;
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A7B04_770FD4(u16 actor_index) {
    u16 collision_flags;

    Rocketeer_Update(actor_index);
    collision_flags = func_80029FB8(
        actor_index,
        gActors[actor_index].unk_170 - 0x80,
        gActors[actor_index].unk_170 + 0x80,
        gActors[actor_index].unk_174 + 0x80,
        gActors[actor_index].unk_174 - 0x80
    );

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x2F;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 0x10:
        if ((gActors[actor_index].var_0D8 & 0xF) || (collision_flags & 0x8000) || (func_80029B00(0x70, 0x60, -0x80) == 0)) {
            break;
        }

        gActors[actor_index].state = 0x24;
        gActors[actor_index].var_160 = FIXED_UNIT(4);
        break;
    case 0x30:
        if ((gActors[actor_index].var_0D8 & 0xF) || (func_80029B74(0x70) == 0) || (gActors[actor_index].var_154 < 0x29)) {
            break;
        }

        gActors[actor_index].state = 0x70;
        Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1));
        gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
        break;
    case 0x72:
        gActors[actor_index].state = 0xF;
        break;
    case 0x25:
        if (collision_flags & 0x8000) {
            gActors[actor_index].state = 0xF;
            gActors[actor_index].unk_180 = gActors[actor_index].unk_170;
            break;
        }

        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_180 = gActors[actor_index].unk_178 + 0x1000;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_180 = gActors[actor_index].unk_178 - 0x1000;
        }

        if ((gActiveFrames % 56) || (func_80029B00(0x70, -0x60, -0xE0) == 0)) {
            break;
        }

        gActors[actor_index].state = 0x54;
        gActors[actor_index].var_154 = (s32)&func_8007A090;
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A7D54_771224(u16 actor_index, u16 new_actor_index) {
    s32 angle;

    angle = Math_PlaneQuadrant(
        gActors[D_800E3580].posX.whole - gActors[actor_index].posX.whole,
        gActors[D_800E3580].posY.whole - gActors[actor_index].posY.whole
    );
    SpawnShuriken(new_actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, COS(angle) * FIXED_UNIT(2.875), SIN(angle) * FIXED_UNIT(2.875));
}

void func_801A7E58_771328(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        func_80067E50(actor_index, D_800E1700);
        if (func_800734C4(actor_index, 8) & 0x8000) {
            break;
        }

        if (gActors[actor_index].var_158 > 1000) {
            gActors[actor_index].var_158 = 1000;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
            break;
        }

        if (func_80029B00(0x30, 0x40, -0x40) != 0) {
            gActors[actor_index].state = 0x3B0;
            gActors[actor_index].unk_118 = 50.0f;
            gActors[actor_index].unk_11C = 0.0f;
            break;
        }

        switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if ((D_800E3584 & 0x10000) && (gActors[actor_index].var_158 > 30) && (func_80029B00(0xC8, 0x60, -0x60) != 0)) {
                gActors[actor_index].state = 0x3A0;
                gActors[actor_index].pfn_158 = func_801A7D54_771224;
            }
            break;
        case 1:
            if ((D_800E3584 & 0x10000) && (gActors[actor_index].var_158 > 40) &&
                (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (func_80029B00(0xC8, 0x60, -0x60) != 0)) {
                gActors[actor_index].state = 0x3A0;
                gActors[actor_index].pfn_158 = func_801A7D54_771224;
            }
            break;
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 1.2f;
        break;
    }
}

void func_801A8088_771558(u16 actor_index) {
    Clancer_Update(actor_index);
}

void func_801A80B0_771580(u16 actor_index) {
    Clancer_Update(actor_index);
}

void func_801A80D8_7715A8(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if ((func_80073558(actor_index, 8) & 0x8000) || (gActors[actor_index].var_0D8 & 0xF)) {
            break;
        }

        func_80067E50(actor_index, D_800E17F8);
        if (((actor_index & 3) * 10 + 0x8C) >= gActors[actor_index].var_158) {
            break;
        }

        gActors[actor_index].unk_16C ^= 1;
        if (gActors[actor_index].unk_16C != 0) {
            gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_190_s16[0] + 0xA0;
        }
        else {
            gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_190_s16[0];
        }
        break;

    case 0x91:
        func_80073558(actor_index, 8);
        break;
    }
}

void func_801A8204_7716D4(u16 actor_index) {
    Clancer_Update(actor_index);
    if (gActors[actor_index].unk_13C_f32 == 28.0f) {
        gActors[actor_index].state = 0x1E0;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if ((gActors[actor_index].var_0D8 & 0xF) == 0) {
            func_80067E50(actor_index, D_800E223C);
            if ((gActiveFrames % 10) != 0) {
                goto L801A82FC_7717CC; // is there a better way?
            }
            gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_190_s16[0] - Rand() + 0x80;
L801A82FC_7717CC:
            ;
        }

        if ((gActors[actor_index].var_158 > 30) && (func_80073558(actor_index, 0) & 0x8000) && (gActors[actor_index].state == 0x90)) {
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = FIXED_UNIT(5.0);
            gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * FIXED_UNIT(2.0);
        }
        break;
    }
}

void func_801A837C_77184C(u16 actor_index) {
}

void func_801A8384_771854(u16 actor_index) {
}

void func_801A838C_77185C(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].var_154 = FIXED_UNIT(416);
        gActors[actor_index].posZ.raw = FIXED_UNIT(416);
    }

    gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole + gActors->posX.whole;
    gActors[actor_index].unk_184_s16[1] = gScreenPosCurrentY.whole + gActors->posY.whole;
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x130;
        gActors[actor_index].unk_11C = FIXED_UNIT(7);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_120 = FIXED_UNIT(-3);
        }
        else {
            gActors[actor_index].unk_120 = FIXED_UNIT(3);
        }

        Sound_PlaySfxAtActor2(SFX_00A9, actor_index);
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        else {
            func_80067E50(actor_index, D_800E2274);
            if ((((gActors[actor_index].var_0D8 & 7) == 0) || ((gActors[actor_index].var_0D8 & 7) == 2)) &&
                !(func_800734C4(actor_index, 8) & 0x8000) && func_80029B00(0x50, 0x40, -0x40)) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 40.0f;
                gActors[actor_index].unk_11C = 1.0f;
            }
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    }

    if ((gActors[actor_index].state == 0xFFFF) || (gActors[actor_index].state == 0x20)) {
        return;
    }

    if (gActors[actor_index].var_154 > 0) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        gActors[actor_index].var_154 -= FIXED_UNIT(10);
        return;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
}

void func_801A85E0_771AB0(u16 actor_index, f32 scale) {
    s32 angle_index;
    u16 particle_index;

    if (gActiveFrames & 3) {
        return;
    }

    particle_index = SpawnParticle_List_90C0_16(
        D_800E151C,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 1
    );

    if (particle_index == 0) {
        return;
    }

    gActors[particle_index].graphicFlags = (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) + (ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8);
    gActors[particle_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[particle_index].scaleX = scale;
    gActors[particle_index].scaleY = scale;
    gActors[particle_index].var_160 = TO_FIXED(DEG_TO_INDEX(gActors[actor_index].rotateZ));
    gActors[particle_index].var_110 = 0.05f;
    gActors[particle_index].unk_118 = 0.05f;
    gActors[particle_index].unk_114 = -0.2f;
    Actor_SetColorRgb(particle_index, 0x4F);

    angle_index = DEG_TO_INDEX(gActors[actor_index].rotateZ);
    gActors[particle_index].unk_130 = actor_index;
    gActors[particle_index].unk_14C = gActors[actor_index].actorType;
    gActors[particle_index].unk_134 = (COS(angle_index) * -12.0f) * gActors[actor_index].scaleX;
    gActors[particle_index].var_158 = COS(angle_index) * FIXED_UNIT(-8.0);

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[particle_index].var_158 = -gActors[particle_index].var_158;
        gActors[particle_index].unk_134 *= -1.0f;
    }

    gActors[particle_index].unk_138 = (SIN(angle_index) * -12.0f) * gActors[actor_index].scaleX;
    gActors[particle_index].unk_13C_f32 = -1.0f;
    gActors[particle_index].var_15C = SIN(angle_index) * FIXED_UNIT(-8.0);
    gActors[particle_index].var_154 = -0x14;
    gActors[particle_index].pfn_17C = func_80030A24;
    gActors[particle_index].unk_104 = -0x30;
    gActors[particle_index].unk_148 = 3.0f;
}

void func_801A88C8_771D98(u16 actor_index) {
    u16 index;
    s32 angle_index;
    s32 position_x;
    s32 position_y;
    s32 previous_angle;

    if ((gActors[actor_index].state) && (gActors[actor_index].posX.whole + gScreenPosCurrentX.whole > 0x1A20)) {
        gActors[actor_index].flags = 0;
        Sound_StopSfx(SFX_0126);
        Sound_StopSfx(SFX_0127);
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x25C;
        gActors[actor_index].grabType = 6;
        gActors[actor_index].unk_0DF = 0x50;
        gActors[actor_index].scaleX = 5.5f;
        gActors[actor_index].scaleY = 2.0f;

        if (gActors[actor_index].var_0D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_120 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index].unk_124 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        Sound_PlaySfx(SFX_0126);
        break;
    case 1:
        func_801A85E0_771AB0(actor_index, 0.8f);
        break;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (func_800486F4() == 12) {
                gActors[actor_index].var_160 = FIXED_UNIT(-0.5);
            }

            if (func_800486F4() == 4) {
                gActors[actor_index].var_160 = FIXED_UNIT(-2);
            }
        }
        else {
            if (func_800486F4() == 4) {
                gActors[actor_index].var_160 = FIXED_UNIT(-0.5);
            }

            if (func_800486F4() == 12) {
                gActors[actor_index].var_160 = FIXED_UNIT(-2);
            }
        }
    }
    else {
        gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, FIXED_UNIT(-1), FIXED_UNIT(0.0625));
    }

    angle_index = FROM_FIXED(gActors[actor_index].unk_16C);
    gActors[actor_index].velocityX.raw = COS(angle_index) * gActors[actor_index].var_160;
    gActors[actor_index].velocityY.raw = SIN(angle_index) * gActors[actor_index].var_160;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        angle_index = -angle_index;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
    }

    gActors[actor_index].rotateZ = INDEX_TO_DEG(angle_index);

    for (index = 0; index < 5; index++) {
        position_x = TO_FIXED(COS(angle_index)) * D_801AB680_774B50[index];
        position_x /= FIXED_UNIT(1);
        position_y = TO_FIXED(SIN(angle_index)) * D_801AB680_774B50[index];
        position_y /= FIXED_UNIT(1);
        if ((func_80012AB4(gActors[actor_index].posX.whole + position_x, gActors[actor_index].posY.whole + position_y + 8) & 0xC0) || (gActors[actor_index].posY.whole + gScreenPosCurrentY.whole < 0x118)) {
            gActors[actor_index].flags = 0;
            Sound_StopSfx(SFX_0126);
            Sound_StopSfx(SFX_0127);
            Sound_PlaySfx(SFX_BOOM_0041);
            func_8003F138(1.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            return;
        }
    }

    position_x = gPlayerActor.posX.whole - gActors[actor_index].posX.whole;
    position_y = gPlayerActor.posY.whole - gActors[actor_index].posY.whole;
    if ((position_x < 62) && (position_x >= -61) && (position_y < 62) && (position_y >= -61)) {
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) || ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) && !(gActors[actor_index].actorHitIndex & 0xFF) && (gPlayerData.marina_Flags_098 & ACTOR_FLAG3_UNK5))) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                previous_angle = gActors[actor_index].unk_16C;
                if (position_x < 0) {
                    gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(960) - (-position_x * FIXED_UNIT(0.5)), gActors[actor_index].unk_16C, -position_x * FIXED_UNIT(0.125));
                    if ((previous_angle < FIXED_UNIT(512)) && (gActors[actor_index].unk_16C > FIXED_UNIT(512))) {
                        Sound_PlaySfx(SFX_0126);
                        Sound_StopSfx(SFX_0127);
                    }
                }
                else {
                    gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(64) + position_x * FIXED_UNIT(0.5), gActors[actor_index].unk_16C, position_x * FIXED_UNIT(0.125));
                    if ((previous_angle > FIXED_UNIT(512)) && (gActors[actor_index].unk_16C < FIXED_UNIT(512))) {
                        Sound_PlaySfx(SFX_0127);
                        Sound_StopSfx(SFX_0126);
                    }
                }
            }
            else {
                if (position_x < 0) {
                    gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(64) + (-position_x * FIXED_UNIT(0.5)), gActors[actor_index].unk_16C, -position_x * FIXED_UNIT(0.125));
                }
                else {
                    gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(960) - position_x * FIXED_UNIT(0.5), gActors[actor_index].unk_16C, position_x * FIXED_UNIT(0.125));
                }
            }
        }

        gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB)) {
            gActors[actor_index].unk_164 = gPlayerActor.posX.whole;
            gActors[actor_index].hitboxBX0 = gActors[actor_index].unk_164 - gActors[actor_index].posX.whole - 8;
            gActors[actor_index].hitboxBX1 = gActors[actor_index].hitboxBX0 + 16;
        }

        position_x = SIN(angle_index) * TO_FIXED(position_x);
        position_x /= FIXED_UNIT(1);
        position_y = gActors[actor_index].posY.whole + position_x;
        gActors[actor_index].hitboxBY0 = position_y - gActors[actor_index].posY.whole + 8;
        gActors[actor_index].unk_168 = position_y;
        gActors[actor_index].hitboxBY1 = gActors[actor_index].hitboxBY0 - 16;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_PLATFORM0;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A8FE4_7724B4(u16 actor_index, u16 new_actor_index) {
    gActors[new_actor_index].actorType = 0x2600;
    gActors[new_actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(4.0);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(7.0);
}

void func_801A9064_772534(u16 actor_index) {
    u16 new_actor_index;

    D_801AB8D6_774DA6--;
    if (D_801AB8D6_774DA6 >= 0) {
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x38, 0x40);
    if (new_actor_index == 0) {
        return;
    }

    ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_W3_23);
    gActors[new_actor_index].var_110 = (Rand() & 1) << 8;
    gActors[new_actor_index].var_0D8 = 0x4020;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole - 2;
    D_801AB8D6_774DA6 = 30;
    Sound_PlaySfxAtActor2(SFX_POP, actor_index);
}

void func_801A916C_77263C(u16 actor_index) {
    gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole + gActors->posX.whole;
    gActors[actor_index].unk_184_s16[1] = gScreenPosCurrentY.whole + gActors->posY.whole;
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x130;
        gActors[actor_index].unk_11C = FIXED_UNIT(4);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_120 = FIXED_UNIT(-3);
        }
        else {
            gActors[actor_index].unk_120 = FIXED_UNIT(3);
        }
        break;
    case 0x61:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
            break;
        }

        func_80067E50(actor_index, D_800E2274);
        switch (actor_index & 7) {
        case 0:
        case 2:
            if ((func_800734C4(actor_index, 8) & 0x8000) || (func_80029B00(0x40, 0x40, -0x40) == 0)) {
                break;
            }

            gActors[actor_index].state = 0x3B0;
            gActors[actor_index].unk_118 = 30.0f;
            gActors[actor_index].unk_11C = 1.0f;
            break;
        case 1:
            gActors[actor_index].state = 0x290;
            break;
        case 3:
        case 4:
        case 5:
        default:
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = (Rand() & 3) * FIXED_UNIT(0.5) + FIXED_UNIT(3);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].unk_120 = FIXED_UNIT(-2);
            }
            else {
                gActors[actor_index].unk_120 = FIXED_UNIT(2);
            }
            break;
        case 6:
            gActors[actor_index].unk_174++;

            if (func_80029B00(0x80, 0x60, -0x60) || (gActors[actor_index].unk_174 % 60) || (func_80029B00(0xC8, 0x60, -0x60) == 0)) {
                break;
            }

            gActors[actor_index].state = 0x3A0;
            gActors[actor_index].pfn_158 = func_801A8FE4_7724B4;
            break;
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    case 0x201:
        func_800735EC(actor_index, 8);
        break;
    case 0x241:
        func_800735EC(actor_index, 4);
        gActors[actor_index].unk_118 = 1.5f;
        break;
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
        gActors[actor_index].damage = gActors[actor_index].scaleX * 100.0f;
    }

    if (actor_index & 1) {
        gActors[actor_index].scaleX = 0.5f;
        gActors[actor_index].scaleY = 0.5f;
    }
}

void func_801A951C_7729EC(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
    gActors[actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
    func_8008105C(actor_index, D_800E4698, D_800E45D0);
    gActors[actor_index].unk_178 = (s32)D_800E574C;
    func_80081478(actor_index, D_800E4698, 0);
    func_80081790(actor_index, D_800E57D4);
    func_800819A8(actor_index, D_800E4698);
    gActors[actor_index].colorA = 0xFE;
    Actor_SetColorRgb(actor_index, 4);
    D_801AB8D4_774DA4 = 0;
    D_801AB8D6_774DA6 = 120;
}

void func_801A9604_772AD4(u16 actor_index) {
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.5));
}

void func_801A9630_772B00(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0x18;
    gActors[actor_index].hitboxBY1 = -0x34;
    gActors[actor_index].hitboxBX0 = -0x10;
    gActors[actor_index].hitboxBX1 = 0x10;
    gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
    gActors[actor_index + 1].grabType = GRABTYPE_6;
    gActors[actor_index + 1].unk_0DF = ACTOR0DF_6 | ACTOR0DF_0_2;
    gActors[actor_index + 1].hitboxBY0 = 0x14;
    gActors[actor_index + 1].hitboxBY1 = -0x1C;
    gActors[actor_index + 1].hitboxBX0 = -0x14;
    gActors[actor_index + 1].hitboxBX1 = 0x14;
}

void func_801A96DC_772BAC(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].velocityY.raw = 0;
}

void func_801A9734_772C04(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
}

s32 func_801A9788_772C58(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x20;
        return 1;
    }
}

s32 func_801A97D8_772CA8(u16 actor_index, u16 other_actor_index) {
    return 0;
}

s32 func_801A97E8_772CB8(u16 actor_index) {
    u16 child_index;

    child_index = actor_index + 1;
    if ((gActors[child_index].flags_098 & ACTOR_FLAG3_UNK1) &&
        ((gActors[actor_index].state & 0x9000) == 0) &&
        (gActors[child_index].hitByType != HITTYPE_21) &&
        (gActors[child_index].hitByType != HITTYPE_22) &&
        (gActors[child_index].hitByType != HITTYPE_23)) {
        gActors[actor_index].state = 0x2000;
        gActors[actor_index].velocityX.raw = (f32)gActors[child_index].unk_0F8.raw * 0.7;
        gActors[actor_index].velocityY.raw = (f32)gActors[child_index].unk_0FC.raw * 0.7;
        return 1;
    }

    return 0;
}

s32 func_801A9900_772DD0(u16 actor_index, u16 other_actor_index) {
    if (func_801A97D8_772CA8(actor_index, 0) || func_801A97E8_772CB8(actor_index) || func_801A9788_772C58(actor_index)) {
        return 1;
    }

    func_801A9604_772AD4(actor_index);
    return 0;
}

s32 func_801A9974_772E44(u16 actor_index, u16 other_actor_index) {
    if (func_801A97D8_772CA8(actor_index, 0) || func_801A97E8_772CB8(actor_index)) {
        return 1;
    }

    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.125));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) ||
        ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.8;
        gActors[actor_index].velocityY.raw /= 2;
    }

    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = 0;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[actor_index].velocityY.raw < 0)) {
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.7;
        if ((gActors[actor_index].state == 0x21) || (gActors[actor_index].state == 0x2001)) {
            func_80081790(actor_index, D_800E581C);
            gActors[actor_index].state = 0x30;
            func_801A96DC_772BAC(actor_index);
            Sound_PlaySfxAtActor2(SFX_012A, actor_index);
            return 2;
        }
    }
}

void func_801A9B80_773050(u16 actor_index) {
    s32 unused[2];

    if (gActors[(u16)(actor_index + 1)].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[(u16)(actor_index + 1)].posX.raw = gActors[(u16)(actor_index + 1)].unk_104;
        gActors[(u16)(actor_index + 1)].posY.raw = gActors[(u16)(actor_index + 1)].unk_108;
        gActors[(u16)(actor_index + 1)].posZ.raw = gActors[(u16)(actor_index + 1)].unk_10C;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= (gActors[0].flags & ACTOR_FLAG_FLIPPED) ^ ACTOR_FLAG_FLIPPED;
        return;
    }

    gActors[actor_index].unk_128 = actor_index;
    gActors[actor_index].unk_12C = actor_index;
    gActors[actor_index].unk_130 = actor_index;
    D_801AB8D4_774DA4 = 1;
    func_801A9630_772B00(actor_index);
    gActors[actor_index].hitboxBY1 = 0;

    if (gActors[(u16)(actor_index + 1)].flags_098 & ACTOR_FLAG3_THROWN) {
        gActors[actor_index].state = 0x20;
        gActors[actor_index].velocityX.raw = gActors[(u16)(actor_index + 1)].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[(u16)(actor_index + 1)].unk_0FC.raw;
    }
    else {
        gActors[actor_index].state = 0x20;
    }
}

void func_801A9CC8_773198(u16 actor_index, s16 left, s16 right, s16 top, s16 bottom) {
    s16 player_bounds[4];

    player_bounds[0] = (gActors[0].posX.raw + gActors[0].velocityX.raw) / FIXED_UNIT(1) - 0x10;
    player_bounds[1] = (gActors[0].posX.raw + gActors[0].velocityX.raw) / FIXED_UNIT(1) + 0x10;
    player_bounds[2] = (gActors[0].posY.raw + gActors[0].velocityY.raw) / FIXED_UNIT(1) + 0x18;
    player_bounds[3] = (gActors[0].posY.raw + gActors[0].velocityY.raw) / FIXED_UNIT(1) + 8;

    if ((player_bounds[1] >= left) && (player_bounds[0] < right) && (player_bounds[2] >= bottom) && (player_bounds[3] < top)) {
        if (D_801AB8D4_774DA4 != 0) {
            return;
        }

        if (gActors[0].posX.raw < gActors[actor_index].posX.raw) {
            if ((player_bounds[1] - left) < 8) {
                gActors[0].posX.whole = gActors[0].posX.whole - player_bounds[1] + left;
                return;
            }
            gActors[0].posX.whole -= 8;
            return;
        }

        if ((right - player_bounds[0]) < 8) {
            gActors[0].posX.whole = gActors[0].posX.whole + right - player_bounds[0];
            return;
        }

        gActors[0].posX.whole += 8;
    }
    else {
        D_801AB8D4_774DA4 = 0;
    }
}

void func_801A9E6C_77333C(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK10;
    if ((gMarinaAnim.anim_u32 & 0xFF) != 2) {
        return;
    }

    if (func_80048CE4() || ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) == 0)) {
        gMarinaAnim.anim_u32 = 0;
        return;
    }

    if ((D_801AB8D0_774DA0 || (gButtonPress & gButton_B)) && (D_801AB8D2_774DA2 < 0)) {
        gPlayerData.buttonHold = gButtonHold;
        gPlayerData.buttonPress = gButtonPress;
        D_801AB8D0_774DA0 = 1;
    }
    else {
        gPlayerData.buttonHold = (gButtonHold & (0xFFFFFFFF - (gButton_DLeft + gButton_DRight + gButton_DDown + gButton_A))) | gButton_DUp;
        gPlayerData.buttonPress = gButtonPress & (0xFFFFFFFF - (gButton_DLeft + gButton_DRight + gButton_DDown + gButton_A));
        if (gButtonPress & gButton_DDown) {
            gPlayerData.buttonPress |= gButton_A;
        }
    }

    if (D_801AB8D2_774DA2 < 0) {
        return;
    }

    D_801AB8D2_774DA2--;
    gPlayerData.buttonHold &= (0xFFFFFFFF - gButton_B);
    gPlayerData.buttonPress &= (0xFFFFFFFF - gButton_B);
}

void func_801AA034_773504(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        return;
    }

    gActors[actor_index + 6].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index + 7].unk_180 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    func_8002877C(actor_index);
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    gActors[actor_index].posZ.raw = FIXED_UNIT(-0.5);
    func_801A9E6C_77333C(actor_index);

    if ((gActors[actor_index].state != 0) && (gActors[actor_index + 1].unk_180 & 0x8000)) {
        func_800819A8(actor_index, D_800E4698);
        func_8008C710(actor_index);
    }

    if (gActors[actor_index + 1].health == 0) {
        gActors[actor_index].state = 0x8000;
    }
}

void func_801AA154_773624(u16 actor_index) {
    if (gActors[actor_index].state & 0x8000) {
        return;
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index + 1].unk_130 = -1.0f;
        gActors[actor_index].unk_138 = 1.0f;
    }
    else {
        gActors[actor_index + 1].unk_130 = 1.0f;
        gActors[actor_index].unk_138 = 0.0f;
    }

    if (gActors[actor_index + 1].flags & ACTOR_FLAG_UNK10) {
        func_801A9CC8_773198(actor_index,
            gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0,
            gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1,
            gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0,
            gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1
        );
    }

    gActors[actor_index].hitboxBY1 = Math_ApproachS32(gActors[actor_index].hitboxBY1, -0x34, 2);
}

void func_801AA2B0_773780(u16 actor_index) {
    s32 unused;
    u16 child_index;

    func_801AA034_773504(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        if ((gActors[actor_index].var_0D8 & 0xF) == 0) {
            gActors[actor_index].state = 0x4000;
            gActors[actor_index].posY.whole = 0;
            func_801A951C_7729EC(actor_index);
            gActors[actor_index + 1].unk_180 |= 0x8000;
            func_80081790(actor_index, D_800E58D4);
            D_800BE544 = actor_index;
            gActors[actor_index + 1].health = 1000;
        }
        break;
    case 0x4000:
        gActors[actor_index].state = 0x10;
        func_801A9630_772B00(actor_index);
        break;
    case 0x10:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E57D4);
        func_801A96DC_772BAC(actor_index);
        child_index = actor_index + 0x21;
        gActors[child_index].graphicList = (s16*)D_801AB68C_774B5C;
        gActors[child_index].graphicTimer = 1;
        gActors[actor_index + 1].var_110 = 0.0f;
    case 0x11:
        func_801A9064_772534(actor_index);

        if (gActors[actor_index + 1].var_110 < 3600.0f) {
            gActors[actor_index + 1].var_110 += 1.0f;
        }

        func_801A9900_772DD0(actor_index, 0);
        break;
    case 0x40:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E57F0);
    case 0x41:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
        }
        func_801A9900_772DD0(actor_index, 0);
        break;
    case 0x20:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E57D4);
        func_801A9734_772C04(actor_index);
    case 0x21:
        func_801A9974_772E44(actor_index, 0);
        break;
    case 0x50:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E5808);
    case 0x51:
        gActors[actor_index].state++;
        func_801A9734_772C04(actor_index);
        gActors[actor_index].velocityX.raw = gActors[actor_index + 2].unk_180 * gActors[actor_index + 1].unk_130;
        gActors[actor_index].velocityY.raw = gActors[actor_index + 3].unk_180;
        func_80081790(actor_index, D_800E58D4);
        Sound_PlaySfxAtActor2(SFX_DASH_0116, actor_index);
        func_801A9900_772DD0(actor_index, 0);
        break;
    case 0x52:
        if (func_801A97D8_772CA8(actor_index, 0) || func_801A97E8_772CB8(actor_index)) {
            break;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            gActors[actor_index].velocityY.raw = 0;
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1)) {
            gActors[actor_index].state = 0x20;
        }
        break;
    case 0x30:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
        }

        func_801A9900_772DD0(actor_index, 0);
        break;
    case 0x18:
        gActors[actor_index].state++;
        gActors[actor_index].unk_11C = -1.0f;
        gActors[actor_index + 1].unk_180 &= ~1;
    case 0x19:
        func_801A9064_772534(actor_index);
        if (func_801A97D8_772CA8(actor_index, 0) || func_801A97E8_772CB8(actor_index)) {
            break;
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index + 1].unk_180 ^= 1;
            if (gActors[actor_index + 1].unk_180 & 1) {
                func_80081790(actor_index, D_800E5840);
                gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_130 * FIXED_UNIT(2.4375);
            }
            else {
                func_80081790(actor_index, D_800E5864);
                gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_130 * FIXED_UNIT(2.4375);
            }
        }

        Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.0625));

        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].velocityX.raw = 0;
            Sound_PlaySfxAtActor2(SFX_0029, actor_index);
        }

        func_801A9788_772C58(actor_index);
        break;
    case 0x1000:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E5840);
    case 0x1001:
        func_801A9B80_773050(actor_index);
        break;
    case 0x2000:
        gActors[actor_index].state++;
        func_801A9734_772C04(actor_index);
        func_80081790(actor_index, D_800E5830);
        child_index = actor_index + 0x21;
        gActors[child_index].graphicList = (s16*)D_801AB6A0_774B70;
        gActors[child_index].graphicTimer = 1;
    case 0x2001:
        func_801A9974_772E44(actor_index, 0);
        break;
    case 0x8000:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E5840);
        func_801A9734_772C04(actor_index);
    case 0x8001:
        func_80081720(actor_index, D_800E4698, -3);
        func_8003E52C(1, gActors[actor_index + 1].posX.whole, gActors[actor_index + 1].posY.whole, 0.5f);
        gActors[actor_index].actorType = ACTORTYPE_OVL2_W3_22;
        Actor_Initialize(actor_index);
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].var_110 = 0.0f;
        break;
    }

    func_801AA154_773624(actor_index);
}

void func_801AAA8C_773F5C(u16 actor_index) {
    func_801AA2B0_773780(actor_index);
    switch (gActors[actor_index].state) {
    case 0x11:
        if (gActors[actor_index + 1].var_110 > 30.0f) {
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x40;
                break;
            }
            gActors[actor_index].state = 0x18;
        }

        break;

    case 0x19:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x10;
            break;
        }

        if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) && (gActors[actor_index + 1].unk_130 == -1.0f)) || ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) && (gActors[actor_index + 1].unk_130 == 1.0f))) {
            gActors[actor_index].state = 0x50;
            gActors[actor_index + 2].unk_180 = FIXED_UNIT(3);
            gActors[actor_index + 3].unk_180 = FIXED_UNIT(7);
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801AAC54_774124(u16 actor_index) {
    gActors[actor_index + 1].var_0D8 = 1;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 0);

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state = 0x110;
        gActors[actor_index].health = 200;
    }
}

u16 func_801AACFC_7741CC(void) {
    return Actor_RangeFindInactive(0x70, 0x88);
}

void func_801AAD20_7741F0(u16 actor_index) {
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
}

void func_801AAD54_774224(u16 actor_index) {
    u16 new_actor_index;

    switch (gActors[actor_index].var_0D8 & 0xF0F0) {
    case 0:
        Spikeball_Update(actor_index);
        if (gActors[actor_index].state == 0) {
            Spikeball_State0(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        else {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].rotateZ -= 10.0f;
            }
            else {
                gActors[actor_index].rotateZ += 10.0f;
            }

            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
            if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                Sound_PlaySfxAtActor2(SFX_JIGGLE_0090, actor_index);
                gActors[actor_index].unk_12C -= 1.0f;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            }

            Spikeball_State1End(actor_index, 0);
            if ((gActors[actor_index].unk_190 & 1) || (gActors[actor_index].unk_12C < 0.0f)) {
                gActors[actor_index].flags = 0;
                SpawnParticle_RingWaveBlue(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
                break;
            }
        }

        Spikeball_UpdateHitbox(actor_index);
        Actor_SetHitboxA(actor_index, 2);
        break;
    case 0x8000:
        if (gActors[actor_index].state == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            break;
        }

        func_801AAD20_7741F0(actor_index);
        if ((func_80029B74(0x100) == 0) || (gActiveFrames & 0x7F)) {
            break;
        }

        new_actor_index = func_801AACFC_7741CC();
        if (new_actor_index != 0) {
            ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_W3_24);
            gActors[new_actor_index].var_110 = (Rand() & 0x13) * 0x100;
            gActors[new_actor_index].var_0D8 = 0;
            gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
            gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + 0x10;
            if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
                gActors[new_actor_index].velocityX.raw = FIXED_UNIT(1);
            }
            else {
                gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-1);
            }
            gActors[new_actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[new_actor_index].unk_12C = 4.0f;
        }

        Sound_PlaySfxAtActor2(SFX_POP, actor_index);
        break;
    }
}

