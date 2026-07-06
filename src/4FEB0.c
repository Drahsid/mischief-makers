#include "common.h"
#include "boot.h"

typedef struct {
    s8 pad0[0x9];
    s8 unk9;
    s8 padA[0x1];
    s8 unkB;
    s8 padC[0x2];
    s8 unkE;
} Unk800D4000;

extern Actor2Func D_800D3EB0[];
extern Actor2Func D_800D3F10[];
extern Actor2Func D_800D3F70[];
extern Unk800D4000 D_800D4000;
extern s8* D_800D410C[];
extern s16 D_800D4130[];
extern s16 D_800D4134;
extern s16 D_800D4138;
extern s16 D_800D413C[];
extern s32 D_800D57E0;
extern s32 D_800E3630[]; // could be array of structs of length 0x28

extern u16 D_801373D8;
extern s16 D_801373EE;
extern s8 D_801373F3;

s32 func_80049040(u16);
void func_80055C2C(u16, u16);
u8 func_8001FCA0(u16 arg0, s16 arg1, s16 arg2);

s32 func_8004F2B0(u16 actor_index) {
    s32 pad;

    if (!(D_801370CE & gButton_B)) {
        return 0;
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    gActors[actor_index].unk_140_u8[0] = func_80048C28(0);
    if (!(D_801373D8 & ~0x80)) {
        return 1;
    }
    return 2;
}

s32 func_8004F35C(u16 actor_index, u32* arg1) {
    if (func_8005D418(actor_index) != 0) {
        gActors[actor_index].unk_12F_u8 = 0;
        Sound_PlaySfx(0xAD);
        return 1;
    }
    *arg1 += 1;
    if (!(*arg1 & 0x40000000)) {
        if ((*arg1 & 0x3FFFFFFF) >= 0x10) {
            if (func_8005D338(actor_index) == 0x6B) {
                Sound_PlaySfx(0xB4);
            }
            else {
                Sound_PlaySfx(0xCA);
            }
            *arg1 |= 0x40000000;
        }
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 0)) {
        return 0;
    }
    if (!(*arg1 & 0x80000000)) {
        if (!(D_801370CE & gButton_B)) {
            return 0;
        }
        *arg1 |= 0x80000000;
    }
    if (!(D_801370CC & gButton_B)) {
        return 0;
    }
    gActors[actor_index].unk_170_s8[0] = 0x7F;
    *arg1 += 4;
    return 0;
}

void func_8004F514(u16 actor0, u16 actor1) {
    gActors[actor0].flags &= ~ACTOR_FLAG_ATTACHED;
    if (actor1 != 0xFFFF) {
        if (gActors[actor1].flags & ACTOR_FLAG_ACTIVE) {
            gActors[actor1].flags_098 &= ~ACTOR_FLAG3_UNK9;
        }
        if (actor0 == 0) {
            gActors[actor0].unk_140_u16[1] = gActors[actor0].unk_0D6;
            gActors[actor0].unk_140_u8[1] = 0x1E;
        }
    }
}

void func_8004F5B0(u16 actor_index) {
    switch (gActors[actor_index].unk_140_u16[1]) {
    case 0:
        gActors[actor_index].unk_140_u16[1] = 1;
        break;
    case 8:
        gActors[actor_index].unk_140_u16[1] = 2;
        break;
    default:
        gActors[actor_index].unk_140_u16[1] = 0;
        break;
    }
}

u16 func_8004F614(u16 actor_index, s32 arg1, s32 arg2, s16 arg3) {
    s32 sp34[5];
    u16 temp_s0;
    u16 index;
    s32 var_v0;

    temp_s0 = gActors[actor_index].unk_0D6;
    index = gActors[actor_index].unk_140_u16[1];
    if (index > 2) {
        index = 0;
    }
    sp34[0] = 0x12;
    sp34[1] = D_800D413C[2 * index];
    sp34[2] = 1;
    sp34[4] = 0x8022D4E8;

    func_80059D88(actor_index, sp34, 0, 3.0f);
    gActors[actor_index].flags &= ~ACTOR_FLAG_ATTACHED;
    if (temp_s0 == 0xFFFF) {
        return temp_s0;
    }
    if (!(gActors[temp_s0].flags & ACTOR_FLAG_ACTIVE)) {
        return 0xFFFF;
    }
    func_8004F514(actor_index, temp_s0);
    gActors[temp_s0].flags_098 |= ACTOR_FLAG3_UNK10;
    gActors[temp_s0].unk_0DC = 0xC0;
    gActors[temp_s0].unk_0DD = 0x19;
    gActors[temp_s0].pendingDamage = arg3;
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[temp_s0].unk_0F8.raw = arg1;
    }
    else {
        gActors[temp_s0].unk_0F8.raw = -arg1;
    }
    gActors[temp_s0].unk_0FC.raw = arg2;
    if (temp_s0 == 0) {
        gActors[temp_s0].unk_13C_s16[1] = arg3;
        var_v0 = func_8005C774(2);
        func_8005C520(var_v0 + 1, 6);
    }
    return temp_s0;
}

s32 func_8004F7D8(u16 actor_index) {
    u16 index;
    s32 temp_t5;
    s32 var_a0;
    s32 var_a1;
    s32 var_t0;
    s32 temp_a3;
    s32 temp_2;
    s32 sp28;
    s32 temp_3;

    index = gActors[actor_index].unk_0D6;
    func_8002877C(index);
    gActors[actor_index].flags_098 |= gActors[index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    sp28 = gActors[index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    if (func_8005C6D0(((gActors[index].posX.raw + (gScreenPosCurrentX.whole << 0x10)) - (gScreenPosNextX.whole << 0x10)) - gActors[index].unk_104) >= 0x10000) {
        gActors[actor_index].posX.raw = ((gActors[actor_index].posX.raw + gActors[index].posX.raw + (gScreenPosCurrentX.whole << 0x10)) - gActors[index].unk_104) - (gScreenPosNextX.whole << 0x10);
    }
    var_a0 = gScreenPosCurrentY.whole << 0x10;\
    var_a1 = gScreenPosNextY.whole << 0x10;
    temp_2 = gActors[index].posY.raw;
    temp_3 = gActors[index].unk_108;
    if (((var_a1 + temp_3) != (temp_2 + var_a0)) && !(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
        gActors[actor_index].posY.raw += ((temp_2 + var_a0) - temp_3) - var_a1;
    }
    gActors[index].unk_104 = gActors[actor_index].posX.raw;
    gActors[index].unk_108 = gActors[actor_index].posY.raw;
    gActors[index].unk_10C = gActors[actor_index].posZ.raw - 0x4000;
    temp_t5 = gActors[actor_index].unk_140_u16[1] * 2;
    var_a1 = D_800D4130[temp_t5];
    var_t0 = D_800D413C[temp_t5];
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        if ((var_a1 + gActors[index].hitboxBX0) < D_800D4130[temp_t5 + 1]) {
            var_a1 = D_800D4130[temp_t5 + 1] - gActors[index].hitboxBX0;
        }
    }
    else {
        var_a1 = -var_a1;
        if ((var_a1 + gActors[index].hitboxBX1) > -D_800D4130[temp_t5 + 1]) {
            var_a1 = -D_800D4130[temp_t5 + 1] - gActors[index].hitboxBX1;
        }
    }
    if ((var_t0 + gActors[index].hitboxBY1) < D_800D413C[temp_t5 + 1]) {
        var_t0 = D_800D413C[temp_t5 + 1] - gActors[index].hitboxBY1;
    }

    temp_a3 = 0x40000 - (func_8005D1B0(index) << 0xE);
    var_a1 <<= 0x10;
    var_t0 <<= 0x10;
    if (temp_a3 >= func_8005C6D0(var_a1 - D_801373E0.unk_00[0].raw)) {
        D_801373E0.unk_00[0].raw = var_a1;
    }
    else if (D_801373E0.unk_00[0].raw < var_a1) {
        D_801373E0.unk_00[0].raw += temp_a3;
    }
    else {
        D_801373E0.unk_00[0].raw -= temp_a3;
    }

    if (temp_a3 >= func_8005C6D0(var_t0 - D_801373E0.unk_00[1].raw)) {
        D_801373E0.unk_00[1].raw = var_t0;
    }
    else if (D_801373E0.unk_00[1].raw < var_t0) {
        D_801373E0.unk_00[1].raw += temp_a3;
    }
    else {
        D_801373E0.unk_00[1].raw -= temp_a3;
    }

    var_a0 = D_801373E0.unk_00[0].raw;
    var_a1 = D_801373E0.unk_00[1].raw;
    gActors[index].unk_104 += var_a0;
    gActors[index].unk_108 += var_a1;
    return sp28;
}

void func_8004FB30(u16 actor_index, s32 index) {
    s32 temp_f16;
    s8* temp_v0;
    u16 actor_1;
    s8 temp;

    temp_v0 = D_800D410C[index];
    if (temp_v0 != NULL) {
        actor_1 = gActors[actor_index].unk_0D6;
        gActors[actor_1].unk_104 = gActors[actor_index].posX.raw;
        gActors[actor_1].unk_108 = gActors[actor_index].posY.raw;
        temp_f16 = temp_v0[gActors[actor_index].unk_170_s8[1] * 2] << 0x10;
        temp_f16 *= gActors->unk_120;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_1].unk_104 += temp_f16;
        }
        else {
            gActors[actor_1].unk_104 -= temp_f16;
        }
        temp_f16 = temp_v0[gActors[actor_index].unk_170_s8[1] * 2 + 1] << 0x10;
        temp_f16 *= gActors->unk_120;
        gActors[actor_1].unk_108 += temp_f16;
    }
}

