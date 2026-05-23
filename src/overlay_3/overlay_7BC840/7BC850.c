#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800BE5D8;
extern f32 D_801B4720_7C0670;
extern u8 D_801B4B60_7C0AB0;
extern s32 D_801B4B64_7C0AB4;
extern u8 D_801B4B70_7C0AC0;
extern s8 D_801B4B61_7C0AB1;
extern u16 D_801B46F8_7C0648[];

extern void func_800339BC(s32 arg0, s32 arg1, s32 arg2, u16 arg3);
extern s32 func_800036C8(u32 arg0, u16 actor_index);

void func_801B0900_7BC850(u16 actor_index) {
    gActors[actor_index].flags &= 0xFFFFF7FF;
}

s32 func_801B0944_7BC894(u16 actor_index) {
    if ((gActors[actor_index].unk_098 & 0x200) && !(gActors[actor_index].state & 0x1000)) {
        func_80040858(actor_index);
        gActors[actor_index].state = 0x1000;
        func_80029134(actor_index);
        func_801B0900_7BC850(actor_index);
        D_801B4B64_7C0AB4 = 0;
        func_80081790(actor_index, D_800E3488);
        func_800036C8(0x2F, actor_index);
        func_800036C8(0xA4, actor_index);
        return 1;
    }

    return 0;
}

void func_801B0A10_7BC960(u16 actor_index) {
    func_8003EEC0(
        D_801B4720_7C0670,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 4);
}

void func_801B0A7C_7BC9CC(u16 actor_index) {
    s32 state;

    if (!(gActors[actor_index].state & 0x1000)) {
        if (gActors[actor_index].unk_098 & 2) {
            func_80040858(actor_index);
            func_801B0900_7BC850(actor_index);
            if (gActors[actor_index].unk_0DD < 0x15) {
                gActors[actor_index].colorR = 0x7F;
                func_800036C8(0x9D, actor_index);
                func_801B0A10_7BC960(actor_index);
            }

            state = 0x2000;
            gActors[actor_index].state = state;
            gActors[actor_index].flags |= 0x20000;\
            gActors[actor_index].flags &= 0xFFFEFFFF;
            gActors[actor_index].velocityX = gActors[actor_index].unk_0F8;
            gActors[actor_index].velocityY = gActors[actor_index].unk_0FC;
            func_8002A2B0(actor_index, 0x40000);
            if (gActors[actor_index].velocityX > 0) {
                gActors[actor_index].flags |= 0x20;
            }
            else {
                gActors[actor_index].flags &= -0x21;
            }
        }
    }
}

void func_801B0BA0_7BCAF0(u16 actor_index) {
    gActors[actor_index].velocityX = Math_ApproachS32(gActors[actor_index].velocityX, 0, 0x1800);
}

void func_801B0C00_7BCB50(u16 actor_index) {
    gActors[actor_index].state = 0x38;
    gActors[actor_index].flags |= 0x20000;
    gActors[actor_index].flags &= 0xFFFEFFFF;
    gActors[actor_index].velocityX /= 2;
    gActors[actor_index].velocityY = 0;
    func_800036C8(0x91, actor_index);
    gActors[actor_index].unk_170 = 0;
    func_80081790(actor_index, D_800E3518);
}

void func_801B0CBC_7BCC0C(u16 actor_index) {
    gActors[actor_index].state = 0x40;
    gActors[actor_index].flags |= 0x20000;\
    gActors[actor_index].flags &= 0xFFFEF7FF;
    func_801B0900_7BC850(actor_index);
    gActors[actor_index].velocityX /= 2;
    gActors[actor_index].velocityY = 0;
    func_800036C8(0x94, actor_index);
    gActors[actor_index].unk_170 = 0;
    func_80081790(actor_index, D_800E352C);
}

s32 func_801B0D80_7BCCD0(u16 actor_index) {
    s32 result;

    gActors[actor_index].velocityX = Math_ApproachS32(gActors[actor_index].velocityX, 0, 0x600);
    gActors[actor_index].velocityY = Math_ApproachS32(gActors[actor_index].velocityY, -0x68000, 0x3800);

    result = 0;
    if (((gActors[actor_index].unk_098 & 4) && (gActors[actor_index].velocityX < 0)) ||
        ((gActors[actor_index].unk_098 & 8) && (gActors[actor_index].velocityX > 0))) {
        result = 1;
    }

    if ((gActors[actor_index].velocityY < 0) && (gActors[actor_index].unk_098 & 0x20)) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B0ECC_7BCE1C.s")

void func_801B11A0_7BD0F0(u16 actor_index) {
    gActors[actor_index].unk_0AA = -8;
    gActors[actor_index].unk_0AC = 8;
    gActors[actor_index].unk_0AE = 8;
    gActors[actor_index].unk_0B0 = -4;
}

s32 func_801B11F0_7BD140(u16 actor_index) {
    u16 index;
    u16 current_actor_index;
    u16 best_actor_index;
    u16 best_distance;
    u16 distance;

    if (D_801B4B60_7C0AB0 & 2) {
        if (gActors[0x43].unk_098 & 0x200) {
            return 0x43;
        }
        return 0;
    }

    best_actor_index = 0;
    best_distance = 0x1000;
    index = 0;
    if (current_actor_index != 0) {
        do {
            current_actor_index = D_801B46F8_7C0648[index];
            distance = func_800289CC(gActors[actor_index].posX.whole - gActors[current_actor_index].posX.whole);
            if ((gActors[current_actor_index].flags & 2) && !(gActors[current_actor_index].unk_098 & 0x200) &&
                !(gActors[current_actor_index].flags & 0x200) && (gActors[current_actor_index].posX.whole > 0) &&
                (distance < best_distance) && (gActors[current_actor_index].posY.whole < 0)) {
                best_actor_index = current_actor_index;
                best_distance = distance;
            }
            current_actor_index = D_801B46F8_7C0648[++index];
        } while (current_actor_index != 0);
    }

    return best_actor_index;
}

s32 func_801B1390_7BD2E0(u16 actor_index) {
    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
        if (gActors[actor_index].flags & 0x20) {
            gActors[actor_index].state = 0x22;
            return 1;
        }
    }
    else if (!(gActors[actor_index].flags & 0x20)) {
        gActors[actor_index].state = 0x22;
        return 2;
    }

    return 0;
}

