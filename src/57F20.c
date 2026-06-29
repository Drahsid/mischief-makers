#include "common.h"
#include "boot.h"

extern Actor2Func D_800D3F70[];
extern s32 D_800D57E0;

extern void func_8004F514(u16 actor0, u16 actor1);
extern s32 func_800574B4(u16 actor_index);

s32 func_80057320(u16 actor_index, s16 health_increment) {
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

s32 func_8005739C(u16 actor_index, s16 health_decrement) {
    s32 var_a0;

    if (actor_index == 0) {
        if (gActors[actor_index].unk_0DC & 2) {
            gActors[actor_index].unk_13C_s16[1] = 0;
        }
        else {
            gActors[actor_index].unk_13C_s16[1] = health_decrement / 2;
        }
    }
    if (health_decrement == 0) {
        return 0;
    }

    if (gActors[actor_index].health > 0) {
        gActors[actor_index].health -= health_decrement;
        var_a0 = 1;
        if (gActors[actor_index].health < 0) {
            gActors[actor_index].health = 0;
            var_a0 = (actor_index != 0) ? 3 : 2;
        }
    }
    else {
        if (actor_index != 0) {
            return 3;
        }
        var_a0 = (gActors[actor_index].health == 0) ? 3 : 4;
        gActors[actor_index].health -= health_decrement;
    }
    return var_a0;
}

s32 func_800574B4(u16 actor_index) {
    if (gActors[actor_index].health < 0) {
        return -1;
    }
    if (!(gActors[actor_index].unk_0DC & 0x40)) {
        return -1;
    }
    if (D_801373E0.unk_0B != 0) {
        D_801373E0.unk_0B -= 1;
        return -2;
    }
    if (!(D_801370CE & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight | gButton_B | gButton_A))) {
        return 0;
    }
    D_801373E0.unk_0A -= 1;
    if (D_801373E0.unk_0A > 0) {
        return 0;
    }
    gActors[actor_index].state = 0x11;
    return 1;
}

