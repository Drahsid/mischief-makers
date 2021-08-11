#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

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
        temp_v1_2->unk_0xF8 = (uint32_t) - (int32_t)temp_v0->unk_0xF8;
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
    if ((int16_t)temp_v0->pos.x < (int16_t)temp_v1->pos.x) {
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

    for (index = 1; index < ACTOR_COUNT1; index = temp) {
        index++;
        temp = index & 0xFFFF;
        gActors[index].unk_0x98 &= 0x380600;
    }

    return temp;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FF50.s")
#endif

void func_8001FFA0(void) {}

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

void func_80020024(void) {
    int32_t phi_s0;
    int16_t* phi_s1;
    uint8_t* phi_s2;
    uint16_t* phi_s3;
    int32_t phi_s4;

    D_800BE4E0++;
    gStageTimeReal++;

    phi_s0 = 36000; // probably a fake match, but it is obvious that s0 or s4 is reused somewhere before the loop at the bottom
    if ((((gStageTime < phi_s0) && (D_800D28E8 >= 2)) && (func_8005DEFC() == 0)) && (D_800D28E4 < 0x61)) {
        gStageTime++;
    }

    func_800122B0(); // input history

    if ((D_800BE6AC & 2) != 0) {
        if ((gButtonPress & gButton_LTrig) != 0) {
            if (D_800BE6B4 != 1) {
                D_800BE6B4--;
                D_801781DC = 0;
            }
        }

        if (((gButtonPress & gButton_RTrig) != 0) && (D_800BE6B4 != 0x32)) {
            D_800BE6B4++;
            D_801781DC = 0;
        }

        if ((D_800BE4E4 % D_800BE6B4) == 0) {
            gButtonPress |= D_801781DC;
            D_801781DC = 0;
        }
        else {
            D_801781DC |= gButtonPress;
            return;
        }
    }

    func_800253B0(); // background
    func_8001F88C(); // unknown, does something with actors
    func_80014AF0(); // physics
    func_80016CB4(); // collision
    func_80012830(); // camera
    func_80016D94(); // offsets objects from the camera so that they are in the correct relative position
    func_8001EC1C(); // interaction with objects
    func_8001107C(); // foreground layer of background?

    if (D_800CA230 == 0) {
        func_8004ED10(0);    // spawns/updates the player
        func_8008C528(0x41); // unknown
    }

    func_8001FF30(); // sets a value in the player
    func_8001DE30(); // unknown, does something with camera
    func_8008CA90(); // unknown, does something with actors
    func_8001751C(); // actors
    func_80014C44(); // clamp to world bounds?
    func_8005C8A4(); // camera quake
    func_8001FF50(); // update actor flags
    func_8005F6D4(); // text
    func_80022470(); // ui (blinking, health bar)

    if (gGameState == GAMESTATE_GAMEPLAY) {
        func_80047CCC(); // scene init
    }

    func_80047C98(); // level objects

    if ((D_800BE6AC & 0x4000) != 0) {
        phi_s2 = gSFX_ChannelStates, phi_s3 = &D_800EF508, phi_s1 = gSFX_Volumes; // Whitespace memes
        phi_s0 = 0x3C;
        phi_s4 = 0x30;
        do {
            func_80083C54(phi_s2[0], -0x90, phi_s0);
            func_80083A74(phi_s3[0] - 0x21, -0x90, phi_s4);
            func_80083C54(phi_s1[0], -0x68, phi_s0);

            phi_s2++;
            phi_s0 -= 0x20;
            phi_s3++;
            phi_s4 -= 0x20;
            phi_s1++;
        } while (phi_s1 != D_800EF500);
    }
}
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8002034C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/RedGem_PrintPause.s")

void YellowGem_PrintProgress(void) { // Print "Got it" or "Not Yet"
    if (YellowGem_getFlag(gCurrentStage)) {
        func_800836A0(9, 1, &Alpha_GotIt, 0);
    }
    else {
        func_800836A0(9, 1, &Alpha_NotYet, 0);
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020844.s")

#ifdef NON_MATCHING
// primarily regalloc differences, and a missing move
int32_t func_800208D4(void) {
    int32_t index;
    int32_t phi_return;

    for (index = 0xC8; index < 0xCC; index = (index + 1) & 0xFFFF) {
        gActors[index].flag = 0;
        phi_return = index; // this should be a move v0, t8, and is inside of the loop
    }
    D_800EF4D2 = (int16_t)D_800EF4D4;
    gGameSubState = (uint16_t)0;
    gGamePaused = (uint16_t)0;
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_800208D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8002092C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/PauseGame_Tick.s")

void GamePlay_Tick(void) {
    uint32_t sp1C;

    sp1C = osGetTime();
    func_800457C8();
    gTickDelta = osGetTime() - sp1C;

    if (gGamePaused) PauseGame_Tick();
    else func_80020024();
}

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80021098.s")


#ifdef NON_MATCHING
/* Behavior is mostly the same (besides softlocking when the game state should change out of demo mode)
 * Needs reordering and major regalloc fixes, start has branching behavior that I don't know how to replicate
 */
void AttractMode_Tick(void) {
    if (gGameSubState != 0) {
        if (gGameSubState == 1) {
            if (D_801037AA == 0x90) {
                D_80103918 = 0;
                D_80103780 = 0;
                D_801035E8 = 0;
                D_80103450 = 0;
            }
            else {
                D_80103480 += 2;
                D_80103616 -= 2;
                D_801037AA += 3;
                D_80103944 -= 3;
            }

            func_80021098(&gGameSubState);
            D_800CA234 -= -1;
            if ((D_800CA234 == 0 || ((gButtonPress & gButton_Start) != 0)) && (D_80103450 == 0)) {
                func_80003F24(1, 0x40, &D_800CA234);
                gGameSubState += 1;
                D_800CA234 = 0x40;
            }
        }
        else if (gGameSubState == 2) {
            func_80021098(&gGameSubState);
            D_800CA234 += 1;
            if (D_800CA234 == 0x30) {
                D_80103918 = 0xB;
                D_80103780 = 0xB;
                D_801035E8 = 0xB;
                D_80103450 = 0xB;
                gGameSubState += 1;
            }
        }
        else if (gGameSubState == 3) {
            func_80021098(&gGameSubState);
            if (D_801037AA == D_80103944) {
                gAttractModeIndex += 1;
                D_80137D90 = 0;
                gGameState = GAMESTATE_SOFTRESET;
                gGameSubState = 0;
            }
            else {
                D_80103480 -= 2;
                D_80103616 += 2;
                D_801037AA -= 3;
                D_80103944 += 3;
            }
        }
    }
    else {
        if (3 < gAttractModeIndex) {
            gAttractModeIndex = 0;
        }

        gCurrentStage = (&D_800CA2B0)[gAttractModeIndex];
        D_800BE5D0 = *(uint16_t*)(&D_800C8378 + (uint32_t)gCurrentStage * 2);
        D_800D28E4 = *(uint16_t*)(&D_800C83F8 + (uint32_t)gCurrentStage * 2);
        D_800CA234 = 0xA00;
        D_800D2908 = 1;
        gPlayerActor.health = 1000;
        D_800BE668 = 0x32;
        D_800BE5A4 = 0x1234;
        func_800232A4(&gAttractModeIndex, &gCurrentStage, &D_800CA234, &gGameSubState);
        gGameState = GAMESTATE_ATTRACT;
        gGameSubState = 1;
        D_80104098.unk_0x2920 = 0;
        D_80104098.unk_0x2880 = 0;
        func_8002092C();
        D_80103944 = 0;
        D_801037AA = 0;
        D_80103616 = 0;
        D_80103480 = 0;
        D_800CA23C = 0;
        D_800CA240 = 0;
        D_800CA248 = 0;
        D_800CA24C = 0;
        D_800CA244 = *(uint16_t*)(&D_800CBDFC)[gAttractModeIndex];
        D_800CA250 = *(uint16_t*)(&D_800CBE0C)[gAttractModeIndex];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/AttractMode_Tick.s")
#endif

void func_80021620(void) {
    if ((gButtonPress & gButton_RTrig)) D_800BE6B8 ^= 0xFF;
}

void func_80021658(void) {}

void func_80021660(void) {}

// BUG: This function writes to unallocated stack space!
void func_80021668(int32_t arg0, int32_t arg1, int32_t arg2, int32_t arg3) {}

void func_8002167C(void) {}
