#include "common.h"
#include "actor.h"
#include "5D120.h"
#include "80D90.h"
#include "8F080.h"
#include "marina_effect.h"
#include "stage_tilemap.h"

extern s16 D_800E5B8C[];
extern s16 D_800E5D30[];
extern s16 D_800E5E48[];
extern u16* D_800E8820[];
extern u16 D_800E89D4[];
extern u16 D_800E8A48[];
extern u16 D_800E8C40[];
extern u16 D_800E8EAC[];

u16 D_80195E50_6F7B20[16];
u16 D_80195E70_6F7B40[32];
u16 D_80195EB0_6F7B80[32];

s16 D_80195B30_6F7800[] = {
//  graphic                 timer
    GINDEX_POOF,            4,
    GRAPHIC_FRAME(POOF, 1), 4,
    GRAPHIC_FRAME(POOF, 2), 4,
    GRAPHIC_FRAME(POOF, 3), 4,
    GRAPHIC_FRAME(POOF, 4), 4,
    GRAPHIC_FRAME(POOF, 5), 4,
    GRAPHIC_FRAME(POOF, 6), 4,
    GRAPHIC_FRAME(POOF, 7), 4,
    0,                      0,
};

s16 D_80195B54_6F7824[] = {
//  graphic timer
    0x6830, 4,
    0,      0,
};

s16 D_80195B5C_6F782C[] = {
//  graphic timer
    0x6801, 5,
    0x6802, 8,
    0x6801, 5,
    0x6800, 8,
    -4,     0,
};

s16 D_80195B70_6F7840[] = {
//  graphic timer
    0x6803, 8,
    0x6804, 2,
    0x6805, 2,
    0x6806, 2,
    0x6807, 2,
    0x6808, 2,
    0x6809, 2,
    0x680A, 2,
    0x680B, 8,
    0x680C, 2,
    0x680D, 2,
    0x680E, 2,
    0x680F, 2,
    0x6810, 2,
    0x6811, 2,
    0x6812, 2,
    -16,    0,
};

s16 D_80195BB4_6F7884[] = {
//  graphic timer
    0x6881, 2,
    0x6882, 2,
    0x6883, 2,
    0x6884, 2,
    0x6885, 2,
    0x6886, 2,
    0x6887, 2,
    0x6888, 2,
    0x6889, 2,
    0x688A, 2,
    0x688B, 2,
    0x688C, 2,
    0x688D, 2,
    0x688E, 2,
    0x688F, 2,
    0x6890, 2,
    -16,    0,
};

s16 D_80195BF8_6F78C8[] = {
//  graphic timer
    0x682C, 4,
    0x682D, 4,
    0x682E, 4,
    0x682F, 4,
    0x6830, 4,
    0x6831, 4,
    0x6832, 4,
    0x6833, 1,
    0x6834, 1,
    0x6835, 1,
    0x6836, 1,
    0x6837, 1,
    0x6838, 16,
    -13,    0,
};

s16 D_80195C30_6F7900[] = {
//  graphic timer
    0x3006, 6,
    0x3000, 16,
    -2,     0,
};

s16 D_80195C3C_6F790C[] = {
//  graphic timer
    0x3000, 4,
    0x3002, 4,
    0x3004, 4,
    0x3006, 4,
    0x3008, 4,
    0x300A, 4,
    0x300C, 4,
    0x300E, 4,
    -8,     0,
};

s16 D_80195C60_6F7930[] = {
//  graphic timer
    0x3000, 4,
    0,      0,
};

s16* D_80195C68_6F7938[] = {
    NULL,
    D_80195B54_6F7824,
    D_80195B5C_6F782C,
    D_80195B70_6F7840,
    D_80195BB4_6F7884,
    D_80195BF8_6F78C8,
    D_80195C30_6F7900,
    D_80195C3C_6F790C,
    D_80195C60_6F7930,
};

s16 D_80195C8C_6F795C[] = {
//  graphic timer
    0x603D, 4,
    0,      0,
};

s16 D_80195C94_6F7964[] = {
//  graphic timer
    0x603E, 8,
    0x603F, 8,
    0x6040, 8,
    0,      0,
};

s16 D_80195CA4_6F7974[] = {
//  graphic timer
    0x6411, 6,
    0x640F, 4,
    0,      0,
};

s16 D_80195CB0_6F7980[] = {
//  graphic timer
    0x6410, 8,
    0x640F, 8,
    -2,     0,
};

s16 D_80195CBC_6F798C[] = {
//  graphic timer
    0x6411, 8,
    0,      0,
};

s16 D_80195CC4_6F7994[] = {
//  graphic timer
    0x6412, 8,
    0,      0,
};

s16 D_80195CCC_6F799C[] = {
//  graphic timer
    0x641B, 6,
    0x641A, 6,
    0x6419, 6,
    0x6418, 6,
    0x6417, 6,
    0x6416, 6,
    0x6415, 6,
    0x6414, 6,
    0x6413, 6,
    0x604C, 6,
    0x604B, 6,
    -8,     0,
};

s16* D_80195CFC_6F79CC[] = {
    NULL,
    D_80195C8C_6F795C,
    D_80195C94_6F7964,
    D_80195CA4_6F7974,
    D_80195CB0_6F7980,
    D_80195CBC_6F798C,
    D_80195CC4_6F7994,
    D_80195CCC_6F799C,
    NULL,
};

f32 D_80195D20_6F79F0 = 0.1f;
f64 D_80195D28_6F79F8 = 2.3;


void func_80192100_6F3DD0(u16 actor_index) {
    gActors[actor_index].unk_104 += gActors[actor_index].unk_108;
    gActors[actor_index].posX.raw = gActors[actor_index].unk_0F8.raw + COS(gActors[actor_index].unk_104) * FIXED_UNIT(2.0);
}


