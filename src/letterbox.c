#include "common.h"
#include "boot.h"
#include "letterbox.h"

u16 D_800CBE20[] = {
    0x8001, 0x8801, 0x9001, 0x9801, 0xA001, 0xA801, 0xB001, 0xB801,
    0xC001, 0xC801, 0xD001, 0xD801, 0xE001, 0xE801, 0xF001, 0xF801,
    0xF841, 0xF881, 0xF8C1, 0xF901, 0xF941, 0xF981, 0xF9C1, 0xFA01,
    0xFA41, 0xFA81, 0xFAC1, 0xFB01, 0xFB41, 0xFB81, 0xFBC1, 0xFC01,
    0xFC41, 0xFC81, 0xFCC1, 0xFD41, 0xFDC1, 0xFE01, 0xFE41, 0xFE81,
    0xFEC1, 0xFF01, 0xFF41, 0xFF81, 0xFFC1, 0xF7C3, 0xEFC5, 0xE7C7,
    0xDFC9, 0xD7CB, 0xCFCD, 0xC7CF, 0xBFD1, 0xBFD3, 0xB7D5, 0xAFD7,
    0xA7D9, 0x9FDB, 0x97DD, 0x8FDF, 0x87DD, 0x7FDF, 0x77E1, 0x6FE3,
    0x67E5, 0x5FE7, 0x57E9, 0x4FEB, 0x47ED, 0x3FEF, 0x37F1, 0x2FF3,
    0x27F5, 0x1FF7, 0x17F9, 0x0FFB, 0x07FF, 0x07BF, 0x077F, 0x073F,
    0x06FF, 0x06BF, 0x067F, 0x063F, 0x05FF, 0x05BF, 0x057F, 0x053F,
    0x04FF, 0x04BF, 0x047F, 0x043F, 0x03FF, 0x03BD, 0x037F, 0x033F
};

 // palette of first lifebar pip
u16 D_800CBEE0[] = {
    0xBE33, 0xCEB7, 0xEFBF, 0x014D, 0x6B9F, 0xADAF, 0x531B, 0x7C23,
    0x9D2B, 0x121B, 0xD001, 0xF001, 0xB001, 0x9001, 0x7001, 0x5001,
    0x8CA7, 0x3213, 0x4297, 0xDF3B, 0x218F, 0x0000
};

// palette of second lifebar pip
u16 D_800CBF0C[] = {
    0xBE33, 0xCEB7, 0xEFBF, 0x014D, 0x6B9F, 0xADAF, 0x531B, 0x7C23,
    0x9D2B, 0x121B, 0x001B, 0x001F, 0x0017, 0x0013, 0x000F, 0x000D,
    0x8CA7, 0x3213, 0x4297, 0xDF3B, 0x218F, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000
};

void Gfx_DrawBorderRect(u16 col, s32 x1, s32 y1, s32 x2, s32 y2) {
    gDPSetFillColor(gDisplayListHead++, (col << 0x10 | col));
    gDPFillRectangle(gDisplayListHead++, x1, y1, x2, y2);
}

void Gfx_DrawLetterboxStandard(void) {
    Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                       0, 0, SCREEN_WIDTH, 20
    );
    Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                       0, SCREEN_HEIGHT - 28, SCREEN_WIDTH, SCREEN_HEIGHT + 8
    );
    Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                       0, 4, 14, SCREEN_HEIGHT + 8
    );
    Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                       SCREEN_WIDTH - 18, 4, SCREEN_WIDTH, SCREEN_HEIGHT + 8
    );
}

void Gfx_DrawLetterbox(void) {
    u16 var_v0;
    u16 sp34;
    u16 sp32;
    u16 sp30;

    gSPDisplayList(gDisplayListHead++, D_800E3978);
    if ((gGamePaused) && (gGameStateSubState == 0x10)) {
        Gfx_DrawLetterboxStandard();
        return;
    }

    switch (gLetterboxMode) {
        case LETTERBOX_DEFAULT:
            Gfx_DrawLetterboxStandard();
            break;

        case LETTERBOX_HORIZONTAL:
            if (gLookatEyeZ <= 448.0f) {
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0, 320, 20
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0xD4, 320, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 4, 14, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0x12E, 4, 320, 0xF8
                );
            }
            else {
                var_v0 = (((gLookatEyeZ - 448.0f) * 96.0f) / gLookatEyeZ) + 20.0f;
                sp34 = (((448.0f - gLookatEyeZ) * 96.0f) / gLookatEyeZ) + 212.0f;
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0, 320, var_v0
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, sp34, 320, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 4, 0xE, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0x12E, 4, 320, 0xF8
                );
            }
            break;

        case LETTERBOX_VERTICAL:
            if (gLookatEyeZ <= 448.0f) {
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0, 320, 0x14
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0xD4, 320, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 4, 0xE, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0x12E, 4, 320, 0xF8
                );
            }
            else {
                sp32 = (((gLookatEyeZ - 448.0f) * 192.0f) / gLookatEyeZ) + 14.0f;
                sp30 = (((448.0f - gLookatEyeZ) * 192.0f) / gLookatEyeZ) + 302.0f;
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0, 320, 0x14
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 0xD4, 320, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   0, 4, sp32, 0xF8
                );
                Gfx_DrawBorderRect(GPACK_RGBA5551((D_801376A8[0] * 0) / 255, (D_801376AC[0] * 0) / 255, (D_801376B0[0] * 0) / 255, 1),
                                   sp30, 4, 320, 0xF8
                );
            }
            break;
    }
}

