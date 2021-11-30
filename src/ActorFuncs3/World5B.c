#include "common.h"

void func_801A6900_78B440(uint16_t x){}
void func_801A6908_78B448(uint16_t index){
    gActors[index].vel.x_w=ModInRange_i(gActors[index].vel.x_w,0,0x2000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6968_78B4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6A44_78B584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6AD0_78B610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6CA8_78B7E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6D4C_78B88C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A6E48_78B988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A7100_78BC40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5B/func_801A7C78_78C7B8.s")
