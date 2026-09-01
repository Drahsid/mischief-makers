#include "common.h"
#include "boot.h"

// this script deals with printing monospaced text directly into a texture,
// rather than have each character be used as an actor.

extern s32 D_800BE6D0; // texture x offset
extern s32 D_800BE6D4; // texture y offset
extern s32 D_800BE6DC; // texture x offset
extern s32 D_800BE6E0; // texture y offset

extern Gfx D_800E3590[];
extern Gfx D_800E35E0[];

Gfx D_80178470[708];
Gfx D_80179A90[708];
Gfx D_8017B0B0[708];
Gfx D_8017C6D0[708];
Gfx D_8017DCF0[708];
Gfx D_8017F310[708];
s32 D_80180930[140]; // texture images
s32 D_80180B60[140]; // texture images
s32 D_80180D90[140]; // texture images
s32 D_80180FC0;

void func_80082380(Gfx* display_list, s32 x_offset, s32 y_offset, s32* texture_images, u16* tlut, u8 arg5) {
    s32 upper_x;
    s32 upper_y;
    s32 texture_image;
    s32 y_index;
    s32 delta_x;
    s32 delta_y;
    s32 dsdx;
    s32 x_index;
    Gfx* working_dlist;

    if (D_801376BC[arg5] != 0) {
        gSPDisplayList(gDisplayListHead++, D_800E3590);
        delta_x = delta_y = 1;
        dsdx = 4;
    }
    else {
        gSPDisplayList(gDisplayListHead++, D_800E35E0);
        if (gUseBlackPrimColor[arg5]) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
        }
        else {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gDPSetEnvColor(gDisplayListHead++, gEnvColorsRed[arg5], gEnvColorsGreen[arg5], gEnvColorsBlue[arg5], gEnvColorsAlpha[arg5]);
        delta_x = delta_y = 0;
        dsdx = 1;
    }

    working_dlist = display_list;
    for (y_index = 0; y_index < 7; y_index++) {
        for (x_index = 0; x_index < 10; x_index++) {
            texture_image = texture_images[10 * y_index + x_index];
            if (texture_image != 0) {
                upper_x = (x_index * 32) + x_offset;
                upper_y = (y_index * 32) + y_offset;
                if (((upper_x + 32) < 0) || ((upper_y + 32) < 0)) {
                    continue;
                }
                gDPLoadTextureBlock(working_dlist++, texture_image, G_IM_FMT_CI, G_IM_SIZ_8b,
                                    32, 32, 0, 
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 
                                    5, 5, G_TX_NOLOD, G_TX_NOLOD);
                gSPTextureRectangle(working_dlist++, 
                                    MAX(0, upper_x) << 2,
                                    MAX(0, upper_y) << 2,
                                    ((upper_x - delta_x) + 32) << 2, 
                                    ((upper_y - delta_y) + 32) << 2, 
                                    G_TX_RENDERTILE,
                                    ((upper_x < 0) ? -upper_x : 0) * 32,
                                    ((upper_y < 0) ? -upper_y : 0) * 32,
                                    dsdx << 10,
                                    1 << 10);
            }
        }
    }
    gDPLoadTLUT_pal256(gDisplayListHead++, tlut);
    gSPEndDisplayList(working_dlist);
    gSPDisplayList(gDisplayListHead++, display_list);
    gDPPipeSync(gDisplayListHead++);
}

