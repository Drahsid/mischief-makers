// BUG: incorrect prototype!
#define Actor_Initialize_RET void
#define func_8001FCA0_ARGS u16 actor_index, s32 x, s32 y
#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "1F1E0.h"
#include "42E90.h"
#include "cosine.h"

// "Overlay 1" code used in "Wormin' Up!!"

extern u16 D_800D2968;
extern s16 D_800D2970;
extern s16 D_800E1604[];

u16 D_801A0D10;
s16 D_801A0D12;

u32 D_801A08E0_742870 = 0;

u32 D_801A08E4_742874[31] = {0}; // unused?

// graphic indices of worm segments.
u16 sWormSegGraphics[] = {
    0x0804, 0x0814, 0x080A, 0x0814, 0x080C, 0x0816,
    0x080E, 0x0818, 0x0810, 0x081A, 0x0812, 0x0000,
};

// unused?
u16 D_801A0978_742908[] = {
    1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

// actor flags for worm segments.
u16 sWormSegFlags[] = {
    ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED,
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED,
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED,
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, 0,
};

f32 D_801A09A8_742938[] = {
    -0.1, -0.05, -0.0f, 0.05, 0.1, 0.15, 0.2, 0.2, 0.15, 0.1,
    0.05, 0, -0.05, -0.1, -0.05, -0.05,
};

// size of worm segments.
f32 sWormSegSizes[] = {
    1, 1, 1, 1, 0.95, 0.9, 0.85, 0.8, 0.75, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1,
};

// unused?
s16 D_801A0A28_7429B8[] = {
    0, 0x50, 0xFFB0, 0x100,
    0, 0xFFB0, 0x50, 0x0100,
    0x60, 0x20, 0xFFE0, 0xFFA0,
    0x0100, 0, 0xFFA0, 0xFFE0,
    0x20, 0x60, 0x0100, 0,
};

s16 D_801A0A50_7429E0[] = {
//  graphic time
    0x0804, 4,
    0,      0,
};

s16 D_801A0A58_7429E8[] = {
    8, 0, -8, 0,
};

s32 D_801A0A60_7429F0[] = {
    FIXED_UNIT(1.5), 0, FIXED_UNIT(-1.5),
};

s32 D_801A0A6C_7429FC[] = {
    FIXED_UNIT(-0.1875), FIXED_UNIT(-0.0625), FIXED_UNIT(-0.1875),
};


void func_8019B224_73D1B4(u16 actor_index, s32 arg1);
void func_8019BEDC_73DE6C(u16 actor_index);
void func_8019C244_73E1D4(u16 actor_index);
void func_8019C49C_73E42C(u16 actor_index);
void func_8019C9A4_73E934(u16 actor_index);
s32 func_8019CF04_73EE94(u16 actor_index, s32 arg1, s32 arg2, s32 arg3);
s32 func_8019CFFC_73EF8C(s32 arg0, s32 arg1, s32 arg2);
void func_8019D780_73F710(u16 actor_index);


void func_8019B100_73D090(u32 sfx_id, u16 actor_index, u16 max_volume) {
    s16 volume;
    s8 pan;
    s16 x = gActors[actor_index].posX.whole;

    if (x < -128) {
        pan = 0;
        volume = x / 4 + 256;
    }
    else if (x >= 128) {
        pan = 127;
        volume = 256 - x / 4;
    }
    else {
        volume = 256;
        pan = x / 2 + 64;
    }

    if (volume >= 0) {
        if (volume > max_volume) {
            volume = max_volume;
        }

        Sound_PlaySfxAtVolPan(sfx_id, volume, pan);
    }
}

void func_8019B1F0_73D180(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

void func_8019B204_73D194(s32 arg0) {
}

void func_8019B20C_73D19C(s32 arg0) {
}

void func_8019B214_73D1A4(s32 arg0) {
}

void func_8019B21C_73D1AC(s32 arg0) {
}

void func_8019B224_73D1B4(u16 actor_index, s32 arg1) {
    u16 angle;
    u16 new_actor_index;
    Actor* actor;
    u16 max_volume;

    if (D_801A0D12 > 0) {
        D_801A0D12--;
    }
    else if (!(gActiveFrames & 1)) {
        actor = &gActors[actor_index];
        if (actor->unk_180 < FIXED_UNIT(0.125)) {
            D_801A0D12 = 120;
            actor->unk_180 = FIXED_UNIT(13);
        }

        new_actor_index = Actor_RangeFindInactive(0x70, 0x80);
        if (new_actor_index) {
            gActors[new_actor_index].actorType = 0x201;
            Actor_Initialize(new_actor_index);
            if (actor->unk_180 > FIXED_UNIT(6.5)) {
                actor->unk_180 -= FIXED_UNIT(0.125);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                ACTOR_GFX_INIT(new_actor_index, D_800E1604);
                gActors[new_actor_index].var_158 = (FIXED_UNIT(13) - actor->unk_180) / 2;
                max_volume = (FIXED_UNIT(13) - actor->unk_180) / 1664;
            }
            else {
                actor->unk_180 -= FIXED_UNIT(0.0625);
                if (actor->unk_180 < FIXED_UNIT(0.125)) {
                    SpawnCrosshair(0xF, actor_index + 1);
                }

                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_UNK9;
                ACTOR_GFX_INIT(new_actor_index, D_800E1540);
                gActors[new_actor_index].colorR = 127;
                gActors[new_actor_index].var_158 = actor->unk_180;

                if (actor->unk_180 < 0x22AAA) {
                    max_volume = actor->unk_180 / 277;
                }
                else {
                    max_volume = 256;
                }

                if (actor->unk_180 < FIXED_UNIT(1)) {
                    gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK9;
                }
                else {
                    gActors[new_actor_index].damage = 10;
                    gActors[new_actor_index].hitFlags = 8;\
                    gActors[new_actor_index].hitType = HITTYPE_BOOM_11;
                    gActors[new_actor_index].unk_0F8.raw = FIXED_UNIT(2.5);\
                    gActors[new_actor_index].unk_0FC.raw = FIXED_UNIT(2.25);
                    Actor_SetHitboxA(new_actor_index, 3);
                }
            }

            gActors[new_actor_index].posX.whole = gActors[(u16)(actor_index + 1)].posX.whole;
            gActors[new_actor_index].posY.whole = gActors[(u16)(actor_index + 1)].posY.whole;
            gActors[new_actor_index].posZ.whole = gActors[(u16)(actor_index + 1)].posZ.whole + 1;
            gActors[new_actor_index].velocityZ.raw = -1;
            gActors[new_actor_index].colorA = 240;
            gActors[new_actor_index].var_150 = (u16)(actor_index + 1);
            gActors[new_actor_index].var_154 = FIXED_UNIT((Rand() & 7) + 10);
            gActors[new_actor_index].unk_148 = 12.0f;
            angle = FROM_FIXED(actor->unk_168);
            gActors[new_actor_index].velocityX.raw = COS(angle) * FIXED_UNIT(-1);
            gActors[new_actor_index].velocityY.raw = SIN(angle) * FIXED_UNIT(1);
            gActors[new_actor_index].scaleX = (f32)gActors[new_actor_index].var_158 / FIXED_UNIT(7.0f);
            gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX * 0.615;
        }

        if ((s32)gActiveFrames % 24 == 0) {
            func_8019B100_73D090(SFX_0061, actor_index, max_volume);
        }
    }
}

void func_8019B660_73D5F0(u16 actor_index) {
    u16 unk_actor_index;
    u16 index;
    s32 temp_a0;
    s32 temp_v1;
    s32 var_a3;
    s32 temp_v0;
    Actor* actor;

    if (gActors[0x31].state == 0x81) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
    }

    actor = &gActors[actor_index];
    unk_actor_index = actor->var_150;
    var_a3 = FROM_FIXED(gActors[unk_actor_index - 1].unk_168);
    for (index = 0; index < 12; index++) {
        s32 temp_v1 = gActors[actor_index].base_0F8_s32[index + 26];
        gActors[actor_index].base_0F8_s32[index + 26] = var_a3;
        var_a3 = temp_v1;
    }

    index = actor->var_15C;
    var_a3 = actor->base_0F8_s32[index + 26];
    actor->var_15C++;
    if (gActiveFrames & 7) {
        var_a3 = var_a3 - (Rand() & 0x1F) + 0x10;
    }
    else {
        var_a3 = var_a3 - (Rand() & 0xF) + 8;
    }

    var_a3 &= COS_MASK;
    gActors[actor_index].colorA -= 8;
    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK4) {
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x7F, 0x10);
    }
    else {
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x10);
        if (gActors[actor_index].colorR == 0) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
    }

    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;

    temp_a0 = gActors[actor_index].var_154;
    temp_v0 = gActors[actor_index].var_158;
    gActors[actor_index].posX.raw = (gActors + unk_actor_index)->posX.raw - temp_a0 * COS(var_a3);
    gActors[actor_index].posY.raw = temp_a0 * SIN(var_a3) + (gActors + unk_actor_index)->posY.raw;
    gActors[actor_index].var_154 = temp_a0 + temp_v0;
    temp_v0 /= 2;
    gActors[actor_index].velocityX.raw = COS(var_a3) * -temp_v0;
    gActors[actor_index].velocityY.raw = SIN(var_a3) * temp_v0 + FIXED_UNIT(4);
    gActors[actor_index].rotateZ = INDEX_TO_DEG(COS_DEG_360 - var_a3);
    gActors[actor_index].scaleX += 0.06;
    gActors[actor_index].scaleY += 0.12;

    temp_v1 = temp_v0 * 0 - gActors[actor_index].posY.whole - gScreenPosCurrentY.whole + 0x118;
    if (temp_v1 >= 0) {
        gActors[actor_index].posY.whole += temp_v1;
    }

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        gActors[actor_index].flags = 0;
    }
    else {
        gActors[actor_index].unk_148 -= 1.0f;
        if (gActors[actor_index].unk_148 < 0.0f) {
            gActors[actor_index].flags = 0;
        }
    }
}

