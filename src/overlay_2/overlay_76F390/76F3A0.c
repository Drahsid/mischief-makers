#include "common.h"
#include "actor.h"


// determines spawn position and velocity of flame arches in "Sea of Lava"
typedef struct {
    /* 0x00 */ s16 velX;
    /* 0x02 */ s16 velY;
    /* 0x04 */ s16 velZ;
    /* 0x06 */ s16 posY;
    /* 0x08 */ s16 posZ;
} FlameArchInit; /* size = 0x0A */


// table of flame arch spawn data in "Sea of Lava"
FlameArchInit D_801A7250_76FCF0[] = {
    { 0, 0x11, 0xC, -0x40, -0xC0 },
    { 0, 0xE, 6, -0x40, -0x60 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x11, -0xE, -0x60, 0x100 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x11, 0xF, -0x50, -0xC0 },
    { 0, 0, 0, 0, 0 },
};

void func_801A6900_76F3A0(u16 actor_index);
void func_801A694C_76F3EC(u16 actor_index);
void func_801A6980_76F420(u16 actor_index);
void func_801A6B28_76F5C8(u16 actor_index);
void func_801A6CAC_76F74C(u16 actor_index);
void func_801A6E4C_76F8EC(u16 actor_index);
void func_801A7180_76FC20(u16 actor_index);

void func_801A6900_76F3A0(u16 actor_index) {
    if (gActors[actor_index].posY.whole >= 0x101) {
        gActors[actor_index].flags = 0;
    }
}

void func_801A694C_76F3EC(u16 actor_index) {
    ActorUpdate_Spikeball_Static(actor_index);
    func_801A6900_76F3A0(actor_index);
}

void func_801A6980_76F420(u16 actor_index) {
    u16 temp_v0;
    u16 temp_index;
    FlameArchInit* temp_v1;

    if ((gActiveFrames & 3) == 0) {
        temp_v0 = Actor_RangeFindInactive(0x30, 0x90);
        if (temp_v0 != 0) {
            temp_index = gActors[actor_index].var_0D8 * 5;
            temp_v1 = (FlameArchInit*)&((s16*)D_801A7250_76FCF0)[temp_index];
            gActors[actor_index].posY.whole = temp_v1->posY;
            gActors[actor_index].posZ.whole = temp_v1->posZ;
            ACTOR_INIT(temp_v0, ACTORTYPE_OVL2_SOL_ARCHFLAME);
            gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[temp_v0].flags = (Rand() & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE);
            gActors[temp_v0].damage = 100;
            gActors[temp_v0].unk_0DA = 0x84;
            gActors[temp_v0].unk_0DB = 0xB;
            gActors[temp_v0].unk_0F8.raw = FIXED_UNIT(4.0);
            gActors[temp_v0].unk_0FC.raw = FIXED_UNIT(4.0);
            gActors[temp_v0].scaleX = gActors[actor_index].unk_114;
            gActors[temp_v0].scaleY = gActors[temp_v0].scaleX;

            if (gActiveFrames & 4) {
                gActors[temp_v0].graphicIndex = GINDEX_FIREBALL;
            }
            else {
                gActors[temp_v0].graphicIndex = GRAPHIC_FRAME(FIREBALL,1);
            }

            Actor_SetHitboxA(temp_v0, 0x10);
            Actor_SetColorRgb(temp_v0, ((u16*)&gActors[actor_index].var_158)[1]);
            gActors[temp_v0].colorA = gActors[actor_index].var_154;
            gActors[temp_v0].velocityX.whole = temp_v1->velX;
            gActors[temp_v0].velocityY.whole = temp_v1->velY;
            gActors[temp_v0].velocityZ.whole = temp_v1->velZ;
            gActors[temp_v0].posX.whole = gActors[actor_index].posX.whole - (Rand() & 0xF) + 8;
            gActors[temp_v0].posY.whole = gActors[actor_index].posY.whole - (Rand() & 0xF) + 8;
            gActors[temp_v0].posZ.whole = gActors[actor_index].posZ.whole;
        }
    }
}

void func_801A6B28_76F5C8(u16 actor_index) {
    u16 temp_v0;
    u16 temp_index;
    FlameArchInit* temp_v1;

    if ((gActiveFrames & 3) == 0) {
        CameraShake(4, 5);
        temp_index = gActors[actor_index].var_0D8 * 5;
        temp_v1 = (FlameArchInit*)&((s16*)D_801A7250_76FCF0)[temp_index];
        temp_v0 = SpawnParticle_Image_90C0_16(GRAPHIC_FRAME(DASHEFFECT, 1), gActors[actor_index].posX.whole, temp_v1->posY, temp_v1->posZ + 1);

        if (temp_v0 != 0) {
            gActors[temp_v0].graphicFlags = (ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ);
            gActors[temp_v0].scaleX = (1.0 - ((Rand() & 0xF) / 28.0f));
            gActors[temp_v0].scaleY = (((Rand() & 0xF) / 18.0f) + 2.5);
            gActors[temp_v0].var_110 = 0.2f;
            gActors[temp_v0].var_160 = TO_FIXED(Rand() & 0x1F) + FIXED_UNIT(752.0);
            gActors[temp_v0].palette_18C = PALETTE_8022D4E8;
            gActors[temp_v0].unk_148 = 3.0f;
        }
    }
}

