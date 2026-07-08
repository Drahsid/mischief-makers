#include "common.h"
#include "stage.h"

extern s16 D_800C7D10;
extern char D_800C7D1C[];
extern char D_800C7D24[];
extern u16 D_800C7D54;
extern u16 D_800C7D74;
extern u16 D_800C7D94;
extern u16 D_800C7DB4;
extern u16 D_800C7DD4;
extern u16 D_800C7DF4;
extern u16 D_800C7E14;
extern u16 D_800C7E54;
extern u16 D_800C7E5C;
extern u16 D_800C7E88;
extern u16 D_800C7E90;
extern u16 D_800C7EB8;
extern u16 D_800C7EC0;
extern u16 D_800C7EE4;
extern u16 D_800C7EEC;
extern u16 D_800C7F04;

extern u16 D_80178130;
extern u8 D_80178132;
extern u8 D_80178133;
extern u8 D_80178134;
extern u16 D_80178138;
extern s32 D_8017813C;
extern u8 D_80178140;
extern s16 D_80178142;

void func_80012C50(u16 actor_index, u16 x, u16 y) {
    Text_InitActorGList(actor_index, gGraphicListGemIcon, x, y, 0x403);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].palette_18C = D_800D88B8;
}

void func_80012CD4(void) {
    u16 actor_index;

    gActors[0x31].flags = gActors[0x32].flags = 0;
    for (actor_index = 0x41; actor_index < 0x62; actor_index++) {
        gActors[actor_index].flags = 0;
    }
    Text_PrintStringRGBScale(0x33, &D_800C7E14, 0xFFA0, 0x50, 0x403, 0, 0x40, 0x40, 1.0f, 1.0f);
    actor_index = 0x30;
    Text_InitActorGraphic(actor_index, 0x262, 0xFFFE, 3, 0x402);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].scaleX = 6.0f;
    gActors[actor_index].unk_12C = 6.0f;
    gActors[actor_index].rotateX = 90.0f;
    gActors[actor_index].colorA = 0;
    Sound_PlayMusic(0x19);
    D_80178130 = 0x2C0;
    gGameStateSubState++;
}

void func_80012DF0(u16 red_gem_threshold) {
    u16 actor_index;

    if (gRedGems >= red_gem_threshold) {
        D_80178138 = red_gem_threshold / 10;
        for (actor_index = 0x30; actor_index < 0x31; actor_index++) {
            gActors[actor_index].flags = 0;
        }
        for (actor_index = 0x32; actor_index < 0x5E; actor_index++) {
            gActors[actor_index].flags = 0;
        }
        for (actor_index = 0x41; actor_index < 0x4B; actor_index++) {
            Text_InitActorGList(actor_index, gGraphicListGemIcon, 0, 0xA0, 0x403);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[actor_index].unk_18C = (s32) D_800D88B8;
            gActors[actor_index].var_154 = 0xC0;
            gActors[actor_index].var_158 = (actor_index * 1023 - 66495) / 10;
        }
        D_80178130 = 0x180;
        gGameStateSubState = 6;
    }
    else {
        Sound_PlaySfx(0x134);
    }
}