void func_80082820(Gfx* display_list, s32* texture_images, u16* tlut, u8 arg3) {
    s32 upper_x_delta;
    s32 upper_x;
    s32 upper_y;
    s32 texture_image;
    s32 y_index;
    s32 delta_x;
    s32 delta_y;
    s32 dsdx;
    s32 x_index;
    Gfx* working_dlist;

    if (D_801376BC[arg3] != 0) {
        gSPDisplayList(gDisplayListHead++, D_800E3590);
        delta_x = delta_y = 1;
        dsdx = 4;
    }
    else {
        gSPDisplayList(gDisplayListHead++, D_800E35E0);
        if (gUseBlackPrimColor[arg3]) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
        }
        else {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gDPSetEnvColor(gDisplayListHead++, gEnvColorsRed[arg3], gEnvColorsGreen[arg3], gEnvColorsBlue[arg3], gEnvColorsAlpha[arg3]);
        delta_x = delta_y = 0;
        dsdx = 1;
    }

    working_dlist = display_list;
    for (y_index = 0; y_index < 7; y_index++) {
        if (D_8011D3B0[y_index][0] == 0xFFFF) {
            continue;
        }
        upper_x_delta = (14 - ((D_8011D3B0[y_index][0] - 2) & 0x1F));
        for (x_index = 0; x_index < 10; x_index++) {
            texture_image = texture_images[10 * y_index + x_index];
            if (texture_image == 0) {
                continue;
            }
            upper_x = (x_index * 32) + upper_x_delta;
            if ((upper_x + 32) < 0) {
                continue;
            }
            upper_y = (y_index * 32) + D_800BE6E0;
            if ((upper_y + 32) < 0) {
                continue;
            }
            gDPLoadTextureBlock(working_dlist++, texture_image, G_IM_FMT_CI, G_IM_SIZ_8b,
                                32, 32, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                5, 5, G_TX_NOLOD, G_TX_NOLOD);
            gSPTextureRectangle(working_dlist++,
                                MAX(0, upper_x) << 2,
                                MAX(0, upper_y) << 2,
                                ((upper_x - delta_x) + 32) << 2,
                                ((upper_y - delta_y) + 32) << 2,
                                G_TX_RENDERTILE,
                                ((upper_x < 0) ? -upper_x : 0) * 32,
                                ((upper_y < 0) ? -upper_y : 0) * 32,
                                dsdx << 10,
                                1 << 10);
        }
    }
    gDPLoadTLUT_pal256(gDisplayListHead++, tlut);
    gSPEndDisplayList(working_dlist);
    gSPDisplayList(gDisplayListHead++, display_list);
    if (D_8011D3B0 && D_8011D3B0) {} // fakematch
    gDPPipeSync(gDisplayListHead++);
}


void func_80082CFC(void) {
    Gfx* display_list;
    s32 index;

    if (gDrawMidground) {
        for (index = 0; index < 0x46; index++) {
            D_80180930[index] = ((D_801374F0[index] << 3) << 7) + D_80180FC0;
        }

        if (gCurrentFramebufferIndex != 0) {
            display_list = D_80178470;
        }
        else {
            display_list = D_80179A90;
        }
        func_80082380(display_list, D_800BE6C4, D_800BE6C8, D_80180930, D_8013769C, 0);
    }
}

void func_80082E04(void) {
    Gfx* display_list;
    s32 index;

    if (gDrawEnvLayer) {
        for (index = 0; index < 70; index++) {
            D_80180B60[index] = ((D_80137580[index] << 7) << 3) + D_80180FC0;
        }

        if (gCurrentFramebufferIndex != 0) {
            display_list = D_8017B0B0;
        }
        else {
            display_list = D_8017C6D0;
        }
        func_80082380(display_list, D_800BE6D0, D_800BE6D4, D_80180B60, D_801376A0, 1);
    }
}

void func_80082F10(void) {
    Gfx* display_list;
    s32 index;

    D_80180FC0 = 0x80380600;
    if (gDrawBackground) {
        if (D_800BE6FC != 0) {
            for (index = 0; index < 70; index++) {
                D_80180D90[index] = ((D_80137610[index] << 5) << 5) + D_80180FC0;
            }
            if (gCurrentFramebufferIndex != 0) {
                display_list = D_8017DCF0;
            }
            else {
                display_list = D_8017F310;
            }
            func_80082820(display_list, D_80180D90, D_801376A4, 2);
        }
        else {
            for (index = 0; index < 70; index++) {
                D_80180D90[index] = ((D_80137610[index] << 5) << 5) + D_80180FC0;
            }
            if (gCurrentFramebufferIndex != 0) {
                display_list = D_8017DCF0;
            }
            else {
                display_list = D_8017F310;
            }
            func_80082380(display_list, D_800BE6DC, D_800BE6E0, D_80180D90, D_801376A4, 2);
        }
    }
}

// clear a text texture
void func_8008310C(void) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)TEXT_TEXTURE_1_ADDR;
    for (index = 0; index < 0x300; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 2;
    }
}

// clear a select charcter-size space of text texture
void func_80083140(s16 colmmn, s16 row) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)(((colmmn % 8) * 8) + ((colmmn / 8) << 0xA) + (row << 0xB) + TEXT_TEXTURE_1_ADDR);
    for (index = 0; index < 0x10; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 0x10;
    }
}

