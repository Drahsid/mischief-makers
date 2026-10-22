#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "80D90.h"
#include "asset_loader.h"
#include "frontend.h"

typedef struct {
    /* 0x00 */ f32 scaleX;
    /* 0x04 */ f32 scaleY;
    /* 0x08 */ u8 colorR;
    /* 0x09 */ u8 colorG;
    /* 0x0A */ u8 colorB;
    /* 0x0B */ u8 colorA;
    /* 0x0C */ s16 graphicIndex;
    /* 0x0E */ s16 unk_0E;
} Unk_D_801A2EAC_76540C; /* sizeof = 0x10 */

typedef struct {
    /* 0x00 */ u16 graphicFlags;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u32 flags;
    /* 0x08 */ f32 unk_148;
    /* 0x0C */ s16 positionZ;
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ s32 velocityX;
    /* 0x14 */ s32 var_158;
    /* 0x18 */ s32 unk_168;
    /* 0x1C */ s32 velocityY;
    /* 0x20 */ s32 var_15C;
    /* 0x24 */ s32 unk_16C;
    /* 0x28 */ s32 velocityZ;
    /* 0x2C */ s32 unk_174;
    /* 0x30 */ s32 var_160;
    /* 0x34 */ s32 var_150;
    /* 0x38 */ f32 scaleX;
    /* 0x3C */ f32 var_110;
    /* 0x40 */ f32 unk_118;
    /* 0x44 */ f32 scaleY;
    /* 0x48 */ f32 unk_114;
    /* 0x4C */ f32 unk_11C;
    /* 0x50 */ u8 colorR;
    /* 0x51 */ u8 colorG;
    /* 0x52 */ u8 colorB;
    /* 0x53 */ u8 colorA;
    /* 0x54 */ s32 var_154;
    /* 0x58 */ s32 unk_164;
    /* 0x5C */ s16* graphicList;
} Unk_D_801A3050_7655B0; /* sizeof = 0x60 */


u32 D_801A3B20_766080;
u32 D_801A3B24_766084;
s16 D_801A3B28_766088[196];
u8 D_801A3CB0_766210[0x60];
u8 D_801A3D10_766270[0x10];

u16 D_801A1940_763EA0[] = {
    0x1816, 0x8400, 0x0008, 0, 0, 0x0020, 0x1808, 0x8470,
    0x0008, 0, 0, 0x0020, 0x1800, 0x8400, 0x0010, 0,
    0, 0x0020, 0x181C, 0x8400, 0x0010, 0, 0, 0x0020,
    0x1800, 0x8400, 0, 0, 0, 0x0020, 0x181C, 0x8400,
    0, 0, 0, 0x0020, 0x1800, 0x8400, 0x000C, 0,
    0, 0x0020, 0x1802, 0x84B0, 0x000C, 0, 0, 0x0020,
    0x1800, 0x8400, 0x0004, 0, 0, 0x0020, 0x1802, 0x84B0,
    0x0004, 0,
};

u16 D_801A19B4_763F14[] = {
//  actor   parent  length  angle   pose
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000,
    0x0002, 0x0001, 0x0013, 0x0200, 0x0000,
    0x0003, 0x0002, 0x000D, 0x0100, 0x0000,
    0x0004, 0x0001, 0x0005, 0x0028, 0x0000,
    0x0005, 0x0004, 0x0003, 0x03F0, 0x0000,
    0x0006, 0x0005, 0x0004, 0x0200, 0x0000,
    0x0007, 0x0006, 0x000C, 0x0200, 0x0000,
    0x0008, 0x0001, 0x000C, 0x0158, 0x0000,
    0x0009, 0x0008, 0x0003, 0x00F0, 0x0000,
    0x000A, 0x0009, 0x0004, 0x0200, 0x0000,
    0x000B, 0x000A, 0x000C, 0x0200, 0x0000,
    0x000C, 0x0001, 0x000E, 0x0320, 0x0000,
    0x000D, 0x000C, 0x0005, 0x0200, 0x0000,
    0x000E, 0x000D, 0x0004, 0x0200, 0x0000,
    0x000F, 0x000E, 0x0008, 0x0200, 0x0000,
    0x0010, 0x0001, 0x000B, 0x0100, 0x0000,
    0x0011, 0x0010, 0x0005, 0x0200, 0x0000,
    0x0012, 0x0011, 0x0004, 0x0200, 0x0000,
    0x0013, 0x0012, 0x0008, 0x0200, 0x0000,
    0x7FFF,
};

