#include "common.h"
#include "28EF0.h"
#include "7D8E0.h"

// Actor 0x150->0x18F; possibly implies large union for this range with subtypes for specific actors
typedef struct {
    /* 0x00 */ s8 unk_00;
    /* 0x01 */ s8 unk_01;
    union {
        /* 0x02 */ s16 unk_02;
        /* 0x02 */ u8 unk_02_u8[2];
    };
    /* 0x04 */ s8 unk_04;
    /* 0x05 */ s8 unk_05;
    /* 0x06 */ s8 unk_06;
    /* 0x07 */ s8 pad_07;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ s16 unk_0C;
    /* 0x0E */ u8 pad_0E[0x1A];
    /* 0x28 */ s8 unk_28;
    /* 0x29 */ u8 pad_29[3];
    /* 0x2C */ s8 unk_2C;
    /* 0x2D */ s8 unk_2D;
    /* 0x2E */ s8 unk_2E;
    /* 0x2F */ s8 unk_2F;
    /* 0x30 */ s8 unk_30;
    /* 0x31 */ s8 unk_31;
    /* 0x32 */ u8 pad_32[6];
    /* 0x38 */ s16 unk_38;
    /* 0x3A */ s16 unk_3A;
    /* 0x3C */ s16 unk_3C;
    /* 0x3E */ s16 unk_3E;
} Overlay_7A13D0_Actor_State; /* sizeof = 0x40 */

typedef struct {
    /* 0x00 */ u16 timer;
    /* 0x02 */ u16 unk_02;
} Overlay_7A13D0_Spawn_Record; /* sizeof = 0x04 */

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 unk_05;
    /* 0x06 */ u8 pad_06[2];
    /* 0x08 */ f32 unk_08;
} Overlay_7A13D0_Unk_801B6188; /* sizeof = 0x0C */

typedef void (*Overlay_7A13D0_State_Func)(u16 actor_index, Overlay_7A13D0_Actor_State* state);

extern s16 D_800E1384[];
extern s16 D_800E2274[];
extern u8 D_801376A8[];
extern u8 D_801376AC[];
extern u8 D_801376B0[];
extern u8 D_801376B4[];
extern u8 D_801376B8[];

extern void func_80067E50(u16 actor_index, void* arg1);
extern s32 func_800734C4(u16 arg0, s32 arg1);
extern s32 func_80073558(u16 actor_index, s32 arg1);

