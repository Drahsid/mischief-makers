#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80021690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_8002170C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800218FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022470.s")

void func_80022D10(void) {
    func_80043478();
    D_800BE668 = 0x32;
    D_800BE6E4 = 0;
    D_800BE6E8 = 0;
    D_800BE6EC = 0;
    D_800BE514 = 0x4000;
    D_800BE518 = 0x8000;
    D_800BE700 = 0;
    D_800CA238 = 0;
    gGameState = 0;
    gGameSubState = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022D88.s")

#ifdef NON_MATCHING
// I had this matching, but something I changed made it not match
// This function is called when the user soft-resets the game
volatile uint16_t func_80022F48(void) {
    uint16_t temp_ret;
    if (gGameSubState == 0) {
        func_800230B8();
        func_8002312C();
        if (!gGameSubState) {
        }

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
    D_800BE500 = ((uint16_t)0x1000) & 0xFFFFu;
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
    gPlayerActor.health = (uint16_t)0x3E8;
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

#ifdef NON_MATCHING
// Needs regalloc fixes, and reordering related to a structure
void func_800232A4(void) {
    int32_t temp_t6_2;
    int32_t temp_t8_2;
    int32_t temp_v0;
    uint16_t temp_t8_3;
    int32_t phi_v0;
    int32_t phi_v0_2;

    for (phi_v0 = 0; phi_v0 < 4; phi_v0 = (phi_v0 + 1) & 0xFFFF) {
        (&D_801376BC)[phi_v0] = (uint8_t)1;
        (&D_801376B8)[phi_v0] = (uint8_t)1;
        (&D_801376A8)[phi_v0] = (uint8_t)0;
        *((uint8_t*)0x801376AC + phi_v0) = (uint8_t)0;
        *((uint8_t*)0x801376B0 + phi_v0) = (uint8_t)0;
        *((uint8_t*)0x801376B4 + phi_v0) = (uint8_t)0xFF;
    }

    D_800BE6F0 = (uint8_t)0xFF;
    D_800BE63C = (int16_t)gPlayerActorp->health;
    D_800BE6C0 = -8;
    D_800BE6AC = 4;

    for (phi_v0 = 0; phi_v0 < 8; phi_v0 = (phi_v0 + 1) & 0xFFFF) {
        ((uint16_t*)&D_80137480)[phi_v0] = (uint16_t)0;
    }

    temp_t8_2 = 0 & 0xFFFF;
    D_801373E0->unk_0x078 = 0;
    D_800D5820 = (uint16_t)0;
    D_800BE5F4 = temp_t8_2;
    D_800CA230 = (int16_t)temp_t8_2;
    D_80137D90 = (int16_t)temp_t8_2;
    D_800BE6FC = (int16_t)temp_t8_2;
    D_800BE58C = (int16_t)temp_t8_2;
    D_800BE588 = (int16_t)temp_t8_2;
    gPlayerActorp->unk_0xD0 = (uint16_t)temp_t8_2;
    D_800BE564 = temp_t8_2 & 0xFFFF;
    temp_t6_2 = D_800BE564;
    D_800BE560 = (uint32_t)temp_t6_2;
    D_800BE55C = temp_t6_2;
    D_800BE558 = temp_t6_2;
    D_800BE554 = temp_t6_2;
    D_800BE550 = temp_t6_2;
    D_800BE618 = temp_t6_2;
    D_800BE614 = temp_t6_2;
    D_800BE610 = temp_t6_2;
    D_800BE73C = temp_t6_2;
    D_800BE5F0 = (int16_t)temp_t6_2;
    D_800BE5EC = (int32_t)D_800BE5F0;
    D_800BE5E8 = (int32_t)D_800BE5EC;
    D_800BE5DC = D_800BE5E8;
    D_800BE5D8 = D_800BE5DC;
    temp_v0 = D_800BE5D8;
    gPlayerActorp->pos_y = temp_v0;
    gPlayerActorp->pos_x = temp_v0;
    D_800BE6A4 = (uint16_t)temp_v0;
    temp_t8_3 = D_800BE6A4;
    D_800BE590 = temp_t8_3;
    D_800BE594 = temp_t8_3;
    D_801782B8 = temp_t8_3;
    D_800BE4E0 = temp_t8_3;
    D_800BE4E4 = temp_t8_3;
    D_8013747C = temp_t8_3;
    D_800BE674 = temp_t8_3;
    D_800BE66C = temp_t8_3;
    gGamePaused = temp_t8_3;
    func_80042D84(0, gActors, (void*)0x801373E0, (void*)0x800D5820);
    func_80010A10();
    func_800230B8();
    func_80023168();
    func_80012288();
    D_800BE5D4 = 1;
    func_8008C4E0(0x41);
    func_80043918();
    if (gGameState == 5) {
        D_800D2908 = (uint16_t)0;
    }

    func_80025C38();
    D_801781E0 = 0;
    D_800D294C = (uint16_t)0;
    func_80010C20(D_800BE5D0);
    func_80021034();
    func_80047CCC();
    func_80047C98();
    func_8001DC60();
    *(&D_801781F4) = (uint32_t)D_80171B14;
    *((uint32_t*)((uint8_t*)&D_801781F4 - 0x7E10)) = (uint32_t)D_80171B10;
    gGameState = 6;
    gGameSubState = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800232A4.s")
#endif
