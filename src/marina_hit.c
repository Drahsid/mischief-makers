#include "common.h"
#include "boot.h"
#include "marina.h"
#include "marina_grab.h"
#include "marina_hit.h"
#include "marina_effect.h"

extern Actor2Func gMarinaHitTable[];

extern void Marina_DropActor(u16 actor0, u16 actor1);
extern s32 func_800574B4(u16 actor_index);

// change Marina's health
// @param actor_index marina's index
// @param health_increment change in health
// @returns 1 if health is changed, 2 if health is capped, -1 if health is <0
s32 Marina_AddHealth(u16 actor_index, s16 health_increment) {
    if (gActors[actor_index].health < 0) {
        return -1;
    }

    gActors[actor_index].health += health_increment;
    if (gActors[actor_index].health > 3000) {
        gActors[actor_index].health = 3000;
        return 2;
    }
    else {
        return 1;
    }
}

// change Marina's health
// @param actor_index marina's index
// @param health_decrement change in health
// @returns 0 if health_decrement is 0, 1 if damage is taken,
// 2 if damage taken is near-fatal, 3 if damage taken is fatal, 4 if damage is overkill.
s32 Marina_SubHealth(u16 actor_index, s16 health_decrement) {
    s32 ret;

    if (actor_index == PLAYER_INDEX) {
        if (gActors[actor_index].hitByFlags & HITFLAG_1) {
            gActors[actor_index].unk_13C_s16[1] = 0;
        }
        else {
            gActors[actor_index].unk_13C_s16[1] = health_decrement / 2;
        }
    }
    if (health_decrement == 0) {
        return MARINADMG_NONE;
    }

    if (gActors[actor_index].health > 0) {
        gActors[actor_index].health -= health_decrement;
        ret = MARINADMG_HIT;
        if (gActors[actor_index].health < 0) {
            gActors[actor_index].health = 0;
            ret = (actor_index != PLAYER_INDEX) ? MARINADMG_KO : MARINADMG_1HP;
        }
    }
    else {
        if (actor_index != PLAYER_INDEX) {
            return MARINADMG_KO;
        }
        ret = (gActors[actor_index].health == 0) ? MARINADMG_KO : MARINADMG_OVERKILL;
        gActors[actor_index].health -= health_decrement;
    }
    return ret;
}

s32 func_800574B4(u16 actor_index) {
    if (gActors[actor_index].health < 0) {
        return -1;
    }
    if (!(gActors[actor_index].hitByFlags & HITFLAG_6)) {
        return -1;
    }
    if (gPlayerData.unk_0B != 0) {
        gPlayerData.unk_0B -= 1;
        return -2;
    }
    if (!(D_801370CE & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight | gButton_B | gButton_A))) {
        return 0;
    }
    gPlayerData.unk_0A -= 1;
    if (gPlayerData.unk_0A > 0) {
        return 0;
    }
    gActors[actor_index].state = MARINASTATE_AIRDASH_17;
    return 1;
}

s32 func_800575C0(u16 actor_index) {
    if (gActors[actor_index].hitByFlags & HITFLAG_0) {
        return FALSE;
    }
    gActors[actor_index].hitByFlags |= HITFLAG_0;
    if (Math_AbsS32_2(gActors[actor_index].unk_0F8.raw) < FIXED_UNIT(2.0)) {
        gActors[actor_index].unk_0F8.raw = 2.0 * gActors[actor_index].unk_0F8.raw;
    }
    if (gActors[actor_index].unk_0FC.raw < FIXED_UNIT(3.0)) {
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
    }
    return TRUE;
}

