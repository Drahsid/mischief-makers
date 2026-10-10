#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "80D90.h"
#include "asset_loader.h"

extern u16 D_800D98F4[];
extern s16 D_800E581C[];
extern s16 D_800E5830[];
extern s16 D_800E5888[];
extern s16 D_800E5984[];
extern s16 D_800E5998[];
extern s16 D_800E59B8[];

u16 D_801AC860_78B430;
s16 D_801AC862_78B432;
u16 D_801AC864_78B434;
u8 D_801AC866;
u8 D_801AC867_78B437;

u16 D_801AB1A0_789D70[] = {
//  graphic angleFlags posZ
    0x0806, 0x0400,    0x000C,
    0x0000, 0x0000,    0x0020,
    0x0804, 0x8770,    0x0010,
    0x0000, 0x0000,    0x0020,
    0x0812, 0x87B0,    0x0010,
    0x0000, 0x0000,    0x0020,
    0x0808, 0x8440,    0x0010,
    0x0000, 0x0000,    0x0020,
    0x0808, 0x8440,    0x0000,
    0x0000, 0x0000,    0x0020,
    0x080A, 0x8490,    0x0004,
    0x0000, 0x0000,    0x0020,
    0x080C, 0x8400,    0x000A,
    0x0000, 0x0000,    0x0020,
    0x0800, 0x8400,    0x0009,
    0x0000, 0x0000,    0x0020,
    0x0802, 0x8400,    0x0008,
    0x0000, 0x0000,    0x0020,
    0x080C, 0x8400,    0x0002,
    0x0000, 0x0000,    0x0020,
    0x0800, 0x8400,    0x0001,
    0x0000, 0x0000,    0x0020,
    0x0802, 0x8400,    0x0000,
    0x0000,
};

u16 D_801AB22C_789DFC[] = {
//  actor   parent  length  angle   pose
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000,
    0x0002, 0x0001, 0x0009, 0x0200, 0x0000,
    0x0003, 0x0002, 0x000A, 0x0200, 0x0000,
    0x0004, 0x0003, 0x000C, 0x0200, 0x0000,
    0x0005, 0x0004, 0x0002, 0x0200, 0x0000,
    0x0006, 0x0001, 0xFFF8, 0x0200, 0x0000,
    0x0007, 0x0006, 0xFFF9, 0x0200, 0x0000,
    0x0008, 0x0001, 0x0007, 0x0200, 0x0000,
    0x0009, 0x0008, 0xFFF2, 0x0200, 0x0000,
    0x000A, 0x0001, 0xFFF2, 0x0200, 0x0000,
    0x000B, 0x000A, 0xFFF6, 0x0200, 0x0000,
    0x000C, 0x0001, 0x0009, 0x0200, 0x0000,
    0x000D, 0x000C, 0xFFFB, 0x0068, 0x0000,
    0x000E, 0x000D, 0xFFF9, 0x0200, 0x0000,
    0x000F, 0x000E, 0xFFF6, 0x0200, 0x0000,
    0x0010, 0x000F, 0xFFF7, 0x0200, 0x0000,
    0x0011, 0x0010, 0x0005, 0x0000, 0x0000,
    0x0012, 0x0001, 0x0008, 0x0200, 0x0000,
    0x0013, 0x0012, 0xFFFB, 0x0000, 0x0000,
    0x0014, 0x0013, 0xFFF9, 0x0200, 0x0000,
    0x0015, 0x0014, 0xFFF6, 0x0200, 0x0000,
    0x0016, 0x0015, 0xFFF7, 0x0200, 0x0000,
    0x0017, 0x0016, 0x0005, 0x0000, 0x0000,
    0x7FFF,
};

u16 D_801AB314_789EE4[] = {
//  rootX   rootY
    0x0000, 0x0000,
//  angle   offset
    0x0000, 0x0000,
    0x0060, 0x0000,
    0x0080, 0x0000,
    0x0000, 0x0000,
    0x0378, 0xFFFE,
    0x0008, 0x0000,
    0x0320, 0x0000,
    0x0318, 0xFFFA,
    0x0008, 0x0006,
    0x0000, 0x0000,
    0x0048, 0x0000,
    0x0288, 0x0000,
    0x01F8, 0x0000,
    0x03B0, 0x0000,
    0x0100, 0x0000,
    0x0000, 0x0000,
    0x02D8, 0x0000,
    0x0328, 0x0000,
    0x0150, 0x0000,
    0x03B0, 0x0000,
    0x0130, 0x0000,
    0x0000, 0x0000,
    0x02A8, 0x0000,
};

u16 D_801AB374_789F44[] = {
//  rootX   rootY
    0x0000, 0x0005,
//  angle   offset
    0x0000, 0x0000,
    0x0060, 0x0000,
    0x0030, 0x0000,
    0x0000, 0x0000,
    0x03E0, 0x0000,
    0x0008, 0x0000,
    0x03C0, 0x0000,
    0x0318, 0xFFFA,
    0x0080, 0x0006,
    0x0000, 0x0000,
    0x02F0, 0x0000,
    0x0288, 0x0000,
    0x0240, 0x0000,
    0x03B0, 0x0000,
    0x0098, 0x0000,
    0x0000, 0x0000,
    0x02D8, 0x0000,
    0x0328, 0x0000,
    0x01A8, 0x0000,
    0x03B0, 0x0000,
    0x00A8, 0x0003,
    0x0000, 0x0000,
    0x02C0, 0x0001,
};

u16 D_801AB3D4_789FA4[] = {
//  rootX   rootY
    0x0001, 0x0005,
//  angle   offset
    0x0000, 0x0000,
    0x0060, 0x0000,
    0x0060, 0x0000,
    0x0018, 0x0000,
    0x0380, 0xFFFE,
    0x03E0, 0x0000,
    0x0370, 0x0000,
    0x0318, 0xFFFA,
    0x0020, 0x0004,
    0x0000, 0x0000,
    0x0348, 0x0000,
    0x0288, 0x0000,
    0x0268, 0x0000,
    0x03B0, 0x0000,
    0x0030, 0x0000,
    0x0000, 0x0000,
    0x0338, 0x0000,
    0x0350, 0x0000,
    0x01F8, 0x0002,
    0x03D0, 0x0000,
    0x0000, 0x0003,
    0x0000, 0x0000,
    0x02E0, 0x0001,
};

u16 D_801AB434_78A004[] = {
//  rootX   rootY
    0x0002, 0x0005,
//  angle   offset
    0x0000, 0x0000,
    0x0050, 0x0000,
    0x0030, 0x0000,
    0x0018, 0x0000,
    0x03E0, 0x0000,
    0x0008, 0x0000,
    0x0008, 0x0000,
    0x0318, 0xFFFA,
    0x00C0, 0x0006,
    0x0000, 0x0000,
    0x02F0, 0x0000,
    0x0240, 0xFFFD,
    0x0240, 0x0000,
    0x03B0, 0xFFFF,
    0x01A0, 0x0000,
    0x03D8, 0x0000,
    0x0188, 0x0000,
    0x0328, 0x0000,
    0x0198, 0x0000,
    0x03B0, 0x0000,
    0x00A8, 0x0003,
    0x0000, 0x0000,
    0x02E0, 0x0001,
};

u16 D_801AB494_78A064[] = {
//  rootX   rootY
    0x0001, 0x0009,
//  angle   offset
    0x0000, 0x0000,
    0x0078, 0x0000,
    0x0050, 0x0000,
    0x0010, 0x0000,
    0x0340, 0xFFFD,
    0x0008, 0x0000,
    0x03C0, 0x0000,
    0x0318, 0xFFFA,
    0x0080, 0x0006,
    0x0000, 0x0000,
    0x0340, 0x0000,
    0x02F0, 0xFFFE,
    0x0270, 0x0000,
    0x03B0, 0x0000,
    0x0110, 0x0000,
    0x03C0, 0x0000,
    0x01A0, 0x0000,
    0x02C8, 0x0000,
    0x0238, 0xFFFE,
    0x03A8, 0x0000,
    0x0040, 0x0003,
    0x0000, 0x0000,
    0x0318, 0x0001,
};

u16 D_801AB4F4_78A0C4[] = {
//  rootX   rootY
    0x0001, 0x0006,
//  angle   offset
    0x0000, 0x0000,
    0x0060, 0x0000,
    0x0060, 0x0000,
    0x0000, 0x0000,
    0x03B0, 0xFFFE,
    0x03E0, 0x0000,
    0x0370, 0x0000,
    0x0318, 0xFFFA,
    0x0020, 0x0004,
    0x0000, 0x0000,
    0x0348, 0x0000,
    0x0328, 0xFFFF,
    0x0240, 0x0000,
    0x03C8, 0x0000,
    0x03F0, 0x0000,
    0x0000, 0x0000,
    0x02F0, 0x0000,
    0x02C0, 0x0000,
    0x0230, 0x0001,
    0x03B0, 0xFFFF,
    0x0038, 0x0003,
    0x0000, 0x0000,
    0x0328, 0x0001,
};

u16 D_801AB554_78A124[] = {
//  rootX   rootY
    0x0001, 0x0002,
//  angle   offset
    0x0000, 0x0000,
    0x0050, 0x0000,
    0x0030, 0x0000,
    0x0018, 0x0000,
    0x03E0, 0x0000,
    0x0008, 0x0000,
    0x0008, 0x0000,
    0x0318, 0xFFFA,
    0x00C0, 0x0006,
    0x0000, 0x0000,
    0x02F0, 0x0000,
    0x02F0, 0xFFFF,
    0x01B8, 0x0000,
    0x0390, 0xFFFF,
    0x00F0, 0x0000,
    0x03E8, 0x0000,
    0x02F0, 0x0000,
    0x02E8, 0x0000,
    0x0140, 0x0000,
    0x03B0, 0xFFFF,
    0x0200, 0x0003,
    0x0000, 0x0000,
    0x0190, 0x0001,
};

u16 D_801AB5B4_78A184[] = {
//  rootX   rootY
    0x0000, 0x0005,
//  angle   offset
    0x0000, 0x0000,
    0x0078, 0x0000,
    0x0050, 0x0000,
    0x0010, 0x0000,
    0x0340, 0xFFFD,
    0x0008, 0x0000,
    0x03C0, 0x0000,
    0x0318, 0xFFFA,
    0x0080, 0x0006,
    0x0000, 0x0000,
    0x0340, 0x0000,
    0x0290, 0x0000,
    0x0288, 0x0000,
    0x03A0, 0x0001,
    0x0038, 0x0000,
    0x03F8, 0x0000,
    0x0310, 0x0000,
    0x0328, 0xFFFD,
    0x0238, 0xFFFE,
    0x03D0, 0x0001,
    0x0108, 0x0003,
    0x03D8, 0x0001,
    0x0160, 0x0001,
};

u16 D_801AB614_78A1E4[] = {
//  rootX   rootY
    0x0003, 0x0005,
//  angle   offset
    0x03C8, 0x0000,
    0x0068, 0x0000,
    0x03A0, 0x0000,
    0x0030, 0x0000,
    0x0038, 0x0000,
    0x03D0, 0xFFFD,
    0x0390, 0x0000,
    0x0308, 0xFFF1,
    0x0050, 0x0006,
    0x03D0, 0x0003,
    0x03E8, 0x0000,
    0x0278, 0x0002,
    0x0190, 0x0000,
    0x03B0, 0xFFFF,
    0x0200, 0x0000,
    0x03D8, 0x0000,
    0x0188, 0x0000,
    0x0328, 0x0003,
    0x0178, 0x0000,
    0x03B0, 0xFFFF,
    0x0080, 0x0003,
    0x0000, 0x0000,
    0x0300, 0x0001,
};

