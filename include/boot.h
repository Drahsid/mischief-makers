#ifndef GAMEBOOT_H
#define GAMEBOOT_H

#include <ultra64.h>
#include "inttypes.h"
#include "common_structs.h"

#include "thread.h"

extern Gfx D_800E3978[]; //dlist for letterbox

extern Gfx* gDisplayListHead;
extern OSMesg gPiManagerMessageBuffer[8];

extern OSMesgQueue gDmaMessageQueue;

extern OSMesgQueue gVideoInterfaceMessageQueue;
extern OSMesgQueue gSignalProcessorMessageQueue;
extern OSMesgQueue gDisplayProcessorMessageQueue;
extern OSMesgQueue gSerialInterfaceMessageQueue;
extern OSMesgQueue gControllerInitMessageQueue;
extern OSMesgQueue D_8012AC38[2];

extern OSMesg gDmaMessageBuffer;
extern OSMesg gVideoInterfaceMessageBuffer;
extern OSMesg gSignalProcessorMessageBuffer;
extern OSMesg gDisplayProcessorMessageBuffer;
extern OSMesg gSerialInterfaceMessageBuffer;
extern OSMesg gControllerInitMessageBuffer;
extern OSMesg gEventMessage;
extern OSTask* gCurrentGraphicsTask;
extern OSTask gGraphicsTasks[2];

extern OSViMode* gOSViModep;
extern OSViMode gOSViMode;

extern OSContStatus gContStatus[4];

extern OSContPad gContpadArrayA[4];
extern OSContPad gContpadArrayB[4];
extern OSMesgQueue gControllerReadMessageQueue;

extern OSMesg gControllerReadMessageBuffer;

extern GfxData gDisplayListData[2];

extern u32 gPlayerControllerIndex;
extern u16 gButtonCurrent;

extern u16 D_801370C6;
extern u32 gFramesInPlayTime;
extern u16 D_801370CC;
extern u16 D_801370CE;

#endif
