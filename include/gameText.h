#ifndef GAME_TEXT_H
#define GAME_TEXT_H
#include "inttypes.h"
#include "Alphabet.h"

extern u16 gASCIIAlphaIndecies[]; // LUT (ASCII - 0x20)->index
extern u16 gTextPalettes[][4];
extern u8 gEngTextKerning[];
extern u16 gTextPaletteBase[];

// text.c

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

// 82F80.c

#define TEXT_TEXTURE_0_ADDR 0x8027CEE8 // hard-coded address for a text texture
#define TEXT_TEXTURE_1_ADDR 0x8027EEE8 // hard-coded address for a text texture

void func_80082380(Gfx* display_list, s32 x_offset, s32 y_offset, s32* texture_images, u16* tlut, u8 arg5);
void func_80082820(Gfx* display_list, s32* texture_images, u16* tlut, u8 arg3);
void func_80082CFC(void);
void func_80082E04(void);
void func_80082F10(void);
void func_8008310C(void);
void func_80083140(s16 colmmn, s16 row);
void func_800831D0(s16 colmmn, s16 row, s16 ch, s16 arg3);
void func_80083358(s16 arg0, s16 arg1, u16* arg2, s16 arg3);
void func_80083454(void);
void func_80083488(s16 arg0, s16 arg1);
void func_80083518(s16 colmmn, s16 row, s16 ch, s16 arg3);
void func_800836A0(s16 column, s16 row, u16* str, s16 arg3);
void func_8008379C(s16 column, s16 row, s16 ch, s16 arg3);
void func_80083810(s16 column, s16 row, u16* str, s16 arg3);
void func_80083878(s16 column, s16 row);

#endif
