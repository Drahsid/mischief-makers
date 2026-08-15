// BUG: incorrect prototypes!
#define func_80012AB4_ARGS s32 arg0, s32 arg1
#define func_80094CF8_RET DEFAULT_INT
#include "common.h"
#include "stage_tilemap.h"
#include "28EF0.h"
#include "61B80.h"
#include "66250.h"
#include "8D0A0.h"
#include "8F080.h"

typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ f32 scale;
} UnkStruct_7B87B0__func_801B0E48_7B8CF8; /* sizeof = 0x14 */

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u16 unk_04;
} UnkStruct_7B87B0__func_801B1438_7B92E8_Indices; /* sizeof = 0x06 */

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 unk_0A;
} UnkStruct_7B87B0__func_801B16A0_7B9550; /* sizeof = 0x0C */

extern s16 D_800D2918;
extern u16 D_800D291C;
extern Graphic_Spawn_Record D_800D2978[];
extern u16 D_800D6088[];
extern u16 D_800D60B8[];
extern Gfx D_800D70C8[];
extern s16 D_800E15AC[];
extern s16 D_800E1750[];
extern s16 D_800E176C[];
extern s16 D_800E17F8[];
extern s16 D_800E2274[];

UnkStruct_7B87B0__func_801B0E48_7B8CF8 D_801B4400_7BC2B0[2] = {
    { FIXED_UNIT(3.0), FIXED_UNIT(8.0 / 256), FIXED_UNIT(3.0), FIXED_UNIT(14.0 / 256), 1.2f },
    { FIXED_UNIT(1.25), FIXED_UNIT(6.0 / 256), FIXED_UNIT(2.0), FIXED_UNIT(6.0 / 256), 1.6f },
};

s32 D_801B4428_7BC2D8[5] = {
    0x45, 5, 4, 1, -4,
};

s32 D_801B443C_7BC2EC[21] = {
    8, 0x70, 0, 0,
    8, 0x70, 0, 0,
    8, 0x70, 0, 0,
    8, 0x70, 0, 0,
    8, 0x70, 0, 0,
    0,
};

s32* D_801B4490_7BC340[2] = {
    D_801B4428_7BC2D8,
    D_801B443C_7BC2EC,
};

UnkStruct_7B87B0__func_801B1438_7B92E8_Indices D_801B4498_7BC348[3] = {
    { 0, 1, 1 },
    { 1, 0, 1 },
    { 1, 1, 0 },
};

Position_U16 D_801B44AC_7BC35C[3] = {
    { 0x270, 0x2E0 },
    { 0x290, 0x2E0 },
    { 0x2B0, 0x2E0 },
};

UnkStruct_7B87B0__func_801B16A0_7B9550 D_801B44B8_7BC368[3] = {
    { 0x210, 0xE5E, 0x150, 0xDFE, 1, 0 },
    { 0x210, 0xE5E, 0x150, 0xDFE, 0, 0 },
    { 0x210, 0xE5E, 0x150, 0xDFE, 0, 0 },
};

u16 D_801B44DC_7BC38C[18] = {
    0x0052, 0x005F, 0x0082, 0x00B0, 0x8FFF, 0x0000,
    0x006A, 0x0074, 0x0058, 0x00B0, 0x8FFF, 0x0000,
    0x007F, 0x007E, 0x008E, 0x007A, 0x00B0, 0x8FFF,
};

s16* D_801B4500_7BC3B0[5] = {
    D_800E1700,
    D_800E1750,
    D_800E176C,
    D_800E17F8,
    D_800E2274,
};

u16* D_801B4514_7BC3C4[3] = {
    PALETTE_8022D4C8,
    PALETTE_8022D508,
    PALETTE_8022D568,
};

u16* D_801B4520_7BC3D0 = D_800D8528;

s16 D_801B4524_7BC3D4[18] = {
    0x01C6, 1, 0x01C8, 1, 0x01CA, 1, 0x01CC, 1,
    0x01CE, 1, 0x01D0, 1, 0x01D2, 1, 0x01D4, 1,
    0, 0,
};

u16 D_801B4548_7BC3F8[4] = {
    0x270, 0x370, 0x370, 0,
};

u16 D_801B4550_7BC400[4] = {
    0x1F0, 0x270, 0x2F0, 0,
};

u16 D_801B4558_7BC408[4] = {
    0x170, 0x170, 0x270, 0,
};

u16 D_801B4560_7BC410[4] = {
    0x0057, 0x009E, 0x00C0, 0x8FFF,
};

