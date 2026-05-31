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
extern u32 D_801BD9B4_7E0884[];
extern u32 D_801BD9C4_7E0894[];
extern u32 D_801BD9D4_7E08A4[];
extern u32 D_801BD9E4_7E08B4[];
extern u32 D_801BD9F4_7E08C4[];
extern u16 D_801BDA04_7E08D4[];
extern u16 D_801BDA38_7E0908[];
extern u32 D_801BDA80_7E0950[];
extern u32 D_801BDAA0_7E0970[];
extern u32 D_801BDAC0_7E0990[];
extern u32 D_801BDAE0_7E09B0[];
extern u32 D_801BDB00_7E09D0[];
extern u32 D_801BDB20_7E09F0[];
extern u32 D_801BDB40_7E0A10[];
extern u32 D_801BDFFC_7E0ECC[];
extern u32 D_801BE1A8_7E1078[];
extern u32 D_801BE1D4_7E10A4[];
extern u32 D_801BF77C_7E264C[];
extern u32 D_801BEC24_7E1AF4[];
extern u32 D_801BEC34_7E1B04[];
extern u32 D_801BEC3C_7E1B0C[];
extern u32 D_801BEC44_7E1B14[];
extern u32 D_801BEC4C_7E1B1C[];
extern void func_80003A38(void);
extern void func_8004667C(void);
extern void func_800467EC(s32 arg0);
extern s16 D_800D28F8;
extern s32 D_800D2934;
extern u16 D_800D5824;
extern u32 D_801BE1F4_7E10C4[];
extern u32 D_801BE204_7E10D4[];
extern u32 D_801BE214_7E10E4[];
extern u32 D_801BE224_7E10F4[];
extern u16 D_801BE234_7E1104[];
extern u32 D_801BEA18_7E18E8[];
extern u32 D_801BEAAC_7E197C[];
extern u32 D_801BEBB8_7E1A88[];
extern u32 D_801BEBC8_7E1A98[];
extern u32 D_801BEBE8_7E1AB8[];


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

