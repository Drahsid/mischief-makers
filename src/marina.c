#include "common.h"
#include "actor.h"
#include "data_symbols.h"
#include "boot.h"
#include "debug.h"
#include "input.h"
#include "28EF0.h"
#include "48A30.h"
#include "marina_grab.h"
#include "marina_hit.h"
#include "59EA0.h"
#include "5D120.h"
#include "60CF0.h"

extern u16 D_801373D8;
extern u16 D_801373DE;

extern ActorFunc gMarinaStateTable[];

u8 func_80048600(u16 actor_index) {
    u8 ret;

    if (D_801370CC & gButton_DLeft) {
        ret = 1;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret |= 0x80;
        }
    }
    else if (D_801370CC & gButton_DRight) {
        ret = 2;
        if ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret |= 0x80;
        }
    }
    else {
        ret = 0;
    }

    if (D_801370CC & gButton_DDown) {
        ret |= 0x10;
    }

    if (D_801370CC & gButton_DUp) {
        ret |= 0x20;
    }

    return ret;
}

// get direction from which Marina is pulling?
s32 func_800486F4(void) {
    s8 v0 = gPlayerData.unk_10;
    if ((gPlayerData.unk_10 == 2) || (gPlayerData.unk_10 == 6)) {
        v0 = 4;
    }

    if ((gPlayerData.unk_10 == 0xE) || (gPlayerData.unk_10 == 0xA)) {
        v0 = 0xC;
    }

    return v0;
}

void func_80048740(u16 actor_index) {
    s16 count;
    s16 index;
    u16 buttons;
    u16 accumulated_buttons;

    if (gPlayerData.unk_12 < 60) {
        gPlayerData.unk_12++;
    }
    else {
        gPlayerData.unk_0C[1] = 0;
    }
    if (gPlayerData.unk_0C[1] >= 5) {
        gPlayerData.unk_0C[1] -= 5;
    }
    if (gPlayerData.unk_13 < 20) {
        gPlayerData.unk_13++;
    }
    buttons = D_801370CE & ~(gButton_ZTrig | gButton_LTrig | gButton_RTrig);
    if (!buttons) {
        return;
    }

    if ((buttons & (gButton_CUp | gButton_CDown)) == (gButton_CUp | gButton_CDown)) {
        buttons &= ~(gButton_CUp | gButton_CDown);
    }
    if ((buttons & (gButton_CLeft | gButton_CRight)) == (gButton_CLeft | gButton_CRight)) {
        buttons &= ~(gButton_CLeft | gButton_CRight);
    }
    if (buttons & (gButton_CLeft | gButton_CDown | gButton_CUp | gButton_CRight)) {
        if (buttons & gButton_CUp) {
            gPlayerData.unk_10 = 0;
        }
        if (buttons & gButton_CDown) {
            gPlayerData.unk_10 = 8;
        }
        if (buttons & gButton_CRight) {
            gPlayerData.unk_10 = 4;
            if (buttons & gButton_CUp) {
                gPlayerData.unk_10 = 2;
            }
            if (buttons & gButton_CDown) {
                gPlayerData.unk_10 = 6;
            }
        }
        if (buttons & gButton_CLeft) {
            gPlayerData.unk_10 = 12;
            if (buttons & gButton_CUp) {
                gPlayerData.unk_10 = 14;
            }
            if (buttons & gButton_CDown) {
                gPlayerData.unk_10 = 10;
            }
        }
        gPlayerData.unk_0C[1] = 99;
        gPlayerData.unk_11 = 8;
        gPlayerData.unk_12 = 0;
    }
    else if (D_801781F8 == 0) {
        buttons &= ~(gButton_CLeft | gButton_CDown | gButton_CUp | gButton_CRight);
        accumulated_buttons = 0;
        index = 1;
        count = 0;
        for (; index < gPlayerData.unk_13; index++) {
            accumulated_buttons |= (gButtonPressHistory[index] & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight));
            if (accumulated_buttons & buttons) {
                break;
            }
            count++;
        }
        if (index < gPlayerData.unk_13) {
            buttons |= accumulated_buttons;
            if ((buttons & (gButton_DUp | gButton_DDown)) == (gButton_DUp | gButton_DDown)) {
                buttons &= ~(gButton_DUp | gButton_DDown);
            }
            if ((buttons & (gButton_DLeft | gButton_DRight)) == (gButton_DLeft | gButton_DRight)) {
                buttons &= ~(gButton_DLeft | gButton_DRight);
            }
            if (buttons & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight)) {
                accumulated_buttons = gPlayerData.unk_10;
                if (buttons & gButton_DUp) {
                    gPlayerData.unk_10 = 0;
                }
                if (buttons & gButton_DDown) {
                    gPlayerData.unk_10 = 8;
                }
                if (buttons & gButton_DRight) {
                    gPlayerData.unk_10 = 4;
                    if (buttons & gButton_DUp) {
                        gPlayerData.unk_10 = 2;
                    }
                    if (buttons & gButton_DDown) {
                        gPlayerData.unk_10 = 6;
                    }
                }
                if (buttons & gButton_DLeft) {
                    gPlayerData.unk_10 = 12;
                    if (buttons & gButton_DUp) {
                        gPlayerData.unk_10 = 14;
                    }
                    if (buttons & gButton_DDown) {
                        gPlayerData.unk_10 = 10;
                    }
                }
                gPlayerData.unk_11 = count;
                if (gPlayerData.unk_10 != accumulated_buttons) {
                    gPlayerData.unk_0C[1] = 0;
                }
                if (gPlayerData.unk_11 < 8) {
                    gPlayerData.unk_0C[1] += 100;
                }
                else if (gPlayerData.unk_11 < 10) {
                    gPlayerData.unk_0C[1] += 75.0;
                }
                else if (gPlayerData.unk_11 < 14) {
                    gPlayerData.unk_0C[1] += 50.0;
                }
                else {
                    gPlayerData.unk_0C[1] += 25.0;
                }
                if (gPlayerData.unk_0C[1] > 1000) {
                    gPlayerData.unk_0C[1] = 1000;
                }
                gPlayerData.unk_12 = 0;
            }
        }
    }
}

void func_80048BB0(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw >= 0) {
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
            return;
        }
    }
    else {
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
            return;
        }
    }
    gActors[actor_index].velocityX.raw = 0;
}

u8 func_80048C28(s32 arg0) {
    u8 var_v1;

    if ((arg0) && !(D_801373D8 & 0x33)) {
        return 0xFF;
    }
    var_v1 = 4;
    if (D_801373D8 & 0x10) {
        var_v1 = 8;
        if (D_801373D8 & 3) {
            var_v1 = 6;
        }
    }
    if (D_801373D8 & 0x20) {
        var_v1 = 0;
        if (D_801373D8 & 3) {
            var_v1 = 2;
        }
    }
    return var_v1;
}

// get velocity for Marina's actions and multiply it by field 0x120
s32 Marina_GetMoveVelocity(s32 arg0) {
    return gMarinaActionVelocities[arg0] * gPlayerActor.unk_120;
}

s32 func_80048CE4(void) {
    if (gPlayerActor.stateLower == MARINASTATE_WAIT1) {
        return 1;
    }
    if (gPlayerActor.stateLower < MARINASTATE_46) {
        return 0;
    }
    if (gPlayerActor.stateLower < MARINASTATE_TPIN) {
        return 2;
    }
    return 3;
}

void func_80048D30(u16 actor_index, s32 arg1) {
    s8* var_a0;
    s8* temp_v0 = D_800D4094[arg1];

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        var_a0 = &temp_v0[(gActors[actor_index].unk_170_s8[1] * 4)];
        gActors[actor_index].hitboxAX0 = var_a0[0];
        gActors[actor_index].hitboxAX1 = var_a0[1];
    }
    else {
        var_a0 = &temp_v0[(gActors[actor_index].unk_170_s8[1] * 4)];
        gActors[actor_index].hitboxAX1 = -var_a0[0];
        gActors[actor_index].hitboxAX0 = -var_a0[1];
    }

    gActors[actor_index].hitboxAY0 = var_a0[2];
    gActors[actor_index].hitboxAY1 = var_a0[3];
    gActors[actor_index].hitboxAX0 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAX1 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAY0 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAY1 *= gPlayerActor.unk_120;
}

u16 func_80048EDC(u16 actor_index) {
    if (!(D_801370CE & gButton_A)) {
        return 0;
    }
    gPlayerData.unk_13 = 0;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    if (!(D_801373D8 & 0x10)) {
        return 1;
    }
    return 2;
}

s32 func_80048F70(u16 actor_index) {
    if (func_80048EDC(actor_index)) {
        if ((gActors[actor_index].unk_140_u8[0] == 0) || (gActors[actor_index].unk_140_u8[0] == 8)) {
            if (D_801373D8 & 0x1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 0x2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
        }
        else {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        return 1;
    }
    return 0;
}

s32 func_80049040(u16 actor_index) {
    if (!(gActors[actor_index].flags_098 & 0x40)) {
        return 0;
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    return 1;
}

s32 func_800490BC(u16 actor_index, s32 arg1, s16 arg2) {
    if (gActors[actor_index].velocityY.raw > 0) {
        return 0;
    }
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        return 0;
    }
    arg2 *= gPlayerActor.unk_120;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK6);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    if (arg1 >= 0) {
        gActors[actor_index].unk_17C = arg1;
        if (arg2 < gActors[actor_index].hitboxBY1) {
            gActors[actor_index].posY.whole += gActors[actor_index].hitboxBY1 - arg2;
        }
    }
    return 1;
}

s32 func_800491B8(u16 actor_index, s32 arg1, s16 arg2) {
    if (gActors[actor_index].velocityY.raw > 0) {
        return FALSE;
    }
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        return FALSE;
    }
    arg2 *= gPlayerActor.unk_120;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK6);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityY.whole) - 4;
    if (gActors[actor_index].var_150 < 1) {
        gActors[actor_index].var_150 = 1;
    }
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_150 *= 3;
    if (arg1 >= 0) {
        gActors[actor_index].unk_17C = arg1;
        if (arg2 < gActors[actor_index].hitboxBY1) {
            gActors[actor_index].posY.whole += gActors[actor_index].hitboxBY1 - arg2;
        }
    }
    return TRUE;
}