u16 D_801B4568_7BC418[256] = {
    0x0000, 0x6369, 0x5B25, 0x52E1, 0x4A9F, 0x425B, 0x31D7, 0x6BAD,
    0x73ED, 0x6BAB, 0x6367, 0x3A19, 0x3A17, 0x52E3, 0x73EF, 0x4A9D,
    0x2993, 0x214F, 0x190D, 0x425D, 0x6BA9, 0x3A1B, 0x31D5, 0x2151,
    0x10CB, 0x2991, 0x5B23, 0x5B27, 0x0887, 0x10C9, 0x0889, 0x190B,
    0x4AA1, 0x7C31, 0x52E1, 0x7C2F, 0x3A1D, 0x10E7, 0x0071, 0x0889,
    0x6367, 0x5B19, 0x08B9, 0x10EF, 0x636B, 0x08A7, 0x0079, 0x088B,
    0x6BA5, 0x73E7, 0x007F, 0x10F5, 0x636D, 0x299B, 0x0067, 0x006F,
    0x0073, 0x0885, 0x6365, 0x8CA5, 0x193D, 0x10E3, 0x3A15, 0x089D,
    0x0063, 0x006B, 0x6365, 0x8CA5, 0x4AB3, 0x007F, 0x425F, 0x0885,
    0x2991, 0x4A99, 0x0059, 0x005F, 0x190B, 0x1909, 0x8465, 0x94E7,
    0x29B9, 0x1913, 0x3A13, 0x8463, 0x2999, 0x2991, 0x214B, 0x3A17,
    0x8CA9, 0x3A35, 0x4271, 0x298D, 0x4A97, 0x6B9D, 0x4253, 0x31CF,
    0x2991, 0x8467, 0x9D29, 0x52D7, 0x3A17, 0x5B1B, 0x635B, 0x31CF,
    0x31D5, 0x5B23, 0x8467, 0x7C21, 0x4A99, 0x298F, 0x52D7, 0x31D1,
    0x7C25, 0x94E7, 0x5B23, 0x214D, 0x0045, 0x3A11, 0x10C7, 0x1909,
    0x10C9, 0x4A95, 0x4253, 0x73DF, 0x214D, 0x4255, 0x52D9, 0x3A13,
    0x190D, 0x5B21, 0x299B, 0x08A9, 0x2165, 0x08B1, 0x29A5, 0x2997,
    0x6363, 0x6BA1, 0x3A15, 0x0075, 0x6BA5, 0x7C25, 0x08BF, 0x0077,
    0x3A1B, 0x52D9, 0x005D, 0x2179, 0x0891, 0x4257, 0x635F, 0x1911,
    0x8CA7, 0x73ED, 0x10FB, 0x1913, 0x4259, 0x635B, 0x31DB, 0x191B,
    0x31D3, 0x190B, 0x7C25, 0x31F5, 0x426F, 0x3A15, 0x6B9D, 0x5B19,
    0x94E9, 0x5B1D, 0x190B, 0x5B19, 0x5B1B, 0x31D3, 0x6363, 0x8CA7,
    0x73E3, 0x214D, 0x3A11, 0x31D1, 0x5B1B, 0x73DF, 0x8463, 0x3A19,
    0x10DF, 0x0069, 0x0899, 0x5B1F, 0x2161, 0x08AB, 0x425D, 0x3A13,
    0x191D, 0x004F, 0x6365, 0x5B1D, 0x425B, 0x2993, 0x0061, 0x0053,
    0x6BA3, 0x6367, 0x10D1, 0x4A97, 0x52DD, 0x6BA3, 0x7C27, 0x08BD,
    0x3A15, 0x6B9F, 0x7C23, 0x089B, 0x007D, 0x2995, 0x298F, 0x8465,
    0x5B1F, 0x215D, 0x299B, 0x4259, 0x5B23, 0x636F, 0x29B7, 0x426D,
    0x4A95, 0x4255, 0x8CA7, 0x6B9D, 0x5B1D, 0x52E1, 0x8465, 0x8CA5,
    0x0887, 0x4A95, 0x10C7, 0x214D, 0x0042, 0x0042, 0x0042, 0x0042,
    0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042,
    0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0000,
};

s32 D_801B4768_7BC618[3] = {
    FIXED_UNIT(0), FIXED_UNIT(-1.0), FIXED_UNIT(-1.4141845703125),
};

s32 D_801B4774_7BC624[3] = {
    FIXED_UNIT(-1.4141845703125), FIXED_UNIT(-1.0), FIXED_UNIT(0),
};

u16 D_801B4780_7BC630[8] = {
    0x005A, 0x0077, 0x00B2, 0x0074, 0x0072, 0x007E, 0x0056, 0x8FFF,
};

u16 D_801B4790_7BC640[10] = {
    0x0065, 0x0066, 0x007D, 0x005D, 0x0079,
    0x0069, 0x0085, 0x009E, 0x8FFF, 0x0000,
};

u16 D_801B47A4_7BC654[8] = {
    0x0074, 0x0072, 0x007B, 0x009D, 0x0063, 0x008E, 0x8FFF, 0x0000,
};

u16 D_801B47B4_7BC664[10] = {
    0x0060, 0x0089, 0x008C, 0x006A, 0x005D,
    0x006F, 0x007E, 0x0088, 0x8FFF, 0x0000,
};

u16 D_801B47C8_7BC678[8] = {
    0x0073, 0x0053, 0x0074, 0x0072, 0x0064, 0x0059, 0x0076, 0x8FFF,
};

u16 D_801B47D8_7BC688[12] = {
    0x00FE, 0x00C0, 0x00ED, 0x00D1, 0x00C0, 0x010A,
    0x00C0, 0x0085, 0x009E, 0x8FFF, 0x0000, 0x0000,
};

u16 func_801B0900_7B87B0(u16 actor_index) {
    u16 result;
    u16 collision;

    result = func_80012AB4(gActors[actor_index].posX.whole, (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) - 1) & 0x7F;
    if (result == 0x40) {
        collision = func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 0xF) & 0x7F;

        switch (collision) {
        case 0x41:
        case 0x42:
        case 0x45:
        case 0x49:
        case 0x4A:
        case 0x4D:
            result = collision;
            break;
        }
    }

    return result;
}

void func_801B09D4_7B8884(u16 actor_index, s32 target, s32 step) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, target, step);
}

u16 func_801B0A2C_7B88DC(u16 actor_index) {
    u16 collided = FALSE;
    s32 magnitude;

    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].var_154 = -gActors[actor_index].var_154;
        magnitude = ABS(gActors[actor_index].velocityX.raw);
        collided = TRUE;
        if (magnitude < FIXED_UNIT(1.0)) {
            gActors[actor_index].velocityX.raw = 0;
        }
        else {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.4;
        }
    }

    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_154 = -gActors[actor_index].var_154;
        gActors[actor_index].var_158 = 0;
        collided = TRUE;
    }

    if (collided != FALSE) {
        magnitude = ABS(gActors[actor_index].velocityX.raw);
        // ((u32)gActors[actor_index].velocityY.raw / 65536) effectively checks if velocityY.whole is nonzero
        if ((magnitude >= (FIXED_UNIT(0.5) + 1)) || ((u32)gActors[actor_index].velocityY.raw / 65536)) {
            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
        }
    }

    return collided;
}

void func_801B0BBC_7B8A6C(u16 actor_index) {
    u16 angle[2];
    u16 tile = func_801B0900_7B87B0(actor_index);

    if (gActors[actor_index].unk_170 != 0) {
        switch (tile) {
        case 0x42:
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].velocityX.raw = 0;
            }

            gActors[actor_index].unk_170 = 0;
            break;

        case 0x4A:
            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].velocityX.raw = 0;
            }

            gActors[actor_index].unk_170 = 0;
            break;

        case 0x40:
        case 0x41:
        case 0x45:
        case 0x49:
        case 0x4D:
            gActors[actor_index].unk_170 = 0;
            break;
        }
    }

    switch (tile) {
    case 0x40:
        angle[0] = 0;
        func_801B09D4_7B8884(actor_index, 0, FIXED_UNIT(2.0 / 256));
        break;

    case 0x41:
    case 0x45:
        angle[0] = 0x40;
        func_801B09D4_7B8884(actor_index, -gActors[actor_index].var_160, gActors[actor_index].unk_164);
        break;

    case 0x49:
    case 0x4D:
        angle[0] = 0x3C0;
        func_801B09D4_7B8884(actor_index, gActors[actor_index].var_160, gActors[actor_index].unk_164);
        break;

    case 0x42:
        angle[0] = 0x80;
        func_801B09D4_7B8884(actor_index, -gActors[actor_index].unk_168, gActors[actor_index].unk_16C);
        break;

    case 0x4A:
        angle[0] = 0x380;
        func_801B09D4_7B8884(actor_index, gActors[actor_index].unk_168, gActors[actor_index].unk_16C);
        break;

    default:
        angle[0] = gActors[actor_index].var_15C;
        break;
    }

    gActors[actor_index].var_15C = angle[0];
    gActors[actor_index].var_154 = (-(f32)FROM_FIXED((f64)gActors[actor_index].velocityX.raw) * 1.9098593168533682);
    gActors[actor_index].rotateZ += gActors[actor_index].var_154;
}