void func_801A85E0_771AB0(u16 actor_index, f32 arg1);
void func_801B0900_7A1410(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B0AB8_7A15C8(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B0D98_7A18A8(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B0DF0_7A1900(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B1184_7A1C94(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B153C_7A204C(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B1A10_7A2520(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B1C30_7A2740(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B1CE0_7A27F0(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B1F98_7A2AA8(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B2204_7A2D14(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B2730_7A3240(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B2954_7A3464(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B2B10_7A3620(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B2D9C_7A38AC(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B3064_7A3B74(u16 actor_index, Overlay_7A13D0_Actor_State* state);
void func_801B3218_7A3D28(u16 actor_index, s32 arg1);
void func_801B3314_7A3E24(u16 actor_index, s32 offset_x, s32 offset_y, s32 offset_z, f32 scale);
void func_801B3450_7A3F60(u16 actor_index, Overlay_7A13D0_Actor_State* arg1);
void func_801B3500_7A4010(u16 actor_index, s32 arg1, s32 arg2);
void func_801B36C0_7A41D0(u16 actor_index, s32 offset_x, s32 offset_y, s32 velocity_x, s32 velocity_y);
void func_801B3804_7A4314(u16 actor_index, s32 offset_x, s32 offset_y, s32 velocity_x, s32 velocity_y);
void func_801B3EC8_7A49D8(u16 actor_index);
void func_801B4110_7A4C20(u16 arg0);
void func_801B4998_7A54A8(u16 arg0);
void func_801B4F78_7A5A88(u16 actor_index, u16* arg1);
void func_801B57C8_7A62D8(u16 actor_index);

s16 D_801B5E90_7A69A0[4] = { 0x2010, 0x20, 0, 0 };

s16 D_801B5E98_7A69A8[8] = { 0x200C, 0xA, 0x200E, 5, 0x2010, 0x20, 0, 0 };

s16 D_801B5EA8_7A69B8[20] = {
    0x2008, 6, 0x200A, 6, 0x200C, 6, 0x200E, 6, 0x2010, 8,
    0x200E, 4, 0x200C, 6, 0x200E, 4, 0x2010, 0x20, 0, 0,
};

s16 D_801B5ED0_7A69E0[12] = {
    0x201E, 5, 0x2020, 5, 0x2022, 5, 0x2024, 5, 0x2026, 5, 0, 0,
};

s16 D_801B5EE8_7A69F8[4] = { 0x201C, 7, 0, 0 };

s16 D_801B5EF0_7A6A00[4] = { 0x2020, 5, 0, 0 };

s16 D_801B5EF8_7A6A08[2] = { 0x2024, 5 };

s16 D_801B5EFC_7A6A0C[12] = {
    0x2014, 5, 0x2016, 5, 0x2018, 5, 0x201A, 5, 0x200A, 5, 0, 0,
};

s16 D_801B5F14_7A6A24[4] = { 0x2012, 6, 0, 0 };

s16 D_801B5F1C_7A6A2C[14] = {
    0x2014, 5, 0x2016, 5, 0x2018, 5, 0x201A, 5, 0x2018, 5, 0x2016, 5, 0, 0,
};

s16 D_801B5F38_7A6A48[14] = {
    0x686B, 8, 0x686C, 8, 0x686D, 8, 0x686E, 8, 0x686F, 8, 0x6870, 8, 0, 0,
};

s16 D_801B5F54_7A6A64[8] = {
    GINDEX_BLASTB, 0xA,
    GINDEX_BLASTB, 0xA,
    GINDEX_BLASTB, 0xA,
    0, 0,
};

s16 D_801B5F64_7A6A74[4] = { 0x201A, 5, 0, 0 };

s16 D_801B5F6C_7A6A7C[8] = { 0x2018, 5, 0x2016, 5, 0x2014, 5, 0, 0 };

s16 D_801B5F7C_7A6A8C[8] = { 0x01E0, 6, 0x01E2, 6, 0x01E4, 6, 0, 0 };

s16 D_801B5F8C_7A6A9C[18] = {
    GINDEX_POOF, 5,
    GRAPHIC_FRAME(POOF, 1), 5,
    GRAPHIC_FRAME(POOF, 2), 5,
    GRAPHIC_FRAME(POOF, 3), 5,
    GRAPHIC_FRAME(POOF, 4), 5,
    GRAPHIC_FRAME(POOF, 5), 5,
    GRAPHIC_FRAME(POOF, 6), 5,
    GRAPHIC_FRAME(POOF, 7), 5,
    0, 0,
};

s16 D_801B5FB0_7A6AC0[6] = { GINDEX_POOF, 0x40, GINDEX_POOF, 5, 0, 0 };

s16* D_801B5FBC_7A6ACC = D_801B5E90_7A69A0;
s16* D_801B5FC0_7A6AD0 = D_801B5E98_7A69A8;
s16* D_801B5FC4_7A6AD4 = D_801B5EA8_7A69B8;
s16* D_801B5FC8_7A6AD8 = D_801B5EE8_7A69F8;
s16* D_801B5FCC_7A6ADC = D_801B5ED0_7A69E0;
s16* D_801B5FD0_7A6AE0 = D_801B5EF0_7A6A00;
s16* D_801B5FD4_7A6AE4 = D_801B5EF8_7A6A08;
s16* D_801B5FD8_7A6AE8 = D_801B5EFC_7A6A0C;
s16* D_801B5FDC_7A6AEC = D_801B5F14_7A6A24;
s16* D_801B5FE0_7A6AF0 = D_801B5F1C_7A6A2C;
s16* D_801B5FE4_7A6AF4 = D_801B5F38_7A6A48;
s16* D_801B5FE8_7A6AF8 = D_801B5F64_7A6A74;
s16* D_801B5FEC_7A6AFC = D_801B5F6C_7A6A7C;

f32 D_801B5FF0_7A6B00[20] = {
    3.2625f, 0.163125f, 0.15f, -0.0075f, 0.008f,
    2.175f, 0.10875f, 0.1f, -0.005f, 0.005f,
    1.0875f, 0.054375f, 0.05f, -0.0025f, 0.003f,
    0.54375f, 0.0271875f, 0.025f, -0.00125f, 0.0025f,
};

f32 D_801B6040_7A6B50[8] = {
    1.3f, 1.0f, 1.2f, 1.6f, 0.9f, 1.1f, 1.5f, 1.4f,
};

Overlay_7A13D0_State_Func D_801B6060_7A6B70[11] = {
    func_801B0DF0_7A1900,
    func_801B1184_7A1C94,
    func_801B153C_7A204C,
    func_801B1A10_7A2520,
    func_801B1C30_7A2740,
    func_801B1CE0_7A27F0,
    func_801B1F98_7A2AA8,
    func_801B2204_7A2D14,
    func_801B2730_7A3240,
    func_801B0900_7A1410,
    func_801B0900_7A1410,
};

u16 D_801B608C_7A6B9C[10] = {
    0x0920, 0x0940, 0x0960, 0x0980, 0x09A0,
    0x09C0, 0x09E0, 0x0A00, 0x0A20, 0x0A40,
};

u16 D_801B60A0_7A6BB0[10] = {
    0x0460, 0x0480, 0x04A0, 0x04C0, 0x04E0,
    0x0500, 0x0520, 0x0540, 0x0540, 0x0540,
};

u16 D_801B60B4_7A6BC4[10] = {
    0x0251, 0x0183, 0x006D, 0x026E, 0x007A,
    0x0063, 0x009D, 0x0063, 0x0076, 0x8FFF,
};

s16 D_801B60C8_7A6BD8[10] = {
    0x0284, 2, 0x0286, 2, 0x0288, 2, 0x0286, 2, -8, 0,
};

u16 D_801B60DC_7A6BEC[7][2] = {
    { 1, 0x8000 },
    { 2, 0x8000 },
    { 3, 0x8000 },
    { 4, 0x8000 },
    { 5, 0x8000 },
    { 6, 0x8000 },
    { 7, 0x8000 },
};

Overlay_7A13D0_Spawn_Record D_801B60F8_7A6C08[11] = {
    { 0x32, 2 },
    { 0x24, 2 },
    { 0x16, 2 },
    { 0x07, 2 },
    { 0x08, 2 },
    { 0x08, 2 },
    { 0x08, 2 },
    { 0x07, 2 },
    { 0x16, 2 },
    { 0x24, 2 },
    { 0x32, 2 },
};

u16 D_801B6124_7A6C34[8] = { 0x0149, 0x0122, 0x011E, 0x0121, 0x0136, 0x00B0, 0x8FFF, 0 };

u16 D_801B6134_7A6C44[6] = { 0x014A, 0x0122, 0x0131, 0x00B0, 0x8FFF, 0 };

u16 D_801B6140_7A6C50[6] = { 0x013E, 0x012C, 0x00B2, 0x00B2, 0x8FFF, 0 };

u16 D_801B614C_7A6C5C[8] = { 0x013D, 0x012C, 0x0132, 0x0129, 0x00B2, 0x00B2, 0x8FFF, 0 };

u16 D_801B615C_7A6C6C[6] = { 0x0056, 0x009D, 0x0060, 0x00B2, 0x8FFF, 0 };

u16 D_801B6168_7A6C78[6] = { 0x006F, 0x0059, 0x0060, 0x00B0, 0x8FFF, 0 };

u16* D_801B6174_7A6C84[5] = {
    NULL,
    D_801B6124_7A6C34,
    D_801B6134_7A6C44,
    D_801B6140_7A6C50,
    NULL,
};

Overlay_7A13D0_Unk_801B6188 D_801B6188_7A6C98[6] = {
    { 0x0A60, 0x01BF, 1, 0x3C, { 0, 0 }, 0.8999999762f },
    { 0x0A88, 0x01BF, 0, 0x5A, { 0, 0 }, 0.5f },
    { 0x0A88, 0x01BF, 0, 0x5A, { 0, 0 }, 0.5f },
    { 0x0D40, 0x01BF, 1, 0x0A, { 0, 0 }, 1.600000024f },
    { 0x0D50, 0x01BF, 1, 0xB4, { 0, 0 }, 1.600000024f },
    { 0, 0, 0, 0, { 0, 0 }, 0.0f },
};

s32 D_801B6350_7A6E60;


void func_801B0900_7A1410(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
}

void func_801B090C_7A141C(u16 actor_index) {
    Overlay_7A13D0_Actor_State* var_150 = (Overlay_7A13D0_Actor_State*)&gActors[actor_index].var_150;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].posZ.whole = -1;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
            gActors[actor_index].unk_0DE = 1;
            gActors[actor_index].unk_0DF = 0x41;
            gActors[actor_index].hitboxBY0 = 0xE;\
            gActors[actor_index].hitboxBY1 = -0xE;\
            gActors[actor_index].hitboxBX0 = -0xE;
            gActors[actor_index].hitboxBX1 = 0xE;
            gActors[actor_index].rotateZ = 0.0f;
            var_150->unk_00 = (s32)gActors[actor_index].var_110;
            gActors[actor_index].health = 0x100;
            var_150->unk_04 = 0;
            var_150->unk_01 = 1;
            var_150->unk_08 = 0;
            var_150->unk_0A = 0;
            gActors[actor_index].graphicList = D_801B5FBC_7A6ACC;
            gActors[actor_index].graphicTimer = 1;
            break;

        case 1:
            func_801B0AB8_7A15C8(actor_index, var_150);
            D_801B6060_7A6B70[var_150->unk_08](actor_index, var_150);
            func_801B0D98_7A18A8(actor_index, var_150);
            break;

        case 2:
            func_801B2B10_7A3620(actor_index, var_150);
            break;

        case 3:
            gActors[actor_index].flags = 0;
            gActors[actor_index].graphicFlags = 0;
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK21);
}

void func_801B0AB8_7A15C8(u16 actor_index, Overlay_7A13D0_Actor_State* arg1) {
    s16 position_x;
    s16 position_y;
    s16 index;
    s16 count;
    u8 tile_u8;

    func_801B2D9C_7A38AC(actor_index, arg1);
    if (arg1->unk_05 == 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            arg1->unk_08 = 6;
            arg1->unk_0A = 0;
            arg1->unk_05 = 1;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;

            if (arg1->unk_04 == 0) {
                gActors[actor_index].rotateZ = 0.0f;
                gActors[actor_index].graphicList = D_801B5FE0_7A6AF0;
                gActors[actor_index].graphicTimer = 1;
            }
            else {
                gActors[actor_index].graphicList = D_801B5FDC_7A6AEC;
                gActors[actor_index].graphicTimer = 1;
            }

            Sound_StopSfx(0x12B);
        }
    }
    if ((arg1->unk_08 == 1) || (arg1->unk_08 == 2)) {
        count = 0;
        position_x = gActors[actor_index].posX.whole - 16;
        position_y = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
        for (index = 0; index < 3; index++) {
            tile_u8 = func_80012AB4(position_x, position_y);
            if ((tile_u8 == 0x45) || (tile_u8 == 0x42)) {
                count++;
            }

            position_x += 16;
        }

        if (count > 0) {
            if (arg1->unk_04 == 0) {
                gActors[actor_index].rotateZ = 45.0f;
            }

            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.0234375);
            
            if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-4.5)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.5);
            }
        }
        else if (arg1->unk_04 == 0) {
            gActors[actor_index].rotateZ = 0.0f;
        }
    }
    if (arg1->unk_30 != 0) {
        if (arg1->unk_30 >= 0xD) {
            Actor_SetColorRgb(actor_index, 0);
            arg1->unk_31 = 0;
            arg1->unk_30 = arg1->unk_31;
        }
        else {
            arg1->unk_31--;
            if (arg1->unk_31 <= 0) {
                arg1->unk_30++;
                if (arg1->unk_30 & 1) {
                    Actor_SetColorRgb(actor_index, 0);
                }
                else {
                    Actor_SetColorRgb(actor_index, 0x7F);
                }
                arg1->unk_31 = 4;
            }
        }
    }
}

void func_801B0D98_7A18A8(u16 actor_index, Overlay_7A13D0_Actor_State* arg1) {
    if (gActors[actor_index].health <= 0) {
        gActors[actor_index].state = 2;
        arg1->unk_0A = 0;
        arg1->unk_08 = arg1->unk_0A;
    }
}

void func_801B0DF0_7A1900(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    u16 new_actor_index;

    switch (state->unk_0A) {
        case 0:
            state->unk_0A++;
            func_8002AA20(actor_index, 1);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            break;

        case 1:
            func_8002AA20(actor_index, 1);
            if (func_80029B00(0x90, 0xA0, -0x80) != 0) {
                state->unk_0A++;
                state->unk_02 = 0xF;
                gActors[actor_index].graphicList = D_801B5FCC_7A6ADC; \
                gActors[actor_index].graphicTimer = 1;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    new_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
                    if (new_actor_index != 0) {
                        gActors[new_actor_index].actorType = ACTORTYPE_OVL0_GEN_BOMB1;
                        Actor_Initialize(new_actor_index);
                        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
                        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
                        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw;
                        gActors[new_actor_index].velocityY.raw = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(3.0) : FIXED_UNIT(5.0);

                        func_8002A57C(new_actor_index, FIXED_UNIT(0.1875), gPlayerActor.posX.raw >> 1, FIXED_UNIT(3.0));
                        break;
                    }
                }
            }
            break;

        case 2:
            state->unk_02--;
            if (state->unk_02 <= 0) {
                state->unk_0A = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0x64 : 0xA;
            }
            break;

        case 10:
            state->unk_0A++;
            gActors[actor_index].graphicList = D_801B5FE8_7A6AF8; \
            gActors[actor_index].graphicTimer = 1;
            break;

        case 11:
            if (gActors[actor_index].graphicTimer == 0) {
                state->unk_0A++;
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].graphicList = D_801B5FEC_7A6AFC; \
                gActors[actor_index].graphicTimer = 1;
            }
            break;

        case 12:
            if (gActors[actor_index].graphicTimer == 0) {
                state->unk_0A = 0x64;
                gActors[actor_index].graphicList = D_801B5FBC_7A6ACC; \
                gActors[actor_index].graphicTimer = 1;
                func_801B3804_7A4314(actor_index, 12, -18, FIXED_UNIT(0.75), FIXED_UNIT(0.0625));
                break;
            }
            break;

        case 0x64:
            state->unk_08 = 1;
            state->unk_0A = 0;
            break;
    }
}

void func_801B1184_7A1C94(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    s16 index;
    s16 hit_count;
    s16 position_x;
    s16 position_y;

    if (state->unk_06 == 0) {
        if (state->unk_0A != 0) {
            if (gActors[actor_index].rotateZ == 0.0f) {
                hit_count = 0;
                position_x = gActors[actor_index].posX.whole - 16;
                position_y = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 4;

                for (index = 0; index < 3; index++) {
                    if (func_80012AB4(position_x, position_y) != 0) {
                        hit_count++;
                    }

                    position_x += 16;
                }

                if (hit_count == 0) {
                    state->unk_0A = 3;
                    state->unk_06 = 1;
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
                    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
                }
            }
        }
    }

    switch (state->unk_0A) {
        case 0:
            gActors[actor_index].iFrames = 0;
            if (state->unk_04 != 0) {
                state->unk_08 = 2;
                state->unk_0A = 0;
            }
            else {
                state->unk_0A++;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.03125);
                gActors[actor_index].graphicList = D_801B5FC0_7A6AD0;
                gActors[actor_index].graphicTimer = 1;
                func_801B3218_7A3D28(actor_index, (s32)state);
                Sound_PlaySfxAtActor2(0x12B, actor_index);
            }
            return;

        case 1:
            if (gActors[actor_index].velocityX.raw <= FIXED_UNIT(-4.5)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.5);
                state->unk_0A++;
            }
            else {
                gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.03125);
                if (gActors[actor_index].velocityX.raw < 0) {
                    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
                        state->unk_08 = 5;
                        state->unk_0A = 0;
                    }
                }
            }
            func_801B3450_7A3F60(actor_index, state);
            return;

        case 2:
            if (gActors[actor_index].velocityX.raw >= FIXED_UNIT(-1.625)) {
                state->unk_0A = 1;
                gActors[actor_index].graphicList = D_801B5FC0_7A6AD0;
                gActors[actor_index].graphicTimer = 1;
            }
            else {
                gActors[actor_index].velocityX.raw += FIXED_UNIT(0.0078125);
                if (gActors[actor_index].velocityX.raw < 0) {
                    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
                        state->unk_08 = 5;
                        state->unk_0A = 0;
                    }
                }
            }
            func_801B3450_7A3F60(actor_index, state);
            return;

        case 3:
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.03125);
            if (gActors[actor_index].velocityX.raw <= FIXED_UNIT(-4.5)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.5);
            }

            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].velocityY.raw = 0;
                Sound_PlaySfxAtActor2(0xAC, actor_index);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                (gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17, gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6);
                state->unk_06 = 0;
                state->unk_0A = 2;
            }
            return;
    }
}

