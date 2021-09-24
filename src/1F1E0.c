#include <Alphabet.h>
#include <SFX.h>
#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E6F4.s")

// BUG: This function writes to unallocated stack space!
void func_8001E808(int16_t arg0, int16_t arg1) {}

#ifdef NON_MATCHING
void func_8001E814(int16_t indexL, int16_t indexR) {
    if ((gActors[indexL].unk_0xEC == 0) && (gActors[indexL].unk_0xF0 == 0)) {
        gActors[indexR].unk_0xF8 = func_8001E5E0(indexL, indexR, 0x2000);
        gActors[indexR].unk_0xFC = func_8001E6F4(indexL, indexR, 0x2000);
    }
    else {
        gActors[indexR].unk_0xF8 = gActors[indexL].unk_0xEC;
        gActors[indexR].unk_0xFC = gActors[indexL].unk_0xF0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E814.s")
#endif

void func_8001E8E4(uint16_t indexL, uint16_t indexR) {
    if ((gActors[indexL].flag & ACTOR_FLAG_FLIPPED) == 0) {
        gActors[indexR].unk_0xF8 = gActors[indexL].unk_0xF8;
    }
    else {
        gActors[indexR].unk_0xF8 = -gActors[indexL].unk_0xF8;
    }
    gActors[indexR].unk_0xFC = gActors[indexL].unk_0xFC;
}

#ifdef NON_MATCHING
// Differences are regalloc
void func_8001E964(uint16_t indexL, uint16_t indexR) {
    Actor* actor0 = &gActors[indexL];
    Actor* actor1 = &gActors[indexR];

    if (actor0->pos.x < actor1->pos.x) {
        actor0->unk_0xF8 = -actor1->unk_0xF8;
    }
    else {
        actor0->unk_0xF8 = actor1->unk_0xF8;
    }
    actor0->unk_0xFC = actor1->unk_0xFC;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E964.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001E9DC.s")

void func_8001EADC(uint16_t indexL, uint16_t indexR) {
    Actor* actor = &gActors[indexR];

    if (actor->unk_0xDE == 11 || actor->unk_0xDE == 14 || actor->unk_0xDE == 15) {
        actor->unk_0x98 &= ~2;

        actor = &gActors[indexL];
        actor->unk_0x98 ^= 3;
        actor->unk_0xDC = actor->unk_0xDA;
        actor->unk_0xDD = actor->unk_0xDB;
    }
    else {
        func_8001E9DC(indexL, indexR);
    }
}

#ifdef NON_MATCHING
/* This function is related to hit / knockback effects?
 * Differences are regalloc, behaviorally the same
 */
void func_8001EB8C(uint16_t indexL, uint16_t indexR) {
    gActors[indexR].unk_0xDC = gActors[indexL].unk_0xDA;
    gActors[indexR].unk_0xDD = gActors[indexL].unk_0xDB;
    D_800CA1C0[gActors[indexL].unk_0xDB](indexL, indexR);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001EB8C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001EC1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001F88C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FA78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FCA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8001FEB0.s")

void func_8001FF28(void) {}

void func_8001FF30(void) {
    gPlayerActorp->unk_0x98 &= 0x80600;
}

void func_8001FF50(void) {
    uint16_t index;

    for (index = 1; index < ACTOR_COUNT1; index++) {
        gActors[index].unk_0x98 &= 0x380600;
    }
}

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

    if ((gDebugBitfeild & 2) != 0) {
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

    if ((gDebugBitfeild & 0x4000)) {
        phi_s2 = gSFX_ChannelStates, phi_s3 = gSFXCurrentIndex, phi_s1 = gSFX_Volumes; // Whitespace memes
        phi_s0 = 0x3C;
        phi_s4 = 0x30;
        do {
            DebugText_PrintShortHexBlack(phi_s2[0], -0x90, phi_s0);
            DebugText_PrintInt(phi_s3[0] - 0x21, -0x90, phi_s4);
            DebugText_PrintShortHexBlack(phi_s1[0], -0x68, phi_s0);

            phi_s2++;
            phi_s0 -= 0x20;
            phi_s3++;
            phi_s4 -= 0x20;
            phi_s1++;
        } while (phi_s1 != D_800EF500);
    }
}
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/Playtime_PrintPause.s")


#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/RedGem_PrintPause.s")


void YellowGem_PrintProgress(void) { // Print "Got it" or "Not Yet"
    if (YellowGem_GetFlag(gCurrentStage)) func_800836A0(9, 1, &Alpha_GotIt, 0);
    else
        func_800836A0(9, 1, &Alpha_NotYet, 0);
}
#ifdef NON_MATCHING
void func_80020844(void) { // resets sound levels after exiting pause menu?
    uint16_t i;
    for (i = 0; i < 4; i++)
        SFX_Volumes[i] = D_801781C0[i];
    SFX_Play_1(SFX_MARINA_YELL2);
    for (i = 204; i < 208; i++)
        gActors[i].flag = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_80020844.s")
#endif

void func_800208D4(void) {
    uint16_t index;

    for (index = 0xC8; index < 0xCC; index++)
        gActors[index].flag = 0;
    gBgmVolume = D_800EF4D4;
    gGameSubState = 0;
    gGamePaused = 0;
}


#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/func_8002092C.s")

void func_80020A54(void) {
    uint16_t i;
    for (i = 200; i < 204; i++)
        gActors[i].flag = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/1F1E0/PauseGame_Tick.s")

void GamePlay_Tick(void) {
    uint32_t time;

    time = osGetTime();
    func_800457C8(); // this function dmas sprite data for things like gems
    gTickDelta = osGetTime() - time;

    if (gGamePaused) PauseGame_Tick();
    else
        func_80020024();
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

/* when I first came across this ages ago, I was really confused, now I know:
 * it changes the color of debug text when you press R (see usage of gDebugBitfeild)
 * will need to investigate further, but it seems to just be an i8 color
 * why didn't they just give the text an outline?
 */
void func_80021620(void) {
    if ((gButtonPress & gButton_RTrig)) D_800BE6B8._s ^= 0xFF;
}

void func_80021658(void) {}

void func_80021660(void) {}

// BUG: This function writes to unallocated stack space!
void func_80021668(int32_t arg0, int32_t arg1, int32_t arg2, int32_t arg3) {}

void func_8002167C(void) {}
