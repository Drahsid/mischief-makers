#define Actor_SetHitboxA_RET DEFAULT_INT
#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "74A50.h"
#include "66250.h"
#include "8F080.h"
#include "80D90.h"
#include "asset_loader.h"
#include "input.h"
#include "cosine.h"
#include "game_text.h"

extern s16 D_800D2284[];
extern u16* gClanballPalettes[];
extern u16 D_800D44BC[];
extern u16 D_800D4684[];
extern u16 D_800D483C[];
extern u16 D_800D49EC[];
extern u16 D_800D4E84[];
extern u16 D_800D4EA8[];
extern u16 D_800D5348[];
extern u16 D_800D8668[];
extern s16 D_800E149C[];
extern s16 D_800E1750[];
extern s16 D_800E1C78[];
extern s16 D_800E1C84[];
extern s16 D_800E1C9C[];
extern s16 D_800E1D30[];
extern s16 D_800E1F64[];
extern s16 D_800E2274[];
extern s16 D_800E23C0[];
extern s16 D_800E23D0[];
extern s16 D_800E24B0[];
extern s16 D_800E2500[];
extern s16 D_800E2528[];
extern u16 D_800E8F04[];
extern u16 D_800E8F7C[];
extern u16 D_800E9034[];
extern s16 gGuestActorHP;

u16 D_801AFE70_77EA60[] = {
    0x0051, 0x0074, 0x005C, 0x0052,
    0x00B2,
    0x8FFF,
    0x000E,
    0x8001,
};

u16 D_801AFE80_77EA70[] = {
//  graphic timer
    0x58AE, 0x0002,
    0x0000, 0x0000,
};

u16 D_801AFE88_77EA78[] = {
//  graphic timer
    0x587F, 0x0005,
    0x0000, 0x0000,
};

s16 D_801AFE90_77EA80[] = {
//  offsetY
    -0x0028,
    -0x0018,
    -0x0008,
    0x0008,
    0x0018,
    0x0028,
    0x0038,
    0x0000,
};

u16 D_801AFEA0_77EA90[] = {
//  graphic timer
    0x7007, 0x0012,
    0x7008, 0x0012,
    0xFFFC, 0x0000,
};

u16 D_801AFEAC_77EA9C[] = {
//  graphic timer
    0x5861, 0x0008,
    0x5862, 0x0008,
    0x0000, 0x0000,
};

u16 D_801AFEB8_77EAA8[] = {
//  graphic timer
    0x6907, 0x0002,
    0x6909, 0x0002,
    0x690A, 0x0008,
    0x690B, 0x0002,
    0x0000, 0x0000,
};

u16 D_801AFECC_77EABC[] = {
    0x02D2, 0x02D4, 0x02D6, 0x02D8,
};

u16 D_801AFED4_77EAC4[] = {
    0x0007,
    0x8001,
};

u16 D_801AFED8_77EAC8[] = {
    0x0008,
    0x8001,
};

u16 D_801AFEDC_77EACC[] = {
    0x0009,
    0x8001,
};

u16 D_801AFEE0_77EAD0[] = {
    0x000B,
    0x8001,
};

u16 D_801AFEE4_77EAD4[] = {
    0x000C,
    0x8001,
};

u16 D_801AFEE8_77EAD8[] = {
    0x000A,
    0x8001,
};

u16 D_801AFEEC_77EADC[] = {
    0x000D,
    0x8001,
};

u16 D_801AFEF0_77EAE0[] = {
    0x00A0, 0x00C0, 0x00A0, 0x00C0,
    0x0088, 0x00C0, 0x0090, 0x0000,
};

u16 D_801AFF00_77EAF0[] = {
    0x0200, 0x4200, 0x1210, 0x7210,
    0x6220, 0x3220, 0x5220, 0x0000,
};

u16* D_801AFF10_77EB00[] = {
    D_801AFED4_77EAC4,
    D_801AFED8_77EAC8,
    D_801AFEDC_77EACC,
    D_801AFEE0_77EAD0,
    D_801AFEE4_77EAD4,
    D_801AFEE8_77EAD8,
    D_801AFEEC_77EADC,
};

s16 D_801AFF2C_77EB1C[] = {
//  posX     posY
    0x0780,  0x023E,
    0x0680,  0x043E,
    0x0180,  0x043E,
    0x0080,  0x013E,
    0x0580,  0x013E,
    0x0980,  0x013E,
    0x0680,  0x053E,
    -0x00C0, -0x00C0,
    -0x00C0, -0x00C0,
    -0x00C0, -0x00C0,
    -0x00C0, 0x0000,
};

u16 D_801AFF58_77EB48[] = {
    0x000B,
    0x8001,
};

u16 D_801AFF5C_77EB4C[] = {
    0x000C,
    0x8001,
};

u16 D_801AFF60_77EB50[] = {
    0x0010,
    0x8001,
};

u16 D_801AFF64_77EB54[] = {
    0x0011,
    0x8001,
};

u16 D_801AFF68_77EB58[] = {
    0x000F,
    0x8001,
};

u16 D_801AFF6C_77EB5C[] = {
    0x000D,
    0x8001,
};

u16 D_801AFF70_77EB60[] = {
    0x000E,
    0x8001,
};

u16 D_801AFF74_77EB64[] = {
//  graphic timer
    0x0090, 0x0003,
    0x0092, 0x0003,
    0x0094, 0x0003,
    0x0092, 0x0003,
    0xFFF8, 0x0000,
};

u16 D_801AFF88_77EB78[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0001,
    0x0000, 0x0001, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001,
    0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000,
    0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0000,
    0x0001, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x0000, 0x0000,
};

s32 D_801B0008_77EBF8[] = {
    -0x0030, -0x0010, 0x0010, 0x0030,
};

u16 D_801B0018_77EC08[] = {
    0x0018, 0x001C, 0x0020, 0x0024,
    0x0028, 0x002D, 0x0032, 0x0032,
    0x1D19, 0x1D19, 0x0000, 0x0000,
    0x0000, 0x0000, 0x1D19, 0x1D19,
};

u16 D_801B0038_77EC28[] = {
    0x0276, 0x0278, 0x027A, 0x0278,
};

void func_80012044(s16, s16, s8);
void func_8002BC90(u16 arg0);
void func_8002D040(u16 actor_index, s32 arg1);
void SpawnWhiteFade1(u16 actor_index, u16 arg1);
void SpawnWhiteFade2(u16 actor_index, u16 arg1);
u16 func_80035C44(u16 actor_index, u16 arg1);
u16 func_8003EDF4(f32 arg0, s16 x, s16 y, s16 z);
void func_80065724(u16 actor_index);
void func_8006ABEC(u16 actor_index, s16* arg1);
u16 func_8006C908(u16 actor_index);
void func_8006D3E4(u16 actor_index, u16 actor_state);
void func_8008DF20(u16 actor_index);
s32 func_8008F220(u16 actor_index);
s32 func_800911D8(u16 actor_index);
s32 func_8009159C(u16 actor_index);

void func_801AC5FC_77B1EC(u16 actor_index);
void func_801AD920_77C510(u16 actor_index);
void func_801AF1C4_77DDB4(u16 actor_index);

void func_801A6900_7754F0(u16 actor_index) {
}


void func_801A6908_7754F8(u16 actor_index, u8 tile_value) {
    u16 index;

    if (gActors[actor_index].flags) {
    }

    for (index = 0; index < 7; index++) {
        func_80012044(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + D_801AFE90_77EA80[index], (s8)tile_value);
    }
}


void func_801A69CC_7755BC(u16 actor_index) {
    s32 position_x;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_ENABLED;
        gActors[actor_index].scaleY = 1.5f;
        gActors[actor_index].scaleX = 1.6f;
        gActors[actor_index].graphicIndex = 0x3810;

        if ((u16)gActors[actor_index].var_110) {
            gActors[actor_index].rotateZ = 270.0f;
        }
        else {
            gActors[actor_index].rotateZ = 90.0f;
        }

        gActors[actor_index].posZ.whole = -8;
        Sound_PlaySfxAtActor2(SFX_0126, actor_index);
    case 1:
        gActors[actor_index].posX.whole = Math_ApproachS32(gActors[actor_index].posX.whole, (s16)gActors[actor_index].var_0D8, 1);
        if (gActors[actor_index].posX.whole == (s16)gActors[actor_index].var_0D8) {
            gActors[actor_index].state++;
            func_801A6908_7754F8(actor_index, 0xC0);
            Sound_PlaySfxAtActor2(SFX_MECHSTEP_0059, actor_index);
            Sound_StopSfx(SFX_0126);
        }
        break;
    case 2:
        if (gActors[actor_index].health <= 0) {
            gActors[actor_index].flags = 0;
            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
            func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            func_801A6908_7754F8(actor_index, 0);
            return;
        }
        break;
    }
    if ((u16)gActors[actor_index].var_110) {
        position_x = gActors[actor_index].posX.whole + 16;
        if (gActors[0].posX.whole < position_x) {
            gActors[0].posX.whole = position_x;
        }
    }
    else {
        position_x = gActors[actor_index].posX.whole - 16;
        if (position_x < gActors[0].posX.whole) {
            gActors[0].posX.whole = position_x;
        }
    }
}


void func_801A6CB0_7758A0(void) {
    gActors[0x32].colorA = Math_ApproachS32(gActors[0x32].colorA, 255, 1);
    gActors[0x32].colorR = (255 - gActors[0x32].colorA) / 2;
    gActors[0x32].colorG = gActors[0x32].colorR;
    gActors[0x32].colorB = gActors[0x32].colorR;
}


void func_801A6D10_775900(u16 actor_index) {
    (gActors + actor_index)->var_110 = 32768.0f;
    func_8008DF20(actor_index);
    if ((gActors + actor_index)->state == 0x10) {
        (gActors + actor_index)->state = 0x50;
        (gActors + actor_index)->graphicFlags |= ACTOR_GFLAG_UNK8;
        (gActors + actor_index)->flags &= ~ACTOR_FLAG_FREEZE_POS;
        (gActors + actor_index)->var_160 = 0;
        switch ((gActors + actor_index)->var_0D8) {
        case 0x0:
            (gActors + actor_index)->var_160 = 1;
            (gActors + actor_index)->palette_18C = D_801AFE80_77EA70;
            (gActors + actor_index)->posZ.raw = 1;
            (gActors + actor_index)->unk_118 = 1.0f;
            break;
        case 0x80:
            (gActors + actor_index)->var_160 = 0x80;
            break;
        case 0x100:
            (gActors + actor_index)->var_160 = 0x100;
            (gActors + actor_index)->palette_18C = D_801AFE88_77EA78;
            (gActors + actor_index)->unk_118 = 1.0f;
            break;
        case 0x1000:
            (gActors + actor_index)->var_160 = 0x1000;
            break;
        case 0x2000:
            (gActors + actor_index)->var_160 = 0x2000;
            break;
        }
    }

    switch ((gActors + actor_index)->var_160) {
    case 1:
    case 0x80:
        break;
    case 0x100:
        (gActors + actor_index)->posZ.raw = gActors[0x40].posZ.raw - 1;
        (gActors + actor_index)->posX.raw = gActors[0x40].posX.raw + FIXED_UNIT(10);
        (gActors + actor_index)->posY.raw = (gActors + actor_index)->var_158 + (gActors + 0x40)->posY.raw + FIXED_UNIT(4);
        (gActors + actor_index)->unk_168 += (gActors + actor_index)->unk_16C;
        if ((gActors + actor_index)->unk_164 & 2) {
            (gActors + actor_index)->unk_16C = Math_ApproachS32((gActors + actor_index)->unk_16C, FIXED_UNIT(0.0625), FIXED_UNIT(0.00390625));
            if ((gActors + actor_index)->unk_168 > FIXED_UNIT(4)) {
                (gActors + actor_index)->unk_164 &= ~2;
            }
        }
        else {
            (gActors + actor_index)->unk_16C = Math_ApproachS32((gActors + actor_index)->unk_16C, FIXED_UNIT(-0.0625), FIXED_UNIT(0.00390625));
            if ((gActors + actor_index)->unk_168 < FIXED_UNIT(-4)) {
                (gActors + actor_index)->unk_164 |= 2;
            }
        }
        break;
    case 0x1000:
        (gActors + actor_index)->var_160++;
        (gActors + actor_index)->palette_18C = D_800D5348;
        (gActors + actor_index)->unk_164 = 0;
        (gActors + actor_index)->unk_118 = 1.0f;
    case 0x1001:
        (gActors + actor_index)->posX.raw = Math_ApproachS32((gActors + actor_index)->posX.raw, FIXED_UNIT(10), FIXED_UNIT(1.125));
        (gActors + actor_index)->unk_164++;
        if (!((gActors + actor_index)->unk_164 & 0xF)) {
            Sound_PlaySfxAtActor2(SFX_STEP_0053, actor_index);
        }

        if ((gActors + actor_index)->posX.whole == 0xA) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->palette_18C = D_800D4E84;
            (gActors + actor_index)->unk_118 = 1.0f;
            func_8005DF5C(0x19);
            D_800D5830 = -0x60;
            D_800D5834 = 0;
        }
        break;
    case 0x1002:
        if (func_8005DEFC() == 0) {
            (gActors + actor_index)->var_160++;
            Sound_PlaySfx(SFX_MARINA_YELL3);
            Sound_PlaySfx(SFX_002B);
            (gActors + actor_index)->palette_18C = D_800D483C;
            (gActors + actor_index)->unk_118 = 1.0f;
        }
        break;
    case 0x1003:
        if ((gActors + actor_index)->unk_118 == 0.0f) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->palette_18C = D_800D49EC;
            (gActors + actor_index)->unk_118 = 1.0f;
            Sound_PlaySfx(SFX_HIT_002D);
            gActors[0x40].state++;
            Sound_StopMusic();
        }
        break;
    case 0x1004:
        if ((gActors + actor_index)->unk_118 == 0.0f) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->palette_18C = D_800D4E84;
            (gActors + actor_index)->unk_118 = 1.0f;
        }
        break;
    case 0x1005:
        if (gActors[0x40].flags == 0) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->palette_18C = D_800D5348;
            (gActors + actor_index)->flags |= ACTOR_FLAG_FLIPPED;
            (gActors + actor_index)->unk_118 = 1.0f;
        }
        break;
    case 0x1006:
        (gActors + actor_index)->posX.raw = Math_ApproachS32((gActors + actor_index)->posX.raw, FIXED_UNIT(-96), FIXED_UNIT(1.125));
        if (gActors[0].posX.whole == -0x60) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->flags &= ~ACTOR_FLAG_FLIPPED;
            (gActors + actor_index)->palette_18C = D_800D4EA8;
            (gActors + actor_index)->unk_118 = 1.0f;
            func_8005DF5C(0x1A);
            D_800D5830 = -0x60;
            D_800D5834 = 0;
        }

        (gActors + actor_index)->unk_164++;
        if (!((gActors + actor_index)->unk_164 & 0xF)) {
            Sound_PlaySfxAtActor2(SFX_STEP_0053, actor_index);
        }
        break;
    case 0x1007:
        if (func_8005DEFC() == 0) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->unk_164 = 0x32;
        }
        break;
    case 0x1008:
        (gActors + actor_index)->unk_164--;
        if ((gActors + actor_index)->unk_164 < 0) {
            (gActors + actor_index)->var_160++;
            func_8005DF5C(0x1B);
            D_800D5830 = 0x60;
            D_800D5834 = 0;
            Sound_PlaySfx(SFX_LEO_LAUGH);
            (gActors + actor_index)->palette_18C = D_800D4E84;
            (gActors + actor_index)->unk_118 = 1.0f;
        }
        break;
    case 0x1009:
        if (func_8005DEFC() == 0) {
            (gActors + actor_index)->unk_164 = 0x80;
            (gActors + actor_index)->var_160++;
            gActors[0x32].actorType = ACTORTYPE_GRAPHIC_29;
            Actor_Initialize(0x32U);
            gActors[0x32].graphicList = (s16*)D_801AFEA0_77EA90;
            gActors[0x32].colorA = 0;
            gActors[0x32].posX.whole = 0x40;
            gActors[0x32].posY.whole = -8;
            Sound_PlaySfx(SFX_013C);
        }
        break;
    case 0x100A:
        func_801A6CB0_7758A0();
        (gActors + actor_index)->unk_164--;
        if ((gActors + actor_index)->unk_164 < 0) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->velocityX.raw = FIXED_UNIT(3);
            (gActors + actor_index)->velocityY.raw = FIXED_UNIT(4);
            (gActors + actor_index)->palette_18C = D_800D4684;
            (gActors + actor_index)->unk_118 = 1.0f;
            Sound_PlaySfxAtActor2(SFX_DASH_0116, actor_index);
            Sound_PlaySfx(SFX_MARINA_YELL1);
            gActors[0x30].unk_174 = 5;
        }
        break;
    case 0x100B:
        func_801A6CB0_7758A0();
        (gActors + actor_index)->velocityX.raw -= FIXED_UNIT(0.03125);
        (gActors + actor_index)->velocityY.raw -= FIXED_UNIT(0.1875);
        if (((gActors + actor_index)->velocityY.raw < 0) && ((gActors + actor_index)->posY.whole < -0x1E)) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->velocityY.raw = 0;
            (gActors + actor_index)->velocityX.raw = (gActors + actor_index)->velocityX.raw / 2;
            (gActors + actor_index)->posY.whole = -0x1E;
            (gActors + actor_index)->palette_18C = D_800D44BC;
            (gActors + actor_index)->unk_118 = 1.0f;
            Sound_PlaySfxAtActor2(SFX_LAND_0025, actor_index);
        }
        break;
    case 0x100C:
        func_801A6CB0_7758A0();
        (gActors + actor_index)->velocityX.raw = Math_ApproachS32((gActors + actor_index)->velocityX.raw, 0, FIXED_UNIT(0.125));
        if ((gActors + actor_index)->unk_118 == 0.0f) {
            (gActors + actor_index)->var_160++;
            (gActors + actor_index)->unk_164 = 0x3C;
            (gActors + actor_index)->palette_18C = D_800D4E84;
            (gActors + actor_index)->unk_118 = 1.0f;
        }
        break;
    case 0x100D:
        (gActors + actor_index)->unk_164--;
        if ((gActors + actor_index)->unk_164 < 0) {
            (gActors + actor_index)->flags = 0;
            gStageState += 1;
        }
        func_801A6CB0_7758A0();
        break;
    case 0x2000:
        (gActors + actor_index)->var_160++;
        (gActors + actor_index)->colorA = 0x80;
        (gActors + actor_index)->palette_18C = D_801AFEAC_77EA9C;
        (gActors + actor_index)->unk_118 = 1.0f;
        break;
    case 0x2001:
        break;
    }
}


