#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "805E0.h"
#include "80D90.h"

extern s16 gNoHit;
extern s16 D_800E1714[];
extern s16 D_800E1750[];
extern s16 D_800E1788[];
extern s16 D_800E17F8[];
extern s16 D_800E19D4[];
extern s16 D_800E1C58[];
extern s16 D_800E1C84[];
extern s16 D_800E1CC4[];
extern s16 D_800E1CE8[];
extern s16 D_800E1D0C[];
extern s16 D_800E2274[];
extern s16 D_800E23F4[];
extern s16 D_800E2418[];
extern s32 D_800E32C8[];
extern s32 D_800E32E4[];
extern s32 D_800E3304[];
extern s32 D_800E3328[];
extern s32 D_800E33C4[];
extern s32 D_800E33E4[];
extern s32 D_800E3454[];
extern s32 D_800E34A4[];
extern s32 D_800E34C0[];
extern s32 D_800E34E8[];
extern s32 D_800E354C[];
extern u16 gCurrentStage;

u16 D_801B46F0_7C0640[2] = { 7, 0x8001 };
u16 D_801B46F4_7C0644[2] = { 8, 0x8001 };
u16 D_801B46F8_7C0648[6] = { 0x40, 0x41, 0x42, 0x43, 0, 0 };
s16 D_801B4704_7C0654[14] = {
    1, 0, 0x20, -192, 0x30, -64, 0x30,
    64, 0, 0, 0, 0, 0, 0,
};
f32 D_801B4720_7C0670 = 0.8000000119f;
f64 D_801B4728_7C0678 = 0.3515625;

// .bss
u8 D_801B4B60_7C0AB0;
s8 D_801B4B61_7C0AB1;
s32 D_801B4B64_7C0AB4;
u32 D_801B4B68_7C0AB8;
s16 D_801B4B6C_7C0ABC;
s16 D_801B4B6E_7C0ABE;
u8 D_801B4B70_7C0AC0;

extern void func_8002C5C4(u16 actor_index, u16 arg1, s16 arg2, f32 scale, s32 arg4, s16 arg5);
extern void func_8002C6E4(u16 actor_index);
extern void func_800339BC(s32 arg0, s32 arg1, s32 arg2, u16 arg3);
extern u16 func_8003F7A0(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z);
extern void func_80065650(u16 actor_index);
extern void func_80067F98(u16 actor_index);
extern void func_80067FEC(u16 actor_index);
extern void func_80081D20(u16 actor_index);
extern void func_80081E38(u16 actor_index);

void func_801B0900_7BC850(u16 actor_index);
s32 func_801B0944_7BC894(u16 actor_index);
void func_801B0A10_7BC960(u16 actor_index);
s32 func_801B0A7C_7BC9CC(u16 actor_index);
void func_801B0BA0_7BCAF0(u16 actor_index);
void func_801B0C00_7BCB50(u16 actor_index);
void func_801B0CBC_7BCC0C(u16 actor_index);
u16 func_801B0D80_7BCCD0(u16 actor_index);
void func_801B0ECC_7BCE1C(u16 actor_index);
void func_801B11A0_7BD0F0(u16 actor_index);
u16 func_801B11F0_7BD140(u16 actor_index);
s32 func_801B141C_7BD36C(u16 actor_index);
void func_801B14AC_7BD3FC(u16 actor_index);
void func_801B1510_7BD460(u16 actor_index);
void func_801B1570_7BD4C0(u16 actor_index);
void func_801B1994_7BD8E4(u16 actor_index);
void func_801B1B34_7BDA84(u16 arg0, u16 arg1);
void func_801B1BA4_7BDAF4(u16 actor_index);
s32 func_801B3068_7BEFB8(u16 actor_index, s32 arg1);
f32 func_801B3480_7BF3D0(u16 actor_index);
void func_801B34E4_7BF434(u16 actor_index, s16 target_x);
void func_801B35E0_7BF530(u16 actor_index);
void func_801B3648_7BF598(u16 actor_index);
void func_801B3F18_7BFE68(u16 actor_index);
void func_801B3FC8_7BFF18(u16 actor_index);

void func_801B0900_7BC850(u16 actor_index) {
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
}

s32 func_801B0944_7BC894(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && !(gActors[actor_index].state & 0x1000)) {
        func_80040858(actor_index);
        gActors[actor_index].state = 0x1000;
        func_80029134(actor_index);
        func_801B0900_7BC850(actor_index);
        D_801B4B64_7C0AB4 = 0;
        func_80081790(actor_index, D_800E3488);
        Sound_PlaySfxAtActor2(0x2F, actor_index);
        Sound_PlaySfxAtActor2(0xA4, actor_index);
        return TRUE;
    }

    return FALSE;
}

void func_801B0A10_7BC960(u16 actor_index) {
    func_8003EEC0(
        D_801B4720_7C0670,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 4);
}

s32 func_801B0A7C_7BC9CC(u16 actor_index) {
    s32 state;

    if (!(gActors[actor_index].state & 0x1000)) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            func_80040858(actor_index);
            func_801B0900_7BC850(actor_index);
            if (gActors[actor_index].unk_0DD < 0x15) {
                gActors[actor_index].colorR = 0x7F;
                Sound_PlaySfxAtActor2(0x9D, actor_index);
                func_801B0A10_7BC960(actor_index);
            }

            state = 0x2000;
            gActors[actor_index].state = state;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            Actor_Clamp_0F8_0FC(actor_index, FIXED_UNIT(4.0));
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
        }
    }
}

void func_801B0BA0_7BCAF0(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.09375));
}

void func_801B0C00_7BCB50(u16 actor_index) {
    gActors[actor_index].state = 0x38;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].velocityX.raw /= 2;
    gActors[actor_index].velocityY.raw = 0;
    Sound_PlaySfxAtActor2(0x91, actor_index);
    gActors[actor_index].unk_170 = 0;
    func_80081790(actor_index, D_800E3518);
}

