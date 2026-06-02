#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800D2920;
extern s16 D_800D2924;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D28F8;
extern u16 D_800BE5D4;
extern s16 D_80104098[];
extern s32 D_800BE5F4;
extern u32 D_800D28FC;
extern u32 D_801BBEB0_7E5010[];
extern u32 D_801BC8BC_7E5A1C[];
extern u32 D_801BC8CC_7E5A2C[];
extern u32 D_801BC8DC_7E5A3C[];
extern u32 D_801BC8EC_7E5A4C[];
extern u32 D_801BC93C_7E5A9C[];
extern u32 D_801BCF84_7E60E4[];
extern u16 D_801BCF94_7E60F4[];
extern u32 D_801BCFB0_7E6110[];
extern u32 D_801BD23C_7E639C[];
extern u32 D_801BCF74_7E60D4[];
extern u32 D_801BD4B4_7E6614[];
extern u16 D_801BD4D4_7E6634[];
extern u32 D_801BD558_7E66B8[];
extern u32 D_801BD568_7E66C8[];
extern u32 D_801BD578_7E66D8[];
extern u32 D_801BD598_7E66F8[];
extern u32 D_801BD5A8_7E6708[];
extern u32 D_801BD5E4_7E6744[];
extern u32 D_801BD630_7E6790[];
extern u16 D_801BD8C0_7E6A20;
extern s16 D_801BD8C2_7E6A22;
extern u32 D_80137458;

extern s32 func_8003FF68(s32 arg0, f32 arg1);
extern s32 func_800036C8(u32 arg0, u16 actor_index);
extern void func_8002F2A8(s32 arg0);
extern void func_80034D80(u16 actor_index, u16* vals); // BUG: incorrect prototype!
extern void func_80064AA0(s32 arg0, void* arg1);

void func_801BA674_7E37D4(u16 arg0, u16 arg1, u16 arg2);

void func_801B9900_7E2A60(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    if (gActors[0].posY.whole < -0x30) {
        D_800D291C = arg0 - 0x70;
        D_800D28E8 += arg3;
        return;
    }

    if ((gActors[0].posX.whole < -0x40) || (gActors[0].posX.whole >= 0x41)) {
        D_800D2920 = arg1 - 0x90;
        D_800D2924 = arg2 + 0x90;
        D_800D28E8 -= arg3;
    }
}

void func_801B99B8_7E2B18(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    if (gActors[0].posY.whole >= 0x31) {
        D_800D2918 = arg0 + 0x70;
        D_800D28E8 += arg3;
        return;
    }

    if ((gActors[0].posX.whole < -0x40) || (gActors[0].posX.whole >= 0x41)) {
        D_800D2920 = arg1 - 0x90;
        D_800D2924 = arg2 + 0x90;
        D_800D28E8 -= arg3;
    }
}

void func_801B9A70_7E2BD0(u16 arg0, u16 arg1, u16 arg2) {
    s16 position_y = D_800BE55C.whole;

    if (position_y >= arg1) {
        D_800D291C = arg1 - 0x70;
        D_800D28E8 += arg2;
        return;
    }

    if (arg0 >= position_y) {
        D_800D2918 = arg0 + 0x70;
        D_800D28E8 -= arg2;
        return;
    }

    if ((gActors[0].posX.whole < -0x60) || (gActors[0].posX.whole >= 0x61)) {
        if (position_y < ((arg0 + arg1) / 2)) {
            D_800D2918 = arg0 + 0x70;
            D_800D28E8 -= arg2;
            return;
        }

        D_800D291C = arg1 - 0x70;
        D_800D28E8 += arg2;
    }
}

void func_801B9B8C_7E2CEC(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    D_800D28E8++;
}

void func_801B9BC0_7E2D20(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    D_800D28E8--;
}

void func_801B9BF4_7E2D54(u16 arg0, u16 arg1, u16 arg2) {
    if (((arg0 - 0x20) < D_800BE558.whole) && (D_800BE558.whole < (arg0 + 0x20))) {
        func_801B9BC0_7E2D20(arg0);
        return;
    }

    if (((arg1 - 0x20) < D_800BE558.whole) && (D_800BE558.whole < (arg1 + 0x20))) {
        func_801B9B8C_7E2CEC(arg1);
        return;
    }

    if ((gActors[0].posY.whole < -0x60) || (gActors[0].posY.whole >= 0x61)) {
        if (arg2 != 0) {
            if (D_800BE558.whole < ((arg0 + arg1) / 2)) {
                func_801B9B8C_7E2CEC(arg1);
            }
            else {
                func_801B9BC0_7E2D20(arg0);
            }
        }
        else {
            if (D_800BE558.whole < ((arg0 + arg1) / 2)) {
                func_801B9BC0_7E2D20(arg0);
            }
            else {
                func_801B9B8C_7E2CEC(arg1);
            }
        }
    }
}

