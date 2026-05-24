#include "common.h"
#include "actor.h"

void func_80080190(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~0x200600;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800801D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800805B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800808D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_8008105C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081644.s")

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
