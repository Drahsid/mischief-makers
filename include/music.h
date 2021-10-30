#ifndef MUSIC_H
#define MUSIC_H

#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

extern ALCSPlayer gALCPlayers[4];
extern ALCSPlayer* gPALCPlayers[4];
extern void* gAIBuffers[3];
extern ALHeap gALHeap;
extern ALGlobals gALGlobals;
extern ALSynConfig gSynConfig;

#endif