void func_800576A0(u16 actor_index) {
    func_8005C550(actor_index, -0x10);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK19;
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        func_8002877C(actor_index);
        if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            gActors[gActors[actor_index].parentIndex].posX.raw = (gActors[gActors[actor_index].parentIndex].posX.raw + gActors[actor_index].posX.raw) - gActors[actor_index].unk_104;
        }
        if (D_801370CE != 0) {
            gActors[actor_index].unk_170_s8[0] += 1;
        }
    }
    else {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
            if (gActors[actor_index].hitByType == HITTYPE_28) {
                gActors[actor_index].state = MARINASTATE_HIT50;
            }
            else {
                gActors[actor_index].state = MARINASTATE_49;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16) {
                gActors[actor_index].unk_12E_u8 |= 2;
            }
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }
        else {
            gActors[actor_index].state = MARINASTATE_22;
        }
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
}

void func_80057848(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;
    func_8005C550(actor_index, -0x8000);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].unk_0F8.raw < 0) {
                gActors[actor_index].unk_170 = 0x90;
            }
            else {
                gActors[actor_index].unk_170 = 0x92;
            }
        }
        else if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_170 = 0x90;
        }
        else {
            gActors[actor_index].unk_170 = 0x92;
        }
        if (func_8005D338(actor_index) == 0x90) {
            gActors[actor_index].var_15C = 0;
        }
        if (func_8005D338(actor_index) == 0x92) {
            gActors[actor_index].var_15C = 1;
        }
        if (((gActors[gActors[actor_index].parentIndex].hitboxAY1 + gActors[gActors[actor_index].parentIndex].hitboxAY0) / 2) + gActors[gActors[actor_index].parentIndex].posY.whole <= gActors[actor_index].posY.whole) {
            if (func_8005D338(actor_index) == 0x90) {
                gActors[actor_index].unk_170 = 0x92;
                gActors[actor_index].var_15C = 2;
            }
            else {
                gActors[actor_index].unk_170 = 0x90;
                gActors[actor_index].var_15C = 3;
            }
        }
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }
        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / gActors->unk_120;
        gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / gActors->unk_120;
        func_8005D3D8(actor_index);
        if ((gActors[actor_index].stateLower == MARINASTATE_HIT51) || (gActors[actor_index].stateLower == MARINASTATE_52)) {
            Sound_PlaySfx(SFX_MARINA_OW3);
        }
        else if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16)) {
            Sound_PlaySfx(SFX_MARINA_OW1);
        }
        gActors[actor_index].stateUpper = 2;
        /* fallthrough */
    case 2:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].unk_180_u8[3] = MARINAEFF_5;
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 2);
            if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1.0)) {
                return;
            }
        }
        else if (func_800491B8(actor_index, 0, -0xE) != 0) {
            gActors[actor_index].state = MARINASTATE_LAND;
            return;
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) / 2);
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(1.0)) {
                return;
            }
        }
        if (func_8005D418(actor_index) != 0) {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].unk_170 = 0x91;
                }
                else if (gActors[actor_index].var_15C == 1) {
                    gActors[actor_index].unk_170 = 0x93;
                }
                else if (gActors[actor_index].var_15C == 2) {
                    gActors[actor_index].unk_170 = 0x93;
                }
                else if (gActors[actor_index].var_15C == 3) {
                    gActors[actor_index].unk_170 = 0x91;
                }
                gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_index].state = MARINASTATE_IDLE;
            }
            else {
                if (!(gActors[actor_index].var_15C & 1)) {
                    gActors[actor_index].unk_170 = 0x8E;
                }
                else {
                    gActors[actor_index].unk_170 = 0x8F;
                }
                gMarinaActionSpeeds[MARINAMOVE_19] = 0;
                gActors[actor_index].state = MARINASTATE_25;
            }
        }
        break;
    }
}

