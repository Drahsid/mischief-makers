#include "common.h"
#include "28EF0.h"
#include "7D8E0.h"

#define OVERLAY1_DISPATCH_ACTOR ((ActorFunc*)OVERLAY1_DISPATCH_TABLE_VRAM)

extern u16* gParticlePalettes[];
extern u16 D_800D84E8[];
extern s16 D_800E14E8[];
extern s16 D_800E151C[];
extern s16 D_800E1700[];
extern u32 D_800E3584;

s32 D_801B6580_7C67A0 = 0x00000000;

u8 D_801B6584_7C67A4[32] = {
    0x05, 0x04, 0x05, 0x04, 0x05, 0x06, 0x07, 0x07,
    0x07, 0x07, 0x07, 0x08, 0x05, 0x04, 0x05, 0x04,
    0x05, 0x04, 0x05, 0x04, 0x05, 0x06, 0x07, 0x07,
    0x07, 0x07, 0x07, 0x08, 0x05, 0x04, 0x05, 0x04,
};

u8 D_801B65A4_7C67C4[40] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01,
};

u16 D_801B65CC_7C67EC[8] = {
    0x5000, 0x2000,
    0x0000, 0x2000,
    0x6000, 0x2000,
    0x1000, 0x2000,
};

u16 D_801B65DC_7C67FC[16] = {
    0x0000, 0x0000, 0x0100, 0x0000, 0x0000, 0x0000, 0x0500, 0x0600,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0B00, 0x0C00, 0x0000, 0x0D00,
};

u16 D_801B65FC_7C681C[4] = { 0x0501, 0x0001, 0x0701, 0x0101 };
u16 D_801B6604_7C6824[4][2] = {
    { 0x10D7, 0x0031 },
    { 0x1097, 0x00A3 },
    { 0x1097, 0x0065 },
    { 0x105B, 0x0067 },
};

u8 D_801B6614_7C6834[16] = {
    0x10, 0x20, 0x30, 0x40, 0x50, 0x60, 0x70, 0x80,
    0x90, 0xA0, 0x10, 0x20, 0x30, 0x40, 0x50, 0x60,
};

u16 D_801B6624_7C6844[4] = { 0x5040, 0x0040, 0x7040, 0x1040 };

s16 D_801B662C_7C684C[26] = {
    0x01E0, 0x0002, 0x01E2, 0x0002, 0x01E4, 0x0002, 0x0000, 0x0000,
    0x01C6, 0x0004, 0x01C8, 0x0004, 0x01CA, 0x0004, 0x01CC, 0x0004,
    0x01CE, 0x0004, 0x01D0, 0x0004, 0x01D2, 0x0004, 0x01D4, 0x0004,
    0x0000, 0x0000,
};

u16 D_801B6660_7C6880[16] = {
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x10,
    0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x12, 0x14,
};

s16 D_801B6680_7C68A0[30] = {
    0x015E, 0x0005, 0x015C, 0x0005, 0x015A, 0x0005, 0x0158, 0x0005,
    0x0156, 0x0005, 0x0000, 0x0000, 0x01D4, 0x0004, 0x01D2, 0x0004,
    0x01D0, 0x0004, 0x01CE, 0x0004, 0x01CC, 0x0004, 0x01CA, 0x0004,
    0x01C8, 0x0004, 0x01C6, 0x0004, 0x0000, 0x0000,
};

Position_U16 D_801B66BC_7C68DC[2] = {
    { 0x0000, 0x0002 },
    { 0x0200, 0x0002 },
};

u16 D_801B66C4_7C68E4[26] = {
    0x080C, 0x080E, 0x0810, 0x0812, 0x0814, 0x0816, 0x0818, 0x081A,
    0x081C, 0x081E, 0x0820, 0x0822, 0x0824, 0x0826, 0x0828, 0x082A,
    0x082C, 0x082E, 0x0830, 0x0832, 0x0834, 0x0836, 0x0838, 0x083A,
    0x083C, 0x083E,
};

s16 D_801B66F8_7C6918[8] = {
    -0x0060, 0x0000, 0x0060, -0x0060, 0x0000, 0x0060, -0x0090, 0x0000,
};
s16 D_801B6708_7C6928[12] = {
    -0x0070, -0x0070, 0x0070, -0x0074, -0x0073, -0x0072,
    -0x0075, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

u16 D_801B6890_7C6AB0[13];
u16 D_801B68AA_7C6ACA;
u16 D_801B68AC_7C6ACC;
u16 D_801B68AE_7C6ACE;

extern void func_8003ED48(u16 actor_index, s32 arg1, s16 position_x, s16 position_y, s16 position_z);
extern u16 func_8003F7A0(f32 scale, s16 position_x, s16 position_y, s16 position_z);
extern void func_80067E50(u16 actor_index, void* graphic_list);
extern s32 func_8006B940(u16 actor_index, u16 other_actor_index);
extern s32 func_8006BA80(u16 actor_index, u16 other_actor_index);
extern s32 func_8006BB8C(u16 actor_index, u16 other_actor_index);
extern s32 func_800734C4(u16 actor_index, s32 arg1);
extern void func_80078418(u16 actor_index);
extern void func_8007A118(u16 actor_index, u16 other_actor_index);
extern void func_8007B73C(u16 actor_index);

u16 func_801B0900_7C0B20(u16 actor_start, u16 actor_end);
s32 func_801B0998_7C0BB8(u16 actor_index);
void func_801B0A68_7C0C88(void);
u16 func_801B0A9C_7C0CBC(void);
void func_801B0AE8_7C0D08(void);
u8 func_801B0B50_7C0D70(u16 position_x);
u16 func_801B0CF4_7C0F14(u16 actor_index);
u16 func_801B0D50_7C0F70(u16 actor_index);
u16 func_801B0EA8_7C10C8(u16 actor_index);
u16 func_801B0FE4_7C1204(u16 actor_index);
u16 func_801B1290_7C14B0(u16 actor_index);
u16 func_801B13D4_7C15F4(u16 actor_index);
u16 func_801B1534_7C1754(u16 actor_index);
u16 func_801B16E8_7C1908(u16 actor_index);
u16 func_801B1870_7C1A90(u16 actor_index);
u16 func_801B19B4_7C1BD4(u16 actor_index);
void func_801B1ACC_7C1CEC(u16 actor_index);
void func_801B1C68_7C1E88(u16 actor_index);
void func_801B1DCC_7C1FEC(u16 actor_index);
void func_801B2154_7C2374(u16 actor_index);
void func_801B224C_7C246C(u16 actor_index);
void func_801B2430_7C2650(u16 actor_index);
void func_801B2634_7C2854(u16 actor_index);
void func_801B2870_7C2A90(u16 actor_index);
void func_801B29A4_7C2BC4(u16 actor_index);
void func_801B2B14_7C2D34(u16 actor_index);
void func_801B2BCC_7C2DEC(u16 actor_index);
void func_801B2D78_7C2F98(u16 actor_index);
void func_801B2EB4_7C30D4(u16 actor_index);
void func_801B2F9C_7C31BC(u16 actor_index);
void func_801B2FD8_7C31F8(u16 actor_index);
void func_801B2FE0_7C3200(u16 actor_index);
void func_801B2FE8_7C3208(u16 actor_index);
void func_801B2FF0_7C3210(u16 actor_index);
void func_801B2FF8_7C3218(u16 actor_index);
void func_801B3140_7C3360(u16 actor_index);
void func_801B3204_7C3424(u16 actor_index);
void func_801B3308_7C3528(u16 actor_index);
void func_801B3550_7C3770(u16 actor_index);
void func_801B35DC_7C37FC(u16 actor_index);
void func_801B3674_7C3894(u16 actor_index);
void func_801B3714_7C3934(u16 actor_index);
void func_801B3778_7C3998(u16 actor_index, u16 arg1);
void func_801B38AC_7C3ACC(u16 actor_index);
void func_801B3978_7C3B98(u16 actor_index);
void func_801B3C40_7C3E60(u16 actor_index);
void func_801B3CF0_7C3F10(u16 actor_index);
void func_801B404C_7C426C(u16 actor_index);
s32 func_801B4200_7C4420(u16 actor_index);
s32 func_801B42AC_7C44CC(u16 actor_index);
void func_801B4370_7C4590(u16 actor_index);
void func_801B46AC_7C48CC(u16 actor_index);
void func_801B482C_7C4A4C(u16 actor_index);
void func_801B4950_7C4B70(u16 actor_index);
void func_801B4BCC_7C4DEC(u16 actor_index);
s32 func_801B4D60_7C4F80(u16 actor_index);
s32 func_801B4DF8_7C5018(u16 actor_index);
s32 func_801B4F90_7C51B0(u16 actor_index);
void func_801B5000_7C5220(u16 actor_index);
void func_801B527C_7C549C(u16 actor_index);
void func_801B530C_7C552C(u16 actor_index);
void func_801B53D4_7C55F4(u16 actor_index);
void func_801B5568_7C5788(u16 actor_index);
void func_801B583C_7C5A5C(u16 actor_index);
void func_801B5FB0_7C61D0(u16 actor_index);
void func_801B616C_7C638C(u16 actor_index);
void func_801B63E4_7C6604(u16 actor_index);

u16 func_801B0900_7C0B20(u16 actor_start, u16 actor_end) {
    s32 actor_last;
    u16 actor_index;

    actor_index = actor_start;
    actor_last = actor_end - 1;
    while (actor_index < actor_last) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) && !(gActors[actor_index + 1].flags & ACTOR_FLAG_ACTIVE)) {
            return actor_index;
        }
        actor_index++;
    }

    return 0;
}

s32 func_801B0998_7C0BB8(u16 actor_index) {
    s32 position_x = (s16)((gActors + actor_index)->hitboxBX0 + gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole);
    if (position_x < gScreenBoundX0.whole) {
        (gActors + actor_index)->posX.whole = (gScreenBoundX0.whole - position_x) + (gActors + actor_index)->posX.whole;
        (gActors + actor_index)->flags_098 |= ACTOR_FLAG3_UNK2;
        return 1;
    }

    position_x = (s16)((gActors + actor_index)->hitboxBX1 + gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole);
    if (gScreenBoundX1.whole < position_x) {
        (gActors + actor_index)->posX.whole = (gScreenBoundX1.whole - position_x) + (gActors + actor_index)->posX.whole;
        (gActors + actor_index)->flags_098 |= ACTOR_FLAG3_UNK3;
        return 2;
    }

    return 0;
}