u16 D_801AB674_78A244[] = {
//  rootX   rootY
    0x0008, 0x000C,
//  angle   offset
    0x03F8, 0x0000,
    0x0070, 0x0000,
    0x03F8, 0x0000,
    0x0030, 0x0000,
    0x0028, 0x0004,
    0x03D0, 0xFFFD,
    0x03C8, 0x0000,
    0x0308, 0xFFF5,
    0x0068, 0x0006,
    0x0020, 0x0003,
    0x03E0, 0x0000,
    0x02E0, 0x0000,
    0x0240, 0x0000,
    0x03B0, 0xFFFF,
    0x01C8, 0x0000,
    0x03D0, 0xFFFF,
    0x00A8, 0x0000,
    0x0270, 0x0003,
    0x01E0, 0x0000,
    0x03B0, 0xFFFF,
    0x0048, 0x0003,
    0x03C0, 0x0000,
    0x01D8, 0x0001,
};

u16 D_801AB6D4_78A2A4[] = {
//  rootX   rootY
    0xFFFE, 0xFFFF,
//  angle   offset
    0x03C8, 0x0000,
    0x00D8, 0x0000,
    0x03B0, 0x0000,
    0x03F0, 0x0000,
    0x0038, 0xFFFE,
    0x03D0, 0xFFFD,
    0x03B8, 0x0000,
    0x0308, 0xFFF1,
    0x0070, 0x0006,
    0x0088, 0x0003,
    0x02F0, 0xFFFB,
    0x0340, 0xFFFE,
    0x01B0, 0x0000,
    0x03B0, 0xFFFF,
    0x0130, 0x0000,
    0x03F8, 0xFFFF,
    0x0318, 0x0000,
    0x0210, 0x0005,
    0x0260, 0x0002,
    0x03B0, 0xFFFF,
    0x0090, 0x0003,
    0x03C0, 0x0000,
    0x0290, 0x0001,
};

u16 D_801AB734_78A304[] = {
//  rootX   rootY
    0x0002, 0x0005,
//  angle   offset
    0x03C8, 0x0000,
    0x0068, 0x0000,
    0x03A0, 0x0000,
    0x0030, 0x0000,
    0x0038, 0x0000,
    0x03D0, 0xFFFD,
    0x0390, 0x0000,
    0x0308, 0xFFF1,
    0x0050, 0x0006,
    0x03D0, 0x0003,
    0x03E8, 0x0000,
    0x02E0, 0x0002,
    0x0210, 0x0000,
    0x03B0, 0xFFFF,
    0x0010, 0x0000,
    0x0028, 0x0000,
    0x0328, 0x0000,
    0x0290, 0x0003,
    0x0178, 0x0000,
    0x03B0, 0xFFFF,
    0x01F8, 0x0003,
    0x0000, 0x0000,
    0x0168, 0x0001,
};

u16 D_801AB794_78A364[] = {
//  rootX   rootY
    0x0008, 0x000C,
//  angle   offset
    0x03F8, 0x0000,
    0x0070, 0x0000,
    0x03F8, 0x0000,
    0x0030, 0x0000,
    0x0028, 0x0004,
    0x03D0, 0xFFFD,
    0x03C8, 0x0000,
    0x0308, 0xFFF5,
    0x0068, 0x0006,
    0x0020, 0x0003,
    0x03E0, 0x0000,
    0x0258, 0x0000,
    0x0200, 0x0000,
    0x03B0, 0xFFFF,
    0x0048, 0x0000,
    0x03D0, 0xFFFF,
    0x01B8, 0x0000,
    0x02E8, 0x0003,
    0x0248, 0x0000,
    0x03B0, 0xFFFF,
    0x01D8, 0x0003,
    0x03C0, 0x0000,
    0x0078, 0x0001,
};

u16 D_801AB7F4_78A3C4[] = {
//  rootX   rootY
    0xFFFE, 0xFFFF,
//  angle   offset
    0x03C8, 0x0000,
    0x00D8, 0x0000,
    0x03B0, 0x0000,
    0x03F0, 0x0000,
    0x0038, 0xFFFE,
    0x03D0, 0xFFFD,
    0x03B8, 0x0000,
    0x0308, 0xFFF1,
    0x0070, 0x0006,
    0x0080, 0x0003,
    0x02F0, 0xFFFB,
    0x0230, 0x0005,
    0x01F8, 0x0000,
    0x03B0, 0xFFFF,
    0x00D8, 0x0000,
    0x03F8, 0xFFFF,
    0x0258, 0x0000,
    0x02B8, 0x0001,
    0x0240, 0x0002,
    0x03B0, 0xFFFF,
    0x0138, 0x0003,
    0x03C0, 0x0000,
    0x0330, 0x0001,
};

u16 D_801AB854_78A424[] = {
//  rootX   rootY
    0x0000, 0xFFF1,
//  angle   offset
    0x03A8, 0x0000,
    0x0098, 0x0000,
    0x03D0, 0xFFFE,
    0x0000, 0xFFFB,
    0x03F0, 0x0004,
    0x0008, 0x0000,
    0x0370, 0x0000,
    0x0318, 0xFFFA,
    0x0038, 0x0006,
    0x0058, 0x0002,
    0x0308, 0x0000,
    0x0288, 0xFFFD,
    0x01F0, 0x0000,
    0x03B0, 0x0000,
    0x0188, 0x0000,
    0x0000, 0x0000,
    0x0320, 0x0000,
    0x02A8, 0xFFF9,
    0x01D0, 0x0000,
    0x03B0, 0x0000,
    0x0180, 0x0003,
    0x0000, 0x0000,
    0x0310, 0x0001,
};

u16 D_801AB8B4_78A484[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x0050, 0x0000,
    0x0060, 0x0000,
    0x03E8, 0x0000,
    0x0038, 0x0000,
    0x0370, 0xFFFA,
    0x03E0, 0x0000,
    0x0008, 0x0000,
    0x0318, 0xFFFA,
    0x00E0, 0x0004,
    0x0078, 0x0000,
    0x03B8, 0x0000,
    0x0288, 0x0003,
    0x01F8, 0x0000,
    0x03B0, 0xFFFF,
    0x0030, 0x0000,
    0x03C8, 0x0000,
    0x01F8, 0x0000,
    0x02A8, 0x0005,
    0x01F8, 0x0002,
    0x03D0, 0x0000,
    0x03E8, 0x0003,
    0x03D8, 0x0000,
    0x01E8, 0x0001,
};

u16 D_801AB914_78A4E4[] = {
//  rootX   rootY
    0x0003, 0x0007,
//  angle   offset
    0x0050, 0x0000,
    0x0060, 0x0000,
    0x03C0, 0x0000,
    0x0058, 0x0000,
    0x0348, 0xFFFA,
    0x0348, 0xFFFF,
    0x0368, 0x0000,
    0x0290, 0xFFF3,
    0x03D0, 0x0004,
    0x0078, 0x0000,
    0x0328, 0x0000,
    0x0288, 0x0003,
    0x01D0, 0x0000,
    0x03B0, 0xFFFF,
    0x0030, 0x0000,
    0x03C8, 0x0000,
    0x01F8, 0x0000,
    0x02A8, 0x0005,
    0x01C8, 0x0002,
    0x03D0, 0x0000,
    0x03E8, 0x0003,
    0x03D8, 0x0000,
    0x01E8, 0x0001,
};

u16 D_801AB974_78A544[] = {
//  rootX   rootY
    0x0004, 0x0006,
//  angle   offset
    0x0028, 0x0000,
    0x0060, 0x0002,
    0x0050, 0x0000,
    0x0010, 0xFFFE,
    0x0370, 0x0002,
    0x0390, 0xFFFF,
    0x0348, 0x0000,
    0x02A8, 0xFFF5,
    0x03F8, 0x0006,
    0x0000, 0x0000,
    0x0300, 0x0000,
    0x02C8, 0xFFFF,
    0x0148, 0x0000,
    0x03B0, 0x0000,
    0x00D0, 0x0000,
    0x03C0, 0x0000,
    0x0298, 0x0000,
    0x0350, 0x0002,
    0x01B8, 0xFFFE,
    0x03A8, 0x0000,
    0x00B8, 0x0003,
    0x0000, 0x0000,
    0x0250, 0x0001,
};

u16 D_801AB9D4_78A5A4[] = {
//  rootX   rootY
    0x0003, 0xFFF9,
//  angle   offset
    0x03B0, 0x0000,
    0x0018, 0x0000,
    0x00C8, 0x0000,
    0x0008, 0x0000,
    0x0038, 0xFFFC,
    0x03D0, 0xFFFD,
    0x0098, 0x0000,
    0x0308, 0xFFF1,
    0x0170, 0x0006,
    0x03D0, 0x0003,
    0x0380, 0x0000,
    0x0278, 0x0002,
    0x01C8, 0x0000,
    0x03B0, 0xFFFF,
    0x01D0, 0x0000,
    0x03D8, 0x0000,
    0x0188, 0x0000,
    0x0328, 0xFFFE,
    0x01B0, 0x0001,
    0x03B0, 0xFFFC,
    0x0160, 0x0001,
    0x0000, 0x0000,
    0x0300, 0x0001,
};

u16 D_801ABA34_78A604[] = {
//  rootX   rootY
    0x0000, 0x0000,
//  angle   offset
    0x0000, 0x0000,
    0x03F0, 0x0000,
    0x0098, 0x0000,
    0x03F0, 0x0000,
    0x03D8, 0xFFFE,
    0x03A8, 0xFFF9,
    0x03B0, 0xFFFF,
    0x0338, 0xFFF1,
    0x0008, 0x0004,
    0x0000, 0xFFFE,
    0x0048, 0x0000,
    0x0288, 0x0002,
    0x0188, 0x0000,
    0x03E0, 0xFFFE,
    0x01B8, 0x0000,
    0x03D8, 0x0000,
    0x01C8, 0x0000,
    0x0328, 0x0000,
    0x00E8, 0x0000,
    0x03F8, 0x0000,
    0x01B8, 0x0000,
    0x03C0, 0x0000,
    0x01B0, 0x0000,
};

u16 D_801ABA94_78A664[] = {
//  rootX   rootY
    0x0000, 0x0000,
//  angle   offset
    0x03F0, 0x0000,
    0x0038, 0x0000,
    0x0080, 0x0000,
    0x03E8, 0x0000,
    0x0030, 0x0000,
    0x03E0, 0xFFF9,
    0x0050, 0x0005,
    0x0390, 0xFFF2,
    0x00A8, 0x0007,
    0x03B8, 0xFFFE,
    0x0370, 0x0000,
    0x0288, 0x0002,
    0x0180, 0x0000,
    0x03E0, 0xFFFE,
    0x01B8, 0x0000,
    0x03D8, 0x0000,
    0x0288, 0x0000,
    0x0320, 0x0000,
    0x00F0, 0x0000,
    0x03F8, 0x0000,
    0x01B8, 0x0000,
    0x03E0, 0x0000,
    0x0278, 0x0000,
};

// points to above
u16* D_801ABAF4_78A6C4[] = {
    D_801AB314_789EE4,
    D_801AB374_789F44,
    D_801AB3D4_789FA4,
    D_801AB434_78A004,
    D_801AB494_78A064,
    D_801AB4F4_78A0C4,
    D_801AB554_78A124,
    D_801AB5B4_78A184,
    D_801AB614_78A1E4,
    D_801AB674_78A244,
    D_801AB6D4_78A2A4,
    D_801AB734_78A304,
    D_801AB794_78A364,
    D_801AB7F4_78A3C4,
    D_801AB854_78A424,
    D_801AB8B4_78A484,
    D_801AB914_78A4E4,
    D_801AB974_78A544,
    D_801AB9D4_78A5A4,
    D_801ABA34_78A604,
    D_801ABA94_78A664,
    NULL,
};

