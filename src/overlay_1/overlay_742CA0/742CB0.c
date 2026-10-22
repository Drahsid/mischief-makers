#include "common.h"
// BUG: incorrect prototype!
#define func_8001FCA0_ARGS u16 actor_index, s32 x, s32 y
#include "1F1E0.h"
#include "84BB0.h"
#include "actor.h"
#include "28EF0.h"
#include "80D90.h"

extern u16 D_800D85A8[];

s16 D_801A20E0_749C90;
s16 D_801A20E2_749C92;
s32 D_801A20E4_749C94;
s32 D_801A20E8_749C98;
s32 D_801A20EC_749C9C;
u16 D_801A20F0_749CA0;
u16 D_801A20F2_749CA2;
u16 D_801A20F4_749CA4;
u16 D_801A20F6_749CA6;

s16 D_801A0F00_748AB0[70] = {
//  graphic flags   unk_13C
    0x1800, 0x0400, 0x0006,
    0x0000, 0x0000, 0x0020,
    0x181C, 0x8710, 0x000C,
    0x0000, 0x0000, 0x0020,
    0x180C, 0x8600, 0x0005,
    0x0000, 0x0000, 0x0020,
    0x1802, 0x8600, 0x000C,
    0x0000, 0x0000, 0x0020,
    0x1804, 0x8600, 0x000D,
    0x0000, 0x0000, 0x0020,
    0x1802, 0x8600, 0x0001,
    0x0000, 0x0000, 0x0020,
    0x1804, 0x8600, 0x0002,
    0x0000, 0x0000, 0x0020,
    0x1808, 0x8600, 0x000A,
    0x0000, 0x0000, 0x0020,
    0x1806, 0x8400, 0x000B,
    0x0000, 0x0000, 0x0020,
    0x1808, 0x8600, 0x0003,
    0x0000, 0x0000, 0x0020,
    0x1806, 0x8400, 0x0004,
    0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000,
    0x0000,
};

s16 D_801A0F8C_748B3C[116] = {
//  actor   parent  length  angle   pose
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000,
    0x0002, 0x0001, 0x000C, 0x0200, 0x0000,
    0x0003, 0x0002, 0xFFF8, 0x0200, 0x0000,
    0x0004, 0x0001, 0x0013, 0x0200, 0x0000,
    0x0005, 0x0004, 0x0000, 0x0000, 0x0000,
    0x0006, 0x0001, 0x0004, 0x00D0, 0x0000,
    0x0007, 0x0006, 0x0004, 0x01C0, 0x0000,
    0x0008, 0x0007, 0x0003, 0x0200, 0x0000,
    0x0009, 0x0008, 0x0008, 0x0200, 0x0000,
    0x000A, 0x0001, 0x0004, 0x01C0, 0x0000,
    0x000B, 0x000A, 0x0004, 0x01C0, 0x0000,
    0x000C, 0x000B, 0x0003, 0x0200, 0x0000,
    0x000D, 0x000C, 0x0008, 0x0200, 0x0000,
    0x000E, 0x0005, 0x0004, 0x0000, 0x0000,
    0x000F, 0x000E, 0x0007, 0x0000, 0x0000,
    0x0010, 0x000F, 0x0008, 0x0200, 0x0000,
    0x0011, 0x0010, 0x0004, 0x0200, 0x0000,
    0x0012, 0x0005, 0x000D, 0x0000, 0x0000,
    0x0013, 0x0012, 0x0007, 0x0000, 0x0000,
    0x0014, 0x0013, 0x0008, 0x0200, 0x0000,
    0x0015, 0x0014, 0x0004, 0x0200, 0x0000,
    0x0016, 0x0001, 0x0007, 0x0200, 0x0000,
    0x0017, 0x0001, 0x0007, 0x0200, 0x0000,
    0x7FFF,
};