void func_801B0CBC_7BCC0C(u16 actor_index) {
    gActors[actor_index].state = 0x40;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK11);
    func_801B0900_7BC850(actor_index);
    gActors[actor_index].velocityX.raw /= 2;
    gActors[actor_index].velocityY.raw = 0;
    Sound_PlaySfxAtActor2(0x94, actor_index);
    gActors[actor_index].unk_170 = 0;
    func_80081790(actor_index, D_800E352C);
}

u16 func_801B0D80_7BCCD0(u16 actor_index) {
    u8 result;

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0234375));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.5), FIXED_UNIT(0.21875));

    result = FALSE;
    if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) && (gActors[actor_index].velocityX.raw < 0)) ||
        ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) && (gActors[actor_index].velocityX.raw > 0))) {
        result = TRUE;
    }

    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        result = (u8)(result | 2);
    }

    return result;
}

void func_801B0E58_7BCDA8(u16 actor_index, s32 x, s32 y, u16 arg3) {
    func_800339BC(
        gActors[actor_index].posX.raw + x,
        gActors[actor_index].posY.raw + y,
        gActors[actor_index].posZ.raw,
        arg3);
}

void func_801B0ECC_7BCE1C(u16 actor_index) {
    u16 child_actor_index;
    u16 small_angle;
    u16 large_angle;
    s32 small_x;
    s32 small_y;
    s32 large_x;
    s32 large_y;

    child_actor_index = actor_index + 3;
    large_angle = (u32)(gActors[child_actor_index].rotateZ / D_801B4728_7C0678 + 976.0);
    small_angle = large_angle - 0x70;

    if (gActors[child_actor_index].flags & ACTOR_FLAG_FLIPPED) {
        large_angle += 0x250;
        small_angle += 0x320;
    }

    small_x = (s32)(COS(small_angle) * FIXED_UNIT(2.5));
    large_x = (s32)(COS(large_angle) * FIXED_UNIT(7.25));
    small_y = (s32)(SIN(small_angle) * FIXED_UNIT(2.5));
    large_y = (s32)(SIN(large_angle) * FIXED_UNIT(7.25));

    if (Rand() & 1) {
        if ((gActiveFrames & 0xF) == 0) {
            func_801B0E58_7BCDA8(child_actor_index, large_x, large_y, 0);
            return;
        }
    }

    if (Rand() & 1) {
        if ((gActiveFrames & 0xF) == 7) {
            func_801B0E58_7BCDA8(child_actor_index, small_x, small_y, 0);
            return;
        }
    }

    func_801B0E58_7BCDA8(child_actor_index, large_x, large_y, 1);
    func_801B0E58_7BCDA8(child_actor_index, small_x, small_y, 1);
}

void func_801B11A0_7BD0F0(u16 actor_index) {
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -4;
}

u16 func_801B11F0_7BD140(u16 actor_index) {
    u16 index;
    u16 current_actor_index;
    u16 best_actor_index;
    u16 best_distance;
    u16 distance;

    if (D_801B4B60_7C0AB0 & 2) {
        if (gActors[0x43].flags_098 & ACTOR_FLAG3_UNK9) {
            return 0x43;
        }
        return 0;
    }

    best_actor_index = 0;
    best_distance = 4096;
    index = 0;
    while (current_actor_index != 0) {
        current_actor_index = D_801B46F8_7C0648[index];
        distance = Math_AbsS32(gActors[actor_index].posX.whole - gActors[current_actor_index].posX.whole);
        if ((gActors[current_actor_index].flags & ACTOR_FLAG_ACTIVE) && !(gActors[current_actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
            !(gActors[current_actor_index].flags & ACTOR_FLAG_UNK9) && (gActors[current_actor_index].posX.whole > 0) && (distance < best_distance) && (gActors[current_actor_index].posY.whole < 0)) {
            best_actor_index = current_actor_index;
            best_distance = distance;
        }
        current_actor_index = D_801B46F8_7C0648[++index];
    }

    return best_actor_index;
}

s32 func_801B1390_7BD2E0(u16 actor_index) {
    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].state = 0x22;
            return 1;
        }
    }
    else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].state = 0x22;
        return 2;
    }

    return 0;
}

s32 func_801B141C_7BD36C(u16 actor_index) {
    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            return 1;
        }
    }
    else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        return 2;
    }

    return 0;
}

void func_801B14AC_7BD3FC(u16 arg0) {
    if ((D_801B4B60_7C0AB0 & 3) == 0) {
        if (gPlayerPosX.whole >= 521 && gPlayerPosY.whole < 368) {
            if (D_801B4B70_7C0AC0 == 0) {
                D_801B4B70_7C0AC0 = 1;
            }
            D_801B4B60_7C0AB0 |= 8;
        }
    }
}

void func_801B1510_7BD460(u16 actor_index) {
    if (gActors[actor_index].unk_16C & 1) {
        Sound_PlaySfxAtActor2(0x53, actor_index);
    }
}

static __inline void func_801B1568_7BD4B8(void) {
}

