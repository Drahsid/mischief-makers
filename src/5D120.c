#include "common.h"

extern s16 D_800CCC78[];

void func_8005C520(s8 arg0, s8 arg1) {
    gActors[0].unk_0DC |= 0x40;
    D_801373E0.unk_0A = arg0;
    D_801373E0.unk_0B = arg1;
}

s32 func_8005C550(u16 actor_index, s16 arg1) {
    if (gActors[actor_index].unk_13C_s16[0] == 0) {
        gActors[actor_index].unk_13C_s16[0] = arg1;
        return 1;
    }
    if (arg1 > 0) {
        if (gActors[actor_index].unk_13C_s16[0] < arg1) {
            gActors[actor_index].unk_13C_s16[0] = arg1;
            return 2;
        }
    }
    else if ((gActors[actor_index].unk_13C_s16[0] < 0) && (arg1 < gActors[actor_index].unk_13C_s16[0])) {
        gActors[actor_index].unk_13C_s16[0] = arg1;
        return 3;
    }
    return 0;
}

s32 func_8005C5E0(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK15;
    if (gActors[actor_index].unk_13C_s16[0] == 0) {
        return 0;
    }
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
    if (gActors[actor_index].unk_13C_s16[0] > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
    }
    if ((gActors[actor_index].unk_13C_s16[0] == 0x7FFF) || (gActors[actor_index].unk_13C_s16[0] == -0x8000)) {
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_13C_s16[0] = 0;
        }
        return 2;
    }
    if (gActors[actor_index].unk_13C_s16[0] < 0) {
        gActors[actor_index].unk_13C_s16[0]++;
    }
    if (gActors[actor_index].unk_13C_s16[0] > 0) {
        gActors[actor_index].unk_13C_s16[0]--;
    }
    return 1;
}

// abs_s32
s32 func_8005C6D0(s32 x) {
    if (x < 0) {
        x = -x;
    }
    return x;
}

// abs_f32
f32 func_8005C6E4(f32 x) {
    if (x < 0.0f) {
        x = -x;
    }
    return x;
}

// rand8_mod
s32 func_8005C708(s32 modulus) {
    s8 val;
    s32 ret;

    val = Rand();
    ret = val;
    if (modulus != 0) {
        ret %= modulus;
    }
    return ret;
}

u16 func_8005C774(s32 arg0) {
    f32 temp;
    if (arg0 == 0) {
        return D_800BE668;
    }
    if (arg0 >= 100) {
        return D_800BE668 + 1;
    }
    temp = (D_800BE668 + 1);
    temp /= (100.0f / arg0);
    return temp;
}

u8 func_8005C870(u8 arg0) {
    if ((arg0 & 0x30) == 0x30) {
        return arg0 & 0xC0;
    }
    return arg0;
}

void func_8005C8A4(void) {
    if (gCamShakeTime == 0) {
        gCamShakeV = 0;
    }
    else {
        if (!(gCamShakeTime & 1)) {
            gCamShakeV = FROM_FIXED(gCamShakeMag);
        }
        else {
            gCamShakeV = FROM_FIXED(-gCamShakeMag);
        }
        gCamShakeTime--;
        switch (gCamShakeType) {
        case 1:
            if (!(gCamShakeTime & 1)) {
                gCamShakeMag -= gCamShakeMagDelta * 2;
            }
            break;
        case 2:
            if (!(gCamShakeTime & 2)) {
                gCamShakeV = func_8005C708(FROM_FIXED(gCamShakeMag));
            }
            break;
        default:
            gCamShakeMag -= gCamShakeMagDelta;
            break;
        }
        if (((D_800CCC78[8 * gCurrentScene] == 1) && (gCamShakeV < 0)) || 
            ((D_800CCC78[8 * gCurrentScene] == 2) && (gCamShakeV > 0))) {
            gCamShakeV = 0;
        }
    }
}

void func_8005CA34(s32 shake_time, s32 shake_time_div) {
    gCamShakeType = 0;
    gCamShakeTime = shake_time_div;
    gCamShakeMag = shake_time << 0x10;
    gCamShakeMagDelta = gCamShakeMag / shake_time_div;
    gCamShakeV = 0;
}

s16 func_8005CA98(void) {
    return gCamShakeTime;
}

