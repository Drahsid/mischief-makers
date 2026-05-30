#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800D2920;
extern s16 D_800D2924;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern u32 D_800D28FC;
extern u32 D_801BBEB0_7E5010[];
extern u32 D_801BC8BC_7E5A1C[];
extern u32 D_801BC8CC_7E5A2C[];
extern u32 D_801BC8DC_7E5A3C[];
extern u32 D_801BCF84_7E60E4[];
extern u16 D_801BCF94_7E60F4[];
extern u32 D_801BCFB0_7E6110[];
extern u32 D_801BD23C_7E639C[];

extern s32 func_8003FF68(s32 arg0, f32 arg1);
extern s32 func_800036C8(u32 arg0, u16 actor_index);
extern void func_80064AA0(s32 arg0, void* arg1);

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
    s16 position_y = D_800BE55C;

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801B9BF4_7E2D54.s")

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
            Actor* actor = &gActors[actor_index];

            actor->posX.whole = gActors[0].posX.whole;
            actor->posY.whole = -0x50;
            actor->palette_18C = (u16*)0x8022D568;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801BA950_7E3AB0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801BB28C_7E43EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801BB85C_7E49BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E2A30/7E2A60/func_801BBC00_7E4D60.s")
