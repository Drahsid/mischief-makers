#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "80D90.h"
#include "8F080.h"

// "overlay 2" code for "Trapped", "Merco!!" and 2 unused scenes.

extern u16 D_800E8DB8[];
extern u16 D_800E8DCC[];
extern u16 D_800E8E38[];
extern ActorFunc D_800E9320[];

// .bss

u8 D_801A8020;
s16 D_801A8022;
s16 D_801A8024;

u16 D_801A7EA0_78C9E0[]={
    0, 0, 0, 10, 4, 0, 88, 6, 0, 89, 6, 0, 0x7ffd, 1, 90, 6, 0, 91, 9, 0, 0x7fff, 0
};

u16 D_801A7ECC_78CA0C[]={
    0, 0, 0, 0x25, 2, 1, 0x25, 2, 0, 10, 4, 2, 0x7FFF, 0
};

u16 D_801A7EE8_78CA28[]={
    0, 0, 0, 0x25, 2, 1, 0x25, 0xC, 0, 10, 4, 2, 0x7FFF, 0
};

u16 D_801A7F04_78CA44[]={
    0, 0, 0, 0x67, 8, 3, 0x67, 6, 0, 0x68, 0x20, 0x1c, 0x68, 8, 4, 0x7FFD, 1, 0x68, 8, 0, 0x7FFF, 0
};

u16 D_801A7F30_78CA70[]={
    0, 0, 0, 0x69, 0x8, 0x3, 0x69, 0x10, 0, 0x6A, 0x18, 0, 0x7fff
};

u16 D_801A7F4C_78CA8C[]={
    0, 0, 0, 0x6b, 8, 0, 11, 8, 2, 12, 16, 0, 0x7FFF
};

extern s32 func_8008F168(u16 actor_index);
extern s32 func_8008F220(u16 actor_index);
extern void func_8008F7E0(u16 actor_index);
extern void func_80090558(u16 actor_index);
extern void func_80091158(u16 actor_index);

void func_801A6900_78B440(s32 actor_index) {
}

void func_801A6908_78B448(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(32.0/256));
}

// init chain link for grappling hook hand for pirate mini-boss in "Trapped!"
void func_801A6968_78B4A8(u16 actor_index, u16 new_actor_index, u16 graphic_index) {
    f32 scale;

    gActors[new_actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(new_actor_index);

    scale = 0.7;
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
    gActors[new_actor_index].graphicIndex = graphic_index;
    gActors[new_actor_index].posX.whole = gActors[(u16)(actor_index + 0xB)].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[(u16)(actor_index + 0xB)].posY.whole;
    gActors[new_actor_index].posZ.raw = gActors[(u16)(actor_index + 0xB)].posZ.raw;
    gActors[new_actor_index].scaleX = scale;
    gActors[new_actor_index].scaleY = scale;
}

// init grappling hook hand for pirate mini-boss in "Trapped!"
void func_801A6A44_78B584(u16 x){
    u16 index;

    for (index = 0x4d; index < 0x55; index++){
        func_801A6968_78B4A8(x,index,0x28e);
    }
    gActors[index-1].graphicFlags = ACTOR_GFLAG_ROTZ;
    gActors[index-1].graphicIndex = GINDEX_HANDHOOK;
}

void func_801A6AD0_78B610(u16 actor_index) {
    u16 index;
    u16 angle;
    s32 radius;
    s32 radius_step;

    angle = FROM_FIXED(gActors[actor_index + 2].unk_180);
    radius = gActors[actor_index + 3].unk_180;
    radius_step = radius;

    for (index = 0x4D; index < 0x55; index++) {
        gActors[index].posX.raw = COS(angle) * radius + gActors[actor_index + 0xB].posX.raw;
        gActors[index].posY.raw = SIN(angle) * radius + gActors[actor_index + 0xB].posY.raw;
        radius += radius_step;
    }

    gActors[index - 1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[index - 1].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[index - 1].rotateZ = INDEX_TO_DEG(angle + COS_DEG_180);
    }
    else {
        gActors[index - 1].rotateZ = INDEX_TO_DEG(angle);
    }
}

void func_801A6CA8_78B7E8(u16 actor_index) {
    u16 index;

    for (index = 0x4D; index < 0x55; index++) {
        if (gActors[index].flags & ACTOR_FLAG_ACTIVE) {
            gActors[index].flags = 0;
            func_8003F05C(0.2f, gActors[index].posX.whole, gActors[index].posY.whole, 0);
        }
    }
}

void func_801A6D4C_78B88C(u16 actor_index){
    s16 x;
    s16 y;
    u16 index;

    x = (D_801A8022 - gActors[0x54].posX.whole) - gScreenPosCurrentX.whole;
    y = (D_801A8024 - gActors[0x54].posY.whole) - gScreenPosCurrentY.whole;
    for(index = actor_index; index < 0x48; index++){
        gActors[index].posX.whole += x;
        gActors[index].posY.whole += y;
    }

    for (index = 0x4d; index < 0x55; index++){
        gActors[index].posX.whole += x;
        gActors[index].posY.whole += y;
    }
}

// pirate spawns a bouncing spikeball based on health and/or chance.
void func_801A6E48_78B988(u16 arg0) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x49, 0x4C);
    if (actor_index == 0) {
        return;
    }

    gActors[actor_index].actorType = ACTORTYPE_OVL2_W5B_SPIKEBALL;
    Actor_Initialize(actor_index); // shuffle between permanence and colors.
    gActors[actor_index].var_110 = (Rand() & ((SPIKEBALL_MORTAL | SPIKEBALL_COLORMASK) >> 8)) << 8;
    gActors[actor_index].var_0D8 = 0;
    gActors[actor_index].posX.whole = gActors[arg0].posX.whole;
    gActors[actor_index].posY.whole = gActors[arg0].posY.whole + 0x10;
    switch (gActors[arg0].health & 0x300) {
    case 0x200:
        gActors[actor_index].velocityX.raw = TO_FIXED(gActors[arg0+1].unk_130);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-1.0);
        gActors[actor_index].unk_12C = 2.0f;
        break;
    case 0x100:
        gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(0.75);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-5.0);
        gActors[actor_index].unk_12C = 1.0f;
        break;
    default:
        if (Rand() & 1) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-2.0);
            gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(1.375);
            gActors[actor_index].unk_12C = 2.0f;
        }
        else {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-5.0);
            gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(0.75);
            gActors[actor_index].unk_12C = 1.0f;
        }
        break;
    }
}

