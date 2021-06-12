#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_80009940.s")

void func_80009BE0(void) {
    return;
}

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_80009BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_8000DD6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_8000EA88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_8000F290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_8000FBF4.s")

#ifdef NON_MATCHING
void func_80010898(void) {
    D_801780F0 = &D_8012ADC0;
    D_801780F4 = &D_80130F40;
    // need to get these Mtx pointers correctly
    guLookAt(D_801780F0 + 0x3000, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
    guLookAt(D_801780F4 + 0x3000, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_80010898.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_800109B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A540/func_80010A10.s")