void func_801A7500_7760F0(u16 actor_index) {
    u16 new_actor_index;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_CLANCER_PILOT_C;
        gActors[actor_index].posZ.whole = -3;
    }
    else {
        new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CLANCER_PILOT_C + 2, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        if (new_actor_index != 0) {
            gActors[new_actor_index].colorA = 0x60;
            gActors[new_actor_index].unk_148 = 1.0f;
        }

        new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CLANCER_PILOT_D, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 1);
        if (new_actor_index != 0) {
            gActors[new_actor_index].unk_148 = 1.0f;
        }
    }
}


void func_801A7620_776210(u16 actor_index) {
    f32 multiplier = 1.0f;

    if (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gButtonHold & gButton_DRight)) ||
        (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gButtonHold & gButton_DLeft))) {
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
    }

    gActors[actor_index].unk_148 = gActors[actor_index].scaleX * multiplier;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_148 = -gActors[actor_index].unk_148;
    }
}


void func_801A76DC_7762CC(u16 actor_index) {
    if ((gButtonHold & gButton_DRight) || (gButtonHold & gButton_DLeft)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (gButtonHold & gButton_DRight) {
                gActors[actor_index].state = 0x60;
            }
        }
        else if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].state = 0x60;
        }
    }
    else {
        gActors[actor_index].state = 0x60;
    }
}


void func_801A77AC_77639C(u16 actor_index) {
    if (gButtonPress & gButton_A) {
        if (gButtonHold & gButton_DDown) {
            gActors[actor_index].state = 0x3C0;
        }
        else {
            gActors[actor_index].state = 0x130;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_120 = (f32)gActors[actor_index].velocityX.raw * 1.5;
            gActors[actor_index].var_158 = FIXED_UNIT(0.375);
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].var_160 = 0;
            gActors[actor_index].unk_164 = -1;
            gActors[actor_index].unk_11C = FIXED_UNIT(3.0);
            gActors[actor_index].unk_124 = 0.0f;
            func_801A7620_776210(actor_index);
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        }
    }
}


void func_801A78DC_7764CC(u16 actor_index) {
    if (gButtonPress & gButton_B) {
        if (gButtonHold & gButton_DUp) {
            gActors[actor_index].state = 0x4010;
        }
        else {
            gActors[actor_index].state = 0x3B0;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].unk_118 = -1.0f;
            gActors[actor_index].unk_11C = 0.0f;
            func_801A7620_776210(actor_index);
        }
    }
    else {
        func_801A77AC_77639C(actor_index);
    }
}


void func_801A79BC_7765AC(u16 actor_index) {
    if ((gButtonHold & gButton_DLeft) || (gButtonHold & gButton_DRight)) {
        if (D_800BE5FC == 3) {
            gActors[actor_index].state = 0xA0;
        }
        else if (gActors[actor_index].state != 0x91) {
            gActors[actor_index].state = 0x90;
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (!(gButtonHold & gButton_DLeft)) {
                gActors[actor_index].state = 0x70;
            }
        }
        else if (!(gButtonHold & gButton_DRight)) {
            gActors[actor_index].state = 0x70;
        }
    }
}


void func_801A7AB8_7766A8(u16 actor_index) {
    gActors[actor_index].unk_118 = 1.5f;
    func_801A76DC_7762CC(actor_index);
    func_801A78DC_7764CC(actor_index);
}


void func_801A7B20_776710(u16 actor_index) {
    if (32.0 <= gActors[actor_index].unk_11C + gActors[actor_index].unk_118) {
        Sound_PlaySfxAtActor2(SFX_STEP_0053, actor_index);
    }

    if (gActors[actor_index].unk_118 < 1.2) {
        gActors[actor_index].unk_118 = 1.2f;
    }

    gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 1.5f, 0.02f);
    func_801A76DC_7762CC(actor_index);

    if (gActors[actor_index].state != 0xA1) {
        ACTOR_GFX_INIT(actor_index, D_800E1C2C);
    }

    func_801A78DC_7764CC(actor_index);
}


DEFAULT_INT func_801A7C34_776824(u16 actor_index) {
    func_801A7620_776210(actor_index);
    if ((gButtonHold & gButton_DLeft) || (gButtonHold & gButton_DRight)) {
        gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 2.0f, 0.02f);
    }
    else {
        gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 0.0f, 0.02f);
    }

    if (gButtonPress & gButton_B) {
        gActors[actor_index].state = 0x130;
        gActors[actor_index].unk_11C = FIXED_UNIT(4);
        gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * FIXED_UNIT(2);
        gActors[actor_index].unk_124 = 1.0f;
        return 1;
    }

    if (gButtonPress & gButton_A) {
        gActors[actor_index].state = 0xF0;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 1.5;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
        Sound_PlaySfxAtActor2(SFX_0118, actor_index);
    }
}


void func_801A7E04_7769F4(u16 actor_index) {
    u16 new_actor_index;

    gActors[actor_index].var_15C--;
    if ((gActors[actor_index].var_15C < 0) || (gButtonPress & gButton_A) || !(gActors[0x30].flags & ACTOR_FLAG_DRAW)) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }

    if (gActiveFrames & 1) {
        Actor_SetColorRgb(actor_index, 0x1F);
    }
    else {
        Actor_SetColorRgb(actor_index, 0);
    }

    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    gActors[actor_index].var_150 += gActors[actor_index].var_158;
    gActors[actor_index].var_158 -= FIXED_UNIT(0.125);
    gActors[actor_index].posX.raw = gActors[0x30].posX.raw;
    gActors[actor_index].posY.raw = gActors[actor_index].var_150 + gActors[0x30].posY.raw;

    if (gActors[actor_index].var_15C < 5) {
        gActors[actor_index].colorA -= 0x30;
        gActors[actor_index].scaleX -= 0.1;
        gActors[actor_index].scaleY -= 0.1;
    }
    else {
        gActors[actor_index].scaleX += 0.02;
        gActors[actor_index].scaleY += 0.02;
        new_actor_index = func_80035C44(actor_index, D_801AFECC_77EABC[gActors[actor_index].var_154]);
        if (new_actor_index != 0) {
            gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[new_actor_index].posY.whole--;
        }
    }
}


void func_801A8008_776BF8(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(8, 0x10);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_W4_4;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicIndex = GINDEX_QUESTIONBUBBLE;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].palette_18C = D_800D8668;
        gActors[new_actor_index].var_150 = FIXED_UNIT(16.0);
        gActors[new_actor_index].scaleX = 0.8f;
        gActors[new_actor_index].scaleY = 0.8f;
        gActors[new_actor_index].var_154 = gActors[actor_index].var_160;
        gActors[new_actor_index].var_158 = FIXED_UNIT(2.0);
        gActors[new_actor_index].var_15C = 20;
    }
}


void func_801A8108_776CF8(u16 actor_index) {
    if (gActors[actor_index].unk_164 >= 0) {
        gActors[actor_index].unk_164--;
    }

    if ((gButtonPress & gButton_A) && gActors[actor_index].var_160 < 3 && gActors[actor_index].unk_164 < 0) {
        gActors[actor_index].state = 0x131;
        gActors[actor_index].unk_124 = 1.0f;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].var_160++;
        gActors[actor_index].unk_164 = 8;
        Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        func_801A8008_776BF8(actor_index);
    }
}


void func_801A81E4_776DD4(u16 actor_index) {
    u16 new_actor_index;
    s16 bound_top;
    s16 bound_bottom;
    u16 red;
    u16 green;
    u16 blue;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].posX.whole = -104;
        gActors[actor_index].posY.whole = 92;
        gActors[actor_index].var_150 = gGuestActorHP;
    case 1:
        if (gTeranPlayerActor.health == 0) {
            gActors[actor_index].var_154 -= 2;
            if (gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].flags = 0;
                return;
            }
        }
        else {
            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 40, 2);
        }

        bound_top = (s16)(gActors[actor_index].var_154 / 10 - 1);
        bound_bottom = (s16)-bound_top;
        red = 128.0f - (f32)gActors[actor_index].var_150 / 12.0f;
        red += gActiveFrames & 15;
        green = (gActiveFrames & 7) + 120;
        blue = (gActiveFrames & 3) + 16;
        new_actor_index = func_8003D68C(ACTOR_GFLAG_UNK11, (bound_top + 0), (bound_bottom + 0), 0, gActors[actor_index].var_150 / 10, gActors[actor_index].posX.raw, gActors[actor_index].posY.raw, FIXED_UNIT(528), red, green, blue) + 0;
        if (new_actor_index) {
            func_80031D58(actor_index, new_actor_index);
        }

        if (gTeranPlayerActor.health < 201) {
            blue = 0;
            red = (gActiveFrames & 15) * 16 + 15;
        }
        else {
            red = 0;
            blue = 31;
        }

        new_actor_index = func_8003D68C(ACTOR_GFLAG_UNK11, (bound_top + 0), (bound_bottom + 0), 0, 100, gActors[actor_index].posX.raw, gActors[actor_index].posY.raw, FIXED_UNIT(528) - 1, red, 0, blue) + 0;
        if (new_actor_index) {
            func_80031D58(actor_index, new_actor_index);
        }

        red = (gActiveFrames & 1) * 16 + 239;
        bound_top = gActors[actor_index].var_154 / 10;

        new_actor_index = func_8003D68C(ACTOR_GFLAG_UNK11, (s16)(bound_top + 0), (s16)-(bound_top + 0), -1, 101, gActors[actor_index].posX.raw, gActors[actor_index].posY.raw, FIXED_UNIT(528) - 2, red, red, red) + 0;
        if (new_actor_index) {
            func_80031D58(actor_index, new_actor_index);
        }

        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, gTeranPlayerActor.health, 10);
        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = ACTORTYPE_GRAPHIC_52;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
            gActors[new_actor_index].graphicIndex = GINDEX_PORTRAIT_TERAN;
            gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw + FIXED_UNIT(-20);
            gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw + FIXED_UNIT(-8);
            gActors[new_actor_index].posZ.raw = FIXED_UNIT(528);
            gActors[new_actor_index].scaleX = ((f32)gActors[actor_index].var_154 / 40.0f) * 0.6;
            func_80031D58(actor_index, new_actor_index);
            if (gTeranPlayerActor.health < gActors[actor_index].var_150 && (gActiveFrames & 1)) {
                Actor_SetColorRgb(new_actor_index, 0x3F);
                gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleX - 0.2;
            }
            gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX;
        }
        return;
    }
}


