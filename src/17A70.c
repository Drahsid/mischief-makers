#include "BGM.h"
#include "GameSave.h"
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_80016E70(uint16_t index) {
    uint8_t temp_t8 = gActors[index].unk_0xD2 & 0xFFFF;

    switch (gActors[index].unk_0xD2 >> 8) {
        case 1: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 2: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 3: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 4: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 5: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 6: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 7: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 8: {
            gActorFuncTable_800E5AC0[temp_t8](index);
            break;
        }
        case 9: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 10: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 11: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 12: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 13: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 14: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 15: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 16: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 17: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 18: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 19: {
            gActorFuncTable_8019B000[temp_t8](index);
            break;
        }
        case 20: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 21: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 22: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 23: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 24: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 25: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 26: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 27: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 28: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 29: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 30: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 31: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 32: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 33: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 34: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 35: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 36: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 37: {
            gActorFuncTable_801A6800[temp_t8](index);
            break;
        }
        case 38: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 39: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 40: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 41: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 42: {
            gActorFuncTable_801B0800[temp_t8](index);
            break;
        }
        case 43: {
            gActorFuncTable_80192000[temp_t8](index);
            break;
        }
        case 44: {
            gActorFuncTable_80192000[temp_t8](index);
        }
        default: {
            break;
        }
    }
}

