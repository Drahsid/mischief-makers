#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "stage_tilemap.h"

extern s16 D_800E1728[];
extern s16 D_800E173C[];
extern s16 D_800E18B4[];
extern s16 D_800E1C9C[];
extern s16 D_800E2274[];

u16 D_8019ABD0_6E2AE0;
u16 D_8019ABD2_6E2AE2;
u16 D_8019ABD4_6E2AE4;
s32 D_8019ABD8_6E2AE8;
s16 D_8019ABDC_6E2AEC;

s16 D_8019A3D0_6E22E0[] = {
//  graphic      timer
    GINDEX_690C, 5,
    GINDEX_690D, 7,
    GINDEX_690E, 10,
    GINDEX_690D, 7,
    0x0000,      0,
};

s16 D_8019A3E4_6E22F4[] = {
//  graphic      timer
    GINDEX_6803, 1,
    GINDEX_6804, 1,
    GINDEX_6805, 1,
    GINDEX_6806, 1,
    GINDEX_6807, 1,
    GINDEX_6808, 1,
    GINDEX_6809, 1,
    GINDEX_680A, 1,
    GINDEX_680B, 1,
    GINDEX_680C, 1,
    GINDEX_680D, 1,
    GINDEX_680E, 1,
    GINDEX_680F, 1,
    GINDEX_6810, 1,
    GINDEX_6811, 1,
    GINDEX_6812, 1,
    0x0000,      0,
};

s16 D_8019A428_6E2338[] = {
//  graphic      timer
    GINDEX_6812, 1,
    GINDEX_6811, 1,
    GINDEX_6810, 1,
    GINDEX_680F, 1,
    GINDEX_680E, 1,
    GINDEX_680D, 1,
    GINDEX_680C, 1,
    GINDEX_680B, 1,
    GINDEX_680A, 1,
    GINDEX_6809, 1,
    GINDEX_6808, 1,
    GINDEX_6807, 1,
    GINDEX_6806, 1,
    GINDEX_6805, 1,
    GINDEX_6804, 1,
    GINDEX_6803, 1,
    0x0000,      0,
};

s16 D_8019A46C_6E237C[] = {
//  graphic      timer
    GINDEX_6881, 1,
    GINDEX_6882, 1,
    GINDEX_6883, 1,
    GINDEX_6884, 1,
    GINDEX_6885, 1,
    GINDEX_6886, 1,
    GINDEX_6887, 1,
    GINDEX_6888, 1,
    GINDEX_6889, 1,
    GINDEX_688A, 1,
    GINDEX_688B, 1,
    GINDEX_688C, 1,
    GINDEX_688D, 1,
    GINDEX_688E, 1,
    GINDEX_688F, 1,
    GINDEX_6890, 1,
    0x0000,      0,
};

s16 D_8019A4B0_6E23C0[] = {
//  graphic      timer
    GINDEX_68B7, 6,
    GINDEX_68B8, 6,
    GINDEX_68B9, 6,
    0x0000,      0,
};

s16 D_8019A4C0_6E23D0[] = {
//  graphic      timer
    GINDEX_68B7, 6,
    GINDEX_68B8, 6,
    GINDEX_68B9, 6,
    0x0000,      0,
};

s16 D_8019A4D0_6E23E0[] = {
//  graphic      timer
    GINDEX_6852, 5,
    GINDEX_6853, 5,
    GINDEX_6854, 5,
    GINDEX_6855, 5,
    GINDEX_6856, 5,
    GINDEX_6857, 5,
    GINDEX_6858, 5,
    GINDEX_6859, 5,
    GINDEX_685A, 5,
    GINDEX_685B, 5,
    GINDEX_685C, 5,
    0x0000,      0,
};

s16 D_8019A500_6E2410[] = {
//  graphic      timer
    GINDEX_6860, 5,
    GINDEX_6861, 5,
    GINDEX_6862, 5,
    GINDEX_6863, 5,
    GINDEX_6864, 5,
    GINDEX_6865, 5,
    GINDEX_6866, 5,
    GINDEX_6867, 5,
    GINDEX_6868, 5,
    GINDEX_6869, 5,
    GINDEX_686A, 5,
    0x0000,      0,
};

s16 D_8019A530_6E2440[] = {
//  graphic      timer
    GINDEX_6818, 5,
    GINDEX_6817, 5,
    GINDEX_6816, 5,
    GINDEX_6815, 5,
    GINDEX_6814, 5,
    GINDEX_6813, 5,
    0x0000,      0,
};

s16 D_8019A54C_6E245C[] = {
//  graphic      timer
    GINDEX_6819, 5,
    GINDEX_681A, 5,
    GINDEX_681B, 5,
    GINDEX_681C, 5,
    GINDEX_681D, 5,
    GINDEX_681E, 5,
    GINDEX_681F, 5,
    GINDEX_6820, 5,
    GINDEX_6821, 5,
    GINDEX_6822, 5,
    GINDEX_6823, 5,
    GINDEX_6824, 5,
    GINDEX_6825, 5,
    GINDEX_6826, 5,
    GINDEX_6827, 5,
    GINDEX_6828, 5,
    0x0000,      0,
};

s16 D_8019A590_6E24A0[] = {
//  graphic      timer
    GINDEX_685D, 5,
    GINDEX_685E, 5,
    GINDEX_685F, 5,
    GINDEX_685E, 8,
    GINDEX_685D, 8,
    0x0000,      0,
};

s16 D_8019A5A8_6E24B8[] = {
//  graphic      timer
    GINDEX_6835, 8,
    0x0000,      0,
};

s16 D_8019A5B0_6E24C0[] = {
//  graphic      timer
    GINDEX_6837, 5,
    GINDEX_6838, 5,
    GINDEX_6800, 5,
    0x0000,      0,
};

s16 D_8019A5C0_6E24D0[] = {
//  graphic      timer
    GINDEX_68AC, 10,
    GINDEX_68AB, 10,
    GINDEX_68AA, 10,
    0x0000,      0,
};

s16 D_8019A5D0_6E24E0[] = {
//  graphic                            timer
    GINDEX_DEMOWORLD1_3000,            4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 1), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 2), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 3), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 4), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 5), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 6), 4,
    GRAPHIC_FRAME(DEMOWORLD1_3000, 7), 4,
    0x0000,                            0,
};

s16 D_8019A5F4_6E2504[] = {
//  graphic      timer
    GINDEX_6886, 4,
    GINDEX_6887, 4,
    GINDEX_6888, 4,
    GINDEX_6889, 4,
    GINDEX_6886, 4,
    0x0000,      0,
};

