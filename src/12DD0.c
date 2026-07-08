#include "common.h"

void func_800121D0(void) {
    u16 index;
    u16 actor_index;

    actor_index = 0;
    index = gActors[actor_index].health;
    Actor_Initialize(actor_index);
    gActors[actor_index].health = index;
    gActors[0].posZ.whole = 1;
    gPlayerVelXMirror.raw = 0;
    gPlayerVelYMirror.raw = 0;
    gActors[0].unk_0CC = 0;
    D_800BE5D4 = 0;
    D_800BE5F0 = 0;
    D_800BE5F8 = 0;
    for (index = 0; index < 0x40; index++) {
        gButtonPressHistory[index] = 0;
        gButtonHoldHistory[index] = 0;
    }
    func_8004A960(0);
}

void func_80012288(void) {
    gActors[0].actorType = 0x16;
    func_800121D0();
}

void func_800122B0(void) {
    s32 button_mask;
    u16 index;

    if (D_800BE5D4 != 0) {
        gButtonHold &= gButton_Start;
        gButtonPress &= gButton_Start;
    }
    for (index = 0x3F; index > 0; index--) {
        gButtonHoldHistory[index] = gButtonHoldHistory[index - 1];
        gButtonPressHistory[index] = gButtonPressHistory[index - 1];
    }
    button_mask = gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A;
    gButtonHoldHistory[0] = gButtonHold & button_mask;
    gButtonPressHistory[0] = gButtonPress & button_mask;
}

void func_800123AC(void) {
    s32 delta_x;

    delta_x = gPlayerPosX.whole - gScreenPosCurrentX.whole;
    if (delta_x < -0x90) {
        gPlayerPosX.whole = gScreenPosCurrentX.whole - 0x90;
        gActors[0].posX.whole = -0x90;
    }
    else if (delta_x >= 0x91) {
        gPlayerPosX.whole = gScreenPosCurrentX.whole + 0x90;
        gActors[0].posX.whole = 0x90;
    }
    else {
        gActors[0].posX.whole = gPlayerPosX.whole - gScreenPosCurrentX.whole;
    }
}

void func_80012418(void) {
    gActors[0].posY.whole = gPlayerPosY.whole - gScreenPosCurrentY.whole;
}

void func_80012438(void) {
    s32 temp_x;
    FixedCoord step_x;

    if (D_800BE544 == 0) {
        func_80046498(D_800BE544);
    }
    else if (D_800BE544 != 0x8000) {
        gScreenPosTargetX.raw = (gActors[D_800BE544].posX.raw + gScreenPosCurrentX.raw + gPlayerPosX.raw) / 2;
        if (gScreenPosTargetX.raw > gPlayerPosX.raw + 0x300000) {
            gScreenPosTargetX.raw = gPlayerPosX.raw + 0x300000;
        }
        if (gScreenPosTargetX.raw < gPlayerPosX.raw + -0x300000) {
            gScreenPosTargetX.raw = gPlayerPosX.raw + -0x300000;
        }
    }
    
    D_800BE61C = 0;
    temp_x = (gScreenPosTargetX.raw + D_800BE61C - gScreenPosCurrentX.raw) / D_800BE704;
    step_x.raw = temp_x;
    temp_x = func_8005C6D0(temp_x);
    if (temp_x < 0x10000) {
        temp_x = 0x10000;
    }
    step_x.raw = temp_x;
    if (temp_x > D_800BE548.raw) {
        step_x.raw = D_800BE548.raw;
    }
    gScreenPosCurrentX.whole = Math_ApproachS32(gScreenPosCurrentX.whole, gScreenPosTargetX.whole, step_x.whole);
    if (gScreenPosCurrentX.whole < D_800BE568.whole + 0x90) {
        gScreenPosCurrentX.whole = D_800BE568.whole + 0x90;
    }
    if (gScreenPosCurrentX.whole > D_800BE56C.whole - 0x90) {
        gScreenPosCurrentX.whole = D_800BE56C.whole - 0x90;
    }
    gActors[0].posX.whole = (gPlayerPosX.whole) - gScreenPosCurrentX.whole;
}

void func_80012634(void) {
    s32 temp_y;
    FixedCoord step_y;

    if (D_800BE544 == 0) {
        func_8004667C();
    }
    else if (D_800BE544 != 0x8000) {
        gScreenPosTargetY.raw = (gActors[D_800BE544].posY.raw + gScreenPosCurrentY.raw + gPlayerPosY.raw) / 2;
        if (gScreenPosTargetY.raw > gPlayerPosY.raw + 0x500000) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + 0x500000;
        }
        if (gScreenPosTargetY.raw < gPlayerPosY.raw + -0x500000) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + -0x500000;
        }
    }
    D_800BE620 = 0;
    temp_y = (gScreenPosTargetY.raw + D_800BE620 - gScreenPosCurrentY.raw) / D_800BE708;
    step_y.raw = temp_y;
    temp_y = func_8005C6D0(temp_y);
    if (temp_y < 0x10000) {
        temp_y = 0x10000;
    }
    step_y.raw = temp_y;
    if (temp_y > D_800BE54C.raw) {
        step_y.raw = D_800BE54C.raw;
    }
    gScreenPosCurrentY.whole = Math_ApproachS32(gScreenPosCurrentY.whole, gScreenPosTargetY.whole, step_y.whole);
    if (gScreenPosCurrentY.whole < D_800BE574.whole + 0x70) {
        gScreenPosCurrentY.whole = D_800BE574.whole + 0x70;
    }
    if (gScreenPosCurrentY.whole > D_800BE570.whole - 0x70) {
        gScreenPosCurrentY.whole = D_800BE570.whole - 0x70;
    }
    gActors[0].posY.whole = gPlayerPosY.whole - gScreenPosCurrentY.whole;
}

void func_80012830(void) {
    gScreenPosNextX.whole = gScreenPosCurrentX.whole;
    gScreenPosNextX.raw = gScreenPosCurrentX.raw;
    if (gScreenXLock) {
        func_800123AC();
    }
    else {
        func_80012438();
    }
    gScreenPosNextY.whole = gScreenPosCurrentY.whole;
    gScreenPosNextY.raw = gScreenPosCurrentY.raw;
    if (gScreenYLock) {
        func_80012418();
    }
    else {
        func_80012634();
    }
}