void func_801B153C_7A204C(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    Actor* actor = &gActors[actor_index];
    s32 abs_velocity_x;
    u8 tile;

    if (actor->flags_098 & ACTOR_FLAG3_UNK5) {
        actor->flags |= ACTOR_FLAG_UNK16; \
        actor->flags &= ~ACTOR_FLAG_UNK17; \
        actor->flags_098 &= ~ACTOR_FLAG3_UNK6;
        actor->velocityY.raw = 0;
    }
    else {
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        actor->velocityY.raw -= FIXED_UNIT(0.25);
        if (actor->velocityY.raw <= FIXED_UNIT(-7.5)) {
            actor->velocityY.raw = FIXED_UNIT(-7.5);
        }
    }

    if (state->unk_0A > 0) {
        if ((actor->flags_098 & ACTOR_FLAG3_UNK0) && (actor->flags_098 & ACTOR_FLAG3_UNK1)) {
            u16 child_actor_index = actor->parentIndex;
            if (((Overlay_7A13D0_Actor_State*)&gActors[child_actor_index].var_150)->unk_04 != 0) {
                actor->unk_0FC.raw = 0;
                actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                state->unk_0A = 0;
                state->unk_08 = 3;
            }
        }
        else {
            s32 landed_velocity_x = actor->velocityX.raw;

            if (landed_velocity_x < 0) {
                landed_velocity_x = -landed_velocity_x;
            }

            if (landed_velocity_x >= FIXED_UNIT(1.5)) {
                actor->hitboxAY0 = 0xB; \
                actor->hitboxAY1 = -0xB;
                actor->hitboxAX0 = -0xB; \
                actor->hitboxAX1 = 0xB;
                actor->flags |= ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9;
                actor->unk_0F8.raw = FIXED_UNIT(2.0);
                actor->unk_0FC.raw = FIXED_UNIT(7.0);
                actor->unk_0DA = 1;
                actor->unk_0DB = 4;
                actor->damage = 0x20;
            }
            else {
                actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                actor->colorR = 0;
            }
        }
    }

    abs_velocity_x = actor->velocityX.raw;
    if (actor->velocityX.raw < 0) {
        abs_velocity_x = -abs_velocity_x;
    }

    switch (state->unk_0A) {
        case 0:
            actor->iFrames = 0;
            if (state->unk_04 == 0) {
                state->unk_08 = 1;
                state->unk_0A = 0;
            }
            else {
                state->unk_0A += (actor->velocityX.raw < 0) ? 1 : 2;
            }

            break;

        case 1:
            if (actor->velocityX.raw != 0) {
                if ((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2)) {
                    actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                    actor->velocityX.raw = -(actor->velocityX.raw >> 2);
                    state->unk_0A++;
                    break;
                }
                else if (actor->velocityX.raw > 0) {
                    actor->velocityX.raw = 0;
                    break;
                }

                func_801B2954_7A3464(actor_index, state);
                tile = func_80012AB4(actor->posX.whole, actor->hitboxBY1 + actor->posY.whole);
                if (tile == 0) {
                    actor->velocityX.raw += FIXED_UNIT(0.0078125);
                }
                
                if (tile == 0x42) {
                    actor->velocityX.raw -= FIXED_UNIT(0.03125);
                }

                if (abs_velocity_x >= FIXED_UNIT(1.0)) {
                    state->unk_2C--;
                    if (state->unk_2C <= 0) {
                        func_801B3314_7A3E24(actor_index, 8, -12, 2, D_801B6040_7A6B50[Rand() & 7]);
                        state->unk_2C = state->unk_2D;
                    }
                }
            }
            break;

        case 2:
            if (actor->velocityX.raw != 0) {
                if ((actor->velocityX.raw > 0) && (actor->flags_098 & ACTOR_FLAG3_UNK3)) {
                    actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                    actor->velocityX.raw = -(actor->velocityX.raw >> 2);
                    state->unk_0A--;
                    break;
                }
                else if (actor->velocityX.raw < 0) {
                    actor->velocityX.raw = 0;
                    break;
                }

                func_801B2954_7A3464(actor_index, state);

                tile = func_80012AB4(actor->posX.whole, actor->hitboxBY1 + actor->posY.whole);
                if (tile == 0) {
                    actor->velocityX.raw -= FIXED_UNIT(0.0078125);
                }

                if (tile == 0x42) {
                    actor->velocityX.raw -= FIXED_UNIT(0.03125);
                }

                if (abs_velocity_x >= FIXED_UNIT(1.0)) {
                    state->unk_2C--;
                    if (state->unk_2C <= 0) {
                        func_801B3314_7A3E24(actor_index, 8, -12, 2, D_801B6040_7A6B50[Rand() & 7]);
                        state->unk_2C = state->unk_2D;
                    }
                }
            }
            break;
    }
}

void func_801B1A10_7A2520(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    Actor* actor = &gActors[actor_index];
    s32 unused;

    switch (state->unk_0A) {
        case 0:
            state->unk_0A = state->unk_0A + 1;
            actor->velocityX.raw = -(actor->velocityX.raw >> 1);
            actor->velocityY.raw = actor->unk_0FC.raw;
            state->unk_38 = 0;
            actor->flags |= ACTOR_FLAG_UNK17;
            actor->flags &= ~ACTOR_FLAG_UNK16;\
            actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
            break;

        case 1:
            actor->velocityY.raw -= FIXED_UNIT(0.25);
            if (actor->velocityY.raw <= FIXED_UNIT(-7.5)) {
                actor->velocityY.raw = FIXED_UNIT(-7.5);
            }

            if (actor->velocityY.raw < 0) {
                if (actor->flags_098 & ACTOR_FLAG3_UNK5) {
                    state->unk_3C++;
                    func_801B36C0_7A41D0(actor_index, 12, -18, FIXED_UNIT(0.75), FIXED_UNIT(0.0625));
                    func_801B36C0_7A41D0(actor_index, -12, -18, FIXED_UNIT(-0.75), FIXED_UNIT(0.0625));
                    if (state->unk_38 >= 3) {
                        state->unk_0A++;
                        Sound_PlaySfxAtActor2(0xAC, actor_index);
                        actor->flags |= ACTOR_FLAG_UNK16;
                        actor->flags &= ~ACTOR_FLAG_UNK17;\
                        actor->flags_098 &= ~ACTOR_FLAG3_UNK6;
                    }
                }
            }
            break;

        case 2:
            actor->velocityY.raw = 0;
            actor->velocityX.raw = 0;
            state->unk_08 = 2;
            state->unk_0A = 0;
            break;
    }
}

void func_801B1C30_7A2740(u16 actor_index, Overlay_7A13D0_Actor_State* arg1) {
    s16 state = arg1->unk_0A;

    if (state == 0) {
        arg1->unk_0A = state + 1;
        arg1->unk_04 = 1;
        func_801B3314_7A3E24(actor_index, 0, 0, 2, 2.599999905f);
    }
    else {
        gActors[actor_index].graphicList = D_801B5FDC_7A6AEC;
        gActors[actor_index].graphicTimer = 1;
        arg1->unk_08 = 2;
        arg1->unk_0A = 0;
    }
}