s16 D_8019A60C_6E251C[] = {
//  graphic      timer
    GINDEX_682C, 5,
    GINDEX_682D, 5,
    GINDEX_682E, 5,
    GINDEX_682F, 5,
    0x0000,      0,
};

s16 D_8019A620_6E2530[] = {
//  graphic      timer
    GINDEX_6839, 4,
    GINDEX_683A, 4,
    GINDEX_683B, 4,
    GINDEX_683C, 4,
    GINDEX_683D, 4,
    GINDEX_683E, 4,
    GINDEX_683F, 4,
    GINDEX_6840, 4,
    GINDEX_6841, 4,
    GINDEX_6842, 4,
    GINDEX_6843, 4,
    0x0000,      0,
};

s16 D_8019A650_6E2560[] = {
//  graphic      timer
    GINDEX_687D, 15,
    0x0000,      0,
};

s16 D_8019A658_6E2568[] = {
//  graphic      timer
    GINDEX_687C, 4,
    GINDEX_687B, 4,
    GINDEX_687A, 4,
    GINDEX_6879, 4,
    GINDEX_6878, 4,
    GINDEX_6877, 4,
    0x0000,      0,
};

s16 D_8019A674_6E2584[] = {
//  graphic      timer
    GINDEX_6903, 4,
    GINDEX_6904, 4,
    GINDEX_6905, 4,
    GINDEX_6906, 4,
    GINDEX_6907, 4,
    GINDEX_6908, 4,
    GINDEX_6909, 4,
    GINDEX_690A, 4,
    GINDEX_690B, 4,
    0x0000,      0,
};

s16 D_8019A69C_6E25AC[] = {
//  graphic      timer
    GINDEX_68D2, 5,
    GINDEX_68D3, 5,
    GINDEX_68DA, 8,
    GINDEX_68DB, 3,
    GINDEX_68DA, 16,
    GINDEX_68DB, 2,
    GINDEX_68DA, 4,
    GINDEX_68DB, 2,
    GINDEX_68DA, 8,
    GINDEX_68E1, 5,
    0x0000,      0,
};

s16 D_8019A6C8_6E25D8[] = {
//  graphic      timer
    GINDEX_1030, 5,
    GINDEX_1032, 5,
    GINDEX_1034, 5,
    GINDEX_1036, 5,
    GINDEX_1038, 5,
    GINDEX_103A, 5,
    GINDEX_103C, 5,
    GINDEX_102C, 5,
    GINDEX_102E, 5,
    0x0000,      0,
    GINDEX_68A4, 4,
    GINDEX_68A5, 4,
    GINDEX_68A6, 4,
    GINDEX_68A5, 4,
    0x0000,      0,
};

s16 D_8019A704_6E2614[] = {
//  graphic      timer
    GINDEX_6852, 4,
    GINDEX_6853, 4,
    GINDEX_6854, 4,
    GINDEX_6855, 4,
    GINDEX_6856, 4,
    GINDEX_6857, 4,
    GINDEX_6858, 4,
    GINDEX_6859, 4,
    GINDEX_685A, 4,
    GINDEX_685B, 4,
    GINDEX_685C, 4,
    0x0000,      0,
};

s16 D_8019A734_6E2644[] = {
//  graphic      timer
    GINDEX_6852, 4,
    GINDEX_6853, 8,
    GINDEX_6852, 4,
    0x0000,      0,
};

s16 D_8019A744_6E2654[] = {
//  graphic      timer
    GINDEX_68D4, 5,
    GINDEX_68D5, 5,
    GINDEX_68D6, 8,
    GINDEX_68D7, 6,
    0x0000,      0,
};

void func_80193460_6DB370(s32 arg0);
void func_801936D8_6DB5E8(s32 arg0);
u16 func_80193810_6DB720(u16 arg0);
u16 func_801938A8_6DB7B8(u16 arg0);
void func_801939B0_6DB8C0(u16 actor_index, s16 x_offset, s16 y_offset);
void func_80193B08_6DBA18(u16 actor_index, s16 x_offset, s16 y_offset);
void func_80193E28_6DBD38(u16 actor_index, s16 x_offset, s16 y_offset);

void func_80192100_6DA010(s32 arg0) {
}

void func_80192108_6DA018(s32 arg0) {
}

void func_80192110_6DA020(s32 arg0) {
}

