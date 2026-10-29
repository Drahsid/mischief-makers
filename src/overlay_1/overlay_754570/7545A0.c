#include "common.h"
#include "actor.h"
#include "80D90.h"
#include "frontend.h"

extern s16 D_800E21D4[];
extern s32 D_801A4190_75D630;
extern s32 D_801A4194_75D634;
extern s32 D_801A4198_75D638;
extern s32 D_801A419C_75D63C;
extern s32 D_801A41A0_75D640;
extern s32 D_801A41A4_75D644;
extern s16 D_801A41A8_75D648;
extern s16 D_801A41AA_75D64A;
extern s16 D_801A41AC_75D64C;
extern s16 D_801A41AE_75D64E;
extern s16 D_801A41B0_75D650;
extern s16 D_801A41B2_75D652;
extern s16 D_801A41B4_75D654;
extern s16 D_801A41B6_75D656;
extern u16 D_801A41D8_75D678;


s16 D_801A3250_75C6F0[] = {
//  graphic flags   unk_13C
    0x0808, 0x87C0, 0x000C,
    0x0000, 0x0000, 0x0020,
    0x080C, 0x8400, 0x000D,
    0x0000, 0x0000, 0x0020,
    0x0800, 0x8400, 0x0011,
    0x0000, 0x0000, 0x0020,
    0x0802, 0x8400, 0x0010,
    0x0000, 0x0000, 0x0020,
    0x0800, 0x8400, 0x0009,
    0x0000, 0x0000, 0x0020,
    0x0802, 0x8400, 0x0008,
    0x0000, 0x0000, 0x0020,
    0x0804, 0x8600, 0x0016,
    0x0000, 0x0000, 0x0020,
    0x0806, 0x8400, 0x0015,
    0x0000, 0x0000, 0x0020,
    0x080A, 0x8440, 0x0014,
    0x0000, 0x0000, 0x0020,
    0x0804, 0x8600, 0x0002,
    0x0000, 0x0000, 0x0020,
    0x0806, 0x8400, 0x0001,
    0x0000, 0x0000, 0x0020,
    0x080A, 0x8440, 0x0000,
    0x0000,
};

s16 D_801A32DC_75C77C[] = {
//  actor   parent  length  angle   pose
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000,
    0x0002, 0x0001, 0x0014, 0x0200, 0x0000,
    0x0003, 0x0002, 0x0003, 0x0200, 0x0000,
    0x0004, 0x0001, 0x0006, 0x0200, 0x0000,
    0x0005, 0x0004, 0x0004, 0x01C0, 0x0000,
    0x0006, 0x0005, 0x0007, 0x0200, 0x0000,
    0x0007, 0x0006, 0x0007, 0x0200, 0x0000,
    0x0008, 0x0001, 0x0004, 0x0200, 0x0000,
    0x0009, 0x0008, 0x0004, 0x0180, 0x0000,
    0x000A, 0x0009, 0x0007, 0x0200, 0x0000,
    0x000B, 0x000A, 0x0007, 0x0200, 0x0000,
    0x000C, 0x0001, 0x0008, 0x0000, 0x0000,
    0x000D, 0x000C, 0x0006, 0x0330, 0x0000,
    0x000E, 0x000D, 0x0009, 0x0200, 0x0000,
    0x000F, 0x000E, 0x0008, 0x0200, 0x0000,
    0x0010, 0x000F, 0x0009, 0x0200, 0x0000,
    0x0011, 0x0010, 0x000B, 0x0200, 0x0000,
    0x0012, 0x0001, 0x0004, 0x0200, 0x0000,
    0x0013, 0x0012, 0x0006, 0x01A8, 0x0000,
    0x0014, 0x0013, 0x0009, 0x0200, 0x0000,
    0x0015, 0x0014, 0x0008, 0x0200, 0x0000,
    0x0016, 0x0015, 0x0009, 0x0200, 0x0000,
    0x0017, 0x0016, 0x000B, 0x0200, 0x0000,
    0x7FFF,
};