void func_80057C98(u16 actor_index) {
    s32 temp_v0;

    gActors[actor_index].unk_12E_u8 |= 0x41;
    func_8005C550(actor_index, -0x8000);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].unk_0F8.raw < 0) {
                gActors[actor_index].unk_170 = 0x94;
            }
            else {
                gActors[actor_index].unk_170 = 0x95;
            }
        }
        else if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_170 = 0x94;
        }
        else {
            gActors[actor_index].unk_170 = 0x95;
        }
        if (func_8005D338(actor_index) == 0x94) {
            gActors[actor_index].var_15C = 0;
        }
        if (func_8005D338(actor_index) == 0x95) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].var_15C = 1;
        }
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].unk_104 = gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].unk_108 = gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        gActors[actor_index].velocityX.raw /= gMarinaScale;
        gActors[actor_index].velocityY.raw /= gMarinaScale;
        if ((gActors[actor_index].stateLower == MARINASTATE_HIT51) || (gActors[actor_index].stateLower == MARINASTATE_52)) {
            Sound_PlaySfx(SFX_MARINA_OW3);
        }
        else if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16)) {
            Sound_PlaySfx(SFX_MARINA_OW1);
        }
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(12.0)) {
            if (gActors[actor_index].unk_0F8.raw > 0) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(12.0);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-12.0);
            }
        }
        if (Math_AbsS32_2(gActors[actor_index].velocityY.raw) > FIXED_UNIT(12.0)) {
            if (gActors[actor_index].unk_0FC.raw > 0) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(12.0);
            } 
            else {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-12.0);
            }
        }
        gActors[actor_index].var_154 = -1;
        gActors[actor_index].var_110 = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
        gActors[actor_index].unk_11C = 0.0f;
        if (!(gActors[actor_index].hitByFlags & HITFLAG_6)) {
            func_8005C520(func_8005C774(2) + 1, 4);
            gActors[actor_index].var_154 = gPlayerData.unk_0A;
            gActors[actor_index].hitByFlags |= HITFLAG_6;
        }
        func_8005D3D8(actor_index);
        gActors[actor_index].unk_17C = 5;
        gActors[actor_index].stateUpper = 2;
        /* fallthrough */
    case 2:
        if ((func_8005D418(actor_index) != 0) && (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.0))) {
            if (gActors[actor_index].var_15C == 0) {
                gActors[actor_index].unk_170 = 0x96;
            }
            else {
                gActors[actor_index].unk_170 = 0x97;
            }
            gActors[actor_index].stateUpper = 3;
        }
        /* fallthrough */
    case 3:
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(2.0)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Math_AbsS32_2((s32) gActors[actor_index].velocityX.raw / 32));
        }
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(3.5)) {
            gActors[actor_index].unk_170_s8[0] = 0;
        }
        if ((gActors[actor_index].stateLower == MARINASTATE_49) || (gActors[actor_index].stateLower == MARINASTATE_52)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        if (gActors[actor_index].stateLower == MARINASTATE_HIT50) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), gActors[actor_index].var_158);
        }
        gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
        gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(2.5)) {
            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
                if (Marina_SubHealth(actor_index, (s16) gActors[actor_index].unk_13C_s16[1]) == MARINADMG_KO) {
                    gActors[actor_index].health = 0;
                }
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].unk_170 = 0x95;
                    gActors[actor_index].var_15C = 1;
                }
                else {
                    gActors[actor_index].unk_170 = 0x94;
                    gActors[actor_index].var_15C = 0;
                }
                gActors[actor_index].var_150 = Math_AbsS32_2(FROM_FIXED(gActors[actor_index].unk_0F8.raw)) + 2;
                gActors[actor_index].stateUpper = 4;
                gActors[actor_index].stateLower = MARINASTATE_49;
                break;
            }
        }
        temp_v0 = func_800574B4(actor_index);
        if (temp_v0 > 0) {
            if (gActors[actor_index].unk_11C != 0.0f) {
                gActors[actor_index].unk_0F8.raw = -gActors[actor_index].velocityX.raw * 2;
                gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
                gActors[actor_index].state = MARINASTATE_43;
            }
        }
        else {
            if (temp_v0 == 0) {
                if (gActors[actor_index].unk_114 <= gPlayerData.unk_0A) {
                    if (gActors[actor_index].var_110 == 0.0f) {
                        gActors[actor_index].unk_114 += 1.0f;
                        gActors[actor_index].var_110 = 7.0f;
                    }
                    else {
                        gActors[actor_index].var_110 -= 1.0f;
                    }
                }
            }
            if (func_800490BC(actor_index, -1, -1) != 0) {
                if (Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]) == MARINADMG_KO) {
                    gActors[actor_index].health = 0;
                }
                gActors[actor_index].unk_13C_s16[1] = 0;
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].unk_170 = 0x9A;
                }
                else {
                    gActors[actor_index].unk_170 = 0x9B;
                }
                gActors[actor_index].velocityY.raw = 0;
                Sound_PlaySfx(SFX_0094);
                if (gActors[actor_index].unk_11C == 0.0f) {
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].var_150 = 4;
                    gActors[actor_index].stateUpper = 5;
                }
                else {
                    gActors[actor_index].hitByFlags &= ~HITFLAG_6;
                    gActors[actor_index].stateUpper = 6;
                }
                gActors[actor_index].stateLower = MARINASTATE_49;
            }
        }
        break;
    case 4:
        gActors[actor_index].unk_170_s8[0] = 0;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].velocityX.raw = (s32) -gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = ((s32) gActors[actor_index].unk_0FC.raw / 2) + FIXED_UNIT(2.0);
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].stateUpper = 3;
            gActors[actor_index].unk_11C = 1.0f;
        }
        break;
    case 5:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 == 0) {
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].unk_170 = 0x98;
                }
                else {
                    gActors[actor_index].unk_170 = 0x99;
                }
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
                gActors[actor_index].velocityY.raw = Math_AbsS32_2(gActors[actor_index].unk_0FC.raw / 2) + Math_AbsS32_2(gActors[actor_index].unk_0F8.raw / 2);
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].unk_11C = 1.0f;
            }
        }
        break;
    case 6:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
        if (gActors[actor_index].velocityX.raw == 0) {
            gActors[actor_index].var_150 = (FROM_FIXED(Math_AbsS32_2(gActors[actor_index].unk_104) + Math_AbsS32_2(gActors[actor_index].unk_108)) * 5) + 0x14;
            if (gActors[actor_index].health < 0) {
                gActors[actor_index].var_150 = 0;
            }
            gActors[actor_index].state = MARINASTATE_46;
        }
        break;
    }
}