void func_80192118_6DA028(u16 actor_index) {
    u16 new_actor_index;
    s32 state;

    gActors[0].posX.whole = gActors[0].posY.whole = 0;

    if (gButtonHold & gButton_B) {
        D_8019ABDC_6E2AEC |= 1;
    }

    if (gButtonHold & gButton_A) {
        D_8019ABDC_6E2AEC |= 2;
    }

    D_800BE57C += 1;
    state = gActors[actor_index].state;
    switch (state) {
    case 0:
        gActors[actor_index].state = state + 1;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FLIPPED;
        D_8019ABD0_6E2AE0 = actor_index;
        D_8019ABDC_6E2AEC = 0;
        gMarinaAnim.anim_u32 = MARINAANIM_4;
        D_800BE584 = 0x3C;
        func_80193460_6DB370(actor_index);
        break;
    case 1:
        gActors[actor_index].state = state + 1;
        D_8019ABD2_6E2AE2 = func_80193810_6DB720(actor_index);
        new_actor_index = func_801938A8_6DB7B8(actor_index);
        gActors[new_actor_index].var_150 = gActors[new_actor_index].var_154 = 0;
        D_8019ABD4_6E2AE4 = new_actor_index;
        gActors[actor_index].var_150 = 0x78;
        break;
    case 2:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            func_8005DF5C(1);
        }
        break;
    case 3:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2808;
            gActors[D_8019ABD4_6E2AE4].posX.whole += 6;
            gActors[D_8019ABD4_6E2AE4].posY.whole += 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (--gActors[D_8019ABD4_6E2AE4].var_150 <= 0) {
            gActors[D_8019ABD4_6E2AE4].graphicIndex = gActors[D_8019ABD4_6E2AE4].var_154 ? GINDEX_DEMOWORLD1_2806 : GINDEX_DEMOWORLD1_2804;
            gActors[D_8019ABD4_6E2AE4].var_154++;
            gActors[D_8019ABD4_6E2AE4].var_154 &= 1;
            gActors[D_8019ABD4_6E2AE4].var_150 = 5;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].posX.whole -= 2;
            gActors[D_8019ABD4_6E2AE4].posY.whole -= 1;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_280A;
            func_801939B0_6DB8C0(D_8019ABD4_6E2AE4, -8, -4);
            gActors[actor_index].var_150 = 0x3C;
        }
        break;
    case 5:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2808;
            gActors[actor_index].var_150 = 0x1E;
        }
        break;
    case 6:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            func_8005DF5C(2);
        }
        break;
    case 7:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2808;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (--gActors[D_8019ABD4_6E2AE4].var_150 <= 0) {
            gActors[D_8019ABD4_6E2AE4].graphicIndex = gActors[D_8019ABD4_6E2AE4].var_154 ? GINDEX_DEMOWORLD1_280A : GINDEX_DEMOWORLD1_2808;
            gActors[D_8019ABD4_6E2AE4].var_154++;
            gActors[D_8019ABD4_6E2AE4].var_154 &= 1;
            gActors[D_8019ABD4_6E2AE4].var_150 = 5;
        }
        break;
    case 8:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0xA;
            Sound_PlaySfxAtPan(SFX_CLANCER_LAUGH_0049, 0x70);
        }
        break;
    case 9:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            func_80193B08_6DBA18(D_8019ABD4_6E2AE4, 8, 8);
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_280A;
            gActors[actor_index].var_150 = 0x1E;
        }
        break;
    case 10:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            gActors[D_8019ABD4_6E2AE4].posX.whole -= 4;
            gActors[actor_index].var_150 = 4;
        }
        break;
    case 11:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_281A;
            gActors[actor_index].var_150 = 4;
        }
        break;
    case 12:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            func_8005DF5C(3);
            gActors[actor_index].var_150 = 0;
        }
        break;
    case 13:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            gActors[actor_index].var_150 = 0x3C;
        }
        else if (--gActors[D_8019ABD4_6E2AE4].var_150 <= 0) {
            gActors[D_8019ABD4_6E2AE4].graphicIndex = gActors[D_8019ABD4_6E2AE4].var_154 ? GINDEX_DEMOWORLD1_2806 : GINDEX_DEMOWORLD1_2804;
            gActors[D_8019ABD4_6E2AE4].var_154++;
            gActors[D_8019ABD4_6E2AE4].var_154 &= 1;
            gActors[D_8019ABD4_6E2AE4].var_150 = 5;
        }
        break;
    case 14:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            func_80011B30(7, 1, 1, 5, 9);
            func_80011B30(6, 0, 2, 2, 0x20);
            func_80011B30(0, 0, 3, 1, 0x19);
            Sound_PlaySfxAtPan(SFX_0035, 0x40);
            gActors[actor_index].var_150 = 0x14;
        }
        break;
    case 15:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            func_80193E28_6DBD38(D_8019ABD4_6E2AE4, 0, 0x20);
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2806;
            gActors[actor_index].var_150 = 0x3C;
        }
        break;
    case 16:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            func_8005DF5C(4);
        }
        break;
    case 17:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            gActors[actor_index].var_150 = 0x3C;
        }
        else if (--gActors[D_8019ABD4_6E2AE4].var_150 <= 0) {
            gActors[D_8019ABD4_6E2AE4].graphicIndex = gActors[D_8019ABD4_6E2AE4].var_154 ? GINDEX_DEMOWORLD1_2806 : GINDEX_DEMOWORLD1_2804;
            gActors[D_8019ABD4_6E2AE4].var_154++;
            gActors[D_8019ABD4_6E2AE4].var_154 &= 1;
            gActors[D_8019ABD4_6E2AE4].var_150 = 5;
        }
        break;
    case 18:
        gActors[actor_index].state = state + 1;
        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x1903;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].posX.whole = 0x58;
            gActors[new_actor_index].posY.whole = -0x22;
            gActors[new_actor_index].posZ.whole = -0xC;
            gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[new_actor_index].graphicTimer = 1;
        }

        D_8019ABD8_6E2AE8 = 0;
        gActors[actor_index].var_150 = 0x78;
        break;

    case 19:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_281A;
            gActors[actor_index].var_150 = 0x10;
        }

        if (gActors[actor_index].var_150 == 0x3C) {
            func_80011C58(0, 0, 3, 1);
            func_80011C58(6, 0, 2, 2);
            func_801936D8_6DB5E8(actor_index);
        }
        break;
    case 20:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            gActors[actor_index].var_150 = 0x10;
        }
        break;
    case 21:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2808;
            gActors[actor_index].var_150 = 0x78;
        }
        break;
    case 22:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_280A;
            D_8019ABD8_6E2AE8 = 1;
            gActors[actor_index].var_150 = 0x3C;
        }
        break;
    case 23:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 24:
        gActors[actor_index].state = state + 1;

        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x1904;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].posX.whole = -0x44;
            gActors[new_actor_index].posY.whole = 0x52;
            gActors[new_actor_index].posZ.whole = 0x7E;
            gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
            gActors[new_actor_index].graphicTimer = 1;
        }

        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x190D;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].posX.whole = 0x58;
            gActors[new_actor_index].posY.whole = -0x22;
            gActors[new_actor_index].posZ.whole = -0xC;
            gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[new_actor_index].graphicTimer = 1;
        }

        gActors[actor_index].var_150 = 0xA;
        break;

    case 25:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1905;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x58;
                gActors[new_actor_index].posY.whole = -0x22;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0xA;
        }
        break;

    case 26:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1906;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x46;
                gActors[new_actor_index].posY.whole = 0x52;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
                gActors[new_actor_index].graphicTimer = 1;
            }

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x190E;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x58;
                gActors[new_actor_index].posY.whole = -0x22;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
                gActors[new_actor_index].graphicTimer = 1;
            }

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x190F;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].posX.whole = -0x44;
                gActors[new_actor_index].posY.whole = 0x52;
                gActors[new_actor_index].posZ.whole = 0x7E;
                gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
                gActors[new_actor_index].graphicTimer = 1;
            }
        }
        break;

    case 27:
        if (D_8019ABD8_6E2AE8 & 4) {
            gActors[actor_index].state = state + 1;
            D_8019ABD8_6E2AE8 &= ~4;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2804;
            gActors[D_8019ABD4_6E2AE4].posY.whole -= 1;
            gActors[D_8019ABD4_6E2AE4].rotateZ = 320.0f;
            Sound_PlaySfx(SFX_THEO_GRUNT2);
        }
        break;
    case 28:
        if (D_8019ABD8_6E2AE8 & 4) {
            gActors[actor_index].state = state + 1;
            D_8019ABD8_6E2AE8 &= ~4;
            gActors[D_8019ABD4_6E2AE4].graphicIndex = GINDEX_DEMOWORLD1_2806;
            gActors[D_8019ABD4_6E2AE4].rotateZ = 310.0f;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1907;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x46;
                gActors[new_actor_index].posY.whole = 0x52;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
                gActors[new_actor_index].graphicTimer = 1;
            }

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1909;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].posX.whole = -0x44;
                gActors[new_actor_index].posY.whole = 0x52;
                gActors[new_actor_index].posZ.whole = 0x7E;
                gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0x3C;
        }
        break;

    case 29:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x190A;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x58;
                gActors[new_actor_index].posY.whole = -0x22;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0x3C;
        }
        break;

    case 30:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x190B;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x58;
                gActors[new_actor_index].posY.whole = -0x22;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0xC;
        }
        break;

    case 31:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x190C;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].posX.whole = -0x44;
                gActors[new_actor_index].posY.whole = 0x52;
                gActors[new_actor_index].posZ.whole = 0x7E;
                gActors[new_actor_index].graphicList = D_8019A5A8_6E24B8;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0x168;
        }
        break;

    case 32:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1908;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].posX.whole = 0x58;
                gActors[new_actor_index].posY.whole = -0x22;
                gActors[new_actor_index].posZ.whole = -0xC;
                gActors[new_actor_index].graphicList = D_8019A3E4_6E22F4;
                gActors[new_actor_index].graphicTimer = 1;
            }

            gActors[actor_index].var_150 = 0xA;
        }
        break;

    case 33:
        if (D_8019ABD8_6E2AE8 & 0x1000) {
            gActors[actor_index].state = state + 1;
            gActors[D_8019ABD2_6E2AE2].flags = ACTOR_FLAG_NONE;
            gActors[D_8019ABD2_6E2AE2].graphicFlags = ACTOR_GFLAG_NONE;
            gActors[D_8019ABD4_6E2AE4].flags = ACTOR_FLAG_NONE;
            gActors[D_8019ABD4_6E2AE4].graphicFlags = ACTOR_GFLAG_NONE;
        }
        break;
    case 34:
        if (D_8019ABD8_6E2AE8 == -1) {
            gStageState = 3;
        }
        break;
    }
}