void func_801A870C_7772FC(u16 actor_index) {
    if ((gActors[actor_index].state != 0) && (gActors[actor_index].health != 0)) {
        if (gActors[actor_index].unk_16C >= 0x65) {
            gActors[actor_index].unk_16C = gActors[actor_index].unk_16C - 1;
        }
        else {
            gActors[actor_index].unk_16C = 0x64;
        }

        func_8002BC90((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ^ ACTOR_FLAG_FLIPPED);

        if ((gActors[actor_index].unk_13C_f32 == 28.0f) && (gButtonHold & gButton_DUp)) {
            gActors[actor_index].state = 0x1E0;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }
    }

    Clancer_Update(actor_index);

    if (!(gDebugBitfield & 0xA000)) {
        u16 state = gActors[actor_index].state + 0;
        switch ((s32)gActors[actor_index].state) {
        case 0x0:
            gActors[actor_index].state = 0x60;
            gActors[actor_index].health = gGuestActorHP;
            gActors[actor_index].unk_16C = 0x64;
            break;
        case 0x60:
        case 0x61:
            if (gActors[actor_index].var_0D8 & 1) {
                switch (gActors[actor_index].unk_174) {
                case 0:
                    func_80067E9C(actor_index);
                    break;
                case 1:
                    func_80067F98(actor_index);
                    break;
                }
            }
            else {
                func_80067EF0(actor_index);
                if (gButtonHold & gButton_DDown) {
                    gActors[actor_index].state = 0x3D0;
                    gActors[actor_index].unk_164 = 1;
                }
                else {
                    func_801A79BC_7765AC(actor_index);
                    func_801A78DC_7764CC(actor_index);
                }
            }
            break;
        case 0x3D1:
        case 0x3D2:
            if (state == 0x3D2) {
                if (gButtonHold & gButton_DDown) {
                    gActors[actor_index].unk_118 = 1.0f;
                    if (gActors[actor_index].unk_16C < 0x7D) {
                        gActors[actor_index].unk_16C = gActors[actor_index].unk_16C + 2;
                    }
                }
                else if (gActors[actor_index].unk_118 > 1.0f) {
                    gActors[actor_index].unk_118 = 1.0f;
                }
            }
            func_801A77AC_77639C(actor_index);
            break;
        case 0x291:
            if (gButtonPress & gButton_A) {
                gActors[actor_index].state = 0x3C0;
            }
            break;
        case 0x201:
            if (((gButtonHold & gButton_DRight) != 0) || (gButtonHold & gButton_DLeft)) {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].state = (gButtonHold & gButton_DLeft) ? 0x240 : 0x220;
                }
                else if ((gButtonHold & gButton_DRight) != 0) {
                    gActors[actor_index].state = 0x240;
                }
                else {
                    gActors[actor_index].state = 0x220;
                }
            }
            if (gButtonHold & gButton_DUp) {
                gActors[actor_index].state = 0x210;
            }
            break;
        case 0xA1:
            func_801A7B20_776710(actor_index);
            break;
        case 0x91:
            func_801A7AB8_7766A8(actor_index);
            func_801A79BC_7765AC(actor_index);
            func_801A78DC_7764CC(actor_index);
            break;
        case 0xD1:
            func_801A7C34_776824(actor_index);
            break;
        case 0x241:
            gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 2.0f, 0.04f);
            if (((gButtonHold & gButton_DRight) != 0) || (gButtonHold & gButton_DLeft)) {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    if ((gButtonHold & gButton_DRight) != 0) {
                        gActors[actor_index].state = 0x200;
                    }
                }
                else if (gButtonHold & gButton_DLeft) {
                    gActors[actor_index].state = 0x200;
                }
            }
            else {
                gActors[actor_index].state = 0x200;
            }
            break;
        case 0x131:
            if ((gButtonHold & gButton_A) && (gActors[actor_index].var_15C == 0)) {
                gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, FIXED_UNIT(0.015625));
                gActors[actor_index].velocityY.raw += gActors[actor_index].var_158;
            }
            else {
                gActors[actor_index].var_15C = 1;
            }
        case 0x101:
            func_801A8108_776CF8(actor_index);
            if (gButtonHold & gButton_DRight) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2.5), FIXED_UNIT(0.25));
            }
            else if (gButtonHold & gButton_DLeft) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2.5), FIXED_UNIT(0.25));
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            }
            break;
        case 0x100:
            gActors[actor_index].var_160 = 4;
            break;
        case 0x3B1:
        case 0x3B2:
            if ((gButtonPress & gButton_B) && (gActors[actor_index].unk_118 > 4.0f) && (gActors[actor_index].unk_11C < 6.0f)) {
                if (gButtonHold & gButton_DUp) {
                    gActors[actor_index].state = 0x4010;
                }
                else {
                    gActors[actor_index].unk_11C = (gActors[actor_index].unk_11C + 1.0f);
                }
            }

            if (gActors[actor_index].graphicTimer == 1) {
                gActors[actor_index].velocityX.raw = (s32)((f64)(f32)gActors[actor_index].velocityX.raw * 1.2);
            }

            if (gActors[actor_index].unk_118 == 0.0f) {
                Sound_PlaySfxAtActor2(SFX_THROW_002A, actor_index);
                if (gActors[actor_index].var_158 & 1) {
                    gActors[actor_index].graphicList = D_800E1C84;
                }
                else {
                    gActors[actor_index].graphicList = D_800E1C9C;
                }
                gActors[actor_index].var_158 += 1;
            }

            if (gActors[actor_index].graphicTimer == 0) {
                func_801A7620_776210(actor_index);
            }

            if ((gActors[actor_index].state == 0x3B2) && (gActors[actor_index].unk_118 >= 4.0f)) {
                func_801A77AC_77639C(actor_index);
            }
            break;
        case 0x3C2:
            gActors[actor_index].var_160 = 1;
            break;
        case 0x1E1:
            if (gButtonHold & gButton_DDown) {
                gActors[actor_index].state = 0x100;
                gActors[actor_index].var_160 = 4;
            }
            break;
        case 0x70:
        case 0x150:
        case 0x151:
        case 0x3D3:
        case 0x71:
            if (state == 0x150) {
                Sound_PlaySfx(SFX_LAND_0025);
            }
            func_801A78DC_7764CC(actor_index);
            break;
        case 0x4010:
            gActors[actor_index].state = gActors[actor_index].state + 1;
            ACTOR_GFX_INIT(actor_index, (s16*)D_801AFEB8_77EAA8);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags = gActors[actor_index].flags & ~ACTOR_FLAG_UNK16;
            func_801A7620_776210(actor_index);
            gActors[actor_index].velocityX.raw = (s32)(gActors[actor_index].unk_148 * (f32)FIXED_UNIT(1));
            gActors[actor_index].velocityY.raw = (s32)(((f32)gActors[actor_index].unk_16C / 100.0f) * (f32)FIXED_UNIT(7));
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            gActors[actor_index].hitFlags = HITFLAG_0 | HITFLAG_3;
            gActors[actor_index].hitType = HITTYPE_BOOM_11;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(-2);
            gActors[actor_index].hitboxAY0 = 0x18;
            gActors[actor_index].hitboxAY1 = 0;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].hitboxAX0 = -0x11;
                gActors[actor_index].hitboxAX1 = 4;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0x11;
                gActors[actor_index].hitboxAX0 = -4;
            }

            gActors[actor_index].damage = (s16)(s32)(((f32)gActors[actor_index].unk_16C / 100.0f) * 64.0f);
            gActors[actor_index].var_160 = 4;
            gActors[actor_index].var_158 = 0;
            Sound_PlaySfxAtActor2(SFX_008E, actor_index);
        case 0x4011:
            if (func_8006C908(actor_index) == 0) {
                gActors[actor_index].unk_0FC.raw = (s32)((f64)(f32)gActors[actor_index].velocityY.raw * 1.5);
                if (gActors[actor_index].unk_0FC.raw < FIXED_UNIT(4)) {
                    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4);
                }

                if (gActors[actor_index].unk_0FC.raw > FIXED_UNIT(8)) {
                    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(8);
                }

                if (gActors[actor_index].flags_098 & 1) {
                    gActors[actor_index].velocityX.raw = (s32)((f64)(f32)gActors[actor_index].velocityX.raw * 0.75);
                    Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
                    gActors[actor_index].var_15C = gActors[actor_index].velocityY.raw;
                    gActors[actor_index].velocityY.raw = (s32)((f64)(f32)gActors[actor_index].velocityY.raw * 0.4);
                    gActors[actor_index].var_158 = 6;
                }

                if (gActors[actor_index].var_158 > 0) {
                    gActors[actor_index].var_158--;
                    if (gActors[actor_index].var_158 == 0) {
                        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                        gActors[actor_index].velocityY.raw = (s32)((f64)(f32)gActors[actor_index].var_15C * 0.8);
                    }
                    else {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                    }
                    gActors[actor_index].damage = (s16)(s32)((f64)(f32)gActors[actor_index].damage * 0.75);
                }

                if (gActors[actor_index].damage >= 0xB) {
                    gActors[actor_index].damage = gActors[actor_index].damage - 1;
                }

                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
                if (gActors[actor_index].velocityY.raw < 0) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                    gActors[actor_index].state = 0x101;
                    gActors[actor_index].graphicList = D_800E1D30;
                    gActors[actor_index].graphicTimer = 1;
                }
                else if (gActors[actor_index].flags_098 & 0x10) {
                    gActors[actor_index].velocityY.raw = 0;
                }
                func_8006ABEC(actor_index, D_800E1C78);
            }
            break;
        }

        gActors[0].flags &= ~(ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK12);
        gActors[0].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        gActors[0].posX.whole = gActors[actor_index].posX.whole;
        gActors[0].posY.whole = gActors[actor_index].posY.whole;
        gPlayerPosX.whole = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gPlayerPosY.whole = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;

        if (gActors[actor_index].health >= 0x3E9) {
            gActors[actor_index].health = 0x3E8;
        }

        if (gActors[actor_index].health != 0) {
            state = gActors[actor_index].state;
            if ((state >= 0x181) && (state < 0x1B2)) {
                gActors[actor_index].iFrames = 0x1E;
            }
        }
    }
}


void func_801A9478_778068(u16 actor_index) {
    u16 index = (gActors[actor_index].var_0D8 & 7) - 1;
    gActors[actor_index].actorType = ACTORTYPE_OVL2_W4_CLANCERKID;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].var_110 = (u32)D_801AFEF0_77EAE0[index];
    gActors[actor_index].var_0D8 = D_801AFF00_77EAF0[index] + index;
}


void func_801A9534_778124(u16 actor_index) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x70;
    }
}


void func_801A9584_778174(u16 actor_index) {
    u16 subtype;
    u16 new_actor_index;
    s32 temp_v0_7;
    u16 index = actor_index;
    Actor* actor = &gActors[index];

    subtype = actor->var_0D8 & 7;

    Clancer_Update(index);

    switch (actor->state) {
    case 0x4010:
        if (actor->unk_184_s16[1] - gScreenPosCurrentY.whole < actor->posY.whole) {
            actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.0625));
        }
        else {
            actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(0.0625));
        }

        if (Actor_IsOutsideRegion(actor_index, 32) == 0 && !(gActiveFrames & 3)) {
            new_actor_index = func_8003EEC0(1.0f, actor->posX.whole, actor->posY.whole, actor->posZ.whole - 1);
            if (new_actor_index != 0) {
                gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(0.5);
            }
        }

        if (actor->graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E2274);
        }

        if (gActors[0].posX.whole < actor->posX.whole) {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            actor->flags &= ~ACTOR_FLAG_FLIPPED;
        }
        break;
    case 0:
        if (actor_index >= 0x90) {
            actor->state = 0x4010;
            ACTOR_GFX_INIT(actor_index, D_800E2274);
            actor->posY.whole = actor->unk_184_s16[1] - gScreenPosCurrentY.whole;
            actor->unk_184_s16[1] += 32;
        }
        else {
            if (!(actor->var_0D8 & 8)) {
                actor->unk_184_s16[0] = D_801AFF2C_77EB1C[subtype * 2];
                actor->unk_184_s16[1] = D_801AFF2C_77EB1C[subtype * 2 + 1];
            }
            actor->state = 0x60;
        }
        break;
    case 0x61:
        actor->velocityX.raw = 0;
        if (func_800734C4(actor_index, 8) & 0x8000) {
        }
        else {
            if ((actor->var_0D8 & 7) == 7) {
                switch (actor->unk_174) {
                case 0:
                    func_80067E50(actor_index, D_800E1700);
                    if (D_800D5830 == -112 && actor_index == 0x57) {
                        if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                            actor->state = 0x70;
                        }
                    }
                    else {
                        func_801A9534_778124(actor_index);
                    }
                    break;
                case 1:
                    func_801A9534_778124(actor_index);
                    func_80067E50(actor_index, D_800E2274);
                    break;
                case 0x100:
                    actor->unk_174 = 0;
                    SpawnGemRing(0xA);
                    break;
                }
            }
            else {
                switch (actor->unk_174) {
                case 0:
                    if (D_800E3584 & 0xC0000) {
                        actor->state = 0x70;
                    }
                    else if (actor->var_0D8 & 8) {
                        func_80067E50(actor_index, D_800E1700);
                        break;
                    }
                    else {
                        temp_v0_7 = func_8004089C(actor_index + 0x8000, D_801AFF10_77EB00[subtype]);
                        switch (temp_v0_7) {
                        case 0x1000:
                            func_80067E50(actor_index, D_800E2274);
                            break;
                        case 0x800:
                            actor->unk_174++;
                            break;
                        default:
                            func_80067E50(actor_index, D_800E1700);
                            break;
                        }
                    }
                    break;
                case 1:
                    func_80067E50(actor_index, D_800E1700);
                    if (func_8005DEFC() == 0) {
                        actor->flags = 0;
                        SpawnParticle_RingWaveBlue(1.0f, actor->posX.whole, actor->posY.whole, actor->posZ.whole);
                    }
                    break;
                }
            }
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        break;
    }
    if (actor->var_0D8 & 8) {
        actor->flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
    }
}


void func_801A9A3C_77862C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (func_80073558(actor_index, 8) & 0x8000) {
            return;
        }

        gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
        if ((D_800E3584 & 0xC0000) && gStageState >= 12) {
            gActors[actor_index].state = 0x70;
            return;
        }

        switch (gActors[actor_index].unk_174) {
        case 0:
            func_80067E50(actor_index, D_800E1700);
            switch (gActors[actor_index].var_0D8 & 0xF) {
            case 8:
                func_8004089C(actor_index + 0x8000, D_801AFF58_77EB48);
                break;
            case 9:
                func_8004089C(actor_index + 0x8000, D_801AFF5C_77EB4C);
                break;
            case 10:
                func_8004089C(actor_index + 0x8000, D_801AFF60_77EB50);
                break;
            case 11:
                func_8004089C(actor_index + 0x8000, D_801AFF64_77EB54);
                break;
            case 12:
                func_8004089C(actor_index + 0x8000, D_801AFF68_77EB58);
                break;
            case 13:
                func_8004089C(actor_index + 0x8000, D_801AFF6C_77EB5C);
                break;
            case 14:
                func_8004089C(actor_index + 0x8000, D_801AFF70_77EB60);
                break;
            case 15:
                break;
            }
            break;
        case 1:
            func_80067F98(actor_index);
            break;
        case 2:
            gActors[actor_index].unk_174 = 5;
            gActors[actor_index].unk_184_s16[0] = 0x178;
            break;
        case 3:
            gActors[actor_index].unk_174++;
            gActors[actor_index].state = 0x70;
            break;
        case 4:
            gActors[actor_index].state = 0xA0;
            break;
        case 5:
            gActors[actor_index].state = 0x460;
            break;
        case 6:
            break;
        }

        break;
    case 0x91:
        func_80073558(actor_index, 8);
        break;
    case 0xA1:
        gActors[actor_index].unk_184_s16[0] = 0x4E2;
        func_800734C4(actor_index, 8);
        func_80065724(actor_index);
        break;
    }
}


