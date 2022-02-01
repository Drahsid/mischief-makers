

#include "common.h"


/* This file is related to graphics
 * Most of the functions are setting up Display Lists
 */

#pragma GLOBAL_ASM("asm/nonmatchings/render/func_80009940.s")

void func_80009BE0(void) {}
//solves for perspective or orthographic view (depending on gDebugBitfeild)... amoung many other things.
#pragma GLOBAL_ASM("asm/nonmatchings/render/Gfx_DrawActors.s")
//draws static gems?
#pragma GLOBAL_ASM("asm/nonmatchings/render/func_8000DD6C.s")
//draws the transition portrait tiles
#pragma GLOBAL_ASM("asm/nonmatchings/render/Gfx_DrawPortraits.s")
//Draws the health guage
#pragma GLOBAL_ASM("asm/nonmatchings/render/Gfx_DrawLifeBar.s")

#pragma GLOBAL_ASM("asm/nonmatchings/render/func_8000FBF4.s")

void lookAt_Tick(void) {
    D_801780F0 = gDListTail[0].unk_0x00;
    D_801780F4 = gDListTail[1].unk_0x00;

    guLookAt(D_801780F0 + 3, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
    guLookAt(D_801780F4 + 3, gEyeX, gEyeY, gEyeZ, gAtX, gAtY, gAtZ, gUpX, gUpY, gUpZ);
}

void lookAt_Reset(void) {
    gEyeX = 0.0f;
    gEyeY = 0.0f;
    gEyeZ = 448.0f;
    gAtX = 0.0f;
    gAtY = 0.0f;
    gAtZ = 0.0f;
    gUpX = 0.0f;
    gUpY = 1.0f;
    gUpZ = 0.0f;
}

void func_80010A10(void) {
    D_801780F0 = gDListTail[0].unk_0x00;
    D_801780F4 = gDListTail[1].unk_0x00;
    guOrtho(D_801780F0, -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(D_801780F4, -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(D_801780F0 + 2, -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(D_801780F4 + 2, -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    lookAt_Reset();
    lookAt_Tick();
    D_80178104 = &D_802C9F70;
    D_80178108 = 0x8032F940;
    D_8017810C = 0x80350AD8;
    D_80178110 = 0x80317F48;
    D_80178114 = 0x803440C8;
    D_80178118 = 0x802F93B8;
    D_8017811C = 0x80310D00;
    D_80178120 = 0x80338810;
    D_80178124 = 0x802DB888;
    D_80178128 = 0x802EB278;
}