void func_8019BAC0_73DA50(s32 arg0, s32 arg1) {
}

void func_8019BACC_73DA5C(s32 arg0) {
}

void func_8019BAD4_73DA64(u16 actor_index) {
    u16 index;
    u16 new_actor_index;
    s32 x_position;

    for (index = 0; index < 3; index++) {
        x_position = gActors[actor_index].posX.whole + D_801A0A58_7429E8[index];
        new_actor_index = SpawnParticle_List_90C0_16(D_800E1540, x_position,
            gActors[actor_index].posY.whole - 8, gActors[actor_index + 1].posZ.whole);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags |= ACTOR_FLAG_UNK19;
            gActors[new_actor_index].scaleX = 0.7f;
            gActors[new_actor_index].scaleY = 0.7f;
            gActors[new_actor_index].var_154 = -16;
            gActors[new_actor_index].var_15C = FIXED_UNIT(0.125);
            gActors[new_actor_index].velocityX.raw = D_801A0A60_7429F0[index];
            gActors[new_actor_index].velocityY.raw = D_801A0A6C_7429FC[index];
        }
    }
}

// initalize head and body segments of worm.
void func_8019BC64_73DBF4(u16 actor_index) {
    u16 index;
    u16 var_s2;
    u16 temp_a2;
    u16 temp_a3;
    s32 pad[5];

    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].hitboxBY0 = 0x16;
    gActors[actor_index].hitboxBY1 = -8;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
    gActors[actor_index].var_15C = actor_index + 2;
    gActors[actor_index].var_160 = actor_index + 2;
    gActors[actor_index].unk_164 = actor_index + 1;
    gActors[actor_index].health = 150;

    temp_a2 = actor_index + 1;
    for (index = actor_index + 1, var_s2 = 0; var_s2 < 11; index++, var_s2++) {
        gActors[index].actorType = ACTORTYPE_33;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].flags = sWormSegFlags[var_s2];
        gActors[index].graphicIndex = sWormSegGraphics[var_s2];
        gActors[index].scaleX = sWormSegSizes[var_s2];
        gActors[index].posX.whole = -0x1000;
        gActors[index].posY.whole = -0x1000;
        gActors[index].health = 1000;
        gActors[index].colorA = 0xFE;
        gActors[actor_index].unk_18C |= 0x200;
        gActors[index].unk_0CE = 8;
        Actor_SetHitboxB(index, 6);
    }

    gActors[temp_a2].graphicFlags |= 4;
    gActors[temp_a2].hitboxBY0 = 0x14;
    gActors[temp_a2].hitboxBY1 = -8;
    gActors[temp_a2].hitboxBX0 = -0xC;
    gActors[temp_a2].hitboxBX1 = 0xC;

    temp_a3 = actor_index + 2;
    Actor_SetHitboxB(temp_a3, 0x10);
    D_800BE678 = 0x68;
    D_800BE67C = 0xB8;
    D_800BE680 = 0xB8;
    D_800BE684 = 0xD0;
    D_800BE688 = 0xD3;
}

// copy of Math_ApproachS32.
s32 Worm_ApproachS32(s32 current, s32 target, s32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }

    return current;
}

void func_8019BEDC_73DE6C(u16 actor_index) {
    u16 index;
    u16 jndex;
    u16 var_a2;
    u16 unk_actor_index;
    u16 sp36;
    s32 var_a1;
    s32 temp_a0;
    Actor* actor = &gActors[actor_index];

    if (actor->unk_18C & 4) {
        var_a2 = actor_index + 1;
        var_a1 = gActors[var_a2].unk_164;
        for (index = actor_index + 2, jndex = 0; jndex < 7; jndex++, index++) {
            temp_a0 = gActors[index].unk_16C;
            if (temp_a0 < var_a1) {
                var_a2 = index;
                var_a1 = temp_a0;
            }
        }

        actor->var_160 = var_a2;
    }
    else {
        actor->var_15C = actor_index + 1;
        actor->var_160 = actor_index + 1;
    }

    unk_actor_index = actor->var_15C;
    sp36 = actor->var_160;
    actor->unk_184 = Worm_ApproachS32(actor->unk_184, gActors[actor_index + 1].var_158 - gActors[unk_actor_index].var_158, FIXED_UNIT(1.5));
    actor->unk_188 = Worm_ApproachS32(actor->unk_188, gActors[actor_index + 1].unk_16C - gActors[sp36].unk_16C, FIXED_UNIT(1.5));
}

void func_8019C060_73DFF0(u16 actor_index, u16 arg1, s32 arg2) {
    u16 index;
    u16 jndex;
    u16 kndex;

    for (actor_index++, index = 0; index < 11; index++, actor_index++) {
        for (jndex = arg1, kndex = 0; kndex < 3; kndex++, jndex++) {
            gActors[actor_index].base_0F8_s32[jndex + 22] += arg2;
        }
    }
}

void func_8019C120_73E0B0(u16 actor_index) {
    s32 temp_t0 = FROM_FIXED(gActors[actor_index].unk_168) & COS_MASK;
    if ((temp_t0 > COS_DEG_90) && (temp_t0 < COS_DEG_90 * 3)) {
        gActors[actor_index + 1].rotateY = 0.0;
        gActors[actor_index + 1].rotateZ = INDEX_TO_DEG(COS_DEG_360 - ((temp_t0 + COS_DEG_180) & COS_MASK));
    }
    else {
        gActors[actor_index + 1].rotateY = 180.0f;
        gActors[actor_index + 1].rotateZ = INDEX_TO_DEG(COS_DEG_360 - temp_t0);
    }
}

void func_8019C244_73E1D4(u16 actor_index) {
    u16 index;
    u16 jndex;
    u16 unk_actor_index = actor_index + 1;
    u16 unk_actor_index2 = actor_index + 2;
    s32 x_offset;
    s32 y_offset;
    s32 z_offset;
    s32 var_t1;

    x_offset = gActors[actor_index].unk_184 + gActors[actor_index].posX.raw - gActors[unk_actor_index].var_158;
    y_offset = gActors[actor_index].unk_188 + gActors[actor_index].posY.raw - gActors[unk_actor_index].unk_16C;
    z_offset = gActors[unk_actor_index2].posZ.raw - gActors[unk_actor_index2].unk_180;
    for (index = actor_index + 1, jndex = 0; jndex < 11; jndex++, index++) {
        gActors[index].colorA = gActors[actor_index].colorA;
        gActors[index].colorR = gActors[actor_index].colorR;
        gActors[index].colorG = gActors[actor_index].colorG;
        gActors[index].colorB = gActors[actor_index].colorB;
        gActors[index].posX.raw = gActors[index].var_158 + x_offset;
        gActors[index].posY.raw = gActors[index].unk_16C + y_offset;
        gActors[index].posZ.raw = gActors[index].unk_180 + z_offset;
        gActors[index].unk_188 = 0;
    }

    for (index = actor_index + 3, var_t1 = gActors[actor_index + 2].posZ.raw; index < actor_index + 5; index++) {
        if ((gActors[actor_index + 1].graphicIndex == 0x806) || (gActors[actor_index + 1].graphicIndex == 0x808)) {
            if (gActors[index].posZ.raw < var_t1) {
                var_t1 = gActors[index].posZ.raw;
            }
        }
        else if (var_t1 < gActors[index].posZ.raw) {
            var_t1 = gActors[index].posZ.raw;
        }
    }

    gActors[actor_index + 1].posZ.raw = var_t1 + 1;

    for (jndex = 0, index = actor_index + 1; jndex < 11; jndex++, index++) {
        var_t1 = 0x123 - gActors[index].posY.whole - gScreenPosCurrentY.whole;
        if (var_t1 >= 0) {
            if (gActors[actor_index].unk_138 != 0.0f) {
                gActors[index].posY.whole = -0x100;
            }
            else {
                gActors[index].posY.whole += var_t1;
            }
        }
    }
}

void func_8019C49C_73E42C(u16 actor_index) {
    f32 cosine_x;
    f32 sine_x;
    f32 cosine_y;
    f32 sine_y;
    f32 cosine_z;
    f32 sine_z;
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_a1;

    temp_v0 = FROM_FIXED(gActors[actor_index].unk_16C);
    temp_a1 = FROM_FIXED(gActors[actor_index].unk_170);
    cosine_x = COS(0);
    sine_x = SIN(0);
    cosine_y = COS(temp_v0);
    sine_y = SIN(temp_v0);
    cosine_z = COS(temp_a1);
    sine_z = SIN(temp_a1);

    temp_a2 = gActors[actor_index].unk_114 * gActors[actor_index].unk_13C_f32 *
        (cosine_y * cosine_z + sine_x * sine_y * sine_z) +
        0 * cosine_x * sine_z + 0 * (-sine_y * cosine_z + sine_x * cosine_y * sine_z);
    temp_v0 = gActors[actor_index].unk_114 * gActors[actor_index].unk_140_f32 *
        (-cosine_y * sine_z + sine_x * sine_y * cosine_z) +
        0 * cosine_x * cosine_z + 0 * (sine_y * sine_z + sine_x * cosine_y * cosine_z);
    temp_a1 = gActors[actor_index].unk_114 * cosine_x * sine_y - 0 * sine_x + 0 * cosine_x * cosine_y;
    gActors[actor_index].var_150 -= temp_a2;
    gActors[actor_index].var_154 -= temp_v0;
    gActors[actor_index].var_158 -= temp_a1 / 256;
}

