#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s16 D_800D28F8;
extern u32 D_800D2934;
extern s16 D_800D3B74;
extern s16 D_800D36FC;
extern s16 D_800D5830;
extern s16 D_800D5834;
extern u16 D_800BE4E0;
extern s16 D_800BE550;
extern s16 D_800BE554;
extern s16 D_800BE558;
extern s16 D_800BE55C;
extern s16 D_800BE5D8;
extern s16 D_800BE5DC;
extern s32 D_800BE5F4;
extern s16 D_800E1C84[];
extern u16 gDebugStageSelectSelectedIndex;

extern u32 D_801BC620_7C9800[];
extern s16 D_801BC760_7C9940[];
extern s16 D_801BC7A8_7C9988[];
extern u32 D_801BC684_7C9864[];
extern s16 D_801BC6F4_7C98D4[];
extern s16 D_801BC70C_7C98EC[];
extern s16 D_801BC6DC_7C98BC[];
extern s16 D_801BC724_7C9904[];
extern s16 D_801BC73C_7C991C[];
extern u32 D_801BC7CC_7C99AC[];
extern u32 D_801BC7DC_7C99BC[];
extern u32 D_801BCB50_7C9D30[];
extern u32 D_801BCBE0_7C9DC0[];
extern u32 D_801BCD40_7C9F20[];
extern u32 D_801BCD50_7C9F30[];
extern u32 D_801BD288_7CA468[];
extern u32 D_801BD4A0_7CA680[];
extern u32 D_801BD4B0_7CA690[];
extern u32 D_801BD4C0_7CA6A0[];
extern u32 D_801BD4C8_7CA6A8[];
extern u32 D_801BD4D0_7CA6B0[];
extern u32 D_801BD474_7CA654[];
extern u32 D_801BD8F4_7CAAD4[];
extern u32 D_801BDF74_7CB154[];
extern u32 D_801BDFE8_7CB1C8[];
extern u32 D_801BE190_7CB370[];
extern u32 D_801BE3EC_7CB5CC[];
extern u32 D_801BE3FC_7CB5DC[];
extern u32 D_801BE98C_7CBB6C[];
extern u32 D_801BEB24_7CBD04[];
extern u32 D_801BEB34_7CBD14[];
extern u32 D_801BEB54_7CBD34[];
extern u32 D_801BEC00_7CBDE0[];
extern u32 D_801BEC10_7CBDF0[];
extern u32 D_801BF034_7CC214[];
extern u32 D_801BF274_7CC454[];
extern u32 D_801BF284_7CC464[];
extern u32 D_801BF34C_7CC52C[];
extern s16 D_801BF35C_7CC53C[];
extern u32 D_801BF36C_7CC54C[];
extern u32 D_801BF5FC_7CC7DC[];
extern u32 D_801BF740_7CC920[];
extern u16 D_801BF750_7CC930[];
extern u16 D_801BF752_7CC932[];
extern u32 D_801BF778_7CC958[];
extern u32 D_801BF7D0_7CC9B0[];
extern u32 D_801BF80C_7CC9EC[];
extern u32 D_801BF8B8_7CCA98[];
extern ActorSpawnRecord D_801BF910_7CCAF0[];
extern u32 D_801BF94C_7CCB2C[];
extern u32 D_801BFFDC_7CD1BC[];
extern u32 D_801BFFEC_7CD1CC[];
extern u32 D_801BFFFC_7CD1DC[];
extern u32 D_801C04F0_7CD6D0[];
extern u32 D_801C09B4_7CDB94[];
extern u32 D_801C09C4_7CDBA4[];
extern u32 D_801C0A44_7CDC24[];
extern u32 D_801C0B7C_7CDD5C[];

extern s32 func_800475EC(void);
extern void func_80047648(s32 arg0);
extern void func_8004400C(void* arg0, s32 arg1, s32 arg2);
extern void func_8002F2A8(s32 arg0);
extern void func_80064AA0(s32 arg0, void* arg1);
extern u64 func_8001C7F0(u16 arg0);
extern void func_80045544(s32 arg0, s32 arg1);
extern void func_80045610(s32 arg0, s32 arg1);
extern void func_80043D30(void* arg0);
extern void func_800472D4(void);
extern s32 func_800032C4(u32 arg0);
extern void func_80025EC4(u16 index);
extern void func_801BB6AC_7C888C(u16 arg0);