void func_8005CAA8(u16 actor_index, s8* arg1) {
    s32 index;
    s32 count;

    if (gActors[actor_index].unk_17C_s8[1] != 0) {
        gActors[actor_index].unk_17C_s8[0] += 1;
        if (gActors[actor_index].unk_17C_s8[0] >= gActors[actor_index].unk_17C_s8[1]) {
            gActors[actor_index].unk_17C_s8[0] = 0;
        }
    }

    count = 0;
    if (gActors[actor_index].unk_17C_s8[0] == 0) {
        index = gActors[actor_index].unk_17C_s16[1] * 4;
        if (gActors[actor_index].unk_17C_s8[1] == 0) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxBX0 = arg1[index + 0];
                gActors[actor_index].hitboxBX1 = arg1[index + 1];
            }
            else {
                gActors[actor_index].hitboxBX0 = -arg1[index + 1];
                gActors[actor_index].hitboxBX1 = -arg1[index + 0];
            }
            gActors[actor_index].hitboxBY0 = arg1[index + 2];
            gActors[actor_index].hitboxBY1 = arg1[index + 3];
            gActors[actor_index].hitboxBX0 *= gActors[0].unk_120;
            gActors[actor_index].hitboxBX1 *= gActors[0].unk_120;
            gActors[actor_index].hitboxBY0 *= gActors[0].unk_120;
            gActors[actor_index].hitboxBY1 *= gActors[0].unk_120;
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].hitboxBX0 < arg1[index + 0] * gActors[0].unk_120) {
                    count = 1;
                    gActors[actor_index].hitboxBX0 += (1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX0 > arg1[index + 0] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX0 += -(1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX1 < arg1[index + 1] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX1 += (1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX1 > arg1[index + 1] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX1 += -(1 * gActors[0].unk_120);
                }
            }
            else {
                if (gActors[actor_index].hitboxBX0 < -arg1[index + 1] * gActors[0].unk_120) {
                    count = 1;
                    gActors[actor_index].hitboxBX0 += (1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX0 > -arg1[index + 1] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX0 += -(1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX1 < -arg1[index + 0] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX1 += (1 * gActors[0].unk_120);
                }
                if (gActors[actor_index].hitboxBX1 > -arg1[index + 0] * gActors[0].unk_120) {
                    count++;
                    gActors[actor_index].hitboxBX1 += -(1 * gActors[0].unk_120);
                }
            }
            if (gActors[actor_index].hitboxBY0 < arg1[index + 2] * gActors[0].unk_120) {
                count++;
                gActors[actor_index].hitboxBY0 += (1 * gActors[0].unk_120);
            }
            if (gActors[0].unk_120 * arg1[index + 2] < gActors[actor_index].hitboxBY0) {
                count++;
                gActors[actor_index].hitboxBY0 += -(1 * gActors[0].unk_120);
            }
            if (gActors[actor_index].hitboxBY1 < arg1[index + 3] * gActors[0].unk_120) {
                count++;
                gActors[actor_index].hitboxBY1 += (1 * gActors[0].unk_120);
            }
            if (gActors[actor_index].hitboxBY1 > arg1[index + 3] * gActors[0].unk_120) {
                count++;
                gActors[actor_index].hitboxBY1 += -(1 * gActors[0].unk_120);
            }
        }
        if (count == 0) {
            gActors[actor_index].unk_17C_s8[1] = 0;
            gActors[actor_index].unk_17C_s8[0] = 0;
        }
    }
}

u8 func_8005D1B0(u16 actor_index) {
    return gActors[actor_index].unk_0DF & 3;
}

s32 func_8005D1E8(u16 actor_index) {
    if (((gActors[actor_index].hitboxAX1 + gActors[actor_index].posX.whole) >= (gActors[0].hitboxBX0 + gActors[0].posX.whole)) &&
        ((gActors[0].posX.whole + gActors[0].hitboxBX1) >= (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0)) &&
        ((gActors[0].posY.whole + gActors[0].hitboxBY0) >= (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY1)) &&
        ((gActors[actor_index].hitboxAY0 + gActors[actor_index].posY.whole) >= (gActors[0].hitboxBY1 + gActors[0].posY.whole))) {
        return 1;
    }
    if ((gActors[0].flags & ACTOR_FLAG_UNK11) && 
        ((gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1) >= (gActors[0].hitboxAX0 + gActors[0].posX.whole)) &&
        ((gActors[0].posX.whole + gActors[0].hitboxAX1) >= (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0)) &&
        ((gActors[0].posY.whole + gActors[0].hitboxAY0) >= (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY1)) &&
        ((gActors[actor_index].hitboxAY0 + gActors[actor_index].posY.whole) >= (gActors[0].hitboxAY1 + gActors[0].posY.whole))) {
        return 2;
    }
    return 0;
}

u16 func_8005D338(u16 actor_index) {
    return gActors[actor_index].unk_170_u16[1] & 0x1FFF;
}

s32 func_8005D370(u16 actor_index, u16 arg1) {
    if (arg1 == func_8005D338(actor_index)) {
        return 0;
    }
    else {
        gActors[actor_index].unk_170 = arg1;
        return 1;
    }
}

void func_8005D3D8(u16 actor_index) {
    gActors[actor_index].unk_170_u16[1] &= 0x1FFF;
}

u16 func_8005D418(u16 actor_index) {
    return gActors[actor_index].unk_170_u16[1] & 0xA000;
}

void func_8005D450(u16 actor_index) {
    s16* graphic_list;

    if (func_8005D338(actor_index) != 0) {
        if (func_8005D338(actor_index) == 0x1000) {
            graphic_list = gActors[actor_index].graphicList;
        }
        else {
            graphic_list = gActors[actor_index].graphicLists[func_8005D338(actor_index)];
        }
        if (gActors[actor_index].unk_170_s8[1] == 0x7F) {
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].unk_170_s8[0] = 0x7F;
            while (graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 2] > 0) {
                gActors[actor_index].unk_170_s8[1]++;
            }
        }
        gActors[actor_index].graphicIndex = graphic_list[gActors[actor_index].unk_170_s8[1] * 2];
        if (!(gActors[actor_index].unk_170_u16[1] & 0x4000)) {
            if (gActors[actor_index].unk_170_s8[0] < 0x7F) {
                gActors[actor_index].unk_170_s8[0]++;
            }
        }
        if (gActors[actor_index].unk_170_s8[0] >= graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 1]) {
            if (graphic_list[gActors[actor_index].unk_170_s8[1] * 2 + 2] == 0) {
                gActors[actor_index].unk_170_u16[1] |= 0xC000;
            }
            else {
                gActors[actor_index].unk_170_s8[1]++;
                gActors[actor_index].unk_170_s8[0] = 0;
            }
            if (graphic_list[gActors[actor_index].unk_170_s8[1] * 2] < 0) {
                gActors[actor_index].unk_170_s8[1] += graphic_list[gActors[actor_index].unk_170_s8[1] * 2];
                gActors[actor_index].unk_170_u16[1] |= 0x2000;
            }
        }
    }
}
