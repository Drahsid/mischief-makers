#ifndef STAGE_H
#define STAGE_H

#include <PR/ultratypes.h>

#define DEBUG_STAGE_SELECT_ROW_COUNT 22
#define DEBUG_STAGE_SELECT_COLUMN_ROWS 11
#define DEBUG_STAGE_SELECT_OPTION_TEXT_LENGTH 24
#define DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX 7
#define DEBUG_STAGE_SELECT_REPEAT_UP_ACTOR_INDEX 8
#define DEBUG_STAGE_SELECT_REPEAT_DOWN_ACTOR_INDEX 9
#define DEBUG_STAGE_SELECT_REPEAT_LEFT_ACTOR_INDEX 10
#define DEBUG_STAGE_SELECT_REPEAT_RIGHT_ACTOR_INDEX 11

// actor fields are used for variables in several menus

#define CURSOR_INDEX_A \
gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB

#define SOUND_TEST_BGM_INDEX \
gActors[2].velocityX.raw

#define SOUND_TEST_SFX_INDEX \
gActors[3].velocityX.raw

// abreviation for overall Rank graphics

#define GINDEX_RANK_S ALPHA_GLYPH(EN3_UPPER_S)
#define GINDEX_RANK_A ALPHA_GLYPH(EN3_UPPER_A)
#define GINDEX_RANK_B ALPHA_GLYPH(EN3_UPPER_B)
#define GINDEX_RANK_C ALPHA_GLYPH(EN3_UPPER_C)
#define GINDEX_RANK_D ALPHA_GLYPH(EN3_UPPER_D)

// stages in the game are in a different order than the "scenes",
// which also include states like the intro cinematic
typedef enum {
    STAGE_INTRO,
    STAGE_DEMO_W1,
    STAGE_MEETMARINA,
    STAGE_MEETCALINA,
    STAGE_CLANBALLLAND,
    STAGE_SPIKELAND,
    STAGE_3CLANCERKIDS,
    STAGE_BLOCKMANRISES,
    STAGE_WORMINUP,
    STAGE_CRISISNEPTON,
    STAGE_WESTERNWORLD,
    STAGE_VOLCANO,
    STAGE_SEAOFLAVA,
    STAGE_VERTIGO,
    STAGE_SINKORFLOAT,
    STAGE_HOTRUSH,
    STAGE_SEARINSWING,
    STAGE_FLAMBEE,
    STAGE_TIGHTROPERIDE,
    STAGE_FREEFALL,
    STAGE_MAGMARAFTS,
    STAGE_SEASICKCLIMB,
    STAGE_MIGENBRAWL,
    STAGE_DEMO_W3,
    STAGE_CLANPOTSHAKE,
    STAGE_CLANCEWAR,
    STAGE_MISSLESURF,
    STAGE_CLANBALLLIFT,
    STAGE_GOMARZEN64,
    STAGE_CHILLYDOG,
    STAGE_SNOWSTORMMAZE,
    STAGE_LUNAR,
    STAGE_THEDAYBEFORE,
    STAGE_THEDAYOF,
    STAGE_CATASTROPHE,
    STAGE_CERBERUSALPHA,
    STAGE_DEMO_W4,
    STAGE_ROLLINGROCK,
    STAGE_TOADLYRAW,
    STAGE_7CLANCERKIDS,
    STAGE_RESCUEACT1,
    STAGE_RESCUEACT2,
    STAGE_TAURUS,
    STAGE_GHOSTCATCHER,
    STAGE_ASTERSTRYKE,
    STAGE_MOLEYCOW,
    STAGE_ASTERSMAZE,
    STAGE_SASQUATCHBETA,
    STAGE_DEMO_W5,
    STAGE_CLANCEWARII,
    STAGE_COUNTERATTACK,
    STAGE_BEESTHEONE,
    STAGE_MERCO,
    TRAPPED,
    STAGE_PHOENIXGAMMA,
    STAGE_DEMO_FINAL,
    STAGE_INNERSTRUGGLE,
    STAGE_FINALBATTLE,
    STAGE_ENDING,
    STAGE_MAX //checked for in gamesave function.
} StageOrder;

extern u8 gDebugMenuCursorFlash[];
extern const char* gDebugStageSelectRowPrefixes[];
extern u16 gStageRowCounts[];
extern u16 gStageGroupOptionOffsets[];
extern u16 gStageGroupOptionOffsetsTail[];
extern const char* gDebugStageSelectOptionSuffixes[];
extern u16 gStageScenes[];
extern u16 gStageIds[];
extern u16 gStageTimesToBeat[];
extern u16 gCurrentStage; // current stage selected. uses StageOrder
extern u8 gWorldProgress; // furthest stage reached. uses StageOrder
extern u8 gDebugStageSelectSelectedOptions[];
extern u8 gDebugStageSelectOptionBaseOffsets[];

void DebugStageSelect_DrawMenu();

#endif