void func_8019219C_6F3E6C(u16 actor_index) {
    u16 new_actor_index;
    s16 var_s0;
    s32 particle_offset;
    s32 particle_position[3];
    u16 index;
    f32 particle_scale;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].hitboxBY1 = -42;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.raw = FIXED_UNIT(-104);
        }
        else {
            gActors[actor_index].posX.raw = FIXED_UNIT(104);
        }

        gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-16);
        gActors[actor_index].unk_188 = 0;

        new_actor_index = actor_index + 1;
        gActors[new_actor_index].actorType = 0x2309;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].graphicIndex = 0x3024;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[new_actor_index].state = 2;
        }
        else {
            gActors[new_actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].state = 5;
        }

        new_actor_index = actor_index + 2;
        gActors[new_actor_index].actorType = 0x2309;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].graphicIndex = 0x302E;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw - FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].state = 5;

        new_actor_index = actor_index + 3;
        gActors[new_actor_index].actorType = 0x2309;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].graphicIndex = 0x3026;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].unk_14C = actor_index;
        gActors[new_actor_index].state = 3;
        gActors[actor_index].var_15C = Rand();
        gActors[actor_index].state = 1;
        break;

    case 1:
        gActors[actor_index].posY.raw = FIXED_UNIT(3.75) * COS(gActors[actor_index].var_15C) + (TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80));
        gActors[actor_index].var_15C += 2;
        gActors[actor_index].var_158++;

        if (gActors[actor_index].var_158 % 48 == 0) {
            particle_position[0] = gActors[actor_index].posX.whole;
            particle_position[1] = gActors[actor_index].posY.whole - 20;
            particle_position[2] = gActors[actor_index].posZ.whole + RandModulo(4) + 2;
            index = MarinaEffect_SpawnParticle(actor_index, particle_position);
            particle_scale = D_80195D20_6F79F0;
            gActors[index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[index].graphicIndex = GINDEX_PARTICLERING;
            gActors[index].scaleX = gActors[index].scaleY = particle_scale;
            particle_offset = particle_position[0] = RandModulo(16);
            gActors[index].posX.whole += particle_offset;
            gActors[index].unk_148 = RandModulo(32) + 192;
            gActors[index].unk_148 -= Math_AbsS32_2(particle_position[0] * 2);
            gActors[index].velocityY.raw = FIXED_UNIT(0.25);
            gActors[index].unk_104 = 0;
            gActors[index].unk_0F8.raw = gActors[index].posX.raw;
            gActors[index].unk_108 = RandModulo(16);
            gActors[index].pfn_17C = func_80192100_6F3DD0;
        }
        break;

    case 3:
        gActors[actor_index].colorA = 96;
        gActors[actor_index].colorA += 32.0f * COS(FROM_FIXED(gActors[actor_index].var_15C));
        gActors[actor_index].var_15C += FIXED_UNIT(2.5);
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            for (index = 0; index < ARRAYLENGTH(D_80195E70_6F7B40); index++) {
                D_80195E70_6F7B40[index] = ((u16*)0x8036F080)[index + 0xE0];
                D_80195EB0_6F7B80[index] = 0;
            }

            D_80195E70_6F7B40[0] = GPACK_RGBA5551(255, 0, 0, 1);
            D_80195E70_6F7B40[1] = GPACK_RGBA5551(192, 0, 0, 1);
            D_80195E70_6F7B40[2] = GPACK_RGBA5551(128, 0, 0, 1);
            D_80195E70_6F7B40[21] = GPACK_RGBA5551(0, 0, 48, 1);
            D_80195E70_6F7B40[22] = GPACK_RGBA5551(0, 0, 96, 1);
            D_80195E70_6F7B40[23] = GPACK_RGBA5551(0, 0, 255, 1);
            D_80195E70_6F7B40[24] = D_80195E70_6F7B40[25] = GPACK_RGBA5551(0, 0, 0, 1);
            D_80195E70_6F7B40[26] = D_80195E70_6F7B40[27] = D_80195E70_6F7B40[28] = D_80195E70_6F7B40[29] = D_80195E70_6F7B40[30] = GPACK_RGBA5551(0, 0, 0, 1);

            gActors[actor_index].var_110 = 0.0f;
            gActors[actor_index].unk_114 = gActors[actor_index].unk_118 = gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].var_15C = gActors[actor_index].var_110;
            gActors[actor_index].var_150 = gActors[actor_index].var_154 = gActors[actor_index].var_158 = gActors[actor_index].var_110;
            gActors[actor_index].stateUpper = 1;
        }

        var_s0 = -((s16)gActors[actor_index].var_110 & 0xFF) / 8;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40, D_80195EB0_6F7B80, 3, 0, 0, var_s0);
        gActors[actor_index].var_110 += 4.0f;

        var_s0 = Rand() % 20;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 3, D_80195EB0_6F7B80 + 3, 3, var_s0, var_s0, var_s0);

        var_s0 = COS((s32)gActors[actor_index].var_110) * 128.0f;
        var_s0 /= 8;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 6, D_80195EB0_6F7B80 + 6, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, 0, 1);
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].var_150 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_150 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 9, D_80195EB0_6F7B80 + 9, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0, 1);
        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].var_154 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_154 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 12, D_80195EB0_6F7B80 + 12, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, 1);
        if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].var_158 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_158 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 15, D_80195EB0_6F7B80 + 15, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 1);
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].var_15C = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_15C < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80195E70_6F7B40 + 18, D_80195EB0_6F7B80 + 18, 3, var_s0, var_s0, var_s0);

        var_s0 = (s32)gActors[actor_index].unk_118 / 10;
        var_s0 %= 5;
        for (index = 0; index < 5; index++) {
            D_80195EB0_6F7B80[21 + (var_s0 + index) % 5] = D_80195E70_6F7B40[21 + index];
        }

        gActors[actor_index].unk_118 += D_80195D28_6F79F8;
        var_s0 = Rand() % 5;
        for (index = 0; index <= var_s0; index++) {
            D_80195EB0_6F7B80[26 + index] = GPACK_RGBA5551(255, 0, 0, 1);
        }

        for (; index < 5; index++) {
            D_80195EB0_6F7B80[26 + index] = GPACK_RGBA5551(0, 0, 0, 1);
        }

        for (index = 0; index < ARRAYLENGTH(D_80195EB0_6F7B80); index++) {
            ((u16*)0x8036F080)[index + 0xE0] = D_80195EB0_6F7B80[index];
        }
        break;
    }
}