void func_801A9D34_778924(u16 actor_index) {
    switch (gActors[actor_index].unk_174) {
    case 0:
        func_80067E50(actor_index, D_800E1750);
        break;
    default:
        break;
    case 1:
        func_80067E50(actor_index, D_800E2274);
        break;
    case 2:
        gActors[actor_index].unk_174++;
        gActors[actor_index].unk_184_s16[0] = gScreenPosCurrentX.whole - 55;
        break;
    case 3:
        gActors[actor_index].unk_174++;
        func_80067E50(actor_index, D_800E23C0);
        break;
    case 5:
        gActors[actor_index].unk_174++;
        func_80067E50(actor_index, D_800E23D0);
        break;
    case 6:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x70;
            gActors[actor_index].unk_174 = 0;
        }
        break;
    case 7:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        func_80067E50(actor_index, D_800E1750);
        break;
    }
}


void func_801A9E6C_778A5C(u16 actor_index) {
    gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_17C;
    gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
    gActors[actor_index].state = 0x430;
}


void func_801A9EB8_778AA8(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        ACTOR_GFX_INIT(actor_index, D_800E1F64);
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
    }
    else if (gActors[actor_index].var_0D8 & 4) {
        func_8006D3E4(actor_index, 0x100);
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-5);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        gActors[actor_index].var_0D8 &= ~8;
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
    }
    else {
        func_80065724(actor_index);
        gActors[actor_index].posX.whole = gActors[0x47].posX.whole;
        gActors[actor_index].posY.whole = gActors[0x47].posY.whole + 4;
        gActors[actor_index].posZ.raw = gActors[0x47].posZ.raw - 1;
        func_80066BCC(actor_index);
    }
}


void func_801A9FF8_778BE8(u16 actor_index) {
    if (gActors[actor_index].var_0D8 & 8) {
        func_801A9EB8_778AA8(actor_index);
        return;
    }

    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        ACTOR_GFX_INIT(actor_index, D_800E1750);
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (!(gActors[actor_index].var_0D8 & 1)) {
            if (func_800734C4(actor_index, 8) & 0x8000) {
                return;
            }
            func_801A9D34_778924(actor_index);
        }
        else {
            func_801A9E6C_778A5C(actor_index);
        }
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 0.8f;
        break;
    }
}


void func_801AA120_778D10(u16 actor_index, u16 new_actor_index) {
    s32 angle = Math_PlaneHalf(
        gActors[D_800E3580].posX.whole - gActors[actor_index].posX.whole,
        gActors[D_800E3580].posY.whole - gActors[actor_index].posY.whole
    );

    SpawnShuriken(
        new_actor_index,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        COS(angle) * FIXED_UNIT(2.875),
        SIN(angle) * FIXED_UNIT(2.875)
    );
}


void func_801AA224_778E14(u16 actor_index, u16 new_actor_index) {
    Actor* child = &gActors[new_actor_index];
    child->actorType = ACTORTYPE_CLANBOMB;
    Actor_Initialize(new_actor_index);
    child->posX.whole = gActors[actor_index].posX.whole;
    child->posY.whole = gActors[actor_index].posY.whole;
    child->velocityX.raw = gActors[actor_index].unk_148 * (f32)FIXED_UNIT(2.0);
    child->velocityY.raw = FIXED_UNIT(3.0);
    child->var_110 = 4355.0f;
    child->var_0D8 = 2;
}


void func_801AA310_778F00(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (gActors[actor_index].health < 11) {
            switch (gActors[actor_index].var_0D8 & 3) {
            case 0:
                gActors[actor_index].state = 0x430;
                break;
            case 1:
                gActors[actor_index].state = 0x440;
                break;
            case 2:
                gActors[actor_index].state = 0x450;
                break;
            case 3:
                gActors[actor_index].state = 0x480;
                break;
            }
        }

        func_80067E50(actor_index, D_800E1700);
        if (gActors[actor_index].var_158 > 1000) {
            gActors[actor_index].var_158 = 1000;
        }

        if (gActors[actor_index].unk_174 == 0) {
            if ((!(func_800734C4(actor_index, 8) & 0x8000)) &&
                (Actor_IsOutsideRegion(actor_index, -8) == 0) &&
                (func_80029B00(208, 96, -96))) {
                gActors[actor_index].unk_174++;
                ACTOR_GFX_INIT(actor_index, D_800E24B0);
            }
        }
        else {
            switch (gActors[actor_index].var_0D8 & 15) {
            case 0:
                if (!(func_800734C4(actor_index, 8) & 0x8000)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x70;
                    }
                    else if ((gActors[actor_index].var_158 >= 11) && (func_80029B00(200, 96, -96))) {
                        gActors[actor_index].state = 0x3A0;
                        gActors[actor_index].pfn_158 = func_801AA120_778D10;
                    }
                }
                break;
            case 1:
                if (!(func_800734C4(actor_index, 8) & 0x8000)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x70;
                    }
                    else if ((gActors[actor_index].var_158 >= 31) && (func_80029B00(200, 96, -96))) {
                        gActors[actor_index].state = 0x3E0;
                        gActors[actor_index].unk_124 = 1008.0f;
                    }
                }
                break;
            case 2:
                if (func_80029B00(200, 80, -80)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x70;
                    }
                    else {
                        gActors[actor_index].unk_184_s16[0] = gTeranPlayerActor.unk_17C;
                        if ((!(func_800734C4(actor_index, 0x70) & 0x8000)) && (gActors[actor_index].var_158 >= 21)) {
                            gActors[actor_index].state = 0x3A0;
                            gActors[actor_index].pfn_158 = func_801AA224_778E14;
                        }
                    }
                }
                else {
                    gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_190_s16[0];
                    func_80073558(actor_index, 8);
                }
                break;
            }
        }
        break;
    case 0x91:
        func_80073558(actor_index, 8);
        break;
    case 0xA1:
        if ((gActors[actor_index].var_0D8 & 15) != 2) {
            func_800734C4(actor_index, 8);
        }
        else {
            if (func_80029B00(200, 128, -128)) {
                gActors[actor_index].unk_184_s16[0] = gTeranPlayerActor.unk_17C;
                func_800734C4(actor_index, 0x70);
            }
            else {
                gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_190_s16[0];
                func_80073558(actor_index, 8);
            }
        }
        gActors[actor_index].unk_118 = 1.2f;
        break;
    case 0x3F5:
        if (gActors[actor_index].unk_124 < 3.0f) {
            gActors[actor_index].state = 0x3F1;
        }
        break;
    }
}


void func_801AA778_779368(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (gActors[actor_index].var_150 & 0x80000000) {
            gActors[actor_index].state = 0x430;
        }

        func_80067E50(actor_index, D_800E1700);
        if (func_80073558(actor_index, 8) & 0x8000) {
            return;
        }

        if (gActors[actor_index].var_158 > 1000) {
            gActors[actor_index].var_158 = 1000;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
            return;
        }

        if ((gActors[actor_index].unk_174 == 0) && (func_80029B00(160, 96, -96))) {
            gActors[actor_index].unk_174++;
            SpawnTextBubble(actor_index, D_801AFE70_77EA60, 0, 32, 30);
            ACTOR_GFX_INIT(actor_index, D_800E1C00);
        }

        switch (gActors[actor_index].var_0D8 & 0xF) {
        case 0:
            if ((D_800E3584 & 0x10000) && (gActors[actor_index].var_158 > 30) && func_80029B00(200, 96, -96)) {
                gActors[actor_index].state = 0x3A0;
                gActors[actor_index].pfn_158 = func_801AA120_778D10;
            }
            break;
        }
        break;
    case 0x91:
        func_80073558(actor_index, 8);
        gActors[actor_index].unk_118 = 1.2f;
        break;
    }
}


void func_801AA964_779554(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        switch (gActors[actor_index].var_0D8 & 1) {
        case 0:
            gActors[actor_index].state = 0x130;
            gActors[actor_index].unk_120 = 0.0f;
            gActors[actor_index].unk_124 = 0.0f;
            gActors[actor_index].unk_11C = FIXED_UNIT(4.0);
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
            break;
        case 1:
            break;
        }
        break;
    }
}


void func_801AAA2C_77961C(u16 actor_index) {
}


void func_801AAA34_779624(u16 actor_index) {
}


s32 func_801AAA3C_77962C(u16 actor_index) {
    if (!(gActors[0x51].flags & ACTOR_FLAG_ACTIVE) || gActors[0x51].actorType == ACTORTYPE_OVL2_W4_CLANCERKID || gActors[0x51].health == 0) {
        return 1;
    }
    return 0;
}


void func_801AAA88_779678(u16 actor_index) {
    FixedCoord* player_x_position = &gActors->posX;
    s32 unused[2];
    s16 player_right;
    s16 player_left;
    s16 player_bottom;
    s16 player_top;
    s16 actor_left;
    s16 actor_top;
    s16 actor_right;
    s16 actor_bottom;

    if ((gActors + actor_index)->graphicIndex != 0) {
        actor_left = (gActors + actor_index)->hitboxBX0 + (gActors + actor_index)->posX.whole;
        actor_right = (gActors + actor_index)->hitboxBX1 + (gActors + actor_index)->posX.whole;
        actor_bottom = (gActors + actor_index)->hitboxBY0 + (gActors + actor_index)->posY.whole;
        actor_top = (gActors + actor_index)->hitboxBY1 + (gActors + actor_index)->posY.whole;
        player_left = gActors->hitboxBX0 + gActors->posX.whole;
        player_right = gActors->hitboxBX1 + gActors->posX.whole;
        player_top = gActors->hitboxBY0 + gActors->posY.whole;
        player_bottom = gActors->hitboxBY1 + gActors->posY.whole;

        if (player_right >= actor_left && player_left < actor_right && player_top >= actor_top && player_bottom < actor_bottom) {
            if (gActors[0].posX.raw < (gActors + actor_index)->posX.raw) {
                if (player_right - actor_left < 8) {
                    player_x_position->whole = (player_x_position->whole - player_right) + actor_left;
                }
                else {
                    player_x_position->whole -= 8;
                }
            }
            else {
                if (actor_right - player_left < 8) {
                    player_x_position->whole += actor_right - player_left;
                }
                else {
                    player_x_position->whole += 8;
                }
            }
        }
    }
}


