#ifndef FESTIVAL_H
#define FESTIVAL_H

#include "inttypes.h"

typedef enum {
    FESTGAME_100M,
    FESTGAME_200M,
    FESTGAME_400M,
    FESTGAME_JUMP,
    FESTGAME_BALL,
    FESTGAME_HURDLE,
    FESTGAME_MATH,
    FESTGAME_DODGEBALL, // dodgeball with Cat Clancer
    FESTGAME_INTRO, // introduction in "The Day Before"
    FESTGAME_SELECT, // select screen
    FESTGAME_TOTAL
} FestivalEvents;


extern u32 gFestivalRecords[FESTGAME_TOTAL]; // festival games records.

// code related to Festival Games

// data related to competitor in festival.
typedef struct {
    /* 0x00 */ u16 actorIndex;
    /* 0x02 */ s16 playerNumber;
    /* 0x04 */ u16 rank; // rank in in event. 0 for still running.
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ s32 actor_unk_174;
    /* 0x0C */ s32 rand;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
} FestivalPlayer;

// structure for data largely related to Festival Games.
typedef struct {
    /* 0x00 */ u16 unk_00; // some control lock?
    /* 0x02 */ u8 unk_02[0x26]; // unused?
    /* 0x28 */ u16 eventState;
    /* 0x2A */ u16 unk_2a;
    /* 0x2C */ u16 currentEvent;
    /* 0x2E */ u16 competitorCount;
    /* 0x30 */ u16 fouls; // "no flying" warnings
    /* 0x32 */ u8 unk_32[6]; // unused?
    /* 0x38 */ u16 competitorIndices[4];
    /* 0x40 */ FestivalPlayer competitors[4];
    /* 0x90 */ u16* unk_90;
    /* 0x94 */ u8 eventClearCount;
    /* 0x95 */ u8 unk_95; // align byte?
    /* 0x96 */ u16 pointsRed;
    /* 0x98 */ u16 pointsWhite;
    /* 0x9A */ u8 unk_9A;
    /* 0x9B */ u8 isTimeBeat; // set new record in event
    /* 0x9C */ s32 timeCurrent;
    /* 0xA0 */ s32 timeToBeat;
    /* 0xA4 */ u8 unk_A4[4]; // unused?
    /* 0xA8 */ u8 eventsPlayed[FESTGAME_TOTAL]; // booleans set when event is completed.
    /* 0xB2 */ s16 guestHP; // used by Teran in "Rescue"
} FestivalStruct;

#endif
