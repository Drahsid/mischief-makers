// BUG: incorrect prototype!
#define Palette_AdjustRgb5551Array_ARGS
#define Sound_PlaySfxAtActorPanning_RET s32 // DEFAULT_INT ?
#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "stage_tilemap.h"
#include "marina_anim.h"
#include "marina_effect.h"
#include "5D120.h"
#include "rle.h"

extern s8* D_800D410C[];

u16 D_8019DB30_6EE550[0x100];
u16 D_8019DD30_6EE750[0x100];
u16 D_8019DF30_6EE950[0x100];
u16 D_8019E130_6EEB50[0x100];

s16 D_8019D190_6EDBB0[] = {
//  graphic timer
    GRAPHIC_FRAME(1822, 3), 12,
    GRAPHIC_FRAME(1822, 4), 12,
    GINDEX_182C, 12,
    GINDEX_182E, 12,
    GRAPHIC_FRAME(182E, 1), 12,
    0x0000, 0,
};

s16 D_8019D1A8_6EDBC8[] = {
//  graphic timer
    GINDEX_4421, 16,
    0x0000, 0,
};

s16 D_8019D1B0_6EDBD0[] = {
//  graphic timer
    GINDEX_441C, 16,
    0x0000, 0,
};

s16 D_8019D1B8_6EDBD8[] = {
//  graphic timer
    GINDEX_4419, 4,
    GINDEX_441A, 16,
    GINDEX_4419, 8,
    0x0000, 0,
};

s16 D_8019D1C8_6EDBE8[] = {
//  graphic timer
    GINDEX_4421, 12,
    GINDEX_4420, 12,
    GINDEX_441F, 12,
    GINDEX_441E, 12,
    0x0000, 0,
};

s16 D_8019D1DC_6EDBFC[] = {
//  graphic timer
    GINDEX_440D, 4,
    GINDEX_440E, 4,
    GINDEX_440F, 4,
    GINDEX_4410, 64,
    GINDEX_4411, 8,
    0x0000, 0,
};

s16 D_8019D1F4_6EDC14[] = {
//  graphic timer
    GINDEX_4403, 4,
    GINDEX_4404, 4,
    GINDEX_4405, 4,
    GINDEX_4406, 4,
    GINDEX_4407, 4,
    GINDEX_4408, 4,
    GINDEX_4409, 4,
    GINDEX_440A, 4,
    -8, 0,
};

s16 D_8019D218_6EDC38[] = {
//  graphic timer
    GINDEX_4401, 2,
    GINDEX_4402, 2,
    -2, 0,
};

s16 D_8019D224_6EDC44[] = {
//  graphic timer
    GINDEX_4412, 28,
    GINDEX_4414, 16,
    0x0000, 0,
};

s16 D_8019D230_6EDC50[] = {
//  graphic timer
    GINDEX_4415, 8,
    GINDEX_4416, 12,
    GINDEX_4417, 8,
    GINDEX_4418, 8,
    0x0000, 0,
};

s16 D_8019D244_6EDC64[] = {
//  graphic timer
    GINDEX_4414, 2,
    GINDEX_4413, 2,
    -2, 0,
};

s16 D_8019D250_6EDC70[] = {
//  graphic timer
    GINDEX_4007, 8,
    0x0000, 0,
};

s16 D_8019D258_6EDC78[] = {
//  graphic timer
    GINDEX_4419, 6,
    GINDEX_441A, 12,
    GINDEX_4419, 4,
    0x0000, 0,
};

s16 D_8019D268_6EDC88[] = {
//  graphic timer
    GINDEX_4419, 6,
    GINDEX_441A, 12,
    GINDEX_4419, 4,
    GINDEX_441B, 8,
    GINDEX_441C, 16,
    GINDEX_441D, 24,
    GINDEX_441C, 16,
    0x0000, 0,
};

s16* D_8019D288_6EDCA8[] = {
    NULL,
    D_8019D1A8_6EDBC8,
    D_8019D1B0_6EDBD0,
    D_8019D1B8_6EDBD8,
    D_8019D1C8_6EDBE8,
    D_8019D1DC_6EDBFC,
    D_8019D1F4_6EDC14,
    D_8019D218_6EDC38,
    D_8019D224_6EDC44,
    D_8019D230_6EDC50,
    D_8019D244_6EDC64,
    D_8019D250_6EDC70,
    D_8019D258_6EDC78,
    D_8019D268_6EDC88,
};

s16 D_8019D2C0_6EDCE0[] = {
//  graphic timer
    GINDEX_6412, 8,
    0x0000, 0,
};

s16 D_8019D2C8_6EDCE8[] = {
//  graphic timer
    GINDEX_6418, 6,
    GINDEX_6413, 6,
    GINDEX_6414, 6,
    GINDEX_6415, 6,
    GINDEX_6416, 6,
    GINDEX_6417, 6,
    -6, 0,
};

s16 D_8019D2E4_6EDD04[] = {
//  graphic timer
    GINDEX_6418, 8,
    GINDEX_6419, 8,
    GINDEX_641A, 8,
    GINDEX_641B, 8,
    0x0000, 0,
};

s16 D_8019D2F8_6EDD18[] = {
//  graphic timer
    GINDEX_6418, 8,
    GINDEX_6417, 8,
    GINDEX_6416, 8,
    GINDEX_6415, 8,
    0x0000, 0,
};

s16 D_8019D30C_6EDD2C[] = {
//  graphic timer
    GINDEX_640D, 4,
    GINDEX_640E, 4,
    GINDEX_640F, 4,
    GINDEX_6410, 64,
    GINDEX_6411, 8,
    0x0000, 0,
};

s16* D_8019D324_6EDD44[] = {
    NULL,
    D_8019D2C0_6EDCE0,
    D_8019D2C8_6EDCE8,
    D_8019D2E4_6EDD04,
    D_8019D2F8_6EDD18,
    D_8019D30C_6EDD2C,
};

s16 D_8019D33C_6EDD5C[] = {
//  graphic timer
    GINDEX_4C11, 8,
    0x0000, 0,
};

s16 D_8019D344_6EDD64[] = {
//  graphic timer
    GRAPHIC_FRAME(4C11, 2), 16,
    0x0000, 0,
};

s16 D_8019D34C_6EDD6C[] = {
//  graphic timer
    GRAPHIC_FRAME(4C10, 2), 8,
    GRAPHIC_FRAME(4C11, 1), 64,
    GRAPHIC_FRAME(4C10, 1), 8,
    0x0000, 0,
};

s16 D_8019D35C_6EDD7C[] = {
//  graphic timer
    GRAPHIC_FRAME(4C10, 2), 8,
    GRAPHIC_FRAME(4C11, 1), 64,
    GRAPHIC_FRAME(4C10, 1), 8,
    0x0000, 0,
};

s16 D_8019D36C_6EDD8C[] = {
//  graphic timer
    GINDEX_4C0D, 4,
    GINDEX_4C0E, 4,
    GINDEX_4C0F, 4,
    GINDEX_4C10, 64,
    GINDEX_4C11, 8,
    0x0000, 0,
};

s16* D_8019D384_6EDDA4[] = {
    NULL,
    D_8019D33C_6EDD5C,
    D_8019D344_6EDD64,
    D_8019D34C_6EDD6C,
    D_8019D35C_6EDD7C,
    D_8019D36C_6EDD8C,
};

s16 D_8019D39C_6EDDBC[] = {
//  graphic timer
    GINDEX_6881, 2,
    GINDEX_6882, 2,
    GINDEX_6883, 2,
    GINDEX_6884, 2,
    GINDEX_6885, 2,
    GINDEX_6886, 2,
    GINDEX_6887, 2,
    GINDEX_6888, 2,
    GINDEX_6889, 2,
    GINDEX_688A, 2,
    GINDEX_688B, 2,
    GINDEX_688C, 2,
    GINDEX_688D, 2,
    GINDEX_688E, 2,
    GINDEX_688F, 2,
    GINDEX_6890, 2,
    -16, 0,
};

s16 D_8019D3E0_6EDE00[] = {
//  graphic timer
    GINDEX_6905, 3,
    GINDEX_6904, 3,
    GINDEX_6903, 3,
    GINDEX_6905, 3,
    GINDEX_6909, 3,
    GINDEX_690A, 3,
    GINDEX_690B, 3,
    GINDEX_690A, 3,
    GINDEX_6909, 3,
    -9, 0,
};

s16 D_8019D408_6EDE28[] = {
//  graphic timer
    GINDEX_6853, 4,
    GINDEX_6854, 4,
    GINDEX_6855, 4,
    -2, 0,
};

s16 D_8019D418_6EDE38[] = {
//  graphic timer
    GINDEX_6843, 4,
    GINDEX_6842, 4,
    GINDEX_6841, 4,
    -2, 0,
};

s16 D_8019D428_6EDE48[] = {
//  graphic timer
    GINDEX_6855, 5,
    GINDEX_6856, 5,
    GINDEX_685B, 6,
    0x0000, 0,
};

s16 D_8019D438_6EDE58[] = {
//  graphic timer
    GINDEX_6855, 4,
    GINDEX_6856, 4,
    -2, 0,
};

s16 D_8019D444_6EDE64[] = {
//  graphic timer
    GINDEX_6905, 2,
    GINDEX_6904, 2,
    GINDEX_6903, 2,
    GINDEX_6905, 2,
    GINDEX_6909, 2,
    GINDEX_690A, 2,
    GINDEX_690B, 2,
    GINDEX_690A, 2,
    GINDEX_6909, 2,
    -9, 0,
};

s16 D_8019D46C_6EDE8C[] = {
//  graphic timer
    GINDEX_6856, 2,
    GINDEX_6857, 2,
    GINDEX_6858, 2,
    GINDEX_6859, 2,
    GINDEX_685A, 2,
    GINDEX_685B, 2,
    GINDEX_685C, 48,
    0x0000, 0,
};

s16 D_8019D48C_6EDEAC[] = {
//  graphic timer
    GINDEX_6860, 6,
    GINDEX_6861, 6,
    GINDEX_6862, 6,
    GINDEX_6863, 6,
    GINDEX_6864, 6,
    GINDEX_6865, 6,
    GINDEX_6866, 6,
    GINDEX_6867, 6,
    GINDEX_6868, 6,
    GINDEX_6869, 6,
    GINDEX_686A, 6,
    0x0000, 0,
};

s16 D_8019D4BC_6EDEDC[] = {
//  graphic timer
    GINDEX_6814, 2,
    GINDEX_6815, 2,
    GINDEX_6816, 2,
    GINDEX_6817, 2,
    GINDEX_6818, 2,
    0x0000, 0,
};

s16 D_8019D4D4_6EDEF4[] = {
//  graphic timer
    GINDEX_6819, 2,
    0x0000, 0,
};

s16 D_8019D4DC_6EDEFC[] = {
//  graphic timer
    GINDEX_682C, 3,
    GINDEX_682D, 3,
    GINDEX_682E, 3,
    GINDEX_682F, 3,
    GINDEX_6830, 3,
    GINDEX_6831, 3,
    GINDEX_6832, 3,
    GINDEX_6833, 3,
    GINDEX_6834, 3,
    GINDEX_6835, 3,
    GINDEX_6836, 3,
    GINDEX_6837, 3,
    GINDEX_6838, 3,
    -13, 0,
};

s16 D_8019D514_6EDF34[] = {
//  graphic timer
    GINDEX_684C, 4,
    GINDEX_684B, 16,
    GINDEX_684C, 4,
    GINDEX_684D, 16,
    0x0000, 0,
};

s16 D_8019D528_6EDF48[] = {
//  graphic timer
    GINDEX_68AB, 4,
    GINDEX_68AC, 16,
    GINDEX_68AB, 4,
    GINDEX_68AA, 16,
    0x0000, 0,
};

s16 D_8019D53C_6EDF5C[] = {
//  graphic timer
    GINDEX_6891, 32,
    GINDEX_6892, 8,
    GINDEX_6893, 8,
    GINDEX_6894, 32,
    GINDEX_6893, 2,
    GINDEX_6894, 2,
    GINDEX_6893, 2,
    GINDEX_6894, 2,
    GINDEX_6893, 2,
    GINDEX_6894, 2,
    GINDEX_6893, 2,
    GINDEX_6894, 2,
    GINDEX_6893, 32,
    -13, 0,
};

s16 D_8019D574_6EDF94[] = {
//  graphic timer
    GINDEX_68BE, 2,
    GINDEX_68BF, 3,
    GINDEX_68C0, 3,
    GINDEX_68C1, 4,
    GINDEX_68C2, 4,
    GINDEX_68C3, 5,
    GINDEX_68C4, 3,
    GINDEX_68C5, 3,
    GINDEX_68C6, 3,
    -9, 0,
};

s16 D_8019D59C_6EDFBC[] = {
//  graphic timer
    GINDEX_6852, 3,
    GINDEX_6853, 3,
    GINDEX_6854, 3,
    GINDEX_6855, 3,
    0x0000, 0,
};

s16 D_8019D5B0_6EDFD0[] = {
//  graphic timer
    GINDEX_684E, 4,
    0x0000, 0,
};

s16 D_8019D5B8_6EDFD8[] = {
//  graphic timer
    GINDEX_6801, 5,
    GINDEX_6802, 8,
    GINDEX_6801, 5,
    GINDEX_6800, 8,
    -4, 0,
};

s16 D_8019D5CC_6EDFEC[] = {
//  graphic timer
    GINDEX_682D, 12,
    GINDEX_682E, 12,
    GINDEX_682D, 12,
    GINDEX_682E, 12,
    GINDEX_682D, 12,
    GINDEX_682E, 12,
    GINDEX_682D, 12,
    GINDEX_682E, 12,
    GINDEX_682D, 32,
    -9, 0,
};

s16 D_8019D5F4_6EE014[] = {
//  graphic timer
    GINDEX_6803, 5,
    GINDEX_6804, 5,
    GINDEX_6805, 5,
    GINDEX_6806, 5,
    GINDEX_6807, 5,
    GINDEX_6808, 5,
    GINDEX_6809, 5,
    GINDEX_680A, 5,
    GINDEX_680B, 5,
    GINDEX_680C, 5,
    GINDEX_680D, 5,
    GINDEX_680E, 5,
    GINDEX_680F, 5,
    GINDEX_6810, 5,
    GINDEX_6811, 5,
    GINDEX_6812, 5,
    -16, 0,
};

s16 D_8019D638_6EE058[] = {
//  graphic timer
    GINDEX_6881, 3,
    GINDEX_6882, 3,
    GINDEX_6883, 3,
    GINDEX_6884, 3,
    GINDEX_6885, 3,
    GINDEX_6886, 3,
    GINDEX_6887, 3,
    GINDEX_6888, 3,
    GINDEX_6889, 3,
    GINDEX_688A, 3,
    GINDEX_688B, 3,
    GINDEX_688C, 3,
    GINDEX_688D, 3,
    GINDEX_688E, 3,
    GINDEX_688F, 3,
    GINDEX_6890, 3,
    -16, 0,
};

s16 D_8019D67C_6EE09C[] = {
//  graphic timer
    GINDEX_6836, 3,
    GINDEX_6837, 4,
    GINDEX_6838, 8,
    GINDEX_6837, 2,
    GINDEX_6836, 2,
    0x0000, 0,
};

s16* D_8019D694_6EE0B4[] = {
    NULL,
    D_8019D39C_6EDDBC,
    D_8019D3E0_6EDE00,
    D_8019D408_6EDE28,
    D_8019D418_6EDE38,
    D_8019D428_6EDE48,
    D_8019D438_6EDE58,
    D_8019D408_6EDE28,
    D_8019D444_6EDE64,
    D_8019D46C_6EDE8C,
    D_8019D48C_6EDEAC,
    D_8019D4BC_6EDEDC,
    D_8019D4D4_6EDEF4,
    D_8019D4DC_6EDEFC,
    D_8019D514_6EDF34,
    D_8019D528_6EDF48,
    D_8019D53C_6EDF5C,
    D_8019D574_6EDF94,
    D_8019D59C_6EDFBC,
    D_8019D5B0_6EDFD0,
    D_8019D5B8_6EDFD8,
    D_8019D5CC_6EDFEC,
    D_8019D4DC_6EDEFC,
    D_8019D5F4_6EE014,
    D_8019D638_6EE058,
    D_8019D4DC_6EDEFC,
    D_8019D67C_6EE09C,
};

void func_801937E8_6E4208(u16 actor_index);
void func_801937F0_6E4210(u16 actor_index);
void func_801938E4_6E4304(u16 actor_index);

ActorFunc D_8019D700_6EE120[] = {
    func_801937F0_6E4210,
    func_801937E8_6E4208,
    func_801937E8_6E4208,
    func_801938E4_6E4304,
};

void func_801932C0_6E3CE0(u16 actor_index);
void func_80193594_6E3FB4(u16 actor_index);


