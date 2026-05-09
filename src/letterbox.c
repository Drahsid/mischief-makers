#include "common.h"
#include "boot.h"

//script seems to use -O1, color is determined by division in GPACK_RGBA5551()
#define PACK_BLACK(max) (((((0 / (max)) >> 2) & 0x3e) | (((0 / (max)) << 8) & 0xf800) | (((0 / (max)) << 3) & 0x7c0) | 1))

void Gfx_DrawBorderRect(u16 col,s32 x1,s32 y1,s32 x2,s32 y2) {
    gDPSetFillColor(gDisplayListHead++, (col<<0x10|col));
    gDPFillRectangle(gDisplayListHead++,x1,y1,x2,y2);    
}

#ifdef NONMATCHING //90.77% match with "-O1"

void Gfx_DrawLetterboxStandard() {
    register u8 max = 0xFF;

    Gfx_DrawBorderRect(PACK_BLACK(max), 0, 0, SCREEN_WIDTH, 20);
    Gfx_DrawBorderRect(PACK_BLACK(max), 0, SCREEN_HEIGHT - 28, SCREEN_WIDTH, SCREEN_HEIGHT + 8);
    Gfx_DrawBorderRect(PACK_BLACK(max), 0, 4, 14, SCREEN_HEIGHT + 8);
    Gfx_DrawBorderRect(PACK_BLACK(max), SCREEN_WIDTH - 18, 4, SCREEN_WIDTH, SCREEN_HEIGHT + 8);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/letterbox/Gfx_DrawLetterboxStandard.s")
#endif

#ifdef NONMATCHING //division, break checks, and unused u8*'s get optimized out in "-O2".

extern f32 D_800BE5B0; //lookat eyeZ
extern u8 D_801376A8[]; //array of env colors
extern u8 D_801376AC[]; //array of env colors
extern u8 D_801376B0[]; //array of env colors


void Gfx_DrawLetterbox() {
    register u8 max;
    u16 sp34;
    u16 sp32;
    u16 sp30;
    u16 var_v0;
    u8* red,green,blue; //references made in ASM, but not used. "-02" ommits them.
    gSPDisplayList(gDisplayListHead++,D_800E3978);
    if ((gGamePaused) && (gGameStateSubState == 0x10)) {
        Gfx_DrawLetterboxStandard();
        return;
    }
    switch (gLetterboxMode) {
    case LETTERBOX_DEFAULT:
        Gfx_DrawLetterboxStandard();
        break;
    case LETTERBOX_HORIZONTAL:
        if (D_800BE5B0 <= 448.0f) {
            max=0xff;
            red=D_801376A8;
            green=D_801376AC;
            blue=D_801376B0;
            Gfx_DrawBorderRect(PACK_BLACK(max), 0, 0U, 320, 20);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0, 0xD4U, 320, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0, 4, 14, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0x12E, 4, 320, 0xF8);
        }
        else{
            max=0xff;
            red=D_801376A8;
            green=D_801376AC;
            blue=D_801376B0;
            var_v0 = (((D_800BE5B0 - 448.0f) * 96.0f) / D_800BE5B0) + 20.0f;
            sp34 = ((((448.0f - D_800BE5B0) * 96.0f) / D_800BE5B0) + 212.0f);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 0U, 320, var_v0);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, sp34, 320U, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 4U, 0xEU, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0x12EU, 4U, 320, 0xF8);
        }
        break;
    case LETTERBOX_VERTICAL:
        if (D_800BE5B0 <= 448.0f) {
            max=0xff;
            red=D_801376A8;
            green=D_801376AC;
            blue=D_801376B0;
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 0U, 320U, 0x14);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 0xD4U, 320U, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 4U, 0xEU, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0x12EU, 4U, 320U, 0xF8);
        }
        else{
            max=0xff;
            red=D_801376A8;
            green=D_801376AC;
            blue=D_801376B0;
            sp32 = (((D_800BE5B0 - 448.0f) * 192.0f) / D_800BE5B0) + 14.0f;
            sp30 = ((((448.0f - D_800BE5B0) * 192.0f) / D_800BE5B0) + 302.0f);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 0U, 320, 0x14);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 0xD4, 320, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), 0U, 4U, sp32, 0xF8);
            Gfx_DrawBorderRect(PACK_BLACK(max), sp30, 4U, 320, 0xF8);
        }
        break;
    }
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/letterbox/Gfx_DrawLetterbox.s")
#endif