s32 func_800575C0(u16 actor_index) {
    if (gActors[actor_index].unk_0DC & 0x1) {
        return 0;
    }
    gActors[actor_index].unk_0DC |= 0x1;
    if (func_8005C6D0(gActors[actor_index].unk_0F8.raw) < 0x20000) {
        gActors[actor_index].unk_0F8.raw = 2.0 * gActors[actor_index].unk_0F8.raw;
    }
    if (gActors[actor_index].unk_0FC.raw < 0x30000) {
        gActors[actor_index].unk_0FC.raw = 0x30000;
    }
    return 1;
}
void func_800576A0(u16 actor_index) {
    func_8005C550(actor_index, -0x10);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK19;
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        func_8002877C(actor_index);
        if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            gActors[gActors[actor_index].unk_0D6].posX.raw = (gActors[gActors[actor_index].unk_0D6].posX.raw + gActors[actor_index].posX.raw) - gActors[actor_index].unk_104;
        }
        if (D_801370CE != 0) {
            gActors[actor_index].unk_170_s8[0] += 1;
        }
    }
    else {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
            if (gActors[actor_index].unk_0DD == 0x1C) {
                gActors[actor_index].state = 0x32;
            }
            else {
                gActors[actor_index].state = 0x31;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16) {
                gActors[actor_index].unk_12E_u8 |= 2;
            }
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }
        else {
            gActors[actor_index].state = 0x16;
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
        if (((gActors[gActors[actor_index].unk_0D6].hitboxAY1 + gActors[gActors[actor_index].unk_0D6].hitboxAY0) / 2) + gActors[gActors[actor_index].unk_0D6].posY.whole <= gActors[actor_index].posY.whole) {
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
        if ((gActors[actor_index].stateLower == 0x33) || (gActors[actor_index].stateLower == 0x34)) {
            Sound_PlaySfx(0xB2);
        }
        else if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16)) {
            Sound_PlaySfx(0xB5);
        }
        gActors[actor_index].stateUpper = 2;
        /* fallthrough */
    case 2:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].unk_180_u8[3] = 5;
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0) / 2);
            if (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0x10000) {
                return;
            }
        }
        else if (func_800491B8(actor_index, 0, -0xE) != 0) {
            gActors[actor_index].state = 5;
            return;
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13) / 2);
            if (gActors[actor_index].velocityY.raw > 0x10000) {
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
                gActors[actor_index].state = 3;
            }
            else {
                if (!(gActors[actor_index].var_15C & 1)) {
                    gActors[actor_index].unk_170 = 0x8E;
                }
                else {
                    gActors[actor_index].unk_170 = 0x8F;
                }
                D_800D57E0 = 0;
                gActors[actor_index].state = 0x19;
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
        gActors[actor_index].velocityX.raw /= gActors[0].unk_120;
        gActors[actor_index].velocityY.raw /= gActors[0].unk_120;
        if ((gActors[actor_index].stateLower == 0x33) || (gActors[actor_index].stateLower == 0x34)) {
            Sound_PlaySfx(0xB2);
        }
        else if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16)) {
            Sound_PlaySfx(0xB5);
        }
        if (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0xC0000) {
            if (gActors[actor_index].unk_0F8.raw > 0) {
                gActors[actor_index].velocityX.raw = 0xC0000;
            }
            else {
                gActors[actor_index].velocityX.raw = -0xC0000;
            }
        }
        if (func_8005C6D0(gActors[actor_index].velocityY.raw) > 0xC0000) {
            if (gActors[actor_index].unk_0FC.raw > 0) {
                gActors[actor_index].velocityY.raw = 0xC0000;
            } 
            else {
                gActors[actor_index].velocityY.raw = -0xC0000;
            }
        }
        gActors[actor_index].var_154 = -1;
        gActors[actor_index].timer_110 = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
        gActors[actor_index].unk_11C = 0.0f;
        if (!(gActors[actor_index].unk_0DC & 0x40)) {
            func_8005C520(func_8005C774(2) + 1, 4);
            gActors[actor_index].var_154 = D_801373E0.unk_0A;
            gActors[actor_index].unk_0DC |= 0x40;
        }
        func_8005D3D8(actor_index);
        gActors[actor_index].unk_17C = 5;
        gActors[actor_index].stateUpper = 2;
        /* fallthrough */
    case 2:
        if ((func_8005D418(actor_index) != 0) && (gActors[actor_index].velocityY.raw < -0x10000)) {
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
        if (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0x20000) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_8005C6D0((s32) gActors[actor_index].velocityX.raw / 32));
        }
        if (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0x38000) {
            gActors[actor_index].unk_170_s8[0] = 0;
        }
        if ((gActors[actor_index].stateLower == 0x31) || (gActors[actor_index].stateLower == 0x34)) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        if (gActors[actor_index].stateLower == 0x32) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, gActors[actor_index].var_158);
        }
        gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
        gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
        if (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0x28000) {
            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
                if (func_8005739C(actor_index, (s16) gActors[actor_index].unk_13C_s16[1]) == 3) {
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
                gActors[actor_index].var_150 = func_8005C6D0(gActors[actor_index].unk_0F8.raw / 0x10000) + 2;
                gActors[actor_index].stateUpper = 4;
                gActors[actor_index].stateLower = 0x31;
                break;
            }
        }
        temp_v0 = func_800574B4(actor_index);
        if (temp_v0 > 0) {
            if (gActors[actor_index].unk_11C != 0.0f) {
                gActors[actor_index].unk_0F8.raw = -gActors[actor_index].velocityX.raw * 2;
                gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
                gActors[actor_index].state = 0x2B;
            }
        }
        else {
            if (temp_v0 == 0) {
                if (gActors[actor_index].unk_114 <= D_801373E0.unk_0A) {
                    if (gActors[actor_index].timer_110 == 0.0f) {
                        gActors[actor_index].unk_114 += 1.0f;
                        gActors[actor_index].timer_110 = 7.0f;
                    }
                    else {
                        gActors[actor_index].timer_110 -= 1.0f;
                    }
                }
            }
            if (func_800490BC(actor_index, -1, -1) != 0) {
                if (func_8005739C(actor_index, gActors[actor_index].unk_13C_s16[1]) == 3) {
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
                Sound_PlaySfx(0x94);
                if (gActors[actor_index].unk_11C == 0.0f) {
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].var_150 = 4;
                    gActors[actor_index].stateUpper = 5;
                }
                else {
                    gActors[actor_index].unk_0DC &= 0xFFBF;
                    gActors[actor_index].stateUpper = 6;
                }
                gActors[actor_index].stateLower = 0x31;
            }
        }
        break;
    case 4:
        gActors[actor_index].unk_170_s8[0] = 0;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].velocityX.raw = (s32) -gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = ((s32) gActors[actor_index].unk_0FC.raw / 2) + 0x20000;
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
                gActors[actor_index].velocityY.raw = func_8005C6D0(gActors[actor_index].unk_0FC.raw / 2) + func_8005C6D0(gActors[actor_index].unk_0F8.raw / 2);
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].unk_11C = 1.0f;
            }
        }
        break;
    case 6:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
        if (gActors[actor_index].velocityX.raw == 0) {
            gActors[actor_index].var_150 = (((func_8005C6D0(gActors[actor_index].unk_104) + func_8005C6D0(gActors[actor_index].unk_108)) / 0x10000) * 5) + 0x14;
            if (gActors[actor_index].health < 0) {
                gActors[actor_index].var_150 = 0;
            }
            gActors[actor_index].state = 0x2E;
        }
        break;
    }
}