void func_801AAC20_779810(u16 actor_index) {
    s32 angle;

    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    if (gActors[actor_index].var_0D8 != 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        gActors[actor_index].graphicIndex = 0x246;
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.6f, 0.1f);
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
        Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16) {
            Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
            gActors[actor_index].colorR = 0x90;
        }
    }
    else {
        gActors[actor_index].graphicIndex = 0xC6;
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.5f, 0.1f);
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[gActors[actor_index].var_150].var_160 |= 1;
            gActors[gActors[actor_index].var_150].unk_164 = actor_index;
            gActors[actor_index].actorType = ACTORTYPE_OVL2_W4_19;
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            func_8003EEC0(1.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 10);
            return;
        }
    }

    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    angle = FROM_FIXED(gActors[actor_index].unk_188 + gActors[gActors[actor_index].var_150].unk_188);
    gActors[actor_index].posX.raw = (f32)gActors[gActors[actor_index].var_150].posX.raw + COS(angle) * (f32)gActors[gActors[actor_index].var_150].unk_184;
    gActors[actor_index].posY.raw = gActors[gActors[actor_index].var_150].posY.raw + SIN(angle) * (f32)gActors[gActors[actor_index].var_150].unk_184 * 0.9;
    gActors[actor_index].posZ.raw = gActors[gActors[actor_index].var_150].posZ.raw + gActors[gActors[actor_index].var_150].posY.whole - gActors[actor_index].posY.whole;
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AAEFC_779AEC(u16 actor_index) {
    if ((gActors[actor_index].state != 0) && (gActors[actor_index].state != 0x100)) {
        if (func_801AAA3C_77962C(actor_index) || (gActors[actor_index].health <= 0) || (gActors[actor_index].unk_174 >= 61) || ((gActors[actor_index].state == 0x40) && !(gActors[actor_index].flags & ACTOR_FLAG_UNK7))) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
            return;
        }

        gActors[actor_index].posZ.raw = FIXED_UNIT(-0.5);
        func_8002C6E4(actor_index);
        if ((gActors[actor_index].unk_174 >= 51) && ((gActors[actor_index].unk_174 % 10) == 0)) {
            gActors[actor_index].colorR = 0xC0;
        }
    }

    if (gActors[actor_index].var_150 & 0x100000) {
        Sound_PlaySfxAtActor2(SFX_MECHSTEP_0056, actor_index);
    }

    switch (gActors[actor_index].state) {
    case 0:
        func_8002C5C4(actor_index, 0xC6, 8, 1.5f, 0, 0x3000);
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].health = 5;
        gActors[actor_index].damage = 0x100;
        gActors[actor_index].unk_164 |= 1;
        gActors[actor_index].hitType = HITTYPE_2;
        break;
    case 0x10:
    case 0x20:
        gActors[actor_index].unk_174++;
        break;
    case 0x30:
    case 0x40:
        gActors[actor_index].unk_174 = 0;
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AB104_779CF4(u16 actor_index) {
    if ((gActors[actor_index].state != 0) && (gActors[actor_index].state != 0x100)) {
        if (func_801AAA3C_77962C(actor_index) || (gActors[actor_index].health <= 0) || (gActors[actor_index].unk_174 >= 181) || ((gActors[actor_index].state == 0x40) && !(gActors[actor_index].flags & ACTOR_FLAG_UNK7))) {
            if ((gActors[actor_index].state == 0x40) && !(gActors[actor_index].flags & ACTOR_FLAG_UNK7)) {
                Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
            }
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            return;
        }

        gActors[actor_index].posZ.raw = FIXED_UNIT(-0.5);
        func_8002C6E4(actor_index);
        if ((gActors[actor_index].unk_174 >= 141) && ((gActors[actor_index].unk_174 % 10) == 0)) {
            gActors[actor_index].colorR = 0xC0;
        }
    }

    if (gActors[actor_index].var_150 & 0x100000) {
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
    }

    switch (gActors[actor_index].state) {
    case 0:
        func_8002C5C4(actor_index, 0x92, 8, 1.0f, 0, 0x4800);
        ACTOR_GFX_INIT(actor_index, D_801AFF74_77EB64);
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = 0.6f;
        gActors[actor_index].scaleY = 0.84f;
        gActors[actor_index].health = 5;
        gActors[actor_index].damage = 0x100;
        gActors[actor_index].unk_164 |= 1;
        gActors[actor_index].hitType = HITTYPE_2;
        break;
    case 0x10:
    case 0x20:
        gActors[actor_index].unk_174++;
        break;
    case 0x30:
    case 0x40:
        gActors[actor_index].unk_174 = 0;
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK10;
}


void func_801AB354_779F44(u16 actor_index) {
    gActors[0x8B].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(0x8B);
    gActors[0x8B].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[0x8B].graphicFlags = ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[0x8B].graphicIndex = GINDEX_SPIRAL;
    gActors[0x8B].colorA = 0;
    gActors[0x8B].posX.whole = 0;
    gActors[0x8B].posY.whole = 0;
    gActors[0x8B].posZ.whole = 0x20;
    gActors[0x8B].scaleX = 8.0f;
    gActors[0x8B].unk_12C = 8.0f;
    gActors[0x8B].rotateX = 90.0f;
}

void func_801AB3D4_779FC4(u16 actor_index) {
    u32 flags;

    gActors[0x8B].rotateY += gActors[0x8B].unk_114;
    gActors[0x8B].unk_114 += 0.04;
    gActors[0x8B].colorG = Math_ApproachS32(gActors[0x8B].colorG, 0, 4);
    gActors[0x8B].colorB = gActors[0x8B].colorG;

    if (!(gActiveFrames & 0xF) && (Rand() & 1)) {
        gActors[0x8B].colorG = 0x7F;
    }

    switch (gActors[0x8B].state) {
    case 0:
        gActors[0x8B].colorA = Math_ApproachS32(gActors[0x8B].colorA, 0xFF, 1);
        if (gActors[0x8B].colorA == 60) {
            Sound_PlaySfx(SFX_00AF);
        }

        if (gActors[0x8B].colorA == 0xFF) {
            gActors[0x8B].state++;
            gActors[0x8B].unk_118 = 60.0f;
            flags = gActors[actor_index].flags;
            Actor_ClearRange(0x50, 0x59);
            Actor_ClearRange(0xB0, 0xB7);
            gActors[actor_index].flags = flags;
            gActors[0].iFrames = 180;
        }
        break;
    case 1:
        gActors[0x8B].unk_118 -= 1.0f;
        if (gActors[0x8B].unk_118 < 0.0f) {
            gActors[actor_index].state = 0x100;
            gActors[0x8B].state++;
        }
        break;
    case 2:
        gActors[0x8B].colorA = Math_ApproachS32(gActors[0x8B].colorA, 0, 4);
        if (gActors[0x8B].colorA == 0) {
            gActors[actor_index].state = 0x200;
            gActors[0x8B].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}


void func_801AB604_77A1F4(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = GINDEX_CLANBALL;
    gActors[actor_index].posZ.whole = -4;

    if (gActors[actor_index].var_150 & CLANBALL_COLORMASK) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_index].palette_18C = gClanballPalettes[(gActors[actor_index].var_150 & CLANBALL_COLORMASK) / 256];
    }

    Actor_SetHitboxB(actor_index, 0x10);
    gActors[actor_index].unk_130 = gActors[actor_index].scaleX;
    gActors[actor_index].unk_134 = gActors[actor_index].scaleY;
}


void func_801AB6DC_77A2CC(u16 actor_index) {
    u16 color;

    if (gActors[actor_index].unk_178 != 0) {
        gActors[actor_index].unk_178 = Math_ApproachS32(gActors[actor_index].unk_178, 0, 0x10);
        Actor_SetColorRgb(actor_index, gActors[actor_index].unk_178);
    }

    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, gActors[actor_index].unk_130, 0.05f);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_134, 0.05f);
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[actor_index].hitByType < 0x15)) {
        gActors[actor_index].unk_178 = 0x80;
        gActors[actor_index].scaleX = gActors[actor_index].unk_130 * 1.5;
        gActors[actor_index].scaleY = gActors[actor_index].unk_134 * 1.5;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
        func_8003EEC0(1.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 10);
    }

    if ((gActors[actor_index].state >= 0x200) && (gActors[actor_index].health < 0x400)) {
        color = (f32)(0x400 - gActors[actor_index].health) / 8;
        if (gActors[actor_index].colorR < color) {
            gActors[actor_index].colorR = color;
        }
    }
}


void func_801AB8E8_77A4D8(u16 actor_index, s16 bound, s32 velocity_target, s32 velocity_step, s16 margin) {
    if (gActors[actor_index].unk_190 & 0x10000000) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, velocity_target, velocity_step);
        if (bound < gActors[actor_index].posX.whole - margin) {
            gActors[actor_index].unk_190 &= ~0x10000000;
        }
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -velocity_target, velocity_step);
        if (gActors[actor_index].posX.whole + margin < bound) {
            gActors[actor_index].unk_190 |= 0x10000000;
        }
    }
}


void func_801AB9D8_77A5C8(u16 actor_index, s16 bound, s32 velocity_target, s32 velocity_step, s16 margin) {
    if (gActors[actor_index].unk_190 & 0x20000000) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, velocity_target, velocity_step);
        if (bound < gActors[actor_index].posY.whole - margin) {
            gActors[actor_index].unk_190 &= ~0x20000000;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -velocity_target, velocity_step);
        if (gActors[actor_index].posY.whole + margin < bound) {
            gActors[actor_index].unk_190 |= 0x20000000;
        }
    }
}


void func_801ABAC8_77A6B8(u16 actor_index, f32 scale_x, f32 scale_y) {
    BossDeathExplode(0, actor_index, scale_x, scale_y);
}


void func_801ABB00_77A6F0(u16 actor_index) {
    u16 index;
    u16 table_index;
    s32 angle;

    Sound_PlaySfx(SFX_DRONE_0124);
    table_index = 0;
    angle = 0;
    for (index = 0x58; index < 0x60; index++, angle += FIXED_UNIT(128), table_index++) {
        gActors[index].actorType = ACTORTYPE_OVL2_W4_SPIKEBOSS_MINE;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE;
        gActors[index].health = 10;
        gActors[index].damage = 100;
        gActors[index].var_150 = actor_index;
        gActors[index].unk_188 = angle;
        gActors[index].scaleX = 0.0f;
        gActors[index].scaleY = 0.0f;
        gActors[index].var_0D8 = D_801AFF88_77EB78[((gActors[actor_index].health & 0x700) / 256) * 8 + table_index];
        if (gActors[index].var_0D8 != 0) {
            gActors[index].grabType = GRABTYPE_HURT;
            gActors[index].unk_0DF = ACTOR0DF_6;
            gActors[index].hitFlags = HITFLAG_7 | HITFLAG_2;
            gActors[index].hitType = HITTYPE_4;
            gActors[index].unk_0F8.raw = FIXED_UNIT(3);
            gActors[index].unk_0FC.raw = FIXED_UNIT(3);
            gActors[index].damage = 80;
            Actor_SetHitboxA(index, 8);
            Actor_SetHitboxB(index, 8);
        }
        else {
            Actor_SetHitboxB(index, 14);
        }
    }
}


void func_801ABCD4_77A8C4(u16 actor_index) {
    u16 index;

    for (index = 0x58; index < 0x60; index++) {
        if (index != gActors[actor_index].unk_164) {
            gActors[index].flags = 0;
            func_8003F138(0.4f, gActors[index].posX.whole, gActors[index].posY.whole, 0);
        }
    }
}


void func_801ABDAC_77A99C(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9;
    gActors[actor_index].damage = 200;
    gActors[actor_index].health = 0x800;
    Actor_SetHitboxA(actor_index, gActors[actor_index].hitboxBY0 - 1);
    gActors[actor_index].grabType = GRABTYPE_HURT;
    gActors[actor_index].unk_0DF = ACTOR0DF_6;
    gActors[actor_index].hitFlags = HITFLAG_7 | HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_4;
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
}


void func_801ABE58_77AA48(u16 actor_index) {
    s32 unused[2];
    u16 random_margin;
    u16 sp2C;
    Actor* actor = &gActors[actor_index];

    if (actor->state >= 0x200 && !(actor->state & 0x8000) && actor->health == 0) {
        actor->state = 0x8000;
    }

    switch (actor->state) {
    case 0:
        actor->state++;
        func_801AB354_779F44(actor_index);
    case 1:
        func_801AB3D4_779FC4(actor_index);
        break;
    case 0x100:
        actor->scaleX = 2.0f;
        actor->scaleY = 2.0f;
        func_801AB604_77A1F4(actor_index);
        func_801ABDAC_77A99C(actor_index);
        actor->graphicFlags |= ACTOR_GFLAG_ROTZ;
        ACTOR_GFX_INIT(actor_index, D_800E2528);
        D_800BE544 = 0x8000;
        actor->var_15C = 45;
        actor->posX.whole = 0;
        actor->posY.whole = 16;
    case 0x101:
        func_801AB3D4_779FC4(actor_index);
        func_801AB8E8_77A4D8(actor_index, 0, FIXED_UNIT(0.8125), FIXED_UNIT(0.046875), Rand() & 1);
        func_801AB9D8_77A5C8(actor_index, 48, FIXED_UNIT(1), FIXED_UNIT(0.05078125), 0);
        break;
    case 0x200:
        if (--actor->var_15C < 0) {
            actor->state++;
            func_801ABB00_77A6F0(actor_index);
        }
        func_801AB8E8_77A4D8(actor_index, 0, FIXED_UNIT(0.8125), FIXED_UNIT(0.046875), Rand() & 1);
        func_801AB9D8_77A5C8(actor_index, 48, FIXED_UNIT(1), FIXED_UNIT(0.05078125), 0);
        break;
    case 0x201:
        func_801AB8E8_77A4D8(actor_index, 0, FIXED_UNIT(0.8125), FIXED_UNIT(0.046875), Rand() & 1);
        func_801AB9D8_77A5C8(actor_index, 16, FIXED_UNIT(1), FIXED_UNIT(0.05078125), 0);
        actor->unk_184 = Math_ApproachS32(actor->unk_184, FIXED_UNIT(40), FIXED_UNIT(1));
        actor->unk_168++;
        if ((actor->health / 256) * 200 < actor->unk_168) {
            actor->unk_168 = Rand() & 31;
            actor->unk_190 ^= 1;
        }

        if (actor->unk_190 & 1) {
            actor->unk_16C = Math_ApproachS32(actor->unk_16C, TO_FIXED(actor->health / 256) - FIXED_UNIT(17), FIXED_UNIT(0.5));
        }
        else {
            actor->unk_16C = Math_ApproachS32(actor->unk_16C, FIXED_UNIT(17) - TO_FIXED(actor->health / 256), FIXED_UNIT(0.5));
        }

        actor->unk_188 += actor->unk_16C;
        if (actor->var_160 & 1) {
            actor->state++;
            func_801ABCD4_77A8C4(actor_index);
            CameraShake(-8, 20);
            Sound_StopSfx(SFX_DRONE_0124);
            Sound_PlaySfxAtActor2(SFX_BOOM_0093, actor_index);
        }
        break;
    case 0x202:
        sp2C = Rand();
        random_margin = Rand();
        func_801AB8E8_77A4D8(actor_index, 0, FIXED_UNIT(3), FIXED_UNIT(0.375) - (sp2C & 7) * FIXED_UNIT(0.03125), 96 - (random_margin & 63));
        func_801AB9D8_77A5C8(actor_index, 52 - (Rand() & 7), FIXED_UNIT(1), FIXED_UNIT(0.125), 2);
        if (gActors[actor->unk_164].flags == 0) {
            actor->state = 0x201;
            actor->unk_188 = 0;
            actor->unk_184 = 0;
            actor->unk_16C = FIXED_UNIT(64);
            func_801ABB00_77A6F0(actor_index);
        }
        break;
    case 0x8000:
        actor->state++;
        actor->velocityX.raw = 0;
        actor->velocityY.raw = FIXED_UNIT(-0.0625);
        actor->flags = ACTOR_FLAG_ENABLED;
        actor->var_15C = 0;
    case 0x8001:
        func_801ABAC8_77A6B8(actor_index, 1.0f, 1.0f);
        if (++actor->var_15C >= 121) {
            actor->flags = 0;
            Sound_PlaySfxAtActor2(SFX_BOOM_0026, actor_index);
            func_801A9478_778068(actor_index);
            return;
        }
        break;
    }

    func_801AAA88_779678(actor_index);
    func_801AB6DC_77A2CC(actor_index);
    actor->rotateZ = INDEX_TO_DEG((Math_Atan2(actor->velocityX.raw, actor->velocityY.raw) + 256) & 1023);
    if ((actor->velocityX.raw > 0 && actor->posX.whole >= 89) || (actor->velocityX.raw < 0 && actor->posX.whole < -88)) {
        actor->velocityX.raw = -actor->velocityX.raw;
    }

    if (actor->flags_098 & ACTOR_FLAG3_UNK16) {
        Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
    }

    actor->var_160 = 0;
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AC3EC_77AFDC(u16 actor_index) {
    u16 index;
    gActors[actor_index].health = 0xC00;

    for (index = 0x58; index < 0x5C; index++) {
        gActors[index].actorType = ACTORTYPE_GRAPHIC_29;
        Actor_Initialize(index);
        switch (index) {
        case 0x58:
        case 0x5A:
            gActors[index].graphicFlags = 0x8109;
            gActors[index].flags = ACTOR_FLAG_ENABLED;
            gActors[index].graphicIndex = 0x101E;
            gActors[index].scaleX = 2.0f;
            gActors[index].scaleY = 1.5f;
            gActors[index].unk_178 = -2;
            break;
        case 0x59:
        case 0x5B:
            gActors[index].graphicFlags = 0x8109;
            gActors[index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED;
            gActors[index].graphicIndex = 0x306E;
            gActors[index].scaleX = 1.1f;
            if (index >= 0x5A) {
                gActors[index].scaleY = -2.25f;
            }
            else {
                gActors[index].scaleY = 2.25f;
            }
            gActors[index].rotateZ = 90.0f;
            gActors[index].unk_178 = -1;
            Actor_SetHitboxB(index, 0x10);
            break;
        }
    }

    gActors[0x59].unk_188 = FIXED_UNIT(512);
    gActors[0x5B].unk_188 = 0;
    gActors[0x59].unk_180 = FIXED_UNIT(512);
    gActors[0x5B].unk_180 = 0;
    gActors[0x59].unk_184 = FIXED_UNIT(56);
    gActors[0x5B].unk_184 = FIXED_UNIT(56);
}


void func_801AC5FC_77B1EC(u16 actor_index) {
    u16 index;
    u32 angle;
    f32 radius;
    s32 zero;

    gActors[0x59].unk_188 = func_800298D0(gActors[0x59].unk_180, gActors[0x59].unk_188, FIXED_UNIT(14));
    gActors[0x5B].unk_188 = func_800298D0(gActors[0x5B].unk_180, gActors[0x5B].unk_188, FIXED_UNIT(14));
    gActors[0x58].unk_188 = gActors[0x59].unk_188;
    gActors[0x5A].unk_188 = gActors[0x5B].unk_188;
    gActors[0x58].unk_184 = (f32)gActors[0x59].unk_184 * 0.75;
    gActors[0x5A].unk_184 = gActors[0x58].unk_184;
    gActors[0x5B].unk_184 = gActors[0x59].unk_184;
    for (index = 0x58; index < 0x5C; index++) {
        angle = (u32)(u16)FROM_FIXED(gActors[index].unk_188 + gActors[actor_index].unk_188) & COS_MASK;
        // wtf
        zero = (s32)((
            *(u32*)&gActors[index].unk_188
            + *(u32*)&gActors[index].unk_184
            + *(u32*)&gActors[index].unk_178
            + *(u32*)&gActors[actor_index].unk_188) * 0
        );
        radius = gActors[index].unk_184 + zero + zero + zero + zero;
        gActors[index].posX.raw = COS(angle) * radius + (f32)gActors[actor_index].posX.raw;
        gActors[index].posY.raw = SIN(angle) * radius + (f32)gActors[actor_index].posY.raw;
        gActors[index].posZ.raw = gActors[index].unk_178 + gActors[actor_index].posZ.raw;
        switch (index) {
        case 0x58:
        case 0x5A:
            gActors[index].rotateZ = INDEX_TO_DEG(angle);
            break;
        case 0x59:
            gActors[index].posX.raw += FIXED_UNIT(8);
            break;
        case 0x5B:
            gActors[index].posX.raw -= FIXED_UNIT(8);
            break;
        }
    }

    if (!(gActors[actor_index].state & 0x8000)) {
        func_801AAA88_779678(0x59);
        func_801AAA88_779678(0x5B);
        func_801AAA88_779678(actor_index);
    }
}


void func_801AC8D8_77B4C8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gActors[actor_index].flags = 0;
        func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[0].posX.whole += 2;
        }
        else {
            gActors[0].posX.whole -= 2;
        }

        if (gActors[0].posY.whole < -62) {
            gActors[0].posY.whole = -62;
        }
    }

    gActors[actor_index].posX.raw = gActors[gActors[actor_index].var_150].posX.raw + gActors[actor_index].var_154;
    if (gActors[actor_index].posY.whole < -64) {
        if (actor_index & 2) {
            gActors[actor_index].flags = 0;
        }
        else {
            gActors[actor_index].actorType = ACTORTYPE_OVL2_W4_LASERBOSS_ROCK;
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].flags_098 = 0;
            gActors[actor_index].posY.whole = -64;
            gActors[actor_index].velocityX.raw = -(Rand() & 15) * FIXED_UNIT(0.75) + FIXED_UNIT(6);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5.25) - (Rand() & 7) * FIXED_UNIT(0.5);
        }
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801ACA60_77B650(u16 actor_index) {
    u16 index;
    u16 selected_index;
    u16 color_offset;
    s32 position_x;
    s32 extent;

    if (gActiveFrames & 1) {
        color_offset = 24;
    }
    else {
        color_offset = 0;
    }

    for (index = 0x59; index != 0x5D; index += 2) {
        if (index == 0x59) {
            position_x = gActors[index].posX.raw + FIXED_UNIT(-10);
        }
        else {
            position_x = gActors[index].posX.raw + FIXED_UNIT(10);
        }

        extent = FROM_FIXED(gActors[actor_index].var_154) + (gActiveFrames & 1) * 2 + 6;
        if (extent > 0) {
            func_8003D68C(
                ACTOR_GFLAG_3DOBJ, 0, -80 - gActors[index].posY.whole, -extent, extent,
                position_x, gActors[index].posY.raw, gActors[index].posZ.raw - 3,
                color_offset + 0x80, color_offset + 0xa0, 0xf0
            );
        }

        extent = FROM_FIXED(gActors[actor_index].var_154) + (gActiveFrames & 1) * 2 + 3;
        if (extent > 0) {
            func_8003D68C(
                ACTOR_GFLAG_3DOBJ, 0, -80 - gActors[index].posY.whole, -extent, extent,
                position_x, gActors[index].posY.raw, gActors[index].posZ.raw - 2,
                color_offset + 0xc0, color_offset + 0xd0, 0xff
            );
        }

        extent = FROM_FIXED(gActors[actor_index].var_154) + (gActiveFrames & 1) * 2;
        if (extent > 0) {
            func_8003D68C(
                ACTOR_GFLAG_3DOBJ,
                0, -80 - gActors[index].posY.whole, -extent, extent,
                position_x, gActors[index].posY.raw, gActors[index].posZ.raw - 1,
                color_offset + 0xe0, color_offset + 0xe0, 0xff
            );
        }
    }

    if (gActiveFrames & 1) {
        selected_index = index = 0x59;
        position_x = FIXED_UNIT(-10);
    }
    else {
        selected_index = index = 0x5B;
        position_x = FIXED_UNIT(10);
    }

    if (gActors[actor_index].var_154 > FIXED_UNIT(-2)) {
        index = Actor_RangeFindInactive(0x60, 0x88);
        if (index != 0) {
            gActors[index].actorType = ACTORTYPE_OVL2_W4_LASERBOSS_BEAM;
            Actor_Initialize(index);
            gActors[index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
            gActors[index].health = 0;
            gActors[index].unk_0DF = ACTOR0DF_5;
            gActors[index].hitFlags = HITFLAG_7 | HITFLAG_3;\
            gActors[index].hitType = HITTYPE_4;
            gActors[index].unk_0F8.raw = FIXED_UNIT(4);\
            gActors[index].unk_0FC.raw = FIXED_UNIT(2);
            gActors[index].damage = 50;
            gActors[index].posX.raw = gActors[selected_index].posX.raw + position_x;
            gActors[index].posY.raw = gActors[selected_index].posY.raw;
            gActors[index].posZ.raw = gActors[selected_index].posZ.raw;
            gActors[index].velocityY.raw = FIXED_UNIT(-16);
            gActors[index].var_150 = selected_index;
            gActors[index].var_154 = position_x;
            Actor_SetHitboxA(index, 6);
            Actor_SetHitboxB(index, 8);
        }

        if (!(gActiveFrames & 3)) {
            CameraShake(-3, 3);
        }
    }
}


void func_801ACE50_77BA40(u16 actor_index) {
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.0625));
    gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, FIXED_UNIT(46.0), FIXED_UNIT(0.5));
}


