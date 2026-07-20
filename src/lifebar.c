#include "common.h"

extern u16 D_800CBE20[];
extern u16 D_800CBEE0[]; // palette of first lifebar pip
extern u16 D_800CBF0C[]; // palette of second lifebar pip

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