u16 D_801A33C4_75C864[] = {
    0xFFF6, 0x0000, 0x0068, 0x0000, 0x0028, 0x0000,
    0x0368, 0x0000, 0x0338, 0x0003, 0x0360, 0x0000,
    0x0028, 0x0000, 0x00B8, 0x0000, 0x0368, 0x0009,
    0x0388, 0x0000, 0x0000, 0x0001, 0x0090, 0x0000,
    0x0188, 0x0000, 0x0150, 0x0000, 0x0000, 0x0000,
    0x0298, 0x0000, 0x0018, 0x0000, 0x01C8, 0x0000,
    0x03B0, 0x0003, 0x0380, 0x0000, 0x0000, 0x0000,
    0x0250, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A3424_75C8C4[] = {
    0xFFF7, 0x0000, 0x0010, 0x0000, 0x03E0, 0x0000,
    0x03F0, 0x0000, 0x0330, 0x0003, 0x0318, 0x0000,
    0x0028, 0x0000, 0x0150, 0x0000, 0x0378, 0x0008,
    0x02D0, 0x0000, 0x0000, 0x0001, 0x0188, 0x0000,
    0x01E0, 0x0000, 0x0150, 0x0000, 0x0000, 0x0000,
    0x0298, 0x0000, 0x0018, 0x0000, 0x01C8, 0x0000,
    0x03F8, 0x0003, 0x0380, 0x0000, 0x0000, 0x0000,
    0x0250, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A3484_75C924[] = {
    0xFFFD, 0x000F, 0x0018, 0x0000, 0x0390, 0x0000,
    0x0020, 0x0000, 0x02D8, 0x0003, 0x03F8, 0x0000,
    0x03E8, 0x0000, 0x0080, 0x0000, 0x0370, 0x0009,
    0x0340, 0x0000, 0x03E8, 0x0000, 0x0098, 0x0000,
    0x01F0, 0x0002, 0x0118, 0x0000, 0x03A8, 0x0000,
    0x0368, 0xFFFD, 0x0018, 0x0000, 0x0140, 0x0000,
    0x03D0, 0x0001, 0x0358, 0x0000, 0x03B0, 0x0000,
    0x0340, 0x0000, 0x0018, 0x0000, 0x0178, 0x0003,
};

u16 D_801A34E4_75C984[] = {
    0xFFFE, 0x000A, 0x0070, 0x0000, 0x0030, 0x0000,
    0x0350, 0x0000, 0x0320, 0xFFFD, 0x03D8, 0x0000,
    0x03E8, 0x0000, 0x03E8, 0x0000, 0x0370, 0x0009,
    0x03D8, 0x0000, 0x03E8, 0x0000, 0x03F0, 0x0000,
    0x01F0, 0x0002, 0x0040, 0x0000, 0x03A8, 0x0000,
    0x0098, 0xFFFD, 0x0018, 0x0000, 0x0370, 0x0000,
    0x0388, 0x0002, 0x02D8, 0x0000, 0x03E8, 0xFFF7,
    0x0058, 0x0000, 0x03D8, 0x0000, 0x03A8, 0x0000,
};

u16 D_801A3544_75C9E4[] = {
    0xFFFE, 0x0006, 0x0390, 0x0000, 0x03F8, 0x0000,
    0x0038, 0x0000, 0x0330, 0x0003, 0x0080, 0x0000,
    0x0000, 0x0000, 0x0088, 0x0000, 0x0348, 0x0009,
    0x00B0, 0x0000, 0x0010, 0x0000, 0x0068, 0x0000,
    0x0238, 0x0002, 0x0070, 0x0000, 0x03F8, 0x0000,
    0x0358, 0xFFFD, 0x0018, 0x0000, 0x0000, 0x0000,
    0x0398, 0xFFF7, 0x0370, 0x0000, 0x03D0, 0x0000,
    0x0300, 0x0000, 0x0018, 0xFFFE, 0x03B0, 0x0000,
};

u16 D_801A35A4_75CA44[] = {
    0xFFF6, 0x0000, 0x00B8, 0x0000, 0x0000, 0xFFFF,
    0x0390, 0x0000, 0x0320, 0x0003, 0x0360, 0x0000,
    0x0008, 0xFFFE, 0x0058, 0x0003, 0x0358, 0x0009,
    0x0360, 0x0000, 0x0000, 0x0000, 0x0010, 0x0001,
    0x0148, 0x0000, 0x0140, 0x0000, 0x0000, 0x0000,
    0x0290, 0x0000, 0x0018, 0x0000, 0x01D0, 0x0000,
    0x03B0, 0x0004, 0x0308, 0x0000, 0x0000, 0x0000,
    0x0278, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A3604_75CAA4[] = {
    0xFFF6, 0x0000, 0x00C8, 0x0000, 0x0008, 0xFFFF,
    0x0398, 0x0000, 0x0320, 0x0003, 0x0348, 0x0000,
    0x0008, 0xFFFE, 0x0058, 0x0003, 0x0358, 0x0009,
    0x0340, 0x0000, 0x0000, 0x0000, 0x0010, 0x0001,
    0x0138, 0x0000, 0x0138, 0x0000, 0x0000, 0x0000,
    0x0298, 0x0000, 0x0018, 0x0000, 0x01D8, 0x0000,
    0x03A0, 0x0004, 0x0308, 0x0000, 0x0000, 0x0000,
    0x0278, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A3664_75CB04[] = {
    0xFFF6, 0x0000, 0x0038, 0x0000, 0x03E0, 0x0007,
    0x03D0, 0x0000, 0x0370, 0x0003, 0x0360, 0x0000,
    0x0028, 0x0000, 0x00B8, 0x0000, 0x0390, 0x0009,
    0x0360, 0x0000, 0x0000, 0x0001, 0x00E0, 0x0000,
    0x01D8, 0x0000, 0x0150, 0x0000, 0x0000, 0x0000,
    0x0298, 0x0000, 0x0018, 0x0000, 0x01C8, 0x0000,
    0x03D8, 0x0003, 0x0380, 0x0000, 0x0000, 0x0000,
    0x0250, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A36C4_75CB64[] = {
    0xFFF6, 0x0003, 0x03B0, 0x0000, 0x0028, 0x0006,
    0x03D0, 0x0000, 0x03B8, 0x0003, 0x0398, 0x0000,
    0x0028, 0x0000, 0x00C8, 0x0000, 0x03F0, 0x0009,
    0x0350, 0xFFFE, 0x0000, 0x0001, 0x00F0, 0x0000,
    0x01B0, 0x0000, 0x01A8, 0x0000, 0x0000, 0x0000,
    0x02E0, 0x0000, 0x0018, 0x0000, 0x0188, 0x0000,
    0x0018, 0xFFFA, 0x03C8, 0x0000, 0x0000, 0x0000,
    0x0278, 0x0000, 0x0000, 0x0000, 0x01D8, 0x0000,
};

u16 D_801A3724_75CBC4[] = {
    0xFFFE, 0x0000, 0x0130, 0x0000, 0x03A8, 0x0000,
    0x0318, 0x0000, 0x0320, 0xFFFD, 0x03D8, 0x0000,
    0x03E8, 0x0000, 0x03E8, 0x0000, 0x0370, 0x0009,
    0x03D8, 0x0000, 0x03E8, 0x0000, 0x03F0, 0x0000,
    0x0210, 0x0002, 0x00C8, 0x0000, 0x03A8, 0x0000,
    0x00C0, 0xFFFD, 0x0018, 0x0000, 0x0338, 0x0000,
    0x03B8, 0xFFF9, 0x02D8, 0x0000, 0x03E8, 0xFFFE,
    0x0118, 0x0000, 0x03D8, 0x0000, 0x02A0, 0x0000,
};

u16 D_801A3784_75CC24[] = {
    0xFFFE, 0x000A, 0x0148, 0x0000, 0x0058, 0x0000,
    0x03D0, 0x0000, 0x0320, 0xFFFD, 0x0390, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x0370, 0x0009,
    0x0340, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0228, 0x0004, 0x00A0, 0x0000, 0x03A8, 0x0000,
    0x0098, 0xFFFD, 0x0018, 0x0000, 0x0370, 0x0000,
    0x0388, 0xFFFF, 0x0320, 0x0000, 0x03E8, 0xFFFE,
    0x00C0, 0x0000, 0x03D8, 0x0000, 0x02F0, 0x0000,
};

u16 D_801A37E4_75CC84[] = {
    0xFFFE, 0x000A, 0x0178, 0x0000, 0x0058, 0x0000,
    0x03D0, 0x0000, 0x0320, 0xFFFD, 0x0370, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x0370, 0x0009,
    0x0308, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0228, 0x0004, 0x0090, 0x0000, 0x03A8, 0x0003,
    0x0050, 0x0000, 0x0018, 0x0000, 0x03B0, 0x0000,
    0x0388, 0xFFFF, 0x0300, 0x0000, 0x03E8, 0x0000,
    0x0040, 0x0000, 0x03D8, 0x0000, 0x03E8, 0x0000,
};

u16 D_801A3844_75CCE4[] = {
    0xFFFE, 0x000A, 0x01A8, 0x0000, 0x0008, 0x0000,
    0x03E8, 0x0000, 0x03A0, 0x0003, 0x00C0, 0x0000,
    0x0028, 0x0000, 0x0108, 0x0000, 0x00B8, 0x0008,
    0x02D0, 0x0000, 0x0000, 0x0001, 0x0188, 0x0000,
    0x02A8, 0x0006, 0x0150, 0x0000, 0x0000, 0x0000,
    0x0298, 0x0000, 0x0018, 0x0000, 0x01C8, 0x0000,
    0x0080, 0xFFF1, 0x03C8, 0x0000, 0x0000, 0x0000,
    0x0280, 0x0000, 0x0000, 0x0000, 0x01A8, 0x0000,
};

u16 D_801A38A4_75CD44[] = {
    0xFFFE, 0x000A, 0x0188, 0x0000, 0x0080, 0x0004,
    0x03D0, 0x0000, 0x0380, 0xFFFD, 0x0148, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x03F0, 0x0009,
    0x00A8, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0228, 0x0004, 0x0030, 0x0000, 0x03C8, 0x0003,
    0x0010, 0x0000, 0x0018, 0x0000, 0x03B0, 0x0000,
    0x0388, 0xFFFF, 0x02A0, 0x0000, 0x03E8, 0x0000,
    0x0040, 0x0000, 0x03D8, 0x0000, 0x03D0, 0x0000,
};

u16 D_801A3904_75CDA4[] = {
    0xFFFE, 0x000A, 0x0060, 0x0000, 0x0390, 0x0000,
    0x0020, 0x0000, 0x02D8, 0x0003, 0x03F8, 0x0000,
    0x03E8, 0x0000, 0x0080, 0x0000, 0x0370, 0x0009,
    0x0340, 0x0000, 0x03E8, 0x0000, 0x0098, 0x0000,
    0x01F0, 0x0002, 0x0118, 0x0000, 0x03A8, 0x0000,
    0x0368, 0xFFFD, 0x0018, 0x0000, 0x0140, 0x0000,
    0x03D0, 0x0001, 0x0358, 0x0000, 0x03B0, 0x0000,
    0x0340, 0x0000, 0x0018, 0x0000, 0x0178, 0x0003,
};

u16 D_801A3964_75CE04[] = {
    0xFFFC, 0x0003, 0x03B8, 0x0000, 0x0050, 0x0000,
    0x03E0, 0x0000, 0x0320, 0xFFFD, 0x0370, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x0370, 0x0009,
    0x0308, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0200, 0x0004, 0x0090, 0x0000, 0x03A8, 0x0003,
    0x0050, 0x0000, 0x0018, 0x0000, 0x03B0, 0x0000,
    0x0360, 0xFFFF, 0x0300, 0x0000, 0x03E8, 0x0000,
    0x0040, 0x0000, 0x03D8, 0x0000, 0x03E8, 0x0000,
};

u16 D_801A39C4_75CE64[] = {
    0xFFFC, 0x0003, 0x03B8, 0x0000, 0x0050, 0x0000,
    0x03E0, 0x0000, 0x0320, 0xFFFD, 0x0370, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x0370, 0x0009,
    0x0308, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0200, 0x0004, 0x0090, 0x0000, 0x03A8, 0x0003,
    0x0050, 0x0000, 0x0018, 0x0000, 0x03B0, 0x0000,
    0x0360, 0xFFFF, 0x0300, 0x0000, 0x03E8, 0x0000,
    0x0040, 0x0000, 0x03D8, 0x0000, 0x03E8, 0x0000,
};

u16 D_801A3A24_75CEC4[] = {
    0xFFFA, 0x000C, 0x0388, 0x0000, 0x0040, 0x0004,
    0x0020, 0x0000, 0x03A8, 0xFFFD, 0x02B0, 0x0000,
    0x03E8, 0x0000, 0x0028, 0x0000, 0x0370, 0x0002,
    0x02D8, 0x0000, 0x03E8, 0x0000, 0x0040, 0x0000,
    0x0200, 0x0004, 0x03E8, 0x0000, 0x03A8, 0x0003,
    0x0050, 0x0000, 0x0018, 0x0000, 0x03B0, 0x0000,
    0x0340, 0xFFFF, 0x02B8, 0x0000, 0x03E8, 0x0000,
    0x0040, 0x0000, 0x03D8, 0x0000, 0x03E8, 0x0000,
};

u16 D_801A3A84_75CF24[] = {
    0xFFFB, 0x000C, 0x0390, 0x0000, 0x0038, 0x0003,
    0x0020, 0x0000, 0x0330, 0x0003, 0x0080, 0x0000,
    0x0000, 0x0000, 0x0088, 0x0000, 0x0348, 0x0009,
    0x00B0, 0x0000, 0x0010, 0x0000, 0x0068, 0x0000,
    0x0238, 0x0002, 0x0070, 0x0000, 0x03F8, 0x0000,
    0x0358, 0xFFFD, 0x0018, 0x0000, 0x0000, 0x0000,
    0x0398, 0xFFF7, 0x0370, 0x0000, 0x03D0, 0x0000,
    0x0300, 0x0000, 0x0018, 0xFFFE, 0x03B0, 0x0000,
};

u16* D_801A3AE4_75CF84[] = {
    D_801A33C4_75C864,
    D_801A3424_75C8C4,
    D_801A3484_75C924,
    D_801A34E4_75C984,
    D_801A3544_75C9E4,
    D_801A35A4_75CA44,
    D_801A3604_75CAA4,
    D_801A3664_75CB04,
    D_801A36C4_75CB64,
    D_801A3724_75CBC4,
    D_801A3784_75CC24,
    D_801A37E4_75CC84,
    D_801A3844_75CCE4,
    D_801A38A4_75CD44,
    D_801A3904_75CDA4,
    D_801A3964_75CE04,
    D_801A39C4_75CE64,
    D_801A3A24_75CEC4,
    D_801A3A84_75CF24,
    NULL,
};

u16 D_801A3B34_75CFD4[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0000, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801A3B44_75CFE4[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0001, 0x0008, 0x0000,
    0x0002, 0x0004, 0x0000,
    0x7FFF,
};

u16 D_801A3B58_75CFF8[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0003, 0x000A, 0x0002,
    0x0003, 0x0010, 0x0000,
    0x7FFF,
};

u16 D_801A3B6C_75D00C[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0004, 0x000A, 0x0002,
    0x0004, 0x0010, 0x0000,
    0x7FFF,
};

u16 D_801A3B80_75D020[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0004, 0x0004, 0x0000,
    0x0000, 0x0008, 0x0000,
    0x7FFF,
};

u16 D_801A3B94_75D034[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0005, 0x0008, 0x0000,
    0x0006, 0x0010, 0x0000,
    0x0007, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801A3BB0_75D050[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0005, 0x0008, 0x0000,
    0x0006, 0x0010, 0x0000,
    0x0008, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801A3BCC_75D06C[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x0009, 0x0004, 0x0000,
    0x000A, 0x0005, 0x0000,
    0x000B, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801A3BE8_75D088[] = {
//  pose    frames  delay
    0x0000, 0x0000, 0x0000,
    0x000C, 0x0008, 0x0000,
    0x000D, 0x0005, 0x0000,
    0x7FFD, 0x0001,
    0x000E, 0x000A, 0x0000,
    0x0008, 0x0008, 0x0000,
    0x7FFF,
    0x0000, 0x0000, 0x0000,
    0x000F, 0x0008, 0x0000,
    0x7FFF,
    0x0000,
};

s32 D_801A3C1C_75D0BC[] = {
    FIXED_UNIT(1), FIXED_UNIT(5),
    FIXED_UNIT(1.5), FIXED_UNIT(6.5),
    FIXED_UNIT(2.5), FIXED_UNIT(7),
    FIXED_UNIT(1), FIXED_UNIT(5),
};

s32 D_801A3C3C_75D0DC[] = {
    FIXED_UNIT(1), FIXED_UNIT(1.5), FIXED_UNIT(2.5), FIXED_UNIT(2),
};

s32 D_801A3C4C_75D0EC[] = {
    FIXED_UNIT(5), FIXED_UNIT(6), FIXED_UNIT(7), FIXED_UNIT(6.5),
};

s16 D_801A3C5C_75D0FC[] = {
//  graphic timer
    0x01B2, 3,
    0x01B4, 3,
    -4,     0,
};

s16 D_801A3C68_75D108[] = {
//  graphic timer
    0x01DA, 3,
    0x01DC, 3,
    0x01DE, 3,
    -6,     0,
};

u16 D_801A3C78_75D118[] = {
    0x00F3, 0x00CE, 0x01C7, 0x01D2, 0x01D3, 0x00B2, 0x8FFF, 0x0000,
};

s16 D_801A3C88_75D128[] = {
    0x01C0, 0x0154, 0x01C0, 0x01C4, 0x0154, 0x01EE, 0x0154, 0x0000,
};

s16 D_801A3C98_75D138[] = {
    0x080C, 0x080E, 0x0810, 0x0812, 0x0814, 0x0000,
};

s8 D_801A3CA4_75D144[] = {
//  BY0  BY1  BX0  BX1
    18,  -18, -16, 16,
    16,  -16, -8,  4,
    24,  4,   -40, 8,
    -16, -17, -8,  8,
};

s16 D_801A3CB4_75D154[] = {
    4, 8, 8, 8, 8, 8, 8, 10,
    6, 30, 60, 0,
};

s16 D_801A3CCC_75D16C[] = {
    20, 60, 16, 40, 12, 30, 10, 10,
};

s16 D_801A3CDC_75D17C[] = {
//  var_110 x    y
    350,    0,   0,
    20,     -3,  9,
    30,     -10, 16,
    50,     -8,  18,
    60,     -10, 16,
    40,     -6,  10,
    10,     -1,  1,
    0,      -2,  -1,
    340,    -8,  -4,
    348,    -4,  -2,
};

s16 D_801A3D18_75D1B8[] = {
//  var_110 x   y
    370,    0,  0,
    340,    3,  9,
    330,    10, 16,
    310,    8,  18,
    300,    10, 16,
    320,    6,  10,
    350,    1,  1,
    360,    2,  -1,
    380,    8,  -4,
    388,    4,  -2,
};

f32 D_801A3D54_75D1F4[] = {
    -30.0f, -60.0f, -70.0f, -80.0f, -10.0f,
    0.0f, 10.0f, 20.0f, 25.0f, 30.0f,
};

f32 D_801A3D7C_75D21C[] = {
    30.0f, 60.0f, 70.0f, 80.0f, 10.0f,
    0.0f, -10.0f, -20.0f, -25.0f, -30.0f,
};

s16 D_801A3DA4_75D244[] = {
    0x01C0, 0x01C2, 0x01C4, 0x01C2, 0x01EE, 0x0000,
};

s16 D_801A3DB0_75D250[] = {
//  graphic timer
    0x01B2, 8,
    0x01B4, 2,
    0,      0,
};

f32 D_801A3DBC_75D25C[] = {
//  rotateX rotateY rotateZ
    52.0f,  0.0f,   41.0f,
    223.0f, 216.0f, 261.0f,
    351.0f, 52.0f,  6.0f,
    198.0f, 158.0f, 130.0f,
};


void func_8019BED4_755374(u16 actor_index);
void func_8019C098_755538(u16 actor_index);
void func_8019C520_7559C0(u16 actor_index, u8 index);
void func_8019C608_755AA8(u16 actor_index);
void func_8019E55C_7579FC(u16 actor_index, s16 arg1);
void func_801A0990_759E30(u16 actor_index);
void func_801A0E80_75A320(u16 actor_index);
void func_801A1740_75ABE0(s16 position_x, s16 position_y);
void func_801A19D8_75AE78(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A1B4C_75AFEC(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A1CD8_75B178(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A1E64_75B304(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A1FF0_75B490(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A2494_75B934(u16 actor_index, s16 offset_x, s16 offset_y);
void func_801A2608_75BAA8(u16 actor_index, s16 offset_x, s16 offset_y, s16 state);
u16 func_801A2738_75BBD8(u16 actor_index, s16 offset_x, s16 offset_y, s16 state);
u16 func_801A2894_75BD34(u16 actor_index, s16 offset_x, s16 offset_y, s16 state);
void func_801A2F34_75C3D4(u16 actor_index, s16 offset_x, s16 offset_y, s16 offset_z, f32 scale);
void func_801A3078_75C518(u16 actor_index, s16 offset_x, s16 offset_y);


void func_8019B100_7545A0(u16 actor_index) {
}

void func_8019B108_7545A8(u16 actor_index) {
    ACTOR_INIT(0x70, ACTORTYPE_OVL1_TOAD_RAIDEN);
    gActors[0x70].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x70].posX.whole = gActors[actor_index].posX.whole;
    gActors[0x70].posY.whole = 0x80;
    gActors[0x70].posZ.whole = gActors[actor_index].posZ.whole - 8;
    gActors[0x70].var_150 = 0xB4;
    ACTOR_INIT(0x71, ACTORTYPE_GRAPHIC_29);
    gActors[0x71].scaleX = 0.6f;
    gActors[0x71].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[0x71].flags = ACTOR_FLAG_ACTIVE;
    ACTOR_GFX_INIT(0x71, D_800E21D4);
    gActors[0x71].colorA = 0xC0;
    gActors[0x71].scaleY = 0.6f;
    Actor_SetColorRgb(0x71, 0x18);
    SpawnTextBubble(actor_index, D_801A3C78_75D118, 0, 0x38, 0x78);
}

void func_8019B21C_7546BC(u16 actor_index) {
    gActors[0x70].state = 3;
    gActors[0x70].velocityY.raw = FIXED_UNIT(-3.5);
}

void func_8019B240_7546E0(u16 actor_index) {
    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(1), FIXED_UNIT(0.0625));
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-1), FIXED_UNIT(0.0625));
    }

    if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }

    if (gActors[actor_index].posY.whole > 0x50 - (Rand() & 0xF)) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1), FIXED_UNIT(0.0625));
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(0.0625));
    }

    gActors[0x71].posX.whole = gActors[actor_index].posX.whole;
    gActors[0x71].posY.whole = gActors[actor_index].posY.whole + 0xE;
    gActors[0x71].posZ.whole = gActors[actor_index].posZ.whole - 1;
}

void func_8019B370_754810(u16 actor_index) {
    u16 fixed_actor_index = 0x72;

    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(1.75);

    if (fixed_actor_index) {
        ACTOR_INIT(fixed_actor_index, ACTORTYPE_OVL1_TOAD_RAIDENBALL);
        gActors[fixed_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_PALETTE;
        gActors[fixed_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[fixed_actor_index].graphicIndex = GINDEX_BLASTB;
        gActors[fixed_actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[fixed_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[fixed_actor_index].posY.whole = gActors[actor_index].posY.whole - 14;
        gActors[fixed_actor_index].posZ.whole = gActors[actor_index].posZ.whole;
    }
}

void func_8019B43C_7548DC(u16 actor_index) {
    if (!(gActors[0x30].flags & ACTOR_FLAG_ACTIVE)) {
        gActors[actor_index].flags = 0;
        gActors[0x71].flags = 0;
        gActors[0x72].flags = 0;
        return;
    }

    switch (gActors[actor_index].state) {
    case 0:
        if (--gActors[actor_index].var_150 > 0) {
            break;
        }

        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK4;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].colorA = 0xC0;
        gActors[actor_index].graphicIndex = GINDEX_SAGECLOUD;
        gActors[actor_index].var_150 = 120;
        gActors[actor_index].var_154 = 140;
        gActors[actor_index].var_158 = 3;
        gActors[0x71].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);

    case 1:
        func_8019B240_7546E0(actor_index);

        if (--gActors[actor_index].var_154 < 0 && gActors[actor_index].var_158 != 0 && (gActors[0x30].flags & ACTOR_FLAG_ACTIVE)) {
            gActors[actor_index].state++;
            gActors[actor_index].var_158--;
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].unk_114 = 100.0f;
            func_8019B370_754810(actor_index);
            Sound_PlaySfxAtActor2(SFX_WOOSH_0099, actor_index);
            SpawnCrosshair(0xF, 0x72);
        }
        break;

    case 2:
        func_8019B240_7546E0(actor_index);
        gActors[actor_index].unk_114 -= 1.0f;

        if (gActors[actor_index].unk_114 < 0.0f) {
            gActors[actor_index].var_110 -= 0.01;

            if (gActors[actor_index].var_110 < 0.0f) {
                gActors[actor_index].state--;
                gActors[actor_index].var_154 = 80;
            }
        }
        break;

    case 3:
        gActors[0x71].posX.whole = gActors[actor_index].posX.whole;
        gActors[0x71].posY.whole = gActors[actor_index].posY.whole + 14;
        gActors[0x71].posZ.whole = gActors[actor_index].posZ.whole - 1;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].velocityY.raw += FIXED_UNIT(0.125);

        if (gActors[actor_index].posY.whole > 256) {
            gActors[actor_index].flags = 0;
            gActors[0x71].flags = 0;
            return;
        }
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 32);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
    gActors[0x71].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[0x71].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
}

void func_8019B740_754BE0(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[0x70].posX.whole;
    gActors[actor_index].posZ.whole = gActors[0x70].posZ.whole - 1;
}

void func_8019B790_754C30(u16 actor_index) {
    u16 new_actor_index;

    if (!(gActiveFrames & 0x1F) && (Rand() & 1)) {
        gActors[actor_index].colorR = 0xFF;
    }

    if (gActiveFrames & 3) {
        new_actor_index = Actor_RangeFindInactive(0x73, 0x90);

        if (new_actor_index) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL1_TOAD_RAIDENBALL;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
            gActors[new_actor_index].state = 1;
            gActors[new_actor_index].health = 0;
            Actor_SetHitboxA(new_actor_index, 3);
            Actor_SetHitboxB(new_actor_index, 0xE);
            gActors[new_actor_index].unk_0DF = ACTOR0DF_5 | ACTOR0DF_7;
            gActors[new_actor_index].hitFlags = HITFLAG_3 | HITFLAG_7;\
            gActors[new_actor_index].hitType = HITTYPE_SHOCK_14;
            gActors[new_actor_index].unk_0F8.raw = FIXED_UNIT(4);\
            gActors[new_actor_index].unk_0FC.raw = FIXED_UNIT(2);
            gActors[new_actor_index].damage = 1;
            gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
            gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole - 0xE;
        }
    }
}

void func_8019B90C_754DAC(u16 actor_index) {
    Actor* temp_v1;
    u16 new_actor_index = SpawnParticle_Image_90C0_16(
        D_801A3C88_75D128[gActiveFrames % 7],
        0,
        0,
        0
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].flags = (Rand() & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ENABLED + ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].var_154 = -0x60;
        gActors[new_actor_index].colorR = Rand() & 0x7F;
        gActors[new_actor_index].colorG = Rand() & 0x7F;
        temp_v1 = &gActors[actor_index];
        gActors[new_actor_index].posX.raw = temp_v1->posX.raw;
        gActors[new_actor_index].posY.raw = temp_v1->posY.raw + ((gActors + 0x70)->posY.raw - temp_v1->posY.raw + FIXED_UNIT(14)) / 2;
        gActors[new_actor_index].posZ.raw = temp_v1->posZ.raw - 4;
        gActors[new_actor_index].velocityZ.raw = -8;
        gActors[new_actor_index].scaleX = (f32)(gActors[0x70].posY.whole - temp_v1->posY.whole - 14) / 24.0f;
        gActors[new_actor_index].var_160 = FIXED_UNIT(COS_DEG_360 - COS_DEG_90);

        if (Rand() & 1) {
            gActors[new_actor_index].var_160 = FIXED_UNIT(COS_DEG_90);
        }

        gActors[new_actor_index].scaleY = (1.7 + (f32)(Rand() & 7) * 0.2) * (f64)gActors[0x70].var_110;
        gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[new_actor_index].unk_114 = 2.0 * (f64)gActors[0x70].var_110;
        gActors[new_actor_index].unk_148 = 1.0f;
    }
}

void func_8019BB0C_754FAC(u16 actor_index) {
    if (gActors[0x70].state == 1 || gActors[0x70].state == 3 || gActors[0x70].flags == 0) {
        gActors[actor_index].flags = 0;
        return;
    }

    gActors[actor_index].posX.whole = gActors[0x70].posX.whole;

    switch (gActors[actor_index].state) {
    case 0:
        if (!(gActiveFrames & 3)) {
            CameraShake(3, 3);
        }

        func_8019B790_754C30(0x70);

        if (gActors[actor_index].posY.whole < -48) {
            gActors[actor_index].posY.whole = -48;
        }

        gActors[actor_index].colorR = Rand() & 0x7F;
        gActors[actor_index].colorG = Rand() & 0x3F;
        func_8019B90C_754DAC(actor_index);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.125));
        gActors[actor_index].scaleX = gActors[0x70].var_110 + (f32)(Rand() & 7) / 8;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        break;

    case 1:
        gActors[actor_index].posY.raw += FIXED_UNIT(-8);

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].flags = 0;
            gActors[0x72].velocityY.raw = 0;
            gActors[0x72].posY.raw = gActors[actor_index].posY.raw - gActors[actor_index].velocityY.raw;
        }

        if (gActors[actor_index].posY.whole < gActors[0x72].posY.whole) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

