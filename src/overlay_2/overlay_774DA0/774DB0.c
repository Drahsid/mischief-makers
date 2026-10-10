#include "common.h"
#include "actor.h"
#include "function_symbols.h"

#define SpawnActor38_EXT_ARGS , u16 arg6
#include "7D8E0.h"

// unused? Not listed in LUT

void func_801A6900_774DB0(u16 actor_index);
void func_801A6C80_775130(u16 actor_index);

void func_801A6900_774DB0(u16 actor_index) {
    u16 fixed_actor_index = 0xC8;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].unk_18C = 0;
        gPlayerPosX.raw = FIXED_UNIT(544.0);
        // fallthrough
    case 1:
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            SpawnActor39(0xC0, 0, 0, 20, 0x100, 56, 0, 120, 0);
            SpawnActor38(0xC1, 7, -112, 32, 0, 120, 0);
            SpawnActor40(0xC8, 0x36, -32, 0, 0x10C);
            gActors[fixed_actor_index].unk_134 = 0.0f;
            gActors[fixed_actor_index].unk_138 = 0.0f;
            gActors[fixed_actor_index].unk_13C_f32 = 0.0f;
            gActors[fixed_actor_index].unk_140_f32 = 0.0f;
            gActors[fixed_actor_index].unk_144 = 0.0f;
            gActors[fixed_actor_index].unk_148 = 0.0f;
            gActors[fixed_actor_index].unk_14C = 0.0f;
        }
        break;
    case 2:
        gActors[fixed_actor_index].posY.whole = Math_ApproachS32(gActors[fixed_actor_index].posY.whole, 56, 2);
        if (gActors[0xC1].flags == 0) {
            gActors[actor_index].state++;
            SpawnActor39(0xC0, 0, 0, 20, 0x100, 56, 60, 120, 0);
            SpawnActor38(0xC1, 8, -112, 32, 60, 120, 0);
            gActors[actor_index].unk_18C = 1;
        }
        break;
    case 3:
        if (gActors[0xC1].flags == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_154 = (Rand() & 0x3F) + 60;
        }
        break;
    case 4:
        if (gPlayerPosX.raw > FIXED_UNIT(544.0)) {
            gActors[actor_index].state = 7;
            gActors[actor_index].var_150 = 120;
            gActors[fixed_actor_index].var_150 = 0x8000;
            Sound_PlaySfx(0x42);
        }
        else if (--gActors[actor_index].var_154 < 0) {
            SpawnActor39(0xC0, 0, 0, 20, 0x100, 56, 0, 60, 0);
            SpawnActor38(0xC1, 9, -112, 32, 0, 60, 0);
            gActors[actor_index].state++;
            gActors[fixed_actor_index].unk_134 = 1.6f;
            Sound_PlaySfx(0x8D);
            D_800BE544 = 0;
            gActors[actor_index].unk_18C = 2;
        }
        break;
    case 5:
        if (gPlayerPosX.raw >= FIXED_UNIT(5680.0)) {
            gActors[actor_index].state++;
            gActors[fixed_actor_index].var_150 = 0x200;
            gActors[fixed_actor_index].unk_134 = 0.0f;
            Sound_PlaySfx(0x8D);
            D_800BE544 = 0x8000;
        }
        break;
    case 7:
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state = 0;
            gPlayerPosX.raw = FIXED_UNIT(544.0);
        }
        break;
    }
}

void func_801A6C80_775130(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    switch (actor->state) {
    case 0:
        Actor_Initialize(actor_index);
        actor->state++;
        actor->graphicFlags = ACTOR_GFLAG_SCALE;
        actor->flags = 0x69503;
        actor->graphicIndex = GINDEX_MINEROUND;
        Actor_SetHitboxB(actor_index, 8);
        actor->unk_0CE = 0;
        actor->unk_0DF = ACTOR0DF_0_1;\
        actor->hitType = HITTYPE_23;
        actor->health = 100;
        actor->damage = 0;
        actor->var_150 = 0x10;

    case 1:
        if (actor->flags_098 & ACTOR_FLAG3_GRAB) {
            actor->state++;
            actor->flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 |ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            actor->iFrames = 10;
            actor->velocityX.raw = 0;
            actor->velocityY.raw = 0;
        }
        else {
            if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
                actor->flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                actor->velocityX.raw = -actor->velocityX.raw / 4;
            }

            if (actor->flags_098 & ACTOR_FLAG3_UNK1) {
                actor->velocityX.raw = actor->unk_0F8.raw;
                actor->velocityY.raw = FIXED_UNIT(2.0);
                actor->unk_114 = 5.0f;
            }

            if (actor->velocityY.raw > FIXED_UNIT(-4.0)) {
                actor->velocityY.raw -= FIXED_UNIT(48.0/256);
            }

            if ((actor->velocityX.raw != 0) &&
                (((actor->velocityX.raw > 0) && (actor->flags_098 & 8)) ||
                 ((actor->velocityX.raw < 0) && (actor->flags_098 & 4)))) {
                actor->velocityX.raw = -actor->velocityX.raw / 2;
            }

            if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
                actor->velocityX.raw = actor->velocityX.raw / 4;
                actor->velocityY.raw = -actor->velocityY.raw / 2;
            }
        }
        break;

    case 2:
        if (actor->flags_098 & ACTOR_FLAG3_GRAB) {
            actor->iFrames = 10;
            actor->posX.raw = actor->unk_104;
            actor->posY.raw = actor->unk_108;
            actor->posZ.raw = actor->unk_10C;
        }
        else {
            actor->state--;
            actor->iFrames = 0;
            actor->var_150 = 0x10;
            actor->unk_114 = 5.0f;

            if (actor->parentIndex == 0) {
                actor->flags |= 0x21080;
            }
            else {
                actor->flags |= 0x21200;
            }

            if (actor->flags_098 & ACTOR_FLAG3_THROWN) {
                actor->velocityX.raw = actor->unk_0F8.raw;
                actor->velocityY.raw = actor->unk_0FC.raw;
            }
            else {
                actor->velocityY.raw = FIXED_UNIT(2.0);
            }
        }
        break;
    }

    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}
