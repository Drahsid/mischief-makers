#include "actor.h"
#include "common.h"

s16 D_800E10D0[] = {
    0x5000, 0x2804, 0x0000, 0x000C, 0x0000, 0x5001, 0x0000, 0x0000,
    0x0000, 0x0000, 0x5002, 0x0000, 0x0000, 0x0000, 0x0000, 0x5003,
    0x0000, 0x0000, 0x0000, 0x0000, 0x5004, 0x0000, 0x0008, 0x000C,
    0x0000, 0x5005, 0x280C, 0x0000, 0x000C, 0x0000, 0x5005, 0x280E,
    0x0000, 0x000A, 0x0000, 0x0000, 0x280C, 0x0000, 0x000C, 0x0000,
    0x0000, 0x280E, 0x0000, 0x000A, 0x0000, 0x5006, 0x280E, 0x0000,
    0x0006, 0x0000, 0x5006, 0x2812, 0x0000, 0x0006, 0x0000, 0x5007,
    0x2810, 0x0000, 0x000C, 0x0000, 0x0000, 0x0002, 0x0000, 0x0000,
    0x0014, 0x0002, 0x0000, 0x0000, 0x0005, 0x0003, 0x000A, 0x0003,
    0x000F, 0x0003, 0x0014, 0x0003, 0x0000, 0x0000, 0x0014, 0x0003,
    0x000F, 0x0003, 0x000A, 0x0003, 0x0005, 0x0003, 0x0000, 0x0000,
};

s16 D_800E1180[] = {
    0x0019, 0x0006, 0x001E, 0x0006, -4, 0,
};

s16 D_800E118C[] = {
    0x0023, 0x0006, 0x0028, 0x0006, -4, 0,
};

s16 D_800E1198[] = {
    0x002D, 0x0006, 0, 0,
};

s16 D_800E11A0[] = {
    0x0019, 0x0004, 0x0037, 0x0008, 0, 0,
};

s16 D_800E11AC[] = {
    0x0019, 0x0004, 0x0032, 0x0008, 0, 0, 0, 0, 0, 0,
};

s16 D_800E11C0[] = {
    GINDEX_ALPHASTART, 0x0030, 0, 0,
};

s16 D_800E11C8[] = {
    GRAPHIC_FRAME(ALPHASTART, 7), 2, GRAPHIC_FRAME(ALPHASTART, 9), 2,
    GINDEX_ALPHASTART, 2, GRAPHIC_FRAME(ALPHASTART, 5), 2,
    GRAPHIC_FRAME(ALPHASTART, 1), 2, GRAPHIC_FRAME(ALPHASTART, 9), 2,
    GRAPHIC_FRAME(ALPHASTART, 1), 2, GRAPHIC_FRAME(ALPHASTART, 8), 2,
    GINDEX_ALPHASTART, 0x30, 0, 0,
};

s16 D_800E11F0[] = {
    GRAPHIC_FRAME(ALPHASTART, 5), 2, GINDEX_ALPHASTART, 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GRAPHIC_FRAME(ALPHASTART, 9), 2,
    GRAPHIC_FRAME(ALPHASTART, 1), 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 1), 0x30, 0, 0,
};

s16 D_800E1218[] = {
    GRAPHIC_FRAME(ALPHASTART, 9), 2, GINDEX_ALPHASTART, 2,
    GRAPHIC_FRAME(ALPHASTART, 9), 2, GRAPHIC_FRAME(ALPHASTART, 8), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 2, GRAPHIC_FRAME(ALPHASTART, 2), 2,
    GINDEX_ALPHASTART, 2, GRAPHIC_FRAME(ALPHASTART, 4), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 0x30, 0, 0,
};

s16 D_800E1240[] = {
    GRAPHIC_FRAME(ALPHASTART, 7), 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 7), 2, GRAPHIC_FRAME(ALPHASTART, 2), 2,
    GRAPHIC_FRAME(ALPHASTART, 8), 2, GINDEX_ALPHASTART, 2,
    GRAPHIC_FRAME(ALPHASTART, 5), 2, GRAPHIC_FRAME(ALPHASTART, 6), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 0x30, 0, 0,
};

s16 D_800E1268[] = {
    GRAPHIC_FRAME(ALPHASTART, 4), 2, GRAPHIC_FRAME(ALPHASTART, 5), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 2, GRAPHIC_FRAME(ALPHASTART, 3), 2,
    GINDEX_ALPHASTART, 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GRAPHIC_FRAME(ALPHASTART, 7), 2,
    GRAPHIC_FRAME(ALPHASTART, 4), 0x30, 0, 0,
};