void func_801A7100_78BC40(u16 actor_index) {
    Actor* actor;
    f32 scale;
    s16 position_x;

    if ((u32)gActors[actor_index].state != 0) {
        if (gActors[actor_index + 3].flags_098 & ACTOR_FLAG3_SHAKE) {
            if (func_800486F4() == 0xC) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-6.0), FIXED_UNIT(2.0));
            }

            if (func_800486F4() == 4) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(6.0), FIXED_UNIT(2.0));
            }

            if (func_800486F4() == 8) {
                gActors[actor_index].state = 0x4090;
            }
        }

        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_GRAB;
        if (gActors[actor_index + 3].flags_098 & ACTOR_FLAG3_GRAB) {
            if (!(D_801A8020 & 4)) {
                D_801A8020 |= 4;
                Sound_PlaySfxAtActor2(0x2F, actor_index);
            }

            if (gPlayerPosX.whole < 0xA8A) {
                gActors[actor_index].posX.whole = gActors[actor_index].posX.whole - gPlayerPosX.whole + 0xA8A;
                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].velocityX.raw = 0;
                }
            }
            else if (gPlayerPosX.whole >= 0xCE6) {
                gActors[actor_index].posX.whole = gActors[actor_index].posX.whole - gPlayerPosX.whole + 0xCE5;
                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].velocityX.raw = 0;
                }
            }
        }
        else {
            D_801A8020 &= ~4;
        }
    }

    gActors[actor_index + 1].var_0D8 = 0;
    func_8008F7E0(actor_index);

    if (gActors[actor_index].state < 0x4000) {
        D_800E9320[gActors[actor_index].state / 16](actor_index);
    }

    position_x = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x110;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        D_801A8020 = 0;
        gActors[actor_index].health = 0x2FF;
        D_800BE544 = actor_index;
        break;
    case 0x111:
        if (func_80029B74(0x80)) {
            if ((position_x < 0xAE0) || (position_x >= 0xC91)) {
                if (((position_x < 0xAE0) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) ||
                    ((position_x >= 0xC91) && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED))) {
                    gActors[actor_index].state = 0x120;
                }
                else {
                    gActors[actor_index].state = 0x40A0;
                }
            }
            else if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x120;
            }
            else {
                gActors[actor_index].state = 0x4080;
                gActors[actor_index + 2].unk_180 = gActors[actor_index + 1].unk_130 * FIXED_UNIT(-3.0);
                gActors[actor_index + 3].unk_180 = FIXED_UNIT(3.0);
            }
        }
        else if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x120;
        }
        break;
    case 0x40A0:
        gActors[actor_index].state++;
        SpawnCrosshair(0xF, actor_index + 3);
        func_80081790(actor_index, D_801A7F04_78CA44);
        if (gActors[actor_index + 1].unk_130 > 0.0f) {
            gActors[actor_index + 2].unk_180 = FIXED_UNIT(160.0);
            gActors[actor_index + 4].unk_180 = FIXED_UNIT(-4.0);
            gActors[actor_index + 5].unk_180 = FIXED_UNIT(16.0);
        }
        else {
            gActors[actor_index + 2].unk_180 = FIXED_UNIT(352.0);
            gActors[actor_index + 4].unk_180 = FIXED_UNIT(4.0);
            gActors[actor_index + 5].unk_180 = FIXED_UNIT(-16.0);
        }
        gActors[actor_index + 3].unk_180 = FIXED_UNIT(4.0);
        // fallthrough
    case 0x40A1:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            Sound_PlaySfxAtActor2(0x99, actor_index);
            func_801A6A44_78B584(actor_index);
        }
        break;
    case 0x40A2:
        gActors[actor_index + 3].unk_180 += FIXED_UNIT(1.0);
        func_801A6AD0_78B610(actor_index);
        if (gActors[0x54].posY.whole >= 0x45) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801A7F30_78CA70);
            gActors[0x54].posY.whole = 0x44;
            D_801A8022 = gActors[0x54].posX.whole + gScreenPosCurrentX.whole;
            D_801A8024 = gActors[0x54].posY.whole + gScreenPosCurrentY.whole;
            Sound_PlaySfxAtActor2(0x64, 0x54);
            Sound_PlaySfxAtActor2(0x2B, actor_index);
            func_801A6D4C_78B88C(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        }
        break;
    case 0x40A3:
        gActors[actor_index + 3].unk_180 = Math_ApproachS32(gActors[actor_index + 3].unk_180, FIXED_UNIT(8.0), FIXED_UNIT(96.0/256));
        gActors[actor_index + 2].unk_180 += gActors[actor_index + 4].unk_180;
        gActors[actor_index + 4].unk_180 = Math_ApproachS32(gActors[actor_index + 4].unk_180, gActors[actor_index + 5].unk_180, FIXED_UNIT(112.0/256));
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x4082;
            gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_130 * FIXED_UNIT(4.0);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
            func_80081790(actor_index, D_801A7F4C_78CA8C);
            Sound_PlaySfxAtActor2(0x24, actor_index);
            func_801A6CA8_78B7E8(actor_index);
        }
        else {
            func_801A6AD0_78B610(actor_index);
            func_801A6D4C_78B88C(actor_index);
        }
        break;
    case 0x4080:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A7EA0_78C9E0);
        // fallthrough
    case 0x4081:
        if ((func_8008F168(actor_index) == 0) && (gActors[actor_index].unk_16C & 1)) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = gActors[actor_index + 2].unk_180;
            gActors[actor_index].velocityY.raw = gActors[actor_index + 3].unk_180;
            Sound_PlaySfxAtActor2(0x24, actor_index);
            Sound_PlaySfxAtActor2(0x98, actor_index);
            func_801A6E48_78B988(actor_index);
        }
        break;
    case 0x4082:
        func_80091158(actor_index);
        if ((func_8008F220(actor_index) == 0) &&
            (gActors[actor_index].velocityY.raw < 0) &&
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801A7ECC_78CA0C);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw /= 4;
            gActors[actor_index].velocityY.raw = 0;
            Sound_PlaySfxAtActor2(0xAC, actor_index);
        }
        break;
    case 0x4083:
        func_801A6908_78B448(actor_index);
        if ((func_8008F168(actor_index) == 0) && (gActors[actor_index].unk_11C < 0.0f)) {
            gActors[actor_index].state = 0x110;
        }
        break;
    case 0x4090:
        gActors[actor_index].state++;
        func_801A6CA8_78B7E8(actor_index);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        func_80081790(actor_index, D_800E8DB8);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-5.0);
        D_801A8020 &= ~1;
        gActors[0].flags_098 |= ACTOR_FLAG3_UNK16;
        gActors[0].unk_0F8.raw = gActors[actor_index + 1].unk_130 * FIXED_UNIT(6.0);
        gActors[0].unk_0FC.raw = FIXED_UNIT(2.0);
        gActors[actor_index + 1].var_110 = 0.0f;
        // fallthrough
    case 0x4091:
        func_80091158(actor_index);
        gActors[actor_index + 1].var_110 += 1.0f;
        if ((gActors[actor_index].velocityY.raw >= 0) ||
            !(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            break;
        }

        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw /= 4;
        if (gActors[actor_index + 1].var_110 < 8.0f) {
            gActors[actor_index].state = 0x160;
            func_80081790(actor_index, D_801A7EE8_78CA28);
            Sound_PlaySfxAtActor2(0x6C, actor_index);
        }
        else {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E8DCC);
            gActors[actor_index + 1].var_110 = 40.0f;
            gActors[actor_index].iFrames = 10000;
            CameraShake(8, 8);
            Sound_PlaySfxAtActor2(0x9D, actor_index);
            Sound_PlaySfxAtActor2(0x2D, actor_index);
            gActors[actor_index].health -= 0x100;
        }

        break;
    case 0x4092:
        func_801A6908_78B448(actor_index);
        gActors[actor_index + 1].var_110 -= 1.0f;
        if (gActors[actor_index + 1].var_110 < 0.0f) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_800E8E38);
        }
        break;
    case 0x4093:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x110;
            gActors[actor_index].iFrames = 60;
        }
        break;
    }

    actor = &gActors[actor_index];
    func_80090558(actor_index);
    func_8008F498(actor_index, 0x30);
    scale = actor->unk_168 / 10000.0f;
    func_80032E60(actor_index + 3, 0x3002, 0x3A0, 7.0f * scale, 0, scale, scale);
    func_80032E60(actor_index + 3, 0x3014, 0x100, 9.0f * scale, 0, scale, scale);
    gActors[actor_index + 0x15].graphicFlags &= ~(s32)ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 0x15].graphicIndex = 0x3000;
    gActors[actor_index + 0x17].graphicIndex = 0;
    if (!(gActors[0x54].flags & ACTOR_FLAG_ACTIVE)) {
        gActors[actor_index + 0xB].graphicFlags &= ~(s32)ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 0xB].graphicIndex = 0x300A;
    }
    else {
        gActors[actor_index + 0xB].graphicIndex = 0;
    }

    if (actor->health > 0) {
        gActors[actor_index + 3].flags |= ACTOR_FLAG_UNK12;
        gActors[actor_index + 3].grabType = GRABTYPE_5;
        Actor_SetHitboxB(actor_index + 3, 8);
        gActors[actor_index + 3].flags_098 = 0;
        actor->flags &= ~ACTOR_FLAG_UNK12;
    }

    if (actor->iFrames > 0) {
        gActors[actor_index + 3].flags &= ~ACTOR_FLAG_UNK12;
    }

    if (actor->iFrames > 0) {
        Actor_SetColorRgb(actor_index, 0x7F - ((gActiveFrames * 0x10) & 0x70));
    }
    else {
        Actor_SetColorRgb(actor_index, Math_ApproachS32(actor->colorR, 0, 8));
    }
}

