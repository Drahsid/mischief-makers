#include "common.h"
#include "actor.h"
#include "function_symbols.h"
#include "music.h"

// "overlay 4" data for World 2 stages

extern s16 D_800D2920;
extern s16 D_800D2924;
extern void func_80064AA0(s32 arg0, void* arg1);
extern s16 func_8005DEFC(void);

extern s16 D_800D28F8;
extern s32 D_800D2934;

extern void func_80046274(u32 arg0, u32 arg1);
extern void func_8004732C(void);

extern u32 D_801BBC00_7D0390[];
extern u32 D_801BBC2C_7D03BC[];
extern u32 D_801BBC3C_7D03CC[];
extern u32 D_801BC0F4_7D0884[];
extern u32 D_801BC2A8_7D0A38[];
extern u32 D_801BC434_7D0BC4[];
extern u32 D_801BC444_7D0BD4[];
extern u32 D_801BC55C_7D0CEC[];
extern u32 D_801BC80C_7D0F9C[];
extern u32 D_801BC81C_7D0FAC[];
extern u32 D_801BC964_7D10F4[];
extern u32 D_801BCAE0_7D1270[];
extern u32 D_801BCAF0_7D1280[];
extern u32 D_801BCB10_7D12A0[];
extern u32 D_801BCB20_7D12B0[];
extern u32 D_801BCB30_7D12C0[];
extern u32 D_801BD27C_7D1A0C[];
extern u32 D_801BD364_7D1AF4[];
extern u32 D_801BD374_7D1B04[];
extern u32 D_801BD37C_7D1B0C[];
extern u32 D_801BD8B4_7D2044[];
extern u32 D_801BDB74_7D2304[];
extern u32 D_801BDE24_7D25B4[];
extern u32 D_801BD334_7D1AC4[];
extern u32 D_801BD354_7D1AE4[];
extern u32 D_801BDF68_7D26F8[];
extern u32 D_801BDF78_7D2708[];
extern u32 D_801BE400_7D2B90[];
extern u32 D_801BEB9C_7D332C[];
extern u32 D_801BEBAC_7D333C[];
extern u32 D_801BEBB4_7D3344[];
extern u32 D_801BEBBC_7D334C[];
extern u32 D_801BEBC4_7D3354[];
extern u32 D_801BEBCC_7D335C[];
extern u32 D_801BEBD4_7D3364[];
extern u32 D_801BE730_7D2EC0[];
extern u32 D_801BE740_7D2ED0[];
extern u32 D_801BEA48_7D31D8[];
extern u32 D_801BF240_7D39D0[];
extern u32 D_801BF250_7D39E0[];
extern u32 D_801BF098_7D3828[];
extern u32 D_801BF4B0_7D3C40[];
extern u32 D_801BF728_7D3EB8[];
extern u32 D_801BF738_7D3EC8[];
extern u32 D_801BF764_7D3EF4[];
extern u32 D_801BF7BC_7D3F4C[];

s32 func_801B9900_7CE090(void);
void func_801B99AC_7CE13C(s16 arg0, s16 arg1);
void func_801B9A0C_7CE19C(u16 arg0);
void func_801B9A40_7CE1D0(void);
void func_801B9A98_7CE228(u16 actor_index);
void func_801B9B08_7CE298(void);
void func_801B9B94_7CE324(void);
void func_801B9BF4_7CE384(void* spawn_table);
void func_801B9C88_7CE418(void);
void func_801B9CF4_7CE484(void);
void func_801B9F18_7CE6A8(void);
void func_801BA0C8_7CE858(void);
void func_801BA818_7CEFA8(void);
void func_801BA868_7CEFF8(void);
void func_801BA9E0_7CF170(void);
void func_801BABE8_7CF378(void);
void func_801BAE74_7CF604(void);
void func_801BAFEC_7CF77C(void);
void func_801BB0F0_7CF880(void);
void func_801BB2AC_7CFA3C(void);
void func_801BB360_7CFAF0(void);