void Marina_ShockState(u16 actor_index) {
    s32 var_v0;
    gActors[actor_index].unk_12E_u8 |= 0x41;
    func_8005C550(actor_index, -8);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].unk_0F8.raw < 0) {
                gActors[actor_index].unk_170 = 0x90;
            }
            else {
                gActors[actor_index].unk_170 = 0x92;
            }
        }
        else if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_170 = 0x90;
        }
        else {
            gActors[actor_index].unk_170 = 0x92;
        }

        if (func_8005D338(actor_index) == 0x90) {
            gActors[actor_index].var_15C = 0;
        }
        if (func_8005D338(actor_index) == 0x92) {
            gActors[actor_index].var_15C = 1;
        }
        gActors[actor_index].var_150 = func_8005C774(0x28) + 0x50;
        Marina_SubHealth(actor_index, gActors[actor_index].pendingDamage / 5);
        gActors[actor_index].var_15C = ((gActors[actor_index].pendingDamage - gActors[actor_index].pendingDamage / 5) / 180) + 1;
        gActors[actor_index].pendingDamage = 0;
        Sound_PlaySfxAtActorTimed(SFX_SHOCK_0065, actor_index, gActors[actor_index].var_150);
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0) {
            var_v0 = RandModulo(3);
            gActors[actor_index].unk_170_s8[1] = Math_AbsS32_2(var_v0);
        }
        gPlayerShockX = RandModulo(2);
        gPlayerShockY = RandModulo(2);
        Marina_SubHealth(actor_index, gActors[actor_index].var_15C);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, MARINA_MOVE(0));
        gActors[actor_index].unk_180_u8[3] = MARINAEFF_SHOCK;
        if (D_801370CE != 0) {
            gActors[actor_index].var_150 -= 10;
        }
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].var_150 <= 0) || (gActors[actor_index].health < 0)) {
            func_8005C550(actor_index, 60);
            Sound_StopSfx(SFX_SHOCK_0065);
            if (gActors[actor_index].health < 0) {
                func_800575C0(actor_index);
                Sound_PlaySfx(SFX_CLANCERDEATH);
            }
            if (!(gActors[actor_index].hitByFlags & HITFLAG_0)) {
                gActors[actor_index].state = MARINASTATE_HIT48;
            }
            else {
                gActors[actor_index].state = MARINASTATE_49;
            }
        }
        break;
    }
}