void func_801B1CE0_7A27F0(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    switch (state->unk_0A) {
        case 0:
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6.0);
            state->unk_38 = 0;

            if (state->unk_04 == 0) {
                state->unk_0A++;
                gActors[actor_index].velocityX.raw >>= 1;
                gActors[actor_index].velocityX.raw -= (Rand() & 3) * FIXED_UNIT(0.25);
                gActors[actor_index].graphicList = D_801B5FE0_7A6AF0; \
                gActors[actor_index].graphicTimer = 1;
            }
            else {
                state->unk_0A += 2;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.0);
                gActors[actor_index].rotateZ = 336.0f;
                state->unk_02 = 6;
                gActors[actor_index].graphicList = D_801B5FBC_7A6ACC; \
                gActors[actor_index].graphicTimer = 1;
            }
            break;

        case 1:
            func_801B2954_7A3464(actor_index, state);
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);

            if (gActors[actor_index].graphicTimer == 0) {
                if (state->unk_38 == 0) {
                    state->unk_38 = 1;
                    gActors[actor_index].graphicList = D_801B5FE0_7A6AF0; \
                    gActors[actor_index].graphicTimer = 1;
                }
            }

            if (gActors[actor_index].velocityY.raw < 0) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                    state->unk_08 = 4;
                    state->unk_0A = 0;
                    Sound_PlaySfxAtActor2(0xAC, actor_index);
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK17);
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                    state->unk_02 = 0;
                    gActors[actor_index].rotateZ = (f32)state->unk_02;
                }
            }
            break;

        case 2:
            state->unk_02--;
            if (state->unk_02 > 0) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);

                if (gActors[actor_index].graphicTimer == 0) {
                    if (state->unk_38 == 0) {
                        state->unk_38 = 1;
                        gActors[actor_index].graphicList = D_801B5FD0_7A6AE0; \
                        gActors[actor_index].graphicTimer = 1;
                    }
                }
            }
            break;
    }
}

void func_801B1F98_7A2AA8(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    switch (state->unk_0A) {
        case 0:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                if ((gActors[actor_index].graphicTimer == 0) && (state->unk_04 == 0)) {
                    gActors[actor_index].graphicList = D_801B5FE0_7A6AF0;
                    gActors[actor_index].graphicTimer = 1;
                }

                gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
                gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
                func_801B3064_7A3B74(actor_index, state);
                break;
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
                state->unk_08 = 7;
                state->unk_0A = 0;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].hitboxAY0 = 0xB; \
                gActors[actor_index].hitboxAX1 = 0xB; \
                gActors[actor_index].hitboxAY1 = -0xB; \
                gActors[actor_index].hitboxAX0 = -0xB;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                gActors[actor_index].iFrames = 0xA;
                state->unk_02 = 0xC;
            }
            else {
                state->unk_0A = state->unk_0A + 1;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }

            state->unk_05 = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            break;

        case 1:
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                func_801B36C0_7A41D0(actor_index, 12, -18, FIXED_UNIT(0.75), FIXED_UNIT(0.0625));
                func_801B36C0_7A41D0(actor_index, -12, -18, FIXED_UNIT(-0.75), FIXED_UNIT(0.0625));
                Sound_PlaySfxAtActor2(0xAC, actor_index);
                if (state->unk_04 == 0) {
                    state->unk_08 = 1;
                }
                else {
                    state->unk_08 = 2;
                }

                state->unk_0A = 0;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                gActors[actor_index].velocityY.raw = 0;
            }
            break;
    }
}

void func_801B2204_7A2D14(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    switch (state->unk_0A) {
        case 0:
            state->unk_0A++;
            state->unk_38 = 0;
            state->unk_3A = 0;
            state->unk_3C = 0;
            state->unk_3E = 0xA;
            state->unk_05 = 0;

            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2.0);
            gActors[actor_index].unk_0DB = 4;
            gActors[actor_index].unk_0DA = 1;
            gActors[actor_index].damage = 0x20;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            break;

        case 1:
            if ((gActors[actor_index].graphicTimer == 0) && (state->unk_04 == 0)) {
                gActors[actor_index].graphicList = D_801B5FE0_7A6AF0; \
                gActors[actor_index].graphicTimer = 1;
            }

            if (gActors[actor_index].iFrames >= 0xB) {
                gActors[actor_index].iFrames--;
            }

            if (state->unk_04 != 0) {
                state->unk_2F--;
                if (state->unk_2F <= 0) {
                    func_801B3314_7A3E24(actor_index, 0, 0, -2, 1.799999952f);
                    state->unk_2F = 6;
                }
            }
            else {
                state->unk_2F--;
                if (state->unk_2F <= 0) {
                    func_801B3314_7A3E24(actor_index, 0, 0, -2, 1.0f);
                    state->unk_2F = 6;
                }
            }

            if (((gActors[actor_index].velocityX.raw != 0) && (gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
                ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
                if (state->unk_3C == 0) {
                    state->unk_3C = 1;
                    gActors[actor_index].health -= 0x10;
                }
                state->unk_02 = 0;
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
                gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 1);
                if (state->unk_3C == 0) {
                    state->unk_3C = 1;
                    gActors[actor_index].health -= 0x10;
                }
            }

            if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
                gActors[actor_index].velocityY.raw = 0;
                if (state->unk_3C == 0) {
                    state->unk_3C = 1;
                    gActors[actor_index].health -= 0x10;
                }
            }

            if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                Sound_PlaySfxAtActor2(0xAC, actor_index);
                state->unk_3A++;

                gActors[actor_index].velocityX.raw >>= 1;
                gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 1);

                if (state->unk_04 == 0) {
                    state->unk_04 = 1;
                    gActors[actor_index].graphicList = D_801B5FDC_7A6AEC; \
                    gActors[actor_index].graphicTimer = 1;
                    func_801B3314_7A3E24(actor_index, 0, 0, 2, 2.599999905f);
                }

                if (state->unk_3A >= 3) {
                    state->unk_0A++;
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK17);
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                }
                else {
                    func_801B36C0_7A41D0(actor_index, 12, -18, FIXED_UNIT(0.75), FIXED_UNIT(0.0625));
                    func_801B36C0_7A41D0(actor_index, -12, -18, FIXED_UNIT(-0.75), FIXED_UNIT(0.0625));
                }

                if (state->unk_3C == 0) {
                    state->unk_3C = 1;
                    gActors[actor_index].health -= 0x10;
                }
            }

            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.01171875));
            if (state->unk_02 < 0) {
                if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
                    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
                }
            }
            else {
                state->unk_02--;
            }
            break;

        case 2:
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;

            if (state->unk_04 == 0) {
                state->unk_08 = 1;
            }
            else {
                state->unk_08 = 2;
            }

            state->unk_0A = 0;
            break;
    }
}

void func_801B2730_7A3240(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    switch (state->unk_0A) {
        case 0:
            state->unk_0A++;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            state->unk_38 = 0;
            state->unk_3A = 0;
            state->unk_3C = 0;
            break;

        case 1:
            if (gActors[actor_index].graphicTimer == 0) {
                if (state->unk_04 == 0) {
                    gActors[actor_index].graphicList = D_801B5FE0_7A6AF0;
                    gActors[actor_index].graphicTimer = 1;
                }
            }

            if (gActors[actor_index].iFrames > 0) {
                gActors[actor_index].iFrames--;
            }

            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }

            if (gActors[actor_index].velocityY.raw < 0) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                    state->unk_0A++;
                    Sound_PlaySfxAtActor2(0xAC, actor_index);
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
                    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                    func_801B36C0_7A41D0(actor_index, 12, -18, FIXED_UNIT(0.75), FIXED_UNIT(0.0625));
                    func_801B36C0_7A41D0(actor_index, -12, -18, FIXED_UNIT(-0.75), FIXED_UNIT(0.0625));
                }
            }
            break;

        case 2:
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].iFrames = 0;
            if (state->unk_04 == 0) {
                state->unk_08 = 1;
            }
            else {
                state->unk_08 = 2;
            }
            state->unk_0A = 0;
            break;
    }
}

void func_801B2954_7A3464(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    Actor* actor;
    s32 velocity;
    s16 value;
    s16 count;
    s32 step;

    actor = &gActors[actor_index];
    if (actor->velocityX.raw != 0) {
        velocity = actor->velocityX.raw;
        if (actor->velocityX.raw < 0) {
            velocity = -actor->velocityX.raw;
        }

        if (state->unk_04 != 0) {
            step = FIXED_UNIT(0.25);
        }
        else {
            step = FIXED_UNIT(0.125);
        }

        count = 0;
        do {
            count++;
            velocity -= step;
        } while (velocity > 0);

        count--;
        value = 0x1C - count;
        if (value <= 0) {
            value = 1;
        }

        state->unk_2D = value;
        state->unk_28--;
        if (state->unk_28 <= 0) {
            Sound_PlaySfxAtActor2(0x135, actor_index);
            value = 0x54 - (count * 4);
            if (value <= 0) {
                value = 1;
            }
            state->unk_28 = value;
        }

        if (actor->velocityX.raw < 0) {
            actor->rotateZ += (f32)count;
            if (actor->rotateZ > 360.0f) {
                actor->rotateZ -= 360.0f;
            }
        }
        else {
            actor->rotateZ -= (f32)count;
            if (actor->rotateZ < 0.0f) {
                actor->rotateZ = 360.0f - actor->rotateZ;
            }
        }
    }
}