void func_801B1570_7BD4C0(u16 actor_index) {
    if (D_801B4B60_7C0AB0 & 2) {
        if ((D_801B4B60_7C0AB0 == 2) && (gStageState == 0x15) && (gNoHit >= 0) && (YellowGem_GetFlag(gCurrentStage) == 0)) {
            gActors[actor_index].state = 0x110;
            return;
        }

        if (D_801B4B60_7C0AB0 & 1) {
            func_801B0CBC_7BCC0C(actor_index);
            return;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x22;
            return;
        }

        if (func_80029B74(0x40) != 0) {
            if (func_80029B00(0x40, 0x20, -0x10) == 0) {
                if (D_800E3584 & 0x30000) {
                    gActors[actor_index].state = 0x50;
                    return;
                }

                gActors[actor_index].state = 0x22;
                return;
            }
        }
        else if (func_80029B74(0x80) != 0) {
            gActors[actor_index].state = 0x24;
            return;
        }
        else {
            gActors[actor_index].state = 0x26;
            return;
        }
    }
    else if (D_801B4B60_7C0AB0 & 1) {
        func_801B0CBC_7BCC0C(actor_index);
        return;
    }
    else if (D_800E3580 != 0) {
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x22;
            return;
        }

        if (func_80029B74(0x28) != 0) {
            if (func_80029B00(0x12, 0x10, -0x10) != 0) {
                gActors[actor_index].state = 0x100;
                return;
            }

            if (func_80029B00(0x80, 0x70, 0x10) != 0) {
                gActors[actor_index].state = 0x50;
                return;
            }

            gActors[actor_index].state = 0x24;
            return;
        }

        gActors[actor_index].state = 0x26;
        return;
    }
    else {
        if (gActors[actor_index].posX.whole < 32) {
            gActors[actor_index].state = 0x26;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            return;
        }

        if (func_801B1390_7BD2E0(actor_index) == 0) {
            if ((gActiveFrames % 0xB4) == 0) {
                gActors[actor_index].state = 0x80;
            }
        }
    }
}

void func_801B1994_7BD8E4(u16 actor_index) {
    if ((D_800E3580 != 0) || (D_801B4B60_7C0AB0 & 2)) {
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x22;
        }
        else if (func_80029B74(0x80) == 0) {
            gActors[actor_index].state = 0x26;
        }
        else {
            s32 flags = D_801B4B60_7C0AB0 & 2;

            if (flags) {
                if (func_80029B74(0x28) != 0) {
                    goto set_state_20;
                }
                flags = D_801B4B60_7C0AB0 & 2;
            }

            if (flags) {
                goto done;
            }

            if (func_80029B00(0xC, 0x10, -0x10) != 0) {
set_state_20:
                gActors[actor_index].state = 0x20;
            }
        }
    }
    else {
        if (gActors[actor_index].posX.whole >= 97) {
            gActors[actor_index].state = 0x20;
        }
        else if (gActors[actor_index].posX.whole < 0) {
            gActors[actor_index].state = 0x20;
        }
    }

done:
    ;
}

void func_801B1B34_7BDA84(u16 arg0, u16 arg1) {
    gActors[0x57].state = arg0;
    gActors[0x59].state = arg0;
    gActors[0x58].state = arg0;
    gActors[0x5A].state = arg0;
    gActors[0x57].unk_174 = arg1;
    gActors[0x59].unk_174 = arg1;
    gActors[0x58].unk_174 = arg1;
    gActors[0x5A].unk_174 = arg1;
}

void func_801B1B6C_7BDABC(u16 arg0, u16 arg1) {
    gActors[0x5B].state = arg0;
    gActors[0x5C].state = arg0;
    gActors[0x5D].state = arg0;
    gActors[0x5E].state = arg0;
    gActors[0x5B].unk_174 = arg1;
    gActors[0x5C].unk_174 = arg1;
    gActors[0x5D].unk_174 = arg1;
    gActors[0x5E].unk_174 = arg1;
}