void func_80192100_6E2B20(u16 actor_index) {
    s32 sp8C[5];
    s16 temp_s2;
    s16 temp_s3;
    s16 temp_s4;
    s32 vertex_coordinate;
    u16 side;
    s16 left_bound;
    s16 right_bound;
    s16 top_bound;
    s16 bottom_bound;
    u16 other_actor_index;
    s32 var_s0;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].scaleX = gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].posY.raw = (f64)gActors[49].posY.raw + FIXED_UNIT(132.5);
        gActors[actor_index].posZ.raw = FIXED_UNIT(128);
        gActors[actor_index].graphicIndex = GINDEX_DEMOWORLD3_3002;
        gActors[actor_index].colorA = 0;
        gActors[58].unk_180 = gActors[58].unk_184 = FIXED_UNIT(256);
        gActors[actor_index].state = 1;
        break;
    case 2:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            if (gActors[actor_index].scaleX < 1.5) {
                gActors[actor_index].scaleX += 0.0125;
                gActors[actor_index].posY.raw += (FIXED_UNIT(48) - ((f64)gActors[49].posY.raw + FIXED_UNIT(132.5))) / 120.0;
                if (gActors[actor_index].scaleX >= 1.5) {
                    gActors[actor_index].posY.raw = FIXED_UNIT(48);
                    gActors[actor_index].stateUpper = 1;
                    gActors[actor_index].scaleX = 1.5f;
                }
            }
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].scaleX -= 0.0125;
            if (gActors[actor_index].scaleX <= 0.0) {
                gActors[actor_index].scaleX = 0.0f;
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                gActors[actor_index].state = 1;
            }
        }

        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].colorA = RandModulo(0x30) + 0x60;

        var_s0 = Math_AbsS32_2(gActors[58].unk_180 - gActors[58].unk_184) / 16;
        if (var_s0 < FIXED_UNIT(0.00390625)) {
            var_s0 = FIXED_UNIT(0.00390625);
        }
        if (var_s0 > FIXED_UNIT(4)) {
            var_s0 = FIXED_UNIT(4);
        }

        var_s0 = Math_ApproachS32(gActors[58].unk_184, gActors[58].unk_180, var_s0) - gActors[58].unk_184;
        gActors[58].unk_184 += var_s0;
        gActors[58].unk_188 = var_s0 * 1.5;

        for (other_actor_index = 0x44; other_actor_index < 0xC0; other_actor_index++) {
            if (gActors[other_actor_index].flags & ACTOR_FLAG_ACTIVE) {
                gActors[other_actor_index].posX.raw -= gActors[58].unk_188;
                gActors[other_actor_index].flags |= ACTOR_FLAG_DRAW;
                if (gActors[other_actor_index].posX.whole / 0.75 <= -144 - gActors[actor_index].hitboxBX0 || 144 - gActors[actor_index].hitboxBX1 <= gActors[other_actor_index].posX.whole / 0.75) {
                    gActors[other_actor_index].flags &= ~ACTOR_FLAG_DRAW;
                }
            }
        }

        sp8C[0] = gActors[actor_index].posX.whole;
        sp8C[1] = gActors[actor_index].posY.whole;
        sp8C[2] = 0x90;
        sp8C[3] = GINDEX_DEMOWORLD3_3000;
        sp8C[4] = 0;

        other_actor_index = MarinaEffect_SpawnParticle(actor_index, sp8C);
        if (other_actor_index == 0) {
            break;
        }

        gActors[other_actor_index].colorA = 0xFF;
        gActors[other_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[other_actor_index].graphicIndex = sp8C[3];
        gActors[other_actor_index].scaleX = gActors[other_actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[other_actor_index].posX.raw += FIXED_UNIT(-72) * gActors[actor_index].scaleX;
        gActors[other_actor_index].unk_188 = gActors[actor_index].posZ.whole;

        other_actor_index = MarinaEffect_SpawnParticle(actor_index, sp8C);
        if (other_actor_index == 0) {
            break;
        }

        gActors[other_actor_index].colorA = 0xFF;
        gActors[other_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[other_actor_index].graphicIndex = sp8C[3];
        gActors[other_actor_index].scaleX = gActors[other_actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[other_actor_index].posX.raw += FIXED_UNIT(72) * gActors[actor_index].scaleX;
        gActors[other_actor_index].unk_188 = gActors[actor_index].posZ.whole;
        var_s0 = (Rand() / 8) & 0xFFFF;
        PALETTE_80367DE0[0] = Palette_AdjustRgb5551(1, var_s0, var_s0 / 3, var_s0 / 3);
        break;

    case 3:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].posX.raw = FIXED_UNIT(-3);
            gActors[actor_index].posY.raw = TO_FIXED(3.0f + gLookatEyeY);
            gActors[actor_index].posZ.raw = FIXED_UNIT(640);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].unk_188 = gLookatEyeZ - 512.0f;
            gActors[actor_index].palette_18C = &D_8019E130_6EEB50[128];
            gActors[actor_index].colorA = 0;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].scaleX = 22.0f;
            gActors[actor_index].scaleY = 14.0f;
        }

        if (gActors[actor_index].colorA == 0xFF) {
            gActors[actor_index].stateUpper = 3;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].colorA += 4;
            if (gActors[actor_index].colorA >= 0xFC) {
                gActors[actor_index].colorA = 0xFF;
                gActors[actor_index].stateUpper = 2;
            }
        }

        break;
    }

    if (gActors[actor_index].stateLower == 2) {
        temp_s2 = gActors[49].posX.whole;
        temp_s3 = gActors[49].posY.whole + 132.5;
        temp_s4 = gActors[49].posZ.whole + 20.0;
        sp8C[0] = 0;
        sp8C[1] = 0;
        left_bound = gActors[actor_index].scaleX * -160.0f / 2;
        right_bound = gActors[actor_index].scaleX * 160.0f / 2;
        top_bound = 96.0f * gActors[actor_index].scaleY / 2 + gActors[actor_index].posY.whole;
        bottom_bound = -96.0f * gActors[actor_index].scaleY / 2 + gActors[actor_index].posY.whole;
        
        sp8C[2] = 0x70;
        sp8C[4] = Rand() & 3;

        for (side = 0; side < 4; side++) {
            var_s0 = sp8C[4] - side;
            if (var_s0 == 0) {
                continue;
            }

            other_actor_index = MarinaEffect_SpawnParticle(actor_index, sp8C);
            if (other_actor_index == 0) {
                return;
            }

            gActors[other_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[other_actor_index].unk_188 = 0;
            gActors[other_actor_index].colorA = 0x60;
            gActors[other_actor_index].palette_18C = &PALETTE_8022D4C8[((Rand() % 5) * 0x10) + 0x10];
            switch (side) {
            case 0:
                gActors[other_actor_index].graphicIndex = GINDEX_01B6;
                VERTICES_80201B48[0].v.ob[side * 0] = temp_s2;
                VERTICES_80201B48[0].v.ob[1] = temp_s3;
                VERTICES_80201B48[0].v.ob[2] = temp_s4;
                vertex_coordinate = (left_bound - temp_s2) * 2.5 + temp_s2;
                VERTICES_80201B48[1].v.ob[0] = vertex_coordinate;
                VERTICES_80201B48[1].v.ob[1] = (top_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[1].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                VERTICES_80201B48[2].v.ob[0] = vertex_coordinate;
                VERTICES_80201B48[2].v.ob[1] = (bottom_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[2].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                if (gActors[48].unk_188_s16 < -75) {
                    gActors[other_actor_index].posZ.raw = FIXED_UNIT(896);
                }
                break;
            case 1:
                gActors[other_actor_index].graphicIndex = GINDEX_01B8;
                VERTICES_80201B48[3].v.ob[0] = temp_s2;
                VERTICES_80201B48[3].v.ob[1] = temp_s3;
                VERTICES_80201B48[3].v.ob[2] = temp_s4;
                vertex_coordinate = (right_bound - temp_s2) * 2.5 + temp_s2;
                VERTICES_80201B48[4].v.ob[0] = vertex_coordinate;
                VERTICES_80201B48[4].v.ob[1] = (top_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[4].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                VERTICES_80201B48[5].v.ob[0] = vertex_coordinate;
                VERTICES_80201B48[5].v.ob[1] = (bottom_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[5].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                break;
            case 2:
                gActors[other_actor_index].graphicIndex = GINDEX_01BA;
                VERTICES_80201B48[6].v.ob[0] = temp_s2;
                VERTICES_80201B48[6].v.ob[1] = temp_s3;
                VERTICES_80201B48[6].v.ob[2] = temp_s4;
                VERTICES_80201B48[7].v.ob[0] = (left_bound - temp_s2) * 2.5 + temp_s2;
                vertex_coordinate = (top_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[7].v.ob[1] = vertex_coordinate;
                VERTICES_80201B48[7].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                VERTICES_80201B48[8].v.ob[0] = (right_bound - temp_s2) * 2.5 + temp_s2;
                VERTICES_80201B48[8].v.ob[1] = vertex_coordinate;
                VERTICES_80201B48[8].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                break;
            case 3:
                gActors[other_actor_index].graphicIndex = GINDEX_01BC;
                VERTICES_80201B48[9].v.ob[0] = temp_s2;
                VERTICES_80201B48[9].v.ob[1] = temp_s3;
                VERTICES_80201B48[9].v.ob[2] = temp_s4;
                VERTICES_80201B48[10].v.ob[0] = (left_bound - temp_s2) * 2.5 + temp_s2;
                vertex_coordinate = (bottom_bound - temp_s3) * 2.5 + temp_s3;
                VERTICES_80201B48[10].v.ob[1] = vertex_coordinate;
                VERTICES_80201B48[10].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                VERTICES_80201B48[11].v.ob[0] = (right_bound - temp_s2) * 2.5 + temp_s2;
                VERTICES_80201B48[11].v.ob[1] = vertex_coordinate;
                VERTICES_80201B48[11].v.ob[2] = (0x80 - temp_s4) * 2.5 + temp_s4;
                if ((gActors[49].posY.whole + 100.5) < gActors[actor_index].posY.whole) {
                    gActors[other_actor_index].posZ.raw = FIXED_UNIT(896);
                }
                break;
            }
        }
    }
}

void func_80193058_6E3A78(u16 actor_index) {
    if (gActors[actor_index].stateLower != 2 && gActors[58].stateLower == 2) {
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].state = 2;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = GRAPHIC_FRAME(3004, (actor_index - 59));
        gActors[actor_index].colorA = 0;
        gActors[actor_index].state = 1;
        gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].scaleX = 0.0f;
        break;
    case 2:
        gActors[actor_index].colorA = gActors[58].colorA;
        gActors[actor_index].scaleX = gActors[58].scaleX;
        gActors[actor_index].scaleY = gActors[58].scaleY;
        gActors[actor_index].posX.raw = gActors[58].posX.raw;
        gActors[actor_index].posX.raw += FIXED_UNIT(-56.0f) * gActors[actor_index].scaleX;
        gActors[actor_index].posY.raw = gActors[58].posY.raw - gActors[actor_index].scaleY * FIXED_UNIT(16.0f);
        gActors[actor_index].posZ.raw = gActors[58].posZ.raw;
        gActors[actor_index].unk_188 = gActors[58].posZ.whole;
        gActors[actor_index].posX.raw += (TO_FIXED(actor_index * 16 - (FROM_FIXED(gActors[58].unk_184)) % 16) + FIXED_UNIT(-944)) * gActors[actor_index].scaleX;
        gActors[actor_index].graphicIndex = FROM_FIXED(gActors[58].unk_184) / 16 * 2;
        gActors[actor_index].graphicIndex += actor_index * 2 - 0x76;
        gActors[actor_index].graphicIndex %= 32;
        gActors[actor_index].graphicIndex += GINDEX_3004;
        break;
    }
}

void func_801932C0_6E3CE0(u16 actor_index) {
    s32 params[5];
    u16 new_actor_index;

    if (gActors[actor_index].unk_180_u8[0] == 0) {
        gActors[actor_index].unk_144 = 2.5f;
    }

    if (gActors[actor_index].unk_180_u8[0] == 1) {
        gActors[actor_index].unk_144 -= 0.01;
        if (gActors[actor_index].unk_144 < 0.2) {
            gActors[actor_index].unk_180_s16[0] = 0;
        }
    }

    params[0] = gActors[actor_index].posX.whole;
    params[1] = gActors[actor_index].posY.whole + 132.5;
    params[2] = gActors[actor_index].posZ.whole;
    params[4] = (s32)PALETTE_8022D528;
    if (!(gActors[actor_index].unk_18C % 4)) {
        params[3] = GINDEX_STAREFFECT;
        new_actor_index = func_8005A068(actor_index, params, TO_FIXED(Rand() * 4), gActors[actor_index].unk_144, 6);
        if (new_actor_index == 0) {
            return;
        }

        gActors[new_actor_index].scaleX += 0.1 * RandModulo(10);
        gActors[new_actor_index].scaleY *= 0.01;
        gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
        gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK15;
        gActors[new_actor_index].unk_184 = gActors[new_actor_index].posX.raw;
        gActors[new_actor_index].unk_188 = gActors[new_actor_index].posY.raw;
        gActors[new_actor_index].unk_140_f32 = 16.0f;
        gActors[new_actor_index].unk_144 = 0;
    }

    if (gActors[actor_index].unk_18C % 12 == 0) {
        Sound_PlaySfx(SFX_GLIMMER_0140);
        params[3] = GINDEX_016A;

        new_actor_index = func_80059F30(actor_index, params, gActors[actor_index].unk_144 / 2, 16);
        if (new_actor_index != 0) {
            gActors[new_actor_index].var_154 /= 2;
            gActors[new_actor_index].scaleX /= 2;
            gActors[new_actor_index].scaleY /= 2;
        }
    }
}

void func_80193594_6E3FB4(u16 actor_index) {
    s32 params[5];
    u16 new_actor_index;

    switch (gActors[actor_index].unk_180_u8[0]) {
    case 0:
        gActors[actor_index].unk_184 = 0;
        gActors[actor_index].unk_180_u8[0] = 1;
        // fallthrough
    case 1:
    case 2:
        gActors[actor_index].unk_184++;
        if (gActors[actor_index].unk_180_u8[0] == 1) {
            if (gActors[actor_index].unk_184 >= 40) {
                gActors[actor_index].unk_180_u8[0] = 2;
            }
        }
        else if (gActors[actor_index].unk_184 >= 60) {
            gActors[actor_index].unk_180_u8[1] = 0;
        }
        break;
    }

    params[0] = gActors[49].posX.whole;
    params[1] = (gActors[49].posY.whole + 132.5) + (48.0 - (gActors[49].posY.whole + 132.5)) * gActors[actor_index].unk_184 / 60.0;
    params[2] = (gActors[49].posZ.whole + 20.0) + (512.0 - (gActors[49].posZ.whole + 20.0)) * gActors[actor_index].unk_184 / 60.0;
    params[3] = GINDEX_CIRCLEEFFECT;
    params[4] = 0;

    new_actor_index = func_80059F30(actor_index, params, gActors[actor_index].unk_184 * 30.0 / 60.0, 0);
    if (new_actor_index != 0) {
        if (gActors[actor_index].unk_180_u8[0] == 1) {
            gActors[new_actor_index].colorA = gActors[actor_index].unk_184 * 4;
        }
        if (gActors[actor_index].unk_180_u8[0] == 2) {
            gActors[new_actor_index].colorA = 720 - gActors[actor_index].unk_184 * 12;
        }
    }
}

void func_801937E8_6E4208(u16 actor_index) {
}

void func_801937F0_6E4210(u16 actor_index) {
    s32 index;
    for (index = 0; index < ARRAYLENGTH(D_8019DB30_6EE550); index++) {
        D_8019DB30_6EE550[index] = PALETTE_8036CBE0[index];
    }

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].graphicIndex = 0;
    gActors[actor_index].dlist_17C = DISPLAY_LIST_8037D700;
    gActors[actor_index].unk_180 = 0;
    gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = -0xFF;
    gActors[actor_index].posX.raw = 0;
    gActors[actor_index].posY.raw = FIXED_UNIT(48);
    gActors[actor_index].posZ.raw = FIXED_UNIT(-192);
    gActors[actor_index].unk_18C = 0;
    gActors[actor_index].state = 2;
    gActors[actor_index].scaleX = gActors[actor_index].scaleY = gActors[actor_index].unk_12C = 2.5f;
}

void func_801938E4_6E4304(u16 actor_index) {
    u32 var_a1 = 1;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_180_s16[0] = var_a1;
        gActors[actor_index].var_150 = -0x100;
        gActors[actor_index].stateUpper = var_a1;
        // fallthrough
    case 1:
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].unk_180_u8[0] = var_a1;
            gActors[actor_index].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_index].state = 2;
        break;
    }
}

void func_8019398C_6E43AC(u16 actor_index) {
    D_8019D700_6EE120[gActors[actor_index].stateLower](actor_index);

    switch (gActors[actor_index].unk_180_u8[1]) {
    case 1:
        func_801932C0_6E3CE0(actor_index);
        break;
    case 2:
        func_80193594_6E3FB4(actor_index);
        break;
    }

    Palette_AdjustRgb5551Array(
        D_8019DB30_6EE550,
        PALETTE_8036CBE0,
        0x40,
        (s16)(gActors[actor_index].unk_140_s16[0] / 8),
        gActors[actor_index].unk_13C_s16[1] / 8,
        gActors[actor_index].unk_13C_s16[0] / 8
    );
    gActors[actor_index].unk_18C++;
}

void func_80193AA8_6E44C8(u16 actor_index) {
    s32 velocity_step;

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Math_AbsS32_2(gActors[actor_index].velocityX.raw / 5));
    velocity_step = Math_AbsS32_2(gActors[actor_index].velocityY.raw / 5);
    if (velocity_step < FIXED_UNIT(0.015625)) {
        velocity_step = FIXED_UNIT(0.015625);
    }
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-0.5), velocity_step);
}

void func_80193B58_6E4578(u16 actor_index, s32* position, s32 fixed_angle) {
    u16 new_actor_index;
    u16 index;
    s32 temp_s1;

    new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
    if (new_actor_index == 0) {
        return;
    }

    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
    gActors[new_actor_index].graphicIndex = GRAPHIC_FRAME(POW, 2);
    gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
    gActors[new_actor_index].var_154 = -5;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.0f;
    gActors[new_actor_index].var_110 = gActors[new_actor_index].unk_114 = 0.025f;
    gActors[new_actor_index].unk_148 = 40.0f;
    gActors[new_actor_index].var_160 = fixed_angle;
    gActors[new_actor_index].unk_118 = gActors[new_actor_index].unk_11C = -gActors[new_actor_index].var_110 / 30.0f;

    for (index = 0; index < RandModulo(2) + 4; index++) {
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
        if (new_actor_index == 0) {
            return;
        }

        gActors[new_actor_index].graphicIndex = GINDEX_BOOM1;
        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].pfn_17C = func_80193AA8_6E44C8;
        gActors[new_actor_index].unk_148 = 90.0f;
        gActors[new_actor_index].var_154 = -2;
        temp_s1 = Rand() & 0xFFFF;
        gActors[new_actor_index].velocityX.raw = (temp_s1 * FIXED_UNIT(0.03125)) * COS(RandModulo(0) * 2 + FROM_FIXED(fixed_angle));
        temp_s1 = Rand() & 0xFFFF;
        gActors[new_actor_index].velocityY.raw = (temp_s1 * FIXED_UNIT(0.03125)) * SIN(RandModulo(0) * 2 + FROM_FIXED(fixed_angle));
    }
}