void func_80193448_6DB358(s32 arg0) {
}

void func_80193450_6DB360(s32 arg0) {
}

void func_80193458_6DB368(s32 arg0) {
}

void func_80193460_6DB370(s32 arg0) {
    u16 new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1913;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = -112;
        gActors[new_actor_index].posY.whole = 96;
        gActors[new_actor_index].posZ.whole = -144;
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 50;
        gActors[new_actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[new_actor_index].scaleX = 8.0f;
        gActors[new_actor_index].scaleY = 3.0f;
    }

    new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1913;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = 80;
        gActors[new_actor_index].posY.whole = 96;
        gActors[new_actor_index].posZ.whole = -144;
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 50;
        gActors[new_actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[new_actor_index].scaleX = 7.0f;
        gActors[new_actor_index].scaleY = 2.0f;
    }

    new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1913;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = -104;
        gActors[new_actor_index].posY.whole = -72;
        gActors[new_actor_index].posZ.whole = -144;
        gActors[new_actor_index].colorR = 90;
        gActors[new_actor_index].colorG = 60;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX = 4.0f;
    }

    func_80011B30(7, 1, 1, 5, 0xE);
    func_80011B30(0, 0, 3, 1, 0x19);
    func_80011B30(6, 0, 2, 2, 0x20);
    func_80011B30(0, 4, 3, 1, 0x24);
    func_80011B30(0, 5, 2, 1, 0x27);
}

void func_801936D8_6DB5E8(s32 arg0) {
    u16 new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1913;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = 80;
        gActors[new_actor_index].posY.whole = 76;
        gActors[new_actor_index].posZ.raw = 1;
        gActors[new_actor_index].graphicIndex = GINDEX_DEMOWORLD1_3016;
        gActors[new_actor_index].colorA = 255;
    }

    new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1913;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = -111;
        gActors[new_actor_index].posY.whole = 84;
        gActors[new_actor_index].posZ.raw = FIXED_UNIT(127);
        gActors[new_actor_index].graphicIndex = GINDEX_DEMOWORLD1_3014;
        gActors[new_actor_index].unk_188 = 1;
        gActors[new_actor_index].colorA = 255;
        gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX = 1.0f;
    }
}

u16 func_80193810_6DB720(u16 arg0) {
    u16 new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1901;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = 63;
        gActors[new_actor_index].posY.whole = -38;
        gActors[new_actor_index].posZ.whole = 0;
        gActors[new_actor_index].graphicIndex = GINDEX_5004;
    }

    return new_actor_index;
}

u16 func_801938A8_6DB7B8(u16 arg0) {
    u16 new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1902;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = 59;
        gActors[new_actor_index].posY.whole = -30;
        gActors[new_actor_index].posZ.whole = 0;
        gActors[new_actor_index].graphicIndex = GINDEX_DEMOWORLD1_2804;
    }

    return new_actor_index;
}

s32 func_80193940_6DB850(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }

    if (gActors[actor_index].posY.whole < -0x29) {
        return 1;
    }

    return 0;
}

void func_801939B0_6DB8C0(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 28.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.3f;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.75);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(-0.75);
    gActors[new_actor_index].var_158 = FIXED_UNIT(0.0234375);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.03125);
    gActors[new_actor_index].var_154 = -6;
    gActors[new_actor_index].var_110 = 0.01f;
    gActors[new_actor_index].unk_114 = 0.01f;
}

void func_80193B08_6DBA18(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1916;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[new_actor_index].rotateZ = 0.0f;
        gActors[new_actor_index].scaleX = 0.4f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].colorA = gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 255;
        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].state = 0;
        gActors[new_actor_index].var_150 = 20;
    }

    new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1916;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset + 4;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[new_actor_index].scaleX = 0.4f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].colorA = gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 255;
        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].state = 0;
        gActors[new_actor_index].var_150 = 20;
        gActors[new_actor_index].rotateZ = 30.0f;
    }

    new_actor_index = Actor_RangeFindInactive_90ToC0();
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1916;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
        gActors[new_actor_index].posY.whole = (gActors[actor_index].posY.whole + y_offset) - 4;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[new_actor_index].scaleX = 0.4f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].rotateZ = 327.0f;
        gActors[new_actor_index].colorA = gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 255;
        gActors[new_actor_index].graphicIndex = GINDEX_LINE;
        gActors[new_actor_index].state = 0;
        gActors[new_actor_index].var_150 = 20;
    }
}

void func_80193E28_6DBD38(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].colorA = 255;
    gActors[new_actor_index].colorR = 0;
    gActors[new_actor_index].colorG = 0;
    gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].graphicIndex = GINDEX_EXCLAIMBUBBLE;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.4f;
}

void func_80193F48_6DBE58(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].colorA = 255;
    gActors[new_actor_index].colorR = 0;
    gActors[new_actor_index].colorG = 0;
    gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].graphicIndex = GINDEX_QUESTIONBUBBLE;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.4f;
}

