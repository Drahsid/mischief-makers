#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H

#include "music.h"
#include "input.h"
#include "inttypes.h"
#include "common_structs.h"
#include "globalData.h"
#include "linker.h"
#include "cosine.h"
#include "letterbox.h"
#include "gameText.h"
#include "festival.h"

typedef s32 DEFAULT_INT; // use this to explicitly show when the original programmer likely forgot to write the return type

#include "function_symbols.h"
#include "data_symbols.h"

#define FRAMEBUFFER0 ((void*)0x801DA800)
#define FRAMEBUFFER1 ((void*)0x803DA800)

// hard-coded palette addresses.

#define PALETTE_802209E0 ((u16*)0x802209E0) // used by life bar
#define PALETTE_8022D4C8 ((u16*)0x8022D4C8)
#define PALETTE_8022D4E8 ((u16*)0x8022D4E8)
#define PALETTE_8022D548 ((u16*)0x8022D548)
#define PALETTE_80380000 ((u16*)0x80380000)
#define PALETTE_80380200 ((u16*)0x80380200)
#define PALETTE_80380400 ((u16*)0x80380400)
#define PALETTE_803DA200 ((u16*)0x803DA200)
#define PALETTE_803DA400 ((u16*)0x803DA400)
#define PALETTE_803DA600 ((u16*)0x803DA600)

#define SCREEN_WIDTH (320)
#define SCREEN_HEIGHT (240)

#define ARRAYLENGTH(arr) (sizeof(arr)/sizeof(arr[0]))
#define ARRAYEND(arr) arr+ARRAYLENGTH(arr) //for stacks and a few while loops.

#define ABS(x) ((x) > 0 ? (x) : -(x))
#define SQ(x) ((x) * (x))

#ifndef osInitialize
#define osInitialize __osInitialize_common
#endif



extern u32 gFramesInPlayTime;

#endif