u16 D_801A1A74_763FD4[] = {
    0, 0xFFF8, 0, 0, 0x03E0, 0x0004, 0x03A8, 0xFFF7,
    0, 0, 0x02D0, 0x0004, 0x0010, 0x0006, 0x0138, 0xFFFD,
    0, 0x0008, 0x02A8, 0x0002, 0, 0x0007, 0x0180, 0x0009,
    0x0028, 0xFFE4, 0x0370, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
    0x0028, 0xFFF7, 0x0370, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1AC4_764024[] = {
    0, 0xFFFC, 0x03F0, 0, 0x03E0, 0x0004, 0x03A8, 0xFFF7,
    0, 0, 0x0300, 0x0004, 0x0010, 0x0006, 0x0100, 0xFFFD,
    0, 0x0008, 0x0300, 0x0002, 0x03F8, 0x0004, 0x0108, 0x0001,
    0x0028, 0xFFE4, 0x0310, 0xFFFB, 0x0028, 0, 0x0008, 0,
    0x0028, 0xFFF3, 0x0310, 0xFFFB, 0x0028, 0, 0x0010, 0,
};

u16 D_801A1B14_764074[] = {
    0, 0xFFFE, 0x03E0, 0, 0x0020, 0xFFEF, 0x0388, 0x0004,
    0x03E0, 0xFFEF, 0x0368, 0x0004, 0x0010, 0x0004, 0x0060, 0xFFFA,
    0, 0xFFF5, 0x0388, 0x0002, 0x03F8, 0x0004, 0x0048, 0xFFFA,
    0x0028, 0xFFE4, 0x0318, 0xFFFB, 0x0028, 0x0003, 0x0008, 0,
    0x0028, 0xFFF2, 0x0318, 0xFFFB, 0x0028, 0x0003, 0x0010, 0,
};

u16 D_801A1B64_7640C4[] = {
    0, 0x0007, 0x0100, 0, 0, 0, 0x0300, 0,
    0x03F8, 0, 0x0200, 0, 0, 0, 0, 0,
    0x0010, 0xFFFB, 0x0200, 0, 0, 0, 0, 0,
    0x03F0, 0xFFE8, 0x0218, 0, 0, 0, 0x0058, 0,
    0x0200, 0, 0, 0, 0, 0xFFFC, 0x0058, 0,
};

u16 D_801A1BB4_764114[] = {
    0, 0x0007, 0x0100, 0, 0, 0, 0x0300, 0,
    0x0008, 0xFFFD, 0x02D8, 0x0004, 0, 0xFFF8, 0x03C0, 0,
    0x00B8, 0xFFFC, 0x0260, 0, 0, 0, 0x0020, 0xFFFB,
    0x03A0, 0xFFE8, 0x0268, 0, 0, 0, 0x0380, 0,
    0x0258, 0x0002, 0x03F8, 0, 0, 0x0002, 0x0050, 0,
};

u16 D_801A1C04_764164[] = {
    0, 0x0007, 0x0100, 0, 0, 0, 0x0300, 0,
    0x03F8, 0x0001, 0x0338, 0xFFFB, 0x03C8, 0x0001, 0x0068, 0xFFF8,
    0x0118, 0xFFEB, 0x01B8, 0, 0, 0, 0, 0xFFF7,
    0x0030, 0xFFE4, 0x0260, 0, 0, 0, 0x0020, 0x0003,
    0x01A8, 0x0003, 0x0060, 0xFFFF, 0x03F0, 0xFFFE, 0x03B8, 0,
};

u16 D_801A1C54_7641B4[] = {
    0, 0xFFFD, 0, 0, 0x03F8, 0xFFFE, 0x03C8, 0x0001,
    0x0370, 0, 0x0338, 0, 0, 0x0001, 0x03A0, 0,
    0, 0xFFF4, 0x02A0, 0, 0, 0, 0x03B8, 0,
    0x0048, 0xFFE4, 0x0018, 0, 0, 0x0006, 0x0308, 0x000C,
    0x0050, 0xFFE8, 0x0010, 0, 0, 0x0008, 0x02F0, 0x000A,
};

u16 D_801A1CA4_764204[] = {
    0, 0, 0x0010, 0, 0x03F8, 0xFFFE, 0x03C8, 0x0001,
    0x0370, 0, 0x03E8, 0, 0, 0x0001, 0x0378, 0xFFFB,
    0x0018, 0xFFF7, 0x0320, 0, 0, 0, 0x0380, 0xFFFB,
    0x0048, 0xFFE4, 0x0388, 0, 0, 0xFFFF, 0x0378, 0x0001,
    0x0050, 0xFFEB, 0x0370, 0, 0, 0xFFFF, 0x0388, 0,
};

u16 D_801A1CF4_764254[] = {
    0, 0x000F, 0, 0, 0x0030, 0xFFFE, 0x0358, 0,
    0x0390, 0xFFFE, 0x03F0, 0x0008, 0, 0x0004, 0x0050, 0x0002,
    0x0020, 0, 0x0380, 0, 0, 0x0005, 0x0030, 0,
    0x0028, 0xFFE5, 0x0240, 0x0002, 0, 0x0003, 0x03E8, 0x0002,
    0x03F0, 0xFFE9, 0x0248, 0x0002, 0, 0x0005, 0, 0,
};

u16 D_801A1D44_7642A4[] = {
    0, 0x0006, 0x03F8, 0, 0x0020, 0xFFFE, 0x0338, 0,
    0x0390, 0xFFFE, 0x03A8, 0x0008, 0, 0x0002, 0x0088, 0x0002,
    0x0020, 0, 0x0338, 0, 0, 0x0003, 0x0070, 0,
    0x0008, 0xFFE5, 0x0268, 0x0002, 0, 0x0003, 0x0338, 0x0001,
    0x03D0, 0xFFE9, 0x0270, 0x0002, 0, 0x0005, 0x0378, 0xFFFF,
};

u16 D_801A1D94_7642F4[] = {
    0, 0x0002, 0x03F8, 0, 0x0020, 0xFFFE, 0x0338, 0,
    0x03A8, 0xFFFE, 0x0300, 0x0008, 0, 0x0002, 0x00C8, 0,
    0x0020, 0xFFFD, 0x0278, 0, 0, 0x0003, 0x00D0, 0,
    0x0008, 0xFFE5, 0x02E8, 0x0002, 0, 0x0003, 0x0300, 0x0001,
    0x03D0, 0xFFE8, 0x02D0, 0x0002, 0, 0x0005, 0x0310, 0xFFFF,
};

u16 D_801A1DE4_764344[] = {
    0xFFFE, 0xFFFB, 0x0030, 0, 0x03D0, 0x0004, 0x0388, 0xFFF7,
    0, 0, 0x0238, 0x0004, 0x0008, 0xFFFE, 0x0138, 0xFFFC,
    0, 0x0002, 0x02A8, 0x0002, 0, 0, 0x0170, 0xFFFF,
    0x0020, 0xFFE4, 0x0370, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEF, 0x0348, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1E34_764394[] = {
    0xFFF9, 0, 0x00A0, 0, 0x03B8, 0x0004, 0x0350, 0xFFF7,
    0, 0, 0x03B0, 0, 0x0008, 0xFFFE, 0x0070, 0xFFF9,
    0, 0x0001, 0x02A8, 0x0002, 0, 0, 0x0170, 0xFFFF,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1E84_7643E4[] = {
    0xFFF9, 0, 0x00A0, 0, 0x03B8, 0x0004, 0x0350, 0xFFF7,
    0x03E8, 0x0001, 0x03C0, 0, 0x0008, 0, 0x0040, 0x0004,
    0, 0x0002, 0x02A8, 0x0002, 0, 0, 0x0170, 0xFFFF,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1ED4_764434[] = {
    0xFFFB, 0, 0x0078, 0, 0x03B8, 0x0004, 0x0350, 0xFFF7,
    0, 0x0001, 0x02A8, 0, 0x0008, 0, 0x0060, 0x0004,
    0x0020, 0x0001, 0, 0x0002, 0, 0, 0x0070, 0xFFFF,
    0x0020, 0xFFE4, 0x0320, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0058, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1F24_764484[] = {
    0xFFFB, 0xFFFE, 0x0060, 0, 0x03B8, 0x0004, 0x0350, 0xFFF7,
    0, 0x0001, 0x0268, 0, 0x0008, 0, 0x00B0, 0xFFFF,
    0, 0xFFFE, 0x0340, 0x0008, 0x03C0, 0x0004, 0x0048, 0x0004,
    0x0020, 0xFFE4, 0x0340, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0070, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1F74_7644D4[] = {
    0xFFF9, 0, 0x00A0, 0, 0x0008, 0, 0x03E0, 0xFFF7,
    0x03B8, 0x0007, 0x03F8, 0x0005, 0x0008, 0x0004, 0x0118, 0xFFFE,
    0, 0x0003, 0x0268, 0x0002, 0, 0, 0x0170, 0xFFFF,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A1FC4_764524[] = {
    0xFFF9, 0, 0x00A0, 0, 0x0008, 0, 0x03E0, 0xFFF7,
    0x03B8, 0x0007, 0x0020, 0x0005, 0x0008, 0x0005, 0x03D8, 0,
    0, 0x0011, 0x0268, 0x0002, 0, 0, 0x00F8, 0xFFF8,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2014_764574[] = {
    0xFFF9, 0, 0x00A0, 0, 0x0008, 0, 0x03E0, 0xFFF7,
    0x03B8, 0x0007, 0x0050, 0, 0x0008, 0x0001, 0x0398, 0xFFFE,
    0, 0x0004, 0x02E0, 0x0002, 0, 0, 0x00C0, 0xFFFC,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2064_7645C4[] = {
    0xFFF9, 0, 0x00A0, 0, 0x0008, 0, 0x03F8, 0xFFF7,
    0x03E8, 0x0007, 0x0088, 0x0005, 0x0008, 0x0002, 0x0150, 0,
    0, 0x0011, 0x0268, 0x0002, 0, 0, 0x00F8, 0xFFF8,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A20B4_764614[] = {
    0xFFF9, 0, 0x00A0, 0, 0x0008, 0, 0x03E0, 0xFFF7,
    0x03E8, 0x0007, 0x00C8, 0x0005, 0x0008, 0x0002, 0x0150, 0,
    0, 0x0011, 0x0268, 0x0002, 0, 0, 0x00F8, 0xFFF8,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2104_764664[] = {
    0xFFF9, 0, 0x00A0, 0, 0x03F0, 0, 0x03A0, 0xFFF7,
    0x0390, 0x0007, 0x0018, 0x0007, 0x0008, 0x0005, 0x03D8, 0,
    0, 0x0011, 0x0268, 0x0002, 0, 0, 0x00F8, 0xFFF8,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2154_7646B4[] = {
    0xFFF9, 0, 0x00A0, 0, 0x03D8, 0, 0x0398, 0xFFF7,
    0x0380, 0x0007, 0x0030, 0x0005, 0x0008, 0x0003, 0x0018, 0,
    0, 0x0011, 0x0268, 0x0002, 0, 0, 0x00F8, 0xFFF8,
    0x0020, 0xFFE4, 0x02F8, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A21A4_764704[] = {
    0xFFFE, 0xFFFB, 0x0040, 0, 0x03B8, 0, 0x0330, 0xFFF7,
    0, 0, 0x0238, 0x0004, 0x0008, 0xFFFE, 0x0138, 0xFFFC,
    0, 0x0002, 0x02A8, 0x0002, 0, 0, 0x0170, 0xFFFF,
    0x0020, 0xFFE4, 0x0360, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFEF, 0x0338, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A21F4_764754[] = {
    0xFFFF, 0xFFFB, 0x0070, 0, 0x0008, 0, 0x0380, 0,
    0x0388, 0xFFFF, 0x0358, 0x0001, 0, 0xFFFE, 0x03C8, 0,
    0x0020, 0xFFF8, 0x0268, 0, 0, 0x0001, 0x03E0, 0,
    0x0028, 0xFFE5, 0x0240, 0x0002, 0, 0x0003, 0x03E8, 0x0002,
    0x03F0, 0xFFE9, 0x0248, 0x0002, 0, 0x0005, 0, 0,
};

u16 D_801A2244_7647A4[] = {
    0xFFFF, 0xFFFB, 0x0080, 0, 0x0008, 0x0002, 0x0380, 0,
    0x0388, 0xFFFF, 0x0340, 0x0001, 0, 0xFFFE, 0x03C8, 0,
    0x0020, 0xFFF8, 0x0258, 0, 0, 0x0001, 0x03E0, 0,
    0, 0xFFE5, 0x0238, 0x0002, 0, 0x0003, 0x03E8, 0x0002,
    0x03F0, 0xFFE9, 0x0218, 0x0002, 0, 0x0005, 0x0010, 0,
};

u16 D_801A2294_7647F4[] = {
    0xFFFF, 0xFFFB, 0x0028, 0, 0x0008, 0xFFFD, 0x0378, 0,
    0x0388, 0xFFFF, 0x0340, 0x0001, 0, 0x0001, 0x0138, 0,
    0x0020, 0xFFFB, 0x0268, 0, 0, 0x0001, 0x0168, 0,
    0x0028, 0xFFE5, 0x0290, 0x0002, 0, 0xFFFF, 0x0380, 0x0002,
    0x03F0, 0xFFE7, 0x02A0, 0x0002, 0, 0xFFFF, 0x03A0, 0,
};

u16 D_801A22E4_764844[] = {
    0xFFFF, 0xFFFB, 0x03F8, 0, 0x0008, 0xFFFC, 0x0358, 0,
    0x0388, 0xFFFF, 0x03D0, 0x0001, 0, 0x0001, 0x0138, 0,
    0x0020, 0xFFF8, 0x0300, 0, 0, 0x0001, 0x0168, 0,
    0x0028, 0xFFE5, 0x0290, 0x0002, 0, 0xFFFF, 0x02E8, 0x0002,
    0x03F0, 0xFFE7, 0x02C8, 0x0002, 0, 0xFFFF, 0x02F0, 0,
};

u16 D_801A2334_764894[] = {
    0, 0xFFFB, 0x0378, 0, 0x0020, 0, 0x0358, 0,
    0x0390, 0xFFFE, 0x03F0, 0x0008, 0, 0x0004, 0x0050, 0x0002,
    0x0020, 0, 0x0380, 0, 0, 0x0005, 0x0030, 0,
    0x0028, 0xFFE5, 0x0240, 0x0002, 0, 0x0003, 0x03E8, 0x0002,
    0x03F0, 0xFFE9, 0x0248, 0x0002, 0, 0x0005, 0, 0,
};

u16 D_801A2384_7648E4[] = {
    0, 0xFFFB, 0x0360, 0, 0x0030, 0, 0x0350, 0,
    0x03B0, 0xFFFE, 0x03F0, 0x0008, 0, 0x0004, 0x0010, 0x0002,
    0x0020, 0xFFFF, 0x03A0, 0, 0, 0x0005, 0x0008, 0x0003,
    0x03F8, 0xFFE5, 0x0220, 0x0002, 0, 0x0003, 0x0018, 0x0002,
    0x03D8, 0xFFE9, 0x0228, 0x0002, 0, 0x0005, 0x0018, 0,
};

u16 D_801A23D4_764934[] = {
    0, 0xFFFB, 0x0328, 0, 0x0030, 0, 0x0350, 0,
    0x03D0, 0xFFFE, 0x03F0, 0x0008, 0, 0x0004, 0x0010, 0x0002,
    0x0020, 0xFFFF, 0x03B8, 0, 0, 0x0005, 0x0008, 0x0003,
    0x03D8, 0xFFE5, 0x0240, 0x0002, 0, 0x0003, 0x0008, 0x0002,
    0x03C8, 0xFFE9, 0x0250, 0x0002, 0, 0x0005, 0, 0,
};

u16 D_801A2424_764984[] = {
    0, 0x0007, 0x0100, 0, 0x0028, 0x0002, 0x0350, 0,
    0x03E8, 0x0009, 0x01B0, 0x000C, 0x03E8, 0xFFFF, 0x0078, 0xFFFC,
    0x0040, 0xFFFC, 0x0168, 0x0003, 0x03F8, 0xFFFD, 0x0078, 0xFFFF,
    0x03B8, 0xFFE4, 0x0218, 0, 0x0028, 0x0004, 0x0058, 0,
    0x01D0, 0x0003, 0x0058, 0, 0x03D0, 0x0004, 0x0030, 0,
};

u16 D_801A2474_7649D4[] = {
    0, 0x0007, 0x0100, 0, 0x03C0, 0, 0x02A8, 0,
    0x03A8, 0x0001, 0x0360, 0x0003, 0x03F0, 0x0003, 0x0018, 0x0001,
    0x03A8, 0xFFF9, 0x0358, 0x0002, 0, 0x0006, 0x03C8, 0,
    0x0010, 0xFFE8, 0x0350, 0, 0x03F0, 0, 0x0380, 0,
    0x0210, 0x0001, 0x0158, 0, 0x03F8, 0x0003, 0x03C0, 0,
};

u16 D_801A24C4_764A24[] = {
    0, 0xFFF3, 0, 0, 0x0018, 0, 0x03A0, 0,
    0x03F8, 0, 0x0388, 0x0002, 0, 0x0004, 0x0088, 0,
    0x0010, 0, 0x0378, 0x0002, 0, 0x0004, 0x0080, 0,
    0x0018, 0xFFE8, 0x0218, 0, 0, 0x0004, 0x03D8, 0,
    0x01F8, 0, 0x0030, 0, 0, 0x0004, 0x03C8, 0,
};

u16 D_801A2514_764A74[] = {
    0, 0x0007, 0x0140, 0, 0x03E0, 0x0001, 0x02A8, 0,
    0x03F8, 0x0004, 0x02E0, 0x0002, 0x03E8, 0xFFFF, 0x0078, 0xFFFC,
    0x0008, 0xFFFE, 0x01C8, 0x0003, 0x03F8, 0x0001, 0x0198, 0xFFFF,
    0x0040, 0xFFE5, 0x03A8, 0, 0x0028, 0x0004, 0x02B0, 0x0003,
    0x0220, 0x0003, 0x01C8, 0, 0x03F0, 0x0004, 0x02D0, 0x0004,
};

u16 D_801A2564_764AC4[] = {
    0, 0x0007, 0x0108, 0, 0x0020, 0x0004, 0x0340, 0,
    0, 0x0006, 0x03F0, 0x0002, 0x0058, 0x0001, 0x0010, 0x0001,
    0x0028, 0, 0x0038, 0x0002, 0x03F8, 0x0001, 0x0048, 0xFFFF,
    0x03B0, 0xFFE5, 0x0200, 0, 0x0020, 0, 0x0368, 0x0003,
    0x01C0, 0x0002, 0x0010, 0, 0x03F0, 0, 0x03D8, 0x0003,
};

u16 D_801A25B4_764B14[] = {
    0, 0x0007, 0, 0, 0x03E0, 0x0001, 0x02A8, 0,
    0x03F8, 0x0004, 0x0288, 0x0002, 0x03E8, 0xFFFF, 0x0140, 0xFFFC,
    0x0008, 0xFFFC, 0x0278, 0x0003, 0x03F8, 0x0001, 0x0138, 0xFFFF,
    0x0040, 0xFFE5, 0x03A8, 0, 0x0028, 0x0004, 0x0260, 0x0003,
    0x0220, 0x0003, 0x01C8, 0, 0x03F0, 0x0004, 0x0280, 0x0004,
};

u16 D_801A2604_764B64[] = {
    0, 0x0007, 0, 0, 0x0040, 0x0001, 0x03C0, 0,
    0x03F8, 0x0004, 0x0310, 0x0002, 0x03E8, 0xFFFF, 0x00A8, 0xFFFC,
    0x0008, 0xFFFC, 0x0278, 0x0003, 0x03F8, 0x0001, 0x0138, 0xFFFF,
    0x0018, 0xFFE5, 0x0360, 0, 0x0028, 0x0004, 0x0260, 0x0003,
    0x0248, 0xFFFC, 0x00E8, 0x0002, 0x03B0, 0x0002, 0x0040, 0x0002,
};

u16 D_801A2654_764BB4[] = {
    0, 0x000B, 0, 0, 0x0020, 0x0001, 0x0320, 0,
    0x03F8, 0x0004, 0x0398, 0x0002, 0x03E8, 0x0006, 0x0088, 0xFFFC,
    0x0018, 0xFFFF, 0x03B8, 0x0003, 0x03F8, 0x0001, 0x00C8, 0xFFFF,
    0x03F0, 0xFFE5, 0x0330, 0, 0x0028, 0x0004, 0x0298, 0x0003,
    0x0220, 0xFFFF, 0x0190, 0, 0x03C8, 0x0001, 0x0318, 0x0001,
};

u16 D_801A26A4_764C04[] = {
    0xFFF9, 0, 0x0038, 0, 0x0018, 0, 0x02F8, 0xFFFD,
    0x0350, 0, 0x00C8, 0x0005, 0x0008, 0x0005, 0x0150, 0,
    0x0008, 0, 0x0288, 0x0002, 0, 0x0006, 0x0108, 0,
    0x0020, 0xFFE4, 0x0368, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0028, 0xFFE6, 0x0228, 0, 0, 0, 0x0030, 0,
};

u16 D_801A26F4_764C54[] = {
    0xFFF9, 0, 0x0030, 0, 0x0048, 0, 0x0360, 0,
    0x0350, 0, 0x00E8, 0x0005, 0x0008, 0x0005, 0x0150, 0,
    0x0008, 0, 0x0290, 0x0002, 0, 0x0006, 0x0118, 0,
    0x0020, 0xFFE4, 0x0388, 0xFFFB, 0x0028, 0, 0x0360, 0xFFFE,
    0x0028, 0xFFE8, 0x0228, 0, 0, 0, 0x0020, 0,
};

u16 D_801A2744_764CA4[] = {
    0xFFF9, 0, 0x0030, 0, 0x0048, 0, 0x0360, 0,
    0x0388, 0x0006, 0, 0x0002, 0, 0x0005, 0x0020, 0,
    0x03F8, 0, 0x0248, 0x0002, 0, 0x0004, 0x0140, 0,
    0x0020, 0xFFE4, 0x03A8, 0xFFFB, 0x0028, 0, 0x0338, 0xFFFE,
    0x0028, 0xFFE8, 0x0248, 0, 0, 0, 0x03C8, 0,
};

u16 D_801A2794_764CF4[] = {
    0xFFF9, 0, 0x0030, 0, 0x0048, 0, 0x0360, 0,
    0x0388, 0x0006, 0, 0x0002, 0x0008, 0x0003, 0x0030, 0,
    0x03F8, 0, 0x0248, 0x0002, 0, 0x0004, 0x0140, 0,
    0x0020, 0xFFE4, 0x03A8, 0xFFFB, 0x0028, 0, 0x0338, 0xFFFE,
    0x0028, 0xFFE8, 0x0248, 0, 0, 0, 0x0378, 0xFFFB,
};

u16 D_801A27E4_764D44[] = {
    0xFFF9, 0, 0x0030, 0, 0x0020, 0, 0x0348, 0,
    0x0368, 0xFFFF, 0, 0x0002, 0x0008, 0x0003, 0x0030, 0,
    0x03F8, 0, 0x0248, 0x0002, 0, 0x0004, 0x0140, 0,
    0x0020, 0xFFE4, 0x0390, 0xFFFB, 0x0028, 0, 0x0350, 0xFFFE,
    0, 0xFFE9, 0x0248, 0, 0, 0, 0x0378, 0xFFFB,
};

u16 D_801A2834_764D94[] = {
    0xFFF9, 0x0015, 0x00A0, 0, 0x03F8, 0x0003, 0x0380, 0xFFF7,
    0x0358, 0x0003, 0x0008, 0x0005, 0, 0x0003, 0, 0,
    0, 0xFFFB, 0x0220, 0x0002, 0, 0, 0x0058, 0,
    0x0020, 0xFFE5, 0x0230, 0, 0x0028, 0x0003, 0x0358, 0,
    0x03B8, 0xFFE6, 0x0208, 0, 0x0028, 0, 0x03C0, 0,
};

u16 D_801A2884_764DE4[] = {
    0x0021, 0x003C, 0, 0, 0x0008, 0xFFFC, 0x03A8, 0,
    0x02F0, 0x0003, 0x0008, 0x0005, 0, 0x0003, 0, 0,
    0, 0xFFF8, 0x0190, 0x0002, 0, 0, 0x03F0, 0,
    0x0020, 0xFFE5, 0x0218, 0x0002, 0x0048, 0x0003, 0, 0,
    0x03E0, 0xFFE6, 0x0230, 0, 0x0030, 0x0004, 0x03F8, 0,
};

u16 D_801A28D4_764E34[] = {
    0x0038, 0x0031, 0x0380, 0, 0x0010, 0, 0x0250, 0,
    0x02F0, 0xFFFF, 0x0008, 0x0005, 0, 0x0003, 0, 0,
    0, 0xFFFA, 0x0190, 0x0002, 0, 0, 0x00D8, 0,
    0x0020, 0xFFE2, 0x0218, 0x0002, 0x0048, 0x0003, 0, 0,
    0x03E8, 0xFFE6, 0x0240, 0, 0x0038, 0x0006, 0x03F8, 0,
};

u16 D_801A2924_764E84[] = {
    0x0042, 0x001E, 0x0300, 0, 0x03E0, 0xFFFA, 0x0288, 0,
    0x0308, 0xFFFF, 0x0008, 0x0005, 0, 0x0003, 0, 0,
    0, 0xFFFA, 0x0200, 0x0002, 0, 0, 0x00D8, 0,
    0x0020, 0xFFE5, 0x0218, 0x0002, 0x0048, 0x0003, 0, 0,
    0x03E8, 0xFFE9, 0x0240, 0, 0x0038, 0x0006, 0x03F8, 0,
};

u16 D_801A2974_764ED4[] = {
    0x0042, 0x0018, 0x0220, 0, 0x03B0, 0xFFFB, 0x0288, 0,
    0x03D0, 0xFFFF, 0x0008, 0x0005, 0, 0x0003, 0, 0,
    0, 0xFFFA, 0x0200, 0x0002, 0, 0, 0x00D8, 0,
    0x0020, 0xFFE5, 0x02A0, 0x0002, 0x0048, 0x0001, 0x0338, 0,
    0x03E8, 0xFFE9, 0x0240, 0, 0x0038, 0x0006,
};

u16 D_801A29C0_764F20[] = {
    0x0042, 0x000D, 0x0208, 0, 0x03B0, 0xFFFB, 0x0288, 0,
    0x03B0, 0, 0x0008, 0x0003, 0, 0x0003, 0, 0,
    0, 0xFFFA, 0x0200, 0x0002, 0, 0, 0x00D8, 0,
    0x0030, 0xFFE5, 0x02A0, 0x0002, 0x0048, 0x0001, 0x03E8, 0,
    0x0030, 0xFFE9, 0x0240, 0, 0x0060, 0x0006, 0x03F8, 0,
};

u16 D_801A2A10_764F70[] = {
    0xFFFB, 0, 0x0078, 0, 0x0008, 0x0004, 0x03C8, 0xFFF7,
    0x03A0, 0x0002, 0x0330, 0x0002, 0x0008, 0x0001, 0x0048, 0x0002,
    0x0020, 0x0001, 0, 0x0002, 0, 0, 0x0070, 0xFFFF,
    0x0020, 0xFFE9, 0x0360, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0058, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2A60_764FC0[] = {
    0xFFFB, 0xFFFE, 0x0060, 0, 0x0008, 0x0004, 0x03C8, 0xFFF7,
    0, 0x0001, 0x0210, 0xFFFD, 0x0008, 0, 0x01E0, 0xFFFF,
    0, 0xFFFE, 0x0340, 0x0008, 0x03C0, 0x0004, 0x0048, 0x0004,
    0x0020, 0xFFE4, 0x0340, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0070, 0xFFEB, 0x02D8, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16 D_801A2AB0_765010[] = {
    0xFFFB, 0, 0x0078, 0, 0x0008, 0x0004, 0x03C8, 0xFFF7,
    0x03F0, 0, 0x0028, 0x0006, 0x03F8, 0x0003, 0x0078, 0,
    0x03D8, 0, 0x0258, 0, 0x0010, 0x0002, 0x0188, 0x0001,
    0x0020, 0xFFE4, 0x0320, 0xFFFB, 0x0028, 0xFFFF, 0x0378, 0xFFFC,
    0x0058, 0xFFEB, 0x0320, 0xFFFB, 0x0028, 0xFFFF, 0x0390, 0xFFFC,
};

u16* D_801A2B00_765060[] = {
    D_801A1B64_7640C4, D_801A1A74_763FD4, D_801A1C54_7641B4, D_801A1CA4_764204, D_801A1CF4_764254, D_801A1D44_7642A4, D_801A1D94_7642F4, D_801A1DE4_764344,
    D_801A1E34_764394, D_801A1E84_7643E4, D_801A1ED4_764434, D_801A1F24_764484, D_801A1F74_7644D4, D_801A1FC4_764524, D_801A2014_764574, D_801A2064_7645C4,
    D_801A20B4_764614, D_801A2104_764664, D_801A2154_7646B4, D_801A1AC4_764024, D_801A1B14_764074, D_801A1BB4_764114, D_801A1C04_764164, D_801A21A4_764704,
    D_801A21F4_764754, D_801A2244_7647A4, D_801A2294_7647F4, D_801A22E4_764844, D_801A2334_764894, D_801A2384_7648E4, D_801A23D4_764934, D_801A2424_764984,
    D_801A2474_7649D4, D_801A24C4_764A24, D_801A2514_764A74, D_801A2564_764AC4, D_801A25B4_764B14, D_801A2604_764B64, D_801A2654_764BB4, D_801A26A4_764C04,
    D_801A26F4_764C54, D_801A2744_764CA4, D_801A2794_764CF4, D_801A27E4_764D44, D_801A2834_764D94, D_801A2884_764DE4, D_801A28D4_764E34, D_801A2924_764E84,
    D_801A2974_764ED4, D_801A29C0_764F20, D_801A2A10_764F70, D_801A2A60_764FC0, D_801A2AB0_765010, 0x00000000,
};

u16 D_801A2BD8_765138[] = {
    0, 0, 0, 0x0001, 0x0004, 0, 0x0013, 0x0004,
    0, 0x0014, 0x0004, 0, 0x7FFD, 0x0001, 0x0013, 0x0004,
    0, 0x0001, 0x0004, 0, 0x7FFF, 0,
};

u16 D_801A2C04_765164[] = {
    0, 0, 0, 0, 0x0008, 0, 0x7FFE, 0,
};

u16 D_801A2C14_765174[] = {
    0, 0, 0, 0x0001, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2C24_765184[] = {
    0, 0, 0, 0x0002, 0x0009, 0, 0x7FFD, 0x0001,
    0x0003, 0x0006, 0, 0x7FFD, 0x0002, 0x0004, 0x0006, 0,
    0x0005, 0x0006, 0, 0x0006, 0x0007, 0, 0x7FFE, 0,
};

u16 D_801A2C54_7651B4[] = {
    0, 0, 0, 0x0001, 0x0008, 0, 0x0007, 0x0008,
    0, 0x0008, 0x0005, 0, 0x0009, 0x0008, 0, 0x7FFD,
    0x0001, 0x000A, 0x0005, 0, 0x000B, 0x0005, 0, 0x7FFD,
    0x0002, 0x0001, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2C90_7651F0[] = {
    0, 0, 0, 0x000C, 0x0005, 0, 0x000D, 0x0010,
    0, 0x7FFF,
};

u16 D_801A2CA4_765204[] = {
    0, 0, 0, 0x000E, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2CB4_765214[] = {
    0, 0, 0, 0x000F, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2CC4_765224[] = {
    0, 0, 0, 0x000F, 0x0008, 0, 0x0010, 0x0008,
    0, 0x7FFD, 0x0001, 0x0011, 0x0005, 0, 0x0012, 0x0008,
    0, 0x7FFF,
};

u16 D_801A2CE8_765248[] = {
    0, 0, 0, 0x0015, 0x0008, 0, 0x0016, 0x0008,
    0, 0x7FFE,
};

u16 D_801A2CFC_76525C[] = {
    0, 0, 0, 0x0001, 0x0008, 0, 0x0017, 0x0010,
    0, 0x7FFD, 0x0001, 0x0018, 0x0005, 0, 0x0019, 0x0008,
    0, 0x001A, 0x0008, 0, 0x7FFD, 0x0002, 0x001B, 0x0008,
    0, 0x7FFD, 0x0004, 0x001C, 0x0004, 0, 0x001D, 0x0008,
    0, 0x7FFF,
};

u16 D_801A2D40_7652A0[] = {
    0, 0, 0, 0x001E, 0x0008, 0, 0x001D, 0x0008,
    0, 0x7FFE,
};

u16 D_801A2D54_7652B4[] = {
    0, 0, 0, 0, 0x0003, 0, 0x001F, 0x0008,
    0, 0x7FFF,
};

u16 D_801A2D68_7652C8[] = {
    0, 0, 0, 0x0020, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2D78_7652D8[] = {
    0, 0, 0, 0x0021, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2D88_7652E8[] = {
    0, 0, 0, 0x0006, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2D98_7652F8[] = {
    0, 0, 0, 0x0022, 0x000B, 0, 0x0022, 0x0010,
    0, 0x7FFD, 0x0001, 0x0023, 0x0005, 0, 0x0024, 0x000A,
    0, 0x7FFF,
};

u16 D_801A2DBC_76531C[] = {
    0, 0, 0, 0x0025, 0x0006, 0, 0x0026, 0x0006,
    0, 0x7FFE,
};

u16 D_801A2DD0_765330[] = {
    0, 0, 0, 0x0006, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2DE0_765340[] = {
    0, 0, 0, 0x0021, 0x0008, 0, 0x7FFF, 0,
};

u16 D_801A2DF0_765350[] = {
    0, 0, 0, 0x0027, 0x0008, 0, 0x0028, 0x0004,
    0, 0x7FFF,
};

u16 D_801A2E04_765364[] = {
    0, 0, 0, 0x0029, 0x0008, 0, 0x7FFD, 0x0002,
    0x002A, 0x0008, 0, 0x7FFD, 0x0004, 0x002B, 0x0010, 0,
    0x7FFF, 0,
};

u16 D_801A2E28_765388[] = {
    0, 0, 0, 0x0027, 0x0008, 0, 0x002C, 0x0008,
    0, 0x7FFD, 0x0002, 0x002D, 0x0008, 0, 0x7FFD, 0x0001,
    0x002E, 0x0008, 0, 0x002F, 0x0008, 0, 0x0030, 0x0005,
    0, 0x0031, 0x0005, 0, 0x7FFF, 0,
};

u16 D_801A2E64_7653C4[] = {
    0, 0, 0, 0x0032, 0x0008, 0, 0x7FFD, 0x0001,
    0x0033, 0x0008, 0, 0x7FFD, 0x0002, 0x0034, 0x0008, 0,
    0x7FFD, 0x0004, 0x7FFE, 0,
};

u16 D_801A2E8C_7653EC[] = {
    0, 0, 0, 0x0015, 0x0006, 0, 0x001F, 0x0008,
    0, 0x7FFF,
};

u16 D_801A2EA0_765400[] = {
    0, 0, 0, 0, 0, 0,
};



Unk_D_801A2EAC_76540C D_801A2EAC_76540C[] = {
    { 0.3f, 0.3f, 80, 70, 255, 255, 0x01A8, 0 },
    { 0.5f, 0.6f, 0, 0, 0, 255, 0x0132, 0 },
    { 0.5f, 0.5f, 0, 0, 0, 255, 0x00F4, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x013E, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0140, 0 },
    { 0.3f, 0.3f, 80, 70, 255, 255, 0x01A8, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0142, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0144, 0 },
    { 0.3f, 0.3f, 80, 70, 255, 255, 0x01A8, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0146, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0148, 0 },
    { 0.3f, 0.3f, 80, 70, 255, 255, 0x01A8, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0136, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x0138, 0 },
    { 0.7f, 0.7f, 0, 0, 0, 255, 0x013A, 0 },
    { 0.5f, 0.5f, 0, 0, 0, 255, 0x00F4, 0 },
};

f32 D_801A2FAC_76550C[] = {
    0.1f, 0.1f, 0.2f, 0.2f, 0.4f, 0.4f, 0.8f, 0.8f,
};

s32 D_801A2FCC_76552C[] = {
    FIXED_UNIT(0.140625), FIXED_UNIT(0.15625), FIXED_UNIT(0.1640625), FIXED_UNIT(0.1875),
};

s16 D_801A2FDC_76553C[] = {
    0x280E, 0x2816, 0x281E, 0x2820, 0x2822, 0,
};

u8 D_801A2FE8_765548[] = {
    2, 6, 5, 6, 2, 7, 8, 7,
};

s16 D_801A2FF0_765550[] = {
    0x1804, 0x1806,
};

s16 D_801A2FF4_765554[] = {
    0x1808, 0x180A, 0x180C, 0x180E, 0x1810, 0x1812, 0x1814, 0,
    0x1818, 0x181A, 0x181C, 0x181E, 0x1820, 0,
};

s16 D_801A3010_765570[] = {
    0x0130, 0x0100, 0, 0,
};

s16 D_801A3018_765578[] = {
    0x01EC, 0x0100, 0, 0,
};

s16 D_801A3020_765580[] = {
    0x016C, 0x0100, 0, 0,
};

s16 D_801A3028_765588[] = {
    0x018E, 0x0100, 0, 0,
};

s16 D_801A3030_765590[] = {
    0x01C6, 0x0100, 0, 0,
};

s16 D_801A3038_765598[] = {
    0x0188, 0x0100, 0, 0,
};

s16 D_801A3040_7655A0[] = {
    0x00CE, 0x0100, 0, 0,
};

s16 D_801A3048_7655A8[] = {
    0x280E, 0x0100, 0, 0,
};

Unk_D_801A3050_7655B0 D_801A3050_7655B0[] = {
    {
        0x0019, 0, 0x23, 1e+01f, 20, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f,
        0, 0, 0, 255,
        -8, 0, D_801A3010_765570,
    },
    {
        0x0003, 0, 0x23, 1e+01f, 6, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        2.0f, 0.0f, 0.0f, 2.8f, 0.0f, 0.0f,
        0, 0, 0, 255,
        -20, 0, D_801A3018_765578,
    },
    {
        0x0003, 0, 0x23, 1e+01f, -1, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        0.5f, 0.05f, 0.0f, 0.7f, 0.005f, 0.0f,
        0, 0, 0, 255,
        -20, 0, D_801A3020_765580,
    },
    {
        0x0019, 0, 0x23, 6e+01f, 1, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        2.0f, 0.002f, 0.0f, 3.0f, -0.025f, 0.0f,
        96, 96, 96, 255,
        -4, 0, D_801A3028_765588,
    },
    {
        0x0003, 0, 0x23, 1e+01f, 1, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        1.0f, 0.0f, 0.0f, 1.8f, 0.0f, 0.0f,
        0, 0, 0, 255,
        -20, 0, D_801A3018_765578,
    },
    {
        0x0019, 0, 0x3, 1.8e+02f, 3, 0,
        FIXED_UNIT(-0.5), 0, 0,
        FIXED_UNIT(0.0625), FIXED_UNIT(1.0/512), 0,
        0, 0, 0, 0,
        1.2f, 0.00625f, 0.0f, 1.2f, 0.00625f, 0.0f,
        96, 96, 96, 255,
        -4, 0, D_801A3030_765590,
    },
    {
        0x0019, 0, 0x3, 4e+01f, 3, 0,
        FIXED_UNIT(-0.375), 0, 0,
        FIXED_UNIT(0.0625), FIXED_UNIT(1.0/512), 0,
        0, 0, 0, 0,
        0.7f, 0.00625f, 0.0f, 0.7f, 0.00625f, 0.0f,
        96, 96, 96, 255,
        -6, 0, D_801A3030_765590,
    },
    {
        0x0019, 0, 0x3, 3e+01f, 2, 0,
        FIXED_UNIT(-0.25), 0, 0,
        FIXED_UNIT(0.0625), FIXED_UNIT(1.0/512), 0,
        0, 0, 0, 0,
        0.4f, 0.00625f, 0.0f, 0.4f, 0.00625f, 0.0f,
        96, 96, 96, 255,
        -8, 0, D_801A3030_765590,
    },
    {
        0x0019, 0, 0x3, 3e+01f, 5, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        2.8f, 0.02f, 0.0f, 1.8f, 0.01f, 0.0f,
        96, 96, 96, 255,
        -10, 0, D_801A3038_765598,
    },
    {
        0x0013, 0, 0x3, 2e+01f, -4, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        0.4f, 0.1f, 0.1f, 0.2f, 0.1f, 0.1f,
        0, 0, 0, 255,
        -20, 0, D_801A3040_7655A0,
    },
    {
        0x0013, 0, 0x3, 2e+01f, -4, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        -1.4f, 0.1f, 0.1f, -1.6f, 0.1f, 0.1f,
        0, 0, 0, 255,
        -20, 0, D_801A3040_7655A0,
    },
    {
        0x0019, 0, 0x3, 2e+01f, 1, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        1.4f, 0.02f, 0.0f, 2.4f, 0.0f, 0.0f,
        32, 32, 32, 255,
        -20, 0, D_801A3028_765588,
    },
    {
        0x0019, 0, 0x3, 1e+01f, -1, 0,
        0, 0, 0,
        0, 0, 0,
        0, 0, 0, 0,
        1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f,
        32, 32, 32, 255,
        -20, 0, D_801A3048_7655A8,
    },
};

s8 D_801A3530_765A90[] = {
    10, -20, -24, 24, 28, -16, -8, 8,
    16, -20, -22, 36, 24, -40, -16, 32,
    10, -10, -10, 10, 20, 2, -10, 10,
    10, -20, -10, 10, 12, -24, -16, 10,
    1, -1, -1, 1, 10, -26, -10, 10,
    10, -10, -10, 10,
};

s8 D_801A355C_765ABC[] = {
    16, -10, -24, 24, 32, -20, 22, 42,
    36, -20, 36, 60, -16, -38, 0, 29,
    10, -6, -10, 8, 36, -20, 4, 60,
};

s16 D_801A3574_765AD4[] = {
    -32, -24, -16, -8, 0, 0x0008, 0x0010, 0x0018,
    0x0020, 0x0020, 0x0018, 0x0010, 0x0008, 0, -8, -16,
    -24, -32,
};

s8 D_801A3598_765AF8[] = {
    0, 1, 2, 3, 4, 5, 6, 7,
    2, 7, 4, 3, 5, 1, 6, 0,
};

s16 D_801A35A8_765B08[] = {
    0, 0x0020, -32, 0x0040, -64, 0x0060, -96, 0,
    0, 0, 0, 0,
};


s32 func_8019BAE4_75E044(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7);
void func_8019C3E0_75E940(u16 actor_index);
void func_8019C838_75ED98(u16 actor_index);
void func_8019CAA0_75F000(u16 actor_index);
void func_8019CC40_75F1A0(u16 actor_index);
void func_8019D0E4_75F644(u16 actor_index);
void func_801A0C94_7631F4(u16 actor_index);
DEFAULT_INT func_801A165C_763BBC(u16 actor_index, s16 arg1, s16 arg2, s16 arg3);


void func_8019B100_75D660(u16 actor_index) {
}

void func_8019B108_75D668(u16 actor_index, s16 arg1, s16 arg2) {
    u16 temp_v0;
    s32 var_a1;

    temp_v0 = Actor_RangeFindInactive_90ToC0();
    if (temp_v0 != 0) {
        gActors[temp_v0].actorType = 0x1101;
        Actor_Initialize(temp_v0);
        gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            var_a1 = -arg1;
        }
        else {
            var_a1 = arg1;
        }

        gActors[temp_v0].posX.whole = var_a1 - (0 - gActors[actor_index].posX.whole);
        gActors[temp_v0].posY.whole = gActors[actor_index].posY.whole + arg2;
        gActors[temp_v0].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[temp_v0].graphicIndex = 0x16C;
        gActors[temp_v0].scaleX = -0.1f;
        gActors[temp_v0].scaleY = 0.3f;
        gActors[temp_v0].colorA = 0xFF;
        gActors[temp_v0].colorR = gActors[temp_v0].colorG = gActors[temp_v0].colorB = 0;
        gActors[temp_v0].var_150 = actor_index;
        gActors[temp_v0].var_154 = arg1;
        gActors[temp_v0].var_158 = arg2;
        D_801A2EA0_765400[3] = temp_v0;
    }
}

void func_8019B248_75D7A8(u16 actor_index) {
    u16 index = D_801A2EA0_765400[3];
    gActors[index].flags = 0;
    gActors[index].graphicFlags = 0;
}

void func_8019B288_75D7E8(u16 actor_index) {
    u16 temp_v0;
    s32 var_v0;
    Actor* temp_a1;

    temp_v0 = (u16)gActors[actor_index].var_150;
    temp_a1 = &gActors[temp_v0];
    if (temp_a1->flags & ACTOR_FLAG_FLIPPED) {
        var_v0 = -gActors[actor_index].var_154;
    }
    else {
        var_v0 = gActors[actor_index].var_154;
    }

    gActors[actor_index].posX.whole = var_v0 - (0 - temp_a1->posX.whole);
    gActors[actor_index].posY.whole = gActors[actor_index].var_158 + temp_a1->posY.whole;
}

void func_8019B308_75D868(u16 actor_index, s16 arg1, s16 arg2) {
    Actor* temp_s0;
    Actor* temp_s1;
    Unk_D_801A2EAC_76540C* var_s2;
    s32 var_s4;
    s32 var_s6;
    s32 var_v0;
    u16 temp_s3;

    var_s6 = Rand() & 0xF;
    var_s2 = &D_801A2EAC_76540C[var_s6];
    var_s4 = 0;
    do {
        temp_s3 = Actor_RangeFindInactive_90ToC0();

        if (temp_s3 != 0) {
            temp_s0 = &gActors[temp_s3];
            temp_s0->actorType = 0x1102;
            temp_s1 = &gActors[actor_index];
            Actor_Initialize(temp_s3);
            temp_s0->velocityY.raw = 0;
            temp_s0->velocityX.raw = 0;
            temp_s0->unk_168 = 0;
            temp_s0->unk_164 = 0;
            temp_s0->var_160 = 0;
            temp_s0->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            temp_s0->flags = ACTOR_FLAG_ACTIVE;
            var_v0 = (temp_s1->flags & ACTOR_FLAG_FLIPPED) ? -arg1 : arg1;
            var_s6 += 1;
            temp_s0->posX.whole = var_v0 - (0 - temp_s1->posX.whole);
            temp_s0->posY.whole = temp_s1->posY.whole + arg2;
            temp_s0->posZ.whole = temp_s1->posZ.whole + 1;
            temp_s0->var_150 = actor_index;
            temp_s0->var_154 = arg1;
            temp_s0->var_158 = arg2;
            temp_s0->scaleX = var_s2->scaleX;
            temp_s0->scaleY = var_s2->scaleY;
            temp_s0->colorR = var_s2->colorR;
            temp_s0->colorG = var_s2->colorG;
            temp_s0->colorB = var_s2->colorB;
            temp_s0->colorA = var_s2->colorA;
            temp_s0->graphicIndex = var_s2->graphicIndex;
            temp_s0->var_15C = FIXED_UNIT(0.6);
            temp_s0->unk_170 = var_s4 * 10;
            var_s2 = &D_801A2EAC_76540C[var_s6 & 0xF];
            D_801A2EA0_765400[var_s4] = temp_s3;
        }

        var_s4 += 1;
    } while (var_s4 != 3);
}

void func_8019B514_75DA74(u16 actor_index) {
    s16 index;
    u16 temp_v1;
    for (index = 0; index < 3; index++) {
        temp_v1 = D_801A2EA0_765400[index];
        gActors[temp_v1].flags = 0;
        gActors[temp_v1].graphicFlags = 0;
    }
}

void func_8019B56C_75DACC(u16 actor_index) {
    Actor* parent;
    Actor* actor;
    s32 velocity_x;
    s32 velocity_y;
    s32 temp_a3;
    s32 countdown;
    s32 temp_v1_3;
    s32 var_v1;
    u16 parent_index;

    actor = &gActors[actor_index];
    countdown = actor->unk_170;
    if (countdown == 0) {
        actor->flags |= ACTOR_FLAG_DRAW;
        parent_index = actor->var_150_s16[1];
        parent = &gActors[parent_index];

        if (parent->flags & ACTOR_FLAG_FLIPPED) {
            var_v1 = -actor->var_154;
        }
        else {
            var_v1 = actor->var_154;
        }

        velocity_x = actor->velocityX.raw;
        velocity_y = actor->velocityY.raw;
        actor->posX.whole = (velocity_x >> 0x10) + parent->posX.whole + var_v1;
        actor->posY.whole = (velocity_y >> 0x10) + parent->posY.whole + actor->var_158;
        actor->posX.whole -= 0x10;
        actor->var_160 += actor->var_15C;
        temp_a3 = actor->var_160;
        actor->unk_164 += temp_a3;

        var_v1 = actor->unk_168;
        switch (var_v1) {
        case 0:
            temp_v1_3 = actor->unk_164;
            actor->velocityY.raw = velocity_y - FIXED_UNIT(0.4);
            actor->velocityX.raw = temp_v1_3;

            if (temp_v1_3 > FIXED_UNIT(20)) {
                actor->unk_168 += 1;
                actor->var_15C = -actor->var_15C;
                return;
            }
            break;

        case 1:
            actor->velocityY.raw = velocity_y + FIXED_UNIT(0.4);
            actor->velocityX.raw = actor->unk_164;

            if (temp_a3 <= 0) {
                actor->var_15C = -actor->var_15C;
                actor->var_160 = 0;
                actor->unk_164 = 0;
                actor->unk_168 += 1;
                actor->posZ.whole -= 1;
                return;
            }
            break;

        case 2:
            actor->velocityY.raw = velocity_y + FIXED_UNIT(0.4);
            actor->velocityX.raw = velocity_x - temp_a3;

            if (actor->unk_164 > FIXED_UNIT(20)) {
                actor->unk_168 += 1;
                actor->var_15C = -actor->var_15C;
                return;
            }
            break;

        case 3:
            actor->velocityY.raw = velocity_y - FIXED_UNIT(0.4);
            actor->velocityX.raw = velocity_x - temp_a3;

            if (temp_a3 <= 0) {
                actor->var_15C = -actor->var_15C;
                actor->var_160 = 0;
                actor->unk_164 = 0;
                actor->unk_168 = 0;
                actor->posZ.whole += 1;
                return;
            }
            break;
        }
    }
    else {
        actor->unk_170 = countdown - 1;
    }
}

void func_8019B76C_75DCCC(u16 actor_index) {
    f32 scale_change;
    f64 denominator;
    s32 temp_a0;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state += 1;
        denominator = (f64)(f32)gActors[actor_index].var_154;
        gActors[actor_index].var_110 = (f32)(1.0 / denominator);
        scale_change = (f32)(0.6 / denominator);
        gActors[actor_index].unk_114 = scale_change;
        temp_a0 = -(((s32)scale_change >> 1) << 0x10);
        gActors[actor_index].velocityY.raw = temp_a0;
        gActors[actor_index].var_158 = 8;
        gActors[actor_index].var_15C = temp_a0;
        return;

    case 1:
        gActors[actor_index].var_158 -= 1;
        if (gActors[actor_index].var_158 <= 0) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].var_158 = 8;
        }

        gActors[actor_index].var_154 -= 1;
        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state += 1;
        }

        gActors[actor_index].scaleX += gActors[actor_index].var_110;
        gActors[actor_index].scaleY += gActors[actor_index].unk_114;
        return;

    case 2:
        temp_a0 = (u16)gActors[actor_index].var_150_s16[1];
        if (!(gActors[temp_a0 + 1].unk_180 & 0x80000000)) {
            return;
        }

        gActors[actor_index].state += 1;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].var_15C;
        gActors[actor_index].var_154 = 0x46;
        gActors[actor_index].var_110 /= 2;
        gActors[actor_index].unk_114 /= 2;
        return;

    case 3:
        gActors[actor_index].var_158 -= 1;
        if (gActors[actor_index].var_158 <= 0) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].var_158 = 8;
        }

        gActors[actor_index].var_154 -= 1;

        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state += 1;
        }

        gActors[actor_index].scaleX -= gActors[actor_index].var_110;
        gActors[actor_index].scaleY -= gActors[actor_index].unk_114;
        gActors[actor_index].colorA -= 2;
        return;

    case 4:
        temp_a0 = (u16)gActors[actor_index].var_150_s16[1];
        gActors[temp_a0 + 1].unk_180 &= 0x7FFFFFFF;
        gActors[actor_index].graphicFlags = 0;
        gActors[actor_index].flags = 0;
        break;

    default:
        return;
    }
}

s32 func_8019B9F4_75DF54(u16 arg0, s16 arg1, s16 arg2, s32 arg3) {
    u16 temp_v0 = Actor_RangeFindInactive_90ToC0();
    if (temp_v0 != 0) {
        gActors[temp_v0].actorType = 0x1103;
        Actor_Initialize(temp_v0);
        gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
        gActors[temp_v0].posX.whole = arg1;
        gActors[temp_v0].posY.whole = arg2 + 0x4C;
        gActors[temp_v0].posZ.whole = 1;
        gActors[temp_v0].colorA = 0xFF;
        gActors[temp_v0].colorR = gActors[temp_v0].colorG = gActors[temp_v0].colorB = 0;
        gActors[temp_v0].graphicIndex = 0x281C;
        gActors[temp_v0].scaleX = 0.6f;
        gActors[temp_v0].scaleY = 1.8f;
        gActors[temp_v0].state = 0;
        gActors[temp_v0].var_150 = arg0;
        gActors[temp_v0].var_154 = arg3;
        return 0;
    }

    return -1;
}

s32 func_8019BAE4_75E044(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7) {
    Actor* temp_v1;
    f32* temp_a0;
    f32* temp_v0;
    u16 temp_a0_2;
    u8 var_a1;

    temp_a0 = D_801A2FAC_76550C;
    temp_a0_2 = Actor_RangeFindInactive_90ToC0();
    if (temp_a0_2) {
        temp_v1 = &gActors[temp_a0_2];
        temp_v1->actorType = 0x1104;
        Actor_Initialize(temp_a0_2);
        temp_v1->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        temp_v1->flags = ACTOR_FLAG_ACTIVE;
        temp_v1->posX.raw = gActors[actor_index].posX.raw;
        temp_v1->posY.raw = gActors[actor_index].posY.raw + arg5;
        temp_v1->posZ.whole = gActors[actor_index].posZ.whole + 2;
        temp_v1->colorA = 0xFF;
        temp_v1->colorR = temp_v1->colorG = temp_v1->colorB = 0;
        temp_v1->hitboxBY0 = 4;
        temp_v1->hitboxBY1 = -4;
        temp_v1->hitboxBX0 = -4;
        temp_v1->hitboxBX1 = 4;
        temp_v1->state = 0;
        temp_v0 = temp_a0 + arg3 * 2;

        if (arg4 != 0) {
            var_a1 = ACTOR_FLAG_FLIPPED;
        }
        else {
            var_a1 = 0;
        }

        temp_v1->flags |= var_a1;
        temp_v1->graphicIndex = D_801A2FDC_76553C[arg2];
        temp_v1->scaleX = *temp_v0++;
        temp_v1->scaleY = *temp_v0;
        temp_v1->var_150 = arg3;
        temp_v1->var_154 = arg6;
        temp_v1->var_158 = arg7;
        temp_v1->var_15C = D_801A2FCC_76552C[arg3];
        temp_v1->var_160 = arg1;
        return 0;
    }

    return -1;
}

void func_8019BC80_75E1E0(u16 actor_index) {
    s32 state;
    s32 current_state;
    u32* actor_flags;

    state = gActors[actor_index].state;
    actor_flags = &gActors[actor_index].flags;
    current_state = state;
    state = state * 0;
    state = current_state + state * 0;

    switch (state) {
    case 0:
        if (--gActors[actor_index].var_160 > 0) {
            current_state = gActors[actor_index].state;
        }
        else {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_DRAW;

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = -gActors[actor_index].var_154;
            }
            else {
                gActors[actor_index].velocityX.raw = gActors[actor_index].var_154;
            }

            gActors[actor_index].velocityY.raw = gActors[actor_index].var_158;
            gActors[actor_index].unk_16C = 240;
            current_state = gActors[actor_index].state;
        }
        break;

    case 1:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
            gActors[actor_index].velocityY.raw -= gActors[actor_index].var_15C;
        }

        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw >> 1;
            gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 1);
        }

        current_state = gActors[actor_index].state;
        break;

    case 2:
        gActors[actor_index].colorA -= 4;

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
            gActors[actor_index].velocityY.raw -= gActors[actor_index].var_15C;
        }

        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].var_154 = 4;
        }

        current_state = gActors[actor_index].state;
        break;

    case 3:
        *actor_flags = ACTOR_FLAG_NONE;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
        current_state = gActors[actor_index].state;
        break;
    }

    if (current_state && --gActors[actor_index].unk_16C <= 0) {
        gActors[actor_index].state = 3;
    }
}

void func_8019BE78_75E3D8(u16 actor_index, s16 arg1, s32 arg2) {
    s16 temp_v1;
    s16 var_s1;
    s16 var_s2;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s3;

    temp_v1 = (Rand() & 3) + arg1;
    var_s1 = 0;
    for (var_s2 = 0; var_s2 < temp_v1; var_s2++) {
        temp_s0 = Rand() & 0xFFFF;
        temp_s5 = FIXED_UNIT(0.5) - (0 - TO_FIXED(Rand() & 1)) + (temp_s0 & 0xFFFFU);
        temp_s0 = Rand() & 0xFFFF;
        temp_s3 = FIXED_UNIT(2) - (0 - TO_FIXED(Rand() & 3)) + (temp_s0 & 0xFFFFU);
        temp_s4 = Rand() & 0xFFFF;
        temp_s0 = Rand() & 0xFFFF;
        func_8019BAE4_75E044(actor_index, temp_s4 & 0x1F, temp_s0 & 3, Rand() & 3, var_s2 & 1, arg2, temp_s5, temp_s3);
        var_s1++;
        if (var_s1 >= 5) {
            var_s1 = 0;
        }
    }
}

void func_8019BFEC_75E54C(u16 actor_index, s16 x_offset, s16 y_offset) {
    s32 position_x;
    s32 position_y;
    s32 velocity_x;
    Actor* actor;
    s32 speedup;
    s16 z_offset;
    u16 new_actor_index;

    actor = &gActors[actor_index];
    position_x = ((actor->flags & ACTOR_FLAG_FLIPPED) ? -x_offset : x_offset) + actor->posX.whole;
    position_y = actor->posY.whole + y_offset;
    velocity_x = 1;
    speedup = Rand() & 3;
    if (!speedup) {
        speedup = 1;
    }

    velocity_x <<= speedup + 13;
    position_x = position_x - (2 - (Rand() & 3));

    if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
        velocity_x = -velocity_x;
    }

    z_offset = Rand() & 1;

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, position_x, position_y, 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[new_actor_index].graphicIndex = 0x168;
        gActors[new_actor_index].unk_148 = (Rand() & 0xF) + 20;
        gActors[new_actor_index].posZ.whole = actor->posZ.whole + z_offset;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].velocityX.raw = velocity_x;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3.2625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.163125);
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_114 = 0.005f;
        gActors[new_actor_index].var_110 = 0.005f;
    }
}

void func_8019C1C4_75E724(u16 actor_index, u8 arg1) {
    s8* temp_v1 = D_801A3530_765A90;
    temp_v1 += arg1 * 4;

    gActors[actor_index].hitboxBY0 = *temp_v1++;
    gActors[actor_index].hitboxBY1 = *temp_v1++;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].hitboxBX0 = *temp_v1++;
        gActors[actor_index].hitboxBX1 = *temp_v1;
        return;
    }

    gActors[actor_index].hitboxBX0 = -temp_v1[1];
    gActors[actor_index].hitboxBX1 = -temp_v1[0];
}

void func_8019C26C_75E7CC(u16 actor_index, u8 arg1) {
    s8* temp_v1 = D_801A355C_765ABC;
    temp_v1 += arg1 * 4;

    gActors[actor_index].hitboxAY0 = *temp_v1++;
    gActors[actor_index].hitboxAY1 = *temp_v1++;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].hitboxAX0 = *temp_v1++;
        gActors[actor_index].hitboxAX1 = *temp_v1;
        return;
    }

    gActors[actor_index].hitboxAX0 = -temp_v1[1];
    gActors[actor_index].hitboxAX1 = -temp_v1[0];
}