u16 D_801ABB4C_78A71C[] = {
//  pose    time    hold
    0x0000, 0x0020, 0x001C,
    0x0000, 0x0010, 0x0004,
    0x0000, 0x000A, 0x0000,
    0x0001, 0x0020, 0x001C,
    0x0001, 0x0018, 0x0004,
    0x0001, 0x000A, 0x0000,
    0x7FFE,
    0x0000,

    0x0003, 0x0008, 0x0000,
    0x0004, 0x0008, 0x0000,
    0x0005, 0x0008, 0x0000,
    0x7FFD, 0x0001,
    0x0006, 0x0008, 0x0000,
    0x0007, 0x0008, 0x0000,
    0x0002, 0x0008, 0x0000,
    0x7FFD, 0x0001,
    0x7FFE,
    0x0000,
};

u16 D_801ABBA4_78A774[] = {
//  pose    time    hold
    0x0009, 0x0008, 0x0000,
    0x7FFD, 0x1000,
    0x000A, 0x0008, 0x0000,
    0x000B, 0x0008, 0x0000,
    0x7FFD, 0x0001,
    0x000C, 0x0008, 0x0000,
    0x000D, 0x0008, 0x0000,
    0x0008, 0x0008, 0x0000,
    0x7FFD, 0x0001,
    0x7FFE,
    0x0000,
};

u16 D_801ABBD8_78A7A8[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x000E, 0x0004, 0x0000,
    0x7FFD, 0x1008,
    0x7FFF,
    0x0000,
};

u16 D_801ABBEC_78A7BC[] = {
//  pose    time    hold
    0x000F, 0x0004, 0x0000,
    0x0010, 0x0004, 0x0000,
    0x7FFD, 0x1008,
    0x7FFE,
    0x0000,
};

u16 D_801ABC00_78A7D0[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0011, 0x000C, 0x0004,
    0x0011, 0x0020, 0x0000,
    0x7FFF,
};

