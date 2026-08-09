#include "common.h"
#include "actor.h"
#include "boot.h"
#include "SFX.h"
#include "marina_grab.h"
#include "overlays.h"

// script for automated animations set in gMarinaAnim

// animation types 0 and 1 - no animation.
void MarinaAnim_State0(u16 arg0) {
}

// animation type 2 - move through automated button press
void MarinaAnim_State2(u16 arg0) {
    s32 temp_v0;

    D_801370CC = (u16)gPlayerData.buttonHold;
    D_801370CE = (u16)gPlayerData.buttonPress;
    temp_v0 = gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A;
    gButtonHoldHistory[0] = D_801370CC & temp_v0;
    gButtonPressHistory[0] = D_801370CE & temp_v0;
    gPlayerData.buttonHold = 0;
    gPlayerData.buttonPress = 0;
}

// animation types 3 and 4
void MarinaAnim_State3_4(u16 _actor_index) {
    u16 actor_index;
    Actor* actor;

    if (gMarinaAnim.state != 0) {
        return;
    }
    actor_index = _actor_index;
    actor = &gActors[actor_index];
    actor->var_150 = actor->flags & ~0x1B80;

    if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_4) {
        actor->var_150 &= ~1;
    }

    actor->velocityX.raw = actor->velocityY.raw = 0;
    actor->unk_12E_u8 |= 0x41;
    actor->stateUpper = gMarinaAnim.timer;
    actor->stateLower = MARINASTATE_WAIT1;
    actor->unk_128 = 1.0f;
    actor->unk_124 = 1.0f;
    gMarinaAnim.anim_u32 = MARINAANIM_0;
}

void MarinaAnim_State5_6(u16 actor_index) {
    if (gMarinaAnim.state == 0) {
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gActors[actor_index].state = MARINASTATE_WAIT2;

        if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_6) {
            gActors[actor_index].stateUpper = 1;
        }

        gMarinaAnim.anim_u32 = MARINAANIM_0;
    }
}

void MarinaAnim_State7(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;

    switch (gMarinaAnim.state) {
        case 0:
            gActors[actor_index].state = 2;
            gMarinaAnim.timer = 4;
            gMarinaAnim.state = 10;
            break;

        case 10:
            if (gMarinaAnim.timer != 0) {
                gMarinaAnim.timer = gMarinaAnim.timer - 1;
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
                gMarinaAnim.state = 11;
            }
            break;

        case 11:
            gMarinaAnim.anim_u32 = MARINAANIM_1;
            break;
    }
}

// animation types 8 and 9 - dash in.
void MarinaAnim_Dash(u16 actor_index) {
    switch (gMarinaAnim.state) {
        case 0:
            gActors[actor_index].state = MARINASTATE_WAIT2;
            gMarinaAnim.timer += 4;
            gMarinaAnim.state = 0xB;
            break;

        case 0xB:
            if (gMarinaAnim.timer != 0) {
                gMarinaAnim.timer--;
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
                D_801370CC = gButton_DDown;
                D_801370CE = gButton_A;
                gMarinaAnim.state = 0xC;
            }
            break;

        case 0xC:
            if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
                if (func_8005D338(actor_index) == 1) {
                    if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_DASH_8) {
                        gMarinaAnim.anim_u32 = MARINAANIM_0;
                    }
                    else if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_DASH_9) {
                        gMarinaAnim.anim_u32 = MARINAANIM_3;
                        gMarinaAnim.timer = MARINASTATE_WAIT1;
                    }
                }
            }
            break;
    }
}

// animation types 10 and 11 - teleport in.
void MarinaAnim_TeleportIn(u16 actor_index) {
    switch (gMarinaAnim.state) {
        case 0:
            if (gMarinaAnim.timer != 0) {
                gMarinaAnim.timer--;
            }
            else {
                gActors[actor_index].state = MARINASTATE_TPIN;
                gMarinaAnim.state = 1;
            }
            break;

        case 1:
            if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
                if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_TPIN_10) {
                    gMarinaAnim.anim_u32 = MARINAANIM_0;
                }
                else if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_TPIN_11) {
                    gMarinaAnim.anim_u32 = MARINAANIM_3;
                    gMarinaAnim.timer = MARINASTATE_WAIT2;
                }
            }
            break;
    }
}