void func_801B9900_7C6AE0(s16* arg0) {
    Palette_AdjustScenePalettes(0, 0, 0, arg0[0], arg0[1], arg0[2], arg0[3], arg0[4], arg0[5]);
    Palette_AdjustRgb5551Array((u16*)0x80352B90, (u16*)0x80352990, 0xFF, arg0[6], arg0[7], arg0[8]);
    Palette_AdjustRgb5551Array((u16*)0x80355F90, (u16*)0x80355D90, 0xFF, arg0[9], arg0[10], arg0[11]);
}

void func_801B99B4_7C6B94(s16* arg0) {
    Palette_AdjustScenePalettes(0, 0, 0, arg0[0], arg0[1], arg0[2], arg0[3], arg0[4], arg0[5]);
    Palette_AdjustRgb5551Array((u16*)0x80343820, (u16*)0x80343750, 0x67, arg0[6], arg0[7], arg0[8]);
    Palette_AdjustRgb5551Array((u16*)0x80353000, (u16*)0x80352EF0, 0x87, arg0[9], arg0[10], arg0[11]);
    Palette_AdjustRgb5551Array((u16*)0x80358E20, (u16*)0x80358C40, 0xEF, arg0[12], arg0[13], arg0[14]);
    Palette_AdjustRgb5551Array((u16*)0x8035AD40, (u16*)0x8035AC00, 0x98, arg0[15], arg0[16], arg0[17]);
}