void func_8005878C(u16 actor_index) {
    if (1) { } // fakematch
    gActors[actor_index].unk_12E_u8 |= 0x41;
    if (D_801370CE != 0) {
        gActors[actor_index].unk_170_s8[0] = 0x7F;
        gActors[actor_index].var_150 -= 10;
    }
    if (gActors[actor_index].stateUpper == 0) {
        func_8005C550(actor_index, -8);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 <= 0) {
                if (func_8005D338(actor_index) == 0x9A) {
                    gActors[actor_index].unk_170 = 0x9C;
                }
                if (func_8005D338(actor_index) == 0x9B) {
                    gActors[actor_index].unk_170 = 0x9D;
                }
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 2;
                func_8005C550(actor_index, 0x1E);
                gActors[actor_index].stateUpper = 1;
            }
        }
    }
    else if ((gActors[actor_index].stateUpper == 1) && (func_8005D418(actor_index))) {
        if (gActors[actor_index].health >= 0) {
            gActors[actor_index].state = MARINASTATE_IDLE;
        }
        else if (gGameState == GAMESTATE_GAMEPLAY) {
            gGameState = GAMESTATE_CONTINUE;
            gGameStateSubState = 0;
            gActors[actor_index].var_150 = gActors[actor_index].flags & ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_170 = 0xA4;
            Sound_PlaySfx(SFX_MARINA_OW3);
            gActors[actor_index].stateUpper = 6;
            gActors[actor_index].stateLower = MARINASTATE_WAIT1;
        }
    }
}

void func_80058924(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_ATTACHED | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK6);
}

void MarinaHit_Noop(u16 actor_0, u16 actor_1) {
}

void MarinaHit_Type1(u16 actor_0, u16 actor_1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].unk_0F8.raw = FIXED_UNIT(-1.5);
    }
    else {
        gActors[actor_0].unk_0F8.raw = FIXED_UNIT(1.5);
    }
    gActors[actor_0].unk_0FC.raw = FIXED_UNIT(3.0);
    gActors[actor_0].iFrames = 120;
    gActors[actor_0].state = MARINASTATE_49;
}

void func_80058A38(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].hitByFlags & HITFLAG_0)) {
        gActors[actor_0].state = MARINASTATE_HIT48;
    }
    else {
        gActors[actor_0].state = MARINASTATE_49;
    }
}

void func_80058AE0(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = MARINASTATE_49;
}

void MarinaHit_Boom(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].hitByFlags & HITFLAG_0)) {
        gActors[actor_0].state = MARINASTATE_HIT51;
    }
    else {
        gActors[actor_0].state = MARINASTATE_52;
    }
    MarinaEffect_Set(actor_0, MARINAEFF_BURN);
    gActors[actor_0].unk_144 = 0.6f;
}


void MarinaHit_Shock(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        actor_0 = actor_0;
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = MARINASTATE_HITSHOCK;
}

void MarinaHit_Type15(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = MARINASTATE_HIT50;
    gActors[actor_0].var_158 = FIXED_UNIT(32.0/256);
}

void MarinaHit_Type17(u16 actor_0, u16 actor_1) {
    gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK6);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].velocityX.raw += gActors[actor_0].unk_0F8.raw;
    }
    else {
        gActors[actor_0].velocityX.raw -= gActors[actor_0].unk_0F8.raw;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].unk_170 = 0x2C;
        }
        else {
            gActors[actor_0].unk_170 = 0x2B;
        }
    }
    else {
        gActors[actor_0].velocityY.raw += gActors[actor_1].unk_0FC.raw;
    }
    gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].velocityX.raw, FIXED_UNIT(6.0));
    gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].velocityY.raw, FIXED_UNIT(8.0));
}

