#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "5D120.h"
#include "80D90.h"
#include "8F080.h"
#include "marina_effect.h"
#include "stage_tilemap.h"

extern u16 D_800D82E8[256];
extern s16 D_800E5C18[];
extern s16 D_800E5D30[];
extern s16 D_800E5E48[];
extern u16* D_800E8820[];
extern u16 D_800E8AA8[];
extern u16 D_800E8B98[];
extern u16 D_800E8BD0[];
extern u16 D_800E8BEC[];
extern u16 D_800E8EAC[];
extern u16 D_800E8F4C[];
extern u16 D_800E8FF8[];

u16 D_80197920_6F3DA0[16];
u16 D_80197940_6F3DC0[256];
u16 D_80197B40_6F3FC0[32];
u16 D_80197B80_6F4000[32];

s16 D_80197440_6F38C0[] = {
//  x     y    z     graphic
      62, -54,  -96, GINDEX_MISSLE,
      71, -54,  -96, GINDEX_MISSLE,
      80, -54,  -96, GINDEX_MISSLE,
      89, -54,  -96, GINDEX_MISSLE,
      48, -54, -104, GINDEX_MISSLE,
      39, -54, -104, GINDEX_MISSLE,
      30, -54, -104, GINDEX_MISSLE,
      62,  12, -128, GINDEX_MISSLE,
      71,  12, -128, GINDEX_MISSLE,
      80,  12, -128, GINDEX_MISSLE,
      89,  12, -128, GINDEX_MISSLE,
     -90,   1, -128, GINDEX_MISSLE,
     -81,   1, -128, GINDEX_MISSLE,
     -72,   1, -128, GINDEX_MISSLE,
      80, -54,  112, 0x1018,
      64, -54,  112, 0x1018,
      64, -54,  136, GINDEX_MISSLE,
      52, -54,  120, GINDEX_MISSLE,
      46, -54,  140, GINDEX_MISSLE,
      40, -54,  128, GINDEX_MISSLE,
      80, -54,  104, GINDEX_MISSLE,
      88, -54,   92, GINDEX_MISSLE,
    -112, -29,   48, GINDEX_MISSLE,
    -103, -29,   48, GINDEX_MISSLE,
     -94, -29,   48, GINDEX_MISSLE,
};

s16 D_80197508_6F3988[] = {
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

s16 D_8019752C_6F39AC[] = {
//  graphic timer
    0x500D, 4,
    0x500E, 4,
    0x500F, 4,
    0x5010, 4,
    0x5011, 4,
    0x5012, 4,
    0x5013, 4,
    0x5014, 4,
    -16,    0,
};

s16 D_80197550_6F39D0[] = {
//  graphic timer
    0x4C01, 8,
    0x4C02, 12,
    0x4C01, 8,
    0x4C00, 12,
    -4,     0,
};

s16 D_80197564_6F39E4[] = {
//  graphic timer
    0x4C0B, 6,
    0x4C0C, 6,
    0x4C0C, 6,
    0x4C0B, 6,
    0,      0,
};

s16 D_80197578_6F39F8[] = {
//  graphic timer
    0x4829, 16,
    0x482A, 48,
    0x482B, 6,
    0x482C, 6,
    -2,     0,
};

s16 D_8019758C_6F3A0C[] = {
//  graphic timer
    0x481B, 4,
    0x481A, 4,
    0x4819, 4,
    0x481A, 4,
    0,      0,
};

s16 D_801975A0_6F3A20[] = {
//  graphic timer
    0x480F, 8,
    0x4810, 8,
    0,      0,
};

s16 D_801975AC_6F3A2C[] = {
//  graphic timer
    0x484A, 6,
    0x484B, 6,
    0x4845, 6,
    0x4846, 6,
    0x4847, 6,
    0x4848, 6,
    0x4849, 6,
    0x484A, 6,
    0x484B, 6,
    0x4845, 6,
    0x4846, 6,
    0x4847, 6,
    0x4848, 6,
    0x4849, 6,
    0x4811, 16,
    0x4812, 64,
    0,      0,
};

s16 D_801975F0_6F3A70[] = {
//  graphic timer
    0x4C0D, 4,
    0x4C0E, 4,
    0x4C0F, 4,
    0x4C10, 4,
    0x4C0F, 4,
    0x4C10, 4,
    0x4C0F, 4,
    0x4C10, 4,
    -2,     0,
};

s16 D_80197614_6F3A94[] = {
//  graphic timer
    0x4C03, 8,
    0x4C04, 8,
    0x4C05, 8,
    0x4C06, 8,
    0x4C07, 8,
    0x4C08, 8,
    0x4C09, 8,
    0x4C0A, 8,
    -8,     0,
};

s16 D_80197638_6F3AB8[] = {
//  graphic timer
    0x4825, 4,
    0x4826, 4,
    0x4827, 4,
    0x4828, 4,
    -4,     0,
};

s16 D_8019764C_6F3ACC[] = {
//  graphic timer
    0x4809, 4,
    0,      0,
};

s16* D_80197654_6F3AD4[] = {
    NULL,
    D_80197550_6F39D0,
    D_80197564_6F39E4,
    D_80197578_6F39F8,
    D_8019758C_6F3A0C,
    D_801975A0_6F3A20,
    D_801975AC_6F3A2C,
    D_801975F0_6F3A70,
    D_80197614_6F3A94,
    D_80197638_6F3AB8,
    D_8019764C_6F3ACC,
};

s16 D_80197680_6F3B00[] = {
//  graphic timer
    0x6830, 4,
    0,      0,
};

s16 D_80197688_6F3B08[] = {
//  graphic timer
    0x6920, 4,
    0,      0,
};

s16 D_80197690_6F3B10[] = {
//  graphic timer
    0x682C, 32,
    0x682C, 8,
    0x682D, 4,
    0x682E, 8,
    0x682D, 4,
    -4,     0,
};

s16 D_801976A8_6F3B28[] = {
//  graphic timer
    0x6912, 48,
    0x6912, 8,
    0x6913, 4,
    0x6914, 4,
    0x6915, 8,
    0x6914, 4,
    0x6913, 4,
    -6,     0,
};

s16 D_801976C8_6F3B48[] = {
//  graphic timer
    0x6845, 8,
    0x6846, 8,
    -2,     0,
};

s16 D_801976D4_6F3B54[] = {
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

s16* D_80197718_6F3B98[] = {
    NULL,
    D_80197680_6F3B00,
    D_80197688_6F3B08,
    D_80197690_6F3B10,
    D_801976A8_6F3B28,
    D_801976C8_6F3B48,
    D_801976D4_6F3B54,
    NULL,
    NULL,
    NULL,
};

f64 D_80197740_6F3BC0 = 0.075;
f64 D_80197748_6F3BC8 = 0.03;
f64 D_80197750_6F3BD0 = 0.055;
f64 D_80197758_6F3BD8 = 0.04;


void func_80192100_6EE580(u16 actor_index) {
    u16 new_actor_index;
    s32 unused;
    s32 particle_position[3];
    s32 sp2C[4];

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = 0;
        gActors[actor_index].dlist_17C = (Gfx*)0x8037D700;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = FIXED_UNIT(64);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-192);
        gActors[actor_index].state = 3;
        gActors[actor_index].unk_12C = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].scaleX = 1.0f;
        break;

    case 1:
        gActors[actor_index].var_150++;
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = -30;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (gActors[actor_index].var_150 < 0) {
                break;
            }

            gActors[actor_index].stateUpper = 2;
        }

        if (!(gActors[actor_index].var_150 & 3)) {
            particle_position[0] = gActors[actor_index].posX.whole - 44;
            particle_position[1] = gActors[actor_index].posY.whole + 68;
            particle_position[2] = gActors[actor_index].posZ.whole + 16;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
            if (new_actor_index) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].graphicIndex = 0x1E2;
                gActors[new_actor_index].palette_18C = PALETTE_8022D528;
                gActors[new_actor_index].scaleY = 2.5f;
                gActors[new_actor_index].scaleX = 2.5f;
                gActors[new_actor_index].unk_148 = 1.0f;
                gActors[new_actor_index].rotateZ = 340.0f;
                if (gActors[actor_index].var_150 >= 24) {
                    gActors[new_actor_index].var_154 = -4;
                    gActors[new_actor_index].unk_148 = 100.0f;
                    gActors[actor_index].state = 3;
                }
            }
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 90;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 > 0) {
                break;
            }

            D_800D82E8[0xFE + gActors[actor_index].stateUpper * 0] = GPACK_RGBA5551(255, 255, 255, 1);
            D_800D82E8[0xCE] = GPACK_RGBA5551(144, 144, 144, 1);
            D_800D82E8[0xDE] = GPACK_RGBA5551(96, 96, 96, 1);
            D_800D82E8[0xEE] = GPACK_RGBA5551(224, 224, 224, 1);
            D_800D82E8[0xFE] = GPACK_RGBA5551(160, 160, 160, 1);
            gActors[actor_index].var_150 = 40;
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].unk_118 = 0.0f;
            gActors[actor_index].unk_114 = 0.0f;
            gActors[actor_index].var_110 = 0.0f;
        }

        if (gActors[actor_index].stateUpper != 2) {
            break;
        }

        gActors[actor_index].var_110 += D_80197740_6F3BC0;
        gActors[actor_index].unk_114 += D_80197748_6F3BC8;
        gActors[actor_index].unk_118 += D_80197750_6F3BD0;
        gActors[actor_index].unk_11C += D_80197758_6F3BD8;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 3;
        }

        particle_position[2] = gActors[actor_index].posZ.whole + 10;
        particle_position[0] = gActors[actor_index].posX.whole - 8;
        particle_position[1] = gActors[actor_index].posY.whole + 40.0;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
        if (!new_actor_index) {
            break;
        }

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].unk_148 = gActors[actor_index].stateLower == 2 ? 0.0f : 16384.0f;

        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].var_160 = FIXED_UNIT(768);
        gActors[new_actor_index].palette_18C = D_800D82E8 + 0xC0;
        gActors[new_actor_index].scaleX = gActors[actor_index].var_110;
        gActors[new_actor_index].scaleY = (448 - gActors[new_actor_index].posZ.whole) / 448;
        gActors[new_actor_index].posY.raw += FIXED_UNIT(-8) * gActors[new_actor_index].scaleX;

        particle_position[0] = gActors[actor_index].posX.whole - 4;
        particle_position[1] = gActors[actor_index].posY.whole + 40.0 - 3.0;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
        if (!new_actor_index) {
            break;
        }

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].unk_148 = gActors[actor_index].stateLower == 2 ? 0.0f : 16384.0f;

        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].var_160 = FIXED_UNIT(768);
        gActors[new_actor_index].palette_18C = D_800D82E8 + 0xD0;
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_114;
        gActors[new_actor_index].scaleY = 1.43f;
        gActors[new_actor_index].posY.raw += FIXED_UNIT(-8) * gActors[new_actor_index].scaleX;

        particle_position[0] = gActors[actor_index].posX.whole + 1;
        particle_position[1] = gActors[actor_index].posY.whole + 40.0 - 5.0;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
        if (!new_actor_index) {
            break;
        }

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].unk_148 = gActors[actor_index].stateLower == 2 ? 0.0f : 16384.0f;

        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].var_160 = FIXED_UNIT(768);
        gActors[new_actor_index].palette_18C = D_800D82E8 + 0xE0;
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_118;
        gActors[new_actor_index].scaleY = 1.43f;
        gActors[new_actor_index].posY.raw += FIXED_UNIT(-8) * gActors[new_actor_index].scaleX;

        particle_position[0] = gActors[actor_index].posX.whole + 8;
        particle_position[1] = gActors[actor_index].posY.whole + 40.0;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
        if (!new_actor_index) {
            break;
        }

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].unk_148 = gActors[actor_index].stateLower == 2 ? 0.0f : 16384.0f;

        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].var_160 = FIXED_UNIT(768);
        gActors[new_actor_index].palette_18C = D_800D82E8 + 0xF0;
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_11C;
        gActors[new_actor_index].scaleY = 1.43f;
        gActors[new_actor_index].posY.raw += FIXED_UNIT(-8) * gActors[new_actor_index].scaleX;
        break;
    }
}