void func_801A6CAC_76F74C(u16 actor_index) {
    u16 temp_v0;

    if ((gActiveFrames % 5) == 0) {
        temp_v0 = SpawnParticle_Image_90C0_16(GRAPHIC_FRAME(DASHEFFECT, 1), 0, 0, 0);
        if (temp_v0 != 0) {
            u16 temp_v1;

            gActors[temp_v0].graphicFlags = (ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ);
            gActors[temp_v0].flags |= ACTOR_FLAG_UNK15;
            gActors[temp_v0].scaleX = 0.3f;
            gActors[temp_v0].scaleY = 2.0f;
            gActors[temp_v0].colorR = 0x7F;
            temp_v1 = Rand();
            gActors[temp_v0].palette_18C = PALETTE_8022D4E8;
            gActors[temp_v0].var_160 = ((((temp_v1 * 4) & 0x1F0) + 0x200) << 2) * FIXED_UNIT(0.25);
            gActors[temp_v0].unk_130 = actor_index;
            gActors[temp_v0].unk_14C = gActors[actor_index].actorType;
            gActors[temp_v0].unk_134 = 0.0f;
            gActors[temp_v0].velocityZ.raw = FIXED_UNIT(1.0);
            gActors[temp_v0].var_154 = -0x10;
            gActors[temp_v0].unk_138 = -16.0f;
            gActors[temp_v0].unk_13C_f32 = 16.0f;
            gActors[temp_v0].var_110 = 0.55f;
            gActors[temp_v0].unk_118 = -0.02f;
            gActors[temp_v0].unk_11C = -0.02f;
            gActors[temp_v0].unk_140_f32 = -20.0f;
        }
    }
}

void func_801A6E4C_76F8EC(u16 actor_index) {
    u16 temp_v1;

    gActors[actor_index].var_110 += 1.0f;
    temp_v1 = (u16)gActors[actor_index].var_110 % 0xF0;

    if ((temp_v1 >= 0x1E) && (temp_v1 < 0xD3)) {
        if (Actor_IsOutsideRegion(actor_index, 0x40) == 0) {
            if ((gActiveFrames & 7) == 0) {
                Sound_PlaySfxAtActor3(0x4B, actor_index);
            }
        }
    }

    if (temp_v1 >= 0x3C) {
        if (temp_v1 < 0xD3) {
            if ((gActors[actor_index].posX.whole < 0xE0) && (gActors[actor_index].posX.whole >= -0xDF)) {
                func_801A6B28_76F5C8(actor_index);
                func_801A6CAC_76F74C(actor_index);
                func_801A6980_76F420(actor_index);
            }

            if (temp_v1 >= 0xB4) {
                gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 0.1f, 0.05f);
                gActors[actor_index].var_154 = Math_ApproachF32(gActors[actor_index].var_154, 0.0f, 8.0f);
                return;
            }

            gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 2.3f, 0.05f);
            gActors[actor_index].var_154 = Math_ApproachF32(gActors[actor_index].var_154, 192.0f, 4.0f);
            gActors[actor_index].var_158 = Math_ApproachF32(gActors[actor_index].var_158, 0.0f, 1.0f);
            return;
        }
    }
    if ((temp_v1 >= 0x1E) && (temp_v1 < 0x3D)
        && (gActors[actor_index].posX.whole < 0xE0) && (gActors[actor_index].posX.whole >= -0xDF)) {
        func_801A6B28_76F5C8(actor_index);
        func_801A6CAC_76F74C(actor_index);
        return;
    }

    if ((gActiveFrames & 3) == 0) {
        CameraShake(2, 4);
    }

    gActors[actor_index].unk_114 = 0.1f;
    gActors[actor_index].var_154 = 0;
    gActors[actor_index].var_158 = 0x7F;
}

// update function for arch flame in "Sea of Lava"
void func_801A7180_76FC20(u16 actor_index) {
    // trigger damage collision only if around Marina's depth.
    if ((gActors[actor_index].posZ.whole < 0x10) && (gActors[actor_index].posZ.whole >= -0xB) && (gActors[actor_index].colorA >= 0x81)) {
        gActors[actor_index].flags |= (ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9); 
    }
    else {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
    }
    // despawn when falling and below lava.
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].posY.whole < -0x40)) {
        gActors[actor_index].flags = 0;
        return;
    }
    // "gravity"
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8.0)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(1.0);
    }
}
