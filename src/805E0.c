#include "common.h"

extern s16 D_800E10D0[];
extern s16 D_800E11C0[];
extern s16* D_800E1298[];

#ifdef NON_MATCHING
// https://decomp.me/scratch/YeNvy
u16 func_8007F9E0(u16 actor_index) {
    u16 temp_a0;
    s16* var_v0;
    s16* temp_a3;
    Actor* temp_a2;

    var_v0 = (s16*)gActors[actor_index].var_150;
    if (var_v0[2] != 0) {
        if (gActors[actor_index].var_154 < var_v0[1]) {
            gActors[actor_index].var_154++;
        }
        else {
            var_v0 += 2;
            if (var_v0[0] < 0) {
                var_v0 += var_v0[0];
            }
            gActors[actor_index].var_150 = (s32)var_v0;
            gActors[actor_index].var_154 = 1;
        }
    }
    else {
        gActors[actor_index].var_154 = 0;
    }
    temp_a3 = &D_800E10D0[var_v0[0]];
    gActors[actor_index].graphicIndex = temp_a3[0];
    if (temp_a3[1] != 0) {
        temp_a2 = &gActors[actor_index];
        if (actor_index >= 0x90) {
            actor_index++;
        }
        else {
            actor_index = 0x90;
        }
        temp_a0 = Actor_RangeFindInactive(actor_index, 0xC0);
        if (temp_a0 != 0) {
            gActors[temp_a0].actorType = 0x34;
            Actor_Initialize(temp_a0);
            gActors[temp_a0].graphicFlags = temp_a2->graphicFlags & ( ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE);
            gActors[temp_a0].flags = (temp_a2->flags & ACTOR_FLAG_FLIPPED) + 3;
            gActors[temp_a0].graphicIndex = temp_a3[1];
            if (temp_a2->flags & ACTOR_FLAG_FLIPPED) {
                gActors[temp_a0].posX.raw = (-temp_a3[2] * temp_a2->scaleX * 65536.0f) + (0, temp_a2->posX.raw); // fakematch: (0, ...)
            }
            else {
                gActors[temp_a0].posX.raw = (temp_a3[2] * temp_a2->scaleX * 65536.0f) + (0, temp_a2->posX.raw);
            }
            gActors[temp_a0].posY.raw = (temp_a3[3] * temp_a2->scaleY * 65536.0f) + (0, temp_a2->posY.raw);
            gActors[temp_a0].posZ.raw = temp_a2->posZ.raw + 1;
            gActors[temp_a0].unk_148 = 1.0f;
            return temp_a0;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/805E0/func_8007F9E0.s")
#endif

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
            actor_index = SpawnParticle_List_90C0_16(D_800E1298[str[index]], (index * 8) + x_pos_2, y_pos, 0);
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
            actor_index = SpawnParticle_List_90C0_16(D_800E1298[(s32)str[index]], (index * 8) + pos_x_2, pos_y, 0);
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