void func_801B0A68_7C0C88(void) {
    u16 index;

    for (index = 1; index < 0xC; index++) {
        D_801B6890_7C6AB0[index] = 0;
    }
}

u16 func_801B0A9C_7C0CBC(void) {
    u16 index;

    for (index = 1; index < 0xC; index++) {
        if (D_801B6890_7C6AB0[index] == 0) {
            return index;
        }
    }

    return 0;
}

void func_801B0AE8_7C0D08(void) {
    u16 actor_index;
    u16 index;

    for (index = 1; index < 0xC; index++) {
        actor_index = D_801B6890_7C6AB0[index];
        if ((actor_index != 0) && !(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            D_801B6890_7C6AB0[index] = 0;
        }
    }
}

u8 func_801B0B50_7C0D70(u16 position_x) {
    s32 column;
    u16 position;
    u8 position_u8;
    u16 position_high;
    u16 row;
    u8 result;

    position = (position_x / 1.55) + 144.0;
    position_u8 = position & 0xFF;
    if (position_u8 < 0x20) {
        column = 0;
    }
    else if (position_u8 < 0x40) {
        column = 1;
    }
    else if (position_u8 < 0x60) {
        column = 2;
    }
    else if (position_u8 < 0x80) {
        column = 3;
    }
    else if (position_u8 < 0xA0) {
        column = 4;
    }
    else if (position_u8 < 0xC0) {
        column = 5;
    }
    else if (position_u8 < 0xE0) {
        column = 6;
    }
    else {
        column = 7;
    }

    position_high = (position & 0xFF00) >> 8;
    row = D_801B6584_7C67A4[position_high];
    row -= 4;
    result = D_801B65A4_7C67C4[(row * 8) + column];
    return result;
}

u16 func_801B0CF4_7C0F14(u16 actor_index) {
    s32 result;

    if ((gActors[actor_index].unk_168 - gScreenPosCurrentX.whole) < -0x3F) {
        result = 1;
    }
    else {
        result = 0;
    }

    return result;
}

u16 func_801B0D50_7C0F70(u16 actor_index) {
    u16 new_actor_index;

    if (func_801B0B50_7C0D70(gScreenPosCurrentX.whole) != 0) {
        return 0;
    }

    new_actor_index = Actor_RangeFindInactive(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2907;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = -0x20;
        gActors[new_actor_index].var_154 = FIXED_UNIT(-368.0);

        if (gActors[new_actor_index].posX.whole > 0) {
            gActors[new_actor_index].var_110 = 256.0f;
        }
        
        gActors[new_actor_index].var_0D8 = D_801B65CC_7C67EC[gActors[actor_index].var_0D8 * 2];
        if (!(gActors[actor_index].var_158 & 7)) {
            gActors[new_actor_index].var_0D8 |= 0x800;
        }
        else {
            gActors[new_actor_index].var_0D8 |= D_801B65DC_7C67FC[Rand() & 0xF];
        }
    }

    return new_actor_index;
}

u16 func_801B0EA8_7C10C8(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2908;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0xB0;
        gActors[new_actor_index].posY.whole = 0x25F - gScreenPosCurrentY.whole;
        gActors[new_actor_index].var_154 = FIXED_UNIT(176.0);
        gActors[new_actor_index].var_110 = 256.0f;
        gActors[new_actor_index].var_0D8 = D_801B65CC_7C67EC[gActors[actor_index].var_0D8 * 2];
        if (!(gActors[actor_index].var_158 & 7)) {
            gActors[new_actor_index].var_0D8 |= 0x800;
        }
        else {
            gActors[new_actor_index].var_0D8 |= D_801B65DC_7C67FC[Rand() & 0xF];
        }
    }

    return new_actor_index;
}

u16 func_801B0FE4_7C1204(u16 actor_index) {
    u16 new_actor_index;
    u16 table_column;
    u16 temp0;
    u16 temp1;

    new_actor_index = Actor_RangeFindInactive(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2901;
        Actor_Initialize(new_actor_index);
        if (Rand() < 0x55) {
            gActors[new_actor_index].posX.whole = -0xB0;
        }
        else {
            gActors[new_actor_index].posX.whole = 0xB0;
        }

        gActors[new_actor_index].posY.whole = 0x25F - gScreenPosCurrentY.whole;
        temp0 = 0;
        temp1 = 0;
        if (gActors[new_actor_index].posX.whole > 0) {
            temp0 = 0x100;
        }

        if (Rand() < 0x40) {
            if (Rand() & 1) {
                if ((gActors[actor_index].var_0D8 == 3) &&
                    (gActors[actor_index].unk_16C == 0)) {
                    gActors[actor_index].unk_16C = 1;
                    gActors[new_actor_index].posX.whole = 0xB0;
                    gActors[new_actor_index].actorType = 0x2902;
                    temp0 += 0x10;
                    temp1 = 0x80;
                    table_column = 1;
                }
                else {
                    gActors[new_actor_index].actorType = 0x2902;
                    temp0 += 0x41;
                    temp1 = 0x40;
                    table_column = 1;
                }
            }
            else {
                temp0 += 0x21;
                temp1 = 0x70;
                table_column = 0;
            }
        }
        else {
            temp0 |= 0x20;
            table_column = 0;
        }

        gActors[new_actor_index].var_110 = temp0;
        gActors[new_actor_index].var_0D8 = D_801B65CC_7C67EC[(gActors[actor_index].var_0D8 * 2) + table_column];

        if (!(gActors[actor_index].var_158 & 7)) {
            gActors[new_actor_index].var_0D8 |= 0x800;
        }
        else {
            gActors[new_actor_index].var_0D8 |= D_801B65DC_7C67FC[Rand() & 0xF];
        }

        gActors[new_actor_index].var_0D8 |= temp1;
    }

    return new_actor_index;
}

u16 func_801B1290_7C14B0(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x290A;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = -0x160;
        gActors[new_actor_index].posY.whole = Rand() * 0.5 + 48.0;
        gActors[new_actor_index].var_110 = D_801B65FC_7C681C[gActors[actor_index].var_0D8];
        gActors[new_actor_index].var_0D8 = 0;
    }

    return new_actor_index;
}

u16 func_801B13D4_7C15F4(u16 actor_index) {
    u16 new_actor_index;

    if ((gScreenPosCurrentX.whole + 0xB0) < (gActors[0x31].unk_164 + 0x40)) {
        return 0;
    }

    gActors[0x31].unk_164 = gScreenPosCurrentX.whole + 0xB0;

    new_actor_index = Actor_RangeFindInactive(0x40, 0x60);
    if (new_actor_index != 0) {
        if (Rand() & 1) {
            gActors[new_actor_index].actorType = 0x2904;
        }
        else {
            gActors[new_actor_index].actorType = 0x2905;
        }

        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0xB0;
        gActors[new_actor_index].posY.whole = 0x20;
        gActors[new_actor_index].var_110 = D_801B65FC_7C681C[gActors[actor_index].var_0D8];
        gActors[new_actor_index].var_0D8 = 0;
    }

    return new_actor_index;
}

u16 func_801B1534_7C1754(u16 actor_index) {
    u16 new_actor_index = func_801B0900_7C0B20(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x48;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0xB0;
        gActors[new_actor_index].posY.whole = -0x20;
        gActors[new_actor_index].var_110 = Rand() & 1;
        gActors[new_actor_index].var_0D8 = 0;
        gActors[new_actor_index + 1].actorType = 0x90C;
        Actor_Initialize(new_actor_index + 1);
        gActors[new_actor_index + 1].posX.whole = gActors[new_actor_index].posX.whole;
        gActors[new_actor_index + 1].posY.whole = gActors[new_actor_index].posY.whole;
        gActors[new_actor_index + 1].var_110 = new_actor_index;
        gActors[new_actor_index + 1].var_0D8 = gActors[new_actor_index].var_110 + 1.0f;
    }

    return new_actor_index;
}

u16 func_801B16E8_7C1908(u16 actor_index) {
    u16 new_actor_index;
    s32 temp;

    if ((gPlayerActor.flags & ACTOR_FLAG_ATTACHED) &&
        (gPlayerActor.parentIndex >= 0x60) && (gPlayerActor.parentIndex < 0x71)) {
        return 0;
    }

    new_actor_index = Actor_RangeFindInactive(0x60, 0x61);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x903;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0xB0;
        gActors[new_actor_index].posY.whole = -0x20;
        gActors[new_actor_index].var_110 = 528.0f;
        gActors[new_actor_index].var_0D8 = D_801B6614_7C6834[Rand() & 0xF] + 0x400;

        if (Rand() & 1) {
            temp = D_801B6604_7C6824[gActors[actor_index].var_0D8][0];
        }
        else {
            temp = D_801B6604_7C6824[gActors[actor_index].var_0D8][1];
        }

        gActors[new_actor_index].var_0D8 |= temp;
    }

    return new_actor_index;
}

u16 func_801B1870_7C1A90(u16 actor_index) {
    u16 new_actor_index = func_801B0900_7C0B20(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2909;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = -0x160;
        gActors[new_actor_index].posY.whole = Rand() * 0.5 + 64.0;
        gActors[new_actor_index].var_110 = D_801B6624_7C6844[gActors[actor_index].var_0D8];
        gActors[new_actor_index].var_0D8 = 0;
    }

    return new_actor_index;
}

