#include "common.h"

void Marina_Reset(void) {
    u16 index;
    u16 actor_index;

    actor_index = PLAYER_INDEX;
    index = gActors[actor_index].health;
    Actor_Initialize(actor_index);
    gActors[actor_index].health = index;
    gPlayerActor.posZ.whole = 1;
    gPlayerVelXMirror.raw = 0;
    gPlayerVelYMirror.raw = 0;
    gPlayerActor.unk_0CC = 0;
    gStartButtonOnly = FALSE;
    D_800BE5F0 = 0;
    D_800BE5F8 = 0;
    for (index = 0; index < 0x40; index++) {
        gButtonPressHistory[index] = 0;
        gButtonHoldHistory[index] = 0;
    }
    Marina_State0(PLAYER_INDEX);
}

void Marina_Init(void) {
    gPlayerActor.actorType = ACTORTYPE_MARINA;
    Marina_Reset();
}

void Marina_UpdateInput(void) {
    s32 button_mask;
    u16 index;

    if (gStartButtonOnly) {
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

void Marina_ScreenXLock(void) {
    s32 delta_x;

    delta_x = gPlayerPosX.whole - gScreenPosCurrentX.whole;
    if (delta_x < -0x90) {
        gPlayerPosX.whole = gScreenPosCurrentX.whole - 0x90;
        gPlayerActor.posX.whole = -0x90;
    }
    else if (delta_x >= 0x91) {
        gPlayerPosX.whole = gScreenPosCurrentX.whole + 0x90;
        gPlayerActor.posX.whole = 0x90;
    }
    else {
        gPlayerActor.posX.whole = gPlayerPosX.whole - gScreenPosCurrentX.whole;
    }
}

void Marina_ScreenYLock(void) {
    gPlayerActor.posY.whole = gPlayerPosY.whole - gScreenPosCurrentY.whole;
}

void Marina_ScreenXScroll(void) {
    s32 temp_x;
    FixedCoord step_x;

    if (D_800BE544 == 0) {
        func_80046498();
    }
    else if (D_800BE544 != 0x8000) {
        gScreenPosTargetX.raw = (gActors[D_800BE544].posX.raw + gScreenPosCurrentX.raw + gPlayerPosX.raw) / 2;
        if (gScreenPosTargetX.raw > gPlayerPosX.raw + FIXED_UNIT(48.0)) {
            gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(48.0);
        }
        if (gScreenPosTargetX.raw < gPlayerPosX.raw + FIXED_UNIT(-48.0)) {
            gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(-48.0);
        }
    }
    
    D_800BE61C = 0;
    temp_x = (gScreenPosTargetX.raw + D_800BE61C - gScreenPosCurrentX.raw) / D_800BE704;
    step_x.raw = temp_x;
    temp_x = func_8005C6D0(temp_x);
    if (temp_x < FIXED_UNIT(1.0)) {
        temp_x = FIXED_UNIT(1.0);
    }
    step_x.raw = temp_x;
    if (temp_x > D_800BE548.raw) {
        step_x.raw = D_800BE548.raw;
    }
    gScreenPosCurrentX.whole = Math_ApproachS32(gScreenPosCurrentX.whole, gScreenPosTargetX.whole, step_x.whole);
    if (gScreenPosCurrentX.whole < gScreenBoundX0.whole + 0x90) {
        gScreenPosCurrentX.whole = gScreenBoundX0.whole + 0x90;
    }
    if (gScreenPosCurrentX.whole > gScreenBoundX1.whole - 0x90) {
        gScreenPosCurrentX.whole = gScreenBoundX1.whole - 0x90;
    }
    gPlayerActor.posX.whole = (gPlayerPosX.whole) - gScreenPosCurrentX.whole;
}

void Marina_ScreenYScroll(void) {
    s32 temp_y;
    FixedCoord step_y;

    if (D_800BE544 == 0) {
        func_8004667C();
    }
    else if (D_800BE544 != 0x8000) {
        gScreenPosTargetY.raw = (gActors[D_800BE544].posY.raw + gScreenPosCurrentY.raw + gPlayerPosY.raw) / 2;
        if (gScreenPosTargetY.raw > gPlayerPosY.raw + FIXED_UNIT(80.0)) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(80.0);
        }
        if (gScreenPosTargetY.raw < gPlayerPosY.raw + FIXED_UNIT(-80.0)) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(-80.0);
        }
    }
    D_800BE620 = 0;
    temp_y = (gScreenPosTargetY.raw + D_800BE620 - gScreenPosCurrentY.raw) / D_800BE708;
    step_y.raw = temp_y;
    temp_y = func_8005C6D0(temp_y);
    if (temp_y < FIXED_UNIT(1.0)) {
        temp_y = FIXED_UNIT(1.0);
    }
    step_y.raw = temp_y;
    if (temp_y > D_800BE54C.raw) {
        step_y.raw = D_800BE54C.raw;
    }
    gScreenPosCurrentY.whole = Math_ApproachS32(gScreenPosCurrentY.whole, gScreenPosTargetY.whole, step_y.whole);
    if (gScreenPosCurrentY.whole < gScreenBoundY1.whole + 0x70) {
        gScreenPosCurrentY.whole = gScreenBoundY1.whole + 0x70;
    }
    if (gScreenPosCurrentY.whole > gScreenBoundY0.whole - 0x70) {
        gScreenPosCurrentY.whole = gScreenBoundY0.whole - 0x70;
    }
    gPlayerActor.posY.whole = gPlayerPosY.whole - gScreenPosCurrentY.whole;
}

void Marina_ScreenScroll(void) {
    gScreenPosNextX.whole = gScreenPosCurrentX.whole;
    gScreenPosNextX.raw = gScreenPosCurrentX.raw;
    if (gScreenXLock) {
        Marina_ScreenXLock();
    }
    else {
        Marina_ScreenXScroll();
    }
    gScreenPosNextY.whole = gScreenPosCurrentY.whole;
    gScreenPosNextY.raw = gScreenPosCurrentY.raw;
    if (gScreenYLock) {
        Marina_ScreenYLock();
    }
    else {
        Marina_ScreenYScroll();
    }
}