void func_8019BCD4_755174(u16 actor_index) {
    func_80026E60(0x27);
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
    gActors[actor_index].grabType = GRABTYPE_6;
    gActors[actor_index].unk_0DF = ACTOR0DF_6;
    D_801A41B6_75D656 = 0;
    D_800BE544 = actor_index;
    func_8019C520_7559C0(actor_index, 0);
    func_8008105C(actor_index, D_801A32DC_75C77C, D_801A3250_75C6F0);
    gActors[actor_index].unk_178 = (intptr_t)D_801A3AE4_75CF84;
    func_80081478(actor_index, D_801A32DC_75C77C, 0);
    func_80081790(actor_index, D_801A3B34_75CFD4);
    func_800819A8(actor_index, D_801A32DC_75C77C);
    gActors[actor_index].colorA = 0xFF;
    func_801A0990_759E30(actor_index);
    gActors[D_801A41D8_75D678].colorA = 0;
    gActors[D_801A41D8_75D678].colorR = 0;
    gActors[D_801A41D8_75D678].colorG = 0;
    gActors[D_801A41D8_75D678].colorB = 0;
    gActors[actor_index].health = 400;
    D_801A4190_75D630 = D_801A4194_75D634 = D_801A4198_75D638 = D_801A419C_75D63C = D_801A41A0_75D640 = D_801A41A4_75D644 = 0;
    D_801A41AC_75D64C = D_801A41AE_75D64E = D_801A41AA_75D64A = D_801A41B2_75D652 = D_801A41B0_75D650 = D_801A41A8_75D648 = D_801A41B4_75D654 = 0;
}

void func_8019BED4_755374(u16 actor_index) {
    if (gActors[actor_index].state != 0 && gActors[actor_index].state < 0x500) {
        gActors[actor_index + 1].unk_180 &= 0xFF7FFCFF;
        gActors[actor_index + 6].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index + 7].unk_180 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;

        if (gActors[actor_index + 6].unk_180 < gScreenBoundX0.whole) {
            gActors[actor_index + 1].unk_180 |= 0x100;
            gActors[actor_index].posX.whole = -0x8F;
        }

        if (gScreenBoundX1.whole < gActors[actor_index + 6].unk_180) {
            gActors[actor_index + 1].unk_180 |= 0x200;
            gActors[actor_index].posX.whole = 0x8F;
        }

        gActors[actor_index + 8].unk_180 = gActors[actor_index + 6].unk_180 - gScreenPosCurrentX.whole - gActors[0].posX.whole;
        gActors[actor_index + 9].unk_180 = gActors[actor_index + 7].unk_180 - gScreenPosCurrentY.whole - gActors[0].posY.whole;

        if (gActors[actor_index + 8].unk_180 < 0 && gActors[actor_index + 8].unk_180 != 0) {
            gActors[actor_index + 8].unk_180 = -gActors[actor_index + 8].unk_180;
        }

        if (gActors[actor_index + 9].unk_180 < 0 && gActors[actor_index + 9].unk_180 != 0) {
            gActors[actor_index + 9].unk_180 = -gActors[actor_index + 9].unk_180;
        }

        D_801A4190_75D630 = gActors[actor_index + 8].unk_180;
        D_801A4194_75D634 = gActors[actor_index + 9].unk_180;
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        func_800819A8(actor_index, D_801A32DC_75C77C);
        gActors[actor_index + 1].unk_12C = (f32)gActors[actor_index].unk_168 / 10000.0f;
    }
}

void func_8019C098_755538(u16 actor_index) {
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

void func_8019C160_755600(u16 actor_index) {
    if (gActors[actor_index].health <= 30 && gActors[actor_index + 8].unk_180 <= 160) {
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].state = 0x100;
        return;
    }

    if (gActors[actor_index + 8].unk_180 <= 128) {
        if (gActors[actor_index + 8].unk_180 <= 64) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
                    gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                }
                else if (D_800E3584 & 0x30000) {
                    gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                }
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }
            else if (D_800E3584 & 0x30000) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index + 14].unk_180 = 2;
            gActors[actor_index].state = 0x20;
            return;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].state = 0x200;
        return;
    }

    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
    }

    if (gActors[actor_index + 8].unk_180 > 256) {
        gActors[actor_index + 14].unk_180 = 2;
    }
    else if (gActors[actor_index + 8].unk_180 > 160) {
        gActors[actor_index + 14].unk_180 = 1;
    }
    else {
        gActors[actor_index + 14].unk_180 = 0;
    }

    gActors[actor_index].state = 0x20;
}

void func_8019C368_755808(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.015625));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-104)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }
}

void func_8019C3E8_755888(u16 actor_index) {
    func_8019C368_755808(actor_index);

    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].state = 0x50;
    }
}

s32 func_8019C464_755904(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x40;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK15);
        return 1;
    }

    return 0;
}

DEFAULT_INT func_8019C4D0_755970(u16 actor_index, s16 index) {
    gActors[actor_index + 3].graphicIndex = D_801A3C98_75D138[index];
}