void func_8019C710_73E6A0(u16 actor_index) {
    s32 velocity_x;
    s32 velocity_y;

    velocity_x = gActors[actor_index].velocityX.raw;
    if (velocity_x > FIXED_UNIT(5.125)) {
        velocity_x = FIXED_UNIT(5.125);
    }

    if (velocity_x < FIXED_UNIT(-5.125)) {
        velocity_x = FIXED_UNIT(-5.125);
    }

    velocity_y = gActors[actor_index].velocityY.raw;
    if (velocity_y > FIXED_UNIT(5.125)) {
        velocity_y = FIXED_UNIT(5.125);
    }

    if (velocity_y < FIXED_UNIT(-5.125)) {
        velocity_y = FIXED_UNIT(-5.125);
    }

    gActors[actor_index].var_150 += velocity_x;
    gActors[actor_index].var_154 += velocity_y;
    gActors[actor_index].var_158 += gActors[actor_index].velocityZ.raw;
}

void func_8019C7CC_73E75C(u16 actor_index, u16 arg1) {
    u16 index;
    u16 jndex;
    s16 kndex;
    s32 var_v0;
    s32 var_a0;
    s32 var_a2;
    s32 temp_t4;

    while (arg1 > 0) {
        var_v0 = gActors[actor_index].var_150;
        var_a0 = gActors[actor_index].var_154;
        var_a2 = gActors[actor_index].var_158;
        if (gActors[actor_index + 2].unk_18C == 0) {
            for (index = actor_index + 1, jndex = 0; jndex < 11; jndex++, index++) {
                for (kndex = 0; kndex < 3; kndex++) {
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 22];
                    gActors[index].base_0F8_s32[kndex + 22] = var_v0;
                    var_v0 = temp_t4;
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 27];
                    gActors[index].base_0F8_s32[kndex + 27] = var_a0;
                    var_a0 = temp_t4;
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 32];
                    gActors[index].base_0F8_s32[kndex + 32] = var_a2;
                    var_a2 = temp_t4;
                }
            }
        }
        else {
            for (index = actor_index + 11, jndex = 0; jndex < 11; jndex++, index--) {
                for (kndex = 2; kndex >= 0; kndex--) {
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 22];
                    gActors[index].base_0F8_s32[kndex + 22] = var_v0;
                    var_v0 = temp_t4;
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 27];
                    gActors[index].base_0F8_s32[kndex + 27] = var_a0;
                    var_a0 = temp_t4;
                    temp_t4 = gActors[index].base_0F8_s32[kndex + 32];
                    gActors[index].base_0F8_s32[kndex + 32] = var_a2;
                    var_a2 = temp_t4;
                }
            }
        }

        arg1--;
    }
}

void func_8019C9A4_73E934(u16 actor_index) {
    s32 angle;
    u16 index;
    u16 jndex;
    f32 var_f2;

    if (gActors[actor_index].var_150 > FIXED_UNIT(8192)) {
        gActors[actor_index].var_150 -= FIXED_UNIT(8192);
        func_8019C060_73DFF0(actor_index, 0, FIXED_UNIT(-8192));
    }
    else if (gActors[actor_index].var_150 < FIXED_UNIT(-8192)) {
        gActors[actor_index].var_150 += FIXED_UNIT(8192);
        func_8019C060_73DFF0(actor_index, 0, FIXED_UNIT(8192));
    }

    if (gActors[actor_index].var_154 > FIXED_UNIT(8192)) {
        gActors[actor_index].var_154 -= FIXED_UNIT(8192);
        func_8019C060_73DFF0(actor_index, 5, FIXED_UNIT(-8192));
    }
    else if (gActors[actor_index].var_154 < FIXED_UNIT(-8192)) {
        gActors[actor_index].var_154 += FIXED_UNIT(8192);
        func_8019C060_73DFF0(actor_index, 5, FIXED_UNIT(8192));
    }

    if (gActors[actor_index].var_158 > FIXED_UNIT(4)) {
        gActors[actor_index].var_158 -= FIXED_UNIT(4);
        func_8019C060_73DFF0(actor_index, 10, FIXED_UNIT(-4));
    }
    else if (gActors[actor_index].var_158 < FIXED_UNIT(-4)) {
        gActors[actor_index].var_158 += FIXED_UNIT(4);
        func_8019C060_73DFF0(actor_index, 10, FIXED_UNIT(4));
    }

    jndex = gActiveFrames;
    gActors[actor_index].unk_11C = D_801A09A8_742938[(jndex / 2) & 0xF];
    if ((gActors + (actor_index + 3))->unk_18C != 0) {
        (gActors + (actor_index + 3))->unk_18C--;
        if ((gActors + (actor_index + 3))->unk_18C >= 5) {
            func_8019C7CC_73E75C(actor_index, 4);
        }
        else {
            func_8019C7CC_73E75C(actor_index, (gActors + (actor_index + 3))->unk_18C);
        }
    }
    else {
        func_8019C7CC_73E75C(actor_index, 1);
    }

    var_f2 = gActors[actor_index].unk_11C;
    for (actor_index += 2, index = 0; index < 10; index++, actor_index++) {
        angle = Math_Atan2(
            gActors[actor_index - 1].posX.whole - gActors[actor_index].posX.whole,
            gActors[actor_index - 1].posY.whole - gActors[actor_index].posY.whole
        );

        if ((angle > 0x40 && angle < 0xC0) || (angle > 0x140 && angle < 0x1C0)) {
            gActors[actor_index].graphicIndex = 0x810;
        }
        else if (angle > 0xC0 && angle < 0x140) {
            gActors[actor_index].graphicIndex = 0x812;
        }
        else if ((angle > 0x240 && angle < 0x2C0) || (angle > 0x340 && angle < 0x3C0)) {
            gActors[actor_index].graphicIndex = 0x80C;
        }
        else if (angle > 0x2C0 && angle < 0x340) {
            gActors[actor_index].graphicIndex = 0x80A;
        }
        else {
            gActors[actor_index].graphicIndex = 0x80E;
        }

        if (angle > COS_DEG_90 && angle < COS_DEG_90 * 3) {
            angle += COS_DEG_180;
        }

        if (actor_index & 1) {
            gActors[actor_index].graphicIndex += 10;
        }

        gActors[actor_index].rotateZ = INDEX_TO_DEG(angle);
        gActors[actor_index].scaleY = gActors[actor_index].scaleX - gActors[actor_index].unk_144;
        for (jndex = 0; jndex < 4; jndex++) {
            s32 kndex = jndex;
            f32 temp_f0 = gActors[actor_index].unk_138_arr[kndex];
            gActors[actor_index].unk_138_arr[kndex] = var_f2;
            var_f2 = temp_f0;
        }
    }
}

void func_8019CDB8_73ED48(u16 actor_index, s32 target, s32 step) {
    s32 temp_v0 = gActors[actor_index].velocityX.raw - target;
    if (temp_v0 > 0) {
        if (step >= temp_v0) {
            gActors[actor_index].velocityX.raw = target;
        }
        else {
            gActors[actor_index].velocityX.raw -= step;
        }
    }
    else if (temp_v0 >= -step) {
        gActors[actor_index].velocityX.raw = target;
    }
    else {
        gActors[actor_index].velocityX.raw += step;
    }
}

void func_8019CE34_73EDC4(u16 actor_index, f32 target, f32 step, f32 arg3, f32 arg4) {
    f32 temp_f0;

    if (gActors[actor_index].unk_18C & 1) {
        target = arg3;
        step = arg4;
    }

    temp_f0 = gActors[actor_index].unk_114 - target;
    if (temp_f0 > 0.0f) {
        if (step >= temp_f0) {
            gActors[actor_index].unk_114 = target;
        }
        else {
            gActors[actor_index].unk_114 -= step;
        }
    }
    else if (temp_f0 >= -step) {
        gActors[actor_index].unk_114 = target;
    }
    else {
        gActors[actor_index].unk_114 += step;
    }
}

s32 func_8019CF04_73EE94(u16 actor_index, s32 target, s32 current, s32 step) {
    s32 var_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0;

    gActors[actor_index].unk_18C &= ~0x20;
    var_t0 = current;
    current = FROM_FIXED(current) & COS_MASK;
    temp_v0 = target - current;
    temp_t1 = temp_v0 & COS_MASK;
    temp_t2 = FROM_FIXED(step);
    if ((temp_t1 <= temp_t2) || (temp_t1 >= COS_DEG_360 - temp_t2)) {
        gActors[actor_index].unk_18C |= 0x20;
        return TO_FIXED(target);
    }

    if (target >= current) {
        if (temp_v0 < COS_DEG_180) {
            var_t0 += step;
        }
        else {
            var_t0 -= step;
        }
    }
    else if (temp_v0 > -COS_DEG_180) {
        var_t0 -= step;
    }
    else {
        var_t0 += step;
    }

    return var_t0;
}

