#ifndef FILE_DEBUG_H
#define FILE_DEBUG_H

#include <PR/ultratypes.h>

void OSD_Reset(void);
void OSD_PrintIntHex(s32, s32, s32);
void OSD_PrintInt(s32, s32, s32);
void OSD_PrintFloat(f32, s32, s32);
void OSD_PrintShortHexWhite(s16, s32, s32);
void OSD_PrintShortHex(s16, s32, s32);

#endif