void func_80192D18_6F49E8(u16 actor_index) {
    if (gActors[actor_index].stateLower == 0) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = 0;
        gActors[actor_index].dlist_17C = (Gfx*)0x8037D700;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = FIXED_UNIT(64);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-192);
        gActors[actor_index].unk_12C = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].scaleX = 1.0f;
        gActorDepthMiddle = -384;
        gActorDepthBack = -512;
        gActors[actor_index].state = 1;
    }
}


void func_80192DC8_6F4A98(u16 actor_index) {
    s32 sp24[5];
    u16 fixed_actor_index = 51;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_UNK8;
        gActors[actor_index].graphicLists = D_80195CFC_6F79CC;
        gActors[actor_index].hitboxBY1 = -38;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80);
        gActors[actor_index].posZ.raw = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].state = 6;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 6;
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_170 = 3;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1 && func_8005D418(actor_index)) {
            gActors[actor_index].state = 6;
        }
        break;

    case 3:
        gActors[actor_index].unk_170 = 4;
        gActors[actor_index].state = 6;
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[fixed_actor_index].state = 1;
            gActors[actor_index].unk_170 = 5;
            Sound_PlaySfx(SFX_AREACLEAR_0137);
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[fixed_actor_index].flags == ACTOR_FLAG_NONE) && (gActors[fixed_actor_index].state == 3)) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].state = 6;
            }
        }
        break;

    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 7;
            Sound_PlaySfx(SFX_013D);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[1] >= 3) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(6), FIXED_UNIT(0.0625));
        }

        if (gActors[actor_index].posY.whole >= 160) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 7;
        }
        break;
    }

    func_8005D450(actor_index);
}


void func_80193030_6F4D00(u16 actor_index) {
    u16 fixed_actor_index = 50;

    gActors[actor_index].posX.raw = gActors[fixed_actor_index].posX.raw;
    gActors[actor_index].posY.raw = gActors[fixed_actor_index].posY.raw;
    gActors[actor_index].posZ.raw = gActors[fixed_actor_index].posZ.raw;
    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;

    switch (gActors[fixed_actor_index].graphicIndex) {
    case 0x6411:
        gActors[actor_index].posX.whole -= 6;
        gActors[actor_index].posY.whole += 8;
        gActors[actor_index].posZ.whole++;
        break;

    case 0x640F:
    case 0x6410:
        gActors[actor_index].posX.whole -= 12;
        gActors[actor_index].posY.whole += 34;
        gActors[actor_index].posZ.whole--;
        break;

    default:
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        break;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].graphicIndex = GINDEX_181C;
        gActors[actor_index].state = 2;
        gActors[actor_index].rotateZ = 90.0f;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].scaleX = gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_150 -= 6;
            if (gActors[actor_index].var_150 <= -150) {
                gActors[actor_index].var_150 = -150;
                gActors[actor_index].var_154 = 10;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.02f, 0.098f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.5f, 0.05f);
            gActors[actor_index].var_150 += 64;
            gActors[actor_index].var_154--;
            if (gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_150 = 255;
                gActors[actor_index].var_154 = 10;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 3.0f, 0.298f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.02f, 0.15f);
            gActors[actor_index].var_154--;
            if (gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                gActors[actor_index].state = 3;
            }
        }

        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = Math_AbsS32_2(gActors[actor_index].var_150 / 2);
        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        }
        else {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
        break;
    }
}


void func_801932FC_6F4FCC(u16 actor_index) {
    u16 fixed_actor_index = 50;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[fixed_actor_index].actorType = 0x2302;
        Actor_Initialize(fixed_actor_index);
        gActors[fixed_actor_index].unk_14C = actor_index;
        gActors[actor_index].graphicIndex = 0x5004;
        gActors[actor_index].hitboxBY1 = -18;
        gActors[actor_index].posX.whole = -60;
        gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].state = 5;
        break;

    case 1:
        gActors[fixed_actor_index].unk_11C = 60.0f;
        gActors[actor_index].state = 5;
        break;

    case 2:
        gActors[fixed_actor_index].unk_11C = 0.0f;
        gActors[actor_index].state = 5;
        break;

    case 3:
        gActors[fixed_actor_index].unk_118 = 1.0f;
        gActors[fixed_actor_index].unk_11C = -40.0f;
        gActors[fixed_actor_index].graphicIndex = 0x2808;
        gActors[actor_index].state = 5;
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[fixed_actor_index].var_158 = 0;
            gActors[fixed_actor_index].var_15C = FIXED_UNIT(11);
            gActors[fixed_actor_index].unk_11C = 0.0f;
            gActors[fixed_actor_index].graphicIndex = 0x280C;
            gActors[fixed_actor_index].state = 3;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].graphicIndex = 0x5007;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.0625));
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, gActors[52].posZ.raw - FIXED_UNIT(1), FIXED_UNIT(0.5));
        gActors[actor_index].rotateZ -= 3.0f;

        if (gActors[actor_index].posX.whole > 160) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[fixed_actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].state = 6;
            gActors[fixed_actor_index].state = 4;
        }

        if (gActors[actor_index].posY.whole < gActors[52].posY.whole + 16) {
            gActors[actor_index].stateUpper++;
            gActors[actor_index].posY.whole = gActors[52].posY.whole + 16;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            Sound_PlaySfx(SFX_012A);
        }
        break;
    }
}