void func_801B1BA4_7BDAF4(u16 actor_index) {
    u16 hit_flags;
    u16 index;

    D_801B4B6C_7C0ABC = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    D_801B4B6E_7C0ABE = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (gActors[actor_index].state) {
        if (gActors[actor_index].health < 5) {
            gActors[actor_index].health = 5;
            if (!(D_801B4B60_7C0AB0 & 1)) {
                Sound_StartFade(0x81, 0x78);
            }
            D_801B4B60_7C0AB0 |= 1;
        }

        gActors[actor_index + 1].unk_188 |= 0x200;
        func_800819A8(actor_index, D_800E2600);
        if (gActors[actor_index].state >= 0x1E) {
            func_8002877C(actor_index);
            func_801B14AC_7BD3FC(actor_index);
        }

        D_800E3580 = func_801B11F0_7BD140(actor_index);
        func_8002AA20(actor_index, 0);
        gActors[actor_index].posZ.raw = (actor_index * 0x10) - FIXED_UNIT(2.0);
        switch (func_801B0944_7BC894(actor_index)) {
        default:
            break;
        case 0:
            func_801B0A7C_7BC9CC(actor_index);
            break;
        }
    }

    switch (gActors[actor_index].state) {
        case 0:
            func_80081D20(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
            func_801B11A0_7BD0F0(actor_index);
            gActors[actor_index].unk_0DF = 0x40;
            D_801B4B60_7C0AB0 = 0;
            D_801B4B70_7C0AC0 = 0;
            gActors[actor_index].health = 0xC8;
            if (gActors[actor_index].var_0D8 != 0) {
                gActors[actor_index].state = 0x1E;
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].posX.whole = 48;
                gActors[actor_index].posY.whole = -50;
            }
            else {
                gActors[actor_index].state = 1;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            }
            break;

        case 1:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E3304);
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            func_8005DF40(0, 0x3C);
            gLookatEyeZ = 352.0f;
            gActors[0x50].unk_174 = 3;
            Sound_PlaySfx(0x12D);
            Sound_PlayMusic(9);

        case 2:
            gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 448.0f, 1.0f);
            if ((s16)gLookatEyeZ == 448) {
                gActors[actor_index].state++;
                func_8005DF5C(1);
                D_800D5830 = 48;
                D_800D5834 = -2;
                gActors[0x50].unk_174 = 6;
            }
            break;

        case 3:
            if (D_800D582C == 1) {
                gActors[actor_index].state++;
                index = 0x50;
                gActors[index].unk_174 = 2;
                D_801B4B64_7C0AB4 = 0x3C;
            }
            break;

        case 4:
            if (D_800D5828 >= 0xB) {
                gActors[actor_index].state++;
                Sound_PlaySfx(0x12E);
                Sound_StopSfx(0x12D);
                func_801B1B34_7BDA84(0x30, 1);
                func_801B1B6C_7BDABC(0x30, 3);
                D_801B4B64_7C0AB4 = 0xF0;
            }
            break;

        case 5:
            if (D_801B4B64_7C0AB4 >= 0) {
                D_801B4B64_7C0AB4--;
            }
            if ((func_8005DEFC() == 0) && (D_801B4B64_7C0AB4 < 0)) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x3C;
                gActors[0x50].unk_174 = 0;
                func_801B1B6C_7BDABC(0x31, 0);
            }
            break;

        case 6:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state++;
                index = 0x50;
                gActors[index].unk_174 = 1;
                func_801B1B34_7BDA84(0x30, 0);
                func_8005DF5C(2);
                D_800D5830 = 48;
                D_800D5834 = -2;
            }
            break;

        case 7:
            if (D_800D582C == 1) {
                gActors[actor_index].state++;
                gActors[0x50].unk_174 = 6;
            }
            break;

        case 8:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
            }
            break;

        case 9:
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, 0x30, FIXED_UNIT(0.375));
            func_801B1510_7BD460(actor_index);
            if (gActors[actor_index].posX.whole == 48) {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_800E32C8);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                D_801B4B64_7C0AB4 = 0x28;
                gActors[0x50].unk_174 = 5;
            }
            break;

        case 0xA:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state++;
                func_8005DF5C(3);
                D_800D5830 = 64;
                D_800D5834 = -2;
            }
            break;

        case 0xB:
        case 0xD:
        case 0xF:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
            }
            break;

        case 0xC:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state++;
                func_8005DF5C(4);
                D_800D5830 = -112;
                D_800D5834 = -2;
            }
            break;

        case 0xE:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state++;
                func_8005DF5C(5);
                D_800D5830 = 64;
                D_800D5834 = -2;
            }
            break;

        case 0x10:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state++;
                func_8005DF5C(6);
                D_800D5830 = 48;
                D_800D5834 = -2;
                gActors[0x50].unk_174 = 6;
            }
            break;

        case 0x11:
            if (func_8005DEFC() == 0) {
                gStageState = 0x10;
                gActors[actor_index].state = 0x1E;
                gActors[actor_index].var_0D8 = 1;
            }
            break;

        case 0x1E:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E32C8);
            Sound_PlaySfx(0x12E);
            Sound_StopSfx(0x12D);
            Sound_PlaySfx(0x130);
            Sound_PlayMusic(3);
            gActors[0x50].state = 8;
            func_801B1B34_7BDA84(0x38, 0);

        case 0x1F:
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].var_0D8 == 0) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x20:
            gActors[actor_index].state++;
            gActors[actor_index].unk_170 = 0;
            func_80081790(actor_index, D_800E32C8);
            D_800BE544 = actor_index;

        case 0x21:
            func_801B0BA0_7BCAF0(actor_index);
            func_801B1570_7BD4C0(actor_index);
            break;

        case 0x22:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E32E4);

        case 0x23:
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].unk_16C & 1) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x80:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E32E4);

        case 0x81:
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].unk_16C & 1) {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_800E34E8);
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            break;

        case 0x82:
            gActors[actor_index + 3].flags ^= ACTOR_FLAG_FLIPPED;
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].unk_16C & 1) {
                Sound_PlaySfxAtActor3(0xC5, actor_index);
            }
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_800E32E4);
            }
            break;

        case 0x83:
            gActors[actor_index + 3].flags ^= ACTOR_FLAG_FLIPPED;
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].unk_16C & 1) {
                gActors[actor_index].state = 0x20;
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            break;

        case 0x24:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E3328);
            gActors[actor_index].velocityX.raw = (D_801B4B61_7C0AB1 * FIXED_UNIT(0.375)) * 1.5;

        case 0x25:
            func_801B1994_7BD8E4(actor_index);
            break;

        case 0x26:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E334C);
            gActors[actor_index].velocityX.raw = D_801B4B61_7C0AB1 * FIXED_UNIT(1.5625);

        case 0x27:
            if (D_801B4B60_7C0AB0 & 2) {
                if ((D_800E3584 & 0xC0000) || (func_80029B74(0xC) != 0)) {
                    gActors[actor_index].state = 0x20;
                }
            }
            else if ((D_800E3580 == 0) && (gActors[actor_index].posX.whole < 80) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].state = 0x22;
            }
            else if (((D_800E3580 == 0) && (gActors[actor_index].posX.whole > 80)) ||
                     (((u32)D_800E3580 != 0) && (D_800E3584 & 0xC0000)) ||
                     (((u32)D_800E3580 != 0) && (func_80029B74(0xC) != 0))) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x28:
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK11);
            func_801B0900_7BC850(actor_index);
            func_80081790(actor_index, D_800E334C);

        case 0x29:
            if (func_801B0D80_7BCCD0(actor_index) & 2) {
                func_801B0C00_7BCB50(actor_index);
            }
            break;

        case 0x50: {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK11);
            gActors[actor_index].velocityX.raw = D_801B4B61_7C0AB1 * FIXED_UNIT(0.625); \
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.5);
            func_80081790(actor_index, D_800E33C4);
            Sound_PlaySfxAtActor2(0x121, actor_index);
        }

        case 0x51:
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(1.0)) {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_800E33E4);
            }

        case 0x52:
            if (func_801B0D80_7BCCD0(actor_index) & 2) {
                func_801B0C00_7BCB50(actor_index);
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x38:
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x1000:
            if (D_801B4B60_7C0AB0 & 1) {
                func_801B0ECC_7BCE1C(actor_index);
            }
            switch (func_800291AC(actor_index, 0x30, 0x21423, 0x28, 0x21423)) {
                case 3:
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
                    gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK8;
                    func_801B11A0_7BD0F0(actor_index);
                    break;

                case 2:
                    func_801B11A0_7BD0F0(actor_index);
                    break;

                default:
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].flags |= gActors[0].flags & ACTOR_FLAG_FLIPPED;
                    if ((D_801B4B64_7C0AB4 == 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) && (D_801373E0.unk_12 == 0)) {
                        D_801B4B64_7C0AB4++;
                        func_80081790(actor_index, D_800E34A4);
                    }
                    if (gActors[actor_index].unk_11C < 0.0f) {
                        func_80081790(actor_index, D_800E3488);
                        D_801B4B64_7C0AB4 = 0;
                    }
                    break;
            }
            break;

        case 0x30:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E334C);

        case 0x31:
            hit_flags = func_801B0D80_7BCCD0(actor_index);
            gActors[actor_index].unk_170 -= FIXED_UNIT(96.0);
            if (hit_flags & 1) {
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].health -= 0x32;
                func_801B0A10_7BC960(actor_index);
                Sound_PlaySfxAtActor2(0x2D, actor_index);
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                gActors[actor_index].velocityY.raw /= 2;
                D_801B4B60_7C0AB0 |= 4;
            }
            if (hit_flags & 2) {
                gActors[actor_index].colorR = 0x7F;
                func_801B0A10_7BC960(actor_index);
                gActors[actor_index].health -= 0x32;
                D_801B4B60_7C0AB0 |= 4;
                func_801B0CBC_7BCC0C(actor_index);
            }
            break;

        case 0x2000:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E334C);

        case 0x2001:
            if (func_801B0D80_7BCCD0(actor_index) & 2) {
                func_801B0CBC_7BCC0C(actor_index);
            }
            break;

        case 0x40:
            func_801B0BA0_7BCAF0(actor_index);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x28;
            }
            else {
                if (gActors[actor_index].unk_11C < 0.0f) {
                    if (D_801B4B60_7C0AB0 & 1) {
                        gActors[actor_index].state = 0x48;
                    }
                    else {
                        gActors[actor_index].state = 0x20;
                    }
                }
                func_801B0ECC_7BCE1C(actor_index);
            }
            break;

        case 0x48:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E34C0);

        case 0x49:
            func_801B0BA0_7BCAF0(actor_index);
            func_801B0ECC_7BCE1C(actor_index);
            func_801B141C_7BD36C(actor_index);
            if ((D_801B4B60_7C0AB0 & 1) && !(D_801B4B60_7C0AB0 & 2)) {
                if (((D_801B4B60_7C0AB0 & 0xC)
                    ? func_8004089C(actor_index, D_801B46F4_7C0644)
                    : func_8004089C(actor_index, D_801B46F0_7C0640)) == 0x800) {
                    gActors[actor_index].state++;
                }
            }
            break;

        case 0x4A:
            func_801B0BA0_7BCAF0(actor_index);
            func_801B141C_7BD36C(actor_index);
            if (func_8005DEFC() == 0) {
                gStageState++;
                D_801B4B60_7C0AB0 |= 2;
                D_801B4B60_7C0AB0 &= ~1;
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x100:
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            func_80081790(actor_index, D_800E354C);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }

        case 0x101:
            if (gActors[actor_index].unk_16C & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK11;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].hitboxAX0 = -0xE;
                    gActors[actor_index].hitboxAX1 = 0;
                }
                else {
                    gActors[actor_index].hitboxAX0 = 0;
                    gActors[actor_index].hitboxAX1 = 0xE;
                }
                gActors[actor_index].hitboxAY0 = 0xA;
                gActors[actor_index].hitboxAY1 = -4;
            }
            if (gActors[actor_index].unk_16C & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK8) {
                gActors[actor_index].state = 0x58;
                gActors[actor_index + 5].parentIndex = gActors[actor_index].parentIndex;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
                func_8003F7A0(1.0f, gActors[gActors[actor_index].parentIndex].posX.whole, gActors[gActors[actor_index].parentIndex].posY.whole, 1);
                func_801B3068_7BEFB8(actor_index, 0);
                Sound_PlaySfxAtActor2(0x2F, actor_index);
            }
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x110:
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            func_80081790(actor_index, D_800E354C);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }

        case 0x111:
            if ((gActors[actor_index].unk_16C & 2) && (D_801B4B60_7C0AB0 == 2) && (gNoHit >= 0)) {
                if (YellowGem_GetFlag(gCurrentStage) == 0) {
                    gNoHit = -1;
                    index = SpawnGemActor(actor_index, 0x32, 0);
                    if (index != 0) {
                        gActors[index].posX.whole = gActors[actor_index + 5].posX.whole;
                        gActors[index].posY.whole = gActors[actor_index + 5].posY.whole + 8;
                    }
                }
            }
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x58:
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            func_80081790(actor_index, D_800E3454);
            func_801B141C_7BD36C(actor_index);

        case 0x59:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x28;
            }
            else {
                func_801B3068_7BEFB8(actor_index, 0);
                if (gActors[actor_index].unk_16C & 1) {
                    gActors[actor_index].state++;
                    func_801B3068_7BEFB8(actor_index, 1);
                    gActors[actor_index].velocityX.raw = D_801B4B61_7C0AB1 * FIXED_UNIT(1.5);
                    Sound_PlaySfxAtActor2(0x2A, actor_index);
                }
            }
            break;

        case 0x5A:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x28;
            }
            else {
                if (gActors[actor_index].unk_16C & 2) {
                    gActors[actor_index].velocityX.raw /= 4;
                }
                if (gActors[actor_index].unk_11C < 0.0f) {
                    gActors[actor_index].state = 0x20;
                }
            }
            break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_138 = 1.0f;
        D_801B4B61_7C0AB1 = -1;
    }
    else {
        gActors[actor_index].unk_138 = 0.0f;
        D_801B4B61_7C0AB1 = 1;
    }
    func_80081E38(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

s32 func_801B3068_7BEFB8(u16 actor_index, s32 arg1) {
    u16 target_index;
    u16 source_index;

    source_index = actor_index + 5;
    target_index = gActors[source_index].parentIndex & 0x7FFF;

    if (func_80028C08(actor_index) != 0) {
        if ((u8)arg1 == 0) {
            gActors[target_index].unk_104 = gActors[source_index].posX.raw;
            gActors[target_index].unk_108 = gActors[source_index].posY.raw + FIXED_UNIT(8.0);
            gActors[target_index].unk_10C = gActors[source_index].posZ.raw - 4;
            gActors[target_index].flags_098 |= ACTOR_FLAG3_UNK9;
            gActors[target_index].parentIndex = source_index;
            return FALSE;
        }

        gActors[target_index].flags_098 &= ~ACTOR_FLAG3_UNK9;
        gActors[target_index].flags_098 |= ACTOR_FLAG3_UNK10;
        gActors[target_index].unk_0F8.raw = D_801B4B61_7C0AB1 * FIXED_UNIT(3.0);
        gActors[target_index].unk_0FC.raw = FIXED_UNIT(4.0);
        if (target_index == 0) {
            func_8004F614(actor_index, FIXED_UNIT(3.0), FIXED_UNIT(5.0), 0x32);
        }
        return FALSE;
    }

    gActors[source_index].parentIndex = 0;
    return TRUE;
}

void func_801B31B8_7BF108(u16 actor_index) {
    f32 scale;
    u16 saved_actor_index;

    saved_actor_index = actor_index;
    if (D_801B4B60_7C0AB0 & 1) {
        gActors[saved_actor_index].flags = 0;
        func_8003F138(0.5f, gActors[saved_actor_index].posX.whole, gActors[saved_actor_index].posY.whole, gActors[saved_actor_index].posZ.whole);
        Sound_PlaySfxAtActor2(0x43, saved_actor_index);
        return;
    }

    gActors[saved_actor_index].health = 0x2710;
    if ((gActors[saved_actor_index].state != 0) && (gActors[saved_actor_index].state != 0x100)) {
        gActors[saved_actor_index].posZ.raw = FIXED_UNIT(-2.0);
        func_8002C6E4(saved_actor_index);
        scale = Math_ApproachF32(gActors[saved_actor_index].scaleX, 1.4f, 0.1f);
        gActors[saved_actor_index].scaleX = scale;
        gActors[saved_actor_index].scaleY = scale;
    }

    if (gActors[saved_actor_index].var_150 & 0x50000) {
        gActors[saved_actor_index].scaleX = 1.8f;
        Sound_PlaySfxAtActor2(0x90, saved_actor_index);
    }

    if (gActors[saved_actor_index].var_150 & 0x02040000) {
        gActors[saved_actor_index].velocityX.raw /= 2;
    }

    if (gActors[saved_actor_index].var_150 & 0x06000000) {
        gActors[saved_actor_index].scaleX = 1.7f;
        if ((gActors[saved_actor_index].parentIndex == 0) || (gActors[saved_actor_index].parentIndex == 0x30)) {
            Sound_PlaySfxAtActor2(0x2D, saved_actor_index);
            func_801B0A10_7BC960(saved_actor_index);
        }
        else {
            Sound_PlaySfxAtActor2(0x36, saved_actor_index);
        }
    }

    if (gActors[saved_actor_index].var_150 & 0x100000) {
        Sound_PlaySfxAtActor2(0x2F, saved_actor_index);
        gActors[saved_actor_index].scaleX = 1.5f;
    }

    switch (gActors[saved_actor_index].state) {
        case 0:
            func_8002C5C4(saved_actor_index, 0x836, 8, 1.0f, 0, 0x3400);
            if (gActors[saved_actor_index].var_0D8 & 1) {
                gActors[saved_actor_index].graphicIndex = 0x838;
            }

            gActors[saved_actor_index].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_SCALE;
            gActors[saved_actor_index].flags |= ACTOR_FLAG_UNK15;
            gActors[saved_actor_index].health = 5;
            gActors[saved_actor_index].damage = 0x32;
            gActors[saved_actor_index].unk_164 |= 1;
            gActors[saved_actor_index].unk_0DB = 2;
            break;

        case 0x30:
        case 0x40:
            if (gActors[saved_actor_index].var_150 & 0x10000000) {
                gActors[saved_actor_index].flags |= ACTOR_FLAG_UNK9;
                Actor_SetHitboxA(saved_actor_index, 1);
            }
            break;

        case 0x10:
        case 0x20:
        case 0x2F:
        case 0x31:
        case 0x3F:
            break;
    }

    gActors[saved_actor_index].colorR = Math_ApproachS32(gActors[saved_actor_index].colorR, 0, 0x20);
    Actor_SetColorRgb(saved_actor_index, gActors[saved_actor_index].colorR & 0xFF);
}

f32 func_801B3480_7BF3D0(u16 actor_index) {
    return -40.0f - (((1.0f - gActors[actor_index].scaleX) * 40.0f) / 2);
}

void func_801B34E4_7BF434(u16 actor_index, s16 target_x) {
    s16 screen_x;

    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_150 = gActors[actor_index].var_150 ^ 1;
        if (gActors[actor_index].var_150 != 0) {
            ACTOR_GFX_INIT(actor_index, D_800E1A20);
        }
        else {
            ACTOR_GFX_INIT(actor_index, D_800E19FC);
        }
    }

    screen_x = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    if (screen_x == target_x) {
        gActors[actor_index].state = 0x30;
        ACTOR_GFX_INIT(actor_index, D_800E1700);
        gActors[actor_index].unk_174 = 0x10;
        return;
    }

    if (target_x < screen_x) {
        gActors[actor_index].posX.whole--;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        return;
    }

    if (screen_x < target_x) {
        gActors[actor_index].posX.whole++;
    }
}

