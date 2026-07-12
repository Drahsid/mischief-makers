#include "common.h"

u16 func_800600F0(u16 actor_index) {
    u16 actor_1;

    actor_1 = Actor_RangeFindInactive(1, 0x10);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].actorType = 0x3C;
    Actor_Initialize(actor_1);
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = 0x168;
    gActors[actor_1].palette_18C = PALETTE_8022D568;
    gActors[actor_1].posX.raw = gActors[actor_index].posX.raw;
    gActors[actor_1].posY.raw = gActors[actor_index].posY.raw;
    gActors[actor_1].posZ.raw = gActors[actor_index].posZ.raw;
    gActors[actor_1].unk_0CE = 7;
    gActors[actor_1].unk_0DE = 3;
    gActors[actor_1].unk_0DF = 0;
    gActors[actor_1].var_150 = gActors[actor_index].stateLower;
    gActors[actor_1].var_110 = 0.5f;
    return actor_1;
}

void func_800601FC(u16 actor_index) {
    s32 sp4C[5];
    u16 actor_1;

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (gActors[actor_index].stateLower < 0x64) {
            func_80058924(actor_index);
            gActors[actor_index].state = 0x64;
        }
    }
    if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK5 | ACTOR_FLAG3_UNK0)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        Sound_PlaySfx(0x2D);
        gActors[actor_index].state = 0x66;
    }
    gActors[actor_index].damage = ((gActors[actor_index].var_110 - 0.5) / 0.05) + 10.0;
    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].var_110 + (0.2 * (gActiveFrames & 2)), gActors[actor_index].scaleX, 0.2f);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].var_110 + (0.2 * (gActiveFrames & 2)), gActors[actor_index].scaleY, 0.2f);
    Actor_SetHitboxB(actor_index, (gActors[actor_index].var_110 * 8.0f));
    gActors[actor_index].palette_18C = &PALETTE_8022D4C8[(Rand() % 5) * 0x10 + 0x10];
    switch (gActors[actor_index].stateLower) {
    case 0x0:
        actor_1 = gActors[actor_index].unk_14C;
        gActors[actor_index].rotateZ = INDEX_TO_DEG(Math_Atan2(gActors[actor_index].unk_0F8.raw, gActors[actor_index].unk_0FC.raw));
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw + gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw + gActors[actor_index].unk_0FC.raw;
        func_80052C4C(actor_index, actor_1);
        if ((actor_index != gActors[actor_1].unk_14C) || (gActors[actor_index].var_150 != gActors[actor_1].stateLower)) {
            gActors[actor_index].state = 0xC8;
        }
        break;
    case 0x64:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
            gActors[actor_index].var_110 -= 0.0075;
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
            gActors[actor_index].rotateZ = INDEX_TO_DEG(Math_PlaneOctant(gActors[actor_index].unk_0F8.raw, gActors[actor_index].unk_0FC.raw));
            gActors[actor_index].var_158 = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].var_15C = gActors[actor_index].unk_0FC.raw;
            gActors[actor_index].velocityX.raw = -gActors[actor_index].unk_0F8.raw / 8;
            gActors[actor_index].velocityY.raw = -gActors[actor_index].unk_0FC.raw / 8;
            if (D_801373E0.unk_78 & 0x10000) {
                gActors[actor_index].var_158 += D_801373E0.unk_60;
                gActors[actor_index].velocityX.raw += D_801373E0.unk_60;
            }
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            gActors[actor_index].unk_0DA = 0x80;
            gActors[actor_index].unk_0DB = 0xC;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4.0);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
            gActors[actor_index].var_150 = 0xC8;
            gActors[actor_index].state = 0x65;
        }
        else {
            gActors[actor_index].state = 0xC8;
        }
        break;
    case 0x65:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_158, FIXED_UNIT(0.25));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_15C, FIXED_UNIT(0.25));
        gActors[actor_index].scaleY *= 0.8;
        Actor_SetHitboxA(actor_index, gActors[actor_index].var_110 * 6.0f);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 0xC8;
        }
        break;
    case 0x66:
        gActors[actor_index].flags = 0;
        break;
    case 0xC8:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.375));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.375));
        gActors[actor_index].var_110 -= 0.05;
        if (gActors[actor_index].colorA >= 0x10) {
            gActors[actor_index].colorA -= 8;
        }
        break;
    case 0xC9:
        gActors[actor_index].flags = 0;
        break;
    }
    gActors[actor_index].var_110 -= 0.0025;
    if ((gActors[actor_index].var_110 < 0.3) && (gActors[actor_index].stateLower != 0xC9)) {
        gActors[actor_index].state = 0xC9;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    if (!(gActiveFrames & 3)) {
        sp4C[0] = gActors[actor_index].posX.whole + (func_8005C708(0x10) * gActors[actor_index].var_110);
        sp4C[1] = gActors[actor_index].posY.whole + (func_8005C708(0x10) * gActors[actor_index].var_110);
        sp4C[2] = gActors[actor_index].posZ.whole + 1;
        sp4C[3] = 0x1EE;
        sp4C[4] = (intptr_t)PALETTE_8022D568;
        func_8005A068(actor_index, sp4C, Rand() * FIXED_UNIT(4.0), gActors[actor_index].var_110 * 1.5, 4);
    }
}