void func_801ACEC8_77BAB8(u16 actor_index) {
    s32 target;
    Actor* actor = &gActors[actor_index];

    if (actor->state >= 0x200 && !(actor->state & 0x8000) && actor->health == 0) {
        actor->state = 0x8000;
    }

    switch (actor->state) {
    case 0:
        actor->state++;
        func_801AB354_779F44(actor_index);
    case 1:
        func_801AB3D4_779FC4(actor_index);
        break;
    case 0x100:
        actor->scaleX = 1.75f;
        actor->scaleY = 1.75f;
        func_801AB604_77A1F4(actor_index);
        func_801AC3EC_77AFDC(actor_index);
        D_800BE544 = 0x8000;
        actor->var_160 = 45;
    case 0x101:
        func_801AB3D4_779FC4(actor_index);
        func_801AC5FC_77B1EC(actor_index);
        func_801ACE50_77BA40(actor_index);
        break;
    case 0x200:
        if (--actor->var_160 < 0) {
            actor->state++;
            actor->var_160 = 3;
        }
        func_801AC5FC_77B1EC(actor_index);
        func_801ACE50_77BA40(actor_index);
        break;
    case 0x201:
        actor->state++;
        target = Rand() & 3;
        if (target == actor->var_158) {
            target = (target + 1) & 3;
        }
        actor->var_158 = target;
    case 0x202:
        func_801ACE50_77BA40(actor_index);
        target = D_801B0008_77EBF8[actor->var_158] - actor->posX.whole;
        if (target < 3 && target >= -2) {
            actor->state++;
            actor->var_160 = actor->var_160 - (Rand() & 1) - 1;
            if (actor->var_160 < 0) {
                actor->var_160 = 3;
                actor->var_15C = 146;
                Sound_PlaySfxAtActor2(SFX_0069, actor_index);
                actor->var_150++;
                actor->var_154 = FIXED_UNIT(-7);
            }
            else {
                actor->var_15C = 20;
            }
        }
        else if (target < 0) {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, FIXED_UNIT(-2.25), FIXED_UNIT(0.375));
        }
        else {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, FIXED_UNIT(2.25), FIXED_UNIT(0.375));
        }
        func_801AC5FC_77B1EC(actor_index);
        break;
    case 0x203:
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.375));
        if (--actor->var_15C < 0) {
            actor->state = 0x201;
        }
        else if (actor->var_15C >= 21) {
            if (actor->var_15C >= 41) {
                if (actor->var_15C == 90) {
                    Sound_PlaySfxAtActor2(SFX_WOOSH_0099, actor_index);
                }
                if (actor->var_15C < 90) {
                    actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, FIXED_UNIT(0.25), FIXED_UNIT(0.015625));
                    actor->var_154 = Math_ApproachS32(actor->var_154, FIXED_UNIT(5), FIXED_UNIT(2));
                }
                else if ((actor->var_150 & 7) != 5) {
                    gActors[0x59].unk_180 = TO_FIXED(512);
                    gActors[0x5B].unk_180 = 0;
                    gActors[0x59].unk_184 = Math_ApproachS32(gActors[0x59].unk_184, FIXED_UNIT(46), FIXED_UNIT(0.5));
                }
                else {
                    gActors[0x59].unk_180 = TO_FIXED(512);
                    gActors[0x5B].unk_180 = 0;
                    gActors[0x59].unk_184 = Math_ApproachS32(gActors[0x59].unk_184, FIXED_UNIT(24), FIXED_UNIT(4));
                }
            }
            else {
                actor->var_154 = Math_ApproachS32(actor->var_154, FIXED_UNIT(-8), FIXED_UNIT(2));
            }

            if (actor->var_15C == 130) {
                Sound_PlaySfxAtActor2(SFX_CHARGE_00A6, actor_index);
            }

            if (actor->var_15C < 130) {
                func_801ACA60_77B650(actor_index);
            }
        }
        else {
            gActors[0x59].unk_180 = TO_FIXED(384);
            gActors[0x5B].unk_180 = TO_FIXED(128);
            gActors[0x59].unk_184 = Math_ApproachS32(gActors[0x59].unk_184, FIXED_UNIT(52), FIXED_UNIT(1));
            func_801ACE50_77BA40(actor_index);
        }
        func_801AC5FC_77B1EC(actor_index);
        break;
    case 0x8000:
        actor->state++;
        actor->velocityX.raw = 0;
        actor->velocityY.raw = 0;
        actor->var_160 = 0;
        actor->flags = ACTOR_FLAG_ENABLED;
        gActors[0x58].flags = ACTOR_FLAG_ENABLED;
        gActors[0x59].flags = ACTOR_FLAG_ENABLED;
        gActors[0x5A].flags = ACTOR_FLAG_ENABLED;
        gActors[0x5B].flags = ACTOR_FLAG_ENABLED;
    case 0x8001:
        func_801ABAC8_77A6B8(actor_index, 1.0f, 1.0f);
        func_801AC5FC_77B1EC(actor_index);
        actor->posY.raw -= FIXED_UNIT(0.25);
        if (++actor->var_160 >= 121) {
            actor->flags = 0;
            gActors[0x58].flags = 0;
            gActors[0x59].flags = 0;
            gActors[0x5A].flags = 0;
            gActors[0x5B].flags = 0;
            Sound_PlaySfxAtActor2(SFX_BOOM_0026, actor_index);
            func_801A9478_778068(actor_index);
            return;
        }
        break;
    }
    func_801AB6DC_77A2CC(actor_index);
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AD438_77C028(u16 actor_index) {
    u16 gem_subtype;
    u32 new_actor_index;

    if (func_801AAA3C_77962C(actor_index)) {
        gActors[actor_index].flags = 0;
        func_8003F138(0.8f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        return;
    }
    gActors[actor_index].var_150--;
    gActors[actor_index].colorG = 32 + (gActors[actor_index].var_150 & 31) * 2;
    if (gActors[actor_index].state != 0) {
        if (gActors[actor_index].state != 1) {
            return;
        }
        goto L801AD760_77C350;
    }

    if (gActors[actor_index].var_150 < 0) {
        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        new_actor_index = SpawnParticle_List_90C0_16(NULL, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (new_actor_index == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        gActors[new_actor_index].colorA = 0x80;
        gActors[new_actor_index].unk_14C = (f32)gActors[actor_index].actorType;
        gActors[new_actor_index].unk_130 = (f32)actor_index;
        gActors[new_actor_index].unk_134 = 0.0f;
        gActors[new_actor_index].unk_138 = -7.0f;
        gActors[new_actor_index].unk_13C_f32 = 1.0f;
        gActors[new_actor_index].unk_148 = 360.0f;

        switch (gActors[actor_index].var_154) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 16:
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].graphicList = (s16*)D_801AFF74_77EB64;
            gActors[new_actor_index].scaleX = 0.6f;
            gActors[new_actor_index].scaleY = 0.84f;
            break;
        case 5:
        case 10:
        case 15:
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[new_actor_index].graphicList = gGraphicListGem;
            if (gActors[actor_index].var_154 == 10) {
                gActors[new_actor_index].palette_18C = gPaletteGemGreen;
            }
            else {
                gActors[new_actor_index].palette_18C = gPaletteGemRed;
            }
            break;
        }

        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-2.625);

        if (!(actor_index & 15)) {
            gActors[actor_index].posX.whole = gPlayerActor.posX.whole;
        }
        else {
            gActors[actor_index].posX.whole = (f32)(128 - Rand()) * 0.75;
        }

        gActors[actor_index].posY.whole = 112;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
        ACTOR_GFX_INIT(actor_index, D_800D2284);
        gActors[actor_index].rotateZ = 270.0f;
    }
    return;

L801AD760_77C350:
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        func_8003F9E0(0.7f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        switch (gActors[actor_index].var_154) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 16:
            gActors[actor_index].actorType = ACTORTYPE_OVL2_W4_LASERBOSS_ROCK;
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].flags_098 = 0;

            if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            }

            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            Sound_PlaySfxAtActor2(SFX_0028, actor_index);
            break;
        case 5:
        case 10:
        case 15:
            gActors[actor_index].actorType = ACTORTYPE_GEM;
            gem_subtype = gActors[actor_index].var_154;
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].flags_098 = 0;
            if (gem_subtype == 10) {
                gActors[actor_index].var_110 = GEMFLAG_GREEN | GEMFLAG_COMMON;
            }
            else {
                gActors[actor_index].var_110 = GEMFLAG_RED | GEMFLAG_COMMON;
            }

            if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            }
            
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            gActors[actor_index].var_150 = 120;
            Sound_PlaySfxAtActor2(SFX_GEM_APPEAR, actor_index);
            break;
        }
    }
    else if (gActors[actor_index].posY.whole < -64) {
        gActors[actor_index].flags = 0;
        func_8003F138(0.8f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        Sound_PlaySfxAtActor2(SFX_BOOM_0055, actor_index);
    }
}


