#ifndef FILE_DEBUG_H
#define FILE_DEBUG_H

#include <PR/ultratypes.h>

void OSD_Reset(void);
void OSD_PrintIntHex(s32, s32, s32);
void OSD_PrintInt(s32, s32, s32);
void OSD_PrintFloat(f32, s32, s32);
void OSD_PrintShortHexWhite(s32, s32, s32);
void OSD_PrintShortHex(s32, s32, s32);
OSTime OSD_GetTime(void);
void OSD_PrintDeltaTime(s32 x, s32 y);
void OSD_PrintfTime(u16 val);



#endif
