#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s16 D_80104098[];
extern void func_80064AA0(u16 arg0, void* arg1);
extern u16 D_800D2950;
extern s32 D_800BE5F4;
extern u32 D_801BDB60_7E0A30[];
extern u16 D_801BDA7C_7E094C;
extern u32 D_801BE0C4_7E0F94[];
extern u32 D_801BC990_7DF860[];
extern u32 D_801BD984_7E0854[];
extern u32 D_801BD994_7E0864[];
extern u32 D_801BD9A4_7E0874[];
extern u32 D_801BDA80_7E0950[];
extern u32 D_801BDAA0_7E0970[];
extern u32 D_801BDAC0_7E0990[];
extern u32 D_801BDAE0_7E09B0[];
extern u32 D_801BDB00_7E09D0[];
extern u32 D_801BDB20_7E09F0[];
extern u32 D_801BDB40_7E0A10[];
extern u32 D_801BDFFC_7E0ECC[];
extern u32 D_801BF77C_7E264C[];
extern u32 D_801BEC24_7E1AF4[];
extern u32 D_801BEC34_7E1B04[];
extern u32 D_801BEC3C_7E1B0C[];
extern u32 D_801BEC44_7E1B14[];
extern u32 D_801BEC4C_7E1B1C[];


void func_801B9900_7DC7D0(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
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

void func_801B99B8_7DC888(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
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

void func_801B9A70_7DC940(u16 arg0, u16 arg1, u16 arg2) {
    if (D_800BE55C >= arg1) {
        D_800D291C = arg1 - 0x70;
        D_800D28E8 += arg2;
        return;
    }

    if (arg0 >= D_800BE55C) {
        D_800D2918 = arg0 + 0x70;
        D_800D28E8 -= arg2;
        return;
    }

    if ((gActors[0].posX.whole < -0x60) || (gActors[0].posX.whole >= 0x61)) {
        if (D_800BE55C < ((arg0 + arg1) / 2)) {
            D_800D2918 = arg0 + 0x70;
            D_800D28E8 -= arg2;
        }
        else {
            D_800D291C = arg1 - 0x70;
            D_800D28E8 += arg2;
        }
    }
}

void func_801B9B8C_7DCA5C(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    D_800D28E8++;
}

void func_801B9BC0_7DCA90(u16 arg0) {
    D_800D2920 = arg0 - 0xB0;
    D_800D2924 = arg0 + 0xB0;
    D_800D28E8--;
}

void func_801B9BF4_7DCAC4(u16 arg0, u16 arg1, u16 arg2) {
    if (((arg0 - 8) < D_800BE558) && (D_800BE558 < (arg0 + 8))) {
        func_801B9BC0_7DCA90(arg0);
        return;
    }

    if (((arg1 - 8) < D_800BE558) && (D_800BE558 < (arg1 + 8))) {
        func_801B9B8C_7DCA5C(arg1);
        return;
    }

    if ((gActors[0].posY.whole < -0x60) || (gActors[0].posY.whole >= 0x61)) {
        if (arg2 != 0) {
            if (D_800BE558 < ((arg0 + arg1) / 2)) {
                func_801B9B8C_7DCA5C(arg1);
            }
            else {
                func_801B9BC0_7DCA90(arg0);
            }
        }
        else {
            if (D_800BE558 < ((arg0 + arg1) / 2)) {
                func_801B9BC0_7DCA90(arg0);
            }
            else {
                func_801B9B8C_7DCA5C(arg1);
            }
        }
    }
}

void func_801B9D38_7DCC08(void) {
    D_800BE5F4 = 4;
    D_800D2950 = 0x30;
    D_800D2954 = 1;
    gActors[0x30].health = *(s16*)&D_801781F8[0xB2];
    gActors[0x30].posX.whole = gActors[0].posX.whole;
    gActors[0x30].posY.whole = gActors[0].posY.whole;
}

void func_801B9D84_7DCC54(void) {
    if (gGameState == 6) {
        gGameState = 7;
        gGameStateSubState = 0;
    }
}

s32 func_801B9DB0_7DCC80(void) {
    s32 new_var2;
    s32 new_var;

    if ((D_800BE55C + gActors[0x30].posY.whole) < (new_var2 = 0x100)) {
        new_var = 0x40;
        if (gActors[0x30].state != new_var) {
            gActors[0x30].state = 0x40;
            gActors[0x30].health -= 200;
            if (gActors[0x30].health <= 0) {
                gActors[0x30].health = 0;
                func_801B9D84_7DCC54();
                return 1;
            }
            D_800D2938 = 0;
            D_800D28E8 -= 2;
            D_800D28E4 = 0x61;
        }
    }

    if (gActors[0x30].flags == 0) {
        func_801B9D84_7DCC54();
        return 1;
    }

    return 0;
}

void func_801B9E6C_7DCD3C(void) {
    D_800D2938 = 0;
    D_800D28E8 = 0xC;
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x61;
}

void func_801B9EA0_7DCD70(void) {
    D_800D2938 = 0;
    D_800D28E8 = 0x1030;
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x61;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7DC7A0/7DC7D0/func_801B9ED4_7DCDA4.s")

void func_801BA774_7DD644(void) {
    switch (D_800D28E8) {
        case 0:
            func_80045FA4(D_801BD984_7E0854, 0);
            Palette_AdjustScenePalettes(2, -1, -6, 0, -4, -9, -2, -6, -0xC);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BD994_7E0864);
            D_800D28E8++;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_80104098[5188] = -0x58;
                D_80104098[5268] = -0x55;
            }
            break;

        case 3:
            func_8003D628(0);
            Sound_StartFade(0x81, 0x168);
            D_800D28E8++;
            break;

        case 5:
            func_80064AA0(1, D_801BD9A4_7E0874);
            D_800D28E8++;
            break;

        case 2:
        case 4:
        case 6:
        case 7:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA8CC_7DD79C(void* arg0) {
    func_80045FA4(arg0, (s32)D_801BDB60_7E0A30);
    Actor_ClearRange_30To90();
    Actor_LoadSpawnTable(D_801BC990_7DF860);
    Actor_LoadSpawnTable(D_801BDFFC_7E0ECC);
    D_800BE5F4 = 0xA;
    D_800D28E8++;
}

s32 func_801BA92C_7DD7FC(void) {
    s32 flags = D_801BDA7C_7E094C;

    if (!(flags & 1) && (D_800D28E8 == 0xA) && (D_800BE558 == 0x782) && (D_800BE55C == 0x27C)) {
        D_800D28E8 = 0x100;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDA80_7E0950);
        return 1;
    }

    if (!(flags & 2) && (D_800D28E8 == 6) && (D_800BE558 == 0x682) && (D_800BE55C == 0x47C)) {
        D_800D28E8 = 0x200;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDAA0_7E0970);
        return 1;
    }

    if (!(flags & 4) && (D_800D28E8 == 6) && (D_800BE558 == 0x192) && (D_800BE55C == 0x47C)) {
        D_800D28E8 = 0x300;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDAC0_7E0990);
        return 1;
    }

    if (!(flags & 8) && (D_800D28E8 == 2) && (D_800BE558 == 0x92) && (D_800BE55C == 0x17C)) {
        D_800D28E8 = 0x400;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDAE0_7E09B0);
        return 1;
    }

    if (!(flags & 0x10) && (D_800D28E8 == 0xE) && (D_800BE558 == 0x592) && (D_800BE55C == 0x17C)) {
        D_800D28E8 = 0x500;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDB00_7E09D0);
        return 1;
    }

    if (!(flags & ACTOR_FLAG_FLIPPED) && (D_800D28E8 == 0xE) && (D_800BE558 == 0x982) && (D_800BE55C == 0x17C)) {
        D_800D28E8 = 0x600;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDB20_7E09F0);
        return 1;
    }

    if (!(flags & 0x40) && (D_800D28E8 == 0x12) && (D_800BE558 == 0x692) && (D_800BE55C == 0x57C)) {
        D_800D28E8 = 0x700;
        D_800BE544 = 0x8000;
        Actor_LoadSpawnTable(D_801BDB40_7E0A10);
        return 1;
    }

    return 0;
}

