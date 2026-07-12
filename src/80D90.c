#include "common.h"
#include "actor.h"
#include "80D90.h"

void func_80080190(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~0x200600;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800801D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800805B8.s")

void func_80080818(u16 actor_index, s16* vals) {
    u16 actor_1;

    gActors[actor_index].var_158 += gActors[actor_index].var_160;
    gActors[actor_index].var_15C += gActors[actor_index].unk_164;
    for (; *vals != 0x7FFF; vals += 5) {
        actor_1 = *vals + actor_index;
        gActors[actor_1].unk_174 += gActors[actor_1].unk_164;
        gActors[actor_1].unk_174 &= 0x03FFFFFF;
        gActors[actor_1].var_154 += gActors[actor_1].unk_168;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800808D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080AEC.s")

void func_80080ED4(u16 base_actor_index, s16* vals) {
    s16* vals_it;
    s32 vals_index;
    u16 actor_1;
    u16 actor_2;

    for (vals_it = vals; *vals_it != 0x7FFF; vals_it += 5) {
        actor_1 = *vals_it + base_actor_index;
        gActors[actor_1].unk_178 = gActors[actor_1].unk_174;
        gActors[actor_1].unk_17C = gActors[actor_1].var_154;
    }

    for (vals_it = vals; *vals_it != 0x7FFF; vals_it += 5) {
        actor_1 = vals_it[0] + base_actor_index;
        vals_index = (vals_it[4] / 2) * 5;
        actor_2 = vals[vals_index] + base_actor_index;
        gActors[actor_1].unk_174 = gActors[actor_2].unk_178;
        gActors[actor_1].var_154 = gActors[actor_2].unk_17C;
    }
}

void func_80080FF8(u16 base_actor_index, s16* vals) {
    u16 actor_index;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_index = vals[0] + base_actor_index;
        gActors[actor_index].unk_174 = gActors[actor_index].unk_178;
        gActors[actor_index].var_154 = gActors[actor_index].unk_17C;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_8008105C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081478.s")

void func_80081584(u16 actor_index, s16* vals, void* arg2) {
    u16 actor_1;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_1 = *vals + actor_index;
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_1].colorR = gActors[actor_index].colorR;
        gActors[actor_1].colorG = gActors[actor_index].colorG;
        gActors[actor_1].colorB = gActors[actor_index].colorB;
        if (gActors[actor_1].graphicIndex != 0) {
            gActors[actor_1].palette_18C = arg2;
        }
        
    }
}

void func_80081644(u16 base_actor_index, s16* vals) {
    u16 actor_index;

    for (; *vals != 0x7FFF; vals += 5) {
        actor_index = *vals + base_actor_index;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800816AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081720.s")

void func_80081790(u16 actor_index, void* arg1) {
    gActors[actor_index].unk_174 = (s32)arg1;
    gActors[actor_index].unk_16C = 0;
    gActors[actor_index].unk_124 = 0.0f;
    gActors[actor_index].unk_11C = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800817D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800818C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800819A8.s")

void func_80081CBC(u32 arg0, u32 arg1) {
}

void func_80081CC8(u32 arg0, u32 arg1) {
}

void func_80081CD4(u32 arg0, u32 arg1, u32 arg2) {
}

void func_80081CE4(u32 arg0, u32 arg1) {
}

void func_80081CF0(u32 arg0, u32 arg1) {
}

void func_80081CFC(u32 arg0, u32 arg1) {
}

void func_80081D08(u32 arg0, u32 arg1) {
}