void func_8019C520_7559C0(u16 actor_index, u8 index) {
    s8* temp_v1 = D_801A3CA4_75D144;

    temp_v1 += index * 4;

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

void func_8019C5C8_755A68(u16 actor_index) {
    func_8019BED4_755374(actor_index);
    func_8019C608_755AA8(actor_index);
    func_8019C098_755538(actor_index);
}

void func_8019C608_755AA8(u16 actor_index) {
    u16 sp2C;
    Actor* actor;
    s32 temp_v1;
    s32 var_v0;
    s16 var_t1;
    s16 temp_t5_3;
    s16 temp_v0_18;
    s16 var_t0_2;
    s8 temp_v0;

    actor = &gActors[actor_index];
    if ((s32)actor->state < 0x400) {
        sp2C = actor_index;

        temp_v0 = gActors[sp2C + 4].unk_180_s8[0];
        if (temp_v0 != 0) {
            if (temp_v0 >= 0x15) {
                Actor_SetColorRgb(actor_index, 0);
                gActors[sp2C + 4].unk_180_s8[1] = 0;
                gActors[sp2C + 4].unk_180_s8[0] = (s8)gActors[sp2C + 4].unk_180_s8[1];
            }
            else {
                gActors[sp2C + 4].unk_180_s8[1] = (s8)(gActors[sp2C + 4].unk_180_s8[1] - 1);

                if (gActors[sp2C + 4].unk_180_s8[1] <= 0) {
                    gActors[sp2C + 4].unk_180_s8[0] = (s8)(gActors[sp2C + 4].unk_180_s8[0] + 1);

                    if (gActors[sp2C + 4].unk_180_s8[0] & 1) {
                        Actor_SetColorRgb(actor_index, 0);
                    }
                    else {
                        Actor_SetColorRgb(actor_index, 0x7F);
                    }

                    gActors[sp2C + 4].unk_180_s8[1] = 4;
                }
            }
        }

        func_801A0E80_75A320(actor_index);

        if (actor->flags_098 & 0x200) {
            if (gActors[sp2C + 12].unk_180 == 0) {
                Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            }

            D_801A41B6_75D656 -= 1;
            if (D_801A41B6_75D656 <= 0) {
                func_801A3078_75C518((u16)(sp2C + 3), (s16)((Rand() & 0xF) - 7), 0xC);
                D_801A41B6_75D656 = 4;
            }

            temp_t5_3 = (Rand() & 3) - 2;

            if (actor->flags & ACTOR_FLAG_UNK17 && actor->velocityY.raw > 0) {
                actor->pos[1].parts[0] -= temp_t5_3;
            }

            if (actor->flags & ACTOR_FLAG_FLIPPED) {
                gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
            }
            else {
                gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
            }

            gActors[sp2C + 12].unk_180++;
            if (gActors[sp2C + 12].unk_180 >= 0x78) {
                func_800340CC(actor_index, 0xE, 0);
                gPlayerActor.flags_098 |= 0x10000;
                gPlayerActor.unk_0FC.raw = FIXED_UNIT(1);

                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    gPlayerActor.unk_0F8.raw = FIXED_UNIT(2);\
                }\
                else {\
                    gPlayerActor.unk_0F8.raw = -FIXED_UNIT(2);
                }
            }
        }
        else {
            gActors[sp2C + 12].unk_180 = 0;
        }

        if (actor->health <= 0) {
            temp_v1 = actor->state;

            if (temp_v1 >= 0x100 && temp_v1 < 0x105) {
                gActors[sp2C + 5].unk_180_s8[1] = 1;
            }

            actor->state = 0x400;
        }
    }
    else {
        sp2C = actor_index;
        if (gActors[sp2C + 5].unk_180_s8[1] != 0) {
            temp_v0 = gActors[sp2C + 4].unk_180_s8[0];
            if (temp_v0 != 0) {
                if (temp_v0 >= 0x15) {
                    Actor_SetColorRgb(actor_index, 0);
                    gActors[sp2C + 4].unk_180_s8[1] = 0;

                    gActors[sp2C + 4].unk_180_s8[0] = (s8)gActors[sp2C + 4].unk_180_s8[1];
                }
                else {
                    gActors[sp2C + 4].unk_180_s8[1] = (s8)(gActors[sp2C + 4].unk_180_s8[1] - 1);

                    if (gActors[sp2C + 4].unk_180_s8[1] <= 0) {
                        gActors[sp2C + 4].unk_180_s8[0] = (s8)(gActors[sp2C + 4].unk_180_s8[0] + 1);

                        if (gActors[sp2C + 4].unk_180_s8[0] & 1) {
                            actor->colorB = 0x2F;
                        }
                        else {
                            actor->colorB = 0x7F;
                        }

                        gActors[sp2C + 4].unk_180_s8[1] = 4;
                    }
                }
            }
        }
        else {
            temp_v0 = gActors[sp2C + 4].unk_180_s8[0];
            if (temp_v0 != 0) {
                if (temp_v0 >= 0x15) {
                    Actor_SetColorRgb(actor_index, 0);
                    gActors[sp2C + 4].unk_180_s8[1] = 0;
                    gActors[sp2C + 4].unk_180_s8[0] = (s8)gActors[sp2C + 4].unk_180_s8[1];
                }
                else {
                    gActors[sp2C + 4].unk_180_s8[1] = (s8)(gActors[sp2C + 4].unk_180_s8[1] - 1);

                    if (gActors[sp2C + 4].unk_180_s8[1] <= 0) {
                        gActors[sp2C + 4].unk_180_s8[0] = (s8)(gActors[sp2C + 4].unk_180_s8[0] + 1);

                        if (gActors[sp2C + 4].unk_180_s8[0] & 1) {
                            Actor_SetColorRgb(actor_index, 0);
                        }
                        else {
                            Actor_SetColorRgb(actor_index, 0x7F);
                        }

                        gActors[sp2C + 4].unk_180_s8[1] = 4;
                    }
                }
            }
        }
    }

    switch ((u16)actor->state) {
    case 0:
        func_8019BCD4_755174(actor_index);
        actor->state = 0x10;
        gActors[actor_index + 5].unk_180_s8[1] = 0;
        break;

    case 0x400:
        actor->state += 1;
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;\
        actor->flags_098 &= ~0x20;

        if (gActors[actor_index + 5].unk_180_s8[1] != 0) {
            func_8019B21C_7546BC(actor_index);
            func_801A2738_75BBD8(actor_index, 0, 0, 0x28);

            for (var_t1 = -0x18, var_t0_2 = 0; var_t0_2 < 3; var_t0_2++) {
                temp_v1 = (u16)func_801A2894_75BD34(actor_index, 0, 0, 0x32);
                gActors[temp_v1].unk_164 = (s32)var_t1;
                gActors[temp_v1].var_150 = sp2C;
                var_t1 += 0x18;
            }
        }
        else {
            gActors[actor->parentIndex].flags_098 |= 0x10000;
        }

        func_80081790(actor_index, D_801A3BCC_75D06C);
        actor->velocityY.raw = FIXED_UNIT(4.5);

        if (actor->flags & ACTOR_FLAG_FLIPPED) {
            actor->velocityX.raw = FIXED_UNIT(3);
        }
        else {
            actor->velocityX.raw = -FIXED_UNIT(3);
        }

        func_8019C520_7559C0(actor_index, 2);
        gActors[actor_index + 4].unk_180_s8[0] = 1;
        break;\
    case 0x401:
        func_8019C368_755808(actor_index);

        temp_v1 = actor->velocityY.raw;
        if (temp_v1 < 0 && actor->flags_098 & 0x20) {
            actor->state += 1;
            actor->velocityY.raw = -(temp_v1 >> 1);
            actor->velocityX.raw = (s32)actor->velocityX.raw >> 1;
            func_801A1B4C_75AFEC(actor_index, 0x18, -4);
            func_801A1CD8_75B178(actor_index, -0x18, -4);
        }
        break;

    case 0x402:
        func_8019C368_755808(actor_index);

        if (actor->velocityY.raw < 0) {
            if (actor->flags_098 & 0x20) {
                actor->state += 1;\
                actor->flags |= ACTOR_FLAG_UNK16;\
                actor->flags &= ~ACTOR_FLAG_UNK17;\
                actor->flags_098 &= ~0x40;
                actor->velocityX.raw = 0;
                actor->velocityY.raw = 0;
                func_801A1E64_75B304(actor_index, 0x10, 4);
                func_801A1FF0_75B490(actor_index, -0x10, 4);

                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index + 2].unk_180_s16[1] = -0xC00;
                }
                else {
                    gActors[actor_index + 2].unk_180_s16[1] = 0xC00;
                }

                gActors[actor_index + 3].unk_180_s16[0] = 8;
            }
        }
        break;

    case 0x403:
        temp_v1 = actor->flags & ACTOR_FLAG_FLIPPED;
        if ((temp_v1 && (actor->velocityX.raw <= 0)) || (!temp_v1 && (actor->velocityX.raw >= 0))) {
            actor->state += 1;
            gActors[actor_index + 2].unk_180_s16[1] = 0x3C;
            Actor_SetColorRgb(actor_index, 0);
            gStageState += 1;

            for (var_t0_2 = 0; var_t0_2 < 0x16; var_t0_2++) {
                gActors[sp2C + var_t0_2].flags &= 0xFFFF4AFF;
            }
        }
        else {
            actor->velocityX.raw += gActors[actor_index + 2].unk_180_s16[1];
            gActors[actor_index + 3].unk_180_s16[0] = (s16)(gActors[actor_index + 3].unk_180_s16[0] - 1);

            if (gActors[actor_index + 3].unk_180_s16[0] <= 0) {
                func_801A2494_75B934(actor_index, 0, -2);
                gActors[actor_index + 3].unk_180_s16[0] = 8;
            }
        }
        break;

    case 0x404:
        gActors[actor_index + 2].unk_180_s16[1] = (s16)(gActors[actor_index + 2].unk_180_s16[1] - 1);
        if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
            actor->state = 0x500;
        }
        break;

    case 0x500:
        if (gActors[actor_index + 5].unk_180_s8[1] != 0) {
            if (YellowGem_GetFlag(gCurrentStage) == 0) {
                SpawnGemActor((u16)(sp2C + 0x17), 0x12, 0);
            }
            else {
                SpawnGemActor((u16)(sp2C + 0x17), 0x13, 0);
            }
        }

        gActors[D_801A41D8_75D678].colorA = 0;
        func_80081720(actor_index, D_801A32DC_75C77C, 3);
        actor->state += 1;
        break;

    case 0x501:
        actor->flags = 0;
        actor->state += 1;
        break;

    case 0x502:
        break;

    case 0x10:
        actor->state += 1;
        actor->flags |= ACTOR_FLAG_UNK16;
        actor->flags &= ~ACTOR_FLAG_UNK17;\
        actor->flags_098 &= ~0x40;
        actor->velocityY.raw = 0;
        func_8019C520_7559C0(actor_index, 0);
        func_80081790(actor_index, D_801A3B34_75CFD4);

    case 0x11:
        func_8019C160_755600(actor_index);
        break;

    case 0x20:
        actor->state += 1;
        func_80081790(actor_index, D_801A3B44_75CFE4);

    case 0x21:
        if (actor->unk_11C < 0.0f) {
            actor->state += 1;
            actor->flags |= ACTOR_FLAG_UNK17;
            actor->flags &= ~ACTOR_FLAG_UNK16;\
            actor->flags_098 &= ~0x20;
            var_t1 = gActors[actor_index + 14].unk_180 * 2;
            gActors[actor_index].velocityX.raw = (s32)((gActors[actor_index + 1].unk_12C * gActors[actor_index + 1].unk_130) * (f32)D_801A3C1C_75D0BC[var_t1]);
            var_t1++;
            actor->velocityY.raw = (s32)((f32)D_801A3C1C_75D0BC[var_t1] * gActors[actor_index + 1].unk_12C);
            func_80081790(actor_index, D_801A3B58_75CFF8);
            func_801A19D8_75AE78(actor_index, -8, -0xC);
            Sound_PlaySfxAtActor2(SFX_BOING_0082, actor_index);
        }
        break;

    case 0x22:
        actor->velocityY.raw += FIXED_UNIT(-0.3125f) * gActors[actor_index + 1].unk_12C;
        if (actor->velocityY.raw < 0) {
            actor->state += 1;
            func_80081790(actor_index, D_801A3B6C_75D00C);
        }
        break;

    case 0x23:
        if (actor->velocityY.raw > FIXED_UNIT(-4)) {
            actor->velocityY.raw += FIXED_UNIT(-0.375f) * gActors[actor_index + 1].unk_12C;
        }

        if (actor->flags_098 & 0x20) {
            actor->state += 1;\
            actor->flags |= ACTOR_FLAG_UNK16;\
            actor->flags &= ~ACTOR_FLAG_UNK17;\
            actor->flags_098 &= ~0x40;
            actor->velocityY.raw = 0;
            func_80081790(actor_index, D_801A3B80_75D020);
            func_801A1E64_75B304(actor_index, 0, -0x10);
            func_801A1FF0_75B490(actor_index, -0x10, -0x10);
            Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        }
        break;

    case 0x24:
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.1875));

        if (actor->unk_11C < 0.0f) {
            actor->velocityX.raw = 0;
            actor->state = 0x10;
        }
        break;

    case 0x40:
        actor->state += 1;
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;\
        actor->flags_098 &= ~0x20;

    case 0x41:
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.03125));
        func_8019C3E8_755888(actor_index);
        break;

    case 0x50:
        actor->state += 1;
        actor->flags |= ACTOR_FLAG_UNK16;\
        actor->flags &= ~ACTOR_FLAG_UNK17;\
        actor->flags_098 &= ~0x40;
        actor->velocityY.raw = 0;

    case 0x51:
        actor->state = 0x10;
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.15625));
        func_8019C464_755904(actor_index);
        break;

    case 0x200:
        actor->state += 1;
        func_80081790(actor_index, D_801A3B94_75D034);
        break;

    case 0x201:
        if (actor->unk_11C < 0.0f) {
            actor->state += 1;
            func_8019C4D0_755970(actor_index, 3);
            func_8019E55C_7579FC(actor_index, 0);
            Sound_PlaySfxAtActor2(SFX_006D, actor_index);
        }
        break;

    case 0x202:
        temp_v1 = gActors[actor_index + 1].unk_180;
        if (temp_v1 & 0x80000000) {
            if (temp_v1 & 0x20000000) {
                actor->state = 0x80;
                gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0xDFFFFFFF);
            }
            else if (temp_v1 & 0x40000000) {
                actor->state = 0x70;
                gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0xBFFFFFFF);
            }
            else {
                actor->state = 0x10;
                func_8019C4D0_755970(actor_index, 0);
                func_80081790(actor_index, D_801A3B34_75CFD4);
            }

            gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0x7FFFFFFF);
        }
        break;

    case 0x300:
        actor->state += 1;
        func_80081790(actor_index, D_801A3B94_75D034);
        break;

    case 0x301:
        if (actor->unk_11C < 0.0f) {
            actor->state += 1;
            func_8019C4D0_755970(actor_index, 3);
            func_8019E55C_7579FC(actor_index, 1);
            Sound_PlaySfxAtActor2(SFX_006D, actor_index);
        }
        break;

    case 0x302:
        temp_v1 = gActors[actor_index + 1].unk_180;
        if (temp_v1 & 0x80000000) {
            if (temp_v1 & 0x20000000) {
                actor->state = 0x80;
                gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0xDFFFFFFF);
            }
            else if (temp_v1 & 0x40000000) {
                actor->state = 0x70;
                gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0xBFFFFFFF);
            }
            else {
                actor->state = 0x10;
                func_8019C4D0_755970(actor_index, 0);
                func_80081790(actor_index, D_801A3B34_75CFD4);
            }

            gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 & 0x7FFFFFFF);
        }
        break;

    case 0x100:
        actor->state += 1;
        actor->health = 1;
        gActors[actor_index + 2].unk_180_s16[0] = 0xF0;
        gActors[actor_index + 2].unk_180_s16[1] = 6;
        gActors[actor_index + 3].unk_180_s16[0] = 0;
        gActors[actor_index + 3].unk_180_s16[1] = 0;
        func_80081790(actor_index, D_801A3B34_75CFD4);
        break;

    case 0x101:
        gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] - 1);
        if (gActors[actor_index + 2].unk_180_s16[0] <= 0) {
            actor->state += 1;
            gActors[actor_index + 2].unk_180_s16[0] = 0xF0;
            gActors[actor_index + 2].unk_180_s16[1] = 8;
            gActors[actor_index + 3].unk_180_s16[0] = 0;
            gActors[actor_index + 4].unk_180_s8[3] = 0;
            gActors[actor_index + 5].unk_180_s16[1] = 0x64;
            func_8019C4D0_755970(actor_index, 0);
            func_801A1740_75ABE0(0, 0);
            func_8019B108_7545A8(actor_index);
            Sound_PlaySfxAtActor2(SFX_LAUGH_010A, actor_index);
        }
        else {
            gActors[actor_index + 2].unk_180_s16[1] = (s16)(gActors[actor_index + 2].unk_180_s16[1] - 1);
            if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
                if (gActors[actor_index + 3].unk_180_s16[0] == 0) {
                    gActors[actor_index + 3].unk_180_s16[1] = (s16)(gActors[actor_index + 3].unk_180_s16[1] + 1);

                    if (gActors[actor_index + 3].unk_180_s16[1] >= 2) {
                        gActors[actor_index + 3].unk_180_s16[0] = 1;
                    }
                }
                else {
                    gActors[actor_index + 3].unk_180_s16[1] = (s16)(gActors[actor_index + 3].unk_180_s16[1] - 1);
                    if (gActors[actor_index + 3].unk_180_s16[1] <= 0) {
                        gActors[actor_index + 3].unk_180_s16[0] = 0;
                    }
                }

                func_8019C4D0_755970(actor_index, gActors[actor_index + 3].unk_180_s16[1]);
                gActors[actor_index + 2].unk_180_s16[1] = 6;
            }

            if (gActors[actor_index + 2].unk_180_s16[0] < 0xDC && gActors[actor_index + 2].unk_180_s16[0] & 1) {
                gActors[D_801A41D8_75D678].colorA += 1;
            }
        }
        break;

    case 0x102:
        gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] - 1);
        if (gActors[actor_index + 2].unk_180_s16[0] <= 0) {
            actor->state += 1;
            gActors[actor_index + 2].unk_180_s16[0] = 0;
            gActors[actor_index + 2].unk_180_s16[1] = 0x14;
            gActors[actor_index + 5].unk_180_s16[1] = 0;
            func_8019C4D0_755970(actor_index, 0);
        }
        else {
            temp_v1 = gActors[actor_index + 5].unk_180_s16[1];
            if (temp_v1 > 0) {
                gActors[actor_index + 5].unk_180_s16[1] = (s16)(temp_v1 - 1);
                gActors[actor_index + 5].unk_180_s8[0] = (s8)(gActors[actor_index + 5].unk_180_s8[0] - 1);

                if (gActors[actor_index + 5].unk_180_s8[0] <= 0) {
                    if (gActors[actor_index + 4].unk_180_s8[3] & 1) {
                        var_v0 = 3;
                    }
                    else {
                        var_v0 = 0;
                    }

                    func_8019C4D0_755970(actor_index, var_v0);
                    gActors[actor_index + 5].unk_180_s8[0] = (s8)D_801A3CB4_75D154[gActors[actor_index + 4].unk_180_s8[3]++];
                }
            }

            gActors[actor_index + 2].unk_180_s16[1] = (s16)(gActors[actor_index + 2].unk_180_s16[1] - 1);
            if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
                if (gActors[D_801A41D8_75D678].colorA == 0) {
                    gActors[D_801A41D8_75D678].colorA = 0x6E;
                    gActors[actor_index + 2].unk_180_s16[1] = (s16)(Rand() & 7);
                }
                else if (gActors[actor_index + 3].unk_180_s16[0] >= 7) {
                    gActors[actor_index + 3].unk_180_s16[0] = 0;
                    gActors[actor_index + 2].unk_180_s16[1] = (s16)(Rand() & 0x3F);
                }
                else {
                    gActors[D_801A41D8_75D678].colorA = 0;
                    gActors[actor_index + 2].unk_180_s16[1] = 1;
                    gActors[actor_index + 3].unk_180_s16[0] = (s16)(gActors[actor_index + 3].unk_180_s16[0] + 1);
                }
            }

            if (gActors[actor_index + 2].unk_180_s16[0] < 0x1F && D_801A41AC_75D64C == 0) {
                func_801A1740_75ABE0(0, 0);
                D_801A41AC_75D64C = 1;
                D_801A41AE_75D64E = 0x438;
                D_801A41A8_75D648 = 0;
                D_801A41B2_75D652 = D_801A41A8_75D648;
                D_801A41AA_75D64A = D_801A41B2_75D652;
                D_801A41B4_75D654 = 0;

                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    if (D_800E3584 & 0x30000) {
                        D_801A41B0_75D650 = 1;
                    }
                    else {
                        D_801A41B0_75D650 = 0;
                    }
                }
                else if (D_800E3584 & 0x30000) {
                    D_801A41B0_75D650 = 0;
                }
                else {
                    D_801A41B0_75D650 = 1;
                }
            }
        }
        break;

    case 0x103:
        if (D_801A41AC_75D64C == 0 && gActors[actor_index + 2].unk_180_s16[0] == 0) {
            actor->state += 1;
            func_8019B21C_7546BC(actor_index);
        }
        else {
            if ((Rand() & 0xFF) == 7) {
                func_801A1740_75ABE0(0, 0);
            }

            temp_v0_18 = gActors[actor_index + 2].unk_180_s16[0];
            switch (temp_v0_18) {
            case 0:
                gActors[actor_index + 5].unk_180_s16[1] = (s16)(gActors[actor_index + 5].unk_180_s16[1] - 1);

                if (gActors[actor_index + 5].unk_180_s16[1] <= 0) {
                    if (gActors[actor_index + 8].unk_180 < 0x81) {
                        gActors[actor_index + 2].unk_180_s16[0] = 1;\
                    }\
                    else {\
                        gActors[actor_index + 2].unk_180_s16[0] = 2;
                    }
                }
                break;

            case 1:
                if ((Rand() & 7) == 6) {
                    gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] + 1);
                }
                else {
                    gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] + 2);

                    if (actor->flags & ACTOR_FLAG_FLIPPED) {
                        if (actor->flags_098 & 4) {
                            actor->flags ^= ACTOR_FLAG_FLIPPED;
                        }
                        else if (D_800E3584 & 0x30000) {
                            actor->flags ^= ACTOR_FLAG_FLIPPED;
                        }
                    }
                    else if (actor->flags_098 & 8) {
                        actor->flags ^= ACTOR_FLAG_FLIPPED;
                    }
                    else if (D_800E3584 & 0x30000) {
                        actor->flags ^= ACTOR_FLAG_FLIPPED;
                    }

                    func_80081790(actor_index, D_801A3B44_75CFE4);
                }
                break;

            case 2:
                gActors[actor_index + 2].unk_180_s16[0] = (s16)(temp_v0_18 + 1);

                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    if (actor->flags_098 & 4) {
                        actor->flags ^= ACTOR_FLAG_FLIPPED;
                    }
                    else if (D_800E3584 & 0xC0000) {
                        actor->flags ^= ACTOR_FLAG_FLIPPED;
                    }
                }
                else if (actor->flags_098 & 8) {
                    actor->flags ^= ACTOR_FLAG_FLIPPED;
                }
                else if (D_800E3584 & 0xC0000) {
                    actor->flags ^= ACTOR_FLAG_FLIPPED;
                }

                func_80081790(actor_index, D_801A3B44_75CFE4);
                break;

            case 3:
                if (actor->unk_11C < 0.0f) {
                    gActors[actor_index + 2].unk_180_s16[0] = (s16)(temp_v0_18 + 1);
                    Sound_PlaySfxAtActor2(SFX_LAUGH_010A, actor_index);
                    func_8019C4D0_755970(actor_index, 3);\
                    actor->flags |= ACTOR_FLAG_UNK17;\
                    actor->flags &= ~ACTOR_FLAG_UNK16;\
                    actor->flags_098 &= ~0x20;
                    actor->velocityX.raw = (s32)((gActors[actor_index + 1].unk_12C * gActors[actor_index + 1].unk_130) * (f32)D_801A3C3C_75D0DC[Rand() & 3]);
                    actor->velocityY.raw = D_801A3C4C_75D0EC[Rand() & 3];
                    func_80081790(actor_index, D_801A3B58_75CFF8);
                    func_801A19D8_75AE78(actor_index, -8, -0xC);
                    Sound_PlaySfxAtActor2(SFX_BOING_0082, actor_index);
                }
                break;

            case 4:
                func_8019C368_755808(actor_index);

                if (actor->velocityY.raw < 0) {
                    gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] + 1);
                    func_8019C4D0_755970(actor_index, 0);
                    func_80081790(actor_index, D_801A3B6C_75D00C);
                }
                break;

            case 5:
                func_8019C368_755808(actor_index);

                if (actor->flags_098 & 0x20) {
                    gActors[actor_index + 2].unk_180_s16[0] = 0xA;
                    actor->flags |= ACTOR_FLAG_UNK16;
                    actor->flags &= ~ACTOR_FLAG_UNK17;\
                    actor->flags_098 &= ~0x40;
                    actor->velocityX.raw = 0;
                    actor->velocityY.raw = 0;
                    func_80081790(actor_index, D_801A3B80_75D020);
                    func_801A1E64_75B304(actor_index, 0, -0x10);
                    func_801A1FF0_75B490(actor_index, -0x10, -0x10);
                    Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
                }
                break;

            case 10:
                if (D_800E3584 & 0xC0000) {
                    if (actor->flags & ACTOR_FLAG_FLIPPED) {
                        actor->flags = actor->flags & ~ACTOR_FLAG_FLIPPED;
                    }
                    else {
                        actor->flags = actor->flags | ACTOR_FLAG_FLIPPED;
                    }
                }

                if ((Rand() & 3) == 2) {
                    gActors[actor_index + 5].unk_180_s16[1] = (s16)((Rand() & 0x3F) + 0x3C);
                }
                else {
                    gActors[actor_index + 5].unk_180_s16[1] = 0;
                }

                gActors[actor_index + 2].unk_180_s16[0] = 0;
                break;
            }

            gActors[actor_index + 2].unk_180_s16[1] = (s16)(gActors[actor_index + 2].unk_180_s16[1] - 1);
            if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
                if (gActors[D_801A41D8_75D678].colorA == 0) {
                    gActors[D_801A41D8_75D678].colorA = 0x6E;
                    gActors[actor_index + 2].unk_180_s16[1] = (s16)(Rand() & 7);
                }
                else if (gActors[actor_index + 3].unk_180_s16[0] >= 7) {
                    gActors[actor_index + 3].unk_180_s16[0] = 0;
                    gActors[actor_index + 2].unk_180_s16[1] = (s16)(Rand() & 0x7F);
                }
                else {
                    gActors[D_801A41D8_75D678].colorA = 0;
                    gActors[actor_index + 2].unk_180_s16[1] = 1;
                    gActors[actor_index + 3].unk_180_s16[0] = (s16)(gActors[actor_index + 3].unk_180_s16[0] + 1);
                }
            }
        }
        break;

    case 0x104:
        if (gActors[D_801A41D8_75D678].colorA != 0) {
            gActors[D_801A41D8_75D678].colorA--;
        }
        else {
            actor->state = 0x10;
            actor->flags |= 0x1000;
        }
        break;

    case 0x70:
        actor->state += 1;
        func_8019C4D0_755970(actor_index, 2);
        func_80081790(actor_index, D_801A3B34_75CFD4);
        gActors[actor_index + 2].unk_180_s16[0] = 0xB4;
        gActors[actor_index + 2].unk_180_s16[1] = 8;
        gActors[actor_index + 3].unk_180_s16[0] = 2;
        Sound_PlaySfxAtActor2(SFX_012A, actor_index);
        break;

    case 0x71:
        gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] - 1);

        if (gActors[actor_index + 2].unk_180_s16[0] <= 0) {
            actor->state += 1;
            func_80081790(actor_index, D_801A3BB0_75D050);
            D_800BE544 = 0;
        }
        else {
            D_800BE544 = (u16)actor_index;
            gActors[actor_index + 2].unk_180_s16[1] = (s16)(gActors[actor_index + 2].unk_180_s16[1] - 1);

            if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
                if (gActors[actor_index + 3].unk_180_s16[0] == 1) {
                    gActors[actor_index + 3].unk_180_s16[0] = 2;
                }
                else {
                    gActors[actor_index + 3].unk_180_s16[0] = 1;
                }

                func_8019C4D0_755970(actor_index, gActors[actor_index + 3].unk_180_s16[0]);
                gActors[actor_index + 2].unk_180_s16[1] = 0xA;
            }
        }
        break;

    case 0x72:
        if (actor->unk_11C < 0.0f) {
            actor->state += 1;
            func_8019C4D0_755970(actor_index, 3);
            gActors[actor_index + 1].unk_180 = (s32)(gActors[actor_index + 1].unk_180 | 0x08000000);
            gActors[actor_index + 2].unk_180_s16[0] = 0x1E;
            Sound_PlaySfxAtActor2(SFX_CHIRP_010C, actor_index);
        }
        break;

    case 0x73:
        gActors[actor_index + 2].unk_180_s16[0] = (s16)(gActors[actor_index + 2].unk_180_s16[0] - 1);

        if (gActors[actor_index + 2].unk_180_s16[0] <= 0) {
            actor->state = 0x10;
            func_8019C4D0_755970(actor_index, 0);
            func_80081790(actor_index, D_801A3B34_75CFD4);
        }
        break;

    case 0x80:
        actor->state += 1;
        actor->flags |= ACTOR_FLAG_UNK17;
        actor->flags &= ~ACTOR_FLAG_UNK16;\
        actor->flags_098 &= ~0x20;
        func_80081790(actor_index, D_801A3BCC_75D06C);
        actor->velocityY.raw = FIXED_UNIT(4.5);

        if (actor->flags & ACTOR_FLAG_FLIPPED) {
            actor->velocityX.raw = FIXED_UNIT(3);
        }
        else {
            actor->velocityX.raw = -FIXED_UNIT(3);
        }

        func_8019C520_7559C0(actor_index, 2);
        gActors[actor_index + 4].unk_180_s8[0] = 1;
        Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
        break;

    case 0x81:
        actor->state += 1;
        Sound_PlaySfxAtActor2(SFX_ROAR_0138, actor_index);
        break;

    case 0x82:
        func_8019C368_755808(actor_index);
        temp_v1 = actor->velocityY.raw;

        if (temp_v1 < 0 && actor->flags_098 & 0x20) {
            actor->state += 1;
            actor->velocityY.raw = -(temp_v1 >> 1);
            actor->velocityX.raw = (s32)actor->velocityX.raw >> 1;
            func_801A1B4C_75AFEC(actor_index, 0x18, -4);
            func_801A1CD8_75B178(actor_index, -0x18, -4);
            Sound_PlaySfxAtActor2(SFX_0068, actor_index);
        }
        break;

    case 0x83:
        func_8019C368_755808(actor_index);

        if (actor->velocityY.raw < 0) {
            if (actor->flags_098 & 0x20) {
                actor->state += 1;\
                actor->flags |= ACTOR_FLAG_UNK16;\
                actor->flags &= ~ACTOR_FLAG_UNK17;\
                actor->flags_098 &= ~0x40;
                actor->velocityX.raw = 0;
                actor->velocityY.raw = 0;
                func_801A1E64_75B304(actor_index, 0x10, 4);
                func_801A1FF0_75B490(actor_index, -0x10, 4);

                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index + 2].unk_180_s16[1] = -0xC00;
                }
                else {
                    gActors[actor_index + 2].unk_180_s16[1] = 0xC00;
                }

                gActors[actor_index + 3].unk_180_s16[0] = 8;
                Sound_PlaySfxAtActor2(SFX_0068, actor_index);
            }
        }
        break;

    case 0x84:
        temp_v1 = actor->flags & ACTOR_FLAG_FLIPPED;
        if ((temp_v1 && (actor->velocityX.raw <= 0)) || (!temp_v1 && (actor->velocityX.raw >= 0))) {
            actor->velocityX.raw = 0;
            actor->health -= 0x14;

            if (actor->health <= 0) {
                actor->state = 0x403;
            }
            else {
                actor->state = 0x90;
            }
        }
        else {
            actor->velocityX.raw += gActors[actor_index + 2].unk_180_s16[1];
            gActors[actor_index + 3].unk_180_s16[0] = (s16)(gActors[actor_index + 3].unk_180_s16[0] - 1);

            if (gActors[actor_index + 3].unk_180_s16[0] <= 0) {
                func_801A2494_75B934(actor_index, 0, -2);
                gActors[actor_index + 3].unk_180_s16[0] = 8;
            }
        }
        break;

    case 0x90:
        actor->state += 1;
        func_80081790(actor_index, D_801A3BE8_75D088);
        func_8019C4D0_755970(actor_index, 0);
        break;

    case 0x91:
        if (actor->unk_16C & 1) {
            actor->state += 1;
            actor->velocityY.raw = FIXED_UNIT(4);
            actor->flags |= ACTOR_FLAG_UNK17;
            actor->flags &= ~ACTOR_FLAG_UNK16;\
            actor->flags_098 &= ~0x20;
        }
        break;\
    case 0x92:
        func_8019C368_755808(actor_index);

        if (actor->pos[1].parts[0] < 0 &&  ((actor->flags_098 & 0x20) != 0)) {
            actor->state += 1;
            actor->velocityY.raw = 0;
            actor->flags |= ACTOR_FLAG_UNK16;\
            actor->flags &= ~ACTOR_FLAG_UNK17;\
            actor->flags_098 &= ~0x40;
        }
        else if (actor->velocityY.raw < 0) {
            func_8019C520_7559C0(actor_index, 0);
        }
        break;

    case 0x93:
        actor->state = 0x10;
        func_80081790(actor_index, D_801A3B34_75CFD4);
        break;
    }
}