void func_80194068_6DBF78(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 28.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].colorR = 0x3C;
    gActors[new_actor_index].colorG = 0x46;
    gActors[new_actor_index].colorB = 0xFF;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.4f;
    gActors[new_actor_index].graphicIndex = GINDEX_WARPGATE;
    gActors[new_actor_index].velocityX.raw = FIXED_UNIT(1.5);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(1.5);
    gActors[new_actor_index].var_158 = FIXED_UNIT(-0.046875);
    gActors[new_actor_index].var_15C = FIXED_UNIT(-0.0625);
}

void func_801941B0_6DC0C0(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole - 1;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].colorR = 0;
    gActors[new_actor_index].colorG = 0;
    gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].graphicIndex = GINDEX_01AA;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.0f;
    gActors[new_actor_index].var_110 = 0.01f;
    gActors[new_actor_index].unk_114 = 0.001f;
    gActors[new_actor_index].var_154 = -4;
}

void func_801942F0_6DC200(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 10.0f;
    gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + x_offset;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + y_offset;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 1.2f;
    gActors[new_actor_index].graphicIndex = GINDEX_IMPACTEFFECTA;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].var_110 = 0.01f;
    gActors[new_actor_index].unk_114 = 0.01f;
}

void func_80194428_6DC338(u16 actor_index) {
    u16 new_actor_index;
    s16 y_position;

    switch (gActors[actor_index].state) {
    case 0:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        break;
    case 1:
        if (--gActors[actor_index].unk_170 <= 0) {
            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1916;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[new_actor_index].graphicIndex = GINDEX_POOF;
                gActors[new_actor_index].state = 2;
            }

            gActors[actor_index].unk_170 = 8;
        }

        if (--gActors[actor_index].unk_178 <= 0) {
            Sound_PlaySfxAtPan(SFX_0092, 104);
            gActors[actor_index].unk_178 = 0xB;
        }
        break;

    case 2:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].var_150 = 0x3C;
        gActors[actor_index].posX.whole = 0x3C;
        gActors[actor_index].posY.whole = -8;
        gActors[actor_index].posZ.whole = -7;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(0.0625);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].scaleY = gActors[actor_index].scaleX = 0.5f;
        break;
    case 3:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else {
            gActors[actor_index].colorA -= 4;
            gActors[actor_index].scaleX += 0.00625;
            gActors[actor_index].scaleY += 0.00625;
        }
        break;
    case 4:
        gActors[actor_index].state = 5;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].posX.whole = 0x42;
        gActors[actor_index].posY.whole = -0xA;
        gActors[actor_index].posZ.whole = -0x11;
        // BUG: new_actor_index is uninitialized
        gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX = 1.0f;
        gActors[actor_index].colorA = 0xFF;
        gActors[actor_index].colorR = 0x80;
        gActors[actor_index].colorG = 0xAC;
        gActors[actor_index].colorB = 0xBC;
        gActors[actor_index].graphicIndex = GINDEX_01EE;
        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x1916;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].graphicIndex = GINDEX_01EE;
            gActors[new_actor_index].state = 5;
            gActors[new_actor_index].posX.whole = 0x3C;
            gActors[new_actor_index].posY.whole = -0x1A;
            gActors[new_actor_index].posZ.whole = -0x11;
            gActors[new_actor_index].rotateZ = 337.0f;
            gActors[new_actor_index].scaleX = 1.1f;
            gActors[new_actor_index].scaleY = 1.0f;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].colorR = 0x80;
            gActors[new_actor_index].colorG = 0xAC;
            gActors[new_actor_index].colorB = 0xBC;
        }
        break;

    case 6:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.whole = -0x43;
        gActors[actor_index].posY.whole = -0xF;
        gActors[actor_index].posZ.whole = -0x1E;
        gActors[actor_index].scaleX = 0.25f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].colorA = 0xB4;
        gActors[actor_index].graphicIndex = GINDEX_DEMOWORLD1_2002;

        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x1916;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].state = 0x64;
        }
        break;

    case 7:
        break;
    case 100:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.whole = -0x43;
        gActors[actor_index].posY.whole = -0x15;
        gActors[actor_index].posZ.whole = -0x1C;
        gActors[actor_index].graphicIndex = GINDEX_LINE;
        gActors[actor_index].scaleX = 1.2f;
        gActors[actor_index].scaleY = 2.0f;
        gActors[actor_index].colorA = 0x6F;
        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0x34;
        break;
    case 101:
        gActors[actor_index].posY.whole++;
        y_position = gActors[actor_index].posY.whole;
        if (y_position >= -9) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            if (y_position >= -5) {
                gActors[actor_index].posY.whole = -0x16;
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }
        }
        break;
    case 200:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].posX.whole = -0x44;
        gActors[actor_index].posY.whole = -0x30;
        gActors[actor_index].posZ.whole = -0x1C;
        gActors[actor_index].graphicIndex = GINDEX_LINE;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].colorA = 0xFF;
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = 0;
        gActors[actor_index].unk_18C = 0;

        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x1916;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].state = 0xC9;
            gActors[new_actor_index].posX.whole = -0x44;
            gActors[new_actor_index].posY.whole = -0x32;
            gActors[new_actor_index].posZ.whole = -0x1C;
            gActors[new_actor_index].graphicIndex = GINDEX_LINE;
            gActors[new_actor_index].scaleX = 0.1f;
            gActors[new_actor_index].scaleY = 1.0f;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].colorR = 0;
            gActors[new_actor_index].colorG = 0;
            gActors[new_actor_index].colorB = 0;
            gActors[new_actor_index].unk_18C = 1;
        }
        break;

    case 201:
        if ((D_8019ABDC_6E2AEC & 1) && gActors[actor_index].unk_18C == 0) {
            D_8019ABDC_6E2AEC &= ~1;
            gActors[actor_index].state += (Rand() & 1) ? 1 : 7;
        }

        if ((D_8019ABDC_6E2AEC & 2) && gActors[actor_index].unk_18C == 1) {
            D_8019ABDC_6E2AEC &= ~2;
            gActors[actor_index].state += (Rand() & 1) ? 1 : 7;
        }
        break;
    case 202:
        gActors[actor_index].state++;
        gActors[actor_index].var_150 = 0x1E;
        gActors[actor_index].colorG = 0xFF;
        break;
    case 203:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].colorG = 0;
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x10;
        }
        break;
    case 204:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].colorG = 0xFF;
            gActors[actor_index].var_150 = 0x14;
        }
        // fallthrough
    case 205:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].colorG = 0;
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0xA;
        }
        break;
    case 206:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].colorG = 0xFF;
            gActors[actor_index].var_150 = 0xA;
        }
        break;
    case 207:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 0xC9;
            gActors[actor_index].colorG = 0;
        }
        break;
    case 208:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = 6;
        gActors[actor_index].var_150 = 0xA;
        break;
    case 209:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].colorG = 0xFF;
            gActors[actor_index].var_150 = 0xA;
        }
        break;
    case 210:
        if (--gActors[actor_index].var_150 <= 0) {
            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].state = 0xC9;
            }
            else {
                gActors[actor_index].state--;
            }

            gActors[actor_index].colorG = 0;
            gActors[actor_index].var_150 = 10;
        }
        break;
    }
}