void func_801B0DC4_7B8C74(u16 actor_index) {
    s16 color;

    if (gActiveFrames & 0x40) {
        color = ((gActiveFrames & 0x3C) >> 3) - 4;
    }
    else {
        color = 3 - ((gActiveFrames & 0x3C) >> 3);
    }

    Palette_AdjustRgb5551Array(D_800D6088, D_800D60B8, 0x17, -4, -4, color);
}

void func_801B0E48_7B8CF8(u16 actor_index) {
    u16 other_index;
    f32 angle_delta;

    func_801B0DC4_7B8C74(actor_index);

    if (gActors[actor_index].var_0D8 != 0) {
        other_index = 0x30;
    }
    else {
        other_index = 0x31;
    }

    if (gActors[other_index].state == 3) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    }

    if ((((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && (gActors[actor_index].parentIndex == 0)) ||
         ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[actor_index].parentIndex == 0))) && (gActors[other_index].state != 3)) {
        SpawnMarinaOhNo(0, 0);
        gStageState = 4;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED;
        gActors[actor_index].dlist_17C = D_800D70C8;
        gActors[actor_index].graphicIndex = 0;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].posZ.whole = -4;
        gActors[actor_index].unk_12C = D_801B4400_7BC2B0[gActors[actor_index].var_0D8].scale;
        gActors[actor_index].scaleX = gActors[actor_index].scaleY = gActors[actor_index].unk_12C;
        gActors[actor_index].var_160 = D_801B4400_7BC2B0[gActors[actor_index].var_0D8].unk_00 + (actor_index * 0);
        gActors[actor_index].unk_164 = D_801B4400_7BC2B0[gActors[actor_index].var_0D8].unk_04;
        gActors[actor_index].unk_168 = D_801B4400_7BC2B0[gActors[actor_index].var_0D8].unk_08;
        gActors[actor_index].unk_16C = D_801B4400_7BC2B0[gActors[actor_index].var_0D8].unk_0C;
        Actor_SetHitboxA(actor_index, gActors[actor_index].unk_12C * 20.0f);

        if (gActors[actor_index].var_0D8 == 0) {
            gActors[actor_index].hitboxBY0 = gActors[actor_index].unk_12C * 14.0f;
            gActors[actor_index].hitboxBY1 = gActors[actor_index].unk_12C * -28.0f;
            gActors[actor_index].hitboxBX0 = -0xF;
            gActors[actor_index].hitboxBX1 = 0xF;
        }
        else {
            gActors[actor_index].hitboxBY0 = gActors[actor_index].unk_12C * 4.0f;
            gActors[actor_index].hitboxBY1 = gActors[actor_index].unk_12C * -24.0f;
            gActors[actor_index].hitboxBX0 = -0xF;
            gActors[actor_index].hitboxBX1 = 0xF;
        }

        gActors[actor_index].health = 0;
        gActors[actor_index].damage = 0x32;
        gActors[actor_index].unk_0DA = 0x80;\
        gActors[actor_index].unk_0DB = 4;
        gActors[actor_index].unk_0DF = 0x20;
        gActors[actor_index].state++;
        // fallthrough

    case 1:
        func_801B0A2C_7B88DC(actor_index);
        func_801B0BBC_7B8A6C(actor_index);

        if (gActors[actor_index].rotateZ < gActors[actor_index].unk_114) {
            angle_delta = gActors[actor_index].unk_114 - gActors[actor_index].rotateZ;
        }
        else {
            angle_delta = -(gActors[actor_index].unk_114 - gActors[actor_index].rotateZ);
        }

        if (angle_delta >= 60.0) {
            gActors[actor_index].unk_114 = gActors[actor_index].rotateZ;
            Sound_PlaySfxAtActor3(SFX_RUMBLE_0135, actor_index);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = SIN(gActors[actor_index].var_15C) * gActors[actor_index].velocityX.raw;
            gActors[actor_index].var_154 = gActors[actor_index].var_154 * 1.2;
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state++;
        }
        break;

    case 2:
        func_801B0A2C_7B88DC(actor_index);
        if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-3.0)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(24.0 / 256);
        }

        gActors[actor_index].rotateZ += gActors[actor_index].var_154;
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            if ((u32)gActors[actor_index].velocityY.raw / 65536) {
                Sound_PlaySfxAtActor2(SFX_BOOM_0045, actor_index);
                CameraShake(6, 4);
            }

            // fakematch
            if ((gScreenPosCurrentY.whole + (&gActors[actor_index] + 0)->posY.whole) < 0x181) {
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].hitboxBX1 += 0x10;
            }

            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state--;
        }
        break;

    case 3:
        break;

    default:
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B13C8_7B9278(u16 actor_index_unused) {
    u16 actor_index = 0x35;

    gActors[actor_index].actorType = ACTORTYPE_OVL3_W4_BOULDER;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = 0x290 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = 0xB90 - gScreenPosCurrentY.whole;
    gActors[actor_index].posZ.whole = 0;
    gActors[actor_index].var_0D8 = 1;
}