u16 D_801A1074_748C24[48] = {
    0x0006, 0x000B, 0x0000, 0x0000, 0x00B8, 0x0001,
    0x0050, 0x0002, 0x0090, 0xFFEA, 0x01A0, 0x0015,
    0x0248, 0x0001, 0x0098, 0x0001, 0x0000, 0x0000,
    0x03D0, 0x0000, 0x0390, 0x0001, 0x0390, 0x0000,
    0x0000, 0x0000, 0x03D0, 0x0000, 0x0200, 0xFFFC,
    0x0298, 0x0002, 0x03C8, 0x0000, 0x0088, 0x0000,
    0x01D0, 0xFFFE, 0x02D8, 0x0000, 0x03C8, 0x0000,
    0x0028, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A10D4_748C84[48] = {
    0x0006, 0x0011, 0x0000, 0x0000, 0x00B0, 0x0001,
    0x0050, 0x0002, 0x00A0, 0xFFE7, 0x0150, 0x0014,
    0x0210, 0x0001, 0x00C8, 0x0001, 0x0000, 0x0000,
    0x0020, 0x0000, 0x03B0, 0x0001, 0x0388, 0x0000,
    0x0000, 0x0000, 0x03B8, 0x0000, 0x0200, 0xFFFE,
    0x02D8, 0x0001, 0x03C8, 0x0000, 0x00C8, 0x0000,
    0x01D0, 0x0001, 0x0310, 0xFFFC, 0x03E0, 0x0000,
    0x0058, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A1134_748CE4[48] = {
    0x0006, 0x0019, 0x0010, 0x0000, 0x00B0, 0x0003,
    0x0038, 0x0001, 0x00A0, 0xFFE7, 0x01B0, 0x0014,
    0x0210, 0xFFFF, 0x0120, 0x0001, 0x0000, 0x0000,
    0x03C0, 0x0000, 0x03E0, 0x0001, 0x0350, 0xFFFF,
    0x0000, 0x0000, 0x03C0, 0x0000, 0x0200, 0xFFFB,
    0x02B8, 0x0001, 0x03C8, 0x0000, 0x0120, 0x0000,
    0x01A0, 0xFFFD, 0x0358, 0xFFFF, 0x03C8, 0x0000,
    0x00E0, 0x0000, 0x01F8, 0x0002, 0x03F8, 0xFFFC,
};

u16 D_801A1194_748D44[48] = {
    0x0006, 0x0018, 0x0010, 0x0000, 0x0080, 0x0000,
    0x0068, 0x0001, 0x00A8, 0xFFE7, 0x01C8, 0x0014,
    0x0230, 0xFFFF, 0x00E0, 0x0002, 0x0000, 0x0000,
    0x0008, 0x0000, 0x03A8, 0x0002, 0x0390, 0xFFFF,
    0x0000, 0x0000, 0x03B0, 0x0000, 0x0200, 0xFFFC,
    0x0258, 0xFFFE, 0x03C8, 0x0000, 0x0160, 0x0001,
    0x0188, 0xFFFD, 0x0340, 0xFFFC, 0x03C8, 0xFFFF,
    0x00F0, 0x0000, 0x01F8, 0x0002, 0x03F8, 0xFFFC,
};

u16 D_801A11F4_748DA4[48] = {
    0xFFF7, 0x0013, 0x00F8, 0x0000, 0x0048, 0x0000,
    0x03E0, 0xFFFD, 0x03A0, 0xFFE6, 0x02E8, 0x0014,
    0x0300, 0xFFF6, 0x01B0, 0x0001, 0x03C8, 0x0000,
    0x0028, 0x0000, 0x0328, 0xFFFF, 0x00A0, 0x0000,
    0x0000, 0x0000, 0x0038, 0x0000, 0x0270, 0x0009,
    0x02C8, 0x0001, 0x03C8, 0x0000, 0x0128, 0x0000,
    0x0130, 0xFFF8, 0x03D0, 0xFFFC, 0x03C8, 0x0000,
    0x0138, 0x0000, 0x0140, 0x0006, 0x0160, 0x0001,
};

u16 D_801A1254_748E04[48] = {
    0xFFFD, 0x0013, 0x005C, 0x0000, 0x0049, 0x0006,
    0x0059, 0x0002, 0x002E, 0xFFE8, 0x030C, 0x0014,
    0x0318, 0xFFF4, 0x033A, 0x0001, 0x03EB, 0x0000,
    0x00E9, 0xFFFF, 0x03F3, 0xFFFF, 0x02BB, 0xFFFE,
    0x0058, 0x0000, 0x0065, 0x0000, 0x0291, 0x0008,
    0x0278, 0x0004, 0x03C8, 0x0000, 0x00FF, 0x0000,
    0x020F, 0xFFF7, 0x02E5, 0x0000, 0x03C8, 0x0000,
    0x010D, 0x0000, 0x0180, 0x0000, 0x0008, 0xFFFC,
};

u16 D_801A12B4_748E64[48] = {
    0x000D, 0x000A, 0x03D8, 0x0000, 0x0070, 0x0001,
    0x00B0, 0x0005, 0x0050, 0xFFE4, 0x0160, 0x0011,
    0x0230, 0x0004, 0x0380, 0x0001, 0x0000, 0x0000,
    0x03D0, 0x0000, 0x03A0, 0xFFFF, 0x0218, 0x0000,
    0x0000, 0x0000, 0x03A8, 0x0000, 0x0200, 0xFFFD,
    0x0270, 0x0006, 0x03C8, 0x0000, 0x03C0, 0x0000,
    0x0278, 0x0002, 0x01E0, 0x0002, 0x03C8, 0x0000,
    0x03A8, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A1314_748EC4[48] = {
    0xFFFC, 0x0013, 0x00F8, 0x0000, 0x0030, 0x0004,
    0x03C0, 0x0002, 0x0328, 0xFFE6, 0x0238, 0x000B,
    0x02C0, 0xFFF2, 0x0008, 0x0001, 0x03C8, 0x0000,
    0x0180, 0x0000, 0x0388, 0xFFFF, 0x0350, 0x0000,
    0x0000, 0x0000, 0x0110, 0x0000, 0x0238, 0xFFFA,
    0x0328, 0x0001, 0x03C8, 0x0000, 0x0188, 0x0000,
    0x01A0, 0xFFFD, 0x03D0, 0x0002, 0x03C8, 0x0000,
    0x0158, 0x0000, 0x00D0, 0x0009, 0x0088, 0x0000,
};

u16 D_801A1374_748F24[48] = {
    0x0000, 0x0016, 0x00C8, 0x0000, 0x0062, 0x0004,
    0x03C0, 0xFFFD, 0x03CE, 0xFFE6, 0x022C, 0x000F,
    0x02C6, 0xFFF3, 0x0376, 0x0003, 0x03C8, 0x0000,
    0x002E, 0x0000, 0x03A9, 0xFFFE, 0x02CE, 0x0000,
    0x0000, 0x0000, 0x03AC, 0x0000, 0x0247, 0x0002,
    0x02EA, 0xFFFD, 0x03C8, 0x0000, 0x0195, 0x0000,
    0x01A3, 0xFFFE, 0x03AA, 0x0000, 0x03C8, 0x0000,
    0x017C, 0x0000, 0x0168, 0x0005, 0x0170, 0x0003,
};

u16 D_801A13D4_748F84[48] = {
    0x0000, 0x000C, 0x0118, 0x0000, 0x0390, 0x0004,
    0x0058, 0x0004, 0x0368, 0xFFE6, 0x0310, 0x0014,
    0x02D0, 0xFFF3, 0x01D8, 0x0001, 0x03C8, 0x0000,
    0x0008, 0xFFFE, 0x02B8, 0xFFFB, 0x01E8, 0x0004,
    0x0000, 0x0000, 0x0380, 0x0000, 0x0268, 0x000A,
    0x0008, 0x0003, 0x03C8, 0x0000, 0x0150, 0x0000,
    0x0230, 0xFFF6, 0x0048, 0x0001, 0x03C8, 0x0000,
    0x0160, 0x0000, 0x0038, 0x0000, 0x0398, 0x0000,
};

u16 D_801A1434_748FE4[48] = {
    0x0000, 0x000C, 0x0108, 0x0000, 0x0390, 0x0004,
    0x0068, 0x0004, 0x0378, 0xFFE6, 0x0300, 0x0014,
    0x02D0, 0xFFF3, 0x01F8, 0x0001, 0x03C8, 0x0000,
    0x00C8, 0xFFFE, 0x02B8, 0xFFFB, 0x0220, 0xFFFD,
    0x0000, 0x0000, 0x0080, 0xFFFE, 0x0280, 0x000A,
    0x0058, 0x0003, 0x03C8, 0x0000, 0x00A8, 0x0000,
    0x0230, 0xFFF6, 0x00D0, 0x0001, 0x03C8, 0x0000,
    0x0100, 0x0000, 0x00D8, 0x0002, 0x0398, 0xFFFB,
};

u16 D_801A1494_749044[48] = {
    0x0006, 0x000C, 0x0000, 0x0000, 0x00A0, 0x0001,
    0x03E0, 0x0000, 0x03A8, 0xFFE7, 0x02F0, 0x0014,
    0x0178, 0x0001, 0x0378, 0x0001, 0x0000, 0x0000,
    0x00B8, 0x0000, 0x03A0, 0x0001, 0x03E0, 0x0000,
    0x0000, 0x0000, 0x0060, 0x0000, 0x0200, 0xFFFE,
    0x0398, 0x0001, 0x03C8, 0x0000, 0x00C0, 0x0000,
    0x0168, 0xFFFB, 0x0258, 0x0000, 0x03C8, 0x0000,
    0x00E0, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A14F4_7490A4[48] = {
    0x0006, 0x0010, 0x03C0, 0x0000, 0x0028, 0xFFFD,
    0x0118, 0x0004, 0x00C8, 0xFFE7, 0x0128, 0x0014,
    0x0260, 0x0003, 0x0258, 0xFFFD, 0x0000, 0x0000,
    0x0328, 0x0000, 0x0090, 0x0001, 0x03F0, 0xFFFE,
    0x0000, 0x0000, 0x00C0, 0x0000, 0x0200, 0x0001,
    0x0240, 0x0008, 0x03C8, 0x0000, 0x00B0, 0x0000,
    0x0280, 0xFFFE, 0x0328, 0x0007, 0x03C8, 0x0000,
    0x00F8, 0x0000, 0x0138, 0x0000, 0x0130, 0x0000,
};

u16 D_801A1554_749104[48] = {
    0x0006, 0x0007, 0x0000, 0x0000, 0x00B8, 0x0001,
    0x0050, 0x0002, 0x0060, 0xFFEA, 0x0210, 0x0011,
    0x0260, 0x0001, 0x0028, 0x0001, 0x0000, 0x0000,
    0x03D0, 0x0000, 0x0390, 0x0001, 0x0300, 0x0000,
    0x0000, 0x0000, 0x03D0, 0x0000, 0x0200, 0xFFFC,
    0x0270, 0x0002, 0x03C8, 0x0000, 0x00E8, 0x0000,
    0x01D0, 0xFFFE, 0x02D8, 0x0000, 0x03C8, 0x0000,
    0x0028, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A15B4_749164[48] = {
    0x0006, 0x000F, 0x0000, 0x0000, 0x00B8, 0x0001,
    0x0050, 0x0002, 0x0090, 0xFFEA, 0x00F8, 0x0015,
    0x0248, 0x0001, 0x0100, 0x0001, 0x0000, 0x0000,
    0x03D0, 0x0000, 0x0390, 0x0001, 0x03E0, 0x0000,
    0x0000, 0x0000, 0x03D0, 0x0000, 0x0200, 0xFFFC,
    0x0388, 0x0009, 0x03C8, 0x0000, 0x0060, 0x0000,
    0x01D0, 0xFFFE, 0x03F0, 0x0000, 0x03C8, 0x0000,
    0x03F8, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A1614_7491C4[48] = {
    0x0006, 0x0013, 0x0000, 0x0000, 0x00E8, 0x0003,
    0x0020, 0x0004, 0x0100, 0xFFE7, 0x0180, 0x0014,
    0x0218, 0x0001, 0x0180, 0x0006, 0x0000, 0x0000,
    0x0080, 0x0000, 0x03B0, 0x0001, 0x0000, 0x0002,
    0x0000, 0x0000, 0x0060, 0x0000, 0x0200, 0xFFFE,
    0x0290, 0x0001, 0x03C8, 0x0000, 0x0060, 0x0000,
    0x0198, 0x0001, 0x02F8, 0xFFFF, 0x03E0, 0x0000,
    0x0018, 0x0000, 0x01C0, 0x0002, 0x0058, 0xFFFE,
};

u16 D_801A1674_749224[48] = {
    0x0006, 0x0011, 0x0000, 0x0000, 0x00B0, 0x0001,
    0x0020, 0x0002, 0x0100, 0xFFE7, 0x0140, 0x0014,
    0x0218, 0x0001, 0x0190, 0x0006, 0x0000, 0x0000,
    0x0078, 0x0000, 0x03B0, 0x0001, 0x0018, 0x0002,
    0x0000, 0x0000, 0x0050, 0x0000, 0x0200, 0xFFFE,
    0x02B0, 0x0001, 0x03C8, 0x0000, 0x00C8, 0x0000,
    0x01C8, 0x0001, 0x02F8, 0xFFFF, 0x03E0, 0x0000,
    0x0058, 0x0000, 0x0180, 0x0000, 0x0088, 0x0000,
};

u16 D_801A16D4_749284[48] = {
    0x0006, 0x0013, 0x03C0, 0x0000, 0x0130, 0x0003,
    0x0000, 0x0001, 0x00B0, 0xFFE3, 0x0130, 0x0014,
    0x0328, 0xFFFE, 0x01B8, 0x0004, 0x0378, 0x0000,
    0x0080, 0x0000, 0x0028, 0x0001, 0x0068, 0x0004,
    0x0000, 0x0000, 0x0040, 0x0000, 0x0200, 0xFFFD,
    0x03A8, 0x0006, 0x03C8, 0x0000, 0x03A0, 0x0000,
    0x0228, 0xFFFE, 0x03C8, 0x0003, 0x03E0, 0x0000,
    0x0378, 0x0000, 0x01C0, 0x0002, 0x0118, 0xFFFE,
};

u16 D_801A1734_7492E4[48] = {
    0xFFFE, 0x0012, 0x039A, 0x0000, 0x00F2, 0x0000,
    0x0068, 0x0001, 0x0089, 0xFFE6, 0x01F1, 0x0014,
    0x0325, 0x0000, 0x018C, 0x0003, 0x0378, 0x0000,
    0x0050, 0x0000, 0x0008, 0x0002, 0x0058, 0x0003,
    0x0000, 0x0000, 0x0028, 0x0000, 0x0217, 0x0001,
    0x0375, 0x0006, 0x03C8, 0x0000, 0x0180, 0x0000,
    0x01F6, 0x0001, 0x03A6, 0x0009, 0x03E0, 0x0000,
    0x0168, 0x0000, 0x01C0, 0x0002, 0x0118, 0xFFFE,
};

u16 D_801A1794_749344[48] = {
    0x000B, 0x0018, 0x0358, 0x0000, 0x01D0, 0x0006,
    0x03D8, 0x0008, 0x0098, 0xFFF0, 0x03F8, 0x0014,
    0x0328, 0xFFFC, 0x0198, 0x0001, 0x0378, 0x0000,
    0x0038, 0x0000, 0x0030, 0x0001, 0x0098, 0x0001,
    0x0000, 0x0000, 0x03D8, 0x0000, 0x0258, 0x0004,
    0x0008, 0x0006, 0x03C8, 0x0000, 0x0170, 0x0000,
    0x01B8, 0xFFEE, 0x0088, 0x0003, 0x03E0, 0x0000,
    0x0168, 0x0000, 0x01F8, 0xFFFE, 0x01B8, 0xFFFC,
};

u16 D_801A17F4_7493A4[48] = {
    0xFFFD, 0x0013, 0x005C, 0x0000, 0x0019, 0x000C,
    0x0091, 0x0004, 0x002E, 0xFFF0, 0x034C, 0x0014,
    0x0318, 0xFFFA, 0x005A, 0x0001, 0x03EB, 0x0000,
    0x03C9, 0x0000, 0x0003, 0xFFFF, 0x031B, 0xFFFF,
    0x0058, 0x0000, 0x03C5, 0x0000, 0x0249, 0x0008,
    0x0028, 0x0004, 0x03C8, 0x0000, 0x0077, 0x0000,
    0x01BF, 0xFFF0, 0x00CD, 0x0000, 0x03C8, 0x0000,
    0x0065, 0x0000, 0x00E0, 0xFFFC, 0x0128, 0xFFFC,
};

u16* D_801A1854_749404[25] = {
    D_801A1074_748C24, D_801A10D4_748C84, D_801A1134_748CE4, D_801A1194_748D44,
    D_801A11F4_748DA4, D_801A1254_748E04, D_801A12B4_748E64, D_801A1314_748EC4,
    D_801A1374_748F24, D_801A13D4_748F84, D_801A1434_748FE4, D_801A1494_749044,
    D_801A14F4_7490A4, D_801A1554_749104, D_801A15B4_749164, D_801A1614_7491C4,
    D_801A1674_749224, D_801A16D4_749284, D_801A1734_7492E4, D_801A1794_749344,
    D_801A17F4_7493A4, D_801A1074_748C24, D_801A1074_748C24, D_801A1074_748C24,
    NULL,
};

u16 D_801A18B8_749468[20] = {
    0x0000, 0x0020, 0x001C, 0x0000, 0x0010, 0x0004, 0x0000, 0x000A,
    0x0000, 0x0001, 0x0020, 0x001C, 0x0001, 0x0018, 0x0004, 0x0001,
    0x000A, 0x0000, 0x7FFE, 0x0000,
};

u16 D_801A18E0_749490[20] = {
    0x0002, 0x0020, 0x001C, 0x0002, 0x0010, 0x0004, 0x0002, 0x000A,
    0x0000, 0x0003, 0x0020, 0x001C, 0x0003, 0x0018, 0x0004, 0x0003,
    0x000A, 0x0000, 0x7FFE, 0x0000,
};

u16 D_801A1908_7494B8[22] = {
    0x0000, 0x0000, 0x0000, 0x0004, 0x0010, 0x0002, 0x0004, 0x0006,
    0x0000, 0x0005, 0x0006, 0x0000, 0x7FFD, 0x0009, 0x0006, 0x0008,
    0x0001, 0x0006, 0x0010, 0x0000, 0x7FFF, 0x0000,
};

u16 D_801A1934_7494E4[28] = {
    0x0000, 0x0000, 0x0000, 0x0007, 0x0008, 0x0002, 0x0007, 0x0005,
    0x0000, 0x0008, 0x0009, 0x0000, 0x7FFD, 0x0009, 0x0009, 0x0008,
    0x0001, 0x0009, 0x0005, 0x0000, 0x000A, 0x000A, 0x0001, 0x000A,
    0x0020, 0x0000, 0x7FFF, 0x0000,
};

u16 D_801A196C_74951C[10] = {
    0x000B, 0x0007, 0x0000, 0x000C, 0x0007, 0x0000, 0x7FFD, 0x0008,
    0x7FFE, 0x0000,
};

u16 D_801A1980_749530[10] = {
    0x000D, 0x0007, 0x0000, 0x000E, 0x0007, 0x0000, 0x7FFD, 0x0008,
    0x7FFE, 0x0000,
};

u16 D_801A1994_749544[20] = {
    0x000F, 0x0020, 0x001C, 0x000F, 0x000C, 0x0004, 0x000F, 0x000A,
    0x0000, 0x0010, 0x0020, 0x001C, 0x0010, 0x000C, 0x0004, 0x0010,
    0x000A, 0x0000, 0x7FFE, 0x0000,
};

u16 D_801A19BC_74956C[30] = {
    0x0000, 0x0000, 0x0000, 0x000F, 0x0012, 0x0006,
    0x0011, 0x0010, 0x0002, 0x0011, 0x0005, 0x0000,
    0x7FFD, 0x0009, 0x0012, 0x000C, 0x0000, 0x0013,
    0x000C, 0x0000, 0x0014, 0x000A, 0x0000, 0x7FFD,
    0x0002, 0x000F, 0x0012, 0x0006, 0x7FFF, 0x0000,
};

u16 D_801A19F8_7495A8[14] = {
    0x0000, 0x0000, 0x0000, 0x0004, 0x0008, 0x0002, 0x0004, 0x0010,
    0x0000, 0x0000, 0x0008, 0x0004, 0x7FFF, 0x0000,
};

s16 D_801A1A14_7495C4[6] = {
    0x00D4, 0x0008, 0x00D6, 0x0008, 0x0000, 0x0000,
};

s16 D_801A1A20_7495D0[20] = {
    0x015E, 0x0008, 0x01C6, 0x0003, 0x01C8, 0x0003, 0x01CA, 0x0003,
    0x01CC, 0x0003, 0x01CE, 0x0003, 0x01D0, 0x0003, 0x01D2, 0x0003,
    0x01D4, 0x0003, 0x0000, 0x0000,
};

s16 D_801A1A48_7495F8[8] = {
    0x0184, 0x0008, 0x0186, 0x0008, 0x0188, 0x0010, 0x0000, 0x0000,
};

s16 D_801A1A58_749608[4] = {
    0x01D6, 0x0020, 0x0000, 0x0000,
};

s16 D_801A1A60_749610[8] = {
    0x01E0, 0x0004, 0x01E2, 0x0004, 0x01E4, 0x0008, 0x0000, 0x0000,
};

s16 D_801A1A70_749620[8] = {
    0x01E1, 0x0004, 0x01E3, 0x0004, 0x01E5, 0x0008, 0x0000, 0x0000,
};

u16 D_801A1A80_749630[4] = {
    0x181E, 0x1820, 0x1822, 0x1824,
};

s16 D_801A1A88_749638[6] = {
    0x01B2, 0x0001, 0x01B4, 0x0001, 0xFFFC, 0x0000,
};

f32 D_801A1A94_749644[16] = {
    0.0f, 0.38f, 0.7f, 0.924f, 1.0f, 0.924f, 0.7f, 0.38f,
    -0.0f, -0.38f, -0.7f, -0.924f, -1.0f, -0.924f, -0.7f, -0.38f,
};

s16 D_801A1AD4_749684[12] = {
    0x0156, 0x0004, 0x0158, 0x0004, 0x015A, 0x0004,
    0x015C, 0x0004, 0x015E, 0x0004, 0x0000, 0x0000,
};

s16 D_801A1AEC_74969C[6] = {
    0x1828, 0x0002, 0x182A, 0x0002, 0xFFFC, 0x0000,
};

s16 D_801A1AF8_7496A8[20] = {
    0x01C6, 0x0001, 0x01C8, 0x0001, 0x01CA, 0x0001, 0x01CC, 0x0001,
    0x01CE, 0x0001, 0x01D0, 0x0001, 0x01D2, 0x0001, 0x01D4, 0x0001,
    0x0000, 0x0000, 0x0000, 0x0000,
};


void func_8019D60C_7451BC(u16 actor_index);
void func_8019D6CC_74527C(u16 actor_index);
void func_8019D884_745434(u16 actor_index);
void func_8019E0E0_745C90(u16 actor_index);
void func_8019B290_742E40(u16 actor_index);
void func_8019B604_7431B4(u16 actor_index, u16 arg1);
void func_8019B770_743320(u16 actor_index);
void func_8019BC08_7437B8(u16 actor_index);
s32 func_8019CE58_744A08(u16 actor_index);
s32 func_8019CF50_744B00(u16 actor_index);


void func_8019B100_742CB0(u16 arg0) {
    gActors[0x30].actorType = 0x1D;
    Actor_Initialize(0x30);
    gActors[0x30].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
    gActors[0x30].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[0x30].graphicIndex = 0x2D0;
    gActors[0x30].posX.whole = 0;
    gActors[0x30].posY.whole = 0;
    gActors[0x30].posZ.whole = -16;
    gActors[0x30].unk_188 = 0;
    gActors[0x30].palette_18C = D_800D85A8;
    gActors[0x30].colorA = 0x80;
    gActors[0x30].scaleX = 19.0f;
    gActors[0x30].scaleY = 13.0f;
}

void func_8019B190_742D40(u16 actor_index) {
    u16 temp_t8 = actor_index + 3;
    Actor* temp_v1 = &gActors[temp_t8];
    s32 temp_a1 = temp_v1->var_154;
    s32 var_a2;
    u16 index;

    temp_v1->unk_138 = FROM_FIXED(-temp_a1);
    var_a2 = 0;
    // TODO: macro?
    index = 0;\
    do {
        if (temp_a1 < var_a2) {
            temp_v1->graphicIndex = D_801A1A80_749630[index];

            if (temp_v1->graphicIndex == 0x181E || temp_v1->graphicIndex == 0x1820) {
                temp_v1->posZ.raw = gActors[actor_index + 1].posZ.raw - 1;
            }
            return;
        }

        var_a2 += FIXED_UNIT(1);
        index++;
    } while (index < 4);
    temp_v1->graphicIndex = 0x1826;
}

void func_8019B290_742E40(u16 actor_index) {
    Actor* temp_v1;

    func_8019B190_742D40(actor_index);
    temp_v1 = &gActors[(u16)(actor_index + 5)];
    temp_v1->scaleX *= 0.8;
    temp_v1->scaleY = temp_v1->scaleX;

    if (temp_v1->flags & ACTOR_FLAG_FLIPPED) {
        if ((temp_v1->rotateZ > 312.0f) || (temp_v1->rotateZ < 80.0f)) {
            temp_v1->graphicIndex = 0x180C;
        }
        else if (temp_v1->rotateZ > 288.0f) {
            temp_v1->graphicIndex = 0x180E;
        }
        else if (temp_v1->rotateZ > 264.0f) {
            temp_v1->graphicIndex = 0x1810;
            temp_v1->posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
        else {
            temp_v1->graphicIndex = 0x1812;
            temp_v1->posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
    }
    else {
        if ((temp_v1->rotateZ < 48.0f) || (temp_v1->rotateZ > 256.0f)) {
            temp_v1->graphicIndex = 0x180C;
        }
        else if (temp_v1->rotateZ < 72.0f) {
            temp_v1->graphicIndex = 0x180E;
        }
        else if (temp_v1->rotateZ < 96.0f) {
            temp_v1->graphicIndex = 0x1810;
            temp_v1->posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
        else {
            temp_v1->graphicIndex = 0x1812;
            temp_v1->posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
    }

    gActors[actor_index + 11].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 13].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 19].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 21].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 11, 0x50);
    Actor_SetColorRgb(actor_index + 13, 0x50);
    Actor_SetColorRgb(actor_index + 19, 0x50);
    Actor_SetColorRgb(actor_index + 21, 0x50);
}

void func_8019B604_7431B4(u16 actor_index, u16 arg1) {
    u16 temp_v0 = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, 0);
    if (temp_v0) {
        gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[temp_v0].flags |= ACTOR_FLAG_UNK15;
        gActors[temp_v0].graphicIndex = 0x180A;
        gActors[temp_v0].scaleX = gActors[actor_index + 3].var_110;
        gActors[temp_v0].colorA = 0x80;
        gActors[temp_v0].var_154 = -0x41;
        gActors[temp_v0].unk_144 = 11.0f;

        if (arg1) {
            gActors[temp_v0].var_160 = gActors[actor_index + 10].unk_180;
            gActors[temp_v0].unk_130 = actor_index + 0x16;
            gActors[temp_v0].unk_14C = (u32)gActors[actor_index + 22].actorType;
            gActors[temp_v0].posZ.raw = 0xB;
            return;
        }

        gActors[temp_v0].var_160 = -gActors[actor_index + 10].unk_180 & FIXED_UNIT(1023);
        gActors[temp_v0].unk_130 = actor_index + 0x16;
        gActors[temp_v0].unk_14C = (u32)gActors[actor_index + 23].actorType;
        gActors[temp_v0].unk_13C_f32 = -1.0f;
    }
}

void func_8019B770_743320(u16 actor_index) {
    if (gActors[actor_index + 2].var_110 != 0.0f) {
        gActors[actor_index + 10].unk_180 = Math_ApproachS32(gActors[actor_index + 10].unk_180, FIXED_UNIT(64), FIXED_UNIT(64));
        gActors[actor_index + 3].var_110 = Math_ApproachF32(gActors[actor_index + 3].var_110, 0.8f, 0.35f);

        if (gActors[actor_index + 10].unk_180 == FIXED_UNIT(64)) {
            gActors[actor_index + 2].var_110 = 0.0f;
        }
    }
    else {
        gActors[actor_index + 10].unk_180 = Math_ApproachS32(gActors[actor_index + 10].unk_180, FIXED_UNIT(256), FIXED_UNIT(64));
        gActors[actor_index + 3].var_110 = Math_ApproachF32(gActors[actor_index + 3].var_110, 0.1f, 0.35f);

        if (gActors[actor_index + 10].unk_180 == FIXED_UNIT(256)) {
            gActors[actor_index + 2].var_110 = 1.0f;
        }
    }

    func_8019B604_7431B4(actor_index, 0);
    func_8019B604_7431B4(actor_index, 1);
}

void func_8019B87C_74342C(u16 actor_index) {
    func_8019B100_742CB0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index + 1].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10;
    Actor_SetHitboxB(actor_index + 1, 6);
    func_8008105C(actor_index, D_801A0F8C_748B3C, D_801A0F00_748AB0);
    gActors[actor_index].unk_178 = (s32)D_801A1854_749404;
    func_80081478(actor_index, D_801A0F8C_748B3C, 0);
    func_80081790(actor_index, D_801A18E0_749490);
    func_800819A8(actor_index, D_801A0F8C_748B3C);
    gActors[actor_index].colorA = 0xFE;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0x30;
    gActors[actor_index].posZ.whole = 1;
}

void func_8019B990_743540(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        func_800819A8(actor_index, D_801A0F8C_748B3C);
    }
}

void func_8019B9EC_74359C(u16 actor_index) {
    func_8019B290_742E40(actor_index);
    func_8019B770_743320(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019BA5C_74360C(u16 actor_index) {
    gActors[actor_index + 3].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15;
    gActors[actor_index + 3].health = 0x1000;
    gActors[actor_index + 3].hitboxBX0 = -14;\
    gActors[actor_index + 3].hitboxBX1 = 14;
    gActors[actor_index + 3].hitboxBY0 = 16;
    gActors[actor_index + 3].hitboxBY1 = 0;
    gActors[actor_index + 3].grabType = GRABTYPE_20;
    gActors[actor_index + 5].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15;
    gActors[actor_index + 5].health = 0x1000;
    Actor_SetHitboxB(actor_index + 5, 12);
    gActors[actor_index + 5].grabType = GRABTYPE_21;
    Actor_SetHitboxA(actor_index + 9, 4);
    Actor_SetHitboxB(actor_index, 8);
}

void func_8019BB2C_7436DC(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        D_801A1A48_7495F8,
        gActors[actor_index + 5].posX.whole,
        gActors[actor_index + 5].posY.whole,
        gActors[actor_index + 5].posZ.whole + 1
    );

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].scaleX = 0.0f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].var_110 = 0.1248f;
        gActors[new_actor_index].unk_118 = -0.0038f;
        gActors[new_actor_index].var_154 = -8;
    }
}

void func_8019BC08_7437B8(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        D_801A1A58_749608,
        gActors[actor_index + 5].posX.whole,
        gActors[actor_index + 5].posY.whole,
        gActors[actor_index + 5].posZ.whole + 1
    );

    if (new_actor_index != 0) {
        f32 temp_f[3];

        temp_f[0] = 2.0f;
        temp_f[1] = -0.1248f;
        temp_f[2] = 0.0039f;

        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].var_160 = 0;
        gActors[new_actor_index].var_150 = FIXED_UNIT(-16);
        gActors[new_actor_index].scaleY = temp_f[0];
        gActors[new_actor_index].scaleX = temp_f[0];
        gActors[new_actor_index].var_110 = temp_f[1];
        gActors[new_actor_index].unk_114 = temp_f[1];
        gActors[new_actor_index].unk_118 = temp_f[2];
        gActors[new_actor_index].unk_11C = temp_f[2];
    }
}

