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
    gsDPSetScissor(G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT),
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
    gsSPClearGeometryMode(0xFFFFFFFF),
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
Lights4 D_800E3B18 = gdSPDefLights4(
    0x20, 0x20, 0x20,
    0x00, 0xE0, 0x00, 0x00, 0x7F, 0x20,
    0xE0, 0x00, 0x00, 0x7F, -0x40, 0x20,
    0x00, 0x00, 0xE0, -0x7F, 0x00, 0x20,
    0xE0, 0xE0, 0x00, 0x00, 0x00, 0x7F
);

Gfx D_800E3B60[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_TRILERP, G_CC_MODULATEIA2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPSetLights4(D_800E3B18),
    gsSPEndDisplayList(),
};

Lights2 D_800E3BC8 = gdSPDefLights2(
    0x3F, 0x3F, 0x3F,
    0xFF, 0xFF, 0xFF, 0x7F, 0x7F, -0x40,
    0xFF, 0x00, 0x00, 0x00, -0x7F, 0x00
);

Gfx D_800E3BF0[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_TRILERP, G_CC_MODULATEIA2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPSetLights2(D_800E3BC8),
    gsSPEndDisplayList(),
};

Lights1 D_800E3C48 = gdSPDefLights1(
    0x7F, 0x7F, 0x7F,
    0xFF, 0xFF, 0x80, 0x40, 0x40, -0x40
);

Gfx D_800E3C60[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_TRILERP, G_CC_MODULATEIA2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPSetLights1(D_800E3C48),
    gsSPEndDisplayList(),
};

Lights1 D_800E3CB0 = gdSPDefLights1(
    0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00
);

Gfx D_800E3CC8[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_2CYCLE),
    gsSPSetGeometryMode(G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetCombineMode(G_CC_TRILERP, G_CC_MODULATEIA2),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsSPSetLights1(D_800E3CB0),
    gsSPEndDisplayList(),
    gsSPNoOp(),
};