void func_8019E55C_7579FC(u16 actor_index, s16 arg1) {
    u16 new_actor_index;
    u16 index;
    s32 var_v0;

    new_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
    if (new_actor_index) {
        gActors[new_actor_index].actorType = 0x1305;
        index = new_actor_index;
        Actor_Initialize(index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_v0 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_v0 + ACTOR_FLAG_ENABLED;
        var_v0 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -20 : 18;
        gActors[new_actor_index].posX.whole = var_v0 - (0 - gActors[actor_index].posX.whole);
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 2;
        gActors[new_actor_index].colorR = 0x7F;
        gActors[new_actor_index].colorG = 6;
        gActors[new_actor_index].colorB = 0x1E;
        gActors[new_actor_index].colorA = 0xBF;
        gActors[new_actor_index].scaleX = (arg1 == 0) ? 4.4 : 1.4;
        gActors[new_actor_index].scaleY = (arg1 == 0) ? 1.0 : 0.6;
        gActors[new_actor_index].graphicList = (arg1 == 0) ? D_801A3C68_75D108 : D_801A3C5C_75D0FC;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].state = 0;
        gActors[new_actor_index].var_150 = actor_index;
        gActors[actor_index].unk_180 = 0;
        gActors[new_actor_index].var_158 = (arg1 == 0) ? 1 : 2;
        gActors[new_actor_index].var_15C = Rand() & 3;
        gActors[new_actor_index].grabType = GRABTYPE_22;
        gActors[new_actor_index].unk_0DF = ACTOR0DF_6;
    }

    index = Actor_RangeFindInactive(0x70, 0x7A);
    if (index) {
        gActors[index].actorType = 0x1304;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_v0 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;

        gActors[index].flags = var_v0 + ACTOR_FLAG_PLATFORM0 + ACTOR_FLAG_ENABLED;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            var_v0 = -24;
        }
        else {
            var_v0 = 22;
        }

        gActors[index].posX.whole = var_v0 - (0 - gActors[actor_index].posX.whole);
        gActors[index].posY.whole = gActors[actor_index].posY.whole;
        gActors[index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[index].colorR = 0;
        gActors[index].colorG = 0;
        gActors[index].colorB = 0;
        gActors[index].colorA = 0xFF;
        gActors[index].scaleX = 0.2f;
        gActors[index].scaleY = 1.0f;
        gActors[index].graphicIndex = 0x814;
        gActors[index].var_150 = actor_index;
        gActors[index].state = 0;
        gActors[index].var_158 = 0;
        gActors[index].unk_0DF = ACTOR0DF_6;
    }

    if ((new_actor_index != 0) && index) {
        gActors[new_actor_index].var_154 = index;
        gActors[index].var_154 = new_actor_index;
    }
}

void func_8019E910_757DB0(u16 actor_index) {
    u16 parent_index = gActors[actor_index].parentIndex;
    s32 temp_v0;

    gActors[parent_index].flags_098 = ACTOR_FLAG3_GRAB;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        temp_v0 = FIXED_UNIT(16);
    }
    else {
        temp_v0 = -FIXED_UNIT(16);
    }

    gActors[parent_index].unk_104 = temp_v0 - (0U - gActors[actor_index].posX.raw);
    gActors[parent_index].unk_108 = gActors[actor_index].posY.raw;
    gActors[parent_index].unk_10C = gActors[actor_index].posZ.raw - FIXED_UNIT(1);
}

void func_8019E99C_757E3C(u16 actor_index) {
    u16 index = gActors[actor_index].var_150_s16[1];
    u16 parent_index = gActors[actor_index].parentIndex;

    gActors[parent_index].flags_098 = ACTOR_FLAG3_GRAB;
    gActors[parent_index].unk_104 = gActors[index + 3].posX.raw;
    gActors[parent_index].unk_108 = gActors[index + 3].posY.raw;
    gActors[parent_index].unk_10C = gActors[index + 3].posZ.raw - FIXED_UNIT(1);
}