u16 func_801B19B4_7C1BD4(u16 actor_index) {
    u16 new_actor_index;

    if ((gScreenPosCurrentX.whole + 0xB0) < (gActors[0x31].unk_164 + 0x60)) {
        return 0;
    }

    gActors[0x31].unk_164 = gScreenPosCurrentX.whole + 0xB0;

    new_actor_index = func_801B0900_7C0B20(0x40, 0x60);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2903;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = 0xB0;
        gActors[new_actor_index].posY.whole = 0x30;
        gActors[new_actor_index].var_110 = D_801B6624_7C6844[gActors[actor_index].var_0D8];
        gActors[new_actor_index].var_0D8 = 0;
    }

    return new_actor_index;
}

void func_801B1ACC_7C1CEC(u16 actor_index) {
    u16 new_actor_index;
    u16 random;
    u16 temp;

    temp = func_801B0A9C_7C0CBC();
    if (temp != 0) {
        random = Rand();
        if ((gActors[actor_index].var_160 % 12) == 0) {
            new_actor_index = (random & 1)
                ? func_801B1534_7C1754(actor_index)
                : func_801B16E8_7C1908(actor_index);
        }
        else if (random < 0x19) {
            new_actor_index = !(random & 3)
                ? func_801B1870_7C1A90(actor_index)
                : func_801B19B4_7C1BD4(actor_index);
        }
        else if (random < 0x55) {
            new_actor_index = !(random & 3)
                ? func_801B1290_7C14B0(actor_index)
                : func_801B13D4_7C15F4(actor_index);
        }
        else if (!(random & 3)) {
            new_actor_index = (Rand() & 1)
                ? func_801B0D50_7C0F70(actor_index)
                : func_801B0EA8_7C10C8(actor_index);
        }
        else {
            new_actor_index = func_801B0FE4_7C1204(actor_index);
        }

        gActors[actor_index].var_160++;

        if (new_actor_index != 0) {
            D_801B6890_7C6AB0[temp] = new_actor_index;
            gActors[actor_index].unk_168 = gScreenPosCurrentX.whole;
        }
    }
}

void func_801B1C68_7C1E88(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        func_801B0A68_7C0C88();
        gActors[actor_index].state++;
        gActors[actor_index].var_158 = 1;
        gActors[actor_index].unk_16C = 0;
        // fallthrough
    case 1:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = 0xC;
        break;
    default:
    case 3:
        break;
    case 2:
        if (gActors[actor_index].var_15C & 2) {
            gActors[actor_index].var_150--;
            if ((gActors[actor_index].var_150 <= 0) || (func_801B0CF4_7C0F14(actor_index) != 0)) {
                func_801B1ACC_7C1CEC(actor_index);
                gActors[actor_index].var_150 = 0x3C;
                gActors[actor_index].var_154--;
                if (gActors[actor_index].var_154 <= 0) {
                    gActors[actor_index].state = 1;
                    gActors[actor_index].var_150 = 0xB4;
                    gActors[actor_index].var_154 = 0xC;
                    gActors[actor_index].var_158++;
                }

                if (gActors[actor_index].var_15C & 1) {
                    gActors[actor_index].state = 3;
                }
            }
            break;
        }
        return;
    }

    func_801B0AE8_7C0D08();
}

void func_801B1DCC_7C1FEC(u16 actor_index) {
    f64 random0;
    s32 random1;

    switch (gActors[actor_index].unk_174) {
    case 0:
        gActors[actor_index].unk_174++;
        if (gActors[actor_index].posX.whole > 0) {
            random0 = (Rand() - 0x80) * 0.375;
            gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole + (128.0 + random0);
        }
        else {
            random0 = (Rand() - 0x80) * 0.375;
            gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole + (32.0 + random0);
        }
        // fallthrough
    case 1:
        if (!(func_800734C4(actor_index, 0x10) & 0x8000)) {
            gActors[actor_index].unk_174++;
            random0 = Rand();
            gActors[actor_index].unk_16C = random0 * 0.078125;
        }
        break;
    case 2:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        gActors[actor_index].unk_16C--;
        if (gActors[actor_index].unk_16C < 0) {
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_16C = Rand() & 0x3F;
            switch (Rand() & 7) {
            case 0:
                gActors[actor_index].unk_118 = Rand() & 0x1F;
                gActors[actor_index].unk_11C = Rand() & 3;
                gActors[actor_index].state = 0x3B0;
                break;
            case 1:
                gActors[actor_index].state = 0x3C0;
                break;
            case 3:
                gActors[actor_index].unk_164 = 1;
                gActors[actor_index].state = 0x3D0;
                break;
            case 4:
                gActors[actor_index].state = 0x3A0;
                random1 = Rand();
                if (random1 >= 0xAB) {
                    gActors[actor_index].pfn_158 = func_8006B940;
                }
                else if (random1 >= 0x57) {
                    gActors[actor_index].pfn_158 = func_8006BA80;
                }
                else {
                    gActors[actor_index].pfn_158 = func_8006BB8C;
                }
                break;
            case 5:
                gActors[actor_index].state = 0x80;
                break;
            case 6:
                gActors[actor_index].state = 0xC0;
                break;
            case 7:
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_11C = FIXED_UNIT(5.5);
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].unk_120 = FIXED_UNIT(-3.0);
                }
                else {
                    gActors[actor_index].unk_120 = FIXED_UNIT(3.0);
                }
                break;
            }
        }
        break;
    case 3:
        gActors[actor_index].unk_16C--;
        if (gActors[actor_index].unk_16C < 0) {
            gActors[actor_index].unk_174 = 0;
        }
        break;
    }
}

void func_801B2154_7C2374(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        func_801B1DCC_7C1FEC(actor_index);
        break;
    case 0xA1:
        gActors[actor_index].unk_118 = 1.6f;
        func_800734C4(actor_index, 0x10);
        break;
    }

    if (ABS(gActors[actor_index].posX.whole) >= 0xB8) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801B224C_7C246C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        gActors[actor_index].unk_174 = 0;
        break;
    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        switch (gActors[actor_index].unk_174) {
        case 0:
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole + gActors->posX.whole;
            func_800734C4(actor_index, 0x28);
            gActors[actor_index].unk_170 = Rand() & 7;
            break;
        case 1:
            gActors[actor_index].unk_174++;
            gActors[actor_index].state = 0x2A0;
            break;
        case 2:
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_16C = Rand() / 6;
            break;
        case 3:
            gActors[actor_index].unk_16C--;
            if (gActors[actor_index].unk_16C < 0) {
                gActors[actor_index].unk_174 = 0;
                gActors[actor_index].unk_170--;
                if (gActors[actor_index].unk_170 < 0) {
                    gActors[actor_index].unk_174 = 4;
                }
            }
            break;
        case 4:
            if (Rand() & 1) {
                gActors[actor_index].unk_184_s16[0] = 0;
            }
            else {
                gActors[actor_index].unk_184_s16[0] = 0x3000;
            }
            func_800734C4(actor_index, 0x28);
            break;
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 0x28);
        break;
    case 0x2B1:
        gActors[actor_index].state = 0x330;
        break;
    }
}

void func_801B2430_7C2650(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
    }

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        gActors[actor_index].unk_174 = 0;
        break;
    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        switch (gActors[actor_index].unk_174) {
        case 0:
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_120 = 0.0f;
            gActors[actor_index].unk_11C = (Rand() * FIXED_UNIT(1.0 / 256)) + FIXED_UNIT(5.5);
            gActors[actor_index].unk_124 = Rand() & 1;
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_170 = Rand() / 2;
            break;
        case 1:
            gActors[actor_index].unk_16C++;
            if (gActors[actor_index].unk_16C >= gActors[actor_index].unk_170) {
                gActors[actor_index].unk_174++;
            }
            break;
        case 2:
            gActors[actor_index].unk_174++;
            gActors[actor_index].state = 0xA0;
            break;
        }
        break;
    case 0x131:
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-256.0), FIXED_UNIT(4.0));
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].var_154 = FIXED_UNIT(-256.0);
        }
        break;
    case 0x101:
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-208.0), FIXED_UNIT(4.0));
        break;
    case 0xA1:
        gActors[actor_index].unk_118 = 2.8f;
        break;
    }

    gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ENABLED;
    if ((gActors[actor_index].posX.whole < -0xF0) || (gActors[actor_index].posX.whole >= 0xF1)) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801B2634_7C2854(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
    }

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        switch (gActors[actor_index].unk_174) {
        case 4:
            break;
        case 0:
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_16C = Rand() / 2;
            gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole;
            func_800734C4(actor_index, 0x40);
            gActors[actor_index].unk_16C = gActors[actor_index].posZ.raw;
            break;
        case 1:
            if ((gActors[actor_index].posX.whole >= -0x5F) && (gActors[actor_index].posX.whole < 0x60)) {
                gActors[actor_index].unk_174++;
                gActors[actor_index].state = 0x60;
            }
            break;
        case 2:
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_120 = 0.0f;
            gActors[actor_index].unk_11C = (Rand() * FIXED_UNIT(1.0 / 256)) + FIXED_UNIT(5.5);
            gActors[actor_index].unk_124 = Rand() & 1;
            gActors[actor_index].state = 0x120;
            break;
        case 3:
            gActors[actor_index].actorType = 0x2901;
            gActors[actor_index].state = 0;
            gActors[actor_index].unk_174 = 0;
            gActors[actor_index].var_154 = 0;
            break;
        }
        break;
    case 0x131:
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-88.0), FIXED_UNIT(6.5));
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].var_154 = FIXED_UNIT(-88.0);
        }
        break;
    case 0x101:
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0, FIXED_UNIT(6.5));
        break;
    }

    gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ENABLED;
    if ((gActors[actor_index].posX.whole < -0xF0) || (gActors[actor_index].posX.whole >= 0xF1)) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801B2870_7C2A90(u16 actor_index) {
    func_80078418(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x20;
        gActors[actor_index].unk_164 = Rand();
        break;
    case 33:
        if (D_800E3584 & 0x30000) {
            if ((func_80029B00(0x80, 0x80, -0x80) != 0) && !(gActors[actor_index].unk_164 & 0x1F)) {
                gActors[actor_index].var_150 |= 0x8000;
            }
        }

        if (gActors[actor_index].unk_164 & 0x100) {
            gActors[actor_index].unk_184 = gActors[actor_index].unk_174 - 0x30;
        }
        else {
            gActors[actor_index].unk_184 = gActors[actor_index].unk_174 + 0x18;
        }

        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    gActors[actor_index].unk_164++;
}

void func_801B29A4_7C2BC4(u16 actor_index) {
    func_80078418(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index + 1].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index].state = 0x20;
        break;
    case 33:
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].posZ.raw = FIXED_UNIT(-514.0);
    gActors[actor_index].colorR = 0x64;
    gActors[actor_index].colorG = 0x64;
    gActors[actor_index].colorB = 0x64;
    gActors[actor_index + 1].colorR = 0x64;
    gActors[actor_index + 1].colorG = 0x64;
    gActors[actor_index + 1].colorB = 0x64;
    gActors[actor_index].posX.whole += 6;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].unk_180 += 6;
    if (gActors[actor_index].posX.whole >= 0x161) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801B2B14_7C2D34(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) {
            if ((func_800486F4() == 8) && (gActors[actor_index].unk_12C == 0.0f)) {
                SpawnGemActor(actor_index, 0x31, 0);
                gActors[actor_index].unk_12C = 1.0f;
            }
        }
    }
}