void func_801B9AC0_7C6CA0(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B9900_7C6AE0(D_801BC6DC_7C98BC);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80045FA4(D_801BC7CC_7C99AC, (s32)D_801BC7DC_7C99BC);
            D_800BE5F4 = 4;
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BCB50_7C9D30);
            gActors[0x80].posY.whole -= 0xA4;
            gActors[0x81].posY.whole -= 0xA4;
            gActors[0x82].posY.whole -= 0xA4;
            gActors[0x83].posY.whole -= 0xA4;
            gActors[0x8A].posY.whole -= 0xA4;
            gActors[0x8B].posY.whole -= 0xA4;
            D_800BE544 = 0x8000;
            D_800BE550 = 0x1A0;
            D_800BE554 = 0x200;
            D_800BE558 = D_800BE550;
            D_800BE55C = D_800BE554;
            Sound_PlaySfx(0xBD);
            D_800BE4EC = 1;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE4EC = 1;
            }
            break;

        case 2:
            if (gActors[0x30].flags == 0) {
                D_800D28E8++;
                Actor_ClearRange(0x30, 0x7D);
                Actor_LoadSpawnTable(D_801BCBE0_7C9DC0);
                gActors[0x34].unk_174 = 0x1000;
                func_80025EC4(1);
            }

            Cutscene_CheckSkipInput();
            break;

        case 3:
            *(s32*)&D_800BE554 -= 0x8000;

            if (D_800BE554 < 0x15B) {
                D_800D28E8++;
                D_800D28F8 = 0x3C;
                D_800BE5F4 = 9;
                D_800BE5D8 = D_800BE558 - 0x80;
                gActors[0].posX.whole = -0x80;
                D_800BE5DC = D_800BE55C - 0x2E;
                gActors[0].posY.whole = -0x2E;
            }

            Cutscene_CheckSkipInput();
            break;

        case 4:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(5);
                func_8005DF40(0, 0xC);
                D_800D5830 = -0x40;
                D_800D5834 = 0x48;
            }
            break;

        case 5:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x78;
                gActors[0x34].unk_174 = 0x1001;
            }
            break;

        case 6:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(6);
                D_800D5830 = 0x40;
                D_800D5834 = 0x48;
            }
            break;

        case 7:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                func_8005DF5C(0x12);
                D_800D5830 = -0x40;
            }
            break;

        case 8:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                func_8005DF5C(0x13);
                D_800D5830 = 0x40;
            }
            break;

        case 9:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x1E;
                gActors[0x34].unk_174 = 0x1003;
            }
            break;

        case 0xA:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8 = 0x100;
                D_800BE5F4 = 5;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE4EC = 0;
            }
            break;

        case 0x100:
            break;

        case 0x1000:
            D_800D28E8++;
            func_80046148(D_801BC7CC_7C99AC, (s32)D_801BC7DC_7C99BC);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BCBE0_7C9DC0);
            func_800032C4(0xBD);
            gActors[0x34].unk_174 = 0x1003;
            func_80025EC4(1);

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 0x100;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE5F4 = 8;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA008_7C71E8(void) {
    switch ((s32)D_800D28E8) {
        case 0:
            func_801B9900_7C6AE0(D_801BC70C_7C98EC);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
            }
            else {
                D_800D28E8 += 1;
                func_80045FA4(D_801BCD40_7C9F20, (s32)D_801BCD50_7C9F30);
                D_800BE5F4 = 3;

                // FAKEMATCH
                if ((gActors && gActors) && gActors) {
                }

                gActors[0].flags |= 0x20;
                Actor_LoadSpawnTable(D_801BC684_7C9864);
                Actor_LoadSpawnTable(D_801BD288_7CA468);
                D_800BE544 = 0x8000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8 += 1;
                D_800D28F8 = 6;
            }
            break;

        case 2:
            func_8005DF40(-3, 0xC);
            func_80047714(1, 2, 1, 3);

            if (D_800D28E8 == 3) {
                D_800BE544 = 0;
                D_800D28FC |= 8;
            }

            Cutscene_CheckSkipInput();
            break;

        case 6:
            D_800BE5F4 = 7;
            D_800D28E8 += 1;
            D_800D2924 = 0xD60;
            D_800D28F8 = 6;
            break;

        case 7:
            func_8005DF40(-3, 0xC);
            func_8005DF5C(3);
            D_800D28E8 += 1;
            break;

        case 8:
            if (func_8005DEFC() == 0) {
                func_8002F2A8(0xA);
                func_8005DF5C(4);
                D_800D28E8 += 1;
            }
            break;

        case 9:
            if ((func_8005DEFC() == 0) && (gActors[0].health >= 0)) {
                func_80064AA0(0x803C, D_801BD474_7CA654);
                D_800D28E8 += 1;
            }
            break;

        case 0xC:
            D_800D28F8 = 6;
            D_800BE5F4 = 7;
            D_800D28E8 += 1;
            break;

        case 0xD:
            func_8005DF40(-3, 0xC);
            func_80047714(5, 2, 4, 0xE);
            break;

        case 0xE:
            break;

        case 0x1000:
            func_80045FA4(D_801BCD40_7C9F20, (s32)D_801BCD50_7C9F30);
            D_800BE5F4 = 5;
            gActors[0].flags |= 0x20;
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BD288_7CA468);
            D_800D28E8 += 1;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 3;
                D_800BE544 = 0;
                D_800D28FC |= 8;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA38C_7C756C(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B9900_7C6AE0(D_801BC6DC_7C98BC);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80046148(D_801BD4A0_7CA680, (s32)D_801BD4D0_7CA6B0);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BDF74_7CB154);
            Actor_LoadSpawnTable(D_801BDFE8_7CB1C8);
            D_800BE544 = 0x8000;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE4EC = 1;
            }
            break;

        case 2:
            if (gActors[0x38].flags == 0) {
                D_800D28E8 = 6;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE5F4 = 0xA;
                D_800BE4EC = 0;
                break;
            }

            Cutscene_CheckSkipInput();
            break;

        case 6:
            gActors[0x43].unk_190 = (s32)D_801BD4C0_7CA6A0;
            break;

        case 0x100:
            D_800D28E8++;
            func_80046148(D_801BD4B0_7CA690, (s32)D_801BD8F4_7CAAD4);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BDF74_7CB154);
            Actor_LoadSpawnTable(D_801BE190_7CB370);

        case 0x101:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE5F4 = 0xA;
                gActors[0].flags |= 0x20;
            }
            break;

        case 0x102:
            gActors[0x31].unk_190 = (s32)D_801BD4C8_7CA6A8;
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BD4A0_7CA680, (s32)D_801BD4D0_7CA6B0);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BDF74_7CB154);
            Actor_LoadSpawnTable(D_801BDFE8_7CB1C8);
            gActors[0x37].flags = 0;
            gActors[0x38].flags = 0;
            gActors[0x39].flags = 0;
            D_800BE5F4 = 5;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 6;
                D_800D28FC |= 8;
                D_800BE544 = 0;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA694_7C7874(void) {
    gActors[0x8C].graphicFlags |= 0x10;
    gActors[0x8C].colorB = 0x58;\
    gActors[0x8C].colorG = 0x70;\
    gActors[0x8C].colorR = 0x30;
}