void func_800831D0(s16 colmmn, s16 row, s16 ch, s16 arg3) {
    u16 index;
    s32* var_a0;
    s32* var_v1;
    s32 temp;

    temp = arg3 * 0x44444444;
    if (ch < ALPHA_OFFSET(THIN_0)) { // check not in japanese version
        var_v1 = (s32*)((ch << 6) + 0x802524A8);
        var_a0 = (s32*)(((colmmn % 16) * 4) + ((colmmn / 16) << 0xA) + (row << 0xB) + TEXT_TEXTURE_1_ADDR);
        for (index = 0; index < 0x10; index++) {
            *var_a0 = *var_v1 + temp;
            var_v1 += 1;
            var_a0 += 0x10;
        }
    }
    else {
        var_v1 = (s32*)((ch << 7) + 0x80252468);
        var_a0 = (s32*)(((colmmn % 8) * 8) + ((colmmn / 8) << 0xA) + (row << 0xB) + TEXT_TEXTURE_1_ADDR);
        for (index = 0; index < 0x10; index++) {
            var_a0[0] = var_v1[0] + temp;
            var_a0[1] = var_v1[1] + temp;
            var_v1 += 2;
            var_a0 += 0x10;
        }
    }
}

void func_80083358(s16 arg0, s16 arg1, u16* arg2, s16 arg3) {
    if (*arg2 < ALPHA_THIN_0) {
        arg0 *= 2;
    }
    while (*arg2 != ALPHA_NULL) {
        if (*arg2 == 0) {
            arg2++;
            arg0++;
        }
        else {
            func_800831D0(arg0++, arg1, *arg2++ - 0x50, arg3);
        }
    }
}

// clear text texture
void func_80083454(void) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)TEXT_TEXTURE_0_ADDR;
    for (index = 0; index < 0x400; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 2;
    }
}

// clear a select charcter-size space of text texture
void func_80083488(s16 column, s16 row) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)(((column % 8) * 8) + ((column / 8) << 0xA) + (row << 0xB) + TEXT_TEXTURE_0_ADDR);
    for (index = 0; index < 0x10; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 0x10;
    }
}

// prin
void func_80083518(s16 column, s16 row, s16 ch, s16 arg3) {
    u16 index;
    s32* var_a0;
    s32* var_v1;
    s32 temp;

    temp = arg3 * 0x44444444;
    if (ch < ALPHA_OFFSET(THIN_0)) { // check not in japanese version
        var_v1 = (s32*)((ch << 6) + 0x802524A8);
        var_a0 = (s32*)(((column % 16) * 4) + ((column / 16) << 0xA) + (row << 0xB) + TEXT_TEXTURE_0_ADDR);
        for (index = 0; index < 0x10; index++) {
            *var_a0 = *var_v1 + temp;
            var_v1 += 1;
            var_a0 += 0x10;
        }
    }
    else {
        var_v1 = (s32*)((ch << 7) + 0x80252468);
        var_a0 = (s32*)(((column % 8) * 8) + ((column / 8) << 0xA) + (row << 0xB) + TEXT_TEXTURE_0_ADDR);
        for (index = 0; index < 0x10; index++) {
            var_a0[0] = var_v1[0] + temp;
            var_a0[1] = var_v1[1] + temp;
            var_v1 += 2;
            var_a0 += 0x10;
        }
    }
}

void func_800836A0(s16 column, s16 row, u16* str, s16 arg3) {
    if (*str < ALPHA_THIN_0) {
        column = column * 2;
    }
    while (*str != ALPHA_NULL) {
        if (*str == 0) {
            str++;
            column++;
        }
        else {
            func_80083518(column++, row, *str++ - 0x50, arg3);
        }
    }
}

// print monospaced text directly into a texture.
// used exclusively by stage.c.
// @param column x-position to start string
// @param row y-position of string
// @param ch character of value ALPHA_* - 0x50
void func_8008379C(s16 column, s16 row, s16 ch, s16 arg3) {
    if (row < 3) {
        func_800831D0(column, row, ch, arg3);
    }
    else {
        func_80083518(column, row - 3, ch, arg3);
    }
}

// print monospaced text directly into a texture.
// used exclusively by stage.c.
// @param column x-position to start string
// @param row y-position of string
// @param str string of text
void func_80083810(s16 column, s16 row, u16* str, s16 arg3) {
    if (row < 3) {
        func_80083358(column, row, str, arg3);
    }
    else {
        func_800836A0(column, row - 3, str, arg3);
    }
}

// clear a select character-sized space of text texture. unused.
void func_80083878(s16 column, s16 row) {
    if (row < 3) {
        func_80083140(column, row);
    }
    else {
        func_80083488(column, row - 3);
    }
}