void func_8019EA28_757EC8(u16 actor_index) {
    Actor* temp_s0;
    Actor* temp_t1;
    s16* temp_v0_2;
    s32 temp_v1;
    s32 temp_a0;
    f32 var_f2;
    s16 sp46;
    u16 parent_index;
    u32 var_v0;
    u16 sp3E;
    s8 temp_v0;
    Actor* temp_v0_3;

    temp_s0 = &gActors[actor_index];
    sp3E = temp_s0->var_154;

    if (temp_s0->var_158 & 0x100 && ++temp_s0->unk_180 >= 3) {
        temp_s0->unk_180 = 0;
        temp_s0->var_158 &= ~0x100;
    }

    if ((temp_s0->flags_098 & 0x100) && !(temp_s0->var_158 & 0x10)
        && (gActors[temp_s0->parentIndex].unk_0DF != 0x40)) {
        temp_s0->state = 100;
        gActors[sp3E].state = 2;
        temp_s0->flags &= ~0x1A00;
        temp_s0->var_158 |= 0x10;
        parent_index = temp_s0->parentIndex;
        temp_v0_3 = &gActors[parent_index];
        temp_v0_3->parentIndex = actor_index;
        temp_s0->colorA = 0;
        func_8019E910_757DB0(actor_index);
        temp_s0->unk_174 = 30;
    }

    if ((temp_s0->flags_098 & 0x200) && !(temp_s0->var_158 & 0x20)) {
        temp_s0->state = 200;
        temp_t1 = &gActors[sp3E];
        temp_t1->state = 2;
        temp_s0->flags &= ~0x1A00;
        temp_s0->var_158 |= 0x20;
        parent_index = temp_s0->parentIndex;
        temp_v0_3 = &gActors[parent_index];
        temp_v0_3->parentIndex = actor_index;
        temp_s0->posZ.whole = temp_v0_3->posZ.whole - 1;
        temp_t1->posZ.whole = temp_v0_3->posZ.whole - 1;
        gActors[temp_s0->var_150].posZ.whole = temp_v0_3->posZ.whole - 2;
        temp_s0->colorA = 0;
        temp_s0->unk_174 = (Rand() & 0x3F) + 148;
        func_801A2608_75BAA8((u16)temp_s0->var_150_s16[1] + 3, -16, 28, 10);
        temp_s0->unk_184 = gActors[(u16)temp_s0->var_150_s16[1]].posX.whole;
        temp_s0->unk_188 = gActors[(u16)temp_s0->var_150_s16[1]].posY.whole;
        temp_s0->unk_114 = (f32)(temp_s0->posX.raw - temp_t1->posX.raw);

        if (temp_s0->unk_114 < 0.0f) {
            temp_s0->unk_114 = -temp_s0->unk_114;
        }

        temp_s0->unk_118 = (f32)(temp_s0->posX.raw - gActors[(u16)temp_s0->var_150_s16[1] + 3].posX.raw);
        if (temp_s0->unk_118 < 0.0f) {
            temp_s0->unk_118 = -temp_s0->unk_118;
        }

        gActors[(u16)temp_s0->var_150_s16[1]].unk_128 = (u16)temp_s0->var_150_s16[1] + 3;
        gActors[(u16)temp_s0->var_150_s16[1]].unk_12C = (u16)temp_s0->var_150_s16[1] + 3;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
    }

    switch (temp_s0->state) {
    case 0:
        gActors[actor_index].state++;

        if (gActors[actor_index].var_158 & 1) {
            gActors[actor_index].flags |= 0x1600;
        }

        if (gActors[actor_index].var_158 & 2) {
            gActors[actor_index].flags |= 0x1C00;
        }

        gActors[actor_index].hitboxBY0 = 8;
        gActors[actor_index].hitboxBY1 = -8;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBX1 = 16;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 2;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 2;
        gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 + 2;
        gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 - 2;
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].hitFlags = HITFLAG_7;
        gActors[actor_index].hitType = HITTYPE_4;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(6);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(0.5);
        gActors[actor_index].damage = 24;
        sp46 = gActors[actor_index].var_15C * 2;

        var_v0 = gActors[(u16)gActors[actor_index].var_150_s16[1] + 8].unk_180;
        if ((s32)var_v0 >= 161) {
            var_v0 = 160;
        }

        gActors[actor_index].unk_170 = 0;
        temp_v1 = D_801A3CCC_75D16C[sp46];
        gActors[actor_index].unk_164 = temp_v1;
        var_v0 -= 16;
        gActors[actor_index].unk_168 = ((s32)var_v0 << 16) / temp_v1;

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_168 = -gActors[actor_index].unk_168;
        }

        SpawnCrosshair(15, actor_index);
        break;

    case 1:
        temp_s0->var_160 = temp_s0->posX.raw;
        temp_s0->posX.raw += temp_s0->unk_168;
        temp_s0->unk_170 += temp_s0->unk_168;

        if (--temp_s0->unk_164 <= 0) {
            temp_s0->state++;
            temp_s0->unk_16C = temp_s0->unk_168;
            temp_s0->unk_164 = -(temp_s0->unk_168 >> 3);
        }

        temp_s0->var_160 = temp_s0->posX.raw - temp_s0->var_160;
        if ((temp_s0->var_158 & 1) && (temp_s0->flags_098 & 1) && !(temp_s0->var_158 & 0x100)) {
            Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            temp_s0->var_158 |= 0x100;
            func_801A2608_75BAA8(actor_index, 0, 0, 20);
            Sound_PlaySfxAtActor2(SFX_MARINA_OW1, actor_index);
        }
        break;

    case 2:
        temp_s0->var_160 = temp_s0->posX.raw;
        temp_s0->posX.raw += temp_s0->unk_168;
        temp_s0->unk_170 += temp_s0->unk_168;
        temp_s0->unk_168 += temp_s0->unk_164;

        if (((temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_168 > -FIXED_UNIT(1))) || (!(temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_168 < FIXED_UNIT(1)))) {
            temp_s0->state++;
            gActors[sp3E].state++;
            temp_s0->flags &= ~0x200;
            if (temp_s0->var_158 & 1) {
                temp_s0->flags |= 0x1C00;
            }

            sp46 = temp_s0->var_15C * 2;
            sp46++;
            temp_s0->unk_174 = D_801A3CCC_75D16C[sp46];
            temp_s0->colorA = 0;
        }

        temp_s0->var_160 = temp_s0->posX.raw - temp_s0->var_160;
        if ((temp_s0->var_158 & 1) && (temp_s0->flags_098 & 1) && !(temp_s0->var_158 & 0x100)) {
            temp_s0->var_158 |= 0x100;
            func_801A2608_75BAA8(actor_index, 0, 0, 20);
        }
        break;

    case 3:
        if (--temp_s0->unk_174 <= 0) {
            temp_s0->state++;
            gActors[sp3E].state++;
            temp_s0->unk_16C = temp_s0->unk_168;
            temp_s0->flags &= ~0x1A00;
        }
        break;

    case 4:
        temp_s0->var_160 = temp_s0->posX.raw;
        temp_s0->posX.raw -= temp_s0->unk_168;
        temp_s0->unk_170 -= temp_s0->unk_168;
        temp_s0->unk_168 -= temp_s0->unk_164;

        if (((temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 >= -FIXED_UNIT(32))) || (!(temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 <= FIXED_UNIT(32)))) {
            gActors[sp3E].state++;
            temp_s0->graphicFlags = 0;
            temp_s0->flags = 0;
            gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 |= 0x80000000;
        }

        temp_s0->var_160 = temp_s0->posX.raw - temp_s0->var_160;
        break;

    case 100:
        func_8019E910_757DB0(actor_index);

        if (--temp_s0->unk_174 <= 0) {
            temp_s0->state++;
            gActors[sp3E].state = 3;
        }
        break;

    case 101:
        func_8019E910_757DB0(actor_index);
        temp_s0->var_160 = temp_s0->posX.raw;
        temp_s0->posX.raw -= temp_s0->unk_168;
        temp_s0->unk_170 -= temp_s0->unk_168;
        temp_s0->unk_168 -= temp_s0->unk_164;

        if (((temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 >= -FIXED_UNIT(32))) || (!(temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 <= FIXED_UNIT(32)))) {
            temp_s0->state++;
            gActors[sp3E].state++;
            gActors[temp_s0->parentIndex].flags &= ~ACTOR_FLAG_DRAW;
            gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 |= 0xC0000000;
        }

        temp_s0->var_160 = temp_s0->posX.raw - temp_s0->var_160;
        break;

    case 102:
        if (gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 & 0x08000000) {
            temp_s0->state++;
            temp_s0->hitFlags = 0x81;
            temp_s0->hitType = 3;
            gActors[temp_s0->parentIndex].hitType = 3;
            gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 &= ~0x08000000;
            gActors[temp_s0->parentIndex].flags |= ACTOR_FLAG_DRAW;
            gActors[temp_s0->parentIndex].flags_098 |= 0x400;

            if (temp_s0->flags & ACTOR_FLAG_FLIPPED) {
                gActors[temp_s0->parentIndex].unk_0F8.raw = FIXED_UNIT(-10);
            }
            else {
                gActors[temp_s0->parentIndex].unk_0F8.raw = FIXED_UNIT(10);
            }

            gActors[temp_s0->parentIndex].unk_0FC.raw = FIXED_UNIT(1);
            gActors[temp_s0->parentIndex].health -= 96;
        }
        else {
            func_8019E99C_757E3C(actor_index);
        }
        break;

    case 103:
        temp_s0->flags = 0;
        temp_s0->graphicFlags = 0;
        break;

    case 200:
        temp_s0->state++;
        temp_s0->unk_178_s8[1] = 0;
        temp_s0->var_110 = 0;
        temp_t1 = &gActors[sp3E];
        temp_t1->flags &= ~ACTOR_FLAG_PLATFORM0;
        temp_s0->base_0F8_s32[15] = gActors->posX.raw;
        temp_s0->base_0F8_s32[16] = gActors->posY.raw;

        if (gActors->flags & ACTOR_FLAG_FLIPPED) {
            temp_s0->unk_13C_s8 = 1;
        }
        else {
            temp_s0->unk_13C_s8 = 0;
        }
        // fallthrough

    case 201:
        temp_s0->unk_174--;

        if (temp_s0->flags & ACTOR_FLAG_FLIPPED) {
            gActors->flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors->flags |= ACTOR_FLAG_FLIPPED;
        }

        if (temp_s0->unk_178_s8[1] != 0) {
            D_801A41B6_75D656--;

            if (D_801A41B6_75D656 <= 0) {
                func_801A3078_75C518((u16)temp_s0->var_150_s16[1] + 3, (Rand() & 0xF) - 7, 12);
                D_801A41B6_75D656 = 4;
            }
        }

        if (gActors[(u16)temp_s0->var_150_s16[1]].state >= 0x400) {
            temp_s0->unk_174 = 0;
        }

        if ((!(temp_s0->flags_098 & ACTOR_FLAG3_GRAB) && (temp_s0->flags_098 & ACTOR_FLAG3_THROWN)) || (gActors[(u16)temp_s0->var_150_s16[1]].state >= 0x400)) {
            if (temp_s0->unk_174 > 0) {
                temp_t1 = &gActors[sp3E];
                temp_s0->state++;
                temp_t1->state = 3;
                temp_s0->unk_174 = 0;
            }
            else {
                temp_t1 = &gActors[sp3E];
                temp_s0->state++;
                temp_t1->state = 3;
                func_800340CC(actor_index, 0xE, 0);

                if (temp_s0->unk_174 <= 0) {
                    gActors[temp_s0->parentIndex].flags_098 |= ACTOR_FLAG3_UNK16;
                }

                temp_s0->unk_174 = -1;
            }
        }
        else {
            if (func_8005D338(0) == 0x65) {
                if ((gActors->unk_170_s8[1] == 0) && (!(temp_s0->flags_098 & ACTOR_FLAG3_GRAB) || (temp_s0->unk_174 <= 0))) {
                    temp_t1 = &gActors[sp3E];

                    if (temp_s0->flags_098 & ACTOR_FLAG3_THROWN && temp_s0->unk_174 > 0) {
                        temp_s0->state++;
                        temp_t1->state = 3;
                        temp_s0->unk_174 = 0;
                    }
                    else {
                        func_800340CC(actor_index, 0xE, 0);
                        temp_s0->state++;
                        temp_t1->state = 3;

                        if (temp_s0->unk_174 <= 0) {
                            gActors[temp_s0->parentIndex].flags_098 |= ACTOR_FLAG3_UNK16;
                        }

                        temp_s0->unk_174 = -1;
                    }
                    break;
                }
                else {
                    if (temp_s0->flags_098 & ACTOR_FLAG3_SHAKE) {
                        temp_s0->unk_178_s8[1] = 1;
                        D_801A41B6_75D656 = 0;
                    }

                    if (func_8005D338(0) == 0x65) {
                        temp_t1 = &gActors[sp3E];

                        if (temp_s0->flags & ACTOR_FLAG_FLIPPED) {
                            sp46 = gActors->unk_170_s8[1];
                            temp_v0_2 = D_801A3CDC_75D17C;

                            if (sp46 == 1) {
                                func_80081790((u16)temp_s0->var_150_s16[1], D_801A3B80_75D020);
                                temp_s0->unk_178_s8[0] = 0;
                            }

                            if (sp46 == 4) {
                                func_80081790((u16)temp_s0->var_150_s16[1], D_801A3B6C_75D00C);
                            }

                            if (sp46 == 9 && temp_s0->unk_178_s8[0] == 0) {
                                CameraShake(-8, 0xA);
                                Sound_PlaySfxAtActor2(SFX_BOOM_0045, actor_index);
                                gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[0] = 0x10;
                                gActors[(u16)temp_s0->var_150_s16[1]].health -= 0xA;
                                func_801A2F34_75C3D4((u16)temp_s0->var_150_s16[1], 8, -0x30, 2, 2.4f);
                                func_801A1E64_75B304((u16)temp_s0->var_150_s16[1], 0, -0x30);
                                func_801A1FF0_75B490((u16)temp_s0->var_150_s16[1], -0x10, -0x30);
                                temp_s0->unk_178_s8[0] = 1;

                                if (!(Rand() & 3)) {
                                    temp_v0 = (s8)gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[2];

                                    if (temp_v0 < 9) {
                                        gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[2] = (s8)(temp_v0 + 1);
                                        SpawnGemActor((u16)temp_s0->var_150_s16[1] + 3, 0x31, 0);
                                    }
                                }
                            }

                            temp_v0_2 += sp46 * 3;
                            temp_s0->var_110 = temp_v0_2[0];
                            temp_v0_2 += 2;
                            temp_v1 = TO_FIXED(temp_v0_2[-1]);
                            temp_a0 = TO_FIXED(temp_v0_2[0]);
                            temp_s0->unk_120 = D_801A3D54_75D1F4[gActors->unk_170_s8[1]];

                            if (gActors->unk_170_s8[1] >= 6) {
                                temp_s0->var_110 = 0;
                            }

                            temp_t1->rotateZ = temp_s0->var_110;
                            var_f2 = 360.0f - (temp_s0->unk_120 + temp_s0->var_110);
                            if (var_f2 == 360.0f) {
                                var_f2 = 0.0f;
                            }

                            gActors[(u16)temp_s0->var_150_s16[1]].unk_170 = TO_FIXED(DEG_TO_INDEX(var_f2));
                            temp_t1->posX.raw = gActors[actor_index].posX.raw + (s32)(COS((s32)DEG_TO_INDEX(temp_s0->var_110)) * gActors[actor_index].unk_114) + temp_v1;
                            temp_t1->posY.raw = (s32)(SIN((s32)DEG_TO_INDEX(temp_s0->var_110)) * gActors[actor_index].unk_114) + temp_s0->posY.raw + temp_a0;
                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posX.raw = gActors[actor_index].posX.raw + (s32)(COS((s32)DEG_TO_INDEX(temp_s0->var_110)) * gActors[actor_index].unk_118) + temp_v1;
                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posY.raw = (s32)(SIN((s32)DEG_TO_INDEX(temp_s0->var_110)) * gActors[actor_index].unk_118) + temp_s0->posY.raw + temp_a0;
                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posY.raw += FIXED_UNIT(4);
                        }
                        else {
                            sp46 = gActors->unk_170_s8[1];
                            temp_v0_2 = D_801A3D18_75D1B8;
                            if (sp46 == 1) {
                                func_80081790((u16)temp_s0->var_150_s16[1], D_801A3B80_75D020);
                                temp_s0->unk_178_s8[0] = 0;
                            }

                            if (sp46 == 4) {
                                func_80081790((u16)temp_s0->var_150_s16[1], D_801A3B6C_75D00C);
                            }

                            if (sp46 == 9 && temp_s0->unk_178_s8[0] == 0) {
                                CameraShake(-8, 0xA);
                                Sound_PlaySfxAtActor2(SFX_BOOM_0045, actor_index);
                                gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[0] = 0x10;
                                gActors[(u16)temp_s0->var_150_s16[1]].health -= 0xA;
                                func_801A2F34_75C3D4((u16)temp_s0->var_150_s16[1], -8, -0x24, 2, 2.4f);
                                func_801A1E64_75B304((u16)temp_s0->var_150_s16[1], 0, -0x28);
                                func_801A1FF0_75B490((u16)temp_s0->var_150_s16[1], -0x10, -0x28);
                                temp_s0->unk_178_s8[0] = 1;

                                if (!(Rand() & 3)) {
                                    temp_v0 = (s8)gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[2];
                                    if (temp_v0 < 9) {
                                        gActors[(u16)temp_s0->var_150_s16[1] + 4].unk_180_u8[2] = (s8)(temp_v0 + 1);
                                        SpawnGemActor((u16)temp_s0->var_150_s16[1] + 3, 0x31, 0);
                                    }
                                }
                            }

                            temp_v0_2 += sp46 * 3;
                            temp_s0->var_110 = temp_v0_2[0];
                            temp_v0_2 += 2;
                            temp_v1 = TO_FIXED(temp_v0_2[-1]);
                            temp_a0 = TO_FIXED(temp_v0_2[0]);
                            temp_s0->unk_120 = D_801A3D7C_75D21C[gActors->unk_170_s8[1]];

                            if (gActors->unk_170_s8[1] >= 6) {
                                temp_s0->var_110 = 366.0f;
                            }

                            temp_t1->rotateZ = temp_s0->var_110;
                            temp_s0->unk_11C = temp_s0->var_110 + 180.0f;
                            temp_s0->var_110 += temp_s0->unk_120;
                            gActors[(u16)temp_s0->var_150_s16[1]].unk_170 = TO_FIXED(DEG_TO_INDEX(temp_s0->var_110));
                            temp_t1->posX.raw = gActors[actor_index].posX.raw + (s32)(COS((s32)DEG_TO_INDEX(temp_s0->unk_11C)) * gActors[actor_index].unk_114) + temp_v1;
                            temp_t1->posY.raw = (s32)(SIN((s32)DEG_TO_INDEX(temp_s0->unk_11C)) * gActors[actor_index].unk_114) + temp_s0->posY.raw + temp_a0;
                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posX.raw = gActors[actor_index].posX.raw + (s32)(COS((s32)DEG_TO_INDEX(temp_s0->unk_11C)) * gActors[actor_index].unk_118) + temp_v1;
                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posY.raw = (s32)(SIN((s32)DEG_TO_INDEX(temp_s0->unk_11C)) * gActors[actor_index].unk_118) + temp_s0->posY.raw + temp_a0;

                            gActors[(u16)temp_s0->var_150_s16[1] + 3].posY.raw += FIXED_UNIT(6);
                        }
                    }
                }
            }
            else {
                if (!(temp_s0->flags_098 & ACTOR_FLAG3_GRAB) || (temp_s0->unk_174 <= 0)) {
                    temp_t1 = &gActors[sp3E];

                    if (temp_s0->flags_098 & ACTOR_FLAG3_THROWN && temp_s0->unk_174 > 0) {
                        temp_s0->state++;
                        temp_t1->state = 3;
                        temp_s0->unk_174 = 0;
                    }
                    else {
                        func_800340CC(actor_index, 0xE, 0);
                        temp_s0->state++;
                        temp_t1->state = 3;

                        if (temp_s0->unk_174 <= 0) {
                            gActors[temp_s0->parentIndex].flags_098 |= ACTOR_FLAG3_UNK16;
                        }

                        temp_s0->unk_174 = -1;
                    }
                }
            }
        }
        break;

    case 202:
        temp_s0->var_160 = temp_s0->posX.raw;
        temp_s0->posX.raw -= temp_s0->unk_168;
        temp_s0->unk_170 -= temp_s0->unk_168;
        temp_s0->unk_168 -= temp_s0->unk_164;

        if (((temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 >= -FIXED_UNIT(32))) || (!(temp_s0->flags & ACTOR_FLAG_FLIPPED) && (temp_s0->unk_170 <= FIXED_UNIT(32)))) {
            temp_t1 = &gActors[sp3E];
            temp_t1->state += 1;

            if (temp_s0->unk_174 == 0) {
                temp_t1->flags ^= 0x20;
                func_801A2608_75BAA8(sp3E, 0x18, 0, 0x14);
                temp_t1->flags ^= 0x20;
                gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 = (s32)(gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 | 0xA0000000);
            }
            else {
                gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 = (s32)(gActors[(u16)temp_s0->var_150_s16[1] + 1].unk_180 | 0x80000000);
            }

            gActors[(u16)temp_s0->var_150_s16[1]].unk_128 = (f32)(u16)temp_s0->var_150_s16[1];
            gActors[(u16)temp_s0->var_150_s16[1]].unk_12C = (f32)(u16)temp_s0->var_150_s16[1];
            gActors[(u16)temp_s0->var_150_s16[1]].unk_170 = 0;
            gActors[(u16)temp_s0->var_150_s16[1]].posY.whole = (s16)temp_s0->unk_188;
            temp_s0->graphicFlags = 0;
            temp_s0->flags = 0;
        }

        temp_s0->var_160 = temp_s0->posX.raw - temp_s0->var_160;
        break;

    default:
        break;
    }

    temp_s0->flags_098 &= 0xFFDFF9FF;
}