s32 func_8019CFFC_73EF8C(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_a3;
    s32 var_a2;

    arg1 &= COS_MASK_FIXED_UNIT;
    arg0 = TO_FIXED(arg0);
    temp_v0 = arg0 - arg1;
    temp_v1 = temp_v0 & COS_MASK_FIXED_UNIT;
    temp_a3 = (FIXED_UNIT(COS_DEG_360) - temp_v0) & COS_MASK_FIXED_UNIT;
    if (temp_v1 < temp_a3) {
        var_a2 = temp_v1;
    }
    else {
        var_a2 = temp_a3;
    }

    if (arg0 >= arg1) {
        if (temp_v0 > FIXED_UNIT(COS_DEG_180)) {
            var_a2 = -var_a2;
        }
    }
    else if (temp_v0 > -FIXED_UNIT(COS_DEG_180)) {
        var_a2 = -var_a2;
    }

    return var_a2 / arg2;
}

void func_8019D0B0_73F040(u16 actor_index) {
    gActors[actor_index].unk_16C = (gActors[actor_index].unk_16C + gActors[actor_index].unk_174) & 0x3FFFFFF;
    gActors[actor_index].unk_170 = (gActors[actor_index].unk_170 + gActors[actor_index].unk_178) & 0x3FFFFFF;
    func_8019C9A4_73E934(actor_index);
    func_8019BEDC_73DE6C(actor_index);
    func_8019C244_73E1D4(actor_index);
}

void func_8019D14C_73F0DC(u16 actor_index, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a3;

    gActors[actor_index].unk_17C--;
    if (gActors[actor_index].unk_17C <= 0) {
        gActors[actor_index].unk_17C = arg3;
        temp_a3 = gActors[actor_index].unk_18C;
        if (temp_a3 & 0x10) {
            arg1 = -arg1 & COS_MASK;
            arg2 = -arg2 & COS_MASK;
        }

        switch ((u16)(gActors[actor_index].unk_18C & 1)) {
        case 0:
            gActors[actor_index].unk_18C |= 1;
            gActors[actor_index].unk_178 = func_8019CFFC_73EF8C(arg1, gActors[actor_index].unk_170, arg3);
            break;

        case 1:
            gActors[actor_index].unk_18C &= ~1;
            gActors[actor_index].unk_178 = func_8019CFFC_73EF8C(arg2, gActors[actor_index].unk_170, arg3);
            break;
        }
    }

    func_8019D0B0_73F040(actor_index);
}

s32 func_8019D254_73F1E4(u16 actor_index, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_v1;

    gActors[actor_index].unk_17C--;
    if (gActors[actor_index].unk_17C <= 0) {
        temp_v1 = gActors[actor_index].unk_18C;
        gActors[actor_index].unk_17C = arg5;
        if (temp_v1 & 0x10) {
            arg3 = (COS_DEG_180 - arg3) & COS_MASK;
            arg1 = -arg1 & COS_MASK;
            arg4 = (COS_DEG_180 - arg4) & COS_MASK;
            arg2 = -arg2 & COS_MASK;
        }

        switch ((u16)(gActors[actor_index].unk_18C & 1)) {
        case 0:
            gActors[actor_index].unk_18C |= 1;
            gActors[actor_index].unk_174 = func_8019CFFC_73EF8C(arg3, gActors[actor_index].unk_16C, arg5);
            gActors[actor_index].unk_178 = func_8019CFFC_73EF8C(arg1, gActors[actor_index].unk_170, arg5);
            func_8019D0B0_73F040(actor_index);
            return 1;

        case 1:
            gActors[actor_index].unk_18C &= ~1;
            gActors[actor_index].unk_174 = func_8019CFFC_73EF8C(arg4, gActors[actor_index].unk_16C, arg5);
            gActors[actor_index].unk_178 = func_8019CFFC_73EF8C(arg2, gActors[actor_index].unk_170, arg5);
            func_8019D0B0_73F040(actor_index);
            return 2;
        }
    }

    func_8019D0B0_73F040(actor_index);
    return 0;
}

void func_8019D3B0_73F340(u16 actor_index, s32 arg1, s32 arg2, s32 arg3) {
    Actor* actor;

    func_8019C49C_73E42C(actor_index);
    actor = &gActors[actor_index];
    if (--actor->unk_17C <= 0) {
        actor->var_110 += 1.0f;
        actor->unk_17C = arg3;
        if (actor->unk_18C & 0x10) {
            arg2 = (COS_DEG_180 - arg2) & COS_MASK;
            arg1 = -arg1 & COS_MASK;
        }

        actor->unk_174 = func_8019CFFC_73EF8C(arg2, actor->unk_16C, arg3);
        actor->unk_178 = func_8019CFFC_73EF8C(arg1, actor->unk_170, arg3);
    }

    func_8019D0B0_73F040(actor_index);
}

void func_8019D4A8_73F438(u16 actor_index, s32 arg1) {
    gActors[actor_index].var_15C = actor_index + 5;
    if (gActors[actor_index].unk_18C & 0x10) {
        gActors[actor_index].unk_178 = Math_ApproachS32(gActors[actor_index].unk_178, arg1, FIXED_UNIT(4));
        gActors[actor_index].unk_16C = func_8019CF04_73EE94(actor_index, COS_DEG_180 + 4, gActors[actor_index].unk_16C, FIXED_UNIT(8));
        gActors[actor_index].unk_168 = func_8019CF04_73EE94(
            actor_index,
            (FROM_FIXED(gActors[actor_index].unk_170) + COS_DEG_180 + COS_DEG_45) & COS_MASK,
            gActors[actor_index].unk_168,
            FIXED_UNIT(64)
        );
    }
    else {
        gActors[actor_index].unk_178 = Math_ApproachS32(gActors[actor_index].unk_178, -arg1, FIXED_UNIT(4));
        gActors[actor_index].unk_16C = func_8019CF04_73EE94(actor_index, COS_DEG_360 - 4, gActors[actor_index].unk_16C, FIXED_UNIT(8));
        gActors[actor_index].unk_168 = func_8019CF04_73EE94(
            actor_index,
            (FROM_FIXED(gActors[actor_index].unk_170) - COS_DEG_45) & COS_MASK,
            gActors[actor_index].unk_168,
            FIXED_UNIT(64)
        );
    }

    func_8019D0B0_73F040(actor_index);
}

// step worm's x-velocity based on facing(?)
void func_8019D5E4_73F574(u16 actor_index, s32 target, s32 step) {
    s32 var_a1;

    if (gActors[actor_index].unk_18C & 0x10) {
        target = -target;
    }

    var_a1 = target;
    gActors[actor_index].velocityX.raw = Worm_ApproachS32(gActors[actor_index].velocityX.raw, target, step);
}

void func_8019D64C_73F5DC(u16 actor_index) {
    gActors[actor_index].unk_13C_f32 = Math_ApproachF32(gActors[actor_index].unk_13C_f32, 1.0f, 0.2f);
    gActors[actor_index].unk_140_f32 = Math_ApproachF32(gActors[actor_index].unk_140_f32, 1.0f, 0.2f);
    func_8019C710_73E6A0(actor_index);
    gActors[actor_index].unk_168 = func_8019CF04_73EE94(
        actor_index,
        (COS_DEG_180 - Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw)) & COS_MASK,
        gActors[actor_index].unk_168,
        FIXED_UNIT(128)
    );

    func_8019CE34_73EDC4(actor_index, 0.0f, FIXED_UNIT(0.5), 0.0f, FIXED_UNIT(0.5));

    if (gActors[actor_index].unk_18C & 0x10) {
        gActors[actor_index].unk_16C = func_8019CF04_73EE94(actor_index, COS_DEG_180 + 4, gActors[actor_index].unk_16C, FIXED_UNIT(8));
    }
    else {
        gActors[actor_index].unk_16C = func_8019CF04_73EE94(actor_index, COS_DEG_360 - 4, gActors[actor_index].unk_16C, FIXED_UNIT(8));
    }

    func_8019D0B0_73F040(actor_index);
}

