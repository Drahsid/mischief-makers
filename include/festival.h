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
    FESTGAME_DODGEBALL, // dodgeball with Cat Clancer.
    FESTGAME_INTRO, // introduction in "The Day Before"
    FESTGAME_SELECT, // select screen
    FESTGAME_TOTAL, // used for loops and array sizes
    
    // Planned race, index instead used by "Dodgeball". Checks for enum still in 7A6E80.c 
    // when forced in game, named as "...", has a distance of 100M, and
    // crashes the game as the race begins.
    FESTGAME_UNUSED_RACE = 7
} FestivalEvents;

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 actorType;
} Festival_UnkInit; /* sizeof = 0x0C */

typedef struct {
    /* 0x00 */ s8 duration;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u16 motionState;
    /* 0x04 */ s32 velocityX;
    /* 0x08 */ s32 velocityY;
} Festival_UnkMotion; /* sizeof = 0x0C */

typedef struct {
    /* 0x00 */ u16 positionX;
    /* 0x02 */ s16 positionY;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 unk_06;
} Festival_Actor_Spawn; /* sizeof = 0x08 */

typedef struct {
    /* 0x00 */ Festival_Actor_Spawn spawn;
    /* 0x08 */ u16 behavior;
} Festival_Actor_SpawnWithBehavior; /* sizeof = 0x0A */

// code related to Festival Games

// data related to competitor in festival.
typedef struct {
    /* 0x00 */ u16 actorIndex;
    /* 0x02 */ u16 playerNumber; // 0xFFFF for the lead/parent record
    /* 0x04 */ u16 rank; // rank in in event. 0 for still running.
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 rand;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
} FestivalPlayer; /* sizeof = 0x14 */

extern u32 gFestivalRecords[FESTGAME_TOTAL]; // festival games records.
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