void func_8019BCF4_7438A4(u16 actor_index) {
    u16 var_v0;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v0 = SpawnParticle_List_90C0_16(D_801A1A70_749620, gActors[actor_index + 5].posX.whole + 0x24, gActors[actor_index + 5].posY.whole, gActors[actor_index + 5].posZ.whole + 1);
    }
    else {
        var_v0 = SpawnParticle_List_90C0_16(D_801A1A60_749610, gActors[actor_index + 5].posX.whole - 0x24, gActors[actor_index + 5].posY.whole, gActors[actor_index + 5].posZ.whole + 1);
    }

    if (var_v0) {
        gActors[var_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[var_v0].flags = ACTOR_FLAG_ENABLED;
        gActors[var_v0].scaleY = 1.5f;
        gActors[var_v0].scaleX = 1.5f;
    }
}

void func_8019BE20_7439D0(u16 actor_index) {
    u16 temp_v0;
    u16 temp_v0_2;

    if (!(gActiveFrames & 3)) {
        temp_v0 = SpawnParticle_List_90C0_16(D_801A1A14_7495C4, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);

        if (temp_v0) {
            gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
            gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
            gActors[temp_v0].colorA = 0xB2;
            gActors[temp_v0].var_154 = -8;
        }

        temp_v0_2 = SpawnParticle_List_90C0_16(D_801A1A20_7495D0, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 0x10, gActors[actor_index].posZ.whole);
        if (temp_v0_2) {
            gActors[temp_v0_2].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
            gActors[temp_v0_2].flags = ACTOR_FLAG_ENABLED;
            gActors[temp_v0_2].colorR = 0xAA;
            gActors[temp_v0_2].colorG = 0xAA;
            gActors[temp_v0_2].colorB = 0xAA;
            gActors[temp_v0_2].velocityY.raw = FIXED_UNIT(1);
            gActors[temp_v0_2].pfn_17C = func_80030B0C;
            gActors[temp_v0_2].unk_104 = 0x10;
            gActors[temp_v0_2].unk_108 = -8;
            gActors[temp_v0_2].scaleY = 1.5f;
            gActors[temp_v0_2].scaleX = 1.5f;
        }
    }
}

