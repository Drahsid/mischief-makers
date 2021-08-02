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
// behavioraly equal, differences are regalloc  and some of the load/stores are out of order
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
            D_8012A670 = (uint32_t*)((uint8_t*)D_8012A670 + 8);
            D_8012A670[0] = 0x6000000;
            D_8012A670[1] = &D_800C8EF0;

            D_800F4210 = 0;
            D_800F43A8 = 0;
            gCurrentStage = 0;
            gWorldProgress = 0;
            D_800BE5D0 = 0xB;
            D_800D28E4 = 0x59;
            gSaveSlotIndex = 0;
            gGameState = 0xC;
            gGameSubState = 65;
            break;
        }
    }

    if ((gButtonPress & gButton_Start) != 0) {
        if (gGameSubState > 0) {
            gGameState = 2;
            gGameSubState = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/Intro_Tick.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800180FC.s")


#pragma GLOBAL_ASM("asm/nonmatchings/17A70/TitleScreen_Tick.s")

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
                gWorldProgress = (int8_t)gCurrentStage;
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

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/calculateFestivalTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/Record_PrintTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B23C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/YellowGem_Count.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameSave_Update.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B3D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B460.s")
/*
void YellowGem_setFlag(void){  
  gYellowGemBitfeild |= __ll_lshift(0,1,(u64)gCurrentStage);
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/YellowGem_setFlag.s")
/*
u64 YellowGem_getFlag(u16 arg0) {
    return gYellowGemBitfeild & __ll_lshift(1,(u64)arg0);
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/17A70/YellowGem_getFlag.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C834.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/print_record_entry.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D5B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D654.s")
