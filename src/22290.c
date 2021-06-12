#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80021690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_8002170C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800218FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022470.s")

#ifdef NON_MATCHING
void func_80022D10(void) {
    func_80043478();
    D_800BE668 = (uint16_t)0x32;
    D_800BE6E4 = (uint8_t)0;
    D_800BE6E8 = (uint8_t)0;
    D_800BE6EC = (uint8_t)0;
    D_800BE514 = (uint16_t)0x4000;
    D_800BE518 = (uint16_t)0x8000;
    D_800BE700 = (uint16_t)0;
    D_800CA238 = (uint16_t)0;
    gGameState = (uint16_t)0; // nonmatching, instructions are in a flipped order?
    gGameSubState = (uint16_t)0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022D10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022D88.s")

#ifdef NON_MATCHING
// I had this matching, but something I changed made it not match
// This function is called when the user soft-resets the game
uint16_t func_80022F48(void) {
    uint16_t temp_ret;

    if (gGameSubState == 0) {
        // disables every actor
        func_800230B8();
        func_8002312C();
        temp_ret = func_80023168();
        gGameSubState++;
        return temp_ret;
    }
    if (gGameSubState != 1) {
        return gGameSubState;
    }
    func_80022D88();
    func_80025E6C();
    func_80004FFC(0);
    func_80004FFC(1);
    func_800050B4();
    // reset control bindings
    D_800BE500 = (uint16_t)0x1000;
    D_800BE504 = (uint16_t)0x800;
    D_800BE508 = (uint16_t)0x400;
    D_800BE50C = (uint16_t)0x200;
    D_800BE510 = (uint16_t)0x100;
    D_800BE514 = (uint16_t)0x4000;
    D_800BE518 = (uint16_t)0x8000;
    D_800BE51C = (uint16_t)2;
    D_800BE520 = (uint16_t)4;
    D_800BE524 = (uint16_t)8;
    D_800BE528 = (uint16_t)1U;
    D_800BE52C = (uint16_t)0x2000;
    D_800BE530 = (uint16_t)0x20;
    D_800BE534 = (uint16_t)0x10;
    D_801781F8 = (uint16_t)0;
    D_800CBF44 = (uint16_t)0;
    // sets Marina's health to 1000
    D_800EF5F0 = (uint16_t)0x3E8;
    D_80178136 = (uint16_t)0x1E;
    gGameState = (uint16_t)1U;
    gGameSubState = (uint16_t)0U;
    return (uint16_t)1U;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022F48.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800230B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_8002312C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80023168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800232A4.s")