s32 func_8019C314_75E874(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x60;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK15);
        return 1;
    }

    return 0;
}

void func_8019C380_75E8E0(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.15625));
}

void func_8019C3E0_75E940(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.015625));
}

void func_8019C440_75E9A0(u16 actor_index) {
    func_8019C3E0_75E940(actor_index);

    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }
}

void func_8019C4B0_75EA10(u16 actor_index) {
    func_8019C440_75E9A0(actor_index);

    if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].state = 0x80;
    }
}

s32 func_8019C52C_75EA8C(u16 actor_index) {
    func_8019C440_75E9A0(actor_index);

    if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        return 1;
    }

    return 0;
}

void func_8019C5A8_75EB08(u16 actor_index) {
    s32 var_a0;
    u16 temp_v0 = gActors[(u16)gActors[actor_index + 12].unk_180].parentIndex;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a0 = FIXED_UNIT(-6);
    }
    else {
        var_a0 = FIXED_UNIT(6);
    }

    gActors[temp_v0].unk_104 = var_a0 - (0U - gActors[(u16)gActors[actor_index + 12].unk_180].posX.raw);
    gActors[temp_v0].unk_108 = gActors[(u16)gActors[actor_index + 12].unk_180].posY.raw + FIXED_UNIT(6);
    gActors[temp_v0].unk_10C = gActors[(u16)gActors[actor_index + 12].unk_180].posZ.raw;
    gActors[temp_v0].flags_098 |= ACTOR_FLAG3_GRAB;
}