void func_8019BF84_743B34(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        D_801A1A48_7495F8,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 1
    );

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].scaleX = 0.0f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].var_110 = 0.1248f;
        gActors[new_actor_index].unk_118 = -0.0038f;
        gActors[new_actor_index].var_154 = -8;
    }
}

void func_8019C060_743C10(u16 arg0, s32 arg1, s32 arg2, s32 arg3, s32* arg4, s32* arg5, s32* arg6) {
    f32 var_f0 = arg3 / 2;
    f32 temp_f14 = (f32)(2.0 * ((f32)arg2 / (var_f0 * var_f0)));
    f32 var_f16 = 0.0f;
    u16 index;

    for (index = 0; (u32)index < var_f0; index++) {
        var_f16 = temp_f14 + var_f16;
    }

    *arg4 = ((f32)arg1 / arg3) * FIXED_UNIT(1);
    *arg5 = var_f16 * FIXED_UNIT(1);
    *arg6 = (-(f32)(2.0 * ((f32)arg2 / (var_f0 * var_f0))) / 32) * FIXED_UNIT(1);
}

void func_8019C1F4_743DA4(u16 actor_index, s32 arg1, u16 arg2) {
    s32 temp_s1;
    s32 temp_s2;
    s32 var_s3 = 0;

    if (arg1 > 0) {
        do {
            arg2 = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
            if (arg2) {
                gActors[arg2].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
                gActors[arg2].flags = ACTOR_FLAG_ENABLED;
                gActors[arg2].graphicIndex = 0x2D0;
                gActors[arg2].scaleX = 0.8f;
                gActors[arg2].scaleY = 0.5f;
                gActors[arg2].colorB = 0x20;
                temp_s1 = (Rand() - 0x80) * 0.5;
                temp_s2 = (u32)Rand() * 0.25;
                gActors[arg2].rotateX = (u32)Rand() * 1.4;
                gActors[arg2].rotateY = (u32)Rand() * 1.4;
                gActors[arg2].var_150 = (Rand() << 16) - FIXED_UNIT(128);
                gActors[arg2].var_154 = -2;
                gActors[arg2].pfn_17C = func_80030B0C;
                gActors[arg2].unk_104 = 0x1E;
                gActors[arg2].unk_108 = -8;
                func_8019C060_743C10(actor_index, temp_s1, temp_s2, 0x3C, &gActors[arg2].velocityX.raw, &gActors[arg2].velocityY.raw, &gActors[arg2].unk_16C);
            }

            var_s3++;
        } while (var_s3 != arg1);
    }
}

void func_8019C4EC_74409C(u16 actor_index) {
    func_80033E7C(
        actor_index + 3,
        gActors[actor_index + 3].posX.whole,
        gActors[actor_index + 3].posY.whole,
        gActors[actor_index + 3].posZ.whole + 1,
        16,
        FIXED_UNIT(24),
        3
    );
}

void func_8019C574_744124(u16 actor_index) {
    s16* var_s1;
    u16 temp_v0;

    if (!(gActiveFrames & 0xF)) {
        var_s1 = D_801A0F8C_748B3C;
        while (*var_s1 != 0x7FFF) {
            u16 index = *var_s1 + actor_index;
            if (gActors[index].graphicIndex) {
                temp_v0 = SpawnParticle_Image_102D_16(gActors[index].graphicIndex, gActors[index].posX.whole, gActors[index].posY.whole, gActors[index].posZ.whole - 1);
                if (temp_v0) {
                    gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ;
                    gActors[temp_v0].flags = gActors[index].flags & (ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED);
                    gActors[temp_v0].graphicIndex = gActors[index].graphicIndex;
                    gActors[temp_v0].colorA = 0xC8;
                    gActors[temp_v0].rotateX = gActors[index].rotateX;
                    gActors[temp_v0].rotateY = gActors[index].rotateY;
                    gActors[temp_v0].rotateZ = gActors[index].rotateZ;
                    gActors[temp_v0].scaleX = gActors[index].scaleX;
                    gActors[temp_v0].scaleY = gActors[index].scaleY;
                    gActors[temp_v0].var_154 = -8;
                }
            }

            var_s1 += 5;
        }
    }
}

void func_8019C6DC_74428C(u16 actor_index) {
    u16 temp_t0;
    u16 temp_v0;

    if (!(gActiveFrames & 3)) {
        temp_t0 = actor_index + 3;
        temp_v0 = SpawnParticle_List_90C0_16(D_801A1A88_749638, gActors[temp_t0].posX.whole, gActors[temp_t0].posY.whole, gActors[temp_t0].posZ.whole - 1);

        if (temp_v0) {
            gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
            gActors[temp_v0].flags = (gActors[temp_t0].flags & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ENABLED;
            gActors[temp_v0].palette_18C = D_800D84E8;
            gActors[temp_v0].colorA = 0xC8;
            gActors[temp_v0].scaleX = 1.0f;
            gActors[temp_v0].scaleY = 1.0f;

            if (gActors[temp_t0].flags & ACTOR_FLAG_FLIPPED) {
                gActors[temp_v0].velocityX.raw = FIXED_UNIT(0.75);
            }
            else {
                gActors[temp_v0].velocityX.raw = -FIXED_UNIT(0.75);
            }

            gActors[temp_v0].var_154 = -8;
            gActors[temp_v0].var_110 = 0.01f;
            gActors[temp_v0].unk_118 = 0.0012f;
            gActors[temp_v0].unk_114 = -0.012f;
            gActors[temp_v0].unk_11C = -0.0022f;
        }
    }
}

void func_8019C828_7443D8(u16 actor_index) {
    u16 var_v0;

    if (!(gActiveFrames & 1)) {
        var_v0 = Actor_RangeFindInactive(0x90, 0xC0);
        if (var_v0) {
            gActors[var_v0].actorType = 0xC01;
            Actor_Initialize(var_v0);
            gActors[var_v0].posX.whole = (s32)(gActors[actor_index].posX.whole + (Rand() - 0x80) * 0.25);
            gActors[var_v0].posY.whole = gActors[actor_index].posY.whole;
            gActors[var_v0].posZ.whole = gActors[actor_index].posZ.whole + 1;
        }
    }
}

f32 func_8019C948_7444F8(f32 arg0, f32 arg1, s32 arg2) {
    if ((f32)arg2 == 0.0f) {
        return arg1;
    }

    return ((arg1 - arg0) / (f32)arg2) + arg0;
}

s32 func_8019C984_744534(s32 arg0, s32 arg1, s32 arg2) {
    if ((f32)arg2 == 0.0f) {
        return arg1;
    }

    return (s32)((f32)(arg1 - arg0) / (f32)arg2) + arg0;
}

void func_8019C9F4_7445A4(u16 actor_index, u16 arg1, u16 arg2, u16 arg3) {
    s32 temp_v0 = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
    s32 temp_v1 = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);

    temp_v0 = func_8019C984_744534(temp_v0, arg1, arg3);
    temp_v1 = func_8019C984_744534(temp_v1, arg2, arg3);
    gActors[actor_index].posX.whole = temp_v0 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = temp_v1 - gScreenPosCurrentY.whole;
}

s32 func_8019CAB8_744668(u16 arg0) {
    if (D_801A20E0_749C90 > 0) {
        D_801A20E0_749C90--;
    }

    if (D_801A20E0_749C90 <= 0) {
        return 1;
    }

    return 0;
}

void func_8019CAF8_7446A8(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;\
        gActors[actor_index].unk_138 = 0.0f;\
        gActors[actor_index + 1].unk_130 = 1.0f;
        return;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;\
    gActors[actor_index].unk_138 = 1.0f;\
    gActors[actor_index + 1].unk_130 = -1.0f;
}

void func_8019CBC4_744774(u16 actor_index) {
    if (gActors[actor_index + 6].unk_180 < 0x200) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            func_8019CAF8_7446A8(actor_index);
        }
    }
    else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        func_8019CAF8_7446A8(actor_index);
    }
}

s32 func_8019CC9C_74484C(u16 actor_index) {
    if (gActors[actor_index + 7].unk_180 < D_801A20EC_749C9C) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(1.0 / 16));
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(1.0 / 16));
    }

    return gActors[actor_index].velocityY.raw;
}

void func_8019CD78_744928(u16 actor_index, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_v0 = Math_Atan2(arg1, arg2);

    gActors[actor_index].velocityX.raw = gCosineLookup[temp_v0 & COS_MASK] * (f32)arg3;
    gActors[actor_index].velocityY.raw = gCosineLookup[(temp_v0 - 0x100) & COS_MASK] * (f32)arg3;
}