void func_801B1438_7B92E8(u16 actor_index) {
    u16 position_x;
    u16 position_y;
    u16 current_actor_index;
    u16 index;
    u16 selection_index;

    if (1) {
    }

    current_actor_index = 0x40;

    if (actor_index) {
    }

    for (actor_index = 0; actor_index < 3; actor_index++) {
        gActors[current_actor_index].actorType = ACTORTYPE_DIGGINGSPOT;
        Actor_Initialize(current_actor_index);
        position_x = D_801B44AC_7BC35C[actor_index].positionX - gScreenPosCurrentX.whole;
        position_y = D_801B44AC_7BC35C[actor_index].positionY - gScreenPosCurrentY.whole;
        gActors[current_actor_index].posX.whole = position_x;
        gActors[current_actor_index].posY.whole = position_y;
        gActors[current_actor_index].posZ.whole = 0;
        current_actor_index++;
    }

    selection_index = Rand() % 3;
    current_actor_index = 0x41 + (current_actor_index * 0);
    index = 0x40; // fakematch?
    gActors[index].unk_190_p = D_801B4490_7BC340[D_801B4498_7BC348[selection_index].unk_00];
    gActors[current_actor_index++].unk_190_p = D_801B4490_7BC340[D_801B4498_7BC348[selection_index].unk_02];
    gActors[current_actor_index].unk_190_p = D_801B4490_7BC340[D_801B4498_7BC348[selection_index].unk_04];
}

void func_801B15CC_7B947C(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            if ((gScreenPosCurrentY.whole + gPPlayerActor->posY.whole) < 0xA31) {
                func_801B13C8_7B9278(actor_index);
                gActors[actor_index].state++;
            }
            break;

        case 1:
            func_801B1438_7B92E8(actor_index);
            gActors[actor_index].state++;
            break;

        case 2:
            break;
    }
}

void func_801B16A0_7B9550(u16 actor_index) {
    u16 temp;

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            switch (gActors[actor_index].unk_174) {
                case 0:
                    if (gActors[actor_index].unk_16C != 0) {
                        gActors[actor_index].unk_170 = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_08;
                        gActors[actor_index].unk_184_s16[0] = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_00;
                        gActors[actor_index].unk_184_s16[1] = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_02;
                    }
                    else {
                        gActors[actor_index].unk_170 = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_0A;
                        gActors[actor_index].unk_184_s16[0] = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_04;
                        gActors[actor_index].unk_184_s16[1] = D_801B44B8_7BC368[gActors[actor_index].var_0D8 & 0xF].unk_06;
                    }
                    gActors[actor_index].unk_174++;
                    break;

                case 1:
                    switch (gActors[actor_index].unk_170) {
                        case 0:
                            temp = func_800734C4(actor_index, 0x10);
                            break;

                        case 1:
                            temp = func_80073558(actor_index, 0x10);
                            break;

                        default:
                            temp = 0xFFFF;
                            if (1) {
                            }
                            break;
                    }

                    if ((temp & 0x8000) == 0) {
                        gActors[actor_index].unk_174 = 0;
                        gActors[actor_index].unk_16C ^= 1;
                    }
                    break;
            }
            break;

        case 0xA1:
            func_800734C4(actor_index, 0x10);
            break;

        case 0x91:
            func_80073558(actor_index, 0x10);
            break;
    }
}

void func_801B1884_7B9734(u16 actor_index) {
    Clancer_Update(actor_index);
    gActors[actor_index].unk_16C++;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_16C = Rand();
            break;

        case 0x61:
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }

            if (func_80029B00(0xC0, 0x40, -0x40) != 0) {
                func_80067E50(actor_index, D_801B4500_7BC3B0[gActors[actor_index].var_0D8 & 0xF]);
                if (!(gActors[actor_index].unk_16C & 0x3F)) {
                    SpawnTextBubble(actor_index, D_801B44DC_7BC38C, 0, 0x20, 0x19);
                }
            }
            else {
                func_80067E50(actor_index, D_800E1700);
            }
            break;
    }
}

void func_801B19A8_7B9858(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);

            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }

            if (func_80029B00(0x60, 0x40, -0x40) != 0) {
                gActors[actor_index].state = 0x3B0;
            }

            gActors[actor_index].posX.whole = gActors[actor_index].unk_184_s16[0] - gScreenPosCurrentX.whole;
            break;
    }
}

void func_801B1A90_7B9940(u16 position_x, u16 position_y) {
    u16 actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (actor_index != 0) {
        gActors[actor_index].actorType = ACTORTYPE_OVL3_W4_POOF_15;
        Actor_Initialize(actor_index);
        gActors[actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[actor_index].posY.whole = position_y - gScreenPosCurrentY.whole;
        gActors[actor_index].posZ.whole = -1;
    }
}

void func_801B1B30_7B99E0(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    Graphic_Spawn_Record* spawn_position = D_800D2978;
    u16 position_x = gScreenPosCurrentX.whole + actor->posX.whole;
    u16 position_y;

    while (spawn_position->unk_00 != 0) {
        if ((spawn_position->positionX < position_x) && !(spawn_position->unk_00 & 0x8000)) {
            spawn_position->unk_00 |= 0x8000;
            func_801B1A90_7B9940(spawn_position->positionX, spawn_position->positionY);
        }
        spawn_position++;
    }

    position_y = D_800D291C;
    while (position_y < D_800D2918) {
        func_80012044(actor->posX.whole, position_y - gScreenPosCurrentY.whole, 0);
        position_y += 0x10;
    }
}

void func_801B1C58_7B9B08(u16 actor_index) {
    s32 position_y;
    s32 position_x;
    u16 particle_index;

    position_x = gActors[actor_index].posX.whole + (Rand() * 0.25);
    position_y = gActors[actor_index].posY.whole + (Rand() * 0.5);
    particle_index = SpawnParticle_List_90C0_16(D_800E15AC, position_x, position_y, 3);

    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[particle_index].velocityX.raw = FIXED_UNIT(2.0);
        gActors[particle_index].velocityY.raw = FIXED_UNIT(-1.0);
        gActors[particle_index].var_15C = FIXED_UNIT(-16.0 / 256);
        gActors[particle_index].unk_16C = 0;
        gActors[particle_index].var_158 = FIXED_UNIT(-2.0 / 256);
        gActors[particle_index].unk_168 = 0;
        gActors[particle_index].var_110 = 0.04f;
        gActors[particle_index].unk_114 = 0.04f;
        gActors[particle_index].unk_118 = 0.0f;
        gActors[particle_index].unk_11C = 0.0f;
        gActors[particle_index].unk_148 = 10.0f;
    }
}