void func_8019D780_73F710(u16 actor_index) {
    Actor* actor;
    s16 x;
    u16 temp_v0;
    s32 var_v1;
    s32 var_v0;
    s32 var_a0;

    func_8019C120_73E0B0(actor_index);
    actor = &gActors[actor_index];
    if (actor->unk_18C & 0x10) {
        actor->flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        actor->flags |= ACTOR_FLAG_FLIPPED;
    }

    temp_v0 = actor->var_110;
    switch (temp_v0) {
    case 0:
        func_8019C49C_73E42C(actor_index);
        actor->var_15C = actor_index + 5;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.875), FIXED_UNIT(0.25), FIXED_UNIT(2.0), FIXED_UNIT(0.25));
        var_v0 = (Rand() & 8) + 16;
        var_v1 = Rand() & 0x1F;
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 0.78f, 0.15f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 1.2f, 0.3f);
        func_8019D254_73F1E4(actor_index, 0x18 - var_v1, var_v1 + 0x1E8, 0x30, 0x3D0, var_v0);
        break;

    case 1:
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 1.0f, 0.1f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 0.95f, 0.1f);
        func_8019C49C_73E42C(actor_index);
        actor->var_15C = actor_index + 2;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.5), FIXED_UNIT(0.375), FIXED_UNIT(2.5), FIXED_UNIT(0.375));
        func_8019D254_73F1E4(actor_index, 0x98, 0x358, 0xA8, 0x348, 12);
        if (actor->unk_18C & 1) {
            var_v1 = 0;
        }
        else {
            var_v1 = 0x60;
        }

        if (actor->unk_18C & 0x10) {
            if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
                actor->unk_168 += FIXED_UNIT(28);
            }
            else {
                actor->unk_168 = func_8019CF04_73EE94(actor_index, var_v1 + 0x1F0, actor->unk_168, FIXED_UNIT(16));
            }
        }
        else {
            if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
                actor->unk_168 = func_8019CF04_73EE94(actor_index, (0x10 - var_v1) & COS_MASK, actor->unk_168, FIXED_UNIT(16));
            }
            else {
                actor->unk_168 -= FIXED_UNIT(28);
            }
        }

        actor->unk_168 &= 0x03FFFFFF;
        break;

    case 2:
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 1.0f, 0.2f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 1.0f, 0.2f);
        func_8019C49C_73E42C(actor_index);
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.0), FIXED_UNIT(0.25), FIXED_UNIT(2.0), FIXED_UNIT(0.25));
        actor->unk_174 = 0;
        func_8019D4A8_73F438(actor_index, FIXED_UNIT(44));
        break;

    case 3:
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 1.0f, 0.2f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 1.0f, 0.2f);
        func_8019C49C_73E42C(actor_index);
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.0), FIXED_UNIT(0.25), FIXED_UNIT(2.0), FIXED_UNIT(0.25));
        actor->unk_174 = 0;
        func_8019D4A8_73F438(actor_index, FIXED_UNIT(28));
        break;

    case 4:
        actor->velocityZ.raw = FIXED_UNIT(0.5);
        func_8019D64C_73F5DC(actor_index);
        break;

    case 12:
        func_8019C49C_73E42C(actor_index);
        actor->var_15C = actor_index + 5;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.125), FIXED_UNIT(0.25), FIXED_UNIT(2.125), FIXED_UNIT(0.25));
        var_v0 = (Rand() & 8) + 16;
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 0.7f, 0.15f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 0.95f, 0.3f);
        func_8019D254_73F1E4(actor_index, 0x18, 0x1E8, 0x40, 0x3C0, var_v0);
        break;

    case 13:
        func_8019C49C_73E42C(actor_index);
        actor->var_15C = actor_index + 5;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.125), FIXED_UNIT(0.25), FIXED_UNIT(2.125), FIXED_UNIT(0.25));
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 0.6f, 0.7f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 0.2f, 0.7f);
        func_8019D254_73F1E4(actor_index, 0xC0, 0x340, 0x340, 0x348, 16);
        break;

    case 14:
        actor->unk_14C = 0.0f;
        actor->var_110++;
        /* fallthrough */

    case 15:
        actor->flags |= ACTOR_FLAG_FREEZE_POS;
        temp_v0 = 1;
        gActors[temp_v0].flags_098 |= ACTOR_FLAG3_GRAB;
        gActors[temp_v0].posX.whole = gActors[actor_index + 1].posX.whole;
        gActors[temp_v0].posY.whole = gActors[actor_index + 1].posY.whole;
        gActors[temp_v0].posZ.whole = gActors[actor_index + 1].posZ.whole;
        actor->var_15C = actor_index + 4;
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(1.5), FIXED_UNIT(0.1875), FIXED_UNIT(1.75), FIXED_UNIT(0.1875));
        if (actor->unk_18C & 0x10) {
            var_v1 = gActiveFrames * 24;
            var_a0 = var_v1;
        }
        else {
            var_v1 = -gActiveFrames * 24;
            var_a0 = var_v1 + COS_DEG_180;
        }

        actor->velocityY.raw = Worm_ApproachS32(actor->velocityY.raw, COS(var_a0) * 0.7 * FIXED_UNIT(1) + FIXED_UNIT(1.25), FIXED_UNIT(0.25));
        actor->velocityX.raw = Worm_ApproachS32(actor->velocityX.raw, COS(var_v1) * 2.8 * FIXED_UNIT(1), FIXED_UNIT(0.25));
        actor->var_150 += actor->velocityX.raw;
        actor->var_154 += actor->velocityY.raw;
        actor->var_158 += SIN(var_v1) * 2.8 * FIXED_UNIT(1);

        if (actor->unk_18C & 0x10) {
            var_v1 = (gActiveFrames * 24 + COS_DEG_90 * 3) & COS_MASK;
        }
        else {
            var_v1 = (gActiveFrames * 24 + COS_DEG_90) & COS_MASK;
        }

        if (var_v1 < ((var_v1 - 24) & COS_MASK)) {
            actor->unk_14C++;
            if (actor->unk_14C > 3.0f) {
                gActors[temp_v0].flags_098 |= ACTOR_FLAG3_THROWN;
                gActors[temp_v0].flags_098 &= ~ACTOR_FLAG3_GRAB;
                actor->var_110++;
                actor->velocityX.raw = FIXED_UNIT(-2.875);
                actor->velocityY.raw = FIXED_UNIT(4.625);
                gActors[temp_v0].velocityX.raw = FIXED_UNIT(-5);
                gActors[temp_v0].velocityY.raw = FIXED_UNIT(6);
                if (actor->unk_18C & 0x10) {
                    actor->velocityX.raw = -actor->velocityX.raw;
                    gActors[temp_v0].velocityX.raw = -gActors[temp_v0].velocityX.raw;
                }
            }
        }

        func_8019D0B0_73F040(actor_index);
        break;

    case 16:
        actor->flags |= ACTOR_FLAG_FREEZE_POS;
        func_8019D5E4_73F574(actor_index, 0, FIXED_UNIT(0.03125));
        actor->velocityY.raw = Worm_ApproachS32(actor->velocityY.raw, FIXED_UNIT(-2), FIXED_UNIT(0.125));
        if (actor->velocityY.raw == FIXED_UNIT(-2)) {
            actor->var_110 = 0.0f;
        }

        func_8019D64C_73F5DC(actor_index);
        break;

    case 0x100:
        if (gActiveFrames & 0x20) {
            var_v0 = 0;
        }
        else {
            var_v0 = FIXED_UNIT(0.25);
        }

        actor->velocityZ.raw = FIXED_UNIT(-0.5);
        gActors[actor_index + 2].unk_18C = 1;

        var_v1 = gPlayerActor.velocityX.raw * 1.5;
        if (var_v1 > FIXED_UNIT(1.75) || var_v1 < FIXED_UNIT(-1.75)) {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, var_v1, FIXED_UNIT(1));
        }

        actor->velocityY.raw = gPlayerActor.velocityY.raw * 1.5 + FIXED_UNIT(1.5) + var_v0 / 2;

        if (actor->unk_18C & 0x10) {
            actor->unk_16C = func_8019CF04_73EE94(actor_index, 0x204, actor->unk_16C, FIXED_UNIT(8));
        }
        else {
            actor->unk_16C = func_8019CF04_73EE94(actor_index, 0x3FC, actor->unk_16C, FIXED_UNIT(8));
        }

        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 4.0f, 0.2f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 4.0f, 0.2f);
        func_8019C710_73E6A0(actor_index);
        actor->unk_168 = func_8019CF04_73EE94(actor_index, (COS_DEG_90 * 3 - Math_Atan2(actor->velocityX.raw, actor->velocityY.raw)) & COS_MASK, actor->unk_168, FIXED_UNIT(8));
        func_8019CE34_73EDC4(actor_index, 0.0f, FIXED_UNIT(0.5), 0.0f, FIXED_UNIT(0.5));
        func_8019D0B0_73F040(actor_index);
        break;

    case 0x101:
        if (actor->unk_18C & 0x10) {
            actor->unk_16C = func_8019CF04_73EE94(actor_index, 0x204, actor->unk_16C, FIXED_UNIT(8));
        }
        else {
            actor->unk_16C = func_8019CF04_73EE94(actor_index, 0x3FC, actor->unk_16C, FIXED_UNIT(8));
        }

        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 1.0f, 0.2f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 1.0f, 0.2f);
        func_8019C710_73E6A0(actor_index);
        actor->unk_168 = func_8019CF04_73EE94(actor_index, (COS_DEG_90 * 3 - Math_Atan2(actor->velocityX.raw, actor->velocityY.raw)) & COS_MASK, actor->unk_168, FIXED_UNIT(8));
        func_8019CE34_73EDC4(actor_index, 0.0f, FIXED_UNIT(0.5), 0.0f, FIXED_UNIT(0.5));
        func_8019D0B0_73F040(actor_index);
        break;

    case 0x1000:
        actor->unk_13C_f32 = Math_ApproachF32(actor->unk_13C_f32, 0.8f, 0.1f);
        actor->unk_140_f32 = Math_ApproachF32(actor->unk_140_f32, 0.6f, 0.1f);
        func_8019C49C_73E42C(actor_index);
        actor->var_15C = actor_index + 2;
        func_8019CE34_73EDC4(actor_index, FIXED_UNIT(2.5), FIXED_UNIT(0.375), FIXED_UNIT(2.5), FIXED_UNIT(0.375));
        func_8019D254_73F1E4(actor_index, 0x98, 0x358, 0xA8, 0x348, 32);
        if (actor->unk_18C & 1) {
            var_v1 = 0;
        }
        else {
            var_v1 = 0x60;
        }

        if (actor->unk_18C & 0x10) {
            if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
                actor->unk_168 += FIXED_UNIT(28);
            }
            else {
                actor->unk_168 = func_8019CF04_73EE94(actor_index, var_v1 + 0x1F0, actor->unk_168, FIXED_UNIT(16));
            }
        }
        else {
            if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
                actor->unk_168 = func_8019CF04_73EE94(actor_index, (0x10 - var_v1) & COS_MASK, actor->unk_168, FIXED_UNIT(16));
            }
            else {
                actor->unk_168 -= FIXED_UNIT(28);
            }
        }

        actor->unk_168 &= 0x03FFFFFF;
        break;
    }

    x = gActors[actor_index].posX.whole;
    var_v1 = -x - gScreenPosCurrentX.whole + 0xF80;
    if (var_v1 >= 0) {
        gActors[actor_index].posX.whole = x + var_v1;
    }

    x = gActors[actor_index].posX.whole;
    var_v1 = -x - gScreenPosCurrentX.whole + 0x1200;
    if (var_v1 < 0) {
        gActors[actor_index].posX.whole = x + var_v1;
    }

    if (gActors[actor_index].posY.whole < -54) {
        gActors[actor_index].posY.whole = -54;
    }
}

