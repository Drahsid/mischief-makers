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
    /* 0x02 */ u16 playerNumber; // 0xFFFF for the lead/parent record
    /* 0x04 */ u16 rank; // rank in in event. 0 for still running.
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ s32 actor_unk_174;
    /* 0x0C */ s32 rand;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
} FestivalPlayer;


extern u16 gFestivalEventState;
extern u16 gFestivalCurrentEvent;
extern u16 gFestivalCompetitorCount;
extern u16 gFestivalFouls; // "no flying" warnings
extern u16 gFestivalCompetitorIndices[4];
extern FestivalPlayer gFestivalCompetitors[4];
extern u8 gFestivalEventClearCount;
extern u16 gFestivalPointsRed;
extern u16 gFestivalPointsWhite;
extern u8 gFestivalIsTimeBeat; // set new record in event
extern s32 gFestivalTimeCurrent;
extern s32 gFestivalTimeToBeat;
extern u8 gFestivalEventsPlayed[FESTGAME_TOTAL]; // booleans set when event is completed.
extern s16 gGuestActorHP; // used by Teran in "Rescue"

#endif