void func_80193E38_6E4858(u16 actor_index) {
    s32 sp54[5];
    Actor* actor;
    u16 new_actor_index;
    f32 camera_step;
    u16* palette;
    s32 var_a3;

    actor = &gActors[actor_index];
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].posY.raw = 0;
        gActors[actor_index].posZ.raw = FIXED_UNIT(512);
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].state = 16;
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = 0;
        break;
    case 1:
        switch (gActors[actor_index].stateUpper) {
        case 0: {
            s16 position_x;

            camera_step = Math_AbsS32_2(gActors[actor_index].posX.whole - gLookatEyeX) / 30.0f;
            if (camera_step < 0.5) {
                camera_step = 0.5f;
            }

            gLookatEyeX = Math_ApproachF32(gLookatEyeX, gActors[actor_index].posX.whole, camera_step);
            position_x = gActors[actor_index].posX.whole;
            gLookatAtX = gLookatEyeX;
            if (gLookatEyeX != position_x) {
                break;
            }

            gLookatEyeX = position_x;
            gLookatAtX = gLookatEyeX;
            gActors[actor_index].posY.raw = TO_FIXED(gLookatEyeY);
            gActors[actor_index].var_150 = 0x100;
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].scaleX = 0.02f;
            gActors[actor_index].scaleY = 3.0f;
            sp54[0] = position_x;
            sp54[1] = gActors[actor_index].posY.whole;
            sp54[2] = gActors[actor_index].posZ.whole + 1;

            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp54);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK11;
                gActors[new_actor_index].graphicIndex = GINDEX_PARTICLERING;
                gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
                gActors[new_actor_index].var_154 = -4;
                gActors[new_actor_index].scaleX = 0.1f;
                gActors[new_actor_index].scaleY = 0.1f;
                gActors[new_actor_index].unk_118 = 0.01f;
                gActors[new_actor_index].unk_11C = 0.01f;
                gActors[new_actor_index].var_110 = 0.05f;
                gActors[new_actor_index].unk_114 = 0.05f;
                gActors[new_actor_index].unk_148 = 30.0f;
            }

            gActors[actor_index].var_154 = 10;
            gActors[actor_index].stateUpper = 1;
            break;
        }
        case 1:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.5f, 0.15f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.02f, 0.298f);
            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_154 = 10;
                Sound_PlaySfx(SFX_013C);
                gActors[actor_index].stateUpper = 2;
            }
            break;
        case 2:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.05f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.098f);
            gActors[actor_index].var_150 -= 0x40;
            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_150 = -150;
                gActors[actor_index].scaleX = gActors[actor_index].scaleY = 1.0f;
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
                gActors[actor_index].stateUpper = 11;
            }
            break;
        case 11:
            gActors[actor_index].var_150 += 6;
            if (gActors[actor_index].var_150 >= 0) {
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].stateUpper = 13;
            }
            break;
        }

        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = gActors[actor_index].var_150;
        if (gActors[actor_index].stateUpper == 13) {
            gActors[actor_index].state = 2;
        }
        break;
    case 2:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(2);
            gActors[actor_index].stateUpper = 1;
            break;
        case 1:
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(2), FIXED_UNIT(0.046875));
            if (gActors[actor_index].velocityY.raw == FIXED_UNIT(2)) {
                gActors[actor_index].stateUpper = 2;
            }
            break;
        case 2:
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.078125));
            if (gActors[actor_index].velocityY.raw == 0) {
                gActors[actor_index].var_150 = 0x200;
                gActors[actor_index].state = 3;
            }
            break;
        }
        break;
    case 3:
        gActors[actor_index].velocityY.raw = TO_FIXED(COS(gActors[actor_index].var_150));
        gActors[actor_index].var_150 += 10;
        break;
    case 4:
        if (!actor->stateUpper) {
            func_8005D3D8(actor_index);
            actor->stateUpper = 1;
        }
        else if (actor->stateUpper == 1 && func_8005D418(actor_index)) {
            actor->unk_170_s8[1] = 0;
            actor->unk_170_u16[1] |= 0x4000;
            actor->stateUpper = 2;
        }

        actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
        if (TO_FIXED(actor->hitboxBY1) + actor->posY.raw + actor->velocityY.raw <= FIXED_UNIT(-56)) {
            actor->velocityY.raw = 0;
            actor->posY.raw = TO_FIXED(-actor->hitboxBY1) + FIXED_UNIT(-56);
            actor->unk_170 = 3;
            func_8005A4B0(actor_index, 2.0f);
            Sound_PlaySfx(SFX_LAND_0025);
            actor->state = 5;
        }
        break;
    case 5:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state = 16;
        }
        break;
    case 6:
        gActors[actor_index].var_150 -= 2;
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].var_150 <= -0x100) {
            gActors[actor_index].var_150 = -0x100;
            gActors[actor_index].state = 16;
        }

        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = gActors[actor_index].var_150;
        break;
    case 7:
        gActors[actor_index].var_150 += 2;
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = -0x100;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].state = 16;
        }

        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = gActors[actor_index].var_150;
        break;
    case 8:
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].state = 16;
        break;
    case 9:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state = 16;
        }
        break;
    case 10:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 5;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 16;
        }
        break;
    case 11:
        gActors[actor_index].unk_170 = 7;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].state = 16;
        break;
    case 12:
        if (!actor->stateUpper) {
            actor->unk_170 = 13;
            actor->stateUpper = 1;
        }
        else if (actor->stateUpper == 1) {
            if (actor->unk_170_s8[1] == 3) {
                actor->velocityZ.raw = FIXED_UNIT(-3.4375);
                actor->velocityX.raw = -actor->posX.raw / 38;
                actor->velocityY.raw = FIXED_UNIT(4);
                actor->stateUpper = 2;
            }
        }
        else if (actor->stateUpper == 2) {
            actor->velocityY.raw -= FIXED_UNIT(0.25);
            if (TO_FIXED(actor->hitboxBY1) + actor->posY.raw + actor->velocityY.raw <= FIXED_UNIT(-56)) {
                actor->velocityY.raw = 0;
                actor->posY.raw = TO_FIXED(-actor->hitboxBY1) + FIXED_UNIT(-56);
                actor->unk_170 = 3;
                actor->rotateZ = 0.0f;
                Sound_PlaySfx(SFX_LAND_0025);
                actor->var_150 = 30;
                actor->stateUpper = 3;
            }
        }
        else if (actor->stateUpper == 3) {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.25));
            actor->velocityZ.raw = Math_ApproachS32(actor->velocityZ.raw, 0, FIXED_UNIT(0.25));
            if (--actor->var_150 <= 0) {
                actor->velocityX.raw = actor->velocityZ.raw = 0;
                actor->unk_170 = 7;
                actor->state = 16;
            }
        }
        break;
    case 13:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 8;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].state = 16;
        }
        break;
    case 14:
        if (!actor->stateUpper) {
            actor->unk_170 = 10;
            actor->var_150 = 0;
            gActors[actor_index].var_154 = -144;
            gActors[actor_index].var_158 = gLookatEyeY - 48.0f;
            gActors[actor_index].var_15C = actor->posZ.whole;
            actor->stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            func_8005D3D8(actor_index);
            actor->var_150++;
            if (Rand() & 1) {
                sp54[0] = 144;
            }
            else {
                sp54[0] = -144;
            }

            sp54[1] = RandModulo(0) + (gLookatEyeY + 64.0f);
            sp54[2] = RandModulo(0);
            var_a3 = gActors[actor_index].var_154;
            sp54[0] = var_a3;
            sp54[1] = gActors[actor_index].var_158;
            sp54[2] = gActors[actor_index].var_15C;
            var_a3 = Math_Atan2(actor->posX.whole - var_a3, actor->posY.whole - gLookatEyeY);
            sp54[4] = var_a3;

            func_80193B58_6E4578(actor_index, sp54, TO_FIXED(var_a3));

            if (!gAudioFadeMode) {
                Sound_PlaySfxAtVolPan3(SFX_008D, 0xFF, sp54[0] * 0x3F / 144 + 0x40);
            }
            else {
                Sound_PlaySfxAtVolPan3(SFX_008D, (gAudioFadeCounter << 7) / gAudioFadeDuration, sp54[0] * 0x3F / 144 + 0x40);
            }

            if (actor->stateUpper == 1) {
                gActors[actor_index].var_154 += 8;
                gActors[actor_index].var_158 += 12;
                if (actor->var_150 >= 31) {
                    gActors[actor_index].var_154 -= 0x80;
                    actor->stateUpper = 2;
                }
            }
            else if (actor->stateUpper == 2) {
                gActors[actor_index].var_154 += 4;
                gActors[actor_index].var_158 -= 16;
                if (actor->var_150 >= 56) {
                    gActors[actor_index].var_154 += 0x40;
                    gActors[actor_index].var_158 += 0xC0;
                    actor->stateUpper = 3;
                }
            }
            else if (gActors[actor_index].stateUpper == 3) {
                gActors[actor_index].var_154 -= 16;
                gActors[actor_index].var_158 += 4;
            }
        }
        break;
    case 15:
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        break;
    case 17:
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].posX.whole += 0x100;
        gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) + FIXED_UNIT(-56);
        gActors[actor_index].posZ.raw = FIXED_UNIT(48);
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].state = 16;
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = 0;
        break;
    case 18:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_FLIPPED;
            Sound_PlaySfxAtActorPanning(SFX_0071, actor_index);
            Sound_PlaySfxAtActorPanning(SFX_LUNAR_LAUGH1, actor_index);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].unk_170 = 11;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-8);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
            gActors[actor_index].stateUpper = 2;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.0625));
            if (gActors[actor_index].posY.whole < -56 - gActors[actor_index].hitboxBY1) {
                gActors[actor_index].posY.whole = -56 - gActors[actor_index].hitboxBY1;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].unk_170 = 12;
                gActors[actor_index].var_150 = 8;
                gActors[actor_index].stateUpper = 3;
            }
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            if (gActors[actor_index].velocityX.raw == 0 && --gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].stateUpper = 1;
            }
        }

        if (gActors[actor_index].posX.whole < -160) {
            Sound_StopSfx(SFX_0071);
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].posX.whole = 0x500 - gScreenPosCurrentX.whole;
            gActors[actor_index].state = 16;
        }

        if (gActiveFrames % 25 == 0) {
            sp54[0] = gActors[actor_index].posX.whole;
            sp54[0] -= 16;
            sp54[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 / 2;
            sp54[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp54);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].graphicList = D_8019D190_6EDBB0;
                gActors[new_actor_index].colorA = 0xFF;
                gActors[new_actor_index].var_154 = -1;
                gActors[new_actor_index].unk_148 = 200.0f;
                gActors[new_actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 8;
                gActors[new_actor_index].scaleX = 2.5f;
                gActors[new_actor_index].scaleY = 1.5f;
            }
        }
        break;
    case 19:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = TO_FIXED(-gActors[actor_index].hitboxBY1) + FIXED_UNIT(-56);
        gActors[actor_index].unk_170 = 4;
        gActors[actor_index].posZ.raw = 0;
        gActors[actor_index].unk_170_s8[1] = 0x7F;
        gActors[actor_index].state = 16;
        gActors[actor_index].unk_13C_s16[0] = gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].unk_140_s16[0] = 0;
        break;
    case 20:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].var_158 = 0xFF;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].var_150 = 60;
                if (gActors[actor_index].var_154 & 1) {
                    Sound_PlaySfxAtVolPan4(SFX_LUNAR_LAUGH1, gActors[actor_index].unk_158_u16[1], 0x60);
                }
                else {
                    Sound_PlaySfxAtVolPan4(SFX_LUNAR_LAUGH1, gActors[actor_index].unk_158_u16[1], 0x20);
                }
                gActors[actor_index].var_154++;
                gActors[actor_index].var_158 -= 0x20;
            }
            if (gActors[48].state == 0x45) {
                gActors[actor_index].stateUpper = 2;
            }
        }

        gScreenPosTargetY.raw += FIXED_UNIT(0.5);
        break;
    }

    if (gActors[48].unk_188_s16 == 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTY;
    }
    else {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTY;
        gActors[actor_index].rotateY = INDEX_TO_DEG(gActors[48].unk_188_s16);
    }

    func_8005D450(actor_index);

    palette = PALETTE_80329748;
    if (gActors[actor_index].graphicIndex >= GINDEX_4400) {
        palette = PALETTE_802E93F0;
    }
    if (gActors[actor_index].graphicIndex >= GINDEX_4800) {
        palette = PALETTE_802D3A90;
    }
    if (gActors[actor_index].graphicIndex >= GINDEX_4C00) {
        palette = PALETTE_803293F0;
    }
    if (gActors[actor_index].graphicIndex >= GINDEX_6000) {
        palette = PALETTE_803295B0;
    }
    if (gActors[actor_index].graphicIndex >= GINDEX_6400) {
        palette = PALETTE_803093F0;
    }

    Palette_AdjustRgb5551Array(
        palette, gActors[actor_index].palette_18C, 0x100,
        var_a3 = (s16)(gActors[actor_index].unk_140_s16[0] / 8),
        gActors[actor_index].unk_13C_s16[1] / 8,
        gActors[actor_index].unk_13C_s16[0] / 8
    );
}