void func_8019299C_6EEE1C(u16 actor_index) {
    s32 sp38[2];
    s32 particle_position[3];
    s32 new_actor_index;
    u8 state_upper;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].state = 8;
        break;

    case 1:
        gActors[actor_index].unk_170 = gActors[actor_index].var_150;
        gActors[actor_index].state = 8;
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 8;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && (gActors[actor_index].unk_170_s8[1] == 2 || gActors[actor_index].unk_170_s8[1] == 6)) {
            Sound_PlaySfx(SFX_0029);
        }

        if (gActors[actor_index].posX.whole <= 80) {
            gActors[actor_index].posX.raw = FIXED_UNIT(80);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state = 8;
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            particle_position[0] = gActors[actor_index].posX.whole - 40;
            particle_position[1] = gActors[actor_index].posY.whole + 32;
            particle_position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
            gActors[new_actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].graphicIndex = GINDEX_EXCLAIMBUBBLE;
            gActors[new_actor_index].var_154 = 60;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 80.0f;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].stateUpper = 1;
        }

        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 8;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[actor_index].unk_188 = gActors[actor_index].posZ.whole;
            gActors[actor_index].posZ.whole -= 24;
            gActors[actor_index].unk_170 = 9;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-4);
            Sound_PlaySfx(SFX_0034);
            gActors[actor_index].stateUpper = 1;
        }

        MarinaEffect_Type4(actor_index);

        if (gActors[actor_index].posX.whole < gActors[50].posX.whole + 90) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }

        if (gActors[actor_index].velocityX.raw == 0) {
            gActors[actor_index].unk_170 = 10;
            gActors[actor_index].state = 8;
        }
        break;

    case 5:
        state_upper = gActors[actor_index].stateUpper;

        if (!state_upper) {
            gActors[54].graphicFlags &= ~ACTOR_GFLAG_UNK11;
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].posZ.whole = gActors[actor_index].unk_188;
            gActors[actor_index].stateUpper = 1;
        }
        else if (state_upper == 1) {
            if (gActors[actor_index].unk_170_s8[1] == 2) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (state_upper == 2 && func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state = 8;
        }
        break;

    case 6:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 6;
            Sound_PlaySfx(SFX_SWISH_0096);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 7) {
            Sound_PlaySfx(SFX_SWISH_0096);
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 15) {
            Sound_PlaySfx(SFX_0039);
            gActors[actor_index].posX.whole += 24;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 8;
        }
        break;

    case 7:
        state_upper = gActors[actor_index].stateUpper;

        if (!state_upper) {
            gActors[actor_index].unk_170 = 7;
            gActors[actor_index].stateUpper = 1;
        }
        else if (state_upper == 1) {
            if (gActors[actor_index].unk_170_s8[1] == 4) {
                gActors[actor_index].unk_170_u16[1] |= 0x4000;
                gActors[actor_index].var_150 = 60;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (state_upper == 2) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].unk_170 = 8;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
                gActors[actor_index].stateUpper = 5;
            }
        }
        else if (state_upper == 5) {
            if (gActors[actor_index].unk_170_s8[0] == 0 && (gActors[actor_index].unk_170_s8[1] == 2 || gActors[actor_index].unk_170_s8[1] == 6)) {
                Sound_PlaySfxAtActor2(SFX_004D, actor_index);
                CameraShake(3, 30);
            }

            if (gActors[actor_index].posX.whole >= 257) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                gActors[actor_index].state = 8;
            }
        }
        break;
    }

    func_8005D450(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_80192EA8_6EF328(u16 actor_index) {
    s32 sp28[6];

    if (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 < -80) {
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = -80 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].state = 4;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_FLIPPED;
            gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 64;
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].scaleX = 0.5f;
            gActors[actor_index].scaleY = 2.0f;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-16);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            func_8005A4B0(actor_index, 1.0f);
            Sound_PlaySfx(SFX_LAND_0025);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 127;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 1.0f;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].colorR -= 6;
            gActors[actor_index].colorG -= 6;
            gActors[actor_index].colorB -= 6;

            if (gActors[actor_index].colorR < 6) {
                gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
                gActors[actor_index].state = 4;
            }
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = Rand() % 60 + 50;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 > 0) {
                break;
            }

            gActors[actor_index].unk_170 = gActors[actor_index].var_154;
            gActors[actor_index].stateUpper = 2;
        }

        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 % 48 == 0) {
            SpawnParticle_SineUp(
                gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + 14,
                gActors[actor_index].posZ.whole + 1,
                GINDEX_HEARTBUBBLE
            );

            switch (Rand() & 3) {
            case 0:
                Sound_PlaySfx(SFX_CLANCER_LAUGH_0049);
                break;

            case 1:
                Sound_PlaySfx(SFX_CLANCER_TALK_009F);
                break;

            case 2:
                Sound_PlaySfx(SFX_CLANCER_CRY_00A1);
                break;

            case 3:
                Sound_PlaySfx(SFX_CLANCER_OW_0067);
                break;
            }
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150++;
            if (gActors[actor_index].var_150 % 48 == 0) {
                SpawnParticle_SineUp(
                    gActors[actor_index].posX.whole,
                    gActors[actor_index].posY.whole + 14,
                    gActors[actor_index].posZ.whole + 1,
                    GINDEX_HEARTBUBBLE
                );

                switch (Rand() & 3) {
                case 0:
                    Sound_PlaySfx(SFX_CLANCER_LAUGH_0049);
                    break;

                case 1:
                    Sound_PlaySfx(SFX_CLANCER_TALK_009F);
                    break;

                case 2:
                    Sound_PlaySfx(SFX_CLANCER_CRY_00A1);
                    break;

                case 3:
                    Sound_PlaySfx(SFX_CLANCER_OW_0067);
                    break;
                }
            }

            if (gActors[actor_index].posX.whole < gActors[54].posX.whole) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }

            if (gActors[(u16)gActors[actor_index].unk_14C].posX.whole >= gActors[actor_index].posX.whole + 32) {
                gActors[actor_index].var_150 = Rand() % 10;
                gActors[actor_index].stateUpper = 1;
            }
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].unk_170 = 6;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (gActors[actor_index].unk_170_s8[0] == 0) {
                gActors[actor_index].posX.raw += FIXED_UNIT(1);
            }

            if (gActors[actor_index].posX.whole >= 193) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
            }
        }
        break;
    }

    func_8005D450(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_80193488_6EF908(u16 actor_index) {
    gActors[actor_index].unk_104 += gActors[actor_index].unk_108;
    gActors[actor_index].posX.raw = gActors[actor_index].unk_0F8.raw + COS(gActors[actor_index].unk_104) * FIXED_UNIT(2.0);
}


void func_80193524_6EF9A4(u16 actor_index) {
    u16 new_actor_index;
    s16 var_s0;
    s32 particle_offset;
    s32 particle_position[3];
    u16 index;
    f32 particle_scale;
    u16* palette;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].unk_140_s16[0] = -255;
        gActors[actor_index].hitboxBY1 = -42;
        gActors[actor_index].posX.raw = FIXED_UNIT(-104);
        gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-16);
        gActors[actor_index].unk_188 = 0;
        palette = D_80197940_6F3DC0 + actor_index * 0;
        gActors[actor_index].palette_18C = palette;
        gActors[actor_index].graphicIndex = 0x3028;
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0];

        new_actor_index = 51;
        gActors[new_actor_index].actorType = 0x2204;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].graphicIndex = 0x3024;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].state = 4;

        new_actor_index = 52;
        gActors[new_actor_index].actorType = 0x2204;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].graphicIndex = 0x302E;
        gActors[new_actor_index].palette_18C = palette;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw - FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].state = 9;

        new_actor_index = 53;
        gActors[new_actor_index].actorType = 0x2204;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 127;
        gActors[new_actor_index].graphicIndex = 0x3026;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw;
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + FIXED_UNIT(8);
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].unk_14C = actor_index;
        gActors[new_actor_index].state = 3;
        gActors[actor_index].state = 2;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = -255;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_150 += 2;
        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].state = 2;
        }

        gActors[53].colorR = gActors[53].colorG = gActors[53].colorB = Math_AbsS32_2(gActors[actor_index].var_150 / 2);
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = gActors[actor_index].var_150_s16[1];
        /* fallthrough */
    case 2:
        gActors[actor_index].posY.raw = FIXED_UNIT(3.75) * COS(gActors[actor_index].var_15C) + (TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80));
        gActors[actor_index].var_15C += 2;
        if (gActors[actor_index].var_150 >= -64) {
            gActors[actor_index].var_158++;
            if (gActors[actor_index].var_158 % 48 == 0) {
                particle_position[0] = gActors[actor_index].posX.whole;
                particle_position[1] = gActors[actor_index].posY.whole - 20;
                particle_position[2] = gActors[actor_index].posZ.whole + RandModulo(4) + 2;
                index = MarinaEffect_SpawnParticle(actor_index, particle_position);
                particle_scale = 0.1f;
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
                gActors[index].pfn_17C = func_80193488_6EF908;
            }
        }
        break;

    case 3:
        gActors[actor_index].colorA = 96;
        gActors[actor_index].colorA += 32.0f * COS(FROM_FIXED(gActors[actor_index].var_15C));
        gActors[actor_index].var_15C += FIXED_UNIT(2.5);
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            for (index = 0; index < ARRAYLENGTH(D_80197B40_6F3FC0); index++) {
                D_80197B40_6F3FC0[index] = ((u16*)0x8036F080)[index + 0xE0];
                D_80197B80_6F4000[index] = 0;
            }

            D_80197B40_6F3FC0[0] = GPACK_RGBA5551(255, 0, 0, 1);
            D_80197B40_6F3FC0[1] = GPACK_RGBA5551(192, 0, 0, 1);
            D_80197B40_6F3FC0[2] = GPACK_RGBA5551(128, 0, 0, 1);
            D_80197B40_6F3FC0[21] = GPACK_RGBA5551(0, 0, 48, 1);
            D_80197B40_6F3FC0[22] = GPACK_RGBA5551(0, 0, 96, 1);
            D_80197B40_6F3FC0[23] = GPACK_RGBA5551(0, 0, 255, 1);
            D_80197B40_6F3FC0[24] = D_80197B40_6F3FC0[25] = GPACK_RGBA5551(0, 0, 0, 1);
            D_80197B40_6F3FC0[26] = D_80197B40_6F3FC0[27] = D_80197B40_6F3FC0[28] = D_80197B40_6F3FC0[29] = D_80197B40_6F3FC0[30] = GPACK_RGBA5551(0, 0, 0, 1);

            gActors[actor_index].var_110 = 0.0f;
            gActors[actor_index].unk_114 = gActors[actor_index].unk_118 = gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].var_15C = gActors[actor_index].var_110;
            gActors[actor_index].var_150 = gActors[actor_index].var_154 = gActors[actor_index].var_158 = gActors[actor_index].var_110;
            gActors[actor_index].stateUpper = 1;
        }

        var_s0 = -((s16)gActors[actor_index].var_110 & 0xFF) / 8;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0, D_80197B80_6F4000, 3, 0, 0, var_s0);
        gActors[actor_index].var_110 += 4.0f;

        var_s0 = Rand() % 20;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 3, D_80197B80_6F4000 + 3, 3, var_s0, var_s0, var_s0);

        var_s0 = COS((s32)gActors[actor_index].var_110) * 128.0f;
        var_s0 /= 8;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 6, D_80197B80_6F4000 + 6, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, 0, 1);
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].var_150 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_150 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 9, D_80197B80_6F4000 + 9, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0, 1);
        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].var_154 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_154 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 12, D_80197B80_6F4000 + 12, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, 1);
        if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].var_158 = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_158 < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 15, D_80197B80_6F4000 + 15, 3, var_s0, var_s0, var_s0);

        gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 1);
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].var_15C = RandModulo(60);
        }

        var_s0 = gActors[actor_index].var_15C < 0 ? -16 : 0;
        Palette_AdjustRgb5551Array(D_80197B40_6F3FC0 + 18, D_80197B80_6F4000 + 18, 3, var_s0, var_s0, var_s0);

        var_s0 = (s32)gActors[actor_index].unk_118 / 10;
        var_s0 %= 5;
        for (index = 0; index < 5; index++) {
            D_80197B80_6F4000[21 + (var_s0 + index) % 5] = D_80197B40_6F3FC0[21 + index];
        }

        gActors[actor_index].unk_118 += 2.3;
        var_s0 = Rand() % 5;
        for (index = 0; index <= var_s0; index++) {
            D_80197B80_6F4000[26 + index] = GPACK_RGBA5551(255, 0, 0, 1);
        }

        for (; index < 5; index++) {
            D_80197B80_6F4000[26 + index] = GPACK_RGBA5551(0, 0, 0, 1);
        }

        for (index = 0; index < ARRAYLENGTH(D_80197B80_6F4000); index++) {
            ((u16*)0x8036F080)[index + 0xE0] = D_80197B80_6F4000[index];
        }
        break;

    case 5:
        // BUG: 105->107 read past table bounds
        index = actor_index * 4 - 320;
        gActors[actor_index].posX.whole = D_80197440_6F38C0[index + 0];
        gActors[actor_index].posY.whole = D_80197440_6F38C0[index + 1];
        gActors[actor_index].posZ.whole = D_80197440_6F38C0[index + 2];
        gActors[actor_index].graphicIndex = D_80197440_6F38C0[index + 3];
        gActors[actor_index].state = 6;
        switch (gActors[actor_index].graphicIndex) {
        case GINDEX_MISSLE:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].posY.whole += 10;
            gActors[actor_index].scaleX = gActors[actor_index].scaleY = 1.2f;
            gActors[actor_index].rotateZ = 270.0f;
            break;

        case 0x305A:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].posY.whole += 2;
            if (Rand() & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            if (!index) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].rotateZ = -18.0f;
            }
            else {
                gActors[actor_index].rotateZ = 18.0f;
            }

            gActors[actor_index].state = 8;
            break;

        case 0x1018:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            if (Rand() & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].rotateZ = RandModulo(45);
            break;
        }
        break;

    case 6:
        if (gMarinaAnim.state == 5 && Math_AbsS32_2(gPlayerActor.posX.whole - gActors[actor_index].posX.whole) < 24 &&
            Math_AbsS32_2(gPlayerActor.posZ.whole - gActors[actor_index].posZ.whole) < 64) {
            gActors[actor_index].state = 7;
        }
        break;

    case 7:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].velocityX.raw = RandModulo(0) * 1024;
            gActors[actor_index].velocityY.raw = Rand() * 1024 + FIXED_UNIT(2);
            gActors[actor_index].var_110 = RandModulo(10);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posX.whole > 112) {
            gActors[actor_index].posX.whole = 112;
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        if (gActors[actor_index].posX.whole < -112) {
            gActors[actor_index].posX.whole = -112;
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
        if (gActors[actor_index].posY.whole < -54) {
            gActors[actor_index].posY.whole = -54;
            gActors[actor_index].velocityX.raw *= 0.75;
            gActors[actor_index].var_110 *= 0.75;
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw * 0.75;
        }
        break;
    }

    if (actor_index == 50) {
        Palette_AdjustRgb5551Array((u16*)0x8037A8A0, gActors[actor_index].palette_18C, 256, gActors[actor_index].unk_140_s16[0] / 8, gActors[actor_index].unk_13C_s16[1] / 8, gActors[actor_index].unk_13C_s16[0] / 8);
    }
}


