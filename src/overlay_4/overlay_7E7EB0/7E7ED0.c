#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern void func_80011F44(s16 arg0, s16 arg1, s32 arg2, s32 arg3);
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s32 D_800D2928;
extern u32 D_80137458;
extern u8 D_801BAFD0_7E95A0[];
extern u8 D_801BAFD4_7E95A4[];
extern u16 D_801BAFE4_7E95B4[];
extern u8 D_801BAFF8_7E95C8[];
extern u8 D_801BB014_7E95E4[];
extern u16 D_801BB024_7E95F4[];
extern u8 D_801BB034_7E9604[];
extern u16 D_801BB044_7E9614[];
extern u8 D_801BB050_7E9620[];
extern u8 D_801BB06C_7E963C[];
extern u16 D_801BB07C_7E964C[];
extern u8 D_801BB088_7E9658[];
extern u8 D_801BB1E8_7E97B8[];
extern u8 D_801BB264_7E9834[];
extern u8 D_801BB39C_7E996C[];
extern u8 D_801BB3C8_7E9998[];
extern u8 D_801BB588_7E9B58[];
extern u8 D_801BB6DC_7E9CAC[];
extern u8 D_801BB8D8_7E9EA8[];
extern u8 D_801BB904_7E9ED4[];
extern u8 D_801BB9F4_7E9FC4[];
extern u8 D_801BBA20_7E9FF0[];
extern u8 D_801BBA30_7EA000[];
extern u8 D_801BBA34_7EA004[];
extern u8 D_801BBC08_7EA1D8[];
extern u8 D_801BBC18_7EA1E8[];
extern u8 D_801BBC28_7EA1F8[];
extern u8 D_801BBC54_7EA224[];
extern u8 D_801BBC64_7EA234[];
extern u8 D_801BBCA0_7EA270[];
extern u8 D_801BBCB0_7EA280[];
extern u8 D_801BBCC0_7EA290[];

void func_801B9A3C_7E800C(u16 actor_index);

s32 func_801B9900_7E7ED0(u16 arg0, s16 arg1, s16 arg2) {
    if (Math_AbsS32(arg1 - gPlayerPosX.whole) < 0x12) {
        if (Math_AbsS32(arg2 - gPlayerPosY.whole) < 0x80) {
            if (gActors[0].health >= 0) {
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800D28E8 = arg0;
                func_80028380();
                return TRUE;
            }
        }
    }

    return FALSE;
}