void func_801B2B10_7A3620(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    switch (state->unk_0A) {
        case 0:
            state->unk_0A++;
            gActors[actor_index].graphicList = D_801B5FE0_7A6AF0; \
            gActors[actor_index].graphicTimer = 1;
            func_801B3314_7A3E24(actor_index, 0, 0, 2, 2.599999905f);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
            gActors[actor_index].rotateZ = 0.0f;
            Sound_PlaySfxAtActor2(0x9D, actor_index);
            break;

        case 1:
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }

            if (((gActors[actor_index].velocityX.raw != 0) && (gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
                gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            }

            if (gActors[actor_index].velocityY.raw < 0) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                    state->unk_0A++;
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].graphicList = D_801B5FE4_7A6AF4; \
                    gActors[actor_index].graphicTimer = 1;
                    Sound_PlaySfxAtActor2(0xAC, actor_index);
                    Sound_PlaySfxAtActor2(0x3C, actor_index);
                    if (state->unk_04 != 0) {
                        if ((Rand() & 7) == 4) {
                            SpawnGemActor(actor_index, 0x30, 0);
                        }
                        else if ((Rand() & 3) == 2) {
                            SpawnGemActor(actor_index, 0x30, 0);
                        }
                    }
                }
            }
            break;

        case 2:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 3;
            }
            break;
    }
}

void func_801B2D9C_7A38AC(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    s32 unused[3];

    if (state->unk_05 == 1) {
        return;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) == 0) {
        return;
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_UNK15) {
        return;
    }

    state->unk_30 = 1;
    if (state->unk_04 == 0) {
        Sound_StopSfx(0x12B);
    }

    switch (gActors[actor_index].unk_0DD) {
        default:
            break;

        case 21:
        case 22:
            state->unk_08 = 8;
            state->unk_0A = 0;
            state->unk_38 = 0;
            state->unk_3A = 0;
            state->unk_3C = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].iFrames = 5;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            state->unk_05 = 0;
            if (gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            }
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
            Sound_PlaySfxAtActor2(0x2D, actor_index);
            break;

        case 6:
        case 7:
        case 8:
        case 20:
            state->unk_08 = 8;
            state->unk_0A = 0;
            state->unk_38 = 0;
            state->unk_3A = 0;
            state->unk_3C = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].iFrames = 5;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            state->unk_05 = 0;
            gActors[actor_index].velocityX.raw = (gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(-0.5) : FIXED_UNIT(0.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
            gActors[actor_index].unk_0F8.raw >>= 2;
            Sound_PlaySfxAtActor2(0x2D, actor_index);
            break;

        case 2:
        case 3:
        case 4:
            state->unk_08 = 8;
            state->unk_0A = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].iFrames = 5;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            state->unk_05 = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) {
                func_800340CC(actor_index, 0xE, 0);
            }
            Sound_PlaySfxAtActor2(0x2D, actor_index);
            break;

        case 23:
            break;
    }
}

void func_801B3064_7A3B74(u16 actor_index, Overlay_7A13D0_Actor_State* state) {
    s32 position_x;
    s32 position_y;
    s32 velocity_x;
    s32 rand;
    Actor* new_actor;
    u16 new_actor_index;

    if (state->unk_04 != 0) {
        return;
    }

    state->unk_0C--;
    if (state->unk_0C > 0) {
        return;
    }

    position_x = gActors[actor_index].posX.whole + 6;
    position_y = gActors[actor_index].posY.whole + 2;

    rand = Rand() & 3;
    if (rand == 0) {
        rand = 1;
    }

    velocity_x = FIXED_UNIT(1.0 / 65536.0) << (rand + 0xD);
    rand = Rand() & 3;
    position_x += rand - 2;

    if ((Rand() & 1) == 0) {
        velocity_x = -velocity_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, position_x, position_y, 1);
    if (new_actor_index != 0) {
        new_actor = &gActors[new_actor_index];
        new_actor->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        new_actor->flags = ACTOR_FLAG_ENABLED;
        new_actor->graphicList = D_801B5F54_7A6A64;
        new_actor->graphicTimer = 1;
        new_actor->unk_148 = 28.0f;
        new_actor->posZ.whole = gActors[actor_index].posZ.whole - 1;
        new_actor->colorA = 0xFF;
        new_actor->velocityX.raw = velocity_x;
        new_actor->velocityY.raw = FIXED_UNIT(3.2625);
        new_actor->var_15C = FIXED_UNIT(-0.163125);
        new_actor->var_154 = -2;
        new_actor->scaleX = 0.3000000119f;
        new_actor->scaleY = 0.3000000119f;
        new_actor->unk_114 = -0.01499999966f;
        new_actor->var_110 = -0.01499999966f;
    }

    state->unk_0C = 6;
}

void func_801B3218_7A3D28(u16 actor_index, s32 arg1) {
    Actor* actor = &gActors[actor_index];
    Actor* new_actor;
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, actor->posX.whole + 20, actor->posY.whole - 11, 1);
    if (new_actor_index == 0) {
        return;
    }

    new_actor = &gActors[new_actor_index];
    new_actor->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
    new_actor->flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
    new_actor->graphicList = D_801B5F7C_7A6A8C;
    new_actor->graphicTimer = 1;
    new_actor->unk_148 = 28.0f;
    new_actor->posZ.whole = actor->posZ.whole + 1;
    new_actor->colorA = 0xFF;
    new_actor->velocityX.raw = 0;
    new_actor->velocityY.raw = 0;
    new_actor->scaleX = 1.0f;
    new_actor->scaleY = 1.0f;
}

void func_801B3314_7A3E24(u16 actor_index, s32 offset_x, s32 offset_y, s32 offset_z, f32 scale) {
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank, gActors[actor_index].posX.whole + (s16)offset_x,
        gActors[actor_index].posY.whole + (s16)offset_y, 1
    );
    if (new_actor_index == 0) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].graphicList = D_801B5FB0_7A6AC0;
    gActors[new_actor_index].graphicTimer = 1;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + (s16)offset_z;
    gActors[new_actor_index].scaleX = scale;
    gActors[new_actor_index].scaleY = scale;
    offset_x = Rand() & 0xFF;\
    scale = -0.009999999776f;\
    gActors[new_actor_index].rotateZ = (f32)offset_x;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -4;
    gActors[new_actor_index].unk_114 = scale;
    gActors[new_actor_index].var_110 = scale;
}

void func_801B3450_7A3F60(u16 actor_index, Overlay_7A13D0_Actor_State* arg1) {
    s32 offset_x;
    s32 velocity_x;

    if (gActors[actor_index].velocityX.raw == 0) {
        return;
    }
    if (gActors[actor_index].velocityY.raw != 0) {
        return;
    }

    arg1->unk_2E--;

    if (arg1->unk_2E <= 0) {
        velocity_x = gActors[actor_index].velocityX.raw;
        offset_x = 24;
        if (velocity_x > 0) {
            offset_x = -24;
        }

        func_801B3500_7A4010(actor_index, offset_x, -8);
        arg1->unk_2E = 4;
    }
}

void func_801B3500_7A4010(u16 actor_index, s32 offset_x, s32 offset_y) {
    Actor* new_actor;
    f32* table;
    u16 new_actor_index;

    table = &D_801B5FF0_7A6B00[(Rand() & 3) * 5];
    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + (s16)offset_x, gActors[actor_index].posY.whole + (s16)offset_y, 1);
    if (new_actor_index == 0) {
        return;
    }

    new_actor = &gActors[new_actor_index];
    new_actor->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    new_actor->flags = ACTOR_FLAG_ENABLED;
    new_actor->graphicIndex = GINDEX_GROUNDFLAME;
    new_actor->unk_148 = 36.0f;
    new_actor->posZ.whole = gActors[actor_index].posZ.whole;
    new_actor->scaleX = 0.200000003f;
    new_actor->scaleY = 0.5f;
    new_actor->colorA = 0xFF;
    new_actor->var_154 = -6;
    new_actor->velocityY.raw = (s32)TO_FIXED(table[0]);
    table += 4;
    new_actor->var_15C = -(s32)TO_FIXED(table[-3]);
    new_actor->unk_114 = table[-2];
    new_actor->unk_11C = table[-1];
    new_actor->var_110 = table[0];
}

void func_801B36C0_7A41D0(u16 actor_index, s32 offset_x, s32 offset_y, s32 velocity_x, s32 velocity_y) {
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank, gActors[actor_index].posX.whole + offset_x,
        gActors[actor_index].posY.whole + offset_y, 1
    );
    if (new_actor_index == 0) {
        return;
    }
    new_actor_index += 0;

    if (1) {
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].graphicList = D_801B5F8C_7A6A9C;
    gActors[new_actor_index].graphicTimer = 1;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 2;
    gActors[new_actor_index].scaleX = 1.200000048f;
    gActors[new_actor_index].scaleY = 1.200000048f;
    offset_x = Rand() & 0xFF;
    gActors[new_actor_index].unk_114 = -0.02500000037f;
    gActors[new_actor_index].rotateZ = (f32)offset_x;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_110 = -0.02500000037f;
    gActors[new_actor_index].velocityX.raw = velocity_x;
    gActors[new_actor_index].velocityY.raw = velocity_y;
    gActors[new_actor_index].var_154 = -2;
}

void func_801B3804_7A4314(u16 actor_index, s32 offset_x, s32 offset_y, s32 velocity_x, s32 velocity_y) {
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank, gActors[actor_index].posX.whole + offset_x,
        gActors[actor_index].posY.whole + offset_y, 1
    );
    
    if (new_actor_index == 0) {
        return;
    }
    new_actor_index += 0;

    if (1) {
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].graphicList = D_801B5F8C_7A6A9C;
    gActors[new_actor_index].graphicTimer = 1;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 2;
    gActors[new_actor_index].scaleX = 0.8f;
    gActors[new_actor_index].scaleY = 0.8f;
    offset_x = Rand() & 0xFF;
    gActors[new_actor_index].unk_114 = -0.025f;
    gActors[new_actor_index].rotateZ = (f32)offset_x;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_110 = -0.025f;
    gActors[new_actor_index].velocityX.raw = velocity_x;
    gActors[new_actor_index].velocityY.raw = velocity_y;
    gActors[new_actor_index].var_154 = -2;
}

