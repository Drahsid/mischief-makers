#include "actor.h"
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_80080190(uint16_t index) {
    gActors[index].unk_0x98 &= 0xFFDFF9FF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800801D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800805B8.s")

#ifdef NON_MATCHING
void func_80080818(uint16_t index, int16_t* arg1) {
    uint16_t index2;
    int16_t* phi_a1;

    gActors[index].unk_0x158 += gActors[index].unk_0x160;
    gActors[index].unk_0x15C += gActors[index].unk_0x164;

    index2 = *arg1 + index;
    phi_a1 = arg1;
    if (*arg1 != 0x7FFF) {
        do {
            phi_a1 += 0xA;

            gActors[index2].unk_0x174 = (gActors[index2].unk_0x174 + gActors[index2].unk_0x164);
            gActors[index2].unk_0x174 &= 0x3FFFFFF;
            gActors[index2].unk_0x154 += gActors[index2].unk_0x168;

            index2 = *phi_a1 + index;
        } while (*phi_a1 != 0x7FFF);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080818.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800817D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800818C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800819A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081D08.s")