void func_800584D4(u16 actor_index) {
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
        func_8005739C(actor_index, gActors[actor_index].pendingDamage / 5);
        gActors[actor_index].var_15C = ((gActors[actor_index].pendingDamage - gActors[actor_index].pendingDamage / 5) / 180) + 1;
        gActors[actor_index].pendingDamage = 0;
        Sound_PlaySfxAtActorTimed(0x65, actor_index, gActors[actor_index].var_150);
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0) {
            var_v0 = func_8005C708(3);
            gActors[actor_index].unk_170_s8[1] = func_8005C6D0(var_v0);
        }
        D_800BE5E0 = func_8005C708(2);
        D_800BE5E4 = func_8005C708(2);
        func_8005739C(actor_index, gActors[actor_index].var_15C);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, func_80048C94(0));
        gActors[actor_index].unk_180_u8[3] = 7;
        if (D_801370CE != 0) {
            gActors[actor_index].var_150 -= 10;
        }
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].var_150 <= 0) || (gActors[actor_index].health < 0)) {
            func_8005C550(actor_index, 0x3C);
            Sound_StopSfx(0x65);
            if (gActors[actor_index].health < 0) {
                func_800575C0(actor_index);
                Sound_PlaySfx(0x3C);
            }
            if (!(gActors[actor_index].unk_0DC & 1)) {
                gActors[actor_index].state = 0x30;
            }
            else {
                gActors[actor_index].state = 0x31;
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
            gActors[actor_index].state = 3;
        }
        else if (gGameState == 6) {
            gGameState = 7;
            gGameStateSubState = 0;
            gActors[actor_index].var_150 = gActors[actor_index].flags & ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_170 = 0xA4;
            Sound_PlaySfx(0xB2);
            gActors[actor_index].stateUpper = 6;
            gActors[actor_index].stateLower = 1;
        }
    }
}

void func_80058924(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_ATTACHED | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK6);
}

void func_8005896C(s32 arg0, s32 arg1) {
}

void func_80058978(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].unk_0F8.raw = -0x18000;
    }
    else {
        gActors[actor_0].unk_0F8.raw = 0x18000;
    }
    gActors[actor_0].unk_0FC.raw = 0x30000;
    gActors[actor_0].iFrames = 0x78;
    gActors[actor_0].state = 0x31;
}

void func_80058A38(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].unk_0DC & 1)) {
        gActors[actor_0].state = 0x30;
    }
    else {
        gActors[actor_0].state = 0x31;
    }
}

void func_80058AE0(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = 0x31;
}

void func_80058B68(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    if (!(gActors[actor_0].unk_0DC & 1)) {
        gActors[actor_0].state = 0x33;
    }
    else {
        gActors[actor_0].state = 0x34;
    }
    func_8005C098(actor_0, 3);
    gActors[actor_0].unk_144 = 0.6f;
}