s16 D_800E1290[] = {
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GINDEX_ALPHASTART, 2,
    GRAPHIC_FRAME(ALPHASTART, 1), 2, GRAPHIC_FRAME(ALPHASTART, 3), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GRAPHIC_FRAME(ALPHASTART, 6), 2,
    GRAPHIC_FRAME(ALPHASTART, 5), 0x30, 0, 0,
};

s16 D_800E12B8[] = {
    GRAPHIC_FRAME(ALPHASTART, 9), 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GINDEX_ALPHASTART, 2,
    GRAPHIC_FRAME(ALPHASTART, 5), 2, GRAPHIC_FRAME(ALPHASTART, 5), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 2, GRAPHIC_FRAME(ALPHASTART, 3), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 0x30, 0, 0,
};

s16 D_800E12E0[] = {
    GRAPHIC_FRAME(ALPHASTART, 4), 2, GRAPHIC_FRAME(ALPHASTART, 5), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 2, GRAPHIC_FRAME(ALPHASTART, 4), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GRAPHIC_FRAME(ALPHASTART, 6), 2,
    GRAPHIC_FRAME(ALPHASTART, 8), 2, GRAPHIC_FRAME(ALPHASTART, 8), 2,
    GRAPHIC_FRAME(ALPHASTART, 7), 0x30, 0, 0,
};

s16 D_800E1308[] = {
    GRAPHIC_FRAME(ALPHASTART, 4), 2, GRAPHIC_FRAME(ALPHASTART, 5), 2,
    GRAPHIC_FRAME(ALPHASTART, 2), 2, GRAPHIC_FRAME(ALPHASTART, 3), 2,
    GINDEX_ALPHASTART, 2, GRAPHIC_FRAME(ALPHASTART, 1), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GRAPHIC_FRAME(ALPHASTART, 7), 2,
    GRAPHIC_FRAME(ALPHASTART, 8), 0x30, 0, 0,
};

s16 D_800E1330[] = {
    GRAPHIC_FRAME(ALPHASTART, 5), 2, GRAPHIC_FRAME(ALPHASTART, 4), 2,
    GRAPHIC_FRAME(ALPHASTART, 3), 2, GRAPHIC_FRAME(ALPHASTART, 2), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GRAPHIC_FRAME(ALPHASTART, 7), 2,
    GRAPHIC_FRAME(ALPHASTART, 6), 2, GRAPHIC_FRAME(ALPHASTART, 8), 2,
    GRAPHIC_FRAME(ALPHASTART, 9), 0x30, 0, 0,
};

s16* D_800E1358[] = {
    D_800E11C8, D_800E11F0, D_800E1218, D_800E1240, D_800E1268,
    D_800E1290, D_800E12B8, D_800E12E0, D_800E1308, D_800E1330,
};

u16 func_8007F9E0(u16 actor_index) {
    u16 free_actor;
    s16* var_v0;
    s16* temp_a3;

    var_v0 = gActors[actor_index].var_150_s16_ptr;
    if (var_v0[2] != 0) {
        if (gActors[actor_index].var_154 < var_v0[1]) {
            gActors[actor_index].var_154++;
        }
        else {
            var_v0 += 2;
            if (var_v0[0] < 0) {
                var_v0 += var_v0[0];
            }
            gActors[actor_index].var_150_s16_ptr = var_v0;
            gActors[actor_index].var_154 = 1;
        }
    }
    else {
        gActors[actor_index].var_154 = 0;
    }
    temp_a3 = &D_800E10D0[var_v0[0]];
    gActors[actor_index].graphicIndex = temp_a3[0];
    if (temp_a3[1] != 0) {
        if (actor_index >= 0x90) {
            free_actor = actor_index + 1;
        }
        else {
            free_actor = 0x90;
        }
        free_actor = Actor_RangeFindInactive(free_actor, 0xC0);
        if (free_actor != 0) {
            gActors[free_actor].actorType = ACTORTYPE_GRAPHIC_52;
            Actor_Initialize(free_actor);
            gActors[free_actor].graphicFlags = gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE);
            gActors[free_actor].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ENABLED;
            gActors[free_actor].graphicIndex = temp_a3[1];
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[free_actor].posX.raw = TO_FIXED(-temp_a3[2] * gActors[actor_index].scaleX) + gActors[actor_index].posX.raw;
            }
            else {
                gActors[free_actor].posX.raw = TO_FIXED(temp_a3[2] * gActors[actor_index].scaleX) + gActors[actor_index].posX.raw;
            }
            gActors[free_actor].posY.raw = TO_FIXED(temp_a3[3] * gActors[actor_index].scaleY) + gActors[actor_index].posY.raw;
            gActors[free_actor].posZ.raw = gActors[actor_index].posZ.raw + 1;
            gActors[free_actor].unk_148 = 1.0f;
            return free_actor;
        }
    }
    return 0;
}