s32 func_801BABFC_7DDACC(void) {
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

void func_801BACDC_7DDBAC(void) {
    s32 state;

    func_801BA92C_7DD7FC();
    state = D_800D28E8;

    switch (state) {
        case 0:
            Palette_AdjustScenePalettes(2, 1, 0, 0, -5, -8, 5, 8, 1);
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            func_80045FA4(D_801BD9B4_7E0884, (s32)D_801BDB60_7E0A30);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BDFFC_7E0ECC);
            D_801BDA7C_7E094C = 0;
            func_801BABFC_7DDACC();
            D_800D28E8 = 0x800;
            D_800BE5F4 = 7;
            D_800BE544 = 0x8000;
            gActors[0].flags |= 0x20;

        case 0x800:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 0x3C;
                D_800D2934 = 0;
                D_800BE4EC = 1;
            }
            break;

        case 0x801:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(D_801BDA04_7E08D4[D_800D2934]);
                func_8005DF40(0, (s16)D_801BDA04_7E08D4[D_800D2934 + 1]);
                D_800D5830 = D_801BDA04_7E08D4[D_800D2934 + 2];
                D_800D5834 = D_801BDA04_7E08D4[D_800D2934 + 3];
            }
            Cutscene_CheckSkipInput();
            break;

        case 0x802:
            if (D_800D5824 == 0x1000) {
                if (D_800D5830 == -0x70) {
                    gActors[0x58].unk_174 = 1;
                }
                else {
                    gActors[0x58].unk_174 = 0;
                }

                if (D_800D5830 == -0x60) {
                    gActors[0x57].unk_174 = 1;
                }
                else {
                    gActors[0x57].unk_174 = 0;
                }
            }

            if (func_8005DEFC() == 0) {
                D_800D2934 += 4;
                if (D_801BDA04_7E08D4[D_800D2934] == 0xFFFF) {
                    D_800D28E8++;
                    D_800D28F8 = 0x3C;
                }
                else {
                    D_800D28E8--;
                    D_800D28F8 = 0x14;
                }
            }
            Cutscene_CheckSkipInput();
            break;

        case 0x803:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8 = 0xA;
                D_800BE544 = 0;
                D_800BE5F4 = 5;
                D_800D28FC |= 8;
                D_800BE4EC = 0;
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BD9B4_7E0884, (s32)D_801BDB60_7E0A30);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BDFFC_7E0ECC);
            D_801BDA7C_7E094C = 0;
            func_801BABFC_7DDACC();
            D_800D28E8++;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = 0xA;
                D_800BE544 = 0;
            }
            break;

        case 2:
            func_801B9BF4_7DCAC4(0, 0x282, 0);
            break;

        case 3:
            func_801B99B8_7DC888(0x47C, 0x92, 0x372, 1);
            break;

        case 4:
            func_801B9A70_7DC940(0x17C, 0x47C, 1);
            break;

        case 5:
            func_801B9900_7DC7D0(0x17C, 0x192, 0x682, 0xFFFF);
            break;

        case 6:
            func_801B9BF4_7DCAC4(0x282, 0x582, 0);
            break;

        case 7:
            func_801B9900_7DC7D0(0x27C, 0x182, 0x682, 1);
            break;

        case 8:
            func_801B9A70_7DC940(0x27C, 0x47C, 0xFFFF);
            break;

        case 9:
            func_801B99B8_7DC888(0x47C, 0x482, 0x682, 0xFFFF);
            break;

        case 0xA:
            func_801B9BF4_7DCAC4(0x582, 0x682, 0);
            break;

        case 0xB:
            func_801B9900_7DC7D0(0x17C, 0x482, 0x782, 1);
            break;

        case 0xC:
            func_801B9A70_7DC940(0x17C, 0x27C, 0xFFFF);
            break;

        case 0xD:
            func_801B99B8_7DC888(0x27C, 0x592, 0x982, 0xFFFF);
            break;

        case 0xE:
            func_801B9BF4_7DCAC4(0x682, 0x882, 0);
            break;

        case 0xF:
            func_801B99B8_7DC888(0x57C, 0x582, 0x982, 1);
            break;

        case 0x10:
            func_801B9A70_7DC940(0x17C, 0x57C, 1);
            break;

        case 0x11:
            func_801B9900_7DC7D0(0x17C, 0x692, 0x982, 0xFFFF);
            break;

        case 0x12:
            func_801B9BF4_7DCAC4(0x882, 0, 1);
            break;

        case 0x1E:
            func_801BA8CC_7DD79C(D_801BD9C4_7E0894);
            func_801BABFC_7DDACC();
            break;

        case 0x1F:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = 0x12;
            }
            break;

        case 0x28:
            func_801BA8CC_7DD79C(D_801BD9D4_7E08A4);
            func_801BABFC_7DDACC();
            break;

        case 0x29:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800D28E8 = 2;
            }
            break;

        case 0x100:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 0xA;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 1;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x200:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 6;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 2;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x300:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 6;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 4;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x400:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 2;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 8;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x500:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 0xE;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 0x10;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x600:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 0xE;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= ACTOR_FLAG_FLIPPED;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x700:
            if (gActors[0x51].flags == 0) {
                D_800D28E8 = 0x12;
                D_800BE544 = 0;
                gActors[0x8C].health = 0;
                D_801BDA7C_7E094C |= 0x40;
                func_801BABFC_7DDACC();
            }
            break;

        case 0x900:
            func_80045FA4(D_801BD9E4_7E08B4, (s32)D_801BDB60_7E0A30);
            Actor_ClearRange_30To90();
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BE0C4_7E0F94);
            D_800BE5F4 = 0xB;
            gActors[0].flags |= 0x20;
            D_800D28E8++;
            Sound_PlayMusic(0x1E);
            break;

        case 0x901:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 0x3C;
                D_800D2934 = 0;
            }
            break;

        case 0x902:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(D_801BDA38_7E0908[D_800D2934]);
                func_8005DF40(0, (s16)D_801BDA38_7E0908[D_800D2934 + 1]);
                D_800D5830 = D_801BDA38_7E0908[D_800D2934 + 2];
                D_800D5834 = D_801BDA38_7E0908[D_800D2934 + 3];
                if (D_800D2934 == 8) {
                    Sound_PlayMusic(0xD);
                }
            }
            break;

        case 0x903:
            if ((D_800D5824 == 0x8000) && (D_800D2934 == 0)) {
                gActors[0x57].unk_174 = 0x100;
            }
            else if (D_800D5824 == 0x1000) {
                if (D_800D5830 == -0x60) {
                    gActors[0x57].unk_174 = 1;
                }
                else {
                    gActors[0x57].unk_174 = 0;
                }
            }

            if (func_8005DEFC() == 0) {
                D_800D2934 += 4;
                if (D_801BDA38_7E0908[D_800D2934] == 0xFFFF) {
                    D_800D28E8 = 0x904;
                    D_800D28F8 = 0x3C;
                    Sound_StartFade(0x81, 0x3C);
                }
                else {
                    D_800D28E8--;
                    if (D_800D2934 == 4) {
                        D_800D28F8 = 0x78;
                    }
                    else {
                        D_800D28F8 = 0x14;
                    }
                }
            }
            break;

        case 0x904:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800D28E8 = 0xA00;
            }
            break;

        case 0xA00:
            Palette_AdjustScenePalettes(-0xC, -4, -0x20, -4, 2, -0x18, 4, 8, -0x10);
            Actor_ClearRange_30To90();
            D_800BE6E8 = 0;
            D_800BE544 = 0x8000;
            func_80046148(D_801BD9F4_7E08C4, 0);
            Actor_LoadSpawnTable(D_801BE1A8_7E1078);
            D_800D28E8++;
            Sound_PlayMusic(0x1D);
            break;

        case 0xA01:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0xA03:
            D_800D28E8++;
            Actor_ClearSceneActors();
            func_80046148(D_801BD9F4_7E08C4, 0);
            D_800BE544 = 0x8000;
            D_800BE6E4 = 0;
            D_800BE6E8 = 0;
            D_800BE6EC = 0;
            Actor_LoadSpawnTable(D_801BE1D4_7E10A4);
            func_80046A9C();
            D_800BE5B0 = 448.0f;
            D_800BE5B8 = 0.0f;
            break;

        case 0xA04:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0xA06:
            D_800D28E4 = 0x64;
            break;
    }

    if (D_800D28E8 >= 0x901) {
        D_800BE4EC = 1;
    }

    if ((D_801BDA7C_7E094C & 0x7F) == 0x7F) {
        D_801BDA7C_7E094C = 0;
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 0x61;
        D_800D28E8 = 0x900;
        Sound_StartFade(0x81, 0x32);
    }

    Camera_UpdateViewBounds();
}

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