s32 func_8019CE58_744A08(u16 actor_index) {
    if (gActors[actor_index + 3].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index + 3].flags &= ~ACTOR_FLAG_UNK12;
        func_8019D6CC_74527C(actor_index);
        func_8019D884_745434(actor_index);
        func_8019E0E0_745C90(actor_index);
        func_8019D60C_7451BC(actor_index);
        Actor_SetHitboxB(actor_index + 5, 3);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index + 3);
        return 1;
    }

    return 0;
}

s32 func_8019CF50_744B00(u16 actor_index) {
    if (gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
        func_8019D884_745434(actor_index);
        func_8019E0E0_745C90(actor_index);
        func_8019D60C_7451BC(actor_index);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index + 5);
        return 1;
    }

    return 0;
}

s32 func_8019D028_744BD8(u16 actor_index) {
    if (func_8019CE58_744A08(actor_index)) {
        gActors[actor_index].state = 0xD0;
        return 1;
    }

    if (func_8019CF50_744B00(actor_index)) {
        gActors[actor_index].state = 0xE0;
        return 1;
    }

    return 0;
}

s32 func_8019D0D8_744C88(u16 actor_index) {
    if ((gActors[actor_index + 3].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index + 3].hitByType == 19) {
        gActors[actor_index].state = 0x110;
        gActors[actor_index].iFrames = 60;
        gActors[actor_index + 3].health = 0;
        gActors[actor_index + 5].health = 0;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_0067, actor_index);
        return 1;
    }

    return 0;
}

s32 func_8019D184_744D34(u16 actor_index) {
    if ((gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index + 5].hitByType == 19) {
        gActors[actor_index].state = 0x110;
        gActors[actor_index].iFrames = 60;
        gActors[actor_index + 3].health = 0;
        gActors[actor_index + 5].health = 0;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_0067, actor_index);
        return 1;
    }

    return 0;
}

s32 func_8019D230_744DE0(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK15)) {
        gActors[actor_index].state = 0x120;
        gActors[actor_index].iFrames = 60;
        gActors[actor_index + 3].health = 0;
        gActors[actor_index + 5].health = 0;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_0067, actor_index);
        return 1;
    }

    return 0;
}

s32 func_8019D2D8_744E88(u16 actor_index) {
    if (func_8019D0D8_744C88(actor_index)) {
        return 1;
    }

    if (func_8019D184_744D34(actor_index)) {
        return 1;
    }

    if (func_8019D230_744DE0(actor_index)) {
        return 2;
    }

    return 0;
}

s32 func_8019D34C_744EFC(u16 actor_index) {
    if (func_8019D0D8_744C88(actor_index)) {
        return 1;
    }

    if (func_8019D184_744D34(actor_index)) {
        return 1;
    }

    if (gActors[actor_index].velocityY.raw < 0 && gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK15) {
        gActors[actor_index].state = 0x30;
        Sound_PlaySfxAtActor2(SFX_LAND_0025, actor_index);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        return 1;
    }

    return 0;
}

s32 func_8019D414_744FC4(u16 actor_index, s16 arg1) {
    gActors[actor_index].health = (s32)(gActors[actor_index].health + arg1 * 1.7);
    if (gActors[actor_index].health <= 0) {
        return 1;
    }

    return 0;
}

void func_8019D4C0_745070(u16 actor_index) {
    u16 temp_v0 = Actor_RangeFindInactive(0x70, 0x80);
    if (temp_v0 != 0) {
        gActors[temp_v0].actorType = 0xC02;
        Actor_Initialize(temp_v0);
        gActors[temp_v0].posX.raw = gActors[(u16)(actor_index + 5)].posX.raw;
        gActors[temp_v0].posY.raw = gActors[(u16)(actor_index + 5)].posY.raw;
        gActors[temp_v0].posZ.whole = gActors[(u16)(actor_index + 5)].posZ.whole - 1;
    }
}

void func_8019D588_745138(u16 actor_index) {
    gActors[actor_index + 3].flags |= (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
    gActors[actor_index + 3].hitboxAX0 = -14;\
    gActors[actor_index + 3].hitboxAX1 = 14;
    gActors[actor_index + 3].hitboxAY0 = 16;
    gActors[actor_index + 3].hitboxAY1 = 0;
    gActors[actor_index + 3].hitFlags = HITFLAG_0 | HITFLAG_7;
    gActors[actor_index + 3].hitType = 4;
    gActors[actor_index + 3].unk_0F8.raw = FIXED_UNIT(6);
    gActors[actor_index + 3].unk_0FC.raw = FIXED_UNIT(3);
    gActors[actor_index + 3].damage = 10;
}

void func_8019D60C_7451BC(u16 actor_index) {
    gActors[actor_index + 3].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
}

void func_8019D650_745200(u16 actor_index) {
    gActors[actor_index + 3].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index + 5].flags |= ACTOR_FLAG_UNK9;
    gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
    gActors[actor_index + 5].unk_0F8.raw = 0;
    gActors[actor_index + 5].unk_0FC.raw = 0;
    gActors[actor_index + 5].hitFlags |= 0x80;
    gActors[actor_index + 5].hitType = 13;
    gActors[actor_index + 5].damage = 50;
}

void func_8019D6CC_74527C(u16 actor_index) {
    gActors[actor_index + 3].flags &= ~ACTOR_FLAG_UNK12;
    gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK9;
}

s32 func_8019D720_7452D0(u16 actor_index) {
    if (gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_UNK0) {
        func_8019D6CC_74527C(actor_index);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        func_8019BC08_7437B8(actor_index);
        Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
        return 1;
    }

    return 0;
}

void func_8019D7D0_745380(u16 actor_index) {
    u16 index = actor_index + 9;
    u16 parent_index = gActors[index].parentIndex;

    gActors[parent_index].parentIndex = index;
    gActors[parent_index].flags_098 |= ACTOR_FLAG3_GRAB;
    gActors[parent_index].unk_104 = gActors[index].posX.raw;
    gActors[parent_index].unk_108 = gActors[index].posY.raw;
    gActors[parent_index].unk_10C = gActors[index].posZ.raw - 1;
}

void func_8019D844_7453F4(u16 actor_index) {
    gActors[actor_index + 9].flags |= ACTOR_FLAG_UNK11;
}

void func_8019D884_745434(u16 actor_index) {
    gActors[actor_index + 9].flags &= ~ACTOR_FLAG_UNK11;
}

void func_8019D8C8_745478(u16 actor_index) {
    u16 index = actor_index + 5;

    gActors[index].flags |= ACTOR_FLAG_UNK9;
    gActors[index].unk_0F8.raw = FIXED_UNIT(6);
    gActors[index].unk_0FC.raw = 0;
    gActors[index].hitFlags = HITFLAG_7;
    gActors[index].hitType = 8;
    gActors[index].damage = 100;
}

void func_8019D930_7454E0(u16 actor_index) {
    u16 index = actor_index + 5;
    gActors[index].flags &= ~ACTOR_FLAG_UNK9;
}

void func_8019D978_745528(u16 actor_index) {
    Actor* temp_v0 = &gActors[(u16)(actor_index + 9)];
    u16 sp22;
    u16 var_v1;

    var_v1 = gScreenPosCurrentX.whole + temp_v0->posX.whole;
    sp22 = gScreenPosCurrentY.whole + temp_v0->posY.whole;

    if (D_801A20F0_749CA0 < var_v1) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(2), FIXED_UNIT(0.25));
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.25));
    }

    if (D_801A20F2_749CA2 < sp22) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -FIXED_UNIT(2), FIXED_UNIT(0.25));
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(2), FIXED_UNIT(0.25));
    }
}

void func_8019DA80_745630(u16 actor_index) {
    u16 index;
    u16 temp_t0;

    for (index = 0; index < 8; index++) {
        temp_t0 = index + 0x70;
        gActors[temp_t0].actorType = 0xC03;
        Actor_Initialize(temp_t0);
        gActors[temp_t0].posX.raw = gActors[actor_index].posX.raw;
        gActors[temp_t0].posY.raw = gActors[actor_index].posY.raw;
        gActors[temp_t0].posZ.whole = gActors[actor_index].posZ.whole - 1;
        gActors[temp_t0].var_154 = index << 7;
        gActors[temp_t0].var_158 = index * 0xA;

        if (gActors[actor_index + 6].unk_180 < 0x200) {
            gActors[temp_t0].var_15C = 1;
        }
        else {
            gActors[temp_t0].var_15C = -1;
        }
    }
}

u16 func_8019DBD4_745784(u16 actor_index) {
    Actor* temp_v1 = gActors;
    u16 var_t0;
    u16 temp_t9;

    if (temp_v1[actor_index + 3].flags_098 & ACTOR_FLAG3_GRAB) {
        temp_t9 = actor_index + 3;

        if (temp_v1[temp_t9].flags_098 & ACTOR_FLAG3_SHAKE && func_800486F4() == 8) {
            if (D_801A20F4_749CA4 == 0x1F) {
                SpawnGemActor(temp_t9, 0x32, 0);
            }
            else {
                func_8019D4C0_745070(actor_index);
            }

            D_801A20F4_749CA4++;
        }

        var_t0 = 0;
    }
    else {
        if (temp_v1[(u16)(actor_index + 3)].flags_098 & ACTOR_FLAG3_THROWN) {
            var_t0 = 1;
            temp_v1[actor_index].state = 0xF0;
            temp_v1[actor_index].flags |= (ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17);
            temp_v1[actor_index].velocityX.raw = temp_v1[actor_index + 3].unk_0F8.raw;
            temp_v1[actor_index].velocityY.raw = temp_v1[actor_index + 3].unk_0FC.raw;
        }
        else {
            var_t0 = 2;
            temp_v1[actor_index].state = 0xA0;
        }

        Actor_SetHitboxB(actor_index + 5, 0xC);
    }

    return var_t0;
}

f32 func_8019DD64_745914(void) {
    return D_801A1A94_749644[gPlayerData.unk_10] * (f32)gPlayerData.unk_0C[1];
}

s32 func_8019DD9C_74594C(u16 actor_index, u16 arg1, u16 arg2) {
    s32 temp_v0;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a1_2;
    f32 var_f2 = -24.0f;
    f32 var_f4 = -80.0f;
    f32 var_f0;

    temp_v0 = gActors[actor_index + 6].unk_180;
    if (temp_v0 < arg1 - 0x30) {
        gActors[actor_index + 5].unk_180 = -0x50;
        return 1;
    }

    if (arg2 + 0x30 < temp_v0) {
        gActors[actor_index + 5].unk_180 = -0x50;
        return 2;
    }

    if (arg1 < temp_v0 && temp_v0 < arg2) {
        gActors[actor_index + 5].unk_180 = -0x18;
        return 3;
    }

    var_f0 = (var_f2 - var_f4) / 48.0;

    if (temp_v0 < 0x200) {
        var_a1_2 = arg1 & 0xFFFF;
    }
    else {
        var_a1_2 = arg2 & 0xFFFF;
    }

    temp_a0 = temp_v0 - var_a1_2;
    if (temp_a0 > 0) {
        var_a1 = temp_a0;
    }
    else {
        var_a1 = -temp_a0;
    }

    var_a1 = var_a1 * var_f0;
    gActors[actor_index + 5].unk_180 = var_f2 - var_a1;
    return 0;
}

s32 func_8019DF10_745AC0(u16 actor_index) {
    s32 var_v1;
    Actor* temp_a0;

    if (gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gActors[(u16)(actor_index + 5)].flags_098 & ACTOR_FLAG3_SHAKE && func_800486F4() == 8) {
            if (D_801A20F6_749CA6 < 0x14) {
                if (Rand() < 0x80) {
                    SpawnGemActor(actor_index + 3, 0x31, 0);
                }
                else {
                    SpawnGemActor(actor_index + 3, 0x30, 0);
                }
            }

            D_801A20F6_749CA6++;
        }

        var_v1 = 0;
    }
    else {
        temp_a0 = gActors + (u16)(actor_index + 5);

        if (temp_a0->flags_098 & ACTOR_FLAG3_THROWN) {
            var_v1 = 1;
            gActors[actor_index].state = 0x100;
            gActors[actor_index].flags |= (ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17);
            gActors[actor_index].velocityX.raw = temp_a0->unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = temp_a0->unk_0FC.raw / 2;
        }
        else {
            var_v1 = 2;
            gActors[actor_index].state = 0xB0;
        }
    }

    return var_v1;
}