s32 func_801B9900_7CE090(void) {
    if (func_80048CE4() == 1) {
        if (gActors[0].stateUpper == 4) {
            func_8005739C(0, 100);
            if (gActors[0].health >= 0) {
                return TRUE;
            }

            if (gGameState == GAMESTATE_GAMEPLAY) {
                gGameState = GAMESTATE_CONTINUE;
                gGameStateSubState = 0;
                gActors[0].velocityX.raw = gActors[0].velocityY.raw = gPlayerVelYMirror.raw = 0;
                gPlayerVelXMirror.raw = 0;
            }

            return FALSE;
        }
    }

    return FALSE;
}

void func_801B99AC_7CE13C(s16 arg0, s16 arg1) {
    gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
    gPlayerPosX.whole = gScreenPosCurrentX.whole + arg0;
    gPlayerPosY.whole = gScreenPosCurrentY.whole + arg1;
    gActors[0].posX.whole = arg0;
    gActors[0].posY.whole = arg1;
    D_800BE5F4.unk_00_u32 = 0xA;
}

void func_801B9A0C_7CE19C(u16 arg0) {
    D_800D2938 = 0;
    D_800D28E8 = arg0;
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x61;
}

void func_801B9A40_7CE1D0(void) {
    if (gActors[0x5E].flags & (ACTOR_FLAG_PLATFORM1 | ACTOR_FLAG_PLATFORM0)) {
        func_801B99AC_7CE13C(0, gActors[0x5E].posY.whole + 8);
        gActors[0].unk_0D4 = 0x78;
    }
}

void func_801B9A98_7CE228(u16 actor_index) {
    gActors[actor_index].flags = (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE);
    gActors[actor_index].damage = 0;
    gActors[actor_index].hitboxAY0 = 0;
    gActors[actor_index].hitboxAY1 = -0x20;
    gActors[actor_index].hitboxAX0 = -0x100;
    gActors[actor_index].hitboxAX1 = 0x100;
    gActors[actor_index].unk_0DB = 0x13;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = -0x50;
}

void func_801B9B08_7CE298(void) {
    if (func_80046D5C() != 0) {
        D_800D28E8++;
        D_800D28FC |= 8;
        gLifebar.posY.whole = -0x58;
        gLifebarHead.posY.whole = -0x55;
        gCannotPause = FALSE;
        D_800BE544 = 0;
        D_800BE548.raw = FIXED_UNIT(16.0);
        D_800BE5F4.unk_00_u32 = 0xA;
    }
}

void func_801B9B94_7CE324(void) {
    if (func_801B9900_7CE090() != 0) {
        // FAKEMATCH
        gPlayerVelYMirror.raw = (gPlayerVelYMirror.raw * 0) + (gActors[0].velocityX.raw = (((gActors[0].velocityY.raw = 0) & 0xFFFFFFFFFFFFFFFFULL)));
        gPlayerVelXMirror.raw = 0;
        func_801B9A0C_7CE19C(D_800D28E8 + 1);
    }
}

void func_801B9BF4_7CE384(void* spawn_table) {
    D_800D28E8++;
    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
    func_8008BFB0();
    Actor_LoadSpawnTable(D_801BBC00_7D0390);

    if (spawn_table != NULL) {
        Actor_LoadSpawnTable(spawn_table);
    }

    func_801B9A98_7CE228(0x31);
    Sound_PlaySfx(0x5E);
}

void func_801B9C88_7CE418(void) {
    if (func_80046D5C() != 0) {
        D_800D28E8 -= 2;
        D_800BE544 = 0;
        D_800D28FC |= 8;
        gLifebar.posY.whole = -0x58;
        gLifebarHead.posY.whole = -0x55;
    }
}