void func_801BBEBC_7DED8C(void) {
    switch (D_800D28E8) {
        case 0:
            Palette_AdjustScenePalettes(2, 1, 0, 0, -5, -8, 4, 7, 0);
            D_800D28E8 = 0x30;
            *(s16*)&D_801781F8[0xB2] = 0x3E8;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE4EC = 1;
            }
            break;

        case 2:
            func_801BBDB0_7DEC80();
            break;

        case 0x30:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1030;
                Sound_PlayMusic(0x11);
                break;
            }

            D_800D28E8++;
            func_80045FA4(D_801BE1F4_7E10C4, (s32)D_801BEA18_7E18E8);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BEAAC_7E197C);
            func_801BBCBC_7DEB8C();
            gActors[0x98].flags = 0;
            func_80003A38();
            break;

        case 0x31:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 0x3C;
                D_800D2934 = 0;
                D_800BE4EC = 1;
            }
            break;

        case 0x32:
            if (gButtonPress & D_800BE52C) {
                func_801BBE80_7DED50();
                break;
            }

            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(D_801BE234_7E1104[D_800D2934]);
                func_8005DF40(0, (s16)D_801BE234_7E1104[D_800D2934 + 1]);
                D_800D5830 = D_801BE234_7E1104[D_800D2934 + 2];
                D_800D5834 = D_801BE234_7E1104[D_800D2934 + 3];
            }
            break;

        case 0x33:
            if (gButtonPress & D_800BE52C) {
                func_801BBE80_7DED50();
                break;
            }

            if (func_8005DEFC() == 0) {
                D_800D2934 += 4;
                if (D_800D2934 >= 0xC) {
                    D_800D28E8++;
                    D_800D28F8 = 0x3C;
                }
                else {
                    D_800D28E8--;
                    D_800D28F8 = 0x14;
                }
            }
            break;

        case 0x34:
            if (gButtonPress & D_800BE52C) {
                func_801BBE80_7DED50();
                break;
            }

            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8 = 0x38;
            }
            break;

        case 0x38:
            D_800D28E8++;
            Actor_ClearSceneActors();
            func_80045FA4(D_801BE1F4_7E10C4, 0);
            D_800BE5F4 = 4;
            D_800BE544 = 0x8000;
            D_800BE6E4 = 0;
            D_800BE6E8 = 0;
            D_800BE6EC = 0;
            Actor_LoadSpawnTable(D_801BEBB8_7E1A88);
            func_80046A9C();
            Sound_PlayMusic(0x11);

        case 0x39:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0x3A:
            if ((gButtonPress & D_800BE52C) || (gActors[0x30].flags == 0)) {
                func_801BBE80_7DED50();
                D_800D2928 = 1;
            }
            break;

        case 0x1030:
            D_800D28E8++;
            Actor_ClearSceneActors();
            func_80045FA4(D_801BE1F4_7E10C4, (s32)D_801BEA18_7E18E8);
            D_800BE544 = 0;
            D_800BE6E4 = 1;
            D_800BE6E8 = 1;
            D_800BE6EC = 1;
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BEAAC_7E197C);
            func_801BBCBC_7DEB8C();
            gActors[0x40].unk_0D8 |= 8;
            if (D_800D2928 == 0) {
                Sound_PlayMusic(0x11);
            }
            break;

        case 0x1031:
            if (func_80046D5C() != 0) {
                func_800472D4();
            }
            break;

        case 0x1032:
            D_800D2928--;
            if (D_800D2928 < 0) {
                D_800D28E8++;
                func_80045F14(D_801BE204_7E10D4);
                D_800D28FC &= ~2;
                func_8007CFE0(0xC7, 3, -0x28, 0, 0, 0x78);
                gActors[0x30].unk_0D8 &= 0xFFFE;
                gActors[0x40].unk_0D8 &= 0xFFFE;
                D_800BE544 = 0x8000;
            }
            break;

        case 0x1033:
            func_800467EC(0x40);
            func_8004667C();
            if (gActors[0x40].flags == 0) {
                D_800D28E8 = 0x1038;
                Actor_ClearSceneActors();
                func_8003D628(0);
                func_80045FA4(D_801BE204_7E10D4, -8);
                D_800BE5F4 = 4;
                func_80003A38();
            }
            else {
                func_801BBDB0_7DEC80();
            }
            break;

        case 0x1039:
            D_800D2938 = 0;
            D_800D28E8 = 0x40;
            D_800D28F0 = D_800D28E4;
            D_800D28E4 = 0x61;
            break;

        case 0x40:
            D_800D28E8++;
            func_80045FA4(D_801BE214_7E10E4, 0);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BEBC8_7E1A98);
            D_800BE5F4 = 4;
            func_800271B0(0x1C);
            Sound_PlayMusic(0x1E);

        case 0x41:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D2928 = 0x78;
                D_800BE4EC = 1;
            }
            break;

        case 0x42:
            D_800D2928--;
            if ((gButtonPress & D_800BE52C) || (D_800D2928 < 0)) {
                D_800D2938 = 0;
                D_800D28E8 = 0x50;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
            }
            break;

        case 0x50:
            D_800D28E8++;
            func_80045FA4(D_801BE224_7E10F4, 0);
            Actor_LoadSpawnTable(D_801BC990_7DF860);
            Actor_LoadSpawnTable(D_801BEBE8_7E1AB8);
            D_800BE5F4 = 4;
            D_800D2928 = 0xB4;

        case 0x51:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE4EC = 1;
            }

        case 0x52:
            D_800D2928--;
            if ((gButtonPress & D_800BE52C) || (D_800D2928 < 0)) {
                D_800D28E4 = 0x64;
            }
            break;
    }

    Camera_UpdateViewBounds();
    if (gActors[0x90].actorType == 0x2700) {
        gActors[0x90].colorA = 0xA8;
        gActors[0x90].colorB = 0x10;
    }

    if ((gActors[0x30].flags & 2) && (gActors[0x30].health != 0)) {
        if (gActors[0x30].actorType == 0x1D02) {
            *(s16*)&D_801781F8[0xB2] = gActors[0x30].health;
        }
    }
}

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
