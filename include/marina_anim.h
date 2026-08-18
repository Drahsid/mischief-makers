#ifndef MARINA_ANIM_H
#define MARINA_ANIM_H

#include <PR/ultratypes.h>

// stored as word in gMarinaAnim. determines automated animation
typedef enum {
    MARINAANIM_0, // stubbed / no animation
    MARINAANIM_1, // stubbed / no animation
    MARINAANIM_BUTTON, // automate button press
    MARINAANIM_3, // set gPlayerActor.stateUpper to gMarinaAnim.timer
    MARINAANIM_4,
    MARINAANIM_5,
    MARINAANIM_6,
    MARINAANIM_7,
    MARINAANIM_DASH_8, // enter area dashing
    MARINAANIM_DASH_9, // enter area dashing
    MARINAANIM_TPIN_10, // teleport in
    MARINAANIM_TPIN_11, // teleport in
    MARINAANIM_TPOUT, // teleporting out
    MARINAANIM_HUM, // start idle humming
    MARINAANIM_DANCE, // "stage clear" animation
    MARINAANIM_15, // use D_80192000[26] as animation
    MARINAANIM_16, // use D_80192000[27] as animation
    MARINAANIM_17, // use D_80192000[28] as animation
    MARINAANIM_18, // use D_80192000[11] as animation
    MARINAANIM_19, // use D_80192000[12] as animation
    MARINAANIM_20, // use D_8019b000[7] as animation
    MARINAANIM_21, // use D_801a6800[17] as animation
    MARINAANIM_22, // use D_801a6800[18] as animation
    MARINAANIM_23, // use D_801a6800[19] as animation
    MARINAANIM_24, // use D_801a6800[20] as animation
    MARINAANIM_25, // use D_801a6800[21] as animation
    MARINAANIM_26, // use D_801a6800[22] as animation
    MARINAANIM_27, // use D_801a6800[23] as animation
    MARINAANIM_28, // use D_801a6800[24] as animation
    MARINAANIM_29, // use D_80192000[8] as animation
    MARINAANIM_30, // use D_80192000[10] as animation
    MARINAANIM_31, // use D_8019b000[5] as animation
    MARINAANIM_32  // use D_8019b000[7] as animation
} MarinaAnimations;

void MarinaAnim_Update(u16 actor_index);

#endif