void func_801B2BCC_7C2DEC(u16 actor_index) {
    s32 position_x;
    s32 position_y;

    if (gActors[actor_index].posX.whole >= -0x100) {
        if (gActors[actor_index].posX.whole < 0x101) {
            func_801B2B14_7C2D34(actor_index);
            func_8007B73C(actor_index);
            switch (gActors[actor_index].state) {
            case 0:
                gActors[actor_index].state = 0x10;
                gActors[actor_index].unk_128 = 0.0f;
                break;
            case 0x10:
                position_x = gActors[actor_index].unk_170;
                position_y = gActors[actor_index].unk_174;
                if (!(func_80029FB8(actor_index, position_x - 0x80, position_x + 0x80, position_y + 0x80, position_y - 0x80) & 0x8000) && (func_80029B00(0x60, 0x40, -0x40) != 0)) {
                    gActors[actor_index].state = 0x74;
                    Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1.0));
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
                    gActors[actor_index].var_158 = TO_FIXED(
                        Math_Atan2(
                            gActors[0].posX.raw - gActors[actor_index].posX.raw,
                            gActors[0].posY.raw - gActors[actor_index].posY.raw
                        )
                    );
                }
                break;
            case 0x30:
                if (gActors[actor_index].var_154 >= 0x15) {
                    gActors[actor_index].state = 0x70;
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
                }
                break;
            case 0x76:
                gActors[actor_index].state = 0x20;
                gActors[actor_index].unk_114 = 2.8f;
                break;
            }

            gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
        }
    }
}

void func_801B2D78_7C2F98(u16 actor_index) {
    func_801B2B14_7C2D34(actor_index);
    func_8007B73C(actor_index);

    switch (gActors[actor_index].state) {
    default:
        break;
    case 0:
        gActors[actor_index].state = 0x10;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 16:
        gActors[actor_index].state = 0x24;
        gActors[actor_index].unk_180 = gActors[actor_index].unk_178 - 0x1000;
        gActors[actor_index].var_160 = FIXED_UNIT(2.0);
        gActors[actor_index].unk_188 = Rand();
        break;
    case 37:
        if ((gActors[actor_index].unk_188 % 56) == 0) {
            if (func_80029B00(0x70, -0x60, -0xE0) != 0) {
                gActors[actor_index].state = 0x54;
                gActors[actor_index].var_154 = (s32)&func_8007A118;
            }
        }
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    gActors[actor_index].unk_188++;
}

void func_801B2EB4_7C30D4(u16 actor_index) {
    func_8007B73C(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x4011;
        gActors[actor_index].graphicIndex = 0x3036;
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(6.5);
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_154 = FIXED_UNIT(-520.0);
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 16:
        gActors[actor_index].state = 0x4011;
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    if (gActors[actor_index].posX.whole >= 0x161) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801B2F9C_7C31BC(u16 arg0) {
    func_801B0998_7C0BB8(arg0);
    OVERLAY1_DISPATCH_ACTOR[0](arg0);
}

void func_801B2FD8_7C31F8(u16 arg0) {
}

void func_801B2FE0_7C3200(u16 arg0) {
}

void func_801B2FE8_7C3208(u16 arg0) {
}

void func_801B2FF0_7C3210(u16 arg0) {
}

void func_801B2FF8_7C3218(u16 actor_index) {
    u32 delta;

    if (gActors[actor_index].var_158 >= 0x3140) {
        gActors[actor_index].rotateZ = 6.0f;
        delta = gActors[actor_index].var_158 - 0x3140;
        delta = delta * 0.0625;
        gActors[actor_index].posY.whole = gActors[actor_index].var_15C + delta - gScreenPosCurrentY.whole;
        return;
    }
    
    gActors[actor_index].rotateZ = 0.0f;
    gActors[actor_index].posY.whole = gActors[actor_index].var_15C - gScreenPosCurrentY.whole;
}

void func_801B3140_7C3360(u16 actor_index) {
    u16 particle_index = SpawnParticle_List_90C0_16(
        D_801B662C_7C684C, gActors[actor_index].posX.whole - 0x20,
        gActors[actor_index].posY.whole - 3,
        gActors[actor_index].posZ.whole + 1
    );

    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[particle_index].flags = ACTOR_FLAG_ENABLED;
        gActors[particle_index].var_154 = -8;
        gActors[particle_index].unk_164 = 0;
        gActors[particle_index].scaleX = 2.0f;
        gActors[particle_index].scaleY = 2.0f;
    }
}

void func_801B3204_7C3424(u16 actor_index) {
    u16 particle_index;

    if (!(gActiveFrames & 3)) {
        particle_index = SpawnParticle_List_90C0_16(
            gGraphicListBlank, gActors[actor_index].posX.whole - 0x20,
            gActors[actor_index].posY.whole - 0x10,
            gActors[actor_index].posZ.whole + 1
        );

        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_index].flags = ACTOR_FLAG_ENABLED;
            gActors[particle_index].graphicIndex = 0x1D8;
            gActors[particle_index].colorA = 0xC8;
            gActors[particle_index].var_154 = -6;
            gActors[particle_index].unk_164 = 0;
            gActors[particle_index].scaleX = 0.5f;
            gActors[particle_index].scaleY = 0.5f;
            gActors[particle_index].var_110 = 0.01f;
            gActors[particle_index].unk_114 = 0.01f;
            gActors[particle_index].unk_118 = 0.002f;
            gActors[particle_index].unk_11C = 0.002f;
        }
    }
}

void func_801B3308_7C3528(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    actor->var_158 = gScreenPosCurrentX.whole + actor->posX.whole;
    switch (actor->state) {
    case 0:
        actor->state++;
        actor->graphicFlags = ACTOR_GFLAG_ROTZ;
        actor->flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        actor->graphicIndex = 0x808;
        actor->health = 1;
        actor->unk_0DE = 6;
        actor->unk_0DF = 0x40;
        Actor_SetHitboxB(actor_index, 8);
        actor->var_154 = gScreenPosCurrentX.whole + actor->posX.whole;
        actor->var_15C = gScreenPosCurrentY.whole + actor->posY.whole;
        // fallthrough
    case 1:
        if (actor->flags_098 & ACTOR_FLAG3_UNK9) {
            actor->state++;
            D_800BE5F4.unk_00_u32 = 2;
            actor->velocityX.raw = FIXED_UNIT(8.0);
            func_801B3140_7C3360(actor_index);
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            Sound_PlaySfxAtActor2(SFX_0083, actor_index);
        }
        break;
    case 2:
        func_801B2FF8_7C3218(actor_index);
        func_801B3204_7C3424(actor_index);
        if (actor->var_158 >= (actor->var_154 + 0x130)) {
            actor->velocityX.raw = 0;
            gActors[0].flags_098 |= ACTOR_FLAG3_UNK16 | ACTOR_FLAG3_UNK1;
            gActors[0].unk_0DC = 0;
            gActors[0].unk_0DD = 0x12;
            gActors[0].pendingDamage = 0;
            gActors[0].unk_0F8.raw = FIXED_UNIT(16.0);
            gActors[0].unk_0FC.raw = FIXED_UNIT(12.0);
            D_800BE5F4.unk_00_u32 = 5;
            actor->velocityX.raw = FIXED_UNIT(-1.0);
            Sound_StopSfx(SFX_0083);
            actor->state++;
        }
        break;
    case 3:
        func_801B2FF8_7C3218(actor_index);
        if (actor->var_154 >= (gScreenPosCurrentX.whole + actor->posX.whole)) {
            actor->state = 1;
            actor->velocityX.raw = 0;
        }
        break;
    }
    actor->flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B3550_7C3770(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x808;
        if (gActors[actor_index].var_0D8 != 0) {
            gActors[actor_index].posZ.whole = 0x5C;
            return;
        }
        gActors[actor_index].posZ.whole = -0x60;
    case 1:
        return;
    }
}

void func_801B35DC_7C37FC(u16 actor_index) {
    u16 position = (gActors[actor_index].var_150 & 0xF0) >> 4;
    if (position == 0) {
        gActors[actor_index].posZ.whole = 1;
        return;
    }

    if (position >= 8) {
        position++;
    }
    else {
        position--;
    }

    gActors[actor_index].posZ.whole = (position * 0xC) - 0x60;
}

void func_801B3674_7C3894(u16 actor_index) {
    if (gActors[actor_index].var_0D8 != 0) {
        gActors[actor_index].graphicIndex = 0x804;
    }
    else {
        gActors[actor_index].graphicIndex = 0x800;
    }

    if (!(gActors[actor_index].var_150 & 1)) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        gActors[actor_index].unk_0DE = 5;
        gActors[actor_index].unk_0DF = 0x40;
        Actor_SetHitboxB(actor_index, 0x10);
    }
}

void func_801B3714_7C3934(u16 actor_index) {
    Actor_SetHitboxB(actor_index, 8);
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBX1 = 0x10;
    gActors[actor_index].hitboxBX0 = 0;
}