void func_8019E0E0_745C90(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17);
}

void func_8019E128_745CD8(u16 actor_index) {
    gActors[actor_index + 3].flags &= ~ACTOR_FLAG_UNK12;
    gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
}

void func_8019E178_745D28(u16 arg0) {
}

void func_8019E180_745D30(u16 actor_index, s16* arg1, u16 arg2) {
    while (*arg1 != 0x7FFF) {
        u16 index = *arg1 + actor_index;

        gActors[index].colorR = arg2;
        gActors[index].colorG = arg2;
        gActors[index].colorB = arg2;
        arg1 += 5;
    }
}

void func_8019E1E8_745D98(u16 actor_index) {
    if (gActors[actor_index + 6].unk_180 < 0x1A0 && gActors[actor_index + 6].unk_180 >= 0x261 && func_80029B00(0x40, 0x30, -0x30)) {
        if (D_801A20F0_749CA0 < gActors[actor_index + 6].unk_180) {
            gActors[actor_index].posX.raw += FIXED_UNIT(2.5);
        }
        else {
            gActors[actor_index].posX.raw -= FIXED_UNIT(2.5);
        }
    }
}

void func_8019E2F0_745EA0(u16 actor_index) {
    func_8019B990_743540(actor_index);
    D_801A20F0_749CA0 = gScreenPosCurrentX.whole + gActors->posX.whole;
    D_801A20F2_749CA2 = gScreenPosCurrentY.whole + gActors->posY.whole;
    gActors[actor_index + 6].unk_180 = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
    gActors[actor_index + 7].unk_180 = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);
    gActors[actor_index + 1].unk_134 = 0.0f;
    func_8002AA20(actor_index, 0);

    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x10;
        func_8019B87C_74342C(actor_index);
        func_8019BA5C_74360C(actor_index);
        gActors[actor_index].posX.whole = -0x40;
        gActors[actor_index].posY.whole = 0x20;
        gActors[actor_index].health = 0x3E8;
        D_801A20F4_749CA4 = 0;
        D_801A20F6_749CA6 = 0;
        func_80081790(actor_index, D_801A18B8_749468);
        Sound_PlaySfxAtActorPanning(SFX_011E, actor_index);
        break;

    case 0x10:
        gActors[actor_index].state = 0x20;
        gActors[actor_index + 2].unk_180 = 0x1E;
        D_801A20E0_749C90 = 0x78;
        break;

    case 0x20:
        gActors[actor_index].state++;
        func_8019CBC4_744774(actor_index);

        if (gActors[actor_index + 6].unk_180 < 0x200) {
            D_801A20E8_749C98 = 0x260;
        }
        else {
            D_801A20E8_749C98 = 0x1A0;
        }

        D_801A20EC_749C9C = gScreenPosCurrentY.whole + 0x30;
        gActors[actor_index + 2].unk_180 = 0x1E;
        // fallthrough

    case 0x21:
        if (func_8019CAB8_744668(actor_index) != 0) {
            gActors[actor_index].state = 0x40;
        }
        else {
            gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
            gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0x90;
                gActors[actor_index + 2].unk_180 = 0x3C;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }
        }
        break;

    case 0x30:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A18E0_749490);
        gActors[actor_index + 2].unk_180 = 0x3C;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        // fallthrough

    case 0x31:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.5);
            gActors[actor_index + 2].unk_180 = 0x1E;
        }
        break;

    case 0x32:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0xB0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        break;

    case 0x40:
        D_801A20E2_749C92 = 0;

        if (gActors[actor_index].health < 0x12C) {
            if (Rand() < 0x55) {
                gActors[actor_index].state = 0x50;
            }
            else {
                gActors[actor_index].state = (s32)((Rand() & 1) ? 0x60 : 0x80);
            }

            D_801A20E0_749C90 = 0x3C;
        }
        else if (gActors[actor_index].health < 0x320) {
            if (Rand() < 0x80) {
                gActors[actor_index].state = 0x50;
            }
            else {
                gActors[actor_index].state = 0x60;
            }

            D_801A20E0_749C90 = 0x5A;
        }
        else {
            gActors[actor_index].state = 0x50;
            D_801A20E0_749C90 = 0x78;
        }
        break;

    case 0x60:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A18B8_749468);
        gActors[actor_index + 2].unk_180 = 0x1E;

        if (gActors[actor_index + 6].unk_180 >= 0x201) {
            gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, (f32)(0x280 - gActors[actor_index + 6].unk_180), 32.0f, 0x1E);
        }
        else {
            gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, (f32)(0x180 - gActors[actor_index + 6].unk_180), 32.0f, 0x1E);
        }
        // fallthrough

    case 0x61:
        if (func_8019D028_744BD8(actor_index) == 0) {
            if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-6)) {
                gActors[actor_index].velocityY.raw -= gActors[actor_index + 3].unk_180;
            }

            if (((--gActors[actor_index + 2].unk_180 <= 0) && (D_801A20F2_749CA2 >= gActors[actor_index + 7].unk_180)) || ((gScreenPosCurrentY.whole - 0x38) >= gActors[actor_index + 7].unk_180)) {
                gActors[actor_index].state += 1;
                func_80081790(actor_index, D_801A1908_7494B8);
                func_8019CBC4_744774(actor_index);
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                SpawnCrosshair(0xFU, (u16)(actor_index + 3));
            }
        }
        break;

    case 0x62:
        if (func_8019D028_744BD8(actor_index) == 0 && gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state += 1;
            func_8019BCF4_7438A4(actor_index);
            func_8019D588_745138(actor_index);
            gActors[actor_index].velocityX.raw = (s32)(gActors[actor_index + 1].unk_130 * FIXED_UNIT(5.5));
            Sound_PlaySfxAtActorPanning(SFX_0083, actor_index);
        }
        break;

    case 0x63:
        if (func_8019D028_744BD8(actor_index) == 0) {
            func_8019C6DC_74428C(actor_index);

            if (gActors[actor_index + 3].flags_098 & ACTOR_FLAG3_UNK0) {
                func_8019D60C_7451BC(actor_index);
                Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            }

            if ((((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != 0) && (gActors[actor_index + 6].unk_180 < 0x1A1)) || (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) == 0) && (gActors[actor_index + 6].unk_180 >= 0x260))) {
                gActors[actor_index].state = 0xA0;
                func_8019D60C_7451BC(actor_index);
                Sound_StopSfx(SFX_0083);
            }
        }
        break;

    case 0x50:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A1934_7494E4);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;

        if (D_800E3584 & 0xC0000) {
            func_8019CAF8_7446A8(actor_index);
        }

        SpawnCrosshair(0xFU, (u16)(actor_index + 3));
        // fallthrough

    case 0x51:
        if (func_8019D028_744BD8(actor_index) == 0 && gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state += 1;
            func_8019D650_745200(actor_index);

            if (D_801A20F0_749CA0 < 0x1D1) {
                func_8019CD78_744928(actor_index, 0x1A0 - gActors[actor_index + 6].unk_180, (gScreenPosCurrentY.whole - gActors[actor_index + 7].unk_180) - 0x40, FIXED_UNIT(4));
            }
            else if (D_801A20F0_749CA0 >= 0x230) {
                func_8019CD78_744928(actor_index, 0x260 - gActors[actor_index + 6].unk_180, (gScreenPosCurrentY.whole - gActors[actor_index + 7].unk_180) - 0x40, FIXED_UNIT(4));
            }
            else {
                if (gActors[actor_index + 6].unk_180 >= D_801A20F0_749CA0) {
                    func_8019CD78_744928(actor_index, (D_801A20F0_749CA0 - gActors[actor_index + 6].unk_180) - 0x30, (gScreenPosCurrentY.whole - gActors[actor_index + 7].unk_180) - 0x40, FIXED_UNIT(4));
                }
                else {
                    func_8019CD78_744928(actor_index, (D_801A20F0_749CA0 - gActors[actor_index + 6].unk_180) + 0x30, (gScreenPosCurrentY.whole - gActors[actor_index + 7].unk_180) - 0x40, FIXED_UNIT(4));
                }
            }

            Sound_PlaySfxAtActor2(SFX_SWISH_0098, actor_index);
        }
        break;

    case 0x52:
        if (func_8019D028_744BD8(actor_index) == 0) {
            func_8019C574_744124(actor_index);

            if ((func_8001FCA0((u16)(actor_index + 5), gActors[actor_index + 5].hitboxBX0 - (0 - gActors[actor_index + 5].posX.whole), gActors[actor_index + 5].hitboxBY1 - (0 - gActors[actor_index + 5].posY.whole)) != 0) || (func_8001FCA0((u16)(actor_index + 5), gActors[actor_index + 5].hitboxBX1 - (0 - gActors[actor_index + 5].posX.whole), gActors[actor_index + 5].posY.whole - gActors[actor_index + 5].hitboxBY1) != 0)) {
                gActors[actor_index].state = 0xC0;
                func_8019BB2C_7436DC(actor_index);
                Sound_PlaySfxAtActor2(SFX_0068, actor_index);
                CameraShake(8, 6);
            }
            else if (func_8019D720_7452D0(actor_index) != 0) {
                gActors[actor_index].state += 1;
                func_8019D6CC_74527C(actor_index);
            }
        }
        break;

    case 0x53:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            if (gActors[actor_index].health >= 0x320) {
                gActors[actor_index].state = 0x20;
            }
            else if (Rand() < 0x80) {
                gActors[actor_index].state = 0x60;
            }
            else {
                gActors[actor_index].state += 1;
                gActors[actor_index + 2].unk_180 = 0x14;

                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, 32.0f, 32.0f, gActors[actor_index + 2].unk_180 * 2);
                }
                else {
                    gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, -32.0f, 32.0f, gActors[actor_index + 2].unk_180 * 2);
                }
            }
        }
        break;

    case 0x54:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-6)) {
                gActors[actor_index].velocityY.raw -= gActors[actor_index + 3].unk_180;
            }

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].state = 0x70;
            }
        }
        break;

    case 0x70:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index + 2].unk_180 = 0x50;
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0x71:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A1994_749544);
            func_8019D844_7453F4(actor_index);
            gActors[actor_index + 2].unk_180 = 0xB4;
            gActors[actor_index + 3].unk_180 = (s32)(gScreenPosCurrentX.whole + gActors->posX.whole);
            gActors[actor_index + 4].unk_180 = (s32)(gScreenPosCurrentY.whole + gActors->posY.whole);

            if (D_800E3584 & 0xC0000) {
                func_8019CAF8_7446A8(actor_index);
            }
        }
        break;

    case 0x72:
        func_8019D978_745528(actor_index);

        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0xA0;
            func_8019D884_745434(actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        else if (gActors[actor_index + 9].flags_098 & ACTOR_FLAG3_UNK8) {
            if ((gActors[actor_index + 9].parentIndex == 0) && !(gActors[gActors[actor_index + 9].parentIndex].unk_0DF & 0x40)) {
                gActors[actor_index].state += 1;
                func_8019D884_745434(actor_index);
                func_8019D7D0_745380(actor_index);
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index + 2].unk_180 = 0x3C;
            }
        }
        break;

    case 0x73:
        func_8019D7D0_745380(actor_index);
        gActors[actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[actor_index].posY.whole = (s16)(s32)func_8019C948_7444F8(gActors[actor_index].posY.whole, -8.0f, gActors[actor_index + 2].unk_180);

        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A19BC_74956C);
        }
        break;

    case 0x74:
        func_8019D7D0_745380(actor_index);

        if (gActors[actor_index].unk_16C & 1) {
            func_8019D8C8_745478(actor_index);
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0xA0;
            func_8019D930_7454E0(actor_index);
        }
        else if ((gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_UNK0) && (gActors[actor_index + 5].parentIndex == 0)) {
            gActors[actor_index].state += 1;
            gActors[actor_index + 2].unk_180 = 0x1E;
            func_8019D930_7454E0(actor_index);
            gActors[gActors[actor_index + 9].parentIndex].flags_098 &= ~ACTOR_FLAG3_GRAB;
            gActors[gActors[actor_index + 9].parentIndex].flags_098 |= ACTOR_FLAG3_THROWN;
            gActors[gActors[actor_index + 9].parentIndex].unk_0F8.raw = (s32)(gActors[actor_index + 1].unk_130 * FIXED_UNIT(6));
            gActors[gActors[actor_index + 9].parentIndex].unk_0FC.raw = FIXED_UNIT(1);
            Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
        }
        break;

    case 0x75:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0xA0;
        }
        break;

    case 0x80:
        gActors[actor_index].state++;

        if (func_8019D028_744BD8(actor_index) == 0) {
            if (gActors[actor_index + 6].unk_180 < 0x200) {
                gActors[actor_index + 3].unk_180 = 0x190;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    func_8019CAF8_7446A8(actor_index);
                }
            }
            else {
                gActors[actor_index + 3].unk_180 = 0x270;

                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    func_8019CAF8_7446A8(actor_index);
                }
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 2].unk_180 = 0x3C;

    case 0x81:
            if (func_8019D028_744BD8(actor_index) == 0) {
                gActors[actor_index].posX.whole = func_8019C984_744534((s32)gActors[actor_index].posX.whole, gActors[actor_index + 3].unk_180 - gScreenPosCurrentX.whole, gActors[actor_index + 2].unk_180);
                gActors[actor_index].posY.whole = func_8019C984_744534((s32)gActors[actor_index].posY.whole, 0x30, gActors[actor_index + 2].unk_180);

                if (gActors[actor_index + 2].unk_180-- <= 0) {
                    gActors[actor_index].state += 1;
                    func_8019CAF8_7446A8(actor_index);
                    gActors[actor_index + 2].unk_180 = 0x78;
                    func_8019DA80_745630(actor_index);
                }
            }
        }
        break;

    case 0x82:
        if (func_8019D028_744BD8(actor_index) == 0 && gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0xA0;
        }
        break;

    case 0x90:
        gActors[actor_index].state++;
        func_8019CBC4_744774(actor_index);
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0x91:
        if (func_8019D028_744BD8(actor_index) == 0) {
            if (func_8019CAB8_744668(actor_index) != 0) {
                gActors[actor_index].state = 0x40;
            }
            else {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    if (D_801A20E8_749C98 >= gActors[actor_index + 6].unk_180) {
                        gActors[actor_index].state = 0x20;
                    }

                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(2.5), FIXED_UNIT(0.125));
                }
                else {
                    if (gActors[actor_index + 6].unk_180 >= D_801A20E8_749C98) {
                        gActors[actor_index].state = 0x20;
                    }

                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2.5), FIXED_UNIT(0.125));
                }

                func_8019CC9C_74484C(actor_index);
            }
        }
        break;

    case 0xA0:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x1E;
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0xA1:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
            gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state += 1;
                gActors[actor_index + 2].unk_180 = 0x28;
                func_8019CBC4_744774(actor_index);
            }
        }
        break;

    case 0xA2:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            gActors[actor_index].posY.whole = (s16)(s32)func_8019C948_7444F8(gActors[actor_index].posY.whole, 48.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0x90;
                gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
            }
        }
        break;

    case 0xB0:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x1E;
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0xB1:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            func_8019E1E8_745D98(actor_index);
            gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
            gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state += 1;
                gActors[actor_index + 2].unk_180 = 0x28;
                func_8019CBC4_744774(actor_index);
            }
        }
        break;

    case 0xB2:
        if (func_8019D028_744BD8(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            func_8019E1E8_745D98(actor_index);
            gActors[actor_index].posY.whole = (s16)(s32)func_8019C948_7444F8(gActors[actor_index].posY.whole, 48.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0x90;
            }
        }
        break;

    case 0xC0:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x1E;
        gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, gActors[actor_index + 1].unk_130 * 32.0f, 16.0f, 0x1E);
        // fallthrough

    case 0xC1:
        if (func_8019D028_744BD8(actor_index) == 0) {
            if (func_8019D720_7452D0(actor_index) != 0) {
                gActors[actor_index].state = 0x53;
                gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
            }
            else {
                if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-6)) {
                    gActors[actor_index].velocityY.raw -= gActors[actor_index + 3].unk_180;
                }

                if (gActors[actor_index + 2].unk_180-- <= 0) {
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].state += 1;
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index + 2].unk_180 = 0x1E;
                    func_8019D6CC_74527C(actor_index);
                }
            }
        }
        break;

    case 0xC2:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
            gActors[actor_index].state = 0xA0;
            SpawnCrosshair(0xFU, (u16)(actor_index + 5));
            gActors[actor_index + 5].flags |= ACTOR_FLAG_UNK12;
        }
        break;

    case 0xD0:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A196C_74951C);
        gActors[actor_index + 2].unk_180 = 0x1E;
        Sound_StopSfx(SFX_0083);
        // fallthrough

    case 0xD1:
        if (func_8019DBD4_745784(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            func_8019C9F4_7445A4(actor_index, gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole), gScreenPosCurrentY.whole - 8, gActors[actor_index + 2].unk_180_s16[1]);
            func_8019C4EC_74409C(actor_index);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state += 1;
                gActors[actor_index + 1].unk_118 = (f32)(gActors[actor_index + 1].unk_130 * 200.0f);
            }
        }
        break;

    case 0xD2:
        if (func_8019DBD4_745784(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            gActors[actor_index + 1].unk_11C = gActors[actor_index + 1].unk_118 + func_8019DD64_745914();
            gActors[actor_index].velocityX.raw = (s32)(((f64)gActors[actor_index + 1].unk_11C / 500.0) * (f64)FIXED_UNIT(2));
            func_8019C4EC_74409C(actor_index);
            func_8019C828_7443D8(actor_index);

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                func_8019DD9C_74594C(actor_index, 0x190U, 0x278U);
            }
            else {
                func_8019DD9C_74594C(actor_index, 0x188U, 0x270U);
            }

            gActors[actor_index].posY.whole = Math_ApproachS32(gActors[actor_index].posY.whole, gActors[actor_index + 5].unk_180, 2);
        }
        break;

    case 0xD3:
        if (func_8019DBD4_745784(actor_index) == 0 && func_8019D2D8_744E88(actor_index) == 0) {
            func_8019DD9C_74594C(actor_index, 0x188U, 0x270U);
            gActors[actor_index].posY.whole = Math_ApproachS32(gActors[actor_index].posY.whole, gActors[actor_index + 5].unk_180, 2);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0xA0;
            }
        }
        break;

    case 0xE0:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x3C;
        func_80081790(actor_index, D_801A18B8_749468);
        Sound_StopSfx(SFX_0083);
        // fallthrough

    case 0xE1:
        if (func_8019DF10_745AC0(actor_index) == 0 && gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A1980_749530);
        }
        break;

    case 0xE2:
        gActors[actor_index].state++;

        if (func_8019DF10_745AC0(actor_index) == 0) {
            if (gActors[actor_index + 5].flags_098 & ACTOR_FLAG3_GRAB) {
                gActors->flags_098 |= (ACTOR_FLAG3_UNK1 | ACTOR_FLAG3_UNK16);
                gActors[actor_index + 5].hitFlags = 0;
                gActors->hitByFlags = 0;
                gActors[actor_index + 5].hitType = 0x12;
                gActors->hitByType = (u16)(gActors[actor_index + 5].hitType + actor_index * 0);
                gActors[actor_index + 5].damage = 0;
                gActors->pendingDamage = gActors[actor_index + 5].damage;
                gActors->unk_0F8.raw = (s32)(gActors[actor_index + 1].unk_130 * FIXED_UNIT(5.5) * -1.0f);
                gActors->unk_0FC.raw = FIXED_UNIT(8);
            }

            gActors[actor_index + 2].unk_180 = 0x1E;
        }
        break;

    case 0xE3:
        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0xA0;
        }
        break;

    case 0xF0:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x28;
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0xF1:
        if (func_8019D2D8_744E88(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
            gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

            if (func_80029B00(0x40, 0x30, -0x30) != 0) {
                if (D_801A20F0_749CA0 < gActors[actor_index + 6].unk_180) {
                    gActors[actor_index].posX.raw += FIXED_UNIT(2.5);
                }
                else {
                    gActors[actor_index].posX.raw += FIXED_UNIT(-2.5);
                }
            }

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0xB0;
                func_8019E0E0_745C90(actor_index);
            }
        }
        break;

    case 0x100:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x1E;
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0x101:
        if (func_8019D34C_744EFC(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
            gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0xA0;
                func_8019E0E0_745C90(actor_index);
            }
        }
        break;

    case 0x110:
        gActors[actor_index].state++;

        if (func_8019D414_744FC4(actor_index, -0xC8) != 0) {
            gActors[actor_index].state = 0x140;
            Sound_StopSfx(SFX_011E);
        }
        else {
            func_8019E0E0_745C90(actor_index);
            gActors[actor_index + 2].unk_180 = 0x46;

            if (gActors[actor_index + 6].unk_180 >= 0x201) {
                gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, -48.0f, 160.0f, gActors[actor_index + 2].unk_180 * 2);
            }
            else {
                gActors[actor_index + 3].unk_180 = func_8008412C(actor_index, 48.0f, 160.0f, gActors[actor_index + 2].unk_180 * 2);
            }

            func_80081790(actor_index, D_801A19F8_7495A8);
            Sound_PlaySfxAtActor2(SFX_0076, actor_index);

    case 0x111:
            if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-6)) {
                gActors[actor_index].velocityY.raw -= gActors[actor_index + 3].unk_180;
            }

            func_8019BE20_7439D0(actor_index);

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0x130;
            }
        }
        break;

    case 0x120:
        gActors[actor_index].state++;

        if (func_8019D414_744FC4(actor_index, -0x64) != 0) {
            gActors[actor_index].state = 0x140;
            Sound_StopSfx(SFX_011E);
        }
        else {
            func_8019E0E0_745C90(actor_index);
            func_8019BF84_743B34(actor_index);
            func_8019C1F4_743DA4(actor_index, 8, 0x2000U);
            Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 2].unk_180 = 0x1E;

    case 0x121:
            func_80081790(actor_index, D_801A19F8_7495A8);
            --gActors[actor_index + 2].unk_180;

            if (gActors[actor_index + 2].unk_180-- <= 0) {
                gActors[actor_index].state = 0x130;
            }
        }
        break;

    case 0x130:
        gActors[actor_index].state++;
        gActors[actor_index + 2].unk_180 = 0x1E;
        func_8019E128_745CD8(actor_index);
        func_80081790(actor_index, D_801A18B8_749468);
        // fallthrough

    case 0x131:
        if (gActiveFrames & 2) {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0x80U);
        }
        else {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0U);
        }

        gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
        gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index + 2].unk_180 = 0x3C;
            func_8019CBC4_744774(actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        break;

    case 0x132:
        if (gActiveFrames & 2) {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0x80U);
        }
        else {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0U);
        }

        gActors[actor_index].posY.whole = (s16)(s32)func_8019C948_7444F8(gActors[actor_index].posY.whole, 48.0f, gActors[actor_index + 2].unk_180);

        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index + 2].unk_180 = 0x1E;

            if (gActors[actor_index + 6].unk_180 < 0x200) {
                D_801A20E8_749C98 = 0x1A0;
            }
            else {
                D_801A20E8_749C98 = 0x260;
            }
        }
        break;

    case 0x133:
        if (gActiveFrames & 2) {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0x80U);
        }
        else {
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0U);
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (D_801A20E8_749C98 >= gActors[actor_index + 6].unk_180) {
                gActors[actor_index].state += 1;
                func_80081790(actor_index, D_801A196C_74951C);
                Sound_PlaySfxAtActor2(SFX_CLANCER_CRY_00A1, actor_index);
            }

            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(2.5), FIXED_UNIT(0.125));
        }
        else {
            if (gActors[actor_index + 6].unk_180 >= D_801A20E8_749C98) {
                gActors[actor_index].state += 1;
                func_80081790(actor_index, D_801A196C_74951C);
                Sound_PlaySfxAtActor2(SFX_CLANCER_CRY_00A1, actor_index);
            }

            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2.5), FIXED_UNIT(0.125));
        }
        break;

    case 0x134:
        gActors[actor_index].velocityX.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityX.raw, 0.0f, gActors[actor_index + 2].unk_180);
        gActors[actor_index].velocityY.raw = (s32)func_8019C948_7444F8(gActors[actor_index].velocityY.raw, 0.0f, gActors[actor_index + 2].unk_180);

        if (gActors[actor_index + 2].unk_180-- <= 0) {
            gActors[actor_index].state = 0x90;
            func_8019E178_745D28(actor_index);
            func_8019E180_745D30(actor_index, D_801A0F8C_748B3C, 0U);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 3].health = 1;
            gActors[actor_index + 5].health = 1;
        }
        break;

    case 0x140:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].flags = 0;
        func_80081720(actor_index, D_801A0F8C_748B3C, -1U);
        break;
    }

    func_8019B9EC_74359C(actor_index);
    gActors[actor_index + 3].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN);
    gActors[actor_index + 5].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN);
}


