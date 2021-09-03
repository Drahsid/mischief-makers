#include "GameSave.h"
#include <data_symbols.h>
#include <function_symbols.h>
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
u32 D_800C4FC0[10]={0x10000,0x20000,0x40000,0x64,3,0x20000,3,0x40000,0,0x40000};
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004E90.s")

int32_t IsOver999(uint32_t x) { //{Vegeta Joke}
    if (999 < x) return 1;
    return 0;
}
u8 D_800C5018[]={0,0,0,1,1,0,1,0,1,0,0,0};
/*
u32 func_80004F24(void){
    u16 i,b;
    u32 ret=1;
    u32* x;
    for(i=0;i++;i<7){
      if(D_800C5018[i]) b=IsOver999(gFestivalRecords[i]);
      else b= func_80004E90(gFestivalRecords[i]);
      if(b){
         ret=1;
         *x=D_800C4FC0[i];}
    }
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80004F24.s")
/*
void GameSave_Initialize(u8 slot){
  u16 i;
  for(i=0;i<11;i++){gGameSave_Names[slot][i] = GameSave_DefaultName[i];}
  gGameSave_Age[slot] = 0;
  gGameSave_Sex[slot] = 0;
  gGameSave_RedGems[slot] = 30;
  gGameSave_YellowGems[slot] = 0;
  gGameSave_PlayTime[slot]=(u64)0;
}*/

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
    osEepromLongWrite(&gContMesgq, 2, gGameSave_Names, 0x48);

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
/*
void func_80006B1C(u16 i){
    u16 j;
    i&=0xFFFF;
    for(j=i+0xab;j<i+0xBD;j++) gActors[j].flag=0;
    func_80006360(i);
    gGameSubState=1;
    gSaveSlotIndex=0;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80006CC8.s")
/*
void func_80006DF4(u16 i){
    gActors[i].unk_0xBC+=8.0;
    gActors[i].unk_0xC0+=8.0;
    gActors[i+1].unk_0xBC-=8.0;
    gActors[i+1].unk_0xC0-=8.0;
}
*/
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
void NameEntry_EnterChar(uint16_t* lang1, uint16_t* lang2, uint16_t* Eng) {
    if (gNameEntryCurrentChar < 10) {
        if (gNameEntryLanguage == 0) gNameEntrySpace[gNameEntryCurrentChar] = lang1[gNameEntrySelectedColumn];
        else if (gNameEntryLanguage == 1)
            gNameEntrySpace[gNameEntryCurrentChar] = lang2[gNameEntrySelectedColumn];
        else if (gNameEntryLanguage == 2)
            gNameEntrySpace[gNameEntryCurrentChar] = Eng[gNameEntrySelectedColumn];
        SFX_Play_1(0x23);
        SFX_Play_1(0x10d);
        func_80007ABC();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/NameEntry_EnterChar.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/GameSave/func_80007C8C.s")
