#include "common.h"

Vp gDefaultViewport = {
    {
        SCREEN_WIDTH * 2, SCREEN_HEIGHT * 2, G_MAXZ / 2, 0,
        SCREEN_WIDTH * 2, SCREEN_HEIGHT * 2, G_MAXZ / 2, 0
    },
};

Gfx gDefaultRenderSetupDisplayList[] = {
    gsSPSegment(0x00, 0x00000000),
    gsDPPipeSync(),
    gsDPSetScissor(G_SC_NON_INTERLACE, 0, 0, 320, 240),
    gsDPSetAlphaCompare(G_AC_THRESHOLD),
    gsDPSetBlendColor(0x00, 0x00, 0x00, 0x01),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTexturePersp(G_TP_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx gDefaultViewportSetupDisplayList[] = {
    gsSPViewport(&gDefaultViewport),
    gsSPClipRatio(FRUSTRATIO_2),
    gsSPClearGeometryMode(G_ZBUFFER | G_TEXTURE_ENABLE | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH | G_CLIPPING | 0xFFE0CDF8),
    gsSPSetGeometryMode(G_TEXTURE_GEN_LINEAR),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx D_800E3978[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_FILL),
    gsDPSetRenderMode(G_RM_NOOP, G_RM_NOOP2),
    gsSPEndDisplayList(),
};

Gfx D_800E3998[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_COPY),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetRenderMode(G_RM_NOOP, G_RM_NOOP2),
    gsSPEndDisplayList(),
};

Gfx D_800E39C0[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPClearGeometryMode(G_CULL_BOTH),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTextureFilter(G_TF_POINT),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsDPSetFogColor(0xFF, 0xFF, 0xFF, 0xFF),
    gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipelineMode(G_PM_1PRIMITIVE),
    gsSPEndDisplayList(),
};

Gfx D_800E3A30[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_800E3A50[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsSPClearGeometryMode(G_CULL_BOTH),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx D_800E3A88[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
    gsSPEndDisplayList(),
};

Lights1 gDefaultLights = gdSPDefLights1(
    0x80, 0x80, 0x80, // ambient
    0xFF, 0xFF, 0xFF, // color
    0x7F, 0x7F, 0xC0 // direction
);

Gfx D_800E3AC8[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_TRILERP, G_CC_MODULATEIA2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPSetLights1(gDefaultLights),
    gsSPEndDisplayList(),
};

// Lights?
u32 D_800E3B18[] = {
    0x20202000,
    0x20202000,
    0x00E00000,
    0x00E00000,
    0x007F2000,
    0x00000000,
    0xE0000000,
    0xE0000000,
    0x7FC02000,
    0x00000000,
    0x0000E000,
    0x0000E000,
    0x81002000,
    0x00000000,
    0xE0E00000,
    0xE0E00000,
    0x00007F00,
    0x00000000,
};