void func_8019C684_75EBE4(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
        gActors[actor_index].state = 0x20;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        gActors[actor_index].velocityY.raw = 0;
    }
}

void func_8019C700_75EC60(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;

        if (gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            return;
        }

        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        return;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    func_8019B248_75D7A8(actor_index + 3);
    func_8019B514_75DA74(actor_index + 3);

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        return;
    }

    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].state = 0x60;
}

void func_8019C838_75ED98(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(
        gActors[actor_index].velocityX.raw,
        0,
        (s32)(gActors[actor_index + 1].unk_12C * FIXED_UNIT(0.078125))
    );

    if (gActors[actor_index].unk_16C & 1) {
        gActors[actor_index].velocityX.raw = (s32)((FIXED_UNIT(2.6875) * gActors[actor_index + 1].unk_130) * gActors[actor_index + 1].unk_12C);
        func_801A165C_763BBC(actor_index, -0x10, -0x10, 6);
    }

    if (gActors[actor_index].unk_16C & 2) {
        func_801A165C_763BBC(actor_index, -0x10, -0x14, 7);
    }
}

void func_8019C980_75EEE0(u16 actor_index) {
    func_8019C838_75ED98(actor_index);
}

void func_8019C9A8_75EF08(u16 actor_index) {
    func_80027018(0x2E);
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0;
    func_8019C1C4_75E724(actor_index, 0);
    func_8008105C(actor_index, (s16*)D_801A19B4_763F14, (s16*)D_801A1940_763EA0);
    gActors[actor_index].unk_178 = (s32)D_801A2B00_765060;
    func_80081478(actor_index, (s16*)D_801A19B4_763F14, 0);
    func_80081790(actor_index, D_801A2C14_765174);
    func_800819A8(actor_index, (s16*)D_801A19B4_763F14);
    gActors[actor_index].colorA = 0xFE;
    D_801A3B28_766088[0] = 0;
    gActors[actor_index].health = 0x35C;
    D_800BE544 = actor_index;
}

void func_8019CAA0_75F000(u16 actor_index) {
    Actor* temp_v0;
    s16 temp_a1;
    s16 temp_a2;

    if (gActors[actor_index].state != 0) {
        temp_v0 = &gActors[actor_index + 0];
        temp_v0[1].unk_180 &= ~0x13;
        temp_a1 = gScreenPosCurrentX.whole;
        temp_v0[6].unk_180 = gActors[actor_index].posX.whole + temp_a1;
        temp_a2 = gScreenPosCurrentY.whole;\
        temp_v0[7].unk_180 = gActors[actor_index].posY.whole + temp_a2;

        if (temp_v0[6].unk_180 < gScreenBoundX0.parts[0]) {
            temp_v0[1].unk_180 |= 1;
            gActors[actor_index].posX.whole = -0x8F;
        }

        if (gScreenBoundX1.parts[0] < temp_v0[6].unk_180) {
            temp_v0[1].unk_180 |= 2;
            gActors[actor_index].posX.whole = 0x8F;
        }

        temp_v0[8].unk_180 = (temp_v0[6].unk_180 - temp_a1) - gActors[0].posX.whole;
        temp_v0[9].unk_180 = (temp_v0[7].unk_180 - temp_a2) - gActors[0].posY.whole;

        if ((temp_v0[8].unk_180 < 0) && (temp_v0[8].unk_180 != 0)) {
            temp_v0[8].unk_180 = -temp_v0[8].unk_180;
        }

        if ((temp_v0[9].unk_180 < 0) && (temp_v0[9].unk_180 != 0)) {
            temp_v0[9].unk_180 = -temp_v0[9].unk_180;
        }

        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        func_800819A8(actor_index, (s16*)D_801A19B4_763F14);
        temp_v0[1].unk_12C = (f32)gActors[actor_index].unk_168 / 10000.0f;
    }
}

