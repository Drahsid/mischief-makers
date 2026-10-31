#include "actor.h"
#include "common.h"
#include "28EF0.h"
#include "common_structs.h"

extern u16 D_800D98F4[];

extern f32 D_801A1104_6B9AF4;
extern s32 D_801A1108_6B9AF8;

extern s16 D_801A3594_6BBF84;
extern u16 D_801A35A4_6BBF94;
extern s32 D_801A35A8_6BBF98;
extern u16 D_801A35AC_6BBF9C[];
extern s16 D_801A3550_6BBF40[];

void func_80192100_6AAAF0(u16 actor_index, u16 child_actor_index, s16 arg2) {
    s32 var_a3;
    u16 index;

    gActors[child_actor_index].unk_138 = -(gActors[child_actor_index].var_154 - arg2 * FIXED_UNIT(19)) / FIXED_UNIT(1);
    var_a3 = arg2 * FIXED_UNIT(19);

    for (index = 0; index < 2; index++) {
        if (gActors[child_actor_index].var_154 < var_a3) {
            gActors[child_actor_index].graphicIndex = D_801A3550_6BBF40[index];
            return;
        }
        var_a3 += FIXED_UNIT(2);
    }
    gActors[child_actor_index].graphicIndex = 0x816; // TODO: which graphic index?
}

void func_801921DC_6AABCC(u16 actor_index) {
    if (gActors[actor_index].state & 1) {
        gActors[actor_index].colorR = 0x3F;
        gActors[actor_index].colorG = 0x7F;
        gActors[actor_index].colorB = 0;
    }
    else {
        gActors[actor_index].colorR = 0x4F;
        gActors[actor_index].colorG = 0x7F;
        gActors[actor_index].colorB = 0x4F;
    }
}

void func_8019224C_6AAC3C(u16 actor_index) {
}

void func_80192254_6AAC44(u16 actor_index) {
    u16 other_actor;

    if ((gActors[actor_index].posX.whole > 128) || (gActors[actor_index].posX.whole < -128)) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        other_actor = func_8003EEC0(0.3f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (other_actor != 0) {
            gActors[other_actor].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8;
            gActors[other_actor].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[other_actor].posY.raw += D_801A1108_6B9AF8;
            Actor_SetColorRgb(other_actor, 0x7F);
        }
        other_actor = SpawnParticle_RingWaveBlue(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (other_actor != 0) {
            gActors[other_actor].graphicFlags |= ACTOR_GFLAG_UNK8;
            gActors[other_actor].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[other_actor].posY.raw += D_801A1108_6B9AF8;
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        other_actor = func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (other_actor != 0) {
            gActors[other_actor].velocityY.raw = D_801A1108_6B9AF8;
        }
        other_actor = SpawnGemActor61(actor_index, 0x21, 0);
        if (other_actor != 0) {
            if (other_actor & 1) {
                gActors[other_actor].var_110 = (((u16)gActors[other_actor].var_110) | 2);
            }
            gActors[other_actor].var_150 = 0x78;
            gActors[other_actor].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(0.5);
        }
    }
    else {
        gActors[actor_index].var_110 -= 1.0f;
        if (gActors[actor_index].var_110 < 8.0f) {
            if (gActors[actor_index].var_110 < 0.0f) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                return;
            }
            else {
                gActors[actor_index].colorA -= 0x18;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9);
                gActors[actor_index].scaleY -= 0.01;
                gActors[actor_index].scaleX -= 0.3;
            }
        }
        else {
            gActors[actor_index].var_150 += gActors[actor_index].var_158;
            gActors[actor_index].var_154 += gActors[actor_index].var_15C;
            gActors[actor_index].posX.raw += gActors[actor_index].var_150;
            gActors[actor_index].posY.raw += gActors[actor_index].var_154;
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.8f, gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.5f, gActors[actor_index].unk_118);
        }
        gActors[actor_index].colorG -= 0xC;
        if (!(gActiveFrames & 7)) {
            gActors[actor_index].colorG = 0x7F;
        }
    }
}