s32 func_80049300(u16 actor_index) {
    s8 index;

    for (index = 1; index < ARRAYLENGTH(gButtonHoldHistory); index++) {
        if (!(gButtonHoldHistory[index] & gButton_B)) {
            break;
        }
    }

    for (index = 0; index < gActors[actor_index].unk_12F_u8; index++) {
        if (gButtonPressHistory[index] & gButton_B) {
            break;
        }
    }

    if (!(D_801370CE & gButton_B) && (index == gActors[actor_index].unk_12F_u8)) {
        return 0;
    }

    gActors[actor_index].unk_140_u8[0] = func_80048C28(0);
    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && ((gActors[actor_index].unk_140_u8[0]) == 6)) {
        gActors[actor_index].unk_140_u8[0] = 4;
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK11)) {
        return 1;
    }
    return 2;
}

s32 func_80049460(u16 actor_index) {
    s32 temp_v0;

    temp_v0 = func_80049300(actor_index);
    switch (temp_v0) {
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
            gActors[actor_index].unk_140_u8[0] = 0;
        }
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].stateLower != MARINASTATE_22) {
            gActors[actor_index].var_150 = 0;
        }
        gActors[actor_index].state = MARINASTATE_31;
        return 1;
    case 2:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
            gActors[actor_index].unk_140_u8[0] = 0;
        }
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].stateLower != MARINASTATE_22) {
            gActors[actor_index].var_150 = 0;
        }
        gActors[actor_index].state = MARINASTATE_31;
        return 2;
    case 3:
        if (D_801373D8 & 0x20) {
            gActors[actor_index].state = MARINASTATE_45;
        }
        else {
            gActors[actor_index].state = MARINASTATE_44;
        }
        return 3;
    default:
        return 0;
    }
}

s32 func_80049660(u16 actor_index) {
    s16 pos_x;
    u16 temp_v0_8;
    u8 pad;
    u8 index;
    s16 pos_y;
    u16 loop_limit;

    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7)) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            switch (gActors[actor_index].hitType) {
            case HITTYPE_22:
                return 3;
            case HITTYPE_21:
                return 1;
            case HITTYPE_18:
                return 2;
            default:
                return 4;
            }
        }
    }
    if ((gActors[actor_index].flags & ACTOR_FLAG_UNK11) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK8) &&
        ((gActors[actor_index].unk_140_u8[1] == 0) || (gActors[actor_index].parentIndex != gActors[actor_index].unk_140_u16[1]))) {
        return 0xA;
    }
    if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK11)) {
        return 0;
    }

    loop_limit = (gActors[actor_index].unk_140_u8[0] & 2) ? 4 : 3;
    for (index = 0; index < loop_limit; index++) {
        if (index < 3) {
            switch (gActors[actor_index].unk_140_u8[0]) {
            case 0:
            case 2:
                pos_x = gActors[actor_index].posX.whole;
                pos_y = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0 + (((gActors[actor_index].hitboxAY0 - gActors[actor_index].hitboxBY0) / 2) * index);
                break;
            case 6:
            case 8:
                pos_x = gActors[actor_index].posX.whole;
                pos_y = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + (((gActors[actor_index].hitboxAY1 - gActors[actor_index].hitboxBY1) / 2) * index);
                break;
            default:
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 + (((gActors[actor_index].hitboxAX1 - gActors[actor_index].hitboxBX1) / 2) * index);
                }
                else {
                    pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 + (((gActors[actor_index].hitboxAX0 - gActors[actor_index].hitboxBX0) / 2) * index);
                }
                pos_y = gActors[actor_index].posY.whole;
                break;
            }
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 + 2;
            }
            else {
                pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 - 2;
            }
            pos_y = gActors[actor_index].posY.whole;
        }
        temp_v0_8 = func_80012AB4(pos_x, pos_y);
        if ((temp_v0_8 & 0x30) && ((temp_v0_8 ^ 0x30) & 0x30)) {
            break;
        }
    }
    if (index == loop_limit) {
        return 0;
    }

    if ((temp_v0_8 & 0x80) || (gActors[actor_index].unk_140_u8[0] >= 5)) {
        if ((temp_v0_8 & 0x20) && (gActors[actor_index].unk_140_u8[0] >= 5)) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK11) {
                return 0;
            }
            if (D_801373DE != 0) {
                return 0x14;
            }
        }
    }
    return 0;
}

s32 func_80049A04(u16 actor_index) {
    s32 temp_v1;
    s8* temp_a0;

    temp_a0 = D_800D4184[func_8005D338(actor_index)];
    if (temp_a0 == NULL) {
        return 0;
    }

    temp_v1 = temp_a0[gActors[actor_index].unk_170_s8[1]] << 0x10;
    temp_v1 *= gPlayerActor.unk_120;
    return temp_v1;
}

