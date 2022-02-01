#include "GameSave.h"
#include "common.h"
#include "SFX.h"


char gEEPROMID[8] = "TREA0722";

uint16_t gTimeRecords[64] = {
    36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000,
    36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000,
    36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000,
    36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000,
    36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000, 36000
};

uint16_t gDefaultFileName[11] = {
    ALPHA_UPPER_S, ALPHA_LOWER_T, ALPHA_LOWER_A, ALPHA_LOWER_R, ALPHA_LOWER_T, ALPHA_SPACE,
    ALPHA_SPACE,   ALPHA_SPACE,   ALPHA_SPACE,   ALPHA_SPACE,   ALPHA_NULL
};

// This function gets the lower 4 bits of the word lhs + (offset)
// Difference is flipped instructions
#ifdef NON_MATCHING
uint16_t func_80004E70(uint32_t lhs, int32_t offset) {
    return lhs & (0xF << (offset * 4)) >> (offset * 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004E70.s")
#endif

int32_t func_80004E90(uint32_t arg0) {
    uint16_t index;

    for (index = 0; index < 8; index++) {
        if (D_800C5010[index] < func_80004E70(arg0, index)) {
            return 1;
        }
    }
    return 0;
}

int32_t IsOver999(uint32_t x) { //{Vegeta Joke}
    if (999 < x) {
        return 1;
    }
    return 0;
}
//seems to check festival records and default them at certain conditions.
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004F24.s")

#ifdef NON_MATCHING
void GameSave_Initialize(uint8_t slot) {
    uint16_t index;
    for (index = 0; index < 11; index++) {
        GameSave_Names[slot][i] = gDefaultFileName[i];
    }

    GameSave_Age[slot] = 0;
    GameSave_Sex[slot] = 0;
    GameSave_RedGems[slot] = 30;
    GameSave_YellowGems[slot] = 0;
    GameSave_PlayTime[slot] = (uint64_t)0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_Initialize.s")
#endif

// need to implicitly call __ll_lshift
#ifdef NON_MATCHING
void GameSave_SetDefaults(void) {
    uint16_t index;

    for (index = 0; index < 10; index++) {
        gFestivalRecords[index] = D_800C4FC0[index];
    }

    gYellowGemBitfeild = 0;
    (&gYellowGemBitfeild)[362] = 0;
    gWorldProgress = 0;
    D_80171B19 = 0;

    for (index = 0; index < 64; index++) {
        gTimeRecords[index] = 0x8CA0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_SetDefaults.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_CheckAndWipe.s")

void GameSave_LoadRecords(void) {
    uint16_t index;

    osEepromProbe(&gContMesgq);
    if (gSaveSlotIndex) {
        osEepromLongRead(&gContMesgq, 0x24, &gFestivalRecords, 0x32);
        osEepromLongRead(&gContMesgq, 0x2C, &gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongRead(&gContMesgq, 0xC, &gFestivalRecords, 0x32);
        osEepromLongRead(&gContMesgq, 0x14, &gTimeRecords, sizeof(gTimeRecords));
    }
    if (D_80171B19 >= 2) D_80171B19 = 0;

    func_80004F24();

    for (index = 0; index < 64; index++) {
        if (gTimeRecords[index] > 36000) gTimeRecords[index] = 36000;
    }
}

void GameSave_SaveRecords(void) {
    osEepromProbe(&gContMesgq);
    osEepromLongWrite(&gContMesgq, 2, gFileNames, 0x48);

    if (gSaveSlotIndex) {
        osEepromLongWrite(&gContMesgq, 0x24, &gFestivalRecords, 0x32);
        osEepromLongWrite(&gContMesgq, 0x2C, &gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongWrite(&gContMesgq, 0xC, &gFestivalRecords, 0x32);
        osEepromLongWrite(&gContMesgq, 0x14, &gTimeRecords, sizeof(gTimeRecords));
    }
}

void GameSave_Erase(void) {
    GameSave_Initialize(gSaveSlotIndex);
    GameSave_SetDefaults();
    GameSave_SaveRecords();
}

void func_80005860(uint16_t index, uint16_t pos_x, uint16_t pos_y, int32_t arg3) {
    Text_SpawnIcon(index, &gIcon_YellowGem, pos_x, pos_y, 0);
    gActors[index].flag2 |= 0x200;
    gActors[index].unk_0x18C._p = arg3;
}

// Differences related to implicit casts
#ifdef NON_MATCHING
void GameSave_PrintRedGems(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3, int32_t arg4) {
    uint16_t* red_gems = &gFileRedGems[arg3];
    Text_Print2Digits(arg0, *red_gems / 0x64, arg1, arg2, 0, arg4);
    Text_Print2Digits(arg0, *red_gems % 0x64, arg1 + 18, arg2, 0, arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_PrintRedGems.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800059A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_8000607C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006360.s")

#ifdef NON_MATCHING
void func_80006B1C(uint16_t i) {
    uint16_t j;
    for (j = i + 0xab; j < i + 0xBD; j++) {
        gActors[j].flag = 0;
    }

    func_80006360(i);
    gGameSubState = 1;
    gSaveSlotIndex = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B1C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006CC8.s")

void func_80006DF4(uint16_t index) {
    uint32_t temp = index; // int promotion magic??
    gActors[temp].rotateX += 8.0f;
    gActors[temp].rotateY += 8.0f;
    gActors[temp + 1].rotateX -= 8.0f;
    gActors[temp + 1].rotateY -= 8.0f;
}
//sets selected stage
#ifdef NON_MATCHING
void func_80006E60(void) {
    gCurrentStage = gWorldProgress;
    gCurrentScene = gStageScenes[gWorldProgress]; //array of scene indecies
    D_800D28E4 = D_800C83F8[gWorldProgress];
    func_80043918();
    D_800CBF40 = 1;
    gGameState = GAMESTATE_TRANSITION;
    gGameSubState = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006E60.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006EDC.s")
//menus use gActors' fields rather than their own variables.
#define NameEntryLanguage gActors[185].unk_0xA0
#define NameEntryCurrentChar gActors[184].unk_0xA0
#define nameEntrySelectedColumn gActors[177].unk_0xA0
#define nameEntrySelectedRow gActors[178].unk_0xA0

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_ConfirmName.s")

#ifdef NON_MATCHING
uint16_t NameEntry_PrintKeyboardHIRA(uint16_t index){
    Text_SpawnAt2(index,0x11e,0x80,0x44,0);
    gActors[index+1].flag=0;
    index=Text_PrintAlphaAtColor(index+2,D_800C52B0,0x40,0x44,0,0x80,0,0);
    gActors[index++].flag=0;
    gActors[index++].flag=0;
    gActors[index++].flag=0;
    gActors[index++].flag=0;
    index= Text_PrintAlphaAt(index+1, gNameEntryRow0HIRA,0xff80,0x30,0);
    index= Text_PrintAlphaAt(index, gNameEntryRow1HIRA,0xff80,0x20,0);
    index= Text_PrintAlphaAt(index, gNameEntryRow2HIRA,0xff80,0x10,0);
    index= Text_PrintAlphaAt(index, gNameEntryRow3HIRA,0xff80,0,0);
    index= Text_PrintAlphaAt(index, gNameEntryRow4HIRA,0xff80,0xffF0,0);
    gActors[index++].flag=0;
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_PrintKeyboardHIRA.s")
#endif

void func_80007578(void) {
    SFX_Play_2(SFX_MENU_BLIP);
    NameEntryLanguage = 0;
    NameEntry_PrintKeyboardHIRA(0xC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_PrintKeyboardKATA.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_PrintKeyboard.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_Setup.s")

void NameEntry_IsMaxed(void) {
    if (NameEntryCurrentChar == 10) {
        nameEntrySelectedColumn = 2;
        nameEntrySelectedRow = 5;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007ABC.s")

// Original Japanese version has 3 different character sets for name entry. All other regions have 1
#ifdef NON_MATCHING
void NameEntry_EnterChar(uint16_t* Hiragana, uint16_t* Katakana, uint16_t* Eng) {
    if (NameEntryCurrentChar != 10) {
        if (NameEntryLanguage == 0) {
            gNameEntrySpace[NameEntryCurrentChar] = Hiragana[nameEntrySelectedColumn];
        }
        if (NameEntryLanguage == 1) {
            gNameEntrySpace[NameEntryCurrentChar] = Katakana[nameEntrySelectedColumn];
        }
        if (NameEntryLanguage == 2) {
            gNameEntrySpace[NameEntryCurrentChar] = Eng[nameEntrySelectedColumn];
        }
        SFX_Play_1(SFX_MENU_DING);
        SFX_Play_1(0x10D);
        func_80007ABC();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_EnterChar.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/FileSelect_Tick.s")