void func_80192698_6AB088(u16 actor_index) {
    u16 free_actor;
    u16 particle_actor;

    free_actor = Actor_RangeFindInactive(0x54, 0x74);
    if (free_actor == 0) {
        return;
    }
    gActors[free_actor].actorType = ACTORTYPE_OVL0_PGAMMA_15;
    Actor_Initialize(free_actor);
    gActors[free_actor].posX.raw = gActors[actor_index].posX.raw + (COS(D_801A35A4_6BBF94) * D_801A35A8_6BBF98);
    gActors[free_actor].posY.raw = gActors[actor_index].posY.raw + (SIN(D_801A35A4_6BBF94) * D_801A35A8_6BBF98);
    gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole + 2;
    gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[free_actor].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[free_actor].graphicIndex = 0xD2;
    Actor_SetHitboxA(free_actor, 2);
    Actor_SetHitboxB(free_actor, 0xA);
    gActors[free_actor].unk_0DF = 0x20;
    gActors[free_actor].health = 0;
    gActors[free_actor].damage = 0x46;
    gActors[free_actor].hitType = HITTYPE_2;
    gActors[free_actor].var_110 = 40.0f;
    gActors[free_actor].var_150 = COS(D_801A35A4_6BBF94) * -65536.0f;
    gActors[free_actor].var_154 = SIN(D_801A35A4_6BBF94) * -65536.0f;
    gActors[free_actor].var_158 = COS(D_801A35A4_6BBF94) * 20480.0f;
    gActors[free_actor].var_15C = SIN(D_801A35A4_6BBF94) * 20480.0f;
    gActors[free_actor].velocityY.raw = D_801A1108_6B9AF8;
    gActors[free_actor].rotateZ = (f32)D_801A35A4_6BBF94 * 0.3515625;
    gActors[free_actor].colorG = 0x7F;
    gActors[free_actor].colorA = 0xF0;
    gActors[free_actor].scaleX = 0.3f;
    gActors[free_actor].scaleY = 2.0f;
    gActors[free_actor].unk_114 = 0.1f;
    gActors[free_actor].unk_118 = 0.1f;

    particle_actor = SpawnParticle_Image_90C0_16(0x1D6, gActors[free_actor].posX.whole, gActors[free_actor].posY.whole, gActors[free_actor].posZ.whole + 1);
    if (particle_actor == 0) {
        return;
    }
    gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[particle_actor].scaleX = 0.4f;
    gActors[particle_actor].scaleY = 5.0f;
    gActors[particle_actor].var_160 = TO_FIXED(D_801A35A4_6BBF94);
    gActors[particle_actor].colorG = 0x7F;
    gActors[particle_actor].colorB = 0x7F;
    gActors[particle_actor].posY.raw += D_801A1108_6B9AF8;
    gActors[particle_actor].var_150 = FIXED_UNIT(256);
    gActors[particle_actor].colorA = 0xC0;
    gActors[particle_actor].unk_148 = 3.0f;
}

