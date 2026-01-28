#ifndef GAMEINPUT_H
#define GAMEINPUT_H

#include "common.h"

extern void Input_Update(void);
extern u32 Input_GetFirstController(void);

extern void func_8000147C(void);

extern u16 gButtonHold;
extern u16 gButtonLast;
extern u16 gButtonPress;

extern OSContPad gContpadArrayA[4];
extern OSContPad gContpadArrayB[4];
extern OSMesgQueue gContMesgQ;
extern u32 gPlayerControllerIndex;
extern u16 gButtonCurrent;

extern s8 gJoyX;
extern s8 gJoyY;

extern u16 D_800BE50C;
extern u16 D_800BE510;
extern u16 D_800BE508;
extern u16 D_800BE504;

#endif