s32 func_8004FC68(u16 actor_0, u16 actor_1) {
    s16 var_v0;
    s16 var_t0;

    var_v0 = D_800D4130[0];
    var_t0 = D_800D413C[0];
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        if ((var_v0 + gActors[actor_1].hitboxBX0) < D_800D4130[1]) {
            var_v0 = D_800D4130[1] - gActors[actor_1].hitboxBX0;
        }
        var_v0 += gActors[actor_1].hitboxBX1;
        if (gActors[actor_0].unk_140_u8[0] != 0) {
            var_v0 -= 2;
        }
    }
    else {
        var_v0 = -var_v0;
        if ((var_v0 + gActors[actor_1].hitboxBX1) > -D_800D4130[1]) {
            var_v0 = -D_800D4130[1] - gActors[actor_1].hitboxBX1;
        }
        var_v0 += gActors[actor_1].hitboxBX0;
        if (gActors[actor_0].unk_140_u8[0] != 0) {
            var_v0 += 2;
        }
    }
    if ((var_t0 + gActors[actor_1].hitboxBY1) < D_800D413C[1]) {
        var_t0 = D_800D413C[1] - gActors[actor_1].hitboxBY1;
    }
    var_t0 += gActors[actor_1].hitboxBY1;
    if (func_8001FCA0(actor_1, gActors[actor_0].posX.whole + var_v0, gActors[actor_0].posY.whole + var_t0) & 0x80) {
        return 1;
    }
    return 0;
}

void func_8004FDF8(u16 actor_index) {
    u16 index;

    func_8004F7D8(actor_index);
    index = gActors[actor_index].unk_0D6;
    if (!(D_80137458 & 0x10000) && (func_80049040(actor_index) != 0)) {
        func_8005D370(actor_index, 0x28);
        gActors[actor_index].state = 0x1A;
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_170 = 0x65;
            Sound_PlaySfx(0xB3);
            gActors[actor_index].stateUpper += 1;
        }
        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 7)) {
            Sound_PlaySfx(0xC2);
        }
        if ((D_801373E0.unk_12 == 0) && (D_801373E0.unk_10 >= 5) && (D_801373E0.unk_10 < 0xC) && (gActors[actor_index].var_154 < 8)) {
            gActors[index].flags_098 |= ACTOR_FLAG3_UNK17;
            gActors[actor_index].var_154 += 1;
        }
        gActors[actor_index].var_150 += gActors[actor_index].var_154;
        gActors[actor_index].unk_170_s8[0] += D_801373E0.unk_0E / (0x3E8 / ((gActiveFrames & 1) + 4));
        gActors[actor_index].var_150 = gActors[actor_index].var_150 % 4;
        if (func_8005D418(actor_index) != 0) {
            if (gActors[actor_index].var_154 != 0) {
                gActors[actor_index].var_154 -= 1;
            }
            func_8005D3D8(actor_index);
            if ((D_801373F0 < 5) || (D_801373F0 >= 0xC) || (D_801373F2 >= 0xE)) {
                gActors[actor_index].unk_170_s8[1] = 0x7F;
                gActors[actor_index].state = 4;
            }
        }
    }
}

void func_800500B0(u16 actor_index) {
    u16 index;
    u16 var_a3;

    func_8004F7D8(actor_index);
    gActors[actor_index].unk_17C = 0;
    index = gActors[actor_index].unk_0D6;
    if (((D_801373D8 & 0x20) || func_8004FC68(actor_index, index)) && gActors[index].unk_0DE != 0x16) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
        if (func_8005D1B0(index) != 2) {
            var_a3 = 0xB;
        }
        else {
            var_a3 = 0x10;
        }
        if ((func_8005D338(actor_index) == 8) || (func_8005D338(actor_index) == 0xD)) {
            if (func_8005D1B0(index) != 2) {
                var_a3 = 9;
            }
            else {
                var_a3 = 0xE;
            }
            func_8005D370(actor_index, var_a3);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        }
    }
    else {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        if (func_8005D1B0(index) != 2) {
            var_a3 = 8;
        }
        else {
            var_a3 = 0xD;
        }
        if ((func_8005D338(actor_index) == 0xB) || (func_8005D338(actor_index) == 0x10)) {
            if (func_8005D1B0(index) != 2) {
                var_a3 = 0xA;
            }
            else {
                var_a3 = 0xF;
            }
            func_8005D370(actor_index, var_a3);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        }
        if (D_801373D8 & 0x10) {
            gActors[actor_index].unk_17C = 1;
            if (func_8005D1B0(index) != 2) {
                var_a3 = 0xC;
            }
            else {
                var_a3 = 0x11;
            }
        }
    }

    if (D_801373E0.unk_78 & 0x10000) {
        if ((D_801373E0.unk_12 == 0) && (D_801373E0.unk_11 < 0xE) && (D_801373E0.unk_10 >= 5) && (D_801373E0.unk_10 < 0xC) && (gActors[actor_index].unk_140_u16[1] == 0)) {
            gActors[actor_index].state = 0x28;
        }
        else {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
                if (func_8005D418(actor_index) != 0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                }
            }
            if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
                if (D_801373D8 & 0x80) {
                    gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                }
                func_8005D370(actor_index, var_a3);
            }
        }
        return;
    }

    gActors[actor_index].unk_12C_u16[0] = 7;
    if ((gActors[actor_index].unk_0A0 & 7) == 7) {
        if (!(gActors[actor_index].unk_0A0 & 0x10)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_a3 = 0x12;
            }
            else {
                var_a3 = 0x13;
            }
            gActors[actor_index].velocityX.raw = -0x6000;
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_a3 = 0x13;
            }
            else {
                var_a3 = 0x12;
            }
            gActors[actor_index].velocityX.raw = 0x6000;
        }
        if (gActors[actor_index].unk_140_u16[1] == 1) {
            var_a3 += 2;
        }
        if ((var_a3 != func_8005D338(actor_index)) && !(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
            func_8005D370(actor_index, var_a3);
        }
    }
    if (gActors[actor_index].velocityX.raw != 0) {
        if ((D_801373D8 & 0x80) && (func_8005C6D0(gActors[actor_index].velocityX.raw) > func_80048C94(1))) {
            gActors[actor_index].state = 0xA;
            return;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
    }

    if (D_801373D8 & 0x80) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x19;
        }
        else {
            gActors[actor_index].unk_170 = 0x18;
        }
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
    }
    if (var_a3 != func_8005D338(actor_index)) {
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
            }
        }
        else if (gActors[actor_index].velocityX.raw == 0) {
            func_8005D370(actor_index, var_a3);
        }
    }
}

void func_8005060C(u16 actor_index) {
    u16 index;

    gActors[actor_index].unk_12C_u16[0] = 7;
    index = gActors[actor_index].unk_0D6;
    func_8004F7D8(actor_index);
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
    if (gActors[actor_index].stateUpper == 0) {
        func_8005A4B0(actor_index, 1.0f);
        if (func_8005D1B0(index) != 2) {
            Sound_PlaySfx(0xAC);
        }
        else {
            Sound_PlaySfx(0xAC);
        }
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x2C;
        }
        else {
            gActors[actor_index].unk_170 = 0x2B;
        }
        gActors[actor_index].stateUpper += 1;
    }
    if (gActors[actor_index].unk_170_s8[1] == 1) {
        gActors[actor_index].unk_170_s8[0] = 0;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].unk_170_s8[1] = 2;
        }
        else {
            gActors[actor_index].var_150 = gActors[actor_index].var_150 - 1;
        }
    }
    if (func_8005D418(actor_index) != 0) {
        gActors[actor_index].state = 4;
    }
}