void func_80192A64_6AB454(u16 actor_index) {
    s32 posX;
    s32 posY;
    s32 angle;
    u16 particle_actor;
    f32 dx;
    f32 dy;

    particle_actor = SpawnParticle_Image_90C0_16(D_801A35AC_6BBF9C[gActiveFrames % 9], 0, 0, 0);
    if (particle_actor == 0) {
        return;
    }
    gActors[particle_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[particle_actor].flags = (Rand() & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    angle = (FROM_FIXED(gActors[actor_index].unk_170) - COS_DEG_90) & COS_MASK;
    gActors[particle_actor].colorA = 0xC0;
    gActors[particle_actor].var_154 = -0x60;
    gActors[particle_actor].colorR = Rand() & 0x7F;
    gActors[particle_actor].colorG = Rand() & 0x7F;
    posX = gActors[actor_index + 10].posX.raw + (COS(angle) * FIXED_UNIT(-4.0));
    posY = gActors[actor_index + 10].posY.raw + (SIN(angle) * FIXED_UNIT(-4.0));
    gActors[particle_actor].posX.raw = ((s32) (posX - gActors[actor_index + 4].posX.raw) / 2) + gActors[actor_index + 4].posX.raw;
    gActors[particle_actor].posY.raw = ((s32) (posY - gActors[actor_index + 4].posY.raw) / 2) + gActors[actor_index + 4].posY.raw;
    gActors[particle_actor].posZ.raw = gActors[actor_index + 10].posZ.raw - 4;
    dx = FROM_FIXED(gActors[actor_index + 1].posX.raw - posX);
    dy = FROM_FIXED(gActors[actor_index + 1].posY.raw - posY);
    gActors[particle_actor].scaleX = sqrtf(SQ(dx) + SQ(dy)) / 30.0f;
    gActors[particle_actor].var_160 = TO_FIXED(angle);
    if (Rand() & 1) {
        gActors[particle_actor].var_160 += FIXED_UNIT(512.0);
    }
    if ((gActors[particle_actor].graphicIndex == GINDEX_CIRCLEEFFECT) || (gActors[particle_actor].graphicIndex == GINDEX_LASERA)) {
        if (gActors[particle_actor].graphicIndex == GINDEX_CIRCLEEFFECT) {
            gActors[particle_actor].scaleY = 2.0f;
        }
        else {
            gActors[particle_actor].scaleY = ((f32) (Rand() & 7) * 0.1) + 4.0;
        }
        gActors[particle_actor].palette_18C = D_800D98F4;
    }
    else {
        gActors[particle_actor].scaleY = (((f32) (Rand() & 7) * 0.2) + 2.5);
        gActors[particle_actor].palette_18C = PALETTE_8022D548;
    }
    gActors[particle_actor].unk_114 = -2.0f;
    gActors[particle_actor].scaleY *= D_801A1104_6B9AF4;
    gActors[particle_actor].unk_148 = 1.0f;
}

void func_80192E28_6AB818(u16 actor_index) {
    s32 pad;
    u16 other_actor;

    if (!(gActiveFrames & 3)) {
        other_actor = func_8003EEC0(0.7f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 6);
        if (other_actor != 0) {
            gActors[other_actor].graphicFlags |= ACTOR_GFLAG_UNK8;
            gActors[other_actor].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[other_actor].velocityZ.raw = FIXED_UNIT(0.75);
            gActors[other_actor].colorA = 0x60;
            Actor_SetColorRgb(other_actor, 0x5F);
        }
    }
    other_actor = SpawnParticle_List_90C0_16(&D_801A3594_6BBF84, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gPlayerActor.posZ.raw + 4);
    if (other_actor != 0) {
        gActors[other_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[other_actor].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_FREEZE_POS;
        gActors[other_actor].scaleX = 0.455f;
        gActors[other_actor].scaleY = 0.78f;
        gActors[other_actor].colorA = 0xC0;
        gActors[other_actor].var_154 = -4;
        gActors[other_actor].var_160 = TO_FIXED((Rand() * 4) & 0x3C0);
        gActors[other_actor].var_150 = (120 - (Rand() & 0xF0)) * 0x1000;
        gActors[other_actor].unk_130 = actor_index;
        gActors[other_actor].unk_14C = gActors[actor_index].actorType;
        gActors[other_actor].unk_134 = 0.0f;
        gActors[other_actor].unk_138 = 0.0f;
        gActors[other_actor].palette_18C = PALETTE_8022D548;
        gActors[other_actor].unk_13C_f32 = 1.0f;
        gActors[other_actor].var_110 = 0.26 - ((f32) (Rand() & 3) * 0.05);
        gActors[other_actor].unk_118 = -0.0325f;
        gActors[other_actor].unk_11C = -0.0975f;
        gActors[other_actor].unk_140_f32 = 17.0f;
        gActors[other_actor].unk_148 = (Rand() & 7) + 5;
        gActors[other_actor].pfn_17C = func_801921DC_6AABCC;
    }
}

void func_801930F4_6ABAE4(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].rotateZ = 765.0f;
    gActors[actor_index].unk_12C = 63.0f;
    gActors[actor_index].posX.raw = gActors[actor_index].posX.raw;
    gActors[actor_index].posY.raw = gActors[actor_index].posY.raw;
}
// TODO: .rodata split here