void func_801944E8_6F0968(u16 actor_index) {
    s32 sp28[4];
    s32 angle;
    u16 fixed_actor_index = 55;

    if (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 < -54) {
        gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].velocityY.raw = 0;
    }

    if (gActors[actor_index].posY.whole <= -54 - gActors[actor_index].hitboxBY1) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[fixed_actor_index].actorType = 0x2207;
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
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicIndex = 0x5003;
            gActors[actor_index].hitboxBY1 -= 8;
            gActors[actor_index].posY.whole += 8;
            gActors[actor_index].var_150 = 8;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].graphicIndex = 0x5002;
                gActors[actor_index].hitboxBY1 -= 4;
                gActors[actor_index].posY.whole += 4;
                gActors[actor_index].var_150 = 8;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].graphicIndex = 0x5001;
                gActors[actor_index].hitboxBY1 -= 2;
                gActors[actor_index].posY.whole += 2;
                gActors[actor_index].state = 5;
            }
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].graphicList = D_8019752C_6F39AC;
            gActors[actor_index].var_15C = -COS_DEG_180;
            gActors[actor_index].stateUpper = 1;
        }

        angle = gActors[actor_index].var_15C;
        gActors[actor_index].posX.whole = COS(angle) * 64.0f;
        gActors[actor_index].posZ.whole = SIN(angle) * 64.0f + 48.0f;

        if (!((angle + 32) & COS_DEG_180)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].var_15C += 4;

        if (gActors[actor_index].var_15C >= 0x700) {
            gActors[actor_index].state = 3;
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.1875);
            gActors[actor_index].velocityZ.raw = (FIXED_UNIT(-80) - gActors[actor_index].posZ.raw) / 90;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posZ.raw <= FIXED_UNIT(-80)) {
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].posZ.raw = FIXED_UNIT(-80);
        }

        if (gActors[actor_index].posX.whole >= 192) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].state = 5;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 64;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 > 0) {
                break;
            }

            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 128;
            gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
            gActors[actor_index].posZ.whole = -384;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].stateUpper = 2;
        }

        if (gActors[actor_index].posX.whole <= -128) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].state = 5;
        }
        break;
    }
}