void func_80193574_6F5244(u16 actor_index) {
    u16 parent_actor_index = gActors[actor_index].unk_14C;

    if (gActors[actor_index].stateLower < 3) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= gActors[parent_actor_index].flags & ACTOR_FLAG_FLIPPED;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.raw = gActors[parent_actor_index].posX.raw + gActors[actor_index].var_158;
        }
        else {
            gActors[actor_index].posX.raw = gActors[parent_actor_index].posX.raw - gActors[actor_index].var_158;
        }

        gActors[actor_index].posY.raw = gActors[parent_actor_index].posY.raw + gActors[actor_index].var_15C;
        gActors[actor_index].posZ.whole = gActors[parent_actor_index].posZ.whole + 1;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].var_158 = FIXED_UNIT(5);
        gActors[actor_index].var_15C = FIXED_UNIT(11);
        gActors[actor_index].graphicIndex = 0x2804;
        gActors[actor_index].unk_118 = 2.0f;
        gActors[actor_index].unk_11C = 0.0f;
        gActors[actor_index].state = 1;
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = COS_DEG_180;
            gActors[actor_index].var_154 = FIXED_UNIT(4);
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_15C = gActors[actor_index].var_154 * COS(gActors[actor_index].var_150) + FIXED_UNIT(11);
        gActors[actor_index].var_150 += 112;
        gActors[actor_index].var_154 -= FIXED_UNIT(0.0625);
        if (gActors[actor_index].var_154 >= 0) {
            break;
        }

        gActors[actor_index].var_15C = FIXED_UNIT(11);
        gActors[actor_index].state = 1;
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].rotateZ = 0.0f;
            gActors[actor_index].stateUpper = 1;
        }

        switch ((gActors[actor_index].var_150 / 10) % 5U) {
        case 0:
            gActors[actor_index].graphicIndex = 0x280C;
            break;

        case 1:
            gActors[actor_index].graphicIndex = 0x280E;
            break;

        case 2:
            gActors[actor_index].graphicIndex = 0x2810;
            break;

        case 3:
            gActors[actor_index].graphicIndex = 0x2812;
            break;

        case 4:
            gActors[actor_index].graphicIndex = 0x2814;
            break;
        }

        gActors[actor_index].var_150++;
        gActors[actor_index].posX.whole = gActors[parent_actor_index].posX.whole;
        gActors[actor_index].posY.whole = gActors[parent_actor_index].posY.whole;
        gActors[actor_index].posX.raw -= FIXED_UNIT(11) * SIN((s32)DEG_TO_INDEX(gActors[parent_actor_index].rotateZ));
        gActors[actor_index].posY.raw += FIXED_UNIT(11) * COS((s32)DEG_TO_INDEX(gActors[parent_actor_index].rotateZ));
        gActors[actor_index].posZ.whole = gActors[parent_actor_index].posZ.whole + 1;
        gActors[actor_index].rotateZ = gActors[parent_actor_index].rotateZ;
        break;
    }

    if (gActors[actor_index].stateLower < 3) {
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, gActors[actor_index].unk_11C, gActors[actor_index].unk_118);

        if (gActors[actor_index].rotateZ == gActors[actor_index].unk_11C) {
            gActors[actor_index].unk_118 = 2.0f;
        }
    }
}