u16 D_801ABC14_78A7E4[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0012, 0x0004, 0x0000,
    0x0008, 0x0004, 0x0000,
    0x0009, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801ABC30_78A800[] = {
//  pose    time    hold
    0x0014, 0x0004, 0x0000,
    0x0013, 0x0004, 0x0000,
    0x0014, 0x0004, 0x0000,
    0x0013, 0x0004, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801ABC4C_78A81C[] = {
    0x0818, 0x081A, 0x0812, 0x081C,
};

u16 D_801ABC54_78A824[] = {
    0x080E, 0x0810, 0x0812, 0x0814,
};

u16 D_801ABC5C_78A82C[] = {
//  graphic angleFlags posZ
    0x1800, 0x0400,    0x0006,
    0x0000, 0x0000,    0x0020,
    0x181C, 0x8710,    0x000C,
    0x0000, 0x0000,    0x0020,
    0x180C, 0x8600,    0x0005,
    0x0000, 0x0000,    0x0020,
    0x1802, 0x8600,    0x000C,
    0x0000, 0x0000,    0x0020,
    0x1804, 0x8600,    0x000D,
    0x0000, 0x0000,    0x0020,
    0x1802, 0x8600,    0x0001,
    0x0000, 0x0000,    0x0020,
    0x1804, 0x8600,    0x0002,
    0x0000, 0x0000,    0x0020,
    0x1808, 0x8600,    0x000A,
    0x0000, 0x0000,    0x0020,
    0x1806, 0x8400,    0x000B,
    0x0000, 0x0000,    0x0020,
    0x1808, 0x8600,    0x0003,
    0x0000, 0x0000,    0x0020,
    0x1806, 0x8400,    0x0004,
    0x0000, 0x0000,    0x0000,
    0x0000, 0x0000,    0x0000,
    0x0000,
};

u16 D_801ABCE8_78A8B8[] = {
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

u16 D_801ABDD0_78A9A0[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x0000, 0x0000,
    0x00B8, 0x0001,
    0x0050, 0x0002,
    0x0090, 0xFFEA,
    0x01A0, 0x0015,
    0x0248, 0x0001,
    0x0098, 0x0001,
    0x0000, 0x0000,
    0x03D0, 0x0000,
    0x0390, 0x0001,
    0x0390, 0x0000,
    0x0000, 0x0000,
    0x03D0, 0x0000,
    0x0200, 0xFFFC,
    0x0298, 0x0002,
    0x03C8, 0x0000,
    0x0088, 0x0000,
    0x01D0, 0xFFFE,
    0x02D8, 0x0000,
    0x03C8, 0x0000,
    0x0028, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801ABE30_78AA00[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x0000, 0x0000,
    0x00B0, 0x0001,
    0x0050, 0x0002,
    0x00A0, 0xFFE7,
    0x0150, 0x0014,
    0x0210, 0x0001,
    0x00C8, 0x0001,
    0x0000, 0x0000,
    0x0020, 0x0000,
    0x03B0, 0x0001,
    0x0388, 0x0000,
    0x0000, 0x0000,
    0x03B8, 0x0000,
    0x0200, 0xFFFE,
    0x02D8, 0x0001,
    0x03C8, 0x0000,
    0x00C8, 0x0000,
    0x01D0, 0x0001,
    0x0310, 0xFFFC,
    0x03E0, 0x0000,
    0x0058, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801ABE90_78AA60[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x0000, 0x0000,
    0x00B8, 0xFFFE,
    0x0040, 0x0002,
    0x00D8, 0xFFE3,
    0x0240, 0x000F,
    0x0280, 0x0003,
    0x0020, 0x0001,
    0x0028, 0x0000,
    0x0310, 0x0000,
    0x0390, 0x0005,
    0x03F0, 0x0000,
    0x0000, 0x0000,
    0x00A0, 0x0000,
    0x0090, 0xFFF2,
    0x0358, 0x0001,
    0x03D0, 0x0000,
    0x03B8, 0x0000,
    0x0140, 0xFFFA,
    0x0290, 0x0000,
    0x03A8, 0x0002,
    0x03E8, 0x0000,
    0x00B8, 0x0000,
    0x0088, 0x0000,
};

u16 D_801ABEF0_78AAC0[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x0000, 0x0000,
    0x0078, 0xFFFF,
    0x0080, 0x0002,
    0x00B8, 0xFFE1,
    0x0250, 0x000F,
    0x0280, 0x0003,
    0x03C0, 0x0001,
    0x0028, 0x0000,
    0x03A8, 0x0000,
    0x0390, 0x0002,
    0x03F0, 0x0000,
    0x0000, 0x0000,
    0x0070, 0x0000,
    0x0090, 0xFFF1,
    0x0380, 0x0003,
    0x03D0, 0x0000,
    0x03F0, 0x0000,
    0x0160, 0xFFFB,
    0x0290, 0x0000,
    0x03A8, 0x0002,
    0x0080, 0x0000,
    0x00B8, 0x0000,
    0x0088, 0x0000,
};

u16 D_801ABF50_78AB20[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x03C8, 0x0000,
    0x0100, 0x0003,
    0x03D8, 0xFFFE,
    0x00F8, 0xFFEA,
    0x0250, 0x0015,
    0x01A8, 0x0004,
    0x00F0, 0x0001,
    0x0000, 0x0000,
    0x0378, 0x0000,
    0x0028, 0x0003,
    0x0348, 0x0000,
    0x0000, 0xFFFD,
    0x0078, 0x0000,
    0x02B8, 0x0007,
    0x0130, 0x0001,
    0x03C8, 0x0000,
    0x03C0, 0x0000,
    0x0170, 0xFFF8,
    0x0280, 0xFFFB,
    0x03C8, 0x0000,
    0x03C8, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801ABFB0_78AB80[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x03C0, 0x0000,
    0x00F8, 0x0003,
    0x03E8, 0xFFFC,
    0x0140, 0xFFEA,
    0x0218, 0x0015,
    0x01A8, 0x0004,
    0x0140, 0x0004,
    0x0000, 0x0000,
    0x03C0, 0x0000,
    0x0028, 0x0003,
    0x0318, 0x0005,
    0x0000, 0xFFFD,
    0x0030, 0x0000,
    0x02B0, 0x0005,
    0x0148, 0x0002,
    0x03C8, 0x0000,
    0x0010, 0x0000,
    0x00C0, 0xFFF9,
    0x0340, 0x0000,
    0x03C8, 0x0000,
    0x03C8, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC010_78ABE0[] = {
//  rootX   rootY
    0x0006, 0x000B,
//  angle   offset
    0x0000, 0x0000,
    0x03A8, 0xFFFB,
    0x0178, 0x0007,
    0x0050, 0xFFEA,
    0x0140, 0x0015,
    0x0248, 0x0008,
    0x0038, 0xFFFD,
    0x0000, 0x0000,
    0x0370, 0x0000,
    0x03B0, 0x0005,
    0x0000, 0xFFFB,
    0x0000, 0x0000,
    0x0048, 0x0000,
    0x02D8, 0xFFF8,
    0x0198, 0x0002,
    0x03C8, 0x0000,
    0x03D0, 0x0000,
    0x0210, 0xFFFA,
    0x0280, 0x0000,
    0x03C8, 0x0000,
    0x03B0, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC070_78AC40[] = {
//  rootX   rootY
    0x0006, 0x0013,
//  angle   offset
    0x0000, 0x0000,
    0x03D0, 0xFFFD,
    0x0128, 0x0007,
    0x0050, 0xFFEA,
    0x0188, 0x0015,
    0x0248, 0x0006,
    0x00A8, 0x0004,
    0x0000, 0x0000,
    0x03B8, 0x0000,
    0x03B0, 0x0005,
    0x0390, 0x0005,
    0x0000, 0x0000,
    0x0028, 0x0000,
    0x02A0, 0xFFF6,
    0x0198, 0x0002,
    0x03C8, 0x0000,
    0x0088, 0x0000,
    0x01C8, 0xFFFC,
    0x0270, 0x0000,
    0x03C8, 0x0000,
    0x0028, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC0D0_78ACA0[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x03D8, 0x0000,
    0x00E0, 0x0001,
    0x0030, 0x0001,
    0x0058, 0xFFEA,
    0x01F0, 0x0015,
    0x0248, 0x0001,
    0x0070, 0x0001,
    0x0000, 0x0000,
    0x03A0, 0x0000,
    0x0038, 0x0002,
    0x0340, 0x0001,
    0x0000, 0x0000,
    0x0080, 0x0000,
    0x0200, 0xFFFC,
    0x0298, 0x0002,
    0x03C8, 0x0000,
    0x03E0, 0x0000,
    0x01B0, 0xFFFE,
    0x02D8, 0x0000,
    0x03C8, 0x0000,
    0x03F8, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC130_78AD00[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x03D8, 0x0000,
    0x0090, 0x0002,
    0x0088, 0x0002,
    0x0088, 0xFFEA,
    0x01A8, 0x0015,
    0x02C8, 0x0004,
    0x03C0, 0x0000,
    0x0000, 0x0000,
    0x0038, 0x0000,
    0x03A0, 0x0004,
    0x0000, 0xFFFD,
    0x0000, 0x0000,
    0x03E8, 0x0000,
    0x0200, 0xFFFC,
    0x0278, 0x0002,
    0x03C8, 0x0000,
    0x00C8, 0x0000,
    0x0198, 0xFFFE,
    0x02D0, 0x0000,
    0x03C8, 0x0000,
    0x00C0, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC190_78AD60[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x03D0, 0x0000,
    0x00F0, 0x0002,
    0x0004, 0x0000,
    0x00B4, 0xFFEA,
    0x0200, 0x0015,
    0x01F8, 0x0002,
    0x00B0, 0x0001,
    0x0000, 0x0000,
    0x038C, 0x0000,
    0x0030, 0x0002,
    0x0344, 0x0000,
    0x0000, 0xFFFF,
    0x007C, 0x0000,
    0x025C, 0xFFFD,
    0x01E4, 0x0001,
    0x03C8, 0x0000,
    0x03D0, 0x0000,
    0x0190, 0xFFFD,
    0x02AC, 0xFFFE,
    0x03C8, 0x0000,
    0x03E0, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC1F0_78ADC0[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x03CC, 0x0000,
    0x00FC, 0x0002,
    0x03F8, 0x0000,
    0x00F0, 0xFFEA,
    0x01F8, 0x0015,
    0x0238, 0x0004,
    0x00A4, 0x0000,
    0x0000, 0x0000,
    0x03FC, 0x0000,
    0x03E4, 0x0003,
    0x038C, 0xFFFF,
    0x0000, 0xFFFF,
    0x000C, 0x0000,
    0x0258, 0x0000,
    0x01E0, 0x0002,
    0x03C8, 0x0000,
    0x006C, 0x0000,
    0x0174, 0xFFFC,
    0x02C0, 0x0000,
    0x03C8, 0x0000,
    0x0044, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC250_78AE20[] = {
//  rootX   rootY
    0x0003, 0x000B,
//  angle   offset
    0x03EC, 0x0000,
    0x03BC, 0xFFFD,
    0x019C, 0x0003,
    0x03E8, 0xFFEA,
    0x0200, 0x0015,
    0x0248, 0x0004,
    0x0054, 0xFFFF,
    0x0000, 0x0000,
    0x0388, 0x0000,
    0x03F4, 0x0003,
    0x03A0, 0xFFFE,
    0x0000, 0x0000,
    0x0064, 0x0000,
    0x0200, 0xFFFC,
    0x0298, 0x0002,
    0x03C8, 0x0000,
    0x03D8, 0x0000,
    0x0180, 0xFFFC,
    0x02AC, 0x0000,
    0x03C8, 0x0000,
    0x03D4, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC2B0_78AE80[] = {
//  rootX   rootY
    0x0003, 0x0013,
//  angle   offset
    0x03EC, 0x0000,
    0x03D0, 0x0000,
    0x0188, 0x0003,
    0x03C8, 0xFFEB,
    0x0210, 0x0015,
    0x0288, 0x0005,
    0x0058, 0x0002,
    0x0000, 0x0000,
    0x03F8, 0x0000,
    0x03A8, 0x0004,
    0x03C8, 0x0001,
    0x0000, 0x0000,
    0x0008, 0x0000,
    0x0200, 0xFFFC,
    0x0280, 0x0002,
    0x03C8, 0x0000,
    0x00A8, 0x0000,
    0x0208, 0xFFFD,
    0x021C, 0x0000,
    0x03C8, 0x0000,
    0x0074, 0x0000,
    0x0180, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC310_78AEE0[] = {
//  rootX   rootY
    0x0001, 0x000B,
//  angle   offset
    0x03E4, 0x0000,
    0x00DC, 0x0004,
    0x03BC, 0xFFFA,
    0x00E0, 0xFFE6,
    0x02A4, 0x0010,
    0x0254, 0x0003,
    0x0088, 0x0001,
    0x0014, 0x0000,
    0x0344, 0x0000,
    0x0024, 0x0004,
    0x039C, 0x0000,
    0x0000, 0xFFFF,
    0x008C, 0x0000,
    0x02A4, 0x0005,
    0x0220, 0xFFFF,
    0x03CC, 0x0000,
    0x03BC, 0x0000,
    0x0124, 0xFFF9,
    0x0398, 0xFFFE,
    0x03B8, 0x0001,
    0x03D8, 0x0000,
    0x011C, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC370_78AF40[] = {
//  rootX   rootY
    0x0001, 0x0013,
//  angle   offset
    0x03DC, 0x0000,
    0x00C8, 0x0001,
    0x03D2, 0xFFFA,
    0x00CF, 0xFFE7,
    0x02B4, 0x0012,
    0x025E, 0x0003,
    0x0098, 0x0002,
    0x0011, 0x0000,
    0x03B5, 0x0000,
    0x0035, 0x0002,
    0x0376, 0x0002,
    0x0000, 0xFFFF,
    0x004C, 0x0000,
    0x029A, 0x0007,
    0x01C0, 0x0002,
    0x03CB, 0x0000,
    0x0002, 0x0000,
    0x00CA, 0xFFF9,
    0x0364, 0x0000,
    0x03BA, 0x0000,
    0x0018, 0x0000,
    0x0128, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC3D0_78AFA0[] = {
//  rootX   rootY
    0x0003, 0x000B,
//  angle   offset
    0x0000, 0x0000,
    0x0030, 0xFFFD,
    0x010C, 0x0004,
    0x008C, 0xFFE6,
    0x0234, 0x0014,
    0x0264, 0x0005,
    0x002C, 0xFFFF,
    0x0014, 0x0000,
    0x0340, 0x0000,
    0x03A0, 0x0005,
    0x03F8, 0xFFFE,
    0x0000, 0x0000,
    0x0074, 0x0000,
    0x0148, 0xFFF7,
    0x02D4, 0xFFFF,
    0x03CC, 0x0000,
    0x03C4, 0x0000,
    0x012C, 0xFFFA,
    0x0288, 0x0000,
    0x03B8, 0x0001,
    0x03CC, 0x0000,
    0x011C, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC430_78B000[] = {
//  rootX   rootY
    0x0003, 0x0013,
//  angle   offset
    0x0000, 0x0000,
    0x0024, 0xFFFE,
    0x0124, 0x0004,
    0x007C, 0xFFE6,
    0x0254, 0x0014,
    0x0264, 0x0004,
    0x0034, 0x0002,
    0x0014, 0x0000,
    0x03B0, 0x0000,
    0x03A0, 0x0003,
    0x03C0, 0x0002,
    0x0000, 0x0000,
    0x004C, 0x0000,
    0x0148, 0xFFF7,
    0x0304, 0x0002,
    0x03CC, 0x0000,
    0x003C, 0x0000,
    0x0120, 0xFFFB,
    0x029C, 0x0000,
    0x03B8, 0x0001,
    0x0054, 0x0000,
    0x011C, 0x0000,
    0x0088, 0x0000,
};

u16 D_801AC490_78B060[] = {
//  rootX   rootY
    0x0006, 0x0019,
//  angle   offset
    0x0010, 0x0000,
    0x00B0, 0x0003,
    0x0038, 0x0001,
    0x00A0, 0xFFE7,
    0x01B0, 0x0014,
    0x0210, 0xFFFF,
    0x0120, 0x0001,
    0x0000, 0x0000,
    0x03C0, 0x0000,
    0x03E0, 0x0001,
    0x0350, 0xFFFF,
    0x0000, 0x0000,
    0x03C0, 0x0000,
    0x0200, 0xFFFB,
    0x02B8, 0x0001,
    0x03C8, 0x0000,
    0x0120, 0x0000,
    0x01A0, 0xFFFD,
    0x0358, 0xFFFF,
    0x03C8, 0x0000,
    0x00E0, 0x0000,
    0x01F8, 0x0002,
    0x03F8, 0xFFFC,
};

u16 D_801AC4F0_78B0C0[] = {
//  rootX   rootY
    0x0006, 0x0018,
//  angle   offset
    0x0010, 0x0000,
    0x0080, 0x0000,
    0x0068, 0x0001,
    0x00A8, 0xFFE7,
    0x01C8, 0x0014,
    0x0230, 0xFFFF,
    0x00E0, 0x0002,
    0x0000, 0x0000,
    0x0008, 0x0000,
    0x03A8, 0x0002,
    0x0390, 0xFFFF,
    0x0000, 0x0000,
    0x03B0, 0x0000,
    0x0200, 0xFFFC,
    0x0258, 0xFFFE,
    0x03C8, 0x0000,
    0x0160, 0x0001,
    0x0188, 0xFFFD,
    0x0340, 0xFFFC,
    0x03C8, 0xFFFF,
    0x00F0, 0x0000,
    0x01F8, 0x0002,
    0x03F8, 0xFFFC,
};

// points to above
u16* D_801AC550_78B120[] = {
    D_801ABDD0_78A9A0,
    D_801ABE30_78AA00,
    D_801AC490_78B060,
    D_801AC4F0_78B0C0,
    D_801ABE90_78AA60,
    D_801ABEF0_78AAC0,
    D_801ABF50_78AB20,
    D_801ABFB0_78AB80,
    D_801AC010_78ABE0,
    D_801AC070_78AC40,
    D_801AC0D0_78ACA0,
    D_801AC130_78AD00,
    D_801AC190_78AD60,
    D_801AC1F0_78ADC0,
    D_801AC250_78AE20,
    D_801AC2B0_78AE80,
    D_801AC310_78AEE0,
    D_801AC370_78AF40,
    D_801AC3D0_78AFA0,
    D_801AC430_78B000,
    NULL,
};

u16 D_801AC5A4_78B174[] = {
//  pose    time    hold
    0x0000, 0x0020, 0x0000,
    0x0001, 0x0020, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC5B4_78B184[] = {
//  pose    time    hold
    0x0004, 0x000A, 0x0000,
    0x0005, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC5C4_78B194[] = {
//  pose    time    hold
    0x0006, 0x000A, 0x0000,
    0x0007, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC5D4_78B1A4[] = {
//  pose    time    hold
    0x0008, 0x000A, 0x0000,
    0x0009, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC5E4_78B1B4[] = {
//  pose    time    hold
    0x000A, 0x000A, 0x0000,
    0x000B, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC5F4_78B1C4[] = {
//  pose    time    hold
    0x000C, 0x000A, 0x0000,
    0x000D, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC604_78B1D4[] = {
//  pose    time    hold
    0x000E, 0x000A, 0x0000,
    0x000F, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC614_78B1E4[] = {
//  pose    time    hold
    0x0010, 0x000A, 0x0000,
    0x0011, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC624_78B1F4[] = {
//  pose    time    hold
    0x0012, 0x000A, 0x0000,
    0x0013, 0x000A, 0x0000,
    0x7FFE,
    0x0000,

    0x0002, 0x0020, 0x001C,
    0x0002, 0x0010, 0x0004,
    0x0002, 0x000A, 0x0000,
    0x0003, 0x0020, 0x001C,
    0x0003, 0x0018, 0x0004,
    0x0003, 0x000A, 0x0000,
    0x7FFE,
    0x0000,
};

u16 D_801AC65C_78B22C[] = {
    0x181E, 0x1820, 0x1822, 0x1824,
};

u16 D_801AC664_78B234[] = {
//  graphic time
    0x015E, 0x003C,
    0x0168, 0x0014,
    0x0000,
    0x0000,
};


void func_8003E52C(u16 arg0, s16 position_x, s16 position_y, f32 scale);
u16 func_8003EDF4(f32 scale, s16 position_x, s16 position_y, s16 position_z);
u16 SpawnParticle_RingWaveGreen(f32 scale, s16 position_x, s16 position_y, s16 position_z);


void func_801A6900_7854D0(u16 actor_index) {
    u16 index;
    s32 threshold;

    gActors[actor_index + 5].unk_138 = (FIXED_UNIT(4) - gActors[actor_index + 5].var_154) / FIXED_UNIT(1);
    threshold = FIXED_UNIT(-4);
    for (index = 0; index < 4; index++) {
        if (gActors[actor_index + 5].var_154 < threshold) {
            gActors[actor_index + 5].graphicIndex = D_801ABC4C_78A81C[index];
            return;
        }
        threshold += FIXED_UNIT(2);
    }

    gActors[actor_index + 5].graphicIndex = 0x81E;
}

void func_801A69B4_785584(u16 actor_index) {
    u16 index;
    s32 threshold;

    gActors[actor_index + 5].unk_138 = (FIXED_UNIT(4) - gActors[actor_index + 5].var_154) / FIXED_UNIT(1);
    threshold = FIXED_UNIT(-4);
    for (index = 0; index < 4; index++) {
        if (gActors[actor_index + 5].var_154 < threshold) {
            gActors[actor_index + 5].graphicIndex = D_801ABC54_78A824[index];
            return;
        }
        threshold += FIXED_UNIT(2);
    }

    gActors[actor_index + 5].graphicIndex = 0x816;
}

void func_801A6A68_785638(u16 actor_index) {
    if (gActors[actor_index].unk_16C & 0x1000) {
        gActors[actor_index + 1].unk_180 = 0;
    }
    else if (gActors[actor_index].unk_16C & 0x2000) {
        gActors[actor_index + 1].unk_180 = 1;
    }

    if (gActors[actor_index + 1].unk_180 != 0) {
        func_801A6900_7854D0(actor_index);
    }
    else {
        func_801A69B4_785584(actor_index);
    }

    gActors[actor_index + 9].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 9, 0x20);

    gActors[actor_index + 0x13].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x13, 0x20);

    gActors[actor_index + 0x15].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x15, 0x20);

    gActors[actor_index + 0x17].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x17, 0x20);
}

void func_801A6BEC_7857BC(u16 actor_index) {
    gActors[0].posX.raw = gActors[actor_index + 1].posX.raw;
    gPlayerPosX.raw = gActors[0].posX.raw + gScreenPosCurrentX.raw;
    gActors[0].posY.raw = gActors[actor_index + 1].posY.raw + FIXED_UNIT(26);
    gPlayerPosY.raw = gActors[0].posY.raw + gScreenPosCurrentY.raw;
    gActors[0].flags_098 |= ACTOR_FLAG3_UNK5;
    gActors[0].posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
}

void func_801A6C7C_78584C(u16 actor_index) {
    func_80026E60(0x14);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    Actor_SetHitboxB(actor_index, 4);
    func_8008105C(actor_index, (s16*)D_801AB22C_789DFC, (s16*)D_801AB1A0_789D70);
    gActors[actor_index].unk_178 = (s32)D_801ABAF4_78A6C4;
    func_80081478(actor_index, (s16*)D_801AB22C_789DFC, 0);
    func_80081790(actor_index, D_801ABB4C_78A71C);
    func_800819A8(actor_index, (s16*)D_801AB22C_789DFC);
    gActors[actor_index].colorA = 0xFE;
    gActors[actor_index].unk_168 = 0x1F40;
}

void func_801A6D5C_78592C(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        if (gActors[actor_index].iFrames > 0) {
            gActors[actor_index].iFrames--;
        }
        func_800819A8(actor_index, (s16*)D_801AB22C_789DFC);
    }
}

void func_801A6DEC_7859BC(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_138 = 1.0f;
    }
    else {
        gActors[actor_index].unk_138 = 0.0f;
    }

    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        func_801A6BEC_7857BC(actor_index);
    }

    if ((gActors[actor_index].state != 0) && (gActors[actor_index].flags & ACTOR_FLAG_DRAW)) {
        func_801A6A68_785638(actor_index);
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A6ED4_785AA4(u16 actor_index) {
    gActors[actor_index].unk_120 = 1.0f;
    gActors[actor_index].state = 0x1010;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].hitboxBY1 = -0x18;
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
    gActors[actor_index].velocityY.raw = 0;
}

void func_801A6F5C_785B2C(u16 actor_index) {
    gActors[actor_index].unk_120 = 1.0f;
    gActors[actor_index].state = 0x1020;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index + 2].unk_180 &= 0xDFFFFFFF;
}

void func_801A6FF8_785BC8(u16 actor_index) {
    gActors[actor_index].unk_120 = 1.0f;
    gActors[actor_index].state = 0x1030;
    func_80081790(actor_index, D_801ABBD8_78A7A8);
    gActors[actor_index + 2].unk_180 &= 0xDFFFFFFF;
}



void func_801A70A4_785C74(s16 position_x, s16 position_y, s16 position_z, f32 scale) {
    u16 actor_index;

    actor_index = SpawnParticle_Image_90C0_16(GINDEX_IMPACTEFFECTA, position_x, position_y, position_z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        Actor_SetColorRgb(actor_index, 0x40);
        gActors[actor_index].scaleX = scale * 0.66;
        gActors[actor_index].scaleY = scale * 0.5;
        gActors[actor_index].unk_114 = scale * 0.06;
        gActors[actor_index].unk_11C = scale * -0.009;
        gActors[actor_index].unk_184 = gActors[actor_index].posX.raw;
        gActors[actor_index].unk_188 = gActors[actor_index].posY.raw - FIXED_UNIT(8);
        gActors[actor_index].unk_140_f32 = 0.0f;
        gActors[actor_index].unk_144 = scale * 2.4;
        gActors[actor_index].palette_18C = PALETTE_8022D568;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].var_154 = -6;
        gActors[actor_index].unk_148 = 24.0f;
    }
}

void func_801A71FC_785DCC(u16 actor_index) {
    if (gActors[actor_index].unk_16C & 1) {
        func_801A70A4_785C74(gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole - 0x12, gActors[actor_index].posZ.whole + 1, 1.0f);
    }

    if (gActors[actor_index].unk_11C < 0.0f) {
        func_80081790(actor_index, D_801ABBA4_78A774);
    }
}

void func_801A72B8_785E88(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw >= FIXED_UNIT(-8) + 1) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);
    }
}

void func_801A7310_785EE0(u16 actor_index) {
    func_801A72B8_785E88(actor_index);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
        func_801A6ED4_785AA4(actor_index);
        func_80081790(actor_index, D_801ABC14_78A7E4);
        func_801A70A4_785C74(gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole - 0x12, gActors[actor_index].posZ.whole + 1, 2.0f);
        Sound_PlaySfxAtActor2(SFX_LAND_0025, actor_index);
    }
}

void func_801A73D8_785FA8(u16 actor_index) {
    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        if (gActors[actor_index].posX.whole > 0x80) {
            gActors[actor_index].posX.whole = 0x80;
        }
        else if (gActors[actor_index].posX.whole < -0x80) {
            gActors[actor_index].posX.whole = -0x80;
        }

        if ((s32)gActors[actor_index].flags & (s32)ACTOR_FLAG_UNK16) {
            if (gButtonHold & gButton_DLeft) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(3), FIXED_UNIT(0.5));
                gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.8f, 0.01f);
            }
            else if (gButtonHold & gButton_DRight) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(8), FIXED_UNIT(0.5));
                gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.6f, 0.01f);
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(6), FIXED_UNIT(0.5));
                gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.7f, 0.01f);
            }
            if (gButtonPress & gButton_A) {
                func_801A6FF8_785BC8(actor_index);
            }
        }
        else {
            gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 1.0f, 0.01f);
            if (gButtonHold & gButton_DLeft) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2.5), FIXED_UNIT(0.25));
            }
            else if (gButtonHold & gButton_DRight) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(8.5), FIXED_UNIT(0.25));
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(6), FIXED_UNIT(0.25));
            }
        }
        gPlayerData.unk_60 = FIXED_UNIT(6);
    }
}