// Cleaner syntax does not match: https://decomp.me/scratch/CLwNh
void func_801B3948_7A4458(u16 actor_index) {
    u16 state;
    u8 value;

    switch ((gActors + actor_index)->state) {
        case 0:
            state = (gActors + actor_index)->state;
            (gActors + actor_index)->flags = ACTOR_FLAG_ACTIVE;
            D_801376B0[1] = 0;
            D_801376AC[1] = 0;
            D_801376A8[1] = 0;
            D_801376B8[1] = 0;
            D_801376BC[1] = 0;
            D_801376B4[1] = 0x80;
            (gActors + actor_index)->posX.raw = 0;
            (gActors + actor_index)->posY.raw = 0;
            (gActors + actor_index)->velocityX.raw = FIXED_UNIT(8.0);
            (gActors + actor_index)->unk_0F8.raw = FIXED_UNIT(2.0);
            (gActors + actor_index)->velocityY.raw = FIXED_UNIT(1.5);
            (gActors + actor_index)->var_150 = 0xC;
            (gActors + actor_index)->state = state + 1;
            *PALETTE_80380200 = 0x2109;

        case 1:
            if ((gActors + actor_index)->unk_0F8.raw == (gActors + actor_index)->velocityX.raw) {
                (gActors + actor_index)->unk_0F8.raw = TO_FIXED(func_8005C708(8));
            }

            (gActors + actor_index)->var_150 = func_8005C6D0((gActors + actor_index)->velocityX.raw) / 0x1000;
            D_800BE578 = gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole;
            D_800BE580 = gScreenPosCurrentY.whole + (gActors + actor_index)->posY.whole;
            (gActors + actor_index)->velocityX.raw = Math_ApproachS32((gActors + actor_index)->velocityX.raw, (gActors + actor_index)->unk_0F8.raw, FIXED_UNIT(0.0078125));
            value = ((Overlay_7A13D0_Actor_State*)&((gActors + actor_index)->var_150))->unk_02_u8[1];
            D_801376B0[1] = value;
            D_801376AC[1] = value;
            D_801376A8[1] = value;
            break;
    }
}

void func_801B3AE0_7A45F0(u16 actor_index) {
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].graphicList = D_800E1384;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
    gActors[actor_index].colorA = 0x80;
    Sound_PlaySfxAtActor2(0x43, actor_index);
    gActors[actor_index].var_154 = 0x18;
    gActors[actor_index].state++;
}

void func_801B3B78_7A4688(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
            gActors[actor_index].hitboxBY1 = -4;
            gActors[actor_index].hitboxBY0 = 4;
            gActors[actor_index].hitboxBX0 = -0x18;
            gActors[actor_index].hitboxBX1 = 0x18;
            gActors[actor_index].graphicIndex = GINDEX_MISSLE;
            gActors[actor_index].state++;
            gActors[actor_index].scaleX = 2.0f;
            break;

        case 1:
            if ((gActors[actor_index].posX.whole >= -191) && (gActors[actor_index].posX.whole < 192)) {
                func_801A85E0_771AB0(actor_index, 0.5f);
            }

            if ((gActors[actor_index].posX.whole >= -255) && (gActors[actor_index].posX.whole < 256)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            }
            else {
                gActors[actor_index].velocityX.raw = 0;
            }

            if (func_80012AB4(gActors[actor_index].posX.whole - 16, gActors[actor_index].posY.whole) != 0) {
                func_801B3AE0_7A45F0(actor_index);
            }
            break;

        case 2:
            if (gActors[actor_index].var_154-- == 0) {
                gActors[actor_index].flags = 0;
            }
            break;
    }
}

void func_801B3CE8_7A47F8(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicIndex = GINDEX_MISSLE;
            gActors[actor_index].state++;
            gActors[actor_index].rotateZ = 90.0f;
            gActors[actor_index].scaleX = 2.0f;
            break;

        case 1:
            if ((gActors[actor_index].posX.whole >= -127) && (gActors[actor_index].posX.whole < 128)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
                gActors[actor_index].state++;
            }
            break;

        case 2:
            if ((gActors[actor_index].posX.whole >= -191) && (gActors[actor_index].posX.whole < 192)) {
                func_801A85E0_771AB0(actor_index, 0.5f);
            }

            if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 24) != 0) {
                func_801B3AE0_7A45F0(actor_index);
                return;
            }

            if (((gActors[actor_index].posX.whole - gActors[0x61].posX.whole) >= -3) && ((gActors[actor_index].posX.whole - gActors[0x61].posX.whole) < 4)) {
                if (((gActors[actor_index].posY.whole - gActors[0x61].posY.whole) >= -19) && ((gActors[actor_index].posY.whole - gActors[0x61].posY.whole) < 20)) {
                    func_801B3AE0_7A45F0(actor_index);
                    gActors[0x61].flags = 0;
                }
            }
            break;

        case 3:
            if (gActors[actor_index].var_154-- == 0) {
                gActors[actor_index].flags = 0;
            }
            break;
    }
}

void func_801B3EC8_7A49D8(u16 actor_index) {
    func_80067EF0(actor_index);

    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x70;
    }
    else if (func_80029B00(0x80, 0x50, -0x50) != 0) {
        if (((s32)D_800E3584 << 15) < 0) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].unk_118 = 30.0f;
                gActors[actor_index].unk_11C = 1.0f;
                gActors[actor_index].state = 0x3B0;
            }
            else {
                gActors[actor_index].state = 0x430;
            }
        }
    }
}

void func_801B3FC0_7A4AD0(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_801B3EC8_7A49D8(actor_index);
            break;
    }
}

void func_801B4048_7A4B58(u16 actor_index) {
    if (Rand() & 1) {
        gActors[actor_index].state = 0x130;
    }
    else {
        gActors[actor_index].state = 0x120;
    }

    if (Rand() & 2) {
        gActors[actor_index].unk_124 = 0.0f;
    }
    else {
        gActors[actor_index].unk_124 = 1.0f;
    }

    gActors[actor_index].unk_11C = (f32)FIXED_UNIT(5.0);
}

void func_801B4110_7A4C20(u16 arg0) {
    u16 actor_index = arg0;
    Actor* actor = &gActors[actor_index];
    s32 state;
    s32 table_index;

    if (actor->unk_174 < 2) {
        if (((actor_index == 0x52) && ((gActiveFrames & 0x7F) == 0)) || ((actor_index == 0x57) && ((gActiveFrames & 0x7F) == 0x40))) {
            if (SpawnTextBubble(actor_index, D_801B60B4_7A6BC4, 0, 0x20, 0x1E) != 0) {
                Sound_PlaySfxAtActor2(0xA2, actor_index);
                actor->graphicList = D_800E2274;
                actor->graphicTimer = 1;
            }
        }
        else {
            func_80067E50(actor_index, D_800E2274);
        }
    }
    else {
        func_80067E50(actor_index, D_800E2274);
    }

    state = actor->unk_174;
    if (state < 2) {
        if ((actor->posX.whole + gScreenPosCurrentX.whole) >= 3073) {
            actor->unk_174 = 2;
        }
    }

    switch (actor->unk_174) {
        case 0:
            if ((func_800734C4(actor_index, 0x10) & 0x8000) == 0) {
                if (D_800E3584 & 0xC0000) {
                    actor->state = 0x70;
                }
                actor->unk_170 = 0x40;
                actor->unk_174++;
            }
            break;

        case 1:
            if (actor->unk_170-- == 0) {
                actor->unk_16C = (actor->unk_16C + 1) % 10;
                actor->unk_184_s16[0] = D_801B608C_7A6B9C[actor->unk_16C];
                actor->unk_184_s16[1] = D_801B60A0_7A6BB0[actor->unk_16C];
                actor->unk_174--;
            }
            break;

        case 0x10:
            if ((func_80073320(actor_index) & 0x8000) == 0) {
                actor->state = 0x70;
                actor->unk_174 = 0x12;
            }
            break;

        case 0x11:
            if ((func_800734C4(actor_index, 8) & 0x8000) == 0) {
                actor->state = 0x70;
                actor->unk_174 = 0x12;
            }
            break;

        case 0x12:
            func_801B4048_7A4B58(actor_index);
            actor->unk_120 = (f32)(((Rand() & 0xFF) * FIXED_UNIT(0.00390625)) + FIXED_UNIT(2.5));
            actor->unk_184_s16[0] = 0xCF0;
            actor->unk_184_s16[1] = 0x670;
            if (Rand() & 1) {
                actor->unk_174 = 0x20;
            }
            else {
                actor->unk_174 = 0x21;
            }
            break;

        case 0x20:
            if ((func_80073320(actor_index) & 0x8000) == 0) {
                actor->state = 0x70;
                actor->unk_174 = 0x22;
            }
            break;

        case 0x21:
            if ((func_800734C4(actor_index, 8) & 0x8000) == 0) {
                actor->state = 0x70;
                actor->unk_174 = 0x22;
            }
            break;

        case 0x22:
            func_801B4048_7A4B58(actor_index);
            actor->unk_120 = (f32)(((Rand() & 0xFF) * FIXED_UNIT(0.00390625)) - FIXED_UNIT(3.5));
            actor->state = 0x130;
        case 2:
            actor->unk_184_s16[0] = 0xC00;
            actor->unk_184_s16[1] = 0x670;
            if (Rand() & 1) {
                actor->unk_174 = 0x10;
            }
            else {
                actor->unk_174 = 0x11;
            }
            break;
    }
}