void func_801BA6C4_7C78A4(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B99B4_7C6B94(D_801BC7A8_7C9988);
            D_800D28E8++;
            func_80045FA4(D_801BE3EC_7CB5CC, (s32)D_801BE3FC_7CB5DC);
            D_800BE5F4 = 8;
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            Actor_LoadSpawnTable(D_801BE98C_7CBB6C);
            func_801BA694_7C7874();

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
            }

            Camera_UpdateViewBounds();
            break;

        case 2:
            Camera_UpdateViewBounds();

            if (D_800BE558 >= 0x711) {
                D_800D28E8++;
                D_800BE544 = 0x50;
                D_800BE568 = 0x680;
                Actor_LoadSpawnTable(D_801BEB24_7CBD04);
            }
            break;

        case 3:
            if (func_800475EC() < 0) {
                func_80047648(0x40);
                func_8004400C(D_801BEB34_7CBD14, -0xA0, 0x130);
            }

            if (gActors[0x50].flags == 0) {
                D_800D28E8++;
                D_800BE544 = 0;
                D_800D2924 = 0xF50;
                D_800D2918 = 0x2D0;
                Actor_LoadSpawnTable(D_801BEB54_7CBD34);
            }
            break;

        case 4:
            D_800D28E8++;
            Camera_UpdateViewBounds();
            break;

        case 5:
            Camera_UpdateViewBounds();
            break;
    }

    func_80045E58(D_801BE98C_7CBB6C);
}

void func_801BA89C_7C7A7C(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B9900_7C6AE0(D_801BC724_7C9904);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80046148(D_801BEC00_7CBDE0, (s32)D_801BEC10_7CBDF0);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BF034_7CC214);
            D_800BE544 = 0x8000;
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
            func_8005DF5C(1);
            func_8005DF40(0, 0xC);

        case 4:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x78;
                gActors[0x37].unk_174 = 0x1000;
                gActors[0x38].unk_174 = 0x1000;
            }
            Cutscene_CheckSkipInput();
            break;

        case 5:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE5F4 = 0xA;
                D_800BE4EC = 0;
            }
            break;

        case 6:
            break;

        case 0x1000:
            D_800D28E8++;
            func_80046148(D_801BEC00_7CBDE0, (s32)D_801BEC10_7CBDF0);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BF034_7CC214);
            gActors[0x37].flags = 0;
            gActors[0x38].unk_174 = 0x1000;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 6;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE5F4 = 0xA;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BAB34_7C7D14(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B99B4_7C6B94(D_801BC760_7C9940);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80046148(D_801BF274_7CC454, 0);
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            Actor_LoadSpawnTable(D_801BF284_7CC464);
            D_800BE544 = 0x8000;
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
            func_8005DF5C(1);

        case 4:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x78;
            }

            Cutscene_CheckSkipInput();
            break;

        case 5:
            D_800D28F8--;

            if ((D_800D28F8 < 0x5A) && ((D_800BE4E0 & 7) == 0)) {
                func_8005CA34(-7, 7);

                if ((D_800BE4E0 % 10) == 0) {
                    Sound_PlaySfx(0x11C);
                }
            }

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                gActors[0x31].state++;
                func_8005CA34(-8, 0xA);
                Sound_StartFade(0x81, 0x50);
                D_800D28F8 = 0x50;
            }

            Cutscene_CheckSkipInput();
            break;

        case 6:
            D_800D28F8--;

            if (D_800D28F8 == 0x1E) {
                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1002; 
            }

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(2);

                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1001; 

                Sound_PlayMusic(0x11);
            }

            Cutscene_CheckSkipInput();
            break;

        case 7:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x14;
            }

            Cutscene_CheckSkipInput();
            break;

        case 8:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(3);
                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1001;
            }

            Cutscene_CheckSkipInput();
            break;

        case 9:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x14;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xA:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(4);
                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1001;
                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1001;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xB:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x28;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xC:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                Sound_PlaySfx(0xB7);
                func_8005DF5C(5);

                // FAKEMATCH
                *(&gActors[0].unk_174 + 0x1FE0) = 0x1100;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xD:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800BE5F4 = 0xB;
                D_800D28F8 = 0x78;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xE:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(8);
            }

            Cutscene_CheckSkipInput();
            break;

        case 0xF:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x14;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0x10:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(9);
            }

            Cutscene_CheckSkipInput();
            break;

        case 0x11:
            if (func_8005DEFC() == 0) {
                D_800D28E8++;
                D_800D28F8 = 0x14;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0x12:
            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8 = 0x100;
                D_800BE5F4 = 5;
                D_800BE544 = 0;
                D_800D28FC |= 8;
                gActors[0x31].state = 0x10;
                func_8003E6A4(0xF, 0x32);
                D_800BE4EC = 0;
            }

            Cutscene_CheckSkipInput();
            break;

        case 0x100:
            if (gActors[0x31].flags == 0) {
                func_8003D628(0);
                Sound_StartFade(0x81, 0x168);
                D_800D28E8++;
                D_800BE544 = 0;
            }
            break;

        case 0x102:
            func_80064AA0(1, D_801BF34C_7CC52C);
            D_800D28E8++;
            break;

        case 0x101:
        case 0x103:
        case 0x104:
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BF274_7CC454, 0);
            D_800BE5F4 = 7;
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            func_80043D30(D_801BF284_7CC464);
            D_800BE544 = 0x8000;
            Sound_PlayMusic(0x11);

            // FAKEMATCH
            *(&gActors[0].unk_174 + 0x1FE0) = 0x1100;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                func_800472D4();
                gActors[0x31].state++;
            }
            break;

        case 0x1002:
            if (func_8004735C(0x100, 0) != 0) {
                D_800BE544 = 0x31;
                gActors[0x31].state = 0x10;
                func_8003E6A4(0xF, 0x32);
            }
            break;
    }

    Camera_UpdateViewBounds();
    D_800D36FC = 0x31;
}