void func_80049AC0(u16 actor_index) {
    u16 parent_actor;
    s32 var_a3;
    s32 temp_v0;
    s32 sp30[5];

    if (gActors[actor_index].state == MARINASTATE_0) {
        Marina_State0(actor_index);
    }
    if (gActors[actor_index].unk_140_u8[1] != 0) {
        gActors[actor_index].unk_140_u8[1]--;
    }
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        temp_v0 = func_800528F4(actor_index, gActors[actor_index].parentIndex);
        if (temp_v0 == 1) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
        }
        if (temp_v0 == 0) {
            if (!(gActors[actor_index].unk_12E_u8 & 0x80) && (temp_v0 = func_8004F2B0(actor_index)) != 0) {
                if (temp_v0 == 1) {
                    if (gActors[gActors[actor_index].parentIndex].grabType == GRABTYPE_3) {
                        gActors[actor_index].state = MARINASTATE_THROW;
                    }
                    else {
                        gActors[actor_index].state = MARINASTATE_DROP;
                    }
                }
                else if (temp_v0 == 2) {
                    if (gActors[gActors[actor_index].parentIndex].grabType != GRABTYPE_3) {
                        gActors[actor_index].unk_140_u16[1] = 0;
                        if (D_801373D8 & 2) {
                            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                        }
                        if (D_801373D8 & 1) {
                            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                        }
                        if (gActors[actor_index].unk_140_u8[0] == 0) {
                            gActors[actor_index].unk_140_u16[1] = 1;
                        }
                        if (gActors[actor_index].unk_140_u8[0] == 8) {
                            gActors[actor_index].unk_140_u16[1] = 2;
                        }
                    }
                    gActors[actor_index].state = MARINASTATE_THROW;
                }
                return;
            }
        }
        else {
            return;
        }
    }

    var_a3 = func_80049660(actor_index);
    if (var_a3 != 0) {
        if (var_a3 == 1) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.75;
            gActors[actor_index].stateUpper = 1;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                gActors[actor_index].stateLower = MARINASTATE_AIRDASHHOLD;
            }
            else {
                gActors[actor_index].stateLower = MARINASTATE_19;
            }
            return;
        }
        else if (var_a3 == 3) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                sp30[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1;
            }
            else {
                sp30[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0;
            }
            sp30[1] = gActors[actor_index].posY.whole + ((gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1) / 2);
            sp30[2] = gActors[actor_index].posZ.whole;
            sp30[3] = 0x14E;
            sp30[4] = (s32)PALETTE_8022D4E8;
            func_80059F30(actor_index, sp30, 2.0f, 0x14);
            return;
        }
        else if (var_a3 == 4) {
            parent_actor = gActors[actor_index].parentIndex;
            sp30[0] = (gActors[parent_actor].posX.whole +
                       (gActors[actor_index].posX.whole + ((gActors[actor_index].hitboxAX1 + gActors[actor_index].hitboxAX0) / 2)) +
                       ((gActors[parent_actor].hitboxBX1 + gActors[parent_actor].hitboxBX0) / 2)
                      ) / 2;
            sp30[1] = (gActors[parent_actor].posY.whole +
                       (gActors[actor_index].posY.whole + (((gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1) / 2))) +
                       ((gActors[parent_actor].hitboxBY0 + gActors[parent_actor].hitboxBY1) / 2)) / 2;
            sp30[2] = MAX(gActors[actor_index].posZ.whole, gActors[parent_actor].posZ.whole);
            sp30[3] = 0x14E;
            sp30[4] = (s32)PALETTE_8022D4E8;
            func_80059F30(actor_index, sp30, 2.0f, 0x14);
            return;
        }
        else {
            if ((var_a3 < 0xB) || (gActors[actor_index].unk_170_s8[1] >= 3)) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
            }
            else {
                var_a3 = 0;
            }
        }
    }

    if (var_a3 == 2) {
        if (gActors[actor_index].unk_0F8.raw < 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitFlags = HITFLAG_5;
        gActors[actor_index].hitType = HITTYPE_18;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 + 8;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 - 8;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].hitboxAX0 = 0;
            gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 0x10;
        }
        else {
            gActors[actor_index].hitboxAX1 = 0;
            gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 0x10;
        }
        gActors[actor_index].unk_12F_u8 = 0;
        if (gActors[gActors[actor_index].parentIndex].unk_0DF & 0x80) {
            if (gActors[actor_index].stateLower == MARINASTATE_33) {
                gActors[actor_index].stateUpper = 1;
            }
            else {
                gActors[actor_index].state = MARINASTATE_33;
            }
        }
        else {
            gActors[actor_index].state = MARINASTATE_32;
        }
        return;
    }
    else if (var_a3 == 0xA) {
        func_80059ABC(actor_index, 1.0f);
        parent_actor = gActors[actor_index].parentIndex;
        gActors[parent_actor].flags_098 |= ACTOR_FLAG3_GRAB;
        gActors[parent_actor].parentIndex = actor_index;
        gActors[parent_actor].unk_104 = gActors[parent_actor].posX.raw;
        gActors[parent_actor].unk_108 = gActors[parent_actor].posY.raw;
        gActors[parent_actor].unk_10C = gActors[parent_actor].posZ.raw;
        if (gActors[actor_index].unk_140_u8[0] == 2) {
            gActors[actor_index].unk_140_u8[0] = 0;
        }
        if (gActors[actor_index].unk_140_u8[0] == 6) {
            gActors[actor_index].unk_140_u8[0] = 8;
        }
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_140_u16[1] = 1;
        }
        else {
            gActors[actor_index].unk_140_u16[1] = 0;
        }
        gActors[actor_index].unk_12F_u8 = 0;
        gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
        gPlayerData.unk_00[0].raw = gActors[parent_actor].posX.raw - gActors[actor_index].posX.raw;
        gPlayerData.unk_00[1].raw = gActors[parent_actor].posY.raw - gActors[actor_index].posY.raw;
        gActors[actor_index].state = MARINASTATE_GRAB;
        return;
    }
    else if ((var_a3 == 0x14) && ((parent_actor = Actor_RangeFindInactive(1, 0x10)) != 0)) {
        gActors[parent_actor].actorType = D_801373DE;
        Actor_Initialize(parent_actor);
        gActors[parent_actor].flags_098 |= ACTOR_FLAG3_GRAB;
        gActors[parent_actor].parentIndex = actor_index;
        gActors[parent_actor].posX.raw = gActors[parent_actor].unk_104 = gActors[actor_index].posX.raw;
        gActors[parent_actor].posY.raw = gActors[parent_actor].unk_108 = gActors[actor_index].posY.raw;
        gActors[parent_actor].posZ.raw = gActors[parent_actor].unk_10C = gActors[actor_index].posZ.raw;
        gActors[actor_index].parentIndex = parent_actor;
        if (gActors[actor_index].unk_140_u8[0] == 2) {
            gActors[actor_index].unk_140_u8[0] = 0;
        }
        if (gActors[actor_index].unk_140_u8[0] == 6) {
            gActors[actor_index].unk_140_u8[0] = 8;
        }
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_140_u16[1] = 1;
        }
        else {
            gActors[actor_index].unk_140_u16[1] = 0;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
        gPlayerData.unk_00[0].raw = (gActors[actor_index].hitboxBX1 / 2) << 16;
        gPlayerData.unk_00[1].raw = (gActors[actor_index].hitboxBY1) << 16;
        func_80059ABC(actor_index, 1.0f);
        gActors[actor_index].state = MARINASTATE_GRAB;
        return;
    }
    else if ((var_a3 == 0xF) || (var_a3 == 0x10)) {
        if (var_a3 == 0x10) {
            gActors[actor_index].unk_140_u8[0] = 4;
        }
        if (gActors[actor_index].unk_140_u8[0] == 2) {
            gActors[actor_index].unk_140_u8[0] = 0;
        }
        if (gActors[actor_index].unk_140_u8[0] == 6) {
            gActors[actor_index].unk_140_u8[0] = 8;
        }
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].unk_170 = 0x3C;
        }
        else {
            gActors[actor_index].unk_170 = 0x3F;
        }
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 += 1;
        }
        if (gActors[actor_index].unk_140_u8[0] == 8) {
            gActors[actor_index].unk_170 += 2;
        }
        gActors[actor_index].parentIndex = 0xFFFF;
        Sound_PlaySfx(SFX_0089);
        func_80059ABC(actor_index, 1.0f);
        gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
        gActors[actor_index].state = MARINASTATE_36;
        return;
    }

    if (!((gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) || (gActors[actor_index].unk_12E_u8 & 0x40)) && func_80049460(actor_index)) {
        return;
    }

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7)) {
        if (gActors[actor_index].stateLower != MARINASTATE_IDLE && gActors[actor_index].stateLower != MARINASTATE_31 &&
            gActors[actor_index].stateLower != MARINASTATE_THROW && gActors[actor_index].stateLower != MARINASTATE_WAIT1) {
            func_80058924(actor_index);
            gActors[actor_index].state = MARINASTATE_IDLE;
        }
    }
    else {
        var_a3 = func_80048EDC(actor_index);
        if (gActors[actor_index].unk_12C_u16[0] & 2) {
            if (var_a3 == 3) {
                gActors[actor_index].state = MARINASTATE_30;
                return;
            }
            else if (var_a3 == 2) {
                if (D_801373D8 & 1) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
                if (D_801373D8 & 2) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
                D_801373D8 &= 0xFF7F;
                if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                    gActors[actor_index].state = MARINASTATE_SLIDEDASH;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_SLIDEDASHHOLD;
                }
                return;
            }
            else if (var_a3 == 1) {
                if (D_801373D8 & 1) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
                if (D_801373D8 & 2) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
                if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                    gActors[actor_index].state = MARINASTATE_20;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_21;
                }
                return;
            }
            else {
                if (!(gActors[actor_index].unk_12E_u8 & 1)) {
                    gActors[actor_index].unk_12E_u8 |= 1;
                    if (func_80049040(actor_index)) {
                        if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                            func_8005D370(actor_index, 0x27);
                            gActors[actor_index].state = MARINASTATE_22;
                        }
                        else {
                            func_8005D370(actor_index, 0x28);
                            gActors[actor_index].state = MARINASTATE_26;
                        }
                        return;
                    }
                }
            }
        }

        if (((gActors[actor_index].stateLower == MARINASTATE_SLIDEDASH) || 
            (gActors[actor_index].stateLower == MARINASTATE_SLIDEDASHHOLD)) && (var_a3 != 0) &&
            !(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) && 
            ((gActors[actor_index].stateUpper < 2) || (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(11) * 0.75))) {
            gActors[actor_index].unk_17C = 4;
            gActors[actor_index].hitboxBY1 = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            Sound_PlaySfx(SFX_JUMP_0024);
            if (gActors[actor_index].var_150 != 0) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_104;
            }
            gActors[actor_index].velocityY.raw = MARINA_MOVE(15) * 1.5;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                gActors[actor_index].unk_170 = 0x24;
                gActors[actor_index].state = MARINASTATE_24;
            }
            else {
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    gActors[actor_index].unk_170 = 0x26;
                }
                else {
                    gActors[actor_index].unk_170 = 0x25;
                }
                gActors[actor_index].state = MARINASTATE_28;
            }
        }
        if (gActors[actor_index].unk_12C_u16[0] & 4) {
            var_a3 = (gPlayerData.unk_10 == 0) ? 8 : 4;
            if ((gActors[actor_index].unk_12C_u16[0] & 8) && (gPlayerData.unk_10 == 0)) {
                var_a3 = 0xC;
            }
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                if (gPlayerData.unk_10 > 8) {
                    temp_v0 = 16 - gPlayerData.unk_10;
                }
                else {
                    temp_v0 = gPlayerData.unk_10;
                }
                if (var_a3 >= gPlayerData.unk_12) {
                    if (gPlayerData.unk_11 < 0xE) {
                        if (temp_v0 >= 5) {
                            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                                gActors[actor_index].state = MARINASTATE_ROLL;
                            }
                            else if (gActors[actor_index].unk_140_u16[1] == 0) {
                                gActors[actor_index].state = MARINASTATE_SHAKE;
                            }
                            return;
                        }
                        else if (temp_v0 == 4) {
                            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                                gActors[actor_index].state = MARINASTATE_GROUNDDASH;
                            }
                            else {
                                gActors[actor_index].state = MARINASTATE_GROUNDDASHHOLD;
                            }
                            return;
                        }
                    }
                }
            }
            else {
                if (var_a3 >= gPlayerData.unk_12) {
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                        gActors[actor_index].state = MARINASTATE_AIRDASH;
                    }
                    else {
                        gActors[actor_index].state = MARINASTATE_18;
                    }
                    return;
                }
            }
        }
        if (gActors[actor_index].unk_12C_u16[0] & 1) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK14) && !(D_801373D8 & 0x90) && (D_801373D8 & 3)) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                    gActors[actor_index].state = MARINASTATE_WALK;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_WALKHOLD;
                }
            }
        }
    }
}

void Marina_State57(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 = 0xFF;
}

void Marina_State1(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    gActors[actor_index].flags = gActors[actor_index].var_150;
}

void Marina_State0(u16 actor_index) {
    s32 i;

    gActors[actor_index].unk_12E_u8 |= 0x41;
    // TODO: clearing all gPlayerData through unk_00
    for (i = 0; i < sizeof(gPlayerData) / sizeof(s32); i++) {
        gPlayerData.unk_00[i].raw = 0;
    }
    gPlayerData.unk_13 = 0;
    gPlayerData.unk_12 = 0x64;
    gActors[actor_index].unk_140_u16[1] = 0;
    gActors[actor_index].unk_140_u8[1] = 0;
    gActors[actor_index].unk_180 = 0;
    gActors[actor_index].unk_12F_u8 = 0;
    gActors[actor_index].graphicList = (s16* ) D_800D54EC;
    gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = gActors[actor_index].velocityZ.raw = 0;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK10 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].grabType = GRABTYPE_1;
    gActors[actor_index].unk_0DF = 1;
    gActors[actor_index].unk_17C = 0;
    gPlayerActor.unk_120 = gActors[actor_index].unk_124 = gActors[actor_index].unk_128 = 1.0f;
    gActors[actor_index].unk_170 = 1;
    gActors[actor_index].state = MARINASTATE_IDLE;
}

