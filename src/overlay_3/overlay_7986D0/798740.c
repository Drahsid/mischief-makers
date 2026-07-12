#define Actor_Initialize_RET void

#include <PR/gbi.h>

#include "common.h"

#define D_801B5E4A_79DC8A (D_801B5E08_79DC48 + 33)

extern s16 D_800E20C4[];
extern s16 D_800E20E0[];
extern s16 D_800E2274[];

u16 D_801B5DF0_79DC30[] = {
    0x103A, 0x103C, 0x102C, 0x102E, 0x1030, 0x1038, 0x1036, 0x102C,
    0x1034, 0x1032, 0, 0,
};

s16 D_801B5E08_79DC48[] = {
    0x6907, 0x2, 0x6908, 0x2, 0x6909, 0x2, 0x690A, 0x2,
    0x690B, 0x3, 0x690A, 0x2, 0x6909, 0x2, 0x6908, 0x2,
    0x6907, 0x2, 0x6906, 0x2, 0x6905, 0x2, 0x6904, 0x2,
    0x6903, 0x3, 0x6904, 0x2, 0x6905, 0x2, 0x6906, 0x2,
    -0x20, 0, 0x18, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0,
};

s32 D_801B5E64_79DCA4[] = {
    0x80343DA0, 0x80343EC8, 0x80343FF0, 0x80344118,
    0x80344240, 0x80344368, 0x80344490, 0x803445B8,
    0x803446E0, 0x80344808, 0x80344930, 0x80344A58,
    0x80344B80, 0x80344CA8, 0x80344DD0, 0x80344EF8,
    0x80345020, 0x80345148, 0x80345270, 0x80345398,
    0x803454C0, 0x803455E8, 0x80345710, 0x80345838,
    0x80345960, 0x80345A88, 0x80345BB0, 0x80345CD8,
    0x80345E00, 0x80345F28, 0x80346050, 0x80346178,
};

s16 D_801B5EE4_79DD24[] = {
    0x10, 0x20, 0x30, 0x40, -0x10, -0x20, -0x30, -0x40,
    0x10, 0x20, 0x30, 0x40, -0x10, -0x20, -0x30, -0x40,
    0x10, 0x20, 0x30, 0x40, -0x10, -0x20, -0x30, -0x40,
    0x10, 0x20, 0x30, 0x40, -0x10, -0x20, -0x30, -0x40,
};

s16* D_801B5F24_79DD64[] = {
    (s16*)0x803462A0, (s16*)0x80346420, (s16*)0x803465A0, (s16*)0x80346720,
    (s16*)0x803468A0, (s16*)0x80346A20, (s16*)0x80346BA0, (s16*)0x80346D20,
    (s16*)0x80346EA0, (s16*)0x80347020, (s16*)0x803471A0, (s16*)0x80347320,
    (s16*)0x803474A0, (s16*)0x80347620, (s16*)0x803477A0, (s16*)0x80347920,
    (s16*)0x80347AA0, (s16*)0x80347C20, (s16*)0x80347DA0, (s16*)0x80347F20,
    (s16*)0x803480A0, (s16*)0x80348220, (s16*)0x803483A0, (s16*)0x80348520,
};

s16* D_801B5F84_79DDC4[] = {
    (s16*)0x803486A0, (s16*)0x80348820, (s16*)0x803489A0, (s16*)0x80348B20,
    (s16*)0x80348CA0, (s16*)0x80348E20, (s16*)0x80348FA0, (s16*)0x80349120,
    (s16*)0x803492A0, (s16*)0x80349420, (s16*)0x803495A0, (s16*)0x80349720,
    (s16*)0x803498A0, (s16*)0x80349A20, (s16*)0x80349BA0, (s16*)0x80349D20,
    (s16*)0x80349EA0, (s16*)0x8034A020, (s16*)0x8034A1A0, (s16*)0x8034A320,
    (s16*)0x8034A4A0, (s16*)0x8034A620, (s16*)0x8034A7A0, (s16*)0x8034A920,
};

s32 D_801B5FE4_79DE24[] = {
    0x8034AAA0, 0x8034ABC8, 0x8034ACF0, 0x8034AE18,
    0x8034AF40, 0x8034B068, 0x8034B190, 0x8034B2B8,
    0x8034B3E0, 0x8034B508, 0x8034B630, 0x8034B758,
    0x8034B880, 0x8034B9A8, 0x8034BAD0, 0x8034BBF8,
    0x8034BD20, 0x8034BE48, 0x8034BF70, 0x8034C098,
    0x8034C1C0, 0x8034C2E8, 0x8034C410, 0x8034C538,
};

s32 D_801B6044_79DE84[] = {
    0x8034C660, 0x8034C788, 0x8034C8B0, 0x8034C9D8,
    0x8034CB00, 0x8034CC28, 0x8034CD50, 0x8034CE78,
    0x8034CFA0, 0x8034D0C8, 0x8034D1F0, 0x8034D318,
    0x8034D440, 0x8034D568, 0x8034D690, 0x8034D7B8,
    0x8034D8E0, 0x8034DA08, 0x8034DB30, 0x8034DC58,
    0x8034DD80, 0x8034DEA8, 0x8034DFD0, 0x8034E0F8,
};

