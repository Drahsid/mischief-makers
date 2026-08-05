#include "common.h"
#include "actor.h"
#include "boot.h"
#include "SFX.h"
#include "4FEB0.h"

// script for automated animations set in gMarinaAnim

extern ActorFunc D_800D3D20[]; // marina animation states

// animation types 0 and 1 - no animation.
void func_80047E30(u16 arg0) {
}

// animation type 2 - move through automated button press
void func_80047E38(u16 arg0) {
    s32 temp_v0;

    D_801370CC = (u16)gPlayerData.unk_20;
    D_801370CE = (u16)gPlayerData.unk_24;
    temp_v0 = gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A;
    gButtonHoldHistory[0] = D_801370CC & temp_v0;
    gButtonPressHistory[0] = D_801370CE & temp_v0;
    gPlayerData.unk_20 = 0;
    gPlayerData.unk_24 = 0;
}

// animation types 3 and 4
void func_80047ED4(u16 _actor_index) {
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

void func_80047F80(u16 actor_index) {
    if (gMarinaAnim.state == 0) {
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gActors[actor_index].state = MARINASTATE_WAIT2;

        if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_6) {
            gActors[actor_index].stateUpper = 1;
        }

        gMarinaAnim.anim_u32 = MARINAANIM_0;
    }
}

void func_80047FF8(u16 actor_index) {
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
void func_800480B8(u16 actor_index) {
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
void func_80048238(u16 actor_index) {
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
void func_80048320(u16 actor_index) {
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
void func_800483B4(u16 actor_index) {
    if (gActors[actor_index].stateLower == MARINASTATE_IDLE) {
        gActors[actor_index].var_150 = 600;
    }

    gMarinaAnim.anim_u32 = MARINAANIM_1;
}

void func_80048408(u16 actor_index) {
    switch (gMarinaAnim.state) {
        case 0:
            if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                func_8004F514(actor_index, gActors[actor_index].parentIndex);
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

void func_800485AC(u16 actor_index) {
    D_800D3D20[gMarinaAnim.anim_u32 & 0xFF](actor_index);
    gMarinaAnim.unk_00 = 0;
}
