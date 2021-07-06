#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800121D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800122B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800123AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012634.s")

#ifdef NON_MATCHING
/* Differences come from when we read D_800BE558 and D_800BE55C
 * The code reads them as 16 bit, then 32 bit
 * I am not sure how to replicate, since what I have currently written gets optimized out
 */
void func_80012830(void) {
    // It is lh then lw the same values ?
    D_800BE560 = (int16_t)D_800BE558;
    D_800BE560 = (int32_t)D_800BE558;
    if (D_800BE62C != 0) {
        func_800123AC();
    }
    else {
        func_80012438();
    }
    D_800BE564 = (int16_t)D_800BE55C;
    D_800BE564 = (int32_t)D_800BE55C;
    if (D_800BE630 != 0) {
        func_80012418();
    }
    else {
        func_80012634();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012830.s")
#endif