void func_80194928_6F0DA8(u16 actor_index) {
    u16 parent_actor_index = gActors[actor_index].unk_14C;
    u32 new_actor_index;
    s32 particle_position[3];
    f32 particle_scale;

    switch (gActors[parent_actor_index].graphicIndex) {
    case 0x5001:
    case 0x5002:
    case 0x5003:
    case 0x500D:
    case 0x500E:
    case 0x500F:
    case 0x5010:
    case 0x5011:
    case 0x5012:
    case 0x5013:
    case 0x5014:
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        break;

    default:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        break;
    }

    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= gActors[parent_actor_index].flags & ACTOR_FLAG_FLIPPED;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].posX.raw = gActors[parent_actor_index].posX.raw + gActors[actor_index].var_158;
    }
    else {
        gActors[actor_index].posX.raw = gActors[parent_actor_index].posX.raw - gActors[actor_index].var_158;
    }

    gActors[actor_index].posY.raw = gActors[parent_actor_index].posY.raw + gActors[actor_index].var_15C;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].var_158 = FIXED_UNIT(5);
        gActors[actor_index].var_15C = FIXED_UNIT(11);
        gActors[actor_index].graphicIndex = 0x2804;
        gActors[actor_index].posZ.whole = gActors[parent_actor_index].posZ.whole + 1;
        gActors[actor_index].state = 5;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 8;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].graphicIndex = 0x281A;
                gActors[actor_index].var_150 = 16;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].graphicIndex = 0x2804;
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicIndex = 0x281A;
            gActors[actor_index].var_150 = -1;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].var_150 >= 6) {
            gActors[actor_index].graphicIndex = 0x2804;
        }

        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].var_158 = FIXED_UNIT(2);
        }

        if (gActors[actor_index].var_150 >= 11) {
            gActors[actor_index].graphicIndex = 0x2808;
        }

        gActors[actor_index].var_150++;

        if (!(gActors[actor_index].var_150 & 3)) {
            particle_position[0] = gActors[actor_index].posX.whole - 16;
            particle_position[1] = gActors[actor_index].posY.whole + 32;
            particle_position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);

            if (new_actor_index) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].graphicIndex = 0x1E2;
                gActors[new_actor_index].palette_18C = PALETTE_8022D528;
                particle_scale = 2.5f;
                gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = particle_scale;
                gActors[new_actor_index].rotateZ = 340.0f;
                gActors[new_actor_index].unk_148 = 1.0f;

                if (gActors[actor_index].var_150 >= 24) {
                    gActors[new_actor_index].var_154 = -4;
                    gActors[new_actor_index].unk_148 = 100.0f;
                    gActors[actor_index].state = 5;
                }
            }
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = (FIXED_UNIT(6) - gActors[actor_index].var_158) / 60;
            gActors[actor_index].var_154 = (FIXED_UNIT(5) - gActors[actor_index].var_15C) / 60;
            gActors[actor_index].var_110 = 60.0f;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_110 -= 1.0;
        gActors[actor_index].var_158 += gActors[actor_index].var_150;
        gActors[actor_index].var_15C += gActors[actor_index].var_154;

        if (gActors[actor_index].var_110 <= 0.0f) {
            gActors[actor_index].state = 5;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = (FIXED_UNIT(2) - gActors[actor_index].var_158) / 10;
            gActors[actor_index].var_154 = (FIXED_UNIT(11) - gActors[actor_index].var_15C) / 10;
            gActors[actor_index].var_110 = 10.0f;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_110 -= 1.0;
        gActors[actor_index].var_158 += gActors[actor_index].var_150;
        gActors[actor_index].var_15C += gActors[actor_index].var_154;

        if (gActors[actor_index].var_110 <= 0.0f) {
            gActors[actor_index].state = 5;
        }
        break;
    }
}