void MarinaHit_Type18(u16 arg0, u16 arg1) {
    func_80058924(arg0);
    gActors[arg0].unk_0F8.raw = -gActors[arg0].unk_0F8.raw;
    gActors[arg0].unk_0FC.raw = gActors[arg0].unk_0FC.raw;
    gActors[arg0].state = MARINASTATE_43;
}

void MarinaHit_Type19(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        Marina_DropActor(actor_0, gActors[actor_0].parentIndex);
    }
    func_80058924(actor_0);
    gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_DRAW);
    gActors[actor_0].var_150 = gActors[actor_0].flags;
    gActors[actor_0].stateUpper = 4;
    gActors[actor_0].stateLower = MARINASTATE_WAIT1;
}

void MarinaHit_Type22(u16 actor_0, u16 unused_arg1) {
    gActors[actor_0].unk_0F8.raw = gActors[actor_0].velocityX.raw;
    gActors[actor_0].state = MARINASTATE_42;
}

s32 func_80058F9C(u16 actor_index) {
    u16 sp26;
    s32 sp20;

    sp26 = gActors[actor_index].parentIndex;
    if (gActors[actor_index].unk_12E_u8 & 2) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK16;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gActors[actor_index].stateLower != MARINASTATE_47) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                Marina_DropActor(actor_index, gActors[actor_index].parentIndex);
            }
            func_80058924(actor_index);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170 = 0x9E;
            gActors[actor_index].unk_17C = 6;
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = MARINASTATE_47;
        }
        return TRUE;
    }
    if (gActors[actor_index].iFrames != 0) {
        gActors[actor_index].unk_180_u8[3] = MARINAEFF_INVULN;
        gActors[actor_index].iFrames--;
    }
    else if (gPlayerData.unk_08 != 0) {
        gPlayerData.unk_08 -= 1;
    }
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
        return FALSE;
    }
    if (gActors[actor_index].hitByType == HITTYPE_19) {
        MarinaHit_Type19(actor_index, sp26);
        return TRUE;
    }
    if (gActors[actor_index].health < 0) {
        return TRUE;
    }
    if (gActors[actor_index].flags & ACTOR_FLAG_UNK15) {
        return FALSE;
    }
    gActors[actor_index].unk_12C_u16[0] = 0;
    gActors[actor_index].unk_12E_u8 = 0xFF;
    gActors[actor_index].unk_17C = 0;
    gPlayerData.unk_13 = 0;
    if (gActors[actor_index].hitByFlags & HITFLAG_3) {
        gPlayerData.unk_08 += 0x200;
        if (gPlayerData.unk_08 > 0x800) {
            gPlayerData.unk_08 = 0;
            gActors[actor_index].iFrames = 0;
            func_8005C550(actor_index, 300);
            func_800575C0(actor_index);
            Sound_PlaySfx(SFX_GRABDEFLECT);
        }
    }
    if ((gActors[actor_index].hitByType < HITTYPE_SHOCK_12) || (gActors[actor_index].hitByType > HITTYPE_SHOCK_14)) {
        sp20 = Marina_SubHealth(actor_index, gActors[actor_index].pendingDamage);
        gActors[actor_index].pendingDamage = 0;
        gActors[actor_index].hitByFlags &= ~HITFLAG_7;
        if (sp20 >= MARINADMG_KO) {
            func_800575C0(actor_index);
            if (sp20 == MARINADMG_KO) {
                Sound_PlaySfx(SFX_CLANCERDEATH);
            }
        }
    }
    if ((gActors[actor_index].stateLower == MARINASTATE_49) || (gActors[actor_index].stateLower == MARINASTATE_HIT50)) {
        func_800575C0(actor_index);
    }
    gMarinaHitTable[gActors[actor_index].hitByType](actor_index, sp26);
    if (gActors[actor_index].hitByType == HITTYPE_17) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
