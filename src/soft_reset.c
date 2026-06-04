#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80022D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80022D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/GameState_SoftReset.s")

// clear all actors and static objects
void func_800230B8(void) {
    u16 index;
    for(index = 0; index < 208; index++){
        gActors[index].flags = 0;
        gActors[index].graphicList = NULL;
    }
        for(index = 0; index < 0x40; index++){
        D_801069E0[index].graphicIndex = 0;
    }
}

// clear all portraits
void func_8002312C(void) {
    u16 index;
    for(index = 0; index < ARRAYLENGTH(gPortraits); index++){
        gPortraits[index].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80023168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/GameState_Loading.s")
