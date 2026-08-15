#ifndef FILE_DEBUG_H
#define FILE_DEBUG_H

#include <PR/ultratypes.h>

// BUG: inconsistent prototype!
#ifndef OSD_SET_DATA_COLOR_TYPE
#define OSD_SET_DATA_COLOR_TYPE s32
#endif
void OSD_SetData(char* text, s32 x, s32 y, OSD_SET_DATA_COLOR_TYPE red, OSD_SET_DATA_COLOR_TYPE green,
                 OSD_SET_DATA_COLOR_TYPE blue, OSD_SET_DATA_COLOR_TYPE alpha, f32 scale_x, f32 scale_y);

void OSD_Reset(void);

// BUG: inconsistent prototype!
#ifndef OSD_PRINT_INT_ARG0
#define OSD_PRINT_INT_ARG0 s32
#endif
void OSD_PrintIntHex(OSD_PRINT_INT_ARG0, s32, s32);

void OSD_PrintInt(OSD_PRINT_INT_ARG0, s32, s32);
void OSD_PrintFloat(f32, s32, s32);
void OSD_PrintShortHexWhite(s32, s32, s32);
void OSD_PrintShortHex(s32, s32, s32);
OSTime OSD_GetTime(void);
void OSD_PrintDeltaTime(s32 x, s32 y);
void OSD_PrintfTime(u16 val);

#endif
