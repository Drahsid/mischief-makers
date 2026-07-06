#include "common.h"

extern u16 D_800CA238;
extern s16 D_800CBF44;

// .bss
u64 D_801781F0; // must be declared in TU
FestivalStruct gFestivalData;

// forward declarations
void func_80023168(void);
void func_8002312C(void);

void func_80022D10(void) {
    func_80043478();
    D_800BE668 = 0x32;
    gDrawMidground = 0;
    gDrawEnvLayer = 0;
    gDrawBackground = 0;
    gButton_B = B_BUTTON;
    gButton_A = A_BUTTON;
    gCurrentFramebufferIndex = 0;
    D_800CA238 = 0;
    gGameState = GAMESTATE_SOFTRESET;
    gGameStateSubState = 0;
}

void func_80022D88(void) {
    u16 index;
    u16* palette = PALETTE_80380200;

    gGamePaused = 0;
    gAudioFadeMode = 0;
    D_800CBF40 = 0;
    D_800CA230 = 0;
    gCannotPause = 0;
    gActorStall = 0;
    D_800BE66C = 0;
    D_800BE674 = 0;
    D_8013747C = 0;
    D_800BE6FC = 0;
    gDebugBitfield = 4;
    gDebugThrottle = 1;
    gRngSeed = 0x1234;
    gCamShakeV = 0;
    gCamShakeTime = 0;
    D_800BE678 = 0;
    gPortraitTint = 0xFF;
    gHealthDisplayed = gActors[0].health;
    Sound_StopMusic();
    Sound_StopAllSfx();
    func_800230B8();
    func_8002312C();
    func_80023168();
    func_80010A10();
    func_8008310C();
    gCurrentScene = SCENE_SPLASHSCREEN;
    func_80025C38();
    func_80043918();
    func_80010C20(gCurrentScene);
    palette[1] = palette[2] = 1;
    Text_SetHCColor(2, 1, 0, 0, 0);
    Text_SetHCColor(2, 2, 0, 0, 0);
    for (index = 0; index < 4; index++) {
        D_801376BC[index] = 1;
        D_801376A8[index] = 0xFF;
        D_801376AC[index] = 0xFF;
        D_801376B0[index] = 0xFF;
    }
}

void GameState_SoftReset(void) {
    switch (gGameStateSubState) {
    case 0:
        func_800230B8();
        func_8002312C();
        func_80023168();
        gGameStateSubState++;
        break;
    case 1:
        func_80022D88();
        func_80025E6C();
        func_80004FFC(0);
        func_80004FFC(1);
        func_800050B4();
        gButton_Start = START_BUTTON;
        gButton_DUp = U_JPAD;
        gButton_DDown = D_JPAD;
        gButton_DLeft = L_JPAD;
        gButton_DRight = R_JPAD;
        gButton_B = B_BUTTON;
        gButton_A = A_BUTTON;
        gButton_CLeft = L_CBUTTONS;
        gButton_CDown = D_CBUTTONS;
        gButton_CUp = U_CBUTTONS;
        gButton_CRight = R_CBUTTONS;
        gButton_ZTrig = Z_TRIG;
        gButton_LTrig = L_TRIG;
        gButton_RTrig = R_TRIG;
        gFestivalData.unk_00 = 0;
        D_800CBF44 = 0;
        gActors[0].health = 0x3E8;
        gRedGems = 0x1E;
        gGameState = GAMESTATE_INTRO;
        gGameStateSubState = 0;
        break;
    }
}

// clear all actors and static objects
void func_800230B8(void) {
    u16 index;
    for(index = 0; index < 208; index++){
        gActors[index].flags = 0;
        gActors[index].graphicList = NULL;
    }
        for(index = 0; index < 0x40; index++){
        D_801069E0[index].graphicIndex = 0;
    }
}

// clear all portraits
void func_8002312C(void) {
    u16 index;
    for(index = 0; index < ARRAYLENGTH(gPortraits); index++){
        gPortraits[index].flags = 0;
    }
}

void func_80023168(void) {
    u16 index;
    u16* palette;

    for (index = 0; index < 0x50; index++) {
        D_801374F0[index] = 0;
    }
    for (index = 0; index < 0x50; index++) {
        D_80137580[index] = 0;
    }
    for (index = 0; index < 0x50; index++) {
        D_80137610[index] = 0;
    }
    palette = PALETTE_80380000;
    for (index = 0; index < 0x300; index++) {
        *palette++ = 1;
    }
    D_800BE6C4 = 0;
    D_800BE6C8 = 0;
    gScreenPosCurrentX.whole = 0;
    gScreenPosCurrentY.whole = 0;
    D_8013769C = PALETTE_80380000;
    D_800BE6D0 = 0;
    D_800BE6D4 = 0;
    D_800BE578 = 0;
    D_800BE580 = 0;
    D_801376A0 = PALETTE_80380200;
    D_800BE6DC = 0;
    D_800BE6E0 = 0;
    D_800BE57C = 0;
    D_800BE584 = 0;
    D_801376A4 = PALETTE_80380400;
}

void GameState_Loading(void) {
    u16 index;

    for (index = 0; index < 4; index++) {
        D_801376BC[index] = 1;
        D_801376B8[index] = 1;
        D_801376A8[index] = 0;
        D_801376AC[index] = 0;
        D_801376B0[index] = 0;
        D_801376B4[index] = 0xFF;
    }

    gPortraitTint = 0xFF;
    gHealthDisplayed = gActors[0].health;
    gActorDepthFront = -8;
    gDebugBitfield = 4;

    for (index = 0; index < 8; index++) {
        D_80137480[index] = 0;
    }

    gGamePaused =
    D_800BE66C =
    D_800BE674 =
    D_8013747C =
    gFramesInScene =
    gActiveFrames =
    D_801782B8 =
    gCamShakeV =
    gCamShakeTime =
    D_800BE6A4 =
    gActors[0].posX.raw =
    gActors[0].posY.raw =
    gPlayerPosX.raw =
    gPlayerPosY.raw =
    gPlayerVelXMirror.raw =
    gPlayerVelYMirror.raw =
    D_800BE5F0 =
    D_800BE73C =
    D_800BE610 =
    D_800BE614 =
    D_800BE618 =
    gScreenPosTargetX.raw =
    gScreenPosTargetY.raw =
    gScreenPosCurrentX.raw =
    gScreenPosCurrentY.raw =
    gScreenPosNextX.raw =
    gScreenPosNextY.raw =
    D_800BE588 =
    D_800BE58C =
    gActors[0].state =
    D_800BE6FC =
    gAudioFadeMode =
    D_800CA230 =
    D_800BE5F4.unk_00_u32 =
    D_800D5820 =
    D_801373E0.unk_78 = 0;

    func_80042D84(0);
    func_80010A10();
    func_800230B8();
    func_80023168();
    func_80012288();
    D_800BE5D4 = 1;
    func_8008C4E0(0x41);
    func_80043918();
    if (gGameState == GAMESTATE_LOADING) {
        gSkipStageIntro = FALSE;
    }
    func_80025C38();
    gStageTime = 0;
    D_800D294C = 0;
    func_80010C20(gCurrentScene);
    GameState_Gameplay();
    func_80047CCC();
    func_80047C98();
    func_8001DC60();
    D_801781F0 = D_80171B10;
    gGameState = GAMESTATE_GAMEPLAY;
    gGameStateSubState = 0;
}
