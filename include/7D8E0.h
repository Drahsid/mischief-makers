#ifndef FILE_7D8E0_H
#define FILE_7D8E0_H

#include <PR/ultratypes.h>

// decomposes each decimal digit of u32 into u8 array
void func_8007CCE0(u32 val);

void func_8007CD68(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, s32 arg6);

// func_8007CE24 doesn't return anything, but some callers expect a return value
s32 func_8007CE24(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4);

void func_8007CEB8(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8);

// warning: has 7th arg - is used in func, but isn't loaded in many calls.
#ifndef FUNC_8007CFE0_EXT_ARGS
#define FUNC_8007CFE0_EXT_ARGS
#endif
void func_8007CFE0(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5 FUNC_8007CFE0_EXT_ARGS);

u16 func_8007D0F4(u16 actor_index, u16* text, s16 off_x, s16 off_y, u16 arg4);
void func_8007D384(u16 arg0, u16 xy_index);

void func_8007EF58(u16* vals, u32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16 alpha, f32 scale_x, f32 scale_y);

void func_8007DB84(u16 actor_index);
void func_8007DF44(u16 actor_index);
void func_8007EA14(u16* str, s32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16* palette, u8 red, u8 green, u8 blue, u16 alpha, s16 angle, f32 scale);
void func_8007F37C(u16 actor_index);
void func_8007F078(u16 actor_index);

#endif
