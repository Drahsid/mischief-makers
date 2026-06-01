#ifndef GAMEINPUT_H
#define GAMEINPUT_H

#include "common.h"

extern void Input_Update(void);
extern u32 Input_GetFirstController(void);

extern void func_8000147C(void);

// globals .bss 

extern u16 gButtonPressHistory[64]; // history of button presses
extern u16 gButtonHoldHistory[64]; // history of button holds


// globals .data

extern u16 gButtonHold; // held button input.
extern u16 gButtonPress; // pressed button input.
extern u16 gButton_Start; // value of Start Button
extern u16 gButton_DUp; // value of D-pad Up
extern u16 gButton_DDown; // value of D-pad Down
extern u16 gButton_DLeft; // value of D-pad Left
extern u16 gButton_DRight; // value of D-pad Right
extern u16 gButton_B; // value of B Button
extern u16 gButton_A; // value of A Button
extern u16 gButton_CLeft; // value of C-Left
extern u16 gButton_CDown; // value of C-Down
extern u16 gButton_CUp; // value of C-Up
extern u16 gButton_CRight; // value of C-Right
extern u16 gButton_ZTrig; // value of Z button
extern u16 gButton_LTrig; // value of L button
extern u16 gButton_RTrig; // value of R button
extern u16 gButtonLast; // mask of previous input for determining "held" and "pressed" buttons
extern s8 gJoyX; // joystick value read, but not used.
extern s8 gJoyY; // joystick value read, but not used.


extern OSContPad gContpadArrayA[4];
extern OSContPad gContpadArrayB[4];
extern OSMesgQueue gControllerReadMessageQueue;
extern u32 gPlayerControllerIndex;
extern u16 gButtonCurrent;

#endif