void func_80193A64_6F5734(u16 actor_index) {
    u16 new_actor_index;
    u32 particle_actor_index;
    s32 particle_position[3];

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicLists = D_80195C68_6F7938;
        gActors[actor_index].hitboxBY1 = -14;
        gActors[actor_index].state = 13;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
            if (new_actor_index == 0) {
                break;
            }

            gActors[new_actor_index].actorType = 0x2303;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].graphicIndex = GINDEX_BLACKBAR;
            gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
            gActors[new_actor_index].hitboxBX0 = -40;
            gActors[new_actor_index].hitboxBX1 = 40;
            gActors[new_actor_index].hitboxBY0 = 16;
            gActors[new_actor_index].hitboxBY1 = -16;
            gActors[new_actor_index].posX.raw = FIXED_UNIT(-96);
            gActors[new_actor_index].posY.raw = FIXED_UNIT(72);
            gActors[new_actor_index].posZ.raw = FIXED_UNIT(-256);
            gActors[new_actor_index].unk_188 = 0;
            gActors[new_actor_index].state = 14;
            func_80011B30(0, 0, 3, 1, 22);
            Sound_PlaySfx(SFX_GRAB_0030);
            gActors[actor_index].var_150 = 20;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 > 0) {
                break;
            }

            new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
            if (new_actor_index == 0) {
                break;
            }

            gActors[new_actor_index].actorType = 0x2303;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].graphicIndex = 0x3014;
            gActors[new_actor_index].posX.raw = FIXED_UNIT(-112);
            gActors[new_actor_index].posY.raw = FIXED_UNIT(85);
            gActors[new_actor_index].posZ.raw = FIXED_UNIT(384);
            gActors[new_actor_index].state = 14;
            func_80011C58(0, 0, 3, 1);
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[actor_index].posX.whole = -96;
            gActors[actor_index].posY.whole = 32;
            gActors[actor_index].posZ.whole = -160;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.25);
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].stateUpper = 2;
        }

        if (gActors[actor_index].stateUpper == 2 && gActors[actor_index].posY.whole >= 64) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = 64;
            Sound_PlaySfx(SFX_CLANCER_TALK_009F);
            gActors[actor_index].state = 13;
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posX.whole < -160) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].state = 14;
        }
        break;

    case 3:
        gActors[actor_index].var_158 = FIXED_UNIT(32);
        gActors[actor_index].var_15C = FIXED_UNIT(-32);
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].state = 8;
        break;

    case 4:
        gActors[actor_index].var_158 = FIXED_UNIT(48);
        gActors[actor_index].var_15C = FIXED_UNIT(-48);
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].state = 8;
        break;

    case 5:
        gActors[actor_index].var_158 = FIXED_UNIT(64);
        gActors[actor_index].var_15C = FIXED_UNIT(-64);
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].state = 8;
        break;

    case 6:
        gActors[actor_index].var_158 = FIXED_UNIT(80);
        gActors[actor_index].var_15C = FIXED_UNIT(-32);
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].state = 8;
        break;

    case 7:
        gActors[actor_index].var_158 = FIXED_UNIT(88);
        gActors[actor_index].var_15C = FIXED_UNIT(-48);
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].state = 8;
        break;

    case 8:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = RandModulo(32) + 176;
            gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
            gActors[actor_index].posZ.whole = -80;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(0.5));
        if (gActors[actor_index].posX.whole < 96) {
            gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, gActors[actor_index].var_15C, FIXED_UNIT(1));
        }

        if (gActors[actor_index].posX.raw == gActors[actor_index].var_158 && gActors[actor_index].posZ.raw == gActors[actor_index].var_15C) {
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].state = 13;
        }
        break;

    case 9:
        if (gActors[actor_index].stateUpper < 5) {
            gActors[actor_index].var_158 = gActors[49].posX.raw + FIXED_UNIT(8);
            gActors[actor_index].var_15C = gActors[49].posZ.raw;
            gActors[actor_index].unk_170 = 3;
            gActors[actor_index].unk_170_s8[1] = Rand() % 14;
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_15C -= FIXED_UNIT(48);
            gActors[actor_index].stateUpper = 7;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_158 -= FIXED_UNIT(24);
            gActors[actor_index].var_15C -= FIXED_UNIT(32);
            gActors[actor_index].stateUpper = 5;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].var_158 += FIXED_UNIT(24);
            gActors[actor_index].var_15C -= FIXED_UNIT(32);
            gActors[actor_index].stateUpper = 5;
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].var_158 -= FIXED_UNIT(16);
            gActors[actor_index].var_15C += FIXED_UNIT(32);
            gActors[actor_index].stateUpper = 6;
        }

        if (gActors[actor_index].stateUpper == 4) {
            gActors[actor_index].var_158 += FIXED_UNIT(8);
            gActors[actor_index].var_15C += FIXED_UNIT(32);
            gActors[actor_index].stateUpper = 6;
        }

        if (gActors[actor_index].stateUpper == 5 || gActors[actor_index].stateUpper == 7) {
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(0.5));
            if (gActors[actor_index].posX.whole < gActors[49].posX.whole + 48) {
                gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, gActors[actor_index].var_15C, FIXED_UNIT(1));
            }

            if (gActors[actor_index].posX.raw == gActors[actor_index].var_158 && gActors[actor_index].posZ.raw == gActors[actor_index].var_15C) {
                gActors[actor_index].unk_170 = 5;
                if (gActors[actor_index].posX.whole < gActors[49].posX.whole) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }

                if (gActors[actor_index].stateUpper == 7) {
                    gActors[actor_index].state = 10;
                }
                else {
                    gActors[actor_index].state = 13;
                }
            }
        }

        if (gActors[actor_index].stateUpper == 6) {
            if (gActors[actor_index].posZ.whole > gActors[49].posZ.whole + 48) {
                gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(1));
            }

            if (gActors[actor_index].posX.whole > gActors[49].posX.whole + 32) {
                gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(64), FIXED_UNIT(1));
            }
            else {
                gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(1));
                gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, gActors[actor_index].var_15C, FIXED_UNIT(1));
            }

            if (gActors[actor_index].posX.raw == gActors[actor_index].var_158 && gActors[actor_index].posZ.raw == gActors[actor_index].var_15C) {
                if (gActors[actor_index].posX.whole < gActors[49].posX.whole) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index].unk_170 = 6;
                gActors[actor_index].state = 13;
            }
        }
        break;

    case 10:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 > 0) {
                break;
            }

            Sound_PlaySfx(SFX_0038);
            gActors[actor_index].stateUpper = 2;
        }

        if (!(gActors[actor_index].var_150 % 8)) {
            particle_position[0] = gActors[49].posX.whole + RandModulo(24);
            particle_position[1] = gActors[49].posY.whole + RandModulo(16) + 16;
            particle_position[2] = gActors[49].posZ.whole + 1;
            particle_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);

            if (particle_actor_index != 0) {
                gActors[particle_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[particle_actor_index].graphicList = D_80195B30_6F7800;
                gActors[particle_actor_index].var_154 = -4;
                gActors[particle_actor_index].scaleX = gActors[particle_actor_index].scaleY = 1.5f;
                gActors[particle_actor_index].unk_148 = 1000.0f;
                gActors[particle_actor_index].var_110 = gActors[particle_actor_index].scaleX / 60.0f;
                gActors[particle_actor_index].unk_114 = gActors[particle_actor_index].scaleY / 60.0f;
                gActors[particle_actor_index].unk_118 = -gActors[particle_actor_index].var_110 / 30.0f;
                gActors[particle_actor_index].unk_11C = -gActors[particle_actor_index].unk_114 / 30.0f;
            }
        }

        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 >= 300) {
            gActors[actor_index].state = 13;
        }
        break;

    case 11:
        if (func_8005D338(actor_index) == 5) {
            gActors[actor_index].unk_170 = 2;
        }

        if (func_8005D338(actor_index) == 6) {
            gActors[actor_index].unk_170 = 8;
        }

        gActors[actor_index].state = 13;
        break;

    case 12:
        if (!gActors[actor_index].stateUpper) {
            if (gActors[actor_index].posZ.whole > 0) {
                func_8005D370(actor_index, 7);
                gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-80), FIXED_UNIT(1));
            }
            else {
                gActors[actor_index].stateUpper = 1;
            }
        }

        if (gActors[actor_index].stateUpper == 1) {
            func_8005D370(actor_index, 3);
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.75);
            gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-80), FIXED_UNIT(0.5));
        }

        if (gActors[actor_index].posX.whole > 160) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].state = 14;
        }
        break;
    }

    func_8005D450(actor_index);
}