void func_801B449C_7A4FAC(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].unk_16C = actor_index - 0x50;
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_801B4110_7A4C20(actor_index);
            break;

        case 0x91:
            func_80073320(actor_index);
            break;

        case 0xA1:
            func_800734C4(actor_index, 4);
            break;
    }
}

void func_801B455C_7A506C(u16 actor_index) {
    u16 pair_actor_index;
    u16 new_actor_index;

    pair_actor_index = actor_index + 1;
    gActors[pair_actor_index].posX.whole = gActors[actor_index].posX.whole - 40;
    gActors[pair_actor_index].posY.whole = gActors[actor_index].posY.whole;

    switch (gActors[actor_index].state) {
        case 0:
            ACTOR_INIT(pair_actor_index, ACTORTYPE_ZERO);
            gActors[pair_actor_index].graphicIndex = 0x28A;
            gActors[pair_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
            gActors[actor_index].hitboxBY1 = -4;
            gActors[actor_index].hitboxBY0 = 4;
            gActors[actor_index].hitboxBX0 = -0x24;
            gActors[actor_index].hitboxBX1 = 0x24;
            gActors[actor_index].graphicIndex = GINDEX_MISSLE;
            gActors[actor_index].state++;
            gActors[actor_index].scaleX = 3.0f;
            gActors[actor_index].scaleY = 1.5f;
            break;

        case 1:
            if (gActors[actor_index].posX.whole < 256) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
                gActors[actor_index].state++;
            }
            break;

        case 2:
            if (((gActors[actor_index].posX.whole - 224) < gActors[0].posX.whole) && (gActors[0].posX.whole < (gActors[actor_index].posX.whole - 192))) {
                new_actor_index = Actor_RangeFindInactive(0x68, 0x70);
                if (new_actor_index != 0) {
                    ACTOR_INIT(new_actor_index, 0x1B07);
                    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole - 56;
                    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole - 4;
                    gActors[new_actor_index].graphicList = D_801B60C8_7A6BD8;
                    gActors[new_actor_index].graphicTimer = 1;
                    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15;
                    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                    gActors[new_actor_index].scaleY = 0.3000000119f;
                    gActors[new_actor_index].hitboxAX0 = -0xC;
                    gActors[new_actor_index].hitboxAX1 = 0xC;
                    gActors[new_actor_index].hitboxAY1 = -1;
                    gActors[new_actor_index].hitboxAY0 = 1;
                    gActors[new_actor_index].hitboxBX0 = -0x10;
                    gActors[new_actor_index].hitboxBX1 = 0x10;
                    gActors[new_actor_index].hitboxBY1 = -4;
                    gActors[new_actor_index].hitboxBY0 = 4;
                    gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-1.5);
                    gActors[new_actor_index].health = 0;
                    gActors[new_actor_index].unk_0DF = 0x20;
                    gActors[new_actor_index].damage = 0x1E;
                    gActors[new_actor_index].unk_0DA = 4;
                    gActors[new_actor_index].unk_0DB = 9;
                    Sound_PlaySfxAtActor2(0x2E, actor_index);
                    gActors[actor_index].state++;
                }
            }
            // fallthrough
        case 3:
            if ((gActors[actor_index].posX.whole >= -191) && (gActors[actor_index].posX.whole < 192)) {
                func_801A85E0_771AB0(actor_index, 0.5f);
            }

            if (gActors[actor_index].posX.whole < -256) {
                gActors[actor_index].flags = 0;
                gActors[actor_index + 1].flags = 0;
            }

            if (func_80012AB4(gActors[actor_index].posX.whole - 32, gActors[actor_index].posY.whole) != 0) {
                gActors[actor_index + 1].flags = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].graphicList = D_800E1384;
                gActors[actor_index].graphicTimer = 1;
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
                gActors[actor_index].colorA = 0x80;
                Sound_PlaySfxAtActor2(0x43, actor_index);
                gActors[actor_index].var_154 = 0x18;
                gActors[actor_index].state++;
            }
            break;

        case 4:
            if (gActors[actor_index].var_154-- == 0) {
                gActors[actor_index].flags = 0;
            }
            break;
    }
}

void func_801B4914_7A5424(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gActors[actor_index].flags = 0;
        func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        SpawnGemActor(actor_index, 0x30, 0);
    }
}

void func_801B4998_7A54A8(u16 actor_index) {
    if (gFestivalEventState != 0) {
        gActors[actor_index].unk_118 -= 1.0f;

        if (gActors[actor_index].unk_118 < 0.0f) {
            gActors[actor_index].flags = 0;
            func_8003F05C(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
            Sound_PlaySfxAtActor2(0x43, actor_index);
        }
    }
}

void func_801B4A40_7A5550(u16 actor_index) {
    D_801B6350_7A6E60 = gActors[actor_index].var_15C;
    func_801B4998_7A54A8(actor_index);

    if ((D_801B6350_7A6E60 >= FIXED_UNIT(576.0)) && (D_801B6350_7A6E60 <= FIXED_UNIT(704.0))) {
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].unk_118 = 1.0f;
            Sound_PlaySfxAtActor2(0x96, actor_index);
        }
    }

    if ((D_801B6350_7A6E60 >= FIXED_UNIT(128.0)) && (D_801B6350_7A6E60 <= FIXED_UNIT(384.0))) {
        gActors[actor_index].unk_118 = 0.0f;
    }
}

void func_801B4B3C_7A564C(u16 arg0) {
    func_801B4998_7A54A8(arg0);
}

void func_801B4B64_7A5674(u16 actor_index) {
    Overlay_7A13D0_Spawn_Record* spawn_records;
    u16 index;
    u16 index_u16;
    u16 new_actor_index;
    u16 position_x;
    u16 actor_type;

    spawn_records = D_801B60F8_7A6C08;
    new_actor_index = 0x50;
    position_x = 3696;
    index_u16 = 0;
    actor_type = ACTORTYPE_SPIKEBALL_O2;
    for (index = 0; index < 0xB; index++) {
        index_u16 = index;
        gActors[new_actor_index].actorType = actor_type;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].var_110 = (f32)(u32)spawn_records[index].timer;
        gActors[new_actor_index].var_0D8 = spawn_records[index].unk_02;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posY.whole = 400 - gScreenPosCurrentY.whole;
        if (index_u16 == 5) {
            gActors[new_actor_index].unk_16C = (s32)func_801B4A40_7A5550;
        }
        else {
            gActors[new_actor_index].unk_16C = (s32)func_801B4B3C_7A564C;
        }
        gActors[new_actor_index].unk_118 = (f32)(u32)index;
        new_actor_index++;
        position_x += 22;
    }
}

void func_801B4CD0_7A57E0(u16 arg0) {
}

void func_801B4CD8_7A57E8(u16 actor_index) {
    u16 new_actor_index;

    switch (gActors[actor_index].state) {
        case 0:
            func_801B4B64_7A5674(actor_index);
            gActors[actor_index].var_158 = 2;
            gFestivalEventState = 0;
            gActors[actor_index].state++;
            // fallthrough
        case 1:
            if (gActors[0x61].posX.whole <= gActors->posX.whole && gActors->posX.whole <= gActors[0x62].posX.whole
                && D_801B6350_7A6E60 >= FIXED_UNIT(512.0) && gActors[actor_index].var_154 == 0) {
                if (gActors[actor_index].var_158 != 0) {
                    if (gActors->iFrames == 0) {
                        new_actor_index = SpawnGemActor(actor_index, 0x30, 0);
                        gActors[new_actor_index].posX.whole = 3808 - gScreenPosCurrentX.whole;
                        gActors[new_actor_index].posY.whole = 440 - gScreenPosCurrentY.whole;
                        gActors[actor_index].var_154 = 1;
                        gActors[actor_index].var_15C++;
                    }
                }
                else {
                    if (gScreenPosCurrentY.whole + gActors->posY.whole < 351) {
                        gActors[actor_index].var_158 = 1;
                    }
                }
            }

            if ((gScreenPosCurrentX.whole + gActors->posX.whole < 3690) || (gScreenPosCurrentX.whole + gActors->posX.whole >= 3926)) {
                gActors[actor_index].var_158 = 0;
            }

            if (D_801B6350_7A6E60 < FIXED_UNIT(16.0)) {
                gActors[actor_index].var_154 = 0;
            }

            if (gActors[actor_index].var_15C >= 0x14) {
                gFestivalEventState++;
                func_801B4CD0_7A57E0(actor_index);
                new_actor_index = SpawnGemActor(actor_index, 0x12, 0);
                gActors[new_actor_index].posX.whole = 3808 - gScreenPosCurrentX.whole;
                gActors[new_actor_index].posY.whole = 440 - gScreenPosCurrentY.whole;
                gActors[actor_index].state++;
            }
            break;

        case 2:
            break;
    }
}

void func_801B4F78_7A5A88(u16 actor_index, u16* arg1) {
    Actor* actor = &gActors[actor_index];

    if (actor->unk_16C == 0) {
        if (func_8004089C((u16)(actor_index + 0x8000), arg1) == 0x800) {
            actor->unk_16C++;
        }
    }
    else {
        if (func_8004089C((u16)(actor_index + 0x8000), arg1) != 0x2000) {
            actor->unk_12C += 1.0f;

            if (actor->unk_12C > 16.0f) {
                actor->unk_12C = 16.0f;
            }
        }
    }
}

void func_801B5064_7A5B74(u16 actor_index, s16 arg1) {
    gActors[actor_index].unk_184_s16[0] = arg1 + 0x1D0;
    gActors[actor_index].unk_184_s16[1] = 0x160;
    func_800734C4(actor_index, 8);
}

