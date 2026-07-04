#ifndef STAGE_H
#define STAGE_H

#include <PR/ultratypes.h>

extern u8 gDebugMenuCursorFlash[];
extern const char* gDebugStageSelectRowPrefixes[];
extern u16 gStageRowCounts[];
extern u16 gStageGroupOptionOffsets[];
extern u16 gStageGroupOptionOffsetsTail[];
extern const char* gDebugStageSelectOptionSuffixes[];
extern u16 gStageScenes[];
extern u16 gDebugStageSelectStageIds[];
extern u16 gStageTimesToBeat[];
extern u16 gCurrentStage; // current stage selected.
extern u8 gDebugStageSelectSelectedOptions[];
extern u8 gDebugStageSelectOptionBaseOffsets[];

void DebugStageSelect_DrawMenu();

#endif