// animation type 12 - teleport out.
void MarinaAnim_TeleportOut(u16 actor_index) {
    if (gMarinaAnim.state == 0) {
        func_8005C550(actor_index, 30);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_index].state = MARINASTATE_TPOUT;
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gMarinaAnim.state = 1;
    }

    gMarinaAnim.anim_u32 = MARINAANIM_0;
}

// animation type 13 - start idle humming.
void MarinaAnim_Humming(u16 actor_index) {
    if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
        gActors[actor_index].var_150 = 600;
    }

    gMarinaAnim.anim_u32 = MARINAANIM_1;
}

void MarinaAnim_Dance(u16 actor_index) {
    switch (gMarinaAnim.state) {
        case 0:
            if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                Marina_DropActor(actor_index, gActors[actor_index].parentIndex);
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                    gActors[actor_index].state = MARINASTATE_IDLE;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_22;
                }
            }

            if (func_8005D338(actor_index) == 1) {
                if (gActors[actor_index].velocityX.raw == 0) {
                    if (gActors[actor_index].velocityY.raw == 0) {
                        gActors[actor_index].unk_170 = 0xA1;
                        gActors[actor_index].state = 1;
                        gActors[actor_index].var_150 = gActors[actor_index].flags;
                        gMarinaAnim.state = 1;
                    }
                }
            }
            break;

        case 1:
            if (((s8*)&gActors[actor_index].unk_170)[0] == 0) {
                if (((s8*)&gActors[actor_index].unk_170)[1] == 5) {
                    Sound_PlaySfx(SFX_MARINA_YAY);
                }
            }

            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].unk_170 = 0xA3;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
                gActors[actor_index].state = MARINASTATE_IDLE;
                gMarinaAnim.anim_u32 = MARINAANIM_0;
            }
            break;
    }
}

 // marina animation states
ActorFunc D_800D3D20[]= {
    MarinaAnim_State0,
    MarinaAnim_State0,
    MarinaAnim_State2,
    MarinaAnim_State3_4,
    MarinaAnim_State3_4,
    MarinaAnim_State5_6,
    MarinaAnim_State5_6,
    MarinaAnim_State7,
    MarinaAnim_Dash,
    MarinaAnim_Dash,
    MarinaAnim_TeleportIn,
    MarinaAnim_TeleportIn,
    MarinaAnim_TeleportOut,
    MarinaAnim_Humming,
    MarinaAnim_Dance,
    OverlayABI_Slot0_fn26_u16,
    OverlayABI_Slot0_fn27_u16,
    OverlayABI_Slot0_fn28_u16,
    OverlayABI_Slot0_fn11_u16,
    OverlayABI_Slot0_fn12_u16,
    OverlayABI_Slot1_fn7_u16_0,
    OverlayABI_Slot2_fn17_u16,
    OverlayABI_Slot2_fn18_u16,
    OverlayABI_Slot2_fn19_u16,
    OverlayABI_Slot2_fn20_u16,
    OverlayABI_Slot2_fn21_u16,
    OverlayABI_Slot2_fn22_u16,
    OverlayABI_Slot2_fn23_u16,
    OverlayABI_Slot2_fn24_u16,
    OverlayABI_Slot0_fn8_u16,
    OverlayABI_Slot0_fn10_u16,
    OverlayABI_Slot1_fn5_u16,
    OverlayABI_Slot1_fn7_u16_1
};

void MarinaAnim_Update(u16 actor_index) {
    D_800D3D20[gMarinaAnim.anim_u32 & 0xFF](actor_index);
    gMarinaAnim.unk_00 = 0;
}