void func_80194F6C_6E598C(u16 actor_index) {
    if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x38) {
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = -0x38 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    switch (gActors[actor_index].stateLower) {
    case 0x0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].hitboxBY0 = 3;
        gActors[actor_index].hitboxBY1 = -3;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        D_8019E130_6EEB50[16] = 0xFFFF;
        D_8019E130_6EEB50[17] = 0xFFFF;
        D_8019E130_6EEB50[18] = 0xFFFF;
        D_8019E130_6EEB50[19] = 0xFFFF;
        D_8019E130_6EEB50[20] = 0xFFFF;
        gActors[actor_index].palette_18C = &D_8019E130_6EEB50[16];
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].state = 1;
        gActors[actor_index].rotateX = 45.0f;
        gActors[actor_index].rotateZ = 45.0f;
        gActors[actor_index].scaleX = 1.0f;
        gActors[actor_index].scaleY = 0.5f;
        break;
    case 0x1:
        gActors[actor_index].rotateZ += 3.0f;
        if (gActors[actor_index].posY.whole >= 0x81) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0xC8;
        }
        break;
    case 0x2:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].posX.whole = 0x3C4 - gScreenPosCurrentX.whole;
            gActors[actor_index].posY.whole = 0x84;
            gActors[actor_index].hitboxBY0 = 3;
            gActors[actor_index].hitboxBY1 = -1;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].rotateZ = -7.0f;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 0.5f;
        }

        if (!(gActors[actor_index].stateUpper & 1)) {
            if (gActors[actor_index].stateUpper & 2) {
                gActors[actor_index].rotateZ += 0.5;
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.078125));
            }
            else {
                gActors[actor_index].rotateZ -= 0.5;
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2), FIXED_UNIT(0.078125));
            }

            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.0625));

            if (gActors[actor_index].velocityY.raw == FIXED_UNIT(-1)) {
                gActors[actor_index].stateUpper += 1;
            }
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.03125));

        if (gActors[actor_index].velocityY.raw == 0) {
            gActors[actor_index].stateUpper += 1;
        }

        if (gActors[actor_index].posY.whole < -0x13) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].state = 0xC8;
            gActors[actor_index].rotateZ = -20.0f;
        }
        break;
    case 0x3:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        break;
    case 0x32:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].hitboxBY0 = 3;
            gActors[actor_index].hitboxBY1 = -1;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            D_8019E130_6EEB50[16] = 0xFFFF;
            D_8019E130_6EEB50[17] = 0xFFFF;
            D_8019E130_6EEB50[18] = 0xFFFF;
            D_8019E130_6EEB50[19] = 0xFFFF;
            D_8019E130_6EEB50[20] = 0xFFFF;
            gActors[actor_index].palette_18C = &D_8019E130_6EEB50[16];
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.9375);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5.5);
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 0.5f;
            gActors[actor_index].rotateY = -20.0f;
            gActors[actor_index].rotateX = 0.0f;
        }

        gActors[actor_index].rotateX += 20.0f;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);

        if (gActors[actor_index].velocityY.raw <= 0) {
            gActors[actor_index].state = 0x33;
            gActors[actor_index].rotateZ = -5.0f;
        }
        break;
    case 0x33:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].posX.raw = FIXED_UNIT(64);
            gActors[actor_index].posY.raw = FIXED_UNIT(56);
            gActors[actor_index].posZ.raw = FIXED_UNIT(16);
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].hitboxBY0 = 3;
            gActors[actor_index].hitboxBY1 = -1;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            D_8019E130_6EEB50[16] = 0xFFFF;
            D_8019E130_6EEB50[17] = 0xFFFF;
            D_8019E130_6EEB50[18] = 0xFFFF;
            D_8019E130_6EEB50[19] = 0xFFFF;
            D_8019E130_6EEB50[20] = 0xFFFF;
            gActors[actor_index].palette_18C = &D_8019E130_6EEB50[16];
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].rotateZ = -7.0f;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 0.5f;
        }

        if (!(gActors[actor_index].stateUpper & 1)) {
            if (!(gActors[actor_index].stateUpper & 2)) {
                gActors[actor_index].rotateZ += 0.5;
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.078125));
            }
            else {
                gActors[actor_index].rotateZ -= 0.5;
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2.5), FIXED_UNIT(0.083740234375));
            }

            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.0625));

            if (gActors[actor_index].velocityY.raw == FIXED_UNIT(-1)) {
                gActors[actor_index].stateUpper += 1;
            }
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.03125));

        if (gActors[actor_index].velocityY.raw == 0) {
            gActors[actor_index].stateUpper += 1;
        }

        if ((gActors->posY.whole + 0xC) >= gActors[actor_index].posY.whole) {
            gActors[actor_index].stateUpper |= 0x80;
        }

        if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x36) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x34;
        }

        break;
    case 0x34:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        if (gActors[actor_index].velocityX.raw == 0) {
            gActors[actor_index].state = 0xC8;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80195584_6E5FA4(u16 actor_index) {
    s32 params[5];
    f64 scaled_x;

    if (gActors[58].stateLower != 2) {
        return;
    }

    if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -8) {
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = -8 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].hitboxBX0 = -0x10;
        gActors[actor_index].hitboxBX1 = 0x10;
        gActors[actor_index].hitboxBY0 = 0x10;
        gActors[actor_index].hitboxBY1 = -0xC;
        gActors[actor_index].graphicLists = D_8019D694_6EE0B4;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].scaleY = 0.75f;
        gActors[actor_index].scaleX = 0.75f;
        gActors[actor_index].state = 1;
        break;
    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.raw = FIXED_UNIT(-256);
            gActors[actor_index].posY.raw = FIXED_UNIT(-8);
            gActors[actor_index].posZ.raw = FIXED_UNIT(136);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
        }

        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 4,
            gActors[actor_index].posZ.whole - RandModulo(2),
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            3U
        );

        if (gActors[actor_index].posX.whole >= 0x21) {
            gActors[58].unk_180 = gActors[58].unk_184 + (gActors[actor_index].posX.raw / 1.5);
        }
        break;
    case 3:
        if (!gActors[actor_index].stateUpper) {
            Sound_StopSfx(SFX_CLANCER_YELL_0044);
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posZ.raw = gPlayerActor.posZ.raw - 1;
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            Sound_PlaySfxAtVol(SFX_CLANCER_OW_0067, 0xA0);
            gActors[actor_index].var_150 = 0x3C;
        }

        gActors[actor_index].posX.whole = gPlayerActor.posX.whole + 0x10;
        gActors[actor_index].posY.whole = gPlayerActor.posY.whole + 8;
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 6,
            gActors[actor_index].posZ.whole - RandModulo(2),
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            3U
        );
        break;
    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 8;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Math_AbsS32_2(gActors[actor_index].velocityX.raw / 16));
        if (gActors[actor_index].stateUpper < 4) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, Math_AbsS32_2(gActors[actor_index].velocityY.raw / 16));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-4), FIXED_UNIT(0.125));
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            Sound_PlaySfxAtVol(SFX_HIT_002D, 0xA0);
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            params[0] = gActors[actor_index].posX.whole - 8;
            params[1] = gActors[actor_index].posY.whole;
            params[2] = gActors[actor_index].posZ.whole + 1;
            params[3] = GRAPHIC_FRAME(POW, 2);
            params[4] = (s32)PALETTE_8022D4E8;
            func_80059F30(actor_index, params, 1.5f, 0x14);
            switch (gActors[actor_index].stateUpper) {
            case 1:
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
                gActors[actor_index].unk_170 = 3;
                gActors[actor_index].stateUpper = 2;
                break;
            case 2:
                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].unk_170 = 4;
                gActors[actor_index].stateUpper = 3;
                break;
            case 3:
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-6);
                gActors[actor_index].unk_170 = 5;
                gActors[actor_index].stateUpper = 4;
                break;
            case 4:
                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                gActors[actor_index].unk_170 = 7;
                gActors[actor_index].stateUpper = 5;
                break;
            }
        }
        break;
    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posZ.raw = gPlayerActor.posZ.raw - 1;
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 6,
            gActors[actor_index].posZ.whole - RandModulo(2),
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            3U
        );
        break;
    case 6:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posY.whole += FIXED_UNIT(8);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].unk_170 = 8;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].var_150 = 0xA;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].rotateZ -= 10.0f;
        if (gActors[actor_index].stateUpper == 5) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-4), FIXED_UNIT(0.03125));
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                    gActors[actor_index].rotateZ = 0.0f;
                    gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw / 2;
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].var_150 = 0x10;
                    gActors[actor_index].stateUpper = 0xA;
                }
            }
        }

        if (gActors[actor_index].stateUpper == 0xA) {
            gActors[actor_index].var_150--;
            gActors[actor_index].rotateZ = 0.0f;
            if (gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
                gActors[actor_index].stateUpper = 0xB;
            }
        }

        if (gActors[actor_index].stateUpper < 5) {
            if (gActors[actor_index].posX.whole >= -0x3F) {
                gActors[58].unk_180 = gActors[58].unk_184 + ((gActors[actor_index].posX.whole + 0x40) * (FIXED_UNIT(1) / 1.5));
            }
        }
        else if (gActors[actor_index].posX.whole > 0) {
            gActors[58].unk_180 = gActors[58].unk_184 + (gActors[actor_index].posX.raw / 1.5);
        }

        if (gActors[actor_index].stateUpper == 0xB) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-4), FIXED_UNIT(0.1875));
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                gActors[actor_index].unk_170 = 9;
                gActors[actor_index].state = 7;
            }
        }
        break;
    case 7:
        if ((!gActors[actor_index].stateUpper) && (func_8005D418(actor_index))) {
            gActors[actor_index].unk_170 = 0xA;
            Sound_PlaySfxAtVol(SFX_CLANCER_TALK_00A0, 0xA0);
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[1] < 8) {
            break;
        }

        gActors[actor_index].state = 8;
        break;
    case 8:
        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].unk_170 = 0xB;
            Sound_PlaySfxAtVol(SFX_MEOW, 0xA0);
            gActors[actor_index].stateUpper = 2;
        }
        else if ((gActors[actor_index].stateUpper == 2) && (func_8005D418(actor_index))) {
            gActors[actor_index].unk_170 = 0xC;
            gActors[actor_index].stateUpper = 3;
        }
        break;
    case 9:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0xE;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = (Rand() & 1) + 0xE;
        }

        if ((gActors[actor_index].posX.whole < (gActors[53].posX.whole + 8)) && (gActors[53].stateLower == 6)) {
            gActors[actor_index].state = 0x10;
        }
        break;
    case 10:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole -= 0x18;
            gActors[actor_index].unk_170 = 0x11;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[1] >= 6) {
            gActors[actor_index].posX.raw += FIXED_UNIT(0.5);
        }
        break;
    case 11:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x12;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-4), FIXED_UNIT(0.125));
            }
            else {
                gActors[actor_index].unk_170 = 0x13;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.1875));
            func_80033E7C(
                actor_index,
                gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + 2,
                gActors[actor_index].posZ.whole - RandModulo(2),
                FIXED_UNIT(1),
                FIXED_UNIT(8),
                3U
            );
        }

        if ((gActors[actor_index].posX.whole < (gActors[53].posX.whole + 8)) && (gActors[53].stateLower == 6)) {
            gActors[actor_index].state = 0x10;
        }
        break;
    case 12:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole -= 0x30;
            gActors[actor_index].unk_170 = 0xD;
            gActors[actor_index].stateUpper = 1;
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.09375));
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 2)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        }
        break;
    case 13:
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-3), FIXED_UNIT(0.25));
        }

        if ((!gActors[actor_index].stateUpper) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 2)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }

        if ((gActors[actor_index].stateUpper) && (gActors[actor_index].velocityY.raw != 0)) {
            gActors[actor_index].posX.raw += FIXED_UNIT(1);
        }

        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 8,
            gActors[actor_index].posZ.whole - RandModulo(2),
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            3U
        );

        if ((gActors[actor_index].posX.whole < (gActors[53].posX.whole + 8)) && (gActors[53].stateLower == 6)) {
            gActors[actor_index].state = 0x10;
        }
        break;
    case 14:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x10;
            gActors[actor_index].posX.whole -= 0x38;
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[actor_index].unk_170_s8[1] == 1) || (gActors[actor_index].unk_170_s8[1] == 2)) {
            gActors[actor_index].posX.raw += FIXED_UNIT(0.5);
        }
        break;
    case 15:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].stateUpper = 1;
        }

        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 6,
            gActors[actor_index].posZ.whole - RandModulo(2),
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            3U
        );

        if ((gActors[actor_index].posX.whole < (gActors[53].posX.whole + 0x10)) && (gActors[53].stateLower == 6)) {
            gActors[actor_index].state = 0x10;
        }
        break;
    case 16:
        if (!gActors[actor_index].stateUpper) {
            Sound_PlaySfxAtVol(SFX_HIT_002C, 0xA0);
            func_80034644(actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[53].stateUpper++;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].rotateZ += 10.0f;
        if (gActors[actor_index].posY.whole >= 0x81) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        }
        break;
    case 17:
        gActors[actor_index].posX.whole = gActors[53].posX.whole;
        gActors[actor_index].posY.whole = gActors[53].posX.whole + 0x70;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-6);
        gActors[actor_index].unk_170 = 6;
        gActors[actor_index].var_110 = 0;
        gActors[actor_index].state = actor_index - 0x24;
        break;
    case 18:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posY.whole = gActors[actor_index].posY.whole;
            gActors[actor_index].posX.whole -= 4;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posY.whole < (gActors[53].posY.whole + 0x10)) {
            gActors[53].stateUpper = 1U;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x16;
            gActors[actor_index].var_110 = 10.0f;
        }
        break;
    case 19:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole -= 0x18;
            gActors[actor_index].posY.whole += 0x50;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state = 0x16;
        }
        break;
    case 20:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole += 0x10;
            gActors[actor_index].posY.whole += 0x70;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posY.whole < (gActors[53].posY.whole + 0x1C)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            gActors[actor_index].state = 0x16;
            gActors[actor_index].var_110 = -30.0f;
        }
        break;
    case 21:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.whole -= 8;
            gActors[actor_index].posY.whole += 0xA0;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posY.whole < (gActors[53].posY.whole + 0x20)) {
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(2);
            gActors[actor_index].state = 0x16;
            gActors[actor_index].var_110 = 60.0f;
        }
        break;
    case 22:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.1875));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(1));
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].rotateZ = gActors[actor_index].var_110;
            Sound_PlaySfxAtVol(SFX_MEOW, 0xA0);
            gActors[actor_index].unk_170 = 9;
            gActors[actor_index].stateUpper = 1;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
    if (gActors[actor_index].stateLower >= 2) {
        func_8005D450(actor_index);
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
        gActors[actor_index].unk_188 = gActors[58].posZ.whole;
        gActors[actor_index].posX.raw -= gActors[58].unk_188;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        scaled_x = gActors[actor_index].posX.whole / 0.75;
        if ((scaled_x <= (-0x9C - gActors[actor_index].hitboxBX0)) || ((0x9C - gActors[actor_index].hitboxBX1) <= scaled_x) || (gActors[actor_index].posY.whole >= 0x69)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
    }
}

void func_801966B8_6E70D8(u16 actor_index) {
    s32 phase;
    Actor* actor;
    s32 position[3];
    u16 new_actor_index;
    s32 random_angle;

    actor = &gActors[actor_index];
    if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x38) {
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = -0x38 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    if (gActors[actor_index].stateLower > 0 && gActors[actor_index].stateLower < 12) {
        if (gActors[0x32].posX.whole < gActors[actor_index].posX.whole + 16) {
            gActors[actor_index].state = 12;
        }
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = TO_FIXED(-0x38 - gActors[actor_index].hitboxBY1);
        gActors[actor_index].posZ.raw = 0;
        gActors[actor_index].graphicLists = D_8019D694_6EE0B4;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].state = actor_index - 0x34;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].scaleX = 1.0f;
        break;
    case 1:
        gActors[actor_index].posX.whole -= 0x20;
        gActors[actor_index].posZ.whole += 0x30;
        gActors[actor_index].unk_170 = 0x15;
        gActors[actor_index].unk_170_s8[1] = 4;
        gActors[actor_index].unk_170_s8[0] = 4;
        gActors[actor_index].state = 8;
        break;
    case 2:
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].posX.whole += 0x18;
        gActors[actor_index].posZ.whole += 0x30;
        gActors[actor_index].unk_170 = 0x15;
        gActors[actor_index].state = 8;
        break;
    case 3:
        gActors[actor_index].var_15C = 0x60;
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].state = 9;
        break;
    case 4:
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].unk_170_s8[1] = 3;
        gActors[actor_index].state = 0xA;
        break;
    case 5:
        gActors[actor_index].var_15C = 0x80;
        gActors[actor_index].unk_170 = 0x16;
        gActors[actor_index].state = 0xB;
        break;
    case 6:
        gActors[actor_index].posX.whole -= 0x40;
        gActors[actor_index].posZ.whole += 0x50;
        gActors[actor_index].unk_170 = 0x14;
        gActors[actor_index].state = 8;
        break;
    case 7:
        gActors[actor_index].posX.whole += 8;
        gActors[actor_index].posZ.whole -= 0x60;
        gActors[actor_index].unk_170 = 0x14;
        gActors[actor_index].unk_170_s8[1] = 2;
        gActors[actor_index].state = 8;
        break;
    case 9:
        gActors[actor_index].var_15C += 2;
        phase = gActors[actor_index].var_15C;
        gActors[actor_index].posX.whole = (COS(phase) * 128.0f) + (0x400 - gScreenPosCurrentX.whole);
        gActors[actor_index].posZ.whole = SIN(phase) * 128.0f;
        if (!((phase + 0x20) & 0x200)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && (gActors[actor_index].unk_170_s8[1] == 3 || gActors[actor_index].unk_170_s8[1] == 0xB)) {
            // BUG: ? I think func_80033E7C is intended to be here
        }
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 6,
            gActors[actor_index].posZ.whole + 1,
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            6U
        );
        break;
    case 10:
        gActors[actor_index].var_15C += 2;
        phase = gActors[actor_index].var_15C;
        gActors[actor_index].posX.whole = (COS(phase) * 128.0f) + (0x400 - gScreenPosCurrentX.whole);
        gActors[actor_index].posZ.whole = SIN(phase) * 128.0f;

        if (!((phase + 0x20) & 0x200)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        break;
    case 11:
        gActors[actor_index].var_15C += 2;
        phase = gActors[actor_index].var_15C;
        if (((gActors[actor_index].var_15C + 0x50) & 0x1FF) >= 0xA1) {
            if (func_8005D370(actor_index, 0x18U) != 0) {
                if (!(gActors[actor_index].var_15C & 0x200)) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
                else {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
            }
            gActors[actor_index].posX.whole = (COS(gActors[actor_index].var_15C) * 80.0f) + (0x400 - gScreenPosCurrentX.whole);
        }
        else {
            func_8005D370(actor_index, 0x16U);
        }
        break;
    case 12:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].var_158 = gActors[actor_index].posX.raw + gScreenPosCurrentX.raw;
            gActors[actor_index].var_15C = gActors[actor_index].posZ.raw;
            gActors[actor_index].velocityX.raw = (RandModulo(0) * FIXED_UNIT(0.015625)) + FIXED_UNIT(-4);
            gActors[actor_index].velocityZ.raw = gActors[actor_index].posZ.raw / 16;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].var_150 = gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-0.5), FIXED_UNIT(0.25));
        gActors[actor_index].velocityZ.raw = Math_ApproachS32(gActors[actor_index].velocityZ.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].rotateZ += 10.0f;

        if (gActors[actor_index].posX.whole >= 0xA9) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
        }
        break;

    case 13:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.raw = gActors[actor_index].var_158 - gScreenPosCurrentX.raw;
        gActors[actor_index].posY.whole = -0x38 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.raw = gActors[actor_index].var_15C;
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        if ((gScreenPosCurrentX.whole + actor->posX.whole) >= 0x401) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_170 = 0x14;
        gActors[actor_index].state = 0x18;
        break;
    case 14:
        if (!gActors[actor_index].stateUpper) {
            position[0] = gActors[actor_index].posX.whole;
            position[1] = gActors[actor_index].posY.whole + 0x18;
            position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].graphicIndex = GINDEX_QUESTIONBUBBLE;
            gActors[new_actor_index].var_154 = 0x40;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 120.0f;
            gActors[actor_index].var_150 = 0x64;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_150 -= 1;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 0x18;
        }
        break;

    case 15:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x16;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].unk_170_s8[1] == 3) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
        }
        break;
    case 16:
        if (!gActors[actor_index].stateUpper) {
            position[0] = gActors[actor_index].posX.whole;
            position[1] = gActors[actor_index].posY.whole + 0x1C;
            position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
            gActors[new_actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].graphicIndex = GINDEX_EXCLAIMBUBBLE;
            gActors[new_actor_index].var_154 = 0x40;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 120.0f;
            gActors[actor_index].var_150 = 0x64;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_150 -= 1;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 0x18;
        }
        break;

    case 17:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x16;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_170 = 0x14;
            gActors[actor_index].state = 0x18;
        }
        break;
    case 18:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x18;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            random_angle = RandModulo(0x70);
            gActors[actor_index].velocityX.raw = COS(random_angle) * FIXED_UNIT(0.5);
            gActors[actor_index].var_150 = random_angle;
            gActors[actor_index].velocityZ.raw = SIN(random_angle) * FIXED_UNIT(0.5);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
            }
            gActors[actor_index].stateUpper = 1;
        }
        break;
    case 19:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = Rand() / 2;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 > 0) {
                break;
            }
            gActors[actor_index].unk_170 = 0x16;
            gActors[actor_index].stateUpper = 2;
        }

        if (gActiveFrames & 1) {
            gActors[actor_index].unk_170_s8[0] -= 1;
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 3)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            Sound_PlaySfx(SFX_JUMP_0024);
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.25));
        }
        break;

    case 20:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x18;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            random_angle = RandModulo(0x40);
            gActors[actor_index].velocityX.raw = COS(random_angle) * FIXED_UNIT(0.5);
            gActors[actor_index].var_150 = random_angle;
            gActors[actor_index].velocityZ.raw = SIN(random_angle) * FIXED_UNIT(0.5);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
            }
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 3) || (gActors[actor_index].unk_170_s8[1] == 0xB))) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        }

        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.25));
        }
        break;
    }

    func_8005D450(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_WARPING);
}