void func_801B9CF4_7CE484(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            D_800BE6A8 = 1;
            Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, 1, 4, 4);
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 3, 6, 7);
            func_80046148(D_801BBC2C_7D03BC, (s32)D_801BBC3C_7D03CC);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            Actor_LoadSpawnTable(D_801BC0F4_7D0884);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);
            break;

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            func_801B9B94_7CE324();
            if (D_800D28E8 == 2) {
                if (D_800D28FC & 0x100) {
                    D_800D28E8 = 6;
                    D_800BE6A8 = 0;
                    Actor_ClearRange(0x32, 0x90);
                    Actor_LoadSpawnTable(D_801BC2A8_7D0A38);
                    Sound_StopSfx(0x5E);
                    Sound_PlaySfx(0x11D);
                }
            }
            break;

        case 3:
            gScreenPosTargetX.whole = 620;
            gScreenPosTargetY.whole = 400;
            func_801B9BF4_7CE384(D_801BC0F4_7D0884);
            func_801B99AC_7CE13C(-0x20, -0x25);

        case 4:
            func_801B9C88_7CE418();
            break;

        case 5:
            func_801B9B08_7CE298();
            break;

        case 6:
            func_801B9B94_7CE324();
            break;

        case 7:
            gScreenPosTargetX.whole = 2405;
            gScreenPosTargetY.whole = 400;
            func_801B9BF4_7CE384(D_801BC2A8_7D0A38);
            func_801B99AC_7CE13C(-0x30, 0x1E);
            Sound_StopSfx(0x5E);
            Sound_PlaySfx(0x11D);

        case 8:
            func_801B9C88_7CE418();
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801B9F18_7CE6A8(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, 1, 2, 3);
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 5, 5, 7);
            Palette_AdjustRgb5551Array((u16*)0x803D3250, (u16*)0x803D3050, 0xFF, 1, 1, 6);
            func_80046148(D_801BC434_7D0BC4, (s32)D_801BC444_7D0BD4);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            func_80043D30(D_801BC55C_7D0CEC);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            func_801B9B94_7CE324();
            func_80045F08(0);
            break;

        case 3:
            if (gPlayerPosX.whole < 0x1280) {
                gScreenPosTargetX.whole = 0xA00;
                gScreenPosTargetY.whole = 0x190;
            }
            else {
                gScreenPosTargetX.whole = 0x1280;
                gScreenPosTargetY.whole = 0x190;
            }
            func_801B9BF4_7CE384(D_801BC55C_7D0CEC);
            func_801B99AC_7CE13C(0, -8);

        case 4:
            func_801B9C88_7CE418();
            break;
    }

    func_80045E58(D_801BC55C_7D0CEC);
    Camera_UpdateViewBounds();
}

