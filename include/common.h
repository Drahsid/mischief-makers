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

typedef s32 DEFAULT_INT; // use this to explicitly show when the original programmer likely forgot to write the return type

#include "function_symbols.h"
#include "data_symbols.h"

#define FRAMEBUFFER0 (0x801DA800)
#define FRAMEBUFFER1 (0x803DA800)

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
