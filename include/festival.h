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

extern u16 gFestivalData_unk_00; // some control lock?
extern u8 gFestivalData_unk_02[2];
extern u8 gFestivalData_unk_04[4];
extern u8 gFestivalData_unk_08[8];
extern u8 gFestivalData_unk_10[8];
extern u8 gFestivalData_unk_18[8];
extern u8 gFestivalData_unk_20[8];
extern u16 gFestivalData_eventState;
extern u16 gFestivalData_unk_2A;
extern u16 gFestivalData_currentEvent;
extern u16 gFestivalData_competitorCount;
extern u16 gFestivalData_fouls; // "no flying" warnings
extern u8 gFestivalData_unk_32[2];
extern u8 gFestivalData_unk_34[4];
extern u16 gFestivalData_competitorIndices[4];
extern FestivalPlayer gFestivalData_competitors[4];
extern u16* gFestivalData_unk_90;
extern u8 gFestivalData_eventClearCount;
extern u8 gFestivalData_unk_95; // align byte?
extern u16 gFestivalData_pointsRed;
extern u16 gFestivalData_pointsWhite;
extern u8 gFestivalData_unk_9A;
extern u8 gFestivalData_isTimeBeat; // set new record in event
extern s32 gFestivalData_timeCurrent;
extern s32 gFestivalData_timeToBeat;
extern u8 gFestivalData_unk_A4[4]; // unused?
extern u8 gFestivalData_eventsPlayed[FESTGAME_TOTAL]; // booleans set when event is completed.
extern s16 gFestivalData_guestHP; // used by Teran in "Rescue"

#endif