void func_801B35E0_7BF530(u16 actor_index) {
    if (gActors[actor_index].posX.whole > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
}

void func_801B3648_7BF598(u16 actor_index) {
    u16 subtype;
    u16 index;

    if ((gActors[actor_index].var_0D8 & 0xF) == 0xF) {
        func_801B3FC8_7BFF18(actor_index);
        return;
    }

    if (gActors[actor_index].var_0D8 & 8) {
        func_801B3F18_7BFE68(actor_index);
        return;
    }

    subtype = gActors[actor_index].var_0D8 & 7;
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state = D_801B4704_7C0654[(u16)gActors[actor_index].var_110 + 0];
        gActors[actor_index].posZ.whole = D_801B4704_7C0654[(u16)gActors[actor_index].var_110 + 1];
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
        gActors[actor_index].posY.whole = func_801B3480_7BF3D0(actor_index);
        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        func_80067E9C(actor_index);
    }

    switch (gActors[actor_index].state) {
        case 1:
            switch (gActors[actor_index].unk_174) {
                case 0:
                    func_80067E9C(actor_index);
                    break;

                case 1:
                    func_80067F98(actor_index);
                    break;

                case 2:
                    func_80067FEC(actor_index);
                    break;

                case 3:
                    if (gActors[actor_index].graphicTimer == 0) {
                        ACTOR_GFX_INIT(actor_index, D_800E17F8);
                    }
                    break;

                case 4:
                    func_80067FEC(actor_index);
                    break;

                case 5:
                    func_80067E9C(actor_index);
                    break;

                case 6:
                    gActors[actor_index].unk_174++;
                    ACTOR_GFX_INIT(actor_index, D_800E19D4);
                    break;

                case 7:
                    if (gActors[actor_index].graphicTimer == 0) {
                        gActors[actor_index].unk_174 = 1;
                        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                    }
                    break;
            }
            break;

        case 8:
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E1D0C);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
            Sound_PlaySfx(0x24);

        case 9:
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E1D0C);
            }
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            gActors[actor_index].posZ.whole += 3;
            if (gActors[actor_index].velocityY.raw < 0) {
                if (gActors[actor_index].posY.whole < func_801B3480_7BF3D0(actor_index)) {
                    gActors[actor_index].graphicList = D_800E2418;
                    gActors[actor_index].graphicTimer = 1;
                    Sound_PlaySfx(0x25);
                    gActors[actor_index].posY.whole = func_801B3480_7BF3D0(actor_index);
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].state = 0x10;
                    gActors[actor_index].posZ.whole = 192;
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
            }
            break;

        case 0x10:
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xC0, 1);
            gActors[actor_index].posY.whole = Math_ApproachS32(gActors[actor_index].posY.whole, -48, 1);
            if (D_801B4B70_7C0AC0 & 1) {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 = 0xB4;
                Sound_PlaySfx(0x12F);
                func_801B1B34_7BDA84(0x30, 4);
            }
            break;

        case 0x11:
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 < 0) {
                gActors[actor_index].state--;
                D_801B4B70_7C0AC0 &= 0xFFFE;
            }
            break;

        case 0x20:
            gActors[actor_index].state++;
            func_801B35E0_7BF530(actor_index);
            if (subtype != 7) {
                ACTOR_GFX_INIT(actor_index, D_800E1714);
            }

        case 0x21:
            if (subtype == 7) {
                func_80065650(actor_index);
            }
            break;

        case 0x30:
            switch (gActors[actor_index].unk_174) {
                case 0:
                    func_80067E9C(actor_index);
                    break;

                case 1:
                    if (gActors[actor_index].graphicTimer == 0) {
                        if (Rand() & 1) {
                            ACTOR_GFX_INIT(actor_index, D_800E2274);
                        }
                        else {
                            ACTOR_GFX_INIT(actor_index, D_800E1C58);
                        }
                    }
                    break;

                case 2:
                    func_80067FEC(actor_index);
                    break;

                case 3:
                    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x40, 4);
                    if (gActors[actor_index].graphicTimer == 0) {
                        if (Rand() & 3) {
                            ACTOR_GFX_INIT(actor_index, D_800E1788);
                        }
                        else {
                            ACTOR_GFX_INIT(actor_index, D_800E1750);
                        }
                    }
                    break;

                case 4:
                    gActors[actor_index].unk_174++;
                    ACTOR_GFX_INIT(actor_index, D_800E1C58);
                    gActors[actor_index].var_150 = 3;

                case 5:
                    if (gActors[actor_index].graphicTimer == 0) {
                        gActors[actor_index].var_150--;
                        if (gActors[actor_index].var_150 < 0) {
                            gActors[actor_index].unk_174 = 0x10;
                        }
                        else {
                            ACTOR_GFX_INIT(actor_index, D_800E1C58);
                        }
                    }
                    break;

                case 0x10:
                    func_801B35E0_7BF530(actor_index);
                    if (gActors[actor_index].graphicTimer == 0) {
                        gActors[actor_index].graphicTimer = 1;
                        switch (Rand() & 3) {
                            default:
                                gActors[actor_index].graphicList = D_800E1700;
                                break;

                            case 1:
                                gActors[actor_index].graphicList = D_800E2274;
                                break;

                            case 2:
                                gActors[actor_index].graphicList = D_800E1750;
                                break;

                            case 3:
                                gActors[actor_index].graphicList = D_800E1C84;
                                break;
                        }
                    }
                    break;
            }
            break;

        case 0x31:
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E19D4);

        case 0x32:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                ACTOR_GFX_INIT(actor_index, D_800E1CC4);
            }
            break;

        case 0x33:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].var_150 ^= 1;
                if (gActors[actor_index].var_150 != 0) {
                    ACTOR_GFX_INIT(actor_index, D_800E1CE8);
                }
                else {
                    ACTOR_GFX_INIT(actor_index, D_800E1CC4);
                }
            }
            gActors[actor_index].posX.raw += FIXED_UNIT(1.0);
            if (gActors[actor_index].posX.whole >= 769) {
                gActors[actor_index].flags = 0;
            }
            break;

        case 0x38:
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E23F4);

        case 0x39:
            gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-192.0), FIXED_UNIT(1.75));
            if (gActors[actor_index].posZ.whole == -192) {
                gActors[actor_index].state++;
                ACTOR_GFX_INIT(actor_index, D_800E19FC);
            }
            break;

        case 0x3A:
            switch (actor_index) {
                case 0x57:
                    func_801B34E4_7BF434(actor_index, 384);
                    break;

                case 0x58:
                    func_801B34E4_7BF434(actor_index, 448);
                    break;

                case 0x59:
                    func_801B34E4_7BF434(actor_index, 560);
                    break;

                case 0x5A:
                    func_801B34E4_7BF434(actor_index, 344);
                    break;
            }
            break;
    }

    func_80066BCC(actor_index);
}