void func_8019CC40_75F1A0(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index + 1].unk_130 = -1.0f;
        gActors[actor_index].unk_138 = 1.0f;
    }
    else {
        gActors[actor_index + 1].unk_130 = 1.0f;
        gActors[actor_index].unk_138 = 0.0f;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019CD08_75F268(u16 actor_index) {
    Actor* temp_v0 = &gActors[actor_index];
    s16 temp_v1 = temp_v0->health;
    s32 var_a0;

    if (temp_v1 != -1) {
        var_a0 = D_801A3B24_766084;
        if (var_a0 & 0x2000) {
            var_a0 = 0x60;
        }
        else if (var_a0 & 0x100) {
            var_a0 = 0x34;
        }
        else if (var_a0 & 0x200) {
            var_a0 = 0x38;
        }
        else if (var_a0 & 0x400) {
            var_a0 = 0x34;
        }
        else if ((var_a0 & 0x800) || (var_a0 & 0x1000)) {
            var_a0 = 0x64;
        }
        else {
            if (var_a0 & 0x4000) {
                var_a0 = 0x38;
            }
            else {
                var_a0 = 0x30;
            }
        }

        D_801A3B24_766084 = 0;
        temp_v0->health = temp_v1 - var_a0;
    }
}

void func_8019CDD4_75F334(u16 actor_index) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x30;
        return;
    }

    if (gActors[actor_index + 15].unk_180 <= 0) {
        if (gActors[actor_index + 1].unk_180 & 0x40) {
            gActors[actor_index + 15].unk_180 = gActors[actor_index].health >> 3;
            gActors[actor_index].state = 0xC0;
            return;
        }

        if (gActors[actor_index].health >= 980) {
            gActors[actor_index].state = 0x20;
            return;
        }

        if ((Rand() & 7) && gActors[actor_index].health < 81) {
            gActors[actor_index].state = 0xF0;
            return;
        }

        if (Rand() & 1) {
            gActors[actor_index].state = 0x20;
        }
        else {
            gActors[actor_index].state = 0xA0;
        }
    }
    else {
        gActors[actor_index + 15].unk_180 -= 1;
    }
}

void func_8019CF5C_75F4BC(u16 actor_index) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x10;
        return;
    }

    if ((gActors[actor_index + 9].unk_180 < 0x21) &&
        (gActors[actor_index + 8].unk_180 < 0x51) &&
        (gActors[actor_index + 8].unk_180 >= 0xA)) {
        gActors[actor_index].state = 0x90;
        gActors[actor_index + 15].unk_180 = 0x3C;
    }
}

s32 func_8019D03C_75F59C(u16 actor_index) {
    return gActors[0].posX.whole + ((gActors[0].hitboxBX0 + gActors[0].hitboxBX1) >> 1) - ((gActors[actor_index].hitboxBX1 + gActors[actor_index].hitboxBX0) >> 1) - gActors[actor_index].posX.whole;
}

void func_8019D0A4_75F604(u16 actor_index) {
    func_8019CAA0_75F000(actor_index);
    func_8019D0E4_75F644(actor_index);
    func_8019CC40_75F1A0(actor_index);
}