void func_8006098C(u16 actor_index) {
    s32 sp34[5];
    u16 actor_1;

    if (gActors[actor_index].stateLower == 0) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = 0x15C;
        gActors[actor_index].unk_0DE = 1;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].unk_0DA = 0;
        gActors[actor_index].unk_0DB = 2;
        gActors[actor_index].damage = 0;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0x1E;
        gActors[actor_index].var_15C = 0xD2;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].scaleX = 0.2f;
        Sound_PlaySfxAtActor2(0xC3, actor_index);
        gActors[actor_index].state = 1;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (gActors[actor_index].stateLower != 0x64) {
            func_80058924(actor_index);
            gActors[actor_index].state = 0x64;
        }
    }
    switch (gActors[actor_index].stateLower) {
    case 0x64:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        }
        else {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].state = 0x65;
        }
        break;
    case 0x65:
        if ((gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK5 | ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK0)) || (gActors[actor_index].var_154 != 0)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
            gActors[actor_index].var_154++;
            if (gActors[actor_index].var_154 >= 0x10) {
                gActors[actor_index].flags = 0;
                break;
            }
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(0.0), func_8005C6D0(gActors[actor_index].velocityX.raw / 10));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1.0), func_8005C6D0(gActors[actor_index].velocityY.raw / 10) + FIXED_UNIT(0.0078125));
        gActors[actor_index].scaleX += 0.002;
        gActors[actor_index].scaleY += 0.004;
        gActors[actor_index].var_158 = 0x14;
        if ((func_8005C6D0(gActors[actor_index].velocityX.raw) + func_8005C6D0(gActors[actor_index].velocityY.raw)) > FIXED_UNIT(1.5)) {
            gActors[actor_index].scaleX += 0.05;
            gActors[actor_index].scaleY += 0.025;
            gActors[actor_index].var_158 = 4;
        }
        break;
    }
    if (!(Rand() & 1)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    gActors[actor_index].var_15C--;
    if (gActors[actor_index].var_15C == 0) {
        gActors[actor_index].flags = 0;
    }
    gActors[actor_index].flags_098 = 0;
    if ((gActors[actor_index].var_15C % gActors[actor_index].var_158) == 0) {
        sp34[0] = gActors[actor_index].posX.whole;
        sp34[1] = gActors[actor_index].posY.whole;
        sp34[2] = gActors[actor_index].posZ.whole;
        actor_1 = func_800592A0(actor_index, sp34);
        if (actor_1 != 0) {
            gActors[actor_1].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_1].graphicIndex = 0x15C;
            gActors[actor_1].unk_148 = 60.0f;
            gActors[actor_1].scaleX = gActors[actor_1].scaleY = 0.2f;
            gActors[actor_1].var_110 = 0.005f;
            gActors[actor_1].unk_114 = 0.01f;
            gActors[actor_1].var_15C = FIXED_UNIT(-0.0078125);
        }
    }
}

void func_80060DB8(u16 actor_index) {
    u16 actor_1;
    f32 divisor;
    s32 sp24[3];

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        Sound_PlaySfxAtActor2(0xAA, actor_index);
        sp24[0] = gActors[gActors[actor_index].parentIndex].posX.whole;
        sp24[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0;
        sp24[2] = gActors[gActors[actor_index].parentIndex].posZ.whole + 1;
        actor_1 = func_800592A0(actor_index, sp24);
        if (actor_1 != 0) {
            divisor = 20.0f;
            gActors[actor_1].scaleX = 1.5f;
            gActors[actor_1].scaleY = 0.75f;
            gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            gActors[actor_1].graphicIndex = 0x18E;
            gActors[actor_1].var_154 = -0xA;
            gActors[actor_1].unk_148 = 20.0f;
            gActors[actor_1].unk_114 = gActors[actor_1].var_110 = 3.0 / divisor;
            gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
            gActors[actor_1].unk_118 = -gActors[actor_1].var_110 / divisor;
            gActors[actor_1].unk_11C = -gActors[actor_1].var_110 / (divisor / 2);
            gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
            gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
            gActors[actor_1].unk_140_f32 = 0.0f;
            gActors[actor_1].unk_144 = 4.0f;
            gActors[actor_1].palette_18C = PALETTE_8022D4E8;
        }
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}