// unused function, renders `value` in decimal at x, y position
void func_8007FCA0(s32 value, s32 x_pos, s32 y_pos) {
    s16 actor_index;
    s16 non_zero_index;
    s16 start;
    s16 index;
    s16 x_pos_2;
    char str[10];

    sprintf(str, "%08d", value);
    non_zero_index = 7;
    for (index = 0; index < 8; index++) {
        if (str[index] != '0') {
            non_zero_index = index;
            break;
        }
    }
    start = (non_zero_index < 5) ? non_zero_index : 5;
    x_pos_2 = ((x_pos - (start * 4)) - 32);
    for (index = start; index < 8; index++) {
        if (index < non_zero_index) {
            actor_index = SpawnParticle_List_90C0_16(D_800E11C0, (index * 8) + x_pos_2, y_pos, 0);
            if (actor_index != 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].posY.raw = y_pos << 0x10;
                gActors[actor_index].posZ.raw = FIXED_UNIT(128.0);
                gActors[actor_index].unk_188 = 8;
                gActors[actor_index].colorR = 0x80;
                gActors[actor_index].colorG = 0x80;
                gActors[actor_index].colorB = 0x80;
                gActors[actor_index].colorA = 0xB9;
                gActors[actor_index].var_15C = 0xE00;
                gActors[actor_index].unk_16C = -0x6E;
                gActors[actor_index].pfn_17C = func_80030B0C;
                gActors[actor_index].unk_104 = 0x20;
                gActors[actor_index].unk_108 = -8;
            }
        }
        else {
            actor_index = SpawnParticle_List_90C0_16(D_800E1358[(s32)str[index] - '0'], (index * 8) + x_pos_2, y_pos, 0);
            if (actor_index != 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].posY.raw = y_pos << 0x10;
                gActors[actor_index].posZ.raw = FIXED_UNIT(128.0);
                gActors[actor_index].unk_188 = 8;
                gActors[actor_index].var_15C = 0xE00;
                gActors[actor_index].unk_16C = -0x6E;
                gActors[actor_index].pfn_17C = func_80030B84;
                gActors[actor_index].unk_104 = 0x20;
                gActors[actor_index].unk_108 = -8;
            }
        }
    }
}

// unused function, renders `value` in decimal at x, y position
void func_8007FF28(s32 value, s32 pos_x, s32 pos_y) {
    s16 actor_index;
    s16 index;
    char str[10];
    s16 non_zero_set;
    s16 pos_x_2;

    sprintf(str, "%08d", value);

    for (index = 0, non_zero_set = FALSE, pos_x_2 = 0; index < 8; index++) {
        if ((str[index] == '0') && !non_zero_set && (index >= 5)) {
            if (pos_x_2 == 0) {
                pos_x_2 = (pos_x - (index * 4)) - 32;
            }
            actor_index = SpawnParticle_List_90C0_16(D_800E11C0, (index * 8) + pos_x_2, pos_y, 0);
            if (actor_index != 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].posY.raw = pos_y << 0x10;
                gActors[actor_index].posZ.raw = FIXED_UNIT(128.0);
                gActors[actor_index].unk_188 = 8;
                gActors[actor_index].colorR = 0x80;
                gActors[actor_index].colorG = 0x80;
                gActors[actor_index].colorB = 0x80;
                gActors[actor_index].colorA = 0xB9;
                gActors[actor_index].var_15C = 0xE00;
                gActors[actor_index].unk_16C = -0x6E;
                gActors[actor_index].pfn_17C = func_80030B84;
                gActors[actor_index].unk_104 = 0x20;
                gActors[actor_index].unk_108 = -8;
            }
        }
        else if ((str[index] != '0') || non_zero_set) {
            non_zero_set = TRUE;
            if (pos_x_2 == 0) {
                pos_x_2 = (pos_x - (index * 4)) - 32;
            }
            actor_index = SpawnParticle_List_90C0_16(D_800E1358[(s32)str[index] - '0'], (index * 8) + pos_x_2, pos_y, 0);
            if (actor_index != 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].posY.raw = pos_y << 0x10;
                gActors[actor_index].posZ.raw = FIXED_UNIT(128.0);
                gActors[actor_index].unk_188 = 8;
                gActors[actor_index].var_15C = 0xE00;
                gActors[actor_index].unk_16C = -0x6E;
                gActors[actor_index].pfn_17C = func_80030B84;
                gActors[actor_index].unk_104 = 0x20;
                gActors[actor_index].unk_108 = -8;
            }
        }
    }
}