void func_801AD918_77C508(u16 actor_index) {
}


void func_801AD920_77C510(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x60, 0x88);

    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_W4_POTBOSS_ROCK;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;

        if (new_actor_index) {
        }

        ACTOR_GFX_INIT(new_actor_index, D_800D2284);
        gActors[new_actor_index].colorA = 0xC0;
        gActors[new_actor_index].unk_0DF = ACTOR0DF_5;
        gActors[new_actor_index].hitFlags = HITFLAG_7 | HITFLAG_3;\
        gActors[new_actor_index].hitType = HITTYPE_BOOM_11;
        gActors[new_actor_index].unk_0F8.raw = FIXED_UNIT(4);\
        gActors[new_actor_index].unk_0FC.raw = FIXED_UNIT(2);
        gActors[new_actor_index].health = 0;
        gActors[new_actor_index].damage = 50;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw + FIXED_UNIT(32);
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + 1;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(8);
        gActors[new_actor_index].var_150 = 20;
        Actor_SetHitboxA(new_actor_index, 1);
        Actor_SetHitboxB(new_actor_index, 8);
        gActors[new_actor_index].var_154 = gActors[actor_index].var_150;
        Sound_PlaySfxAtActor2(SFX_POP, actor_index);
    }
}


void func_801ADA84_77C674(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index].grabType = GRABTYPE_7;
    gActors[actor_index].health = 0x7FF;
}


void func_801ADAD4_77C6C4(u16 actor_index) {
    s32 unused[2];
    u16 random_margin;
    u16 sp2C;
    Actor* actor = &gActors[actor_index];

    if (actor->state >= 0x200 && !(actor->state & 0x8000) && actor->health == 0) {
        actor->state = 0x8000;
    }

    actor->var_160++;
    switch (actor->state) {
    case 0:
        actor->state++;
        func_801AB354_779F44(actor_index);
    case 1:
        func_801AB3D4_779FC4(actor_index);
        break;
    case 0x100:
        actor->scaleX = 1.5f;
        actor->scaleY = 1.5f;
        func_801AB604_77A1F4(actor_index);
        func_801ADA84_77C674(actor_index);
        actor->graphicIndex = 0x266;
        D_800BE544 = 0x8000;
        actor->var_15C = 45;
        actor->posX.whole = 0;
    case 0x101:
        func_801AB3D4_779FC4(actor_index);
        func_801AB9D8_77A5C8(actor_index, 52 - (Rand() & 7), FIXED_UNIT(1), 0x2000, 2);
        break;
    case 0x200:
        if (--actor->var_15C < 0) {
            actor->state++;
        }
        func_801AB9D8_77A5C8(actor_index, 52 - (Rand() & 7), FIXED_UNIT(1), 0x2000, 2);
        break;
    case 0x201:
        sp2C = Rand();
        random_margin = Rand();
        func_801AB8E8_77A4D8(actor_index, 0, FIXED_UNIT(2), 0x4000 - (sp2C & 7) * 0x800, 80 - (random_margin & 31));
        func_801AB9D8_77A5C8(actor_index, 52 - (Rand() & 7), FIXED_UNIT(1), 0x2000, 2);

        if (!(gActiveFrames & 7)) {
            CameraShake(-4, 6);
        }

        if (D_801B0018_77EC08[(actor->health & 0x700) / 256] < actor->var_160) {
            actor->var_160 = 0;
            actor->var_150++;
            actor->var_150 &= 15;
            func_801AD920_77C510(actor_index);
        }
        break;
    case 0x8000:
        actor->state++;
        actor->velocityX.raw = 0;
        actor->velocityY.raw = 0;
        actor->var_160 = 0;
        actor->flags = ACTOR_FLAG_ENABLED;
    case 0x8001:
        func_801ABAC8_77A6B8(actor_index, 1.0f, 1.0f);
        if (actor->var_160 >= 121) {
            actor->flags = 0;
            Sound_PlaySfxAtActor2(SFX_BOOM_0026, actor_index);
            func_801A9478_778068(actor_index);
            return;
        }
        break;
    }

    func_801AAA88_779678(actor_index);
    func_801AB6DC_77A2CC(actor_index);
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801ADE38_77CA28(u16 actor_index) {
    s32 index = actor_index;
    Actor* actor = &gActors[index];

    if (index) {
    }
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801ADE80_77CA70(u16 actor_index) {
    s32 index = actor_index;
    Actor* actor = &gActors[index];

    if (index) {
    }
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801ADEC8_77CAB8(u16 actor_index) {
    gActors[actor_index].posX.raw = gActors[gActors[actor_index].var_150].posX.raw + gActors[actor_index].unk_184;
    gActors[actor_index].posY.raw = gActors[gActors[actor_index].var_150].posY.raw + gActors[actor_index].unk_188;
    gActors[actor_index].posZ.raw = gActors[gActors[actor_index].var_150].posZ.raw + gActors[actor_index].unk_178;
}


void func_801ADF50_77CB40(u16 actor_index) {
}


void func_801ADF58_77CB48(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_PLATFORM1 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED;
        gActors[actor_index].hitboxBY0 = 20;\
        gActors[actor_index].hitboxBY1 = -12;
        gActors[actor_index].hitboxBX0 = -16;\
        gActors[actor_index].hitboxBX1 = 16;
        ACTOR_GFX_INIT(actor_index, D_800E2500);
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.5);
    case 1:
        if (gActors[actor_index].posX.whole < -96) {
            gActors[actor_index].flags = 0;
            func_8003F138(0.7f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        }
        break;
    }

    gActors[actor_index].var_160 = 0;
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AE060_77CC50(u16 actor_index) {
}


void func_801AE068_77CC58(u16 actor_index) {
    u16 index;

    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index].grabType = GRABTYPE_7;
    gActors[actor_index].health = 0x1000;

    for (index = 0x58; index < 0x5C; index++) {
        gActors[index].actorType = 0x1D18;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED;
        gActors[index].graphicIndex = 0x306E;
        gActors[index].scaleX = 1.1f;

        if (index >= 0x5A) {
            gActors[index].scaleY = -2.5f;
        }
        else {
            gActors[index].scaleY = 2.5f;
        }

        gActors[index].unk_184 = FIXED_UNIT(8);
        gActors[index].var_150 = actor_index;
        Actor_SetHitboxB(index, 16);
    }

    gActors[0x58].unk_178 = -2;
    gActors[0x59].unk_178 = -1;
    gActors[0x5A].unk_178 = -1;
    gActors[0x5B].unk_178 = -2;
    gActors[0x58].unk_188 = FIXED_UNIT(48);
    gActors[0x59].unk_188 = FIXED_UNIT(16);
    gActors[0x5A].unk_188 = FIXED_UNIT(-16);
    gActors[0x5B].unk_188 = FIXED_UNIT(-48);
}


void func_801AE208_77CDF8(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AE250_77CE40(u16 actor_index) {
}


void func_801AE258_77CE48(u16 actor_index) {
}


u16 func_801AE260_77CE50(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x70, 0x78);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_W4_31;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.raw = gActors[actor_index + 7].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index + 7].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index + 7].posZ.raw - 1;
        gActors[new_actor_index].var_0D8 = 0;
        gActors[new_actor_index].var_110 = 0.0f;
        gActors[actor_index + 7].parentIndex = new_actor_index;
    }

    return new_actor_index;
}


s32 func_801AE32C_77CF1C(u16 actor_index) {
    s32 result = 0;

    if (gActors[actor_index + 8].unk_180 > 600) {
        if (gActors[actor_index + 9].unk_180 > 60) {
            result = 1;
        }
    }
    else if (gActors[actor_index + 9].unk_180 > 120) {
        result = 1;
    }

    if (gActors[actor_index + 8].unk_180 > 900) {
        gActors[actor_index + 8].unk_180 = 0;
    }

    if (result) {
        gActors[actor_index].state = 0x4020;
        gActors[actor_index + 9].unk_180 = 0;
    }

    return result;
}


void func_801AE3E8_77CFD8(u16 actor_index) {
    if (gActors[0].posX.whole < gActors[actor_index].posX.whole) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index + 1].unk_130 = -1.0f;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index + 1].unk_130 = 1.0f;
    }
}


void func_801AE4AC_77D09C(u16 actor_index, u16 choose_velocity) {
    (gActors + actor_index)->state = 0x4010;
    (gActors + actor_index)->flags &= ~ACTOR_FLAG_UNK16;\
    (gActors + actor_index)->flags |= ACTOR_FLAG_UNK17;
    func_80081790(actor_index, D_800E8F7C);
    gActors[actor_index + 6].unk_180 = 0;
    if (choose_velocity != 0) {
        if ((gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole) > 640) {
            (gActors + actor_index)->velocityX.raw = FIXED_UNIT(-2.25);
            return;
        }

        if ((gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole) < 384) {
            (gActors + actor_index)->velocityX.raw = FIXED_UNIT(2.25);
            return;
        }

        if (Rand() & 1) {
            func_801AE3E8_77CFD8(actor_index);
        }

        (gActors + actor_index)->velocityX.raw = gActors[actor_index + 1].unk_130 * FIXED_UNIT(1.75);
    }
}