void func_80194CA0_6DCBB0(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole - 1;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.6f;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_80194DFC_6DCD0C(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].velocityX.raw = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(-0.25) : FIXED_UNIT(0.25);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.001953125);
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.4f;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_80194F88_6DCE98(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].velocityX.raw = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(0.25) : FIXED_UNIT(-0.25);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.001953125);
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.4f;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_80195114_6DD024(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_IMPACTEFFECTA;
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.001953125);
    gActors[new_actor_index].scaleX = 1.4f;
    gActors[new_actor_index].scaleY = 1.7f;
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_80195288_6DD198(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 60.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_0188;
    gActors[new_actor_index].scaleX = 1.6f;
    gActors[new_actor_index].scaleY = 1.2f;
    gActors[new_actor_index].var_110 = 0.00825f;
    gActors[new_actor_index].unk_114 = 0.00625f;
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -4;
}

void func_801953F4_6DD304(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].velocityX.raw = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(-0.3125) : FIXED_UNIT(0.3125);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0703125);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.001953125);
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.6f;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_80195580_6DD490(u16 actor_index, s16 x_offset, s16 y_offset) {
    u16 new_actor_index;
    s32 is_flipped;

    is_flipped = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FALSE : TRUE;
    if (is_flipped) {
        x_offset = -x_offset;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + x_offset, gActors[actor_index].posY.whole + y_offset, 1);
    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0) + ACTOR_FLAG_ENABLED;
    gActors[new_actor_index].unk_148 = 30.0f;
    gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    gActors[new_actor_index].graphicIndex = GINDEX_POOF;
    gActors[new_actor_index].velocityX.raw = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? FIXED_UNIT(0.3125) : FIXED_UNIT(-0.3125);
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0703125);
    gActors[new_actor_index].var_15C = FIXED_UNIT(0.001953125);
    gActors[new_actor_index].colorR = gActors[new_actor_index].colorG = gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].colorA = 0xFF;
    gActors[new_actor_index].var_154 = -8;
    gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = 0.6f;
    gActors[new_actor_index].var_110 = 0.00625f;
    gActors[new_actor_index].unk_114 = 0.00625f;
}

void func_8019570C_6DD61C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
        break;
    case 1:
        if (gActors[actor_index].posX.whole <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A4B0_6E23C0;
            Sound_PlaySfx(SFX_CLANCER_TALK_009E);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (D_8019ABD8_6E2AE8) {
            D_8019ABD8_6E2AE8 = 0;
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A4D0_6E23E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            Sound_PlaySfx(SFX_CLANCER_OW_009D);
        }
        break;
    case 3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 180;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A54C_6E245C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.25);
        }
        break;
    case 5:
        if (D_8019ABD8_6E2AE8 & 2) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A590_6E24A0;
            gActors[actor_index].graphicTimer = 1;
            D_8019ABD8_6E2AE8 &= ~2;
            func_80194068_6DBF78(actor_index, 0, 0);
            Sound_PlaySfx(SFX_0036);
        }
        break;
    case 6:
        if (D_8019ABD8_6E2AE8 & 2) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~2;
            gActors[actor_index].graphicList = D_8019A620_6E2530;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            gActors[actor_index].unk_16C = 0;
            Sound_PlaySfx(SFX_CLANCER_OW_009D);
        }
        break;
    case 7:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].posX.whole >= 96) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (--gActors[actor_index].unk_16C <= 0) {
            func_80194CA0_6DCBB0(actor_index, 0, 0);
            gActors[actor_index].unk_16C = 3;
        }
        break;
    }
}

