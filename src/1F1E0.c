#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>
#include <actor.h>

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E6F4.s")

// BUG: This function writes to unallocated stack space!
void func_8001E808(int32_t arg0, int32_t arg1) {
    return;
}

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E814.s")

#ifdef NON_MATCHING
// Differences are regalloc, instruction order, and we are missing a sw anf move
void func_8001E8E4(int32_t arg0, int32_t arg1) {
    Actor* temp_v0;
    Actor* temp_v1;
    Actor* temp_v1_2;
    int32_t temp_t7;
    Actor* phi_v1;

    temp_t7 = arg1 & 0xFFFF;
    temp_v0 = &gActors[arg0 & 0xFFFF];
    if ((temp_v0->flag & 0x20) == 0) {
        temp_v1 = &gActors[temp_t7];
        temp_v1->unk_0xF8 = temp_v0->unk_0xF8;
        phi_v1 = temp_v1;
    }
    else {
        temp_v1_2 = &gActors[temp_t7];
        temp_v1_2->unk_0xF8 = (uint32_t) -(int32_t) temp_v0->unk_0xF8;
        phi_v1 = temp_v1_2;
    }
    phi_v1->unk_0xFC = temp_v0->unk_0xFC;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E8E4.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc and storing the two args forward on the stack
void func_8001E964(int32_t arg0, int32_t arg1) {
    int32_t index0 = arg1 & 0xFFFF;
    int32_t index1 = arg0 & 0xFFFF;
    Actor* temp_v0;
    Actor* temp_v1;

    temp_v0 = &gActors[index0];
    temp_v1 = &gActors[index1];
    if ((int16_t)temp_v0->pos_x < (int16_t)temp_v1->pos_x) {
        temp_v0->unk_0xF8 = (int32_t)-temp_v1->unk_0xF8;
    }
    else {
        temp_v0->unk_0xF8 = (int32_t)temp_v1->unk_0xF8;
    }
    temp_v0->unk_0xFC = (uint32_t)temp_v1->unk_0xFC;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E964.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E9DC.s")

#ifdef NON_MATCHING
// Not close to matching yet
Actor* func_8001EADC(int32_t arg0, int32_t arg1) {
    int32_t index0 = arg0 & 0xFFFF;
    int32_t index1 = arg1 & 0xFFFF;
    uint8_t temp_v0_2;
    Actor* temp_v0;
    Actor* temp_v1;

    temp_v1 = &gActors[index1];
    temp_v0_2 = temp_v1->unk_0xDE;
    if (temp_v0_2 == 0xB || temp_v0_2 == 0xE || temp_v0_2 == 0xF) {
        temp_v1->unk_0x98 &= ~2;
        temp_v0 = &gActors[index0];
        temp_v0->unk_0x98 ^= 3;
        temp_v0->unk_0xDC = temp_v0->unk_0xDA;
        temp_v0->unk_0xDD = temp_v0->unk_0xDB;
        return temp_v0;
    }
    return func_8001E9DC(index0, index1, &gActors, sizeof(Actor));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001EADC.s")
#endif

#ifdef NON_MATCHING
/* This function is related to hit / kncokback effects?
 * Differences are regalloc, and instruction order
 * Function called from D_800CA1C0 seems to be bogus (the wrong effect triggers in-game)
*/
void func_8001EB8C(int32_t actorIndexL, int32_t actorIndexR) {
    int32_t index0 = actorIndexR & 0xFFFF;
    int32_t index1 = actorIndexL & 0xFFFF;
    Actor* actor0 = &gActors[index1];
    Actor* actor1 = &gActors[index0];

    actor1->unk_0xDC = actor0->unk_0xDA;
    actor1->unk_0xDD = actor0->unk_0xDB;
    //((actor0->unk_0xDB * 4) + 0x800D0000)->unk-5E40(index0, index1, &gActors, 0x198);
    D_800CA1C0[actor0->unk_0xDB * 4](index0, index1, &gActors, sizeof(Actor));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001EB8C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001EC1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001F88C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FA78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FCA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FEB0.s")

void func_8001FF28(void) {
    return;
}

void func_8001FF30(void) {
    gPlayerActorp->unk_0x98 &= 0x80600;
}

#ifdef NON_MATCHING
/* Differences are regalloc and instruction order
 * Additionally, when it loads actor.unk_0x98, there should be a nop following it
*/
int32_t func_8001FF50(void) {
    int32_t index;
    int32_t temp;

    for(index = 1; index < ACTOR_COUNT1; index = temp) {
        index++;
        temp = index & 0xFFFF;
        gActors[index].unk_0x98 &= 0x380600;
    }

    return temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FF50.s")
#endif

void func_8001FFA0(void) {
    return;
}

void func_8001FFA8(void) {
    D_800CA230 = 0;
    D_800BE704 = D_801781C8;
    D_800BE708 = D_801781CA;
    D_800BE544 = D_801781CC;
    D_800D2920 = D_801781CE;
    D_800D2924 = D_801781D0;
    D_800D2918 = D_801781D2;
    D_800D291C = D_801781D4;
}

#ifdef NON_MATCHING
/* Update function for main gamestate when not paused
 * A lot of regalloc differences
 * Code relatively different
*/
uint16_t func_80020024(void) {
    int16_t* temp_s1;
    uint16_t temp_a0;
    uint16_t temp_t2;
    uint16_t temp_t5;
    uint16_t temp_v0;
    uint16_t temp_v0_2;
    int32_t phi_v1;
    uint8_t* phi_s2;
    int32_t phi_s0;
    uint16_t* phi_s3;
    int32_t phi_s4;
    int16_t* phi_s1;
    uint16_t phi_return;

    D_800BE4E0 = (uint16_t)(D_800BE4E0 + 1);
    D_801782B8 = (uint16_t)(D_801782B8 + 1);
    if (((int32_t) D_801781E0 < 0x8CA0) && ((int32_t)D_800D28E8 >= 2) && (func_8005DEFC() == 0) && ((int32_t)D_800D28E4 < 0x61)) {
        D_801781E0 = (uint16_t)(D_801781E0 + 1);
    }
    func_800122B0();
    if ((D_800BE6AC & 2) != 0) {
        temp_a0 = D_800BE4FC;
        if ((temp_a0 & D_800BE530) != 0) {
            temp_v0_2 = D_800BE6B4;
            if (temp_v0_2 != 1) {
                D_800BE6B4 = (uint16_t)(temp_v0_2 - 1);
                D_801781DC = (uint16_t)0U;
            }
        }
        temp_v0 = D_800BE6B4;
        phi_v1 = (int32_t)temp_v0;
        if ((temp_a0 & D_800BE534) != 0) {
            phi_v1 = (int32_t)temp_v0;
            if (temp_v0 != 0x32) {
                temp_t2 = temp_v0 + 1;
                D_800BE6B4 = temp_t2;
                D_801781DC = (uint16_t)0U;
                phi_v1 = temp_t2 & 0xFFFF;
            }
        }
        if (((int32_t)D_800BE4E4 % phi_v1) != 0) {
            D_801781DC = (uint16_t) (D_801781DC | temp_a0);
            return temp_v0;
        }
        temp_t5 = D_801781DC;
        D_801781DC = (uint16_t)0U;
        D_800BE4FC = (uint16_t) (temp_a0 | temp_t5);
    }
    func_800253B0();
    func_8001F88C();
    func_80014AF0();
    func_80016CB4();
    func_80012830();
    func_80016D94();
    func_8001EC1C();
    func_8001107C();
    if (D_800CA230 == 0) {
        func_8004ED10(0);
        func_8008C528(0x41);
    }
    func_8001FF30();
    func_8001DE30();
    func_8008CA90();
    func_8001751C();
    func_80014C44();
    func_8005C8A4();
    func_8001FF50();
    func_8005F6D4();
    func_80022470();
    if (gGameState == 6) {
        func_80047CCC();
    }
    func_80047C98();
    if ((D_800BE6AC & 0x4000) != 0) {
        phi_s2 = &D_800EF4F0;
        phi_s0 = 0x3C;
        phi_s3 = &D_800EF508;
        phi_s4 = 0x30;
        phi_s1 = &D_800EF4F8;
loop_21:
        func_80083C54(*phi_s2, -0x90, phi_s0);
        func_80083A74(*phi_s3 - 0x21, -0x90, phi_s4);
        temp_s1 = phi_s1 + 2;
        phi_s2 += 1;
        phi_s0 += -0x20;
        phi_s3 += 2;
        phi_s4 += -0x20;
        phi_s1 = temp_s1;
        phi_return = func_80083C54((uint8_t)*phi_s1, -0x68, phi_s0);
        if ((uint32_t)temp_s1 != (uint32_t)&D_800EF500) {
            goto loop_21;
        }
    }
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020024.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8002034C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_800205DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_800207DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020844.s")

#ifdef NON_MATCHING
// primarily regally differences, and a missing move
int32_t func_800208D4(void) {
    int32_t index;
    int32_t phi_return;

    for (index = 0xC8; index < 0xCC; index = (index + 1) & 0xFFFF) {
        gActors[index].flag = 0;
        phi_return = index; // this should be a move v0, t8, and is inside of the loop
    }
    D_800EF4D2 = (int16_t)D_800EF4D4;
    gGameSubState = (uint16_t)0;
    D_800BE4E8 = (uint16_t)0;
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_800208D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8002092C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020A90.s")

#ifdef NON_MATCHING
// The only difference here is regalloc
void func_80021034(void) {
    uint32_t sp1C;

    sp1C = func_800A5720(); // osGetTime?
    func_800457C8();
    D_801374DC = func_800A5720() - sp1C; // time - lastTime ?
    // if game paused ?
    if (D_800BE4E8 != 0) {
        func_80020A90();
    }
    else {
        func_80020024();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80021034.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80021098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80021270.s")

void func_80021620(void) {
    if ((D_800BE4FC & D_800BE534) != 0) {
        D_800BE6B8 ^= 0xFF;
    }
}

void func_80021658(void) {
    return;
}

void func_80021660(void) {
    return;
}

// BUG: This function writes to unallocated stack space!
void func_80021668(int32_t arg0, int32_t arg1, int32_t arg2, int32_t arg3) {
    return;
}

void func_8002167C(void) {
    return;
}