void func_801B3778_7C3998(u16 parent_index, u16 variant) {
    u16 actor_index = Actor_RangeFindInactive(0x70, 0x7A);
    if (actor_index != 0) {
        if (variant != 0) {
            gActors[actor_index].actorType = 0x2917;
        }
        else {
            gActors[actor_index].actorType = 0x2916;
        }

        Actor_Initialize(actor_index);
        gActors[actor_index].var_154 = parent_index;

        if (gActors[parent_index].graphicIndex == 0x800) {
            gActors[actor_index].posX.whole = gActors[parent_index].posX.whole - 0x1E;
            gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + 1;
            gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + 1;
            gActors[actor_index].var_0D8 = 0;
            return;
        }

        gActors[actor_index].posX.whole = gActors[parent_index].posX.whole - 0x14;
        gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + 0x18;
        gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + 1;
        gActors[actor_index].var_0D8 = 1;
    }
}

void func_801B38AC_7C3ACC(u16 actor_index) {
    gActors[actor_index].var_158--;
    if (gActors[actor_index].var_150 & 1) {
        if (gActors[actor_index].var_158 <= 0) {
            gActors[actor_index].var_158 = Rand() * 2;
            func_801B3778_7C3998(actor_index, 1);
        }
    }
    else if (gActors[actor_index].var_158 <= 0) {
        gActors[actor_index].var_158 = Rand() + 0xF0;
        func_801B3778_7C3998(actor_index, 0);
    }
}

void func_801B3978_7C3B98(u16 arg0) {
    f32 temp_f0;
    f32 temp_f0_2;

    switch (gActors[arg0].base_0F8_s32[0x19]) {
    case 0:
        break;
    case 1:
        gActors[arg0].pos[1].whole = Math_ApproachS32(gActors[arg0].base_0F8_s32[0x1A], gActors[arg0].base_0F8_s32[0x1B] + 0x20, 2) - gScreenPosCurrentY.whole;
        gActors[arg0].scaleX = Math_ApproachF32(gActors[arg0].scaleX, 0.5f, 0.2f);
        temp_f0 = Math_ApproachF32(gActors[arg0].scaleY, 2.0f, 0.3f);
        gActors[arg0].scaleY = temp_f0;
        if (temp_f0 == 2.0) {
            gActors[arg0].base_0F8_s32[0x19] += 1;
        }
        break;
    case 2:
        gActors[arg0].pos[1].whole = Math_ApproachS32(gActors[arg0].base_0F8_s32[0x1A], gActors[arg0].base_0F8_s32[0x1B], 2) - gScreenPosCurrentY.whole;
        gActors[arg0].scaleX = Math_ApproachF32(gActors[arg0].scaleX, 1.0f, 0.2f);
        temp_f0_2 = Math_ApproachF32(gActors[arg0].scaleY, 1.0f, 0.3f);
        gActors[arg0].scaleY = temp_f0_2;
        if (temp_f0_2 == 1.0) {
            gActors[arg0].base_0F8_s32[0x19] = 0;
        }
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
        if (gActiveFrames & 0xF) {
            func_8003F05C(0.7f, gActors[arg0].pos[0].whole + ((Rand() - 0x80) * 0.21875), ((gActors[arg0].pos[1].whole - 0x80) * 0.125) - 8.0, gActors[arg0].pos[2].whole);
            gActors[arg0].base_0F8_s32[0x19] += 1;
        }
        break;
    case 11:
        gActors[arg0].base_0F8_s32[0x19] = 0;
        break;
    }

    if (gActors[arg0].state == 4) {
        if (gActors[arg0].velocityX.raw < 0) {
            gActors[arg0].rotateZ -= 16.0f;
        }
        else {
            gActors[arg0].rotateZ += 16.0f;
        }
    }
}

void func_801B3C40_7C3E60(u16 arg0) {
    u16 var_v0;

    if (gActors[arg0].var_150 & 0x100) {
        var_v0 = SpawnGemActor(arg0, 0x32U, 0U);
    }
    else {
        var_v0 = SpawnGemActor(arg0, 0x30U, 0U);
    }

    gActors[var_v0].posX.whole += 0x10;
    gActors[var_v0].posY.whole += 0x20;
}

void func_801B3CF0_7C3F10(u16 actor_index) {
    Actor* actor;
    u32 enabled_flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
    u32 old_var_154;
    s32 new_var_154;
    u32 flags;
    u16 result;

    actor = &gActors[actor_index];
    actor->var_160 = gScreenPosCurrentY.whole + actor->posY.whole;

    switch (actor->state) {
    case 0:
        actor->state++;
        actor->var_150 = actor->var_110;
        actor->var_158 = Rand();
        func_801B3674_7C3894(actor_index);
        func_801B35DC_7C37FC(actor_index);
        func_801B3714_7C3934(actor_index);
        actor->unk_164 = gScreenPosCurrentY.whole + actor->posY.whole;
        // fallthrough
    case 1:
        if (actor->flags_098 & ACTOR_FLAG3_UNK9) {
            actor->state++;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }

        func_801B38AC_7C3ACC(actor_index);
        break;
    case 2: {
        flags = actor->flags_098;

        if (flags & ACTOR_FLAG3_UNK9) {
            if (flags & ACTOR_FLAG3_UNK17) {
                if (func_800486F4() == 0) {
                    if (actor->var_15C == 0) {
                        actor->var_154 += 1;
                        actor->var_15C = 1;
                        if (actor->var_154 >= 3) {
                            actor->state = 3;\
                            actor->flags = enabled_flags;
                            actor->graphicIndex += 2;
                            func_801B3C40_7C3E60(actor_index);
                            actor->var_15C = 3;
                            actor->unk_0DE = 1;
                            actor->parentIndex = 0;
                            actor->unk_104 = actor->posX.raw;
                            actor->unk_108 = actor->posY.raw;
                            actor->unk_10C = actor->posZ.raw;
                            gActors[0].stateUpper = 0;
                            gActors[0].parentIndex = actor_index;
                            gPlayerData.unk_00[0].raw = gActors[0].posX.raw - gActors[actor_index].posX.raw;
                            gPlayerData.unk_00[1].raw = gActors[0].posY.raw - gActors[actor_index].posY.raw;
                            gActors[0].unk_140_u16[1] = 0;
                            gActors[0].velocityY.raw = FIXED_UNIT(2.5);
                            Sound_PlaySfxAtActor2(SFX_SQUEAK_005C, actor_index);
                            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
                            break;
                        }
                        Sound_PlaySfxAtActor2(SFX_0115, actor_index);
                    }
                }
            }
        }
        else {
            actor->var_154 = 0;
            actor->state = 1;
        }

        func_801B38AC_7C3ACC(actor_index);
        break;
    }
    case 3:
        result = func_800291AC(actor_index, 4, enabled_flags, 4, enabled_flags);
        switch (result) {
        case 0:
        case 1:
            break;
        case 2:
            func_801B3714_7C3934(actor_index);
            break;
        case 3:
            func_801B3714_7C3934(actor_index);
            break;
        }
        break;
    case 4:
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(3.0 / 256));
        if (actor->velocityY.raw >= (FIXED_UNIT(-8.0) + 1)) {
            actor->velocityY.raw -= FIXED_UNIT(48.0 / 256);
        }

        if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            actor->flags = ACTOR_FLAG_NONE;
            func_8003F138(1.0f, actor->posX.whole, actor->posY.whole, actor->posZ.whole);
            Sound_PlaySfxAtActor2(SFX_BOOM_0093, actor_index);
        }
        break;
    }
    func_801B3978_7C3B98(actor_index);
    actor->flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B404C_7C426C(u16 arg0) {
    u16 temp_v0;

    gActors[arg0].palette_18C = gParticlePalettes[D_801B6660_7C6880[gActiveFrames & 0xF]];
    gActors[arg0].scaleX = Math_ApproachF32(gActors[arg0].scaleX, 2.0f, 0.008f);
    gActors[arg0].scaleY = gActors[arg0].scaleX;
    gActors[arg0].colorA = Math_ApproachS32(gActors[arg0].colorA, 0xB4, 1);
    if (!(gActiveFrames & 7) && (gActors[arg0].var_150 >= 0x51)) {
        temp_v0 = SpawnParticle_List_90C0_16(D_801B6680_7C68A0, gActors[arg0].posX.whole, gActors[arg0].posY.whole, gActors[arg0].posZ.whole - 1);
        if (temp_v0 != 0) {
            gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
            gActors[temp_v0].scaleX = gActors[arg0].unk_114;
            gActors[temp_v0].scaleY = gActors[arg0].unk_114;
            gActors[temp_v0].colorA = 1;
            gActors[temp_v0].var_160 = Rand() * FIXED_UNIT(64.0);
            gActors[temp_v0].var_150 = FIXED_UNIT(-4.0);
            gActors[temp_v0].var_154 = 1;
            gActors[temp_v0].unk_164 = 1;
            gActors[temp_v0].var_110 = -0.01f;
            gActors[temp_v0].unk_114 = -0.01f;
            gActors[temp_v0].unk_118 = -0.004f;
            gActors[temp_v0].unk_11C = -0.004f;
            gActors[temp_v0].unk_148 = 60.0f;
        }
    }

    gActors[arg0].unk_114 = Math_ApproachF32(gActors[arg0].unk_114, 0.0f, 0.008f);
}

s32 func_801B4200_7C4420(u16 arg0) {
    s32 var_v1;
    u16 temp_v0_2;

    var_v1 = 0;
    if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK1) {
        temp_v0_2 = func_8003F9E0(0.7f, gActors[arg0].pos[0].whole, gActors[arg0].pos[1].whole, gActors[arg0].pos[2].whole);
        var_v1 = 1;
        if (temp_v0_2 != 0) {
            gActors[temp_v0_2].palette_18C = PALETTE_8022D568;
        }
    }

    return var_v1;
}