void func_8005074C(u16 actor_index) {
    u16 index;
    s32 var_a1;

    gActors[actor_index].unk_12C_u16[0] = 7;
    func_8004F7D8(actor_index);
    var_a1 = func_80048C94(1);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a1 = -var_a1;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, var_a1, func_8005C6D0(var_a1) / 12);
    index = gActors[actor_index].unk_0D6;
    if (((D_801373D8 & 0x20) || ((func_8004FC68(actor_index, index) != 0))) && (gActors[index].unk_0DE != 0x16)) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
        if (func_8005D338(actor_index) != 0x20) {
            gActors[actor_index].unk_170_u16[1] = 0x20;
        }
    }
    else {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        if (func_8005D338(actor_index) != 0x1F) {
            gActors[actor_index].unk_170_u16[1] = 0x1F;
        }
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 8))) {
        Sound_PlaySfx(0x53U);
    }
    if (!(D_801373D8 & 3) || (D_801373D8 & 0x80)) {
        gActors[actor_index].state = 4;
    }
}

void func_800508F4(u16 actor_index) {
    gActors[actor_index].unk_12C_u16[0] = 7;
    func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x2F;
        }
        else {
            gActors[actor_index].unk_170 = 0x2E;
        }
        gActors[actor_index].stateUpper = 1;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0) * 2);
    if (gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
        gActors[actor_index].state = 4;
    }
}

void func_800509C0(u16 actor_index) {
    s16 var_a0;
    u16 sp2C;
    s32 sp28;
    s32 temp2;
    s32 temp;

    sp2C = gActors[actor_index].unk_0D6;
    gActors[actor_index].unk_12C_u16[0] = 2;
    sp28 = func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper == 0) {
        Sound_PlaySfx(0x27);
        gActors[actor_index].var_150 = 0x10;
        if (D_801373F0 == 4) {
            if (!(sp28 & 8)) {
                temp = func_80048C94(5);
                temp2 = func_80048C94(9);
                gActors[actor_index].velocityX.raw = temp + (temp2 * (D_801373EE / 100));
                if (func_80048C94(0xA) < gActors[actor_index].velocityX.raw) {
                    gActors[actor_index].velocityX.raw = func_80048C94(0xA);
                }
            }
            gActors[actor_index].stateUpper = 2;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        if (D_801373F0 == 0xC) {
            if (!(sp28 & 4)) {
                temp = func_80048C94(5);
                temp2 = func_80048C94(9);
                gActors[actor_index].velocityX.raw = -(temp + (temp2 * (D_801373EE / 100)));
                if (gActors[actor_index].velocityX.raw < -func_80048C94(0xA)) {
                    gActors[actor_index].velocityX.raw = -func_80048C94(0xA);
                }
            }
            gActors[actor_index].stateUpper = 1;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        gActors[actor_index].unk_0DA = 0;
        gActors[actor_index].unk_0DB = 0x15;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 4;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
        if (!(gActors[actor_index].stateUpper & 0x80)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
                if (gActors[actor_index].unk_140_u8[0] != 0) {
                    gActors[actor_index].hitboxAX1 = (gActors[actor_index].hitboxAX1 + gActors[sp2C].hitboxBX1) - gActors[sp2C].hitboxBX0;
                }
                gActors[actor_index].hitboxAX0 = 0;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
                if (gActors[actor_index].unk_140_u8[0] != 0) {
                    gActors[actor_index].hitboxAX0 = (gActors[actor_index].hitboxAX0 + gActors[sp2C].hitboxBX0) - gActors[sp2C].hitboxBX1;
                }
            }
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 = 0x50;
            }
            else {
                gActors[actor_index].unk_170 = 0x4F;
            }
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
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 = 0x53;
            }
            else {
                gActors[actor_index].unk_170 = 0x52;
            }
        }
        func_8005C098(actor_index, 1);
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 2;
        gActors[actor_index].unk_180_u8[2] = (s8) D_801373F0;
        D_801373F2 = 0x64;
        D_801373F3 = 1;
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3))) {
        D_801370D2 = 0;
        func_8005C250(actor_index);
    }
    if (D_801373D8 & 0x10) {
        gActors[actor_index].state = 0xA;
        return;
    }
    gActors[actor_index].var_150--;
    if (gActors[actor_index].var_150 < 0xA) {
        gActors[actor_index].unk_12C_u16[0] |= 4;
    }
    if (gActors[actor_index].var_150 < 8) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0));
    }
    if (func_8005C6D0(gActors[actor_index].velocityX.raw) >= 0x30000) {
        temp2 = func_8005C6D0(gActors[actor_index].hitboxAX0);
        temp = func_8005C6D0(gActors[actor_index].hitboxAX1);
        if (temp2 < temp) {
            var_a0 = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1 + 1;
        }
        else {
            var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0) - 1;
        }
        if (func_80012AB4(var_a0, gActors[actor_index].posY.whole) & 0x80) {
            gActors[actor_index].velocityX.raw = (s32) (-gActors[actor_index].velocityX.raw * 0.75);
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].stateLower = 0x13;
            return;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
    }
    if (gActors[actor_index].var_150 == 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        gActors[actor_index].state = 4;
    }
}

void func_80050F3C(u16 actor_index) {
    s32 step;
    s32 sp28;
    u32 orig_flags;
    s32 temp_v0;

    sp28 = func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper < 2) {
        gActors[actor_index].unk_12E_u8 |= 0x80;
        orig_flags = gActors[actor_index].flags;
        temp_v0 = func_8004F2B0(actor_index);
        if (temp_v0 == 1) {
            gActors[actor_index].state = 0x29;
            return;
        }
        else if (temp_v0 == 2) {
            gActors[actor_index].flags = orig_flags;
            gActors[actor_index].unk_140_u8[0] = 4;
            gActors[actor_index].state = 0x27;
            return;
        }
    }
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        Sound_PlaySfx(0xAE);
        Sound_PlaySfx(0xB4);
        func_8005C098(actor_index, 1);
        gActors[actor_index].damage = 0;
        gActors[actor_index].unk_0DA = 1;
        gActors[actor_index].unk_0DB = 0x16;
        gActors[actor_index].hitboxAY0 = gActors[gActors[actor_index].unk_0D6].hitboxBY0 + D_800D4000.unkE;
        gActors[actor_index].hitboxAY1 = D_800D4000.unkB;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].hitboxAX1 = gActors[gActors[actor_index].unk_0D6].hitboxBX1 + D_800D4000.unk9;
            gActors[actor_index].hitboxAX0 = 0;
            if (!(sp28 & 8)) {
                gActors[actor_index].velocityX.raw = func_80048C94(11);
            }
            gActors[actor_index].unk_180_u8[2] = 4;
        }
        else {
            gActors[actor_index].hitboxAX1 = 0;
            gActors[actor_index].hitboxAX0 = gActors[gActors[actor_index].unk_0D6].hitboxBX0 - D_800D4000.unk9;
            if (!(sp28 & 4)) {
                gActors[actor_index].velocityX.raw = -func_80048C94(11);
            }
            gActors[actor_index].unk_180_u8[2] = 12;
        }
        gActors[actor_index].unk_170 = 0x5D;
        gActors[actor_index].unk_17C = 2;
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || (gActors[actor_index].var_150 != 0)) {
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].unk_104 = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_108 = gActors[actor_index].velocityY.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 >= 5) {
            gActors[actor_index].unk_170_u16[1] &= 0xBFFF;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_108;
        }
        else {
            return;
        }
    }
    gActors[actor_index].unk_0F8.raw = 0x30000;
    gActors[actor_index].unk_0FC.raw = 0x30000;
    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && (func_8005C6D0(gActors[actor_index].velocityX.raw) > 0x10000)) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }
    if (gActors[actor_index].stateUpper == 1) {
        if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 4))) {
            D_801370D2 = 0;
            func_8005C250(actor_index);
        }
        step = func_80048C94(0) / 8;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_170 = 0x5E;
            gActors[actor_index].unk_17C_s8[1] = 3;
            gActors[actor_index].stateUpper = 2;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
        }
    }
    else if (gActors[actor_index].stateUpper == 2) {
        step = func_80048C94(0);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 3;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
            gActors[actor_index].state = 4;
        }
        if (func_80049040(actor_index) != 0) {
            gActors[actor_index].state = 0x1A;
        }
    }
}