void func_8001751C(void) {
    Actor* actor; // this is probably a fake match but I prefer this syntax over gActors[index]
    uint16_t index;

    // if actors are not supposed to process
    if (D_800BE670 != 0) {
        for (index = 1; index < ACTOR_COUNT2; index++) {
            actor = gActors + index;

            if ((actor->flag & ACTOR_FLAG_ACTIVE) != 0 && (actor->flag & ACTOR_FLAG_ALWAYS_UPDATE) != 0) {
                if (actor->unk_0xD2 < 0x100) {
                    gActorFuncTable[actor->unk_0xD2](index);
                }
                else {
                    func_80016E70(index);
                }
            }
        }
    }
    else {
        for (index = 1; index < ACTOR_COUNT2; index++) {
            actor = gActors + index;

            if ((actor->flag & ACTOR_FLAG_ACTIVE) != 0) {
                if (actor->unk_0xD2 < 0x100) {
                    gActorFuncTable[actor->unk_0xD2](index);
                }
                else {
                    func_80016E70(index);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800176F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017770.s")

#ifdef NON_MATCHING
// behavioraly equal, differences are regalloc and some of the load/stores are out of order
void Intro_Tick(void) {
    switch (gGameSubState) {
        case 0: {
            func_80003A38();

            D_800BE5D0 = 0x15;

            func_80025C38();
            func_80010C20(D_800BE5D0);

            (&D_80380200)[2] = 1; // volatile?
            (&D_80380200)[1] = 1; // volatile?

            func_800273FC(0x30, 0x2000, 0, 4, 0);

            D_800F4224 |= 0x200;
            D_800F4210 |= 0x30000000;
            D_800F423A = 0x80;
            D_800F423C = 1;
            D_800F423E = 0x10;
            D_800F4240 = 8;
            D_800F430C = 0x8034E4C8;
            D_800F4310 = &D_800C9080;
            *(&D_800F42E4) = -0x1F; // volatile?

            func_8002B82C(0x803524C8, &D_800C9080, 0xFF, -0x1F, -0x1F, -0x1F);

            gGameSubState++;
            break;
        }
        case 1: {
            func_8002B82C(0x803524C8, &D_800C9080, 0xFF, D_800F42E4, D_800F42E4, D_800F42E4);

            if ((D_800BE4E4 & 1) != 0) {
                if (D_800F42E4++ == 0) {
                    gGameSubState++;
                    D_800F42E8 = 0x80;
                }
            }
            break;
        }
        case 2: {
            if (D_800F42E8-- == 0) {
                gGameSubState++;
            }
            break;
        }
        case 3: {
            func_8002B82C(0x803524C8, &D_800C9080, 0xFF, D_800F42E4, D_800F42E4, D_800F42E4);

            if ((D_800BE4E4 & 1) != 0) {
                if ((D_800F42E4-- + 0x1F) == 0) {
                    func_800273FC(0x30U, 0x2000U, 0U, 4U, (uint16_t)0);

                    D_800F4224 = D_800F4224 | 0x200;
                    D_800F4210 = D_800F4210 | 0x30000000;
                    D_800F423A = 0x50;
                    D_800F423C = 1;
                    D_800F423E = 0x18;
                    D_800F4240 = 4;
                    D_800F430C = 0x80340240;
                    D_800F4310 = (uint32_t)&D_800C8FA0;
                    D_800F42E4 = -0x1F;

                    func_8002B82C(0x80342040, &D_800C8FA0, 0xF, -0x1F, -0x1F, -0x1F);

                    gGameSubState = 10;
                }
            }
            break;
        }
        case 10: {
            func_8002B82C(0x80342040, &D_800C8FA0, 0xF, D_800F42E4, D_800F42E4, D_800F42E4);

            if ((D_800BE4E4 & 1) != 0) {
                if (D_800F42E4++ == 0) {
                    gGameSubState++;
                    D_800F42E8 = 0x80;
                }
            }
            break;
        }
        case 11: {
            if (D_800F42E8-- == 0) {
                gGameSubState++;
            }
            break;
        }
        case 12: {
            func_8002B82C(0x80342040, &D_800C8FA0, 0xF, D_800F42E4, D_800F42E4, D_800F42E4);

            if ((D_800BE4E4 & 1) != 0) {
                if (D_800F42E4-- + 0x1F) {
                    D_800F4210 = 0;

                    func_800273FC(0x31U, 0x2002U, 0U, 8U, (uint16_t)0);

                    D_800F43BC |= 0x200;
                    D_800F43A8 |= 0x30000000;
                    D_800F43D2 = 0x48;
                    D_800F43D4 = 1;
                    D_800F43D6 = 0x18;
                    D_800F43D8 = 4;
                    D_800F44A4 = 0x80342068;
                    D_800F44A8 = &D_800C8FC0;
                    *(&D_800F447C) = -0x1F;

                    func_8002B82C(0x80343B68, &D_800C8FC0, 0x5F, -0x1F, -0x1F, -0x1F);

                    gGameSubState++;
                }
            }
            break;
        }
        case 13: {
            func_8002B82C(0x80343B68, &D_800C8FC0, 0x5F, D_800F447C, D_800F447C, D_800F447C);

            if ((D_800BE4E4 & 1) != 0) {
                if (D_800F447C++ == 0) {
                    gGameSubState++;
                    D_800F4480 = 0x80;
                }
            }
            break;
        }
        case 14: {
            if (D_800F4480-- == 0) {
                gGameSubState++;
            }
            break;
        }
        case 15: {
            func_8002B82C(0x80343B68, &D_800C8FC0, 0x5F, D_800F447C, D_800F447C, D_800F447C);

            if ((D_800BE4E4 & 1) != 0) {
                if ((D_800F447C-- + 0x1F) == 0) {
                    D_800F43A8 = 0;
                    gGameSubState++;
                }
            }
            break;
        }
        case 16: {
            gDListHead = (uint32_t*)((uint8_t*)gDListHead + 8);
            gDListHead[0] = 0x6000000;
            gDListHead[1] = &D_800C8EF0;

            D_800F4210 = 0;
            D_800F43A8 = 0;
            gCurrentStage = 0;
            gWorldProgress = 0;
            D_800BE5D0 = 0xB;
            D_800D28E4 = 0x59;
            gSaveSlotIndex = 0;
            gGameState = GAMESTATE_TRANSITION;
            gGameSubState = 65;
            break;
        }
    }

    if ((gButtonPress & gButton_Start) != 0) {
        if (gGameSubState > 0) {
            gGameState = GAMESTATE_TITLESCREEN;
            gGameSubState = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/Intro_Tick.s")
#endif

char D_800C8F68[]="PRESS START";
char D_800C8F74[]="@1997 TREASURE/ENIX";
char D_800C8F88[]="LICENED BY NINTENDO";

void func_80017F08(void) {//prints "Press start" and copyright info
    func_80017770();
    func_800276DC(0x39U, &D_800C8F68, 0xFFCA, 0xFFE4, 0, func_80027588(0U, (0x1F - D_801781A0 / 4), (0x1F - D_801781A0 / 4), 0x1FU));
    func_800276DC(0x49U, &D_800C8F74, 0xFFAA, 0xFFC0, 0, func_80027588(2U, 0x1FU, 0x1FU, 0x18U));
    func_800276DC(0x60U, &D_800C8F88, 0xFFA6, 0xFFAE, 0, func_80027588(2U, 0x1FU, 0x1FU, 0x18U));
}


// cp1 stuff is producing a flipped pair of instructions
#ifdef NON_MATCHING
void func_80017FE8(uint16_t index) {
    Actor* actor = &gActors[index];

    actor->unk_0xD2 = 0;
    Actor_Spawn(index);
    actor->pos.x = -2;
    actor->pos.y = 4;
    actor->unk_0x84 = 0x2D0;
    actor->unk_0x94 |= 0x801;
    actor->pos.z = 0x100;
    actor->unk_0x188 = 0;
    actor->rgba.a = 0xFF;
    actor->rgba.b = 0xFF;
    actor->rgba.g = 0xFF;
    actor->rgba.r = 0xFF;
    actor->unk_0xB4 = 18.0f;
    actor->unk_0xB8 = 12.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017FE8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800180FC.s")

#ifdef NON_MATCHING
void TitleScreen_Tick(void) {
    uint16_t buttonPress;

    switch (gGameSubState) {
        // OK
        case 0: {
            BGM_Play(BGM_OPENING_TITLE);
            gGameSubState = 0x10;
            // fallthrough
        }
        // OK
        case 16: {
            gSPDisplayList(gDListHead++, &D_800C8EF0);
            func_800230B8(&gDListHead);
            func_80017FE8(0x33);
            D_800BE5D0 = 8;
            gGameSubState += 1;
        }
        default: {
            break;
        }
        // OK
        case 17: {
            func_80026E60(0x50);
            gGameSubState += 1;
            break;
        }
        // OK
        case 18: {
            func_80026F2C(0x50);
            gGameSubState += 1;
            break;
        }
        // OK
        case 19: {
            func_800270E4(0x15);
            gGameSubState += 1;
            break;
        }
        // OK
        case 20: {
            func_8002670C(D_800BE5D0);
            gGameSubState += 1;
            break;
        }
        // OK
        case 21: {
            func_80026784(D_800BE5D0);
            gGameSubState += 1;
            break;
        }
        // OK
        case 22: {
            func_80026428(D_800BE5D0);
            gGameSubState += 1;
            break;
        }
        // OK
        case 23: {
            func_80025BFC();
            func_8002B82C(0x803DA400, 0x80380200, 0xFF, 2, 0, 0);
            D_800BE578 = 2;
            D_800BE580 = -0xC;
            D_801376A0 = 0x80380200;
            D_800BE6E4 = 0;
            D_800BE6E8 = 1;
            D_800BE6EC = 0;
            D_800BE70C = 1;
            func_80010C20(D_800BE5D0);
            gGameSubState += 1;
            break;
        }
        // some actors are referenced by a pointer, probably Actor* local vars?
        case 24: {
            gActors[7].rgba.b = 0;
            D_801781A0 = 0;

            func_800273FC(16, 0x800, 0x70, 0xFF68, 0);
            gActors[16].unk_0x94 |= 0x100;
            gActors[16].rgba.a = 0x80;

            func_800273FC(17, 0x1000, 0xFF88, 0xFF68, 0);
            gActors[17].unk_0x94 |= 0x100;
            gActors[17].rgba.a = 0x80;

            gActors[48].unk_0xD2 = 0;
            actor2_Spawn(48);
            gActors[48].unk_0x94 |= 0x200;
            gActors[48].flag |= (ACTOR_FLAG_UNK28 | ACTOR_FLAG_UNK29); // 0x30000000;
            gActors[48].unk_0x17C = 0x80343C28;
            gActors[48].unk_0x180 = 0x80349728;
            gActors[48].unk_0x188 = 0xE;
            gActors[48].pos.x = 0x2A;
            gActors[48].unk_0xAA = 0xE0;
            gActors[48].unk_0xAC = 1;
            gActors[48].unk_0xAE = 8;
            gActors[48].unk_0xB0 = 0xD;

            gActors[49].flag = 0;
            gActors[50].flag = 0;

            gGameSubState += 1;
            break;
        }
        case 25: {
            func_80017F08();

            if (gActors[51].rgba.a == 7) {
                gActors[51].flag = 0;
                gActors[51].unk_0x154 = 0x10040;
                gGameSubState += 1;
            }
            else {
                gActors[51].rgba.a -= 8;
            }

            break;
        }
        case 26: {
            gActors[51].unk_0x154--;
            func_8001809C();

            if (gActors[51].unk_0x154 == 0x10000) {
                SFX_Play_1(0x21U);
            }

            // test to toggle sound test
            if (((gButtonHold & gButton_A) != 0) && ((gButtonHold & gButton_CLeft) != 0) && ((gButtonHold & gButton_CRight) != 0) && ((gButtonHold & gButton_LTrig) != 0) &&
                ((gButtonHold & gButton_B) == 0) && ((gButtonHold & gButton_CDown) == 0) && ((gButtonHold & gButton_CUp) == 0) && ((gButtonHold & gButton_RTrig) == 0)) {
                gActors[7].rgba.b = 1;
            }
            else {
                gActors[7].rgba.b = 0;
            }

            func_80017F08();

            buttonPress = gButtonPress;
            if ((gButtonPress & gButton_Start) != 0) {
                SFX_Play_1(0x23U);
                func_80003F24(1, 0x40);

                D_80178166 = 0;

                if (gActors[7].rgba.b != 0) {
                    gGameSubState = 0x30;
                    buttonPress = gButtonPress;
                }
                else {
                    gGameSubState = 0x20;
                    buttonPress = gButtonPress;
                }
            }

            if ((D_80137DA0 >= 0x1141 || (buttonPress & gButton_B) != 0) && (buttonPress & gButton_Start) == 0) {
                func_80003F24(1, 0x20);
                gActors[51].unk_0x94 |= 0x10;
                gActors[51].flag = ACTOR_FLAG_ENABLED;
                gActors[51].rgba.b = 0x7F;
                gActors[51].rgba.g = 0x7F;
                gActors[51].rgba.r = 0x7F;
                gActors[51].rgba.a = 7;
                gGameSubState += 1;
                break;
            }
            break;
        }
        // OK (besides regalloc)
        case 27: {
            func_8001809C();
            func_80017F08();

            if (gActors[51].rgba.a == 0xFF) {
                D_80137D90 = 0;
                gGameState = 0xA;
                gGameSubState = 0;
            }
            else {
                gActors[51].rgba.a += 8;
            }
            break;
        }
        // OK (besides regalloc)
        case 32: {
            func_800180FC();
            if (D_80137D90 == 3) {
                D_80137D90 = 0;
                D_80178164 = 0x20U;
                gGameSubState += 1;
            }
            break;
        }
        // OK (besides regalloc)
        case 33: {
            func_800180FC();
            if (D_80178164-- == 0) {
                gGameState = 0xB;
                gGameSubState = 0;
            }
            break;
        }
        // OK (besides regalloc)
        case 48: {
            func_800180FC();
            if (D_80137D90 == 3) {
                D_80137D90 = 0;
                D_80178164 = 0x20U;
                gGameSubState += 1;
            }
            break;
        }
        // OK (besides regalloc)
        case 49: {
            func_800180FC();
            if (D_80178164-- == 0) {
                func_800230B8(&D_80178164);
                gActors[16].flag = ACTOR_FLAG_ENABLED;
                gActors[17].flag = ACTOR_FLAG_ENABLED;
                gGameState = GAMESTATE_DEBUG_SOUNDTEST;
                gGameSubState = 0;
            }
            break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/TitleScreen_Tick.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/SoundTest_Tick.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/StageSelect_Print.s")

#ifdef NON_MATCHING
// Needs a lot of work
void StageSelect_Tick(void) {
    int16_t temp_t3;
    int32_t temp_a0;
    int32_t temp_t6_2;
    int32_t temp_t7;
    int32_t temp_t8_2;
    uint16_t temp_v0;
    uint8_t* temp_v1;
    uint8_t* temp_v1_2;
    uint8_t* temp_v1_3;
    uint8_t temp_a2;
    uint8_t temp_a2_2;
    uint8_t temp_t6;
    uint8_t temp_t8;
    uint8_t temp_v0_2;
    int new_var;
    uint8_t temp_v0_3;
    int32_t phi_a2;
    int32_t phi_a2_2;
    int32_t phi_a0;
    int32_t phi_v0;

    temp_v0 = gGameSubState;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 == 2) {
                gSaveSlotIndex = (uint8_t)0;
                gWorldProgress = gCurrentStage;
                gGameState = (uint16_t)0xC;
                gGameSubState = (uint16_t)0x41U;
            }
        }
        else {
            func_80017770();
            func_80017680(gButton_DUp, &D_800F026E);

            if (temp_v0 != 0) {
                temp_t6 = gActors.unk_0xBC6 - 1;
                gActors.unk_0xBC6 = temp_t6;
                if ((temp_t6 & 0xFF) == 0xFF) {
                    gActors.unk_0xBC6 = (uint8_t)0x15U;
                }
                SFX_Play_2(0x22);
            }

            func_80017680(gButton_DDown, &D_800F0406);

            if (temp_v0 != 0) {
                temp_t8 = gActors.unk_0xBC6 + 1;
                gActors.unk_0xBC6 = temp_t8;
                if ((temp_t8 & 0xFF) == 0x16) {
                    gActors.unk_0xBC6 = (uint8_t)0U;
                }
                SFX_Play_2(0x22);
            }

            func_80017680(gButton_DLeft, &D_800F059E);

            if (temp_v0 != 0) {
                temp_v1 = (&D_80178170) + gActors.unk_0xBC6;
                temp_a2 = *temp_v1;
                if (((int32_t)temp_a2) > 0) {
                    *temp_v1 = (uint8_t)(temp_a2 - 1);
                    SFX_Play_2(0x22);
                }
            }

            func_80017680(gButton_DRight, &D_800F0736);

            if (temp_v0 != 0) {
                temp_v0_2 = gActors.unk_0xBC6;
                temp_v1_2 = (&D_80178170) + temp_v0_2;
                temp_a2_2 = *temp_v1_2;
                if (((int32_t)(temp_a2_2 & 0xFF)) < ((*((&D_800C823C) + (temp_v0_2 * 2))) - 1)) {
                    *temp_v1_2 = (uint8_t)(temp_a2_2 + 1);
                    SFX_Play_2(0x22, &D_800C823C, temp_a2_2);
                }
            }

            temp_v0_3 = gActors.unk_0xBC6;
            temp_t3 = (*((&D_80178170) + temp_v0_3)) + (*((&D_80178188) + temp_v0_3));
            temp_t8_2 = (temp_t3 & 0xFFFF) * 2;
            gCurrentStage = temp_t3;
            D_800BE5D0 = *((&D_800C8378) + temp_t8_2);
            D_800D28E4 = *((&D_800C83F8) + temp_t8_2);
            StageSelect_Print(&gCurrentStage);
            if ((gButtonPress & gButton_Start) != 0) {
                BGM_Stop();
                func_80043918();
                gGameSubState = (uint16_t)(gGameSubState + 1);
                return;
            }
        }
    }
    else {
        phi_a2 = 0;
    loop_5:
        temp_t7 = (phi_a2 + 1) & 0xFFFF;
        *((&D_80178170) + phi_a2) = (uint8_t)0;
        phi_a2 = temp_t7;
        if (temp_t7 < 0x16) {
            goto loop_5;
        }
        phi_a2_2 = 0;
    loop_7:
        temp_v1_3 = (&D_80178188) + phi_a2_2;
        phi_a0 = 0;
        *temp_v1_3 = (uint8_t)0U;
        phi_v0 = 0;
        if (phi_a0 > 0) {
        loop_8:
            temp_t6_2 = (phi_v0 + 1) & 0xFFFF;
            *temp_v1_3 = (uint8_t)((*temp_v1_3) + (*((&D_800C823C) + (phi_v0 * 2))));
            phi_v0 = temp_t6_2;
            if (temp_t6_2 < phi_a0) {
                goto loop_8;
            }
        }

        temp_a0 = (phi_a2_2 + 1) & 0xFFFF;
        phi_a2_2 = temp_a0;
        phi_a0 = temp_a0;
        if (!(&gActors)) {
        }
        if (temp_a0 < 0x16) {
            goto loop_7;
        }

        gActors.unk_0xBC6 = (uint8_t)0U;
        D_800BE5D0 = 0;
        StageSelect_Print((int16_t*)temp_a0, &D_800C823C, temp_a0, &D_80178188);
        D_801376BD = (uint8_t)0;
        D_801376B9 = (uint8_t)1;
        D_801376A9 = (uint8_t)0xC0;
        new_var = 0xC0;
        D_801376AD = (uint8_t)new_var;
        D_801376B1 = (uint8_t)0xC0;
        D_801376B5 = (uint8_t)0xFF;
        gGameSubState = (uint16_t)(gGameSubState + 1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/StageSelect_Tick.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019520.s")
/*
void CalculateFestivalTime(void){
  int32_t TimeA, TimeB, TimeC, TimeD;
  if(gCurrentStage==33){ //is it "the day of"
    TimeA=func_80019520(gFestivalRecords[2]);
    TimeB=func_80019520(gFestivalRecords[1]);
    TimeC=func_80019520(gFestivalRecords[0]);
    TimeD=func_80019520(gFestivalRecords[5]);
    gStageTime=TimeD+TimeC+TimeB+TimeA;
    if(gFestivalRecords[3]<1800) gStageTime -= gFestivalRecords[3]       + 1800;
    if(gFestivalRecords[4]<1800) gStageTime += gFestivalRecords[4] * -10 + 1800;
    if(gFestivalRecords[6]<1800) gStageTime += gFestivalRecords[6] * -10 + 1800;
    }
    gGamePaused=0;
    gGameState=12; //transitional state
    gGameSubState=8;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/CalculateFestivalTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019E48.s")

void func_80019EC4(void){
    func_8008310C();
    func_80083454();
    func_80019A80();
    func_80019E48();
    func_8001A254();
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A584.s")

uint16_t gTimesToBeat[]={0,0,840,1020,1500,480,1932,2160,1320,2580,
 /*[10]*/                1740,720,2160,1560,660,1000,720,1620,1680,
 /*[20]*/                1500,1500,6660,0,1920,1800,3000,4320,1320,
 /*[30]*/                3600,1080,2220,9360,660,3720,0,1620,1680,19200,
 /*[40]*/                2580,1800,960,4920,2340,2220,2040,3480,0,5280,
 /*[50]*/                1680,3873,1020,4800,3300,0,4500,5160};

int16_t Get_TimeRank(uint16_t t, uint16_t s) {

    if (t < gTimesToBeat[s]) return 0;
    if (t < (gTimesToBeat[s] + 1800)) return 1;
    if (t < (gTimesToBeat[s] + 7200)) return 2;
    if ((t < (gTimesToBeat[s] + 18000)) && (t < 36000)) return 3;
    return 4;
}

void func_8001A7E0(int16_t arg0, int16_t arg1, uint16_t time, uint16_t stage, int16_t arg4) {
    func_8008379C(arg0, arg1, D_800C9694[Get_TimeRank(time, stage)], arg4);
}

void func_8001A838(int16_t arg0, int16_t arg1, uint16_t time, uint16_t stage, int16_t arg4) {
    func_80083810(arg0, arg1, D_800C96A0[Get_TimeRank(time, stage)], arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/Record_PrintTime.s")

void func_8001B004(void){Record_PrintTime(9,6,0xffff);}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/World_IncrementProgress.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1A0.s")

void func_8001B1F8(void) {
    World_IncrementProgress();
    func_8001B1A0();
    D_80178160 = (uint16_t) D_8017815C;
    D_8017815A = (int16_t)D_80178156;
}

void func_8001B23C(){}

#ifdef NON_MATCHING
int16_t YellowGem_Count(void){
  uint16_t i;
  uint64_t flag = 1;
  int16_t count=0;

  for(i = 0; i < 63; i++) {
    if (gYellowGemBitfeild & flag) count++;
    flag = __ll_lshift(flag,1);
  }
  return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/YellowGem_Count.s")
#endif
#ifdef NON_MATCHING
void GameSave_Update(void){
  uint8_t bVar1;
  uint16_t uVar2;
  uint16_t uVar4;

  uVar2 = gCurrentStage;
  bVar1 = gWorldProgress;
  D_80178150 = gTimeRecords[gCurrentStage];
  uVar4 = (uint16_t)gWorldProgress;
  if (gStageTime < D_80178150) {
    gTimeRecords[gCurrentStage] = gStageTime;
  }
  if (uVar4 == uVar2) {gWorldProgress = (char)uVar2 + 1;}
    gGameSave_RedGems[gSaveSlotIndex] = gRedGems;
    gGameSave_YellowGems[gSaveSlotIndex] = YellowGem_Count();
    gGameSave_PlayTime[gSaveSlotIndex]= (uint64_t)gPlayTime;
    func_80005770();
    gWorldProgress = bVar1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameSave_Update.s")
#endif
void func_8001B3D0(void){
  uint16_t uVar1;
  uint32_t uVar2;

  gWorldProgress = (uint8_t)gCurrentStage;
  gGameSave_RedGems[gSaveSlotIndex] = gRedGems;
  uVar1 = YellowGem_Count();
  uVar2 = (uint32_t)gSaveSlotIndex;
  gGameSave_YellowGems[uVar2] = uVar1;
  gGameSave_PlayTime[uVar2] = (uint64_t)gPlayTime;
  func_80005770();
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B460.s")

void YellowGem_SetFlag(void){
  gYellowGemBitfeild |= (uint64_t)1 << (uint16_t)gCurrentStage;
}

uint64_t YellowGem_GetFlag(uint16_t arg0) {
    uint64_t mask = (uint64_t)1 << arg0;

    return gYellowGemBitfeild & mask;
}

#ifdef NON_MATCHING
void func_8001C834(void) {
    func_800273FC(0x32, 0, 0xFFFC, 0x33, 1);
    D_800F4540 |= 0x50000000;
    func_800273FC(0x33, 0, 0xFFFC, 0xFFF7, 1);
    D_800F46D8 |= 0x70000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C834.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C97C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CA68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/Calculate_TimeRecordTotal.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/PrintRecordEntry.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D654.s")
