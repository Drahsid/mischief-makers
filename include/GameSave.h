#ifndef GAME_SAVE_H
#define GAME_SAVE_H

#include <ultra64.h>
#include <inttypes.h>

extern uint16_t gGameSave_Names[2][11];
extern uint8_t gGameSave_Age[2];
extern uint8_t gGameSave_Sex[2]; //0=M, 1=F
extern uint16_t gGameSave_RedGems[2];
extern uint16_t gGameSave_YellowGems[2];
extern uint64_t gGameSave_PlayTime[2]; 
extern uint32_t gFestivalRecords[7];

extern uint16_t func_80004E70(uint32_t x, int32_t y);
extern u32 func_80004E90();
extern int32_t IsOver999(uint32_t x);
extern u32 func_80004F24();
extern void GameSave_Initialize(u8 slot);
extern void GameSave_SetDefaults();
extern void func_80005188();
extern void func_8000565C();
extern void func_80005770();
extern void func_80005828();
extern void func_80005860();
extern void func_800058E0(uint16_t arg0, int16_t arg1, uint16_t arg2, uint16_t arg3, void* arg4);
extern void func_800059A4();
extern void func_80005B68();
extern void func_80005C3C();
extern void func_8000607C();
extern void func_80006360();
extern void func_80006B1C(uint16_t x);
extern void func_80006B9C();
extern void func_80006CC8();
extern void func_80006DF4(u16 i);
extern void func_80006E60();
extern void func_80006EDC();
extern void func_800072A4();
extern void func_800073CC();
extern void func_80007578();
extern void func_800075A8();
extern void NameEntry_PrintKeyboard();
extern void func_800078A4();
extern void func_80007A90();
extern void func_80007ABC();
extern void NameEntry_EnterChar(uint16_t* lang1, uint16_t* lang2, uint16_t* Eng);
extern void func_80007C8C();

#endif