void func_801B50D0_7A5BE0(u16 actor_index) {
    gActors[actor_index].unk_184_s16[0] = 0x900;
    gActors[actor_index].unk_184_s16[1] = 0x150;

    if ((func_800734C4(actor_index, 8) << 12) >= 0) {
        gActors[actor_index].unk_174++;
    }
}

void func_801B5158_7A5C68(u16 actor_index) {
    if (func_800407D4(actor_index) == 0x1000) {
        func_80067E50(actor_index, D_800E2274);
    }
    else {
        func_80067E50(actor_index, D_800E1700);
    }

    switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if (gActors[actor_index].unk_12C != 0.0f) {
                func_801B5064_7A5B74(actor_index, 0);
            }
            else {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[0]);
            }
            break;

        case 1:
            if (gActors[actor_index].unk_12C != 0.0f) {
                func_801B5064_7A5B74(actor_index, -0x30);
            }
            else {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[1]);
            }
            break;

        case 2:
            if (gActors[actor_index].unk_12C != 0.0f) {
                func_801B5064_7A5B74(actor_index, -0x18);
            }
            else {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[2]);
            }
            break;

        case 3:
            gActors[actor_index].state = 0x290;
            break;

        case 4:
            if (gActors[actor_index].unk_12C != 0.0f) {
                func_801B5064_7A5B74(actor_index, 0x18);
            }
            else {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[3]);
            }
            break;

        case 5:
            gActors[actor_index].state = 0x290;
            break;

        case 6:
            if (gActors[actor_index].unk_12C != 0.0f) {
                if (gActors[actor_index].unk_174 == 0) {
                    func_801B50D0_7A5BE0(actor_index);
                }
                else {
                    func_801B5064_7A5B74(actor_index, 0x38);
                }
            }
            else {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[4]);
            }
            break;
    }
}

void func_801B5378_7A5E88(u16 actor_index) {
    switch (gActors[actor_index].var_0D8 & 0xF) {
        case 3:
            gActors[actor_index].state = 0x460;
            break;

        case 5:
            gActors[actor_index].state = 0x450;
            break;
    }
}

void func_801B53E4_7A5EF4(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            if (!(func_800734C4(actor_index, 8) & 0x8000)) {
                if (gActors[actor_index].unk_12C == 0.0f) {
                    if (D_800E3584 & 0xC0000) {
                        if (gActors[actor_index].unk_12C == 0.0f) {
                            gActors[actor_index].state = 0x70;
                        }
                    }
                    else {
                        func_801B5158_7A5C68(actor_index);
                    }
                }
                else {
                    func_801B5158_7A5C68(actor_index);

                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        if (gActors[actor_index].unk_17C < 0x1D0) {
                            gActors[actor_index].state = 0x70;
                        }
                    }
                    else {
                        if (gActors[actor_index].unk_17C >= 0x1D0) {
                            gActors[actor_index].state = 0x70;
                        }
                    }
                }
            }
            break;

        case 0x201:
            func_801B5378_7A5E88(actor_index);
            break;

        case 0x91:
            func_80073558(actor_index, 8);
            break;

        case 0xA1:
            func_800734C4(actor_index, 8);

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                if ((gActors[actor_index].unk_17C >= 0x6F0) && (gActors[actor_index].unk_17C < 0x711)) {
                    gActors[actor_index].unk_11C = (f32)FIXED_UNIT(7.0);
                    gActors[actor_index].unk_120 = (f32)FIXED_UNIT(-2.5);
                    gActors[actor_index].state = 0x130;
                }
            }

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                if ((gActors[actor_index].unk_17C >= 0x8D0) && (gActors[actor_index].unk_17C < 0x8F1)) {
                    gActors[actor_index].unk_11C = (f32)FIXED_UNIT(8.0);
                    gActors[actor_index].unk_120 = (f32)FIXED_UNIT(-2.5);
                    gActors[actor_index].state = 0x130;
                }
            }
            break;

        case 0x161:
            break;
    }
}

void func_801B5628_7A6138(u16 actor_index) {
    switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if (gActors[actor_index].unk_12C == 0.0f) {
                func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[5]);
            }
            else {
                gActors[actor_index].unk_184_s16[0] = 0xA30;
                gActors[actor_index].unk_184_s16[1] = 0x16F;
                func_800734C4(actor_index, 8);
            }
            break;

        case 1:
            func_801B4F78_7A5A88(actor_index, D_801B60DC_7A6BEC[6]);
            break;
    }
}

void func_801B56E0_7A61F0(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            if ((func_800734C4(actor_index, 8) & 0x8000) == 0) {
                if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                }
                else {
                    func_801B5628_7A6138(actor_index);
                }
            }
            break;

        case 0xA1:
            func_800734C4(actor_index, 8);
            break;
    }
}

void func_801B57C8_7A62D8(u16 actor_index) {
    s32 action_index;

    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_170 = 0x14;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            switch (gActors[actor_index].unk_174) {
                case 0:
                    gActors[actor_index].unk_184_s16[0] = D_801B6188_7A6C98[gActors[actor_index].unk_16C].unk_00;

                    if (D_801B6188_7A6C98[gActors[actor_index].unk_16C].unk_04 != 0) {
                        action_index = func_800734C4(actor_index, 8);
                    }
                    else {
                        action_index = func_80073558(actor_index, 8);
                    }

                    if ((action_index & 0x8000) == 0) {
                        if (gActors[0x47].unk_12C != 0.0f) {
                            gActors[actor_index].unk_12C = 0.0f;
                            gActors[actor_index].unk_174++;
                        }
                        else if (D_800E3584 & 0xC0000) {
                            gActors[actor_index].state = 0x70;
                        }
                    }
                    break;

                case 1:
                    if (gActors[actor_index].unk_16C == 4) {
                        if ((gActors[actor_index].unk_12C == 60.0f) || (gActors[actor_index].unk_12C == 120.0f)) {
                            if (gActors[actor_index].unk_170 & 0x10000) {
                                SpawnTextBubble(actor_index, D_801B6168_7A6C78, 0, -0x30, 0x19);
                                gActors[actor_index].state = 0x190;
                                action_index = SpawnGemActor(actor_index, 0x30, 0);
                                gActors[action_index].posX.whole = 3424 - gScreenPosCurrentX.whole;
                                gActors[action_index].posY.whole = 356 - gScreenPosCurrentY.whole;
                            }
                            else {
                                SpawnTextBubble(actor_index, D_801B615C_7A6C6C, 0, -0x30, 0x19);
                                gActors[actor_index].state = 0x120;
                                gActors[actor_index].unk_120 = 0.0f;
                                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(3.5);
                            }
                        }
                    }

                    if (D_801B6188_7A6C98[gActors[actor_index].unk_16C].unk_05 <= gActors[actor_index].unk_12C) {
                        gActors[actor_index].unk_16C++;
                        if (gActors[actor_index].unk_16C >= 5) {
                            gActors[actor_index].unk_16C = 0;
                            gActors[actor_index].unk_170 &= 0xFFFF;
                            gActors[actor_index].unk_16C = 0;
                        }

                        gActors[actor_index].unk_174 = 0;
                        if ((gActors[actor_index].unk_16C > 0) && (gActors[actor_index].unk_16C < 4)) {
                            if ((gActors[actor_index].unk_16C == 3) && ((gActors[0].posX.whole + (0, gScreenPosCurrentX.whole)) >= 2705)) {
                                func_8007D0F4(0x47, D_801B614C_7A6C5C, 0x40, 0x28, 0x19);
                                gActors[actor_index].unk_16C = 0;
                                gActors[actor_index].unk_170 &= 0xFFFF;
                            }
                            else {
                                func_8007D0F4(0x47, D_801B6174_7A6C84[gActors[actor_index].unk_16C], 0x40, 0x28, 0x19);
                            }
                        }
                    }
                    break;
            }
            break;

        case 0x91:
            gActors[actor_index].unk_118 = D_801B6188_7A6C98[gActors[actor_index].unk_16C].unk_08;
            func_80073558(actor_index, 8);
            break;

        case 0xA1:
            gActors[actor_index].unk_118 = D_801B6188_7A6C98[gActors[actor_index].unk_16C].unk_08;
            func_800734C4(actor_index, 8);
            break;

        case 0x130:
            Sound_PlaySfxAtActor2(0x49, actor_index);
            break;

        case 0x150:
            Sound_PlaySfxAtActor2(0xAC, actor_index);
            break;
    }

    if (gActors[actor_index].unk_16C == 3) {
        if ((gActors[0].posX.whole + (0, gScreenPosCurrentX.whole)) >= 3368) {
            if (!(gActors[actor_index].unk_170 & 0x30000)) {
                if (gActors[actor_index].unk_170 & 0xFFFF) {
                    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
                        gActors[actor_index].unk_170--;
                        gActors[actor_index].unk_170 |= 0x10000;
                    }
                    else {
                        gActors[actor_index].unk_170 = gActors[actor_index].unk_170 | 0x20000;
                    }
                }
            }
        }
    }

    gActors[actor_index].unk_12C += 1.0f;
}

void func_801B5D04_7A6814(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            if ((func_800734C4(actor_index, 8) & 0x8000) == 0) {
                if ((D_801B6350_7A6E60 >= (FIXED_UNIT(256.0) - (Rand() * FIXED_UNIT(0.5)))) && (gFestivalEventState == 0)) {
                    gActors[actor_index].unk_11C = (f32)((Rand() * 0xC8) + FIXED_UNIT(6.0));
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_120 = 0.0f;
                }
            }
            break;

        case 0xA1:
            func_800734C4(actor_index, 8);
            break;

        case 0x130:
            Sound_PlaySfxAtActor2(0x121, actor_index);
            break;

        case 0x150:
            Sound_PlaySfxAtActor2(0xAC, actor_index);
            break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
}