void func_80194470_6F6140(u16 actor_index) {
    s32 sp3C[5];
    u16 new_actor_index;
    u16 fixed_actor_index = 48;

    if (gActors[actor_index].stateLower == 0) {
        func_8008105C(actor_index, D_800E5E48, D_800E5B8C);
        gActors[actor_index].unk_178 = (uintptr_t)D_800E8820;
        func_80081478(actor_index, D_800E5E48, 1);
        func_80081790(actor_index, D_800E89D4);
        gActors[actor_index].hitboxBY1 = -14;

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.raw = FIXED_UNIT(192);
            gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(54);
            gActors[actor_index].posZ.raw = 0;
            gActors[actor_index].colorA = 0;
            gActors[fixed_actor_index].var_150 = 0;
            gActors[actor_index].unk_138 = 1.0f;
            gActors[actor_index].state = 1;
        }
    }

    func_800819A8(actor_index, D_800E5E48);

    switch (gActors[actor_index].stateLower) {
    case 1:
        if (!gActors[actor_index].stateUpper) {
            new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].actorType = 0x2303;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].graphicIndex = GINDEX_BLACKBAR;
                gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
                gActors[new_actor_index].posX.raw = FIXED_UNIT(96);
                gActors[new_actor_index].posY.raw = FIXED_UNIT(-8);
                gActors[new_actor_index].posZ.raw = FIXED_UNIT(-256);
                gActors[new_actor_index].unk_188 = 0;
                gActors[new_actor_index].hitboxBX0 = -24;
                gActors[new_actor_index].hitboxBX1 = 24;
                gActors[new_actor_index].hitboxBY0 = 48;
                gActors[new_actor_index].hitboxBY1 = -48;
                gActors[new_actor_index].state = 14;
                func_80011B30(7, 2, 1, 5, 10);
                Sound_PlaySfx(SFX_0035);
                gActors[fixed_actor_index].var_150 = 16;
                gActors[actor_index].stateUpper = 1;
            }
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[48 + actor_index * 0].var_150--;
            if (gActors[48 + actor_index * 0].var_150 <= 0) {
                new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
                if (new_actor_index != 0) {
                    gActors[new_actor_index].actorType = 0x2303;
                    Actor_Initialize(new_actor_index);
                    gActors[new_actor_index].graphicIndex = 0x3018;
                    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6;
                    gActors[new_actor_index].posX.raw = FIXED_UNIT(124);
                    gActors[new_actor_index].posY.raw = FIXED_UNIT(-14);
                    gActors[new_actor_index].posZ.raw = 0;
                    gActors[new_actor_index].state = 14;
                    func_80011C58(7, 2, 1, 4);
                    gActors[actor_index].posX.raw = FIXED_UNIT(128);
                    gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(54);
                    gActors[actor_index].posZ.raw = FIXED_UNIT(-80);
                    gActors[actor_index].colorA = 255;
                    func_80081790(actor_index, D_800E8A48);
                    gActors[actor_index].stateUpper = 2;
                }
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, FIXED_UNIT(64), FIXED_UNIT(0.5));
            if (gActors[actor_index].posX.whole < 88) {
                gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, 0, FIXED_UNIT(1));
            }

            if (gActors[actor_index].posX.whole == 64 && gActors[actor_index].posZ.whole == 0) {
                func_80081790(actor_index, D_800E89D4);
                gActors[actor_index].state = 4;
            }
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            func_80081790(actor_index, D_800E8C40);
            gActors[48].var_150 = 30;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[48].var_150--;
            if (gActors[48].var_150 <= 0) {
                func_80081790(actor_index, D_800E89D4);
                gActors[actor_index].state = 4;
            }
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_138 = 0.0f;
            func_80081790(actor_index, D_800E8A48);
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-80), FIXED_UNIT(1));
        if (gActors[actor_index].posZ.whole < -56) {
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, FIXED_UNIT(192), FIXED_UNIT(0.5));
        }

        if (gActors[actor_index].posX.whole >= 160) {
            gActors[actor_index].state = 5;
        }
        break;
    }

    func_80096A1C(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_80194920_6F65F0(u16 actor_index) {
    s32 timer;
    f32 particle_scale;
    s32 particle_position[3];
    u16 fixed_actor_index = 48;
    u16 new_actor_index;

    if (gActors[actor_index].stateLower == 0) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        func_8008105C(actor_index, D_800E5E48, D_800E5D30);
        gActors[actor_index].unk_178 = (uintptr_t)D_800E8820;
        func_80081478(actor_index, D_800E5E48, 1);
        func_80081790(actor_index, D_800E8EAC);
        gActors[actor_index].hitboxBY1 = -14;

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.raw = 0;
            gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80);
            gActors[actor_index].posZ.raw = 0;
            gActors[actor_index].colorA = 0;
            gActors[fixed_actor_index].var_150 = 0;
            gActors[actor_index].state = 1;
        }
    }

    func_800819A8(actor_index, D_800E5E48);

    if (gActors[actor_index].stateLower == 1) {
        timer = gActors[48].var_150;
        if (timer % 10 == 0) {
            Sound_PlaySfx(SFX_005D);
        }

        timer = gActors[48].var_150;
        if (!(timer % 8)) {
            particle_position[0] = gActors[actor_index].posX.whole + RandModulo(32);
            particle_position[1] = gActors[actor_index].posY.whole + RandModulo(32) + 16;
            particle_position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);

            if (new_actor_index != 0) {
                particle_scale = 3.0f;
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].graphicList = D_80195B30_6F7800;
                gActors[new_actor_index].var_154 = -4;
                gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = particle_scale;
                gActors[new_actor_index].unk_148 = 1000.0f;
                gActors[new_actor_index].var_110 = gActors[new_actor_index].scaleX / 60.0f;
                gActors[new_actor_index].unk_114 = gActors[new_actor_index].scaleY / 60.0f;
                gActors[new_actor_index].unk_118 = -gActors[new_actor_index].var_110 / 30.0f;
                gActors[new_actor_index].unk_11C = -gActors[new_actor_index].unk_114 / 30.0f;
            }
        }

        gActors[48].var_150++;
        if (gActors[48].var_150 >= 30) {
            gActors[actor_index].colorA += 4;
            if (gActors[actor_index].colorA >= 252) {
                gActors[actor_index].colorA = 255;
                gActors[actor_index].state = 2;
            }
        }
    }

    func_80096AC4(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_80194BC4_6F6894(u16 actor_index, s32 frame_divisor) {
    frame_divisor = 5;

    if (gActiveFrames % frame_divisor == 0) {
        D_800BE57C++;
    }

    switch (gMarinaAnim.state) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_FLIPPED;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posX.whole = 60;
        gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].unk_170 = 0x9F;
        gActors[actor_index].unk_170_s8[1] = 0x7F;
        gPlayerData.unk_0C[0] = 0;
        gActors[actor_index].state = MARINASTATE_57;
        gMarinaAnim.state = 4;
        break;

    case 1:
        gActors[actor_index].unk_170 = 0xA0;
        gMarinaAnim.state = 4;
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x24;
            Sound_PlaySfx(SFX_DASH_0116);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.25);
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.15625));
            if (gActors[actor_index].posX.whole <= gActors[49].posX.whole + 8) {
                gActors[50].state = 2;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
                gActors[actor_index].unk_170_s8[1] = 1;
                gActors[actor_index].unk_170_u16[1] |= 0x4000;
                Sound_PlaySfx(SFX_BOING_0082);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
            if (gActors[actor_index].posY.whole >= 128) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                gMarinaAnim.state = 4;
            }
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x27;
            gActors[actor_index].posX.whole = -128;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.875);
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6), FIXED_UNIT(0.0625));
            if (gActors[actor_index].posY.whole < -54 - gActors[actor_index].hitboxBY1) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
                func_8005A4B0(actor_index, 1.0f);
                Sound_PlaySfx(SFX_LAND_0025);
                gActors[actor_index].var_150 = 30;
                gActors[actor_index].unk_170 = 0x2A;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
            if (gActors[actor_index].unk_170_s8[1] == 1) {
                gActors[actor_index].unk_170_s8[0] = 0;
                if (gActors[actor_index].var_150 == 0) {
                    gActors[actor_index].unk_170_s8[1] = 2;
                }
                else {
                    gActors[actor_index].var_150--;
                }
            }

            if (func_8005D418(actor_index)) {
                gActors[actor_index].unk_170 = 1;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 4) {
            gActors[actor_index].unk_170 = 0x9F;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 5;
        }
        else if (gActors[actor_index].stateUpper == 5) {
            gActors[actor_index].var_150++;
            if ((func_8005D418(actor_index) == 0) && (gActors[actor_index].var_150 % 3 != 0)) {
                gActors[actor_index].unk_170_s8[0]--;
            }
        }
        break;

    case 4:
        gActors[actor_index].stateUpper = 0;
        break;
    }

    gActors[actor_index].posZ.whole += gPlayerData.unk_0C[0];
}