void func_801A75F4_7861C4(u16 actor_index) {
    func_801A6D5C_78592C(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_801A6C7C_78584C(actor_index);
        gActors[actor_index].state = 0x1000;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -0x18;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(8);
        break;
    case 0x1000:
        func_801A6ED4_785AA4(actor_index);
        gActors[actor_index].flags |= ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8;
        gPlayerData.flags |= PLAYERDATA_UNK16;
        func_80081790(actor_index, D_801ABBA4_78A774);
    case 0x1010:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            func_801A6F5C_785B2C(actor_index);
            func_80081790(actor_index, D_801ABC00_78A7D0);
        }
        else {
            func_801A73D8_785FA8(actor_index);
            func_801A71FC_785DCC(actor_index);
        }
        break;
    case 0x1030:
        if (gActors[actor_index].unk_11C < 0.0f) {
            func_801A6F5C_785B2C(actor_index);
            func_80081790(actor_index, D_801ABBEC_78A7BC);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(8);
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            func_801A70A4_785C74(
                gActors[actor_index].posX.whole + 8,
                gActors[actor_index].posY.whole - 0x12,
                gActors[actor_index].posZ.whole + 1, 2.0f
            );
        }
        break;
    case 0x1020:
        func_801A73D8_785FA8(actor_index);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.5)) {
            if (gButtonHold & gButton_A) {
                if ((gActors[actor_index + 2].unk_180 & 0x20000000) == 0) {
                    Sound_PlaySfxAtActorPanning(SFX_00EE, actor_index);
                    gActors[actor_index + 2].unk_180 |= 0x20000000;
                }
                func_80081790(actor_index, D_801ABC30_78A800);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            }
            else {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_801ABC00_78A7D0);
                Sound_StopSfx(SFX_00EE);
            }
        }
        func_801A7310_785EE0(actor_index);
        break;
    case 0x1021:
        func_801A73D8_785FA8(actor_index);
        func_801A7310_785EE0(actor_index);
        break;
    }

    func_801A6DEC_7859BC(actor_index);
    if (((gPlayerActor.stateLower == 0x22) || (gPlayerActor.stateLower == 0x21) ||
         (gPlayerActor.stateLower == 0x20) || (gPlayerActor.stateLower == 0x26)) && (gPlayerData.flags & PLAYERDATA_UNK16)) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
    }
}

void func_801A7908_7864D8(u16 actor_index) {
    u16 child_index;
    u16 index;
    s32 threshold;

    child_index = actor_index + 3;
    gActors[child_index].unk_138 = -gActors[child_index].var_154 / FIXED_UNIT(1);
    threshold = 0;
    for (index = 0; index < 4; index++) {
        if (gActors[child_index].var_154 < threshold) {
            gActors[child_index].graphicIndex = D_801AC65C_78B22C[index];
            if ((gActors[child_index].graphicIndex == GINDEX_181E) || (gActors[child_index].graphicIndex == GINDEX_1820)) {
                gActors[child_index].posZ.raw = gActors[actor_index + 1].posZ.raw - 1;
            }
            return;
        }
        threshold += FIXED_UNIT(1);
    }

    gActors[child_index].graphicIndex = 0x1826;
}

void func_801A7A08_7865D8(u16 actor_index) {
    u16 child_index;

    func_801A7908_7864D8(actor_index);
    child_index = actor_index + 5;
    gActors[child_index].scaleX *= 0.8;
    gActors[child_index].scaleY = gActors[child_index].scaleX;
    if (gActors[child_index].flags & ACTOR_FLAG_FLIPPED) {
        if ((gActors[child_index].rotateZ > 312.0f) || (gActors[child_index].rotateZ < 80.0f)) {
            gActors[child_index].graphicIndex = 0x180C;
        }
        else if (gActors[child_index].rotateZ > 288.0f) {
            gActors[child_index].graphicIndex = 0x180E;
        }
        else if (gActors[child_index].rotateZ > 264.0f) {
            gActors[child_index].graphicIndex = 0x1810;
            gActors[child_index].posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
        else {
            gActors[child_index].graphicIndex = 0x1812;
            gActors[child_index].posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
        }
    }
    else if ((gActors[child_index].rotateZ < 48.0f) || (gActors[child_index].rotateZ > 256.0f)) {
        gActors[child_index].graphicIndex = 0x180C;
    }
    else if (gActors[child_index].rotateZ < 72.0f) {
        gActors[child_index].graphicIndex = 0x180E;
    }
    else if (gActors[child_index].rotateZ < 96.0f) {
        gActors[child_index].graphicIndex = 0x1810;
        gActors[child_index].posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
    }
    else {
        gActors[child_index].graphicIndex = 0x1812;
        gActors[child_index].posZ.raw = gActors[actor_index + 1].posZ.raw + 1;
    }

    gActors[actor_index + 0xB].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 0xD].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 0x13].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_index + 0x15].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xB, 0x50);
    Actor_SetColorRgb(actor_index + 0xD, 0x50);
    Actor_SetColorRgb(actor_index + 0x13, 0x50);
    Actor_SetColorRgb(actor_index + 0x15, 0x50);
}