void func_80051324(u16 actor_index) {
    s16 var_a0;
    s32 var_a3;
    u16 index;
    s32 pad2;

    index = gActors[actor_index].unk_0D6;
    func_8004F7D8(actor_index);
    if (func_800491B8(actor_index, 0, -0xE) != 0) {
        gActors[actor_index].state = 6;
    }
    else {
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
            gActors[actor_index].var_150 = 0x10;
            if (gActors[actor_index].stateLower == 0x13) {
                gActors[actor_index].var_150 = 0x20;
            }
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].stateUpper = 1;
            switch (D_801373F0) {
            case 0:
                if ((-func_80048C94(0x1C) * 0.25) <= gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = func_80048C94(0x1C) * 1.5;
                }
                else {
                    gActors[actor_index].velocityY.raw = func_80048C94(0x1C);
                }
                gActors[actor_index].var_150 = 0x18;
                gActors[actor_index].var_158 = func_80048C94(0x13) * 0.358;
                gActors[actor_index].unk_170 = 0x55;
                break;
            case 8:
                if ((func_80048C94(0x1C) + -0xC0000) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw -= func_80048C94(0x1C);
                }
                if ((-func_80048C94(0x1C) * 2) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = -func_80048C94(0x1C) * 2;
                }
                gActors[actor_index].unk_170 = 0x58;
                break;
            default:
                gActors[actor_index].damage = 0;
                gActors[actor_index].unk_0DA = 0;
                gActors[actor_index].unk_0DB = 0x15;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 4;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
                if (!(D_801373F0 & 8)) {
                    gActors[actor_index].hitboxAX0 = 0;
                    gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
                    if (gActors[actor_index].velocityX.raw < func_80048C94(0x1C)) {
                        gActors[actor_index].velocityX.raw = func_80048C94(0x1C);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        if (gActors[actor_index].unk_140_u8[0] != 0) {
                            gActors[actor_index].hitboxAX1 = (gActors[actor_index].hitboxAX1 + gActors[index].hitboxBX1) - gActors[index].hitboxBX0;
                        }
                        gActors[actor_index].unk_170 = 0x4F;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x52;
                    }
                }
                else {
                    gActors[actor_index].hitboxAX1 = 0;
                    gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
                    if (-func_80048C94(0x1C) < gActors[actor_index].velocityX.raw) {
                        gActors[actor_index].velocityX.raw = -func_80048C94(0x1C);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].unk_170 = 0x52;
                    }
                    else {
                        if (gActors[actor_index].unk_140_u8[0] != 0) {
                            gActors[actor_index].hitboxAX0 = (gActors[actor_index].hitboxAX0 + gActors[index].hitboxBX0) - gActors[index].hitboxBX1;
                        }
                        gActors[actor_index].unk_170 = 0x4F;
                    }
                }
                if ((func_80048C94(0xF) * 1.5) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = func_80048C94(0xF) * 1.5;
                }
                if (gActors[actor_index].velocityY.raw < 0) {
                    gActors[actor_index].velocityY.raw = 0;
                }
                break;
            }

            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 += 1;
            }
            func_8005C098(actor_index, 1);
            gActors[actor_index].unk_180_u8[2] = D_801373F0;
            gActors[actor_index].var_15C = D_801373F0;
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            if (gActors[actor_index].stateLower == 0x13) {
                gActors[actor_index].unk_12E_u8 |= 0x40;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
            Sound_PlaySfx(0x81);
        }
        else {
            if (gActors[actor_index].stateLower == 0x12) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, gActors[actor_index].var_158);
                if (func_8005C6D0(gActors[actor_index].velocityX.raw) > func_80048C94(0x1C)) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x2000);
                }
                gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, func_80048C94(0x13), func_80048C94(0x13) / 16);
                if ((func_8005D338(actor_index) != 0x28) && (func_8005D338(actor_index) != 0x29) && func_8005D418(actor_index)) {
                    if (gActors[actor_index].unk_140_u8[0] == 0) {
                        gActors[actor_index].unk_170 = 0x29;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x28;
                    }
                }
                if (gActors[actor_index].var_150 < 4.0) {
                    gActors[actor_index].unk_12C_u16[0] |= 4;
                }
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0) / 2);
                    gActors[actor_index].unk_12C_u16[0] |= 8;
                }
                else if ((gActors[actor_index].var_15C != 8) && (gActors[actor_index].var_150 >= 9) && (func_8005C6D0(gActors[actor_index].velocityX.raw) >= 0x28000)) {
                    if (func_8005C6D0(gActors[actor_index].hitboxAX0) < func_8005C6D0(gActors[actor_index].hitboxAX1)) {
                        var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1) + 1;
                    }
                    else {
                        var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0) - 1;
                    }
                    if (func_80012AB4(var_a0, gActors[actor_index].posY.whole) & 0x80) {
                        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.75;
                        gActors[actor_index].var_150 += 0x10;
                        gActors[actor_index].stateUpper = 3;
                        gActors[actor_index].stateLower = 0x13;
                        return;
                    }
                    else {
                        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                    }
                }
            }
            if (gActors[actor_index].stateLower == 0x13) {
                var_a3 = func_80048C94(0);
                if (gActors[actor_index].stateUpper == 2) {
                    var_a3 *= 4;
                }
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, var_a3);
                if (gActors[actor_index].stateUpper == 3) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13) / 2);
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, var_a3 * 2);
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
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = 0x1A;
            }
        }

        if ((func_8005D338(actor_index) != 0x28) && (func_8005D338(actor_index) != 0x29) && (gActors[actor_index].unk_170_s8[0] == 0)) {
            if ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3) || (gActors[actor_index].unk_170_s8[1] == 5)) {
                D_801370D2 = 0;
                func_8005C250(actor_index);
            }
        }
    }
}

void func_80051C48(u16 actor_index) {
    s32 sp34[5];
    s32 angle;
    u16 index;

    index = gActors[actor_index].unk_0D6;
    func_8004F7D8(actor_index);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (((D_801373D8 & 0x20) || (func_8004FC68(actor_index, index))) && (gActors[index].unk_0DE != 0x16)) {
            gActors[actor_index].unk_140_u8[0] = 0;
            gActors[actor_index].unk_140_u16[1] = 1;
            func_8005D370(actor_index, 0x23);
        }
        else {
            gActors[actor_index].unk_140_u8[0] = 4;
            gActors[actor_index].unk_140_u16[1] = 0;
            func_8005D370(actor_index, 0x22);
        }
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, func_80048C94(0) / 2);
        if (func_8005D418(actor_index) == 0) {
            break;
        }
        gActors[actor_index].velocityY.raw = func_80048C94(0xF);
        sp34[0] = gActors[actor_index].posX.whole;
        sp34[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 4;
        sp34[2] = gActors[actor_index].posZ.whole + 1;
        sp34[3] = 0x1AA;
        sp34[4] = 0;
        func_80059F30(actor_index, sp34, 1.0f, 0x14);
        gActors[actor_index].stateUpper = 0x14;
        break;
    case 10:
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            func_8005D370(actor_index, 0x23);
        }
        else {
            func_8005D370(actor_index, 0x22);
        }
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 0xB;
        break;
    case 11:
        if (func_8005D418(actor_index) == 0) {
            break;
        }
        switch (func_80048C28(1)) {
        case 4:
            angle = 0;
            break;
        case 6:
            angle = 0x380;
            break;
        case 8:
            angle = 0x380;
            break;
        default:
            angle = 0x80;
            break;
        }
        gActors[actor_index].velocityX.raw = func_8005C6D0(func_80048C94(0xF) * COS(angle));
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        gActors[actor_index].velocityY.raw = func_80048C94(0xF) * SIN(angle);
        gActors[actor_index].stateUpper = 0x14;
        break;
    }

    if (gActors[actor_index].stateUpper == 0x14) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x26;
        }
        else {
            gActors[actor_index].unk_170 = 0x25;
        }
        gActors[actor_index].unk_17C = 4;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        Sound_PlaySfx(0x24);
        gActors[actor_index].state = 0x1A;
    }
}

