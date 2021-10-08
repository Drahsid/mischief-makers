#ifndef GAME_SAVE_H
#define GAME_SAVE_H

#include "inttypes.h"
#include <ultra64.h>

extern char gEEPROMID[8];
extern uint16_t gTimeRecords[64]; // records for stage times.
extern uint16_t gDefaultFileName[11]; // contains default "Start" filename

extern uint16_t gFileNames[2][11];
extern uint8_t gFileAges[2];
extern uint8_t gFileSexes[2];
extern uint16_t gFileRedGems[2];
extern uint16_t gFileYellowGems[2];
extern uint64_t gFilePlayTimes[2]; // may be {u64;u32[2]} union.
extern uint32_t gFestivalRecords[7];

extern uint16_t func_80004E70(int32_t lhs, uint32_t offset);
extern int32_t func_80004E90(uint32_t arg0);
extern int32_t IsOver999(uint32_t x);
extern void func_80004F24();
extern void GameSave_Initialize(uint8_t slot);
extern void GameSave_SetDefaults();
extern void func_80005188();
extern void func_8000565C();
extern void func_80005770();
extern void func_80005828();
extern void func_80005860(uint16_t index, uint16_t pos_x, uint16_t pos_y, int32_t arg3);
extern void func_800058E0(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3, int32_t arg4);
extern void func_800059A4();
extern void func_80005B68();
extern void func_80005C3C();
extern void func_8000607C();
extern void func_80006360();
extern void func_80006B1C(uint16_t x);
extern void func_80006B9C();
extern void func_80006CC8();
extern void func_80006DF4(uint16_t i);
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