void func_801B1E14_7B9CC4(u16 actor_index) {
    u16 new_actor_index;

    if ((gActiveFrames & 0xF) == 0) {
        new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL3_W4_WAVE_14;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
            if (gActors[actor_index].posY.whole < -0x70) {
                gActors[new_actor_index].posY.whole = -0x70;
            }
            else {
                gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
            }

            gActors[new_actor_index].posZ.whole = 1;
        }
        Sound_PlaySfxAtActor3(SFX_0068, actor_index);
    }

    if ((gActiveFrames & 0x3F) == 0) {
        new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL3_W4_BLAST_16;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
            if (gActors[actor_index].posY.whole < -0x70) {
                gActors[new_actor_index].posY.whole = -0xB0;
            }
            else {
                gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole - 0x40;
            }

            gActors[new_actor_index].posZ.whole = 2;
        }
    }
}

void func_801B1FC0_7B9E70(u16 actor_index) {
    gActors[actor_index].var_158 = gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0];

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = ACTOR_FLAG_UNK4 | ACTOR_FLAG_ENABLED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.125);
            gActors[actor_index].var_154 = gActors[actor_index].var_158;
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            func_801B1E14_7B9CC4(actor_index);
            func_801B1B30_7B99E0(actor_index);
            if (gActors[actor_index].var_158 >= 0x1FB0) {
                gActors[actor_index].flags = 0;
            }
            break;
    }
}

void func_801B209C_7B9F4C(u16 actor_index) {
    s16 position_y = gActors[actor_index].var_158 - gScreenPosCurrentY.whole;
    if (position_y < -0x70) {
        gActors[actor_index].posY.whole = -112.0 - ((1.0 - gActors[actor_index].scaleY) * 24.0);
        return;
    }

    gActors[actor_index].posY.whole = position_y - ((1.0 - gActors[actor_index].scaleY) * 24.0);
}

void func_801B21BC_7BA06C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    switch (actor->state) {
        case 0:
            actor->graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            actor->flags = ACTOR_FLAG_ENABLED;
            actor->graphicIndex = 0x16C;
            actor->scaleX = 2.0f;
            actor->scaleY = 1.0f;
            actor->palette_18C = D_801B4514_7BC3C4[Rand() & 3];
            actor->var_154 = gScreenPosCurrentX.whole + actor->posX.whole;
            actor->var_158 = 0x14C;
            actor->state++;
            // fallthrough

        case 1:
            actor->scaleY = Math_ApproachF32(actor->scaleY, 6.0f, 0.4f);
            if (actor->scaleY == 6.0) {
                actor->state++;
            }
            break;

        case 2:
            actor->scaleY = Math_ApproachF32(actor->scaleY, 1.0f, 0.05f);
            if (actor->scaleY == 1.0) {
                actor->flags = 0;
            }
            break;
    }

    func_801B209C_7B9F4C(actor_index);
}

void func_801B2330_7BA1E0(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].graphicIndex = 0;
            gActors[actor_index].graphicList = D_801B4524_7BC3D4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].scaleX = 1.5f;
            gActors[actor_index].scaleY = 1.5f;
            gActors[actor_index].palette_18C = D_801B4514_7BC3C4[Rand() & 3];
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].flags = 0;
            }
            break;
    }
}

void func_801B2410_7BA2C0(u16 actor_index) {
    s16 position_y = gActors[actor_index].var_158 - gScreenPosCurrentY.whole;
    if (position_y < -0x90) {
        gActors[actor_index].posY.whole = -144.0 - ((1.0 - gActors[actor_index].scaleY) * 24.0);
        return;
    }

    gActors[actor_index].posY.whole = position_y - ((1.0 - gActors[actor_index].scaleY) * 24.0);
}

void func_801B2530_7BA3E0(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    switch (actor->state) {
        case 0:
            actor->graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            actor->flags = ACTOR_FLAG_ENABLED;
            actor->graphicIndex = 0x166;
            actor->scaleX = 2.0f;
            actor->scaleY = 3.0f;
            actor->rotateZ = 90.0f;
            actor->palette_18C = D_801B4520_7BC3D0;
            actor->var_154 = gScreenPosCurrentX.whole + actor->posX.whole;
            actor->var_158 = 0x10C;
            actor->state++;
            // fallthrough

        case 1:
            actor->scaleX = Math_ApproachF32(actor->scaleX, 8.0f, 0.4f);
            if (actor->scaleX == 8.0) {
                actor->state++;
            }
            break;

        case 2:
            actor->scaleX = Math_ApproachF32(actor->scaleX, 1.0f, 0.02f);
            actor->colorA = Math_ApproachS32(actor->colorA, 0, 3);
            if (actor->scaleX == 1.0) {
                actor->flags = 0;
            }
            break;
    }

    func_801B2410_7BA2C0(actor_index);
}

void func_801B26B8_7BA568(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE;
            gActors[actor_index].damage = 0;
            gActors[actor_index].hitboxAY0 = 0;
            gActors[actor_index].hitboxAY1 = -0x20;
            gActors[actor_index].hitboxAX0 = -0xC0;
            gActors[actor_index].hitboxAX1 = 0xC0;
            gActors[actor_index].unk_0DB = 0x13;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = -0x50;
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            gActors[actor_index].posX.whole = 0;
            break;
    }
}

void func_801B2758_7BA608(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].unk_188 = 0;

            if (gActors[actor_index].var_0D8 != 0) {
                gActors[actor_index].graphicIndex = 0x2004;
                gActors[actor_index].posX.whole = -2;
                gActors[actor_index].posY.whole = -0xD;
                gActors[actor_index].posZ.whole = -0x110;
                gActors[actor_index].state = 2;
                return;
            }

            gActors[actor_index].graphicIndex = 0x2000;
            gActors[actor_index].posX.whole = -2;
            gActors[actor_index].posY.whole = 3;
            gActors[actor_index].posZ.whole = 0x200;
            gActors[actor_index].colorA = 0xB0;
            gActors[actor_index].colorB = 0x10;
            gActors[actor_index].state = 1;
            break;

        case 2:
            gActors[actor_index].posY.whole = 0xA0 - (gScreenPosCurrentY.whole / 2);
            break;

        case 1:
            break;
    }
}

s32 func_801B2860_7BA710(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) && ((actor_index + 0x8000) == gActors[0].unk_0CC)) {
        return TRUE;
    }

    return FALSE;
}

