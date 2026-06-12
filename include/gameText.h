#ifndef GAME_TEXT_H
#define GAME_TEXT_H
#include "inttypes.h"
#include "Alphabet.h"

extern u16 D_800CA230;
extern u16 D_800D16D0[]; // LUT (ASCII - 0x20)->index
extern u8 D_800D17B8[]; // LUT of (Alphbet-0x10E)->width

extern void func_80027370(u16 actor_index, u16 x, u16 y, u16 z);
extern void func_800273FC(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z);
extern void func_80027468(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue);
extern void func_80027510(u16 actor_index, s16* graphic_list, u16 x, u16 y, u16 z);
void* func_80027588(u16 arg0, u8 red, u8 blue, u8 green);
extern void func_80027644(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, s32 arg5);
extern u16 func_800276DC(u16 actor_index, char* str, u16 x, u16 y, u16 z, s32 arg5);
extern u16 func_80027800(u16 actor_index, u16 num, u16 x, u16 y, u16 z, s32 arg5);
extern u16 func_800278E8(u16 actor_index, u16 num, u16 x, u16 y, u16 z, s32 arg5);
extern u16 func_80027A44(u16* str);
extern u16 func_80027A88(u16* str);
extern u16 func_80027AC8(u16 actor_index, u16* str);
extern u16 func_80027B28(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern u16 func_80027C40(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue);
extern u16 func_80027D94(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue, f32 scale_x, f32 scale_y);
extern u16 func_8002801C(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern u16 func_80028150(u16 actor_index, u16* str, u16 x, u16 y, u16 z);
extern void func_80028260(u16 arg0, u16 arg1, u8 red, u8 green, u8 blue);

#endif