void func_80194EEC_6F136C(u16 actor_index) {
    s32 particle_parameters[5];
    u16 new_actor_index;

    if (gActors[48].stateLower >= 22) {
        if (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 < -54) {
            gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
            gActors[actor_index].velocityY.raw = 0;
        }

        if (gActors[actor_index].posY.whole <= -54 - gActors[actor_index].hitboxBY1) {
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
        }
    }

    if (gActors[actor_index].stateLower == 0) {
        gActors[actor_index].hitboxBY1 = -14;
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            func_8008105C(actor_index, D_800E5E48, D_800E5D30);
            gActors[actor_index].posX.raw = 0;
            gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(80);
            gActors[actor_index].posZ.raw = 0;
            gActors[actor_index].colorA = 0;
            gActors[48].var_150 = 0;
            gActors[actor_index].state = 1;
        }
        else {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            func_8008105C(actor_index, D_800E5E48, D_800E5C18);
            gActors[actor_index].posX.raw = FIXED_UNIT(192);
            gActors[actor_index].state = 8;
            gActors[actor_index].unk_138 = 1.0f;
        }

        gActors[actor_index].unk_178 = (uintptr_t)D_800E8820;
        func_80081478(actor_index, D_800E5E48, 1);
        func_80081790(actor_index, D_800E8EAC);
    }

    func_800819A8(actor_index, D_800E5E48);

    switch (gActors[actor_index].stateLower) {
    case 1:
        if (!(gActors[48].var_150 % 10)) {
            Sound_PlaySfx(SFX_005D);
        }

        if (!(gActors[48].var_150 % 8)) {
            particle_parameters[0] = gActors[actor_index].posX.whole + RandModulo(32);
            particle_parameters[1] = gActors[actor_index].posY.whole + RandModulo(32) + 16;
            particle_parameters[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_parameters);

            if (new_actor_index) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].graphicList = D_80197508_6F3988;
                gActors[new_actor_index].var_154 = -4;
                gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 3.0f;
                gActors[new_actor_index].unk_148 = 1000.0f;
                gActors[new_actor_index].var_110 = gActors[new_actor_index].scaleX / 60.0f;
                gActors[new_actor_index].unk_114 = gActors[new_actor_index].scaleY / 60.0f;
                gActors[new_actor_index].unk_118 = -gActors[new_actor_index].var_110 / 30.0f;
                gActors[new_actor_index].unk_11C = -gActors[new_actor_index].unk_114 / 30.0f;
            }
        }

        if (++gActors[48].var_150 >= 30) {
            gActors[actor_index].colorA += 4;
            if (gActors[actor_index].colorA >= 252) {
                gActors[actor_index].colorA = 255;
                gActors[actor_index].state = 8;
            }
        }
        break;

    case 2:
        func_80081790(actor_index, D_800E8FF8);
        gActors[actor_index].state = 8;
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            new_actor_index = Actor_RangeFindInactive(144, 192);
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x2204;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6;
                gActors[new_actor_index].graphicIndex = 0x3018;
                gActors[new_actor_index].state = 9;
                gActors[new_actor_index].posX.raw = FIXED_UNIT(124);
                gActors[new_actor_index].posY.raw = FIXED_UNIT(-14);
                gActors[new_actor_index].posZ.raw = 0;
                func_80011B30(7, 2, 1, 5, 10);
                gActors[actor_index].posX.raw = FIXED_UNIT(128);
                gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) - FIXED_UNIT(54);
                gActors[actor_index].posZ.raw = FIXED_UNIT(-80);
                gActors[48].var_150 = 10;
                gActors[actor_index].stateUpper = 1;
            }
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[48].var_150 <= 0) {
                func_80011C58(7, 2, 1, 4);
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2 && gActors[actor_index].posX.whole <= 112) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].state = 8;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            func_80081790(actor_index, D_800E8B98);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
            if (gActors[actor_index].velocityY.raw <= 0) {
                func_80081790(actor_index, D_800E8BD0);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
            }
            else {
                func_8005A4B0(actor_index, 1.0f);
                Sound_PlaySfx(SFX_LAND_0025);
                gActors[actor_index].velocityX.raw = 0;
                func_80081790(actor_index, D_800E8BEC);
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            if (gActors[actor_index].unk_11C < 0.0f) {
                func_80081790(actor_index, D_800E8AA8);
                gActors[48].var_150 = Math_AbsS32_2((FIXED_UNIT(64) - gActors[actor_index].posX.raw) / 90);
                gActors[48].var_154 = Math_AbsS32_2(-gActors[actor_index].posZ.raw / 90);
                gActors[actor_index].stateUpper = 4;
            }
        }
        else if (gActors[actor_index].stateUpper == 4) {
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, FIXED_UNIT(64), gActors[48].var_150);
            gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, 0, gActors[48].var_154);
            if (gActors[actor_index].posX.raw == FIXED_UNIT(64) && gActors[actor_index].posZ.raw == 0) {
                func_80081790(actor_index, D_800E8F4C);
                gActors[actor_index].stateUpper = 5;
            }
        }
        else if (gActors[actor_index].stateUpper == 5 && (s32)gPlayerData.frames % 10 == 0) {
            particle_parameters[0] = gActors[actor_index].posX.whole;
            particle_parameters[1] = gActors[actor_index].posY.whole;
            particle_parameters[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_parameters);

            if (new_actor_index) {
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].graphicIndex = GINDEX_HEARTBUBBLE;
                gActors[new_actor_index].var_154 = 8;
                gActors[new_actor_index].unk_164 = -1;
                gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.2f;
                gActors[new_actor_index].var_110 = gActors[new_actor_index].unk_114 = -0.02f;
                gActors[new_actor_index].unk_148 = 60.0f;
                particle_parameters[4] = Rand() * 1.5 + 160.0;
                gActors[new_actor_index].posX.raw += FIXED_UNIT(24) * COS(particle_parameters[4]);
                gActors[new_actor_index].posY.raw += FIXED_UNIT(24) * SIN(particle_parameters[4]);
                gActors[new_actor_index].velocityY.raw = (RandModulo(0) * 128 + FIXED_UNIT(1.5)) * COS(particle_parameters[4]);
                gActors[new_actor_index].velocityX.raw = (FIXED_UNIT(-1.5) - RandModulo(0) * 128) * SIN(particle_parameters[4]);
                gActors[new_actor_index].var_15C = -gActors[new_actor_index].velocityY.raw / 16;
                gActors[new_actor_index].var_158 = -gActors[new_actor_index].velocityX.raw / 16;
                gActors[new_actor_index].velocityX.raw += FIXED_UNIT(1.5) * COS(particle_parameters[4]);
                gActors[new_actor_index].velocityY.raw += FIXED_UNIT(1.5) * SIN(particle_parameters[4]);
                gActors[new_actor_index].var_158 += FIXED_UNIT(-0.03125) * COS(particle_parameters[4]);
                gActors[new_actor_index].var_15C += FIXED_UNIT(-0.03125) * SIN(particle_parameters[4]);
            }
        }
        break;

    case 5:
        SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0, gActors[actor_index].posZ.whole);
        if (!gActors[actor_index].stateUpper) {
            if (gActors[54].var_15C < -256) {
                break;
            }

            gActors[48].var_158 = 60;
            gActors[48].var_15C = 0;
            func_80081790(actor_index, D_800E8AA8);
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].posX.whole = COS(gActors[48].var_15C) * 64.0f;
        gActors[actor_index].posZ.whole = SIN(gActors[48].var_15C) * 64.0f + 48.0f;
        if (!((gActors[48].var_15C + 32) & COS_DEG_180)) {
            gActors[actor_index].unk_138 = 1.0f;
        }
        else {
            gActors[actor_index].unk_138 = 0.0f;
        }

        if (gActors[48].var_158 == 0) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[48].var_158 = 18;
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.1875));
        }
        else {
            gActors[48].var_158--;
        }

        gActors[48].var_15C += 4;
        if (gActors[48].var_15C >= 0x700) {
            gActors[actor_index].state = 6;
        }
        break;

    case 6:
        SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0, gActors[actor_index].posZ.whole);
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.1875);
            gActors[actor_index].velocityZ.raw = (FIXED_UNIT(-80) - gActors[actor_index].posZ.raw) / 90;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posZ.raw <= FIXED_UNIT(-80)) {
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].posZ.raw = FIXED_UNIT(-80);
        }

        if (gActors[48].var_158 == 0) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[48].var_158 = 18;
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.1875));
        }
        else {
            gActors[48].var_158--;
        }

        if (gActors[actor_index].posX.whole >= 192) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].state = 8;
        }
        break;

    case 7:
        SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0, gActors[actor_index].posZ.whole);
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_138 = 1.0f;
            gActors[actor_index].posX.whole = 128;
            gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
            gActors[actor_index].posZ.whole = -384;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[48].var_158 == 0) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[48].var_158 = 18;
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.1875));
        }
        else {
            gActors[48].var_158--;
        }

        if (gActors[actor_index].posX.whole <= -128) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].state = 8;
        }
        break;
    }

    if (gActors[48].state >= 23) {
        func_80096A70(actor_index);
    }
    else {
        func_80096AC4(actor_index);
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_80195CF8_6F2178(u16 actor_index, s32 frame_divisor) {
    s32 depth_offset;
    s32 unused;
    s32 particle_position[3];
    s32 new_actor_index;

    switch (gMarinaAnim.state) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.whole = -64;
        gActors[actor_index].posY.whole = -54 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].unk_170 = 0xA0;
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
        gActors[actor_index].unk_170_s8[1] = 6;
        gPlayerData.unk_0C[0] = 64;
        gActors[actor_index].state = MARINASTATE_57;
        gMarinaAnim.state = 6;
        break;

    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = -1;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 <= 0) {
                func_8005DF5C(0x12);
                gActors[55].state = 1;
                gActors[actor_index].unk_170 = 0x17;
                gActors[actor_index].unk_170_u16[1] |= 0x4000;
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            frame_divisor = 7;
            if ((s32)gPlayerData.frames % frame_divisor == 0) {
                gActors[actor_index].unk_170_s8[0]++;
            }

            if (func_8005D418(actor_index)) {
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            if (!func_8005DEFC()) {
                gActors[actor_index].unk_170 = 0x1E;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
                gPlayerData.flags |= PLAYERDATA_UNBOUND;
                gActors[actor_index].var_150 = 60;
                gActors[actor_index].stateUpper = 4;
            }
        }
        else if (gActors[actor_index].stateUpper == 4 && gActors[actor_index].posX.whole < -192) {
            gActors[actor_index].velocityX.raw = 0;
            gMarinaAnim.state = 6;
        }

        if (gActors[actor_index].var_15C < 0 || gActors[actor_index].var_158 <= 0) {
            gActors[actor_index].var_15C = Sound_PlaySfxAtPan(SFX_RING_0040, 8);
            gActors[actor_index].var_158 = 0;
        }

        if (!gSfxPlayerFlags[gActors[actor_index].var_15C]) {
            gActors[actor_index].var_158--;
        }
        else {
            gActors[actor_index].var_158++;
        }
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole = -128;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_170 = 0x1E;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posX.whole >= -64) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posX.whole = -64;
            gActors[actor_index].unk_170 = 0x1E;
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].unk_170_s8[1] = 5;
            gMarinaAnim.state = 6;
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            particle_position[0] = gActors[actor_index].posX.whole;
            particle_position[1] = gActors[actor_index].posY.whole + 28;
            particle_position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, particle_position);
            gActors[new_actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].graphicIndex = GINDEX_EXCLAIMBUBBLE;
            gActors[new_actor_index].var_154 = 60;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 80.0f;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].stateUpper = 1;
        }

        if (--gActors[actor_index].var_150 <= 0) {
            gMarinaAnim.state = 6;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x1D;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && (gActors[actor_index].unk_170_s8[1] == 2 || gActors[actor_index].unk_170_s8[1] == 8)) {
            Sound_PlaySfx(SFX_STEP_0053);
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.125));
            if (gActors[actor_index].posX.whole >= 48) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].stateUpper = 2;
            }
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2), FIXED_UNIT(0.125));
            if (gActors[actor_index].posX.whole <= -48) {
                Sound_PlaySfxAtVol(SFX_THEO_HELP2, 160);
                gActors[actor_index].stateUpper = 3;
            }
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
            if (!gActors[actor_index].velocityX.raw) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].unk_170 = 7;
                gMarinaAnim.state = 6;
            }
        }

        if (gActors[actor_index].stateUpper < 3) {
            depth_offset = RandModulo(2);
            func_80033E7C(
                actor_index,
                gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0,
                gActors[actor_index].posZ.whole - depth_offset,
                FIXED_UNIT(1),
                FIXED_UNIT(8),
                3
            );
        }
        break;

    case 5:
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1) || Math_AbsS32_2(gActors[actor_index].velocityZ.raw) > FIXED_UNIT(1)) {
            gActors[actor_index].unk_180_u8[3] = MARINAEFF_4;
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x5B;
            Sound_PlaySfx(SFX_DASH_00AE);
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gActors[actor_index].unk_180_u8[2] = 4;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(1), FIXED_UNIT(0.046875));
            if (gActors[actor_index].posX.whole >= 48) {
                gActors[actor_index].unk_170 = 0x5B;
                Sound_PlaySfx(SFX_DASH_00AE);
                MarinaEffect_Set(actor_index, MARINAEFF_DASH);
                gActors[actor_index].unk_180_u8[2] = 4;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.375);
                gActors[actor_index].velocityZ.raw = FIXED_UNIT(-5);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gPlayerData.unk_0C[0] += FROM_FIXED(gActors[actor_index].velocityZ.raw);
            gActors[actor_index].velocityZ.raw = Math_ApproachS32(gActors[actor_index].velocityZ.raw, FIXED_UNIT(-1), FIXED_UNIT(0.046875));
            if (gPlayerData.unk_0C[0] <= -48) {
                gActors[actor_index].unk_170 = 0x47;
                Sound_PlaySfx(SFX_DASH_00AE);
                MarinaEffect_Set(actor_index, MARINAEFF_DASH);
                gActors[actor_index].unk_180_u8[2] = 4;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
                gActors[actor_index].velocityZ.raw = 0;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3 && gActors[actor_index].posX.whole >= 113) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gMarinaAnim.state = 7;
        }
        break;
    }

    gActors[actor_index].posZ.whole += gPlayerData.unk_0C[0];
}