void func_801B28C4_7BA774(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    switch (actor->var_158) {
        case 0:
            if (actor->scaleY < 0.9) {
                actor->var_158 = 1;
            }
            else {
                actor->scaleX += 0.01;
                actor->scaleY -= 0.01;
            }

            if (actor->flags_098 & ACTOR_FLAG3_UNK7) {
                actor->var_158 = 2;
                if (1) {
                    return;
                }
            }
            break;

        case 1:
            if (actor->scaleY > 1.1) {
                actor->var_158 = 0;
            }
            else {
                actor->scaleX -= 0.01;
                actor->scaleY += 0.01;
            }

            if (actor->flags_098 & ACTOR_FLAG3_UNK7) {
                actor->var_158 = 2;
                return;
            }
            break;

        case 2:
            if (actor->scaleY < 0.7) {
                actor->var_158++;
            }
            else {
                actor->scaleX += 0.1;
                actor->scaleY -= 0.1;
            }
            break;

        case 3:
            if (actor->scaleY > 1.0) {
                actor->scaleY = 1.0f;
                actor->scaleX = 1.0f;
                actor->var_158++;
            }
            else {
                actor->scaleX -= 0.1;
                actor->scaleY += 0.1;
            }
            break;

        case 4:
            if (actor->scaleY > 1.1) {
                actor->var_158 = 5;
            }
            else {
                actor->scaleX -= 0.01;
                actor->scaleY += 0.01;
            }

            if (!(actor->flags_098 & ACTOR_FLAG3_UNK7)) {
                actor->var_158 = 6;
                return;
            }
            break;

        case 5:
            if (actor->scaleY < 0.9) {
                actor->var_158 = 4;
            }
            else {
                actor->scaleX += 0.01;
                actor->scaleY -= 0.01;
            }

            if (!(actor->flags_098 & ACTOR_FLAG3_UNK7)) {
                actor->var_158 = 6;
                return;
            }
            break;

        case 6:
            if (actor->scaleY > 1.3) {
                actor->var_158++;
            }
            else {
                actor->scaleX -= 0.1;
                actor->scaleY += 0.1;
            }
            break;

        case 7:
            if (actor->scaleY < 1.0) {
                actor->var_158 = 0;
                actor->scaleY = 1.0f;
                actor->scaleX = 1.0f;
                return;
            }

            actor->scaleX += 0.1;
            actor->scaleY -= 0.1;
            break;
    }
}

void func_801B2C60_7BAB10(u16 actor_index) {
    func_801B28C4_7BA774(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicIndex = 0x260;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
            gActors[actor_index].hitboxBY0 = 4;
            gActors[actor_index].hitboxBY1 = -4;
            gActors[actor_index].hitboxBX1 = 0x18;
            gActors[actor_index].hitboxBX0 = -0x18;
            gActors[actor_index].state++;
            break;

        case 1:
            if ((gScreenPosCurrentY.whole < D_801B4550_7BC400[gActors[actor_index].var_0D8]) && (D_801B4558_7BC408[gActors[actor_index].var_0D8] < (gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0]))) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-1.0);
            }
            else if ((D_801B4550_7BC400[gActors[actor_index].var_0D8] < gScreenPosCurrentY.whole) && ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < D_801B4548_7BC3F8[gActors[actor_index].var_0D8])) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
            }
            else {
                gActors[actor_index].velocityY.raw = 0;
                if (func_801B2860_7BA710(actor_index)) {
                    if (gScreenPosCurrentY.whole <
                        D_801B4550_7BC400[gActors[actor_index].var_0D8]) {
                        gActors[actor_index].state = 2;
                    }
                    else {
                        gActors[actor_index].state = 3;
                    }
                }
            }
            break;

        case 2:
            if ((D_801B4548_7BC3F8[gActors[actor_index].var_0D8] - 4) < (gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0])) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 4;
            }
            else if (!func_801B2860_7BA710(actor_index)) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 0;
            }
            else if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < D_801B4550_7BC400[gActors[actor_index].var_0D8]) {
                gActors[actor_index].velocityY.raw += FIXED_UNIT(8.0 / 256);
            }
            else {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(8.0 / 256);
            }
            break;

        case 3:
            if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < (D_801B4558_7BC408[gActors[actor_index].var_0D8] + 4)) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 4;
            }
            else if (!func_801B2860_7BA710(actor_index)) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 0;
            }
            else if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < D_801B4550_7BC400[gActors[actor_index].var_0D8]) {
                gActors[actor_index].velocityY.raw += FIXED_UNIT(8.0 / 256);
            }
            else {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(8.0 / 256);
            }
            break;

        case 4:
            if (!func_801B2860_7BA710(actor_index)) {
                gActors[actor_index].state = 0;
            }
            break;
    }
}

void func_801B2F90_7BAE40(u16 actor_index) {
    switch (gActors[actor_index].unk_174) {
        case 0:
            if ((func_80012AB4(gActors[actor_index].posX.whole - 0x20, gActors[actor_index].posY.whole) & 0xC0) == 0xC0) {
                gActors[actor_index].unk_184_s16[0] = 0x2000;
                gActors[actor_index].unk_174++;
            }
            break;

        case 1:
            if ((func_80012AB4(gActors[actor_index].posX.whole + 0x20, gActors[actor_index].posY.whole) & 0xC0) == 0xC0) {
                gActors[actor_index].unk_184_s16[0] = -0x2000;
                gActors[actor_index].unk_174--;
            }
            break;
    }
}

void func_801B3068_7BAF18(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].unk_184_s16[0] = -0x2000;
            gActors[actor_index].state = 0x200;
            break;

        case 0x61:
        case 0x201:
        case 0x241:
            func_800735EC(actor_index, 4);
            func_801B2F90_7BAE40(actor_index);

            if (((gActiveFrames & 0xFF) + 0xC0) == (actor_index * 4)) {
                gActors[actor_index].state = 0x230;
                gActors[actor_index].unk_16C = 0x50;
            }
            break;

        case 0x232:
            if ((gActors[actor_index].unk_16C-- == 0) &&
                (gActors[actor_index + 1].state != 2)) {
                SpawnTextBubble(
                    actor_index, D_801B4560_7BC410, 0, 0x20, 0x1E);
            }
            break;
    }
}

void func_801B31AC_7BB05C(u16 actor_index) {
    gActors[0x48].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[0x48].palette_18C = D_801B4568_7BC418;
    ActorUpdate_Clanpot(actor_index);
}

s16 func_801B31F4_7BB0A4(u16 item_index, u16 flags, u16 var_110, u16 var_0D8, u16 icon, u16 pot_index) {
    if ((gActors[item_index].state != 2) && (gActors[item_index].flags & ACTOR_FLAG_DRAW)) {
        if (((gActors[pot_index].posX.whole - 0x10) < gActors[item_index].posX.whole) &&
            (gActors[item_index].posX.whole < (gActors[pot_index].posX.whole + 0x10)) &&
            (gActors[item_index].posY.whole > gActors[pot_index].posY.whole) &&
            ((gActors[pot_index].posY.whole + 0x20) > gActors[item_index].posY.whole)) {
            return Clanpot_AddItem(item_index, flags, var_110, var_0D8, icon, pot_index);
        }
    }
}

