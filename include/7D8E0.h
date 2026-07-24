#ifndef FILE_7D8E0_H
#define FILE_7D8E0_H

#include <PR/ultratypes.h>

// decomposes each decimal digit of u32 into u8 array
void ToBCD(u32 val);
extern u8 gBCDArray[8];

void SpawnActor41(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, s32 arg6);

// SpawnActor40 doesn't return anything, but some callers expect a return value
s32 SpawnActor40(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4);

void SpawnActor39(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8);

// spawns the "READY!"/"FIGHT!" text
// warning: has 7th arg - is used in func, but isn't loaded in many calls.
#ifndef SpawnActor38_EXT_ARGS
#define SpawnActor38_EXT_ARGS
#endif
void SpawnActor38(u16 actor_index, u16 arg1, s16 pos_x, s16 pos_y, u16 arg4, u16 arg5 SpawnActor38_EXT_ARGS);

u16 SpawnTextBubble2(u16 actor_index, u16* text, s16 off_x, s16 off_y, u16 arg4);
void func_8007D384(u16 arg0, u16 xy_index);

void func_8007EF58(u16* vals, u32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16 alpha, f32 scale_x, f32 scale_y);

void ActorUpdate_Type41(u16 actor_index);
void ActorUpdate_Type40(u16 actor_index);
void func_8007EA14(u16* str, s32 graphic_flags, s32 pos_x, s32 pos_y, s32 pos_z, u16* palette, u8 red, u8 green, u8 blue, u16 alpha, s16 angle, f32 scale);
void ActorUpdate_Type38(u16 actor_index);
void ActorUpdate_Type39(u16 actor_index);


// ACTORTYPE_TEXT_38 will load from a LUT of strings. most of the 80 entries are blank, save for these indexed.
typedef enum{
    ACTOR38_FIGHT = 3, // "F I G H T !"
    ACTOR38_STAGE_CLEAR, // "STAGE CLEAR"
    ACTOR38_READY, // "R E A D Y !"
    ACTOR38_STINGA = 38, // "すてぃんが"
    ACTOR38_MARINA // "まりな"
} Actor38Strings;

// the strings used in the ACTORTYPE_TEXT_38-associated script start with special "command Codes"

#define ALPHA_CMD_PALETTE (1U << 8U) // string uses palette, lower byte determines index on D_800D9A54
#define ALPHA_CMD_KERN (1U << 9U) // lower byte used for determining space between characters
#define ALPHA_CMD_NEWLINE (1U << 10U) // string is moved 19 screen-pixels down, x is reset
#define ALPHA_CMD_XOFF (1U << 14U) // shift x by lower-byte screen-pixels.
#define ALPHA_CMD_MASK 0x7F00
#define ALPHA_CMD_UNK15 (1U << 15U) // bit 15 determine presence of command bits

#define ALPHA_CMD(cmd, val) (ALPHA_CMD_UNK15 | ALPHA_CMD_ ##cmd | val)

#endif