void func_801BA0C8_7CE858(void) {
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
            }
            else {
                D_800D28E8++;
                Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, 1, 4, 1);
                Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 3, 5, 3);
                Palette_AdjustRgb5551Array((u16*)0x803D3250, (u16*)0x803D3050, 0xFF, 0, 6, 0);
                func_80045FA4(D_801BC80C_7D0F9C, (s32)D_801BC81C_7D0FAC);
                D_800BE5F4.unk_00_s32 = 3;
                Actor_LoadSpawnTable(D_801BBC00_7D0390);
                func_80043D30(D_801BC964_7D10F4);
                func_801B9A98_7CE228(0x31);
                Sound_PlaySfx(0x5E);
                D_800BE6A8 = 0;
                gLetterboxMode = LETTERBOX_HORIZONTAL;
                D_800BE710 = TRUE;
                D_800BE568.whole = 0x158;
                D_800BE56C.whole = 0x1008;
                D_800D2920 = D_800BE568.whole;
                D_800D2924 = D_800BE56C.whole;
            }

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D2928 = 0;
                D_800D292C = 0;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            D_800D28E8++;
            switch (D_800D2928) {
                case 0:
                    func_8005DF5C(1);
                    break;

                case 1:
                    func_8005DF5C(2);
                    break;

                case 2:
                    func_8005DF5C(3);
                    break;

                case 3:
                    func_8005DF5C(4);
                    break;

                case 4:
                    func_8005DF5C(5);
                    break;
            }
            D_800D2928++;

        case 3:
            if (func_8005DEFC() == 0) {
                if (D_800D2928 >= 5) {
                    D_800D28E8++;
                }
                else {
                    D_800D28E8--;
                }
            }
            else {
                Cutscene_CheckSkipInput();
            }
            break;

        case 4:
            D_800D28E8++;
            D_800D28FC |= 8;
            D_800BE544 = 0;
            D_800BE5F4.unk_00_s32 = 5;
            gCannotPause = FALSE;
            break;

        case 5:
            gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 620.0f, 1.2f);
            D_801373E0.unk_78 |= 4;
            if (func_801B9900_7CE090() != 0) {
                s32 position_x;

                if ((position_x = gScreenPosCurrentX.whole + (gActors + 0)->posX.whole) >= 0xB60) {
                    if (D_800D292C < 2) {
                        D_800D292C = 2;

                        // FAKEMATCH ???
                        goto handle_cutscene_index;
                    }
                }

                if ((position_x >= 0x760) && (D_800D292C == 0)) {
                    D_800D292C = 1;
                }

// FAKEMATCH ???
handle_cutscene_index:
                switch (D_800D292C) {
                    case 0:
                        func_801B9A0C_7CE19C(6);
                        break;

                    case 1:
                        func_801B9A0C_7CE19C(8);
                        break;

                    case 2:
                        func_801B9A0C_7CE19C(0xA);
                        break;
                }
            }
            func_80045F08(0);
            break;

        case 6:
            gScreenPosTargetX.whole = 0x200;
            gScreenPosTargetY.whole = 0x190;
            func_801B9BF4_7CE384(D_801BC964_7D10F4);
            func_801B99AC_7CE13C(0, -0x18);

        case 7:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 5;
                D_800BE544 = 0;
                D_800D28FC |= 8;
                gLifebar.posY.whole = -0x58;
                gLifebarHead.posY.whole = -0x55;
                gCannotPause = FALSE;
            }
            break;

        case 8:
            gScreenPosTargetX.whole = 0x760;
            gScreenPosTargetY.whole = 0x190;
            gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
            gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
            func_801B9BF4_7CE384(D_801BC964_7D10F4);
            func_801B99AC_7CE13C(0, -0x18);
            gLookatEyeZ = 448.0f;

        case 9:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 5;
                D_800BE544 = 0;
                D_800D28FC |= 8;
                gLifebar.posY.whole = -0x58;
                gLifebarHead.posY.whole = -0x55;
                gCannotPause = FALSE;
            }
            break;

        case 10:
            gScreenPosTargetX.whole = 0xB60;
            gScreenPosTargetY.whole = 0x190;
            gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
            gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
            func_801B9BF4_7CE384(D_801BC964_7D10F4);
            func_801B99AC_7CE13C(0, -0x18);
            gLookatEyeZ = 448.0f;

        case 11:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 5;
                D_800BE544 = 0;
                D_800D28FC |= 8;
                gLifebar.posY.whole = -0x58;
                gLifebarHead.posY.whole = -0x55;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BC80C_7D0F9C, (s32)D_801BC81C_7D0FAC);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            func_80043D30(D_801BC964_7D10F4);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);
            D_800BE6A8 = 0;
            gLetterboxMode = LETTERBOX_HORIZONTAL;
            D_800BE710 = TRUE;
            D_800BE568.whole = 0x158;
            D_800BE56C.whole = 0x1008;
            D_800D2920 = D_800BE568.whole;
            D_800D2924 = D_800BE56C.whole;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 5;
                D_800D28FC |= 8;
                D_800BE544 = 0;
                D_800D292C = 0;
                gCannotPause = FALSE;
            }
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA818_7CEFA8(void) {
    if (func_801B9900_7CE090() != 0) {
        func_801B99AC_7CE13C(gActors[0x60].posX.whole, gActors[0x60].posY.whole + 0x18);
        gActors[0].unk_0D4 = 0x78;
    }
}

