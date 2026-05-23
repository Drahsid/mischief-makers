#ifndef DEBUG_LEVEL_SELECT_H
#define DEBUG_LEVEL_SELECT_H

#include "common.h"

extern const char* gDebugStageSelectRowPrefixes[];
extern u16 gDebugStageSelectRowOptionCounts[];
extern u16 gDebugStageSelectGroupOptionStartOffsets[];
extern u16 gDebugStageSelectGroupOptionStartOffsetsTail[];
extern const char* gDebugStageSelectOptionSuffixes[];
extern u16 gDebugStageSelectSceneIds[];
extern u16 gDebugStageSelectStageIds[];
extern u16 gStageTransitionTimeThresholds[];
extern u16 gDebugStageSelectSelectedIndex;
extern u8 gDebugStageSelectSelectedOptions[];
extern u8 gDebugStageSelectOptionBaseOffsets[];

void DebugStageSelect_DrawMenu();

#endif