void func_80058C24(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        actor_0 = actor_0;
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = 0x35;
}

void func_80058CAC(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    gActors[actor_0].state = 0x32;
    gActors[actor_0].var_158 = 0x2000;
}

void func_80058D3C(u16 actor_0, u16 actor_1) {
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
    gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].velocityX.raw, 0x60000);
    gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].velocityY.raw, 0x80000);
}

void func_80058E44(u16 arg0, u16 arg1) {
    func_80058924(arg0);
    gActors[arg0].unk_0F8.raw = -gActors[arg0].unk_0F8.raw;
    gActors[arg0].unk_0FC.raw = gActors[arg0].unk_0FC.raw;
    gActors[arg0].state = 0x2B;
}

void func_80058EB0(u16 actor_0, u16 unused_arg1) {
    if (gActors[actor_0].flags & ACTOR_FLAG_ATTACHED) {
        func_8004F514(actor_0, gActors[actor_0].unk_0D6);
    }
    func_80058924(actor_0);
    gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_DRAW);
    gActors[actor_0].var_150 = gActors[actor_0].flags;
    gActors[actor_0].stateUpper = 4;
    gActors[actor_0].stateLower = 1;
}

void func_80058F54(u16 actor_0, u16 unused_arg1) {
    gActors[actor_0].unk_0F8.raw = gActors[actor_0].velocityX.raw;
    gActors[actor_0].state = 0x2A;
}

s32 func_80058F9C(u16 actor_index) {
    u16 sp26;
    s32 sp20;

    sp26 = gActors[actor_index].unk_0D6;
    if (gActors[actor_index].unk_12E_u8 & 2) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK16;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (gActors[actor_index].stateLower != 0x2F) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                func_8004F514(actor_index, gActors[actor_index].unk_0D6);
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
            Sound_PlaySfx(0x2F);
            gActors[actor_index].state = 0x2F;
        }
        return 1;
    }
    if (gActors[actor_index].iFrames != 0) {
        gActors[actor_index].unk_180_u8[3] = 6;
        gActors[actor_index].iFrames--;
    }
    else if (D_801373E0.unk_08 != 0) {
        D_801373E0.unk_08 -= 1;
    }
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
        return 0;
    }
    if (gActors[actor_index].unk_0DD == 0x13) {
        func_80058EB0(actor_index, sp26);
        return 1;
    }
    if (gActors[actor_index].health < 0) {
        return 1;
    }
    if (gActors[actor_index].flags & ACTOR_FLAG_UNK15) {
        return 0;
    }
    gActors[actor_index].unk_12C_u16[0] = 0;
    gActors[actor_index].unk_12E_u8 = 0xFF;
    gActors[actor_index].unk_17C = 0;
    D_801373E0.unk_13 = 0;
    if (gActors[actor_index].unk_0DC & 8) {
        D_801373E0.unk_08 += 0x200;
        if (D_801373E0.unk_08 >= 0x801) {
            D_801373E0.unk_08 = 0;
            gActors[actor_index].iFrames = 0;
            func_8005C550(actor_index, 0x12C);
            func_800575C0(actor_index);
            Sound_PlaySfx(0x63);
        }
    }
    if ((gActors[actor_index].unk_0DD < 12) || (gActors[actor_index].unk_0DD > 14)) {
        sp20 = func_8005739C(actor_index, gActors[actor_index].pendingDamage);
        gActors[actor_index].pendingDamage = 0;
        gActors[actor_index].unk_0DC &= 0xFF7F;
        if (sp20 >= 3) {
            func_800575C0(actor_index);
            if (sp20 == 3) {
                Sound_PlaySfx(0x3C);
            }
        }
    }
    if ((gActors[actor_index].stateLower == 0x31) || (gActors[actor_index].stateLower == 0x32)) {
        func_800575C0(actor_index);
    }
    D_800D3F70[gActors[actor_index].unk_0DD](actor_index, sp26);
    if (gActors[actor_index].unk_0DD == 0x11) {
        return 0;
    }
    else {
        return 1;
    }
}