void func_801BB310_7C84F0(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B99B4_7C6B94(D_801BC73C_7C991C);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80045FA4(D_801BF35C_7CC53C, (s32)D_801BF36C_7CC54C);
            D_800BE5F4 = 3;
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            Actor_LoadSpawnTable(D_801BF5FC_7CC7DC);
            D_800BE544 = 0x8000;
            D_800BE568 = D_800D2920;
            D_800BE56C = 0x1AE0;
            D_800BE570 = D_800D2918;
            D_800BE574 = D_800D291C;
            D_800D2924 = D_800BE56C + 0x100;
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
            D_800BE544 = 0;
            D_800BE5F4 = 5;
            D_800BE4EC = 0;

        case 4:
            if (D_800BE5D8 >= 0x1980) {
                D_800BE570 = Math_ApproachS32(D_800BE570, 0x1CC, 3);
                D_801373E0.unk_78 |= 4;
            }
            else {
                D_800BE570 = Math_ApproachS32(D_800BE570, 0x270, 3);
                D_801373E0.unk_78 &= ~4;
            }

            if (D_800BE5D8 >= 0x1AF9) {
                D_800D28FC |= 1;
                func_80045D84(1, 0xA);
                D_800BE5F4 = 3;
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BF35C_7CC53C, (s32)D_801BF36C_7CC54C);
            D_800BE5F4 = 3;
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            Actor_LoadSpawnTable(D_801BF5FC_7CC7DC);
            D_800BE568 = D_800D2920;
            D_800BE56C = 0x1AE0;
            D_800BE570 = D_800D2918;
            D_800BE574 = D_800D291C;
            D_800D2924 = D_800BE56C + 0x100;
            D_800D28E8++;
            D_800BE4EC = 1;
            break;

        case 0x1001:
            gActors[0x88].colorA = 0xFE;
            gActors[0x88].flags |= 1;
            gActors[0x88].state = 2;
            D_800BE6EC = 0;
            gActors[0x8C].unk_18C = 1;
            D_800D28E8++;

        case 0x1002:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 3;
                D_800BE4EC = 1;
            }
            break;
    }
}

void func_801BB6AC_7C888C(u16 arg0) {
    // FAKEMATCH - probably a for loop (I couldn't get it to work)
    s32* value = &gActors[0x50].unk_174;

    value[0] = arg0;
    value[sizeof(Actor) / sizeof(*value)] = arg0;
    value[(sizeof(Actor) / sizeof(*value)) * 2] = arg0;
    value[(sizeof(Actor) / sizeof(*value)) * 3] = arg0;
}