s32 func_801B42AC_7C44CC(u16 arg0) {
    Actor* temp_v0;
    s32 temp_a0;
    s32 temp_a1;
    s32 var_v1;

    temp_v0 = &gActors[arg0];
    var_v1 = 0;
    temp_a1 = temp_v0->velocityX.raw;

    if ((temp_a1 < 0) && (temp_v0->flags_098 & ACTOR_FLAG3_UNK2)) {
        var_v1 = 1;
    }

    if ((temp_a1 > 0) && (temp_v0->flags_098 & ACTOR_FLAG3_UNK3)) {
        var_v1 = 1;
    }

    temp_a0 = temp_v0->velocityY.raw;

    if ((temp_a0 < 0) && (temp_v0->flags_098 & ACTOR_FLAG3_UNK5)) {
        var_v1 = 1;
    }

    if ((temp_a0 > 0) && (temp_v0->flags_098 & ACTOR_FLAG3_UNK4)) {
        var_v1 = 1;
    }

    return var_v1;
}

void func_801B4370_7C4590(u16 actor_index) {
    u16 new_actor_index;

    gActors[actor_index].palette_18C = gParticlePalettes[D_801B6660_7C6880[gActiveFrames & 0xF]];
    if (!(gActiveFrames & 0xF)) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            0xD2, gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole + 1
        );

        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].colorA = gActors[actor_index].colorA;
            gActors[new_actor_index].scaleX = gActors[actor_index].scaleX;
            gActors[new_actor_index].scaleY = gActors[actor_index].scaleY;
            gActors[new_actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
            gActors[new_actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw;
            gActors[new_actor_index].unk_148 = 18.0f;
            gActors[new_actor_index].var_110 = 0.04f;
            gActors[new_actor_index].unk_114 = 0.3f;
            gActors[new_actor_index].unk_118 = 0.004f;
            gActors[new_actor_index].unk_11C = -0.04f;
            gActors[new_actor_index].var_154 = -1;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].var_160 = TO_FIXED(gActors[actor_index].rotateZ * 2.84444444);
        }
    }

    if (!(gActiveFrames & 7)) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            0xCE, gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole + 2
        );

        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].colorA = 0xC8;
            gActors[new_actor_index].scaleX = 0.2f;
            gActors[new_actor_index].scaleY = 0.3f;
            gActors[new_actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
            gActors[new_actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw * 0.5;
            gActors[new_actor_index].var_154 = -0xA;
            gActors[new_actor_index].unk_164 = 0;
            gActors[new_actor_index].var_110 = 0.01f;
            gActors[new_actor_index].unk_114 = 0.01f;
            gActors[new_actor_index].unk_118 = 0.001f;
            gActors[new_actor_index].unk_11C = 0.001f;
            gActors[new_actor_index].unk_148 = 20.0f;
            gActors[new_actor_index].var_160 = TO_FIXED(gActors[actor_index].rotateZ * 2.84444444);
        }
    }
}

void func_801B46AC_7C48CC(u16 arg0) {
    u16 temp_v0;

    if (!(gActiveFrames & 0xF)) {
        temp_v0 = SpawnParticle_Image_90C0_16(
            0xD2U,
            gActors[arg0].posX.whole,
            gActors[arg0].posY.whole,
            gActors[arg0].posZ.whole + 1
        );

        if (temp_v0 != 0) {
            gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
            gActors[temp_v0].colorA = gActors[arg0].colorA;
            gActors[temp_v0].scaleX = gActors[arg0].scaleX;
            gActors[temp_v0].scaleY = gActors[arg0].scaleY;
            gActors[temp_v0].velocityX.raw = -gActors[arg0].velocityX.raw;
            gActors[temp_v0].velocityY.raw = -gActors[arg0].velocityY.raw;
            gActors[temp_v0].unk_148 = 18.0f;
            gActors[temp_v0].var_110 = 0.04f;
            gActors[temp_v0].unk_114 = 0.3f;
            gActors[temp_v0].unk_118 = 0.004f;
            gActors[temp_v0].unk_11C = -0.04f;
            gActors[temp_v0].var_154 = -1;
            gActors[temp_v0].unk_164 = -1;
            gActors[temp_v0].var_160 = TO_FIXED(gActors[arg0].rotateZ * 2.84444444);
        }
    }
}

void func_801B482C_7C4A4C(u16 arg0) {
    gActors[arg0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
    gActors[arg0].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED;
    gActors[arg0].graphicIndex = 0x168;
    gActors[arg0].health = 0;
    gActors[arg0].unk_0DF = 0x20;
    gActors[arg0].damage = 0x14;
    gActors[arg0].unk_0DA = 1;
    gActors[arg0].unk_0DB = 0xB;
    gActors[arg0].unk_0F8.raw = FIXED_UNIT(2.0);
    gActors[arg0].unk_0FC.raw = FIXED_UNIT(4.0);
    gActors[arg0].scaleX = 1.0f;
    gActors[arg0].scaleY = 0.5f;
    Actor_SetHitboxA(arg0, 4);
    Actor_SetHitboxB(arg0, 5);

    if (gActors[arg0].var_0D8 != 0) {
        gActors[arg0].velocityX.raw = FIXED_UNIT(-1.4142);
        gActors[arg0].velocityY.raw = FIXED_UNIT(1.4142);
    }
    else {
        gActors[arg0].velocityX.raw = FIXED_UNIT(-2.0);
        gActors[arg0].velocityY.raw = 0;
    }

    gActors[arg0].var_150 = 0xB4;
    func_8003ED48(arg0, 0, gActors[arg0].posX.whole, gActors[arg0].posY.whole, gActors[arg0].posZ.whole);
}

void func_801B4950_7C4B70(u16 arg0) {
    f32 scale;

    switch (gActors[arg0].state) {
    case 0:
        gActors[arg0].state++;
        gActors[arg0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[arg0].flags = ACTOR_FLAG_ENABLED;
        gActors[arg0].graphicIndex = 0x168;
        gActors[arg0].colorA = 0x50;
        gActors[arg0].var_150 = 0xB4;
        gActors[arg0].scaleX = 0.1f;
        gActors[arg0].scaleY = 0.1f;
        gActors[arg0].unk_114 = 3.0f;
        // fallthrough
    case 1:
        func_801B404C_7C426C(arg0);
        gActors[arg0].var_150--;
        if (gActors[arg0].var_150 <= 0) {
            gActors[arg0].state++;
        }

        if (gActors[gActors[arg0].var_154].state >= 2) {
            gActors[arg0].flags = ACTOR_FLAG_NONE;
        }

        break;
    case 2:
        scale = Math_ApproachF32(gActors[arg0].scaleX, 0.0f, 0.1f);
        gActors[arg0].scaleX = scale;
        gActors[arg0].scaleY = scale;
        if (scale == 0.0f) {
            gActors[arg0].state++;
            func_801B482C_7C4A4C(arg0);
            Sound_PlaySfxAtActor2(SFX_SHOT_0054, arg0);
        }

        break;
    case 3:
        gActors[arg0].rotateZ = INDEX_TO_DEG(Math_Atan2(gActors[arg0].velocityX.raw, gActors[arg0].velocityY.raw) & COS_MASK);
        func_801B4370_7C4590(arg0);
        if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[arg0].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        }

        if (func_801B4200_7C4420(arg0) != 0) {
            gActors[arg0].flags = ACTOR_FLAG_NONE;
        }

        if (func_801B42AC_7C44CC(arg0) != 0) {
            gActors[arg0].flags = ACTOR_FLAG_NONE;
            func_8003F7A0(1.5f, gActors[arg0].posX.whole, gActors[arg0].posY.whole, gActors[arg0].posZ.whole);
        }

        gActors[arg0].var_150--;
        if (gActors[arg0].var_150 <= 0) {
            gActors[arg0].flags = ACTOR_FLAG_NONE;
            func_8003F7A0(1.5f, gActors[arg0].posX.whole, gActors[arg0].posY.whole, gActors[arg0].posZ.whole);
        }

        break;
    }
    gActors[arg0].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B4BCC_7C4DEC(u16 arg0) {
    u16 temp_s1 = arg0;
    switch (gActors[temp_s1].state) {
    case 0:
        gActors[temp_s1].state++;
        gActors[temp_s1].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[temp_s1].flags = ACTOR_FLAG_ENABLED;
        gActors[temp_s1].graphicIndex = 0xD2;
        gActors[temp_s1].var_150 = 0xB4;
        func_8003ED48(temp_s1, 0, gActors[temp_s1].posX.whole, gActors[temp_s1].posY.whole, gActors[temp_s1].posZ.whole);

        if (gActors[temp_s1].var_0D8 != 0) {
            gActors[temp_s1].velocityX.raw = FIXED_UNIT(-1.4142);
            gActors[temp_s1].velocityY.raw = FIXED_UNIT(1.4142);
        }
        else {
            gActors[temp_s1].velocityX.raw = FIXED_UNIT(-2.0);
            gActors[temp_s1].velocityY.raw = 0;
        }

        gActors[temp_s1].var_150 = 0xB4;
        func_8003ED48(temp_s1, 0, gActors[temp_s1].posX.whole, gActors[temp_s1].posY.whole, gActors[temp_s1].posZ.whole);
        Sound_PlaySfxAtActor2(SFX_SHOT_0054, temp_s1);
        // fallthrough
    case 1:
        gActors[temp_s1].rotateZ = INDEX_TO_DEG(Math_Atan2(gActors[temp_s1].velocityX.raw, gActors[temp_s1].velocityY.raw) & COS_MASK);
        func_801B46AC_7C48CC(temp_s1);
        gActors[temp_s1].var_150--;

        if (gActors[temp_s1].var_150 <= 0) {
            gActors[temp_s1].flags = ACTOR_FLAG_NONE;
            func_8003F7A0(1.5f, gActors[temp_s1].posX.whole, gActors[temp_s1].posY.whole, gActors[temp_s1].posZ.whole);
        }

        break;
    }
    gActors[temp_s1].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

s32 func_801B4D60_7C4F80(u16 arg0) {
    if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK0) {
        gActors[arg0].velocityX.raw = -gActors[arg0].velocityX.raw / 2;
        gActors[arg0].velocityY.raw = -gActors[arg0].velocityY.raw / 2;
        gActors[arg0].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        return 1;
    }
    return 0;
}

s32 func_801B4DF8_7C5018(u16 arg0) {
    s32 result = 0;
    s32 velocity = gActors[arg0].velocityX.raw;

    if ((velocity != 0) && (gActors[arg0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2))) {
        gActors[arg0].velocityX.raw = -velocity / 2;
        gActors[arg0].velocityY.raw /= 2;
        result = 1;
    }

    if ((gActors[arg0].velocityY.raw > 0) && (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK4)) {
        result = 2;
        gActors[arg0].velocityX.raw /= 2;
        gActors[arg0].velocityY.raw = -gActors[arg0].velocityY.raw / 2;
    }

    if ((gActors[arg0].velocityY.raw < 0) && (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[arg0].var_154++;
        if (gActors[arg0].var_154 >= 3) {
            gActors[arg0].flags &= ~ACTOR_FLAG_UNK17;
            gActors[arg0].flags |= ACTOR_FLAG_UNK16;
            gActors[arg0].velocityX.raw = 0;
            gActors[arg0].velocityY.raw = 0;
            gActors[arg0].rotateZ = 0.0f;
        }
        else {
            gActors[arg0].velocityX.raw /= 2;
            gActors[arg0].velocityY.raw = -gActors[arg0].velocityY.raw / 2;
            Sound_PlaySfxAtActor2(SFX_HIT_002D, arg0);
        }
        result = 3;
    }
    return result;
}

s32 func_801B4F90_7C51B0(u16 arg0) {
    if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[arg0].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ENABLED;
        gActors[arg0].velocityX.raw = 0;
        gActors[arg0].velocityY.raw = 0;
        gActors[arg0].base_0F8_s32[0x17] = 0;
        gActors[arg0].rotateX = 0.0f;
        return 1;
    }
    return 0;
}

void func_801B5000_7C5220(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 velocity_y;
    u16 result;

    switch (actor->state) {
    case 0:
        actor->state++;
        actor->var_150 = actor->var_110;
        actor->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        actor->flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        actor->graphicIndex = 0x80A;
        Actor_SetHitboxA(actor_index, 7);
        Actor_SetHitboxB(actor_index, 8);
        actor->damage = 0x14;
        actor->var_154 = 2;
        // fallthrough
    case 1:
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(2.0 / 256));
        velocity_y = actor->velocityY.raw;
        if (velocity_y >= (FIXED_UNIT(-8.0) + 1)) {
            actor->velocityY.raw = velocity_y - FIXED_UNIT(32.0 / 256);
        }
        func_801B4D60_7C4F80(actor_index);
        func_801B4DF8_7C5018(actor_index);
        if (func_801B4F90_7C51B0(actor_index) != 0) {
            actor->state++;
        }
        break;
    case 2:
        result = func_800291AC(
            actor_index,
            1U,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED,
            1U,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED
        );

        switch (result) {
        case 0:
        case 1:
            break;
        case 2:
            Actor_SetHitboxB(actor_index, 8);
            actor->var_154 = 1;
            break;
        case 3:
            Actor_SetHitboxB(actor_index, 8);
            actor->var_154 = 2;
            break;
        }
        break;
    }

    actor->flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);

    switch (actor->var_154) {
    case 0:
        break;
    case 1:
        if (actor->velocityX.raw < 0) {
            actor->rotateZ -= 16.0f;
        }
        else {
            actor->rotateZ += 16.0f;
        }
        break;
    default:
        actor->rotateZ = actor->rotateZ + (-FROM_FIXED((f64)actor->velocityX.raw) * 7.161972439);
        break;
    }
}