void Marina_State2(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_140_u16[1] = 0;
        gActors[actor_index].unk_140_u8[1] = 0;
        gActors[actor_index].unk_180 = 0;
        gPlayerData.unk_13 = 0;
        gPlayerData.unk_12 = 100;
        gActors[actor_index].unk_12F_u8 = 0;
        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].stateUpper = 1;
        gActors[actor_index].unk_124 = gActors[actor_index].unk_128 = 1.0f;
    }
    gActors[actor_index].unk_17C = 0;
    func_8005D370(actor_index, 1);
    gActors[actor_index].state = MARINASTATE_IDLE;
}

void Marina_IdleState(u16 actor_index) {
    u16 var_a3;

    gActors[actor_index].unk_17C = 0;
    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
            }
        }
        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
            if (D_801373D8 & 0x80) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            func_8005D370(actor_index, 0x44);
        }
        var_a3 = gActors[actor_index].unk_140_u8[0];
        gActors[actor_index].unk_140_u8[0] = var_a3;
    }
    else {
        gActors[actor_index].unk_12C_u16[0] = 7;
        var_a3 = 1;
        if ((gActors[actor_index].unk_0A0 & 7) == 7) {
            if (!(gActors[actor_index].unk_0A0 & 0x10)) {
                var_a3 = (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) ? 4 : 5;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.375);
            }
            else {
                var_a3 = (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) ? 5 : 4;
                gActors[actor_index].velocityX.raw = FIXED_UNIT(0.375);
            }
            if ((var_a3 != func_8005D338(actor_index)) && !(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
                func_8005D370(actor_index, var_a3);
            }
        }
        if (gActors[actor_index].velocityX.raw != 0) {
            if ((D_801373D8 & 0x80) && (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(WALKTARGET))) {
                gActors[actor_index].state = MARINASTATE_9;
                return;
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
            }
        }

        if (D_801373D8 & 0x20) {
            var_a3 = 2;
        }
        if (D_801373D8 & 0x10) {
            gActors[actor_index].unk_17C = 1;
            var_a3 = 3;
        }
        gActors[actor_index].var_150++;
        if ((gMarinaAnim.anim_u32 != MARINAANIM_0) || (gPlayerData.flags & ACTOR_FLAG_DRAW) ||
            (gButtonHold & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight | gButton_B | gButton_A | gButton_CLeft | gButton_CDown | gButton_CUp | gButton_CRight | gButton_ZTrig | gButton_LTrig | gButton_RTrig)) ||
            ((func_8005DEFC() != 0)) || (gActors[actor_index].stateUpper == 0)) {
            gActors[actor_index].var_150 = 0;
        }
        // maria's starts humming to herself after idle for 10 seconds
        if (gActors[actor_index].var_150 >= 600) {
            var_a3 = 6;
            SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0, gActors[actor_index].posZ.whole);
        }
        if (D_801373D8 & 0x80) {
            gActors[actor_index].unk_170 = 0x17;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            if (D_801373D8 & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
            gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) && (gActors[actor_index].stateUpper != 0)) {
                var_a3 = 0x16;
            if (D_801373D8 & 2) {
                gActors[actor_index].posX.raw += FIXED_UNIT(0.5);
            }
            if (D_801373D8 & 1) {
                gActors[actor_index].posX.raw -= FIXED_UNIT(0.5);
            }
            gActors[actor_index].var_154++;
            if (gActors[actor_index].var_154 > 150) {
                gActors[actor_index].var_150 = gActors[actor_index].flags;
                gActors[actor_index].unk_170 = 6;
                gActors[actor_index].stateUpper = 5;
                gActors[actor_index].stateLower = MARINASTATE_WAIT1;
                gActors[actor_index].state = MARINASTATE_IDLE; // override last 2 instructions? 
                return;
            }
        }
        else {
            gActors[actor_index].var_154 = 0;
        }
        gActors[actor_index].stateUpper = 1;
        if (var_a3 != func_8005D338(actor_index)) {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
                if (func_8005D418(actor_index) != 0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                }
            }
            else if (gActors[actor_index].velocityX.raw == 0) {
                func_8005D370(actor_index, var_a3);
                if (var_a3 == 6) {
                    Sound_PlaySfx(SFX_MARINA_HUM);
                }
            }
        }
    }
}

// Marina landing from jump/fall
void Marina_LandState(u16 actor_index) {
    gActors[actor_index].unk_12C_u16[0] = 7;
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
    if (gActors[actor_index].stateUpper == 0) {
        func_8005A4B0(actor_index, 1.0f);
        Sound_PlaySfx(SFX_LAND_0025);
        gActors[actor_index].unk_170 = 0x2A;
        gActors[actor_index].stateUpper += 1;
    }
    if (gActors[actor_index].unk_170_s8[1] == 1) {
        gActors[actor_index].unk_170_s8[0] = 0;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].unk_170_s8[1] = 2;
        }
        else {
            gActors[actor_index].var_150--;
        }
    }
    if (func_8005D418(actor_index)) {
        gActors[actor_index].state = MARINASTATE_IDLE;
    }
}

void Marina_WalkState(u16 actor_index) {
    s32 vel_x_target;

    gActors[actor_index].unk_12C_u16[0] = 7;
    vel_x_target = MARINA_MOVE(WALKTARGET);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        vel_x_target = -vel_x_target;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, vel_x_target, Math_AbsS32_2(vel_x_target) / 8);
    func_8005D370(actor_index, 0x1D);
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 8))) {
        Sound_PlaySfx(SFX_STEP_0053);
    }
    if (!(D_801373D8 & 3) || (D_801373D8 & 0x80)) {
        gActors[actor_index].state = MARINASTATE_IDLE;
    }
}

void Marina_State9(u16 actor_index) {
    gActors[actor_index].unk_12C_u16[0] = 7;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 0x2D;
        gActors[actor_index].stateUpper = 1;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) * 2);
    if (gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
        gActors[actor_index].state = MARINASTATE_IDLE;
    }
}

void Marina_GroundDashState(u16 actor_index) {
    u16 actor;
    s32 sp38[5];
    s16 pos_x;

    gActors[actor_index].unk_12C_u16[0] = 2;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].var_150 = 0x10;
        if (gPlayerData.unk_10 == 4) {
            gActors[actor_index].velocityX.raw = MARINA_MOVE(5) + (MARINA_MOVE(9) * (gPlayerData.unk_0C[1] / 100));
            if (MARINA_MOVE(10) < gActors[actor_index].velocityX.raw) {
                gActors[actor_index].velocityX.raw = MARINA_MOVE(10);
            }
            gActors[actor_index].stateUpper = 2;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        if (gPlayerData.unk_10 == 0xC) {
            gActors[actor_index].velocityX.raw = -(MARINA_MOVE(5) + (MARINA_MOVE(9) * (gPlayerData.unk_0C[1] / 100)));
            if (gActors[actor_index].velocityX.raw < -MARINA_MOVE(10)) {
                gActors[actor_index].velocityX.raw = -MARINA_MOVE(10);
            }
            gActors[actor_index].stateUpper = 1;
            if (!(gActors[actor_index].flags & 0x20)) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].hitType = HITTYPE_21;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 2;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
        if (!(gActors[actor_index].stateUpper & 0x80)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX0 = 0;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
            }
            gActors[actor_index].unk_170 = 0x47;
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
            }
            else {
                gActors[actor_index].hitboxAX0 = 0;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
            }
            gActors[actor_index].unk_170 = 0x4A;
        }
        func_8005C098(actor_index, 1);
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 2;
        gActors[actor_index].unk_180_u8[2] = gPlayerData.unk_10;
        gPlayerData.unk_12 = 0x14;
        gPlayerData.unk_13 = 1;
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3))) {
        D_801370D2 = 0;
        Marina_SpawnAfterImage(actor_index);
    }
    if (D_801373D8 & 0x10) {
        gActors[actor_index].state = MARINASTATE_9;
    }
    else {
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0xA) {
            Sound_PlaySfx(SFX_DASH_0027);
            sp38[0] = gActors[actor_index].posX.whole;
            sp38[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            sp38[2] = gActors[actor_index].posZ.whole;
            sp38[3] = 0x16C;
            sp38[4] = 0;
            actor = func_80059F30(actor_index, sp38, 0.2f, 0xF);
            gActors[actor].scaleY /= 2;
        }
        if (gActors[actor_index].var_150 < 0xA) {
            gActors[actor_index].unk_12C_u16[0] |= 4;
        }
        if (gActors[actor_index].var_150 < 8) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
        }
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) >= 0x30000) {
            if (Math_AbsS32_2(gActors[actor_index].hitboxAX0) < Math_AbsS32_2(gActors[actor_index].hitboxAX1)) {
                pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1 + 1;
            }
            else {
                pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0 - 1;
            }
            if (func_80012AB4(pos_x, gActors[actor_index].posY.whole) & 0x80) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.75;
                gActors[actor_index].stateUpper = 1;
                gActors[actor_index].stateLower = MARINASTATE_AIRDASHHOLD;
                return;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }
        }
        if (gActors[actor_index].var_150 == 0) {
            if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(5)) {
                gActors[actor_index].var_150 = 1;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
        }
    }
}