void func_801959A8_6DD8B8(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        if (func_80193940_6DB850(actor_index) == 1) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -42;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole >= 72) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 72;
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 3:
        if (gActors[actor_index].posZ.whole < -11) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -34;
            gActors[actor_index].posZ.whole = -12;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 4:
        if (gActors[actor_index].posX.whole < 43) {
            gActors[actor_index].state = state + 1;
            D_8019ABD8_6E2AE8 |= 2;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].graphicList = D_8019A590_6E24A0;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfx(SFX_CLANCER_OW_009D);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].posY.whole < -33) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].var_150 = 120;
        }
        break;
    case 6:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A530_6E2440;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 180;
            Sound_PlaySfx(SFX_CLANCER_TALK_009E);
        }
        break;
    case 8:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A5F4_6E2504;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfx(SFX_0036);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 9:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            D_8019ABD8_6E2AE8 |= 2;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 60;
        }
        break;
    case 10:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
        }
        break;
    case 11:
        if (gActors[actor_index].posX.whole < -53) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].var_150 = 30;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_800E1728;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 120;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A650_6E2560;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 14:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            func_80011B30(0, 4, 3, 1, 41);
            func_80011B30(0, 5, 2, 1, 44);
            gActors[actor_index].graphicList = D_8019A658_6E2568;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 15:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].graphicList = D_800E1728;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 60;
        }
        break;
    case 16:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E173C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 240;
            Sound_PlaySfx(SFX_CLANCER_CRY_00A1);
        }
        break;
    case 17:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A530_6E2440;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 18:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 19:
        if (gActors[actor_index].posZ.whole >= 126) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            gActors[actor_index].posZ.whole = 126;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 20:
        if (gActors[actor_index].posX.whole < -87) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 360;
        }
        break;
    case 21:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 22:
        if (gActors[actor_index].posX.whole >= 72) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 72;
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 23:
        if (gActors[actor_index].posZ.whole < -11) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -34;
            gActors[actor_index].posZ.whole = -12;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 24:
        if (gActors[actor_index].posX.whole >= 92) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_8019625C_6DE16C(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        gActors[actor_index].state = state + 1;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < 0x31) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 0x30;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 2:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole <= 0) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 |= 4;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            D_8019ABD8_6E2AE8 |= 4;
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 4:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x2B) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x2C;
            gActors[actor_index].posZ.whole = 0x7E;
            gActors[actor_index].graphicList = D_8019A5C0_6E24D0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xB4;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;

    case 5:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (gActors[actor_index].posX.whole < -0x39) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x1E;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_150 = 0xB4;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 8:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 9:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.375);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 10:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0xB) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 11:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x1E0;
        }
        break;
    case 12:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A69C_6E25AC;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x3C;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x3C;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 14:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A69C_6E25AC;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 15:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 16:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.375);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        }
        break;
    case 17:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x27) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x28;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 18:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 19:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].posZ.whole = -0xC;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.375);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 20:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_80196B0C_6DEA1C(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x21) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posZ.whole >= 0x7E) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.125);
            gActors[actor_index].posZ.whole = 0x7E;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (gActors[actor_index].posX.whole < -0x39) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xF0;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.375);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (gActors[actor_index].posX.whole >= 0x48) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (gActors[actor_index].posX.whole < -0x39) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = -0x3A;
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 7:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].posZ.whole = -0xC;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.25);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 8:
        if (gActors[actor_index].posX.whole >= 0x3D) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].posX.whole = 0x3D;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x294;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 9:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 10:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_80196FB4_6DEEC4(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        gActors[actor_index].state = state + 1;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < -3) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].posX.whole = -4;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 2:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0xE) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -0xF;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xB4;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
        }
        break;
    case 7:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].posY.whole >= 0xA) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A6C8_6E25D8;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xF0;
            gActors[actor_index].var_160 = 0;
        }
        break;
    case 8:
        if (--gActors[actor_index].var_150 <= 0) {
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state++;
                Sound_PlaySfx(SFX_CLANCER_003A);
                D_8019ABD8_6E2AE8 |= 0x20;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                gActors[actor_index].graphicIndex = GINDEX_1030;
                gActors[actor_index].posX.whole += 8;
                gActors[actor_index].var_150 = 5;
                gActors[actor_index].rotateZ = 30.0f;
            }
        }
        else {
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicList = D_8019A6C8_6E25D8;
                gActors[actor_index].graphicTimer = 1;
            }

            if (--gActors[actor_index].var_160 <= 0) {
                Sound_PlaySfx(SFX_CLANCER_LAUGH_0049);
                gActors[actor_index].var_160 = 0x3C;
            }
        }
        break;

    case 9:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole += 8;
        }
        break;
    case 10:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].posY.whole < -0x25) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw >>= 4;
            gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 1);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicIndex = GINDEX_6860;
            gActors[actor_index].rotateZ = 0.0f;
            func_80195288_6DD198(actor_index, -8, -0x10);
        }
        break;
    case 11:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x25) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posY.whole = -0x26;
            gActors[actor_index].var_150 = 0x3C;
            func_801953F4_6DD304(actor_index, 0x10, -0x10);
            func_80195580_6DD490(actor_index, -8, -0x10);
        }
        break;
    case 12:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A500_6E2410;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 14:
        if (gActors[actor_index].posX.whole >= 0x48) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 0x48;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.125);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 15:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].posZ.whole = -0xC;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 16:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_80197650_6DF560(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    u16 new_actor_index;
    switch (state) {
    case 0:
        if (func_80193940_6DB850(actor_index) == 1) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -42;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole >= -53) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.125);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            func_801941B0_6DC0C0(actor_index, 0, -12);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 4:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -15) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 5:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.375);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3.25);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2.5);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -12);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 6:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -33) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 7:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 8:
        if (gActors[actor_index].posX.whole >= 30) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.03125);
            gActors[actor_index].graphicList = D_8019A704_6E2614;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 9:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].var_150 = 60;
        }
        break;
    case 10:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A500_6E2410;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 11:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (gActors[actor_index].posX.whole >= 30) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 120;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1C9C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 600;
            gActors[actor_index].var_154 = 0;
            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1916;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[new_actor_index].graphicIndex = GINDEX_POOF;
                gActors[new_actor_index].state = 1;
            }

            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index) {
                gActors[new_actor_index].actorType = 0x1916;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].graphicIndex = GINDEX_01EE;
                gActors[new_actor_index].state = 4;
            }
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 14:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        else {
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicList = D_800E1C9C;
                gActors[actor_index].graphicTimer = 1;
            }

            if (gActors[actor_index].var_154 == 0) {
                Sound_PlaySfx(SFX_BOOM_0043);
                gActors[actor_index].var_154 = 1;
            }
        }
        break;

    case 15:
        if (gActors[actor_index].posZ.whole < -11) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.375);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 16:
        if (gActors[actor_index].posX.whole >= 92) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_80197D64_6DFC74(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x21) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole < -0x35) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posX.whole = -0x36;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x168;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (gActors[actor_index].posZ.whole >= 0x7E) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -0x28;
            gActors[actor_index].posZ.whole = 0x7A;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xB4;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 5:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.1875);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (D_8019ABD8_6E2AE8 & 0x80) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x80;
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A704_6E2614;
            gActors[actor_index].graphicTimer = 1;
            func_80194068_6DBF78(actor_index, 6, 0xA);
            Sound_PlaySfx(SFX_0036);
            Sound_PlaySfx(SFX_CLANCER_OW_0067);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 7:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x27) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw >>= 1;
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw;
            func_80195288_6DD198(actor_index, -8, -0x10);
        }
        break;
    case 8:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].posY.whole < -0x27) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            func_801953F4_6DD304(actor_index, 8, -0x10);
            func_80195580_6DD490(actor_index, -0xC, -0x10);
        }
        break;
    case 9:
        if (D_8019ABD8_6E2AE8 & 0x80) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x80;
            gActors[actor_index].graphicList = D_8019A500_6E2410;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 10:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 11:
        if (D_8019ABD8_6E2AE8 & 0x80) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x80;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (D_8019ABD8_6E2AE8 & 0x80) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x80;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -0x22;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.5);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        // fallthrough
    case 14:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_801983A0_6E02B0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < 73) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 570;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (gActors[actor_index].posZ.whole >= 126) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].posY.whole = -40;
            gActors[actor_index].posZ.whole = 123;
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 4:
        if (gActors[actor_index].posX.whole < 45) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 |= 0x80;
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].graphicList = D_8019A734_6E2644;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 120;
        }
        break;
    case 6:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (gActors[actor_index].posX.whole < 17) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 |= 0x80;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A744_6E2654;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfx(SFX_CLANCER_TALK_009F);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 8:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A428_6E2338;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 32;
        }
        break;
    case 9:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 0;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A428_6E2338;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 10:
        if (D_8019ABD8_6E2AE8 & 0x800) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 26;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 11:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 |= 0x80;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (gActors[actor_index].posX.whole < -57) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 |= 0x80;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        if (gActors[actor_index].posZ.whole < -11) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posY.whole = -34;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.5);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 10;
            D_8019ABD8_6E2AE8 |= 0x80;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 14:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 15:
        if (gActors[actor_index].posX.whole >= 92) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_801989A8_6E08B8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < -0x35) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole >= 0x48) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (gActors[actor_index].posX.whole < -0x35) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (gActors[actor_index].posZ.whole >= 0x79) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x27;
            gActors[actor_index].posZ.whole = 0x79;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (gActors[actor_index].posX.whole >= 0x48) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xB4;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (gActors[actor_index].posX.whole < -0x39) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 8:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < -0x17) {
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 9:
        if (gActors[actor_index].posX.whole >= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_154 = FIXED_UNIT(0.125);
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.125);
            gActors[actor_index].graphicList = D_8019A734_6E2644;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfx(SFX_0034);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 10:
        gActors[actor_index].velocityX.raw -= gActors[actor_index].var_154;
        if (gActors[actor_index].velocityX.raw < 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x78;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A734_6E2644;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 11:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
            Sound_PlaySfx(SFX_CLANCER_TALK_009F);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (D_8019ABD8_6E2AE8 & 0x20) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1D;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 13:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].graphicList = D_8019A4D0_6E23E0;
            gActors[actor_index].graphicTimer = 1;
            func_80194068_6DBF78(actor_index, 6, 0xA);
            Sound_PlaySfx(SFX_CLANCER_OW_009D);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 14:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x78;
            func_801953F4_6DD304(actor_index, 8, -0x10);
            func_80195580_6DD490(actor_index, -0xC, -0x10);
        }
        break;
    case 15:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.25);
            gActors[actor_index].graphicList = D_8019A54C_6E245C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 16:
        if (gActors[actor_index].posX.whole < -0x41) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A530_6E2440;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A54C_6E245C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 17:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicList = D_800E18B4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0x5A;
        }
        break;
    case 18:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].unk_174 = 0;
        }

        if (gActors[actor_index].var_150 == 0x3C) {
            Sound_PlaySfx(SFX_CLANCER_003A);
        }
        break;
    case 19:
        if (gActors[actor_index].posX.whole >= 0x48) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 20:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 21:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            D_8019ABD8_6E2AE8 = -1;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    default:
        break;
    }
}