void func_801A07CC_759C6C(u16 actor_index) {
    Actor* temp_a0;
    u16 temp_v0 = (u16)gActors[actor_index].var_154;
    s32 temp_a1;
    s32 var_v0;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK10;
        gActors[actor_index].hitboxBY0 = 4;
        gActors[actor_index].hitboxBY1 = -4;
        gActors[actor_index].hitboxBX0 = -8;
        gActors[actor_index].hitboxBX1 = 8;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_0DF = ACTOR0DF_6;
        return;

    case 1:
        temp_a0 = &gActors[temp_v0];
        temp_a1 = temp_a0->var_160;
        var_v0 = temp_a1 < 0 ? -temp_a1 : temp_a1;
        gActors[actor_index].scaleX += 0.00000031789142f * (f32)var_v0;
        gActors[actor_index].posX.raw += temp_a0->var_160 >> 1;
        var_v0 >>= 1;
        gActors[actor_index].var_160 += var_v0;
        gActors[actor_index].hitboxBX0 = (FIXED_UNIT(-8) - gActors[actor_index].var_160) >> 16;
        gActors[actor_index].hitboxBX1 = (gActors[actor_index].var_160 + FIXED_UNIT(8)) >> 16;
        return;

    case 2:
        return;

    case 3:
        temp_a0 = &gActors[temp_v0];
        temp_a1 = temp_a0->var_160;
        var_v0 = temp_a1 < 0 ? -temp_a1 : temp_a1;
        gActors[actor_index].scaleX -= 0.00000031789142f * (f32)var_v0;
        gActors[actor_index].posX.raw += (temp_a0->var_160 >> 1) + FIXED_UNIT(0.5);
        var_v0 >>= 1;
        gActors[actor_index].var_160 -= var_v0;
        gActors[actor_index].hitboxBX0 = (FIXED_UNIT(-8) - gActors[actor_index].var_160) >> 16;
        gActors[actor_index].hitboxBX1 = (gActors[actor_index].var_160 + FIXED_UNIT(8)) >> 16;
        return;

    case 4:
        gActors[actor_index].flags = 0;
        gActors[actor_index].graphicFlags = 0;

    default:
        return;
    }
}

void func_801A0990_759E30(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_SHADE);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0;
        gActors[new_actor_index].posZ.whole = 0x80;
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0x50;
        gActors[new_actor_index].colorB = 0x3C;
        gActors[new_actor_index].colorA = 0xA0;
        gActors[new_actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[new_actor_index].scaleX = 20.0f;
        gActors[new_actor_index].scaleY = 14.0f;
        D_801A41D8_75D678 = new_actor_index;
    }
}

void func_801A0A68_759F08(u16 actor_index) {
}

void func_801A0A70_759F10(u16 actor_index) {
    Actor* temp_v1 = &gActors[actor_index];
    s32 var_v0;

    switch (temp_v1->state) {
    case 0:
        temp_v1->state++;
        temp_v1->flags |= ACTOR_FLAG_UNK17;
        temp_v1->hitFlags = 0;
        var_v0 = temp_v1->var_15C ? 1 : 0;
        temp_v1->hitType = var_v0 + HITTYPE_5;
        temp_v1->unk_0F8.raw = FIXED_UNIT(2);
        temp_v1->unk_0FC.raw = FIXED_UNIT(0.5);
        temp_v1->damage = 1;
        temp_v1->grabType = GRABTYPE_1;
        temp_v1->unk_0DF = ACTOR0DF_5 | ACTOR0DF_6 | ACTOR0DF_7;
        temp_v1->hitboxBY0 = 4;
        temp_v1->hitboxBY1 = -4;
        temp_v1->hitboxBX0 = -4;
        temp_v1->hitboxBX1 = 4;
        temp_v1->hitboxAY0 = 3;
        temp_v1->hitboxAY1 = -3;
        temp_v1->hitboxAX0 = -3;
        temp_v1->hitboxAX1 = 3;

        if (temp_v1->var_154 == 0) {
            if (temp_v1->var_158 != 0) {
                temp_v1->velocityY.raw = FIXED_UNIT(-5.5);
            }
            else {
                temp_v1->velocityY.raw = FIXED_UNIT(-4.5);
            }

            temp_v1->velocityX.raw = temp_v1->var_150 ? FIXED_UNIT(-1) : FIXED_UNIT(1);
        }
        else {
            if (temp_v1->var_158 != 0) {
                temp_v1->velocityY.raw = FIXED_UNIT(-7.5);
            }
            else {
                temp_v1->velocityY.raw = FIXED_UNIT(-6.5);
            }

            if (Rand() & 1) {
                if (temp_v1->var_150 != 0) {
                    temp_v1->velocityX.raw = FIXED_UNIT(-1.5);
                }
                else {
                    temp_v1->velocityX.raw = FIXED_UNIT(1.5);
                }
            }
            else if (temp_v1->var_150 != 0) {
                temp_v1->velocityX.raw = FIXED_UNIT(-2.5);
            }
            else {
                temp_v1->velocityX.raw = FIXED_UNIT(2.5);
            }
        }
        break;

    case 1:
        if (((temp_v1->velocityY.raw < 0) && (temp_v1->flags_098 & ACTOR_FLAG3_UNK5)) ||
            ((temp_v1->velocityX.raw > 0) && (temp_v1->flags_098 & ACTOR_FLAG3_UNK3)) ||
            ((temp_v1->velocityX.raw < 0) && (temp_v1->flags_098 & ACTOR_FLAG3_UNK2))) {
            temp_v1->state++;
        }

        if ((temp_v1->flags_098 & ACTOR_FLAG3_UNK1) || (temp_v1->flags_098 & ACTOR_FLAG3_UNK0)) {
            temp_v1->state++;
        }
        break;

    case 2:
        temp_v1->state++;
        temp_v1->flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
        temp_v1->graphicIndex = GINDEX_PARTICLERING;
        temp_v1->velocityY.raw = 0;
        temp_v1->velocityX.raw = 0;
        temp_v1->scaleX = 0.3f;
        temp_v1->scaleY = 0.1f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 0;
        temp_v1->colorB = 0;
        temp_v1->posZ.whole = gActors[0].posZ.whole + 1;
        break;

    case 3:
        temp_v1->flags = 0;
        temp_v1->graphicFlags = 0;
        break;
    }
}

u16 func_801A0D34_75A1D4(u16 actor_index, s16 arg1, s16 arg2) {
    u16 new_actor_index = Actor_RangeFindInactive(0x30, 0x8F);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_1);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
        gActors[new_actor_index].graphicIndex = GINDEX_GRADIENTA;
        gActors[new_actor_index].colorA = 0xFF;

        if (arg1 == 0) {
            gActors[new_actor_index].scaleX = 0.5f;
            gActors[new_actor_index].scaleY = 1.7f;
            gActors[new_actor_index].rotateZ = 90.0f;
        }
        else {
            gActors[new_actor_index].scaleX = 1.0f;
            gActors[new_actor_index].scaleY = 1.0f;

            if (arg2) {
                gActors[new_actor_index].rotateZ = 70.0f;
            }
            else {
                gActors[new_actor_index].rotateZ = 110.0f;
            }
        }

        return new_actor_index;
    }

    return 0;
}

void func_801A0E80_75A320(u16 actor_index) {
    u16 new_actor_index;
    u16 var_s2;
    s16 var_s3;
    s16 temp_s1;
    s16 temp_s0_4;

    if (D_801A41AC_75D64C == 0) {
        return;
    }

    D_801A41AE_75D64E--;
    if (D_801A41AE_75D64E <= 0) {
        D_801A41AC_75D64C = 0;
        return;
    }

    switch (D_801A41AC_75D64C) {
    case 1:
        new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);
        if (new_actor_index != 0) {
            D_801A41AC_75D64C++;
            gActors[new_actor_index].posX.whole = (Rand() & 0x7F) - 0x3F;
            gActors[new_actor_index].posY.whole = 0x60;
            gActors[new_actor_index].var_158 = 0;
            gActors[new_actor_index].var_150 = D_801A41B0_75D650;
            D_801A41A8_75D648 = 30;
            D_801A41AA_75D64A = 0;
        }
        break;

    case 2:
        D_801A41A8_75D648--;
        if (D_801A41A8_75D648 <= 0) {
            new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

            if (new_actor_index != 0) {
                gActors[new_actor_index].posX.whole = (Rand() & 0x7F) - 0x3F;
                gActors[new_actor_index].posY.whole = (Rand() & 0x1F) + 0x60;
                gActors[new_actor_index].var_158 = 0;
                gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                D_801A41AA_75D64A++;
            }

            if (D_801A41AA_75D64A >= 4) {
                D_801A41AC_75D64C++;
                D_801A41AA_75D64A = 0;
            }
            else {
                D_801A41A8_75D648 = 15;
            }
        }
        break;

    case 3:
        D_801A41A8_75D648--;
        if (D_801A41A8_75D648 <= 0) {
            new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

            if (new_actor_index != 0) {
                gActors[new_actor_index].posX.whole = (Rand() & 0xFF) - 0xFF;
                gActors[new_actor_index].posY.whole = (Rand() & 0x1F) + 0x60;
                gActors[new_actor_index].var_158 = 0;
                gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                D_801A41AA_75D64A++;
            }

            if (D_801A41AA_75D64A >= 11) {
                D_801A41AC_75D64C++;
                D_801A41B4_75D654 = 120;
            }
            else {
                D_801A41A8_75D648 = 8;
            }
        }
        break;

    case 4:
        D_801A41B4_75D654--;
        if (D_801A41B4_75D654 <= 0) {
            D_801A41AC_75D64C++;
            D_801A41AA_75D64A = 7;
        }
        else {
            if (--D_801A41AA_75D64A <= 0) {
                if (D_801A41A8_75D648 == 0) {
                    var_s3 = -0x80;
                    D_801A41A8_75D648 = 1;
                }
                else {
                    var_s3 = -0x70;
                    D_801A41A8_75D648 = 0;
                }

                for (var_s2 = 0; var_s2 < 5; var_s2++) {
                    temp_s1 = (Rand() & 0x1F) - 8;
                    temp_s0_4 = (Rand() & 7) - 4;
                    new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

                    if (new_actor_index != 0) {
                        gActors[new_actor_index].posX.whole = var_s3 + temp_s1;
                        gActors[new_actor_index].posY.whole = temp_s0_4 + 0x60;
                        gActors[new_actor_index].var_158 = 0;
                        gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                        var_s3 += 0x40;
                    }
                }

                D_801A41AA_75D64A = 20;
            }
        }
        break;

    case 5:
        if (D_801A41AE_75D64E < 451) {
            D_801A41AC_75D64C++;
        }

        if (--D_801A41AA_75D64A <= 0) {
            if (D_801A41A8_75D648 == 0) {
                var_s3 = -0x80;
                D_801A41A8_75D648 = 1;
            }
            else {
                var_s3 = -0x70;
                D_801A41A8_75D648 = 0;
            }

            for (var_s2 = 0; var_s2 < 5; var_s2++) {
                temp_s1 = (Rand() & 7) - 4;
                Rand();
                new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

                if (new_actor_index != 0) {
                    gActors[new_actor_index].posX.whole = var_s3 + temp_s1;
                    gActors[new_actor_index].posY.whole = 0x60;
                    gActors[new_actor_index].var_158 = 0;
                    gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                    var_s3 += 0x40;
                }
            }

            D_801A41AA_75D64A = 15;
        }

        if (--D_801A41B2_75D652 <= 0) {
            var_s3 = -0x70;

            if (D_801A41B4_75D654 == 0) {
                var_s3 = -0x80;
                D_801A41B4_75D654 = 1;
            }
            else {
                D_801A41B4_75D654 = 0;
            }

            for (var_s2 = 0; var_s2 < 3; var_s2++) {
                temp_s1 = (Rand() & 0xF) - 8;
                temp_s0_4 = (Rand() & 0x1F) - 0x18;
                new_actor_index = func_801A0D34_75A1D4(actor_index, 1, D_801A41B0_75D650);

                if (new_actor_index != 0) {
                    gActors[new_actor_index].posX.whole = var_s3 + temp_s1;
                    gActors[new_actor_index].posY.whole = temp_s0_4 + 0x60;
                    gActors[new_actor_index].var_154 = 1;
                    gActors[new_actor_index].var_158 = 0;
                    gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                    var_s3 += 0x60;
                }
            }

            D_801A41B2_75D652 = 15;
        }
        break;

    case 6:
        if (D_801A41AE_75D64E < 181) {
            D_801A41AC_75D64C++;
        }

        D_801A41AA_75D64A--;
        if (D_801A41AA_75D64A <= 0) {
            if (D_801A41A8_75D648 == 0) {
                var_s3 = -0x80;
                D_801A41A8_75D648 = 1;
            }
            else {
                var_s3 = -0x70;
                D_801A41A8_75D648 = 0;
            }

            for (var_s2 = 0; var_s2 < 5; var_s2++) {
                temp_s1 = (Rand() & 7) - 4;
                Rand();
                new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

                if (new_actor_index != 0) {
                    gActors[new_actor_index].posX.whole = var_s3 + temp_s1;
                    gActors[new_actor_index].posY.whole = 0x60;
                    gActors[new_actor_index].var_158 = 1;
                    gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                    var_s3 += 0x40;
                }
            }

            D_801A41AA_75D64A = 10;
        }

        D_801A41B2_75D652--;
        if (D_801A41B2_75D652 <= 0) {
            var_s3 = -0x70;

            if (D_801A41B4_75D654 == 0) {
                var_s3 = -0x80;
                D_801A41B4_75D654 = 1;
            }
            else {
                D_801A41B4_75D654 = 0;
            }

            for (var_s2 = 0; var_s2 < 3; var_s2++) {
                temp_s1 = (Rand() & 0xF) - 8;
                temp_s0_4 = (Rand() & 0x1F) - 0x18;
                new_actor_index = func_801A0D34_75A1D4(actor_index, 1, D_801A41B0_75D650);

                if (new_actor_index != 0) {
                    gActors[new_actor_index].posX.whole = var_s3 + temp_s1;
                    gActors[new_actor_index].posY.whole = temp_s0_4 + 0x60;
                    gActors[new_actor_index].var_154 = 1;
                    gActors[new_actor_index].var_158 = 1;
                    gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                    var_s3 += 0x60;
                }
            }

            D_801A41B2_75D652 = 15;
        }
        break;

    case 7:
        D_801A41A8_75D648--;
        if (D_801A41A8_75D648 <= 0) {
            new_actor_index = func_801A0D34_75A1D4(actor_index, 0, 0);

            if (new_actor_index != 0) {
                gActors[new_actor_index].posX.whole = (Rand() & 0xFF) - 0x7F;
                gActors[new_actor_index].posY.whole = (Rand() & 0x1F) + 0x60;
                gActors[new_actor_index].var_158 = 0;
                gActors[new_actor_index].var_15C = 1;
                gActors[new_actor_index].var_150 = D_801A41B0_75D650;
                D_801A41AA_75D64A++;
            }

            D_801A41A8_75D648 = 8;
        }
        break;
    }
}

