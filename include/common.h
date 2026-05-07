#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H

#include <PR/ultratypes.h>
#include <ultra64.h>
#include "inttypes.h"
#include "common_structs.h"
#include "linker.h"

typedef s32 DEFAULT_INT; // use this to explicitly show when the original programmer likely forgot to write the return type

#include "function_symbols.h"
#include "data_symbols.h"

#define FRAMEBUFFER0 (0x801DA800)
#define FRAMEBUFFER1 (0x803DA800)

#define SCREEN_WIDTH (320)
#define SCREEN_HEIGHT (240)

#ifndef osInitialize
#define osInitialize __osInitialize_common
#endif

enum {
    GAMESTATE_SOFTRESET,
    GAMESTATE_INTRO,
    GAMESTATE_TITLESCREEN,
    GAMESTATE_DEBUG_SOUNDTEST,
    GAMESTATE_DEBUG_STAGESELECT,
    GAMESTATE_LOADING,
    GAMESTATE_GAMEPLAY,
    GAMESTATE_CONTINUE, // game over
    GAMESTATE_UNKNOWN0,
    GAMESTATE_UNKNOWN1,
    GAMESTATE_ATTRACT,
    GAMESTATE_FILESELECT,
    GAMESTATE_TRANSITION,
    GAMESTATE_NONE,
    GAMESTATE_RECORDS
};

extern u16 gFramesInScene;
extern u16 gGamePaused;
extern u16 gGameState;
extern u16 gGameStateSubState;
extern u16 gDebugBitfeild;

extern u32 gFramesInPlayTime;

#endif
