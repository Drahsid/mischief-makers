#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_8001DBA0(uint16_t* arg0, uint16_t index) {
    gActors[index].unk_0xD2 = arg0[5];
    Actor_Spawn(index);
    gActors[index].pos.x = arg0[1] - D_800BE558;
    gActors[index].pos.y = arg0[2] - D_800BE55C;
    gActors[index].unk_0x110 = arg0[3];
    gActors[index].unk_0xD8 = arg0[4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DE30.s")

#ifdef NON_MATCHING
// seems pretty close besides the MIPS2C_ERROR(cfc1)
// body of the MIPS2C_ERROR seems to be float to uint32, not sure what the & 78 is for (anyone have more insight?)
// actor->flag = D_800C9DD8[actor->unk_0xD2] is possibly wrong
void Actor_Spawn(uint16_t index) {
    Actor* actor;
    uint8_t phi_a0;

    actor = &gActors[index];

    if (actor->unk_0xD2 < 0x100) {
        actor->unk_0xA2 = -gActorInit[actor->unk_0xD2].unk_0x0;
        actor->unk_0xA8 = -gActorInit[actor->unk_0xD2].unk_0x2;
        actor->unk_0xAA = -gActorInit[actor->unk_0xD2].unk_0x4;
        actor->unk_0xB0 = -gActorInit[actor->unk_0xD2].unk_0x6;

        actor->unk_0xA4 = gActorInit[actor->unk_0xD2].unk_0x0;
        actor->unk_0xA6 = gActorInit[actor->unk_0xD2].unk_0x2;
        actor->unk_0xAC = gActorInit[actor->unk_0xD2].unk_0x4;
        actor->unk_0xAE = gActorInit[actor->unk_0xD2].unk_0x6;

        actor->health = gActorInit[actor->unk_0xD2].health;
        actor->unk_0xE4 = gActorInit[actor->unk_0xD2].unk_0xA;
        actor->flag = D_800C9DD8[actor->unk_0xD2]; // ((actor->unk_0xD2 * 4) + 0x800D0000)->unk - 0x6228;
        actor->unk_0xE8 = D_800C9FCC[actor->unk_0xD2];
    }
    else {
        actor->unk_0xA2 = -0x10;
        actor->unk_0xA4 = 0x10;
        actor->unk_0xA6 = 0x10;
        actor->unk_0xA8 = -0x10;
        actor->unk_0xAA = -0x10;
        actor->unk_0xAC = 0x10;
        actor->unk_0xAE = 0x10;
        actor->unk_0xB0 = -0x10U;
        actor->health = 10;
        actor->unk_0xE4 = 10;
        actor->flag = 3;
        actor->unk_0xE8 = (uint32_t)&D_800E1380;
    }

    actor->unk_0xB4 = 1.0f;
    actor->unk_0xB8 = 1.0f;
    actor->unk_0x14C = 0.0f;
    actor->unk_0x148 = 0.0f;
    actor->unk_0x144 = 0.0f;
    actor->unk_0x140 = 0.0f;
    actor->unk_0x13C = 0.0f;
    actor->unk_0x138 = 0.0f;
    actor->unk_0x134 = 0.0f;
    actor->unk_0x130 = 0.0f;
    actor->unk_0x12C = 0.0f;
    actor->unk_0x128 = 0.0f;
    actor->unk_0x124 = 0.0f;
    actor->unk_0x120 = 0.0f;
    actor->unk_0x11C = 0.0f;
    actor->unk_0x118 = 0.0f;
    actor->unk_0x114 = 0.0f;
    actor->unk_0x110 = 0.0f;
    actor->rgba.a = 0xFF;
    actor->unk_0xE6 = 1;
    actor->unk_0xDE = 1;
    actor->unk_0xC4 = 0;
    actor->unk_0xC0 = 0;
    actor->unk_0xBC = 0;
    actor->unk_0xD6 = 0;
    actor->unk_0xD4 = 0;
    actor->unk_0xD0_h = 0;
    actor->unk_0xCE = 0;
    actor->unk_0xCC = 0;
    actor->unk_0xCA = 0;
    actor->unk_0xC8 = 0;
    actor->unk_0x190 = 0;
    actor->unk_0x18C = 0;
    actor->unk_0x188 = 0;
    actor->unk_0x184 = 0;
    actor->unk_0x180_w = 0;
    actor->unk_0x17C = 0;
    actor->unk_0x178 = 0;
    actor->unk_0x174 = 0;
    actor->unk_0x170_w = 0;
    actor->unk_0x16C = 0;
    actor->unk_0x168 = 0;
    actor->unk_0x164 = 0;
    actor->unk_0x160 = 0;
    actor->unk_0x15C = 0;
    actor->unk_0x158 = 0;
    actor->unk_0x154 = 0;
    actor->unk_0x150 = 0;
    actor->unk_0x10C = 0;
    actor->unk_0x108 = 0;
    actor->unk_0x104 = 0;
    actor->unk_0x100 = 0;
    actor->unk_0xFC = 0;
    actor->unk_0xF8 = 0;
    actor->unk_0xF4 = 0;
    actor->unk_0xF0 = 0;
    actor->unk_0xEC = 0;
    actor->unk_0xE2 = 0;
    actor->unk_0xDF = 0;
    actor->unk_0xDD = 0;
    actor->unk_0xDC = 0;
    actor->unk_0xDB = 0;
    actor->unk_0xDA = 0;

    /*if ((MIPS2C_ERROR(cfc1) & 0x78) != 0) {
        if ((MIPS2C_ERROR(cfc1) & 0x78) == 0) {
            phi_a0 = (int32_t)(-2.1474836e9f) | 0x80000000;
        }
        else {
            goto block_6;
        }
    }
    else {
        phi_a0 = 0;
        if (0 < 0) {
        block_6:
            phi_a0 = -1U;
        }
    }*/

    actor->unk_0x98 = 0;
    actor->unk_0x94 = 0;
    actor->pos.z_w = 0;
    actor->pos.y = 0;
    actor->pos.x = 0;
    actor->unk_0x84 = 0;
    actor->unk_0xA0 = phi_a0;
    actor->rgba.b = phi_a0;
    actor->rgba.g = phi_a0;
    actor->rgba.r = phi_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/Actor_Spawn.s")
#endif