void func_80052004(u16 actor_index) {
    u16 index;
    s32 target;
    s32 step;

    index = gActors[actor_index].unk_0D6;
    if (((D_801373D8 & 0x20) || (func_8004FC68(actor_index, index))) && (gActors[index].unk_0DE != 0x16)) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
    }
    else if (D_801373D8 & 0x3) {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
    }
    func_8004F7D8(actor_index);
    if (func_800491B8(actor_index, 0, -0xE) != 0) {
        gActors[actor_index].state = 6;
    }
    else {
        if (gActors[actor_index].stateLower != 0x1D) {
            gActors[actor_index].unk_12C_u16[0] |= 4;
        }
        if (D_801373D8 & 0x80) {
            if ((gActors[actor_index].stateLower != 0x1A) && (gActors[actor_index].stateLower != 0x1D)) {
                gActors[actor_index].stateLower = 0x1A;
            }
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                func_8005D370(actor_index, 0x1C);
            }
            else {
                func_8005D370(actor_index, 0x1B);
            }
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
        if (func_8005D338(actor_index) == 0x1B || func_8005D338(actor_index) == 0x1C) {
            if (func_8005D418(actor_index) != 0) {
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    gActors[actor_index].unk_170 = 0x26;
                }
                else {
                    gActors[actor_index].unk_170 = 0x25;
                }
                gActors[actor_index].unk_170_s8[1] = 2;
            }
        }

        switch (gActors[actor_index].stateUpper) {
        case 0:
            if (gActors[actor_index].unk_140_u8[0] != 0) {
                gActors[actor_index].unk_140_u8[0] = 4;
            }
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].stateUpper = 1;
            /* fallthrough */
        case 1:
            gActors[actor_index].var_150--;
            if ((gActors[actor_index].stateLower != 0x1B) && 
                (gActors[actor_index].velocityY.raw > 0) && 
                (gActors[actor_index].var_150 > 0) &&
                (D_801370CC & gButton_A)) {
                break;
            }
            gActors[actor_index].stateUpper = 2;
            /* fallthrough */
        case 2:
            if (gActors[actor_index].stateLower == 0x1A) {
                if (!(D_801373D8 & 0x10)) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13));
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13) * 1.5);
                }
            }
            else if (gActors[actor_index].stateLower == 0x1B) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
            }
            else if (gActors[actor_index].stateLower == 0x1C) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13));
            }
            else if (gActors[actor_index].stateLower == 0x1D) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x60000, func_80048C94(0x13));
                if (gActors[actor_index].velocityY.raw < (-func_80048C94(0x1C) * 0.7)) {
                    gActors[actor_index].stateLower = 0x1A;
                }
            }
            break;
        }

        if (gActors[actor_index].velocityY.raw > 0) {
            if ((func_8005D338(actor_index) == 0x25) || (func_8005D338(actor_index) == 0x26) || (func_8005D418(actor_index) != 0)) {
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    if (func_8005D338(actor_index) == 0x25) {
                        gActors[actor_index].unk_170_u16[1] = 0x26;
                    }
                    else {
                        func_8005D370(actor_index, 0x26);
                    }
                }
                else if (func_8005D338(actor_index) == 0x26) {
                    gActors[actor_index].unk_170_u16[1] = 0x25;
                }
                else {
                    func_8005D370(actor_index, 0x25);
                }
            }
        }
        else if ((func_8005D338(actor_index) == 0x25) || (func_8005D338(actor_index) == 0x26) || (func_8005D338(actor_index) == 0x28) || (func_8005D338(actor_index) == 0x29) || (func_8005D418(actor_index) != 0)) {
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                if (func_8005D338(actor_index) == 0x28) {
                    gActors[actor_index].unk_170_u16[1] = 0x29;
                }
                else {
                    func_8005D370(actor_index, 0x29);
                }
            }
            else if (func_8005D338(actor_index) == 0x29) {
                gActors[actor_index].unk_170_u16[1] = 0x28;
            }
            else {
                func_8005D370(actor_index, 0x28);
            }
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 1;
        }
        if (gActors[actor_index].stateLower != 0x1B) {
            step = func_80048C94(0x14) / 10;
            if (D_801373D8 & 2) {
                target = func_80048C94(0x14);
                if (target < gActors[actor_index].velocityX.raw) {
                    target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw < 0) {
                    step *= 2;
                }
            }
            if (D_801373D8 & 1) {
                target = -func_80048C94(0x14);
                if (gActors[actor_index].velocityX.raw < target) {
                    target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw > 0) {
                    step *= 2;
                }
            }
            if (!(D_801373D8 & 3)) {
                if (gActors[actor_index].stateLower == 0x1A) {
                    target = 0;
                }
                if (gActors[actor_index].stateLower == 0x1C) {
                    target = gActors[actor_index].velocityX.raw;
                }
            }
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, target, step);
        }
    }
}

void func_80052780(s32 arg0, s32 arg1) {
}

void func_8005278C(u16 actor_0, u16 actor_1) {
    if (gActors[actor_1].unk_0DE == 0x16) {
        gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].unk_140_u16[1] = 0;
    }
    func_8004F7D8(actor_0);
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_0].unk_12C_u16[0] |= 2;
    }
    if (gActors[actor_0].stateUpper == 0) {
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 0x3C;
        }
        else {
            gActors[actor_0].unk_170 = 0x3F;
        }
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].unk_170 += 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].stateUpper = 1;
    }
    if (func_8005D418(actor_0)) {
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = 4;
        }
        else {
            gActors[actor_0].state = 0x1D;
        }
    }
}

s32 func_800528F4(u16 actor_0, u16 actor_1) {
    if (actor_1 == 0xFFFF) {
        return 0;
    }
    if (!(gActors[actor_1].flags & ACTOR_FLAG_ACTIVE) || (gActors[actor_1].flags_098 & ACTOR_FLAG3_UNK9) || (gActors[actor_1].health <= 0)) {
        func_8004F514(actor_0, actor_1);
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = 3;
        }
        else {
            gActors[actor_0].state = 0x16;
        }
        return 1;
    }
    else {
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK9;
        gActors[actor_1].unk_0D6 = actor_0;
        if (!(gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK16)) {
            return 0;
        }
        gActors[actor_1].pendingDamage = 0;
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK10;
        func_8004F514(actor_0, actor_1);
        gActors[actor_0].velocityX.raw = gActors[actor_0].unk_0F8.raw;
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = 3;
        }
        else {
            gActors[actor_0].velocityY.raw = gActors[actor_0].unk_0FC.raw;
            gActors[actor_0].state = 0x16;
        }
        return 2;
    }
}

s32 func_80052A6C(u16 actor_0, u16 actor_1) {
    s32 var_v1;
    s32 temp_v0;
    s32 pad1;

    if (D_801373F2 != 0) {
        return 0;
    }

    func_8005C098(actor_0, 1);
    gActors[actor_0].unk_180_u8[2] = D_801373F0;
    switch (D_801373F0) {
        case 0:
            var_v1 = 0x55;
        break;
        case 8:
            var_v1 = 0x58;
        break;
        default:
            if (!(D_801373F0 & 8)) {
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    var_v1 = 0x4F;
                }
                else {
                    var_v1 = 0x52;
                }
            }
            else {
                var_v1 = !(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) ? 0x52 : 0x4F;
            }
        break;
    }
    if (gActors[actor_0].unk_140_u8[0] == 0) {
        var_v1 += 1;
    }
    if (gActors[actor_0].unk_140_u8[0] == 8) {
        if ((var_v1 == 0x52) || (var_v1 == 0x55)) {
            var_v1 = 0;
        }
        else {
            var_v1 += 2;
        }
    }
    if (var_v1 != 0) {
        gActors[actor_0].flags |= ACTOR_FLAG_UNK6;
        if (!(gActors[actor_1].unk_0DF & 8) && (var_v1 == 0x58)) {
            temp_v0 = func_8005D338(actor_0);
            if (var_v1 != temp_v0) {
                Sound_PlaySfx(0xB3);
            }
        }
        gActors[actor_0].unk_170 = var_v1;
    }
    if (actor_1 == 0xFFFF) {
        return 2;
    }
    else {
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK17;
        return 1;
    }
}

void func_80052C4C(u16 actor_0, u16 actor_1) {
    if (gActors[actor_1].graphicFlags & ACTOR_GFLAG_UNK11) {
        gActors[actor_0].posZ.raw = gActors[actor_1].unk_188 + 0x10000;
    }
    else {
        gActors[actor_0].posZ.raw = gActors[actor_1].posZ.raw + 0x10000;
    }
}