void func_801AE634_77D224(u16 actor_index) {
    u16 released_actor_index;
    u32 particle_index;
    if ((gActors + actor_index)->var_0D8 & 8) {
        gActors[actor_index + 1].var_0D8 = 2;
    }
    else {
        gActors[actor_index + 1].var_0D8 = 3;
    }

    func_80094C5C(actor_index);
    gActors[actor_index + 8].unk_180++;
    gActors[actor_index + 9].unk_180++;

    if ((gActors + actor_index)->var_0D8 & 0x1000) {
        func_801AF1C4_77DDB4(actor_index);
        return;
    }

    if ((gActors + actor_index)->state > 0 && (gActors + actor_index)->health != 0) {
        if ((gActors + actor_index)->health < 3664) {
            (gActors + actor_index)->state = 0x4040;
            (gActors + actor_index)->health = 0;
        }
        else if (gScreenPosCurrentY.whole + (gActors + actor_index)->posY.whole < 256) {
            (gActors + actor_index)->state = 0x4030;
        }
    }

    switch ((gActors + actor_index)->state) {
    case 0:
        (gActors + actor_index)->state = 0x110;
        (gActors + actor_index)->flags |= ACTOR_FLAG_FLIPPED;
        (gActors + actor_index)->health = 4096;
        gActors[actor_index + 2].var_0D8 = 0;
        gActors[actor_index + 8].unk_180 = 0;
        gActors[actor_index + 9].unk_180 = 0;
        break;
    case 0x111:
        if (!((gActors + actor_index)->var_0D8 & 1) && gActors[actor_index + 2].unk_180 >= 21) {
            func_801AE4AC_77D09C(actor_index, 0);
            (gActors + actor_index)->velocityY.raw = FIXED_UNIT(6);
        }
        break;
    case 0x4010:
        if (func_8008F220(actor_index) == 0) {
            gActors[actor_index + 6].unk_180++;
            if ((gActors[actor_index + 2].var_0D8 == 0) &&
                ((gActors + actor_index)->posY.whole + gScreenPosCurrentY.whole < 560) &&
                ((gActors + actor_index)->posY.whole + gScreenPosCurrentY.whole < gActors[0].posY.whole + gScreenPosCurrentY.whole + 64) &&
                (func_801AE32C_77CF1C(actor_index) == 0) &&
                ((gActors + actor_index)->velocityY.raw < 0)) {
                func_801AE4AC_77D09C(actor_index, 1);
                (gActors + actor_index)->velocityY.raw = FIXED_UNIT(4);
            }
            func_800911D8(actor_index);
        }
        break;
    case 0x4020:
        (gActors + actor_index)->state++;
        func_80081790(actor_index, D_800E9034);
        (gActors + actor_index)->velocityX.raw = gActors[actor_index + 1].unk_130 * (f32)FIXED_UNIT(-1);
        (gActors + actor_index)->velocityY.raw = FIXED_UNIT(3.5);
        func_801AE3E8_77CFD8(actor_index);
    case 0x4021:
        (gActors + actor_index)->velocityY.raw += FIXED_UNIT(0.0625);
        if (func_8008F220(actor_index) == 0) {
            if ((gActors + actor_index)->unk_16C & 2) {
                if (func_801AE260_77CE50(actor_index) == 0) {
                    func_801AE4AC_77D09C(actor_index, 1);
                }
                else {
                    (gActors + actor_index)->state++;
                    func_8009159C(actor_index);
                }
            }
            func_800911D8(actor_index);
        }
        break;
    case 0x4022:
        (gActors + actor_index)->velocityY.raw += FIXED_UNIT(0.0625);
        if (func_8008F220(actor_index) == 0) {
            if (func_8009159C(actor_index) == 0) {
                func_801AE4AC_77D09C(actor_index, 1);
            }
            else {
                released_actor_index = gActors[actor_index + 7].parentIndex;
                if ((gActors + actor_index)->unk_16C & 1) {
                    (gActors + actor_index)->state++;
                    gActors[released_actor_index].flags_098 &= ~ACTOR_FLAG3_GRAB;
                    gActors[released_actor_index].flags_098 |= ACTOR_FLAG3_THROWN;
                    gActors[released_actor_index].unk_0F8.raw = gActors[actor_index + 1].unk_130 * (f32)FIXED_UNIT(1.5);
                    gActors[released_actor_index].unk_0FC.raw = FIXED_UNIT(-2);
                }
                func_800911D8(actor_index);
            }
        }
        break;
    case 0x4023:
        (gActors + actor_index)->velocityY.raw += FIXED_UNIT(0.0625);
        if (func_8008F220(actor_index) == 0) {
            if ((gActors + actor_index)->unk_11C < 0.0f) {
                func_801AE4AC_77D09C(actor_index, 1);
            }
            func_800911D8(actor_index);
        }
        break;
    case 0x4030:
        (gActors + actor_index)->state++;
        (gActors + actor_index)->flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
        (gActors + actor_index)->iFrames = 60;
        (gActors + actor_index)->velocityX.raw = 0;
        (gActors + actor_index)->velocityY.raw = FIXED_UNIT(5);
        func_80081790(actor_index, D_800E9034);
    case 0x4031:
        (gActors + actor_index)->velocityY.raw -= FIXED_UNIT(0.0625);
        if ((gActors + actor_index)->velocityY.raw < FIXED_UNIT(-1)) {
            (gActors + actor_index)->flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK10;
            func_801AE4AC_77D09C(actor_index, 1);
        }
        break;
    case 0x4040:
        (gActors + actor_index)->state++;
        (gActors + actor_index)->health = 0;
        (gActors + actor_index)->iFrames = 0;
        (gActors + actor_index)->velocityX.raw = 0;
        (gActors + actor_index)->velocityY.raw = FIXED_UNIT(2);
        func_80081790(actor_index, D_800E9034);
        gActors[actor_index + 8].unk_180 = 0;
        SpawnParticle_RingWaveRed(1.5f, (gActors + actor_index)->posX.whole, (gActors + actor_index)->posY.whole, (gActors + actor_index)->posZ.whole + 10);
        func_8003EEC0(2.0f, (gActors + actor_index)->posX.whole, (gActors + actor_index)->posY.whole, (gActors + actor_index)->posZ.whole + 10);
    case 0x4041:
        BossDeathExplode(0, actor_index, 0.5f, 0.5f);
        if (!(gActors[actor_index + 8].unk_180 & 3)) {
            particle_index = func_8003EDF4(0.8f, (gActors + actor_index)->posX.whole - (Rand() & 63) + 32, (gActors + actor_index)->posY.whole - (Rand() & 63) + 32, (gActors + actor_index)->posZ.whole + 1);
            if (particle_index != 0) {
                gActors[particle_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[particle_index].colorB = 95;
                gActors[particle_index].velocityX.raw = -(gActors + actor_index)->velocityX.raw / 2;
                gActors[particle_index].velocityY.raw = -(gActors + actor_index)->velocityY.raw / 2;
            }
        }

        if (gActors[actor_index + 8].unk_180 >= 721) {
            (gActors + actor_index)->flags = 0;
            return;
        }

        (gActors + actor_index)->velocityY.raw -= FIXED_UNIT(0.3125);
        (gActors + actor_index)->velocityX.raw = Math_ApproachS32((gActors + actor_index)->velocityX.raw, 0, FIXED_UNIT(0.015625));

        if ((gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole > 704 && (gActors + actor_index)->velocityX.raw > 0) || (gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole < 320 && (gActors + actor_index)->velocityX.raw < 0)) {
            (gActors + actor_index)->velocityX.raw = -(gActors + actor_index)->velocityX.raw;
            if ((gActors + actor_index)->velocityX.raw > 0) {
                (gActors + actor_index)->flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                (gActors + actor_index)->flags |= ACTOR_FLAG_FLIPPED;
            }
        }

        if ((gActors + actor_index)->velocityY.raw < 0 && gScreenPosCurrentY.whole + (gActors + actor_index)->posY.whole < 256) {
            (gActors + actor_index)->velocityY.raw = FIXED_UNIT(11);
            func_80081790(actor_index, D_800E9034);
            if ((gActors + actor_index)->flags & ACTOR_FLAG_FLIPPED) {
                (gActors + actor_index)->velocityX.raw = FIXED_UNIT(-4);
            }
            else {
                (gActors + actor_index)->velocityX.raw = FIXED_UNIT(4);
            }
        }

        (gActors + actor_index)->unk_170 += FIXED_UNIT(64);
        (gActors + actor_index)->flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
        break;
    }
    D_800D2904 = 1.0 - ((f32)(gActors + actor_index)->health / 4096);
}


void func_801AEEBC_77DAAC(u16 actor_index) {
    if (gActors[0x40].health == 0 || gScreenPosCurrentY.whole - ((actor_index * 0) - gActors[actor_index].posY.whole) < 0x100) {
        gActors[actor_index].flags = 0;
        return;
    }

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].unk_14C = 240.0f - D_800D2904 * 120.0f;
    }

    Clanblob_Update(actor_index);
    gActors[actor_index].unk_144 = 0.6f;
    gActors[actor_index].unk_14C -= 1.0f;

    if (gActors[actor_index].unk_14C < 0.0f) {
        func_8002D040(actor_index, 0);
        return;
    }

    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
    if (gActors[actor_index].unk_14C <= 56.0f && !(gActiveFrames & 7)) {
        Actor_SetColorRgb(actor_index, 0x7F);
    }
    else if (gActors[actor_index].unk_14C <= 128.0f) {
        gActors[actor_index].colorR = (u32)(128.0f - gActors[actor_index].unk_14C);
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = 0;
    }

    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index].graphicIndex = D_801B0038_77EC28[((s32)gActiveFrames / 2) & 3];
    if (gActors[actor_index].state == 0x20) {
        gActors[actor_index].unk_118 = 2.0f;
        gActors[actor_index].state = 0x11;
        gActors[actor_index].unk_130 = 1.3f;
        gActors[actor_index].unk_138 = (1.3f - gActors[actor_index].scaleX) / 6.0f;
        gActors[actor_index].unk_134 = 0.8f;
        gActors[actor_index].unk_13C_f32 = (0.8f - gActors[actor_index].scaleY) / 6.0f;
        if (Rand() & 1) {
            gActors[actor_index].var_158 = FIXED_UNIT(-0.5);
        }
        else {
            gActors[actor_index].var_158 = FIXED_UNIT(0.5);
        }
        gActors[actor_index].var_15C = FIXED_UNIT(3.5);
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AF1C4_77DDB4(u16 actor_index) {
    s32 unused;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x4080;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index + 2].var_0D8 = 0;
        gActors[actor_index].posX.whole = 48;
        gActors[actor_index].posY.whole = -30;
        func_80081790(actor_index, D_800E8F04);
        gLookatEyeZ = 384.0f;
        gLookatAtY = 16.0f;
        gActors[actor_index + 6].unk_180 = 60;
        break;
    case 0x4080:
        if (--gActors[actor_index + 6].unk_180 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(22);
            func_8005DF40(0, 60);
            D_800D5830 = 96;
            D_800D5834 = 0;
        }
        break;
    case 0x4081:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[actor_index + 6].unk_180 = 60;
        }
        break;
    case 0x4082:
        if (--gActors[actor_index + 6].unk_180 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(23);
            D_800D5830 = -96;
            D_800D5834 = 0;
            gActors[0x30].unk_174 = 1;
        }
        break;
    case 0x4083:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state = 0x4090;
            gActors[0x30].unk_174 = 0;
        }
        break;
    case 0x4090:
        gActors[actor_index].state++;
        gActors[actor_index + 6].unk_180 = 120;
    case 0x4091:
        if (gActors[actor_index + 6].unk_180 == 60) {
            Sound_PlaySfx(SFX_MARINA_STOP);
            func_8005DF5C(24);
            D_800D5830 = -96;
            D_800D5834 = 0;
        }
        if (func_8005DEFC() == 0 && gActors[actor_index + 6].unk_180 < 0) {
            gActors[actor_index].state++;
            gMarinaAnim.anim_u32 = MARINAANIM_TPIN_11;
            gActors[0x30].unk_174 = 7;
            gActors[actor_index + 6].unk_180 = 80;
        }
        else {
            gActors[actor_index + 6].unk_180--;
        }
        break;
    case 0x4092:
        if (--gActors[actor_index + 6].unk_180 < 0) {
            gActors[actor_index].state++;
            gActors[0x10].actorType = ACTORTYPE_OVL2_W4_CELES;
            Actor_Initialize(0x10);
            gActors[0x10].flags = ACTOR_FLAG_ACTIVE;
            gActors[0x10].posX.whole = gPlayerActor.posX.whole;
            gActors[0x10].posY.whole = gPlayerActor.posY.whole;
            gActors[0x10].var_0D8 = 0x1000;
        }
        break;
    case 0x4094:
        gActors[actor_index].state++;
        gActors[0x31].var_0D8 |= 4;
        gActors[0x30].unk_174 = 2;
        func_80081790(actor_index, D_800E9034);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
        CameraShake(-6, 8);
        gActors[actor_index + 6].unk_180 = 180;
    case 0x4095:
        gActors[actor_index].posX.whole += 5;
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        gActors[actor_index].unk_170 -= FIXED_UNIT(64);
        if (--gActors[actor_index + 6].unk_180 < 0) {
            gActors[actor_index].flags = 0;
            return;
        }
        break;
    }
    func_80032E60(actor_index + 11, GINDEX_STAFFCALINA, 0, 2.0f, -1, 0.75f, 0.75f);
}


void func_801AF6AC_77E29C(u16 actor_index) {
}


void func_801AF6B4_77E2A4(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].graphicIndex = GINDEX_SPIRAL;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -0x200;
    gActors[actor_index].colorR = 0x80;
    gActors[actor_index].scaleX = 8.0f;
    gActors[actor_index].rotateX = 45.0f;
}


void func_801AF750_77E340(u16 actor_index) {
    gActors[actor_index].posZ.whole = gActors[actor_index].unk_114 + (gLookatEyeZ - 576.0f);
    gActors[actor_index].unk_114 += 2.0f;
    gActors[actor_index].rotateY += gActors[actor_index].var_110;
    gActors[actor_index].scaleX += 0.05;
    gActors[actor_index].var_110 += 0.03;
    gActors[actor_index].unk_12C = gActors[actor_index].scaleX;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].colorA++;
        gActors[actor_index].colorR--;
        if (gActors[actor_index].colorA >= 0x41) {
            gActors[actor_index].state = 1;
        }
    }
    else {
        gActors[actor_index].colorA--;
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].state = 0;
            gActors[actor_index].scaleX = 4.0f;
            gActors[actor_index].var_110 = -0.2f;
            gActors[actor_index].unk_114 = 0.0f;
            gActors[actor_index].colorR = 0x51;
        }
    }
}


void func_801AF8A0_77E490(void) {
    func_801AF750_77E340(0x81);
    func_801AF750_77E340(0x82);
}


void func_801AF8C8_77E4B8(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    switch (actor->state) {
    case 0:
        actor->state++;
        actor->graphicFlags = ACTOR_GFLAG_UNK15;
        actor->flags = ACTOR_FLAG_ENABLED;
        actor->graphicIndex = 0x7003;
        actor->posX.whole = 0;
        actor->posY.whole = -48;
        gLookatEyeZ = 128.0f;
        gActors[0x80].actorType = ACTORTYPE_GRAPHIC_29;
        Actor_Initialize(0x80);
        gActors[0x80].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK8;
        gActors[0x80].graphicIndex = 0x1802;
        gActors[0x80].posX.whole = 8;
        gActors[0x80].posY.whole = -16;
        gActors[0x80].posZ.whole = -320;
        gActors[0x80].colorA = 32;
        gActors[0x80].scaleX = 1.8f;
        gActors[0x80].scaleY = 1.8f;
        Actor_SetColorRgb(0x80, 0x50);
        func_801AF6B4_77E2A4(0x81);
        gActors[0x81].colorA = 0;
        gActors[0x81].colorG = 128;
        gActors[0x81].colorB = 128;
        func_801AF6B4_77E2A4(0x82);
        gActors[0x82].colorA = 64;
        gActors[0x82].colorG = 150;
        gActors[0x82].colorB = 150;
        gActors[0x82].rotateY = 180.0f;
        Sound_PlayMusic(15);
        Sound_PlaySfx(SFX_WIND_0031);
        // fallthrough
    case 1:
        gLookatEyeZ = Math_ApproachS32(gLookatEyeZ, 384, 1);
        if (gLookatEyeZ == 384.0f) {
            actor->state++;
            actor->var_150 = 60;
        }
        break;
    case 2:
        if (--actor->var_150 < 0) {
            actor->state++;
            func_8005DF5C(28);
            func_8005DF40(0, 60);
            D_800D5830 = -96;
            D_800D5834 = 0;
        }
        break;
    case 3:
        if (func_8005DEFC() == 0) {
            actor->state++;
            actor->var_150 = 120;
        }
        break;
    case 4:
        if (--actor->var_150 < 0) {
            actor->state++;
        }
        break;
    case 5:
        actor->state++;
        Sound_StopSfx(SFX_WIND_0031);
        Sound_PlaySfx(SFX_00E1);
        actor->graphicFlags = ACTOR_GFLAG_UNK15;
        actor->graphicList = D_800E149C;\
        actor->graphicTimer = 1;
        actor->posX.whole = 0;
        actor->posY.whole = 0;
        actor->posZ.whole = 0;
        actor->var_150 = 0;
        gLookatEyeZ = 32.0f;
        gActors[0x80].flags = 0;
        SpawnWhiteFade1(0x8F, 12);
        break;
    case 6:
        gLookatEyeZ += 4.0f;
        actor->var_150++;
        if (actor->var_150 == 70) {
            Sound_PlaySfx(SFX_0074);
            Sound_PlaySfx(SFX_003F);
            gActors[0x40].actorType = ACTORTYPE_OVL0_GEN_BOOMGFX;
            Actor_Initialize(0x40);
            gActors[0x40 + (actor->var_150 * 0)].posX.whole = actor->posX.whole;
            gActors[0x40 + (actor->var_150 * 0)].posY.whole = actor->posY.whole + 16;
            gActors[0x40 + (actor->var_150 * 0)].posZ.whole = actor->posZ.whole + 8;
        }
        if (actor->graphicTimer == 0) {
            actor->state++;
        }
        break;
    case 7:
        gLookatEyeZ += 4.0f;
        if (gLookatEyeZ > 512.0f) {
            actor->state = 16;
            actor->flags = ACTOR_FLAG_ACTIVE;
            gActors[0x40].flags = 0;
            gActors[0x10].actorType = ACTORTYPE_OVL2_W4_CELES;
            Actor_Initialize(0x10);
            gActors[0x10].flags = ACTOR_FLAG_ACTIVE;
            gActors[0x10].var_0D8 = 0x2000;
            gActors[0x10].posX.whole = 0;
            gActors[0x10].posY.whole = 0;
            gActors[0x81].flags = 0;
            gActors[0x82].flags = 0;
            SpawnWhiteFade1(0x8F, 12);
            gActors[0x8F].state = 3;
            gActors[0x8F].var_158 = 32;
        }
        break;
    case 16:
        gLookatEyeZ -= 8.0f;
        if (gLookatEyeZ < 64.0f) {
            actor->state++;
            actor->var_150 = 280;
            SpawnWhiteFade2(0x8F, 12);
            gActors[0x8F].colorA = 32;
            Sound_PlaySfx(SFX_BOOM_0026);
            Sound_PlaySfx(SFX_MARINA_OHNO);
            Sound_StartFade(0x81, 120);
        }
        break;
    case 17:
        gLookatEyeZ = Math_ApproachS32(gLookatEyeZ, 16, 4);
        if (--actor->var_150 < 0) {
            gStageState++;
        }
        break;
    }
    if (actor->state < 0x100) {
        func_801AF8A0_77E490();
    }
}