void func_801BB6D0_7C88B0(void) {
    switch (D_800D28E8) {
        case 0:
            D_800BE4EC = 1;
            func_801B9900_7C6AE0(D_801BC70C_7C98EC);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            D_800BE544 = 0x8000;
            break;

        case 1:
            D_800D28E8++;
            func_80046148(D_801BF740_7CC920, (s32)D_801BF778_7CC958);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BF7D0_7CC9B0);
            Actor_LoadSpawnTable(D_801BF80C_7CC9EC);
            Sound_PlayMusic(0x12);

            if (func_8001C7F0(gDebugStageSelectSelectedIndex) != 0) {
                gActors[0x77].flags = 0;
            }
            break;

        case 2:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 0x3C;
                D_800D2934 = 0;
                gActors[0x4D].unk_174 = 0x11;
                D_800BE4EC = 1;
            }
            break;

        case 3:
            if (D_800D2934 == 0xE) {
                if (D_800D28F8 == 0xB0) {
                    gActors[0x56].unk_0D8 = 2;
                }

                if (D_800D28F8 == 0x78) {
                    func_801BB6AC_7C888C(1);
                    Sound_PlaySfx(0x11A);
                }
            }

            D_800D28F8--;

            if (D_800D28F8 < 0) {
                D_800D28E8++;
                func_8005DF5C(D_801BF750_7CC930[D_800D2934]);
                func_8005DF40(0, -0x2C);
                D_800D5830 = D_801BF752_7CC932[D_800D2934];
                D_800D5834 = 0x48;

                switch (D_800D2934) {
                    case 0:
                        gActors[0x4C].unk_174 = 1;
                        break;

                    case 4:
                        gActors[0x56].unk_0D8 = 1;
                        Sound_StartFade(0x81, 0x50);
                        break;

                    case 6:
                        gActors[0x4E].unk_174 = 1;
                        break;

                    case 8:
                        func_801BB6AC_7C888C(1);
                        Sound_PlaySfx(0x11A);
                        break;

                    case 0xC:
                        *(&gActors[0].unk_174 + 0x1FE0) = 1; // FAKEMATCH
                        break;

                    case 0xE:
                        Sound_PlaySfx(0xB7);
                        func_801BB6AC_7C888C(0x20);
                        break;

                    case 0x10:
                        Sound_StartFade(0x81, 0x78);
                        break;
                }
            }

            Cutscene_CheckSkipInput();
            break;

        case 4:
            if (func_8005DEFC() == 0) {
                D_800D28F8 = 0x14;

                switch (D_800D2934) {
                    case 0:
                        gActors[0x4C].unk_174 = 0x12;
                        break;

                    case 4:
                        gActors[0x4D].unk_174 = 0x10;
                        break;

                    case 2:
                        D_800D28F8 = 0xB4;
                        gActors[0x4D].unk_184_s16[0] = 0x5F6;
                        gActors[0x4D].unk_184_s16[1] = 0x17E;
                        break;

                    case 6:
                        D_800D28F8 = 0x118;
                        gActors[0x4E].unk_174 = 0x12;
                        gActors[0x4D].unk_184_s16[0] = 0x520;
                        gActors[0x4D].unk_184_s16[1] = 0x150;
                        gActors[0x50].unk_184_s16[0] = 0x5E8;
                        gActors[0x51].unk_184_s16[0] = 0x5FC;
                        gActors[0x52].unk_184_s16[0] = 0x610;
                        gActors[0x53].unk_184_s16[0] = 0x624;
                        gActors[0x50].unk_184_s16[1] = 0x17E;
                        gActors[0x51].unk_184_s16[1] = 0x17E;
                        gActors[0x52].unk_184_s16[1] = 0x17E;
                        gActors[0x53].unk_184_s16[1] = 0x17E;
                        Sound_PlayMusic(0x1D);
                        break;

                    case 8:
                        func_801BB6AC_7C888C(0);
                        break;

                    case 0xC:
                    {
                        ACTOR_GFX_INIT(0x50, D_800E1C84);
                        Sound_PlaySfx(0x2B);
                        func_801BB6AC_7C888C(0);
                        D_800D28F8 = 0xB4;
                        break;
                    }

                    case 0xE:
                        D_800D28F8 = 0x46;
                        D_800BE5F4 = 0xB;
                        func_801BB6AC_7C888C(0x12);
                        gActors[0x53].unk_174 = 0x20;
                        break;
                }

                D_800D2934 += 2;

                if (D_801BF750_7CC930[D_800D2934] != 0xFFFF) {
                    D_800D28E8--;
                }
                else {
                    D_800D28E8 = 0x100;
                    D_800D28F8 = 0x3C;
                }
            }

            Cutscene_CheckSkipInput();
            break;

        case 0x100:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D2938 = 0;
                D_800D28E8 = 0x1000;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
            }
            break;

        case 0x1000:
            D_800D28E8++;
            gActors[0].flags |= 0x20;
            func_80045FA4(D_801BF740_7CC920, (s32)D_801BF778_7CC958);
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801BF7D0_7CC9B0);
            Actor_LoadSpawnTable(D_801BF8B8_7CCA98);
            D_800BE5F4 = 7;
            D_800D2924 = 0x690;

            if (func_8001C7F0(gDebugStageSelectSelectedIndex) != 0) {
                gActors[0x77].flags = 0;
            }

            Sound_PlayMusic(0x17);
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800BE5F4 = 5;
                func_80043D04(D_801BF910_7CCAF0);
                D_800D28F8 = 5;
                Sound_PlaySfx(0x11A);
            }
            break;

        case 0x1002:
            if (func_80043D6C(D_801BF910_7CCAF0) != 0) {
                D_800D28F8--;

                if (D_800D28F8 < 0) {
                    D_800D28E8++;
                    func_80064AA0(0x78, D_801BF94C_7CCB2C);
                    D_800D28F8 = 0xB4;
                }
                else {
                    Sound_PlaySfx(0x11A);
                    func_80045500();
                    func_80043D04(D_801BF910_7CCAF0);
                }
            }

            func_80045544(0x4C, 0x4F);
            func_80045610(0x50, 0x54);
            break;

        case 0x1003:
            D_800D28F8--;
            if ((D_800D28F8 < 0) && !(gActors[0x4E].var_150 & 0x80000000) && !(gActors[0x4C].var_150 & 0x80000000)) {
                D_800D28E8++;
                D_800D28FC |= 0x4000;
            }
            break;

        case 0x1004:
            break;
    }

    Camera_UpdateViewBounds();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BBEF0_7C90D0.s")

