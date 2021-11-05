#ifndef MUSIC_H
#define MUSIC_H

#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

extern ALCSPlayer gSFXPlayers[4];
extern ALCSPlayer* gSFXPlayersp[4];
extern void* gAIBuffers[3];
extern ALHeap gALHeap;
extern ALGlobals gALGlobals;
extern ALSynConfig gSynConfig;

#endif