void func_8019E654_7405E4(u16 actor_index) {
    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
    }

    gActors[actor_index + 1].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 2].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 3].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 4].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 5].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 6].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 7].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 8].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 9].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 10].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 11].iFrames = gActors[actor_index].iFrames;
}

void func_8019E738_7406C8(u16 actor_index) {
    u16 index;

    for (index = actor_index + 1; index < actor_index + 11; index++) {
        gActors[index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8);
    }
}

void func_8019E7A4_740734(u16 actor_index) {
    u16 index;
    s32 temp_a0;

    if (gActors[actor_index].health != 0) {
        gActors[actor_index].pendingDamage = 0;
        for (index = actor_index + 1; index < actor_index + 11; index++) {
            if ((gActors[index].flags & (ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10)) &&
                (gActors[index].flags_098 & ACTOR_FLAG3_UNK1) &&
                !(gActors[index].flags & ACTOR_FLAG_UNK15)) {
                temp_a0 = gActors[index].hitByType;
                if ((temp_a0 != HITTYPE_21) && (temp_a0 != HITTYPE_22)) {
                    gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK1;
                    gActors[actor_index].health -= gActors[index].pendingDamage;
                    gActors[actor_index].pendingDamage += gActors[index].pendingDamage;
                    gActors[actor_index].parentIndex = gActors[index].parentIndex;
                    gActors[actor_index].hitByFlags = gActors[index].hitByFlags;
                    gActors[actor_index].unk_0F8.raw = gActors[index].unk_0F8.raw;
                    gActors[actor_index].unk_0FC.raw = gActors[index].unk_0FC.raw;
                    gActors[index].health = 200;
                }
            }
        }

        if (gActors[actor_index].health & 0x8000) {
            gActors[actor_index].health = 0;
            func_8019E738_7406C8(actor_index);
        }
    }
    else {
        func_8019E738_7406C8(actor_index);
    }
}

void func_8019E918_7408A8(s32 arg0) {
}

// set flags for worm segments.
void Worm_SetSegmentFlags(u16 actor_index) {
    u16 index;
    u16 jndex;

    for (jndex = actor_index + 1, index = 0; index < 11; jndex++, index++) {
        gActors[jndex].flags = sWormSegFlags[index];
    }
}

void func_8019E990_740920(u16 actor_index, u32 arg1) {
    u16 index;
    u16 jndex;

    for (jndex = actor_index + 1, index = 0; index < 11; jndex++, index++) {
        if (gActors[jndex].flags & (ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8)) {
            gActors[jndex].flags |= arg1;
        }
    }
}

void func_8019EA00_740990(u16 actor_index, u32 arg1) {
    u16 index;
    u16 jndex;

    for (jndex = actor_index + 1, index = 0; index < 11; jndex++, index++) {
        gActors[jndex].flags &= 0xFFFFFFFF - arg1;
    }
}

void func_8019EA6C_7409FC(u16 actor_index) {
    if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_18C &= ~0x10;
    }
    else {
        gActors[actor_index].unk_18C |= 0x10;
    }

    func_8019D780_73F710(actor_index);
}

void func_8019EB10_740AA0(u16 actor_index) {
    Sound_PlaySfx(SFX_00C0);
}

void func_8019EB34_740AC4(u16 actor_index, u16 arg1) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_110 = 1.0f;
    func_8019EB10_740AA0(actor_index);
    Sound_StopSfx(SFX_00C1);
    gActors[actor_index].unk_170 = 0;
    gActors[actor_index].unk_174 = 0;
    gActors[actor_index].unk_178 = 0;
    gActors[actor_index].unk_17C = 0;
    gActors[actor_index].unk_18C |= 4;
    gActors[actor_index].unk_124 = 16.0f;

    if (arg1 != 0) {
        gActors[actor_index].state = 0x20;
        gActors[actor_index].unk_16C = 0;
    }
    else {
        gActors[actor_index].state = 0x30;
        gActors[actor_index].unk_16C = FIXED_UNIT(512);
    }
}

s32 func_8019EC28_740BB8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x60;
        return 2;
    }

    return 0;
}

s32 func_8019EC80_740C10(u16 actor_index) {
    s32 temp_a3;

    func_8019D780_73F710(actor_index);
    if (gActors[actor_index].unk_124 > 0.0f) {
        gActors[actor_index].unk_124 -= 1.0f;
    }
    else if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if (gActors[actor_index].unk_118 > 0.0f) {
        gActors[actor_index].unk_118 -= 1024.0f;
    }
    else {
        gActors[actor_index].unk_118 = 0.0f;
    }

    temp_a3 = gActors[actor_index].unk_118;

    if (gActors[actor_index].unk_18C & 0x10) {
        func_8019CDB8_73ED48(actor_index, temp_a3, FIXED_UNIT(0.0625));
    }
    else {
        func_8019CDB8_73ED48(actor_index, -temp_a3, FIXED_UNIT(0.0625));
    }

    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        Sound_PlaySfx(SFX_0036);
        func_8019BAD4_73DA64(actor_index);
        gActors[actor_index].velocityX.raw /= 2;

        if (gActors[actor_index].unk_18C & 0x10) {
            gActors[actor_index].unk_168 = FIXED_UNIT(384);
            gActors[actor_index].unk_16C = FIXED_UNIT(512);
        }
        else {
            gActors[actor_index].unk_168 = FIXED_UNIT(128);
            gActors[actor_index].unk_16C = 0;
        }

        gActors[actor_index + 2].unk_18C = 0;
        gActors[actor_index + 3].unk_18C = 0;
        gActors[actor_index].var_110 = 1.0f;
        func_8019EB10_740AA0(actor_index);
        Sound_StopSfx(SFX_00C1);
        gActors[actor_index].unk_170 = FIXED_UNIT(64);
        gActors[actor_index].unk_174 = 0;
        gActors[actor_index].unk_178 = 0;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_18C &= ~1;
        gActors[actor_index].var_110 = 0.0f;
        return 1;
    }

    return 0;
}

void func_8019EEA0_740E30(u16 actor_index) {
    u16 new_actor_index;
    Actor* actor = &gActors[actor_index];
    s32 temp_v1;
    f32 var_f12;

    if ((actor->velocityX.raw > 0) && (actor->flags_098 & ACTOR_FLAG3_UNK3)) {
        actor->unk_18C &= ~0x10;
    }

    if ((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2)) {
        actor->unk_18C |= 0x10;
    }

    if ((func_8001FCA0(actor_index, actor->posX.whole, actor->hitboxBY1 + actor->posY.whole - 6) & 0xC0) && !(gActiveFrames & 3)) {
        new_actor_index = SpawnParticle_Image_90C0_16(0x1D8, actor->posX.whole, actor->posY.whole - 0x16, 2);
        if (new_actor_index != 0) {
            temp_v1 = Math_AbsS32(actor->posX.whole / 64) - 4;
            if (temp_v1 < 0) {
                CameraShake(temp_v1, 3);
            }

            var_f12 = (f32)actor->velocityX.raw / FIXED_UNIT(3);
            if (var_f12 < 0.0f) {
                var_f12 = -var_f12;
            }

            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            Actor_SetColorRgb(new_actor_index, 0x30);
            gActors[new_actor_index].scaleX = var_f12 * 4.0;
            gActors[new_actor_index].scaleY = var_f12 * 4.0;
            gActors[new_actor_index].unk_114 = var_f12 * 0.2;
            gActors[new_actor_index].unk_11C = var_f12 * -0.03;
            gActors[new_actor_index].var_110 = var_f12 * -0.15;
            gActors[new_actor_index].colorA = 0xC0;
            gActors[new_actor_index].var_154 = -6;
            gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
            gActors[new_actor_index].unk_184 = gActors[new_actor_index].posX.raw;
            gActors[new_actor_index].unk_188 = gActors[new_actor_index].posY.raw;
            gActors[new_actor_index].pfn_17C = func_80030A24;
            gActors[new_actor_index].unk_104 = -4;
            gActors[new_actor_index].unk_148 = 22.0f;
            gActors[new_actor_index].unk_144 = 8.0f;
            gActors[new_actor_index].velocityX.raw = (f32)-actor->velocityX.raw * 1.5;
            gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(-0.25);
            if (gActors[new_actor_index].velocityX.raw < 0) {
                gActors[new_actor_index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].unk_140_f32 = -5.0f;
            }
            else {
                gActors[new_actor_index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].unk_140_f32 = 5.0f;
            }
        }
    }

    if (actor->unk_18C & 0x10) {
        temp_v1 = FIXED_UNIT(3.5);
    }
    else {
        temp_v1 = FIXED_UNIT(-3.5);
    }

    actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, temp_v1, 0x2C00);
    if ((actor->velocityX.raw > FIXED_UNIT(3)) || (actor->velocityX.raw < FIXED_UNIT(-3))) {
        actor->flags |= ACTOR_FLAG_UNK9;
    }

    if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
        actor->flags &= ~ACTOR_FLAG_UNK9;
        if (actor->velocityX.raw < 0) {
            actor->velocityX.raw = FIXED_UNIT(2.5);
        }
        else {
            actor->velocityX.raw = FIXED_UNIT(-2.5);
        }

        actor->unk_178 = 0;
        func_8019B100_73D090(SFX_HIT_002D, actor_index, 0x100);
    }

    actor->hitType = HITTYPE_4;\
    actor->unk_0F8.raw = FIXED_UNIT(7.5);\
    actor->unk_0FC.raw = FIXED_UNIT(4);
    actor->hitFlags = 0;
    actor->damage = 0x50;
}