void func_801A7D7C_78694C(u16 actor_index, u16 index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, 0);

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
        gActors[new_actor_index].graphicIndex = 0x180A;
        gActors[new_actor_index].scaleX = gActors[actor_index + 3].var_110;
        gActors[new_actor_index].colorA = 0x80;
        gActors[new_actor_index].var_154 = -0x41;
        gActors[new_actor_index].unk_144 = 11.0f;

        if (index != 0) {
            gActors[new_actor_index].var_160 = gActors[actor_index + 0xA].unk_180;
            gActors[new_actor_index].unk_130 = actor_index + 0x16;
            gActors[new_actor_index].unk_14C = gActors[actor_index + 0x16].actorType;
            gActors[new_actor_index].posZ.raw = 11;
        }
        else {
            gActors[new_actor_index].var_160 = -gActors[actor_index + 0xA].unk_180 & FIXED_UNIT(COS_MASK);
            gActors[new_actor_index].unk_130 = actor_index + 0x16;
            gActors[new_actor_index].unk_14C = gActors[actor_index + 0x17].actorType;
            gActors[new_actor_index].unk_13C_f32 = -1.0f;
        }
    }
}

void func_801A7EE8_786AB8(u16 actor_index) {
    if (gActors[actor_index + 2].var_110 != 0.0f) {
        gActors[actor_index + 0xA].unk_180 = Math_ApproachS32(gActors[actor_index + 0xA].unk_180, FIXED_UNIT(64), FIXED_UNIT(64));
        gActors[actor_index + 3].var_110 = Math_ApproachF32(gActors[actor_index + 3].var_110, 0.8f, 0.35f);
        if (gActors[actor_index + 0xA].unk_180 == FIXED_UNIT(64)) {
            gActors[actor_index + 2].var_110 = 0.0f;
        }
    }
    else {
        gActors[actor_index + 0xA].unk_180 = Math_ApproachS32(gActors[actor_index + 0xA].unk_180, FIXED_UNIT(256), FIXED_UNIT(64));
        gActors[actor_index + 3].var_110 = Math_ApproachF32(gActors[actor_index + 3].var_110, 0.1f, 0.35f);
        if (gActors[actor_index + 0xA].unk_180 == FIXED_UNIT(256)) {
            gActors[actor_index + 2].var_110 = 1.0f;
        }
    }

    func_801A7D7C_78694C(actor_index, 0);
    func_801A7D7C_78694C(actor_index, 1);
}

void func_801A7FF4_786BC4(u16 actor_index) {
    gActors[0].posX.raw = gActors[actor_index + 1].posX.raw;
    gPlayerPosX.raw = gActors[0].posX.raw + gScreenPosCurrentX.raw;
    gActors[0].posY.raw = gActors[actor_index + 1].posY.raw + FIXED_UNIT(22);
    gPlayerPosY.raw = gActors[0].posY.raw + gScreenPosCurrentY.raw;
    gActors[0].flags_098 |= ACTOR_FLAG3_UNK5;
    gActors[0].posZ.raw = gActors[actor_index + 1].posZ.raw - 2;
}

void func_801A8084_786C54(u16 actor_index, u16 angle) {
    s32 target_velocity = COS(angle) * FIXED_UNIT(4);
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, target_velocity, Math_AbsS32((s32)(COS(angle) * FIXED_UNIT(0.5))));
}

void func_801A8164_786D34(u16 actor_index, u16 angle) {
    s32 target_velocity = SIN(angle) * FIXED_UNIT(4);
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, target_velocity, Math_AbsS32((s32)(SIN(angle) * FIXED_UNIT(0.5))));
}

void func_801A8248_786E18(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.5));
}

void func_801A82A8_786E78(u16 actor_index) {
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.5));
}

void func_801A8308_786ED8(u16 actor_index) {
    Actor* actor;
    Actor* child_actor;
    s32 graphic_list;

    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        actor = &gActors[actor_index];
        child_actor = &gActors[actor_index + 3];
        if (actor->posX.whole > 0x80) {
            actor->posX.whole = 0x80;
        }
        else if (actor->posX.whole < -0x80) {
            actor->posX.whole = -0x80;
        }
        if (actor->posY.whole > 0x30) {
            actor->posY.whole = 0x30;
        }
        else if (actor->posY.whole < -0x50) {
            actor->posY.whole = -0x50;
        }

        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index + 3].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index + 3].posX.whole -= 2;
            gActors[actor_index + 3].rotateZ = 360.0f - gActors[actor_index + 3].rotateZ;
            if (!(gButtonHold & gButton_DUp) &&
                (child_actor->graphicIndex != GINDEX_181E) &&
                (child_actor->graphicIndex != GINDEX_1820)) {
                gActors[actor_index + 3].posZ.raw += 2;
            }
        }
        else {
            gActors[actor_index + 3].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        if (gButtonHold & gButton_DUp) {
            if (gButtonHold & gButton_DLeft) {
                func_801A8084_786C54(actor_index, 0x180);
                func_801A8164_786D34(actor_index, 0x180);
                graphic_list = (s32)D_801AC614_78B1E4;
            }
            else if (gButtonHold & gButton_DRight) {
                func_801A8084_786C54(actor_index, 0x80);
                func_801A8164_786D34(actor_index, 0x80);
                graphic_list = (s32)D_801AC5F4_78B1C4;
            }
            else {
                func_801A8248_786E18(actor_index);
                func_801A8164_786D34(actor_index, 0x100);
                graphic_list = (s32)D_801AC5C4_78B194;
            }
        }
        else if (gButtonHold & gButton_DDown) {
            if (gButtonHold & gButton_DLeft) {
                func_801A8084_786C54(actor_index, 0x280);
                func_801A8164_786D34(actor_index, 0x280);
                graphic_list = (s32)D_801AC624_78B1F4;
            }
            else if (gButtonHold & gButton_DRight) {
                func_801A8084_786C54(actor_index, 0x380);
                func_801A8164_786D34(actor_index, 0x380);
                graphic_list = (s32)D_801AC604_78B1D4;
            }
            else {
                func_801A8248_786E18(actor_index);
                func_801A8164_786D34(actor_index, 0x300);
                graphic_list = (s32)D_801AC5D4_78B1A4;
            }
        }
        else {
            if (gButtonHold & gButton_DRight) {
                func_801A8084_786C54(actor_index, 0);
                graphic_list = (s32)D_801AC5E4_78B1B4;
            }
            else if (gButtonHold & gButton_DLeft) {
                func_801A8084_786C54(actor_index, 0x200);
                graphic_list = (s32)D_801AC5B4_78B184;
            }
            else {
                func_801A8248_786E18(actor_index);
                graphic_list = (s32)D_801AC5A4_78B174;
            }
            func_801A82A8_786E78(actor_index);
        }

        if ((graphic_list != (s32)D_801AC5A4_78B174) &&
            (actor->unk_174 == (s32)D_801AC5A4_78B174)) {
            func_80081790(actor_index, (void*)graphic_list);
        }
        else {
            actor->unk_174 = graphic_list;
        }

        if ((gActors[0].stateLower == 0x22) ||
            (gActors[0].stateLower == 0x21) ||
            (gActors[0].stateLower == 0x20) ||
            (gActors[0].stateLower == 0x26)) {
            actor->velocityX.raw = 0;
            actor->velocityY.raw = 0;
        }
    }
}

void func_801A86FC_7872CC(u16 actor_index) {
    func_80027018(0x3B);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    Actor_SetHitboxB(actor_index, 4);
    func_8008105C(actor_index, (s16*)D_801ABCE8_78A8B8, (s16*)D_801ABC5C_78A82C);
    gActors[actor_index].unk_178 = (s32)D_801AC550_78B120;
    func_80081478(actor_index, (s16*)D_801ABCE8_78A8B8, 0);
    func_80081790(actor_index, D_801AC5A4_78B174);
    func_800819A8(actor_index, (s16*)D_801ABCE8_78A8B8);
    gActors[actor_index].colorA = 0xFE;
    gActors[actor_index].unk_168 = 0x1F40;
    Sound_PlaySfxAtActorPanning(SFX_011E, actor_index);
}

void func_801A87E8_7873B8(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);

        if (gActors[actor_index].iFrames > 0) {
            gActors[actor_index].iFrames--;
        }

        func_800819A8(actor_index, (s16*)D_801ABCE8_78A8B8);
    }
}

void func_801A8878_787448(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_138 = 1.0f;
    }
    else {
        gActors[actor_index].unk_138 = 0.0f;
    }

    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        func_801A7FF4_786BC4(actor_index);
    }

    if ((gActors[actor_index].state != 0) && (gActors[actor_index].flags & ACTOR_FLAG_DRAW)) {
        func_801A7A08_7865D8(actor_index);
        func_801A7EE8_786AB8(actor_index);
        if (((gActors[actor_index].unk_174 == (s32)D_801AC5E4_78B1B4) ||
             (gActors[actor_index].unk_174 == (s32)D_801AC5B4_78B184)) &&
            (gActors[actor_index + 3].graphicIndex != GINDEX_181E) &&
            (gActors[actor_index + 3].graphicIndex != GINDEX_1820)) {
            gActors[actor_index + 3].graphicIndex = 0x181A;
        }
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A89C0_787590(u16 actor_index) {
    func_801A87E8_7873B8(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        func_801A86FC_7872CC(actor_index);
        gActors[actor_index].state = 0x1000;
        func_80081790(actor_index, D_801AC5A4_78B174);
        break;
    case 0x1000:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW | ACTOR_FLAG_UNK8;
        gPlayerData.flags |= PLAYERDATA_UNK16;
    case 0x1001:
        func_801A8308_786ED8(actor_index);
        break;
    }

    func_801A8878_787448(actor_index);
}



u16 func_801A8AA8_787678(u16 actor_index, f32 angle) {
    u16 new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_GRAPHIC_52);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[new_actor_index].graphicIndex = GINDEX_1016;
        func_80031D58(actor_index, new_actor_index);
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + 0x10;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole;
        gActors[new_actor_index].scaleX = 0.5f;
        gActors[new_actor_index].scaleY = 1.2f;
        gActors[new_actor_index].rotateX = (s32)angle % 90;
        gActors[new_actor_index].rotateZ = 90.0f;
        gActors[new_actor_index].colorA = 0x80;
    }

    return new_actor_index;
}

void func_801A8BFC_7877CC(u16 actor_index) {
    func_801A8AA8_787678(actor_index, gActors[actor_index].var_110);
}

void func_801A8C4C_78781C(u16 actor_index, u16 new_actor_index) {
    gActors[new_actor_index].posX.whole = gActors[actor_index + 0x10].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[actor_index + 0x10].posY.whole;
    gActors[new_actor_index].posZ.raw = gActors[actor_index + 0x11].posZ.raw - 1;
}