void func_8019726C_6E7C8C(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].posX.whole -= 8;
        gActors[actor_index].posY.raw = FIXED_UNIT(-56);
        gActors[actor_index].posZ.raw = TO_FIXED(gActorDepthBack) - FIXED_UNIT(8);
        gActors[actor_index].graphicLists = D_8019D694_6EE0B4;
        gActors[actor_index].unk_170 = 20;
        gActors[actor_index].var_150 = 0x80;
        gActors[actor_index].state = 1;
        gActors[actor_index].scaleX = gActors[actor_index].scaleY = 1.0f;
        break;
    case 1:
        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, 0, FIXED_UNIT(0.125));
        gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, FIXED_UNIT(-16), FIXED_UNIT(0.125));
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 2;
        }
        break;
    case 2:
        gActors[actor_index].unk_170_s8[0]++;
        if (!func_8005D418(actor_index)) {
            break;
        }

        func_8005D3D8(actor_index);
        if (++gActors[actor_index].var_150 % 3) {
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
    }

    func_8005D450(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80197460_6E7E80(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12;
        gActors[actor_index].hitboxBY0 = 0x10;
        gActors[actor_index].hitboxBY1 = -0xC;
        gActors[actor_index].hitboxBX0 = -0xE;
        gActors[actor_index].hitboxBX1 = 0xE;
        gActors[actor_index].var_15C = 0x80;
        gActors[actor_index].state = 1;
        break;
    case 1:
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].posX.whole = 0x3C;
        gActors[actor_index].posY.whole = -0x36 - gActors[actor_index].hitboxBY1;
        gActors[51].var_15C = gActors[52].var_15C = -0x48;
        gActors[53].var_15C = gActors[54].var_15C = -0xEC;
        gActors[actor_index].state = 5;
        break;
    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = -0x30;
            gActors[50].var_150 = 0;
            gActors[51].state = gActors[52].state = gActors[53].state = gActors[54].state = 2;
            gActors[actor_index].stateUpper = 1;
            break;
        }

        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        gActors[actor_index].rotateZ = SIN(gActors[actor_index].var_150) * 45.0f;

        if (gActors[actor_index].stateUpper == 1 && !(gActors[actor_index].var_150 & 0x3FF)) {
            gActors[51].var_154 = RandModulo(0x10) + 0x20;
            gActors[52].var_154 = RandModulo(0x10) + 0x20;
            gActors[53].var_154 = RandModulo(0x10) + 0x20;
            gActors[54].var_154 = RandModulo(0x10) + 0x20;
        }

        if (gActors[actor_index].stateUpper < 3) {
            gActors[50].var_158 = gActors[50].var_15C = -DEG_TO_INDEX(gActors[actor_index].rotateZ) * 2;
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[51].var_154 = gActors[52].var_154 = gActors[53].var_154 = gActors[54].var_154 = 8;
            gActors[50].var_150 = Math_ApproachS32(gActors[50].var_150, FIXED_UNIT(16), FIXED_UNIT(0.25));
            gActors[50].var_158 = gActors[50].var_15C = Math_ApproachS32(gActors[50].var_15C, -0xE0, FROM_FIXED(gActors[50].var_150));
        }

        gActors[51].var_15C = SIN(gActors[actor_index].var_150) * 384.0f;
        gActors[52].var_15C = SIN(gActors[actor_index].var_150) * 384.0f;
        gActors[53].var_15C = SIN(gActors[actor_index].var_150) * 256.0f;
        gActors[54].var_15C = SIN(gActors[actor_index].var_150) * 256.0f;
        break;
    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[51].var_150 = gActors[51].var_154 = gActors[52].var_150 = gActors[52].var_154 = gActors[53].var_150 = gActors[53].var_154 = gActors[54].var_150 = gActors[54].var_154 = 0xC;
            gActors[51].state = gActors[52].state = gActors[53].state = gActors[54].state = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.25);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].hitboxBY1 = -8;
            gActors[actor_index].var_154 = 0x180;
            gActors[actor_index].var_158 = 0x80;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].rotateZ += 6.5;
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x200, 4);
            gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, 2);
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 2);
            gActors[51].var_15C = gActors[52].var_15C = gActors[53].var_15C = gActors[54].var_15C = DEG_TO_INDEX(gActors[actor_index].rotateZ);
            gActors[51].var_15C -= gActors[actor_index].var_154;
            gActors[52].var_15C += gActors[actor_index].var_154;
            gActors[53].var_15C -= gActors[actor_index].var_158;
            gActors[54].var_15C += gActors[actor_index].var_158;
            if ((gActors[actor_index].velocityY.raw <= 0) && ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x35)) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
                gActors[51].state = gActors[52].state = gActors[53].state = gActors[54].state = 2;
                gActors[51].var_158 &= COS_MASK;
                gActors[52].var_158 &= COS_MASK;
                gActors[53].var_158 &= COS_MASK;
                gActors[54].var_158 &= COS_MASK;
                gActors[51].var_15C = gActors[52].var_15C = 0x380;
                gActors[53].var_15C = gActors[54].var_15C = 0x50;
                Sound_PlaySfx(SFX_0036);
                gActors[actor_index].state = 5;
            }
        }
        break;
    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[51].state = gActors[53].state = gActors[54].state = 1;
            gActors[52].state = 0x1E;
            gActors[actor_index].var_15C = 0x80;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(1);
            gActors[actor_index].var_154 = 0x180;
            gActors[actor_index].var_158 = 0x80;
            gActors[actor_index].var_110 = 10.1f;
            if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x36) {
                gActors[actor_index].posY.whole = -0x36 - gActors[actor_index].hitboxBY1;
            }
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (gActors[actor_index].posX.whole >= 0x69) {
                gActors[actor_index].posX.whole = 0x68;
                gActors[actor_index].var_110 = -gActors[actor_index].var_110;
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
            }

            if (gActors[actor_index].posX.whole < -0x68) {
                gActors[actor_index].posX.whole = -0x68;
                gActors[actor_index].var_110 = -gActors[actor_index].var_110;
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
            }

            gActors[actor_index].rotateZ += gActors[actor_index].var_110;
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.0625));
            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x200, 4);
            gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, 2);
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 2);
            gActors[51].var_15C = gActors[53].var_15C = gActors[54].var_15C = DEG_TO_INDEX(gActors[actor_index].rotateZ);
            gActors[51].var_15C -= gActors[actor_index].var_154;
            gActors[53].var_15C -= gActors[actor_index].var_158;
            gActors[54].var_15C += gActors[actor_index].var_158;

            if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -0x36) {
                gActors[actor_index].posY.whole = -0x36 - gActors[actor_index].hitboxBY1;
                gActors[actor_index].var_110 = -gActors[actor_index].var_110 * 1.05;
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw * 0.5;
                gActors[actor_index].velocityZ.raw = gActors[actor_index].velocityZ.raw * 0.5;
                if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(1)) {
                    gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = gActors[actor_index].velocityZ.raw = 0;
                    gActors[51].state = gActors[53].state = gActors[54].state = 2;
                    gActors[51].var_158 &= COS_MASK;
                    gActors[52].var_158 &= COS_MASK;
                    gActors[53].var_158 &= COS_MASK;
                    gActors[54].var_158 &= COS_MASK;
                    gActors[51].var_15C = 0x380;
                    gActors[53].var_15C = gActors[54].var_15C = 0x50;
                    gActors[actor_index].state = 5;
                }
            }
        }
        break;
    }
}

void func_80197E10_6E8830(u16 actor_index) {
    u16 parent_actor_index;
    s32 initial_x;
    s32 initial_z;
    s32 offset_x;
    s32 offset_z;
    s32 offset_y;
    s32 angle;
    s32 rotation;
    f32 temp_f0;

    parent_actor_index = gActors[actor_index].unk_14C;
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        if (actor_index == 0x32) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].state = 1;
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].var_158 = 0;
        break;
    case 1:
        gActors[actor_index].var_158 = gActors[actor_index].var_15C;
        break;
    case 2:
        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, gActors[actor_index].var_154, 2);
        gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, gActors[actor_index].var_15C, gActors[actor_index].var_150);
        break;
    case 11:
        if (gActors[actor_index].stateUpper < 10) {
            temp_f0 = Math_ApproachF32(gActors[actor_index].var_110, -8.0f, 0.5f);
            gActors[actor_index].var_110 = temp_f0;

            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(0.5), FIXED_UNIT(0.0625));
            }

            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
            if (gActors[actor_index].posY.whole < -0x36) {
                if (gActors[actor_index].stateUpper == 0) {
                    gActors[actor_index].posY.whole = -0x36;
                    gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw * 0.75;
                    gActors[actor_index].var_110 = gActors[actor_index].var_110 - 4.0f;
                    gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw * 0.75;
                    gActors[actor_index].stateUpper = 1;
                }
                else if (gActors[actor_index].stateUpper == 1) {
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].stateUpper = 0xB;
                }
            }
        }

        if (gActors[actor_index].stateUpper == 0xB) {
            gActors[actor_index].var_110 = Math_ApproachF32(gActors[actor_index].var_110, 0.0f, 0.25f);
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.01666259765625));
            if ((gActors[actor_index].var_110 == 0) && (gActors[actor_index].velocityX.raw == 0)) {
                gActors[actor_index].state = 0xC8;
            }
        }
        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        break;
    case 20:
        if (gActors[actor_index].posX.whole < (gPlayerActor.posX.whole + 0x10)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            gActors[actor_index].posY.whole = -0x36;
            gActors[actor_index].var_110 = -10.0f;
            gActors[actor_index].state = 0x15;
        }
        break;
    case 21:
        if (gActors[actor_index].posX.whole > 112) {
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].posX.whole = 0x70;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        if (gActors[actor_index].posX.whole < -112) {
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].posX.whole = -0x70;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        if (gActors[actor_index].stateUpper < 10) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.0625));
            if (gActors[actor_index].posY.whole < -0x36) {
                Sound_PlaySfx(SFX_JIGGLE_0090);
                gActors[actor_index].posY.whole = -0x36;
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].var_110 = gActors[actor_index].var_110 * 0.75;
                gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw * 0.75;
                gActors[actor_index].stateUpper++;
                if (gActors[actor_index].stateUpper == 2) {
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].stateUpper = 0xB;
                }
            }
        }

        if (gActors[actor_index].stateUpper == 0xB) {
            gActors[actor_index].var_110 = Math_ApproachF32(gActors[actor_index].var_110, 0.0f, 0.2f);
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0333251953125));
            if ((gActors[actor_index].var_110 == 0.0f) && (gActors[actor_index].velocityX.raw == 0)) {
                gActors[actor_index].state = 0xC8;
            }
        }

        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        break;
    case 30:
        if (gActors[actor_index].stateUpper == 0) {
            if (gActors[actor_index].posY.whole < -0x36) {
                gActors[actor_index].posY.whole = -0x36;
            }
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(0.5);
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].var_110 = 12.0f;
        }

        if (gActors[actor_index].posX.whole > 112) {
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].posX.whole = 0x70;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        if (gActors[actor_index].posX.whole < -112) {
            gActors[actor_index].var_110 = -gActors[actor_index].var_110;
            gActors[actor_index].posX.whole = -0x70;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
            if (gActors[actor_index].posY.whole < -0x36) {
                gActors[actor_index].posY.whole = -0x36;
                if (Math_AbsS32_2(gActors[actor_index].velocityY.raw) > FIXED_UNIT(3)) {
                    gActors[actor_index].var_110 = gActors[actor_index].var_110 * 0.75;
                    gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw * 0.75);
                    gActors[actor_index].velocityZ.raw = gActors[actor_index].velocityZ.raw * 0.75;
                }
                else {
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].velocityZ.raw = 0;
                    gActors[actor_index].state = 0x1F;
                    gActors[actor_index].var_110 = 0;
                    gActors[actor_index].rotateZ = 105.0f;
                }
            }
        }
        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        break;
    case 31:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].velocityX.raw != 0) {
            break;
        }
        gActors[actor_index].state = 0xC8;
        break;
    }

    if (gActors[actor_index].stateLower < 11) {
        gActors[actor_index].posX.raw = gActors[parent_actor_index].posX.raw;
        gActors[actor_index].posY.raw = gActors[parent_actor_index].posY.raw;
        gActors[actor_index].posZ.raw = gActors[parent_actor_index].posZ.raw;
        initial_x = gActors[actor_index].unk_170;
        initial_z = gActors[actor_index].unk_178;
        offset_x = initial_x;
        offset_z = initial_z;
        offset_y = gActors[actor_index].unk_174;
        if (gActors[actor_index].unk_11C != 0.0f) {
            offset_x = COS(gActors[49].var_15C) * initial_x;
            offset_x += initial_z * SIN(gActors[49].var_15C);
            offset_z = COS(gActors[49].var_15C) * initial_z;
            offset_z += initial_x * SIN(gActors[49].var_15C);
        }

        angle = gActors[parent_actor_index].rotateZ / DEG_PER_INDEX;
        temp_f0 = COS(angle);
        gActors[actor_index].rotateZ = angle * DEG_PER_INDEX;
        gActors[actor_index].posX.raw += offset_x * temp_f0;
        gActors[actor_index].posX.raw -= offset_y * SIN(angle);
        gActors[actor_index].posY.raw += offset_y * temp_f0;
        gActors[actor_index].posY.raw += offset_x * SIN(angle);
        gActors[actor_index].posZ.raw += offset_z;
        rotation = gActors[actor_index].var_158;
        angle += rotation;
        gActors[actor_index].rotateZ = angle * DEG_PER_INDEX;

        if (gActors[actor_index].unk_11C != 0.0f) {
            gActors[actor_index].rotateZ = rotation * DEG_PER_INDEX;
            gActors[actor_index].posY.raw += FIXED_UNIT(-12) * COS(rotation);
            gActors[actor_index].posX.raw -= FIXED_UNIT(-12) * SIN(rotation);
        }
    }
}