void func_801A1740_75ABE0(s16 position_x, s16 position_y) {
    u16 new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_3);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x;
        gActors[new_actor_index].posY.whole = position_y + 0x20;
        gActors[new_actor_index].posZ.whole = -0x80;
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0x50;
        gActors[new_actor_index].colorB = 0x3C;
        gActors[new_actor_index].colorA = 0xB0;
        gActors[new_actor_index].graphicIndex = GINDEX_SHOCKEFFECT;
        gActors[new_actor_index].scaleX = 7.0f;
        gActors[new_actor_index].scaleY = 0.5f;
        gActors[new_actor_index].rotateZ = 271.0f;
        gActors[new_actor_index].state = 0;
        gActors[new_actor_index].var_150_s16_ptr = D_801A3DA4_75D244;
    }
}

void func_801A1834_75ACD4(u16 actor_index) {
    s16 temp_v0;
    s16* temp_a1 = gActors[actor_index].var_150_s16_ptr;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = 15;
        gActors[actor_index].var_158 = 5;
        Sound_PlaySfxAtActor2(SFX_THUNDER_00BE, actor_index);
        break;

    case 1:
        if (--gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].state++;
            break;
        }

        if (--gActors[actor_index].var_158 <= 0) {
            temp_v0 = Rand() & 3;
            gActors[actor_index].graphicIndex = temp_a1[temp_v0];
            gActors[actor_index].var_158 = (Rand() & 1) + 1;
        }
        break;

    case 2:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_ACTIVE;
        gActors[actor_index].var_154 = 10;
        gActors[actor_index].graphicIndex = temp_a1[4];
        gActors[actor_index].colorA = 0xFF;
        gActors[actor_index].scaleX = 7.6f;
        gActors[actor_index].scaleY = 9.1f;
        gActors[actor_index].rotateX = 97.0f;
        break;

    case 3:
        gActors[actor_index].colorA -= 8;

        if (--gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].graphicFlags = 0;
        }
        break;
    }
}

void func_801A19D8_75AE78(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_v1;
    s32 var_a1;
    u16 new_actor_index;
    s32 var_v0 = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    var_a1 = gActors[actor_index].posX.whole + offset_x;
    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        var_a1,
        gActors[actor_index].posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        temp_v1 = &gActors[new_actor_index];
        temp_v1->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a1 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        temp_v1->flags = var_a1 + ACTOR_FLAG_ENABLED;
        temp_v1->unk_148 = 30.0f;
        temp_v1->posZ.whole = gActors[actor_index].posZ.whole - 1;
        temp_v1->graphicIndex = 0x1AA;
        temp_v1->scaleX = 1.7f;
        temp_v1->scaleY = 1.3f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 0;
        temp_v1->colorB = 0;
        temp_v1->colorA = 0xFF;
        temp_v1->velocityY.raw = FIXED_UNIT(0.25);
        temp_v1->var_110 = 0.05f;
        temp_v1->unk_114 = 0.04f;
        temp_v1->var_154 = -8;
    }
}

void func_801A1B4C_75AFEC(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 90.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.5);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.5);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].scaleX = 1.2f;
        gActors[new_actor_index].scaleY = 1.2f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A1CD8_75B178(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 90.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.5);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.5);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].scaleX = 1.2f;
        gActors[new_actor_index].scaleY = 1.2f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A1E64_75B304(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 40.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.375);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.375);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -6;
        gActors[new_actor_index].scaleX = 0.7f;
        gActors[new_actor_index].scaleY = 0.7f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A1FF0_75B490(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 40.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.375);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.375);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -6;
        gActors[new_actor_index].scaleX = 0.7f;
        gActors[new_actor_index].scaleY = 0.7f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A217C_75B61C(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 30.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.25);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.25);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].scaleX = 0.4f;
        gActors[new_actor_index].scaleY = 0.4f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A2308_75B7A8(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_t0 = &gActors[actor_index];
    s32 var_a0;
    s32 var_v0;
    u16 new_actor_index;

    var_v0 = !(temp_t0->flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        temp_t0->posX.whole + offset_x,
        temp_t0->posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a0 = (temp_t0->flags & ACTOR_FLAG_FLIPPED) ? ACTOR_FLAG_FLIPPED : 0;
        gActors[new_actor_index].flags = var_a0 + ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].unk_148 = 30.0f;
        gActors[new_actor_index].posZ.whole = temp_t0->posZ.whole + 1;
        gActors[new_actor_index].graphicIndex = GINDEX_POOF;

        if (temp_t0->flags & ACTOR_FLAG_FLIPPED) {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(0.25);
        }
        else {
            gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-0.25);
        }

        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.0625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(1.0/512);
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].scaleX = 0.4f;
        gActors[new_actor_index].scaleY = 0.4f;
        gActors[new_actor_index].var_110 = 0.00625f;
        gActors[new_actor_index].unk_114 = 0.00625f;
    }
}

void func_801A2494_75B934(u16 actor_index, s16 offset_x, s16 offset_y) {
    Actor* temp_v1;
    s32 var_a1;
    u16 new_actor_index;
    s32 var_v0;

    var_v0 = !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
    if (var_v0) {
        offset_x = -offset_x;
    }

    var_a1 = gActors[actor_index].posX.whole + offset_x;
    new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        var_a1,
        gActors[actor_index].posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        temp_v1 = &gActors[new_actor_index];
        temp_v1->graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        var_a1 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : ACTOR_FLAG_FLIPPED;
        temp_v1->flags = var_a1 + ACTOR_FLAG_ENABLED;
        temp_v1->unk_148 = 30.0f;
        temp_v1->posZ.whole = gActors[actor_index].posZ.whole + 1;
        temp_v1->graphicIndex = GINDEX_IMPACTEFFECTA;
        temp_v1->velocityY.raw = FIXED_UNIT(0.0625);
        temp_v1->var_15C = FIXED_UNIT(1.0/512);
        temp_v1->scaleX = 1.4f;
        temp_v1->scaleY = 1.7f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 0;
        temp_v1->colorB = 0;
        temp_v1->colorA = 0xFF;
        temp_v1->var_154 = -8;
        temp_v1->var_110 = 0.00625f;
        temp_v1->unk_114 = 0.00625f;
    }
}

void func_801A2608_75BAA8(u16 actor_index, s16 offset_x, s16 offset_y, s16 state) {
    u16 new_actor_index;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        offset_x = -offset_x;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_6);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + offset_x;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + offset_y;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
        gActors[new_actor_index].state = state;
    }
}

u16 func_801A2738_75BBD8(u16 actor_index, s16 offset_x, s16 offset_y, s16 state) {
    u16 temp_t3;
    u16 new_actor_index;
    f32 temp_f6 = 1.9f;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        temp_t3 = -offset_x;
        offset_x = temp_t3;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_6);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ACTIVE;
        temp_t3 = gActors[actor_index].posX.whole + offset_x;
        gActors[new_actor_index].posX.whole = temp_t3;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + offset_y;
        gActors[new_actor_index].scaleX = 2.0f;
        gActors[new_actor_index].scaleY = temp_f6;
        gActors[new_actor_index].colorR = 0;
        gActors[new_actor_index].colorG = 0;
        gActors[new_actor_index].colorB = 0;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
        gActors[new_actor_index].state = state;
    }

    return new_actor_index;
}

u16 func_801A2894_75BD34(u16 actor_index, s16 offset_x, s16 offset_y, s16 state) {
    s16 temp_t3;
    u16 new_actor_index;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        temp_t3 = -offset_x;
        offset_x = temp_t3;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL1_TOAD_6);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole + offset_x;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + offset_y;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 0x10;
        gActors[new_actor_index].state = state;
    }

    return new_actor_index;
}

void func_801A29C8_75BE68(u16 actor_index) {
    Actor* temp_v1 = &gActors[actor_index];
    u16 temp_a2;
    u16 temp_t0;
    f32* temp_a0;

    switch (temp_v1->state) {
    case 0:
        temp_v1->flags = 0;
        temp_v1->graphicFlags = 0;

    default:
        break;

    case 10:
        temp_t0 = temp_v1->state;
        temp_v1->state = temp_t0 + 1;
        temp_v1->graphicFlags |= ACTOR_GFLAG_UNK4;
        temp_v1->flags |= ACTOR_FLAG_DRAW;
        temp_v1->flags ^= ACTOR_FLAG_FLIPPED;
        temp_v1->graphicIndex = 0x1E2;
        temp_v1->scaleX = 1.8f;
        temp_v1->scaleY = 2.3f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 10;
        temp_v1->colorB = 180;
        temp_v1->colorA = 255;
        temp_v1->var_150 = 5;
        temp_v1->var_154 = 2;
        temp_v1->var_158 = 1;
        break;

    case 11:
        if (--temp_v1->var_150 <= 0) {
            if (temp_v1->var_158 == 0) {
                temp_v1->flags |= ACTOR_FLAG_DRAW;
                temp_v1->var_154--;
                temp_v1->var_158 = 1;
            }
            else {
                temp_v1->var_158 = 0;
                temp_v1->flags &= ~ACTOR_FLAG_DRAW;
            }

            temp_v1->var_150 = 5;

            if (temp_v1->var_154 <= 0) {
                temp_v1->state++;
            }
        }
        break;

    case 12:
        temp_v1->colorA -= 4;

        if (temp_v1->colorA < 5) {
            temp_v1->flags = 0;
            temp_v1->graphicFlags = 0;
        }
        break;

    case 20:
        temp_t0 = temp_v1->state;
        temp_v1->state = temp_t0 + 1;
        temp_v1->graphicFlags |= ACTOR_GFLAG_UNK4;
        temp_v1->flags |= ACTOR_FLAG_DRAW;
        temp_v1->flags ^= ACTOR_FLAG_FLIPPED;
        temp_v1->scaleX = 1.0f;
        temp_v1->scaleY = 1.9f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 0;
        temp_v1->colorB = 0;
        temp_v1->colorA = 255;
        temp_v1->graphicList = D_801A3DB0_75D250;
        temp_v1->graphicTimer = 1;
        func_801A2608_75BAA8(actor_index, 20, 0, 30);
        break;

    case 21:
        if (temp_v1->graphicTimer == 0) {
            temp_v1->state++;
        }
        break;

    case 22:
        temp_v1->colorA -= 8;

        if (temp_v1->colorA < 9) {
            temp_v1->flags = 0;
            temp_v1->graphicFlags = 0;
        }
        break;

    case 30:
        temp_v1->state++;
        temp_v1->graphicFlags |= ACTOR_GFLAG_UNK4;
        temp_v1->flags |= ACTOR_FLAG_DRAW;
        temp_v1->posZ.whole += 2;
        temp_v1->scaleX = 0.0f;
        temp_v1->scaleY = 0.4f;
        temp_v1->colorR = 0;
        temp_v1->colorG = 0;
        temp_v1->colorB = 0;
        temp_v1->colorA = 255;
        temp_v1->graphicIndex = 0xCE;
        temp_v1->var_150 = 36;
        break;

    case 31:
        if (--temp_v1->var_150 <= 0) {
            temp_v1->flags = 0;
            temp_v1->graphicFlags = 0;
        }

        temp_v1->scaleX += 0.016665;
        temp_v1->scaleY += 0.05;
        temp_v1->colorA -= 4;
        break;

    case 40:
        temp_t0 = temp_v1->state;
        temp_v1->state = temp_t0 + 1;
        temp_v1->graphicFlags |= ACTOR_GFLAG_UNK4;
        temp_v1->flags |= ACTOR_FLAG_DRAW;
        temp_v1->flags ^= ACTOR_FLAG_FLIPPED;
        temp_v1->colorA = 255;
        temp_v1->graphicList = D_801A3DB0_75D250;
        temp_v1->graphicTimer = 1;
        func_801A2608_75BAA8(actor_index, 20, 0, 30);
        break;

    case 41:
        if (temp_v1->graphicTimer == 0) {
            temp_v1->state++;
        }
        break;

    case 42:
        temp_v1->colorA -= 8;

        if (temp_v1->colorA < 9) {
            temp_v1->flags = 0;
            temp_v1->graphicFlags = 0;
        }
        break;

    case 50:
        temp_v1->state++;
        temp_v1->graphicFlags |= ACTOR_GFLAG_UNK4;
        temp_v1->flags |= ACTOR_FLAG_DRAW;
        temp_v1->posZ.whole += 2;
        temp_v1->colorB = 0;
        temp_v1->colorG = 0;
        temp_v1->colorR = 0;
        temp_v1->graphicIndex = 0x1EE;
        temp_v1->var_154 = 140;
        temp_v1->scaleX = 1.5f;
        temp_v1->scaleY = 1.5f;
        break;

    case 51:
        temp_a2 = (u16)temp_v1->var_150;
        temp_v1->state++;
        temp_a0 = D_801A3DBC_75D25C;
        temp_a0 = &temp_a0[(Rand() & 3) * 3];
        temp_v1->posX.whole = gActors[temp_a2].posX.whole;
        temp_v1->posY.whole = gActors[temp_a2].posY.whole;
        temp_v1->rotateX = *temp_a0++;
        temp_v1->rotateY = *temp_a0++;
        temp_v1->rotateZ = *temp_a0;
        temp_v1->colorA = 128;
        temp_v1->var_15C = (Rand() & 31) - 15;
        temp_v1->var_160 = (Rand() & 31) - 15;
        temp_v1->var_158 = Rand() & 7;
        break;

    case 52:
        if (--temp_v1->var_154 <= 0) {
            temp_v1->flags = 0;
            temp_v1->graphicFlags = 0;
        }
        else {
            temp_a2 = (u16)temp_v1->var_150;
            temp_v1->posX.whole = (s16)temp_v1->unk_164 - (0 - gActors[temp_a2].posX.whole) + (s16)temp_v1->var_15C;
            temp_v1->posY.whole = (s16)temp_v1->var_160 - (0 - gActors[temp_a2].posY.whole);
            temp_v1->colorA--;

            if (--temp_v1->var_158 <= 0) {
                temp_v1->state = 51;
            }
        }
        break;
    }
}

void func_801A2F34_75C3D4(u16 actor_index, s16 offset_x, s16 offset_y, s16 offset_z, f32 scale) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        gActors[actor_index].posX.whole + offset_x,
        gActors[actor_index].posY.whole + offset_y,
        1
    );

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicIndex = 0x188;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].unk_148 = 20.0f;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + offset_z;
        gActors[new_actor_index].scaleX = scale;
        gActors[new_actor_index].scaleY = scale;
        gActors[new_actor_index].rotateZ = Rand() & 0xFF;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -10;
        gActors[new_actor_index].unk_114 = 0.015f;
        gActors[new_actor_index].var_110 = 0.03f;
    }
}

void func_801A3078_75C518(u16 actor_index, s16 offset_x, s16 offset_y) {
    s32 position_x;
    s32 position_y;
    s32 velocity_x;
    Actor* temp_s0 = &gActors[actor_index];
    s32 var_v0;
    s32 var_a0;
    u16 new_actor_index;

    if (temp_s0->flags & ACTOR_FLAG_FLIPPED) {
        var_v0 = -offset_x;
    }
    else {
        var_v0 = offset_x;
    }

    position_x = var_v0;
    position_x += temp_s0->posX.whole;
    position_y = temp_s0->posY.whole + offset_y;
    var_a0 = Rand() & 3;

    if (var_a0 == 0) {
        var_a0 = 1;
    }

    velocity_x = (1 << (var_a0 + 13));
    var_a0 = Rand() & 7;
    position_x += var_a0 - 4;

    if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
        velocity_x = -velocity_x;
    }

    Rand();
    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, position_x, position_y, 1);

    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicIndex = GINDEX_BLASTB;
        gActors[new_actor_index].unk_148 = (Rand() & 0xF) + 10;
        gActors[new_actor_index].posZ.whole = temp_s0->posZ.whole + 1;
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].velocityX.raw = velocity_x;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3.2625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.163125);
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_114 = 0.005f;
        gActors[new_actor_index].var_110 = 0.005f;
    }
}
