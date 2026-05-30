#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80022D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80022D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/GameState_SoftReset.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_800230B8.s")

void func_8002312C(){
    u16 index;
    for(index = 0; index < 66; index++){
        gPortraits[index].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/func_80023168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/soft_reset/GameState_Loading.s")