void func_801B9D38_7E2E98(void* arg0, s32 arg1, void* arg2) {
    func_80045FA4(arg0, arg1);
    Actor_ClearRange_30To90();
    Actor_LoadSpawnTable(D_801BBEB0_7E5010);
    Actor_LoadSpawnTable(arg2);
}

void func_801B9D78_7E2ED8(void) {
    if (func_80048CE4() == 1) {
        if (gActors[0].stateUpper == 4) {
            s32 actor_index = func_8003FF68(0, 1.0f);

            gActors[actor_index].posX.whole = gActors[0].posX.whole;
            gActors[actor_index].posY.whole = -0x50;
            gActors[actor_index].palette_18C = (u16*)0x8022D568;
            func_800036C8(0xAA, 0);
            func_8005739C(0, 0x64);

            if (gActors[0].health >= 0) {
                D_800D28F0 = D_800D28E4;
                D_800D28E8 = 4;
                D_800D28E4 = 0x61;
            }
            else if (gGameState == GAMESTATE_GAMEPLAY) {
                gGameState = GAMESTATE_CONTINUE;
                gGameStateSubState = 0;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801B9E74_7E2FD4.s")

void func_801BA534_7E3694(void) {
    switch (D_800D28E8) {
        case 0:
            Palette_AdjustScenePalettes(4, 4, 8, -10, -10, -4, -4, -4, 8);
            func_80045FA4(D_801BC8BC_7E5A1C, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BC8CC_7E5A2C);
            D_800D28E8++;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 2:
            break;

        case 3:
            func_8003D628(0);
            Sound_StartFade(0x81, 0x168);
            D_800D28E8++;
            break;

        case 4:
            break;

        case 5:
            func_80064AA0(1, D_801BC8DC_7E5A3C);
            D_800D28E8++;
            break;

        case 6:
            break;

        case 7:
            break;
    }

    Camera_UpdateViewBounds();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801BA674_7E37D4.s")

void func_801BA950_7E3AB0(void) {
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            Palette_AdjustScenePalettes(2, 4, -2, -8, -2, -8, -3, 3, -3);
            func_80045FA4(D_801BC8EC_7E5A4C, (s32)D_801BC93C_7E5A9C);
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            D_800D28E8 = 1;
            D_800BE5F4 = 7;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28F8 = 4;
                D_800D28E8++;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if (D_800D28E8 == 3) {
                D_800BE5F4 = 5;
                D_800D28FC |= 8;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            D_800BE4EC = 0;
            D_800D28E8 = 0x10;
            break;

        case 8:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = D_801BD8C0_7E6A20;
            }
            break;

        case 16:
            func_801B9BF4_7E2D54(0, 0x482, 0);
            break;

        case 17:
            func_801B9900_7E2A60(0xC7C, 0x182, 0x582, 1);
            break;

        case 18:
            func_801B9A70_7E2BD0(0xC7C, 0xE7C, 0xFFFF);
            break;

        case 19:
            func_801B99B8_7E2B18(0xE7C, 0x182, 0x582, 0xFFFF);
            break;

        case 20:
            func_801B9BF4_7E2D54(0x482, 0x282, 1);
            break;

        case 21:
            func_801B9900_7E2A60(0xA7C, 0x182, 0x582, 1);
            break;

        case 22:
            func_801B9A70_7E2BD0(0xA7C, 0xC7C, 0xFFFF);
            break;

        case 23:
            func_801B99B8_7E2B18(0xC7C, 0x182, 0x582, 0xFFFF);
            break;

        case 24:
            func_801B9BF4_7E2D54(0x282, 0x482, 0);
            break;

        case 25:
            func_801B9900_7E2A60(0x87C, 0x182, 0x582, 1);
            break;

        case 26:
            func_801B9A70_7E2BD0(0x87C, 0xA7C, 0xFFFF);
            break;

        case 27:
            func_801B99B8_7E2B18(0xA7C, 0x182, 0x582, 0xFFFF);
            break;

        case 28:
            func_801B9BF4_7E2D54(0x482, 0, 1);
            break;

        case 32:
            func_801B9BF4_7E2D54(0, 0xC82, 0);
            break;

        case 33:
            func_801B9900_7E2A60(0xC7C, 0x982, 0xD82, 1);
            break;

        case 34:
            func_801B9A70_7E2BD0(0xC7C, 0xE7C, 0xFFFF);
            break;

        case 35:
            func_801B99B8_7E2B18(0xE7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 36:
            func_801B9BF4_7E2D54(0xC82, 0xA82, 1);
            break;

        case 37:
            func_801B9900_7E2A60(0xA7C, 0x982, 0xD82, 1);
            break;

        case 38:
            func_801B9A70_7E2BD0(0xA7C, 0xC7C, 0xFFFF);
            break;

        case 39:
            func_801B99B8_7E2B18(0xC7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 40:
            func_801B9BF4_7E2D54(0xA82, 0xC82, 0);
            break;

        case 41:
            func_801B9900_7E2A60(0x87C, 0x982, 0xD82, 1);
            break;

        case 42:
            func_801B9A70_7E2BD0(0x87C, 0xA7C, 0xFFFF);
            break;

        case 43:
            func_801B99B8_7E2B18(0xA7C, 0x982, 0xD82, 0xFFFF);
            break;

        case 44:
            func_801B9BF4_7E2D54(0xC82, 0xA82, 1);
            break;

        case 45:
            func_801B9900_7E2A60(0x17C, 0x982, 0xD82, 1);
            break;

        case 46:
            if (D_800BE5DC.whole < 0x7E0) {
                D_800BE4EC = 1;
                D_800BE5D4 = 1;
                Sound_PlaySfx(0x3E);
                D_801BD8C2_7E6A22 = 0;
                D_800D28E8++;
            }
            break;

        case 47: {
            s16 temp;
            s32 temp2;
            s32 temp3;

            D_801BD8C2_7E6A22++;
            temp = D_801BD8C2_7E6A22;
            temp3 = (s16)(temp / 0x18);
            temp2 = temp3;
            gActors[0x90].colorA = (temp / 4) + 0xB0 + (temp2 * 0);
            Palette_AdjustScenePalettes(2 - temp2, 4 - temp2, -2 - temp2, -8 - temp2, -2 - temp2, -8 - temp2,
                                        -3 - temp2, 3 - temp2, -3 - temp2);
            if (D_801BD8C2_7E6A22 >= 0x131) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x48);
            }
            break;
        }

        case 0x80:
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            break;

        case 0x81:
            func_801BA674_7E37D4(0x582, 0xE7C, 0x10);
            break;

        case 0x82:
            func_801BA674_7E37D4(0x582, 0xC7C, 0x14);
            break;

        case 0x83:
            func_801BA674_7E37D4(0x182, 0xC7C, 0x14);
            break;

        case 0x84:
            func_801BA674_7E37D4(0x182, 0xA7C, 0x18);
            break;

        case 0x85:
            func_801BA674_7E37D4(0x582, 0xA7C, 0x18);
            break;

        case 0x86:
            func_801BA674_7E37D4(0x582, 0x87C, 0x1C);
            break;

        case 0x87:
            func_801BA674_7E37D4(0x182, 0x87C, 0x1C);
            break;

        case 0x88:
            func_801BA674_7E37D4(0x982, 0xE7C, 0x20);
            break;

        case 0x89:
            func_801BA674_7E37D4(0xD82, 0xE7C, 0x20);
            break;

        case 0x8A:
            func_801BA674_7E37D4(0xD82, 0xC7C, 0x24);
            break;

        case 0x8B:
            func_801BA674_7E37D4(0x982, 0xC7C, 0x24);
            break;

        case 0x8C:
            func_801BA674_7E37D4(0x982, 0xA7C, 0x28);
            break;

        case 0x8D:
            func_801BA674_7E37D4(0xD82, 0xA7C, 0x28);
            break;

        case 0x8E:
            func_801BA674_7E37D4(0xD82, 0x87C, 0x2C);
            break;

        case 0x8F:
            func_801BA674_7E37D4(0x982, 0x87C, 0x2C);
            D_800BE56C = 0xA12;
            D_800D2924 = D_800BE56C;
            break;

        case 0x1000:
            func_80045FA4(D_801BC8EC_7E5A4C, (s32)D_801BC93C_7E5A9C);
            func_801BA674_7E37D4(0x182, 0xE7C, 0x10);
            D_800BE5F4 = 5;
            D_800D28E8 = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = 3;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

s32 func_801BB184_7E42E4(void) {
    u16 actor_index = D_801BCF94_7E60F4[0];
    u16 index = 1;

    while (actor_index != 0) {
        if (gActors[actor_index].state != 2) {
            return 0;
        }

        actor_index = D_801BCF94_7E60F4[index++];
    }

    return 1;
}

void func_801BB1F4_7E4354(void) {
    func_80045FA4(D_801BCF84_7E60E4, (s32)D_801BCFB0_7E6110);
    Actor_LoadSpawnTable(D_801BBEB0_7E5010);
    Actor_LoadSpawnTable(D_801BD23C_7E639C);
    gActors[0].flags |= 0x20;
    D_800BE568 = 0xF2;
    D_800BE56C = 0x712;
    D_800BE570 = 0x1EC;
    D_800BE574 = 0x10C;
    D_800D28E8++;
}

void func_801BB28C_7E43EC(void) {
    if (func_801BB184_7E42E4() != 0) {
        if (D_800D28E8 < 0x800) {
            if (D_800D28E4 < 0x61) {
                if (gGameState != GAMESTATE_CONTINUE) {
                    if (gActors[0].health >= 0) {
                        D_800D28E8 = 0x800;
                    }
                }
            }
        }
    }

    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            Palette_AdjustScenePalettes(4, 4, 8, -10, -10, -4, -4, -4, 8);
            func_801BB1F4_7E4354();
            D_800BE5F4 = 7;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28F8 = 4;
                D_800D28E8++;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if (D_800D28E8 == 3) {
                D_800BE5F4 = 5;
                D_800D28FC |= 8;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            func_80045F14(D_801BCF74_7E60D4);
            D_800BE4EC = 0;
            D_800D28E8 = 0x14;
            break;

        case 16:
            func_801B9BF4_7E2D54(0, 0x282, 0);
            break;

        case 17:
            func_801B9900_7E2A60(0x17C, 0x182, 0x382, 1);
            break;

        case 18:
            func_801B9A70_7E2BD0(0x17C, 0x27C, 0xFFFF);
            break;

        case 19:
            func_801B99B8_7E2B18(0x27C, 0x182, 0x682, 0xFFFF);
            break;

        case 20:
            func_801B9BF4_7E2D54(0x282, 0x582, 0);
            break;

        case 21:
            func_801B99B8_7E2B18(0x37C, 0x182, 0x682, 1);
            break;

        case 22:
            func_801B9A70_7E2BD0(0x17C, 0x37C, 1);
            break;

        case 23:
            func_801B9900_7E2A60(0x17C, 0x482, 0x982, 0xFFFF);
            break;

        case 24:
            func_801B9BF4_7E2D54(0x582, 0x882, 0);
            break;

        case 25:
            func_801B9900_7E2A60(0x27C, 0x482, 0x982, 1);
            break;

        case 26:
            func_801B9A70_7E2BD0(0x27C, 0x37C, 0xFFFF);
            break;

        case 27:
            func_801B99B8_7E2B18(0x37C, 0x782, 0x982, 0xFFFF);
            break;

        case 28:
            func_801B9BF4_7E2D54(0x882, 0, 1);
            break;

        case 0x800:
            Sound_StartFade(1, 0x60);
            D_800D28E8++;
            break;

        case 0x801:
            if (gAudioFadeMode != 1) {
                if (D_800D28E4 < 0x61) {
                    if (gGameState != GAMESTATE_CONTINUE) {
                        if (gActors[0].health >= 0) {
                            D_800D2938 = 0;
                            D_800D28F0 = D_800D28E4;
                            D_800D28E4 = 0x61;
                            D_800D28E8++;
                        }
                    }
                }
            }
            break;

        case 0x802:
            func_80045FA4(D_801BCF84_7E60E4, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD4B4_7E6614);
            func_80034D80(0x48, D_801BD4D4_7E6634);
            gActors[0].flags |= 0x20;
            D_800BE5F4 = 5;
            gAudioFadeMode = 0;
            Sound_PlayMusic(0xD);
            Camera_UpdateViewBounds();
            D_800D28E8++;
            break;

        case 0x803:
            if (func_80046D5C() != 0) {
                D_800D28F8 = 4;
                func_8005DF40(0, 0xC);
                D_800D28E8++;
            }
            break;

        case 0x804:
            func_80047714(4, 1, 2, 0x805);
            if (D_800D28E8 == 0x805) {
                func_8002F2A8(0xA);
                D_800D28FC |= 8;
                D_800D2928 = 0x40;
            }
            break;

        case 0x805:
            if ((u32)D_800D2928-- < 1U) {
                D_800BE5F4 = 5;
                func_80064AA0(0x3C, D_801BD558_7E66B8);
            }
            break;

        case 0x806:
        case 0x807:
            break;

        case 0x1000:
            func_801BB1F4_7E4354();
            D_800BE5F4 = 5;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = 3;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BB85C_7E49BC(void) {
    switch (D_800D28E8) {
        case 0:
            D_800BE4EC = 1;
            Palette_AdjustScenePalettes(2, 2, 6, 0, 0, -1, 0, 0, -6);
            Palette_AdjustRgb5551Array((u16*)0x80314548, (u16*)0x80314398, 0xD7, 0, 0, -5);
            func_80045FA4(D_801BD568_7E66C8, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD578_7E66D8);
            D_800BE5F4 = 7;
            if (D_800D2908 == 0) {
                D_800D28E8 = 1;
            }
            else {
                D_800D28E8 = 0x1000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                func_8005DF5C(1);
                D_800D28E8 = 2;
            }
            Cutscene_CheckSkipInput();
            break;

        case 2:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                D_800D28E8 = 3;
            }
            break;

        case 3:
            Cutscene_CheckSkipInput();
            break;

        case 4:
            func_8005DF5C(2);
            func_8005DF5C(3);
            func_8005DF5C(4);
            func_8005DF5C(5);
            func_8005DF5C(6);
            Cutscene_CheckSkipInput();
            D_800D28E8 = 5;
            break;

        case 5:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                D_800D28E8 = 10;
            }
            break;

        case 10:
            D_800BE5F4 = 5;
            D_800D28E8 = 0x14;
            D_800D28FC |= 8;

        case 20:
            D_800BE4EC = 0;
            if (gActors[0x30].health == 0) {
                Sound_StartFade(0x81, 0x3C);
                D_800D28E8 = 0x15;
            }
            break;

        case 21:
            if (gAudioFadeMode != 0x81) {
                D_800BE5F4 = 0x1F;
                Sound_PlayMusic(0x1E);
                D_800D28E8 = 0x16;
            }
            break;

        case 23:
            func_8005DF5C(7);
            func_8005DF5C(8);
            func_8005DF5C(9);
            func_8005DF5C(10);
            D_800D28E8 = 0x18;
            break;

        case 24:
            if (func_8005DEFC() == 0) {
                D_800D28E8 = 0x19;
            }
            break;

        case 25:
            if ((D_80137458 & 2) == 0) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x5B);
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BD568_7E66C8, 0);
            Actor_LoadSpawnTable(D_801BBEB0_7E5010);
            Actor_LoadSpawnTable(D_801BD578_7E66D8);
            D_800BE5F4 = 7;
            D_800D28E8 = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                func_800472D4();
            }
            break;

        case 0x1002:
            func_8004735C(0x14, 0);
            break;

        case 6:
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 22:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BBC00_7E4D60(void) {
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
            }
            else {
                D_800D28E8++;
                func_80046148(D_801BD598_7E66F8, 0);
                Actor_LoadSpawnTable(D_801BD5A8_7E6708);
                Actor_LoadSpawnTable(D_801BD5E4_7E6744);
                D_800BE544 = 0x8000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE4EC = 1;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 3:
            D_800D28E8++;
            D_800D28FC |= 8;
            D_801373E0.unk_78 |= 1;
            D_800BE4EC = 0;
            D_80104098[0x1444] = -0x58;
            D_80104098[0x1494] = -0x55;
            break;

        case 5:
            D_800D28E8++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            D_800D28E8++;
            Actor_LoadSpawnTable(D_801BD5A8_7E6708);
            break;

        case 9:
            D_800D28E8 = 0xC000;
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BD598_7E66F8, 0);
            Actor_LoadSpawnTable(D_801BD5A8_7E6708);
            Actor_LoadSpawnTable(D_801BD5E4_7E6744);
            gActors[0x8F].state = 0x10;
            D_800BE5F4 = 5;
            D_801373E0.unk_78 |= 1;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BD598_7E66F8, D_801BD630_7E6790);

        case 0xC001:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 4:
        case 6:
        case 8:
        case 0xC002:
            break;
    }
}