void func_80022470(void) {
    s16 segment_1;
    s16 segment_2;
    s16 index;
    u16 prev_health_displayed;

    prev_health_displayed  = gHealthDisplayed;
    if (gPlayerActor.health == 0) { // flash lifebar if near death.
        for (index = 0; index < 0x60; index++) {
            if (gActiveFrames & 0x10) {
                PALETTE_802209E0[index] = (((gActiveFrames & 0xF) << 12) + 0x801);
            }
            else {
                PALETTE_802209E0[index] = (0xF801 - ((gActiveFrames & 0xF) << 12));
            }
        }
    }
    // make black if dead.
    else if (gPlayerActor.health < 0) {
        for (index = 0; index < 0x60; index++) { PALETTE_802209E0[index] = 1; }
    }
    else {
        // update HP displayed
        if (gHealthDisplayed < gPlayerActor.health) {
            gHealthDisplayed = MIN(gHealthDisplayed + 5, gPlayerActor.health);
            segment_1 = ((((gHealthDisplayed + 999) % 1000) * 12) + 12) / 125;
            segment_2 = ((((gPlayerActor.health + 999) % 1000) * 12) + 12) / 125;
            if (segment_2 >= 0x61) {
                segment_2 = 0x60;
            }
            if (segment_1 < 0) {
                segment_1 = 0;
            }
            if (segment_2 < segment_1) {
                segment_2 = 0x60;
            }
        }
        else if (gPlayerActor.health < gHealthDisplayed) {
            gHealthDisplayed = MAX(gHealthDisplayed - 5, gPlayerActor.health);
            segment_1 = ((((gPlayerActor.health + 999) % 1000) * 12) + 12) / 125;
            segment_2 = ((((gHealthDisplayed + 999) % 1000) * 12) + 12) / 125;
            if (segment_2 >= 0x61) {
                segment_2 = 0x60;
            }
            if (segment_1 < 0) {
                segment_1 = 0;
            }
            if (segment_2 < segment_1) {
                segment_1 = 0;
            }
        }
        else {
            segment_1 = ((((gPlayerActor.health + 999) % 1000) * 12) + 12) / 125;
            segment_2 = segment_1;
        }
        for (index = 0; index < segment_1; index++) {
            PALETTE_802209E0[index] = D_800CBE20[index];
        }
        for (; index < segment_2; index++) { PALETTE_802209E0[index] = ( ((D_800CBE20[index] & 0xF000) / 2) + ((D_800CBE20[index] & 0x780) / 2) + ((D_800CBE20[index] & 0x3C) / 2) + 1); }
        while (index < 0x60) {
            PALETTE_802209E0[index++] = 1;
        }
    }
    // play sound for lifebar pip
    if (((prev_health_displayed + 999) / 1000) < ((gHealthDisplayed + 999) / 1000)) {
        Sound_PlaySfx(SFX_LIFEBAR);
    }
    // show/glow pips on lifebar
    switch ((gHealthDisplayed - 1) / 1000) {
    case 1: // 1000 < HP < 2000
        PALETTE_802209E0[0xB1] = 0xFFFF;
        for (index = 0; index < 0xE; index++) {
            if (gActiveFrames & 0x20) {
                PALETTE_802209E0[index + 0xB2] = ((((0xF - index) * ((gActiveFrames & 0x1F) + 1) * 4) & 0x780) + 0xC001);
            }
            else {
                PALETTE_802209E0[index + 0xB2] = ((((0xF - index) * (0x20 - (gActiveFrames & 0x1F)) * 4) & 0x780) + 0xC001);
            }
        }
        for (index = 0; index < 0x15; index++) {
            PALETTE_802209E0[index + 0xC0] = D_800CBEE0[index];
        }
        for (index = 0; index < 0x24; index++) {
            PALETTE_802209E0[index + 0x81] = 0;
        }
        break;
    case 2: // HP >= 2000
        PALETTE_802209E0[0xB1] = 0xFFFF;
        PALETTE_802209E0[0x81] = 0xFFFF;
        for (index = 0; index < 0xE; index++) {
            if (gActiveFrames & 0x20) {
                PALETTE_802209E0[index + 0xB2] = ((((0xF - index) * ((gActiveFrames & 0x1F) + 1) * 4) & 0x780) + 0xC001);
            }
            else {
                PALETTE_802209E0[index + 0xB2] = ((((0xF - index) * (0x20 - (gActiveFrames & 0x1F)) * 4) & 0x780) + 0xC001);
            }

            if (gActiveFrames & 0x20) {
                PALETTE_802209E0[index + 0x82] = (((0xF - index) * (0x20 - (gActiveFrames & 0x1F)) * 4) & 0x780) + 0x31;
            }
            else {
                PALETTE_802209E0[index + 0x82] = (((0xF - index) * ((gActiveFrames & 0x1F) + 1) * 4) & 0x780) + 0x31;
            }
        }
        for (index = 0; index < 0x15; index++) {
            PALETTE_802209E0[index + 0xC0] = D_800CBEE0[index];
            PALETTE_802209E0[index + 0x90] = D_800CBF0C[index];
        }
        break;

    default:
        for (index = 0; index < 0x24; index++) {
            PALETTE_802209E0[index + 0xB1] = 0;
            PALETTE_802209E0[index + 0x81] = 0;
        }
        break;
    }
}