void func_801BC2B0_7C9490(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B9900_7C6AE0(D_801BC6F4_7C98D4);

            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80045FA4(D_801BFFDC_7CD1BC, (s32)D_801BFFFC_7CD1DC);
            D_800BE5F4 = 3;
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801C09B4_7CDB94);
            Actor_LoadSpawnTable(D_801C09C4_7CDBA4);
            D_800BE544 = 0x8000;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800D28F8 = 0xE;
                D_800D3B74 = 0;
                func_8005DF40(0, 0xC);
                D_800BE4EC = 1;
            }
            break;

        case 2:
            func_80047714(1, 6, 1, 3);

            if (D_800D28E8 == 3) {
                gActors[0x52].unk_0D8++;
                D_800D28FC |= 8;
                D_800D28F8 = 0x1E;
            }

            Cutscene_CheckSkipInput();
            break;

        case 3:
            Cutscene_CheckSkipInput();
            break;

        case 4:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                D_800BE544 = 0;
                Actor_LoadSpawnTable(D_801C0A44_7CDC24);
                D_800BE4EC = 0;
            }
            break;

        case 5:
            D_800D28E8++;
            break;

        case 0x10:
            D_800D28E8++;
            func_80045FA4(D_801BFFEC_7CD1CC, (s32)D_801C04F0_7CD6D0);
            D_800BE5F4 = 5;
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801C0B7C_7CDD5C);
            D_800BE544 = 0;
            break;

        case 0x11:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x12:
            break;

        case 0x1000:
            func_80045FA4(D_801BFFDC_7CD1BC, (s32)D_801BFFFC_7CD1DC);
            D_800BE5F4 = 5;
            Actor_LoadSpawnTable(D_801BC684_7C9864);
            Actor_LoadSpawnTable(D_801C0A44_7CDC24);
            Actor_LoadSpawnTable(D_801C09C4_7CDBA4);
            D_800D28E8++;
            gActors[0x50].flags = 0;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 5;
                D_800BE544 = 0;
                D_800D28FC |= 8;
            }
            break;
    }

    Camera_UpdateViewBounds();
}