s32 func_801B141C_7BD36C(u16 actor_index) {
    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
        if (gActors[actor_index].flags & 0x20) {
            gActors[actor_index].flags &= 0xFFFFFFDF;
            return 1;
        }
    }
    else if (!(gActors[actor_index].flags & 0x20)) {
        gActors[actor_index].flags |= 0x20;
        return 2;
    }

    return 0;
}

void func_801B14AC_7BD3FC(s32 arg0) {
    if ((D_801B4B60_7C0AB0 & 3) == 0) {
        if (D_800BE5D8 >= 0x209) {
            if (D_800BE5DC < 0x170) {
                if (D_801B4B70_7C0AC0 == 0) {
                    D_801B4B70_7C0AC0 = 1;
                }
                D_801B4B60_7C0AB0 |= 8;
            }
        }
    }
}

void func_801B1510_7BD460(u16 actor_index) {
    if (gActors[actor_index].unk_16C & 1) {
        func_800036C8(0x53, actor_index);
    }
}

void func_801B1568_7BD4B8(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B1570_7BD4C0.s")

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
        if (gActors[actor_index].posX.whole >= 0x61) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B1BA4_7BDAF4.s")

s32 func_801B3068_7BEFB8(u16 actor_index, s32 arg1) {
    u16 target_index;
    u16 source_index;

    source_index = actor_index + 5;
    target_index = gActors[source_index].unk_0D6 & 0x7FFF;

    if (func_80028C08(actor_index) != 0) {
        if ((u8)arg1 == 0) {
            gActors[target_index].unk_104 = gActors[source_index].posX.raw;
            gActors[target_index].unk_108 = gActors[source_index].posY.raw + 0x80000;
            gActors[target_index].unk_10C = gActors[source_index].posZ.raw - 4;
            gActors[target_index].unk_098 |= 0x200;
            gActors[target_index].unk_0D6 = source_index;
            return 0;
        }

        gActors[target_index].unk_098 &= ~0x200;
        gActors[target_index].unk_098 |= 0x400;
        gActors[target_index].unk_0F8 = D_801B4B61_7C0AB1 * 0x30000;
        gActors[target_index].unk_0FC = 0x40000;
        if (target_index == 0) {
            func_8004F614(actor_index, 0x30000, 0x50000, 0x32);
        }
        return 0;
    }

    gActors[source_index].unk_0D6 = 0;
    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B31B8_7BF108.s")

f32 func_801B3480_7BF3D0(u16 actor_index) {
    return -40.0f - (((1.0f - gActors[actor_index].scaleX) * 40.0f) / 2);
}

void func_801B34E4_7BF434(u16 actor_index, s16 target_x) {
    s16 screen_x;

    if (gActors[actor_index].unk_0E6 == 0) {
        gActors[actor_index].unk_150 = gActors[actor_index].unk_150 ^ 1;
        if (gActors[actor_index].unk_150 != 0) {
            gActors[actor_index].unk_0E8 = D_800E1A20;\
            gActors[actor_index].unk_0E6 = 1;
        }
        else {
            gActors[actor_index].unk_0E8 = D_800E19FC;\
            gActors[actor_index].unk_0E6 = 1;
        }
    }

    screen_x = gActors[actor_index].posX.whole + D_800BE558;
    if (screen_x == target_x) {
        gActors[actor_index].state = 0x30;
        gActors[actor_index].unk_0E8 = D_800E1700;\
        gActors[actor_index].unk_0E6 = 1;
        gActors[actor_index].unk_174 = 0x10;
        return;
    }

    if (target_x < screen_x) {
        gActors[actor_index].posX.whole--;
        gActors[actor_index].flags |= 0x20;
        return;
    }

    if (screen_x < target_x) {
        gActors[actor_index].posX.whole++;
    }
}

void func_801B35E0_7BF530(u16 actor_index) {
    if (gActors[actor_index].posX.whole > 0) {
        gActors[actor_index].flags |= 0x20;
    }
    else {
        gActors[actor_index].flags &= 0xFFFFFFDF;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B3648_7BF598.s")

void func_801B3F18_7BFE68(u16 actor_index) {
    u16 temp = gActors[actor_index].unk_0D8 & 7;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = 3;
        if (temp == 0) {
            gActors[actor_index].unk_084 = 0x81C;
            gActors[actor_index].posZ.whole = -0xC0;
        }
    }
}

void func_801B3F84_7BFED4(u16 arg0) {
    u16 actor_index;

    for (actor_index = 0x57; actor_index < 0x5F; actor_index++) {
        gActors[actor_index].unk_174 = arg0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7BC840/7BC850/func_801B3FC8_7BFF18.s")