void func_8004B878(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x40;
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F7D8(actor_index);
    }
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        Sound_PlaySfx(SFX_00A9);
        if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 = 0x26;
            }
            else {
                gActors[actor_index].unk_170 = 0x25;
            }
        }
        else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].unk_170 = 0x61;
            }
            else {
                gActors[actor_index].unk_170 = 0x62;
            }
        }
        else if (gActors[actor_index].velocityX.raw < 0) {
            gActors[actor_index].unk_170 = 0x61;
        }
        else {
            gActors[actor_index].unk_170 = 0x62;
        }
        gActors[actor_index].unk_17C = 0;
        if (gActors[actor_index].stateLower == MARINASTATE_42) {
            gActors[actor_index].velocityY.raw = Math_AbsS32_2(gActors[actor_index].velocityX.raw);
        }
        if (gActors[actor_index].stateLower == MARINASTATE_43) {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }
        gActors[actor_index].var_15C = gActors[actor_index].velocityY.whole;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.5;
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].stateUpper = 1;
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        if (gActors[actor_index].var_15C < 4) {
            gActors[actor_index].var_158++;
        }
        if (gActors[actor_index].var_158 >= gActors[actor_index].var_15C) {
            gActors[actor_index].unk_170_s8[0]++;
        }
        if (func_800491B8(actor_index, 0, -14) != 0) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                gActors[actor_index].state = MARINASTATE_LANDHOLD;
            }
            else {
                gActors[actor_index].state = MARINASTATE_LAND;
            }
        }
        else if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-6.0)) {
            gActors[actor_index].state = MARINASTATE_22;
        }
    }
}

void Marina_SlideDashState(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    if (func_80049460(actor_index) != 0) {
        gActors[actor_index].unk_140_u8[0] = 4;
    }
    else {
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
            Sound_PlaySfx(SFX_DASH_00AE);
            Sound_PlaySfx(SFX_MARINA_YELL1);
            func_8005C098(actor_index, 1);
            gActors[actor_index].damage = 0;
            gActors[actor_index].hitFlags = HITFLAG_0;
            gActors[actor_index].hitType = HITTYPE_22;
            gActors[actor_index].hitboxAY0 = D_800D4000[0][2];
            gActors[actor_index].hitboxAY1 = D_800D4000[2][3];
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX0 = 0;
                gActors[actor_index].hitboxAX1 = D_800D4000[2][1] + 8;
                gActors[actor_index].velocityX.raw = MARINA_MOVE(11);
                gActors[actor_index].unk_180_u8[2] = 4;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = -8 - D_800D4000[2][1];
                gActors[actor_index].velocityX.raw = -MARINA_MOVE(11);
                gActors[actor_index].unk_180_u8[2] = 0xC;
            }
            gActors[actor_index].unk_170 = 0x5B;
            gActors[actor_index].unk_17C = 2;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || (gActors[actor_index].var_150 != 0)) {
            if (gActors[actor_index].var_150 == 0) {
                gActors[actor_index].unk_170_s16[1] = (u16) gActors[actor_index].unk_170_s16[1] | 0x4000;
                gActors[actor_index].unk_104 = gActors[actor_index].velocityX.raw;
                gActors[actor_index].unk_108 = gActors[actor_index].velocityY.raw;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }
            gActors[actor_index].var_150++;
            if (gActors[actor_index].var_150 >= 5) {
                gActors[actor_index].unk_170_s16[1] = (u16) gActors[actor_index].unk_170_s16[1] & 0xBFFF;
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_104;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_108;
            }
            else {
                return;
            }
        }
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
        if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) &&
            (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1.0))) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }
        if (gActors[actor_index].stateUpper == 1) {
            if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 4))) {
                D_801370D2 = 0;
                Marina_SpawnAfterImage(actor_index);
            }
            if (D_801373D8 & 0x80) {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gPlayerData.unk_10 = 0xC;
                }
                else {
                    gPlayerData.unk_10 = 4;
                }
                if (func_80049040(actor_index) == 0) {
                    gActors[actor_index].unk_170 = 0x4A;
                    func_8005C098(actor_index, 1);
                    gActors[actor_index].unk_180_u8[2] = gPlayerData.unk_10;
                    gActors[actor_index].stateUpper = 1;
                    gActors[actor_index].stateLower = MARINASTATE_9;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_AIRDASHHOLD;
                }
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 3;
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 8);
                if (func_8005D418(actor_index) != 0) {
                    gActors[actor_index].unk_17C = 0;
                    gActors[actor_index].unk_170 = 0x5C;
                    gActors[actor_index].unk_17C_s8[1] = 3;
                    gActors[actor_index].stateUpper = 2;
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                }
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 3;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
            if (func_80049040(actor_index) != 0) {
                func_8005D370(actor_index, 0x27);
                gActors[actor_index].state = MARINASTATE_22;
            }
        }
    }
}

void Marina_RollState(u16 actor_index) {
    s32 sp2C;
    s32 pad;

    gActors[actor_index].unk_12C_u16[0] |= 2;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_17C = 3;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_15C = gPlayerData.unk_10;
        gActors[actor_index].stateUpper = 1;
    }
    if (gActors[actor_index].stateUpper == 2) {
        if ((gActors[actor_index].var_150 >= 9) && (gPlayerData.unk_12 == 0) && (gPlayerData.unk_10 >= 5) && (gPlayerData.unk_10 < 0xC)) {
            if (gPlayerData.unk_10 != 8) {
                gActors[actor_index].var_15C = gPlayerData.unk_10;
            }
            gActors[actor_index].stateUpper = 1;
        }
        if (!(gActors[actor_index].unk_0A0 & 6)) {
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, MARINA_MOVE(11) * 0.5, MARINA_MOVE(11) * 0.015);
            }
            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -MARINA_MOVE(11) * 0.5, MARINA_MOVE(11) * 0.015);
            }
        }
    }
    if (gActors[actor_index].stateUpper == 1) {
        sp2C = 99;
        if (gActors[actor_index].var_15C == 6) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                sp2C = 100;
            }
        }
        if ((gActors[actor_index].var_15C == 0xA) && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            sp2C = 100;
        }
        if ((gActors[actor_index].unk_0A0 & 6) && (sp2C == 99)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].unk_0A0 & 8) {
                    if (gActors[actor_index].unk_0A0 & 2) {
                        gActors[actor_index].velocityX.raw += MARINA_MOVE(11) * 0.05;
                    }
                    else {
                        gActors[actor_index].velocityX.raw += MARINA_MOVE(11) * 0.1;
                    }
                }
                else if (gActors[actor_index].unk_0A0 & 2) {
                    gActors[actor_index].velocityX.raw = MARINA_MOVE(11) * 0.25;
                }
                else {
                    gActors[actor_index].velocityX.raw = MARINA_MOVE(11) * 0.125;
                }
            }
            else if (gActors[actor_index].unk_0A0 & 8) {
                if (gActors[actor_index].unk_0A0 & 2) {
                    gActors[actor_index].velocityX.raw = -MARINA_MOVE(11) * 0.25;
                }
                else {
                    gActors[actor_index].velocityX.raw = -MARINA_MOVE(11) * 0.125;
                }
            }
            else if (gActors[actor_index].unk_0A0 & 2) {
                gActors[actor_index].velocityX.raw -= MARINA_MOVE(11) * 0.05;
            }
            else {
                gActors[actor_index].velocityX.raw -= MARINA_MOVE(11) * 0.1;
            }
        }
        else if ((gActors[actor_index].velocityX.raw == 0) || (sp2C == 100) || (sp2C != func_8005D338(actor_index))) {
            gActors[actor_index].velocityX.raw = MARINA_MOVE(11) * 0.5;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
            }
            if (sp2C == 100) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
            }
        }
        func_8005D370(actor_index, sp2C);
        gActors[actor_index].var_150 = 0;
        Sound_PlaySfx(SFX_0087);
        gActors[actor_index].stateUpper = 2;
    }
    if (gActors[actor_index].var_150 > 12) {
        gActors[actor_index].unk_12C_u16[0] |= 4;
    }
    gActors[actor_index].var_150++;
    if (gActors[actor_index].var_150 >= 20) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
            gActors[actor_index].state = MARINASTATE_ROLL;
        }
        else {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 1;
            gActors[actor_index].state = MARINASTATE_IDLE;
        }
    }
}