void func_801989E0_6E9400(u16 actor_index, u16 index) {
    s32 params[5];
    Actor* other_actor;

    gActors[actor_index].posZ.raw = FIXED_UNIT(136);
    if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) < -8) {
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = -8 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
    }

    gActors[actor_index].unk_12E_u8 = 0xFF;
    switch (gMarinaAnim.state) {
    case 0:
        D_800BE544 = 0x8000;
        gPlayerActor.unk_120 = 0.75f;
        gActors[actor_index].state = 0x39;
        gActors[actor_index].stateUpper = 0;
        gMarinaAnim.state = 2;
        // fall through
    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].posX.raw = FIXED_UNIT(-704);
            gActors[actor_index].posY.raw = FIXED_UNIT(-8);
            gPlayerData.flags |= PLAYERDATA_UNBOUND;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
            gActors[actor_index].unk_170 = 0x5B;
            gActors[actor_index].stateUpper = 1;
        }

        if (((s32)gPlayerData.frames % 5) == 0) {
            params[0] = gActors[actor_index].posX.whole;
            params[1] = -8;
            params[2] = gActors[actor_index].posZ.whole + 1;

            index = MarinaEffect_SpawnParticle(actor_index, params);
            if (index != 0) {
                gActors[index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK11;
                gActors[index].graphicIndex = GINDEX_IMPACTEFFECTA;
                gActors[index].unk_188 = gActors[58].posZ.whole;
                gActors[index].var_154 = -0xA;
                gActors[index].scaleX = 0.7f;
                gActors[index].unk_148 = 20.0f;
                gActors[index].var_110 = 0.06f;
                gActors[index].unk_114 = 0.1f;
                gActors[index].scaleY = 0.7f;
                gActors[index].unk_118 = -0.008f;
                gActors[index].unk_11C = -0.01f;
            }
        }

        if (gActors[actor_index].posX.whole < gActors[53].posX.whole - 0x30) {
            break;
        }

        gActors[actor_index].velocityX.raw = FIXED_UNIT(2.5);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].unk_170 = 0x33;
        gActors[actor_index].stateUpper = 0;
        gMarinaAnim.state = 3;
        break;
    case 3:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.09375));
        if ((!gActors[actor_index].stateUpper) && (gActors[actor_index].velocityY.raw < FIXED_UNIT(-0.5))) {
            gActors[actor_index].unk_170 = 0x3F;
            gActors[53].state = 3;
            gActors[actor_index].parentIndex = 0x35;

            index = MarinaEffect_Grab(actor_index, 1.0f);
            if (index != 0) {
                gActors[index].posX.whole = gActors[actor_index].posX.whole + 0x20;
                gActors[index].posY.whole = gActors[actor_index].posY.whole;
                gActors[index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
                gActors[index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[index].unk_188 = gActors[58].posZ.whole;
            }
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            func_8005A4B0(actor_index, 1.0f);
            Sound_PlaySfxAtVol(SFX_LAND_0025, 0xA0);
            gActors[actor_index].unk_170 = 8;
            gActors[58].unk_180 = ((gActors[actor_index].posX.whole + 0x40) * 43690.666666666664) + gActors[58].unk_180;
            gMarinaAnim.timer = 0x14;
            gMarinaAnim.state = 4;
            gActors[actor_index].stateUpper = 0;
        }

        break;
    case 4:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        if (gActors[actor_index].velocityX.raw) {
            break;
        }

        if (--gMarinaAnim.timer > 0) {
            break;
        }

        gActors[53].state = 4;
        gActors[actor_index].stateUpper = 0;
        gMarinaAnim.state = 5;
        break;
    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x6D;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (func_8005D418(actor_index)) {
                gActors[53].flags_098 |= ACTOR_FLAG3_UNK1;

                gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (func_8005D418(actor_index)) {
                gActors[actor_index].stateUpper = 0;
                gMarinaAnim.state = 6;
            }
        }

        break;
    case 6:
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.125));
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            gActors[actor_index].unk_170 = 0x6A;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (func_8005D418(actor_index)) {
                gActors[53].flags_098 |= ACTOR_FLAG3_UNK1;

                gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (func_8005D418(actor_index)) {
                gActors[actor_index].stateUpper = 0;
                gMarinaAnim.state = 7;
            }
        }

        if (gActors[actor_index].posX.whole >= -0x1F) {
            gActors[58].unk_180 = gActors[58].unk_184 + ((gActors[actor_index].posX.whole + 0x20) * 43690.666666666664);
        }
        break;
    case 7:
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.125));
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            gActors[actor_index].unk_170 = 0x6C;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (func_8005D418(actor_index)) {
                gActors[53].flags_098 |= ACTOR_FLAG3_UNK1;

                gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (func_8005D418(actor_index)) {
                gActors[actor_index].stateUpper = 0;
                gMarinaAnim.state = 8;
            }
        }

        if (gActors[actor_index].posX.whole >= -0x1F) {
            gActors[58].unk_180 = gActors[58].unk_184 + ((gActors[actor_index].posX.whole + 0x20) * 43690.666666666664);
        }
        break;
    case 8:
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.125));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }

        if (!gActors[actor_index].stateUpper) {
            if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                break;
            }
            gActors[actor_index].unk_170 = 0x69;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (func_8005D418(actor_index)) {
                gActors[53].flags_098 |= ACTOR_FLAG3_UNK1;
                gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
                gMarinaAnim.timer = 4;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (func_8005D418(actor_index) && --gMarinaAnim.timer <= 0) {
                gMarinaAnim.timer = 10;
                gActors[actor_index].stateUpper = 0;
                gMarinaAnim.state = 9;
            }
        }

        if (gActors[actor_index].posX.whole >= -31) {
            gActors[58].unk_180 = gActors[58].unk_184 + (gActors[actor_index].posX.whole + 32) * 43690.666666666664;
        }
        break;
    case 9:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        if (!gActors[actor_index].stateUpper) {
            if (gActors[actor_index].velocityX.raw) {
                break;
            }

            if (--gMarinaAnim.timer > 0) {
                break;
            }

            gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
            gActors[actor_index].unk_170 = 0x30;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (func_8005D418(actor_index)) {
                gActors[53].state = 3;
                gActors[actor_index].unk_170 = 0x3C;
                gMarinaAnim.timer = 40;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (func_8005D338(actor_index) == 0x3C && func_8005D418(actor_index)) {
                gActors[actor_index].unk_170 = 8;
            }

            if (--gMarinaAnim.timer > 0) {
                break;
            }
            
            gActors[actor_index].stateUpper = 0;
            gMarinaAnim.state = 10;
        }

        if (gActors[actor_index].posX.whole >= -31) {
            gActors[58].unk_180 = gActors[58].unk_184 + (gActors[actor_index].posX.whole + 32) * 43690.666666666664;
        }
        break;
    case 10:
        if (!gActors[actor_index].stateUpper) {
            gActors[53].state = 5;
            gActors[actor_index].unk_170 = 0x66;
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 6)) {
            Sound_PlaySfxAtVol(SFX_MARINA_YELL1, 0xA0);
        }

        index = gActors[actor_index].parentIndex;
        gActors[index].unk_104 = gActors[actor_index].posX.raw;
        gActors[index].unk_108 = gActors[actor_index].posY.raw;
        gActors[index].unk_104 += (TO_FIXED(D_800D410C[0][gActors[actor_index].unk_170_s8[1] * 2]) * gPlayerActor.unk_120);
        gActors[index].unk_108 += (TO_FIXED(D_800D410C[0][gActors[actor_index].unk_170_s8[1] * 2 + 1]) * gPlayerActor.unk_120);
        
        if (!func_8005D418(actor_index)) {
            break;
        }

        // BUG: params[0->3] (coords) are uninitialized?
        params[4] = (s32)PALETTE_8022D4E8;
        index = func_80059D88(actor_index, params, 0, 2.0f);
        if (index != 0) {
            gActors[index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[index].unk_188 = 0x80;
            gActors[index].posX.whole = gActors[actor_index].posX.whole + 0xA;
            gActors[index].posY.whole = gActors[actor_index].posY.whole;
            gActors[index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        }

        gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
        gActors[53].state = 6;
        gMarinaAnim.state = 0xB;
        gActors[actor_index].stateUpper = 0;
        break;
    case 11:
        if (gActors[actor_index].stateUpper == 1) {
            gActors[58].unk_180 = (gActors[actor_index].posX.raw / 1.5) + gActors[58].unk_180;
            gActors[actor_index].stateUpper = 2;
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (Math_AbsS32_2(gActors[58].unk_180 - gActors[58].unk_184) < FIXED_UNIT(1)) {
                gActors[actor_index].unk_170 = 0xA1;
                gMarinaAnim.timer = 0x3C;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            if (func_8005D418(actor_index)) {
                gMarinaAnim.timer--;
                if (gMarinaAnim.timer <= 0) {
                    gActors[actor_index].unk_170 = 0xA3;
                    gActors[actor_index].stateUpper = 4;
                }
            }
        }
        else if (gActors[actor_index].stateUpper == 4) {
            if (func_8005D418(actor_index)) {
                gActors[actor_index].unk_170 = 6;
                gActors[actor_index].stateUpper = 5;
            }
        }
        else if (gActors[actor_index].stateUpper == 5) {
            if (gActors[58].scaleX == 1.5) {
                SpawnParticle_SineUpNotes(
                    gActors[actor_index].posX.whole,
                    (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0),
                    gActors[actor_index].posZ.whole
                );
                gActors[actor_index].var_150 = (gActors[actor_index].posX.raw - gActors[58].posX.raw) / gPlayerActor.unk_120;
                gActors[actor_index].var_154 = (gActors[actor_index].posY.raw - gActors[58].posY.raw) / gPlayerActor.unk_120;
            }
            else {
                other_actor = &gActors[58];
                gPlayerActor.unk_120 = gActors[58].scaleX / 2;
                gActors[actor_index].posX.raw = (gActors[actor_index].var_150 * gPlayerActor.unk_120) + other_actor->posX.raw;
                gActors[actor_index].posY.raw = (gActors[actor_index].var_154 * gPlayerActor.unk_120) + other_actor->posY.raw;
                if (gPlayerActor.unk_120 < 0.05) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                    gMarinaAnim.state = 0xC;
                    gPlayerActor.unk_120 = 1.0f;
                }
            }
        }
        break;
    default:
        break;
    }

    if (gMarinaAnim.state != 12) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
        gPlayerData.unk_0C[0] = gActors[58].posZ.whole;
        gActors[actor_index].posX.raw -= gActors[58].unk_188;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;

        if (gActors[actor_index].posX.whole / 0.75 <= -136 - gActors[actor_index].hitboxBX0 || 136 - gActors[actor_index].hitboxBX1 <= gActors[actor_index].posX.whole / 0.75) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }

        for (index = 1; index < 48; index++) {
            if (gActors[index].flags & ACTOR_FLAG_ACTIVE) {
                gActors[index].posX.raw -= gActors[58].unk_188;
                gActors[index].flags |= ACTOR_FLAG_DRAW;
                if (gActors[index].posX.whole / 0.75 <= -144 - gActors[actor_index].hitboxBX0 || 144 - gActors[actor_index].hitboxBX1 <= gActors[index].posX.whole / 0.75) {
                    gActors[index].flags &= ~ACTOR_FLAG_DRAW;
                }
            }
        }
    }
}

void func_80199D30_6EA750(u16 actor_index, s32 arg1) {
    u16 fixed_actor_index = 0x31;
    s32 new_actor_index;
    s32 position[3];
    u16 other_actor_index;

    if ((gActiveFrames % 5) == 0) {
        D_800BE57C += 1;
    }

    switch (gMarinaAnim.state) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.whole = -0x38;
        gActors[actor_index].posY.whole = -0x36 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].unk_170 = 0x9F;
        gActors[actor_index].unk_170_s8[1] = 0x7F;
        gPlayerData.unk_0C[0] = 0;
        gActors[actor_index].state = 0x39;
        gMarinaAnim.state = 6;
        break;
    case 1:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 0;
            position[0] = gActors[actor_index].posX.whole - 0x10;
            position[1] = gActors[actor_index].posY.whole + 0x18;
            position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
            gActors[new_actor_index].graphicIndex = GINDEX_QUESTIONBUBBLE;
            gActors[new_actor_index].var_154 = 0x40;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 120.0f;
            gMarinaAnim.timer = 0x64;
            gActors[actor_index].stateUpper = 0xA;
        }
        else if (gActors[actor_index].stateUpper == 10) {
            if (gMarinaAnim.timer) {
                gMarinaAnim.timer--;
                break;
            }
            gActors[actor_index].unk_170 = 0xA0;
            gMarinaAnim.timer = 16;
            gActors[actor_index].stateUpper = 11;
        }
        else if (gActors[actor_index].stateUpper == 11) {
            if (func_8005D418(actor_index)) {
                if (gMarinaAnim.timer) {
                    gMarinaAnim.timer--;
                    break;
                }
                gActors[actor_index].unk_170 = 30;
                gActors[actor_index].stateUpper = 12;
            }
        }
        else if (gActors[actor_index].stateUpper == 12) {
            gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, FIXED_UNIT(96), FIXED_UNIT(1));
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[fixed_actor_index].posX.raw, FIXED_UNIT(0.1875));
            if (gActors[actor_index].var_150 >= FIXED_UNIT(80)) {
                gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[fixed_actor_index].posX.raw, FIXED_UNIT(0.75));
            }

            if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 8))) {
                Sound_PlaySfx(SFX_STEP_0053);
            }

            if ((gActors[fixed_actor_index].posX.whole - 0x28) < gActors[actor_index].posX.whole) {
                gActors[actor_index].unk_170 = 0x1E;
                gActors[actor_index].unk_170_u16[1] |= 0x4000;
                gActors[actor_index].unk_170_s8[1] = 5;
                gMarinaAnim.timer = 0x10;
                gActors[actor_index].stateUpper = 0xD;
            }
        }
        else if (gActors[actor_index].stateUpper == 13) {
            if (gMarinaAnim.timer) {
                gMarinaAnim.timer--;
                break;
            }
            gActors[actor_index].stateUpper = 14;
        }

        gActors[actor_index].var_150 = FIXED_UNIT(80);
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].parentIndex = 0x31;
            gActors[actor_index].unk_170 = 0x65;
            Sound_PlaySfx(SFX_SHAKE_00C2);
            gActors[actor_index].stateUpper = 1;
        }

        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 4)) {
            gActors[actor_index].unk_170_s8[1] = 0;
        }

        other_actor_index = gActors[actor_index].parentIndex;
        gActors[other_actor_index].unk_104 = gActors[actor_index].posX.raw + FIXED_UNIT(24);
        gActors[other_actor_index].unk_108 = gActors[actor_index].posY.raw + FIXED_UNIT(12);
        gActors[other_actor_index].unk_10C = gActors[actor_index].posZ.raw + TO_FIXED(gPlayerData.unk_0C[0]) - FIXED_UNIT(4);
        gActors[other_actor_index].unk_108 += TO_FIXED(gActors[actor_index].unk_170_s8[1] * 4);
        gActors[other_actor_index].var_150 += 0x30;
        break;
    case 3:
        other_actor_index = gActors[actor_index].parentIndex;
        if (!gActors[actor_index].stateUpper) {
            gActors[other_actor_index].var_150 &= 0x3FF;
            gActors[actor_index].unk_170 = 8;
            gActors[other_actor_index].unk_104 = gActors[actor_index].posX.raw + FIXED_UNIT(26);
            gActors[other_actor_index].unk_108 = gActors[actor_index].posY.raw + FIXED_UNIT(8);
            gActors[other_actor_index].stateUpper = 2;
            gMarinaAnim.timer = 0;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[other_actor_index].var_150 *= 0.8;
            if (gActors[other_actor_index].var_150 < 0x20) {
                gActors[other_actor_index].var_150 = 0;
                gMarinaAnim.timer++;
                if (gMarinaAnim.timer >= 0x10) {
                    gActors[other_actor_index].stateUpper = 3;
                    gMarinaAnim.timer = 0;
                    gActors[actor_index].stateUpper = 2;
                }
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gMarinaAnim.timer++;
            if (!(gMarinaAnim.timer & 3)) {
                position[0] = gActors[actor_index].posX.whole - 8;
                position[1] = gActors[actor_index].posY.whole + 0x20;
                position[2] = gActors[actor_index].posZ.whole + gPlayerData.unk_0C[0] + 1;
                other_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
                if (other_actor_index != 0) {
                    gActors[other_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
                    gActors[other_actor_index].graphicIndex = GINDEX_01E2;
                    gActors[other_actor_index].palette_18C = PALETTE_8022D528;
                    gActors[other_actor_index].scaleY = 1.5f;
                    gActors[other_actor_index].scaleX = 1.5f;
                    gActors[other_actor_index].rotateZ = 340.0f;
                    gActors[other_actor_index].unk_148 = 1.0f;
                    if (gMarinaAnim.timer >= 0x18) {
                        gActors[other_actor_index].var_154 = -4;
                        gActors[other_actor_index].unk_148 = 100.0f;
                        gActors[actor_index].stateUpper = 3;
                    }
                }
            }
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gMarinaAnim.timer = 30;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (gMarinaAnim.timer) {
                gMarinaAnim.timer--;
                break;
            }
            gActors[fixed_actor_index].state = 3;
            gActors[actor_index].unk_170 = 0x4B;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.25);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
            gActors[actor_index].stateUpper = 2;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.25));
            if (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 < -54) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].unk_170 = 42;
                gActors[actor_index].stateUpper = 3;
            }
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
            if (gActors[actor_index].velocityX.raw == 0) {
                gActors[actor_index].unk_170 = 3;
                gMarinaAnim.timer = 120;
                gActors[actor_index].stateUpper = 4;
            }
        }

        if (gActors[actor_index].stateUpper == 4) {
            if (gMarinaAnim.timer) {
                gMarinaAnim.timer--;
                break;
            }
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].stateUpper = 5;
        }

        if (gActors[actor_index].stateUpper == 5) {
            break;
        }
        break;

    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x30;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].unk_170 = 0x3C;
            gActors[0x37].rotateZ = 70.0f;
            gActors[actor_index].stateUpper = 3;
        }

        if (gActors[actor_index].stateUpper == 3) {
            gActors[0x37].posX.raw -= FIXED_UNIT(0.875);
            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].unk_170 = 8;
                gMarinaAnim.state = 6;
            }
        }

        if ((gActors[actor_index].posY.whole + 7) >= gActors[0x37].posY.whole) {
            gActors[0x37].velocityX.raw = gActors[0x37].velocityY.raw = 0;
            gActors[0x37].state = 0xC8;
        }
        break;

    case 6:
        break;
    case 7:
        if (!gActors[actor_index].stateUpper) {
            position[0] = gActors[actor_index].posX.whole - 0x10;
            position[1] = gActors[actor_index].posY.whole + 0x1C;
            position[2] = gActors[actor_index].posZ.whole + 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
            gActors[new_actor_index].graphicIndex = GINDEX_EXCLAIMBUBBLE;
            gActors[new_actor_index].var_154 = 0x40;
            gActors[new_actor_index].unk_164 = -1;
            gActors[new_actor_index].unk_148 = 120.0f;
            gActors[actor_index].var_150 = 0x64;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_150 -= 1;
        if (gActors[actor_index].var_150 <= 0) {
            gMarinaAnim.state = 6;
        }
        break;
    case 8:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_170 = 0x5B;
            Sound_PlaySfx(SFX_DASH_00AE);
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gActors[actor_index].unk_180_u8[2] = 4;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gPlayerData.unk_0C[0] = Math_ApproachS32(gPlayerData.unk_0C[0], -0x50, 1);
            if (gActors[actor_index].posX.whole >= 0x30) {
                gActors[fixed_actor_index].state = 4;
                Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gPlayerData.unk_0C[0] = Math_ApproachS32(gPlayerData.unk_0C[0], -0x50, 1);
            if (gActors[actor_index].posX.whole >= 0x40) {
                position[0] = 0x7C;
                position[1] = -0xE;
                position[2] = 0;

                other_actor_index = MarinaEffect_SpawnParticle(0x30U, position);
                if (other_actor_index != 0) {
                    gActors[other_actor_index].graphicFlags |= ACTOR_GFLAG_UNK6;
                    gActors[other_actor_index].graphicIndex = GRAPHIC_FRAME(CLANCER_PILOT_A, 1);
                    gActors[other_actor_index].unk_148 = 16384.0f;
                }

                func_80011C58(7, 2, 1, 4);
                Sound_PlaySfxAtActor2(SFX_0035, actor_index);
                gActors[actor_index].stateUpper = 4;
            }
        }
        else if (gActors[actor_index].stateUpper == 4) {
            gPlayerData.unk_0C[0] = Math_ApproachS32(gPlayerData.unk_0C[0], -0x50, 1);
            if (gActors[actor_index].posX.whole >= 0x71) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                gMarinaAnim.state = 9;
            }
        }
        break;
    }

    gActors[actor_index].posZ.whole += gPlayerData.unk_0C[0];
}