void func_801A8CC4_787894(u16 actor_index) {
    if (gActors[0x51].health == 0) {
        gActors[actor_index].flags = 0;
        return;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && (gActors[actor_index].state != 3)) {
        gActors[actor_index].state = 3;
        gActors[actor_index].var_154 = 1;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        func_80029134(actor_index);
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8;
    }
    else {
        if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) == 0) &&
            ((gActors[actor_index].posX.whole > 0x90) ||
             (gActors[actor_index].posX.whole < -0x90) ||
             (gActors[actor_index].posY.whole < -0x80))) {
            gActors[actor_index].flags = 0;
            return;
        }
        if (((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) ||
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) ||
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
            gActors[actor_index].flags = 0;
            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
            func_8003F138(0.6f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            return;
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK15;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_UNK10;
        gActors[actor_index].graphicIndex = GINDEX_CLANBALL;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].unk_0CE = 0xA;
        gActors[actor_index].damage = 0x64;
        gActors[actor_index].hitFlags = HITFLAG_7 | HITFLAG_2;\
        gActors[actor_index].hitType = HITTYPE_8;
        gActors[actor_index].health = 1;
        Actor_SetHitboxA(actor_index, 3);
        Actor_SetHitboxB(actor_index, 8);
    case 1:
        if (gActors[actor_index].scaleX >= 0.69) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
            if (gActors[actor_index].var_158 == 0x48) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            }
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ENABLED;
        }
        else {
            func_801A8C4C_78781C(gActors[actor_index].var_150, actor_index);
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.7f, 0.05f);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        }
        break;
    case 2:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(7.5), FIXED_UNIT(0.0625));
        gActors[actor_index].posZ.whole = Math_ApproachS32(gActors[actor_index].posZ.whole, 0, 1);
        if (gActors[actor_index].posY.whole < gActors[actor_index].var_158) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), 0x2800);
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), 0x2800);
        }

        if ((gPlayerActor.posY.whole < gActors[actor_index].posY.whole) &&
            (Math_AbsS32(gActors[actor_index].posX.whole - gPlayerActor.posX.whole) < 9)) {
            u16 new_actor_index;

            gActors[actor_index].state = 4;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.5);
            Sound_PlaySfxAtActor2(SFX_009B, actor_index);
            gActors[actor_index].posZ.whole = 0;
            new_actor_index = func_8003EDF4(
                1.0f, gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + 0xC,
                gActors[actor_index].posZ.whole
            );

            if (new_actor_index != 0) {
                gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[new_actor_index].velocityY.raw = FIXED_UNIT(2);
                gActors[new_actor_index].var_15C = -0x1000;
            }
        }
        break;
    case 3:
        switch (func_800291AC(actor_index, 5, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED, 4, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED)) {
        case 0:
            break;
        case 3:
            gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            gActors[actor_index].damage = 0x100;
            gActors[actor_index].posZ.whole = 1;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            Actor_SetHitboxA(actor_index, 0xC);
            break;
        case 2:
            Sound_PlaySfxAtActor2(SFX_JUMP_00AD, actor_index);
            gActors[actor_index].velocityX.raw += FIXED_UNIT(6);
            gActors[actor_index].damage = 0x200;
            Actor_SetHitboxA(actor_index, 0xC);
            gActors[actor_index].posZ.whole = 1;
            break;
        }
        break;
    case 4:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
    case 5:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        break;
    }

    if (gActors[actor_index].state < 3) {
        gActors[actor_index].var_110 += 15.0f;
        func_801A8BFC_7877CC(actor_index);
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

u16 func_801A91C0_787D90(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x48, 0x4B);

    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_W5A_CMDR_BOMB);
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].var_150 = actor_index;
        if (Rand() & 1) {
            gActors[new_actor_index].var_158 = 0x48;
        }
        else {
            gActors[new_actor_index].var_158 = 4;
        }
        func_801A8C4C_78781C(actor_index, new_actor_index);
    }

    return new_actor_index;
}

s32 func_801A9278_787E48(u16 actor_index) {
    u16 index;

    for (index = 0x48; index < 0x4B; index++) {
        if (gActors[index].flags & ACTOR_FLAG_ACTIVE) {
            return 0;
        }
    }

    return 1;
}

u16 func_801A92D4_787EA4(void) {
    u16 actor_index;

    for (actor_index = 1; actor_index < 0x10; actor_index++) {
        if ((gActors[actor_index].actorType == ACTORTYPE_BEAMTHROW) && (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            return actor_index;
        }
    }

    return 0;
}

u16 func_801A9340_787F10(void) {
    u16 actor_index = func_801A92D4_787EA4();

    if ((actor_index != 0) && (gActors[actor_index].state == 0)) {
        gActors[actor_index].posX.whole = gActors[0].posX.whole - 0x10;
        gActors[actor_index].posY.whole = gActors[0].posY.whole;
    }

    return actor_index;
}

void func_801A93BC_787F8C(u16 actor_index) {
    s32 new_actor_index;

    gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gActors[actor_index].posX.whole = gPlayerActor.posX.whole -
            (gPlayerActor.posX.whole - gActors[0x51].posX.whole - 0x10) / 2;
        gActors[actor_index].scaleX = (f32)(gPlayerActor.posX.whole - gActors[actor_index].posX.whole) / 16;
        gTeranPlayerActor.posX.whole += 4;
        if (D_801AC867_78B437 == 0) {
            D_801AC867_78B437 = 1;
            new_actor_index = SpawnGemActor61(actor_index, 0x32, 0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].var_150 = 0xB4;
                gActors[new_actor_index].posX.whole = gPlayerActor.posX.whole - 0x10;
                gActors[new_actor_index].posY.whole = gPlayerActor.posY.whole;
                gActors[new_actor_index].velocityX.raw = FIXED_UNIT(10);
                gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3);
            }
        }
    }
    else {
        gActors[actor_index].posX.whole = gActors[actor_index].scaleX * 16.0f + (gActors[0x51].posX.whole + 0x10);
    }

    gActors[actor_index].posY.whole = gActors[0x51].posY.whole - 0xA;
    gActors[actor_index].posZ.whole = 2;
    gActors[actor_index].hitboxAY0 = 0x10;\
    gActors[actor_index].hitboxAY1 = -0x10;
    gActors[actor_index].hitboxAX1 = gActors[actor_index].posX.whole - gActors[0x51].posX.whole - 0x10;
    gActors[actor_index].hitboxAX0 = -gActors[actor_index].hitboxAX1;
    gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxAY0;
    gActors[actor_index].hitboxBX1 = gActors[actor_index].hitboxAX1;
    gActors[actor_index].hitboxBY1 = gActors[actor_index].hitboxAY1;
    gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxAX0;
}

void func_801A95C4_788194(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[0x51].posX.whole + 0x1C;
    gActors[actor_index].posY.whole = gActors[0x51].posY.whole - 0xC;
    gActors[actor_index].posZ.whole = gActors[0x51].posZ.whole + 2;
}



void func_801A9628_7881F8(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 7) {
        new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_GRADIENTA, 0, 0, 0);
        if (new_actor_index != 0) {
            Actor* particle = &gActors[new_actor_index];
            particle->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            particle->flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_FREEZE_POS;
            particle->scaleX = gActors[actor_index].unk_114 * 5.0;
            particle->scaleY = gActors[actor_index].unk_114 * 1.2;
            particle->colorA = 0x80;
            particle->colorG = 0x7F;
            particle->var_160 = TO_FIXED((Rand() * 4) & 0x3C0);
            particle->var_150 = -(Rand() & 0xF0) * 0x1000 + FIXED_UNIT(7.5);
            particle->unk_130 = actor_index;
            particle->unk_14C = gActors[actor_index].actorType;
            particle->unk_134 = 0.0f;
            particle->unk_138 = 0.0f;
            particle->var_154 = -9;
            particle->unk_13C_f32 = 1.0f;
            particle->var_110 = gActors[actor_index].unk_114 * -0.2;

            if (gActiveFrames & 2) {
                particle->unk_11C = -0.05f;
            }
            else {
                particle->unk_11C = -0.1f;
            }
            particle->unk_140_f32 = 8.0f;
        }
    }
}

void func_801A9814_7883E4(u16 actor_index) {
    u16 new_actor_index;

    if (gActors[0x51].health == 0) {
        gActors[actor_index].flags = 0;
        return;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 8;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].health = 0;
        gActors[actor_index].colorR = 0x7F;
        gActors[actor_index].colorG = 0x3F;
        gActors[actor_index].graphicList = (s16*)D_801AC664_78B234;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].colorA = 0;
        gActors[actor_index].palette_18C = PALETTE_8022D548;
        gActors[actor_index].scaleX = 5.0f;
        gActors[actor_index].unk_114 = 0.0f;
        Sound_PlaySfx(SFX_CHARGE_00A6);
    case 8:
        func_801A95C4_788194(actor_index);
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].graphicFlags ^= ACTOR_GFLAG_UNK4;
        if (gActors[actor_index].graphicIndex == GINDEX_BLASTB) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags &= ~(ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4);
            gActors[actor_index].scaleX = 0.5f;
            SpawnCrosshair(1, actor_index);
        }
        else {
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x80, 4);
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.5f, 0.05f);
            gActors[actor_index].rotateZ -= 45.0f;
            gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 2.0f, 0.04f);
        }

        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        func_801A9628_7881F8(actor_index);
        break;
    case 9:
        func_801A95C4_788194(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            gActors[actor_index].graphicIndex = GINDEX_CIRCLEEFFECT;
            gActors[actor_index].palette_18C = D_800D98F4;
            new_actor_index = SpawnParticle_RingWaveGreen(
                1.0f, gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole,
                gActors[actor_index].posZ.whole
            );

            if (new_actor_index != 0) {
                gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            }
        }
        else {
            gActors[actor_index].unk_114 += 0.2;
            gActors[actor_index].colorA += 4;
            gActors[actor_index].scaleX += 0.05;
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        }
        func_801A9628_7881F8(actor_index);
        break;
    case 0x10:
        gActors[actor_index].state++;
        gActors[actor_index].var_110 = 0.0f;
        gActors[actor_index].scaleX = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].unk_114 = 0.2f;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
        gActors[actor_index].colorA = 0xE0;
        gActors[actor_index].damage = 0xC8;
        gActors[actor_index].hitFlags = HITFLAG_7 | HITFLAG_2;\
        gActors[actor_index].hitType = HITTYPE_SHOCK_12;
        gActors[actor_index].unk_0DF = ACTOR0DF_7 | ACTOR0DF_5;
        gActors[actor_index].unk_118 = 0.0f;
        Sound_PlaySfxAtActor2(SFX_WOOSH_0099, 0x51);
        gActors[0x92].state = 3;
        gActors[0x92].colorA = 0x60;
        gActors[0x92].colorR = 0x10;
        gActors[0x92].colorB = 0x7F;
    case 0x11:
        gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 0.0f, 0.01f);
        if (gActors[actor_index].var_110 < 10.0f) {
            gActors[actor_index].scaleY += gActors[actor_index].unk_114;
        }
        else {
            gActors[actor_index].state++;
        }
        break;
    case 0x12:
        if (gActors[actor_index].var_110 < 55.0f) {
            if (gActors[actor_index].var_110 == 20.0f) {
                gActors[actor_index].graphicIndex = GINDEX_LASERA;
            }
            if (gActors[actor_index].var_110 > 20.0f) {
                gActors[actor_index].scaleY = 3.6f;
                gActors[actor_index].scaleY += (f32)(Rand() & 7) / 10.0f;
            }
        }
        else {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
        break;
    case 0x13:
        if ((Rand() & 3) == 0) {
            Actor_SetColorRgb(actor_index, 0x3F);
        }
        else {
            Actor_SetColorRgb(actor_index, 0);
        }

        gActors[actor_index].scaleY -= 0.25;
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 0xE);
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
            new_actor_index = func_801A9340_787F10();
            if (new_actor_index != 0) {
                Actor_SetHitboxA(actor_index, 8);
                Actor_SetHitboxB(actor_index, 8);
                gActors[actor_index].posX.whole = gActors[new_actor_index].posX.whole;
                gActors[actor_index].posY.whole = gActors[new_actor_index].posY.whole;
            }
            return;
        }
        break;
    case 0x14:
        gActors[actor_index].flags = 0;
        break;
    }

    if ((gActors[actor_index].state >= 0x11) && (gActors[actor_index].state < 0x14)) {
        gActors[actor_index].var_110 += 1.0f;
        gActors[actor_index].unk_118 += 0.02;
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 12.0f, gActors[actor_index].unk_118);
        if ((gActiveFrames & 7) == 0) {
            CameraShake(-2, 6);
        }

        func_801A93BC_787F8C(actor_index);
        func_801A9340_787F10();

        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && ((gActiveFrames & 0x1F) == 0)) {
            Sound_PlaySfx(SFX_BOOM_0043);
        }
    }

    if (gActiveFrames & 2) {
        gActors[actor_index].colorB = 0x1F;
        gActors[actor_index].colorG = 0x3F;
        gActors[actor_index].colorR = 0x7F;
    }
    else {
        gActors[actor_index].colorB = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorR = 0x3F;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A9ED8_788AA8(u16 actor_index) {
    ACTOR_INIT(0x4F, ACTORTYPE_OVL2_W5A_CMDR_BEAM);
    gActors[0x4F].flags = ACTOR_FLAG_ACTIVE;
}

void func_801A9F10_788AE0(u16 actor_index) {
    func_80027018(0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    func_8008105C(actor_index, D_800E4698, D_800E45D0);
    gActors[actor_index].unk_178 = (s32)D_800E574C;
    func_80081478(actor_index, D_800E4698, 0);
    func_80081790(actor_index, D_800E57D4);
    func_800819A8(actor_index, D_800E4698);
    gActors[actor_index].colorA = 0xFE;
    Actor_SetColorRgb(actor_index, 4);
    D_801AC864_78B434 = 0;
    D_801AC867_78B437 = 0;
    gActors[actor_index + 0xD].unk_180 = 0;
}

void func_801AA024_788BF4(u16 actor_index) {
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.5));
}