void func_8019F27C_74120C(s32 arg0) {
}

void func_8019F284_741214(u16 actor_index) {
    if (gActors[actor_index].health < 130) {
        func_8019B224_73D1B4(actor_index, 0);
    }
}

void func_8019F2E0_741270(u16 actor_index) {
    u16 var_a1;

    if (gActors[actor_index].health < 60) {
        gActors[actor_index].state = 0xA0;
    }
    else {
        func_8019F284_741214(actor_index);
        if (gActors[actor_index].posY.whole >= -23) {
            if (gActors[actor_index].posX.whole + gScreenPosCurrentX.whole < 4256) {
                var_a1 = 0;
            }
            else {
                var_a1 = 1;
            }
        }
        else if (gActors[actor_index].posX.whole < gActors[80].posX.whole) {
            var_a1 = 0;
        }
        else {
            var_a1 = 1;
        }

        gActors[actor_index + 1].graphicList = D_801A0A50_7429E0;
        gActors[actor_index + 1].graphicTimer = 1;
        func_8019EB34_740AC4(actor_index, var_a1);
    }
}

void func_8019F3F8_741388(u16 actor_index) {
    if (gActors[actor_index].health < 60) {
        gActors[actor_index].state = 0xA0;
    }
    else {
        func_8019F284_741214(actor_index);
        if (gActors[actor_index].posY.whole < -23) {
            if (func_80029C44(-48, 48, 64, -20)) {
                if (gActors[actor_index].state == 0x21) {
                    gActors[actor_index].velocityX.raw = -FIXED_UNIT(2);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
                }

                gActors[actor_index].state = 0x50;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4) - TO_FIXED(Rand() & 3);
            }
            else if (((gActors[actor_index].state == 0x21) && (gActors[actor_index].posX.whole < gActors[0x50].posX.whole)) ||
                     ((gActors[actor_index].state == 0x31) && (gActors[0x50].posX.whole < gActors[actor_index].posX.whole))) {
                gActors[actor_index].state = 0x10;
                gActors[actor_index].unk_134 = 0.0f;
            }
        }
    }
}