void func_8019AA24_6EB444(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 temp_v0_3;
    s32 particle_position[3];
    u16 index;
    f32 temp_f0;
    f32 camera_cosine;
    s32 var_a2_3;
    u8 state_upper;
    s32 temp_v1;

    switch (gActors[actor_index].stateLower) {
    case 0x0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = GINDEX_BLACKBAR;
        gActors[actor_index].posX.raw = -FIXED_UNIT(3);
        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
        gActors[actor_index].posY.raw = FIXED_UNIT(3);
        gActors[actor_index].posZ.raw = -FIXED_UNIT(256);
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].hitboxBX0 = -0x90;
        gActors[actor_index].hitboxBX1 = 0x90;
        gActors[actor_index].hitboxBY0 = 0x60;
        gActors[actor_index].hitboxBY1 = -0x60;
        gActors[48].unk_188 = 0;
        gMarinaAnim.anim_u32 = MARINAANIM_4;
        gPlayerData.flags |= PLAYERDATA_NOCOLLIDE;
        gLookatEyeZ = 896.0f;
        gDrawMidground = 0;
        gDrawEnvLayer = 0;
        gDrawBackground = 0;
        gActors[49].actorType = 0x2100;
        Actor_Initialize(49);
        index = 50;
        gActors[index].actorType = 0x2102;
        Actor_Initialize(index);
        gActors[index].graphicLists = D_8019D288_6EDCA8;
        gActors[index].palette_18C = D_8019DD30_6EE750;
        gActors[index].posX.raw = FIXED_UNIT(80);
        gActors[index].hitboxBY1 = -0x26;
        index = 51;
        gActors[index].actorType = 0x2102;
        Actor_Initialize(index);
        gActors[index].graphicLists = D_8019D324_6EDD44;
        gActors[index].palette_18C = D_8019DF30_6EE950;
        gActors[index].posX.raw = 0;
        gActors[index].hitboxBY1 = -0x26;
        index = 52;
        gActors[index].actorType = 0x2102;
        Actor_Initialize(index);
        gActors[index].graphicLists = D_8019D384_6EDDA4;
        gActors[index].palette_18C = D_8019E130_6EEB50;
        gActors[index].posX.raw = FIXED_UNIT(-80);
        gActors[index].hitboxBY1 = -0x2A;
        for (index = 0x35; index < 0x3A; index++) {
            gActors[index].actorType = 0x2105;
            Actor_Initialize(index);
        }

        index = 58;
        gActors[index].actorType = 0x2103;
        Actor_Initialize(index);
        for (index = 0x3B; index < 0x44; index++) {
            gActors[index].actorType = 0x2104;
            Actor_Initialize(index);
        }

        gActors[actor_index].var_150 = 0x3C;
        gActors[actor_index].state = 1;
        break;
    case 0x1:
        if (gGameState == 6) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[49].state = 3;
                gActors[actor_index].var_150 = 0x3C;
                gActors[actor_index].state = 2;
            }
        }
        break;
    case 0x2:
        if (gActors[49].state == 2) {
            if (--gActors[actor_index].var_150 <= 0) {
                func_8005DF5C(1);
                gActors[actor_index].state = 3;
                gActors[actor_index].unk_11C = 500.0f;
            }
        }
        break;
    case 0x3:
        if (func_8005DEFC() == 0) {
            temp_f0 = Math_AbsF32(gActors[actor_index].unk_11C - gLookatEyeY) / 30.0f;
            gActors[actor_index].var_110 = temp_f0;
            if (temp_f0 < 0.5) {
                gActors[actor_index].var_110 = 0.5f;
            }

            if (gActors[actor_index].var_110 > 8.0) {
                gActors[actor_index].var_110 = 8.0f;
            }

            gLookatEyeY = Math_ApproachF32(gLookatEyeY, gActors[actor_index].unk_11C, gActors[actor_index].var_110);
            gLookatAtY = gLookatEyeY;
            if (gLookatEyeY == gActors[actor_index].unk_11C) {
                gActors[actor_index].state = 4;
            }
        }
        break;
    case 0x4:
        gActors[50].state = 1;
        gActors[actor_index].var_150 = Sound_PlaySfx(SFX_LUNAR_INTRO2);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].state = 5;
        break;
    case 0x5:
        if (gActors[actor_index].var_154 == 0) {
            if (gSfxPlayerFlags[gActors[actor_index].var_150] == 0) {
                gActors[actor_index].var_150 = Sound_PlaySfx(SFX_LUNAR_INTRO1);
                gActors[actor_index].var_154 = 1;
            }
        }
        else if (gSfxPlayerFlags[gActors[actor_index].var_150] != 0) {
            break;
        }

        if (gActors[50].state == 3) {
            gActors[52].state = 1;
            gActors[actor_index].var_150 = Sound_PlaySfx(SFX_TUARUS_INTRO2);
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].state = 6;
        }
        break;
    case 0x6:
        if (gActors[actor_index].var_154 == 0) {
            if (gSfxPlayerFlags[gActors[actor_index].var_150] == 0) {
                gActors[actor_index].var_150 = Sound_PlaySfx(SFX_TUARUS_INTRO1);
                gActors[actor_index].var_154 = 1;
            }
        }
        else if (gSfxPlayerFlags[gActors[actor_index].var_150] != 0) {
            break;
        }

        if (gActors[52].state == 3) {
            gActors[51].state = 1;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].var_150 = Sound_PlaySfx(SFX_MERCO_INTRO2);
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].state = 7;
        }
        break;
    case 0x7:
        if (gActors[actor_index].var_154 == 0) {
            if (gSfxPlayerFlags[gActors[actor_index].var_150] == 0) {
                gActors[actor_index].var_150 = Sound_PlaySfx(SFX_MERCO_INTRO1);
                gActors[actor_index].var_154 = 1;
            }
        }
        else if (gSfxPlayerFlags[gActors[actor_index].var_150] != 0) {
            break;
        }

        if (gActors[51].state == 3) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[50].state = gActors[52].state = gActors[51].state = 4;
                gActors[actor_index].var_150 = 0x3C;
                Sound_PlaySfx(SFX_013D);
                gActors[actor_index].state = 8;
            }
        }
        break;
    case 0x8:
        temp_f0 = Math_AbsF32(0.0f - gLookatEyeY) / 40.0f;
        gActors[actor_index].var_110 = temp_f0;
        if (temp_f0 < 0.5) {
            gActors[actor_index].var_110 = 0.5f;
        }

        if (gActors[actor_index].var_110 > 8.0) {
            gActors[actor_index].var_110 = 8.0f;
        }

        gLookatEyeY = Math_ApproachF32(gLookatEyeY, 0.0f, gActors[actor_index].var_110);
        gLookatAtY = gLookatEyeY;
        if (gLookatEyeY == 0.0f) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[50].state = gActors[51].state = gActors[52].state = 0xA;
                Sound_PlaySfx(SFX_007A);
                func_8005DF5C(2);
                gActors[actor_index].var_150 = 0x1E;
                gActors[actor_index].state = 9;
            }
        }
        break;
    case 0x9:
        if ((gActors[50].state == 0x10) && (gActors[51].state == 0x10) && (gActors[52].state == 0x10) && (func_8005DEFC() == 0)) {
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[50].state = gActors[51].state = gActors[52].state = 8;
                func_8005DF5C(3);
                gActors[actor_index].state = 0xA;
            }
        }
        break;
    case 0xA:
        if (func_8005DEFC() == 0) {
            var_a2_3 = Sound_PlaySfxAtVol(SFX_0071, 0xAA);
            gActors[actor_index].unk_0F8.raw = var_a2_3;
            if (var_a2_3 >= 0) {
                gActors[49].unk_180_u16[0] = 2;
                gActors[50].state = gActors[51].state = gActors[52].state = 6;
                gActors[58].state = 2;
                gActors[actor_index].state = 0xB;
            }
        }
        break;
    case 0xB:
        if ((gActors[50].state == 0x10) && (gActors[51].state == 0x10)) {
            if (gActors[52].state == 0x10) {
                gActors[50].state = gActors[51].state = gActors[52].state = 9;
                gActors[actor_index].state = 0xC;
            }
        }
        break;
    case 0xC:
        if (gActors[58].stateUpper != 0) {
            if ((gActiveFrames % 3) == 0) {
                gActors[48].unk_188--;
            }

            gActors[48].unk_188 -= FIXED_UNIT(1) / 3;
            temp_v1 = gActors[48].unk_188_s16;
            gLookatEyeX = SIN(temp_v1) * 896.0f;
            gLookatEyeZ = COS(temp_v1) * 896.0f;
            if (temp_v1 < -0x7F) {
                func_8005DF5C(4);
                gMarinaAnim.anim_u32 = MARINAANIM_18;
                gActors[53].state = 2;
                gActors[actor_index].state = 0xD;
            }
        }
        break;
    case 0xD:
        if (gMarinaAnim.state == 3) {
            gActors[57].posY.raw = FIXED_UNIT(-8);
            gActors[56].posY.raw = gActors[57].posY.raw;
            gActors[55].posY.raw = gActors[57].posY.raw;
            gActors[54].posY.raw = gActors[57].posY.raw;
            temp_v1 = gPlayerActor.posX.raw + FIXED_UNIT(272);
            gActors[57].posZ.raw = FIXED_UNIT(136);
            gActors[56].posZ.raw = gActors[57].posZ.raw;
            gActors[55].posZ.raw = gActors[57].posZ.raw;
            gActors[54].posZ.raw = gActors[57].posZ.raw;
            gActors[54].flags |= ACTOR_FLAG_FLIPPED;
            gActors[55].flags |= ACTOR_FLAG_FLIPPED;
            gActors[57].posX.raw = temp_v1;
            gActors[56].posX.raw = temp_v1;
            gActors[55].posX.raw = temp_v1;
            gActors[54].posX.raw = temp_v1;
            gActors[56].flags |= ACTOR_FLAG_FLIPPED;
            gActors[57].flags |= ACTOR_FLAG_FLIPPED;
            gActors[54].state = 9;
            gActors[55].state = 0xA;
            gActors[56].state = 0xC;
            gActors[57].state = 0xE;
            gActors[actor_index].state = 0xE;
        }
        break;
    case 0xE:
        if (gActors[53].stateUpper >= 3) {
            gActors[57].state = 0xF;
            gActors[actor_index].state = 0xF;
        }
        break;
    case 0xF:
        if (gActors[53].stateUpper >= 4) {
            gActors[56].state = 0xD;
            gActors[actor_index].state = 0x10;
        }
        break;
    case 0x10:
        if (gMarinaAnim.state >= 9) {
            gActors[55].state = 0xB;
            gActors[actor_index].state = 0x11;
        }
        break;
    case 0x11:
        if (gActors[53].stateLower == 8) {
            gActors[54].state = gActors[55].state = gActors[56].state = gActors[57].state = 0x11;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x12;
        }
        break;
    case 0x12:
        if ((gActors[54].stateLower == 0x16) && (gActors[55].stateLower == 0x16) && (gActors[56].stateLower == 0x16) && (gActors[57].stateLower == 0x16)) {
            if (--gActors[actor_index].var_150 <= 0) {
                gPlayerActor.stateUpper = 1;
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].var_158 = 0x1E;
                gActors[actor_index].state = 0x13;
            }
        }
        break;
    case 0x13:
        if (func_8005DEFC() == 0) {
            if (gPlayerActor.stateUpper == 5) {
                var_a2_3 = gActors[actor_index].var_150;
                if (var_a2_3 == 0) {
                    gActors[50].state = 0xB;
                }

                var_a2_3 = gActors[actor_index].var_150;
                var_a2_3 = Math_AbsS32_2(FIXED_UNIT(256) - var_a2_3) / 32;
                gActors[actor_index].var_154 = var_a2_3;
                if (var_a2_3 < FIXED_UNIT(0.125)) {
                    gActors[actor_index].var_154 = FIXED_UNIT(0.125);
                }

                var_a2_3 = gActors[actor_index].var_154;
                if (var_a2_3 > FIXED_UNIT(4)) {
                    gActors[actor_index].var_154 = FIXED_UNIT(4);
                }

                var_a2_3 = gActors[actor_index].var_154;
                gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, FIXED_UNIT(256), var_a2_3);
                gLookatAtX = 0.0f;
                gLookatAtZ = 0.0f;
                temp_v1 = gActors[48].unk_188_s16;
                temp_f0 = SIN(temp_v1);
                camera_cosine = COS(temp_v1);
                gLookatEyeX = temp_f0 * 896.0f;
                gLookatEyeZ = camera_cosine * 896.0f;
                gLookatAtX += FROM_FIXED(gActors[actor_index].var_150) * camera_cosine;
                gLookatAtZ -= FROM_FIXED(gActors[actor_index].var_150) * temp_f0;
                gLookatEyeX += FROM_FIXED(gActors[actor_index].var_150) * camera_cosine;
                gLookatEyeZ -= FROM_FIXED(gActors[actor_index].var_150) * temp_f0;
                if (gActors[actor_index].var_150 >= FIXED_UNIT(256)) {
                    if (--gActors[actor_index].var_158 <= 0) {
                        gActors[50].state = 0xC;
                        gActors[actor_index].var_154 = 0;
                        gActors[actor_index].var_158 = 0x1E;
                        gActors[actor_index].state = 0x14;
                    }
                }
            }
        }
        break;
    case 0x14:
        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, FIXED_UNIT(160), FIXED_UNIT(0.5));
        temp_v0_3 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-160), FIXED_UNIT(1));
        gActors[actor_index].var_154 = temp_v0_3;
        var_a2_3 = gActors[actor_index].var_150;
        gLookatAtX = 0.0f;
        gLookatAtZ = 0.0f;
        temp_v1 = gActors[48].unk_188_s16;
        temp_f0 = SIN(temp_v1);
        camera_cosine = COS(temp_v1);
        gLookatEyeX = temp_f0 * 896.0f;
        gLookatEyeZ = camera_cosine * 896.0f;
        gLookatAtX += FROM_FIXED(var_a2_3) * camera_cosine;
        gLookatAtZ -= FROM_FIXED(var_a2_3) * temp_f0;
        gLookatEyeX += FROM_FIXED(var_a2_3) * camera_cosine;
        gLookatEyeZ -= FROM_FIXED(var_a2_3) * temp_f0;
        gLookatEyeX += FROM_FIXED(temp_v0_3) * temp_f0;
        gLookatEyeZ += FROM_FIXED(temp_v0_3) * camera_cosine;
        if (gActors[50].state == 0x10) {
            var_a2_3 = FIXED_UNIT(160) - var_a2_3;
            if ((var_a2_3 == 0) && (gActors[actor_index].var_154 == FIXED_UNIT(-160))) {
                if (--gActors[actor_index].var_158 <= 0) {
                    func_8005DF5C(5);
                    gActors[actor_index].state = 0x15;
                }
            }
        }
        break;
    case 0x15:
        if (func_8005DEFC() == 0) {
            func_8005DF5C(6);
            gActors[58].stateUpper = 2;
            gActors[50].state = 7;
            gActors[51].state = gActors[52].state = 0xF;
            gActors[actor_index].var_150 = FIXED_UNIT(160);
            gActors[actor_index].var_154 = FIXED_UNIT(-160);
            gActors[actor_index].var_15C = 0xB4;
            gActors[actor_index].state = 0x16;
        }
        break;
    case 0x16:
        gActors[48].unk_188 = Math_ApproachS32(gActors[48].unk_188, 0, FIXED_UNIT(128) / 180);
        gActors[actor_index].var_150 = Math_ApproachS32(gActors[actor_index].var_150, 0, FIXED_UNIT(160) / 180);
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-160), 0);
        gLookatAtX = 0.0f;
        gLookatAtZ = 0.0f;
        temp_v1 = gActors[48].unk_188_s16;
        temp_f0 = SIN(temp_v1);
        camera_cosine = COS(temp_v1);
        gLookatEyeX = temp_f0 * 896.0f;
        gLookatEyeZ = camera_cosine * 896.0f;
        gLookatAtX += FROM_FIXED(gActors[actor_index].var_150) * camera_cosine;
        gLookatAtZ -= FROM_FIXED(gActors[actor_index].var_150) * temp_f0;
        gLookatEyeX += FROM_FIXED(gActors[actor_index].var_150) * camera_cosine;
        gLookatEyeZ -= FROM_FIXED(gActors[actor_index].var_150) * temp_f0;
        gLookatEyeX += FROM_FIXED(gActors[actor_index].var_154) * temp_f0;
        gLookatEyeZ += FROM_FIXED(gActors[actor_index].var_154) * camera_cosine;
        if (--gActors[actor_index].var_15C <= 0) {
            if (gActors[58].stateLower == 1) {
                Sound_StopSfx(SFX_0071);
                gActors[actor_index].var_150 = 0x1E;
                gActors[actor_index].state = 0x17;
            }
        }
        break;
    case 0x17:
        if (func_8005DEFC() == 0) {
            func_8005DF5C(7);
            gActors[actor_index].state = 0x18;
        }
        break;
    case 0x18:
        if (func_8005DEFC() == 0) {
            gActors[50].state = 0xD;
            gActors[actor_index].var_150 = 0x5A;
            gActors[actor_index].state = 0x19;
        }
        break;
    case 0x19:
        gLookatAtY += 0.5;
        gLookatEyeY = gLookatAtY;
        if (gActors[50].state == 0x10) {
            if (--gActors[actor_index].var_150 <= 0) {
                func_8005DFC8(0);
                gActors[50].state = 0xE;
                gActors[actor_index].var_150 = 0x1E;
                gActors[actor_index].state = 0x1A;
            }
        }
        break;
    case 0x1A:
        gLookatAtY += 0.5;
        gActors[actor_index].var_150--;
        gLookatEyeY = gLookatAtY;
        if (gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(8);
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].state = 0x1B;
        }
        break;
    case 0x1B:
        gLookatAtY += 0.5;
        gLookatEyeY = gLookatAtY;

        if (func_8005DEFC() & 0x8000) {
            if (--gActors[actor_index].var_150 > 0) {
                break;
            }
            func_8005DFC8(9);
        }
        else {
            if (func_8005DEFC() != 0) {
                break;
            }
            func_8005DF5C(9);
        }

        gActors[actor_index].var_150 = 0x3C;
        gActors[actor_index].state = 0x1C;
        break;
    case 0x1C:
        gLookatAtY += 0.5;
        gLookatEyeY = gLookatAtY;
        if (func_8005DEFC() & 0x8000) {
            if (--gActors[actor_index].var_150 > 0) {
                break;
            }
            func_8005DFC8(0);
        }
        else {
            if (func_8005DEFC() != 0) {
                break;
            }
        }

        gActors[58].state = 3;
        Sound_StartFade(1, 0x3C);
        gActors[actor_index].state = 0x1D;
        break;
    case 0x1D:
        gLookatAtY += 0.5;
        gLookatEyeY = gLookatAtY;
        if (gActors[58].stateUpper == 3) {
            gMarinaAnim.anim_u32 = MARINAANIM_1;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].posZ.raw = FIXED_UNIT(640);
            gActors[actor_index].palette_18C = &D_8019E130_6EEB50[128];
            gActors[actor_index].colorA = 0xFF;
            gActors[actor_index].scaleX = 22.0f;
            gActors[actor_index].scaleY = 14.0f;

            for (index = 0x31; index < 0x44; index++) {
                gActors[index].flags = 0;
            }

            for (index = 0x90; index < 0xC0; index++) {
                gActors[index].flags = 0;
            }

            gLookatAtZ = 0.0f;
            gLookatEyeY = 0.0f;
            gLookatAtY = gLookatAtZ;
            gLookatAtX = gLookatAtY;
            gLookatEyeX = gLookatEyeY;
            gLookatEyeZ = 448.0f;
            func_8002670C(0xC);
            func_80026784(0xC);
            func_800255B4(0xC);
            func_80010C20(0xC);
            func_80026220(0xC);
            func_80026B04(9);
            func_800271B0(0xE);
            func_80025E00();
            gActors[actor_index].state = 0x1E;
        }
        break;
    case 0x1E:
        D_8013769C = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = 1;
        gDrawEnvLayer = 0;
        gDrawBackground = 1;
        gActorDepthMiddle = -0xF0;
        gActorDepthBack = -0x80;
        D_800BE57C = 2;
        D_800BE584 = -0xC;
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gScreenPosCurrentX.raw = FIXED_UNIT(1024);
        gScreenPosTargetY.raw = gScreenPosCurrentY.raw = FIXED_UNIT(376);
        index = 50;
        gActors[index].actorType = 0x2102;
        Actor_Initialize(index);
        gActors[index].graphicLists = D_8019D288_6EDCA8;
        gActors[index].palette_18C = D_8019DD30_6EE750;
        gActors[index].posX.raw = FIXED_UNIT(80);
        gActors[index].hitboxBY1 = -0x26;
        gActors[index].state = 0x11;

        for (index = 0x35; index < 0x3C; index++) {
            gActors[index].actorType = 0x2106;
            Actor_Initialize(index);
        }

        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_TO1);
        gActors[actor_index].var_150 = 0x1E;
        gActors[actor_index].state = 0x1F;
        break;
    case 0x1F:
        gActors[actor_index].var_150--;
        gActors[actor_index].colorA -= 8;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x20;
        }
        break;
    case 0x20:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(0xA);
            func_8005DF5C(0xB);
            func_8005DF5C(0xC);
            gActors[actor_index].var_150 = 0x1E;
            gActors[actor_index].state = 0x21;
        }
        break;
    case 0x21:
        if (func_8005DEFC() == 0x800C) {
            gActors[actor_index].var_150 -= 1;
        }
        else if (func_8005DEFC() == 0) {
            gActors[actor_index].var_150 -= 1;
        }

        if (gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(0);
            gActors[50].state = 0x12;
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_YUJYA);
            gActors[actor_index].state = 0x22;
        }
        break;
    case 0x22:
        state_upper = gActors[actor_index].stateUpper;
        if (!state_upper) {
            if (gActors[50].posX.whole < 0) {
                state_upper = gActors[actor_index].stateUpper = 1;
            }
        }
        else {
            gScreenPosTargetX.raw += FIXED_UNIT(-5.5);
        }

        if (state_upper == 1) {
            if (gScreenPosCurrentX.whole < 0x3C0) {
                gActors[51].actorType = 0x2108;
                Actor_Initialize(0x33);
                gActors[51].posX.raw = gActors[50].posX.raw;
                gActors[51].posY.raw = gActors[50].posY.raw + FIXED_UNIT(8);
                gActors[51].posZ.raw = gActors[50].posZ.raw + FIXED_UNIT(1);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (state_upper == 2) {
            if (gScreenPosCurrentX.whole < 0x380) {
                func_8005DF5C(0xD);
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (state_upper == 3) {
            if (gScreenPosCurrentX.whole < 0x100) {
                gActors[actor_index].state = 0x23;
            }
        }
        break;
    case 0x23:
        if (func_8005DEFC() == 0) {
            gActors[53].state = gActors[54].state = gActors[55].state = gActors[56].state = gActors[57].state = gActors[58].state = gActors[59].state = 0xD;
            gScreenPosTargetX.whole = 0x400;
            Sound_StartFade(1, 0x50);
            gActors[actor_index].state = 0x24;
        }
        break;
    case 0x24:
        if (Math_AbsS32_2(gScreenPosCurrentX.whole - 0x400) < 5) {
            func_8005DF5C(0xE);
            gActors[53].state = 0xE;
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_TO1);
            gActors[actor_index].state = 0x25;
        }
        break;
    case 0x25:
        if (gActors[53].stateLower == 0x18) {
            gActors[actor_index].state = 0x26;
        }
        break;
    case 0x26:
        if (gActors[54].stateLower == 0x18) {
            if (func_8005DEFC() == 0) {
                gActors[51].state = 2;
                gActors[actor_index].state = 0x27;
            }
        }
        break;
    case 0x27:
        if ((gActors[54].stateLower != 0xF) && (gActors[51].posY.whole < -0xB)) {
            gActors[54].state = 0xF;
        }
        if (gActors[51].stateLower == 0xC8) {
            func_8005DF5C(0x10);
            gActors[actor_index].state = 0x28;
        }
        break;
    case 0x28:
        if (func_8005DEFC() == 0) {
            gActors[53].state = 0x10;
            func_8005DF5C(0x11);
            gActors[actor_index].state = 0x29;
        }
        break;
    case 0x29:
        if (func_8005DEFC() == 0) {
            gActors[51].state = 3;
            gActors[54].unk_170 = 0x14;
            gActors[54].state = 0x18;
            gActors[53].state = 0x11;
            gActors[actor_index].state = 0x2A;
        }
        break;
    case 0x2A:
        if (func_8005DEFC() == 0) {
            gActors[55].state = 0x13;
            gActors[58].state = 0x13;
            func_8005DF5C(0x13);
            gActors[actor_index].state = 0x2B;
        }
        break;
    case 0x2B:
        if (func_8005DEFC() == 0) {
            gActors[53].state = 0x13;
            gActors[54].state = 0x13;
            gActors[56].state = 0x13;
            gActors[57].state = 0x13;
            gActors[59].state = 0x13;
            gActors[actor_index].var_150 = 0x5A;
            gActors[actor_index].state = 0x2C;
        }
        break;
    case 0x2C:
        if (func_8005DEFC() & 0x8000) {
            if (--gActors[actor_index].var_150 > 0) {
                break;
            }
        }
        else if (func_8005DEFC() != 0) {
            break;
        }

        func_8005DFC8(0);
        Sound_StartFade(1, 0x3C);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].posZ.raw = FIXED_UNIT(640);
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = &D_8019E130_6EEB50[128];
        gActors[actor_index].colorA = 0;
        gActors[actor_index].var_150 = 0x3C;
        gActors[actor_index].state = 0x2D;
        gActors[actor_index].scaleX = 22.0f;
        gActors[actor_index].scaleY = 14.0f;
        break;
    case 0x2D:
        if (gActors[actor_index].colorA == 0xFF) {
            gActors[actor_index].state = 0x2E;
            break;
        }

        gActors[actor_index].colorA += 4;
        if (gActors[actor_index].colorA >= 0xFC) {
            gActors[actor_index].colorA = 0xFF;
        }
        break;
    case 0x2E:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].posZ.raw = FIXED_UNIT(640);
        gActors[actor_index].palette_18C = &D_8019E130_6EEB50[128];
        gActors[actor_index].colorA = 0xFF;
        gActors[actor_index].scaleX = 22.0f;
        gActors[actor_index].scaleY = 14.0f;

        for (index = 0x31; index < 0x44; index++) {
            gActors[index].flags = 0;
        }

        for (index = 0x90; index < 0xC0; index++) {
            gActors[index].flags = 0;
        }

        func_800271B0(0xE);
        gLookatAtZ = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatAtX = gLookatAtY = gLookatAtZ;
        gLookatEyeX = gLookatEyeY;
        gLookatEyeZ = 448.0f;
        func_8002670C(0xE);
        func_80026784(0xE);
        func_800255B4(0xE);
        func_80010C20(0xE);
        func_80026220(7);
        func_80026494(0xE, 0);
        func_80025E00();
        func_80011B30(7, 1, 1, 5, 0xE);
        func_80011B30(0, 0, 3, 1, 0x19);
        func_80011B30(6, 0, 2, 2, 0x20);
        func_80011B30(0, 4, 3, 1, 0x24);
        func_80011B30(0, 5, 2, 1, 0x27);
        D_8013769C = D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = 1;
        gDrawEnvLayer = 1;
        gDrawBackground = 1;
        gActorDepthMiddle = 0x18;
        gActorDepthBack = -0x50;
        D_800BE584 = 0x30;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_LETHE);
        gMarinaAnim.anim_u32 = MARINAANIM_19;

        index = 49;
        gActors[index].actorType = 0x2109;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GRAPHIC_FRAME(MOCHI, 3);
        gActors[index].scaleX = 2.0f;
        gActors[index].scaleY = 2.5f;

        index = 50;
        gActors[index].actorType = 0x210A;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GINDEX_DEMOWORLD3_2804;
        gActors[index].unk_170 = FIXED_UNIT(-4);
        gActors[index].unk_174 = FIXED_UNIT(16);
        gActors[index].unk_178 = 0;
        gActors[index].unk_11C = 0.0f;
        gActors[index].unk_14C = 49.0f;

        index = 51;
        gActors[index].actorType = 0x210A;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GRAPHIC_FRAME(MOCHI, 1);
        gActors[index].scaleY = 3.0f;
        gActors[index].unk_170 = FIXED_UNIT(-2);
        gActors[index].unk_174 = FIXED_UNIT(12);
        gActors[index].unk_178 = FIXED_UNIT(-16);
        gActors[index].unk_11C = 1.0f;
        gActors[index].unk_14C = 49.0f;

        index = 52;
        gActors[index].actorType = 0x210A;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GRAPHIC_FRAME(MOCHI, 1);
        gActors[index].scaleY = 3.0f;
        gActors[index].unk_170 = FIXED_UNIT(-2);
        gActors[index].unk_174 = FIXED_UNIT(12);
        gActors[index].unk_178 = FIXED_UNIT(16);
        gActors[index].unk_11C = 2.0f;
        gActors[index].unk_14C = 49.0f;

        index = 53;
        gActors[index].actorType = 0x210A;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GINDEX_MOCHI;
        gActors[index].scaleX = 0.75f;
        gActors[index].scaleY = 3.0f;
        gActors[index].unk_170 = FIXED_UNIT(2);
        gActors[index].unk_174 = FIXED_UNIT(-12);
        gActors[index].unk_178 = FIXED_UNIT(-12);
        gActors[index].unk_11C = 1.0f;
        gActors[index].unk_14C = 49.0f;

        index = 54;
        gActors[index].actorType = 0x210A;
        Actor_Initialize(index);
        gActors[index].graphicIndex = GINDEX_MOCHI;
        gActors[index].scaleX = 0.75f;
        gActors[index].scaleY = 3.0f;
        gActors[index].unk_170 = FIXED_UNIT(2);
        gActors[index].unk_174 = FIXED_UNIT(-12);
        gActors[index].unk_178 = FIXED_UNIT(12);
        gActors[index].unk_11C = 2.0f;
        gActors[index].unk_14C = 49.0f;
        gActors[actor_index].var_150 = 0x3C;
        gActors[actor_index].state = 0x2F;
        break;
    case 0x2F:
        gActors[actor_index].var_150--;
        gActors[actor_index].colorA -= 4;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = GINDEX_BLACKBAR;
            gActors[actor_index].posX.raw = FIXED_UNIT(96);
            gActors[actor_index].posY.raw = -FIXED_UNIT(8);
            gActors[actor_index].colorB = 0;
            gActors[actor_index].colorG = 0;
            gActors[actor_index].colorR = 0;
            gActors[actor_index].posZ.raw = -FIXED_UNIT(256);
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].hitboxBX0 = -0x18;
            gActors[actor_index].hitboxBX1 = 0x18;
            gActors[actor_index].hitboxBY0 = 0x30;
            gActors[actor_index].hitboxBY1 = -0x30;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x30;
        }
        break;
    case 0x30:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(0x15);
            gActors[actor_index].state = 0x31;
        }
        break;
    case 0x31:
        if (func_8005DEFC() == 0) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 1;
            gActors[actor_index].state = 0x32;
        }
        break;
    case 0x32:
        if (gPlayerActor.stateUpper >= 0xE) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 2;
            gActors[49].state = 2;
            func_8005DF5C(0x16);
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x33;
        }
        break;
    case 0x33:
        if (func_8005DEFC() == 0) {
            var_a2_3 = gActors[actor_index].var_150;
            if (var_a2_3 != 0) {
                gActors[actor_index].var_150 = var_a2_3 - 1;
            }
            else {
                gPlayerActor.stateUpper = 0;
                gMarinaAnim.state = 3;
                gActors[actor_index].state = 0x34;
            }
        }
        break;
    case 0x34:
        if (gPlayerActor.stateUpper >= 2) {
            func_8005DF5C(0x17);
            gActors[actor_index].var_150 = 0x78;
            gActors[actor_index].state = 0x35;
        }
        break;
    case 0x35:
        gActors[actor_index].state = 0x36;
        break;
    case 0x36:
        if (func_8005DEFC() == 0) {
            gActors[49].stateUpper = 3;
            gActors[50].posZ.whole += 0x10;
            gActors[50].state = 0xB;
            gPlayerActor.stateUpper = 0;
            gActors[50].var_110 = 0.0f;
            gMarinaAnim.state = 4;
            gActors[actor_index].state = 0x37;
        }
        break;
    case 0x37:
        if (gPlayerActor.stateUpper == 2) {
            func_8005DF5C(0x19);
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].state = 0x38;
        }
        break;
    case 0x38:
        if (gActors[49].stateLower == 3) {
            if (gActors[49].velocityY.raw <= 0) {
                func_80011B30(6, 0, 2, 2, 0x20);
                gActors[55].actorType = 0x2108;
                Actor_Initialize(55);
                gActors[55].state = 0x33;
                gActors[actor_index].state = 0x39;
            }
        }
        break;
    case 0x39:
        if (gActors[55].stateUpper & 0x80) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 5;
            gActors[actor_index].state = 0x3A;
        }
        break;
    case 0x3A:
        if (gActors[55].stateLower == 0xC8) {
            gPlayerActor.stateUpper += 1;
            func_8005DF5C(0x1A);
            func_8005DF5C(0x1B);
            gActors[actor_index].state = 0x3B;
        }
        break;
    case 0x3B:
        if (func_8005DEFC() == 0) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 7;
            func_8005DF5C(0x1C);
            gActors[actor_index].state = 0x3C;
        }
        break;
    case 0x3C:
        if (gMarinaAnim.state == 6) {
            gActors[actor_index].state = 0x3D;
        }
        break;
    case 0x3D:
        if (func_8005DEFC() == 0) {
            gPlayerActor.stateUpper = 0;
            gMarinaAnim.state = 8;
            gActors[55].state = 0x33;
            gActors[55].stateUpper = 2;
            gActors[55].posZ.whole = 0x50;
            gActors[50].state = 0x14;
            gActors[actor_index].state = 0x3E;
        }
        break;
    case 0x3E:
        if (gMarinaAnim.state == 9) {
            gActors[58].actorType = 0x2107;
            Actor_Initialize(58);
            gActors[58].flags |= ACTOR_FLAG_FLIPPED;
            gActors[58].posX.raw = FIXED_UNIT(40);
            gActors[59].actorType = 0x2107;
            gActors[58].rotateZ = 15.0f;
            Actor_Initialize(0x3B);
            gActors[59].posX.raw = FIXED_UNIT(-48);
            gActors[59].rotateZ = -15.0f;
            func_8005DFC8(0);
            gActors[actor_index].var_150 = 0x12C;
            gActors[actor_index].state = 0x3F;
        }
        break;
    case 0x3F:
        if (--gActors[actor_index].var_150 <= 0) {
            // BUG: particle_position is uninitialized?
            index = MarinaEffect_SpawnParticle(actor_index, particle_position);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
                gActors[index].scaleX = 22.0f;
                gActors[index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
                gActors[index].graphicIndex = GINDEX_SOLIDSQUARE;
                gActors[index].posX.raw = -FIXED_UNIT(3);
                gActors[index].posY.raw = FIXED_UNIT(3);
                gActors[index].posZ.raw = FIXED_UNIT(640);
                gActors[index].unk_188 = 0;
                gActors[index].palette_18C = &D_8019E130_6EEB50[128];
                gActors[index].colorA = 0;
                gActors[index].var_154 = 5;
                gActors[index].scaleY = 14.0f;
                gActors[index].unk_148 = 16384.0f;
                gActors[actor_index].unk_14C = index;
                Sound_StartFade(1, 0x3C);
                gActors[actor_index].var_150 = 0x3C;
                gActors[actor_index].state = 0x40;
            }
        }
        break;
    case 0x40:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
            gActors[actor_index].posX.raw = -FIXED_UNIT(3);
            gActors[actor_index].posY.raw = FIXED_UNIT(3);
            gActors[actor_index].posZ.raw = FIXED_UNIT(640);
            gActors[actor_index].palette_18C = &D_8019E130_6EEB50[128];
            gActors[actor_index].colorA = 0xFF;
            gActors[actor_index].scaleX = 22.0f;
            gActors[actor_index].scaleY = 14.0f;
            
            index = gActors[actor_index].unk_14C;
            gActors[index].flags = 0;
            gMarinaAnim.anim_u32 = MARINAANIM_4;

            for (index = 0x31; index < 0x44; index++) {
                gActors[index].flags = 0;
            }

            for (index = 0x90; index < 0xC0; index++) {
                gActors[index].flags = 0;
            }

            func_8002670C(0xC);
            func_80026784(0xC);
            func_800255B4(0xC);
            func_80010C20(0xC);
            func_80026220(0xC);
            func_80026E60(9);
            func_80025E00();
            D_8013769C = PALETTE_80380000;
            D_801376A4 = PALETTE_80380400;
            gDrawMidground = 1;
            gDrawEnvLayer = 0;
            gDrawBackground = 1;
            gActorDepthMiddle = -0xF0;
            gActorDepthBack = -0x80;
            D_800BE57C = 2;
            D_800BE584 = -0xC;
            D_800BE544 = 0x8000;
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw = FIXED_UNIT(1024);
            gScreenPosTargetY.raw = gScreenPosCurrentY.raw = FIXED_UNIT(376);
            index = 50;
            gActors[index].actorType = 0x2102;
            Actor_Initialize(index);
            gActors[index].graphicLists = D_8019D288_6EDCA8;
            gActors[index].palette_18C = D_8019DD30_6EE750;
            gActors[index].posX.raw = FIXED_UNIT(80);
            gActors[index].hitboxBY1 = -0x26;
            gActors[index].state = 0x13;
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_POSITION);
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x41;
        }
        break;
    case 0x41:
        gActors[actor_index].var_150--;
        gActors[actor_index].colorA -= 4;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x42;
        }
        break;
    case 0x42:
        if (--gActors[actor_index].var_150 <= 0) {
            func_8005DF5C(0x1E);
            gActors[actor_index].state = 0x43;
        }
        break;
    case 0x43:
        if (func_8005DEFC() == 0) {
            gActors[50].state = 0x14;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].state = 0x44;
        }
        break;
    case 0x44:
        if (gScreenPosCurrentY.raw > FIXED_UNIT(480)) {
            var_a2_3 = actor->var_150;
            if (var_a2_3 == 0x3C) {
                Sound_StartFade(1, 0x3C);
            }

            var_a2_3 = actor->var_150;
            actor->var_150 = var_a2_3 - 1;
            if (gActors[actor_index].var_150 == 0) {
                func_8005DFC8(0);
                gAudioFadeMode = 0;
                gStageState += 1;
                gPlayerData.flags &= ~(PLAYERDATA_PAUSEACTOR | PLAYERDATA_NOCOLLIDE);
                gActors[actor_index].state = 0x45;
            }
        }
        break;
    }
}
