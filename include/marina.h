#ifndef FILE_MARINA_H
#define FILE_MARINA_H

#include "common.h"
#include "marina_anim.h"

// state values stored in lower byte of Actor 0's "state" field
typedef enum {
    MARINASTATE_0,
    MARINASTATE_WAIT1, // waiting state, usually during cinematics
    MARINASTATE_WAIT2,
    MARINASTATE_IDLE, // default idle state
    MARINASTATE_IDLEHOLD, // default idle state while holding
    MARINASTATE_LAND,  // landing from jump/fall
    MARINASTATE_LANDHOLD, // landing from jump/fall while holding.
    MARINASTATE_WALK, // walking
    MARINASTATE_WALKHOLD, // walking while holding.
    MARINASTATE_9,
    MARINASTATE_10,
    MARINASTATE_GROUNDDASH,
    MARINASTATE_GROUNDDASHHOLD,
    MARINASTATE_SLIDEDASH,
    MARINASTATE_SLIDEDASHHOLD,
    MARINASTATE_ROLL, // state while rolling
    MARINASTATE_AIRDASH,
    MARINASTATE_AIRDASHHOLD,
    MARINASTATE_18,
    MARINASTATE_19,
    MARINASTATE_20,
    MARINASTATE_21,
    MARINASTATE_22,
    MARINASTATE_23,
    MARINASTATE_24,
    MARINASTATE_25,
    MARINASTATE_26,
    MARINASTATE_27,
    MARINASTATE_28,
    MARINASTATE_29,
    MARINASTATE_30,
    MARINASTATE_31,
    MARINASTATE_32,
    MARINASTATE_BEAMGRAB,
    MARINASTATE_GRAB,
    MARINASTATE_35,
    MARINASTATE_36,
    MARINASTATE_37,
    MARINASTATE_THROW,
    MARINASTATE_39,
    MARINASTATE_SHAKE, // state while shake-shaking
    MARINASTATE_DROP, // drop held actor
    MARINASTATE_42,
    MARINASTATE_43,
    MARINASTATE_44, // stubbed
    MARINASTATE_45, // stubbed
    MARINASTATE_46,
    MARINASTATE_47,
    MARINASTATE_HIT48,
    MARINASTATE_49,
    MARINASTATE_HIT50,
    MARINASTATE_HIT51,
    MARINASTATE_52,
    MARINASTATE_HITSHOCK,
    MARINASTATE_54, // state code at D_8019B000[3]
    MARINASTATE_TPIN, // teleport in
    MARINASTATE_TPOUT,
    MARINASTATE_57,
    MARINASTATE_DEBUGANIM,
    MARINASTATE_DEBUGGFX,
    MARINASTATE_DEBUGFLY
} MarinaStates;

// indicies of gMarinaActionSpeeds which are then scaled by gMarinaScale
typedef enum {
    MARINAMOVE_0,  // used for valocity steps
    MARINAMOVE_WALKTARGET, // max walk speed.
    MARINAMOVE_2,
    MARINAMOVE_3,
    MARINAMOVE_4,
    MARINAMOVE_5,
    MARINAMOVE_6,
    MARINAMOVE_7,
    MARINAMOVE_8,
    MARINAMOVE_9,
    MARINAMOVE_10,
    MARINAMOVE_11,
    MARINAMOVE_12,
    MARINAMOVE_13,
    MARINAMOVE_14,
    MARINAMOVE_15,
    MARINAMOVE_16,
    MARINAMOVE_17,
    MARINAMOVE_18,
    MARINAMOVE_19,
    MARINAMOVE_20,
    MARINAMOVE_21,
    MARINAMOVE_22,
    MARINAMOVE_23,
    MARINAMOVE_24,
    MARINAMOVE_25,
    MARINAMOVE_26,
    MARINAMOVE_27,
    MARINAMOVE_28,
    MARINAMOVE_29,
    MARINAMOVE_30,
    MARINAMOVE_31
} MarinaMoves;

// abreviate Marina speed getter
#define MARINA_MOVE(n) Marina_GetMoveSpeed(MARINAMOVE_ ##n )

// properties of an actor when grabbed / thrown.
typedef enum {
    GRABTYPE_0, // stubbed grab/throw state
    GRABTYPE_1,
    GRABTYPE_2,
    GRABTYPE_3, // used for counters of big lasers/Raiden's lightning
    GRABTYPE_4,
    GRABTYPE_5,
    GRABTYPE_6,
    GRABTYPE_7,
    GRABTYPE_8,
    GRABTYPE_9, // stubbed grab/throw state
    GRABTYPE_10,
    GRABTYPE_11,
    GRABTYPE_HURT, // damage Marina if she tries to grab actor
    GRABTYPE_13,
    GRABTYPE_14,
    GRABTYPE_15,
    GRABTYPE_16,
    GRABTYPE_17,
    GRABTYPE_18,
    GRABTYPE_19,
    GRABTYPE_20,
    GRABTYPE_21,
    GRABTYPE_22,
    GRABTYPE_23  // stubbed grab/throw state
} GrabTypes;

// field used to scale appearance and velocity of Marina
#define gMarinaScale gPlayerActor.unk_120

s32 func_80049040(u16 actor_index);
s32 func_80048F70(u16 actor_index);
s32 func_800491B8(u16 actor_index, s32, s16);
void ActorUpdate_Marina(u16);

#endif