void func_801AA050_788C20(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0x18;
    gActors[actor_index].hitboxBY1 = -0x34;
    gActors[actor_index].hitboxBX0 = -0x10;
    gActors[actor_index].hitboxBX1 = 0x10;
    gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK10;
    gActors[actor_index + 1].unk_0CE = 0xD;
    gActors[actor_index + 1].grabType = GRABTYPE_1;
    gActors[actor_index + 1].unk_0DF = ACTOR0DF_6 | ACTOR0DF_0_2;
    gActors[actor_index + 1].hitboxBY0 = 0x14;
    gActors[actor_index + 1].hitboxBY1 = -0x1C;
    gActors[actor_index + 1].hitboxBX0 = -0x14;
    gActors[actor_index + 1].hitboxBX1 = 0x14;
}

void func_801AA104_788CD4(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].velocityY.raw = 0;
}

void func_801AA15C_788D2C(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
}

s32 func_801AA1B0_788D80(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x20;
        return 1;
    }
}

s32 func_801AA200_788DD0(u16 actor_index, s32 unused) {
    if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].state & 0x1000)) {
        gActors[actor_index].state = 0x1000;
        gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_128 = actor_index + 1;
        gActors[actor_index].unk_12C = actor_index + 1;
        gActors[actor_index].unk_130 = actor_index + 1;
        gActors[actor_index].velocityZ.raw = 0;
        gMarinaAnim.anim_u32 = 2;
        gPlayerData.buttonHold = 0;
        gPlayerData.buttonPress = 0;
        D_801AC860_78B430 = 0;
        D_801AC862_78B432 = -1;
        return 1;
    }

    return 0;
}

s32 func_801AA2EC_788EBC(u16 actor_index) {
    u16 child_index;

    child_index = actor_index + 1;
    if ((gActors[child_index].flags_098 & ACTOR_FLAG3_UNK1) && ((gActors[actor_index].state & 0x9000) == 0)) {
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
        switch (gActors[child_index].hitByType) {
        case HITTYPE_21:
        case HITTYPE_22:
        case HITTYPE_23:
            break;
        case HITTYPE_SHOCK_12:
            gActors[child_index].health -= gActors[child_index].pendingDamage * 32;
            if (gActors[child_index].health < 0) {
                gActors[child_index].health = 0;
            }
        default:
            gActors[actor_index].state = 0x2000;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(6.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            return 1;
        }
    }

    return 0;
}

s32 func_801AA3F8_788FC8(u16 actor_index, u16 unused) {
    if (func_801AA200_788DD0(actor_index, 0) || func_801AA2EC_788EBC(actor_index) || func_801AA1B0_788D80(actor_index)) {
        return 1;
    }

    func_801AA024_788BF4(actor_index);
    return 0;
}

s32 func_801AA46C_78903C(u16 actor_index, u16 other_actor_index) {
    if (func_801AA200_788DD0(actor_index, 0) || func_801AA2EC_788EBC(actor_index)) {
        return 1;
    }

    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.125));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) ||
        ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.8;
        gActors[actor_index].velocityY.raw /= 2;
    }

    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = 0;
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[actor_index].velocityY.raw < 0)) {
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.7;
        if ((gActors[actor_index].state == 0x21) || (gActors[actor_index].state == 0x2001)) {
            func_80081790(actor_index, D_800E581C);
            gActors[actor_index].state = 0x30;
            func_801AA104_788CD4(actor_index);
            return 2;
        }
    }
}

void func_801AA66C_78923C(u16 actor_index, s16 left, s16 right, s16 top, s16 bottom) {
    u32 player_index;
    s16 player_bounds[4];

    if (gActors[actor_index].actorType == 0x1F03) {
        player_index = 0x30;
    }
    else {
        player_index = 0;
    }

    player_bounds[0] = (gActors[player_index].posX.raw + gActors[player_index].velocityX.raw) / FIXED_UNIT(1) - 0x10;
    player_bounds[1] = (gActors[player_index].posX.raw + gActors[player_index].velocityX.raw) / FIXED_UNIT(1) + 0x10;
    player_bounds[2] = (gActors[player_index].posY.raw + gActors[player_index].velocityY.raw) / FIXED_UNIT(1) + 0x18;
    player_bounds[3] = (gActors[player_index].posY.raw + gActors[player_index].velocityY.raw) / FIXED_UNIT(1) + 8;

    if ((player_bounds[1] >= left) && (player_bounds[0] < right) && (player_bounds[2] >= bottom) && (player_bounds[3] < top)) {
        if (D_801AC864_78B434 == 0) {
            if (gActors[player_index].posX.raw < gActors[actor_index].posX.raw) {
                if (player_bounds[1] - left < 8) {
                    gActors[player_index].posX.whole = gActors[player_index].posX.whole - player_bounds[1] + left;
                }
                else {
                    gActors[player_index].posX.whole -= 8;
                }
            }
            else if (right - player_bounds[0] < 8) {
                gActors[player_index].posX.whole = gActors[player_index].posX.whole + right - player_bounds[0];
            }
            else {
                gActors[player_index].posX.whole += 8;
            }
        }
    }
    else {
        D_801AC864_78B434 = 0;
    }
}

void func_801AA824_7893F4(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-0.5);

        if ((gActors[actor_index].state != 0) && (gActors[actor_index + 1].unk_180 & 0x8000)) {
            func_800819A8(actor_index, D_800E4698);
            func_8008C710(actor_index);
        }

        if ((gActors[actor_index + 1].health == 0) && !(gActors[actor_index].state & 0x8000)) {
            gActors[actor_index].state = 0x8000;
        }
    }
}

void func_801AA944_789514(u16 actor_index) {
    if ((gActors[actor_index].state & 0x8000) == 0) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index + 1].unk_130 = -1.0f;
            gActors[actor_index].unk_138 = 1.0f;
        }
        else {
            gActors[actor_index + 1].unk_130 = 1.0f;
            gActors[actor_index].unk_138 = 0.0f;
        }

        if (gActors[actor_index + 1].flags & ACTOR_FLAG_UNK10) {
            func_801AA66C_78923C(
                actor_index,
                gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0,
                gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1,
                gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0,
                gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1
            );
        }

        gActors[actor_index].hitboxBY1 = Math_ApproachS32(gActors[actor_index].hitboxBY1, -0x38, 2);
    }
}

void func_801AAAA0_789670(u16 actor_index) {
    if (gActors[actor_index].posX.whole >= -0x5F) {
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.8f, 0.01f);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(5.5), FIXED_UNIT(0.125));
    }
    else {
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.5f, 0.01f);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(6.5), FIXED_UNIT(0.125));
    }
}

void func_801AAB64_789734(u16 actor_index) {
    func_801AA824_7893F4(actor_index);
    if (gActors[actor_index].posX.whole > 0x70) {
        gActors[actor_index].posX.whole = 0x70;
    }

    if (gActors[actor_index].posX.whole < -0x70) {
        gActors[actor_index].posX.whole = -0x70;
    }

    switch (gActors[actor_index].state) {
    case 0:
        func_801A9F10_788AE0(actor_index);
        gActors[actor_index + 1].unk_180 |= 0x8000;
        if (gActors[actor_index].var_0D8 == 0) {
            gActors[actor_index].state = 0x1C;
            func_801AA050_788C20(actor_index);
            gActors[actor_index + 1].health = 0x1000;
            gActors[actor_index].posX.whole = -0x60;
            gActors[actor_index].posY.whole = 9;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
        }
        break;
    case 0x1C:
        gActors[actor_index].state++;
        gActors[actor_index].unk_11C = -1.0f;
        gActors[actor_index + 1].unk_180 &= ~1;
        func_80081790(actor_index, D_800E5888);
    case 0x1D:
        if (func_801AA2EC_788EBC(actor_index) == 0) {
            s32 substate = gActors[actor_index + 0xD].unk_180;

            switch (substate) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                func_801AAAA0_789670(actor_index);
                gActors[actor_index + 2].unk_180--;
                if (gActors[actor_index + 2].unk_180 < 0) {
                    func_801A91C0_787D90(actor_index);
                    gActors[actor_index + 0xD].unk_180++;
                    gActors[actor_index + 2].unk_180 = 0x6E;
                }
                break;
            default:
            case 0x100:
                gActors[actor_index + 0xD].unk_180 = 0x101;
                gActors[actor_index + 2].unk_180 = 0xB4;
            case 0x101:
                func_801AAAA0_789670(actor_index);
                if (gActors[actor_index + 2].unk_180 >= 0) {
                    gActors[actor_index + 2].unk_180--;
                }

                if ((gActors[actor_index + 2].unk_180 < 0) &&
                    (func_801A92D4_787EA4() == 0) && func_801A9278_787E48(actor_index)) {
                    gActors[actor_index + 0xD].unk_180++;
                    func_801A9ED8_788AA8(actor_index);
                    gActors[actor_index + 0x21].graphicList = D_800E5998;
                    gActors[actor_index + 0x21].graphicTimer = 1;
                }
                break;
            case 0x102:
                func_801AAAA0_789670(actor_index);
                if ((gActors[0x4F].flags & ACTOR_FLAG_ACTIVE) == 0) {
                    gActors[actor_index + 0xD].unk_180 = 0;
                    gActors[actor_index + 2].unk_180 = 0x3C;
                    gActors[actor_index + 0x21].graphicList = D_800E5984;
                    gActors[actor_index + 0x21].graphicTimer = 1;
                }
                break;
            }
            if ((gActors[actor_index].unk_16C & 1) && ((gActors[0x4F].flags & ACTOR_FLAG_ACTIVE) == 0)) {
                func_801A70A4_785C74(
                    gActors[actor_index].posX.whole + 0x10,
                    gActors[actor_index].posY.whole - 0x30,
                    gActors[actor_index].posZ.whole + 1, 1.2f
                );
                Sound_PlaySfxAtActor3(SFX_0029, actor_index);
            }
        }
        break;
    case 0x2000:
        gActors[actor_index].state++;
        func_801AA15C_788D2C(actor_index);
        func_80081790(actor_index, D_800E5830);
        gActors[actor_index + 0x21].graphicList = D_800E59B8;
        gActors[actor_index + 0x21].graphicTimer = 1;
        gActors[actor_index].unk_120 = 1.0f;
    case 0x2001:
        if (func_801AA46C_78903C(actor_index, 0) == 2) {
            gActors[actor_index].state = 0x1C;
        }
        gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
        break;
    case 0x8000:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E5830);
        func_801AA15C_788D2C(actor_index);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index + 2].unk_180 = 0xB4;
    case 0x8001:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);
        }

        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(8);
        }

        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(3.5), FIXED_UNIT(0.03125));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(8.5), FIXED_UNIT(0.03125));
        }

        BossDeathExplode(0, actor_index, 1.0f, 1.0f);
        gActors[actor_index + 2].unk_180--;
        if (gActors[actor_index + 2].unk_180 < 0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].state++;
            func_80081720(actor_index, D_800E4698, -3);
            func_8003E52C(1, gActors[actor_index + 1].posX.whole, gActors[actor_index + 1].posY.whole, 0.5f);
            Sound_StopMusic();
            return;
        }
        break;
    }

    func_801AA944_789514(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801AB184_789D54(u16 actor_index) {
}

void func_801AB18C_789D5C(u16 actor_index) {
}

