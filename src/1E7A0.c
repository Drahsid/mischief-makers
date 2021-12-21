#include "common.h"

void func_8001DBA0(uint16_t* arg0, uint16_t index) {
    gActors[index].actorType = arg0[5];
    Actor_Spawn(index);
    gActors[index].pos.x = arg0[1] - gScreenPosCurrentX._hi;
    gActors[index].pos.y = arg0[2] - gScreenPosCurrentY._hi;
    gActors[index].unk_0x110 = arg0[3];
    gActors[index].unk_0xD8 = arg0[4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DE30.s")
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
    if (gActors[index].actorType < 0x100) {
        // actorInit = (((actorType * 7) & 0xFFFF) * 2) + &gActorInit;
        gActors[index].hitboxAX0 = -gActorInit[gActors[index].actorType].unk_0x0;
        gActors[index].hitboxAY1 = -gActorInit[gActors[index].actorType].unk_0x2;
        gActors[index].hitboxBX0 = -gActorInit[gActors[index].actorType].unk_0x4;
        gActors[index].hitboxBY1 = -gActorInit[gActors[index].actorType].unk_0x6;

        gActors[index].hitboxAX1 = gActorInit[gActors[index].actorType].unk_0x0;
        gActors[index].hitboxAY0 = gActorInit[gActors[index].actorType].unk_0x2;
        gActors[index].hitboxBX1 = gActorInit[gActors[index].actorType].unk_0x4;
        gActors[index].hitboxBY0 = gActorInit[gActors[index].actorType].unk_0x6;

        gActors[index].health = gActorInit[gActors[index].actorType].health;
        gActors[index].attackDmg = gActorInit[gActors[index].actorType].unk_0xA;
        gActors[index].flag = gActorInitFlags[gActors[index].actorType]; // ((gActors[index].actorType * 4) + 0x800D0000)->unk - 0x6228;
        gActors[index].graphicList = D_800C9FCC[gActors[index].actorType];
    }
    else {
        // OK
        gActors[index].hitboxAX0 = -0x10;
        gActors[index].hitboxAX1 = 0x10;
        gActors[index].hitboxAY0 = 0x10;
        gActors[index].hitboxAY1 = -0x10;
        gActors[index].hitboxBX0 = -0x10;
        gActors[index].hitboxBX1 = 0x10;
        gActors[index].hitboxBY0 = 0x10;
        gActors[index].hitboxBY1 = -0x10;
        gActors[index].health = 10;
        gActors[index].attackDmg = 10;
        gActors[index].flag = ACTOR_FLAG_ENABLED;
        gActors[index].graphicList = &D_800E1380;
    }

    gActors[index].scaleX = 1.0;
    gActors[index].scaleY = 1.0;

    // OK (except regalloc)
    gActors[index].unk_0x14C = 0;
    gActors[index].unk_0x148 = 0;
    gActors[index].unk_0x144 = 0;
    gActors[index].unk_0x140_f = 0;
    gActors[index].unk_0x13C = 0;
    gActors[index].unk_0x138 = 0;
    gActors[index].unk_0x134 = 0;
    gActors[index].unk_0x130 = 0;
    gActors[index].unk_0x12C_f = 0;
    gActors[index].unk_0x128 = 0;
    gActors[index].unk_0x124 = 0;
    gActors[index].unk_0x120 = 0;
    gActors[index].unk_0x11C = 0;
    gActors[index].unk_0x118 = 0;
    gActors[index].unk_0x114 = 0;
    gActors[index].unk_0x110 = 0;

    // weird float stuff?
    gActors[index].rgba.a = 0xFF;
    gActors[index].graphicTime = 1;
    gActors[index].unk_0xDE = 1;
    gActors[index].rotateZ = 0.0;
    gActors[index].rotateY = 0.0;
    gActors[index].rotateX = 0.0;
    gActors[index].unk_0xD6 = (int8_t)0;
    gActors[index].unk_0xD4 = (int8_t)0;
    gActors[index].actorState = (int8_t)0;
    gActors[index].unk_0xCE = (int8_t)0;
    gActors[index].unk_0xCC = (int8_t)0;
    gActors[index].unk_0xCA = (int8_t)0;
    gActors[index].unk_0xC8 = (int8_t)0;

    // OK
    gActors[index].unk_0x190 = NULL;
    gActors[index].unk_0x18C = NULL;
    gActors[index].unk_0x188 = 0;
    gActors[index].unk_0x184_w = 0;
    gActors[index].unk_0x180_w = 0;
    gActors[index].unk_0x17C = 0;
    gActors[index].unk_0x178 = NULL;
    gActors[index].unk_0x174 = 0;
    gActors[index].unk_0x170_w = 0;
    gActors[index].unk_0x16C = 0;
    gActors[index].unk_0x168 = 0;
    gActors[index].unk_0x164._w = 0;
    gActors[index].unk_0x160._w = 0;
    gActors[index].unk_0x15C = 0;
    gActors[index].unk_0x158._w = 0;
    gActors[index].unk_0x154._w = 0;
    gActors[index].unk_0x150._w = 0;
    gActors[index].unk_0x10C = 0;
    gActors[index].unk_0x108 = 0;
    gActors[index].unk_0x104._w = 0;
    gActors[index].unk_0x100 = 0;
    gActors[index].unk_0xFC._w = 0;
    gActors[index].unk_0xF8._w = 0;
    gActors[index].vel.z_w = 0;
    gActors[index].vel.y_w = 0;
    gActors[index].vel.x_w = 0;
    gActors[index].healthDelta = 0;
    gActors[index].unk_0xDF = 0;
    gActors[index].unk_0xDD = 0;
    gActors[index].unk_0xDC = 0;
    gActors[index].unk_0xDB = 0;
    gActors[index].unk_0xDA = 0;

    // something produces a float to u32 here

    gActors[index].unk_0x98 = phi_a0;
    gActors[index].unk_0x94 = phi_a0;
    gActors[index].pos.z_w = phi_a0;
    gActors[index].pos.y_1 = phi_a0;
    gActors[index].pos.x_1 = phi_a0;
    gActors[index].graphic = phi_a0;
    gActors[index].unk_0xA0 = phi_a0;
    gActors[index].rgba.b = phi_a0;
    gActors[index].rgba.g = phi_a0;
    gActors[index].rgba.r = phi_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/Actor_Spawn.s")
#endif