void func_801991C8_6E10D8(u16 actor_index) {
    u16 new_actor_index;
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        if (func_80193940_6DB850(actor_index) == 1) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -0x2A;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
            gActors[actor_index].var_150 = 20;
        }
        break;
    case 1:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole >= 0x30) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].var_150 = 14;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 120;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.75);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -12);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 5:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0xF) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 120;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 6:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.75);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -12);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1700;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 7:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x21) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 600;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 8:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else {
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
                gActors[actor_index].graphicTimer = 1;
            }

            if (gActors[actor_index].var_150 == 540) {
                new_actor_index = Actor_RangeFindInactive_90ToC0();
                if (new_actor_index) {
                    gActors[new_actor_index].actorType = 0x1916;
                    Actor_Initialize(new_actor_index);
                    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                    gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
                    gActors[new_actor_index].state = 6;
                }

                new_actor_index = Actor_RangeFindInactive_90ToC0();
                if (new_actor_index) {
                    gActors[new_actor_index].actorType = 0x1916;
                    Actor_Initialize(new_actor_index);
                    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                    gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
                    gActors[new_actor_index].state = 200;
                }
            }
        }
        break;

    case 9:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_801997C0_6E16D0(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    switch (state) {
    case 0:
        gActors[actor_index].state = state + 1;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < 0x49) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.whole = 0x48;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 2:
        if (gActors[actor_index].posZ.whole >= 0x7E) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].posZ.whole = 0x7E;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;

    case 3:
        if (gActors[actor_index].posX.whole < -0x29) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_154 = FIXED_UNIT(0.25);
            Sound_PlaySfx(SFX_0034);
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        gActors[actor_index].velocityX.raw += gActors[actor_index].var_154;
        if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
        }
        break;
    case 5:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0xB) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 0xA;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 6:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.0625);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 7:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < 0xD) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 8:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].graphicIndex = GINDEX_6920;
            gActors[actor_index].var_150 = 0x618;
        }
        break;
    case 9:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-1.5);
            gActors[actor_index].graphicList = D_8019A60C_6E251C;
            gActors[actor_index].graphicTimer = 1;
            func_801941B0_6DC0C0(actor_index, 0, -0xC);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 10:
        func_80193940_6DB850(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].posY.whole < -0x21) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 0x10, -0x10);
            func_80194F88_6DCE98(actor_index, -8, -0x10);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 11:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = state + 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 12:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A46C_6E237C;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    default:
        break;
    }
}

void func_80199D14_6E1C24(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
        break;
    case 1:
        if (gActors[actor_index].posX.whole < 0x49) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 44;
        }
        else {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A4C0_6E23D0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (gActors[actor_index].posX.whole < 0x41) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (D_8019ABD8_6E2AE8 & 0x1000) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x1000;
            gActors[actor_index].graphicList = D_8019A674_6E2584;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (D_8019ABD8_6E2AE8 & 0x1000) {
            gActors[actor_index].state++;
            D_8019ABD8_6E2AE8 &= ~0x1000;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A674_6E2584;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (gActors[actor_index].posZ.whole < -0xB) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (gActors[actor_index].posX.whole >= 0x5C) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            D_8019ABD8_6E2AE8 |= 0x800;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_8019A038_6E1F48(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        if (func_80193940_6DB850(actor_index) == 1) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -42;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A5B0_6E24C0;
            gActors[actor_index].graphicTimer = 1;
            func_80194DFC_6DCD0C(actor_index, 16, -16);
            func_80194F88_6DCE98(actor_index, -8, -16);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 2:
        if (gActors[actor_index].posX.whole >= 36) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 24;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 3:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            D_8019ABD8_6E2AE8 |= 0x1000;
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 = 60;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_8019A674_6E2584;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3D0_6E22E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 5:
        if (D_8019ABD8_6E2AE8 & 0x20) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            D_8019ABD8_6E2AE8 |= 0x1000;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.140350341796875);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-2);
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A674_6E2584;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 6:
        if (gActors[actor_index].posZ.whole < -11) {
            gActors[actor_index].state++;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A5D0_6E24E0;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 7:
        if (gActors[actor_index].posX.whole >= 92) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_8019A3E4_6E22F4;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    }
}

void func_8019A3AC_6E22BC(s32 arg0) {
}

void func_8019A3B4_6E22C4(s32 arg0) {
}

void func_8019A3BC_6E22CC(u16 arg0) {
}