void func_801B527C_7C549C(u16 arg0) {
    u16 temp_a1;
    u16 var_v0;

    temp_a1 = var_v0 = gActors[arg0].base_0F8_s32[0x16] & 0xF;

    if (temp_a1 == 0) {
        gActors[arg0].pos[2].whole = 1;
    }
    else {
        if (temp_a1 >= 8) {
            var_v0++;
        }
        else {
            var_v0--;
        }
        gActors[arg0].pos[2].whole = (var_v0 * 0xC) - 0x60;
    }
}

void func_801B530C_7C552C(u16 arg0) {
    switch (gActors[arg0].state) {
    case 1:
        break;
    case 0:
        gActors[arg0].base_0F8_s32[0x16] = gActors[arg0].var_110;
        gActors[arg0].state++;
        gActors[arg0].flags = ACTOR_FLAG_ENABLED;
        gActors[arg0].graphicIndex = 0x80A;
        func_801B527C_7C549C(arg0);
        break;
    }

    gActors[arg0].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B53D4_7C55F4(u16 arg0) {
    switch (gActors[arg0].state) {
    case 3:
        break;
    case 0:
        gActors[arg0].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[arg0].var_154 = 0x180;
        gActors[arg0].var_158 = 0;
        gActors[arg0].var_15C = 0;
        gActors[arg0].state++;
        break;
    case 1:
        if (gActors[arg0].var_154-- == 0) {
            gActors[arg0].state++;
        }
        break;
    case 2: {
        u16 start;
        u16 index;

        start = arg0 + 1;
        if (!(gActiveFrames & 0x3F)) {
            index = Actor_RangeFindInactive(start, arg0 + 4);
            if (index != 0) {
                gActors[index].actorType = 0x2910;
                Actor_Initialize(index);
                gActors[index].posX.whole = 0xB0;
                gActors[index].posY.whole = ((Rand() & 0x70) * 4 - 0xC0) / 3;
                gActors[index].posZ.whole = -0x10;
            }
        }
        else if (gScreenPosCurrentX.whole >= 0x1500) {
            gActors[arg0].state++;
        }
        break;
    }
    }
}

void func_801B5568_7C5788(u16 actor_index) {
    s32 angle_index;
    u16 particle_index;

    if (!(gActiveFrames & 3)) {
        particle_index = SpawnParticle_List_90C0_16(
            D_800E151C,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole + 1
        );

        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) + (ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8);
            gActors[particle_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[particle_index].scaleX = 0.8f;
            gActors[particle_index].scaleY = 0.8f;
            gActors[particle_index].var_160 = TO_FIXED(DEG_TO_INDEX(gActors[actor_index].rotateZ));
            gActors[particle_index].var_110 = 0.05f;
            gActors[particle_index].unk_118 = 0.05f;
            gActors[particle_index].unk_114 = -0.2f;
            Actor_SetColorRgb(particle_index, 0x4F);

            angle_index = DEG_TO_INDEX(gActors[actor_index].rotateZ);
            gActors[particle_index].unk_130 = actor_index;
            gActors[particle_index].unk_14C = gActors[actor_index].actorType;
            gActors[particle_index].unk_134 = COS(angle_index) * -18.0f;
            gActors[particle_index].var_158 = COS(angle_index) * FIXED_UNIT(-8.0);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[particle_index].var_158 = -gActors[particle_index].var_158;
                gActors[particle_index].unk_134 *= -1.0f;
            }

            gActors[particle_index].unk_138 = SIN(angle_index) * -18.0f;
            gActors[particle_index].unk_13C_f32 = 1.0f;
            gActors[particle_index].var_15C = SIN(angle_index) * FIXED_UNIT(-8.0);
            gActors[particle_index].var_154 = -0x14;
            gActors[particle_index].pfn_17C = func_80030A24;
            gActors[particle_index].unk_104 = -0x30;
            gActors[particle_index].unk_148 = 3.0f;
        }
    }
}

