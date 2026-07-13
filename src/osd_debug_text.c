#include "common.h"

typedef struct {
    u16 isSet;
    char text[80];
    s32 posX;
    s32 posY;
    u8 colorR;
    u8 colorG;
    u8 colorB;
    u8 colorA;
    f32 scaleX;
    f32 scaleY;
} OSDStruct;

s32 gOSDDataCount;
s32 D_80180FD4; // unused.
OSDStruct gOSDData[40];
s32 gOSDTime;


#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_Reset.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_SetData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintIntHex.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintInt.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintFloat.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintByteHex.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintShortHexWhite.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintShortHexBlack.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_GetTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintDeltaTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintfTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_Tick.s")