void func_801BABFC_7DDACC(void) {
    s32 flags;

    Actor_LoadSpawnTable(D_801BE0C4_7E0F94);
    flags = D_801BDA7C_7E094C;

    if (!(flags & 1)) {
        gActors[0x50].flags = 0;
    }
    else {
        gActors[0xB0].flags = 0;
    }

    if (!(flags & 2)) {
        gActors[0x51].flags = 0;
    }
    else {
        gActors[0xB1].flags = 0;
    }

    if (!(flags & 4)) {
        gActors[0x52].flags = 0;
    }
    else {
        gActors[0xB2].flags = 0;
    }

    if (!(flags & 8)) {
        gActors[0x53].flags = 0;
    }
    else {
        gActors[0xB3].flags = 0;
    }

    if (!(flags & 0x10)) {
        gActors[0x54].flags = 0;
    }
    else {
        gActors[0xB4].flags = 0;
    }

    if (!(flags & ACTOR_FLAG_FLIPPED)) {
        gActors[0x55].flags = 0;
    }
    else {
        gActors[0xB5].flags = 0;
    }

    if (!(flags & 0x40)) {
        gActors[0x56].flags = 0;
    }
    else {
        gActors[0xB6].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7DC7A0/7DC7D0/func_801BACDC_7DDBAC.s")

void func_801BBCBC_7DEB8C(void) {
    D_800BE5F4 = 4;
    D_800D2950 = 0x30;
    D_800D2954 = 1;
    gActors[0x30].health = *(s16*)&D_801781F8[0xB2];
    gActors[0x30].posX.whole = gActors[0].posX.whole;
    gActors[0x30].posY.whole = gActors[0].posY.whole;
}

void func_801BBD08_7DEBD8(void) {
    if (gGameState == 6) {
        gGameState = 7;
        gGameStateSubState = 0;
    }
}

s32 func_801BBD34_7DEC04(void) {
    u16 actor_index;

    for (actor_index = 0x60; actor_index < 0x70; actor_index++) {
        if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
            gActors[0x30].state = 0x41;
            gActors[0x30].unk_0D4 = 0x3C;
            gActors[0x30].posX.whole = gActors[actor_index].posX.whole;
            gActors[0x30].posY.whole = gActors[actor_index].posY.whole + 0x28;
            return TRUE;
        }
    }

    return FALSE;
}

s32 func_801BBDB0_7DEC80(void) {
    s32 new_var2;

    if ((D_800BE55C + gActors[0x30].posY.whole) < (new_var2 = 0x100)) {
        gActors[0x30].state = 0x40;
        gActors[0x30].health -= 0xC8;
        if ((gActors[0x30].health & 0x8000) || (gActors[0x30].health == 0)) {
            gActors[0x30].health = 0;
            func_801BBD08_7DEBD8();
            return TRUE;
        }

        if (D_800D28E8 == 0x1033) {
            if (func_801BBD34_7DEC04() != 0) {
                return FALSE;
            }
        }

        gActors[0x30].health = 0;
        func_801BBD08_7DEBD8();
        return TRUE;
    }

    if (gActors[0x30].flags == 0) {
        func_801BBD08_7DEBD8();
        return TRUE;
    }

    return FALSE;
}

void func_801BBE80_7DED50(void) {
    D_800D2938 = 0;
    D_800D2928 = 0;
    D_800D28E8 = 0x1030;
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x61;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7DC7A0/7DC7D0/func_801BBEBC_7DED8C.s")

void func_801BC75C_7DF62C(void* arg0, s32 arg1) {
    func_80045FA4(arg0, arg1);
    Actor_ClearRange_30To90();
    Actor_LoadSpawnTable(D_801BC990_7DF860);
    Actor_LoadSpawnTable(D_801BF77C_7E264C);
    gActors[0x31].unk_190 = (s32)D_801BEC34_7E1B04;
    gActors[0x32].unk_190 = (s32)D_801BEC3C_7E1B0C;
    gActors[0x33].unk_190 = (s32)D_801BEC44_7E1B14;
}

void func_801BC7C4_7DF694(void) {
    if (gActors[0].health >= 0) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 0x61;
        D_800D28E8 = 1;
    }
    else if (gGameState == 6) {
        gGameState = 7;
        gGameStateSubState = 0;
    }
}

void func_801BC828_7DF6F8(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustScenePalettes(2, 1, 0, 0, -5, -8, 4, 7, 0);
            func_801BC75C_7DF62C(D_801BEC24_7E1AF4, (s32)D_801BEC4C_7E1B1C);

        case 1:
            D_800D28E8++;
            func_801BC75C_7DF62C(D_801BEC24_7E1AF4, -7);

        case 2:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 3:
            if ((D_800BE55C + gActors->posY.whole) < 0xA0) {
                func_8005739C(0, 0x64);
                func_801BC7C4_7DF694();
            }
            break;

        case 4:
            if (D_800D28FC & 0x200) {
                func_801BC7C4_7DF694();
            }
            break;
    }

    Camera_UpdateViewBounds();
}
