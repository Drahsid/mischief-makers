#include "common.h"

void func_8001DBA0(uint16_t* arg0, uint16_t index) {
    thisActor.actorType = arg0[5];
    Actor_Spawn(index);
    thisActor.pos.x = arg0[1] - gScreenPosCurrentX._hi;
    thisActor.pos.y = arg0[2] - gScreenPosCurrentY._hi;
    thisActor.unk_0x110 = arg0[3];
    thisActor.unk_0xD8 = arg0[4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorInit/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorInit/func_8001DE30.s")
//above seem to deal with intermission actor lists.
#ifdef NON_MATCHING
// https://decomp.me/scratch/QZfDW
void Actor_Spawn(uint16_t index) {
    float phi_a0 = 0;

    /* needs work:
     * Reproduce argument spilling
     * Float instructions should be below this ifelse block
     * flag and unk_0xE8 rvalues may be loaded incorrectly
     */
    if (thisActor.actorType < 0x100) {
        // actorInit = (((actorType * 7) & 0xFFFF) * 2) + &gActorInit;
        thisActor.hitboxAX0 = -gActorInit[thisActor.actorType].unk_0x0;
        thisActor.hitboxAY1 = -gActorInit[thisActor.actorType].unk_0x2;
        thisActor.hitboxBX0 = -gActorInit[thisActor.actorType].unk_0x4;
        thisActor.hitboxBY1 = -gActorInit[thisActor.actorType].unk_0x6;

        thisActor.hitboxAX1 = gActorInit[thisActor.actorType].unk_0x0;
        thisActor.hitboxAY0 = gActorInit[thisActor.actorType].unk_0x2;
        thisActor.hitboxBX1 = gActorInit[thisActor.actorType].unk_0x4;
        thisActor.hitboxBY0 = gActorInit[thisActor.actorType].unk_0x6;

        thisActor.health = gActorInit[thisActor.actorType].health;
        thisActor.attackDmg = gActorInit[thisActor.actorType].unk_0xA;
        thisActor.flag = gActorInitFlags[thisActor.actorType]; // ((thisActor.actorType * 4) + 0x800D0000)->unk - 0x6228;
        thisActor.graphicList = D_800C9FCC[thisActor.actorType];
    }
    else {
        // OK
        thisActor.hitboxAX0 = -0x10;
        thisActor.hitboxAX1 = 0x10;
        thisActor.hitboxAY0 = 0x10;
        thisActor.hitboxAY1 = -0x10;
        thisActor.hitboxBX0 = -0x10;
        thisActor.hitboxBX1 = 0x10;
        thisActor.hitboxBY0 = 0x10;
        thisActor.hitboxBY1 = -0x10;
        thisActor.health = 10;
        thisActor.attackDmg = 10;
        thisActor.flag = ACTOR_FLAG_ENABLED;
        thisActor.graphicList = &D_800E1380;
    }

    thisActor.scaleX = 1.0;
    thisActor.scaleY = 1.0;

    // OK (except regalloc)
    thisActor.unk_0x14C = 0;
    thisActor.unk_0x148 = 0;
    thisActor.unk_0x144 = 0;
    thisActor.unk_0x140._f = 0;
    thisActor.unk_0x13C = 0;
    thisActor.unk_0x138 = 0;
    thisActor.unk_0x134 = 0;
    thisActor.unk_0x130 = 0;
    thisActor.unk_0x12C._f = 0;
    thisActor.unk_0x128 = 0;
    thisActor.unk_0x124 = 0;
    thisActor.unk_0x120 = 0;
    thisActor.unk_0x11C = 0;
    thisActor.unk_0x118 = 0;
    thisActor.unk_0x114 = 0;
    thisActor.unk_0x110 = 0;

    // weird float stuff?
    thisActor.rgba.a = 0xFF;
    thisActor.graphicTime = 1;
    thisActor.unk_0xDE = 1;
    thisActor.rotateZ = 0.0;
    thisActor.rotateY = 0.0;
    thisActor.rotateX = 0.0;
    thisActor.actorLink = (int8_t)0;
    thisActor.unk_0xD4 = (int8_t)0;
    thisActor.actorState = (int8_t)0;
    thisActor.unk_0xCE = (int8_t)0;
    thisActor.unk_0xCC = (int8_t)0;
    thisActor.unk_0xCA = (int8_t)0;
    thisActor.unk_0xC8 = (int8_t)0;

    // OK
    thisActor.unk_0x190 = NULL;
    thisActor.unk_0x18C._p = NULL;
    thisActor.unk_0x188._w = 0;
    thisActor.unk_0x184._w = 0;
    thisActor.unk_0x180._w = 0;
    thisActor.unk_0x17C._w = 0;
    thisActor.unk_0x178._w = 0;
    thisActor.unk_0x174 = 0;
    thisActor.unk_0x170._w = 0;
    thisActor.unk_0x16C._w = 0;
    thisActor.unk_0x168._w = 0;
    thisActor.unk_0x164._w = 0;
    thisActor.unk_0x160._w = 0;
    thisActor.unk_0x15C = 0;
    thisActor.unk_0x158._w = 0;
    thisActor.unk_0x154._w = 0;
    thisActor.unk_0x150._w = 0;
    thisActor.pos2.z_w = 0;
    thisActor.unk_0x108 = 0;
    thisActor.pos2.x_w = 0;
    thisActor.unk_0x100 = 0;
    thisActor.speedY._w = 0;
    thisActor.speedX._w = 0;
    thisActor.vel.z_w = 0;
    thisActor.vel.y_w = 0;
    thisActor.vel.x_w = 0;
    thisActor.healthDelta = 0;
    thisActor.unk_0xDF = 0;
    thisActor.unk_0xDD = 0;
    thisActor.unk_0xDC = 0;
    thisActor.unk_0xDB = 0;
    thisActor.unk_0xDA = 0;

    // something produces a float to u32 here

    thisActor.flag3 = phi_a0;
    thisActor.flag2 = phi_a0;
    thisActor.pos.z_w = phi_a0;
    thisActor.pos.y_1 = phi_a0;
    thisActor.pos.x_1 = phi_a0;
    thisActor.graphic = phi_a0;
    thisActor.unk_0xA0 = phi_a0;
    thisActor.rgba.b = phi_a0;
    thisActor.rgba.g = phi_a0;
    thisActor.rgba.r = phi_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorInit/Actor_Spawn.s")
#endif