void func_801B583C_7C5A5C(u16 arg0) {
    s32 angle;

    switch (gActors[arg0].state) {
    case 0:
        gActors[arg0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8;
        gActors[arg0].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ENABLED;
        gActors[arg0].graphicIndex = 0x25C;
        Actor_SetHitboxA(arg0, 1);
        gActors[arg0].hitboxAY1 = 0;
        Actor_SetHitboxB(arg0, 0xC);
        gActors[arg0].scaleX = 1.5f;
        gActors[arg0].scaleY = 1.2f;
        gActors[arg0].health = 1;
        gActors[arg0].unk_0CE = 9;
        gActors[arg0].unk_0DA = 0x84;
        gActors[arg0].unk_0DB = 0xA;
        gActors[arg0].unk_0F8.raw = FIXED_UNIT(-5.0);
        gActors[arg0].unk_0FC.raw = FIXED_UNIT(4.0);
        gActors[arg0].damage = 50;

        if (gActors[arg0].flags & ACTOR_FLAG_FLIPPED) {
            gActors[arg0].unk_16C = FIXED_UNIT(1.0);
        }
        else {
            gActors[arg0].unk_16C = FIXED_UNIT(511.0);
        }

        gActors[arg0].velocityX.raw = ((Rand() & 0x70) * FIXED_UNIT(1.0 / 256)) + FIXED_UNIT(-0.75);
        gActors[arg0].state++;
        break;
    case 1:
        if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[arg0].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[arg0].flags = ACTOR_FLAG_UNK8 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ENABLED;
            Actor_SetHitboxA(arg0, 8);
            gActors[arg0].velocityX.raw = 0;
            gActors[arg0].velocityY.raw = 0;
            Sound_PlaySfxAtActor2(SFX_GRAB_0030, arg0);
            gActors[arg0].state++;
        }
        else {
            func_801B5568_7C5788(arg0);
        }

        break;
    case 2:
        if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[arg0].posX.raw = gActors[arg0].unk_104;
            gActors[arg0].posY.raw = gActors[arg0].unk_108;
            gActors[arg0].posZ.raw = gActors[arg0].unk_10C;

            if (gActors[0].unk_140_u8[0] == 0) {
                if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                    angle = FIXED_UNIT(257.0);
                }
                else {
                    angle = FIXED_UNIT(255.0);
                }
            }
            else if ((gActors[0].unk_140_u8[0] == 4) && (gActors[0].flags & ACTOR_FLAG_FLIPPED)) {
                angle = FIXED_UNIT(511.0);
            }
            else {
                angle = FIXED_UNIT(1.0);
            }

            gActors[arg0].unk_16C = func_800298D0(angle, gActors[arg0].unk_16C, FIXED_UNIT(40.0));
        }
        else {
            gActors[arg0].flags = ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ENABLED;
            gActors[arg0].state = 3;
            gActors[arg0].damage = 0x100;
            gActors[arg0].posZ.whole = 0x22;

            if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK10) {
                gActors[arg0].velocityX.raw = gActors[arg0].unk_0F8.raw;
                gActors[arg0].velocityY.raw = gActors[arg0].unk_0FC.raw;
                gActors[arg0].unk_16C = TO_FIXED(
                    Math_Atan2(
                        gActors[arg0].unk_0F8.raw,
                        gActors[arg0].unk_0FC.raw
                    )
                );
                Sound_PlaySfxAtActor2(SFX_0074, arg0);
            }
            else {
                angle = FROM_FIXED(gActors[arg0].unk_16C);
                gActors[arg0].velocityX.raw = COS(angle) * FIXED_UNIT(8.0);
                gActors[arg0].velocityY.raw = SIN(angle) * FIXED_UNIT(8.0);
            }

        }
        func_801B5568_7C5788(arg0);
        break;
    case 3:
        func_801B5568_7C5788(arg0);
        if ((gActors[arg0].posX.whole < -0xC0) || (gActors[arg0].posX.whole >= 0xC1) ||
            (gActors[arg0].posY.whole < -0x90) || (gActors[arg0].posY.whole >= 0x91)) {
            gActors[arg0].flags = ACTOR_FLAG_NONE;
        }
        break;
    }

    if ((gActors[0x70].var_158 == 0) && (gActors[arg0].unk_170 == 0)) {
        if ((gActors[arg0].flags_098 & ACTOR_FLAG3_UNK9) &&
            (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK17)) {
            gActors[arg0].unk_170 = 1;
            gActors[0x70].var_15C++;
            if (gActors[0x70].var_15C == 3) {
                SpawnGemActor(arg0, 0x32, 0);
                gActors[0x70].var_158 = 1;
            }
        }
    }

    if ((gActors[arg0].flags_098 & ACTOR_FLAG3_UNK0) || (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK1)) {
        u16 particle_index;

        Sound_PlaySfxAtActor2(SFX_BOOM_0043, arg0);
        gActors[arg0].var_110 = (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK0) ? 1.0f : 0.5f;
        gActors[arg0].flags = ACTOR_FLAG_NONE;
        particle_index = SpawnParticle_Image_90C0_16(0x168, gActors[arg0].posX.whole, gActors[arg0].posY.whole, 0x22);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            gActors[particle_index].var_154 = -0x20;
            gActors[particle_index].palette_18C = D_800D84E8;
            gActors[particle_index].velocityX.raw = FIXED_UNIT(11.0);
            gActors[particle_index].var_158 = FIXED_UNIT(-64.0 / 256);
            gActors[particle_index].velocityZ.raw = FIXED_UNIT(1.0);
            gActors[particle_index].scaleX = gActors[arg0].var_110 * 1.5;
            gActors[particle_index].scaleY = gActors[arg0].var_110 * 1.5;
            gActors[particle_index].var_110 = gActors[arg0].var_110 * 0.23;
            gActors[particle_index].unk_114 = gActors[arg0].var_110 * 0.23;
        }

        particle_index = SpawnParticle_List_90C0_16(D_800E14E8, gActors[arg0].posX.whole, gActors[arg0].posY.whole, 0x20);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8;
            gActors[particle_index].var_154 = 0x10;
            gActors[particle_index].unk_164 = -3;
            gActors[particle_index].velocityX.raw = FIXED_UNIT(11.0);
            gActors[particle_index].var_158 = FIXED_UNIT(-64.0 / 256);
            gActors[particle_index].velocityZ.raw = FIXED_UNIT(1.0);
            gActors[particle_index].scaleX = gActors[arg0].var_110 * 1.5;
            gActors[particle_index].scaleY = gActors[arg0].var_110 * 1.5;
            gActors[particle_index].var_110 = gActors[arg0].var_110 * 0.01;
            gActors[particle_index].unk_114 = gActors[arg0].var_110 * 0.01;
        }

        particle_index = SpawnParticle_Image_90C0_16(0x15E, gActors[arg0].posX.whole, gActors[arg0].posY.whole, 0x21);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            Actor_SetColorRgb(particle_index, 0x7F);
            gActors[particle_index].var_154 = -0xA;
            gActors[particle_index].palette_18C = PALETTE_8022D528;
            gActors[particle_index].velocityX.raw = FIXED_UNIT(11.0);
            gActors[particle_index].var_158 = FIXED_UNIT(-64.0 / 256);
            gActors[particle_index].velocityZ.raw = FIXED_UNIT(1.0);
            gActors[particle_index].var_110 = gActors[arg0].var_110 * 0.14;
            gActors[particle_index].unk_114 = gActors[arg0].var_110 * 0.14;
        }
    }
    else {
        if (gActors[arg0].graphicFlags & ACTOR_GFLAG_ROTZ) {
            gActors[arg0].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[arg0].unk_16C));
        }
        gActors[arg0].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    }
}

void func_801B5FB0_7C61D0(u16 actor_index) {
    u16 temp;

    if ((gActors[actor_index].posX.whole < -0x100) ||
        (gActors[actor_index].posX.whole >= 0x101)) {
        return;
    }

    func_8007B73C(actor_index);
    temp = func_80029FB8(
        actor_index, gActors[actor_index].unk_170 - 0x80,
        gActors[actor_index].unk_170 + 0x80,
        gActors[actor_index].unk_174 + 0x80,
        gActors[actor_index].unk_174 - 0x80
    );

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x10;
        gActors[actor_index].unk_128 = 0.0f;
        break;
    case 0x10:
        if (!(temp & 0x8000) &&
            (func_80029B00(0x60, 0x40, -0x40) != 0)) {
            gActors[actor_index].state = 0x74;
            Actor_SetVelocityXAbs(actor_index, FIXED_UNIT(-1.0));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
            gActors[actor_index].var_158 = TO_FIXED(
                Math_Atan2(
                    gActors[0].posX.raw - gActors[actor_index].posX.raw,
                    gActors[0].posY.raw - gActors[actor_index].posY.raw
                )
            );
        }
        break;
    case 0x76:
        if ((gActors[actor_index].posX.whole >= -0x9F) &&
            (gActors[actor_index].posX.whole < 0xA0) &&
            (gActors[actor_index].posY.whole >= -0x6F) &&
            (gActors[actor_index].posY.whole < 0x70)) {
            Sound_PlaySfxAtActor2(SFX_BOOM_0055, actor_index);
        }
        gActors[actor_index].state = 0x20;
        gActors[actor_index].unk_114 = 2.8f;
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B616C_7C638C(u16 arg0) {
    s16 column;
    s16 row;
    s16 source_row;
    u32 switch_state;
    u16 state_home;

    if (gActors[arg0].state) {
    }

    state_home = gActors[arg0].state;
    switch_state = state_home;

    switch ((arg0 == arg0) ? state_home : state_home) {
    case 0:
        gActors[arg0].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
        gActors[arg0].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[arg0].posZ.whole = 0x100;
        gActors[arg0].unk_188 = 0;
        gActors[arg0].colorA = 0;
        
        // fakematch
        if ((gActors[arg0].posZ.whole + arg0) && (gActors[arg0].posZ.whole + arg0)) {
        }
        //

        gActors[arg0].posX.whole = D_801B66BC_7C68DC[gActors[arg0].var_0D8].positionX;
        gActors[arg0].posY.whole = D_801B66BC_7C68DC[gActors[arg0].var_0D8].positionY;
        gActors[arg0].graphicIndex = 0x2004;
        gActors[arg0].var_158 = 0;
        D_801B68AA_7C6ACA = 2;
        D_801B68AC_7C6ACC = 0xA5;
        D_801B68AE_7C6ACE = 0xD;
        gActors[arg0].state = switch_state + 1;
        return;
    case 1:
        gActors[arg0].colorA = 0;
        if (gScreenPosCurrentY.whole >= 0x2A1) {
            gActors[arg0].state++;
        }
        return;
    case 2:
        gActors[arg0].posX.whole -= 8;
        if (gActors[arg0].posX.whole < -0x200) {
            gActors[arg0].posX.whole += 0x400;
        }

        gActors[arg0].colorA = (gScreenPosCurrentY.whole / 10) - 0x40;

        if (arg0 == 0x93) {
            return;
        }

        gActors[arg0].var_158 += D_801B68AA_7C6ACA;
        for (row = 0; row < 0x20; row++) {
            source_row = (s16)((SIN(gActors[arg0].var_158 + (row * D_801B68AC_7C6ACC)) * D_801B68AE_7C6ACE) + row) & 0x1F;
            for (column = 0; column < 0x20; column++) {
                // TODO: 0x80342630
                u8* destination = (u8*)(0x80342630 + (source_row * 0)) + (row << 5) + column;
                *destination = ((u8*)(0x80342230 + (row * 0)))[(source_row << 5) + column];
            }
        }
        break;
    }
}

void func_801B63E4_7C6604(u16 actor_index) {
    s32 temp0;
    s16 temp1;

    if (gCurrentScene == 0x16) {
        if ((gActors[actor_index].posX.whole < -0x140) ||
            (gActors[actor_index].posX.whole >= 0x141)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
        temp1 = gActors[actor_index].var_110;
        temp0 = temp1;
        temp1 = temp0;

        gActors[actor_index].graphicIndex = D_801B66C4_7C68E4[temp1];
        temp0 = temp1;
        if ((temp0 < 9) || (temp0 == 0x18)) {
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -0x71;
        }
        else if ((temp0 < 0x11) || (temp0 == 0x19)) {
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = 0x71;
        }
        else {
            gActors[actor_index].unk_188 = D_801B66F8_7C6918[gActors[actor_index].var_0D8];
            gActors[actor_index].posZ.whole = D_801B6708_7C6928[gActors[actor_index].var_0D8];
        }
        gActors[actor_index].state++;
        // fallthrough
    case 1:
        return;
    }
}