void func_80195098_6F6D68(u16 actor_index) {
    s32 sp2C[5];
    u16 index;
    u16 fixed_actor_index;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
        gActors[actor_index].posX.raw = FIXED_UNIT(-3);
        gActors[actor_index].posY.raw = FIXED_UNIT(3);

        for (index = 0; index < ARRAYLENGTH(D_80195E50_6F7B20); index++) {
            D_80195E50_6F7B20[index] = GPACK_RGBA5551(0, 0, 0, 1);
        }

        func_80011B30(7, 1, 1, 5, 14);
        func_80011B30(0, 0, 3, 1, 25);
        func_80011B30(6, 0, 2, 2, 32);
        func_80011B30(0, 4, 3, 1, 36);
        func_80011B30(0, 5, 2, 1, 39);

        gActorDepthMiddle = 0;
        gActorDepthBack = -128;
        D_800BE584 = 48;
        gMarinaAnim.anim_u32 = MARINAANIM_30;
        gPlayerData.flags |= PLAYERDATA_NOCOLLIDE;

        fixed_actor_index = 49;
        gActors[fixed_actor_index].actorType = 0x2301;
        Actor_Initialize(fixed_actor_index);
        gActors[actor_index].var_150 = 90;
        gActors[actor_index].state = 1;
        break;

    case 1:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(1);
            gActors[actor_index].state = 2;
        }
        break;

    case 2:
        if (!func_8005DEFC()) {
            fixed_actor_index = 51;
            gActors[fixed_actor_index].actorType = 0x2303;
            Actor_Initialize(fixed_actor_index);
            gActors[actor_index].state = 3;
        }
        break;

    case 3:
        if (!gSfxPlayerFlags[gActors[actor_index].var_150]) {
            gActors[51].state = 1;
            gActors[actor_index].state = 4;
        }
        break;

    case 4:
        if (gActors[51].stateLower == 13) {
            gMarinaAnim.state = 1;
            gActors[49].state = 1;
            func_8005DF5C(2);
            gActors[actor_index].state = 5;
        }
        break;

    case 5:
        if (!func_8005DEFC()) {
            gMarinaAnim.state = 2;
            gActors[51].state = 2;
            gActors[actor_index].var_150 = 120;
            gActors[actor_index].state = 6;
        }
        break;

    case 6:
        if (gMarinaAnim.state == 4 && --gActors[actor_index].var_150 <= 0) {
            gActors[49].state = 2;
            gActors[actor_index].state = 7;
        }
        break;

    case 7:
        if (!gSfxPlayerFlags[gActors[actor_index].var_150]) {
            func_8005DF5C(3);
            Sound_StartFade(1, 60);
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 8;
        }
        break;

    case 8:
        if (!func_8005DEFC() && --gActors[actor_index].var_150 == 0) {
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_YUJYA);

            for (index = 52; index < 60; index++) {
                gActors[index].actorType = 0x2303;
                Actor_Initialize(index);
            }

            fixed_actor_index = 60;
            gActors[fixed_actor_index].actorType = 0x2304;
            Actor_Initialize(fixed_actor_index);
            gActors[actor_index].state = 9;
        }
        break;

    case 9:
        if (gActors[60].stateUpper == 2) {
            gActors[52].state = 3;
            gActors[53].state = 4;
            gActors[54].state = 5;
            gActors[55].state = 6;
            gActors[56].state = 7;
            func_8005DF5C(4);
            gActors[actor_index].state = 10;
        }
        break;

    case 10:
        if (!func_8005DEFC() && gActors[52].stateLower == 13 && gActors[53].stateLower == 13 &&
            gActors[54].stateLower == 13 && gActors[55].stateLower == 13 &&
            gActors[56].stateLower == 13) {
            func_8005DF5C(5);
            gActors[actor_index].state = 11;
        }
        break;

    case 11:
        if (!func_8005DEFC()) {
            gActors[49].state = 3;
            gActors[60].state = 2;
            gActors[actor_index].state = 12;
        }
        break;

    case 12:
        if (gActors[60].stateLower == 4) {
            gActors[52].state = gActors[53].state = gActors[54].state = gActors[55].state = gActors[56].state = 9;
            gActors[52].stateUpper = 0;
            gActors[53].stateUpper = 1;
            gActors[54].stateUpper = 2;
            gActors[55].stateUpper = 3;
            gActors[56].stateUpper = 4;
            gActors[actor_index].state = 13;
        }
        break;

    case 13:
        if (gActors[52].stateLower == 13) {
            gActors[49].state = 4;
            gActors[52].state = gActors[53].state = gActors[54].state = gActors[55].state = gActors[56].state = 11;
            gActors[actor_index].state = 14;
        }
        break;

    case 14:
        if (gActors[49].stateUpper >= 4) {
            gActors[49].velocityX.raw = FIXED_UNIT(0.75);
            gActors[52].state = gActors[53].state = gActors[54].state = gActors[55].state = gActors[56].state = 12;
            gActors[actor_index].state = 15;
        }
        break;

    case 15:
        if (!gActors[49].flags && gActors[49].stateLower == 6) {
            gActors[60].state = 3;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 16;
        }
        break;

    case 16:
        if (gActors[60].stateLower == 5 && --gActors[actor_index].var_150 <= 0) {
            gMarinaAnim.state = 3;
            gActors[actor_index].state = 17;
        }
        break;

    case 17:
        if (gActors[0].stateUpper == 2) {
            func_8005DF5C(6);
            gActors[actor_index].state = 18;
        }
        break;

    case 18:
        if (!func_8005DEFC()) {
            gActors[0].stateUpper++;
            func_8005DF5C(7);
            gActors[actor_index].var_150 = 150;
            gActors[actor_index].state = 19;
        }
        break;

    case 19:
        if (!func_8005DEFC()) {
            Sound_StartFade(1, 60);
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].posZ.raw = FIXED_UNIT(640);
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].palette_18C = D_80195E50_6F7B20;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 20;
            gActors[actor_index].scaleX = 22.0f;
            gActors[actor_index].scaleY = 14.0f;
        }
        break;

    case 20:
        if (gActors[actor_index].colorA == 255) {
            gActors[actor_index].state = 21;
        }
        else {
            gActors[actor_index].colorA += 4;

            if (gActors[actor_index].colorA >= 252) {
                gActors[actor_index].colorA = 255;
            }
        }
        break;

    case 21:
        gMarinaAnim.anim_u32 = MARINAANIM_4;

        for (index = 49; index < 192; index++) {
            gActors[index].flags = ACTOR_FLAG_NONE;
        }

        func_8002670C(SCENE_DEMOWORLD4);
        func_80026784(SCENE_DEMOWORLD4);
        func_800255B4(SCENE_DEMOWORLD4);
        func_80010C20(SCENE_DEMOWORLD4);
        func_80026220(SCENE_DEMOWORLD4);
        func_80025E00();

        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380200;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        gActorDepthMiddle = -240;
        gActorDepthBack = -128;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_POSITION);
        func_800271B0(SCENE_DEMOWORLD3);
        func_80026B04(SCENE_UNK07);
        func_80026F2C(SCENE_UNK07);
        func_80025E00();

        gActors[49].actorType = 0x2305;
        Actor_Initialize(49);

        gActors[50].actorType = 0x2306;
        Actor_Initialize(50);

        gActors[51].actorType = 0x2307;
        Actor_Initialize(51);

        gActors[52].actorType = 0x2309;
        Actor_Initialize(52);
        gActors[52].graphicIndex = 0x3028;

        gActors[56].actorType = 0x2309;
        Actor_Initialize(56);
        gActors[56].flags |= ACTOR_FLAG_FLIPPED;
        gActors[56].graphicIndex = 0x302C;
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].state = 22;
        break;

    case 22:
        gActors[actor_index].var_150--;
        gActors[actor_index].colorA -= 4;

        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 23;
        }
        break;

    case 23:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(8);
            func_8005DF5C(9);
            gActors[actor_index].state = 24;
        }
        break;

    case 24:
        if (!func_8005DEFC()) {
            gActors[50].state = 1;
            func_8005DF5C(10);
            func_8005DF5C(11);
            func_8005DF5C(12);
            gActors[actor_index].state = 25;
        }
        break;

    case 25:
        if (!func_8005DEFC()) {
            gActors[50].state = 2;
            gActors[actor_index].state = 26;
        }
        break;

    case 26:
        if (gActors[50].stateLower == 6) {
            gActors[50].state = 3;
            func_8005DF5C(13);
            gActors[actor_index].state = 27;
        }
        break;

    case 27:
        if (!func_8005DEFC()) {
            gActors[50].state = 4;
            gActors[actor_index].var_150 = 40;
            gActors[actor_index].state = 28;
        }
        break;

    case 28:
        if (gActors[50].stateLower == 6 && --gActors[actor_index].var_150 <= 0) {
            gActors[50].state = 5;
            gActors[actor_index].state = 29;
        }
        break;

    case 29:
        if (gActors[50].stateLower == 7) {
            func_8005DF5C(14);
            func_8005DF5C(15);
            gActors[actor_index].state = 30;
        }
        break;

    case 30:
        if (!func_8005DEFC()) {
            func_80026F2C(SCENE_MEETMARINA);
            gActors[60].actorType = 0x2308;
            Actor_Initialize(60);
            gActors[actor_index].state = 31;
        }
        break;

    case 31:
        if (gActors[60].stateLower == 2) {
            func_8005DF5C(16);
            gActors[actor_index].state = 32;
        }
        break;

    case 32:
        if (!func_8005DEFC()) {
            func_8005DF5C(17);
            gActors[actor_index].var_150 = 120;
            gActors[actor_index].state = 33;
        }
        break;

    case 33:
        if (!func_8005DEFC()) {
            Sound_StartFade(1, 60);
            gAudioFadeMode = 0;
            gStageState++;
            gPlayerData.flags &= ~(PLAYERDATA_NOCOLLIDE | PLAYERDATA_PAUSEACTOR);
            gActors[actor_index].state = 34;
        }
        break;
    }
}