void func_801A00F8_747CA8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = (Rand() << 11) - FIXED_UNIT(4);
        gActors[actor_index].velocityY.raw = (Rand() << 8) - FIXED_UNIT(10);
        gActors[actor_index].graphicList = D_801A1AD4_749684;
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].colorA = 0xC8;
        gActors[actor_index].scaleX = 0.6f;
        gActors[actor_index].scaleY = 0.6f;
        Actor_SetHitboxB(actor_index, 4);
        gActors[actor_index].var_150 = 0xA;

        if (gActors[actor_index].velocityX.raw < 0) {
            gActors[actor_index].unk_114 = 10.0f;
        }
        else {
            gActors[actor_index].unk_114 = -10.0f;
        }

    case 1:
        gActors[actor_index].colorA -= 2;

        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityY.raw = 0;
        }

        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].flags = 0;
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(0.5), FIXED_UNIT(1.0 / 128));
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 0xA);
        gActors[actor_index].rotateZ += gActors[actor_index].unk_114;
        gActors[actor_index].scaleX += 0.04;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;

        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

void func_801A02E8_747E98(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        D_801A1AF8_7496A8,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole
    );

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorR = 0x8B;
        gActors[new_actor_index].colorG = 0x99;
        gActors[new_actor_index].colorB = 0x9A;
        gActors[new_actor_index].velocityX.raw = 0;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3);
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = 0;
        gActors[new_actor_index].var_110 = 0.01f;
        gActors[new_actor_index].unk_114 = 0.01f;
        gActors[new_actor_index].unk_118 = 0.002f;
        gActors[new_actor_index].unk_11C = 0.002f;
    }
}

