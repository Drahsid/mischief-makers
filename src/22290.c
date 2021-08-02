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
    gButton_B = 0x4000;
    gButton_A = 0x8000;
    D_800BE700 = 0;
    AttractModeIndex = 0;
    gGameState = GAMESTATE_SOFTRESET;
    gGameSubState = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_80022D88.s")

// This function is called when the user soft-resets the game
void func_80022F48(void) {
    if (gGameSubState != 0) {
        if (gGameSubState != 1) {
            return;
        }
    }
    else {
        func_800230B8();
        func_8002312C();
        func_80023168();

        gGameSubState++;
        return;
    }

    func_80022D88();
    func_80025E6C();
    GameSave_Initialize(0);
    GameSave_Initialize(1);
    GameSave_SetDefaults();

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
    D_801781F8 = 0;
    D_800CBF44 = 0;
    gPlayerActor.health = 1000;
    gRedGems = 30;
    gGameState = GAMESTATE_INTRO;
    gGameSubState = 0;
    return;
}
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
    gPlayerVelYMirror = (int32_t)D_800BE5F0;
    gPlayerVelXMirror = (int32_t)gPlayerVelYMirror;
    gPlayerPosYMirror = gPlayerVelXMirror;
    gPlayerPosXMirror = gPlayerPosYMirror;
    temp_v0 = gPlayerPosXMirror;
    gPlayerActorp->pos.y = temp_v0;
    gPlayerActorp->pos.x = temp_v0;
    D_800BE6A4 = (uint16_t)temp_v0;
    temp_t8_3 = D_800BE6A4;
    D_800BE590 = temp_t8_3;
    D_800BE594 = temp_t8_3;
    gStageTimeReal = temp_t8_3;
    D_800BE4E0 = temp_t8_3;
    D_800BE4E4 = temp_t8_3;
    D_8013747C = temp_t8_3;
    D_800BE674 = temp_t8_3;
    D_800BE66C = temp_t8_3;
    gGamePaused = temp_t8_3;
    func_80042D84(0);
    func_80010A10();
    func_800230B8();
    func_80023168();
    func_80012288();
    D_800BE5D4 = 1;
    func_8008C4E0(0x41);
    func_80043918();
    if (gGameState == GAMESTATE_LOADING) {
        D_800D2908 = (uint16_t)0;
    }

    func_80025C38();
    gStageTime = 0;
    D_800D294C = (uint16_t)0;
    func_80010C20(D_800BE5D0);
    GamePlay_Tick();
    func_80047CCC();
    func_80047C98();
    func_8001DC60();
    YelloGemBitfeildTemp = gYellowGemBitfeild;
    gGameState = GAMESTATE_GAMEPLAY;
    gGameSubState = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/22290/func_800232A4.s")
#endif