void Marina_AirDashState(u16 actor_index) {
    s16 pos_x;
    s32 vel_step;

    if (func_800491B8(actor_index, 0, -14) != 0) {
        gActors[actor_index].state = MARINASTATE_LAND;
    }
    else {
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
            gActors[actor_index].var_150 = 0x10;
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD) {
                gActors[actor_index].var_150 = 0x20;
            }
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].stateUpper = 1;
            switch (gPlayerData.unk_10) {
            case 0:
                if ((-MARINA_MOVE(28) * 0.25) <= gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(28) * 1.5;
                }
                else {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(28);
                }
                gActors[actor_index].var_150 = 0x18;
                gActors[actor_index].var_158 = MARINA_MOVE(19) * 0.358;
                gActors[actor_index].unk_170 = 0x4D;
                break;
            case 8:
                if ((MARINA_MOVE(28) - FIXED_UNIT(12.0)) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw -= MARINA_MOVE(28);
                }
                if ((-MARINA_MOVE(28) * 2) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = -MARINA_MOVE(28) * 2;
                }
                gActors[actor_index].unk_170 = 0x4E;
                break;
            default:
                gActors[actor_index].damage = 0;
                gActors[actor_index].hitFlags = 0;
                gActors[actor_index].hitType = HITTYPE_21;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 2;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
                if (!(gPlayerData.unk_10 & 8)) {
                    gActors[actor_index].hitboxAX0 = 0;
                    gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
                    if (gActors[actor_index].velocityX.raw < MARINA_MOVE(28)) {
                        gActors[actor_index].velocityX.raw = MARINA_MOVE(28);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].unk_170 = 0x47;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x4A;
                    }
                }
                else {
                    gActors[actor_index].hitboxAX1 = 0;
                    gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
                    if (-MARINA_MOVE(28) < gActors[actor_index].velocityX.raw) {
                        gActors[actor_index].velocityX.raw = -MARINA_MOVE(28);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].unk_170 = 0x4A;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x47;
                    }
                }
                if ((MARINA_MOVE(15) * 1.5) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(15) * 1.5;
                }
                if (gActors[actor_index].velocityY.raw < 0) {
                    gActors[actor_index].velocityY.raw = 0;
                }
                break;
            }
            func_8005C098(actor_index, 1);
            gActors[actor_index].unk_180_u8[2] = gPlayerData.unk_10;
            gActors[actor_index].var_15C = gPlayerData.unk_10;
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD) {
                gActors[actor_index].unk_12E_u8 |= 0x40;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
            Sound_PlaySfx(SFX_DASH_0081);
        }
        else {
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASH) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), gActors[actor_index].var_158);
                if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(28)) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
                }
                gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, MARINA_MOVE(19), MARINA_MOVE(19) / 16);
                if ((func_8005D338(actor_index) != 0x27) && (func_8005D418(actor_index) != 0)) {
                    gActors[actor_index].unk_170 = 0x27;
                }
                if (gActors[actor_index].var_150 < 4.0) {
                    gActors[actor_index].unk_12C_u16[0] |= 4;
                }
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 2);
                    gActors[actor_index].unk_12C_u16[0] |= 8;
                }
                else if ((gActors[actor_index].var_15C != 8) && (gActors[actor_index].var_150 >= 9) && (Math_AbsS32_2(gActors[actor_index].velocityX.raw) >= FIXED_UNIT(2.5))) {
                    if (Math_AbsS32_2(gActors[actor_index].hitboxAX0) < Math_AbsS32_2(gActors[actor_index].hitboxAX1)) {
                        pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1 + 1;
                    }
                    else {
                        pos_x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0 - 1;
                    }
                    if (func_80012AB4(pos_x, gActors[actor_index].posY.whole) & 0x80) {
                        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.75;
                        gActors[actor_index].var_150 += 0x10;
                        gActors[actor_index].stateUpper = 3;
                        gActors[actor_index].stateLower = MARINASTATE_AIRDASHHOLD;
                        return;
                    }
                    else {
                        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                    }
                }
            }
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD) {
                vel_step = MARINA_MOVE(0);
                if (gActors[actor_index].stateUpper == 2) {
                    vel_step *= 4;
                }
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, vel_step);
                if (gActors[actor_index].stateUpper == 3) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) / 2);
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, vel_step * 2);
                }
                if (gActors[actor_index].var_150 < 12.0) {
                    gActors[actor_index].unk_12C_u16[0] |= 4;
                }
                else {
                    gActors[actor_index].unk_12E_u8 |= 0x40;
                }
            }
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 == 0) {
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = MARINASTATE_22;
            }
        }
        if ((func_8005D338(actor_index) != 0x27) && (gActors[actor_index].unk_170_s8[0] == 0)) {
            if ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3) || (gActors[actor_index].unk_170_s8[1] == 5)) {
                D_801370D2 = 0;
                Marina_SpawnAfterImage(actor_index);
            }
        }
    }
}

void Marina_State20(u16 actor_index) {
    s32 temp_v0_2;
    s32 sp30[5];
    s32 angle;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        func_8005D370(actor_index, 0x21);
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 3);
        gActors[actor_index].velocityY.raw = MARINA_MOVE(15);
        if (D_801373D8 & 0x20) {
            gActors[actor_index].velocityY.raw *= 1.25;
        }
        sp30[0] = gActors[actor_index].posX.whole;
        sp30[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 4;
        sp30[2] = gActors[actor_index].posZ.whole + 1;
        sp30[3] = 0x1AA;
        sp30[4] = 0;
        func_80059F30(actor_index, sp30, 1.0f, 0x14);
        gActors[actor_index].stateUpper = 20;
        break;
    case 10:
        gActors[actor_index].unk_170 = 0x21;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 11;
        break;
    case 11:
        if (func_8005D418(actor_index) == 0) {
            break;
        }
        temp_v0_2 = func_80048C28(1);
        switch (temp_v0_2) {
            case 4:
                angle = DEG_TO_INDEX(16.875);
                break;
            case 6:
                angle = DEG_TO_INDEX(315);
                break;
            case 8:
                angle = DEG_TO_INDEX(315);
                break;
            default:
                angle = DEG_TO_INDEX(45);
                break;
        }
        gActors[actor_index].velocityX.raw = Math_AbsS32_2(MARINA_MOVE(15) * COS(angle));
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        gActors[actor_index].velocityY.raw = MARINA_MOVE(15) * SIN(angle);
        gActors[actor_index].stateUpper = 20;
        break;
    }
    if (gActors[actor_index].stateUpper == 20) {
        gActors[actor_index].unk_170 = 0x24;
        gActors[actor_index].unk_17C = 4;
        gActors[actor_index].posY.whole--;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        Sound_PlaySfx(SFX_JUMP_0024);
        gActors[actor_index].state = MARINASTATE_22;
    }
}

void func_8004D140(u16 actor_index) {
    s32 vel_target;
    s32 vel_step;

    if (func_800491B8(actor_index, 0, -14) != 0) {
        gActors[actor_index].state = MARINASTATE_LAND;
    }
    else {
        if (gActors[actor_index].stateLower != MARINASTATE_25) {
            gActors[actor_index].unk_12C_u16[0] |= 4;
        }
        if (D_801373D8 & 0x80) {
            if ((gActors[actor_index].stateLower != MARINASTATE_22) && (gActors[actor_index].stateLower != MARINASTATE_25)) {
                gActors[actor_index].stateLower = MARINASTATE_22;
            }
            func_8005D370(actor_index, 0x1A);
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            if (D_801373D8 & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
        }
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK4))) {
            gActors[actor_index].velocityY.raw /= 2;
        }
        if ((func_8005D338(actor_index) == 0x1A) && (func_8005D418(actor_index) != 0)) {
            gActors[actor_index].unk_170 = 0x24;
            gActors[actor_index].unk_170_s8[1] = 3;
        }
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].stateUpper = 1;
            /* fallthrough */
        case 1:
            gActors[actor_index].var_150--;
            if (gActors[actor_index].stateLower != MARINASTATE_23) {
                if (gActors[actor_index].velocityY.raw > 0) {
                    if ((gActors[actor_index].var_150 > 0) && (D_801370CC & gButton_A)) {
                        break;
                    }
                }
            }
            gActors[actor_index].stateUpper = 2;
            /* fallthrough */
        case 2:
            if (gActors[actor_index].stateLower == MARINASTATE_22) {
                if (!(D_801373D8 & 0x10)) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 1.5);
                }
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_23) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.75);
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_24) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_25) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
                if (gActors[actor_index].velocityY.raw < -MARINA_MOVE(28) * 0.7) {
                    gActors[actor_index].stateLower = MARINASTATE_22;
                }
            }
            break;
        }
        if (gActors[actor_index].velocityY.raw > 0) {
            if ((func_8005D338(actor_index) != 0x24) && (func_8005D418(actor_index) != 0)) {
                gActors[actor_index].unk_170 = 0x24;
                gActors[actor_index].unk_170_s8[1] = 3;
            }
        }
        else if ((func_8005D338(actor_index) == 0x24) || (func_8005D418(actor_index) != 0)) {
            func_8005D370(actor_index, 0x27);
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 1;
        }
        if (gActors[actor_index].stateLower != MARINASTATE_23) {
            vel_step = MARINA_MOVE(20) / 10;
            if (D_801373D8 & 2) {
                vel_target = MARINA_MOVE(20);
                if (vel_target < gActors[actor_index].velocityX.raw) {
                    vel_target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw < 0) {
                    vel_step *= 2;
                }
            }
            if (D_801373D8 & 1) {
                vel_target = -MARINA_MOVE(20);
                if (gActors[actor_index].velocityX.raw < vel_target) {
                    vel_target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw > 0) {
                    vel_step *= 2;
                }
            }
            if (!(D_801373D8 & 3)) {
                if ((gActors[actor_index].stateLower == MARINASTATE_22) || (gActors[actor_index].stateLower == MARINASTATE_25)) {
                    vel_target = 0;
                }
                if (gActors[actor_index].stateLower == MARINASTATE_24) {
                    vel_target = gActors[actor_index].velocityX.raw;
                }
            }
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, vel_target, vel_step);
        }
    }
}

void func_8004D6CC(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x40;
    func_8005C550(actor_index, 1);
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_index].unk_170 = 0xA9;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-1.0);
        gActors[actor_index].stateUpper = 1;
    }
    else if (gActors[actor_index].stateUpper == 1) {
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].state = MARINASTATE_22;
        }
    }
}

void func_8004D7BC(u16 actor_index) {
    s32 vel_step;
    gActors[actor_index].unk_12E_u8 |= 0x40;
    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        vel_step = MARINA_MOVE(0);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, vel_step);
    }
    else {
        if (func_800491B8(actor_index, 0, -14) != 0) {
            gActors[actor_index].state = MARINASTATE_LAND;
            return;
        }
        if (gActors[actor_index].var_150 > 0x14) {
            gActors[actor_index].var_150 = 0x14;
        }
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].velocityY.raw <= 0) || (gActors[actor_index].var_150 <= 0) || !(D_801370CC & gButton_A)) {
            vel_step = MARINA_MOVE(19);
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), vel_step);
        }
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].unk_170 = 0x30;
        }
        else {
            gActors[actor_index].var_15C = 3;
            gActors[actor_index].unk_170 = 0x33;
        }
        if (gActors[actor_index].unk_140_u8[0] < 4) {
            gActors[actor_index].var_15C += 1;
            gActors[actor_index].unk_170 += 1;
        }
        if (gActors[actor_index].unk_140_u8[0] > 4) {
            gActors[actor_index].var_15C += 2;
            gActors[actor_index].unk_170 += 2;
        }
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitFlags = HITFLAG_5;
        gActors[actor_index].hitType = HITTYPE_18;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80048D30(actor_index, gActors[actor_index].var_15C);
        if (func_8005D418(actor_index)) {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].unk_170 = 0x36;
            }
            else {
                gActors[actor_index].unk_170 = 0x39;
            }
            if (gActors[actor_index].unk_140_u8[0] < 4) {
                gActors[actor_index].unk_170 += 1;
            }
            if (gActors[actor_index].unk_140_u8[0] >= 5) {
                gActors[actor_index].unk_170 += 2;
            }
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_index].stateUpper = 1;
                gActors[actor_index].stateLower = MARINASTATE_22;
            }
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK7;
        }
    }
}