Vtx D_801B60A8_79DEE8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { 0, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { 0, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { 0, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { 0, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B61A8_79DFE8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x1000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x1000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B62A8_79E0E8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x1000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x1000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B63A8_79E1E8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { 0, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { 0, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B64A8_79E2E8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { 0, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { 0, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { 0x800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { 0x800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B65A8_79E3E8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { 0x800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { 0x800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { 0x1000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { 0x1000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B66A8_79E4E8[] = {
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { 0x1000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { 0x1000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { 0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, 0x180 }, 0, { 0x3000, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, 0x180 }, 0, { 0x3000, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B67A8_79E5E8[] = {
    { { { -0xC0, -0x20, -0x180 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0x180 }, 0, { -0x1000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x1000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0x180 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6868_79E6A8[] = {
    { { { -0xC0, -0x20, -0x180 }, 0, { -0x3000, -0x1800 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0x180 }, 0, { -0x1800, -0x1800 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x1800, -0x1800 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x20, -0x180 }, 0, { -0x3000, -0x1800 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x20, -0xC0 }, 0, { -0x3000, -0x1000 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x1800, -0x1000 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x1800, -0x1000 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x20, -0xC0 }, 0, { -0x3000, -0x1000 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B68E8_79E728[] = {
    { { { -0x80, -0x20, -0x180 }, 0, { -0x1000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0x180 }, 0, { -0x800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x1000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B69A8_79E7E8[] = {
    { { { -0x80, -0x20, -0x180 }, 0, { -0x3000, -0x1000 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0x180 }, 0, { -0x1800, -0x1000 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x1800, -0x1000 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, 0x20, -0x180 }, 0, { -0x3000, -0x1000 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x80, -0x20, -0xC0 }, 0, { -0x3000, -0x800 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x1800, -0x800 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x1800, -0x800 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x80, 0x20, -0xC0 }, 0, { -0x3000, -0x800 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6A28_79E868[] = {
    { { { -0x40, -0x20, -0x180 }, 0, { -0x800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0x180 }, 0, { 0, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { 0, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6AE8_79E928[] = {
    { { { -0x40, -0x20, -0x180 }, 0, { -0x3000, -0x800 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0x180 }, 0, { -0x1800, -0x800 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { -0x1800, -0x800 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, 0x20, -0x180 }, 0, { -0x3000, -0x800 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x40, -0x20, -0xC0 }, 0, { -0x3000, 0 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { -0x1800, 0 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { -0x1800, 0 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x40, 0x20, -0xC0 }, 0, { -0x3000, 0 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6B68_79E9A8[] = {
    { { { 0, -0x20, -0x180 }, 0, { 0, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0x180 }, 0, { 0x800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { 0x800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { 0, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6C28_79EA68[] = {
    { { { 0, -0x20, -0x180 }, 0, { -0x3000, 0 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0x180 }, 0, { -0x1800, 0 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { -0x1800, 0 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0, 0x20, -0x180 }, 0, { -0x3000, 0 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0, -0x20, -0xC0 }, 0, { -0x3000, 0x800 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { -0x1800, 0x800 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { -0x1800, 0x800 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0, 0x20, -0xC0 }, 0, { -0x3000, 0x800 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6CA8_79EAE8[] = {
    { { { 0x40, -0x20, -0x180 }, 0, { 0x800, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0x180 }, 0, { 0x1000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { 0x1000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { 0x800, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6D68_79EBA8[] = {
    { { { 0x40, -0x20, -0x180 }, 0, { -0x3000, 0x800 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0x180 }, 0, { -0x1800, 0x800 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { -0x1800, 0x800 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, 0x20, -0x180 }, 0, { -0x3000, 0x800 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x40, -0x20, -0xC0 }, 0, { -0x3000, 0x1000 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { -0x1800, 0x1000 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { -0x1800, 0x1000 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x40, 0x20, -0xC0 }, 0, { -0x3000, 0x1000 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6DE8_79EC28[] = {
    { { { 0x80, -0x20, -0x180 }, 0, { 0x1000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0x180 }, 0, { 0x1800, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0x180 }, 0, { 0x1800, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { 0x1000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0x180 }, 0, { -0x3000, 0x400 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { -0x3000, -0x400 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x400 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { -0x1800, -0x400 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B6EA8_79ECE8[] = {
    { { { 0x80, -0x20, -0x180 }, 0, { -0x3000, 0x1000 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x20, -0x180 }, 0, { -0x1800, 0x1000 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x20, -0x180 }, 0, { -0x1800, 0x1000 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, 0x20, -0x180 }, 0, { -0x3000, 0x1000 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { 0x80, -0x20, -0xC0 }, 0, { -0x3000, 0x1800 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x20, -0xC0 }, 0, { -0x1800, 0x1800 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x20, -0xC0 }, 0, { -0x1800, 0x1800 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { 0x80, 0x20, -0xC0 }, 0, { -0x3000, 0x1800 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Gfx D_801B6F28_79ED68[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B60A8_79DEE8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7020_79EE60[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B61A8_79DFE8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7118_79EF58[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B62A8_79E0E8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7210_79F050[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B63A8_79E1E8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7308_79F148[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B64A8_79E2E8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7400_79F240[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B65A8_79E3E8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B74F8_79F338[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B66A8_79E4E8, 16, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSP1Triangle(5, 6, 4, 0),
    gsSP1Triangle(7, 4, 6, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(13, 14, 9, 0),
    gsSP1Triangle(14, 10, 9, 0),
    gsSP1Triangle(15, 12, 11, 0),
    gsSP1Triangle(12, 8, 11, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B75F0_79F430[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B67A8_79E5E8, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B6868_79E6A8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7738_79F578[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B68E8_79E728, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B69A8_79E7E8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7880_79F6C0[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B6A28_79E868, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B6AE8_79E928, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B79C8_79F808[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B6B68_79E9A8, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B6C28_79EA68, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7B10_79F950[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B6CA8_79EAE8, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B6D68_79EBA8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B7C58_79FA98[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B6DE8_79EC28, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265A18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(9, 10, 5, 0),
    gsSP1Triangle(10, 6, 5, 0),
    gsSP1Triangle(11, 8, 7, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsSPVertex(D_801B6EA8_79ECE8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(4, 5, 0, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSP1Triangle(7, 3, 2, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPEndDisplayList(),
};

s32 D_801B7DA0_79FBE0[] = {
    (s32)D_801B6F28_79ED68, (s32)D_801B7020_79EE60, (s32)D_801B7118_79EF58, (s32)D_801B7210_79F050,
    (s32)D_801B7308_79F148, (s32)D_801B7400_79F240, (s32)D_801B74F8_79F338, (s32)D_801B75F0_79F430,
    (s32)D_801B7738_79F578, (s32)D_801B7880_79F6C0, (s32)D_801B79C8_79F808, (s32)D_801B7B10_79F950,
    (s32)D_801B7C58_79FA98,
};

u16 D_801B7DD4_79FC14[] = {
    0, 0, 0, 0, 0, 0, 0, 0x5,
    0x1, 0, 0, 0, 0, 0x6, 0x4, 0,
    0x5, 0, 0x2, 0, 0, 0, 0x4, 0,
    0x3, 0, 0x5, 0, 0x2, 0, 0x4, 0,
    0x3, 0x6, 0, 0, 0, 0x3, 0x1, 0x3,
    0x6, 0x2, 0x4, 0x1, 0x6, 0x2, 0, 0x6,
    0x2, 0x4, 0x6, 0x4, 0, 0, 0, 0,
    0, 0, 0, 0,
};

u16 D_801B7E4C_79FC8C[] = {
    0, 0, 0, 0, 0, 0, 0, 0x5,
    0x1, 0, 0, 0, 0, 0x6, 0x4, 0,
    0x5, 0, 0x2, 0, 0, 0, 0x4, 0,
    0x3, 0, 0x5, 0, 0x2, 0, 0x4, 0,
    0x3, 0x6, 0, 0, 0, 0x3, 0x1, 0x3,
    0x6, 0x2, 0x4, 0x1, 0x6, 0x2, 0, 0x6,
    0x2, 0x4, 0x6, 0x4, 0x5, 0, 0x2, 0,
    0, 0, 0x4, 0, 0x3, 0, 0x5, 0,
    0x2, 0x4, 0x6, 0x4, 0, 0, 0, 0x5,
};

u16 D_801B7EDC_79FD1C[] = {
    0, 0, 0, 0, 0, 0, 0, 0x5,
    0x1, 0, 0, 0, 0, 0x6, 0x4, 0,
    0x5, 0, 0x2, 0, 0, 0, 0x4, 0,
    0x3, 0, 0x5, 0, 0x2, 0, 0x4, 0,
    0x3, 0x6, 0, 0, 0, 0x3, 0x1, 0x3,
    0x6, 0x2, 0x4, 0x1, 0x6, 0x2, 0, 0x6,
    0x2, 0x4, 0x6, 0x4, 0, 0,
};

Vtx D_801B7F48_79FD88[] = {
    { { { -0xC0, -0x10, 0x80 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x10, 0x80 }, 0, { 0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x10, 0x80 }, 0, { 0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x10, 0x80 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8008_79FE48[] = {
    { { { -0xC0, -0x10, -0xC0 }, 0, { -0x1800, -0x1800 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, -0x10, -0xC0 }, 0, { -0x1800, 0x1800 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0xC0, 0x10, -0xC0 }, 0, { -0x1800, 0x1800 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, 0x10, -0xC0 }, 0, { -0x1800, -0x1800 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0xC0, -0x10, 0x80 }, 0, { 0x1000, -0x1800 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, -0x10, 0x80 }, 0, { 0x1000, 0x1800 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0xC0, 0x10, 0x80 }, 0, { 0x1000, 0x1800 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0xC0, 0x10, 0x80 }, 0, { 0x1000, -0x1800 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8088_79FEC8[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8148_79FF88[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B81C8_7A0008[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8288_7A00C8[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8308_7A0148[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B83C8_7A0208[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8448_7A0288[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8508_7A0348[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8588_7A03C8[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8648_7A0488[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B86C8_7A0508[] = {
    { { { -0x30, -0x10, 0x80 }, 0, { -0x600, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x600, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x600, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { -0x600, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x200 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x200 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x200 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x200 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Vtx D_801B8788_7A05C8[] = {
    { { { -0x30, -0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, -0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0xA6, 0xF7, 0xFF } } },
    { { { 0x30, 0x10, -0xC0 }, 0, { -0x1800, 0x600 }, { 0x5A, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, 0x10, -0xC0 }, 0, { -0x1800, -0x600 }, { 0xA6, 0x5A, 0xF7, 0xFF } } },
    { { { -0x30, -0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, -0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0xA6, 0x9, 0xFF } } },
    { { { 0x30, 0x10, 0x80 }, 0, { 0x1000, 0x600 }, { 0x5A, 0x5A, 0x9, 0xFF } } },
    { { { -0x30, 0x10, 0x80 }, 0, { 0x1000, -0x600 }, { 0xA6, 0x5A, 0x9, 0xFF } } },
};

Gfx D_801B8808_7A0648[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x80266618),
    gsSPVertex(D_801B7F48_79FD88, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80266218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265618, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8008_79FE48, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80265218, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8950_7A0790[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x802684F8),
    gsSPVertex(D_801B8088_79FEC8, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x80267CF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x802678F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8148_79FF88, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x802680F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8A98_7A08D8[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x803D3050),
    gsSPVertex(D_801B81C8_7A0008, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8288_7A00C8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2450, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8BE0_7A0A20[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x803D3050),
    gsSPVertex(D_801B8308_7A0148, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B83C8_7A0208, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2450, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8D28_7A0B68[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x803D3050),
    gsSPVertex(D_801B8448_7A0288, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8508_7A0348, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2450, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8E70_7A0CB0[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x803D3050),
    gsSPVertex(D_801B8588_7A03C8, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8648_7A0488, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2450, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx D_801B8FB8_7A0DF8[] = {
    gsDPPipeSync(),
    gsDPLoadTLUT_pal256((u16*)0x803D3050),
    gsSPVertex(D_801B86C8_7A0508, 12, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(1, 2, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2050, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(5, 10, 9, 0),
    gsSP1Triangle(5, 6, 10, 0),
    gsSP1Triangle(7, 8, 11, 0),
    gsSP1Triangle(7, 4, 8, 0),
    gsSPVertex(D_801B8788_7A05C8, 8, 0),
    gsDPLoadTextureBlock(
        (u8*)0x803D2450, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD
    ),
    gsSP1Triangle(0, 5, 4, 0),
    gsSP1Triangle(0, 1, 5, 0),
    gsSP1Triangle(2, 3, 7, 0),
    gsSP1Triangle(2, 7, 6, 0),
    gsSPEndDisplayList(),
};

f32 D_801B9100_7A0F40[16] = {
    0.25f, 0.1875f, 0.125f, 0.0625f,
    -0.0625f, -0.125f, -0.1875f, -0.25f,
    -0.25f, -0.1875f, -0.125f, -0.0625f,
    0.0625f, 0.125f, 0.1875f, 0.25f,
};

u16 D_801B9140_7A0F80[2] = { ACTORTYPE_CLANBLOB, ACTORTYPE_CLANCER_84 };

u16 D_801B9144_7A0F84[8] = {
    4408, 4504, 4408, 4504,
    4600, 4504, 4600, 4504,
};

u16 D_801B9154_7A0F94[4] = { 0x74, 0xC0, 0x52, 0x8FFF };

u16 D_801B915C_7A0F9C[10] = {
    0x5C, 0x86, 0x72, 0x8FFF, 0, 0, 0, 0, 0, 0,
};

extern u8 func_8001FCA0(u16 actor_index, s16 x, s16 y);
extern void func_8001FEB0(void);
extern s32 Math_PlaneHalf(s32 x, s32 y);
// BUG: incorrect prototype!
extern void func_80033E7C(u16 actor_index, s16 x, s16 y, s16 z, s32 velocity, s32 pos_scale, s32 arg6);
extern void func_80067E50(u16 actor_index, void* arg1);
extern void func_80078418(u16 actor_index);

void func_801B0900_798740(u16 actor_index, f32 delta);
void func_801B0D6C_798BAC(u16 actor_index);
void func_801B1244_799084(u16 actor_index);
void func_801B1B88_7999C8(u16 actor_index);
void func_801B2A54_79A894(u16 actor_index);
void func_801B2BA0_79A9E0(u16 actor_index);
void func_801B3A14_79B854(u16 actor_index);
void func_801B3AF8_79B938(u16 actor_index);
void func_801B3FE8_79BE28(u16 actor_index);
void func_801B480C_79C64C(u16 actor_index);
void func_801B4D60_79CBA0(u16 actor_index);
void func_801B4F48_79CD88(u16 actor_index);
void func_801B5100_79CF40(u16 actor_index);

void func_801B0900_798740(u16 actor_index, f32 delta) {
    s16 angle;
    f32 radius;

    gActors[actor_index].unk_14C = gActors[gActors[actor_index].var_158].unk_14C + delta;
    angle = gActors[actor_index].unk_14C * 2.84;

    radius = D_801B5E4A_79DC8A[gActors[actor_index].var_15C];
    gActors[actor_index].posX.whole = (COS(angle) * radius) + gActors[gActors[actor_index].var_158].posX.whole;
    gActors[actor_index].posY.whole = (SIN(angle) * radius) + gActors[gActors[actor_index].var_158].posY.whole;

    gActors[actor_index].rotateZ = gActors[actor_index].unk_14C + 90.0;

    gActors[actor_index].unk_184 = ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) - (s32)gActors[actor_index].unk_114) * FIXED_UNIT(0.25);
    gActors[actor_index].unk_188 = ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) - (s32)gActors[actor_index].unk_118) * FIXED_UNIT(0.25);

    if (gActors[actor_index].unk_184 > FIXED_UNIT(4.0)) {
        gActors[actor_index].unk_184 = FIXED_UNIT(2.0);
    }
    if (gActors[actor_index].unk_184 < FIXED_UNIT(-4.0)) {
        gActors[actor_index].unk_184 = FIXED_UNIT(-2.0);
    }
    if (gActors[actor_index].unk_188 > FIXED_UNIT(3.0)) {
        gActors[actor_index].unk_188 = FIXED_UNIT(1.0);
    }
    if (gActors[actor_index].unk_188 < FIXED_UNIT(-3.0)) {
        gActors[actor_index].unk_188 = FIXED_UNIT(-1.0);
    }

    gActors[actor_index].unk_114 = gActors[actor_index].unk_11C;
    gActors[actor_index].unk_118 = gActors[actor_index].unk_120;
    gActors[actor_index].unk_11C = gActors[actor_index].unk_124;
    gActors[actor_index].unk_120 = gActors[actor_index].unk_12C;
    gActors[actor_index].unk_124 = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
    gActors[actor_index].unk_12C = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);
    gActors[actor_index].unk_134 = gActors[actor_index].rotateZ - gActors[actor_index].unk_138;
    gActors[actor_index].unk_138 = gActors[actor_index].rotateZ;
}

f32 func_801B0BA4_7989E4(u16 actor_index, f32 arg1) {
    if (gActors[actor_index].unk_16C != 0) {
        return ((arg1 - 270.0f) / 2) * 0.15;
    }

    return (arg1 - 270.0) * 0.15;
}

s32 func_801B0C40_798A80(u16 actor_index, f32 angle, f32 speed, f32 arg3) {
    u16 table_index;
    f32 absolute_speed;

    if (speed > 0.0f) {
        absolute_speed = speed;
    }
    else {
        absolute_speed = -speed;
    }

    if (0.99 < absolute_speed) {
        table_index = 2;
    }
    else {
        if (speed > 0.0f) {
            absolute_speed = speed;
        }
        else {
            absolute_speed = -speed;
        }

        table_index = 0;
        if (absolute_speed > 0.5) {
            table_index = 1;
        }
        else {
            table_index = 0;
        }
    }

    if (angle >= 270.0f) {
        table_index = 4 - table_index;
    }

    if (arg3 != 0.0f) {
        table_index += 5;
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        return D_801B5DF0_79DC30[9 - table_index];
    }

    return D_801B5DF0_79DC30[table_index];
}

void func_801B0D6C_798BAC(u16 actor_index) {
    s32 timer;
    u16 count;
    u16 child_index;
    u16 index;
    u16 timer_flag;
    f32 delta;

    timer = gActors[actor_index].var_110;
    child_index = (timer >> 8) & 0xF;
    count = timer & 0xF;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    delta = (child_index * 22.5) + 180.0;
    gActors[actor_index].unk_14C = delta;
    gActors[actor_index].var_154 = gActors[actor_index].var_158 = actor_index;
    gActors[actor_index].var_15C = 0;
    gActors[actor_index].unk_164 = 0;
    gActors[actor_index].var_160 = delta;
    index = (timer >> 4) & 0xF;
    child_index = gActors[actor_index].var_0D8;
    gActors[actor_index].unk_130 = (index + 1) * 0.015;
    gActors[actor_index].unk_13C_f32 = gActors[actor_index].unk_130;

    timer_flag = (timer >> 12) & 1;
    for (index = 0; index < count; index++) {
        ACTOR_INIT(child_index, ACTORTYPE_OVL3_W2_CLANCERSWING);
        gActors[child_index].graphicIndex = 0x102C;
        gActors[child_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
        gActors[child_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        gActors[child_index].health = 1;
        gActors[child_index].unk_0DE = 0x10;
        gActors[child_index].hitboxBY0 = 0;
        gActors[child_index].hitboxBY1 = 0;
        gActors[child_index].hitboxBX0 = 0;
        gActors[child_index].hitboxBX1 = 0;
        gActors[child_index].var_154 = actor_index;
        if (timer_flag & 1) {
            gActors[child_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (index == 0) {
            gActors[child_index].var_158 = actor_index;
        }
        else {
            gActors[child_index].var_158 = child_index - 1;
        }

        gActors[child_index].var_15C = index + 1;
        gActors[child_index].unk_17C = 0x1E0;
        gActors[child_index].unk_14C = gActors[gActors[child_index].var_158].unk_14C + delta;
        gActors[child_index].unk_140_f32 = gActors[child_index].unk_14C;
        func_801B0900_798740(child_index, func_801B0BA4_7989E4(child_index, gActors[child_index].unk_14C));
        child_index++;
    }

    gActors[child_index - 1].unk_16C = 1;
    gActors[child_index - 1].graphicIndex = func_801B0C40_798A80(child_index - 1, gActors[child_index - 1].unk_14C, gActors[actor_index].unk_128, gActors[child_index - 1].unk_164);
    gActors[child_index - 1].hitboxBY0 = 0;
    gActors[child_index - 1].hitboxBY1 = 0;
    gActors[child_index - 1].hitboxBX0 = 0;
    gActors[child_index - 1].hitboxBX1 = 0;
}

void func_801B107C_798EBC(u16 actor_index, s32 arg1) {
    s32 divisor;

    if (arg1 != 0) {
        divisor = 0x1E0;
        gActors[actor_index].colorR = ((divisor - arg1) << 7) / divisor;
    }
    else {
        gActors[actor_index].colorR = 0;
    }
}

DEFAULT_INT func_801B1124_798F64(u16 arg0, u16 actor_index) {
    s16 angle;

    gActors[0].parentIndex = actor_index;
    angle = (180.0 - gActors[actor_index].rotateZ) * 2.84;
    gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxBY1 = COS(angle) * gActors[actor_index].unk_170_s16[0];
    gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxBX1 = SIN(angle) * gActors[actor_index].unk_170_s16[0];
}

void func_801B1244_799084(u16 actor_index) {
    Actor* actor;
    Actor* target;
    u16 target_index;
    s32 angle;
    f32 loop_angle;
    f32 original_angle;
    f32 upper_angle;
    f32 lower_angle;
    f32 delta;
    s32 new_var;
    f32 step;
    u16 count;

    delta = 0.0f;
    actor = &gActors[actor_index];
    target_index = actor->var_154;
    target = &gActors[target_index];
    angle = target->var_160;
    original_angle = target->unk_14C;
    loop_angle = original_angle;

    new_var = angle;
    if (new_var < 270.0) {
        lower_angle = new_var;
        upper_angle = (270.0f - lower_angle) + 270.0f;
    }
    else {
        upper_angle = angle;
        lower_angle = 270.0f - (upper_angle - 270.0f);
    }

    if (target->unk_164 != 0) {
        count = 0;
        if (target->unk_14C <= lower_angle) {
            target->unk_14C = lower_angle;
            return;
        }

        step = target->unk_130;
        loop_angle = upper_angle;
        for (count = 0; count < 0x78; count++) {
            if (loop_angle >= 270.0f) {
                delta -= step;
            }
            else {
                delta += step;
            }
            loop_angle += delta;
            if (loop_angle <= original_angle) {
                break;
            }
        }
        target->unk_128 = delta;
    }
    else {
        count = 0;
        if (upper_angle <= target->unk_14C) {
            target->unk_14C = upper_angle;
            return;
        }

        step = target->unk_130;
        loop_angle = lower_angle;
        for (count = 0; count < 0x78; count++) {
            if (loop_angle >= 270.0f) {
                delta -= step;
            }
            else {
                delta += step;
            }
            loop_angle += delta;
            if (original_angle <= loop_angle) {
                break;
            }
        }
        target->unk_128 = delta;
    }
}

void func_801B13D8_799218(u16 actor_index) {
    u16 target_index = gActors[actor_index].var_154;

    gActors[target_index].unk_130 += 0.015;
    if (0.6 < gActors[target_index].unk_130) {
        gActors[target_index].unk_130 = 0.6f;
    }
    func_801B1244_799084(actor_index);
}

void func_801B1484_7992C4(u16 actor_index) {
    u16 target_index = gActors[actor_index].var_154;

    gActors[target_index].unk_130 -= 0.015;
    if (gActors[target_index].unk_130 < 0.02) {
        gActors[target_index].unk_130 = 0.02f;
    }
    func_801B1244_799084(actor_index);
}

DEFAULT_INT func_801B1530_799370(u16 actor_index) {
    Actor* actor;

    actor = &gActors[actor_index];
    if (actor->flags_098 & ACTOR_FLAG3_UNK17) {
        if (gActors[actor->var_154].unk_114 == 0.0f) {
            if (func_800486F4() == 0) {
                if (actor->var_15C == 1) {
                    if (actor->var_150 < 0) {
                        actor->var_150 = 0;
                    }

                    if (actor->unk_170_s16[0] >= 0x11) {
                        actor->var_150 = FIXED_UNIT(16.0);
                    }
                    else {
                        if (actor->unk_170_s16[0] > 0) {
                            actor->var_150 = 0;
                        }
                        else {
                            actor->var_150 = 0;
                        }
                    }
                }
                else {
                    if (actor->unk_170_s16[0] >= 0x11) {
                        actor->var_150 = FIXED_UNIT(16.0);
                    }
                    else if (actor->unk_170_s16[0] > 0) {
                        actor->var_150 = 0;
                    }
                    else if (actor->unk_170_s16[0] >= -0xF) {
                        actor->var_150 = FIXED_UNIT(-16.0);
                    }
                    else {
                        actor->var_150 = FIXED_UNIT(-32.0);
                    }
                }
            }

            if (func_800486F4() == 8) {
                if (actor->unk_16C != 0) {
                    if (actor->unk_170_s16[0] < -0x10) {
                        actor->var_150 = FIXED_UNIT(-16.0);
                    }
                    else if (actor->unk_170_s16[0] < 0) {
                        actor->var_150 = 0;
                    }
                    else {
                        actor->var_150 = 0;
                    }
                }
                else {
                    if (actor->unk_170_s16[0] < -0x10) {
                        actor->var_150 = FIXED_UNIT(-16.0);
                    }
                    else if (actor->unk_170_s16[0] < 0) {
                        actor->var_150 = 0;
                    }
                    else if (actor->unk_170_s16[0] < 0x10) {
                        actor->var_150 = FIXED_UNIT(16.0);
                    }
                    else {
                        actor->var_150 = FIXED_UNIT(32.0);
                    }
                }
            }

            if (func_800486F4() == 4) {
                if (gActors[actor->var_154].unk_164 != 0) {
                    func_801B1484_7992C4(actor_index);
                }
                else {
                    func_801B13D8_799218(actor_index);
                }
            }

            if (func_800486F4() == 0xC) {
                if (gActors[actor->var_154].unk_164 != 0) {
                    func_801B13D8_799218(actor_index);
                }
                else {
                    func_801B1484_7992C4(actor_index);
                }
            }

            gActors[actor->var_154].unk_114 = 1.0f;
        }
    }

    if (gActors[actor->var_154].unk_114 == 0.0f) {
        actor->unk_170 = Math_ApproachS32(actor->unk_170, actor->var_150, FIXED_UNIT(2.5));
        if (actor->unk_170_s16[0] < -0x18) {
            gActors[actor_index - 1].unk_170 = FIXED_UNIT(24.0);
            func_801B1124_798F64(actor_index, actor_index - 1);
            gActors[actor_index - 1].var_150 = FIXED_UNIT(16.0);
            actor->var_150 = 0;
            return 1;
        }

        if (actor->unk_170_s16[0] >= 0x19) {
            gActors[actor_index + 1].unk_170 = FIXED_UNIT(-24.0);
            func_801B1124_798F64(actor_index, actor_index + 1);
            gActors[actor_index + 1].var_150 = FIXED_UNIT(-16.0);
            actor->var_150 = 0;
            gActors[actor_index + 1].flags_098 |= ACTOR_FLAG3_UNK9;
            return 1;
        }
    }
}

s32 func_801B1988_7997C8(u16 actor_index) {
    u16 index;

    for (index = actor_index;; index++) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            return 1;
        }

        if (gActors[index].unk_16C == 0) {
            continue;
        }

        return 0;
    }
}

void func_801B1A18_799858(u16 actor_index) {
    u16 index;
    s32 flags;

    if (gActors[actor_index].var_15C == 0) {
        index = actor_index;

        if (gActors[index].unk_16C == 1) {
        }

        flags = 0;
        do {
            flags |= gActors[index].flags_098;
            if (gActors[index].unk_16C == 1) {
                break;
            }
            index++;
        } while (1);

        flags &= ACTOR_FLAG3_UNK9;
        if ((gActors[actor_index].unk_174 - flags) != 0) {
            if (flags != 0) {
                Sound_PlaySfxAtActor2(0x67, actor_index);
            }
        }
        gActors[actor_index].unk_174 = flags;
    }
}

void func_801B1AD4_799914(u16 actor_index) {
    if (Rand() & 1) {
        SpawnParticle_List_90C0_16(D_800E20C4, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
    else {
        SpawnParticle_List_90C0_16(D_800E20E0, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
}

void func_801B1B88_7999C8(u16 actor_index) {
    u16 current_index;
    s16 angle;

    switch (gActors[actor_index].state) {
        case 0:
            if (gActors[actor_index].var_15C == 0) {
                func_801B0D6C_798BAC(actor_index);
            }
            gActors[actor_index].state++;

        case 1:
            if (gActors[actor_index].var_15C == 0) {
                if (gActors[actor_index].unk_164 != 0) {
                    if (gActors[actor_index].unk_14C >= 270.0f) {
                        gActors[actor_index].unk_128 -= gActors[actor_index].unk_130;
                    }
                    else {
                        gActors[actor_index].unk_128 += gActors[actor_index].unk_130;
                        if (gActors[actor_index].unk_128 >= 0.0f) {
                            gActors[actor_index].unk_128 = 0.0f;
                            gActors[actor_index].unk_164 ^= 1;
                        }
                    }
                }
                else if (gActors[actor_index].unk_14C <= 270.0f) {
                    gActors[actor_index].unk_128 += gActors[actor_index].unk_130;
                }
                else {
                    gActors[actor_index].unk_128 -= gActors[actor_index].unk_130;
                    if (gActors[actor_index].unk_128 <= 0.0f) {
                        gActors[actor_index].unk_128 = 0.0f;
                        gActors[gActors[actor_index].var_154].unk_164 ^= 1;
                    }
                }
                gActors[actor_index].unk_14C += gActors[actor_index].unk_128;
                if ((func_801B1988_7997C8(actor_index) == 0) && (gActors[actor_index].unk_128 == 0.0f)) {
                    gActors[actor_index].unk_130 = Math_ApproachF32(gActors[actor_index].unk_130, gActors[actor_index].unk_13C_f32, 0.015f);
                }
                gActors[actor_index].unk_114 = 0.0f;
            }
            else {
                func_801B0900_798740(actor_index, func_801B0BA4_7989E4(actor_index, gActors[actor_index].unk_14C));
            }

            if (gActors[actor_index].unk_16C != 0) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                    gActors[actor_index].graphicIndex = 0x102C;
                }
                else {
                    gActors[actor_index].graphicIndex = func_801B0C40_798A80(
                            actor_index,
                            gActors[gActors[actor_index].var_154].unk_14C,
                            gActors[gActors[actor_index].var_154].unk_128,
                            gActors[gActors[actor_index].var_154].unk_164
                        );
                }
                gActors[actor_index].unk_140_f32 = (gActors[actor_index].unk_14C + func_801B0BA4_7989E4(actor_index, gActors[actor_index].unk_14C)) + 90.0;
            }
            else {
                gActors[actor_index].unk_140_f32 = gActors[actor_index].unk_14C + 90.0;
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                func_801B1530_799370(actor_index);

                do {
                    angle = (180.0 - gActors[actor_index].rotateZ) * 2.84;
                    gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxBY1 = COS(angle) * gActors[actor_index].unk_170_s16[0];
                    gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxBX1 = SIN(angle) * gActors[actor_index].unk_170_s16[0];
                    current_index = (actor_index - gActors[actor_index].var_15C) + 1;
                    while (actor_index >= current_index) {
                        func_80033E7C(current_index, gActors[current_index].posX.whole, gActors[current_index].posY.whole + 16, gActors[current_index].posZ.whole, 1, FIXED_UNIT(9.0), 8);
                        current_index++;
                    }

                    gActors[actor_index].unk_17C--;
                } while (0);

                if (gActors[actor_index].unk_17C == 0) {
                    gActors[actor_index].health = 0;
                    D_800BE544 = 0;
                    gActors[actor_index].flags &= ~ACTOR_FLAG_ATTACHED;
                    gActors[gActors[actor_index].var_158].unk_16C = 1;
                    gActors[actor_index].hitboxBX0 = -0x10;
                    gActors[actor_index].hitboxBX1 = 0x10;
                    gActors[actor_index].hitboxBY1 = -0x10;
                    gActors[actor_index].hitboxBY0 = 0x10;
                    for (current_index = actor_index;; current_index++) {
                        gActors[current_index].velocityX.raw = gActors[current_index].unk_184;
                        gActors[current_index].velocityY.raw = gActors[current_index].unk_188;
                        gActors[current_index].unk_134 *= Rand() * 0.0299999999999999989;
                        gActors[current_index].graphicTimer = 1;
                        gActors[current_index].graphicList = D_801B5E08_79DC48;
                        gActors[current_index].state = 3;
                        gActors[current_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8;
                        if (gActors[current_index].unk_16C != 0) {
                            break;
                        }
                    }
                    Sound_PlaySfxAtActor2(0xA1, actor_index);
                }
                func_801B107C_798EBC(actor_index, gActors[actor_index].unk_17C);
                if (gActors[actor_index].unk_17C < 0x3D) {
                    if (gActors[actor_index].unk_17C & 4) {
                        gActors[actor_index].colorR = 0;
                    }
                }
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_ATTACHED;
                gActors[actor_index].unk_17C = 0x1E0;
                func_801B107C_798EBC(actor_index, 0x1E0);
                gActors[actor_index].hitboxBX0 = -0x10;
                gActors[actor_index].hitboxBX1 = 0x10;
                gActors[actor_index].hitboxBY1 = -0x10;
                gActors[actor_index].hitboxBY0 = 0x10;
            }

            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(0.125);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4.5);
            if (gButtonHold & gButton_DLeft) {
                gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
            }

            break;

        case 3:
            func_80033E7C(current_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 16, gActors[actor_index].posZ.whole, 1, FIXED_UNIT(9.0), 8);
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8.0)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
            }

            gActors[actor_index].rotateZ += gActors[actor_index].unk_134;

            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[actor_index].unk_0DD == 0x13)) {
                Sound_PlaySfxAtActor2(0x9D, actor_index);
                gActors[actor_index].flags = 0;
                gActors[actor_index].health = 0;
            }
            else if (gActors[actor_index].posY.whole < -256) {
                gActors[actor_index].flags = 0;
                gActors[actor_index].health = 0;
            }
            else if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].flags = 0;
                gActors[actor_index].health = 0;
                func_801B1AD4_799914(actor_index);
            }

            break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    func_801B1A18_799858(actor_index);
}

void func_801B2334_79A174(u16 actor_index) {
    u16 target_index;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
            // fallthrough
        case 1:
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 122;
            target_index = gActors[0].parentIndex;
            if (gActors[0].posY.whole >= 75) {
                if (((gActors[target_index].flags & ACTOR_FLAG_ACTIVE) == 0) || ((gActors[target_index].flags_098 & ACTOR_FLAG3_UNK9) == 0)) {
                    gActors[0].posY.whole = 75;
                }
            }
            break;
    }
}

DEFAULT_INT func_801B23EC_79A22C(u16 actor_index, u16 arg1) {
    s32 angle;

    angle = Math_PlaneHalf(gActors[D_800E3580].posX.whole - gActors[actor_index].posX.whole,
                           gActors[D_800E3580].posY.whole - gActors[actor_index].posY.whole);
    func_8002EBB8(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole,
                  COS(angle) * FIXED_UNIT(2.875),
                  SIN(angle) * FIXED_UNIT(2.875));
}

void func_801B24F0_79A330(u16 actor_index) {
    if (((gActors[actor_index].var_0D8 & 0xF) == 1) && (func_80029B00(0xC0, 0x40, -0x40) != 0)) {
        Actor* actor = &gActors[actor_index];

        if (gScreenPosCurrentY.whole + actor->posY.whole < 360) {
            actor->unk_174_u16[1]++;
            actor->state = 0x120;
            actor->unk_120 = 0.0f;
            actor->unk_11C = (f32)FIXED_UNIT(5.0);
        }

        gActors[actor_index].unk_174_u16[0]++;
        if (gActors[actor_index].unk_174_u16[0] >= 10) {
            if (func_80029B00(0x40, 0x40, -0x40) == 0) {
                gActors[actor_index].pfn_158 = func_801B23EC_79A22C;
                gActors[actor_index].state = 0x3A0;
                gActors[actor_index].unk_174_u16[0] = 0;
            }
        }
    }
    else {
        Actor* actor = &gActors[actor_index];

        if (gScreenPosCurrentY.whole + actor->posY.whole < 368) {
            actor->unk_174_u16[1]++;
            actor->state = 0x120;
            actor->unk_118 = 0.0f;
            actor->unk_11C = (f32)FIXED_UNIT(5.0);
        }
    }
}

void func_801B2638_79A478(u16 actor_index) {
    func_8007325C(actor_index);
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E1700);
            }

            switch (gActors[actor_index].unk_174_u16[1]) {
                case 0:
                    func_801B24F0_79A330(actor_index);
                    break;

                case 1:
                    if (gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole) >= 384) {
                        gActors[actor_index].unk_174_u16[1] = 0;
                    }
                    else {
                        gActors[actor_index].state = 0x120;
                        gActors[actor_index].unk_120 = 0.0f;
                        gActors[actor_index].unk_11C = (f32)FIXED_UNIT(5.0);
                    }
                    break;
            }

            if ((func_80073320(actor_index) & 0x8000) == 0) {
                if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                }
            }
            break;

        case 0x91:
            func_80073320(actor_index);
            gActors[actor_index].unk_118 = 0.5f;
            break;

        case 0x161:
            if (gActors[actor_index].var_150 & 0x40000) {
                gActors[actor_index].unk_174_u16[1] = 0;
            }
            break;
    }

    if (gActors[actor_index].unk_174_u16[1] > 0) {
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole - 1,
            FIXED_UNIT(1.5),
            FIXED_UNIT(8.0),
            3
        );
    }
}

void func_801B2808_79A648(u16 actor_index) {
}

void func_801B2810_79A650(u16 actor_index) {
}

void func_801B2818_79A658(u16 actor_index) {
}

void func_801B2820_79A660(u16 actor_index) {
}

void func_801B2828_79A668(u16 actor_index) {
}

void func_801B2830_79A670(u16 actor_index) {
    if (gActors[actor_index].unk_170 != 0) {
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9)) {
            gActors[actor_index].unk_170 = 0;
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        Sound_PlaySfx(0x89);
        gActors[actor_index].unk_170 = 1;
    }

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK8;
            gActors[actor_index].graphicIndex = 0;
            gActors[actor_index].unk_0DE = 4;
            gActors[actor_index].unk_0DF = 0x40;
            gActors[actor_index].unk_17C = D_801B5E64_79DCA4[gActors[actor_index].var_0D8];
            gActors[actor_index].hitboxBX0 = -0x30;
            gActors[actor_index].hitboxBX1 = 0x30;
            if (gActors[actor_index].var_110 != 0.0f) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[actor_index].posZ.whole = -240;
                gActors[actor_index].unk_188 = 0;
            }
            else {
                gActors[actor_index].posZ.whole = 0;
            }

            if (gActors[actor_index].var_110 == 2.0f) {
                gActors[actor_index].scaleY = 1.0f;
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                gActors[actor_index].scaleX = 2.0f;
                gActors[actor_index].hitboxBX0 = -0x60;
                gActors[actor_index].hitboxBX1 = 0x60;
            }

            if (D_801B5EE4_79DD24[gActors[actor_index].var_0D8] > 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM1;
                gActors[actor_index].hitboxBY0 = D_801B5EE4_79DD24[gActors[actor_index].var_0D8];
                if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) == 330) {
                    gActors[actor_index].hitboxBY1 = -0x40;
                }
                else {
                    gActors[actor_index].hitboxBY1 = 0;
                }
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM1;
                gActors[actor_index].hitboxBY1 = D_801B5EE4_79DD24[gActors[actor_index].var_0D8] + 0xB0;
                if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) == 330) {
                    gActors[actor_index].hitboxBY0 = 0xF0;
                }
                else {
                    gActors[actor_index].hitboxBY0 = 0xB0;
                }
            }

            gActors[actor_index].state++;
            break;

        case 1:
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B2A54_79A894(u16 actor_index) {
    s16* values;
    s16 position;
    s16 offset;

    gActors[actor_index].hitboxBY0 = FROM_FIXED(gActors[actor_index].var_158);
    if (gActors[actor_index].hitboxBY0 <= 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    }

    if (gActiveFrames & 1) {
        gActors[actor_index].unk_17C = D_801B5FE4_79DE24[gActors[actor_index].var_0D8];
        values = D_801B5F24_79DD64[gActors[actor_index].var_0D8];
    }
    else {
        gActors[actor_index].unk_17C = D_801B6044_79DE84[gActors[actor_index].var_0D8];
        values = D_801B5F84_79DDC4[gActors[actor_index].var_0D8];
    }

    position = gActors[actor_index].hitboxBY0;
    values[185] = position;
    values[177] = position;
    values[153] = position;
    values[145] = position;
    values[121] = position;
    values[113] = position;
    values[89] = position;
    values[81] = position;
    values[57] = position;
    values[49] = position;
    values[25] = position;
    values[17] = position;
    offset = gActors[actor_index].hitboxBY0 << 6;
    values[109] = offset;
    values[101] = offset;
    values[77] = offset;
    values[69] = offset;
    values[45] = offset;
    values[37] = offset;
    values[13] = offset;
    values[5] = offset;
}

void func_801B2BA0_79A9E0(u16 actor_index) {
    s16* values;
    s16 position;
    s16 offset;

    gActors[actor_index].hitboxBY1 = FROM_FIXED(gActors[actor_index].var_158);
    if (gActiveFrames & 1) {
        gActors[actor_index].unk_17C = D_801B5FE4_79DE24[gActors[actor_index].var_0D8];
        values = D_801B5F24_79DD64[gActors[actor_index].var_0D8];
    }
    else {
        gActors[actor_index].unk_17C = D_801B6044_79DE84[gActors[actor_index].var_0D8];
        values = D_801B5F84_79DDC4[gActors[actor_index].var_0D8];
    }

    position = gActors[actor_index].hitboxBY1;
    values[169] = position;
    values[161] = position;
    values[137] = position;
    values[129] = position;
    values[105] = position;
    values[97] = position;
    values[73] = position;
    values[65] = position;
    values[41] = position;
    values[33] = position;
    values[9] = position;
    values[1] = position;
    if (gActors[actor_index].hitboxBY1 < -0x5F) {
        s16 inner_offset;

        inner_offset = gActors[actor_index].hitboxBY1 + 0x60;
        values[185] = inner_offset;
        values[177] = inner_offset;
        values[153] = inner_offset;
        values[145] = inner_offset;
        values[121] = inner_offset;
        values[113] = inner_offset;
        values[89] = inner_offset;
        values[81] = inner_offset;
        values[57] = inner_offset;
        values[49] = inner_offset;
        values[25] = inner_offset;
        values[17] = inner_offset;
        return;
    }

    values[185] = 0;
    position = values[185];
    values[177] = position;
    values[153] = position;
    values[145] = position;
    values[121] = position;
    values[113] = position;
    values[89] = position;
    values[81] = position;
    values[57] = position;
    values[49] = position;
    values[25] = position;
    values[17] = position;
    offset = gActors[actor_index].hitboxBY1 << 6;
    values[125] = offset;
    values[117] = offset;
    values[93] = offset;
    values[85] = offset;
    values[61] = offset;
    values[53] = offset;
    values[29] = offset;
    values[21] = offset;
}

void func_801B2D40_79AB80(u16 actor_index, u32 flags) {
    s8 state;

    if ((flags & ACTOR_FLAG3_UNK9) && (flags & ACTOR_FLAG3_UNK17)) {
        state = D_801373E0.unk_10;
        if ((state >= 2) && (state < 7)) {
            gActors[actor_index].velocityX.raw = (-D_801373E0.unk_0E) * FIXED_UNIT(0.001953125) + FIXED_UNIT(1.953125);
        }
        else if ((state >= 10) && (state < 15)) {
            gActors[actor_index].velocityX.raw = -(-D_801373E0.unk_0E) * FIXED_UNIT(0.001953125) - FIXED_UNIT(1.953125);
        }

        if ((state >= 6) && (state < 11)) {
            gActors[actor_index].unk_164 = 0x10;
            gActors[actor_index].unk_168 = 0;
        }
        else if ((state < 3) || (state >= 14)) {
            gActors[actor_index].unk_164 = 0x10;
            gActors[actor_index].unk_168 = 1;
        }
    }

    if (gActors[actor_index].unk_164 != 0) {
        gActors[actor_index].unk_164--;
        if (gActors[actor_index].unk_168 != 0) {
            gActors[actor_index].var_158 = (gActors[actor_index].var_158 - D_800BE668 * D_800BE668) + FIXED_UNIT(0.1875);
        }
        else {
            gActors[actor_index].var_158 = (gActors[actor_index].var_158 - D_800BE668 * D_800BE668) - FIXED_UNIT(0.3125);
        }
    }
    else {
        gActors[actor_index].var_158 = (gActors[actor_index].var_158 - D_800BE668 * D_800BE668) - FIXED_UNIT(0.0625);
    }

    if (gActors[actor_index].var_160 < gActors[actor_index].var_158) {
        gActors[actor_index].var_158 = gActors[actor_index].var_160;
    }
}

void func_801B2F2C_79AD6C(u16 actor_index) {
    gActors[actor_index].unk_16C = gActors[actor_index].flags_098;
    gActors[actor_index].unk_170 = gActors[actor_index].var_158;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK8;
            gActors[actor_index].graphicIndex = 0;
            gActors[actor_index].unk_0DE = 4;
            gActors[actor_index].unk_0DF = 0x40;
            gActors[actor_index].unk_17C = D_801B5FE4_79DE24[gActors[actor_index].var_0D8];

            if (gActors[actor_index].var_0D8 == 0) {
                gActors[actor_index].hitboxBX0 = -0x60;
                gActors[actor_index].hitboxBX1 = 0x60;
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[actor_index].unk_188 = 0;
                if (actor_index < 0x80) {
                    gActors[actor_index].posZ.whole = -240;
                }
                else {
                    gActors[actor_index].posZ.whole = -256;
                }
            }
            else if (gActors[actor_index].var_0D8 == 0xC) {
                gActors[actor_index].hitboxBX0 = -0x60;
                gActors[actor_index].hitboxBX1 = 0x60;
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[actor_index].posZ.whole = -256;
                gActors[actor_index].unk_188 = 0;
            }
            else {
                gActors[actor_index].hitboxBX0 = -0x30;
                gActors[actor_index].hitboxBX1 = 0x30;
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[actor_index].posZ.whole = -256;
                gActors[actor_index].unk_188 = 0;
            }

            if (gActors[actor_index].var_0D8 < 0xC) {
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM1 | ACTOR_FLAG_UNK16;
                gActors[actor_index].hitboxBY1 = -0x40;
                gActors[actor_index].hitboxBY0 = 0x30;
                gActors[actor_index].var_154 = FIXED_UNIT(0.5);
                gActors[actor_index].var_158 = TO_FIXED(gActors[actor_index].hitboxBY0);
                gActors[actor_index].var_15C = (s32)gActors[actor_index].var_110 & 0x60;
                gActors[actor_index].var_160 = TO_FIXED(gActors[actor_index].hitboxBY0);
                gActors[actor_index].posZ.whole = -255;
                gActors[actor_index].state = 0xA;
            }
            else {
                gActors[actor_index].hitboxBY1 = -0x30;
                gActors[actor_index].hitboxBY0 = 0;
                gActors[actor_index].var_154 = FIXED_UNIT(0.5);
                gActors[actor_index].var_158 = TO_FIXED(gActors[actor_index].hitboxBY1);
                gActors[actor_index].var_15C = (s32)gActors[actor_index].var_110 & 0x60;
                gActors[actor_index].var_160 = TO_FIXED(gActors[actor_index].hitboxBY1);
                gActors[actor_index].state = 0x14;
            }
            break;

        case 0xA:
            if (gActors[actor_index].var_15C != 0) {
                gActors[actor_index].var_15C--;
                break;
            }

            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                if ((D_800D28E4 != 0xC) || (gStageState >= 4)) {
                    if (gCurrentScene == 0x3E) {
                        gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
                    }
                    gActors[actor_index].unk_164 = 0;
                    gActors[actor_index].state += 2;
                }
            }
            else {
                gActors[actor_index].var_154 -= FIXED_UNIT(0.015625);
                gActors[actor_index].var_158 = gActors[actor_index].var_158 - (0 - gActors[actor_index].var_154);
                if (gActors[actor_index].var_154 == FIXED_UNIT(-0.5)) {
                    gActors[actor_index].state++;
                }
            }

            func_801B2A54_79A894(actor_index);
            break;

        case 0xB:
            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                if (gCurrentScene == 0x3E) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
                }
                gActors[actor_index].unk_164 = 0;
                gActors[actor_index].state++;
            }
            else {
                gActors[actor_index].var_154 += FIXED_UNIT(0.015625);
                gActors[actor_index].var_158 = gActors[actor_index].var_158 - (0 - gActors[actor_index].var_154);
                if (gActors[actor_index].var_154 == FIXED_UNIT(0.5)) {
                    gActors[actor_index].state--;
                }
            }

            func_801B2A54_79A894(actor_index);
            break;

        case 0xC:
            func_801B2D40_79AB80(actor_index, gActors[actor_index].flags_098);
            func_801B2A54_79A894(actor_index);
            if ((gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) == 0) {
                gActors[actor_index].state++;
            }
            break;

        case 0xD:
            gActors[actor_index].var_158 = (gActors[actor_index].var_158 + FIXED_UNIT(0.25)) + ((D_800BE668 * D_800BE668) * 6);
            func_801B2A54_79A894(actor_index);
            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                gActors[actor_index].state--;
            }

            if (gActors[actor_index].var_160 < gActors[actor_index].var_158) {
                gActors[actor_index].var_154 = FIXED_UNIT(0.5);
                gActors[actor_index].var_158 = gActors[actor_index].var_160;
                gActors[actor_index].state = 0xA;
            }
            break;

        case 0x14:
            gActors[actor_index].posX.whole = gActors[actor_index - 0x20].posX.whole;
            if (gActors[actor_index].var_15C != 0) {
                gActors[actor_index].var_15C--;
                break;
            }

            if (gActors[actor_index - 0x20].unk_16C & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                gActors[actor_index].state += 2;
            }
            else {
                gActors[actor_index].var_154 -= FIXED_UNIT(0.015625);
                gActors[actor_index].var_158 += gActors[actor_index].var_154;
                if (gActors[actor_index].var_154 == FIXED_UNIT(-0.5)) {
                    gActors[actor_index].state++;
                }
            }

            func_801B2BA0_79A9E0(actor_index);
            break;

        case 0x15:
            gActors[actor_index].posX.whole = gActors[actor_index - 0x20].posX.whole;
            if (gActors[actor_index - 0x20].unk_16C & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                gActors[actor_index].state++;
            }
            else {
                gActors[actor_index].var_154 += FIXED_UNIT(0.015625);
                gActors[actor_index].var_158 += gActors[actor_index].var_154;
                if (gActors[actor_index].var_154 == FIXED_UNIT(0.5)) {
                    gActors[actor_index].state--;
                }
            }

            func_801B2BA0_79A9E0(actor_index);
            break;

        case 0x16:
            gActors[actor_index].posX.whole = gActors[actor_index - 0x20].posX.whole;
            gActors[actor_index].var_158 = (gActors[actor_index].var_158 + gActors[actor_index - 0x20].var_158) - gActors[actor_index - 0x20].unk_170;

            func_801B2BA0_79A9E0(actor_index);

            if ((gActors[actor_index - 0x20].unk_16C & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) == 0) {
                gActors[actor_index].state++;
            }
            break;

        case 0x17:
            gActors[actor_index].posX.whole = gActors[actor_index - 0x20].posX.whole;
            gActors[actor_index].var_158 = (gActors[actor_index].var_158 + FIXED_UNIT(0.25)) + ((D_800BE668 * D_800BE668) * 6);
            func_801B2BA0_79A9E0(actor_index);
            if (gActors[actor_index - 0x20].unk_16C & (ACTOR_FLAG3_UNK9 | ACTOR_FLAG3_UNK7)) {
                gActors[actor_index].state--;
            }

            if (gActors[actor_index].var_160 < gActors[actor_index].var_158) {
                gActors[actor_index].var_154 = FIXED_UNIT(0.5);
                gActors[actor_index].var_158 = gActors[actor_index].var_160;
                gActors[actor_index].state = 0x14;
            }
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B3634_79B474(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
            gActors[actor_index].unk_17C = 0x8034E2E0;
            gActors[actor_index].var_150 = gActors[actor_index].var_110;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -256;
            gActors[actor_index].state++;
            break;

        case 1:
            gActors[actor_index].posY.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentY.whole) & 0x1FF) - 256;
            break;
    }
}

void func_801B36FC_79B53C(u16 arg0, u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_OVL3_W2_3DPLATFROM_8;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = 400 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = (arg0 << 6) - (gScreenPosCurrentY.whole & 0x3F) - 192;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].posZ.whole = -256;
    gActors[actor_index].state = 1;
}

void func_801B37B0_79B5F0(u16 actor_index) {
    u16 index;
    u16 child_index;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            index = 0;\
            child_index = 0x91;\
            do {
                func_801B36FC_79B53C(index, child_index);
                switch (gCurrentScene) {
                    default:
                        gActors[child_index].var_0D8 = D_801B7E4C_79FC8C[(((gScreenPosCurrentY.whole + (index << 6)) - 192) & 0xFFC0) / 64];
                        break;
                    case 0x45:
                        gActors[child_index].var_0D8 = D_801B7DD4_79FC14[(((gScreenPosCurrentY.whole + (index << 6)) - 192) & 0xFFC0) / 64];
                        break;
                    case 0xD:
                        gActors[child_index].var_0D8 = D_801B7EDC_79FD1C[(((gScreenPosCurrentY.whole + (index << 6)) - 192) & 0xFFC0) / 64];
                        break;
                }
                gActors[child_index].unk_17C = D_801B7DA0_79FBE0[gActors[child_index].var_0D8];
                child_index++;
                if (gActors[child_index - 1].var_0D8 != 0) {
                    func_801B36FC_79B53C(index, child_index);
                    gActors[child_index].var_0D8 = gActors[child_index - 1].var_0D8 + 6;
                    gActors[child_index].unk_17C = D_801B7DA0_79FBE0[gActors[child_index].var_0D8];
                    child_index++;
                }

                index++;
            } while (index < 8);
            break;

        case 1:
            break;
    }
}

void func_801B3A14_79B854(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s16* values = (s16*)actor->ptr_180;
    s16 offset;
    s32 position;
    s16 position_whole;

    actor->var_154 += actor->var_158;
    position = actor->var_154;
    position_whole = FROM_FIXED(position);
    position = position_whole;
    values[0x9A] = position;
    values[0x92] = position;
    values[0x8A] = position;
    values[0x82] = position;
    values[0x5A] = position;
    values[0x52] = position;
    values[0x4A] = position;
    values[0x42] = position;
    values[0x1A] = position;
    values[0x12] = position;
    values[0xA] = position;
    values[2] = position;
    offset = (-64 - FROM_FIXED(actor->var_154)) << 5;
    values[0x7C] = offset;
    values[0x74] = offset;
    values[0x6C] = offset;
    values[0x64] = offset;
    values[0x3C] = offset;
    values[0x34] = offset;
    values[0x2C] = offset;
    values[0x24] = offset;
    if (actor_index & actor_index) {
    }
}

void func_801B3AF8_79B938(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -256;
            if (gActors[actor_index].var_0D8 != 0) {
                gActors[actor_index].hitboxBX0 = -0x30;
                gActors[actor_index].hitboxBX1 = 0x30;
                gActors[actor_index].hitboxBY1 = -0xC;
                gActors[actor_index].hitboxBY0 = 0x14;
                gActors[actor_index].var_150 = gActors[actor_index].var_110;

                switch (gActors[actor_index].var_0D8 - 2) {
                    case 0:
                    case 1:
                        gActors[actor_index].dlist_17C = D_801B8A98_7A08D8;\
                        gActors[actor_index].ptr_180 = (uintptr_t)D_801B81C8_7A0008;
                        break;

                    case 2:
                        gActors[actor_index].dlist_17C = D_801B8BE0_7A0A20;\
                        gActors[actor_index].ptr_180 = (uintptr_t)D_801B8308_7A0148;
                        break;

                    case 3:
                        gActors[actor_index].dlist_17C = D_801B8D28_7A0B68;\
                        gActors[actor_index].ptr_180 = (uintptr_t)D_801B8448_7A0288;
                        break;

                    case 4:
                        gActors[actor_index].dlist_17C = D_801B8E70_7A0CB0;\
                        gActors[actor_index].ptr_180 = (uintptr_t)D_801B8588_7A03C8;
                        break;

                    case 5:
                        gActors[actor_index].dlist_17C = D_801B8FB8_7A0DF8;\
                        gActors[actor_index].ptr_180 = (uintptr_t)D_801B86C8_7A0508;
                        break;

                    default:
                        gActors[actor_index].dlist_17C = D_801B8950_7A0790;
                        break;
                }

                gActors[actor_index].state = gActors[actor_index].var_0D8 << 4;
                if (gActors[actor_index].state > 0x40) {
                    gActors[actor_index].state = 0x40;
                }
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM1;
            }
            else {
                gActors[actor_index].dlist_17C = D_801B8808_7A0648;
                gActors[actor_index].state++;
            }
            break;

        case 1:
        case 26:
            break;

        case 0x20:
            if (gActors[actor_index].var_150-- == 0) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
                gActors[actor_index].state++;
            }
            break;

        case 0x21:
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.03125);
            if (gActors[actor_index].velocityY.raw == FIXED_UNIT(-3.0)) {
                gActors[actor_index].state++;
            }
            break;

        case 0x22:
            gActors[actor_index].velocityY.raw += FIXED_UNIT(0.03125);
            if (gActors[actor_index].velocityY.raw == FIXED_UNIT(3.0)) {
                gActors[actor_index].state--;
            }
            break;

        case 0x30:
            if (gActors[actor_index].var_150-- == 0) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_index].state++;
            }
            break;

        case 0x31:
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.03125);
            if (gActors[actor_index].velocityX.raw == FIXED_UNIT(-2.0)) {
                gActors[actor_index].state++;
            }
            break;

        case 0x32:
            gActors[actor_index].velocityX.raw += FIXED_UNIT(0.03125);
            if (gActors[actor_index].velocityX.raw == FIXED_UNIT(2.0)) {
                gActors[actor_index].state--;
            }
            break;

        case 0x40:
            if (gActors[actor_index].var_150-- == 0) {
                gActors[actor_index].var_158 = FIXED_UNIT(4.0);
                gActors[actor_index].state++;
            }
            func_801B3A14_79B854(actor_index);
            break;

        case 0x41:
            gActors[actor_index].var_158 -= FIXED_UNIT(0.0625);
            if (gActors[actor_index].var_158 == FIXED_UNIT(-4.0)) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_PLATFORM1;
                gActors[actor_index].state++;
            }
            func_801B3A14_79B854(actor_index);
            break;

        case 0x42:
            gActors[actor_index].var_158 += FIXED_UNIT(0.0625);
            if (gActors[actor_index].var_158 == FIXED_UNIT(4.0)) {
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM1;
                gActors[actor_index].state--;
            }
            func_801B3A14_79B854(actor_index);
            break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B3EB4_79BCF4(u16 actor_index) {
    u16 new_actor_index;

    if (gActors[actor_index].posY.whole < -191) {
        return;
    }
    if (gActors[actor_index].posY.whole >= 192) {
        return;
    }
    if (((gActors[actor_index].var_15C++) % 0x30) == 0) {
        new_actor_index = Actor_RangeFindInactive(0x70, 0x90);
        if (new_actor_index == 0) {
            return;
        }

        gActors[new_actor_index].actorType = ACTORTYPE_OVL3_W2_SPIKEBALL_11;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].var_110 = (Rand() & 3) << 8;
        if (gActors[new_actor_index].var_110 == 768.0f) {
            gActors[new_actor_index].var_110 = 0.0f;
        }
    }
}

void func_801B3FE8_79BE28(u16 actor_index) {
    switch (gActors[actor_index].unk_16C) {
        case 0:
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
            gActors[actor_index].posZ.whole = -384;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[actor_index].colorA = 0xF;
            gActors[actor_index].unk_16C++;

        case 1:
            gActors[actor_index].colorA += 0x10;
            if (gActors[actor_index].colorA == 0xFF) {
                gActors[actor_index].unk_16C++;
            }
            break;

        case 2:
            gActors[actor_index].posZ.whole += 8;
            if (gActors[actor_index].posZ.whole == 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7;
                gActors[actor_index].unk_16C++;
            }
            break;

        case 3:
            gActors[actor_index].var_15C -= FIXED_UNIT(0.0625);
            gActors[actor_index].velocityX.raw = SIN(FROM_FIXED(gCameraRot)) * gActors[actor_index].var_15C;
            gActors[actor_index].velocityY.raw = COS(FROM_FIXED(gCameraRot)) * gActors[actor_index].var_15C;
            if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0) {
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK0;
                gActors[actor_index].unk_16C++;
            }
            if (gActors[actor_index].posY.whole < -192) {
                gActors[actor_index].flags = 0;
            }
            break;

        case 4:
            break;
    }

    if (gActors[actor_index].var_158 != 0) {
        gActors[actor_index].flags = 0;
    }
}

void func_801B4210_79C050(u16 actor_index) {
    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
        case 0:
            Spikeball_State0(actor_index);
            // fallthrough
        case 1:
            func_801B3FE8_79BE28(actor_index);
            gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = -gActors[actor_index].posZ.whole / 3;
            Spikeball_State1End(actor_index, 0xF0);
            break;
    }

    Spikeball_UpdateHitbox(actor_index);
}

void func_801B42D8_79C118(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK6;
            gActors[actor_index].graphicIndex = GINDEX_RAILSTRAIGHTV;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -272;
            gActors[actor_index].state++;
            break;

        case 1:
            break;
    }
}

void func_801B4354_79C194(u16 actor_index) {
    gActors[actor_index].var_150--;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicIndex = 0x380C;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
            gActors[actor_index].posZ.whole = -8;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].hitboxBX0 = -0x20;
            gActors[actor_index].hitboxBX1 = 0x20;
            gActors[actor_index].hitboxBY0 = 8;
            gActors[actor_index].hitboxBY1 = 0;
            gActors[actor_index].var_150 = (gActors[actor_index].var_0D8 & 0x7FFF) + 0x40;
            gActors[actor_index].var_154 = gActors[actor_index].var_110;
            if (gActors[actor_index].var_0D8 & 0x8000) {
                gActors[actor_index].unk_114 = 10.0f;
                gActors[actor_index].unk_118 = 90.0f;
            }
            else {
                gActors[actor_index].unk_114 = -10.0f;
                gActors[actor_index].unk_118 = -90.0f;
            }
            gActors[actor_index].state++;
            break;

        case 1:
            if (gActors[actor_index].var_150 == 0x20) {
                gActors[actor_index].state++;
            }
            break;

        case 2:
            gActors[actor_index].rotateZ += gActors[actor_index].unk_114 * D_801B9100_7A0F40[gActors[actor_index].var_150 % 16];
            if (gActors[actor_index].var_150 == 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_PLATFORM0;
                Sound_PlaySfxAtActor2(0x129, actor_index);
                gActors[actor_index].state++;
            }
            break;

        case 3:
            gActors[actor_index].rotateZ += gActors[actor_index].unk_114;
            if (gActors[actor_index].rotateZ == gActors[actor_index].unk_118) {
                gActors[actor_index].var_150 = gActors[actor_index].var_154;
                gActors[actor_index].state++;
            }
            break;

        case 4:
            if (gActors[actor_index].var_150 == 0x20) {
                gActors[actor_index].state++;
            }
            break;

        case 5:
            gActors[actor_index].rotateZ -= gActors[actor_index].unk_114 * D_801B9100_7A0F40[gActors[actor_index].var_150 % 16];
            if (gActors[actor_index].var_150 == 0) {
                Sound_PlaySfxAtActor2(0x129, actor_index);
                gActors[actor_index].state++;
            }
            break;

        case 6:
            gActors[actor_index].rotateZ -= gActors[actor_index].unk_114;
            if (gActors[actor_index].rotateZ == 0.0f) {
                gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
                gActors[actor_index].var_150 = gActors[actor_index].var_154;
                gActors[actor_index].state = 1;
            }
            break;
    }
}

void func_801B4638_79C478(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s16 y;

    actor->flags = ACTOR_FLAG_ACTIVE;

    if (((gActors[0].posX.whole - 40) < actor->posX.whole) && (actor->posX.whole < (gActors[0].posX.whole + 40))) {
        y = gScreenPosCurrentY.whole + actor->posY.whole;
        actor->actorType = D_801B9140_7A0F80[y & 0xF];
        Actor_Initialize(actor_index);
    }
}

void func_801B46D8_79C518(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].var_150 = ((gActors[actor_index].var_0D8 & 0xFF00) / 0x100) + 0x50;
            gActors[actor_index].var_154 = gActors[actor_index].var_0D8 & 0xFF;
            gActors[actor_index].state++;
            break;

        case 1:
            if (gActors[actor_index].var_150-- == 0) {
                gActors[actor_index].var_150 = 0x93;
                if (((gActors[0].posX.whole - 128) < gActors[actor_index].posX.whole) &&
                    (gActors[actor_index].posX.whole < (gActors[0].posX.whole + 192))) {
                    u16 new_actor_index = gActors[actor_index].var_154;
                    if (gActors[new_actor_index].flags == 0) {
                        gActors[new_actor_index].actorType = ACTORTYPE_CLANBLOB;
                        Actor_Initialize(new_actor_index);
                        gActors[new_actor_index].var_110 = gActors[actor_index].var_110;
                        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
                        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
                    }
                }
            }
            break;
    }
}

void func_801B480C_79C64C(u16 actor_index) {
    u16 index;
    u16 index2;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].var_154 = 0x60;
            gActors[actor_index].var_158 = 7;
            gActors[actor_index].var_15C = 0x4E;
            Sound_PlaySfxAtActorPanning(0x71, actor_index);
            gActors[actor_index].state++;

        case 1:
            if (gActors[actor_index].var_154 < 0x60) {
                gActors[actor_index].var_154++;
            }
            else {
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].var_158++;
                gActors[actor_index].var_15C += 2;

                if (gActors[actor_index].var_158 >= 8) {
                    gActors[actor_index].var_158 = 0;
                }

                if (gActors[actor_index].var_15C >= 0x60) {
                    gActors[actor_index].var_15C = 0x40;
                }

                index = gActors[actor_index].var_15C;
                ACTOR_INIT(index + 0, ACTORTYPE_CLANBALL_28);
                gActors[index + 0].posX.whole = D_801B9144_7A0F84[gActors[actor_index].var_158] - gScreenPosCurrentX.whole;
                gActors[index + 0].posY.whole = 1152 - gScreenPosCurrentY.whole;
                gActors[index + 0].var_110 = ((gActors[actor_index].var_158 & 3) << 8) + index + 0x8101;
                gActors[index + 1].var_0D8 = 0;
                gActors[index + 1].actorType = ACTORTYPE_CLANBALL_RAIL;
                Actor_Initialize(index + 1);
                gActors[index + 1].posX.whole = gActors[index + 0].posX.whole;
                gActors[index + 1].posY.whole = gActors[index + 0].posY.whole;
                gActors[index + 1].var_0D8 = 0x67;
                gActors[index + 1].var_110 = 1.0f;
            }

            for (index = 0x40; index < 0x60; index += 2) {
                if ((gActors[index].flags != 0) && (gActors[index].posY.whole + (0, gScreenPosCurrentY.whole)) < 328) {
                    gActors[index + 0].flags = 0;
                    gActors[index + 1].flags = 0;
                    index2 = func_8003FF68(index, 1.0f);
                    gActors[index2].unk_188 = gActors[index].posY.raw + FIXED_UNIT(-8.0);
                }
            }
            break;
    }
}

void func_801B4AB0_79C8F0(u16 actor_index) {
    u32 flags;

    gActors[actor_index - 1].posX.raw = gActors[actor_index].posX.raw + gActors[actor_index - 1].var_154;
    gActors[actor_index - 1].posY.raw = gActors[actor_index].posY.raw + gActors[actor_index - 1].var_158;
    gActors[actor_index - 1].posZ.raw = gActors[actor_index].posZ.raw;

    if (gActors[actor_index].unk_188 == 2) {
        flags = gActors[actor_index].flags_098;
        if ((flags & ACTOR_FLAG3_UNK9) && (flags & ACTOR_FLAG3_UNK17)) {
            Sound_PlaySfxAtActor2(0x115, actor_index);
        }
    }
    gActors[actor_index].unk_188 = gActors[actor_index - 1].state;

    switch (gActors[actor_index].state) {
        case 0:
            flags = gActors[actor_index].flags_098;
            if ((flags & ACTOR_FLAG3_UNK9) && (flags & ACTOR_FLAG3_UNK17)) {
                if (D_801373E0.unk_10 == 8) {
                    Sound_PlaySfx(0xA6);
                    D_800BE5D4 = 1;
                    gActors[actor_index].state++;
                }
            }
            break;

        case 1:
            gCameraRot += FIXED_UNIT(16.0);
            if (gCameraRot == FIXED_UNIT(512.0)) {
                func_8001FEB0();
            }

            if (gCameraRot == FIXED_UNIT(1024.0)) {
                gCameraRot = 0;
                D_800BE5D4 = 0;
                gActors[actor_index].state--;
            }
            break;
    }

    gActors[actor_index].flags_098 = 0;
}

DEFAULT_INT func_801B4C5C_79CA9C(u16 actor_index, u16 arg1) {
    s32 angle;

    angle = Math_PlaneHalf(gActors[D_800E3580].posX.whole - gActors[actor_index].posX.whole,
                           gActors[D_800E3580].posY.whole - gActors[actor_index].posY.whole);
    func_8002EBB8(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole,
                  COS(angle) * FIXED_UNIT(2.875),
                  SIN(angle) * FIXED_UNIT(2.875));
}

void func_801B4D60_79CBA0(u16 actor_index) {
    func_80067E50(actor_index, D_800E1700);

    switch (gActors[actor_index].unk_174) {
        case 0:
        case 1:
            if (func_80029B00(0xA0, 0x80, -0x80) != 0) {
                if (func_80029B00(0x40, 0x40, -0x40) == 0) {
                    gActors[actor_index].pfn_158 = func_801B4C5C_79CA9C;
                    gActors[actor_index].state = 0x3A0;
                    gActors[actor_index].unk_174++;
                }
            }
            break;

        case 2:
            Sound_PlaySfxAtActor2(0xA2, actor_index);
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
            SpawnTextBubble(actor_index, D_801B9154_7A0F94, 0, 0x20, 0x1E);
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].unk_174++;
            break;

        case 3:
            if (gActors[actor_index].unk_16C++ >= 0x31) {
                gActors[actor_index].unk_16C = 0;
                gActors[actor_index].unk_174 = 0;
            }
            break;
    }
}

void func_801B4EC0_79CD00(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_801B4D60_79CBA0(actor_index);
            break;
    }
}

void func_801B4F48_79CD88(u16 actor_index) {
    func_80067E50(actor_index, D_800E1700);

    switch (gActors[actor_index].unk_174) {
        case 0:
            if (func_80029B00(0x40, 0xA0, -0xA0) != 0) {
                gActors[actor_index].unk_120 = (f32)FIXED_UNIT(2.5);
                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(4.0);
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_16C = 0x40;
                gActors[actor_index].unk_174++;
            }
            break;

        case 1:
            if (gActors[actor_index].unk_16C != 0) {
                gActors[actor_index].unk_16C--;
            }
            else if (func_80029B00(0xC0, 0x80, -0x80) != 0) {
                if (func_80029B00(0x40, 0x40, -0x40) == 0) {
                    gActors[actor_index].pfn_158 = func_801B4C5C_79CA9C;
                    gActors[actor_index].state = 0x3A0;
                    gActors[actor_index].unk_16C = 0x40;
                }
            }
            break;
    }
}

void func_801B5078_79CEB8(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_801B4F48_79CD88(actor_index);
            break;
    }
}

void func_801B5100_79CF40(u16 actor_index) {
    if ((gActiveFrames & 0x7F) == ((actor_index & 3) << 5)) {
        if (func_80029B00(0x100, 0x100, -0x100) != 0) {
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
            SpawnTextBubble(actor_index, D_801B915C_7A0F9C, 0, 0x20, 0x1E);
        }
    }
    else {
        func_80067E50(actor_index, D_800E1700);
    }

    switch (gActors[actor_index].unk_174) {
        case 0:
            if (((gActors[0x60].posX.whole + 48) < gActors[actor_index].posX.whole) &&
                (gActors[actor_index].posX.whole < (gActors[0x60].posX.whole + 80))) {
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_174 = gActors[actor_index].unk_174 + 1;
                gActors[actor_index].unk_120 = (f32)FIXED_UNIT(-2.0);
                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(3.0);
            }
            break;

        case 1:
            Sound_PlaySfxAtActor2(0x36, actor_index);
            gActors[actor_index].unk_174++;

        case 2:
            if (func_80029B00(0x20, 0x80, -0x80) != 0) {
                if (gActors[0x60].posX.whole < gActors[actor_index].posX.whole) {
                    gActors[actor_index].unk_120 = (f32)FIXED_UNIT(-2.0);
                }
                else {
                    gActors[actor_index].unk_120 = (f32)FIXED_UNIT(2.0);
                }

                gActors[actor_index].state = 0x130;
                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(5.0);
                gActors[actor_index].unk_124 = 1.0f;
            }
            break;
    }
}

void func_801B5320_79D160(u16 actor_index) {
    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_801B5100_79CF40(actor_index);
            break;
    }
}

void func_801B53A8_79D1E8(u16 actor_index) {
    gActors[actor_index - 1].posX.raw = gActors[actor_index].posX.raw + gActors[actor_index].unk_16C + gActors[actor_index - 1].var_154;
    gActors[actor_index - 1].posY.raw = gActors[actor_index].posY.raw + gActors[actor_index].var_160 + gActors[actor_index - 1].var_158;

    if (gActors[actor_index].unk_188 == 2) {
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            Sound_PlaySfxAtActor2(0x115, actor_index);
        }
    }

    gActors[actor_index].unk_188 = gActors[actor_index - 1].state;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -1;
            gActors[actor_index].var_150 = gActors[actor_index].var_0D8 & 0x7FFF;
            if (gActors[actor_index].var_0D8 & 0x8000) {
                switch (gActors[actor_index].var_150) {
                    case 0:
                        gActors[actor_index].unk_168 = FIXED_UNIT(32.0);
                        gActors[actor_index].scaleX = 2.0f;
                        break;

                    case 1:
                        gActors[actor_index].unk_168 = FIXED_UNIT(48.0);
                        gActors[actor_index].scaleX = 3.0f;
                        break;

                    case 2:
                        gActors[actor_index].scaleX = 4.0f;
                        gActors[actor_index].unk_168 = FIXED_UNIT(64.0);
                        break;
                }

                switch ((u16)gActors[actor_index].var_110) {
                    case 0:
                        gActors[actor_index].unk_16C = -gActors[actor_index].unk_168;
                        break;

                    case 1:
                        gActors[actor_index].unk_16C = 0;
                        break;

                    case 2:
                        gActors[actor_index].unk_16C = gActors[actor_index].unk_168;
                        break;
                }

                gActors[actor_index].graphicIndex = GINDEX_RAILSTRAIGHTH;
                gActors[actor_index].state = 0x40;
            }
            else {
                switch (gActors[actor_index].var_150) {
                    case 0:
                        gActors[actor_index].scaleY = 2.0f;
                        gActors[actor_index].var_15C = FIXED_UNIT(32.0);
                        break;

                    case 1:
                        gActors[actor_index].var_15C = FIXED_UNIT(48.0);
                        gActors[actor_index].scaleY = 3.0f;
                        break;

                    case 2:
                        gActors[actor_index].scaleY = 4.0f;
                        gActors[actor_index].var_15C = FIXED_UNIT(64.0);
                        break;
                }

                switch ((u16)gActors[actor_index].var_110) {
                    case 0:
                        gActors[actor_index].var_160 = gActors[actor_index].var_15C;
                        break;

                    case 1:
                        gActors[actor_index].var_160 = 0;
                        break;

                    case 2:
                        gActors[actor_index].var_160 = -gActors[actor_index].var_15C;
                        break;
                }

                gActors[actor_index].graphicIndex = GINDEX_RAILSTRAIGHTV;
                gActors[actor_index].state = 0x10;
            }
            break;

        case 0x10:
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
                if (func_800486F4() == 0) {
                    if (gActors[actor_index].var_160 == 0) {
                        gActors[actor_index].unk_164 = gActors[actor_index].var_15C;
                        gActors[actor_index].state = 0x20;
                    }
                    else if (gActors[actor_index].var_160 < 0) {
                        gActors[actor_index].unk_164 = 0;
                        gActors[actor_index].state = 0x20;
                    }
                }
                else if (func_800486F4() == 8) {
                    if (gActors[actor_index].var_160 == 0) {
                        gActors[actor_index].unk_164 = -gActors[actor_index].var_15C;
                        gActors[actor_index].state = 0x30;
                    }
                    else if (gActors[actor_index].var_160 > 0) {
                        gActors[actor_index].unk_164 = 0;
                        gActors[actor_index].state = 0x30;
                    }
                }
            }
            break;

        case 0x20:
            if (gActors[actor_index].var_160 == gActors[actor_index].unk_164) {
                gActors[actor_index].state = 0x10;
            }
            else {
                gActors[actor_index].var_160 += FIXED_UNIT(8.0);
            }
            break;

        case 0x30:
            if (gActors[actor_index].var_160 == gActors[actor_index].unk_164) {
                gActors[actor_index].state = 0x10;
            }
            else {
                gActors[actor_index].var_160 -= FIXED_UNIT(8.0);
            }
            break;

        case 0x40:
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
                Sound_PlaySfxAtActor2(0x115, actor_index);
                if (func_800486F4() == 4) {
                    if (gActors[actor_index].unk_16C == 0) {
                        gActors[actor_index].unk_170 = gActors[actor_index].unk_168;
                        gActors[actor_index].state = 0x50;
                    }
                    else if (gActors[actor_index].unk_16C < 0) {
                        gActors[actor_index].unk_170 = 0;
                        gActors[actor_index].state = 0x50;
                    }
                }
                else if (func_800486F4() == 0xC) {
                    if (gActors[actor_index].unk_16C == 0) {
                        gActors[actor_index].unk_170 = -gActors[actor_index].unk_168;
                        gActors[actor_index].state = 0x60;
                    }
                    else if (gActors[actor_index].unk_16C > 0) {
                        gActors[actor_index].unk_170 = 0;
                        gActors[actor_index].state = 0x60;
                    }
                }
            }
            break;

        case 0x50:
            if (gActors[actor_index].unk_16C == gActors[actor_index].unk_170) {
                gActors[actor_index].state = 0x40;
            }
            else {
                gActors[actor_index].unk_16C += FIXED_UNIT(8.0);
            }
            break;

        case 0x60:
            if (gActors[actor_index].unk_16C == gActors[actor_index].unk_170) {
                gActors[actor_index].state = 0x40;
            }
            else {
                gActors[actor_index].unk_16C -= FIXED_UNIT(8.0);
            }
            break;
    }

    switch (gActors[actor_index].unk_174) {
        case 0:
            if (gActors[actor_index].var_158 != 0) {
                gActors[actor_index].unk_174++;
            }
            break;

        case 1:
            gActors[actor_index + 1].var_158 = gActors[actor_index].var_158;
            if (gActors[actor_index].var_158 == 0) {
                switch (gActors[actor_index + 1].state) {
                    case 0x22:
                        switch (gActors[actor_index + 1].var_0D8) {
                            case 0x30:
                                gActors[actor_index + 1].state = 0x62;
                                break;
                            case 0x31:
                                gActors[actor_index + 1].state = 0x60;
                                break;
                            case 0x32:
                                gActors[actor_index + 1].state = 0x66;
                                break;
                            case 0x33:
                                gActors[actor_index + 1].state = 0x64;
                                break;
                        }
                        break;
                    case 0x60:
                        gActors[actor_index + 1].state = 0x63;
                        break;
                    case 0x61:
                        gActors[actor_index + 1].state = 0x62;
                        break;
                    case 0x62:
                        gActors[actor_index + 1].state = 0x61;
                        break;
                    case 0x63:
                        gActors[actor_index + 1].state = 0x60;
                        break;
                    case 0x64:
                        gActors[actor_index + 1].state = 0x67;
                        break;
                    case 0x65:
                        gActors[actor_index + 1].state = 0x66;
                        break;
                    case 0x66:
                        gActors[actor_index + 1].state = 0x65;
                        break;
                    case 0x67:
                        gActors[actor_index + 1].state = 0x64;
                        break;
                    case 0x68:
                        gActors[actor_index + 1].state = 0x69;
                        break;
                    case 0x69:
                        gActors[actor_index + 1].state = 0x68;
                        break;
                }
                gActors[actor_index].unk_174++;
            }
            break;

        case 2:
            if (gActors[actor_index + 1].state == 0x22) {
                gActors[actor_index + 1].state = gActors[actor_index + 1].var_0D8;
                gActors[actor_index].unk_174 = 0;
            }
            break;

        default:
            break;
    }

    gActors[actor_index].var_158 = 0;
    gActors[actor_index + 1].flags_098 |= gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9;
    gActors[actor_index].flags_098 = 0;
}

void func_801B5B90_79D9D0(u16 actor_index) {
    Actor* actor;
    u16 index;
    u16 unused;
    u8 active_flags[0x82];

    for (index = 0x70; index < 0x7A; index++) {
        active_flags[index + 0x10] = gActors[index].flags;
    }

    func_80078418(actor_index);

    actor = &gActors[actor_index];
    actor->posZ.whole = 32;

    for (index = 0x70; index < 0x7A; index++) {
        if (active_flags[index + 0x10] == 0) {
            if (gActors[index].flags != 0) {
                if (actor->var_150 & 0x4000) {
                    gActors[index].posZ.whole = 34;
                }
                else {
                    gActors[index].posZ.whole = 33;
                }
            }
        }
    }

    switch (actor->state) {
        case 0:
            actor->unk_188 = 0;
            actor->graphicFlags |= ACTOR_GFLAG_UNK11;
            actor->state = 0x20;
            break;

        case 0x21:
            if (D_800E3584 & 0x30000) {
                if (func_80029B00(0x80, 0x60, -0x60) != 0) {
                    if (func_80029B00(0x60, 0x60, -0x60) == 0) {
                        if ((gActiveFrames & 0xF) == 0) {
                            actor->var_150 |= 0x8000;
                        }
                    }
                }
            }

            if ((((actor->var_0D8 & 0xF00) / 0x10) + gActiveFrames) & 0x100) {
                actor->unk_180 = actor->unk_170 - ((actor->var_0D8 & 0xF) << 3);
                actor->unk_184 = actor->unk_174 - ((actor->var_0D8 & 0xF0) / 2);
            }
            else {
                actor->unk_180 = ((actor->var_0D8 & 0xF) << 3) + actor->unk_170;
                actor->unk_184 = ((actor->var_0D8 & 0xF0) / 2) + actor->unk_174;
            }
            break;
    }

    actor->flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}