void func_80052CD0(u16 actor_0, u16 actor_1) {
    s16 pos_x;
    s16 pos_y;
    s32 flags_098_mask;
    s32 var_t1;
    s32 var_t0;
    s32 offset;

    if (actor_1 == 0xFFFF) {
        if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            pos_x = 0;
            if (gActors[actor_0].unk_140_u16[1] == 0) {
                pos_y = 2;
                flags_098_mask = ACTOR_FLAG3_UNK4;
            }
            else {
                pos_x = 2;
                if (gActors[actor_0].unk_140_u16[1] == 8) {
                    pos_x = 0;
                    pos_y = -2;
                    flags_098_mask = ACTOR_FLAG3_UNK5;
                }
                else {
                    pos_y = 0;
                    flags_098_mask = (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
                }
            }
            if (!(gActors[actor_0].flags_098 & flags_098_mask)) {
                if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
                    pos_x = -pos_x;
                }
                gActors[actor_0].velocityX.whole = pos_x;
                gActors[actor_0].velocityY.whole = pos_y;
            }
            else {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityY.raw = 0;
            }
        }
    }
    else {
        func_80052C4C(actor_0, actor_1);
        offset = 0x10000;
        if (!(gActors[actor_0].unk_140_u16[1] & 7)) {
            if ((gActors[actor_0].hitboxBX0 + gActors[actor_0].posX.whole < gActors[actor_1].hitboxBX0 + gActors[actor_1].posX.whole) && 
                (gActors[actor_0].hitboxBX1 + gActors[actor_0].posX.whole < gActors[actor_1].hitboxBX1 + gActors[actor_1].posX.whole)) {
                D_801373E0.unk_00[0].raw -= offset;
            }
            if ((gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX1 < gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX1) && 
                (gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX0 < gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX0)) {
                D_801373E0.unk_00[0].raw += offset;
            }
            var_t1 = 0;
            if (gActors[actor_0].unk_140_u16[1] == 0) {
                var_t0 = (gActors[actor_0].hitboxBY0 - gActors[actor_1].hitboxBY1) << 0x10;
            }
            else {
                var_t0 = (gActors[actor_0].hitboxBY1 - gActors[actor_1].hitboxBY0) << 0x10;
            }
        }
        else {
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                var_t1 = (gActors[actor_0].hitboxBX1 - gActors[actor_1].hitboxBX0) << 0x10;
            }
            else {
                var_t1 = (gActors[actor_0].hitboxBX0 - gActors[actor_1].hitboxBX1) << 0x10;
            }
            var_t0 = 0;
            if ((gActors[actor_0].hitboxBY1 + gActors[actor_0].posY.whole < gActors[actor_1].hitboxBY1 + gActors[actor_1].posY.whole) && 
                (gActors[actor_0].hitboxBY0 + gActors[actor_0].posY.whole < gActors[actor_1].hitboxBY0 + gActors[actor_1].posY.whole)) {
                D_801373E0.unk_00[1].raw -= offset;
            }
            if ((gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0 < gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY0) && 
                (gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY1 < gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY1)) {
                D_801373E0.unk_00[1].raw += offset;
            }
        }
        offset = 0x20000;
        if (var_t1 != 0) {
            if (func_8005C6D0(D_801373E0.unk_00[0].raw - var_t1) < offset) {
                D_801373E0.unk_00[0].raw = var_t1;
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
            }
            else if (D_801373E0.unk_00[0].raw < var_t1) {
                D_801373E0.unk_00[0].raw += offset;
            }
            else {
                D_801373E0.unk_00[0].raw -= offset;
            }
        }
        if (var_t0 != 0) {
            if (func_8005C6D0(D_801373E0.unk_00[1].raw - var_t0) < 0x40000) {
                D_801373E0.unk_00[1].raw = var_t0;
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
            }
            else if (D_801373E0.unk_00[1].raw < var_t0) {
                D_801373E0.unk_00[1].raw += offset;
            }
            else {
                D_801373E0.unk_00[1].raw -= offset;
            }
        }
        gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - D_801373E0.unk_00[0].raw;
        func_8002877C(actor_0);
        if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + D_801373E0.unk_00[0].raw;
            gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
        }
        var_t0 = gActors[actor_0].posY.raw + D_801373E0.unk_00[1].raw;
        if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && 
            (var_t0 < gActors[actor_1].posY.raw)) {
            gActors[actor_1].posY.raw = var_t0;
            gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
        }
        else {
            if (!(gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK5) || (gActors[actor_0].posY.raw < (gActors[actor_1].posY.raw - D_801373E0.unk_00[1].raw))) {
                gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - D_801373E0.unk_00[1].raw;
            }
        }
        gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
        gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
        gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
    }
}

s32 func_80053210(u16 actor_0, u16 actor_1) {
    s32 var_v0;

    var_v0 = func_8004F2B0(actor_0);
    if (var_v0 == 1) {
        func_8004F514(actor_0, actor_1);
        gActors[actor_0].unk_12F_u8 = 0;
        gActors[actor_0].state = 0x16;
        return 3;
    }
    else if (var_v0 == 2) {
        gActors[actor_0].unk_12F_u8 = 0;
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        if (actor_1 == 0xFFFF) {
            gActors[actor_0].state = 0x25;
            return 2;
        }
        gActors[actor_0].state = 0x26;
        return 2;
    }
    else if (func_80048F70(actor_0, actor_1) != 0) {
        func_8004F514(actor_0, actor_1);
        gActors[actor_0].state = 0x14;
        gActors[actor_0].stateUpper = 0xA;
        return 4;
    }
    else {
        return 0;
    }
}

void func_80053358(u16 actor_0, u16 actor_1) {
    s32 temp_v0;
    s32 var_a2;

    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        if (actor_1 != 0xFFFF) {
            if (((gActors[actor_1].hitboxBX0 + gActors[actor_1].posX.whole) >= (gActors[actor_0].hitboxBX1 + gActors[actor_0].posX.whole)) || 
                ((gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX0) >= (gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX1))) {
                gActors[actor_0].unk_140_u8[0] = 4;
            }
            if ((gActors[actor_1].hitboxBY1 + gActors[actor_1].posY.whole) >= (gActors[actor_0].hitboxBY0 + gActors[actor_0].posY.whole)) {
                gActors[actor_0].unk_140_u8[0] = 0;
            }
            if ((gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY1) >= (gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0)) {
                gActors[actor_0].unk_140_u8[0] = 8;
            }
        }
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0];
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    var_a2 = 0x42;
    if (gActors[actor_0].unk_140_u8[0] == 0) {
        var_a2 = 0x43;
    }
    if (gActors[actor_0].unk_140_u8[0] == 8) {
        var_a2 += 2;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, var_a2);
    }
    func_80052A6C(actor_0, actor_1);
    func_80052CD0(actor_0, actor_1);
    temp_v0 = func_80053210(actor_0, actor_1);
    if (temp_v0 == 2) {
        if (gActors[actor_0].unk_140_u16[1] != 4) {
            if (D_801373D8 & 2) {
                gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 1) {
                gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
            }
        }
        switch (gActors[actor_0].unk_140_u16[1]) {
        case 0:
            gActors[actor_0].unk_140_u8[0] &= 7;
            if (gActors[actor_0].unk_140_u8[0] == 0) {
                gActors[actor_0].unk_140_u8[0] |= 8;
            }
            if (gActors[actor_0].unk_140_u8[0] < 8) {
                gActors[actor_0].unk_140_u8[0] = 6;
            }
            break;
        case 4:
            if (gActors[actor_0].unk_140_u8[0] < 4) {
                gActors[actor_0].unk_140_u8[0] = 2;
            }
            if (gActors[actor_0].unk_140_u8[0] > 4) {
                gActors[actor_0].unk_140_u8[0] = 6;
            }
            break;
        case 8:
            gActors[actor_0].unk_140_u8[0] &= 0x7;
            if (gActors[actor_0].unk_140_u8[0] > 0) {
                gActors[actor_0].unk_140_u8[0] = 2;
            }
            break;
        }
    }
    else if (temp_v0 == 4) {
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_0].stateUpper = 2;
            gActors[actor_0].unk_17C = 0;
            gActors[actor_0].stateLower = 0x16;
        }
        else if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].state = 0x14;
        }
        else {
            gActors[actor_0].unk_170 = 0x45;
            gActors[actor_0].state = 0x23;
        }
    }
}