void func_801B99A4_7E7F74(u16* actor_indices, u16 arg1) {
    u16 actor_index = actor_indices[0];

    if (arg1 == gActors[actor_index].colorA) {
        return;
    }

    arg1 = gActors[actor_index].colorA - 1;

    if (actor_index != 0) {
        do {
            if (arg1) {
                gActors[actor_index].colorA = arg1;
            }
            else {
                gActors[actor_index].flags = 0;
            }

            actor_indices++;
            actor_index = actor_indices[0];
        } while (actor_index != 0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9A3C_7E800C.s")


void func_801B9B64_7E8134(u16 actor_index, s16 arg1, s16 arg2) {
    D_800D28E8++;
    Sound_PlaySfx(0x93);
    gActors[actor_index].flags = 0;
    func_80011F44(arg1, arg2, 2, 8);
}

void func_801B9BE4_7E81B4(void) {
    D_800D2928 = 0;
}

void func_801B9BF0_7E81C0(s16 arg0, s16 arg1, void* arg2) {
    switch (D_800D2928) {
        case 0:
            break;

        case 1:
            D_800D2924 = arg1;
            D_800D2928++;
            break;

        case 2:
            if (arg0 < gPlayerPosX.whole) {
                D_800D2920 = arg0;
                D_800D2928++;
            }
            break;

        case 3:
            if ((arg0 - 0x100) < gScreenPosCurrentX.whole) {
                Actor_ClearRange(0x30, 0x90);
                Actor_LoadSpawnTable(arg2);
                D_800D28E8++;
            }
            break;
    }
}

void func_801B9CD4_7E82A4(s16 arg0) {
    if (gScreenPosCurrentX.whole < arg0) {
        D_800D2920 = arg0;
    }
}

void func_801B9D00_7E82D0(void) {
    switch (D_800D28E8) {
        case 0:
            Palette_AdjustRgb5551Array((u16*)0x802E5ED8, (u16*)0x802E5D48, 0xC3, 1, 1, -1);
            Palette_AdjustRgb5551Array((u16*)0x803DA600, (u16*)0x80380400, 0xFF, 1, 0, 1);
            D_800D28E8 = 0x100;
            D_800BE710 = TRUE;
            break;

        case 0x100:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -4, -1);
            func_80045FA4(D_801BAFD4_7E95A4, 0);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB088_7E9658);
            gLookatEyeY = 44.0f;
            gLookatAtY = 44.0f;
            gLookatEyeZ = 432.0f;
            D_800BE544 = 0x8000;
            break;

        case 0x101:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
            }
            break;

        case 0x102:
            func_801B99A4_7E7F74(D_801BAFE4_7E95B4, 0xE0);
            if (gActors[0x30].flags == 0) {
                func_8003D628(0x8000);
                func_801B9B64_7E8134(0xA1, 0x718, 0x238);
                Actor_LoadSpawnTable(D_801BB1E8_7E97B8);
                func_801B9A3C_7E800C(0xA7);
            }
            break;

        case 0x103:
            break;

        case 0x104:
            func_801B9900_7E7ED0(0x200, 0x73C, 0x1CE);
            break;

        case 0x200:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -4, 0);
            func_80045FA4(D_801BAFF8_7E95C8, (s32)D_801BB3C8_7E9998);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB264_7E9834);
            func_801B9A3C_7E800C(0x8C);
            Actor_LoadSpawnTable(D_801BB39C_7E996C);
            func_801B9A3C_7E800C(0x97);
            func_800282F0(gActors[0].posX.whole, gActors[0].posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x201:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x202:
            gActors[0x94].flags = 0;
            func_80011F44(0xDB8, 0x208, 2, 8);
            D_800D28E8++;
            break;

        case 0x203:
            D_800D28E8++;
            break;

        case 0x204:
            D_800BE710 = FALSE;
            func_801B9900_7E7ED0(0x400, 0x1DC3, 0x19E);
            break;

        case 0x600:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -4, 0);
            func_80045FA4(D_801BB06C_7E963C, 0);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB904_7E9ED4);
            func_801B9A3C_7E800C(0x8C);
            func_800282F0(gActors[0].posX.whole, gActors[0].posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x601:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x602:
            func_801B99A4_7E7F74(D_801BB07C_7E964C, 0);
            if (gActors[0x30].flags == 0) {
                func_8003D628(0x8000);
                func_801B9B64_7E8134(0x94, 0xCF8, 0x208);
                Actor_LoadSpawnTable(D_801BB9F4_7E9FC4);
                func_801B9A3C_7E800C(0x97);
                D_800BE544 = 0;
            }
            break;

        case 0x603:
            break;

        case 0x604:
            func_801B9900_7E7ED0(0x300, 0xD03, 0x19E);
            break;

        case 0x300:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -3, -4);
            func_80045FA4(D_801BB014_7E95E4, 0);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB588_7E9B58);
            func_801B9A3C_7E800C(0x81);
            func_800282F0(gActors[0].posX.whole, gActors[0].posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 44.0f;
            gLookatAtY = 44.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x301:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x302:
            func_801B99A4_7E7F74(D_801BB024_7E95F4, 0xE0);
            break;

        case 0x400:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -8, 0);
            func_80045FA4(D_801BB034_7E9604, 0);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB6DC_7E9CAC);
            func_801B9A3C_7E800C(0x50);
            func_801B9A3C_7E800C(0x58);
            func_800282F0(gActors[0].posX.whole, gActors[0].posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x401:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x402:
            func_801B99A4_7E7F74(D_801BB044_7E9614, 0x80);
            func_801B9900_7E7ED0(0x600, 0xDA8, 0x2BE);
            break;

        case 0x500:
            D_800D28E8++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -8, 0);
            func_80045FA4(D_801BB050_7E9620, 0);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB8D8_7E9EA8);
            gDrawBackground = FALSE;
            func_800282F0(gActors[0].posX.whole, gActors[0].posY.whole);
            D_800BE5F4.unk_00_s32 = 0xA;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x501:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 0x502:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA634_7E8C04(void) {
    switch (D_800D28E8) {
        case 0:
            gCannotPause = TRUE;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -3, -4);
            func_80045FA4(D_801BBA20_7E9FF0, (s32)D_801BBA30_7EA000);
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BBA34_7EA004);
            D_800BE5F4.unk_00_s32 = 7;
            if (D_800D2908 == 0) {
                D_800D28E8 = 1;
            }
            else {
                D_800D28E8 = 0x1000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                D_800D28E8 = 2;
            }
            Cutscene_CheckSkipInput();
            break;

        case 2:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                Sound_PlaySfx(0xAF);
                D_800D28E8 = 3;
            }
            break;

        case 3:
            Cutscene_CheckSkipInput();
            break;

        case 4:
            func_8005DF5C(1);
            func_8005DF5C(2);
            func_8005DF5C(3);
            func_8005DF5C(4);
            func_8005DF5C(5);
            Cutscene_CheckSkipInput();
            D_800D28E8 = 5;
            break;

        case 5:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                D_800D28E8 = 0xA;
            }
            break;

        case 0xA:
            D_800BE5F4.unk_00_s32 = 5;
            D_800D28E8 = 0x14;
            D_800D28FC |= 8;

        case 0x14:
            gCannotPause = FALSE;
            break;

        case 0x15:
            if (gAudioFadeMode != 0x81) {
                D_800BE5F4.unk_00_s32 = 0x20;
                Sound_PlayMusic(BGM_GET);
                D_800D28E8 = 0x16;
            }
            break;

        case 0x17:
            func_8005DF5C(6);
            func_8005DF5C(7);
            D_800D28E8 = 0x18;
            break;

        case 0x18:
            if (func_8005DEFC() == 0) {
                D_800D28E8 = 0x19;
            }
            break;

        case 0x19:
            if (!(D_80137458 & 2)) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x5B);
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BBA20_7E9FF0, (s32)D_801BBA30_7EA000);
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BBA34_7EA004);
            D_800BE5F4.unk_00_s32 = 7;
            D_800D28E8 = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                func_800472D4();
            }
            break;

        case 0x1002:
            func_8004735C(0x14, 0);
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA984_7E8F54(void) {
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80046148(D_801BBC08_7EA1D8, 0);
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            Actor_LoadSpawnTable(D_801BBC28_7EA1F8);
            gActors[0x30].state = 0x9000;
            gActors[0x32].state = 0x9100;
            gActors[0x33].state = 0x9200;
            gActors[0x34].state = 0x9300;
            D_800BE544 = 0x8000;
            Sound_PlayMusic(BGM_DETERMINATION);
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            gCannotPause = TRUE;
            break;

        case 2:
            gCannotPause = TRUE;
            if (gActors[0x30].state < 0x900D) {
                if (Cutscene_CheckSkipInput() != 0) {
                    Sound_StartFade(0x81, 0x1E);
                }
            }
            break;

        case 0x10:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0x11:
            D_800D28E8++;
            D_800BE544 = 0;
            D_800D28FC |= 8;
            gLifebar.posY.whole = -0x60;
            gLifebarHead.posY.whole = -0x5D;
            D_800BE5F4.unk_00_s32 = 5;
            gCannotPause = FALSE;
            // FAKEMATCH ???
            if (0) {
            }
            break;

        case 0x13:
            gCannotPause = TRUE;
            if (gActors[0x30].flags == 0) {
                D_800D28E4 = 0x64;
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BBC08_7EA1D8, 0);
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            D_800D28E8 = 0x10;
            D_800BE5F4.unk_00_s32 = 7;
            Sound_PlayMusic(BGM_POSITION);
            break;

        case 0x1001:
            func_80045FA4(D_801BBC08_7EA1D8, 0);
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            D_800D28E8 = 0x11;
            D_800BE5F4.unk_00_s32 = 7;
            gLookatEyeX = 0.0f;
            gLookatAtX = 0.0f;
            gLookatEyeY = 0.0f;
            gLookatAtY = 4.0f;
            gLookatEyeZ = 448.0f;
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BACBC_7E928C(void) {
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
                break;
            }

            D_800D28E8++;
            func_80046148(D_801BBC54_7EA224, 0);
            Actor_LoadSpawnTable(D_801BBC64_7EA234);
            Actor_LoadSpawnTable(D_801BBCA0_7EA270);
            D_800BE544 = 0x8000;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            return;

        case 3:
            D_800D28E8++;
            D_800D28FC |= 8;
            gCannotPause = FALSE;

        case 4:
            if (D_800D2934 != 0) {
                D_800D2934 = 0;
                Actor_LoadSpawnTable(D_801BBC64_7EA234);
                return;
            }
            break;

        case 5:
            D_800D28E8++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            D_800D28E8++;
            Actor_LoadSpawnTable(D_801BBCB0_7EA280);
            gActors[0x30].graphicFlags = 9;
            gActors[0x30].flags = 0x4000B;
            gActors[0x30].graphicIndex = 0x100A;
            gActors[0x30].colorA = 0x80;
            gActors[0x30].hitboxBY0 = -0x40;
            gActors[0x30].hitboxBY1 = gActors[0x30].hitboxBY0 - 0x10;
            gActors[0x30].hitboxBX0 = -0x100;
            gActors[0x30].hitboxBX1 = 0x100;
            gActors[0x30].posX.whole = 0;
            gActors[0x30].posY.whole = 0;
            gActors[0x30].posZ.whole = -0x300;
            gActors[0x30].scaleX = 2.0f;
            gActors[0x30].scaleY = 2.0f;
            gActors[0x30].rotateZ = 90.0f;
            break;

        case 9:
            D_800D28E8 = 0xC000;
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BBC54_7EA224, 0);
            Actor_LoadSpawnTable(D_801BBC64_7EA234);
            Actor_LoadSpawnTable(D_801BBCA0_7EA270);
            gActors[0x88].state = 0x10;
            D_800BE5F4.unk_00_s32 = 4;
            D_800BE544 = 0x8000;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BBC54_7EA224, D_801BBCC0_7EA290);

        case 0xC001:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0xC002:
            return;
    }
}
