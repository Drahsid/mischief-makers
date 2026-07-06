#include "common.h"
#include "boot.h"

extern s32 D_800BE6D0; // texture x offset
extern s32 D_800BE6D4; // texture y offset
extern s32 D_800BE6DC; // texture x offset
extern s32 D_800BE6E0; // texture y offset

extern Gfx D_800E3590[];
extern Gfx D_800E35E0[];

extern u16 D_801374F0[]; // source of texture images
extern u16 D_80137580[]; // source of texture images
extern u16 D_80137610[]; // source of texture images
extern u16* D_8013769C; // tlut
extern u16* D_801376A4; // tlut
extern u8 D_801376A8[];
extern u8 D_801376AC[];
extern u8 D_801376B0[];
extern u8 D_801376B4[];
extern u8 D_801376B8[];
extern u8 D_801376BC[];

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
        if (D_801376B8[arg5] != 0) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
        }
        else {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gDPSetEnvColor(gDisplayListHead++, D_801376A8[arg5], D_801376AC[arg5], D_801376B0[arg5], D_801376B4[arg5]);
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
        if (D_801376B8[arg3] != 0) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x00, 0x00, 0x00, 0xFF);
        }
        else {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gDPSetEnvColor(gDisplayListHead++, D_801376A8[arg3], D_801376AC[arg3], D_801376B0[arg3], D_801376B4[arg3]);
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
    if (gDrawBackground != 0) {
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

void func_8008310C(void) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)0x8027EEE8;
    for (index = 0; index < 0x300; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 2;
    }
}

void func_80083140(s16 arg0, s16 arg1) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)(((arg0 % 8) * 8) + ((arg0 / 8) << 0xA) + (arg1 << 0xB) + 0x8027EEE8);
    for (index = 0; index < 0x10; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 0x10;
    }
}

void func_800831D0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    u16 index;
    s32* var_a0;
    s32* var_v1;
    s32 temp;

    temp = arg3 * 0x44444444;
    if (arg2 < 0x51) {
        var_v1 = (s32*)((arg2 << 6) + 0x802524A8);
        var_a0 = (s32*)(((arg0 % 16) * 4) + ((arg0 / 16) << 0xA) + (arg1 << 0xB) + 0x8027EEE8);
        for (index = 0; index < 0x10; index++) {
            *var_a0 = *var_v1 + temp;
            var_v1 += 1;
            var_a0 += 0x10;
        }
    }
    else {
        var_v1 = (s32*)((arg2 << 7) + 0x80252468);
        var_a0 = (s32*)(((arg0 % 8) * 8) + ((arg0 / 8) << 0xA) + (arg1 << 0xB) + 0x8027EEE8);
        for (index = 0; index < 0x10; index++) {
            var_a0[0] = var_v1[0] + temp;
            var_a0[1] = var_v1[1] + temp;
            var_v1 += 2;
            var_a0 += 0x10;
        }
    }
}

void func_80083358(s16 arg0, s16 arg1, u16* arg2, s16 arg3) {
    if (*arg2 < 0xA1) {
        arg0 *= 2;
    }
    while (*arg2 != 0x8FFF) {
        if (*arg2 == 0) {
            arg2++;
            arg0++;
        }
        else {
            func_800831D0(arg0++, arg1, *arg2++ - 0x50, arg3);
        }
    }
}

void func_80083454(void) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)0x8027CEE8;
    for (index = 0; index < 0x400; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 2;
    }
}

void func_80083488(s16 arg0, s16 arg1) {
    u16 index;
    s32* var_v0;

    var_v0 = (s32*)(((arg0 % 8) * 8) + ((arg0 / 8) << 0xA) + (arg1 << 0xB) + 0x8027CEE8);
    for (index = 0; index < 0x10; index++) {
        var_v0[0] = 0;
        var_v0[1] = 0;
        var_v0 += 0x10;
    }
}

void func_80083518(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    u16 index;
    s32* var_a0;
    s32* var_v1;
    s32 temp;

    temp = arg3 * 0x44444444;
    if (arg2 < 0x51) {
        var_v1 = (s32*)((arg2 << 6) + 0x802524A8);
        var_a0 = (s32*)(((arg0 % 16) * 4) + ((arg0 / 16) << 0xA) + (arg1 << 0xB) + 0x8027CEE8);
        for (index = 0; index < 0x10; index++) {
            *var_a0 = *var_v1 + temp;
            var_v1 += 1;
            var_a0 += 0x10;
        }
    }
    else {
        var_v1 = (s32*)((arg2 << 7) + 0x80252468);
        var_a0 = (s32*)(((arg0 % 8) * 8) + ((arg0 / 8) << 0xA) + (arg1 << 0xB) + 0x8027CEE8);
        for (index = 0; index < 0x10; index++) {
            var_a0[0] = var_v1[0] + temp;
            var_a0[1] = var_v1[1] + temp;
            var_v1 += 2;
            var_a0 += 0x10;
        }
    }
}

void func_800836A0(s16 arg0, s16 arg1, u16* arg2, s16 arg3) {
    if (*arg2 < 0xA1) {
        arg0 = arg0 * 2;
    }
    while (*arg2 != 0x8FFF) {
        if (*arg2 == 0) {
            arg2++;
            arg0++;
        }
        else {
            func_80083518(arg0++, arg1, *arg2++ - 0x50, arg3);
        }
    }
}

void func_8008379C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if (arg1 < 3) {
        func_800831D0(arg0, arg1, arg2, arg3);
    }
    else {
        func_80083518(arg0, arg1 - 3, arg2, arg3);
    }
}

void func_80083810(s16 arg0, s16 arg1, u16* arg2, s16 arg3) {
    if (arg1 < 3) {
        func_80083358(arg0, arg1, arg2, arg3);
    }
    else {
        func_800836A0(arg0, arg1 - 3, arg2, arg3);
    }
}

void func_80083878(s16 arg0, s16 arg1) {
    if (arg1 < 3) {
        func_80083140(arg0, arg1);
    }
    else {
        func_80083488(arg0, arg1 - 3);
    }
}