void func_801B32D8_7BB188(u16 actor_index) {
    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (gActors[actor_index].state != 0) {
        if (func_801B31F4_7BB0A4(actor_index, 0x8400, 0, 0, 0x67, 0x48) >= 0) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
    }
}

void func_801B338C_7BB23C(u16 actor_index) {
    Spikeball_MoveX(actor_index, FIXED_UNIT(0.5), FIXED_UNIT(8.0 / 256), -(Rand() & 3), Rand() & 3);
    Spikeball_MoveY(actor_index, FIXED_UNIT(0.5), FIXED_UNIT(4.0 / 256), -(Rand() & 1), Rand() & 1);
    switch (gActors[actor_index].var_15C) {
        case 0:
            if (func_80064328(actor_index) != 0) {
                gActors[actor_index].var_15C++;
            }
            break;

        case 1:
            func_800641CC(actor_index);
            break;
    }
}

void func_801B349C_7BB34C(u16 actor_index) {
    u16 position_x;
    u16 position_y;

    func_801B32D8_7BB188(actor_index);

    switch (gActors[actor_index].state) {
        case 0xFFFF:
            gActors[actor_index].colorA = 0;
            gActors[actor_index].state++;
            break;

        case 2:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].state = 0;
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED | ACTOR_FLAG_DRAW;
            }
            break;

        case 0:
            func_800640A0(actor_index);
            gActors[actor_index].state = gActors[actor_index].var_0D8 & 0xF00;
            break;

        case 0x100:
            func_801B338C_7BB23C(actor_index);
            break;

        case 0x200:
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].var_160 = gActors[actor_index - 1].posX.whole + gScreenPosCurrentX.parts[0];
            gActors[actor_index].unk_164 = gActors[actor_index - 1].posY.whole + gScreenPosCurrentY.parts[0];
            gActors[actor_index].state++;
            // fallthrough

        case 0x201:
            position_x = gActors[actor_index - 1].posX.whole + gScreenPosCurrentX.parts[0];
            position_y = gActors[actor_index - 1].posY.whole + gScreenPosCurrentY.parts[0];
            if ((position_x < (gActors[actor_index].var_160 - 0x10)) ||
                ((gActors[actor_index].var_160 + 0x10) < position_x) ||
                (position_y < (gActors[actor_index].unk_164 - 0x10)) ||
                ((gActors[actor_index].unk_164 + 0x10) < position_y) ||
                (gActors[actor_index - 1].flags == 0)) {
                Sound_PlaySfxAtPan(SFX_GHOST_LAUGH, actor_index);
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].state = 0x100;
            }
            break;

        case 0x300:
            gActors[actor_index].state++;
            // fallthrough

        case 0x301:
            if (gActors[actor_index - 1].state != 0x232) {
                if (gActors[actor_index - 1].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].unk_170 = gActors[actor_index - 1].posX.whole + gScreenPosCurrentX.parts[0] + 0x10;
                }
                else {
                    gActors[actor_index].unk_170 = gActors[actor_index - 1].posX.whole + gScreenPosCurrentX.parts[0] - 0x10;
                }

                if ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole + 0x10) < gActors[actor_index].unk_170) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
                else if (gActors[actor_index].unk_170 < (gActors[actor_index].posX.whole + gScreenPosCurrentX.whole - 0x10)) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
                gActors[actor_index].unk_174 = gActors[actor_index - 1].posY.whole + gScreenPosCurrentY.parts[0] + 0x30;
            }
            func_801B338C_7BB23C(actor_index);
            break;

        case 0x400:
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].state++;
            // fallthrough

        case 0x401:
            if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x34) {
                Sound_PlaySfxAtPan(SFX_GHOST_LAUGH, actor_index);
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].state = 0x100;
            }
            break;

        case 0x500:
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].state++;
            // fallthrough

        case 0x501:
            if ((gActors[actor_index - 1].colorA +
                 gActors[actor_index - 2].colorA +
                 gActors[actor_index - 3].colorA +
                 gActors[actor_index - 4].colorA) == 0x80) {
                Sound_PlaySfxAtPan(SFX_GHOST_LAUGH, actor_index);
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].state = 0x100;
            }
            break;

        case 0x600:
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].state++;
            // fallthrough

        case 0x601:
            if (gActors[actor_index - 1].flags == 0) {
                Sound_PlaySfxAtPan(SFX_GHOST_LAUGH, actor_index);
                gActors[actor_index].posX.whole = gActors[actor_index - 1].posX.whole;
                gActors[actor_index].posY.whole = gActors[actor_index - 1].posY.whole;
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].state = 0x100;
            }
            break;
    }
}

void func_801B39B4_7BB864(u16 actor_index) {
    u16 new_actor_index;

    func_801B32D8_7BB188(actor_index);

    switch (gActors[actor_index].state) {
        case 0xFFFF:
            gActors[actor_index].colorA = 0;
            gActors[actor_index].state++;
            break;

        case 2:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].state = 0;
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED | ACTOR_FLAG_DRAW;
            }
            break;

        case 0:
            func_800640A0(actor_index);
            gActors[actor_index].state = 0x100;
            break;

        case 0x100:
            if ((gActors[actor_index].posX.whole >= -0x9F) &&
                (gActors[actor_index].posX.whole < 0xA0) &&
                (gActors[actor_index].posY.whole >= -0x7F) &&
                (gActors[actor_index].posY.whole < 0x80)) {
                s32 phase = (actor_index & 7) * 0x10;
                if (phase == (gActiveFrames & 0x7F)) {
                    Sound_PlaySfxAtActor2(SFX_0061, actor_index);
                    for (new_actor_index = actor_index + 1; new_actor_index < (actor_index + 4); new_actor_index++) {
                        gActors[new_actor_index].actorType = ACTORTYPE_OVL3_W4_7;
                        Actor_Initialize(new_actor_index);
                        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole - 8;
                        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + 4;
                        gActors[new_actor_index].posZ.whole = 0;
                        gActors[new_actor_index].velocityX.raw = D_801B4768_7BC618[(new_actor_index - actor_index) - 1];
                        gActors[new_actor_index].velocityY.raw = D_801B4774_7BC624[(new_actor_index - actor_index) - 1];
                    }
                }
            }
            func_801B338C_7BB23C(actor_index);
            break;
    }
}