s32 func_801A03EC_747F9C(u16 actor_index) {
    u32 temp_v0 = gActors[actor_index].flags_098;
    if (temp_v0 & 0x200) {
        gActors[actor_index].state = 5;
        gActors[actor_index].health = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(1);
        Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
        return 1;
    }

    if (temp_v0 & 2) {
        if (gActors[actor_index].hitByType == 0x13) {
            gActors[actor_index].flags = 0;
            func_801A02E8_747E98(actor_index);
            return 2;
        }

        gActors[actor_index].state = 5;
        gActors[actor_index].health = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(1);
        Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
        return 1;
    }

    if (temp_v0 & 1) {
        gActors[actor_index].state = 5;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(1);
        return 3;
    }

    if (gActors[actor_index].velocityY.raw < 0 && (temp_v0 & 0x20)) {
        gActors[actor_index].state = 5;
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_150 = 0x3C;
        return 4;
    }

    return 0;
}

void func_801A0548_7480F8(u16 actor_index, u16 arg1) {
    f32 temp_f0;

    gActors[actor_index].var_154 += arg1 * gActors[actor_index].var_15C;
    gActors[actor_index].var_154 &= COS_MASK;
    temp_f0 = gActors[actor_index].unk_178;
    gActors[actor_index].var_160 = gCosineLookup[gActors[actor_index].var_154 & COS_MASK] * temp_f0 + gActors[actor_index].unk_170;
    gActors[actor_index].unk_164 = gCosineLookup[(gActors[actor_index].var_154 - 0x100) & COS_MASK] * temp_f0 + gActors[actor_index].unk_174;
}

void func_801A0650_748200(u16 actor_index, s32 arg1, s32 arg2) {
    if (gActors[actor_index].var_160 < gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -arg1, arg2);
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, arg1, arg2);
    }

    if (gActors[actor_index].unk_164 < gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -arg1, arg2);
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, arg1, arg2);
    }
}

void func_801A0740_7482F0(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[actor_index].var_160 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = gActors[actor_index].unk_164 - gScreenPosCurrentY.whole;
}

void func_801A079C_74834C(u16 actor_index, s32 arg1) {
    u16 var_a2 = gScreenPosCurrentX.whole - (0 - gActors[0].posX.whole);
    u16 var_a3 = gScreenPosCurrentY.whole - (0 - gActors[0].posY.whole);
    u16 var_t1 = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
    u16 var_t2 = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);

    arg1 = func_8002AD7C(actor_index, Math_Atan2(var_a2 - var_t1, var_a3 - var_t2), gActors[actor_index].unk_168, arg1);
    gActors[actor_index].unk_168 = arg1 + (u16)(arg1 * 0);
    gActors[actor_index].velocityX.raw = gCosineLookup[gActors[actor_index].unk_168 & COS_MASK] * FIXED_UNIT(2);
    gActors[actor_index].velocityY.raw = gCosineLookup[(gActors[actor_index].unk_168 - 0x100) & COS_MASK] * FIXED_UNIT(2);
}

void func_801A08D4_748484(u16 actor_index) {
    s32 temp_a0 = Rand() & 0x1FF;
    f32 temp_f0 = Rand() * 0x300;

    gActors[actor_index].velocityX.raw = gCosineLookup[temp_a0 & COS_MASK] * temp_f0;
    gActors[actor_index].velocityY.raw = gCosineLookup[(temp_a0 - 0x100) & COS_MASK] * temp_f0;
}

void func_801A09BC_74856C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = 0;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
        gActors[actor_index].graphicIndex = 0x1828;
        gActors[actor_index].graphicList = D_801A1AEC_74969C;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].hitFlags = HITFLAG_1;
        gActors[actor_index].hitType = 4;
        gActors[actor_index].damage = 4;
        gActors[actor_index].health = 1;
        gActors[actor_index].grabType = GRABTYPE_1;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.5);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(1);
        Actor_SetHitboxA(actor_index, 4);
        Actor_SetHitboxB(actor_index, 3);
        gActors[actor_index].unk_170 = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
        gActors[actor_index].unk_174 = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);
        gActors[actor_index].unk_168 = (gActors[0].flags & ACTOR_FLAG_FLIPPED) ? 0x100 : 0x100;
        gActors[actor_index].var_160 = gActors[actor_index].unk_170;
        gActors[actor_index].unk_164 = gActors[actor_index].unk_174;
        func_801A08D4_748484(actor_index);
        gActors[actor_index].var_150 = 0x3C;

    case 1:
        if (!func_801A03EC_747F9C(actor_index)) {
            gActors[actor_index].velocityY.raw = func_8019C984_744534(gActors[actor_index].velocityY.raw, 0, gActors[actor_index].var_150);

            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].state = 4;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }
        }
        break;

    case 2:
    case 3:
    case 4:
        if (!func_801A03EC_747F9C(actor_index)) {
            func_801A079C_74834C(actor_index, 8);
        }
        break;

    case 5:
        func_801A03EC_747F9C(actor_index);
        break;

    case 6:
        if (gActiveFrames & 4) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }

        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

void func_801A0C00_7487B0(u16 actor_index) {
    Actor* temp_s0 = &gActors[actor_index];
    s32 temp_v0;

    switch (temp_s0->state) {
    case 0:
        temp_s0->state++;
        temp_s0->graphicFlags = 0;
        temp_s0->flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
        temp_s0->graphicIndex = 0x1828;
        temp_s0->graphicList = D_801A1AEC_74969C;
        temp_s0->graphicTimer = 1;
        temp_s0->hitFlags = HITFLAG_1;
        temp_s0->hitType = 4;
        temp_s0->damage = 4;
        temp_s0->health = 1;
        temp_s0->grabType = GRABTYPE_1;
        temp_s0->unk_0DF = 0;
        temp_s0->unk_0F8.raw = FIXED_UNIT(2.5);
        temp_s0->unk_0FC.raw = FIXED_UNIT(1);
        Actor_SetHitboxA(actor_index, 4);
        Actor_SetHitboxB(actor_index, 3);
        temp_v0 = gScreenPosCurrentX.whole + temp_s0->posX.whole;
        temp_s0->unk_170 = temp_v0;
        temp_s0->unk_174 = gScreenPosCurrentY.whole + temp_s0->posY.whole;

        if (temp_v0 < 0x200) {
            temp_s0->unk_168 = 0;
        }
        else {
            temp_s0->unk_168 = 0x200;
        }

        temp_s0->var_160 = temp_s0->unk_170;
        temp_s0->unk_164 = temp_s0->unk_174;
        temp_s0->var_150 = 0x1E;
        // fallthrough

    case 1:
        if (!func_801A03EC_747F9C(actor_index)) {
            func_801A0548_7480F8(actor_index, 0x10);
            temp_s0->posX.whole = temp_s0->var_160 - gScreenPosCurrentX.whole;
            temp_s0->posY.whole = temp_s0->unk_164 - gScreenPosCurrentY.whole;
            temp_s0->unk_178 = func_8019C984_744534(temp_s0->unk_178, 0x30, temp_s0->var_150);

            if (temp_s0->var_150-- <= 0) {
                temp_s0->state++;
                temp_s0->var_150 = 0x3C;
            }
        }
        break;

    case 2:
        if (!func_801A03EC_747F9C(actor_index)) {
            func_801A0548_7480F8(actor_index, 8);
            func_801A0740_7482F0(actor_index);

            if (temp_s0->var_150-- <= 0) {
                temp_s0->state++;
            }
        }
        break;

    case 3:
        if (!func_801A03EC_747F9C(actor_index)) {
            func_801A0548_7480F8(actor_index, 8);
            func_801A0740_7482F0(actor_index);

            if (temp_s0->var_154 >= 0x2F8 && temp_s0->var_154 < 0x308) {
                temp_s0->state++;
            }
        }
        break;

    case 4:
        if (!func_801A03EC_747F9C(actor_index)) {
            func_801A079C_74834C(actor_index, 8);
        }
        break;

    case 5:
        func_801A03EC_747F9C(actor_index);
        break;

    case 6:
        if (gActiveFrames & 4) {
            temp_s0->flags &= ~ACTOR_FLAG_DRAW;
        }
        else {
            temp_s0->flags |= ACTOR_FLAG_DRAW;
        }

        if (temp_s0->var_150-- <= 0) {
            temp_s0->flags = 0;
        }
        break;
    }
}