void func_801BA868_7CEFF8(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 6, 6, 0xA);
            func_80046148(D_801BCAE0_7D1270, 0);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            Actor_LoadSpawnTable(D_801BCAF0_7D1280);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);
            D_800BE6A8 = 0;

        case 1:
            func_801B9B08_7CE298();
            gLifebar.posY.whole = -0x48;
            gLifebarHead.posY.whole = -0x45;
            break;

        case 2:
            if (gActors[0x32].flags == 0) {
                func_8003D628(0);
                Sound_StartFade(0x81, 0x168);
                D_800D28E8++;
            }
            func_801BA818_7CEFA8();
            break;

        case 3:
            func_801BA818_7CEFA8();
            break;

        case 4:
            func_80064AA0(1, D_801BCB10_7D12A0);
            D_800D28E8++;

        case 5:
        case 6:
            func_801BA818_7CEFA8();
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA9E0_7CF170(void) {
    switch (D_800D28E8) {
        case 0:
            Palette_AdjustScenePalettes(1, -5, 1, 0, -7, 2, 0x1D, -9, -0x1B);
            D_800D28E8++;
            func_80046148(D_801BCB20_7D12B0, (s32)D_801BCB30_7D12C0);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            Actor_LoadSpawnTable(D_801BD27C_7D1A0C);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);
            D_800BE6A8 = 0;

        case 1:
            func_801B9B08_7CE298();
            D_800D28F8 = -0x32;
            break;

        case 2:
            func_801B9B94_7CE324();
            if (D_800D28F8 == 0) {
                Actor_LoadSpawnTable(D_801BD334_7D1AC4);
                Sound_StopSfx(0x5E);
                Sound_PlaySfx(0x11D);
            }
            if (D_800D28F8 == 0x520) {
                Actor_LoadSpawnTable(D_801BD354_7D1AE4);
            }
            break;

        case 3:
            func_80010C20(gCurrentScene);
            gScreenPosTargetX.whole = 0x204;
            gScreenPosTargetY.whole = 0x190;
            func_801B9BF4_7CE384(D_801BD27C_7D1A0C);
            func_801B99AC_7CE13C(-0x28, -0x12);
            func_80042DBC(D_801BCB30_7D12C0);

        case 4:
            func_801B9C88_7CE418();
            D_800D28F8 = -0x32;
            break;
    }

    Camera_UpdateViewBounds();
    if (D_800D28F8 < 0x7FFF) {
        D_800D28F8++;
    }

    if ((gActiveFrames & 7) == 0) {
        func_8005CA34(-4 - (Rand() & 3), 0xA);
    }
}