void func_8019651C_6F299C(u16 actor_index) {
    s32 parent_actor_index;
    s32 hitbox_bottom;
    s32 position_z;
    s32 position_y;
    s32 position_x;
    u16 index;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].posX.raw = FIXED_UNIT(-3);
        gActors[actor_index].posY.raw = FIXED_UNIT(3);

        for (index = 0; index < ARRAYLENGTH(D_80197920_6F3DA0); index++) {
            D_80197920_6F3DA0[index] = GPACK_RGBA5551(0, 0, 0, 1);
        }

        gMarinaAnim.anim_u32 = MARINAANIM_4;
        gPlayerData.flags |= PLAYERDATA_NOCOLLIDE;
        gActors[49].actorType = 0x2201;
        Actor_Initialize(49);
        index = 50;
        gActors[index].actorType = 0x2204;
        Actor_Initialize(index);
        index = 54;
        gActors[index].actorType = 0x2202;
        Actor_Initialize(index);
        gActors[index].graphicLists = D_80197654_6F3AD4;
        hitbox_bottom = -42;
        gActors[index].hitboxBY1 = hitbox_bottom;
        gActors[index].posX.raw = FIXED_UNIT(192);
        gActors[index].posY.raw = TO_FIXED(-gActors[index].hitboxBY1) - FIXED_UNIT(80);
        gActors[index].posZ.raw = 0;

        position_x = 16;
        position_y = 160;
        position_z = 0;
        parent_actor_index = 54;
        hitbox_bottom = -14;
        for (index = 56; index < 61; index++) {
            gActors[index].actorType = 0x2203;
            Actor_Initialize(index);
            gActors[index].posX.whole = position_x;
            gActors[index].posY.whole = position_y;
            gActors[index].hitboxBY1 = hitbox_bottom;
            gActors[index].graphicLists = D_80197718_6F3B98;
            gActors[index].posZ.whole = position_z;
            gActors[index].unk_14C = parent_actor_index;
            parent_actor_index = index;
            position_x += 32;
            position_y += 64;
        }

        gActors[actor_index].var_150 = 90;
        gActors[actor_index].state = 1;
        break;

    case 1:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
        }
        else {
            func_8005DF5C(1);
            gActors[54].state = 2;
            gActors[actor_index].state = 2;
        }
        break;

    case 2:
        if (gActors[54].stateLower == 8 && func_8005DEFC() == 0) {
            gActors[54].state = 3;
            gActors[actor_index].state = 3;
        }
        break;

    case 3:
        if (gActors[54].stateLower == 8) {
            gActors[54].state = 4;
            gActors[50].state = 1;
            gActors[actor_index].state = 4;
        }
        break;

    case 4:
        if (gActors[54].stateLower == 8 && gActors[50].stateLower == 2) {
            func_8005DF5C(2);
            gActors[actor_index].state = 5;
        }
        break;

    case 5:
        if (func_8005DEFC() == 0) {
            func_8005DF5C(3);
            func_8005DF5C(4);
            gActors[54].state = 5;
            gActors[actor_index].state = 6;
        }
        break;

    case 6:
        if (func_8005DEFC() == 0 && gActors[54].stateLower == 8) {
            gActors[54].var_150 = 4;
            gActors[54].state = 1;
            func_8005DF5C(5);
            func_8005DF5C(6);
            gActors[actor_index].state = 7;
        }
        break;

    case 7:
        if (func_8005DEFC() == 0) {
            gActors[54].var_150 = 5;
            gActors[54].state = 1;
            func_8005DF5C(7);
            func_8005DF5C(8);
            gActors[actor_index].state = 8;
        }
        break;

    case 8:
        if (func_8005DEFC() == 0) {
            gActors[54].state = 6;
            func_8005DF5C(9);
            func_8005DF5C(10);
            gActors[actor_index].state = 9;
        }
        break;

    case 9:
        if (func_8005DEFC() == 0 && gActors[54].stateLower == 8) {
            gActors[54].var_150 = 7;
            gActors[54].posX.whole -= 24;
            gActors[54].state = 1;
            func_8005DF5C(11);
            gActors[actor_index].var_150 = 30;
            Sound_StartFade(0x81U, 30);
            gActors[actor_index].state = 10;
        }
        break;

    case 10:
        if (func_8005DEFC() == 0) {
            if (--gActors[actor_index].var_150 == 10) {
                Sound_PlaySfx(SFX_CLANCER_YELL_011A);
            }

            if (gActors[actor_index].var_150 == 0) {
                gActors[54].unk_170_u16[1] |= 0x4000;
                gActors[56].state = gActors[57].state = gActors[58].state = gActors[59].state = 1;
                func_8005DF5C(12);
                gActors[actor_index].var_150 = 30;
                gAudioFadeMode = 0;
                Sound_PlayMusic(BGM_YUJYA);
                gActors[actor_index].state = 11;
            }
        }
        break;

    case 11:
        if (gActors[59].stateLower == 4 && func_8005DEFC() == 0) {
            func_8005D3D8(54);
            func_8005DF5C(13);
            gActors[actor_index].state = 12;
        }
        break;

    case 12:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].var_15C = Sound_PlaySfx(SFX_TUARUS_TAUNT2);
            if (gActors[actor_index].var_15C >= 0) {
                gActors[actor_index].var_150 = 30;
                gActors[actor_index].state = 13;
            }
        }
        break;

    case 13:
        if (gSfxPlayerFlags[gActors[actor_index].var_15C] == 0) {
            if (gActors[actor_index].var_150 != 0) {
                gActors[actor_index].var_150--;
            }
            else {
                Sound_PlaySfx(SFX_TUARUS_YELL2);
                gActors[54].var_150 = 3;
                gActors[54].state = 1;
                gActors[56].var_154 = 5;
                gActors[57].var_154 = 4;
                gActors[59].var_154 = 3;
                gActors[56].state = gActors[57].state = gActors[59].state = 2;
                gActors[actor_index].var_150 = 180;
                gActors[actor_index].state = 14;
            }
        }
        break;

    case 14:
        if (gActors[actor_index].var_150 != 0) {
            if (gActors[54].unk_170_s8[0] == 0 && gActors[54].unk_170_s8[1] >= 2) {
                Sound_PlaySfx(SFX_004A);
            }

            gActors[actor_index].var_150--;
        }
        else {
            gActors[54].state = 7;
            gActors[56].state = gActors[57].state = gActors[58].state = gActors[59].state = 3;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 15;
        }
        break;

    case 15:
        if (gActors[59].flags == 0) {
            if (gActors[actor_index].var_150 == 60) {
                Sound_StartFade(1, 60);
            }

            if (--gActors[actor_index].var_150 == 0) {
                func_8005DF5C(14);
                gActors[actor_index].var_150 = 30;
                gAudioFadeMode = 0;
                Sound_PlayMusic(BGM_POSITION);
                gActors[actor_index].state = 16;
            }
        }
        break;

    case 16:
        if (func_8005DEFC() == 0 && --gActors[actor_index].var_150 <= 0) {
            gActors[49].state = 1;
            func_8005DF5C(15);
            func_80026F2C(SCENE_MEETMARINA);
            gActors[actor_index].state = 17;
        }
        break;

    case 17:
        if (func_8005DEFC() == 0) {
            index = 56;
            gActors[index].actorType = 0x2205;
            Actor_Initialize(index);
            gActors[actor_index].state = 18;
        }
        break;

    case 18:
        if (gActors[56].stateLower == 8) {
            func_8005DF5C(16);
            gActors[actor_index].state = 19;
        }
        break;

    case 19:
        if (func_8005DEFC() == 0) {
            gActors[49].state = 2;
            gActors[56].state = 2;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 20;
        }
        break;

    case 20:
        if (gActors[49].stateLower == 3 && --gActors[actor_index].var_150 <= 0) {
            Sound_StartFade(1, 60);
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].posZ.raw = FIXED_UNIT(640);
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].palette_18C = D_80197920_6F3DA0;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 21;
            gActors[actor_index].scaleX = 22.0f;
            gActors[actor_index].scaleY = 14.0f;
        }
        break;

    case 21:
        if (gActors[actor_index].colorA == 255) {
            gActors[actor_index].state = 22;
        }
        else {
            gActors[actor_index].colorA += 4;
            if (gActors[actor_index].colorA >= 252) {
                gActors[actor_index].colorA = 255;
            }
        }
        break;

    case 22:
        for (index = 49; index < 192; index++) {
            gActors[index].flags = ACTOR_FLAG_NONE;
        }

        func_8002670C(SCENE_DEMOWORLD1);
        func_80026784(SCENE_DEMOWORLD1);
        func_800255B4(SCENE_DEMOWORLD1);
        func_80010C20(SCENE_DEMOWORLD1);
        func_80026220(SCENE_MEETMARINA);
        func_80026494(SCENE_DEMOWORLD1, 0);
        func_80025E00();
        func_80011B30(7, 1, 1, 5, 14);
        func_80011B30(0, 0, 3, 1, 25);
        func_80011B30(6, 0, 2, 2, 32);
        func_80011B30(0, 4, 3, 1, 36);
        func_80011B30(0, 5, 2, 1, 39);
        D_8013769C = D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        gActorDepthMiddle = 24;
        gActorDepthBack = -128;
        D_800BE584 = 48;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_LETHE);
        func_80026D88(SCENE_MEETMARINA);
        func_80026F2C(SCENE_MEETMARINA);
        func_800271B0(SCENE_DEMOWORLD1);
        gMarinaAnim.anim_u32 = MARINAANIM_29;
        index = 54;
        gActors[index].actorType = 0x2206;
        Actor_Initialize(index);
        index = 51;
        gActors[index].actorType = 0x2204;
        Actor_Initialize(index);
        gActors[index].graphicFlags |= ACTOR_GFLAG_UNK6;
        gActors[index].graphicIndex = 0x301A;
        gActors[index].state = 9;
        gActors[index].posX.raw = FIXED_UNIT(-3);
        gActors[index].posY.raw = FIXED_UNIT(-16);
        gActors[index].posZ.raw = FIXED_UNIT(-511);
        index = 56;
        gActors[index].actorType = 0x2205;
        Actor_Initialize(index);
        gActors[index].flags = ACTOR_FLAG_ACTIVE;
        gActors[index].stateUpper = 1;

        for (index = 80; index < 108; index++) {
            gActors[index].actorType = 0x2204;
            Actor_Initialize(index);
            gActors[index].state = 5;
        }

        gActors[actor_index].var_150 = 60;
        gActors[actor_index].state = 23;
        break;

    case 23:
        gActors[actor_index].var_150--;
        gActors[actor_index].colorA -= 4;

        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = GINDEX_BLACKBAR;
            gActors[actor_index].colorB = 0;
            gActors[actor_index].colorG = 0;
            gActors[actor_index].colorR = 0;
            gActors[actor_index].posX.raw = FIXED_UNIT(96);
            gActors[actor_index].posY.raw = FIXED_UNIT(-8);
            gActors[actor_index].posZ.raw = FIXED_UNIT(-256);
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].hitboxBX0 = -24;
            gActors[actor_index].hitboxBX1 = 24;
            gActors[actor_index].hitboxBY0 = 48;
            gActors[actor_index].hitboxBY1 = -48;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].state = 24;
        }
        break;

    case 24:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(17);
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].state = 25;
        }
        break;

    case 25:
        if (func_8005DEFC() == 0 && --gActors[actor_index].var_150 <= 0) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 1;
            gActors[actor_index].state = 26;
        }
        break;

    case 26:
        if (gMarinaAnim.state == 6) {
            gActors[55].state = 2;
            func_8005DF5C(19);
            gActors[actor_index].state = 27;
        }
        break;

    case 27:
        if (func_8005DEFC() == 0) {
            gActors[56].state = 3;
            gActors[actor_index].state = 28;
        }
        break;

    case 28:
        if (gActors[56].stateLower == 8) {
            func_8005DF5C(20);
            gActors[actor_index].state = 29;
        }
        break;

    case 29:
        if (func_8005DEFC() == 0) {
            gActors[56].state = 4;
            func_8005DF5C(21);
            gActors[actor_index].state = 30;
        }
        break;

    case 30:
        if (func_8005DEFC() == 0 && gActors[56].stateUpper == 5) {
            gActors[55].state = 3;
            func_8005DF5C(22);
            gActors[actor_index].state = 31;
        }
        break;

    case 31:
        if (func_8005DEFC() == 0) {
            gActors[55].state = 4;
            func_8005DF5C(23);
            gActors[actor_index].state = 32;
        }
        break;

    case 32:
        if (func_8005DEFC() == 0) {
            gActors[54].state = 1;
            func_8005DF5C(24);
            gActors[actor_index].state = 33;
        }
        break;

    case 33:
        if (func_8005DEFC() == 0 && gActors[54].stateLower == 5) {
            gActors[54].state = 2;
            gActors[56].state = 5;
            gMarinaAnim.timer = 60;
            func_8005DF5C(25);
            gActors[actor_index].state = 34;
        }
        break;

    case 34:
        gActors[actor_index].state = 35;
        break;

    case 35:
        if (gActors[54].stateLower == 5) {
            func_8005DFC8(0);
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 2;
            func_8005DF5C(26);
            gActors[actor_index].state = 36;
        }
        break;

    case 36:
        if (func_8005DEFC() == 0 && gMarinaAnim.state == 6) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 3;
            func_8005DF5C(27);
            gActors[actor_index].state = 37;
        }
        break;

    case 37:
        if (func_8005DEFC() == 0 && gMarinaAnim.state == 6) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 4;
            func_8005DF5C(28);
            gMarinaAnim.timer = 30;
            gActors[actor_index].state = 38;
        }
        break;

    case 38:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state = 39;
        }
        break;

    case 39:
        if (gMarinaAnim.state == 6) {
            gActors[54].state = 4;
            gActors[56].state = 7;
            gActors[actor_index].state = 40;
        }
        break;

    case 40:
        if (gActors[54].stateLower == 5) {
            func_8005DF5C(30);
            gActors[actor_index].state = 41;
        }
        break;

    case 41:
        if (func_8005DEFC() == 0) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 5;
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].state = 42;
        }
        break;

    case 42:
        if (gPlayerActor.stateUpper >= 2) {
            if (gActors[actor_index].var_150 == 30) {
                Sound_StartFade(1, 30);
            }

            if (--gActors[actor_index].var_150 == 0) {
                gAudioFadeMode = 0;
                gStageState++;
                gPlayerData.flags &= ~(PLAYERDATA_PAUSEACTOR | PLAYERDATA_NOCOLLIDE);
                gActors[actor_index].state = 43;
            }
        }
        break;
    }
}
