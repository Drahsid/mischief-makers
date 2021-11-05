#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
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
//lock player and camera in x.
void func_800123AC(void) {
    int32_t temp = gPlayerPosXMirror._hi - gScreenPosCurrentX._hi;
    if (temp < -0x90) {
        gPlayerPosXMirror._hi = gScreenPosCurrentX._hi - 0x90;
        gPlayerActorp->pos.x = -0x90;
    }
    else if (temp >= 0x91) {
        gPlayerPosXMirror._hi = gScreenPosCurrentX._hi + 0x90;
        gPlayerActorp->pos.x = 0x90;
    }
    else {
        gPlayerActorp->pos.x = gPlayerPosXMirror._hi - gScreenPosCurrentX._hi;
    }
}

void func_80012418(void) {
    gPlayerActor.pos.y = gPlayerPosYMirror._hi - gScreenPosCurrentY._hi;
}

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012634.s")

void func_80012830(void) {
    gScreenPosNextX._hi = gScreenPosCurrentX._hi;
    gScreenPosNextX._w = gScreenPosCurrentX._w;
    if (gScreenXLock) {
        func_800123AC();
    }
    else {
        func_80012438();
    }

    gScreenPosNextY._hi = gScreenPosCurrentY._hi;
    gScreenPosNextY._w = gScreenPosCurrentY._w;
    if (gScreenYLock) {
        func_80012418();
    }
    else {
        func_80012634();
    }
}