void func_8019D0E4_75F644(u16 actor_index) {
    u16 temp_a0_5;
    s32 temp_a0;
    Actor* temp_s1;
    s32 temp_t1;
    s16 sp4E;
    s16 sp4C;
    s16 temp_s1_2;
    s16 var_v0_2;
    u16 temp_s2;
    Actor* temp_t0;

    temp_s2 = actor_index;
    temp_s1 = &gActors[temp_s2 + 0];
    if (gActors[temp_s2 + 14].unk_180 != 0) {
        if (gActors[temp_s2 + 14].unk_180 == 1) {
            gActors[temp_s2 + 0].posZ.raw = FIXED_UNIT(1);
        }
        else {
            gActors[temp_s2 + 0].posZ.raw = -FIXED_UNIT(2);
        }

        gActors[temp_s2 + 14].unk_180 = 0;
    }

    if (gActors[actor_index].flags_098 & 0x200 && !(gActors[temp_s2 + 1].unk_180 & 8)) {
        D_801A3B24_766084 = gActors[temp_s2 + 1].unk_180;
        gActors[actor_index].state = 0x40;
        gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].flags &= ~0x200;
        D_801A19B4_763F14[23] = 0x3F0;

        if (gActors[temp_s2 + 1].unk_180 & 0x80) {
            gActors[temp_s2 + 1].unk_180 |= 0x20000000;
        }

        gActors[temp_s2 + 1].unk_180 &= ~0x7F00;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, temp_s2);
    }

    if (gActors[temp_s2 + 1].unk_180 & 0x40) {
        if ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 0x200) && !(gActors[temp_s2 + 1].unk_180 & 8)) {
            gActors[actor_index].state = 0xE0;
        }

        if ((gActors[actor_index].state != 0xC2) && (gActors[actor_index].state != 0xC3) && (gActors[actor_index].state != 0xC4) && (gActors[actor_index].state != 0xC5) && (gActors[actor_index].state != 0xC6) && (gActors[actor_index].state != 0xC7) && (gActors[actor_index].state != 0xC8) && (gActors[actor_index].state != 0xC9) && (gActors[actor_index].state != 0xD0) && (gActors[actor_index].state != 0xD1) && (gActors[actor_index].state != 0xD2) && (gActors[actor_index].state != 0xD3) && (gActors[actor_index].state != 0xD4) && (gActors[actor_index].state != 0xE0) && (gActors[actor_index].state != 0xE1) && (gActors[actor_index].state != 0xE2) && (gActors[actor_index].state != 0xE3)) {
            gActors[temp_s2 + 16].unk_180_s8[0] = (s8)(gActors[temp_s2 + 16].unk_180_s8[0] - 1);

            if (gActors[temp_s2 + 16].unk_180_s8[0] <= 0) {
                Sound_PlaySfxAtActor2(SFX_011B, temp_s2);
                gActors[temp_s2 + 16].unk_180_s8[0] = 0x14;
            }
        }
    }

    if (gActors[temp_s2 + 16].unk_180_s8[2] != 0) {
        if (gActors[temp_s2 + 16].unk_180_s8[2] >= 0x15) {
            Actor_SetColorRgb(temp_s2, 0U);
            gActors[temp_s2 + 16].unk_180_s8[3] = 0;
            gActors[temp_s2 + 16].unk_180_s8[2] = (s8)gActors[temp_s2 + 16].unk_180_s8[3];
        }
        else {
            gActors[temp_s2 + 16].unk_180_s8[3] = (s8)(gActors[temp_s2 + 16].unk_180_s8[3] - 1);

            if (gActors[temp_s2 + 16].unk_180_s8[3] <= 0) {
                gActors[temp_s2 + 16].unk_180_s8[2] = (s8)(gActors[temp_s2 + 16].unk_180_s8[2] + 1);

                if (gActors[temp_s2 + 16].unk_180_s8[2] & 1) {
                    Actor_SetColorRgb(temp_s2, 0U);
                }
                else {
                    Actor_SetColorRgb(temp_s2, 0x7FU);
                }

                gActors[temp_s2 + 16].unk_180_s8[3] = 4;
            }
        }
    }

    switch (gActors[actor_index].state) {
    case 0x0:
        func_8019C9A8_75EF08(temp_s2);
        gActors[temp_s2 + 15].unk_180 = 0xB4;
        gActors[actor_index].state = 0x20;
        gActors[temp_s2 + 16].unk_180_s8[1] = 0;
        gActors[temp_s2 + 17].unk_180_s8[0] = 0;
        gActors[temp_s2 + 16].unk_180_s8[0] = (s8)gActors[temp_s2 + 16].unk_180_s8[1];
        break;

    case 0x100:
        gActors[actor_index].state++;
        gStageState += 1;
        gActors[actor_index].health = -1;
        gActors[temp_s2 + 17].unk_180_s8[3] = 0x3C;

        for (var_v0_2 = 0; var_v0_2 < 0x13; var_v0_2++) {
            gActors[actor_index + var_v0_2].flags &= 0xFFFF4AFF;
        }
        break;

    case 0x101:
        gActors[temp_s2 + 17].unk_180_s8[3] = (s8)(gActors[temp_s2 + 17].unk_180_s8[3] - 1);

        if (gActors[temp_s2 + 17].unk_180_s8[3] <= 0) {
            gActors[actor_index].state += 1;
            func_80081720(temp_s2, (s16*)D_801A19B4_763F14, 3U);
        }
        break;

    case 0x102:
        gActors[actor_index].state++;
        gActors[actor_index].flags = 0;
        break;

    case 0x103:
        break;

    case 0x10:
        gActors[actor_index].state++;

        if (!(gActors[temp_s2 + 1].unk_180 & 0x40)) {
            gActors[actor_index].flags |= 0x10000;\
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFDFFFF;\
            gActors[actor_index].flags_098 &= ~0x40;
            func_80081790(temp_s2, D_801A2C14_765174);
            func_8019C1C4_75E724(temp_s2, 0U);
        }

    case 0x11:
        if (!(gActors[temp_s2 + 1].unk_180 & 0x40)) {
            func_8019C314_75E874(temp_s2);
        }

        func_8019CDD4_75F334(temp_s2);
        break;

    case 0x60:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= 0x20000;
        gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFEFFFF;\
        gActors[actor_index].flags_098 &= ~0x20;

    case 0x61:
        temp_t1 = gActors[actor_index].velocityX.raw;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(temp_t1, 0, FIXED_UNIT(0.03125));
        func_8019C4B0_75EA10(temp_s2);
        break;

    case 0x80:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= 0x10000;
        gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFDFFFF;\
        gActors[actor_index].flags_098 &= ~0x40;
        gActors[actor_index].velocityY.raw = 0;

    case 0x81:
        func_8019C380_75E8E0(temp_s2);
        gActors[actor_index].state = 0x10;
        func_8019C314_75E874(temp_s2);
        break;

    case 0x20:
        gActors[actor_index].state++;
        func_80081790(temp_s2, D_801A2C24_765184);
        func_8019C1C4_75E724(temp_s2, 2U);

    case 0x21:
        if (gActors[actor_index].unk_16C & 1) {
            Sound_PlaySfxAtActor2(SFX_0121, temp_s2);
        }

        func_8019C980_75EEE0(temp_s2);
        func_8019CF5C_75F4BC(temp_s2);
        break;

    case 0x30:
        gActors[actor_index].state++;
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x20);
        func_80081790(temp_s2, D_801A2BD8_765138);
        gActors[temp_s2 + 3].graphicIndex = (s16)D_801A2FF4_765554[5];
        gActors[actor_index].velocityX.raw = 0;

    case 0x31:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].flags ^= 0x20;
            gActors[actor_index].state += 1;
        }
        break;

    case 0x32:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x20);
            gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
            gActors[actor_index].state = 0x10;
        }
        break;

    case 0x40:
        if (gActors[temp_s2 + 1].unk_180 & 0x40) {
            gActors[actor_index].state += 2;
        }
        else {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= 0xFFFEFD7F;
            gActors[actor_index].flags = (gActors[actor_index].flags) | 0x20000;
            gActors[temp_s2 + 1].unk_180 |= 8;
            gActors[temp_s2 + 1].unk_180 = (u32)((gActors[temp_s2 + 1].unk_180) & ~4);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[temp_s2 + 2].unk_180 = 0x50;
            gActors[temp_s2 + 3].unk_180 = 0;
            gActors[temp_s2 + 4].unk_180 = 0;
            gActors[temp_s2 + 5].unk_180 = 0;
            gActors[temp_s2 + 10].unk_180 = 0;
            gActors[temp_s2 + 11].unk_180 = 0;
            func_8019C1C4_75E724(temp_s2, 1U);
            func_80081790(temp_s2, D_801A2C04_765164);
            func_8019B108_75D668((u16)(actor_index + 3), -0x10, 0);
        }
        break;

    case 0x41:
        gActors[actor_index].flags &= ~0x2020;

        if (!(gActors[gActors[actor_index].parentIndex].flags & 0x20)) {
            gActors[actor_index].flags = (gActors[actor_index].flags) | 0x20;
        }

        if (gActors[actor_index].flags_098 & 0x20000 && gActors[temp_s2 + 3].unk_180 == 0) {
            gActors[temp_s2 + 16].unk_180_s8[1] = 0;
            gActors[temp_s2 + 2].unk_180 = (s32)gActors[temp_s2 + 16].unk_180_s8[1];
        }

        gActors[temp_s2 + 2].unk_180 -= 1;

        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            if (gActors[temp_s2 + 3].unk_180 == 0) {
                if (gActors[actor_index].flags_098 & 0x20000) {
                    gActors[temp_s2 + 2].unk_180 = 0xF0;
                }
                else {
                    gActors[temp_s2 + 2].unk_180 = 0x64;
                }

                func_80081790(temp_s2, D_801A2CE8_765248);
                func_8019B248_75D7A8((u16)(actor_index + 3));
            }
            else {
                gActors[temp_s2 + 2].unk_180 = 0xA0;
                func_80081790(temp_s2, D_801A2C04_765164);
                func_8019B108_75D668((u16)(actor_index + 3), -0x10, 0);
                gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
            }

            gActors[temp_s2 + 3].unk_180 += 1;
            gActors[temp_s2 + 3].unk_180 = (s32)((gActors[temp_s2 + 3].unk_180) & 1);
            gActors[temp_s2 + 2].unk_180 += Rand() & 0x1F;
            gActors[temp_s2 + 4].unk_180 = (s32)(gActors[temp_s2 + 4].unk_180 + 1);
        }

        if (gActors[temp_s2 + 3].unk_180 != 0) {
            gActors[temp_s2 + 11].unk_180 -= 1;

            if ((gActors[temp_s2 + 11].unk_180) <= 0) {
                func_8019BFEC_75E54C((u16)(actor_index + 3), -4, (s16)((Rand() & 3) + 4));
                gActors[temp_s2 + 11].unk_180 = 3;
            }

            gActors[temp_s2 + 5].unk_180 -= 1;

            if ((gActors[temp_s2 + 5].unk_180) <= 0) {
                gActors[temp_s2 + 3].graphicIndex = (s16)D_801A2FF0_765550[D_801A2FE8_765548[gActors[temp_s2 + 10].unk_180]];
                gActors[temp_s2 + 5].unk_180 = 3;
                gActors[temp_s2 + 10].unk_180 += 1;
                gActors[temp_s2 + 10].unk_180 &= 7;
            }

            gActors[temp_s2 + 16].unk_180_s8[1] = (s8)(gActors[temp_s2 + 16].unk_180_s8[1] - 1);

            if (gActors[temp_s2 + 16].unk_180_s8[1] <= 0) {
                Sound_PlaySfxAtActor2(SFX_CLANCER_013A, temp_s2);
                gActors[temp_s2 + 16].unk_180_s8[1] = 0x11;
            }
        }

        if (func_80028C80(temp_s2) != 0) {
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~8);

            if (gActors[temp_s2 + 3].unk_180 == 0) {
                func_8019B248_75D7A8((u16)(actor_index + 3));
                gActors[temp_s2 + 8].posZ.whole -= 6;
            }

            if (gActors[actor_index].flags_098 & 0x400) {
                gActors[actor_index].state = 0x50;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[temp_s2 + 1].var_110 = 0.0f;
                gActors[temp_s2 + 1].unk_114 = 12.0f;
                func_80081790(temp_s2, D_801A2CE8_765248);
                func_8019C1C4_75E724(temp_s2, 4U);
                func_8019CD08_75F268(temp_s2);
            }
            else {
                gActors[actor_index].state = 0x60;
                gActors[actor_index].flags |= 0x20000;\
                gActors[actor_index].flags &= 0xFFFEFFFF;\
                gActors[actor_index].flags_098 &= ~0x20;
                gActors[actor_index].flags |= 0x2000;
                gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
            }
        }
        break;

    case 0x50:
        if (gActors[temp_s2 + 1].var_110 == 0.0f) {
            gActors[actor_index].unk_170 = (s32)((f64)gActors[actor_index].unk_170 + 1864135.111111111);
            gActors[temp_s2 + 11].unk_180 -= 1;

            if ((gActors[temp_s2 + 11].unk_180) <= 0) {
                func_8019BFEC_75E54C((u16)(actor_index + 3), -4, (s16)((Rand() & 3) + 4));
                gActors[temp_s2 + 11].unk_180 = 2;
            }

            gActors[temp_s2 + 5].unk_180 -= 1;
            if ((gActors[temp_s2 + 5].unk_180) <= 0) {
                gActors[temp_s2 + 3].graphicIndex = (s16)D_801A2FF0_765550[D_801A2FE8_765548[gActors[temp_s2 + 10].unk_180]];
                gActors[temp_s2 + 5].unk_180 = 3;
                gActors[temp_s2 + 10].unk_180 += 1;
                gActors[temp_s2 + 10].unk_180 &= 7;
            }
        }

        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & 0x20) {
            if (gActors[temp_s2 + 1].var_110 > 0.0f) {
                gActors[actor_index].state = 0xB0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].flags |= 0x2000;

                if (gActors[temp_s2 + 2].unk_180 != 0) {
                    sp4E = -0x10;
                }
                else {
                    sp4E = 0;
                }

                func_801A165C_763BBC(temp_s2, -0x20, sp4E, 5);
                temp_s1_2 = sp4E - 8;
                func_801A165C_763BBC(temp_s2, -0x10, temp_s1_2, 6);
                gActors[actor_index].flags ^= 0x20;
                func_801A165C_763BBC(temp_s2, -0x20, sp4E, 5);
                func_801A165C_763BBC(temp_s2, -0x10, temp_s1_2, 6);
                gActors[actor_index].flags ^= 0x20;
                Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
            }
            else {
                gActors[temp_s2 + 16].unk_180_s8[2] = 1;
                Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
                gActors[actor_index].flags |= 0x8000;
                gActors[actor_index].flags = (gActors[actor_index].flags) & ~0x1000;
                gActors[actor_index].velocityX.raw = (s32)gActors[actor_index].velocityX.raw >> 1;
                gActors[actor_index].velocityY.raw = -((s32)gActors[actor_index].velocityY.raw >> 1);
                gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
                func_801A165C_763BBC(temp_s2, 4, -0x10, 8);

                if (((f64)gActors[actor_index].unk_170) >= 16777216.0 && ((f64)gActors[actor_index].unk_170) <= 50331648.0) {
                    gActors[actor_index].unk_170 = 0;
                    func_80081790(temp_s2, D_801A2D88_7652E8);
                    gActors[temp_s2 + 2].unk_180 = 1;
                }
                else {
                    func_8019C1C4_75E724(temp_s2, 5U);
                    func_80081790(temp_s2, D_801A2D68_7652C8);
                    gActors[actor_index].unk_170 = 0x01000000;
                    gActors[temp_s2 + 2].unk_180 = 0;
                }

                gActors[temp_s2 + 1].var_110 = (f32)(gActors[temp_s2 + 1].var_110 + 1.0f);
            }
        }
        else {
            temp_t1 = gActors[actor_index].velocityX.raw;
            if (((temp_t1 > 0) && ((gActors[actor_index].flags_098 & 8) || (gActors[temp_s2 + 1].unk_180 & 2))) || ((temp_t1 < 0) && ((gActors[actor_index].flags_098 & 4) || (gActors[temp_s2 + 1].unk_180 & 1)))) {
                gActors[actor_index].velocityX.raw = -temp_t1 / 2;
                gActors[temp_s2 + 1].unk_114 = 0.0f;
            }

            if (gActors[temp_s2 + 1].unk_114 <= 0.0f) {
                func_8019C440_75E9A0(temp_s2);
            }
            else {
                gActors[temp_s2 + 1].unk_114 = (f32)(gActors[temp_s2 + 1].unk_114 - 1.0f);
            }

            gActors[actor_index].unk_170 &= 0x03FFFFFF;
        }
        break;

    case 0xB0:
        if (gActors[temp_s2 + 5].unk_180 == -1) {
            gActors[actor_index].state = 0x100;
            func_80081790(temp_s2, D_801A2E8C_7653EC);
        }
        else {
            gActors[actor_index].state++;
            gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;

            if (gActors[temp_s2 + 2].unk_180 != 0) {
                func_80081790(temp_s2, D_801A2D78_7652D8);
                func_8019B308_75D868((u16)(actor_index + 3), -8, 0x20);
            }
            else {
                func_80081790(temp_s2, D_801A2D54_7652B4);
                func_8019B308_75D868((u16)(actor_index + 3), -4, 0x10);
            }

            gActors[temp_s2 + 3].unk_180 = (s32)((Rand() & 0x3F) + 0x8C);
            gActors[temp_s2 + 4].unk_180 = 0;
            gActors[temp_s2 + 15].unk_180 = 0;
        }
        break;

    case 0xB1:
        temp_s1 = &gActors[temp_s2 + 0];

        if (gActors[temp_s2 + 2].unk_180 == 0) {
            if (gActors[actor_index].flags_098 & 0x80) {
                if (gActors[temp_s2 + 4].unk_180 == 0) {
                    func_80081790(temp_s2, D_801A2E8C_7653EC);
                    Sound_PlaySfxAtActor2(SFX_0091, temp_s2);
                    gActors[temp_s2 + 4].unk_180 = 1;

                    if ((Rand() & 0x3F) == 0x13 && YellowGem_GetFlag(gCurrentStage) == 0) {
                        SpawnGemActor((u16)(actor_index + 3), 0x32U, 0U);
                    }
                    else if (!(Rand() & 3)) {
                        if (gActors[temp_s2 + 17].unk_180_s8[0] < 0x11) {
                            gActors[temp_s2 + 17].unk_180_s8[0] += 1;
                            SpawnGemActor((u16)(actor_index + 3), 0x31U, 0U);
                        }
                    }
                }
            }
            else {
                gActors[temp_s2 + 4].unk_180 = 0;
            }
        }

        gActors[temp_s2 + 3].unk_180 -= 1;
        if ((gActors[temp_s2 + 3].unk_180) <= 0) {
            func_8019B514_75DA74((u16)(actor_index + 3));

            if (gActors[temp_s2 + 2].unk_180 != 0) {
                gActors[actor_index].state += 1;
                func_80081790(temp_s2, D_801A2C14_765174);
            }
            else {
                gActors[actor_index].state += 2;
                func_80081790(temp_s2, D_801A2D98_7652F8);
            }
        }
        break;

    case 0xB2:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].flags &= 0xFFFF7FFF;
            gActors[actor_index].flags = (gActors[actor_index].flags) | 0x1000;
            gActors[actor_index].state = 0x10;
        }
        break;

    case 0xB3:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state += ((Rand() & 0x1F) == 6) ? 2 : 1;
            gActors[actor_index].flags |= 0x20000;
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFEFFFF;\
            gActors[actor_index].flags_098 &= ~0x20;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
        }
        break;

    case 0xB4:
        if (func_8019C52C_75EA8C(temp_s2) != 0) {
            gActors[actor_index].flags |= 0x10000;
            gActors[actor_index].flags &= 0xFFFDFFFF;
            gActors[actor_index].flags_098 &= ~0x40;
            gActors[actor_index].flags &= 0xFFFF7FFF;
            gActors[actor_index].flags |= 0x1000;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x10;
        }

        gActors[actor_index].unk_170 = (s32)((f64)gActors[actor_index].unk_170 - 1118481.0666666667);
        if (gActors[actor_index].unk_170 <= 0) {
            gActors[actor_index].unk_170 = 0;
        }
        break;

    case 0xB5:
        gActors[actor_index].unk_170 = (s32)((f64)gActors[actor_index].unk_170 - 1118481.0666666667);

        if (gActors[actor_index].velocityY.raw < 0) {
            func_8019C1C4_75E724(temp_s2, 6U);
        }

        if (func_8019C52C_75EA8C(temp_s2) != 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].unk_170 = 0;
            func_80081790(temp_s2, D_801A2DD0_765330);

            if (gActors[actor_index].flags & 0x20) {
                gActors[actor_index].velocityX.raw = -FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }

            gActors[temp_s2 + 2].unk_180 = 0x78;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }
        break;

    case 0xB6:
        if (func_8019C52C_75EA8C(temp_s2) != 0) {
            gActors[actor_index].state += 1;
            func_80081790(temp_s2, D_801A2DBC_76531C);
            gActors[temp_s2 + 17].unk_180_s8[1] = 6;
        }
        break;

    case 0xB7:
        if (gActors[temp_s2 + 2].unk_180 == 4) {
            func_801A165C_763BBC(temp_s2, 0x1C, 0x2C, 0);
        }

        gActors[temp_s2 + 17].unk_180_s8[1] = (s8)(gActors[temp_s2 + 17].unk_180_s8[1] - 1);

        if (gActors[temp_s2 + 17].unk_180_s8[1] <= 0) {
            Sound_PlaySfxAtActor2(SFX_LAND_00AC, temp_s2);
            gActors[temp_s2 + 17].unk_180_s8[1] = 0xC;
        }

        gActors[temp_s2 + 2].unk_180 -= 1;

        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags |= 0x20000;\
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFEFFFF;\
            gActors[actor_index].flags_098 &= ~0x20;
            gActors[actor_index].velocityX.raw *= 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            func_80081790(temp_s2, D_801A2DE0_765340);
            func_8019C1C4_75E724(temp_s2, 0U);
        }
        break;

    case 0xB8:
        if (func_8019C52C_75EA8C(temp_s2) != 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags |= 0x10000;
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFDFFFF;\
            gActors[actor_index].flags_098 &= ~0x40;
            func_8019C1C4_75E724(temp_s2, 0U);
            gActors[temp_s2 + 2].unk_180 = 0x1E;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_801A165C_763BBC(temp_s2, 4, -0x1C, 8);
            func_801A165C_763BBC(temp_s2, -0x20, -0x10, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -0x18, 6);
            gActors[actor_index].flags ^= 0x20;
            func_801A165C_763BBC(temp_s2, -0x20, -0x10, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -0x18, 6);
            gActors[actor_index].flags ^= 0x20;
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
            SpawnGemActor((u16)(actor_index + 3), 0x33U, 0U);
        }
        break;

    case 0xB9:
        temp_s1 = &gActors[temp_s2 + 0];
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state += 1;
            gActors[temp_s2 + 2].unk_180 = 0xB4;
            func_8019B108_75D668((u16)(actor_index + 3), -0xC, 4);
        }
        break;

    case 0xBA:
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            *D_801A3B28_766088 += 1;
            gActors[actor_index].state = 0x10;
            gActors[actor_index].flags &= 0xFFFF7FFF;
            gActors[actor_index].flags = (gActors[actor_index].flags) | 0x1000;
            func_8019B248_75D7A8((u16)(actor_index + 3));
        }
        break;

    case 0x90:
        gActors[actor_index].state++;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        func_80081790(temp_s2, D_801A2C14_765174);
        break;

    case 0x91:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state++;
            func_80081790(temp_s2, D_801A2C54_7651B4);
            func_8019C1C4_75E724(temp_s2, 0U);
        }
        break;

    case 0x92:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~0x200;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x200);
        }
        else {
            if (gActors[actor_index].unk_16C & 1) {
                func_801A165C_763BBC(temp_s2, 0x14, 8, 1);
                func_8019C26C_75E7CC(temp_s2, 1U);
                gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x100);
                gActors[actor_index].hitFlags = 0;
                gActors[actor_index].hitType = 3;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
                gActors[actor_index].unk_0FC.raw = 0;
                gActors[actor_index].damage = 4;
                gActors[actor_index].flags |= 0x200;
                Sound_PlaySfxAtActor2(SFX_002B, temp_s2);
            }

            if (gActors[actor_index].unk_16C & 2) {
                gActors[temp_s2 + 1].unk_180 &= ~0x100;
                gActors[temp_s2 + 1].unk_180 = (u32)((gActors[temp_s2 + 1].unk_180) | 0x200);
                func_801A165C_763BBC(temp_s2, 0x26, 8, 1);
                func_8019C26C_75E7CC(temp_s2, 2U);
                gActors[actor_index].hitFlags = 0x81;
                gActors[actor_index].hitType = 3;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
                gActors[actor_index].damage = 0x10;
                gActors[actor_index].flags |= 0x200;
                Sound_PlaySfxAtActor2(SFX_002B, temp_s2);
            }
        }
        break;

    case 0x93:
        gActors[actor_index].state = 0x10;
        break;

    case 0xA0:
        gActors[actor_index].state++;
        func_80081790(temp_s2, D_801A2CFC_76525C);
        gActors[temp_s2 + 2].unk_180 = 0;
        break;

    case 0xA1:
        temp_a0 = Rand() & 0xF;

        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state += 1;
            func_8019C1C4_75E724(temp_s2, 3U);
            gActors[actor_index].flags |= 0x20000;
            temp_a0 = temp_a0 + 0x33;
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFEFFFF;\
            gActors[actor_index].flags_098 &= ~0x20;
            gActors[actor_index].velocityX.raw = (s32)(func_8019D03C_75F59C(temp_s2) << 0x10) / temp_a0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(7);
            func_801A165C_763BBC(temp_s2, 0, -8, 2);
            Sound_PlaySfxAtActor2(SFX_0121, temp_s2);
        }
        break;

    case 0xA2:
        if (gActors[actor_index].unk_16C & 2) {
            gActors[actor_index].state++;
        }

        func_8019C4B0_75EA10(temp_s2);
        break;

    case 0xA3:
        if (gActors[actor_index].unk_16C & 4) {
            gActors[actor_index].state++;
            func_8019C26C_75E7CC(temp_s2, 3U);
            gActors[actor_index].hitFlags = 0x81;
            gActors[actor_index].hitType = 3;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(6);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4);
            gActors[actor_index].damage = 0x40;
            gActors[actor_index].flags |= 0x200;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x400);
            func_801A165C_763BBC(temp_s2, 0x1E, -0xB, 4);
            func_801A165C_763BBC(temp_s2, 0x1C, -0x10, 4);
            Sound_PlaySfxAtActor2(SFX_DASH_0116, temp_s2);
        }
        break;

    case 0xA4:
        if (func_8019C52C_75EA8C(temp_s2) != 0) {
            gActors[actor_index].state += 1;
            gActors[temp_s2 + 14].unk_180 = 2;
            gActors[actor_index].flags &= 0xFFFCEDFF;
            sp4E = gActors[actor_index].posX.whole + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? gActors[actor_index].hitboxBX0 : gActors[actor_index].hitboxBX1);
            sp4C = (gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) - 8;

            while ((func_80012AB4(sp4E, sp4C) & 0xF0) == 0x40) {
                sp4C -= 0x10;
            }

            sp4C += 8;
            gActors[temp_s2 + 13].unk_180 = (s32)(gScreenPosCurrentY.parts[0] + sp4C);
            gActors[temp_s2 + 2].unk_180 = 0;
            gActors[temp_s2 + 3].unk_180 = 4;
            gActors[temp_s2 + 4].unk_180 = 8;
            temp_s1[5].unk_180 = 3;
            gActors[actor_index].velocityX.raw = (s32)gActors[actor_index].velocityX.raw >> 2;
            gActors[actor_index].velocityY.raw = (s32)gActors[actor_index].velocityY.raw >> 2;
            func_8019BE78_75E3D8(temp_s2, 4, FIXED_UNIT(16));
            CameraShake(-8, 0x50);
            func_80081790(temp_s2, D_801A2D40_7652A0);
            func_801A165C_763BBC(temp_s2, 0, -0x20, 3);
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x400);
            Sound_PlaySfxAtActor2(SFX_MECHSTEP_0062, temp_s2);
        }
        break;

    case 0xA5:
        gActors[temp_s2 + 3].unk_180 -= 1;
        if ((gActors[temp_s2 + 3].unk_180) <= 0) {
            func_801A165C_763BBC(temp_s2, (s16)((Rand() & 7) - 0xA), -0x20, 3);
            gActors[temp_s2 + 3].unk_180 = 4;
            gActors[temp_s2 + 2].unk_180 += 1;

            if (gActors[temp_s2 + 2].unk_180 >= 9) {
                gActors[actor_index].state += 1;
            }
        }

        gActors[temp_s2 + 4].unk_180 -= 1;
        if ((gActors[temp_s2 + 4].unk_180) <= 0) {
            gActors[temp_s2 + 5].unk_180 -= 1;
            if ((gActors[temp_s2 + 5].unk_180) > 0) {
                func_8019BE78_75E3D8(temp_s2, 1, FIXED_UNIT(16));
                gActors[temp_s2 + 4].unk_180 = 8;
            }
        }
        break;

    case 0xA6:
        gActors[actor_index].state = 0x10;
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x40);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        break;

    case 0xC0:
        gActors[actor_index].state++;
        gActors[temp_s2 + 12].unk_180 = (s32)(actor_index + 7);
        func_801A0C94_7631F4(temp_s2);
        gActors[actor_index].flags &= 0xFFFCCDFF;
        func_8019C1C4_75E724(temp_s2, 8U);
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags &= 0xFFFCEDFF;
        func_8019C1C4_75E724(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 7U);
        func_8019C26C_75E7CC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 4U);
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags |= 0x800;
        gActors[actor_index].posX.raw = gActors[temp_s2 + 3].unk_180;
        gActors[actor_index].posY.whole = (gActors[temp_s2 + 13].unk_180 - gScreenPosCurrentY.parts[0]) - 0x38;
        func_8019B9F4_75DF54(temp_s2, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0x3C);
        gActors[temp_s2 + 2].unk_180 = 0x28;
        break;

    case 0xC1:
        temp_a0 = gActors[temp_s2 + 2].unk_180;
        if (temp_a0 == 0x14) {
            func_8019BE78_75E3D8(temp_s2, 4, FIXED_UNIT(64));
        }

        if (--gActors[temp_s2 + 2].unk_180 <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(temp_s2, D_801A2C90_7651F0);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            SpawnCrosshair(0xFU, (u16)(actor_index + 7));
            Sound_PlaySfxAtActor2(SFX_0034, temp_s2);
        }
        break;

    case 0xC2:
        func_8019C440_75E9A0(temp_s2);

        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags |= 0x1000;
            temp_a0 = gActors[actor_index].posX.raw - gActors->posX.raw;
            if (temp_a0 < 0) {
                temp_a0 = -temp_a0;
            }

            if (temp_a0 <= FIXED_UNIT(48) && D_800E3584 & 0x30000) {
                gActors[actor_index].state += 1;
                gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags |= 0x1000;
                gActors[actor_index].velocityY.raw = 0;
                gActors[temp_s2 + 2].unk_180 = 0x78;
                gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x800);
            }
            else {
                gActors[actor_index].state = 0xD0;
            }
        }
        break;

    case 0xC3:
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state += 1;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & ~0x800);
            gActors[actor_index].velocityY.raw = -FIXED_UNIT(1.5);
            gActors[temp_s2 + 2].unk_180 = 0x32;
            func_80081790(temp_s2, D_801A2CA4_765204);
            gActors[temp_s2 + 3].unk_180 = 0;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80000000);
        }
        else if (gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 0x100) {
            gActors[actor_index].state += 2;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & 0x7FF);
            gActors[temp_s2 + 2].unk_180 = 0x14;
            func_8019C5A8_75EB08(temp_s2);
        }
        break;

    case 0xC4:
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[temp_s2 + 3].unk_180 += 1;

            if ((gActors[temp_s2 + 3].unk_180) >= 0x78) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 0x10;
                gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x1800);
            }

            gActors[temp_s2 + 2].unk_180 = 0;
        }
        break;

    case 0xC5:
        func_8019C5A8_75EB08(temp_s2);
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(temp_s2, D_801A2DF0_765350);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.8125);

            if (gActors[actor_index].flags & 0x20) {
                gActors[actor_index].velocityX.raw = -FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }

            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80000000);
        }
        break;

    case 0xC6:
        func_8019C5A8_75EB08(temp_s2);

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state += 1;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = 3;
        }
        break;

    case 0xC7:
        func_8019C52C_75EA8C(temp_s2);

        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state += 1;
            gActors[temp_s2 + 14].unk_180 = 1;
            gActors[actor_index].flags |= 0x20000;
            func_8019C1C4_75E724(temp_s2, 0U);
            func_80081790(temp_s2, D_801A2E04_765364);
        }
        else {
            func_8019C5A8_75EB08(temp_s2);
        }
        break;

    case 0xC8:
        func_8019C52C_75EA8C(temp_s2);
        func_8019C5A8_75EB08(temp_s2);

        if (gActors[actor_index].flags_098 & 0x20) {
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].flags |= 0x10000;\
            gActors[actor_index].flags = (gActors[actor_index].flags) & 0xFFFDFFFF;\
            gActors[actor_index].flags_098 &= ~0x40;
            CameraShake(-0xA, 0x14);
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
        }

        if (gActors[actor_index].unk_16C & 4) {
            func_801A165C_763BBC(temp_s2, 0x14, 8, 1);
        }
        break;

    case 0xC9:
        gActors[actor_index].state++;
        temp_a0_5 = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex;
        gActors[temp_a0_5].flags_098 = (s32)(gActors[temp_a0_5].flags_098 | 0x402);

        if (gActors[actor_index].flags & 0x20) {
            gActors[temp_a0_5].unk_0F8.raw = -FIXED_UNIT(4);
        }
        else {
            gActors[temp_a0_5].unk_0F8.raw = FIXED_UNIT(4);
        }

        gActors[temp_a0_5].unk_0FC.raw = FIXED_UNIT(6);
        gActors[temp_a0_5].hitFlags = 0x81;
        gActors[temp_a0_5].hitType = 3;
        gActors[temp_a0_5].health = (s16)(gActors[temp_a0_5].health - 0xC0);
        func_801A165C_763BBC(0U, 0, -0x10, 9);
        func_801A165C_763BBC(0U, 0, -0x10, 0xA);
        func_801A165C_763BBC(0U, 0, 0, 0xB);
        func_801A165C_763BBC(0U, 0, -0x10, 8);
        D_801A19B4_763F14[23] = 0x200;
        func_80081790(temp_s2, D_801A2C14_765174);
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x40);
        gActors[temp_s2 + 2].unk_180 = 0x78;
        break;

    case 0xCA:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
            D_801A19B4_763F14[23] = 0x3F0;
            gActors[actor_index].flags |= 0x3400;
        }
        break;

    case 0xD0:
        gActors[actor_index].state++;
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x1000);
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & ~0x800);
        func_80081790(temp_s2, D_801A2CB4_765214);
        gActors[temp_s2 + 2].unk_180 = 0x3C;
        break;

    case 0xD1:
        if (gActors[actor_index].unk_11C < 0.0f) {
            temp_a0_5 = Actor_RangeFindInactive(0x70U, 0x7AU);
            if (temp_a0_5 != 0) {
                gActors[actor_index].state += 1;
                gActors[temp_a0_5].actorType = 0x1105;
                Actor_Initialize(temp_a0_5);
                gActors[temp_a0_5].parentIndex = (u16)gActors[temp_s2 + 12].unk_180;
                gActors[temp_a0_5].graphicFlags = 0x19;
                gActors[temp_a0_5].flags = 3;
                gActors[temp_a0_5].flags_098 = 0x200;
                gActors[temp_a0_5].graphicIndex = 0x280E;
                gActors[temp_a0_5].posX.whole = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.whole;
                gActors[temp_a0_5].posY.whole = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.whole;
                gActors[temp_a0_5].posZ.whole = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posZ.whole;
                gActors[temp_a0_5].unk_104 = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.raw;
                gActors[temp_a0_5].unk_108 = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.raw + FIXED_UNIT(12);
                gActors[temp_a0_5].unk_10C = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posZ.raw + FIXED_UNIT(1);
                gActors[temp_a0_5].colorA = 0xFF;
                gActors[temp_a0_5].colorR = gActors[temp_a0_5].colorG = gActors[temp_a0_5].colorB = 0;
                gActors[temp_a0_5].health = 1;
                gActors[temp_a0_5].grabType = 1;
                gActors[temp_a0_5].scaleX = 1.0f;
                gActors[temp_a0_5].scaleY = 1.0f;
                gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex = temp_a0_5;
                gActors[temp_s2 + 2].unk_180 = 0x14;
            }
        }
        break;

    case 0xD2:
        temp_a0_5 = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex;
        gActors[temp_a0_5].flags_098 = (s32)(gActors[temp_a0_5].flags_098 | 0x200);
        gActors[temp_a0_5].unk_104 = (s32)gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.raw;
        gActors[temp_a0_5].unk_108 = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.raw + FIXED_UNIT(12));
        gActors[temp_a0_5].unk_10C = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posZ.raw + FIXED_UNIT(1));
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(temp_s2, D_801A2CC4_765224);
        }
        break;

    case 0xD3:
        temp_a0_5 = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex;

        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;

            if (D_800E3584 & 0xC0000) {
                gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x40000000);
            }
            else {
                gActors[temp_a0_5].flags_098 = (s32)(gActors[temp_a0_5].flags_098 | 0x400);
                temp_s1[11].unk_180 = FIXED_UNIT(5);
                temp_a0 = (((s32)(temp_s1[8].unk_180 << 16) / temp_s1[11].unk_180) >> 1) * FIXED_UNIT(0.140625);

                if (gActors[actor_index].flags & 0x20) {
                    gActors[temp_s2 + 11].unk_180 = (s32)-gActors[temp_s2 + 11].unk_180;
                }

                gActors[temp_a0_5].unk_0F8.raw = (s32)(gActors[temp_a0_5].scaleX * (f32)(temp_s1 + 11)->unk_180);
                gActors[temp_a0_5].unk_0FC.raw = (s32)(gActors[temp_a0_5].scaleY * (f32)temp_a0);
                Sound_PlaySfxAtActor2(SFX_JUMP_00AD, temp_s2);
            }
        }
        else {
            gActors[temp_a0_5].flags_098 = (s32)(gActors[temp_a0_5].flags_098 | 0x200);
            gActors[temp_a0_5].unk_104 = (s32)gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.raw;
            gActors[temp_a0_5].unk_108 = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.raw + FIXED_UNIT(12));
            gActors[temp_a0_5].unk_10C = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posZ.raw + FIXED_UNIT(1));
        }
        break;

    case 0xD4:
        gActors[actor_index].state++;
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & ~0x1000);
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80000000);
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(1.5);
        gActors[temp_s2 + 2].unk_180 = 0x32;
        func_80081790(temp_s2, D_801A2CA4_765204);
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x1000);
        break;

    case 0xD5:
        gActors[temp_s2 + 2].unk_180 -= 1;
        if ((gActors[temp_s2 + 2].unk_180) <= 0) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].velocityY.raw = 0;
        }
        break;

    case 0xF0:
        gActors[actor_index].state++;

        for (var_v0_2 = 0; var_v0_2 < 0x13; var_v0_2++) {
            gActors[actor_index + var_v0_2].flags &= 0xFFFF4AFF;
        }

        temp_a0_5 = Actor_RangeFindInactive_90ToC0();
        if (temp_a0_5 != 0) {
            gActors[temp_a0_5].actorType = 0x1106;

            Actor_Initialize(temp_a0_5);
            gActors[temp_a0_5].graphicFlags = 9;
            gActors[temp_a0_5].flags = 2;
            gActors[temp_a0_5].parentIndex = (u16)temp_s2;
        }

        func_80081790(temp_s2, D_801A2E64_7653C4);
        D_801A19B4_763F14[23] = 0x158;
        func_8019C26C_75E7CC(temp_s2, 5U);
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80);
        gActors[actor_index].hitFlags = 0x88;
        gActors[actor_index].hitType = 3;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
        gActors[actor_index].damage = 0x80;
        gActors[actor_index].flags |= 0x200;

        if (gActors[actor_index].flags & 0x20) {
            gActors[actor_index].velocityX.raw = -FIXED_UNIT(2);
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        }

        gActors[temp_s2 + 2].unk_180 = 0xA;
        gActors[temp_s2 + 11].unk_180 = 0;
        gActors[temp_s2 + 10].unk_180 = 0;
        gActors[temp_s2 + 5].unk_180 = 0;
        gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x2000);
        break;

    case 0xF1:
        temp_t1 = gActors[actor_index].velocityX.raw;
        if (((temp_t1 > 0) && ((gActors[actor_index].posX.whole >= 0x69))) || ((temp_t1 < 0) && ((gActors[actor_index].posX.whole < -0x8A)))) {
            gActors[actor_index].state++;
            func_801A165C_763BBC(temp_s2, 0, 0x2C, 0);
            gActors[temp_s2 + 1].unk_180 |= 0x20000000;
            gActors[temp_s2 + 1].unk_180 = (u32)((gActors[temp_s2 + 1].unk_180) & ~0x2000);
            Sound_PlaySfxAtActor2(SFX_HIT_002D, temp_s2);
        }
        else {
            if (gActors[actor_index].unk_16C & 1) {
                func_801A165C_763BBC(temp_s2, 0x14, 8, 1);
                Sound_PlaySfxAtActor2(SFX_002B, temp_s2);
            }

            if (gActors[actor_index].unk_16C & 2) {
                func_801A165C_763BBC(temp_s2, 0x26, 8, 1);
                Sound_PlaySfxAtActor2(SFX_002B, temp_s2);
            }

            if (gActors[actor_index].unk_16C & 4) {
                func_801A165C_763BBC(temp_s2, 0, -0x10, 7);
                func_801A165C_763BBC(temp_s2, -8, -0x10, 6);
                func_801A165C_763BBC(temp_s2, -0x18, -0x10, 5);
            }

            gActors[temp_s2 + 11].unk_180 -= 1;
            if ((gActors[temp_s2 + 11].unk_180) <= 0) {
                func_8019BFEC_75E54C((u16)(actor_index + 3), -4, (s16)((Rand() & 3) + 4));
                gActors[temp_s2 + 11].unk_180 = 3;
            }

            gActors[temp_s2 + 5].unk_180 -= 1;
            if ((gActors[temp_s2 + 5].unk_180) <= 0) {
                gActors[temp_s2 + 3].graphicIndex = (s16)D_801A2FF0_765550[D_801A2FE8_765548[gActors[temp_s2 + 10].unk_180]];
                gActors[temp_s2 + 5].unk_180 = 3;
                gActors[temp_s2 + 10].unk_180 += 1;
                gActors[temp_s2 + 10].unk_180 &= 7;
            }

            gActors[temp_s2 + 16].unk_180_s8[0] = (s8)(gActors[temp_s2 + 16].unk_180_s8[0] - 1);
            if (gActors[temp_s2 + 16].unk_180_s8[0] <= 0) {
                Sound_PlaySfxAtActor2(SFX_CLANCER_013A, temp_s2);
                gActors[temp_s2 + 16].unk_180_s8[0] = 0x14;
            }
        }
        break;

    case 0xF2:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= 0x20000;
        gActors[actor_index].flags &= 0xFFFEFFFF;
        gActors[actor_index].flags_098 &= ~0x20;
        gActors[actor_index].flags &= ~0x200;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        func_8019C1C4_75E724(temp_s2, 5U);
        func_80081790(temp_s2, D_801A2CE8_765248);
        D_801A19B4_763F14[23] = 0x3F0;
        break;

    case 0xF3:
        if (((f64)gActors[actor_index].unk_170) <= 16777216.0) {
            gActors[actor_index].unk_170 = (s32)(((f64)gActors[actor_index].unk_170) + 745654.0444444445);
        }

        func_8019C440_75E9A0(temp_s2);

        temp_t1 = gActors[actor_index].velocityX.raw;
        if (((temp_t1 > 0) && (gActors[actor_index].flags_098 & 8)) || ((temp_t1 < 0) && (gActors[actor_index].flags_098 & 4))) {
            gActors[actor_index].velocityX.raw = 0;
        }

        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & 0x20) {
            gActors[actor_index].state += 1;
            gActors[actor_index].velocityX.raw = (s32)gActors[actor_index].velocityX.raw >> 1;
            gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 2);
            gActors[temp_s2 + 3].graphicIndex = (s16)*D_801A2FF4_765554;
            func_801A165C_763BBC(temp_s2, 4, -8, 8);
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
        }

        gActors[temp_s2 + 11].unk_180 -= 1;
        if ((gActors[temp_s2 + 11].unk_180) <= 0) {
            func_8019BFEC_75E54C((u16)(actor_index + 3), -4, (s16)((Rand() & 3) + 4));
            gActors[temp_s2 + 11].unk_180 = 3;
        }

        gActors[temp_s2 + 5].unk_180 -= 1;
        if ((gActors[temp_s2 + 5].unk_180) <= 0) {
            temp_s1[3].graphicIndex = (s16)D_801A2FF0_765550[D_801A2FE8_765548[temp_s1[10].unk_180]];
            temp_s1[5].unk_180 = 3;
            temp_s1[10].unk_180 += 1;
            gActors[temp_s2 + 10].unk_180 &= 7;
        }
        break;

    case 0xF4:
        func_8019C440_75E9A0(temp_s2);

        temp_t1 = gActors[actor_index].velocityX.raw;
        if (((temp_t1 > 0) && (gActors[actor_index].flags_098 & 8)) || ((temp_t1 < 0) && (gActors[actor_index].flags_098 & 4))) {
            gActors[actor_index].velocityX.raw = 0;
        }

        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & 0x20) {
            gActors[actor_index].state = 0xB0;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x80);
            gActors[actor_index].flags |= 0x2000;
            gActors[actor_index].flags = (gActors[actor_index].flags) & ~0x1000;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[temp_s2 + 2].unk_180 = 0;
            gActors[temp_s2 + 5].unk_180 = -1;
            func_801A165C_763BBC(temp_s2, -0x20, 0, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -8, 6);
            gActors[actor_index].flags ^= 0x20;
            func_801A165C_763BBC(temp_s2, -0x20, 0, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -8, 6);
            gActors[actor_index].flags ^= 0x20;
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
        }
        break;

    case 0xE0:
        gActors[actor_index].state++;
        gActors[temp_s2 + 1].unk_180 |= 0x808;
        gActors[temp_s2 + 1].unk_180 = (u32)((gActors[temp_s2 + 1].unk_180) & ~4);
        gActors[actor_index].unk_128 = (f32)((u16)gActors[temp_s2 + 12].unk_180_s16[1]);
        gActors[actor_index].unk_12C = (f32)((u16)gActors[temp_s2 + 12].unk_180_s16[1]);
        gActors[actor_index].flags &= 0xFFFCC17F;
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & 0xFFFEF55F);
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags |= ((gActors[actor_index].flags & 0x20) + 0x20000);
        func_8019C1C4_75E724(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0xAU);
        func_80081790(temp_s2, D_801A2E28_765388);
        gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].grabType = 5;

        if (gActors[actor_index].flags & 0x20) {
            gActors[temp_s2 + 2].unk_180 = -FIXED_UNIT(1);
        }
        else {
            gActors[temp_s2 + 2].unk_180 = FIXED_UNIT(1);
        }

        gActors[temp_s2 + 3].unk_180 = FIXED_UNIT(3);
        gActors[temp_s2 + 4].unk_180 = FIXED_UNIT(0.1328125);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        break;

    case 0xE1:
        if (!(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 0x200)) {
            gActors[temp_s2 + 1].unk_180 &= ~0x7F00;
            gActors[temp_s2 + 1].unk_180 = (u32)((gActors[temp_s2 + 1].unk_180) | 0x4000);
            gActors[actor_index].state += 2;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags = (s32)(gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags & ~0x1000);
        }
        else {
            gActors[temp_s2 + 3].unk_180 = (s32)(gActors[temp_s2 + 3].unk_180 - gActors[temp_s2 + 4].unk_180);
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.raw = (s32)gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].unk_104;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.raw = (s32)gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].unk_108;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posZ.raw = (s32)gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].unk_10C;
            gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posX.raw = (s32)(gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posX.raw + (temp_s1 + 2)->unk_180);
            gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posY.raw = (s32)(gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posY.raw + (temp_s1 + 3)->unk_180);
            gActors[temp_s2 * 0].posY.raw = gActors[temp_s2 + 3].unk_180 + gActors[temp_s2 * 0].posY.raw;

            if (((gActors[temp_s2 + 2].unk_180 > 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 8) || (gActors[temp_s2 + 1].unk_180 & 2))) || ((gActors[temp_s2 + 2].unk_180 < 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 4) || (gActors[temp_s2 + 1].unk_180 & 1)))) {
                gActors[temp_s2 + 2].unk_180 = 0;
            }

            if (gActors[actor_index].unk_16C & 1) {
                gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].grabType = 6;
                gActors->flags ^= 0x20;
                gActors[temp_s2 + 14].unk_180 = 1;
                gActors[temp_s2 + 2].unk_180 = (s32)((s32)gActors[temp_s2 + 2].unk_180 >> 1);
            }

            if (gActors[actor_index].unk_16C & 2) {
                func_801A165C_763BBC(temp_s2, 0, -0x34, 2);
            }

            if (gActors[temp_s2 + 3].unk_180 < 0 && gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 0x20) {
                gActors[actor_index].state += 1;
                temp_t0 = &gActors[gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex];
                temp_t0->flags_098 = (s32)(temp_t0->flags_098 | 0x10000);
                temp_t0 = &gActors[gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex];

                if (temp_t0->flags & 0x20) {
                    temp_t0->unk_0F8.raw = FIXED_UNIT(3);
                }
                else {
                    temp_t0->unk_0F8.raw = -FIXED_UNIT(3);
                }

                gActors[gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex].unk_0FC.raw = FIXED_UNIT(5);
                gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].grabType = 1;
                gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80000000);
                func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, -0x10, 9);
                func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, -0x10, 0xA);
                func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, 0, 0xB);
                func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, -0x10, 8);
                gActors[actor_index].unk_128 = (f32)temp_s2;
                gActors[actor_index].unk_12C = (f32)temp_s2;
                func_80081478(temp_s2, (s16*)D_801A19B4_763F14, 0x20U);
                gActors[actor_index].unk_170 = 0x01000000;
                func_8019C1C4_75E724(temp_s2, 5U);
                gActors[actor_index].flags |= 0x20100;
                gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags &= 0xFFFCC17F;
                gActors[actor_index].posX.raw = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].unk_104 + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -FIXED_UNIT(32) : FIXED_UNIT(32));
                gActors[actor_index].posY.raw = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].unk_108;
                gActors[actor_index].velocityX.raw = gActors[temp_s2 + 2].unk_180 * 2;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
                CameraShake(-0xA, 0x32);
                gActors[temp_s2 + 16].unk_180_s8[2] = 1;
                Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
            }
        }
        break;

    case 0xE2:
        func_8019C440_75E9A0(temp_s2);

        if (((gActors[temp_s2 + 2].unk_180 > 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 8) || (gActors[temp_s2 + 1].unk_180 & 2))) || ((gActors[temp_s2 + 2].unk_180 < 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 4) || (gActors[temp_s2 + 1].unk_180 & 1)))) {
            gActors[temp_s2 + 2].unk_180 = 0;
        }

        if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & 0x20) {
            gActors[actor_index].state = 0xB0;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x48);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].flags |= 0x2000;
            gActors[actor_index].velocityY.raw = 0;
            gActors[temp_s2 + 2].unk_180 = 0;
            func_801A165C_763BBC(temp_s2, -0x20, 0, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -8, 6);
            gActors[actor_index].flags ^= 0x20;
            func_801A165C_763BBC(temp_s2, -0x20, 0, 5);
            func_801A165C_763BBC(temp_s2, -0x10, -8, 6);
            gActors[actor_index].flags ^= 0x20;
            D_801A3B24_766084 = gActors[temp_s2 + 1].unk_180;
            func_8019CD08_75F268(temp_s2);
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 & ~0x7F00);
            gActors[temp_s2 + 15].unk_180 = 0;
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
        }
        break;

    case 0xE3:
        gActors[temp_s2 + 3].unk_180 = (s32)(gActors[temp_s2 + 3].unk_180 - gActors[temp_s2 + 4].unk_180);
        gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posX.raw = (s32)(gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posX.raw + (temp_s1 + 2)->unk_180);
        gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posY.raw = (s32)(gActors[((u16)(temp_s1 + 12)->unk_180_s16[1])].posY.raw + (temp_s1 + 3)->unk_180);

        if (((gActors[temp_s2 + 2].unk_180 > 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 8) || (gActors[temp_s2 + 1].unk_180 & 2))) || ((gActors[temp_s2 + 2].unk_180 < 0) && ((gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 4) || (gActors[temp_s2 + 1].unk_180 & 1)))) {
            gActors[temp_s2 + 2].unk_180 = 0;
        }

        if (gActors[actor_index].unk_16C & 1) {
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].grabType = 6;
            gActors->flags ^= 0x20;
            gActors[temp_s2 + 14].unk_180 = 1;
            gActors[temp_s2 + 2].unk_180 = (s32)((s32)gActors[temp_s2 + 2].unk_180 >> 1);
        }

        if (gActors[temp_s2 + 3].unk_180 < 0 && gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags_098 & 0x20) {
            gActors[actor_index].state -= 1;

            temp_t0 = &gActors[gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex];
            if (temp_t0->flags & 0x20) {
                temp_t0->unk_0F8.raw = FIXED_UNIT(3);
            }
            else {
                temp_t0->unk_0F8.raw = -FIXED_UNIT(3);
            }

            gActors[gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].parentIndex].unk_0FC.raw = FIXED_UNIT(5);
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].grabType = 1;
            gActors[temp_s2 + 1].unk_180 = (u32)(gActors[temp_s2 + 1].unk_180 | 0x80000000);
            func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, 0, 0xB);
            func_801A165C_763BBC(((u16)gActors[temp_s2 + 12].unk_180_s16[1]), 0x10, -0x10, 8);
            gActors[actor_index].unk_128 = (f32)temp_s2;
            gActors[actor_index].unk_12C = (f32)temp_s2;
            func_80081478(temp_s2, (s16*)D_801A19B4_763F14, 0x20U);
            gActors[actor_index].unk_170 = 0x01000000;
            func_8019C1C4_75E724(temp_s2, 5U);
            gActors[actor_index].flags |= 0x20100;
            gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].flags &= 0xFFFCC17F;
            gActors[actor_index].posX.raw = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posX.raw + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -FIXED_UNIT(32) : FIXED_UNIT(32));
            gActors[actor_index].posY.raw = gActors[((u16)gActors[temp_s2 + 12].unk_180_s16[1])].posY.raw;
            gActors[actor_index].velocityX.raw = gActors[temp_s2 + 2].unk_180 * 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            Sound_PlaySfxAtActor2(SFX_0068, temp_s2);
        }
        break;
    }
}

