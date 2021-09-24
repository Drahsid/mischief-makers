#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_800121D0(void) {
    uint16_t index = gPlayerActorp->healthu;
    Actor* player = gPlayerActorp; // required to match

    Actor_Spawn(0);

    player->health = index;
    gPlayerActorp->pos.z = 1;
    gPlayerVelXMirror = 0;
    gPlayerVelYMirror = 0;
    gPlayerActorp->unk_0xCC = 0;
    D_800BE5D4 = 0;
    D_800BE5F0 = 0;
    D_800BE5F8 = 0;

    for (index = 0; index < 64; index++) {
        gInputHistoryPress[index] = 0;
        gInputHistoryHold[index] = 0;
    }

    func_8004A960(0);
}

void func_80012288(void) {
    gPlayerActor.unk_0xD2 = 0x16;
    func_800121D0();
}

void func_800122B0(void) {
    int32_t temp_a0;
    uint16_t phi_a0;

    if (D_800BE5D4 != 0) {
        gButtonHold &= gButton_Start;
        gButtonPress &= gButton_Start;
    }

    for (phi_a0 = 0x3F; phi_a0 > 0; phi_a0--) {
        gInputHistoryHold[phi_a0] = gInputHistoryHold[phi_a0 - 1];
        gInputHistoryPress[phi_a0] = gInputHistoryPress[phi_a0 - 1];
    }

    gInputHistoryHold[0] = gButtonHold & (gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A);
    gInputHistoryPress[0] = gButtonPress & (gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A);
}

void func_800123AC(void) {
    int32_t temp = gPlayerPosXMirror._hi - D_800BE558._hi;
    if (temp < -0x90) {
        gPlayerPosXMirror._hi = D_800BE558._hi - 0x90;
        gPlayerActorp->pos.x = -0x90;
    }
    else if (temp >= 0x91) {
        gPlayerPosXMirror._hi = D_800BE558._hi + 0x90;
        gPlayerActorp->pos.x = 0x90;
    }
    else {
        gPlayerActorp->pos.x = gPlayerPosXMirror._hi - D_800BE558._hi;
    }
}

void func_80012418(void) {
    gPlayerActor.pos.y = gPlayerPosYMirror._hi - D_800BE55C._hi;
}

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012634.s")

#ifdef NON_MATCHING
/* Differences come from when we read D_800BE558 and D_800BE55C
 * The code reads them as 16 bit, then 32 bit
 * I am not sure how to replicate, since what I have currently written gets optimized out
 */
void func_80012830(void) {
    D_800BE560._hi = D_800BE558;
    D_800BE560._w = D_800BE558;
    if (D_800BE62C != 0) {
        func_800123AC();
    }
    else {
        func_80012438();
    }

    D_800BE564._hi = D_800BE55C;
    D_800BE564._w = D_800BE55C;
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