void func_801B3BD0_7BBA80(u16 actor_index) {
    u16 particle_index;
    u16 random;
    u8 color;

    gActors[actor_index].health = 10000;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE;
            gActors[actor_index].unk_0DB = 0xB;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.0);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(6.5);
            gActors[actor_index].unk_180 = 0;
            gActors[actor_index].unk_184 = 0x80;
            gActors[actor_index].damage = 0x1E;
            gActors[actor_index].unk_148 = 1.0f;
            Actor_SetHitboxA(actor_index, 2);
            gActors[actor_index].state++;
            break;

        case 1:
            if (gActors[actor_index].unk_180-- < 0) {
                gActors[actor_index].unk_180 = 3;
                *(&random - 4) = Rand(); // fakematch?
                particle_index = SpawnParticle_List_90C0_16(
                    D_800E1540,
                    (gActors[actor_index].posX.whole - (*(&random - 4) & 3)) + 2,
                    gActors[actor_index].posY.whole - (Rand() & 3),
                    gActors[actor_index].posZ.whole
                );

                if (particle_index != 0) {
                    if (Rand() & 3) {
                        gActors[particle_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
                        gActors[particle_index].colorR = 8;
                        color = (Rand() & 0x3F) + 0x10;
                        gActors[particle_index].colorB = color;
                        gActors[particle_index].colorG = color;
                    }
                    else {
                        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
                        gActors[particle_index].colorR = gActors[particle_index].colorG = 0x7F;
                        gActors[particle_index].colorB = 0x3F;
                    }

                    gActors[particle_index].scaleX = gActors[actor_index].unk_148 * 0.6;
                    gActors[particle_index].scaleY = gActors[particle_index].scaleX;
                    gActors[particle_index].var_110 = gActors[actor_index].unk_148 * -0.05;
                    gActors[particle_index].unk_114 = gActors[actor_index].unk_148 * 0.05;
                    gActors[particle_index].colorA = 0xE0;
                    gActors[particle_index].var_154 = -0x1C;
                    gActors[particle_index].velocityY.raw = (((Rand() & 3) * FIXED_UNIT(0.0625)) + FIXED_UNIT(1.0)) * gActors[actor_index].unk_148;
                    gActors[particle_index].var_15C = gActors[actor_index].unk_148 * FIXED_UNIT(-16.0 / 256);
                }
            }

            if ((gActors[actor_index].unk_184-- < 0) || (func_80012AB4(gActors[particle_index].posX.whole, gActors[particle_index].posY.whole) != 0)) {
                gActors[actor_index].flags = 0;
                return;
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                if (gActors[actor_index].parentIndex == 0) {
                    gActors[gActors[actor_index].parentIndex].iFrames = 0x3C;
                    Sound_PlaySfxAtActor2(SFX_0076, actor_index);
                }
            }
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B3F8C_7BBE3C(u16 actor_index) {
    u16 actor_slot = actor_index;
    f32 scale;

    gActors[actor_slot].health = 0x2710;
    gActors[actor_slot + 1].var_0D8 = 0;
    func_80094C5C(actor_slot);
    func_8008F498(actor_slot, 0x30);

    scale = gActors[actor_slot].unk_168 / 10000.0f;
    func_80032E60(actor_slot + 3, 0x1002, 0x380, 6.0f * scale, 0, scale, scale);
    func_80032E60(actor_slot + 3, 0x250, 0x120, 14.0f * scale, 0, scale, scale);

    switch (gActors[actor_slot].state) {
        case 0:
            gActors[actor_slot].state = 0x110;
            gActors[actor_slot].unk_168 = 0x1F40;
            gActors[actor_slot + 10].unk_180 = gActors[actor_slot].posX.whole + gScreenPosCurrentX.parts[0];
            gActors[actor_slot + 11].unk_180 = gActors[actor_slot].posY.whole + gScreenPosCurrentY.parts[0];
            break;

        case 0x111:
            if (!(func_80094CF8(actor_slot, 3) & 0x8000) &&
                (D_800E3584 & 0xC0000)) {
                gActors[actor_slot].state = 0x120;
            }
            gActors[actor_slot + 6].unk_180 = 1;
            break;

        case 0x131:
            gActors[actor_slot + 3].unk_180 = 1;
            func_80094CF8(actor_slot, 3);
            break;

        case 0x1B0:
            Sound_PlaySfxAtPan(SFX_GRAB_002F, actor_slot);
            SpawnTextBubble(actor_slot, D_801B4780_7BC630, 0, 0x20, 0x1E);
            break;

        case 0x200:
            Sound_PlaySfxAtPan(SFX_0036, actor_slot);
            break;

        case 0x220:
            if (gActors[actor_slot + 6].unk_180 != 0) {
                gActors[actor_slot + 6].unk_180 = 0;

                switch (gActors[actor_slot + 7].unk_180++) {
                    case 0:
                        SpawnTextBubble(actor_slot, D_801B4790_7BC640, 0, 0x20, 0x1E);
                        break;

                    case 1:
                        SpawnTextBubble(actor_slot, D_801B47A4_7BC654, 0, 0x20, 0x1E);
                        break;

                    case 2:
                        SpawnTextBubble(actor_slot, D_801B47B4_7BC664, 0, 0x20, 0x1E);
                        break;

                    case 3:
                        SpawnTextBubble(actor_slot, D_801B47C8_7BC678, 0, 0x20, 0x1E);
                        break;

                    case 4:
                        SpawnTextBubble(actor_slot, D_801B47D8_7BC688, 0, 0x20, 0x1E);
                        break;
                }
            }
            break;
    }
}

void func_801B42EC_7BC19C(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
            gActors[actor_index].flags = ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_ENABLED;
            gActors[actor_index].graphicIndex = 0x3810;
            gActors[actor_index].posZ.whole = -8;
            gActors[actor_index].hitboxBY0 = 0xA;
            gActors[actor_index].hitboxBY1 = -8;
            gActors[actor_index].hitboxBX0 = -0x1C;
            gActors[actor_index].hitboxBX1 = 0x1C;
            // fallthrough

        case 1:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
                gActors[actor_index].state++;
            }
            break;

        case 2:
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-4.0), FIXED_UNIT(32.0 / 256));
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}
