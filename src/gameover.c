#include "common.h"
#include "stage.h"

extern s16 D_800C7D10;
extern char D_800C7D1C[];
extern char D_800C7D24[];
extern u16 D_800C7D54[];
extern u16 D_800C7D74[];
extern u16 D_800C7D94[];
extern u16 D_800C7DB4[];
extern u16 D_800C7DD4[];
extern u16 D_800C7DF4[];
extern u16 D_800C7E14[];
extern u16 D_800C7E54[];
extern u16 D_800C7E5C[];
extern u16 D_800C7E88[];
extern u16 D_800C7E90[];
extern u16 D_800C7EB8[];
extern u16 D_800C7EC0[];
extern u16 D_800C7EE4[];
extern u16 D_800C7EEC[];
extern u16 D_800C7F04[];

u16 gContinueTimer;
u8 gContinueMidground;// temporailly store layer toggle
u8 gContinueEnvLayer;// temporailly store layer toggle
u8 gContinueBackground;// temporailly store layer toggle
u16 gRedGems;
u16 gContinueChoice;
s32 gContinueBGM; // stored, but not restored
u8 D_80178140;
s16 D_80178142;

void Continue_DrawGem(u16 actor_index, u16 x, u16 y) {
    Text_InitActorGList(actor_index, gGraphicListGemIcon, x, y, 0x403);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].palette_18C = gPaletteGemRed;
}

void Continue_GameOver(void) {
    u16 actor_index;

    gActors[0x31].flags = gActors[0x32].flags = 0;
    for (actor_index = 0x41; actor_index < 0x62; actor_index++) {
        gActors[actor_index].flags = 0;
    }
    Text_PrintStringRGBScale(0x33, D_800C7E14, 0xFFA0, 0x50, 0x403, 0, 0x40, 0x40, 1.0f, 1.0f);
    actor_index = 0x30;
    Text_InitActorGraphic(actor_index, GINDEX_SPIRAL, 0xFFFE, 3, 0x402);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].scaleX = 6.0f;
    gActors[actor_index].unk_12C = 6.0f;
    gActors[actor_index].rotateX = 90.0f;
    gActors[actor_index].colorA = 0;
    Sound_PlayMusic(BGM_INT);
    gContinueTimer = 0x2C0;
    gGameStateSubState++;
}

