#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>
#include "alphabet.h"

char GameSave_EEPROMID[8]="TREA0722";

u16 gTimeRecords[64]=
 {36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,
  36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,
  36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,
  36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000,36000};

u16 GameSave_DefaultName[11]={ALPHA_Cap_S,ALPHA_Lower_T,ALPHA_Lower_A,ALPHA_Lower_R,ALPHA_Lower_T,
  ALPHA_Space,ALPHA_Space,ALPHA_Space,ALPHA_Space,ALPHA_Space,ALPHA_NULL};

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004E90.s")

int32_t IsOver999(uint32_t x) { //{Vegeta Joke}
    if (999 < x) return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004F24.s")
/*
void GameSave_Initialize(u8 slot){
  u16 i;
  for(i=0;i<11;i++) GameSave_Names[slot][i] = GameSave_DefaultName[i];
  GameSave_Age[slot] = 0;
  GameSave_Sex[slot] = 0;
  GameSave_RedGems[slot] = 30;
  GameSave_YellowGems[slot] = 0;
  GameSave_PlayTime[slot]=0;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_Initialize.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_SetDefaults.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/GameSave_CheckAndWipe.s")

void GameSave_LoadRecords(void) {
    uint16_t index;

    osEepromProbe(&gContMesgq);
    if (gSaveSlotIndex) {
        osEepromLongRead(&gContMesgq, 0x24, &gFestivalRecords, 0x32);
        osEepromLongRead(&gContMesgq, 0x2C, &gTimeRecords, 0x80);
    }
    else {
        osEepromLongRead(&gContMesgq, 0xC, &gFestivalRecords, 0x32);
        osEepromLongRead(&gContMesgq, 0x14, &gTimeRecords, 0x80);
    }
    if (D_80171B19 >= 2) D_80171B19 = 0;

    func_80004F24();

    for (index = 0; index < 64; index++) {
        if (gTimeRecords[index] > 36000) gTimeRecords[index] = 36000;
    }
}

void func_80005770(void) {
    osEepromProbe(&gContMesgq);
    osEepromLongWrite(&gContMesgq, 2, GameSave_Names, 0x48);

    if (gSaveSlotIndex) {
        osEepromLongWrite(&gContMesgq, 0x24, &gFestivalRecords, 0x32);
        osEepromLongWrite(&gContMesgq, 0x2C, &gTimeRecords, 0x80);
    }
    else {
        osEepromLongWrite(&gContMesgq, 0xC, &gFestivalRecords, 0x32);
        osEepromLongWrite(&gContMesgq, 0x14, &gTimeRecords, 0x80);
    }
}

void GameSave_Erase(void) {
    GameSave_Initialize(gSaveSlotIndex);
    GameSave_SetDefaults();
    func_80005770();
}

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800058E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800059A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80005C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_8000607C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006DF4.s")

#ifdef NON_MATCHING
void func_80006E60(void) {
    gCurrentStage = (uint8_t)gWorldProgress;
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

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007578.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_800075A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_PrintKeyboard.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_Setup.s")
#ifdef NON_MATCHING
// compiler refuses to recognize symbols
void NameEntry_IsMaxed(void){
  if (NameEntryCurrentChar == 10) {
    nameEntrySelectedColumn = 2;
    nameEntrySelectedRow = 5;
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_IsMaxed.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007ABC.s")

#ifdef NON_MATCHING
// compiler refuses to recognize symbols
void NameEntry_EnterChar(uint16_t* lang1, uint16_t* lang2, uint16_t* Eng) {
    if (NameEntryCurrentChar < 10) {
        if (nameEntryLanguage == 0) nameEntrySpace[NameEntryCurrentChar] = lang1[nameEntrySelectedColumn];
        else if (nameEntryLanguage == 1)
            nameEntrySpace[NameEntryCurrentChar] = lang2[nameEntrySelectedColumn];
        else if (nameEntryLanguage == 2)
            nameEntrySpace[NameEntryCurrentChar] = Eng[nameEntrySelectedColumn];
        SFX_Play_1(0x23);
        SFX_Play_1(0x10d);
        func_80007ABC();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_EnterChar.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007C8C.s")