// behavior of pirate's spike balls.
// 0x12C: number of bounces.
void func_801A7C78_78C7B8(u16 actor_index) {
    Spikeball_Update(actor_index);
    if (gActors[actor_index].state == 0) {
        Spikeball_State0(actor_index);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    else {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].velocityX.raw > 0) {
            gActors[actor_index].rotateZ -= 10.0f;
        }
        else {
            gActors[actor_index].rotateZ += 10.0f;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(32.0 / 256);
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            // bounce ball if it hits the floor and has more "bounces" left.
            if (gActors[actor_index].unk_12C >= 0.0f) {
                Sound_PlaySfxAtActor2(SFX_009B, actor_index);
            }
            // 25% less bounce.
            gActors[actor_index].velocityY.raw = -(f32)gActors[actor_index].velocityY.raw * 0.75;
            gActors[actor_index].unk_12C -= 1.0f;
        }
        Spikeball_State1End(actor_index, 0);
        if ((gActors[actor_index].unk_190 & 1) || (gActors[actor_index].unk_12C < 0.0f)) {
            // ball is done bouncing, pops.
            gActors[actor_index].flags = 0;
            SpawnParticle_RingWaveBlue(0.5, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            Sound_PlaySfxAtActor2(SFX_POP, actor_index);
            return;
        }
    }
    Spikeball_UpdateHitbox(actor_index);
    Actor_SetHitboxA(actor_index, 2);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
}