void func_801B3F18_7BFE68(u16 actor_index) {
    u16 variant = gActors[actor_index].var_0D8 & 7;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        if (variant == 0) {
            gActors[actor_index].graphicIndex = 0x81C;
            gActors[actor_index].posZ.whole = -192;
        }
    }
}

void func_801B3F84_7BFED4(u16 arg0) {
    u16 actor_index;

    for (actor_index = 0x57; actor_index < 0x5F; actor_index++) {
        gActors[actor_index].unk_174 = arg0;
    }
}

void func_801B3FC8_7BFF18(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = gActors[actor_index].state + 1;
            gActors[actor_index].var_150 = (s32)D_800E1180;\
            gActors[actor_index].var_154 = 1;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 8;
            gActors[actor_index].posZ.whole = -191;
            gActors[0x50].unk_174_array[0] = 3;
            func_8005DF40(0, 0x3C);
            gLookatEyeZ = 352.0f;
            Sound_PlaySfx(0x12D);

        case 1:
            gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 448.0f, 1.0f);
            if ((s16)gLookatEyeZ == 448) {
                gActors[actor_index].state++;
                func_8005DF5C(9);
                D_800D5830 = 48;
                D_800D5834 = -2;
                gActors[0x50].unk_174_array[0] = 1;
            }
            break;

        case 2:
            if (D_800D5824 == 0x4000) {
                gActors[0x50].unk_174_array[0] = 6;
            }

            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x12C;
                gActors[0x50].unk_174_array[0] = 0;
                Sound_PlaySfx(0x12E);
                Sound_StopSfx(0x12D);
                func_801B3F84_7BFED4(1);
            }
            break;

        case 3:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                gActors[0x50].unk_174_array[0] = 1;
                func_8005DF5C(0xA);
                D_800D5830 = 48;
                D_800D5834 = -2;
                func_801B3F84_7BFED4(0);
            }
            break;

        case 4:
            if (D_800D5824 == 0x4000) {
                gActors[0x50].unk_174_array[0] = 6;
            }

            if (D_800D582C >= 2) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0xB4;
                Sound_PlaySfx(0x12E);
                Sound_PlaySfx(0x11A);
                func_801B3F84_7BFED4(1);
            }
            break;

        case 5:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                if (func_8005DEFC() == 0) {
                    gActors[actor_index].state++;
                    gActors[0x52].unk_174_array[0] = 5;
                }
            }
            break;

        case 6:
            gScreenPosTargetX.whole = Math_ApproachS32(gScreenPosTargetX.whole, 4928, 1);
            if (gScreenPosTargetX.whole == 4928) {
                gActors[actor_index].state++;
                func_8005DF5C(0xB);
                D_800D5830 = -96;
                D_800D5834 = -2;
            }
            break;

        case 7:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
                gActors[0x52].unk_174_array[0] = 6;
            }
            break;

        case 8:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                func_8005DF5C(0xC);
                D_800D5830 = 96;
                D_800D5834 = -2;
            }
            break;

        case 9:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
                gActors[0x52].unk_174_array[0] = 0;
            }
            break;

        case 10:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                func_8005DF5C(0xD);
                D_800D5830 = -96;
                D_800D5834 = -2;
            }
            break;

        case 11:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
            }
            break;

        case 12:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                gActors[0x52].unk_174_array[0] = 1;
                func_8005DF5C(0xE);
                D_800D5830 = 96;
                D_800D5834 = -2;
            }
            break;

        case 13:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
                gActors[0x52].unk_174_array[0] = 0;
            }
            break;

        case 14:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                func_8005DF5C(0xF);
                D_800D5830 = -96;
                D_800D5834 = -2;
            }
            break;

        case 15:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x1E;
            }
            break;

        case 16:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                func_8005DF5C(0x10);
                D_800D5830 = 96;
                D_800D5834 = -2;
                gActors[0x52].unk_174_array[0] = 1;
            }
            break;

        case 17:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                gActors[0x52].unk_174_array[0] = 6;
            }
            break;

        case 18:
            gScreenPosTargetX.whole = Math_ApproachS32(gScreenPosTargetX.whole, 5200, 1);
            gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 256.0f, 0.7f);
            if (gScreenPosTargetX.whole == 5200) {
                gActors[actor_index].state++;
                func_8005DF5C(0x11);
                D_800D5830 = 112;
                D_800D5834 = -2;
            }
            break;

        case 19:
            if (func_8005DEFC() == 0) {
                gActors[actor_index].state++;
                D_801B4B64_7C0AB4 = 0x78;
                Sound_StartFade(0x81, 0x78);
            }
            break;

        case 20:
            D_801B4B64_7C0AB4--;
            if (D_801B4B64_7C0AB4 < 0) {
                gActors[actor_index].state = gActors[actor_index].state + 1;
                gStageState++;
            }
            break;

        case 21:
            break;
    }

    func_8007F9E0(actor_index);
}