void GameState_ContinueScreen(void) {
    u16 actor_0;
    u16 actor_index;
    u8 var_v1;
    u16 button_press;
    u8 color_temp_1;
    u8 color_temp_0;
    u8 color_a;
    s32 actor_1;

    button_press = gButtonPress;
    gButtonHold = 0;
    gButtonPress = 0;
    gJoyX = 0;
    gJoyY = 0;
    if (gGameStateSubState >= 2) {
        func_8005D450(0);
    }
    switch (gGameStateSubState) {
    case 0:
        gPortraits[0x40].flags = 0;
        gPortraits[0x41].flags = 0;
        Sound_StartFade(1, 0x60);
        func_8002092C();
        D_80178130 = 0x60;
        gGameStateSubState++;
        /* fallthrough */
    case 1:
        GameState_Gameplay();
        actor_index = 0xC8;
        if (gActors[actor_index + 2].hitboxBX0 == gActors[actor_index + 3].hitboxBX1) {
            D_80178132 = gDrawMidground;
            D_80178133 = gDrawEnvLayer;
            D_80178134 = gDrawBackground;
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = 0;
            for (actor_index = 1; actor_index < 0xC0; actor_index++) {
                gActors[actor_index].flags = 0;
            }
            D_80178130 = 0xBB9;
            actor_1 = actor_index;
            gActors[actor_1 + 3].flags = 0;
            gActors[actor_1 + 2].flags = 0;
            gActors[actor_1 + 1].flags = 0;
            gActors[actor_1].hitboxBX0 = -0xB0;
            gActors[actor_1].hitboxBX1 = 0xB0;
            gActors[actor_1].hitboxBY1 = -0x80;
            gActors[actor_1].hitboxBY0 = 0x80;
            gGameStateSubState++;
            D_800BE6A8 = 0;
            gLookatEyeX = 0.0f;
            gLookatEyeY = 0.0f;
            gLookatEyeZ = 448.0f;
            gLookatAtX = 0.0f;
            gLookatAtY = 0.0f;
            gLookatAtZ = 0.0f;
            gLookatUpX = 0.0f;
            gLookatUpY = 1.0f;
            gLookatUpZ = 0.0f;
        }
        else {
            gActors[actor_index].hitboxBY1--;
            gActors[actor_index + 1].hitboxBY0++;
            actor_index = 0xCA;
            if (D_80178130-- % 2) {
                gActors[actor_index].hitboxBX0 -= 2;
                gActors[actor_index + 1].hitboxBX1 += 2;
            }
            else {
                gActors[actor_index].hitboxBX0 -= 1;
                gActors[actor_index + 1].hitboxBX1 += 1;
            }
        }
    default:
        break;
    case 2:
        D_80178130--;
        if (D_80178130 < 0x9C4) {
            if ((D_80178130 % 100) >= 0x5D) {
                var_v1 = ((-(D_80178130 % 100) * 8) + 0x318);
            }
            else {
                var_v1 = 0x40;
            }
            color_temp_0 = 0x1F;
            color_temp_1 = (color_temp_0 - (var_v1 / 4));
            Text_SetColor(0, color_temp_1, color_temp_1, color_temp_0);
            Text_SetColor(1, color_temp_0, color_temp_0, 8);
        }
        Text_PrintASCII(0x55, D_800C7D1C, 0x28, 0x20, 0x403, gTextPalettes[0]);
        Text_PrintASCII(0x59, D_800C7D24, 0x68, 0x20, 0x403, gTextPalettes[0]);
        Text_Print2Digits(0x5A, (D_80178130 / 100), 0x58, 0x20, 0x403, gTextPalettes[0]);
        Text_Print2Digits(0x5C, (D_80178130 % 100), 0x70, 0x20, 0x403, gTextPalettes[0]);
        if (D_80178130 == 0xBB8) {
            func_80026D88(0);
            gAudioFadeMode = 0;
            D_8017813C = gMusicSequenceId;
            Sound_PlayMusic(0x16);
            gActors[0].unk_170 = 0xA4;
            D_80178140 = 1;
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].flags |= ACTOR_FLAG_DRAW;
            gActors[0].posX.whole = -4;
            gActors[0].posY.whole = 0x14;
            gActors[0].posZ.whole = 0x403;
            gActors[0].colorA = 0;
            Text_InitActorGList(0x30, &D_800C7D10, 0xFF88, 0x50, 0x403);
            Text_InitActorGList(0x32, D_800E13FC, 0xFF80, 0xFFED, 0x403);
            Text_PrintStringRGBScale(0x33, &D_800C7D54, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
            Text_InitActorGList(0x30, &D_800C7D10, 0xFF88, 0x50, 0x403);
            Text_InitActorGraphic(0x41, 0, 0x1C, 0xFFD8, 0x403);
            gActors[0x41].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28 | ACTOR_FLAG_FREEZE_POS;
            D_80178142 = -0x1F;
            Palette_AdjustRgb5551Array(&D_800C7F04, (u16* )0x802651F8, 8, D_80178142, D_80178142, D_80178142);
            func_80083454();
            func_800836A0(1, 0, &D_800C7EB8, 1);
            func_800836A0(3, 0, &D_800C7EC0, 0);
            func_800836A0(1, 1, &D_800C7E88, 1);
            func_800836A0(3, 1, &D_800C7E90, 0);
            func_800836A0(0, 2, &D_800C7E54, 1);
            func_800836A0(3, 2, &D_800C7E5C, 0);
            func_800836A0(1, 3, &D_800C7EE4, 1);
            func_800836A0(3, 3, &D_800C7EEC, 0);
            func_80012C50(0x31, 0xFF96, 0x20);
            func_80012C50(0x42, 0xFF96, 0xFFEC);
            func_80012C50(0x43, 0xFF96, 0xFFD8);
            func_80012C50(0x44, 0xFF96, 0xFFC4);
            func_80012C50(0x45, 0xFF96, 0xFFB0);
            if (gRedGems > 0x270F) {
                gRedGems = 0x270F;
            }
            Text_Print2Digits(0x5E, (gRedGems / 100), 0xFFA6, 0x20, 0x403, gTextPalettes[1]);
            Text_Print2Digits(0x60, (gRedGems % 100), 0xFFB8, 0x20, 0x403, gTextPalettes[1]);
            for (actor_index = 0x30; actor_index < 0x62; actor_index++) {
                gActors[actor_index].colorA = 0;
            }
            Text_SetColor(0, 0, 0, 0);
            Text_SetColor(1, 0, 0, 0);
        }
        else if (D_80178130 >= 0x9C5) {
            if (D_80178130 == 0xB9A) {
                Sound_PlaySfx(0xD9);
            }
            if (D_80178130 < 0xB9A) {
                actor_1 = 0;
                if (gActors[actor_1].colorA < 0xFC) { \
                    color_a = gActors[actor_1].colorA + 4; \
                } \
                else { \
                    color_a = gActors[actor_1].colorA;
                    if (color_a == 0xFC) {
                        color_a = 0xFF;
                    }
                }
                if ((color_a < 0xFC) && !(color_a & 7)) {
                    if (1) { } if (1) { } // fakematch
                    gActors[0].colorA = color_a;
                    D_80178142++;
                }
                else {
                    gActors[0].colorA = color_a;
                    if (color_a == 0xFC) {
                        D_80178142 = 0;
                    }
                }
                Palette_AdjustRgb5551Array(&D_800C7F04, (u16* )0x802651F8, 8, D_80178142, D_80178142, D_80178142);
                for (actor_index = 0x30; actor_index < 0x62; actor_index++) {
                    if (gActors[actor_index].colorA < 0xFC) {
                        gActors[actor_index].colorA += 4;
                    }
                    else if (gActors[actor_index].colorA == 0xFC) {
                        gActors[actor_index].colorA = 0xFF;
                    }
                }
            }
            color_temp_0 = gActors[0].colorA;
            Text_SetColor(0, color_temp_0 / 16, color_temp_0 / 16, color_temp_0 / 8);
            Text_SetColor(1, color_temp_0 / 8, color_temp_0 / 8, color_temp_0 / 32);
        }
        else if (D_80178130 == 0x9C4) {
            Sound_PlaySfx(0xDA);
            Text_PrintStringRGBScale(0x33, &D_800C7D74, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (D_80178130 == 0x7D0) {
            Sound_PlaySfx(0xDD);
            Text_PrintStringRGBScale(0x33, &D_800C7D94, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (D_80178130 == 0x5DC) {
            Sound_PlaySfx(0xDC);
            Text_PrintStringRGBScale(0x33, &D_800C7DB4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (D_80178130 == 0x3E8) {
            Sound_PlaySfx(0xE4);
            Text_PrintStringRGBScale(0x33, &D_800C7DD4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (D_80178130 == 0x1F4) {
            Sound_PlaySfx(0xDB);
            Text_PrintStringRGBScale(0x33, &D_800C7DF4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        if (D_80178130 < 0xB5A) {
            if (button_press & 0x800) {
                Sound_PlaySfx(0x22);
                if (gActors[0x32].posY.whole == -0x13) {
                    gActors[0x32].posY.whole = -0x4F;
                }
                else {
                    gActors[0x32].posY.whole += 0x14;
                }
            }
            else if (button_press & 0x400) {
                Sound_PlaySfx(0x22);
                if (gActors[0x32].posY.whole == -0x4F) {
                    gActors[0x32].posY.whole = -0x13;
                }
                else {
                    gActors[0x32].posY.whole -= 0x14;
                }
            }
            else if ((button_press & 0x1000) || (button_press & 0x8000)) {
                if (gActors[0x32].posY.whole == -0x13) {
                    func_80012DF0(0xA);
                }
                else if (gActors[0x32].posY.whole == -0x27) {
                    func_80012DF0(0x1E);
                }
                else if (gActors[0x32].posY.whole == -0x3B) {
                    func_80012DF0(0x64);
                }
                else if (gActors[0x32].posY.whole == -0x4F) {
                    func_80012CD4();
                }
            }
            else if (D_80178130 == 0) {
                func_80012CD4();
            }
        }
        break;
    case 3:
        D_80178130--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gActors[actor_index].colorA != 0xFC) {
            gActors[actor_index].colorA += 2;
        }
        if (D_80178130 == 0x280) {
            func_8005D3D8(0);
            D_80178140 = 0;
            Sound_PlaySfx(0xC9);
        }
        else if ((D_80178130 < 0x280) && (D_80178140 == 0) && (func_8005D418(0) != 0)) {
            gActors[0].unk_170 = 0xA5;
            D_80178140 = 1;
        }
        if (D_80178130 == 0x200) {
            for (actor_index = 0x33; actor_index < 0x41; actor_index++) { \
                gActors[actor_index].flags = 0;
            }
            gGameStateSubState++;
        }
        break;
    case 4:
        D_80178130--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gActors[actor_index].colorA != 0xFE) {
            gActors[actor_index].colorA += 2;
        }
        if (D_80178130 == 0x1C0) {
            actor_index = 0x30;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
    
            actor_index = 0x31;
            Text_InitActorGList(actor_index, &D_800C7D10, 0, 0x100, 0x403);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_154 = 0x100;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].scaleX = 2.0f;
            gActors[actor_index].scaleY = 2.0f;
            gActors[actor_index].colorA = 0xFF;
            gGameStateSubState++;
        }
        break;
    case 5:
        D_80178130--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gActors[0].colorA) {
            gActors[0].colorA -= 1;
        }
        else {
            gActors[0].flags = 0;
        }
        if (gActors[actor_index].colorA != 0) {
            gActors[actor_index].colorA -= 1;
            if (D_80178130 % 2) {
                gActors[actor_index].colorR += 1;
                gActors[actor_index].colorG += 1;
                gActors[actor_index].colorB += 1;
            }
        }
        else {
            gActors[actor_index].flags = 0;
        }

        actor_index++;
        if (gActors[actor_index].colorA != 0) {
            gActors[actor_index].colorA -= 1;
        }
        else {
            gActors[actor_index].flags = 0;
        }
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].var_154--;
        }
        gActors[actor_index].var_158 -= 0xE;
        gActors[actor_index].posX.whole = SIN(gActors[actor_index].var_158) * gActors[actor_index].var_154;
        gActors[actor_index].posY.whole = COS(gActors[actor_index].var_158) * gActors[actor_index].var_154;
        gActors[actor_index].rotateZ += 16.0f;
        gActors[0].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[0].rotateZ += 10.0f;
        if (gActors[actor_index].scaleX > 0.005) {
            gActors[actor_index].scaleX -= 0.0075;
            gActors[actor_index].scaleY -= 0.0075;
            gActors[0].scaleX = (gActors[0].scaleX - 0.005);
            gActors[0].scaleY = (gActors[0].scaleY - 0.005);
        }
        if (D_80178130 == 0x180) {
            Sound_PlaySfx(0xDD);
        }
        else if (D_80178130 == 0) {
            gGameState = 0;
            gGameStateSubState = 0;
        }
        break;
    case 6:
        D_80178130--;
        for (actor_index = 0x41; actor_index < 0x4B; actor_index++) {
            gActors[actor_index].var_154 -= 1;
            gActors[actor_index].var_158 += 8;
            gActors[actor_index].posX.whole = gActors[0].posX.whole + (SIN(gActors[actor_index].var_158) * gActors[actor_index].var_154);
            gActors[actor_index].posY.whole = gActors[0].posY.whole + (COS(gActors[actor_index].var_158) * gActors[actor_index].var_154);
            for (actor_0 = actor_index + 0x1F; actor_0 < actor_index + 0x47; actor_0 += 10) {
                if (gActors[actor_0].flags == 0) {
                    Text_InitActorGraphic(actor_0, 0x1D6,
                                          (gActors[actor_index].posX.whole + (Rand() & 0xF)) - 8, 
                                          (gActors[actor_index].posY.whole + (Rand() & 0xF)) - 8, 0x404);
                    gActors[actor_0].rotateZ = Rand() & 0xFF;
                    gActors[actor_0].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                    gActors[actor_0].unk_188 = 0;
                    gActors[actor_0].var_154 = (Rand() & 0xF) + 8;
                    gActors[actor_0].unk_18C = 0x8022D528;
                    gActors[actor_0].scaleX = gActors[actor_0].scaleY = 0.72f;
                    gActors[actor_0].colorA = 0x80;
                }
            }
        }
        
        for (actor_index = 0x62; actor_index < 0x8A; actor_index++) {
            gActors[actor_index].rotateZ += 8.0f;
            gActors[actor_index].scaleX -= 0.03;
            gActors[actor_index].scaleY -= 0.03;
            gActors[actor_index].colorA -= 4;
            if (gActors[actor_index].var_154-- == 0) {
                gActors[actor_index].flags = 0;
            }
        }
        if (!(D_80178130 & 0xF)) {
            if (D_80178130 >= 0xE0) {
                Sound_PlaySfx(0x95);
                gRedGems -= D_80178138;
                Text_Print2Digits(0x5E, (gRedGems / 100), 0xFFA6, 0x20, 0x403, gTextPalettes[1]);
                Text_Print2Digits(0x60, (gRedGems % 100), 0xFFB8, 0x20, 0x403, gTextPalettes[1]);
            }
        }
        if (D_80178130 == 0xE0) {
            D_80178140 = 0;
        }
        else if ((D_80178130 < 0xE0) && (D_80178140 == 0) && (func_8005D418(0) != 0)) {
            gActors[0].unk_170 = 0xA6;
            D_80178140 = 1;
        }
        if (D_80178130 == 0xC0) {
            switch (Rand() % 3) {
            case 0:
                Sound_PlaySfx(0xC8);
                break;
            case 1:
                Sound_PlaySfx(0xCE);
                break;
            case 2:
                Sound_PlaySfx(0xD4);
                break;
            }
            gGameStateSubState++;
        }
        break;
    case 7:
        D_80178130--;
        for (actor_index = 0x62; actor_index < 0x8A; actor_index++) {
            gActors[actor_index].rotateZ += 8.0f;
            gActors[actor_index].scaleX -= 0.03;
            gActors[actor_index].scaleY -= 0.03;
            gActors[actor_index].colorA -= 4;
            if (gActors[actor_index].var_154-- == 0) {
                gActors[actor_index].flags = 0;
            }
        }

        for (actor_index = 0x41; actor_index < 0x4B; actor_index++) {
            if (gActors[actor_index].colorA == 0xF) {
                gActors[actor_index].flags = 0;
            }
            else {
                gActors[actor_index].colorA -= 0x10;
            }
        }

        if (D_80178130 == 0x60) {
            Sound_StartFade(1, 0x60);
        }
        if (D_80178130 < 0x20) {
            if (gActors[0x31].colorA < 8) {
                gActors[0x31].flags = 0;
                gActors[0x5E].flags = 0;
                gActors[0x5F].flags = 0;
                gActors[0x60].flags = 0;
                gActors[0x61].flags = 0;
            }
            else {
                gActors[0x31].colorA -= 8;
                gActors[0x5E].colorA -= 8;
                gActors[0x5F].colorA -= 8;
                gActors[0x60].colorA -= 8;
                gActors[0x61].colorA -= 8;
            }
            if (gActors[0].colorA < 8) {
                gActors[0].colorA = 0;
            }
            else {
                gActors[0].colorA -= 8;
            }
            color_temp_0 = gActors[0].colorA;
            Text_SetColor(0, color_temp_0 / 16, color_temp_0 / 16, color_temp_0 / 8);
            Text_SetColor(1, color_temp_0 / 8, color_temp_0 / 8, color_temp_0 / 32);
        }
        if (D_80178130 == 0) {
            D_800D2938 = 0;
            gStageState = 0;
            D_800D28F0 = gDebugStageSelectStageIds[gCurrentStage];
            D_800D28E4 = 0x61;
            gSkipStageIntro = 1;
            if (D_80178138 == 1) {
                gActors[0].health = 0x3E8;
            }
            else if (D_80178138 == 3) {
                gActors[0].health = 0x7D0;
            }
            else {
                gActors[0].health = 0xBB8;
            }
            gHealthDisplayed = (u16) gActors[0].health;
            gDrawMidground = D_80178132;
            gDrawEnvLayer = D_80178133;
            gDrawBackground = D_80178134;
            gActors[0].posZ.whole = 0;
            gActors[0].graphicFlags &= ~ACTOR_GFLAG_UNK11;
            gActors[0].colorA = 0xFF;
            gAudioFadeMode = 0;
            if ((gCurrentScene >= 0xF) && (gCurrentScene < 0x13)) {
                D_800D28F0 = 0x1F;
                gCurrentScene = 0x10;
            }
            if (gCurrentScene != 0x38) {
                func_80025578();
            }
            func_800255B4(gCurrentScene);
            func_80025B7C();
            gActors[0].unk_170 = 1;
            gCannotPause = 1;
            gGameState = GAMESTATE_GAMEPLAY;
            gGameStateSubState = 0;
        }
        break;
    }
}
