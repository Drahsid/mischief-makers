#include "GameSave.h"
#include <SFX.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>

uint16_t gGameSave_Names[2][11];
uint8_t gGameSave_Age[2];
uint8_t gGameSave_Sex[2];
uint16_t gGameSave_RedGems[2];
uint16_t gGameSave_YellowGems[2];
uint64_t D_80171AD8[2]; // contains total play time
uint32_t gFestivalRecords[7];

// This function gets the lower 4 bits of the word lhs + (offset)
// Difference is flipped instructions
#ifdef NON_MATCHING
uint16_t func_80004E70(int32_t lhs, uint32_t offset) {
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
    if (999 < x) return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004F24.s")

// OK except for D_80171ADC stuff. Is it a struct?
#ifdef NON_MATCHING
void GameSave_Initialize(uint8_t save_index) {
    uint16_t index;

    for (index = 0; index < 11; index++) {
        gGameSave_Names[save_index][index] = D_800C4FA8[index];
    }

    gGameSave_Age[save_index] = 0;
    gGameSave_Sex[save_index] = 0;
    gGameSave_RedGems[save_index] = 30;
    gGameSave_YellowGems[save_index] = 0;
    D_80171ADC[save_index][0] = 0;
    *(uint32_t*)(((uint8_t*)&D_80171ADC) + 0x1AD8) = 0;
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

    osEepromProbe(&D_8012ADA0);
    if (gSaveSlotIndex) {
        osEepromLongRead(&D_8012ADA0, 0x24, &gFestivalRecords, 0x32);
        osEepromLongRead(&D_8012ADA0, 0x2C, &gTimeRecords, 0x80);
    }
    else {
        osEepromLongRead(&D_8012ADA0, 0xC, &gFestivalRecords, 0x32);
        osEepromLongRead(&D_8012ADA0, 0x14, &gTimeRecords, 0x80);
    }
    if (D_80171B19 >= 2) {
        D_80171B19 = 0;
    }

    func_80004F24();

    for (index = 0; index < 64; index++) {
        if (gTimeRecords[index] > 36000) {
            gTimeRecords[index] = 36000;
        }
    }
}

void func_80005770(void) {
    osEepromProbe(&D_8012ADA0);
    osEepromLongWrite(&D_8012ADA0, 2, gGameSave_Names, 0x48);

    if (gSaveSlotIndex) {
        osEepromLongWrite(&D_8012ADA0, 0x24, &gFestivalRecords, 0x32);
        osEepromLongWrite(&D_8012ADA0, 0x2C, &gTimeRecords, 0x80);
    }
    else {
        osEepromLongWrite(&D_8012ADA0, 0xC, &gFestivalRecords, 0x32);
        osEepromLongWrite(&D_8012ADA0, 0x14, &gTimeRecords, 0x80);
    }
}

void GameSave_Erase(void) {
    GameSave_Initialize(gSaveSlotIndex);
    GameSave_SetDefaults();
    func_80005770();
}

void func_80005860(uint16_t index, uint16_t pos_x, uint16_t pos_y, int32_t arg3) {
    func_80027510(index, &D_800E13DC, pos_x, pos_y, 0);
    gActors[index].unk_0x94 |= 0x200;
    gActors[index].unk_0x18C = arg3;
}

// Differences related to implicit casts
#ifdef NON_MATCHING
void func_800058E0(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3, int32_t arg4) {
    uint16_t* red_gems = &gGameSave_RedGems[arg3];
    func_80027800(arg0, *red_gems / 0x64, arg1, arg2, 0, arg4);
    func_80027800(arg0, *red_gems % 0x64, arg1 + 18, arg2, 0, arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800058E0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800059A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_8000607C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006CC8.s")

void func_80006DF4(uint16_t index) {
    uint32_t temp = index; // int promotion magic??
    gActors[temp].unk_0xBC += 8.0f;
    gActors[temp].unk_0xC0 += 8.0f;
    gActors[temp + 1].unk_0xBC -= 8.0f;
    gActors[temp + 1].unk_0xC0 -= 8.0f;
}

#ifdef NON_MATCHING
void func_80006E60(void) {
    gCurrentStage = gWorldProgress;
    D_800BE5D0 = D_800C8378[gWorldProgress];
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

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800072A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800073CC.s")

void func_80007578(void) {
    SFX_Play_2(SFX_MENU_BLIP);
    gNameEntryLanguage = 0;
    func_800073CC(0xC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800075A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_PrintKeyboard.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_Setup.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_IsMaxed.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007ABC.s")

#ifdef NON_MATCHING
void NameEntry_EnterChar(uint16_t* lang1, uint16_t* lang2, uint16_t* lang3) {
    if (gNameEntryCurrentChar < 10) {
        if (gNameEntryLanguage == 0) {
            gNameEntrySpace[gNameEntryCurrentChar] = lang1[gNameEntrySelectedColumn];
        }
        else if (gNameEntryLanguage == 1) {
            gNameEntrySpace[gNameEntryCurrentChar] = lang2[gNameEntrySelectedColumn];
        }
        else if (gNameEntryLanguage == 2) {
            gNameEntrySpace[gNameEntryCurrentChar] = lang3[gNameEntrySelectedColumn];
        }
        SFX_Play_1(SFX_MENU_DING);
        SFX_Play_1(0x10D);
        func_80007ABC();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_EnterChar.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007C8C.s")