void func_800536CC(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 sp28;
    s32 step;

    step = 0x40000;
    func_80052C4C(actor_0, actor_1);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C = (gActors[actor_0].hitboxBX1 - gActors[actor_1].hitboxBX0) << 0x10;
    }
    else {
        sp2C = (gActors[actor_0].hitboxBX0 - gActors[actor_1].hitboxBX1) << 0x10;
    }
    sp28 = ((-(gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1) / 2) + D_800D413C[0]) << 0x10;
    if (func_8005C6D0(D_801373E0.unk_00[0].raw - sp2C) < step) {
        D_801373E0.unk_00[0].raw = sp2C;
    }
    else if (D_801373E0.unk_00[0].raw < sp2C) {
        D_801373E0.unk_00[0].raw += step;
    }
    else {
        D_801373E0.unk_00[0].raw -= step;
    }
    if (func_8005C6D0(D_801373E0.unk_00[1].raw - sp28) < step) {
        D_801373E0.unk_00[1].raw = sp28;
    }
    else if (D_801373E0.unk_00[1].raw < sp28) {
        D_801373E0.unk_00[1].raw += step;
    }
    else {
        D_801373E0.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - D_801373E0.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + D_801373E0.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    sp28 = gActors[actor_0].posY.raw + D_801373E0.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (sp28 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = sp28;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - D_801373E0.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_8005396C(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (D_801373D8 & 2) {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    if (D_801373D8 & 1) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0];
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void func_80053B28(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 sp28;
    s32 step;

    func_80052C4C(actor_0, actor_1);
    sp2C = -((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C += (D_800D4138 / 2);
    }
    else {
        sp2C -= (D_800D4138 / 2);
    }
    sp2C <<= 0x10;
    sp28 = (gActors[actor_0].hitboxBY1 - gActors[actor_1].hitboxBY0) << 0x10;
    step = 0x40000;
    if (func_8005C6D0(D_801373E0.unk_00[0].raw - sp2C) < step) {
        D_801373E0.unk_00[0].raw = sp2C;
    }
    else if (D_801373E0.unk_00[0].raw < sp2C) {
        D_801373E0.unk_00[0].raw += step;
    }
    else {
        D_801373E0.unk_00[0].raw -= step;
    }
    if (func_8005C6D0(D_801373E0.unk_00[1].raw - sp28) < step) {
        D_801373E0.unk_00[1].raw = sp28;
    }
    else if (D_801373E0.unk_00[1].raw < sp28) {
        D_801373E0.unk_00[1].raw += step;
    }
    else {
        D_801373E0.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - D_801373E0.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + D_801373E0.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    sp28 = gActors[actor_0].posY.raw + D_801373E0.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (sp28 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = sp28;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - D_801373E0.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_80053DC8(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 8;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x44U);
    }
    func_80052A6C(actor_0, actor_1);
    func_80053B28(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

void func_80053F34(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 temp_a2;
    s32 step;

    func_80052C4C(actor_0, actor_1);
    sp2C = -((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C += D_800D4134;
    }
    else {
        sp2C -= D_800D4134;
    }
    sp2C = sp2C << 0x10;
    step = 0x40000;
    temp_a2 = ((gActors[actor_0].hitboxBY0 - gActors[actor_1].hitboxBY1) << 0x10) + step;
    if (func_8005C6D0(D_801373E0.unk_00[0].raw - sp2C) < step) {
        D_801373E0.unk_00[0].raw = sp2C;
    }
    else if (D_801373E0.unk_00[0].raw < sp2C) {
        D_801373E0.unk_00[0].raw += step;
    }
    else {
        D_801373E0.unk_00[0].raw -= step;
    }
    if (func_8005C6D0(D_801373E0.unk_00[1].raw - temp_a2) < step) {
        D_801373E0.unk_00[1].raw = temp_a2;
    }
    else if (D_801373E0.unk_00[1].raw < temp_a2) {
        D_801373E0.unk_00[1].raw += step;
    }
    else {
        D_801373E0.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - D_801373E0.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + D_801373E0.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    temp_a2 = gActors[actor_0].posY.raw + D_801373E0.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (temp_a2 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = temp_a2;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - D_801373E0.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_800541B8(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 0;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x43);
    }
    func_80052A6C(actor_0, actor_1);
    func_80053F34(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

void func_80054320(u16 actor_0, u16 actor_1) {
    s32 sp24;

    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].stateUpper = 1;
        func_8004F514(actor_0, actor_1);
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK16;
        func_80058924(actor_0);
        if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_0].unk_0F8.raw = -0x18000;
        }
        else {
            gActors[actor_0].unk_0F8.raw = 0x18000;
        }
        gActors[actor_0].unk_0FC.raw = 0x30000;
        func_8005C550(actor_0, 0x3C);
        sp24 = func_8005739C(actor_0, gActors[actor_1].damage);
        if (sp24 >= 3) {
            func_800575C0(actor_0);
            if (sp24 == 3) {
                Sound_PlaySfx(0x3C);
            }
        }
        D_800D3F70[gActors[actor_1].unk_0DB](actor_0, actor_1);
    }
}

void func_80054474(u16 actor_0, u16 unused_arg1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_ATTACHED;
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_0D6;
        gActors[actor_0].unk_140_u8[1] = 0x1E;
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 0x36;
        }
        else {
            gActors[actor_0].unk_170 = 0x39;
        }
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].unk_170 += 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].stateUpper += 1;
    }
    gActors[actor_0].flags |= ACTOR_FLAG_UNK6;
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_0].state = 3;
    }
    else {
        gActors[actor_0].state = 0x16;
    }
}

void func_8005457C(u16 actor_0, u16 actor_1) {
    s32 sp34;
    s32 sp30;
    s32 temp_f18;
    s32 sp28;
    s32 sp24;

    gActors[actor_0].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_0].rotateZ = gActors[actor_1].unk_140_f32;
    func_80052C4C(actor_0, actor_1);
    if (gActors[actor_1].unk_0DE == 0x10) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        sp28 = 0x12;
        sp24 = 4;
    }
    if (gActors[actor_1].unk_0DE == 0x11) {
        sp28 = -1;
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        sp24 = 0x1B;
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
        sp28 = -sp28;
    }
    temp_f18 = gActors[actor_0].rotateZ / 0.3515625;
    sp34 = sp28 * COS(temp_f18);
    sp30 = sp24 * COS(temp_f18);
    sp34 -= sp24 * SIN(temp_f18);
    sp30 += sp28 * SIN(temp_f18);
    sp34 <<= 0x10;
    sp30 <<= 0x10;

    temp_f18 = 0x40000;
    if (func_8005C6D0(D_801373E0.unk_00[0].raw - sp34) < temp_f18) {
        D_801373E0.unk_00[0].raw = sp34;
    }
    else if (D_801373E0.unk_00[0].raw < sp34) {
        D_801373E0.unk_00[0].raw += temp_f18;
    }
    else {
        D_801373E0.unk_00[0].raw -= temp_f18;
    }

    if (func_8005C6D0(D_801373E0.unk_00[1].raw - sp30) < temp_f18) {
        D_801373E0.unk_00[1].raw = sp30;
    }
    else if (D_801373E0.unk_00[1].raw < sp30) {
        D_801373E0.unk_00[1].raw += temp_f18;
    }
    else {
        D_801373E0.unk_00[1].raw -= temp_f18;
    }

    gActors[actor_0].posX.raw = (gActors[actor_1].posX.raw + (((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) << 0x10) / 2)) - D_801373E0.unk_00[0].raw;
    gActors[actor_0].posY.raw = (gActors[actor_1].posY.raw + (((gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1) << 0x10) / 2)) - D_801373E0.unk_00[1].raw;
    gActors[actor_0].unk_0F8.raw = ((gActors[actor_1].posX.raw + gScreenPosCurrentX.raw) - gActors[actor_1].unk_104) - gScreenPosNextX.raw;
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_0].unk_0FC.raw = ((gActors[actor_1].posY.raw + gScreenPosCurrentY.raw) - gActors[actor_1].unk_108) - gScreenPosNextY.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_8005498C(u16 actor_0, u16 actor_1) {
    s32 sp34;
    s32 check;
    s32 sp2C;

    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        if (gActors[actor_1].unk_0DE == 0x10) {
            gActors[actor_0].unk_140_u8[0] = 4;
            func_8005D370(actor_0, 0x3F);
        }
        if (gActors[actor_1].unk_0DE == 0x11) {
            gActors[actor_0].unk_140_u8[0] = 0;
            func_8005D370(actor_0, 0x43);
        }
    }
    func_80052A6C(actor_0, actor_1);
    func_8005457C(actor_0, actor_1);
    sp34 = func_80053210(actor_0, actor_1);
    if (sp34 != 0) {
        gActors[actor_0].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        Sound_PlaySfx(0x24);
    }
    if (sp34 == 3) {
        if (gActors[actor_0].unk_0F8.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].unk_0F8.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].unk_0F8.raw, 0x80000);
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].unk_0FC.raw, 0x80000);
        gActors[actor_0].state = 0x17;
    }
    else if (sp34 == 2) {
        sp2C = 0;
        check = D_801373D8 & 2;
        if (D_801373D8 & 1) {
            sp2C = 8;
        }
        if (D_801373D8 & 0x20) {
            sp2C = 4;
            if (check) {
                sp2C = 2;
            }
            if (D_801373D8 & 1) {
                sp2C = 6;
            }
        }
        if (D_801373D8 & 0x10) {
            sp2C = 0xC;
            if (check) {
                sp2C = 0xE;
            }
            if (D_801373D8 & 1) {
                sp2C = 0xA;
            }
        }
        sp2C <<= 6;
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_1].unk_0F8.raw, 0x80000);
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_1].unk_0FC.raw, 0x80000);
        gActors[actor_0].velocityX.raw += (196608.0f * COS(sp2C));
        gActors[actor_0].velocityY.raw += (196608.0f * SIN(sp2C));
        if (gActors[actor_0].velocityX.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].velocityX.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        func_8004F514(actor_0, actor_1);
        gActors[actor_0].unk_170_s8[1] = 0x7F;
        gActors[actor_0].state = 0x17;
    }
    else if (sp34 == 4) {
        if (gActors[actor_0].unk_0F8.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].unk_0F8.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].unk_0F8.raw, 0x80000);
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].unk_0FC.raw, 0x80000);
        gActors[actor_0].state = 0x17;
    }
}

