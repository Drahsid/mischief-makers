#ifndef GAME_TEXT_H
#define GAME_TEXT_H
#include "inttypes.h"
#include "Alphabet.h"

extern u16 gASCIIAlphaIndecies[]; // LUT (ASCII - 0x20)->index
extern u16 gTextPalettes[][4];
extern u8 gEngTextKerning[];
extern u16 gTextPaletteBase[];
 
extern void Text_InitActor(u16 actor_index, u16 x, u16 y, u16 z);
extern void Text_InitActorGraphic(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z);
extern void Text_InitActorGraphicRGB(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue);
extern void Text_InitActorGList(u16 actor_index, s16* graphic_list, u16 x, u16 y, u16 z);
extern u16* Text_SetColor(u16 arg0, u8 red, u8 blue, u8 green);
extern void Text_InitActorPalette(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, u16* arg5);
extern u16 Text_PrintASCII(u16 actor_index, char* str, u16 x, u16 y, u16 z, u16* arg5);
extern u16 Text_Print2Digits(u16 actor_index, u16 num, u16 x, u16 y, u16 z, u16* arg5);
extern u16 Text_Print3Digits(u16 actor_index, u16 num, u16 x, u16 y, u16 z, u16* arg5);
extern u16 Text_GetWidth(u16* str);
extern u16 Text_GetWidth2(u16* str);
extern u16 Text_FreeString(u16 actor_index, u16* str);
extern u16 Text_PrintString(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern u16 Text_PrintStringRGB(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue);
extern u16 Text_PrintStringRGBScale(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue, f32 scale_x, f32 scale_y);
extern u16 Text_PrintStringGray(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern u16 Text_PrintString2(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern void Text_SetHCColor(u16 arg0, u16 arg1, u8 red, u8 green, u8 blue);

#endif