void func_8019F538_7414C8(u16 actor_index) {
    s32 var_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    u16 unk_actor_index;
    Actor* actor = &gActors[actor_index];

    actor->posZ.whole = 0;
    D_801A08E0_742870 &= 0xFFFCFFFF;
    if (actor->state) {
        func_8019E7A4_740734(actor_index);
        D_800E3580 = 80;
        func_8002AA20((u16)(actor_index + 1), 0);
        if (actor->health > 0) {
            if ((actor->flags_098 & ACTOR_FLAG3_UNK1) && actor->hitByType < HITTYPE_21) {
                actor->state = 0x70;
            }

            if (actor->state != 0x101 && (actor->flags_098 & ACTOR_FLAG3_GRAB)) {
                actor->state = 0x100;
                Sound_PlaySfx(SFX_0091);
            }
        }
        else if (actor->state < 0x1000) {
            actor->state = 0x1000;
        }
    }

    switch (actor->state) {
    case 0:
        func_8019BC64_73DBF4(actor_index);
        actor->state = 2;
        D_801A0D12 = 0;
        actor->unk_180 = FIXED_UNIT(13);
        D_801A0D10 = 1;
        break;

    case 3:
        actor->unk_138 = 1.0f;
        actor->state++;
        actor->unk_18C &= ~0x10;
        actor->unk_168 = 0;
        actor->velocityX.raw = FIXED_UNIT(-1);
        actor->velocityY.raw = FIXED_UNIT(4.5);
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        actor->unk_18C &= ~4;
        actor->var_110 = 4.0f;
        actor->unk_118 = FIXED_UNIT(1.75);
        actor->unk_124 = 12.0f;
        /* fallthrough */

    case 4:
        if (actor->velocityY.raw < 0) {
            actor->flags &= ~ACTOR_FLAG_UNK16;
            actor->flags |= ACTOR_FLAG_UNK17;
            actor->unk_138 = 0.0f;
        }

        if (func_8019EC80_740C10(actor_index)) {
            actor->state++;
        }
        break;

    case 5:
        actor->state++;
        actor->flags |= ACTOR_FLAG_UNK16;
        actor->flags &= ~ACTOR_FLAG_UNK17;\
        actor->flags_098 &= ~ACTOR_FLAG3_UNK6;
        actor->var_110 = 0.0f;
        Sound_PlaySfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->unk_18C |= 4;
        actor->unk_124 = 16.0f;
        /* fallthrough */

    case 6:
        func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.3125));
        func_8019D780_73F710(actor_index);
        if (actor->unk_18C & 1) {
            var_a1 = 0;
        }
        else {
            var_a1 = -0x48;
        }

        if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
            actor->unk_18C &= ~0x10;
            var_a1 += 0x28;
        }
        else {
            actor->unk_18C |= 0x10;
            var_a1 = 0x1D8 - var_a1;
        }

        var_a1 &= COS_MASK;
        actor->unk_168 = func_8019CF04_73EE94(actor_index, var_a1, actor->unk_168, FIXED_UNIT(8));
        if (D_800D2968 == 0xFFFF && (u16)D_800D2970 == 0xFFFF) {
            actor->state = 0x10;
        }
        break;

    case 0x10:
        actor->state++;
        actor->flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
        actor->hitboxBY0 = 24;
        actor->hitboxBX0 = -24;
        actor->hitboxBX1 = 24;
        actor->flags |= ACTOR_FLAG_UNK16;
        actor->flags &= ~ACTOR_FLAG_UNK17;
        actor->flags_098 &= ~ACTOR_FLAG3_UNK6;
        actor->velocityY.raw = 0;
        actor->unk_18C |= 4;
        actor->unk_124 = 16.0f;
        /* fallthrough */

    case 0x11:
        func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.3125));
        func_8019D780_73F710(actor_index);
        if (actor->unk_18C & 1) {
            var_a1 = 0;
        }
        else {
            var_a1 = -0x48;
        }

        if (actor->unk_168 > FIXED_UNIT(768) || actor->unk_168 < FIXED_UNIT(256)) {
            actor->unk_18C &= ~0x10;
            var_a1 += 0x28;
        }
        else {
            actor->unk_18C |= 0x10;
            var_a1 = 0x1D8 - var_a1;
        }

        var_a1 &= COS_MASK;
        actor->unk_168 = func_8019CF04_73EE94(actor_index, var_a1, actor->unk_168, FIXED_UNIT(8));
        temp_f0 = actor->unk_134;
        if (temp_f0 > 0.0f) {
            actor->unk_134 = temp_f0 - 1.0f;
        }
        else {
            func_8019F2E0_741270(actor_index);
        }
        break;

    case 0x20:
        actor->state++;
        actor->unk_18C &= ~0x10;
        /* fallthrough */

    case 0x21:
        func_8019D780_73F710(actor_index);
        if (!func_8019EC28_740BB8(actor_index)) {
            if (actor->unk_124 != 0.0f) {
                actor->unk_124--;
                func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.3125));
            }
            else {
                func_8019CDB8_73ED48(actor_index, FIXED_UNIT(-1.21875), FIXED_UNIT(0.3125));
            }

            func_8019F3F8_741388(actor_index);
        }
        break;

    case 0x30:
        actor->state++;
        actor->unk_18C |= 0x10;
        /* fallthrough */

    case 0x31:
        func_8019D780_73F710(actor_index);
        if (!func_8019EC28_740BB8(actor_index)) {
            if (actor->unk_124 != 0.0f) {
                actor->unk_124--;
                func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.3125));
            }
            else {
                func_8019CDB8_73ED48(actor_index, FIXED_UNIT(1.21875), FIXED_UNIT(0.3125));
            }

            func_8019F3F8_741388(actor_index);
        }
        break;

    case 0x50:
        actor->state++;
        var_a1 = (actor->unk_18C & 0x10) ^ 0x10;
        func_80042310((u16)(actor_index + 1), -8, (s16)(actor->posY.whole - 4), (u16)var_a1);
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;\
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->var_110 = 4.0f;
        actor->velocityX.raw /= 2;
        actor->velocityY.raw = FIXED_UNIT(4.5);
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        actor->unk_18C &= ~4;
        actor->unk_118 = FIXED_UNIT(1.75);
        actor->unk_124 = 0.0f;
        actor->unk_134 = 0.0f;
        /* fallthrough */

    case 0x51:
        func_8019F284_741214(actor_index);
        if (func_8019EC80_740C10(actor_index)) {
            actor->state = 0x10;
        }
        break;

    case 0x60:
        actor->state++;
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;\
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        actor->unk_18C &= ~4;
        actor->var_110 = 4.0f;
        actor->unk_118 = FIXED_UNIT(1);
        actor->unk_124 = 0.0f;
        /* fallthrough */

    case 0x61:
        func_8019F284_741214(actor_index);
        if (func_8019EC80_740C10(actor_index)) {
            actor->state = 0x10;
            actor->unk_134 = 0.0f;
        }
        break;

    case 0xA0:
        actor->state++;
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->unk_178 = 0;
        actor->velocityX.raw = 0;
        actor->hitboxAY0 = 26;
        actor->hitboxAY1 = -4;
        actor->hitboxAX0 = -20;
        actor->hitboxAX1 = 20;
        actor->damage = 40;
        actor->var_110 = 2.0f;
        actor->unk_124 = 600.0f;
        actor->unk_130 = 0.0f;
        actor->unk_134 = 0.0f;
        /* fallthrough */

    case 0xA1:
        func_8019D780_73F710(actor_index);
        if ((s32)gActiveFrames % 18 == 0) {
            func_8019B100_73D090(SFX_011B, actor_index, 256);
        }

        if (actor->flags_098 & ACTOR_FLAG3_UNK6) {
            actor->state++;
            actor->flags |= ACTOR_FLAG_UNK17;\
            actor->flags &= ~ACTOR_FLAG_UNK16;\
            actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        }
        else {
            func_8019EEA0_740E30(actor_index);
        }
        break;

    case 0xA2:
        func_8019D780_73F710(actor_index);
        actor->unk_124--;
        if (actor->velocityY.raw > FIXED_UNIT(-6.5)) {
            actor->velocityY.raw -= FIXED_UNIT(0.25);
        }

        func_8019EEA0_740E30(actor_index);
        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            if (actor->velocityY.raw < FIXED_UNIT(-2.5)) {
                actor->velocityX.raw /= 2;
                actor->velocityY.raw = -actor->velocityY.raw / 2;
            }
            else {
                actor->state--;
                actor->flags |= ACTOR_FLAG_UNK16;\
                actor->flags &= ~ACTOR_FLAG_UNK17;\
                actor->flags_098 &= ~ACTOR_FLAG3_UNK6;
                actor->velocityY.raw = 0;
            }
        }

        if (actor->unk_124 < 0.0f) {
            actor->state = 0x61;
            actor->flags &= ~ACTOR_FLAG_UNK7;
            Sound_StopSfx(SFX_00C1);
            Sound_StopSfx(SFX_00C0);
            actor->unk_174 = 0;
            actor->unk_178 = 0;
            actor->unk_17C = 0;
            actor->unk_118 = 0.0f;
            actor->unk_124 = 0.0f;
            actor->var_110 = 4.0f;
        }
        break;

    case 0x100:
        actor->state++;
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        actor->flags &= ~ACTOR_FLAG_UNK9;
        func_8019EA00_740990(actor_index, ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK15);
        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_PLATFORM0;
        actor->velocityX.raw = 0;
        actor->velocityY.raw = 0;
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        D_801A0D12 = 0;
        actor->unk_180 = FIXED_UNIT(13);
        actor->var_110 = 2.0f;
        /* fallthrough */

    case 0x101:
        func_8019D780_73F710(actor_index);
        switch (func_800291AC(actor_index, 0x110, 0x21403, 0x60, 0x21403)) {
        case 0:
            actor->posZ.raw = actor->unk_10C - FIXED_UNIT(1);
            if (D_801A0D10 != 0 && (actor->flags_098 & ACTOR_FLAG3_SHAKE)) {
                D_801A0D10 = 0;
                SpawnGemActor(actor_index, 50, 0);
            }
            break;

        case 1:
            break;

        case 2:
            Worm_SetSegmentFlags(actor_index);
            actor->unk_124 = 8.0f;
            break;

        case 3:
            actor->velocityX.raw = 0;
            actor->velocityY.raw = 0;
            Worm_SetSegmentFlags(actor_index);
            break;
        }
        break;

    case 0x110:
        D_800BE544 = actor_index + 2;
        func_8019D780_73F710(actor_index);
        temp_f0_2 = actor->unk_124;
        if (temp_f0_2 < 0.0f) {
            if (actor->velocityY.raw > FIXED_UNIT(-6.5)) {
                actor->velocityY.raw -= FIXED_UNIT(0.25);
            }
        }
        else {
            actor->unk_124 = temp_f0_2 - 1.0f;
        }

        if ((actor->velocityX.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK3)) || (actor->velocityX.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK2))) {
            actor->velocityX.raw = (f32)actor->velocityX.raw * -1.5;
            actor->velocityY.raw = ((Rand() & 3) << 15) + FIXED_UNIT(4);

            actor->health -= 15;
            if (actor->health & 0x8000) {
                actor->health = 0;
            }

            actor->colorR = 144;
            Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            SpawnParticle_RingWaveBlue(1.0f, gActors[actor_index + 1].posX.whole, gActors[actor_index + 1].posY.whole, actor->posZ.whole);
        }

        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            if (actor->velocityY.raw < FIXED_UNIT(-3)) {
                actor->health -= 5;
                actor->colorR = 144;
                if (actor->health & 0x8000) {
                    actor->health = 0;
                }

                actor->velocityX.raw = (f32)actor->velocityX.raw * 0.7;
                actor->velocityY.raw = (f32)-actor->velocityY.raw * 0.3;
                Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                SpawnParticle_RingWaveBlue(1.0f, gActors[actor_index + 1].posX.whole, gActors[actor_index + 1].posY.whole, actor->posZ.whole);
            }
            else {
                Sound_PlaySfx(SFX_JIGGLE_0090);
                gActors[actor_index + 3].unk_18C = 6;
                actor->state = 0x10;
                actor->unk_134 = 0.0f;
                gActors[actor_index + 1].flags |= ACTOR_FLAG_PLATFORM0;
                actor->iFrames = 0;
            }
        }
        break;

    case 0x90:
        actor->state++;
        actor->var_110 = 14.0f;
        /* fallthrough */

    case 0x91:
        actor->flags |= ACTOR_FLAG_UNK16;
        func_8019D780_73F710(actor_index);
        if (actor->var_110 == 0.0f) {
            actor->state = 0x10;
        }
        break;

    case 0x70:
        actor->state++;
        actor->flags &= ~ACTOR_FLAG_UNK9;
        func_8019EA00_740990(actor_index, ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK15);
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        actor->var_110 = 3.0f;
        actor->unk_18C |= 4;

        if (actor->hitByType != HITTYPE_22 && actor->hitByType != HITTYPE_21) {
            actor->colorR = 144;
        }

        actor->velocityX.raw = actor->unk_0F8.raw;
        if (actor->unk_0FC.raw < FIXED_UNIT(4.25)) {
            actor->velocityY.raw = FIXED_UNIT(4.25);
        }
        else {
            actor->velocityY.raw = actor->unk_0FC.raw;
        }

        /* fallthrough */

    case 0x71:
        actor->iFrames = 10;
        func_8019D780_73F710(actor_index);

        if (actor->velocityY.raw > FIXED_UNIT(-7)) {
            actor->velocityY.raw -= FIXED_UNIT(0.21875);
        }

        func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.0625));
        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            actor->state = 0x10;
            actor->unk_134 = 0.0f;
            actor->velocityX.raw /= 2;
        }
        break;

    case 0x1000:
        actor->state++;
        actor->flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        func_8019EA00_740990(actor_index, ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK15);
        Sound_StopSfx(SFX_00C1);
        Sound_StopSfx(SFX_00C0);
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;
        actor->flags_098 &= ~ACTOR_FLAG3_UNK5;
        actor->unk_18C &= ~4;
        actor->unk_174 = 0;
        actor->unk_178 = 0;
        actor->unk_17C = 0;
        actor->colorR = 144;
        actor->velocityY.raw = FIXED_UNIT(4);
        actor->unk_18C &= ~4;
        actor->var_110 = 4.0f;
        actor->unk_124 = 240.0f;
        /* fallthrough */

    case 0x1001:
        actor->iFrames = 10;
        unk_actor_index = actor_index + 1;
        func_8019D780_73F710(actor_index);

        if ((actor->velocityX.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK3)) ||
            (actor->velocityX.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK2))) {
            actor->velocityX.raw = -actor->velocityX.raw;
        }

        if (actor->velocityY.raw > FIXED_UNIT(-7)) {
            actor->velocityY.raw -= FIXED_UNIT(0.21875);
        }

        func_8019CDB8_73ED48(actor_index, 0, FIXED_UNIT(0.0625));
        
        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            actor->velocityY.raw = FIXED_UNIT(4) - ((Rand() & 3) << 16);
            actor->colorR = 144;
            D_800E3580 = 0;
            func_8002AA20(actor_index, 0);
            if (func_80029B74(0x60)) {
                actor->velocityX.raw = ((Rand() & 3) << 17) + FIXED_UNIT(0.5);
                if (Rand() & 1) {
                    actor->velocityX.raw = -actor->velocityX.raw;
                }
            }
            else {
                actor->velocityX.raw = ((Rand() & 3) << 17) + FIXED_UNIT(0.5);
                if (gPlayerActor.posX.whole < actor->posX.whole) {
                    actor->velocityX.raw = -actor->velocityX.raw;
                }
            }
        }

        BossDeathExplode(0, unk_actor_index, 1.0f, 1.0f);
        actor->unk_124--;
        if (actor->unk_124 < 0.0f) {
            actor->flags = 0;
            func_8019EA00_740990(actor_index, ACTOR_FLAG_ENABLED);
            return;
        }
        break;
    }

    func_8019E654_7405E4(actor_index);
    actor->colorR = Math_ApproachS32(actor->colorR, 0, 8);
    actor->colorG = actor->colorR;
    actor->colorB = actor->colorR;
    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A08D0_742860(s32 arg0) {
}

void func_801A08D8_742868(s32 arg0) {
}