void func_80054E18(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (!(gActors[actor_1].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void func_80054FD0(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (!(gActors[actor_1].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void func_80055188(u16 actor_0) {
    u16 actor_1 = gActors[actor_0].unk_0D6;
    D_800D3EB0[gActors[actor_1].unk_0DE](actor_0, actor_1);
}

void func_800551F8(u16 actor_index) {
    s32 sp24;
    s32 temp_v0;
    s32 temp_v0_2;

    gActors[actor_index].unk_12E_u8 |= 1;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 0x45;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
    }
    else if ((gActors[actor_index].stateUpper == 1) && (func_8005D418(actor_index) != 0)) {
        temp_v0 = func_80048C28(1);
        switch (temp_v0) {
        case 4:
            sp24 = 0x30;
            break;
        case 6:
            sp24 = 0x380;
            break;
        case 8:
            sp24 = 0x380;
            break;
        default:
            sp24 = 0x80;
            break;
        }
        temp_v0_2 = func_80048C94(0xF);
        gActors[actor_index].velocityX.raw = func_8005C6D0(COS(sp24) * temp_v0_2);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        temp_v0_2 = func_80048C94(0xF);
        gActors[actor_index].velocityY.raw = SIN(sp24) * temp_v0_2;
        gActors[actor_index].unk_170 = 0x46;
        if (gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].unk_17C = 4;
        }
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        D_801373F3 = 0;
        Sound_PlaySfx(0x24);
        gActors[actor_index].state = 0x16;
    }
}

void func_800553EC(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x81;
    func_80053358(actor_index, 0xFFFF);
}

void func_8005544C(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x81;
    func_80055C2C(actor_index, 0xFFFF);
}

void func_800554AC(u16 actor_0, u16 actor_1) {
    s32 idx;

    if (actor_1 != 0xFFFF) {
        idx = gActors[actor_0].unk_140_u8[0];
        gActors[actor_1].unk_0F8.raw = D_800E3630[gActors[actor_1].unk_0CE * 10 + idx];
        gActors[actor_1].unk_0FC.raw = D_800E3630[gActors[actor_1].unk_0CE * 10 + idx + 1];
    }
}

void func_8005552C(s32 arg0, s32 arg1) {
}

void func_80055538(u16 actor_0, u16 actor_1) {
    s32 var_v0;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 0x66;
            gActors[actor_0].var_15C = 0;
        }
        else {
            gActors[actor_0].unk_170 = 0x6A;
            gActors[actor_0].var_15C = 4;
        }
        if (gActors[actor_1].unk_0DE == 0x16) {
            gActors[actor_0].unk_140_u8[0] = 4;
            gActors[actor_0].unk_140_u16[1] = 0;
        }
        var_v0 = 0;
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            var_v0 = 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 2) {
            var_v0 += 3;
        }
        if (gActors[actor_0].unk_140_u8[0] >= 5) {
            var_v0 += 2;
        }
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].var_15C += var_v0;
        gActors[actor_0].unk_170 += var_v0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_8004F7D8(actor_0);
        func_8004FB30(actor_0, gActors[actor_0].var_15C);
        if (func_8004F35C(actor_0, (u32*) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 0x1E);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            D_800D57E0 = 0;
            if ((s32) gActors[actor_0].unk_140_u8[0] >= 5) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = -0x30000;
                }
                else {
                    gActors[actor_0].velocityX.raw = 0x30000;
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = 0x30000;
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = 3;
            }
            else {
                gActors[actor_0].state = 0x19;
            }
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -14) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_800558F8(u16 actor_0, u16 actor_1) {
    u16 var_v1;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_140_u16[1] = 0;
        var_v1 = func_80048C28(1);
        if (var_v1 == 0xFF) {
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                var_v1 = 4;
            }
            else {
                var_v1 = 12;
            }
        }
        else if ((D_801373D8 & 1) && (var_v1 & 7)) {
            var_v1 = 16 - var_v1;
        }
        if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
            var_v1 = func_8005C6D0(var_v1 - 16);
        }
        gActors[actor_0].var_15C = var_v1;
        var_v1 /= 2;
        gActors[actor_0].unk_170 = var_v1 + 118;
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_8004F7D8(actor_0);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            if (gActors[actor_0].var_15C >= 9) {
                gActors[actor_1].unk_0F8.raw = -gActors[actor_1].unk_0F8.raw;
            }
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 0x1E);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            Sound_StopSfx(0xB4);
            Sound_StopSfx(0xCA);
            Sound_PlaySfx(0xB9);
            D_800D57E0 = 0;
            if (gActors[actor_0].unk_140_u8[0] >= 5) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = -0x20000;
                }
                else {
                    gActors[actor_0].velocityX.raw = 0x20000;
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = 0x30000;
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = 3;
            }
            else {
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_80055C2C(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80052CD0(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = 0x88000;
                break;
            case 2:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0x74000;
                break;
            case 4:
                gActors[actor_0].velocityX.raw = 0x30000;
                gActors[actor_0].velocityY.raw = 0x20000;
                break;
            case 6:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = -0x10000;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gActors[0].unk_120;
            gActors[actor_0].velocityY.raw *= gActors[0].unk_120;
            Sound_PlaySfx(0x24);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            D_801373F3 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_80055F8C(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = 0x88000;
                break;
            case 2:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0x74000;
                break;
            case 4:
                gActors[actor_0].velocityX.raw = 0x30000;
                gActors[actor_0].velocityY.raw = 0x20000;
                break;
            case 6:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = -0x10000;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gActors[0].unk_120;
            gActors[actor_0].velocityY.raw *= gActors[0].unk_120;
            Sound_PlaySfx(0x24);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            D_801373F3 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_800562EC(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80053B28(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = 0x88000;
                break;
            case 2:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0x74000;
                break;
            case 4:
                gActors[actor_0].velocityX.raw = 0x30000;
                gActors[actor_0].velocityY.raw = 0x20000;
                break;
            case 6:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = -0x10000;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gActors[0].unk_120;
            gActors[actor_0].velocityY.raw *= gActors[0].unk_120;
            Sound_PlaySfx(0x24);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            D_801373F3 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_8005664C(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80053F34(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = 0x88000;
                break;
            case 2:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0x74000;
                break;
            case 4:
                gActors[actor_0].velocityX.raw = 0x30000;
                gActors[actor_0].velocityY.raw = 0x20000;
                break;
            case 6:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = 0x20000;
                gActors[actor_0].velocityY.raw = -0x10000;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gActors[0].unk_120;
            gActors[actor_0].velocityY.raw *= gActors[0].unk_120;
            Sound_PlaySfx(0x24);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            D_801373F3 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_800569AC(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 5) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
            case 2:
            case 4:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0x74000;
                break;
            case 6:
            case 8:
                gActors[actor_0].velocityX.raw = 0x28000;
                gActors[actor_0].velocityY.raw = 0;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gActors[0].unk_120;
            gActors[actor_0].velocityY.raw *= gActors[0].unk_120;
            Sound_PlaySfx(0x24);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            D_801373F3 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 5) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, -0x60000, func_80048C94(0x13) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = 5;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_80056CCC(u16 actor_0, u16 actor_1) {
    s32 var_v0;
    s32 pad;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        gActors[actor_0].var_15C = 4;
        var_v0 = 0;
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            var_v0 = 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 2) {
            var_v0 += 3;
        }
        if (gActors[actor_0].unk_140_u8[0] > 4) {
            var_v0 += 2;
        }
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].var_15C += var_v0;
        gActors[actor_0].unk_170 += var_v0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 0x1E);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            D_800D57E0 = 0;
            if (gActors[actor_0].unk_140_u8[0] > 4) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = -0x30000;
                }
                else {
                    gActors[actor_0].velocityX.raw = 0x30000;
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = 0x30000;
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = 3;
            }
            else {
                gActors[actor_0].state = 0x16;
            }
        }
        break;
    }
}

void func_80056F54(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        func_8005C550(actor_index, 8);
    }
    gActors[actor_index].unk_12E_u8 |= 0x81;
    D_800D3F10[gActors[gActors[actor_index].unk_0D6].unk_0DE](actor_index, gActors[actor_index].unk_0D6);
}

void func_8005701C(u16 actor_index) {
    u16 index;
    s32 step;

    index = gActors[actor_index].unk_0D6;
    gActors[actor_index].unk_12E_u8 |= 0x81;
    func_8005C550(actor_index, 1);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 3;
        gActors[actor_index].unk_170 = 0x5F;
        gActors[actor_index].var_15C = 8;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 3)) {
            gActors[actor_index].velocityY.raw = func_80048C94(0xF);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        func_8004F7D8(actor_index);
        func_8004FB30(actor_index, gActors[actor_index].var_15C);
        if (func_8004F35C(actor_index, (u32* ) &gActors[actor_index].var_150) != 0) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
            func_800554AC(actor_index, index);
            func_8004F614(actor_index, gActors[index].unk_0F8.raw, gActors[index].unk_0FC.raw, 0x32);
            gActors[index].unk_0DD = 0x1B;
            gActors[actor_index].unk_170 = 0x60;
            gActors[actor_index].stateUpper = 2;
        case 2:
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                step = func_80048C94(0);
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
            }
            else {
                step = func_80048C94(0);
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, step);
            }
            if (func_8005D418(actor_index) != 0) {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
                    gActors[actor_index].state = 3;
                }
                else {
                    gActors[actor_index].state = 0x16;
                }
            }
        }
        break;
    }
}

void func_80057268(u16 actor_index) {
    s32 pad;

    gActors[actor_index].unk_12E_u8 |= 0x81;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    func_8004F514(actor_index, gActors[actor_index].unk_0D6);
    gActors[actor_index].unk_12F_u8 = 0;
    D_801370CE &= ~gButton_B;
    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_index].state = 3;
    }
    else {
        gActors[actor_index].state = 0x19;
    }
}
