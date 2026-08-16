#include "common.h"
#include "boot.h"
// BUG: incorrect prototype!
#define OSD_SET_DATA_COLOR_TYPE u8
#define OSD_PRINT_INT_ARG0 u32
#include "debug.h"
#include "font.h"

extern size_t strlen(const char* str);

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

// reset OSD values.
void OSD_Reset(void){
    s16 index;

    for (index =0; index < ARRAYLENGTH(gOSDData); index++){
        gOSDData[index].isSet = FALSE;
    }
}

// set data for all OSDStruct fields
// @param text string to print
// @param x x-position of text
// @param y y-position of text
// @param red red channel of text
// @param green green channel of text
// @param blue blue channel of text
// @param scale_x x-scale of text
// @param scale_y y-scale of text
void OSD_SetData(char* text, s32 x, s32 y, u8 red, u8 green, u8 blue, u8 alpha, f32 scale_x, f32 scale_y){
    u16 index;

    if (gOSDDataCount <= ARRAYLENGTH(gOSDData)){
        gOSDData[gOSDDataCount].isSet = TRUE;
        gOSDData[gOSDDataCount].posX = x;
        gOSDData[gOSDDataCount].posY = y;
        gOSDData[gOSDDataCount].colorR = red;
        gOSDData[gOSDDataCount].colorG = green;
        gOSDData[gOSDDataCount].colorB = blue;
        gOSDData[gOSDDataCount].colorA = alpha;
        gOSDData[gOSDDataCount].scaleX = scale_x;
        gOSDData[gOSDDataCount].scaleY = scale_y;
        for(index = 0; index < 80; text++, index++){
            gOSDData[gOSDDataCount].text[index]= *text;
            if (*text == 0) {
                break;
            }
        }
        gOSDDataCount++;
    }
}


// print a 32-bit value in hex using OSD
// use R to toggle between black and white text.
// @param val value to print
// @param x x-position of text
// @param y y-position of text
void OSD_PrintIntHex(u32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%08X",val);
    OSD_SetData(buff, x, y, gDebugOSDTint, gDebugOSDTint, gDebugOSDTint, 0xFF, 1.0f, 1.0f);
}

// print the 4 digits of a 32-bit value in base-10 using OSD
// use R to toggle between black and white text.
// @param val value to print
// @param x x-position of text
// @param y y-position of text
void OSD_PrintInt(u32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%04d",val);
    OSD_SetData(buff, x, y, gDebugOSDTint, gDebugOSDTint, gDebugOSDTint, 0xFF, 1.0f, 1.0f);
}

// print a float value using OSD in white.
// @param val value to print
// @param x x-position of text
// @param y y-position of text
void OSD_PrintFloat(f32 val, s32 x, s32 y){
    char buff[80];

    sprintf(buff,"%8.4f",val);
    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}

// print an 8-bit value in hex using OSD in white
// @param val value to print. AND'd to 16-bit
// @param x x-position of text
// @param y y-position of text
void OSD_PrintByteHex(s32 val, s32 x, s32 y) {
    u16 temp;
    char buff[80];

    temp = val & 0xFFFF;
    sprintf(buff, "%02X", temp);

    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}

// print an 16-bit value in hex using OSD in white
// @param val value to print. AND'd to 16-bit
// @param x x-position of text
// @param y y-position of text
void OSD_PrintShortHexWhite(s32 val, s32 x, s32 y) {
    u16 temp;
    char buff[80];

    temp = val & 0xFFFF;
    sprintf(buff, "%04X", temp);

    OSD_SetData(buff, x, y, 0xFF, 0xFF, 0xFF, 0xFF, 1.0f, 1.0f);
}

// print an 8-bit value in hex using OSD
// use R to toggle between black and white text.
// @param val value to print AND'd to 16-bit
// @param x x-position of text
// @param y y-position of text
void OSD_PrintShortHex(s32 val, s32 x, s32 y) {
    u16 temp;
    char buff[80];

    temp = val & 0xFFFF;
    sprintf(buff, "%04X", temp);

    OSD_SetData(buff, x, y, gDebugOSDTint, gDebugOSDTint, gDebugOSDTint, 0xFF, 1.0f, 1.0f);
}

// save a timestamp
// @returns 64-bit timestamp.
OSTime OSD_GetTime(void){
    OSTime t = osGetTime();
    gOSDTime = t;
    return t;
}

// using OSD print delta time between this call and last call of OSD_GetTime()
// use R to toggle between black and white text.
// @param x x-position of text
// @param y y-position of text
void OSD_PrintDeltaTime(s32 x, s32 y){
    s32 delta_t;
    s32 time_val;
    char buff[0x50];

    delta_t = (osGetTime() - gOSDTime);
    time_val = ((delta_t * 1.32) / 1000.0);
    sprintf(buff, "%03d", time_val);
    OSD_SetData(buff, x, y, gDebugOSDTint, gDebugOSDTint, gDebugOSDTint, 0xFF, 1.0f, 1.0f);
}

// use rmonPrintf to print delta time between this call and
// last call of this or OSD_GetTime()
// @param u16 val 2 digits are printed alongside delta.
void OSD_PrintfTime(u16 val) {
    s32 delta_t;
    s32 time_val;

    delta_t = osGetTime() - gOSDTime;
    if (!val) {
        rmonPrintf("\n");
    }
    time_val = ((delta_t * 1.32) / 10000.0);
    rmonPrintf("%02d : %03d%\n", val, time_val);
    gOSDTime = osGetTime();
}

// update OSD text
void OSD_Tick(void) {
    Gfx* display_list;
    s32 i;
    char buff[0x50]; // unused, likely allocated for local string

    display_list = gDisplayListHead;
    Font_Init(&display_list);
    Font_SetTransparent(FALSE);
    Font_SetColor(gDebugOSDTint, gDebugOSDTint, gDebugOSDTint, 0xFF);
    Font_SetScale(1.0, 1.0);
    Font_SetTransparent(TRUE);
    
    for (i = 0; i < ARRAYLENGTH(gOSDData); i++) {
        if (gOSDData[i].isSet) {
            Font_SetWindow(strlen(gOSDData[i].text) + 1, 1);
            Font_SetPos(gOSDData[i].posX + 0xA0, -gOSDData[i].posY + 0x78);
            Font_SetColor(gOSDData[i].colorR, gOSDData[i].colorG, gOSDData[i].colorB, gOSDData[i].colorA);
            Font_SetScale(gOSDData[i].scaleX, gOSDData[i].scaleY);
            Font_ShowString(&display_list, gOSDData[i].text);
        }
    }
    gOSDDataCount = 0;
    Font_Finish(&display_list);
    gDisplayListHead = display_list;
}