void func_8004DA6C(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    switch (gActors[actor_index].stateUpper) {
    case 0:
        Sound_PlaySfx(SFX_MARINA_YELL2);
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_170 = 0x86;
        gActors[actor_index].velocityX.raw += gActors[actor_index].unk_0F8.raw;
        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            gActors[actor_index].velocityY.raw += gActors[actor_index].unk_0FC.raw;
        }
        gActors[actor_index].var_150 = 0xA;
        gActors[actor_index].stateUpper = 1;
        break;
    case 1:
        func_8005C550(actor_index, 1);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0,MARINA_MOVE(0) * 1.5);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, MARINA_MOVE(0) * 1.5);
        gActors[actor_index].var_150--;
        if ( gActors[actor_index].var_150 == 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_index].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void func_8004DC44(u16 actor_index) {
    u16 parent_actor;
    u16 actor_1;

    parent_actor = gActors[actor_index].parentIndex;
    gActors[actor_index].unk_12E_u8 |= 0x41;
    switch (gActors[actor_index].stateUpper) {
    case 0:
        Sound_PlaySfx(SFX_MARINA_YELL2);
        gActors[actor_index].unk_14C = 0.0f;
        actor_1 = SpawnBeamThrow(actor_index);
        if (actor_1 != 0) {
            gActors[actor_1].parentIndex = parent_actor;
            gActors[actor_1].unk_14C = actor_index;
            gActors[actor_index].unk_14C = actor_1;
            gActors[actor_index].stateUpper = 2;
        }
        /* fallthrough */
    case 1:
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_170 = 0x87;
        if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0) >= (gActors[parent_actor].posY.whole + ((gActors[parent_actor].hitboxAY0 + gActors[parent_actor].hitboxAY1) / 2))) {
            gActors[actor_index].unk_140_u8[0] = 4;
            gActors[actor_index].unk_170 = 0x86;
        }
        gActors[actor_index].velocityX.raw += gActors[actor_index].unk_0F8.raw;
        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            gActors[actor_index].velocityY.raw += gActors[actor_index].unk_0FC.raw;
        }
        if (gActors[actor_index].stateUpper == 1) {
            actor_1 = gActors[actor_index].unk_14C;
            gActors[actor_1].unk_0F8.raw = gActors[parent_actor].posX.raw - gActors[actor_index].posX.raw;
            gActors[actor_1].unk_0FC.raw = gActors[parent_actor].posY.raw - gActors[actor_index].posY.raw;
            gActors[actor_1].scaleX = 0.1f;
            gActors[actor_index].stateUpper = 2;
        }
        gActors[actor_index].var_150 = 0xA;
        /* fallthrough */
    case 2:
        actor_1 = gActors[actor_index].unk_14C;
        if (actor_1) {
            if (gActors[actor_1].var_110 < 0.5) {
                gActors[actor_1].var_110 = 0.5f;
            }
            if (D_801370CE & gButton_B) {
                gActors[actor_1].scaleX = gActors[actor_1].var_110 * 3.0;
                if (gActors[actor_1].var_110 < 1.5) {
                    gActors[actor_1].var_110 += 0.1;
                }
            }
        }
        func_8005C550(actor_index, 1);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) * 1.5);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, MARINA_MOVE(0) * 1.5);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            if (actor_1 != 0) {
                gActors[actor_1].flags_098 |= ACTOR_FLAG3_GRAB;
                gActors[actor_1].parentIndex = actor_index;
                gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
                gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
                gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    gActors[actor_index].unk_140_u16[1] = 1;
                }
                else {
                    gActors[actor_index].unk_140_u16[1] = 0;
                }
                gActors[actor_index].parentIndex = actor_1;
                gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
                gActors[actor_index].unk_12F_u8 = 0;
                gPlayerData.unk_00[0].raw = gActors[actor_1].posX.raw - gActors[actor_index].posX.raw;
                gPlayerData.unk_00[1].raw = gActors[actor_1].posY.raw - gActors[actor_index].posY.raw;
                gActors[actor_index].state = MARINASTATE_GRAB;
            }
            else if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_index].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void Marina_State44(s32 arg0) {
}

void Marina_State45(s32 arg0) {
}

// State when Marina Teleports in
void Marina_TPInState(u16 actor_index) {
    s32 sp34[5];
    u16 actor_1;

    gActors[actor_index].unk_12E_u8 = 0xFF;
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].unk_170 = 0xA7;
        gActors[actor_index].unk_124 = 0.02f;
        gActors[actor_index].unk_128 = 3.0f;
        sp34[0] = gActors[actor_index].posX.whole;
        sp34[1] = gActors[actor_index].posY.whole;
        sp34[2] = gActors[actor_index].posZ.whole + 1;
        actor_1 = func_800592A0(actor_index, sp34);
        if (actor_1 != 0) {
            gActors[actor_1].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
            gActors[actor_1].graphicIndex = GINDEX_PARTICLERING;
            gActors[actor_1].unk_188 = gActors[actor_index].unk_188;
            gActors[actor_1].var_154 = -4;
            gActors[actor_1].unk_114 = 0.0f;
            gActors[actor_1].var_110 = 0.0f;
            gActors[actor_1].unk_118 = 0.00325f;
            gActors[actor_1].unk_11C = 0.00325f;
            gActors[actor_1].scaleX = 0.1f;
            gActors[actor_1].scaleY = 0.1f;
            gActors[actor_1].unk_148 = 30.0f;
        }
        gActors[actor_index].var_150 = 0xFF;
        gActors[actor_index].var_154 = 0xA;
        gActors[actor_index].stateUpper = 1;
        break;
    case 1:
        gActors[actor_index].unk_124 = Math_ApproachF32(gActors[actor_index].unk_124, 1.5f, 0.15f);
        gActors[actor_index].unk_128 = Math_ApproachF32(gActors[actor_index].unk_128, 0.1f, 0.29f);
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].var_154 = 0xA;
            Sound_PlaySfx(SFX_TP_ARRIVE);
            gActors[actor_index].stateUpper = 2;
        }
        gActors[actor_index].unk_180_u8[3] = 8;
        break;
    case 2:
        gActors[actor_index].unk_124 = Math_ApproachF32(gActors[actor_index].unk_124, 1.0f, 0.05f);
        gActors[actor_index].unk_128 = Math_ApproachF32(gActors[actor_index].unk_128, 1.0f, 0.09f);
        gActors[actor_index].var_150 -= 0x33;
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].var_150 = -0x96;
            gActors[actor_index].unk_128 = 1.0f;
            gActors[actor_index].unk_124 = 1.0f;
            gActors[actor_index].unk_170 = 0xA8;
            gActors[actor_index].stateUpper = 3;
        }
        gActors[actor_index].unk_180_u8[3] = 8;
        break;
    case 3:
        gActors[actor_index].var_150 += 6;
        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].state = MARINASTATE_WAIT2;
        }
        break;
    }
    gActors[actor_index].colorB = Math_AbsS32_2(gActors[actor_index].var_150 / 2);
    gActors[actor_index].colorG = gActors[actor_index].colorB;
    gActors[actor_index].colorR = gActors[actor_index].colorB;
    if (gActors[actor_index].var_150 >= 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    }
    else {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
    }
    func_8005C550(actor_index, 30);
}

// state when Marina Teleports out.
void Marina_TPOutState(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 = 0xFF;
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
            Marina_DropActor(actor_index, gActors[actor_index].parentIndex);
        }
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        gActors[actor_index].colorB = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorR = 0;
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].var_154 = 0xA;
        gActors[actor_index].stateUpper = 1;
        break;
    case 1:
        gActors[actor_index].unk_124 = Math_ApproachF32(gActors[actor_index].unk_124, 1.5f, 0.05f);
        gActors[actor_index].unk_128 = Math_ApproachF32(gActors[actor_index].unk_128, 0.02f, 0.098f);
        gActors[actor_index].var_150 += 0x19;
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].var_150 = 0xFF;
            gActors[actor_index].var_154 = 0xA;
            gActors[actor_index].stateUpper = 2;
        }
        gActors[actor_index].unk_180_u8[3] = 8;
        break;
    case 2:
        gActors[actor_index].unk_124 = Math_ApproachF32(gActors[actor_index].unk_124, 0.02f, 0.15f);
        gActors[actor_index].unk_128 = Math_ApproachF32(gActors[actor_index].unk_128, 3.0f, 0.298f);
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 <= 0) {
            gMarinaAnim.anim_u32 = MARINAANIM_4;
            gMarinaAnim.timer = 3;
        }
        gActors[actor_index].unk_180_u8[3] = 8;
        break;
    }

    gActors[actor_index].colorB = Math_AbsS32_2(gActors[actor_index].var_150 / 2);
    gActors[actor_index].colorG = gActors[actor_index].colorB;
    gActors[actor_index].colorR = gActors[actor_index].colorB;
    if (gActors[actor_index].var_150 >= 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    }
    else {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
    }
    func_8005C550(actor_index, 30);
}

