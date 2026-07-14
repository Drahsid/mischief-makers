#include "common.h"

#define TXTTINT (u8)gDebugOSDTint

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

extern void OSD_SetData(char* text, s32 x, s32 y, u8 red, u8 green, u8 blue, u8 alpha, f32 scale_x, f32 scale_y);

void OSD_Reset(void){
    s16 index;

    for (index =0; index < ARRAYLENGTH(gOSDData); index++){
        gOSDData[index].isSet = FALSE;
    }
}

#ifdef NON_MATCHING
void OSD_SetData(char* text, s32 x, s32 y, u8 red, u8 green, u8 blue, u8 alpha, f32 scale_x, f32 scale_y){
    u16 index;

    if (gOSDDataCount<=ARRAYLENGTH(gOSDData)){
        gOSDData[gOSDDataCount].isSet = TRUE;
        gOSDData[gOSDDataCount].posX = x;
        gOSDData[gOSDDataCount].posY = y;
        gOSDData[gOSDDataCount].colorR = red;
        gOSDData[gOSDDataCount].colorG = green;
        gOSDData[gOSDDataCount].colorB = blue;
        gOSDData[gOSDDataCount].colorA = alpha;
        gOSDData[gOSDDataCount].scaleX = scale_x;
        gOSDData[gOSDDataCount].scaleY = scale_y;
        for(index = 0; index < 80; text++, *text != 0, index++){
            gOSDData[gOSDDataCount].text[index]= *text;

        }
        gOSDDataCount++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_SetData.s")
#endif

void OSD_PrintIntHex(u32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%08X",val);
    OSD_SetData(buff, x, y, TXTTINT, TXTTINT, TXTTINT, 0xFF, 1.0f, 1.0f);
}

void OSD_PrintInt(u32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%04d",val);
    OSD_SetData(buff, x, y, TXTTINT, TXTTINT, TXTTINT, 0xFF, 1.0f, 1.0f);
}

void OSD_PrintFloat(f32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%8.4f",val);
    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}

#ifdef NON_MATCHING
void OSD_PrintByteHex(u16 val, s32 x, s32 y){
    char buff[84];

    sprintf(buff,"%02X",val);
    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintByteHex.s")
#endif

#ifdef NON_MATCHING
void OSD_PrintShortHexWhite(u32 val, s32 x, s32 y){
    char buff[84];

    sprintf(buff,"%04X",(u16)val);
    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintShortHexWhite.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintShortHexBlack.s")

OSTime OSD_GetTime(void){
    OSTime t = osGetTime();
    gOSDTime = t;
    return t;
}

#ifdef NON_MATCHING
void OSD_PrintDeltaTime(s32 x, s32 y){
    s32 delta;
    char buff[88];

    delta = ( ((s32)osGetTime()-gOSDTime) * 1.32 / 1000.0);
    sprintf(buff,"%03d",delta);
    OSD_SetData(buff, x, y, TXTTINT, TXTTINT, TXTTINT, 0xFF, 1.0f, 1.0f);

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintDeltaTime.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_PrintfTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/osd_debug_text/OSD_Tick.s")