void Continue_PayGems(u16 price) {
    u16 actor_index;

    if (gRedGems >= price) {
        gContinueChoice = price / 10;
        for (actor_index = 0x30; actor_index < 0x31; actor_index++) {
            gActors[actor_index].flags = 0;
        }
        for (actor_index = 0x32; actor_index < 0x5E; actor_index++) {
            gActors[actor_index].flags = 0;
        }
        for (actor_index = 0x41; actor_index < 0x4B; actor_index++) {
            Text_InitActorGList(actor_index, gGraphicListGemIcon, 0, 0xA0, 0x403);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[actor_index].unk_18C = (intptr_t) gPaletteGemRed;
            gActors[actor_index].var_154 = 0xC0;
            gActors[actor_index].var_158 = (actor_index * 1023 - 66495) / 10;
        }
        gContinueTimer = 0x180;
        gGameStateSubState = 6;
    }
    else {
        Sound_PlaySfx(SFX_WRONG_0134);
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
        gContinueTimer = 0x60;
        gGameStateSubState++;
        /* fallthrough */
    case 1:
        GameState_Gameplay();
        actor_index = 0xC8;
        if (gActors[actor_index + 2].hitboxBX0 == gActors[actor_index + 3].hitboxBX1) {
            gContinueMidground = gDrawMidground;
            gContinueEnvLayer = gDrawEnvLayer;
            gContinueBackground = gDrawBackground;
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = 0;
            for (actor_index = 1; actor_index < 0xC0; actor_index++) {
                gActors[actor_index].flags = 0;
            }
            gContinueTimer = 3001;
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
            if (gContinueTimer-- % 2) {
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
        gContinueTimer--;
        if (gContinueTimer < 0x9C4) {
            if ((gContinueTimer % 100) >= 0x5D) {
                var_v1 = ((-(gContinueTimer % 100) * 8) + 0x318);
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
        Text_Print2Digits(0x5A, (gContinueTimer / 100), 0x58, 0x20, 0x403, gTextPalettes[0]);
        Text_Print2Digits(0x5C, (gContinueTimer % 100), 0x70, 0x20, 0x403, gTextPalettes[0]);
        if (gContinueTimer == 3000) {
            func_80026D88(0);
            gAudioFadeMode = 0;
            gContinueBGM = gMusicSequenceId;
            Sound_PlayMusic(BGM_CONTINUE);
            gPlayerActor.unk_170 = 0xA4;
            D_80178140 = TRUE;
            gPlayerActor.graphicFlags |= ACTOR_GFLAG_UNK11;
            gPlayerActor.flags |= ACTOR_FLAG_DRAW;
            gPlayerActor.posX.whole = -4;
            gPlayerActor.posY.whole = 20;
            gPlayerActor.posZ.whole = 0x403;
            gPlayerActor.colorA = 0;
            Text_InitActorGList(0x30, &D_800C7D10, 0xFF88, 0x50, 0x403);
            Text_InitActorGList(0x32, D_800E13FC, 0xFF80, 0xFFED, 0x403);
            Text_PrintStringRGBScale(0x33, &D_800C7D54, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
            Text_InitActorGList(0x30, &D_800C7D10, 0xFF88, 0x50, 0x403);
            Text_InitActorGraphic(0x41, 0, 0x1C, 0xFFD8, 0x403);
            gActors[0x41].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28 | ACTOR_FLAG_FREEZE_POS;
            D_80178142 = -0x1F;
            Palette_AdjustRgb5551Array(&D_800C7F04, (u16* )0x802651F8, 8, D_80178142, D_80178142, D_80178142);
            func_80083454();
            func_800836A0(1, 0, D_800C7EB8, 1);
            func_800836A0(3, 0, D_800C7EC0, 0);
            func_800836A0(1, 1, D_800C7E88, 1);
            func_800836A0(3, 1, D_800C7E90, 0);
            func_800836A0(0, 2, D_800C7E54, 1);
            func_800836A0(3, 2, D_800C7E5C, 0);
            func_800836A0(1, 3, D_800C7EE4, 1);
            func_800836A0(3, 3, D_800C7EEC, 0);
            Continue_DrawGem(0x31, 0xFF96, 0x20);
            Continue_DrawGem(0x42, 0xFF96, 0xFFEC);
            Continue_DrawGem(0x43, 0xFF96, 0xFFD8);
            Continue_DrawGem(0x44, 0xFF96, 0xFFC4);
            Continue_DrawGem(0x45, 0xFF96, 0xFFB0);
            if (gRedGems > 9999) {
                gRedGems = 9999;
            }
            Text_Print2Digits(0x5E, (gRedGems / 100), 0xFFA6, 0x20, 0x403, gTextPalettes[1]);
            Text_Print2Digits(0x60, (gRedGems % 100), 0xFFB8, 0x20, 0x403, gTextPalettes[1]);
            for (actor_index = 0x30; actor_index < 0x62; actor_index++) {
                gActors[actor_index].colorA = 0;
            }
            Text_SetColor(0, 0, 0, 0);
            Text_SetColor(1, 0, 0, 0);
        }
        else if (gContinueTimer >= 2501) {
            if (gContinueTimer == 2970) {
                Sound_PlaySfx(SFX_THEO_CONTINUE);
            }
            if (gContinueTimer < 2970) {
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
                    gPlayerActor.colorA = color_a;
                    D_80178142++;
                }
                else {
                    gPlayerActor.colorA = color_a;
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
            color_temp_0 = gPlayerActor.colorA;
            Text_SetColor(0, color_temp_0 / 16, color_temp_0 / 16, color_temp_0 / 8);
            Text_SetColor(1, color_temp_0 / 8, color_temp_0 / 8, color_temp_0 / 32);
        }
        else if (gContinueTimer == 2500) {
            Sound_PlaySfx(SFX_THEO_YAY1);
            Text_PrintStringRGBScale(0x33, D_800C7D74, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (gContinueTimer == 2000) {
            Sound_PlaySfx(SFX_THEO_HELP2);
            Text_PrintStringRGBScale(0x33, D_800C7D94, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (gContinueTimer == 1500) {
            Sound_PlaySfx(SFX_THEO_HELP1);
            Text_PrintStringRGBScale(0x33, D_800C7DB4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (gContinueTimer == 1000) {
            Sound_PlaySfx(SFX_THEO_YELL);
            Text_PrintStringRGBScale(0x33, D_800C7DD4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        else if (gContinueTimer == 500) {
            Sound_PlaySfx(SFX_THEO_GOODBYE);
            Text_PrintStringRGBScale(0x33, D_800C7DF4, 0xFFA0, 0x50, 0x403, 0x40, 0, 0x40, 1.0f, 1.0f);
        }
        if (gContinueTimer < 2906) {
            if (button_press & CONT_UP) {
                Sound_PlaySfx(SFX_MENU_BLIP);
                if (gActors[0x32].posY.whole == -0x13) {
                    gActors[0x32].posY.whole = -0x4F;
                }
                else {
                    gActors[0x32].posY.whole += 0x14;
                }
            }
            else if (button_press & CONT_DOWN) {
                Sound_PlaySfx(SFX_MENU_BLIP);
                if (gActors[0x32].posY.whole == -0x4F) {
                    gActors[0x32].posY.whole = -0x13;
                }
                else {
                    gActors[0x32].posY.whole -= 0x14;
                }
            }
            else if ((button_press & CONT_START) || (button_press & CONT_A)) {
                if (gActors[0x32].posY.whole == -0x13) {
                    Continue_PayGems(10);
                }
                else if (gActors[0x32].posY.whole == -0x27) {
                    Continue_PayGems(30);
                }
                else if (gActors[0x32].posY.whole == -0x3B) {
                    Continue_PayGems(100);
                }
                else if (gActors[0x32].posY.whole == -0x4F) {
                    Continue_GameOver();
                }
            }
            else if (gContinueTimer == 0) {
                Continue_GameOver();
            }
        }
        break;
    case 3:
        gContinueTimer--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gActors[actor_index].colorA != 0xFC) {
            gActors[actor_index].colorA += 2;
        }
        if (gContinueTimer == 0x280) {
            func_8005D3D8(0);
            D_80178140 = FALSE;
            Sound_PlaySfx(SFX_MARINA_GAMEOVER);
        }
        else if ((gContinueTimer < 640) && (!D_80178140) && (func_8005D418(0) != 0)) {
            gPlayerActor.unk_170 = 0xA5;
            D_80178140 = TRUE;
        }
        if (gContinueTimer == 0x200) {
            for (actor_index = 0x33; actor_index < 0x41; actor_index++) { \
                gActors[actor_index].flags = 0;
            }
            gGameStateSubState++;
        }
        break;
    case 4:
        gContinueTimer--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gActors[actor_index].colorA != 0xFE) {
            gActors[actor_index].colorA += 2;
        }
        if (gContinueTimer == 0x1C0) {
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
        gContinueTimer--;
        actor_index = 0x30;
        gActors[actor_index].rotateY += 8.0f;
        if (gPlayerActor.colorA) {
            gPlayerActor.colorA -= 1;
        }
        else {
            gPlayerActor.flags = 0;
        }
        if (gActors[actor_index].colorA != 0) {
            gActors[actor_index].colorA -= 1;
            if (gContinueTimer % 2) {
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
        gPlayerActor.graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gPlayerActor.rotateZ += 10.0f;
        if (gActors[actor_index].scaleX > 0.005) {
            gActors[actor_index].scaleX -= 0.0075;
            gActors[actor_index].scaleY -= 0.0075;
            gPlayerActor.scaleX = (gPlayerActor.scaleX - 0.005);
            gPlayerActor.scaleY = (gPlayerActor.scaleY - 0.005);
        }
        if (gContinueTimer == 0x180) {
            Sound_PlaySfx(SFX_THEO_HELP2);
        }
        else if (gContinueTimer == 0) {
            gGameState = 0;
            gGameStateSubState = 0;
        }
        break;
    case 6:
        gContinueTimer--;
        for (actor_index = 0x41; actor_index < 0x4B; actor_index++) {
            gActors[actor_index].var_154 -= 1;
            gActors[actor_index].var_158 += 8;
            gActors[actor_index].posX.whole = gPlayerActor.posX.whole + (SIN(gActors[actor_index].var_158) * gActors[actor_index].var_154);
            gActors[actor_index].posY.whole = gPlayerActor.posY.whole + (COS(gActors[actor_index].var_158) * gActors[actor_index].var_154);
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
        if (!(gContinueTimer & 0xF)) {
            if (gContinueTimer >= 0xE0) {
                Sound_PlaySfx(SFX_GEM_BLUE);
                gRedGems -= gContinueChoice;
                Text_Print2Digits(0x5E, (gRedGems / 100), 0xFFA6, 0x20, 0x403, gTextPalettes[1]);
                Text_Print2Digits(0x60, (gRedGems % 100), 0xFFB8, 0x20, 0x403, gTextPalettes[1]);
            }
        }
        if (gContinueTimer == 0xE0) {
            D_80178140 = FALSE;
        }
        else if ((gContinueTimer < 0xE0) && (D_80178140 == 0) && (func_8005D418(0) != 0)) {
            gPlayerActor.unk_170 = 0xA6;
            D_80178140 = TRUE;
        }
        if (gContinueTimer == 0xC0) {
            switch (Rand() % 3) {
            case 0:
                Sound_PlaySfx(SFX_MARINA_LETSGO);
                break;
            case 1:
                Sound_PlaySfx(SFX_MARINA_YAY);
                break;
            case 2:
                Sound_PlaySfx(SFX_MARINA_AHH);
                break;
            }
            gGameStateSubState++;
        }
        break;
    case 7:
        gContinueTimer--;
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

        if (gContinueTimer == 0x60) {
            Sound_StartFade(1, 0x60);
        }
        if (gContinueTimer < 0x20) {
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
            if (gPlayerActor.colorA < 8) {
                gPlayerActor.colorA = 0;
            }
            else {
                gPlayerActor.colorA -= 8;
            }
            color_temp_0 = gPlayerActor.colorA;
            Text_SetColor(0, color_temp_0 / 16, color_temp_0 / 16, color_temp_0 / 8);
            Text_SetColor(1, color_temp_0 / 8, color_temp_0 / 8, color_temp_0 / 32);
        }
        if (gContinueTimer == 0) {
            D_800D2938 = 0;
            gStageState = 0;
            D_800D28F0 = gDebugStageSelectStageIds[gCurrentStage];
            D_800D28E4 = 0x61;
            gSkipStageIntro = 1;
            if (gContinueChoice == 1) {
                gPlayerActor.health = 1000;
            }
            else if (gContinueChoice == 3) {
                gPlayerActor.health = 2000;
            }
            else {
                gPlayerActor.health = 3000;
            }
            gHealthDisplayed = (u16) gPlayerActor.health;
            gDrawMidground = gContinueMidground;
            gDrawEnvLayer = gContinueEnvLayer;
            gDrawBackground = gContinueBackground;
            gPlayerActor.posZ.whole = 0;
            gPlayerActor.graphicFlags &= ~ACTOR_GFLAG_UNK11;
            gPlayerActor.colorA = 0xFF;
            gAudioFadeMode = 0;
            if ((gCurrentScene > SCENE_DAYOF0) && (gCurrentScene <= SCENE_DAYOF2)) {
                D_800D28F0 = 0x1F;
                gCurrentScene = SCENE_DAYOF0;
            }
            if (gCurrentScene != SCENE_WORMINUP) {
                PlaySceneBGM();
            }
            func_800255B4(gCurrentScene);
            func_80025B7C();
            gPlayerActor.unk_170 = 1;
            gCannotPause = TRUE;
            gGameState = GAMESTATE_GAMEPLAY;
            gGameStateSubState = 0;
        }
        break;
    }
}