// state 58 - debug graphic select
void func_8004E6FC(u16 actor_index) {
    s16* graphic_list;
    s16 button_hold_count;

    gActors[actor_index].unk_12E_u8 |= 0x40;
    button_hold_count = 0;
    if (func_8005D338(actor_index) != 0) {
        graphic_list = gActors[actor_index].graphicLists[func_8005D338(actor_index)];
        OSD_PrintIntHex(func_8005D338(actor_index), gActors[actor_index].posX.whole - 0x20, gActors[actor_index].posY.whole + 0x50);
        OSD_PrintIntHex(gActors[actor_index].unk_170_s8[1], gActors[actor_index].posX.whole - 0x20, gActors[actor_index].posY.whole + 0x40);
        OSD_PrintIntHex(graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1], gActors[actor_index].posX.whole - 0x20, gActors[actor_index].posY.whole + 0x30);
    }
    if (gButtonPress & gButton_A) {
        gActors[actor_index].unk_170_s8[1] = 0;
        gActors[actor_index].unk_170_s8[0] = 0;
        func_8005D3D8(actor_index);
    }
    if (!(gButtonHold & gButton_B)) {
        gActors[actor_index].unk_170_u16[1] &= ~0x4000;
        if (gButtonHold & gButton_DLeft) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                gActors[actor_index].unk_170 = func_8005D338(actor_index) - 1;
                if (gActors[actor_index].var_158 >= gActors[actor_index].unk_170) {
                    gActors[actor_index].unk_170 = gActors[actor_index].var_15C - 1;
                }
            }
        }
        if (gButtonHold & gButton_DRight) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                gActors[actor_index].unk_170 = func_8005D338(actor_index) + 1;
                if (gActors[actor_index].unk_170 >= gActors[actor_index].var_15C) {
                    gActors[actor_index].unk_170 = gActors[actor_index].var_158 + 1;
                }
            }
        }
    }
    else {
        if (gButtonHold & gButton_DLeft) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                if (gActors[actor_index].unk_170_s8[1] != 0) {
                    gActors[actor_index].unk_170_s8[1]--;
                    func_8005D3D8(actor_index);
                }
            }
        }
        if (gButtonHold & gButton_DRight) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                if (graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 2] > 0) {
                    gActors[actor_index].unk_170_s8[1]++;
                }
            }
        }
        if (gButtonHold & gButton_DUp) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                if (graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1] != 0) {
                    graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1]--;
                }
            }
        }
        if (gButtonHold & gButton_DDown) {
            button_hold_count++;
            if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
                if (graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1] < 0x7F) {
                    graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1]++;
                }
            }
        }
        gActors[actor_index].unk_170_s8[0] = 0;
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
    }
    if (button_hold_count == 0) {
        gActors[actor_index].var_150 = 0;
    }
    else {
        gActors[actor_index].var_150++;
    }
}

// state 59 - debug graphic select
void func_8004EAE4(u16 actor_index) {
    s16 button_hold_count;

    button_hold_count = 0;
    gActors[actor_index].unk_12E_u8 |= 0x40;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].graphicIndex = gActors[actor_index].var_158;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].stateUpper++;
    }
    OSD_PrintIntHex(gActors[actor_index].graphicIndex - gActors[actor_index].var_158, gActors[actor_index].posX.whole - 0x20, gActors[actor_index].posY.whole + 0x30);
    if (gButtonHold & gButton_DRight) {
        button_hold_count++;
        if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
            gActors[actor_index].graphicIndex++;
            if (gActors[actor_index].var_15C < gActors[actor_index].graphicIndex) {
                gActors[actor_index].graphicIndex = gActors[actor_index].var_158;
            }
        }
    }
    if (gButtonHold & gButton_DLeft) {
        button_hold_count++;
        if ((gActors[actor_index].var_150 == 0) || (gActors[actor_index].var_150 >= 9)) {
            gActors[actor_index].graphicIndex--;
            if (gActors[actor_index].graphicIndex < gActors[actor_index].var_158) {
                gActors[actor_index].graphicIndex = gActors[actor_index].var_15C;
            }
        }
    }
    if (button_hold_count == 0) {
        gActors[actor_index].var_150 = 0;
    }
    else {
        gActors[actor_index].var_150++;
    }
}

// state 60 - debug "flymode"
void Marina_DebugMove(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0xC1;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    if (D_801373D8 & 2) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(8.0);
    }
    if (D_801373D8 & 1) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-8.0);
    }
    if (D_801373D8 & 0x20) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(8.0);
    }
    if (D_801373D8 & 0x10) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-8.0);
    }
    gPlayerData.debugPosX = gPlayerPosX.raw;
    gPlayerData.debugPosY = gPlayerPosY.raw;
}

void ActorUpdate_Marina(u16 actor_index) {
    s32 index;
    s32 pad;
    u16 pad2;
    u16 temp_a1;

    if (gPlayerData.flags & PLAYERDATA_PAUSEACTOR) {
        return;
    }

    if (gActors[actor_index].state == MARINASTATE_0) {
        Marina_State0(actor_index);
    }

    gActors[actor_index].graphicFlags &= ~(ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ);
    gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
    D_800BE5E0 = D_800BE5E4 = 0;
    gPlayerData.unk_70 = 0;
    gActors[actor_index].posZ.raw = 0;
    gMarinaActionVelocities[MARINAMOVE_19] = Math_ApproachS32(gMarinaActionVelocities[MARINAMOVE_19], FIXED_UNIT(0.375), FIXED_UNIT(0.015625));
    if (gActors[actor_index].unk_12F_u8 < 4) {
        gActors[actor_index].unk_12F_u8++;
    }
    D_801370CC = gButtonHold;
    D_801370CE = gButtonPress;
    if (gMarinaAnim.anim_u32 != MARINAANIM_0) {
        if ((gMarinaAnim.anim_u32 & 0xFF) == MARINAANIM_2) {
            func_800485AC(actor_index);
        }
        else {
            for (index = 0; index < ARRAYLENGTH(gButtonPressHistory); index++) {
                gButtonPressHistory[index] = gButtonHoldHistory[index] = 0;
            }
            D_801370CC = D_801370CE = 0;
            gActors[actor_index].unk_12F_u8 = 0;
            gPlayerData.unk_12 = 0x64;
            gPlayerData.unk_13 = 0;
            func_800485AC(actor_index);
        }
    }
    D_801373D8 = func_80048600(actor_index);
    if (gPlayerData.debugPosX != 0) {
        OSD_PrintIntHex(gPlayerData.debugPosX, -0x20, 0x40);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugPosX = 0;
        }
    }
    if (gPlayerData.debugPosY != 0) {
        OSD_PrintIntHex(gPlayerData.debugPosY, -0x20, 0x30);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugPosY = 0;
        }
    }
    if (gPlayerData.debugVal2 != 0) {
        OSD_PrintIntHex(gPlayerData.debugVal2, -0x20, 0x20);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugVal2 = 0;
        }
    }
    if (gPlayerData.debugVal3 != 0) {
        OSD_PrintIntHex(gPlayerData.debugVal3, -0x20, 0x10);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugVal3 = 0;
        }
    }
    gActors[actor_index].flags &= ~ACTOR_FLAG_FREEZE_POS;
    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].unk_12C_u16[0] &= ~7;
        gActors[actor_index].hitByFlags &= ~HITFLAG_0;
        gActors[actor_index].posX.raw += gPlayerData.unk_60;
    }
    func_80048740(actor_index);
    if (func_80058F9C(actor_index) == 0) {
        func_80049AC0(actor_index);
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].unk_12C_u16[0] = 0;
    gActors[actor_index].unk_12E_u8 = 0;
    gMarinaStateTable[gActors[actor_index].state & 0xFF](actor_index);
    func_80048BB0(actor_index);
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        temp_a1 = gActors[actor_index].parentIndex;
        gPlayerData.unk_70 = temp_a1;
        if (func_8005D338(actor_index) < 0x66) {
            gActors[temp_a1].unk_108 += func_80049A04(actor_index);
        }
        gActors[temp_a1].unk_104 += gActors[actor_index].velocityX.raw;
        gActors[temp_a1].unk_108 += gActors[actor_index].velocityY.raw;
    }
    func_8005D450(actor_index);
    func_8005CAA8(actor_index, D_800D4000[0]);
    func_8005BFA4(actor_index);
    if ((func_8005C5E0(actor_index) == 1) && (gActors[actor_index].unk_13C_s16[0] >= 0x1F)) {
        gActors[actor_index].unk_180_u8[3] = 6;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gPlayerData.marina_Unk_0F8 = gActors[actor_index].unk_0F8.raw;
        gPlayerData.marina_Unk_0FC = gActors[actor_index].unk_0FC.raw;
    }
    gPlayerData.marina_Flags_098 = gActors[actor_index].flags_098;
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
    gPlayerData.unk_7C++;
    gActors[actor_index].scaleX = gActors[actor_index].unk_124 * gPlayerActor.unk_120;
    gActors[actor_index].scaleY = gActors[actor_index].unk_128 * gPlayerActor.unk_120;
    gPlayerPosX.raw = gActors[actor_index].posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gActors[actor_index].posY.raw + gScreenPosCurrentY.raw;
    gPlayerVelXMirror.raw = gActors[actor_index].velocityX.raw;
    gPlayerVelYMirror.raw = gActors[actor_index].velocityY.raw;
    if (gCurrentScene == SCENE_FREEFALL) {
        if (gActors[actor_index].velocityY.raw <= -294912.0) { // 0x48000
            if (gPlayerData.fallWhistle == 0) {
                if (Sound_PlaySfx(SFX_FALLWHISTLE) >= 0) {
                    gPlayerData.fallWhistle = 1;
                }
            }
        }
        else if (gPlayerData.fallWhistle != 0) {
            Sound_StopSfx(SFX_FALLWHISTLE);
            gPlayerData.fallWhistle = 0;
        }
    }
}