s16 func_801A0B68_7630C8(u16 actor_index, s16 arg1, s16 arg2) {
    s16* var_s0;
    s16 var_s1;
    s32 var_v1;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v1 = 9;
    }
    else {
        var_v1 = 0;
    }

    var_s0 = &D_801A3574_765AD4[var_v1];

    for (var_s1 = 0; var_s1 < 9; var_s1++) {
        if (func_80012AB4(*var_s0++ + arg1, arg2) != 0) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                var_v1 = -0x20;
            }
            else {
                var_v1 = 0x20;
            }

            return var_v1 - (0 - arg1);
        }
    }

    return arg1;
}

void func_801A0C94_7631F4(u16 actor_index) {
    FixedCoord* temp_t3 = &gActors->posX;
    s16 temp_v0;

    gActors[actor_index + 2].unk_180 = D_801A3598_765AF8[Rand() & 0xF];
    temp_v0 = func_801A0B68_7630C8(
        actor_index,
        D_801A35A8_765B08[gActors[actor_index + 2].unk_180],
        gActors[actor_index + 13].unk_180 >> 16
    );
    gActors[actor_index + 3].unk_180 = temp_t3->raw + TO_FIXED(temp_v0);
    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;

    if (temp_t3->raw < gActors[actor_index + 3].unk_180) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;

        if ((gActors[actor_index + 2].unk_180 == 0) || (gActors[actor_index + 2].unk_180 == 7)) {
            gActors[actor_index + 3].unk_180 += FIXED_UNIT(36);
        }
    }
    else if ((gActors[actor_index + 2].unk_180 == 0) || (gActors[actor_index + 2].unk_180 == 7)) {
        gActors[actor_index + 3].unk_180 -= FIXED_UNIT(36);
    }

    gActors[actor_index + 3].unk_180 += gScreenPosCurrentX.whole;
}

