#ifndef FILE_MARINA_H
#define FILE_MARINA_H

#include "common.h"

// state values stored in lower byte of "state" field
typedef enum {
    MARINASTATE_0
} MarinaStates;

// indicies of gMarinaActionVelocities which are then scaled by unk_120
typedef enum {
    MARINAMOVE_0,
    MARINAMOVE_1,
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
    MARINAMOVE_31,
    MARINAMOVE_32
} MarinaMoves;

// abreviate Marina velocity getter
#define MARINA_MOVE(n) Marina_GetMoveVelocity(MARINAMOVE_ ##n )

// stored as word in D_800BE5F4. seems to determine animation
typedef enum {
    MARINAANIM_0,
    MARINAANIM_1,
    MARINAANIM_2,
    MARINAANIM_3,
    MARINAANIM_4,
    MARINAANIM_5,
    MARINAANIM_6,
    MARINAANIM_7,
    MARINAANIM_8,
    MARINAANIM_9,
    MARINAANIM_10,
    MARINAANIM_11,
    MARINAANIM_12,
    MARINAANIM_13,
    MARINAANIM_14,
    MARINAANIM_15,
    MARINAANIM_16,
    MARINAANIM_17,
    MARINAANIM_18,
    MARINAANIM_19,
    MARINAANIM_20,
    MARINAANIM_21,
    MARINAANIM_22,
    MARINAANIM_23,
    MARINAANIM_24,
    MARINAANIM_25,
    MARINAANIM_26,
    MARINAANIM_27,
    MARINAANIM_28,
    MARINAANIM_29,
    MARINAANIM_30,
    MARINAANIM_31,
    MARINAANIM_32
} MarinaAnimations;

s32 func_80049040(u16 actor_index);
s32 func_80048F70(u16 actor_index);
s32 func_800491B8(u16 actor_index, s16, s32);
void ActorUpdate_Marina(u16);

#endif