void func_801BABE8_7CF378(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, 0, 3, -3);
            D_800BE6A8 = 0;
            func_80046148(D_801BD364_7D1AF4, (s32)D_801BD37C_7D1B0C);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            Actor_LoadSpawnTable(D_801BDB74_7D2304);
            gActors[0x30].unk_190 = (s32)D_801BD374_7D1B04;
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);
            break;

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            func_801B9B94_7CE324();
            if (gPlayerPosX.whole >= 0x630) {
                D_800D28E8 = 5;
            }
            break;

        case 3:
            gScreenPosTargetX.whole = 0x130;
            gScreenPosTargetY.whole = 0x190;
            func_801B9BF4_7CE384(D_801BDB74_7D2304);
            gActors[0x30].unk_190 = (s32)D_801BD374_7D1B04;
            func_801B99AC_7CE13C(-0x70, -0x22);

        case 4:
            func_801B9C88_7CE418();
            break;

        case 5:
            func_801B9B94_7CE324();
            if (D_800D2960 == 1) {
                D_800D2924 = 0x1220;
            }

            if (D_800D28FC & 0x100) {
                D_800D28E8 = 8;
                Actor_ClearRange_30To90();
                func_80042DBC(D_801BD8B4_7D2044);
                Actor_LoadSpawnTable(D_801BBC00_7D0390);
                Actor_LoadSpawnTable(D_801BDE24_7D25B4);
                func_801B9A98_7CE228(0x31);
                D_800D2920 = 0x1000;
            }
            break;

        case 6:
            gScreenPosTargetX.whole = 0x6F0;
            gScreenPosTargetY.whole = 0x190;
            func_801B9BF4_7CE384(D_801BDB74_7D2304);
            gActors[0x30].unk_190 = (s32)D_801BD374_7D1B04;
            func_801B99AC_7CE13C(-0x70, -0x22);

        case 7:
            func_801B9C88_7CE418();
            break;

        case 8:
            func_801B9B94_7CE324();
            break;

        case 9:
            gScreenPosTargetX.whole = 0x10D0;
            gScreenPosTargetY.whole = 0x1F0;
            func_801B9BF4_7CE384(D_801BDE24_7D25B4);
            func_801B99AC_7CE13C(-0x70, -0x22);

        case 10:
            func_801B9C88_7CE418();
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BAE74_7CF604(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, 5, 3, -2);
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 2, 2, 4);
            D_800BE6A8 = 0;
            func_80046148(D_801BDF68_7D26F8, (s32)D_801BDF78_7D2708);
            Actor_LoadSpawnTable(D_801BBC00_7D0390);
            Actor_LoadSpawnTable(D_801BE400_7D2B90);
            func_801B9A98_7CE228(0x31);
            Sound_PlaySfx(0x5E);

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            func_801B9B94_7CE324();
            break;

        case 3:
            if (gPlayerPosX.whole < 0x9F0) {
                gScreenPosTargetX.whole = 0x130;
                gScreenPosTargetY.whole = 0x190;
            }
            else {
                gScreenPosTargetX.whole = 0xA50;
                gScreenPosTargetY.whole = 0x190;
            }
            func_801B9BF4_7CE384(D_801BE400_7D2B90);
            func_801B99AC_7CE13C(-0x70, -0x22);

        case 4:
            func_801B9C88_7CE418();
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BAFEC_7CF77C(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 2, 2, -2);
            func_80046148(D_801BE730_7D2EC0, (s32)D_801BE740_7D2ED0);
            Actor_LoadSpawnTable(D_801BEA48_7D31D8);
            break;

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            func_801B9B94_7CE324();
            break;

        case 3:
            gScreenPosTargetX.whole = 0x200;
            gScreenPosTargetY.whole = 0x190;
            func_801B9BF4_7CE384(D_801BEA48_7D31D8);
            func_801B99AC_7CE13C(0, 0);

        case 4:
            func_801B9C88_7CE418();
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BB0F0_7CF880(void) {
    gLookatEyeZ = (gActors[0].posY.whole * 2) + 0x1C0;
    if (gLookatEyeZ < 448.0f) {
        gLookatEyeZ = 448.0f;
    }
    else if (gLookatEyeZ > 640.0f) {
        gLookatEyeZ = 640.0f;
    }

    gActors[0x30].unk_190 = (s32)D_801BEBAC_7D333C;
    gActors[0x31].unk_190 = (s32)D_801BEBB4_7D3344;
    gActors[0x32].unk_190 = (s32)D_801BEBBC_7D334C;
    gActors[0x33].unk_190 = (s32)D_801BEBC4_7D3354;
    gActors[0x36].unk_190 = (s32)D_801BEBCC_7D335C;
    gActors[0x35].unk_190 = (s32)D_801BEBCC_7D335C;
    gActors[0x34].unk_190 = (s32)D_801BEBCC_7D335C;

    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, 1, -1, 1);
            func_80045FA4(D_801BEB9C_7D332C, (s32)D_801BEBD4_7D3364);
            D_800BE5F4.unk_00_u32 = 4;
            Actor_LoadSpawnTable(D_801BF098_7D3828);
            D_800BE54C.raw = FIXED_UNIT(32.0);
            gLookatEyeY = 32.0f;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800BE5F4.unk_00_u32 = 0xA;
                D_800D28FC |= 8;
            }
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BB2AC_7CFA3C(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x80266818, (u16*)0x80266618, 0xFF, -2, 2, 2);
            func_80046148(D_801BF240_7D39D0, (s32)D_801BF250_7D39E0);
            Actor_LoadSpawnTable(D_801BF4B0_7D3C40);
            break;

        case 1:
            func_801B9B08_7CE298();
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BB360_7CFAF0(void) {
    D_800BE708 = 1;

    switch (D_800D28E8) {
        case 0:
            if (D_800D28E4 != 0x14) {
                s32 temp = 0x80;

                D_800D28E8 = 0x2000;
                D_800D2934 = -0x2C;
                func_80045FA4(D_801BF728_7D3EB8, 0);
                Actor_LoadSpawnTable(D_801BF764_7D3EF4);
                Sound_PlayMusic(BGM_BOSS);
                D_800BE5F4.unk_00_s32 = 3;
                D_800BE544 = 0x8000;
                gDrawMidground = 0;
                gDrawEnvLayer = 1;
                gActorDepthBack = temp;
                gActors[0x64].state = 0x80;
                D_800D28FC |= 2;
                gActors[0x62].timer_110 = 1.0f;
            }
            else {
                Sound_PlaySfx(0x5E);
                if (D_800D2908 != 0) {
                    D_800D28E8 = 0x1000;
                }
                else {
                    D_800D28E8++;
                    D_800D2934 = -0x5C;
                    func_80045FA4(D_801BF728_7D3EB8, 0);
                    func_80043D30(D_801BF738_7D3EC8);
                    gActorDepthMiddle = -0x20;
                    gActorDepthBack = 0x80;
                    D_800BE5F4.unk_00_s32 = 3;
                    D_800BE544 = 0x8000;
                }
            }
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;
            break;

        case 1:
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D2928 = 0xB4;
                D_800BE5F4.unk_00_s32 = 0xF;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            D_800D2928--;
            if (D_800D2928 < 0) {
                D_800D28E8++;
                gScreenPosTargetY.whole = 0x19C;
                D_800BE54C.raw = 0x20000;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (gScreenPosCurrentY.whole < 0x1C0) {
                D_800D28E8++;
                D_800D2928 = 0;
                D_800D28F8 = 0;
            }
            Cutscene_CheckSkipInput();
            break;

        case 4:
            D_800D28F8--;
            if (D_800D28F8 < 0) {
                D_800D28E8++;
                switch (D_800D2928) {
                    case 0:
                        func_8005DF5C(1);
                        func_8005DF40(0, -0x30);
                        D_800D5830 = -0x40;
                        D_800D5834 = 0x40;
                        D_800D292C = 0x1E;
                        break;

                    case 1:
                        func_8005DF5C(2);
                        D_800D5830 = 0x40;
                        D_800D5834 = 0x20;
                        D_800D292C = 0x1E;
                        break;

                    case 2:
                        func_8005DF5C(3);
                        D_800D5830 = -0x40;
                        D_800D5834 = 0x40;
                        D_800D292C = 0x1E;
                        break;

                    case 3:
                        func_8005DF5C(4);
                        D_800D5830 = 0x40;
                        D_800D5834 = 0x20;
                        D_800D292C = 0x1E;
                        break;

                    case 4:
                        func_8005DF5C(5);
                        D_800D5830 = -0x40;
                        D_800D5834 = 0x48;
                        D_800D292C = 0x1E;
                        break;

                    case 5:
                        Sound_PlaySfx(SFX_MARINA_STOP);
                        func_8005DF5C(6);
                        D_800D5830 = 0x100;
                        D_800D5834 = 0x100;
                        D_800D292C = 0x78;
                        break;

                    case 6:
                        func_8005DF5C(7);
                        func_8005DF40(0, 0x10);
                        D_800D5830 = 0x5C;
                        D_800D5834 = -0x2C;
                        D_800D292C = 0x1E;
                        break;

                    case 7:
                        func_8005DF5C(8);
                        func_8005DF40(0, -0x30);
                        D_800D5830 = -0x40;
                        D_800D5834 = 0x40;
                        D_800D292C = 0x1E;
                        break;

                    case 8:
                        func_8005DF5C(9);
                        func_8005DF40(0, -0x30);
                        D_800D5830 = -0x40;
                        D_800D5834 = 0x40;
                        D_800D292C = 0x1E;
                        break;
                }
            }
            Cutscene_CheckSkipInput();
            break;

        case 5:
            if (func_8005DEFC() == 0) {
                D_800D28E8--;
                D_800D28F8 = D_800D292C;
                switch (D_800D2928) {
                    case 5:
                        *(u8*)&D_800BE5F4.unk_00_s32 = 1;
                        Sound_PlaySfxAtActor2(0x116, 0);
                        break;

                    case 8:
                        D_800D28E8 = 0xA;
                        gDrawEnvLayer = 0;
                        Sound_PlayMusic(BGM_BOSS);
                        break;
                }
                D_800D2928++;
            }
            Cutscene_CheckSkipInput();
            break;

        case 11:
            D_800D28E8++;
            D_800D28FC |= 8;
            D_801373E0.unk_78 |= 1;
            gCannotPause = FALSE;
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;

        case 12:
            if (func_801B9900_7CE090() != 0) {
                func_801B9A40_7CE1D0();
            }
            break;

        case 13:
            D_800D28E8 = 0xC000;
            break;

        case 0xC000:
            func_80046188(D_801BF728_7D3EB8, D_801BF7BC_7D3F4C);

        case 0xC001:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0xC002:
            break;

        case 0x1000:
            func_80010C20(gCurrentScene);
            D_800D28E8++;
            func_80045FA4(D_801BF728_7D3EB8, 0);
            Actor_LoadSpawnTable(D_801BF738_7D3EC8);
            Sound_PlayMusic(BGM_BOSS);
            D_800BE5F4.unk_00_s32 = 7;
            D_801373E0.unk_78 |= 1;
            gActors[0].flags |= ACTOR_FLAG_FLIPPED;
            D_800BE544 = 0x8000;
            gDrawEnvLayer = 0;
            gActorDepthMiddle = -0xC0;
            gActorDepthBack = -0xC0;
            gScreenPosTargetY.whole = 0x19C;
            gActors[0].velocityY.raw = 0;
            gActors[0].velocityX.raw = 0;
            gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
            gPlayerPosX.whole = gScreenPosCurrentX.whole + 0x30;
            gActors[0].posX.whole = 0x30;
            gPlayerPosY.whole = gScreenPosCurrentY.whole - 0x36;
            gActors[0].posY.whole = -0x36;
            D_800D28FC |= 2;
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;
            gActors[0x62].timer_110 = 1.0f;
            Sound_PlaySfx(0x5E);
            break;

        case 0x1001:
            func_8004732C();
            break;

        case 0x1002:
            func_8004735C(0xB, 0x20);
            break;

        case 0x2000:
            func_8004732C();
            break;

        case 0x2001:
            func_8004735C(8, 0);
            break;
    }

    Camera_UpdateViewBounds();
    func_80046274(0x5B, 1);
}