void func_801A0DF0_763350(u16 actor_index) {
    if (gActors[actor_index].parentIndex != 0 && gActors[gActors[actor_index].parentIndex + 1].unk_180 & 0x40000000) {
        gActors[actor_index].state = 0x20;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        gActors[gActors[actor_index].parentIndex + 1].unk_180 &= 0xBFFFFFFF;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].var_150 & 1)) {
        gActors[actor_index].state = 0x10;
    }

    switch (gActors[actor_index].state) {
    case 0x10:
        gActors[actor_index].state += 1;
        gActors[actor_index].var_150 |= 1;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].hitboxBY0 = 8;
        gActors[actor_index].hitboxBY1 = -8;
        gActors[actor_index].hitboxBX0 = -8;
        gActors[actor_index].hitboxBX1 = 8;

        if (gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }
        // fallthrough

    case 0x11:
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED;

        if (func_80028C80(actor_index) != 0) {
            gActors[actor_index].var_150 &= ~1;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
                gActors[actor_index].state = 0x30;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].hitFlags = 0x81;
                gActors[actor_index].hitType = 3;
                gActors[actor_index].damage = 0xA;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
                gActors[actor_index].hitboxAY0 = 6;
                gActors[actor_index].hitboxAY1 = -6;
                gActors[actor_index].hitboxAX0 = -6;
                gActors[actor_index].hitboxAX1 = 6;
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].unk_16C = 0;
                gActors[actor_index].unk_168 = 5;
            }
            else {
                gActors[actor_index].state = 0x20;
            }
        }
        break;

    case 0x20:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
        }

        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].state = 0x40;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
                gActors[actor_index].flags_098 = gActors[actor_index].flags_098 & ~ACTOR_FLAG3_UNK6;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
            }
        }
        break;

    case 0x30:
        if (gActors[actor_index].unk_168 == 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7;
        }
        else {
            gActors[actor_index].unk_168 -= 1;
        }

        if (--gActors[actor_index].unk_16C <= 0) {
            func_801A165C_763BBC(actor_index, 0, 0, 0xC);
            gActors[actor_index].unk_16C = 2;
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.140625);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            if (gActors[actor_index].parentIndex == 0) {
                Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            }

            gActors[actor_index].state = 0x50;
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 2);

            if (gActors[actor_index].parentIndex == 0) {
                Sound_PlaySfxAtActor2(SFX_MARINA_OW1, actor_index);
            }
        }
        else {
            if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].state = 0x40;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
            }

            if (((gActors[actor_index].velocityX.raw > 0) && (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) != 0))) || ((gActors[actor_index].velocityX.raw < 0) && (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) != 0)))) {
                gActors[actor_index].state = 0x50;
                gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            }
        }
        break;

    case 0x40:
        gActors[actor_index].state += 1;
        gActors[actor_index].graphicIndex = 0x2810;
        gActors[actor_index].var_154 = 4;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        break;

    case 0x41:
        if (--gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].graphicIndex = 0x2812;
            gActors[actor_index].var_154 = 0x1E;
        }
        break;

    case 0x42:
        gActors[actor_index].colorA -= 4;

        if (--gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].graphicFlags = 0;
        }
        break;

    case 0x50:
        gActors[actor_index].state += 1;
        gActors[actor_index].graphicIndex = 0x2810;
        gActors[actor_index].var_154 = 0xA;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        break;

    case 0x51:
        gActors[actor_index].colorA -= 8;

        if (--gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].graphicFlags = 0;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A1340_7638A0(u16 actor_index) {
    s32 var_a0;
    u16 temp_v1;
    s32 temp_a2;

    if (gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED) {
        var_a0 = 0;
    }
    else {
        var_a0 = ACTOR_FLAG_FLIPPED;
    }

    temp_a2 = gActors[actor_index].state;
    switch (temp_a2) {
    case 0:
        gActors[actor_index].state += 1;
        gActors[actor_index].flags |= var_a0 + ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x1E6;
        gActors[actor_index].colorB = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorA = 0xBE;
        gActors[actor_index].posX.whole = gActors[gActors[actor_index].parentIndex].posX.whole;
        gActors[actor_index].posY.whole = gActors[gActors[actor_index].parentIndex].posY.whole;
        gActors[actor_index].posZ.whole = gActors[gActors[actor_index].parentIndex].posZ.whole + 6;
        gActors[actor_index].scaleX = 2.8f;
        gActors[actor_index].scaleY = 2.4f;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = 0;
        gActors[actor_index].unk_168 = 0;
        return;

    case 1:
        if (gActors[gActors[actor_index].parentIndex + 1].unk_180 & 0x20000000) {
            gActors[gActors[actor_index].parentIndex + 1].unk_180 &= 0xDFFFFFFF;
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = 0;
        }

        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].scaleX = (f32)((f64)gActors[actor_index].scaleX + 0.04);
            if (3.2 <= (f64)gActors[actor_index].scaleX) {
                gActors[actor_index].var_154 = 1;
            }
        }
        else {
            gActors[actor_index].scaleX = (f32)((f64)gActors[actor_index].scaleX - 0.04);
            if ((f64)gActors[actor_index].scaleX <= 2.4) {
                gActors[actor_index].var_154 = 0;
            }
        }

        if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].scaleY = (f32)((f64)gActors[actor_index].scaleY + 0.09);
            if (2.6 <= (f64)gActors[actor_index].scaleX) {
                gActors[actor_index].var_158 = 1;
                gActors[actor_index].scaleY = 2.6f;
            }
        }
        else {
            gActors[actor_index].scaleY = (f32)((f64)gActors[actor_index].scaleY - 0.09);
            if ((f64)gActors[actor_index].scaleY <= 2.2) {
                gActors[actor_index].var_158 = 0;
                gActors[actor_index].scaleY = 2.2f;
            }
        }

        temp_v1 = gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_FLIPPED;
        temp_a2 = temp_v1 ? 12 : -12;
        gActors[actor_index].posX.whole = temp_a2 - (0 - gActors[gActors[actor_index].parentIndex].posX.whole);
        gActors[actor_index].posY.whole = gActors[gActors[actor_index].parentIndex].posY.whole - 0xC;
        gActors[actor_index].posZ.whole = gActors[gActors[actor_index].parentIndex].posZ.whole + 6;
        return;

    case 2:
        gStageState += 1;
        return;
    }
}

DEFAULT_INT func_801A165C_763BBC(u16 actor_index, s16 arg1, s16 arg2, s16 arg3) {
    Actor* temp_t1;
    Unk_D_801A3050_7655B0* temp_a3;
    u16 var_a1;
    s16 var_t0;
    u16 var_v0;
    Actor* particle;
    u32 temp_v1;

    temp_t1 = &gActors[actor_index];
    if (!(temp_t1->flags & ACTOR_FLAG_FLIPPED)) {
        var_t0 = 0;
    }
    else {
        var_t0 = 1;
    }

    if (var_t0 != 0) {
        arg1 = -arg1;
    }

    var_v0 = SpawnParticle_List_90C0_16(gGraphicListBlank, temp_t1->posX.whole + arg1, temp_t1->posY.whole + arg2, 1);
    if (var_v0 != 0) {
        temp_a3 = &D_801A3050_7655B0[arg3];
        particle = &gActors[var_v0];
        temp_v1 = (temp_a3 + var_v0 * 0)->flags;
        temp_v1 = temp_v1 & ~ACTOR_FLAG_FLIPPED;

        if (!((temp_a3 + var_v0 * 0)->flags & ACTOR_FLAG_FLIPPED)) {
            if (var_t0 == 0) {
                var_a1 = 0;
            }
            else {
                var_a1 = ACTOR_FLAG_FLIPPED;
            }

            gActors[var_v0].flags = var_a1 | temp_v1;
        }
        else {
            if (var_t0 == 0) {
                var_a1 = ACTOR_FLAG_FLIPPED;
            }
            else {
                var_a1 = 0;
            }

            particle->flags = var_a1 | temp_v1;
        }

        particle->graphicFlags = (temp_a3 + var_v0 * 0)->graphicFlags;
        particle->unk_148 = (temp_a3 + var_v0 * 0)->unk_148;
        particle->posZ.whole = temp_t1->posZ.whole + (temp_a3 + var_v0 * 0)->positionZ;
        particle->graphicList = (temp_a3 + var_v0 * 0)->graphicList;
        particle->graphicTimer = 1;

        if (var_t0 == 0) {
            particle->velocityX.raw = (temp_a3 + var_v0 * 0)->velocityX;
        }
        else {
            particle->velocityX.raw = -(temp_a3 + var_v0 * 0)->velocityX;
        }

        if (var_t0 == 0) {
            particle->var_158 = (temp_a3 + var_v0 * 0)->var_158;
        }
        else {
            particle->var_158 = -(temp_a3 + var_v0 * 0)->var_158;
        }

        if (var_t0 == 0) {
            particle->unk_168 = (temp_a3 + var_v0 * 0)->unk_168;
        }
        else {
            particle->unk_168 = -(temp_a3 + var_v0 * 0)->unk_168;
        }

        particle->velocityY.raw = (temp_a3 + var_v0 * 0)->velocityY;
        particle->var_15C = (temp_a3 + var_v0 * 0)->var_15C;
        particle->unk_16C = (temp_a3 + var_v0 * 0)->unk_16C;
        particle->velocityZ.raw = (temp_a3 + var_v0 * 0)->velocityZ;
        particle->unk_174 = (temp_a3 + var_v0 * 0)->unk_174;
        particle->var_160 = (temp_a3 + var_v0 * 0)->var_160;
        particle->var_150 = (temp_a3 + var_v0 * 0)->var_150;
        particle->scaleX = (temp_a3 + var_v0 * 0)->scaleX;
        particle->var_110 = (temp_a3 + var_v0 * 0)->var_110;
        particle->unk_118 = (temp_a3 + var_v0 * 0)->unk_118;
        particle->scaleY = (temp_a3 + var_v0 * 0)->scaleY;
        particle->unk_114 = (temp_a3 + var_v0 * 0)->unk_114;
        particle->unk_11C = (temp_a3 + var_v0 * 0)->unk_11C;
        particle->colorR = (temp_a3 + var_v0 * 0)->colorR;
        particle->colorG = (temp_a3 + var_v0 * 0)->colorG;
        particle->colorB = (temp_a3 + var_v0 * 0)->colorB;
        particle->colorA = (temp_a3 + var_v0 * 0)->colorA;
        particle->var_154 = (temp_a3 + var_v0 * 0)->var_154;
        particle->unk_164 = (temp_a3 + var_v0 * 0)->unk_164;
        particle->rotateX = 0.0f;
        particle->rotateY = 0.0f;
        particle->rotateZ = 0.0f;

        if (((void*)temp_a3 == D_801A3CB0_766210) || ((void*)temp_a3 == D_801A3D10_766270)) {
            particle->rotateX = 1.6404389e7f;
        }
    }
    else {
        return -1;
    }
}
