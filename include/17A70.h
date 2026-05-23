#ifndef FILE_17A70_H
#define FILE_17A70_H

#include "common.h"

extern u8 gDebugMenuCursorFlash[];

s32 Input_CheckButtonRepeat(u16 button, u8* repeat_timer);
void DebugMenu_UpdateCursorFlash(void);

#endif
