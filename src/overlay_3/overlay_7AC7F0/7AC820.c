#include "common.h"
#include "7D8E0.h"

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u8 unk_02[2];
    /* 0x04 */ s16* graphicList;
} UnkStruct_7AC820__Graphic; /* sizeof = 0x08 */

typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
} UnkStruct_7AC820__func_801B5D2C_7B1C4C; /* sizeof = 0x04 */

typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
} UnkStruct_7AC820__func_801B2CAC_7AEBCC; /* sizeof = 0x08 */

extern u16 D_800D9AF4[];
extern u16 D_800D9B04[];
extern u16 D_800D9B14[];
extern u16 D_800D9B24[];
extern u16 D_800D9B34[];
extern u16 D_800D9B44[];
extern u16 D_800D9B54[];
extern u16 D_800D9B64[];

extern s16 D_800E1700[];
extern s16 D_800E1750[];
extern s16 D_800E17A4[];
extern s16 D_800E17DC[];
extern s16 D_800E17F8[];
extern s16 D_800E1840[];
extern s16 D_800E19C0[];
extern s16 D_800E19E8[];
extern s16 D_800E1BF4[];
extern s16 D_800E1C00[];
extern s16 D_800E1C9C[];
extern s16 D_800E1CB4[];
extern s16 D_800E1D0C[];
extern s16 D_800E2274[];
extern s16 D_800E22A8[];
extern s16 D_800E22B4[];
extern s16 D_800E24EC[];

u32 D_801B7320_7B3240[8] = {
    0x00010050, 0x00000002, 0x00000004, 0x00000004,
    0x0003003C, 0x0002FFB0, 0x00040000, 0x00040009,
};

s16 D_801B7340_7B3260[6] = { 0x0007, 0x0000, -0x0040, 0x0010, 0x0000, 0x0000 };
s16 D_801B734C_7B326C[6] = { 0x0001, 0x0000, 0x0000, 0x0003, 0x003C, 0x0009 };
s32 D_801B7358_7B3278[3] = { 0x00000190, 0x00000010, FIXED_UNIT(16.0) };

Festival_Actor_Spawn D_801B7364_7B3284[10] = {
    { 0x0150, 0x0180, 0xFF01, 0x1C00 },
    { 0x01E0, 0x0183, 0xFF01, 0x1D03 },
    { 0x0428, 0x018D, 0xFF01, 0x1202 },
    { 0x0560, 0x0185, 0xFF01, 0x1D03 },
    { 0x071F, 0x018A, 0xFF01, 0x1202 },
    { 0x084C, 0x0183, 0xFF01, 0x1D03 },
    { 0x0A25, 0x018A, 0xFF01, 0x1202 },
    { 0x0B32, 0x018B, 0xFF01, 0x1202 },
    { 0x0BE0, 0x019F, 0xFF01, 0x1D06 },
    { 0x0DF2, 0x0183, 0xFF00, 0x1D03 },
};

f32 D_801B73B4_7B32D4[16] = {
    2.0f, 0.0f, -21.0f, 180.0f,
    0.0f, 0.0f, 0.0f, 3.0f,
    1.0f, 1.0f, 448.0f, 1.0f,
    1.0f, 1.0f, 60.0f, 0.0f,
};

u16 D_801B73F4_7B3314[8] = {
    0x0000, 0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x7000,
};

u16 D_801B7404_7B3324[20] = {
    0x0000, 0x0000, 0x0100, 0x0000, 0x0000, 0x0000, 0x0500, 0x0600,
    0x0000, 0x0800, 0x0000, 0x0000, 0x0B00, 0x0C00, 0x0000, 0x0D00,
    0x0000, 0x0010, 0x0020, 0x0030,
};

Festival_Actor_SpawnWithBehavior D_801B742C_7B334C[8] = {
    { { 0x0150, 0xFF04, 0x0000, 0x0800 }, 0x0000 },
    { { 0x0130, 0x00A0, 0x0000, 0x0800 }, 0x0004 },
    { { 0x01A8, 0x00A0, 0x0000, 0x0800 }, 0x0004 },
    { { 0x01E8, 0x00A0, 0x0000, 0x0800 }, 0x0004 },
    { { 0x02C0, 0xFF04, 0x0000, 0x0800 }, 0x0002 },
    { { 0x0284, 0xFF04, 0x0000, 0x0800 }, 0x0007 },
    { { 0x01C4, 0xFF04, 0x0000, 0x0800 }, 0x0006 },
    { { 0x0358, 0xFF04, 0x0000, 0x0800 }, 0x0000 },
};

UnkStruct_7AC820__func_801B2CAC_7AEBCC D_801B747C_7B339C[9] = {
    { FIXED_UNIT(8.0), FIXED_UNIT(6.0) },
    { FIXED_UNIT(8.5), FIXED_UNIT(6.5) },
    { FIXED_UNIT(8.625), FIXED_UNIT(6.625) },
    { FIXED_UNIT(8.75), FIXED_UNIT(6.75) },
    { FIXED_UNIT(8.875), FIXED_UNIT(6.875) },
    { FIXED_UNIT(10.0), FIXED_UNIT(7.0) },
    { FIXED_UNIT(10.125), FIXED_UNIT(7.125) },
    { FIXED_UNIT(10.25), FIXED_UNIT(7.25) },
    { FIXED_UNIT(10.375), FIXED_UNIT(7.375) },
};

f32 D_801B74C4_7B33E4[16] = {
    2.0f, 120.0f, 8.0f, 200.0f,
    0.0f, -0.0f, 0.0f, 3.0f,
    1.0f, 1.0f, 448.0f, 1.0f,
    1.0f, 1.0f, 60.0f, 5.0f,
};

u16 D_801B7504_7B3424[10] = {
    0x010E, 0x0096, 0x0078, 0x006E, 0x0064,
    0x005A, 0x0050, 0x0046, 0x003C, 0x0032,
};

s16 D_801B7518_7B3438[12] = {
    0x0001, 0x0150, 0x01BC, 0x0003, 0x000A, 0x0002,
    0x01D0, 0x0006, 0x01BC, 0x0006, 0x0000, 0x0000,
};

s16 D_801B7530_7B3450[12] = {
    0x0001, 0x0150, 0x019C, 0x0003, 0x0014, 0x0002,
    0x01D0, 0x0006, 0x019C, 0x0006, 0x0000, 0x0000,
};

s16 D_801B7548_7B3468[12] = {
    0x0001, 0x0150, 0x017C, 0x0003, 0x001E, 0x0002,
    0x01D0, 0x0006, 0x017C, 0x0006, 0x0000, 0x0000,
};

s16 D_801B7560_7B3480[12] = {
    0x0001, 0x0310, 0x01BC, 0x0003, 0x000A, 0x0002,
    0x0290, 0x0006, 0x01BC, 0x0006, 0x0000, 0x0000,
};

s16 D_801B7578_7B3498[12] = {
    0x0001, 0x0310, 0x019C, 0x0003, 0x0014, 0x0002,
    0x0290, 0x0006, 0x019C, 0x0006, 0x0000, 0x0000,
};

s16 D_801B7590_7B34B0[12] = {
    0x0001, 0x0310, 0x017C, 0x0003, 0x001E, 0x0002,
    0x0290, 0x0006, 0x017C, 0x0006, 0x0000, 0x0000,
};

s16 D_801B75A8_7B34C8[12] = {
    0x0001, 0x0230, 0x01E0, 0x0003, 0x0073, 0x0009,
    0x0001, 0x0298, 0x0180, 0x0003, 0x003C, 0x0000,
};

s16 D_801B75C0_7B34E0[22] = {
    0x0001, 0x0230, 0x02D0, 0x0002, 0x0230, 0x0004,
    0x01E0, 0x0004, 0x0000, 0x0000, 0x0005, 0x0000,
    0x0000, 0x0006, 0x0500, 0x0200, 0x001E, 0x0006,
    0x0400, 0x0100, 0x001E, 0x0000,
};

s16 D_801B75EC_7B350C[4] = { 0x0003, 0x003C, 0x0009, 0x0000 };
s32 D_801B75F4_7B3514[3] = { 0x00000230, 0x00000001, FIXED_UNIT(1.0) };

UnkStruct_7AC820__Graphic D_801B7600_7B3520[6] = {
    { 0x0004, { 0x00, 0x00 }, D_801B7518_7B3438 },
    { 0x0005, { 0x00, 0x00 }, D_801B7530_7B3450 },
    { 0x001C, { 0x00, 0x00 }, D_801B7548_7B3468 },
    { 0x0006, { 0x00, 0x00 }, D_801B7560_7B3480 },
    { 0x0007, { 0x00, 0x00 }, D_801B7578_7B3498 },
    { 0x001D, { 0x00, 0x00 }, D_801B7590_7B34B0 },
};

Festival_UnkMotion D_801B7630_7B3550[8] = {
    { 0x01, 0x00, 0x0080, FIXED_UNIT(1.0), 0x00000000 },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(2.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(2.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0080, FIXED_UNIT(1.0), 0x00000000 },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(2.0), FIXED_UNIT(4.0) },
    { 0x04, 0x00, 0x0000, 0x00000000, 0x00000000 },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(2.0), FIXED_UNIT(4.0) },
    { -0x07, 0x00, 0x0000, 0x00000000, 0x00000000 },
};

Festival_UnkMotion D_801B7690_7B35B0[9] = {
    { 0x01, 0x00, 0x0080, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x07, 0x00, 0x0000, 0x00000000, 0x00000000 },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { 0x01, 0x00, 0x0020, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
    { -0x08, 0x00, 0x0000, 0x00000000, 0x00000000 },
};

UnkStruct_7AC820__func_801B5D2C_7B1C4C D_801B76FC_7B361C[11] = {
    { 0x02C8, 0x0001 },
    { 0x0258, 0x0000 },
    { 0x0270, 0x0000 },
    { 0x0290, 0x0000 },
    { 0x02A0, 0x0000 },
    { 0x02C8, 0x0000 },
    { 0x0258, 0x0001 },
    { 0x0270, 0x0001 },
    { 0x0290, 0x0001 },
    { 0x02A0, 0x0001 },
    { 0x0258, 0x0002 },
};

Festival_Actor_SpawnWithBehavior D_801B7728_7B3648[6] = {
    { { 0x0120, 0xFF01, 0x0000, 0x0800 }, 0x0000 },
    { { 0x0140, 0xFF01, 0x0000, 0x0800 }, 0x0001 },
    { { 0x0300, 0xFF01, 0x0000, 0x0800 }, 0x0002 },
    { { 0x0318, 0xFF04, 0x0000, 0x0800 }, 0x0003 },
    { { 0x0280, 0x00A0, 0x0000, 0x0800 }, 0x0004 },
    { { 0x02A8, 0x00A0, 0x0000, 0x0800 }, 0x0004 },
};

s16 D_801B7764_7B3684[10] = {
    0x6829, 0x000A, 0x682A, 0x0007, 0x682B,
    0x000A, 0x682A, 0x0007, 0x0000, 0x0000,
};

s16 D_801B7778_7B3698[34] = {
    0x6885, 0x0002, 0x6886, 0x0002, 0x6887, 0x0002, 0x6888, 0x0002,
    0x6889, 0x0002, 0x688A, 0x0002, 0x688B, 0x0002, 0x688C, 0x0002,
    0x688D, 0x0002, 0x688E, 0x0002, 0x688F, 0x0002, 0x6890, 0x0002,
    0x6881, 0x0002, 0x6882, 0x0002, 0x6883, 0x0002, 0x6884, 0x0002,
    0x0000, 0x0000,
};

s16 D_801B77BC_7B36DC[34] = {
    0x6806, 0x0002, 0x6807, 0x0002, 0x6808, 0x0002, 0x6809, 0x0002,
    0x680A, 0x0002, 0x680B, 0x0002, 0x680C, 0x0002, 0x680D, 0x0002,
    0x680E, 0x0002, 0x680F, 0x0002, 0x6810, 0x0002, 0x6811, 0x0002,
    0x6812, 0x0002, 0x6803, 0x0002, 0x6804, 0x0002, 0x6805, 0x0002,
    0x0000, 0x0000,
};

s16 D_801B7800_7B3720[34] = {
    0x6819, 0x0002, 0x681A, 0x0002, 0x681B, 0x0002, 0x681C, 0x0002,
    0x681D, 0x0002, 0x681E, 0x0002, 0x681F, 0x0002, 0x6820, 0x0002,
    0x6821, 0x0002, 0x6822, 0x0002, 0x6823, 0x0002, 0x6824, 0x0002,
    0x6825, 0x0002, 0x6826, 0x0002, 0x6827, 0x0002, 0x6828, 0x0002,
    0x0000, 0x0000,
};

s16 D_801B7844_7B3764[34] = {
    0x689C, 0x0003, 0x689D, 0x0003, 0x689E, 0x0003, 0x689F, 0x0003,
    0x68A0, 0x0003, 0x68A1, 0x0003, 0x68A2, 0x0003, 0x68A3, 0x0003,
    0x68A4, 0x0003, 0x68A5, 0x0003, 0x68A6, 0x0003, 0x68A7, 0x0003,
    0x68A8, 0x0003, 0x68A9, 0x0003, 0x689A, 0x0003, 0x689B, 0x0003,
    0x0000, 0x0000,
};

s16 D_801B7888_7B37A8[34] = {
    0x6907, 0x0004, 0x6908, 0x0004, 0x6909, 0x0004, 0x690A, 0x0005,
    0x690B, 0x0006, 0x690A, 0x0005, 0x6909, 0x0004, 0x6908, 0x0004,
    0x6907, 0x0004, 0x6906, 0x0004, 0x6905, 0x0004, 0x6904, 0x0005,
    0x6903, 0x0006, 0x6904, 0x0005, 0x6905, 0x0004, 0x6906, 0x0004,
    0x0000, 0x0000,
};

s16 D_801B78CC_7B37EC[14] = {
    0x6845, 0x001E, 0x6846, 0x0008, 0x6845, 0x001E, 0x6846, 0x0008,
    0x6845, 0x0008, 0x6846, 0x0008, 0x0000, 0x0000,
};

s16 D_801B78E8_7B3808[36] = {
    0x6842, 0x0005, 0x6841, 0x0005, 0x6854, 0x0005, 0x6841, 0x0005,
    0x6852, 0x0005, 0x6853, 0x0004, 0x6852, 0x0003, 0x6853, 0x0003,
    0x6854, 0x0003, 0x6855, 0x0003, 0x6856, 0x0003, 0x6857, 0x0003,
    0x6858, 0x0003, 0x6859, 0x0003, 0x685A, 0x0003, 0x685B, 0x0003,
    0x685C, 0x0003, 0x0000, 0x0000,
};

s16 D_801B7930_7B3850[10] = {
    0x691F, 0x0004, 0x6920, 0x0004, 0x6921,
    0x0004, 0x6800, 0x0004, 0x0000, 0x0000,
};

s16 D_801B7944_7B3864[8] = {
    0x6921, 0x0004, 0x6920, 0x0004, 0x691F, 0x0004, 0x0000, 0x0000,
};

s16 D_801B7954_7B3874[16] = {
    0x690F, 0x0004, 0x6910, 0x0004, 0x6911, 0x0006, 0x6912, 0x0008,
    0x6911, 0x0006, 0x6910, 0x0004, 0x690F, 0x0004, 0x0000, 0x0000,
};

s16 D_801B7974_7B3894[14] = {
    0x690C, 0x0005, 0x690D, 0x0007, 0x690E, 0x000A, 0x690D, 0x0007,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

u8 D_801B80A0_7B3FC0[8];
u8 D_801B80A8_7B3FC8;
s32 D_801B80AC_7B3FCC;
u16 D_801B80B0_7B3FD0[24];
u8 D_801B80E0_7B4000[8];
u16 D_801B80E8_7B4008;

extern void func_8003ED48(u16 actor_index, s32 arg1, s16 position_x, s16 position_y, s16 position_z);
extern void func_80067E50(u16 actor_index, void* data);
extern s32 func_800734C4(u16 actor_index, s32 arg1);

void func_801B0900_7AC820(u16 actor_index);
void func_801B0C38_7ACB58(u16 actor_index);
s32 func_801B0CD4_7ACBF4(u16 actor_index);
void func_801B0D5C_7ACC7C(u16 actor_index);
void func_801B0ECC_7ACDEC(u16 arg0);
void func_801B0EF0_7ACE10(u16 actor_index);
u16 func_801B0F08_7ACE28(u16 actor_index);
void func_801B0F8C_7ACEAC(u16 actor_index, u16 index);
s32 func_801B102C_7ACF4C(u16 actor_index, s16 position_x, s16 position_y, u16 flag);
s32 func_801B10D8_7ACFF8(u16 actor_index, s16 position_x, s16 position_y);
void func_801B1194_7AD0B4(u16 actor_index);
void func_801B13C4_7AD2E4(u16 actor_index, s16 position_x, u16 competitor_index);
void func_801B14FC_7AD41C(u16 actor_index);
s32 func_801B15C8_7AD4E8(u16 actor_index);
void func_801B1638_7AD558(u16 actor_index);
void func_801B169C_7AD5BC(u16 actor_index, s16 position_x);
void func_801B17C0_7AD6E0(u16 actor_index);
void func_801B1828_7AD748(u16 actor_index);
void func_801B1850_7AD770(u16 actor_index);
void func_801B195C_7AD87C(u16 actor_index);
void func_801B1974_7AD894(u16 actor_index);
void func_801B1A18_7AD938(u16 actor_index);
void func_801B1ADC_7AD9FC(u16 actor_index);
void func_801B1BC4_7ADAE4(u16 actor_index);
void func_801B1C24_7ADB44(u16 actor_index);
void func_801B1CF0_7ADC10(u16 actor_index);
void func_801B1DDC_7ADCFC(u16 actor_index);
void func_801B1EB4_7ADDD4(u16 actor_index);
void func_801B1F80_7ADEA0(u16 actor_index);
void func_801B1FC8_7ADEE8(u16 actor_index);
void func_801B2058_7ADF78(u16 actor_index);
void func_801B20A0_7ADFC0(u16 actor_index);
void func_801B20F8_7AE018(u16 actor_index);
void func_801B2180_7AE0A0(u16 actor_index);
s32 func_801B2208_7AE128(u16 actor_index);
u16 func_801B2290_7AE1B0(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior);
void func_801B242C_7AE34C(u16 actor_index);
void func_801B259C_7AE4BC(u16 actor_index);
void func_801B2720_7AE640(u16 actor_index);
s32 func_801B2C20_7AEB40(u16 actor_index, s16 position_x);
void func_801B2CAC_7AEBCC(u16 arg0);
void func_801B2F50_7AEE70(s32 arg0);
void func_801B2F58_7AEE78(s32 arg0);
void func_801B2F60_7AEE80(s32 arg0);
void func_801B2F68_7AEE88(s32 arg0);
void func_801B2F70_7AEE90(u16 actor_index);
void func_801B5D2C_7B1C4C(u16 actor_index);
void func_801B62E4_7B2204(u16 actor_index);
void func_801B63B0_7B22D0(u16 actor_index);
void func_801B649C_7B23BC(u16 actor_index);
void func_801B6574_7B2494(u16 actor_index);
void func_801B6640_7B2560(u16 actor_index);
void func_801B6688_7B25A8(u16 actor_index);
void func_801B6718_7B2638(u16 actor_index);
void func_801B6760_7B2680(u16 actor_index);
s32 func_801B67B8_7B26D8(u16 actor_index);
u16 func_801B6840_7B2760(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior);
void func_801B69BC_7B28DC(u16 actor_index);
void func_801B6AD4_7B29F4(u16 actor_index, s16* graphic_list);
s32 func_801B6B24_7B2A44(u16 actor_index);
void func_801B6BB4_7B2AD4(u16 actor_index);

void func_801B0900_7AC820(u16 actor_index) {
    u16 new_actor_index;

    switch (gActors[actor_index].state) {
    case 2:
        break;
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x160;
        gActors[actor_index].posZ.whole = 2;
        gActors[actor_index].state++;
        gActors[actor_index].scaleX = 0.5f;
        gActors[actor_index].scaleY = 0.5f;
        gActors[actor_index].rotateZ = 90.0f;
        // fallthrough
    case 1:
        if (gActors[actor_index].velocityY.raw >= (-FIXED_UNIT(8.0) + 1)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(48.0 / 256);
        }

        if (gActors[actor_index].posY.whole < -0x33) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x34;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
            if (new_actor_index != 0) {
                gActors[new_actor_index].actorType = 0x1A09;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].pfn_190 = func_801B0C38_7ACB58;
                gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
                gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole + 0x10;
                gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole;
                gActors[new_actor_index].var_0D8 = gActors[actor_index].var_110;
                if (gActors[actor_index].var_0D8 == 1) {
                    gActors[new_actor_index].palette_18C = D_800D9B04;
                }
                else {
                    gActors[new_actor_index].palette_18C = D_800D9AE4;
                }
            }
        }
        break;
    }

    gActors[actor_index].rotateX += 24.0f;
    if (gActors[actor_index].rotateX >= 360.0f) {
        gActors[actor_index].rotateX -= 360.0f;
    }

    if (gActors[actor_index].var_0D8 == 1) {
        if ((gActors[actor_index].rotateX > 90.0f) && (gActors[actor_index].rotateX < 270.0f)) {
            gActors[actor_index].colorR = 0xC8;
            gActors[actor_index].colorG = 0xFF;
            gActors[actor_index].colorB = 0xFF;
            return;
        }
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = 0xFF;
        gActors[actor_index].colorB = 0xFF;
        return;
    }

    if ((gActors[actor_index].rotateX > 90.0f) && (gActors[actor_index].rotateX < 270.0f)) {
        gActors[actor_index].colorR = 0xC8;
        gActors[actor_index].colorG = 0xC8;
        gActors[actor_index].colorB = 0xC8;
        return;
    }

    gActors[actor_index].colorR = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorB = 0;
}

void func_801B0C38_7ACB58(u16 actor_index) {
    s32 position_y;

    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = (gActors[actor_index].var_0D8 * 2) + 0x2D4;
        position_y = gActors[actor_index].posY.whole + (0, gScreenPosCurrentY.whole);
        gActors[actor_index].var_158 = position_y;
        gActors[actor_index].var_15C = position_y;
        // fallthrough
    case 0x1:
        break;
    }
}

s32 func_801B0CD4_7ACBF4(u16 actor_index) {
    u16 index;

    for (index = 0x40; index < 0x50; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == ACTORTYPE_OVL2_FEST_3) && (actor_index == gActors[index].var_154)) {
            return 1;
        }
    }
    return 0;
}

void func_801B0D5C_7ACC7C(u16 actor_index) {
    Festival_Actor_Spawn* records;
    u16 index;
    Festival_Actor_Spawn* record;
    s16 position_x;
    u16 new_actor_index;
    u16 saved_index;
    s16 min_x;
    s16 max_x;

    min_x = gScreenPosCurrentX.whole - 0x199;
    max_x = gScreenPosCurrentX.whole + 0x190;
    records = D_801B7364_7B3284;
    for (index = 0; index < 10; index++) {
        if (1) {
        }
        record = &D_801B7364_7B3284[index];
        position_x = (s16)record->positionX;
        if ((position_x >= min_x) && (max_x >= position_x)) {
            if (func_801B0CD4_7ACBF4(index) == 0) {
                new_actor_index = Actor_RangeFindInactive(0x40, 0x50);
                if (new_actor_index != 0) {
                    gActors[new_actor_index].actorType = 0x1A03;
                    Actor_Initialize(new_actor_index);
                    gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
                    gActors[new_actor_index].posY.whole = record->positionY - gScreenPosCurrentY.whole;
                    gActors[new_actor_index].var_110 = record->unk_04;
                    saved_index = index;
                    gActors[new_actor_index].var_154 = saved_index;
                    gActors[new_actor_index].var_0D8 = record->unk_06;
                }
            }
        }
    }
}

void func_801B0ECC_7ACDEC(u16 arg0) {
    gStageState = 0;
    D_800D28F0 = arg0;
    D_800D28E4 = 0x62;
}

void func_801B0EF0_7ACE10(u16 actor_index) {
    gFestivalCompetitors[1].unk_12 = 0;
    gFestivalCompetitors[1].unk_10 = 0;
}

u16 func_801B0F08_7ACE28(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_7;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
    }
    return new_actor_index;
}

void func_801B0F8C_7ACEAC(u16 actor_index, u16 index) {
    s32* entry;

    if (index == 0xFF) {
        D_800BE544 = 0;
        D_800BE704 = 0x10;
        D_800BE708 = 4;
        D_800BE548.raw = FIXED_UNIT(16.0);
        D_800BE54C.raw = FIXED_UNIT(16.0);
        return;
    }

    D_800BE544 = 0x8000;
    index *= 3;
    entry = &D_801B7358_7B3278[index];
    gScreenPosTargetX.whole = entry[0];
    D_800BE704 = entry[1];
    D_800BE548.raw = entry[2];
}

s32 func_801B102C_7ACF4C(u16 actor_index, s16 position_x, s16 position_y, u16 flag) {
    u16 new_actor_index = func_801B0F08_7ACE28(actor_index);
    if (new_actor_index != 0) {
        gActors[new_actor_index].posX.whole = position_x;
        gActors[new_actor_index].posY.whole = position_y + 0x40;
        gActors[new_actor_index].posZ.whole = 0x7F;

        if (flag != 0) {
            gActors[new_actor_index].var_150 = 1;
        }
        else {
            gActors[new_actor_index].var_150 = 0;
        }

        gActors[new_actor_index].unk_174 = (s32)D_801B7340_7B3260;
        gActors[new_actor_index].unk_164 = 0x8040;
    }
    return new_actor_index;
}

s32 func_801B10D8_7ACFF8(u16 actor_index, s16 position_x, s16 position_y) {
    u16 index;

    SpawnActor41(actor_index, 0, position_x, position_y + 0x40, 0, ACTOR_FLAG_ENABLED, 0x3E7);
    index = actor_index;
    gActors[index].posZ.whole = 0x80;
    gActors[index].actorType = ACTORTYPE_OVL2_FEST_8;
    gActors[index].unk_16C = (s32)D_801B7340_7B3260;
    gActors[index].pfn_190 = ActorUpdate_Type41;
    gActors[index].palette_18C = D_800D9AE4;
    return index;
}

void func_801B1194_7AD0B4(u16 actor_index) {
    u16 fixed_actor_index = 0x69;
    gActors[fixed_actor_index].actorType = 0x1A09;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK11;
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[fixed_actor_index].graphicIndex = 0x2D0;
    gActors[fixed_actor_index].scaleX = 14.5f;
    gActors[fixed_actor_index].scaleY = 2.4f;
    gActors[fixed_actor_index].colorB = 0xBA;
    gActors[fixed_actor_index].colorA = 0xB2;
    gActors[fixed_actor_index].posX.whole = 0;
    gActors[fixed_actor_index].posY.whole = 0x44;
    gActors[fixed_actor_index].posZ.whole = 0x78;
    gActors[fixed_actor_index].unk_188 = 0;

    func_801B102C_7ACF4C(actor_index, -0x60, 0x4C, 0);
    func_801B10D8_7ACFF8(0x6B, -0x48, 0x4C);
    func_801B10D8_7ACFF8(0x6A, -0x48, 0x3C);
    func_801B102C_7ACF4C(actor_index, -0x10, 0x4C, 1);
    func_801B10D8_7ACFF8(0x6D, 8, 0x4C);
    func_801B10D8_7ACFF8(0x6C, 8, 0x3C);
    fixed_actor_index = 0x6E;
    SpawnActor41(fixed_actor_index, 0, 0x60, 0x8C, 0, ACTOR_FLAG_ENABLED, 0x3E7);
    gActors[fixed_actor_index].actorType = 0x1A08;
    gActors[fixed_actor_index].unk_16C = (s32)D_801B7340_7B3260;
    gActors[fixed_actor_index].pfn_190 = ActorUpdate_Type41;
    gActors[fixed_actor_index].var_158 = gFestivalRecords[gFestivalCurrentEvent];
    gActors[fixed_actor_index].unk_18C = (s32)D_800D9AE4;
    gActors[fixed_actor_index].posZ.whole = 0x78;

    fixed_actor_index = 0x6F;
    gActors[fixed_actor_index].actorType = 0x1A07;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
    gActors[fixed_actor_index].posX.whole = 0x40;
    gActors[fixed_actor_index].posY.whole = 0x8C;
    gActors[fixed_actor_index].unk_18C = (s32)D_800D9AE4;
    gActors[fixed_actor_index].posZ.whole = 0x78;
    gActors[fixed_actor_index].var_150 = 0x11;
    gActors[fixed_actor_index].unk_174 = (s32)D_801B7340_7B3260;
    gActors[fixed_actor_index].unk_164 = 0x8000;
}

void func_801B13C4_7AD2E4(u16 actor_index, s16 position_x, u16 competitor_index) {
    u16 new_actor_index;

    if (((new_actor_index = Actor_RangeFindInactive(0x60, 0x70)) != 0) || ((new_actor_index = Actor_RangeFindInactive(0x50, 0x60)) != 0)) {
        ACTOR_INIT(new_actor_index, 0x701);
        gActors[new_actor_index].posX.whole = position_x;
        gActors[new_actor_index].posY.whole = 0x80;
        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].var_0D8 = competitor_index;
        if (competitor_index != 0) {
            gActors[new_actor_index].var_110 = gActors[actor_index].unk_16C;
            gActors[actor_index].unk_16C++;
            return;
        }
        gActors[new_actor_index].var_110 = gActors[actor_index].unk_168;
        gActors[actor_index].unk_168++;
    }
}

void func_801B14FC_7AD41C(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
    gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_7;
    Actor_Initialize(new_actor_index);
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
    gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
    gActors[new_actor_index].posX.whole = 0;
    gActors[new_actor_index].posY.whole = 0;
    gActors[new_actor_index].posZ.whole = 0;
    gActors[new_actor_index].palette_18C = D_800D9AE4;
    gActors[new_actor_index].var_150 = 3;
    gActors[new_actor_index].unk_174 = (s32)&D_801B734C_7B326C;
    gActors[new_actor_index].unk_164 = 0x902C;
}

s32 func_801B15C8_7AD4E8(u16 actor_index) {
    u16 result;
    u16 position_x;

    actor_index = 0;
    position_x = gActors[actor_index].posX.whole + (0, gScreenPosCurrentX.whole);
    result = 0;
    if (position_x < 0x220) {
        return 0;
    }

    do {
        if (gActors[actor_index].posY.whole < -0x27) {
            result = 2;
            if (position_x < 0x220) {
            }
            else if (position_x < 0x248) {
                result = 1;
                break;
            }
        }
        // fakematch
        if ((result && result) && result) {
        }
    } while (0);

    return result;
}

void func_801B1638_7AD558(u16 actor_index) {
    actor_index = 0x5F;
    gActors[actor_index].actorType = 0x702;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = 0xE0 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = -0x20;
    gActors[actor_index].var_110 = 0.0f;
    gActors[actor_index].var_0D8 = 0;
}

void func_801B169C_7AD5BC(u16 actor_index, s16 position_x) {
    u16 position_x_2;
    s32 state;

    position_x_2 = gScreenPosCurrentX.whole + position_x - 0x220;
    state = gActors[actor_index].var_15C;
    switch (state) {
    default:
        break;

    case 0:
        gActors[0x6B].var_158 = position_x_2;
        gActors[actor_index].unk_170 = position_x_2;
        break;

    case 1:
        gActors[0x6D].var_158 = position_x_2;
        gActors[actor_index].unk_174 = position_x_2;
        break;

    case 2:
        gActors[0x6A].var_158 = position_x_2;
        if (position_x_2 < gActors[actor_index].unk_170) {
            gActors[actor_index].unk_170 = position_x_2;
        }
        break;

    case 3:
        gActors[0x6C].var_158 = position_x_2;
        if (position_x_2 < gActors[actor_index].unk_174) {
            gActors[actor_index].unk_174 = position_x_2;
        }
        break;
    }

    if (gActors[0x6E].var_158 < position_x_2) {
        gActors[0x6E].var_158 = position_x_2;
        gActors[actor_index].unk_164 = 1;
        gFestivalIsTimeBeat = 1;
    }
}

void func_801B17C0_7AD6E0(u16 actor_index) {
    u16 competitor_0_rank;
    u16 competitor_1_rank;

    if (gActors[actor_index].unk_170 >= gActors[actor_index].unk_174) {
        competitor_0_rank = 1;
        competitor_1_rank = 2;
    }
    else {
        competitor_0_rank = 2;
        competitor_1_rank = 1;
    }

    gFestivalCompetitors[0].rank = competitor_0_rank;
    gFestivalCompetitors[1].rank = competitor_1_rank;
}

void func_801B1828_7AD748(u16 actor_index) {
    gStageState = 0;
    D_800D28F0 = 0x32;
    D_800D28E4 = 0x62;
}

void func_801B1850_7AD770(u16 actor_index) {
    u16 frame_index;

    if (gActors[actor_index].unk_164 != 0) {
        frame_index = gActiveFrames & 7;
        switch (frame_index) {
        case 0:
            gActors[0x6F].palette_18C = D_800D9AE4;
            return;
        case 1:
            gActors[0x6F].palette_18C = D_800D9AF4;
            return;
        case 2:
            gActors[0x6F].palette_18C = D_800D9B04;
            return;
        case 3:
            gActors[0x6F].palette_18C = D_800D9AE4;
            return;
        case 4:
            gActors[0x6F].palette_18C = D_800D9B14;
            return;
        case 5:
            gActors[0x6F].palette_18C = D_800D9B24;
            return;
        case 6:
            gActors[0x6F].palette_18C = D_800D9B34;
            return;
        case 7:
            gActors[0x6F].palette_18C = D_800D9B44;
            break;
        }
    }
}

void func_801B195C_7AD87C(u16 actor_index) {
    gActors[0x6F].palette_18C = D_800D9AE4;
}

void func_801B1974_7AD894(u16 actor_index) {
    u16 competitor_actor_index;

    switch (gActors[actor_index].var_15C) {
    case 0:
        competitor_actor_index = 0x6B;
        break;
    case 1:
        competitor_actor_index = 0x6D;
        break;
    case 2:
        competitor_actor_index = 0x6A;
        break;
    case 3:
        competitor_actor_index = 0x6C;
        break;
    }
    gActors[competitor_actor_index].palette_18C = D_800D9AE4;
}

void func_801B1A18_7AD938(u16 actor_index) {
    u16 competitor_actor_index;

    switch (gActors[actor_index].var_15C) {
    case 0:
        competitor_actor_index = 0x6B;
        break;
    case 1:
        competitor_actor_index = 0x6D;
        break;
    case 2:
        competitor_actor_index = 0x6A;
        break;
    case 3:
        competitor_actor_index = 0x6C;
        break;
    }

    if (gActiveFrames & 0x10) {
        gActors[competitor_actor_index].palette_18C = D_800D9B54;
    }
    else {
        gActors[competitor_actor_index].palette_18C = NULL;
    }
}

void func_801B1ADC_7AD9FC(u16 actor_index) {
    u32 temp;
    u16 var_v1;
    u16 var_a1;
    u16 var_a3;
    u16 var_a2;

    gFestivalEventsPlayed[gFestivalCurrentEvent] = 1;
    var_v1 = gActors[0x6B].unk_158_u16[1];
    var_a3 = gActors[0x6A].unk_158_u16[1];
    var_a1 = gActors[0x6D].unk_158_u16[1];
    var_a2 = gActors[0x6C].unk_158_u16[1];

    var_v1 = var_a3 < var_v1 ? var_v1 : var_a3;
    var_a1 = var_a2 < var_a1 ? var_a1 : var_a2;
    temp = var_v1;

    if (var_a1 < (s32)temp) {
        gFestivalCompetitors[0].rank = 1;
    }
    else {
        gFestivalCompetitors[0].rank = 2;
    }

    if (gFestivalCompetitors[0].rank == 1) {
        gFestivalCompetitors[1].rank = 2;
    }
    else {
        gFestivalCompetitors[1].rank = 1;
    }

    gFestivalEventClearCount++;
    gFestivalTimeToBeat = gActors[0x6E].var_158;
    gFestivalTimeCurrent = temp;
    gFestivalRecords[gFestivalCurrentEvent] = gFestivalTimeToBeat;
}

void func_801B1BC4_7ADAE4(u16 actor_index) {
    actor_index = 0x3F;
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_8;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].unk_178 = (s32)D_801B73B4_7B32D4;
}

void func_801B1C24_7ADB44(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 176) {
        gActors[actor_index].var_154 = 0x30;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B1CF0_7ADC10(u16 actor_index) {
    if ((gActiveFrames & 0x40) && (gActors[actor_index].graphicTimer == 0)) {
        gActors[actor_index].var_154 = 0x140;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B1DDC_7ADCFC(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 160) {
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].unk_170 = FIXED_UNIT(4.0);
        gActors[actor_index].var_154 = 0x20;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B1EB4_7ADDD4(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 160) {
        gActors[actor_index].var_154 = 0x90;
    }

    if (gActors[0].posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B1F80_7ADEA0(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x50;
    }
}

void func_801B1FC8_7ADEE8(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        if (gActors[actor_index].unk_114 != 0.0f) {
            if (gActors[actor_index].unk_17C != 0) {
                gActors[actor_index].unk_16C = FIXED_UNIT(1.0);
                gActors[actor_index].unk_17C = 0;
            }
            else {
                gActors[actor_index].unk_16C = FIXED_UNIT(-1.0);
                gActors[actor_index].unk_17C = 1;
            }
            gActors[actor_index].unk_114 = 0.0f;
        }
        gActors[actor_index].var_154 = 0x70;
    }
}

void func_801B2058_7ADF78(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x60;
    }
}

void func_801B20A0_7ADFC0(u16 actor_index) {
    if ((gActors[actor_index].graphicTimer == 0) && (gActors[actor_index].unk_174 == 0)) {
        gActors[actor_index].var_154 = 0xE0;
    }
}

void func_801B20F8_7AE018(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        if (gActors[actor_index].unk_174 != 0) {
            gActors[actor_index].var_154 = 0xF0;
            return;
        }

        gActors[actor_index].var_154 = 0x70;

        if (Rand() >= 0xFB) {
            gActors[actor_index].var_154 = 0x100;
        }
    }
}

void func_801B2180_7AE0A0(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        if (gActors[actor_index].unk_174 != 0) {
            gActors[actor_index].var_154 = 0xF0;
            return;
        }

        gActors[actor_index].var_154 = 0x110;

        if (Rand() >= 0xFB) {
            gActors[actor_index].var_154 = 0x100;
        }
    }
}

s32 func_801B2208_7AE128(u16 actor_index) {
    u16 index;

    for (index = 0x50; index < 0x60; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) &&
            (gActors[index].actorType == 0x70A) &&
            (actor_index == gActors[index].unk_178)) {
            return 1;
        }
    }
    return 0;
}

u16 func_801B2290_7AE1B0(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior) {
    u16 new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x70A);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posZ.whole = position_z;
        gActors[new_actor_index].var_110 = timer;
        gActors[new_actor_index].var_0D8 = random_base;

        switch (behavior) {
        case 0:
            gActors[new_actor_index].pfn_190 = func_801B1C24_7ADB44;
            break;
        case 1:
            gActors[new_actor_index].pfn_190 = func_801B1CF0_7ADC10;
            break;
        case 2:
            gActors[new_actor_index].pfn_190 = func_801B1DDC_7ADCFC;
            break;
        case 3:
            gActors[new_actor_index].pfn_190 = func_801B1EB4_7ADDD4;
            break;
        case 4:
            gActors[new_actor_index].pfn_190 = func_801B1F80_7ADEA0;
            break;
        case 5:
            gActors[new_actor_index].pfn_190 = func_801B1FC8_7ADEE8;
            break;
        case 6:
            gActors[new_actor_index].pfn_190 = func_801B2058_7ADF78;
            break;
        case 7:
            gActors[new_actor_index].pfn_190 = func_801B20A0_7ADFC0;
            break;
        case 8:
            gActors[new_actor_index].pfn_190 = func_801B20F8_7AE018;
            break;
        case 9:
            gActors[new_actor_index].pfn_190 = func_801B2180_7AE0A0;
            break;
        }
    }

    return new_actor_index;
}

void func_801B242C_7AE34C(u16 actor_index) {
    Festival_Actor_SpawnWithBehavior* entry;
    s16 left_bound;
    s16 right_bound;
    u16 index;
    u16 new_actor_index;
    u16* table;

    left_bound = gScreenPosCurrentX.whole - 0x199;
    right_bound = gScreenPosCurrentX.whole + 0x190;
    table = D_801B7404_7B3324;

    for (index = 0; index < 8; index++) {
        s16 position_x;

        entry = &D_801B742C_7B334C[index];
        position_x = entry->spawn.positionX;
        if ((position_x >= left_bound) && (right_bound >= position_x) && (func_801B2208_7AE128(index) == 0)) {
            new_actor_index = func_801B2290_7AE1B0(
                position_x,
                entry->spawn.positionY,
                entry->spawn.unk_04,
                entry->spawn.unk_06,
                entry->behavior
            );

            if (new_actor_index != 0) {
                u16 random0 = Rand();
                u16 random1 = Rand();
                u16 random2 = D_801B73F4_7B3314[random0 & 7] + table[random1 & 0xF];
                gActors[new_actor_index].var_0D8 = random2 + 1;
                gActors[new_actor_index].unk_178 = index;
            }
        }
    }
}

void func_801B259C_7AE4BC(u16 actor_index) {
    u16 unused;
    u16 temp;
    u16 position_x;
    s16 position_z;
    u16 random[2];
    u32 new_actor_index;

    if ((gActiveFrames & 0x1FF) == 0) {
        if (Rand() & 1) {
            position_x = gScreenPosCurrentX.whole - 0xE0;
        }
        else {
            position_x = gScreenPosCurrentX.whole + 0xE0;
        }

        position_z = (Rand() & 7) == 0 ? 0xA0 : -0xFD;

        random[0] = Rand();
        temp = D_801B73F4_7B3314[random[0] & 7] + D_801B7404_7B3324[Rand() & 0xF];
        if ((Rand() & 3) == 0) {
            new_actor_index = func_801B2290_7AE1B0(position_x, position_z, 0, temp, 9);
        }
        else {
            new_actor_index = func_801B2290_7AE1B0(position_x, position_z, 0, temp, 8);
        }

        if (new_actor_index != 0) {
            if ((s16)position_x < gScreenPosCurrentX.whole) {
                gActors[new_actor_index].unk_16C = FIXED_UNIT(1.0);
                return;
            }
            gActors[new_actor_index].unk_16C = FIXED_UNIT(-2.0);
        }
    }
}

void func_801B2720_7AE640(u16 actor_index) {
    func_801B0D5C_7ACC7C(actor_index);
    func_801B242C_7AE34C(actor_index);
    func_801B259C_7AE4BC(actor_index);
    func_801B2F70_7AEE90(actor_index);
    switch (gActors[actor_index].state) {
    case 0x0:
        gFestivalCompetitorCount = 2;
        gFestivalIsTimeBeat = 0;
        gFestivalEventState = 0x10;
        func_801B0F8C_7ACEAC(actor_index, 0);
        func_801B1BC4_7ADAE4(actor_index);
        func_801B0EF0_7ACE10(actor_index);
        gActors[actor_index].var_150 = 0x3C;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_BROKEN);
        Sound_PlaySfx(SFX_CROUD_CHATTER);
        gActors[actor_index].state += 1;
        // fallthrough
    case 0x1:
        if (--gActors[actor_index].var_150 < 0) {
            func_801B1194_7AD0B4(actor_index);
            gActors[actor_index].state += 1;
        }
        // fallthrough
    default:
        break;
    case 0x2:
        if (--gActors[actor_index].var_150 < 0) {
            OverlayABI_Slot2_fn30_u16(actor_index);
            gActors[actor_index].var_150 = 0x78;
            gActors[actor_index].state += 1;
        }
        break;
    case 0x3:
        if (--gActors[actor_index].var_150 < 0) {
            func_801B0F8C_7ACEAC(actor_index, 0);
            gFestivalEventState = 0x20;
            OverlayABI_Slot2_fn28_u16(actor_index);
            gActors[actor_index].var_150 = 0xB4;
            if (!(gActors[actor_index].var_15C & 1)) {
                gActors->pos[0].whole = 0xE0 - gScreenPosCurrentX.whole;
                D_800BE5F4.unk_00_u32 = 0x17;
            }
            gActors[actor_index].state += 1;
        }
        break;
    case 0x4:
        func_801B1A18_7AD938(actor_index);
        if (--gActors[actor_index].var_150 < 0) {
            gFestivalEventState = 0x30;
            OverlayABI_Slot2_fn29_u16(actor_index);
            if (gActors[actor_index].var_15C & 1) {
                gActors[actor_index].state = 8;
            }
            else {
                gActors[actor_index].state = 5;
                D_800BE5F4.unk_00_u32 = 5;
                D_800BE544 = 0;
            }
        }
        break;
    case 0x5:
        func_801B1A18_7AD938(actor_index);
        switch (func_801B15C8_7AD4E8(actor_index)) {
        case 0x0:
            break;
        case 0x1:
            gActors[actor_index].state = 6;
            func_801B14FC_7AD41C(actor_index);
            gActors[actor_index].unk_168 += 1;
            gActors[actor_index].var_150 = 0xB4;
            D_800BE5F4.unk_00_u32 = 0x19;
            D_800BE544 = 0x8000;
            Sound_PlaySfx(SFX_WRONG_0134);
            break;
        case 0x2:
            gActors[actor_index].state = 6;
            func_801B169C_7AD5BC(actor_index, gActors->pos[0].whole);
            func_801B13C4_7AD2E4(actor_index, gActors->pos[0].whole, 0);
            gActors[actor_index].var_150 = 0xB4;
            D_800BE5F4.unk_00_u32 = 0x19;
            D_800BE544 = 0x8000;
            break;
        }
        break;
    case 0x6:
        func_801B1850_7AD770(actor_index);
        func_801B1974_7AD894(actor_index);
        if (--gActors[actor_index].var_150 < 0) {
            ++gActors[actor_index].var_15C;
            gActors[actor_index].var_150 = 0x3C;
            if (gActors[actor_index].var_15C >= 4) {
                gActors[actor_index].state = 9;
                gActors[actor_index].var_150 = 0xF0;
            }
            else {
                gActors[actor_index].state = 7;
            }
        }
        break;
    case 0x7:
        func_801B1850_7AD770(actor_index);
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].unk_164 = 0;
            gActors[0x6E].palette_18C = D_800D9AE4;
            gActors[actor_index].state = 3;
            func_801B0F8C_7ACEAC(actor_index, 0);
            func_801B195C_7AD87C(actor_index);
            if (gActors[actor_index].var_15C & 1) {
                func_801B1638_7AD558(actor_index);
                D_800BE5F4.unk_00_u32 = 4;
                gActors[actor_index].var_160 = 0;
            }
            else {
                gActors->pos[0].whole = 0xE0 - gScreenPosCurrentX.whole;
                D_800BE5F4.unk_00_u32 = 5;
                gActors->flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[0x5F].flags = ACTOR_FLAG_NONE;
            }
        }
        break;
    case 0x8:
        func_801B1A18_7AD938(actor_index);

        // fakematch
        {
            Actor* actor_5f = &gActors[0x5F];
            gScreenPosTargetX.whole = gScreenPosCurrentX.whole + actor_5f->posX.whole;
        }
        //

        if (gActors[actor_index].var_160 != 0) {
            gActors[actor_index].var_150 = 0xB4;
            gActors[actor_index].state = 6;
            func_801B169C_7AD5BC(actor_index, gActors[0x5F].posX.whole);
        }
        break;
    case 0x9:
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            Sound_StartFade(1U, 0x3CU);
            gActors[actor_index].var_150 = 0x1E;
        }
        break;
    case 0xB:
        break;
    case 0xA:
        if ((--gActors[actor_index].var_150 < 0) || (gAudioFadeMode != 1)) {
            func_801B1828_7AD748(actor_index);
            func_801B17C0_7AD6E0(actor_index);
            func_801B1ADC_7AD9FC(actor_index);
            gActors[actor_index].state += 1;
        }
        break;
    }
}

s32 func_801B2C20_7AEB40(u16 actor_index, s16 position_x) {
    s32 result = 0;
    Actor* actor = &gActors[actor_index];

    if (actor->flags & ACTOR_FLAG_FLIPPED) {
        if (actor->unk_17C < position_x) {
            result = 1;
        }
    }
    else if (position_x < actor->unk_17C) {
        result = 1;
    }

    return result;
}

void func_801B2CAC_7AEBCC(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        func_80067E50(actor_index, D_800E1700);

        switch (gActors[actor_index].unk_174) {
        case 0:
            gActors[actor_index].unk_174 += 1;
            gActors[actor_index].unk_184_s16[0] = 0x190;
            gActors[actor_index].unk_184_s16[1] = 0x176;
            break;

        case 1:
            if (func_80073320(actor_index) < 0x8000) {
                gActors[actor_index].unk_174 += 1;
            }
            break;

        case 2:
            if (func_801B2C20_7AEB40(actor_index, 0x220) != 0) {
                gActors[actor_index].state = 0x70;
            }
            gActors[actor_index].unk_174 += 1;
            break;

        case 3:
            if (gFestivalEventState == 0x30) {
                gActors[actor_index].unk_174 += 1;
                gActors[actor_index].state = 0xA0;
                gActors[actor_index].unk_118 = 1.0f;
            }
            break;

        case 4:
            break;
        }
        break;

    case 0x91:
        gActors[actor_index].unk_118 = 1.4f;
        func_80073320(actor_index);
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = 2.0f;
        if ((gScreenPosCurrentX.whole + gActors[actor_index].posX.whole + (gActors[actor_index].unk_17C * 0)) >= 0x219) {
            gActors[actor_index].unk_120 = (Rand() << 8) + (D_801B747C_7B339C + (D_80178292 & 0xFF))->unk_00 - 0x8000;
            gActors[actor_index].unk_11C = (D_801B747C_7B339C + (D_80178292 & 0xFF))->unk_04;
            gActors[actor_index].state = 0x130;
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        }
        break;

    case 0x151:
        if (gActors[actor_index].unk_17C >= 0x220) {
            gActors[0x30].var_160 = 1;
            if (gActors[actor_index].unk_16C == 0) {
                gActors[actor_index].unk_16C = 1;
                func_801B13C4_7AD2E4(0x30, gActors[0x5F].posX.whole, 1);
            }
        }
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
}

void func_801B2F50_7AEE70(s32 arg0) {
}

void func_801B2F58_7AEE78(s32 arg0) {
}

void func_801B2F60_7AEE80(s32 arg0) {
}

void func_801B2F68_7AEE88(s32 arg0) {
}

void func_801B2F70_7AEE90(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].state == 0) {
        s32 position_multiplier = 100;

        for (index = 0; index < 4; index++) {
            u16 new_actor_index = index + 0x72;

            ACTOR_INIT(new_actor_index, 0x1A03);
            gActors[new_actor_index].posX.whole = (index * position_multiplier) - 0x6E;
            gActors[new_actor_index].posY.whole = 0x54;
            gActors[new_actor_index].var_110 = -8.0f;
            gActors[new_actor_index].var_0D8 = 0x1004;
            gActors[new_actor_index].var_154 = 0xFFFF;
        }
        return;
    }

    for (index = 0; index < 4; index++) {
        if (gActors[(u16)(index + 0x72)].posX.whole < -0xD1) {
            gActors[(u16)(index + 0x72)].unk_17C += 0x190;
        }
        else if (gActors[(u16)(index + 0x72)].posX.whole >= 0xD2) {
            gActors[(u16)(index + 0x72)].unk_17C -= 0x190;
        }
    }
}

u16 func_801B3104_7AF024(u16 actor_index, s16 position_x, s16 position_y, s16 position_z, f32 rotation_y) {
    u16 new_actor_index = Actor_RangeFindInactive(0x35, 0x38);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x1A09);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicList = D_800E24EC;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].scaleX = 2.0f;
        gActors[new_actor_index].scaleY = 1.5f;
        gActors[new_actor_index].posX.whole = 0x230 - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posY.whole = 0x179 - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = -0x50;
        gActors[new_actor_index].hitboxBX0 = -0x20;\
        gActors[new_actor_index].hitboxBX1 = 0x20;
        gActors[new_actor_index].hitboxBY0 = 0x18;
        gActors[new_actor_index].hitboxBY1 = -0x18;
        gActors[new_actor_index].posX.whole += position_x;
        gActors[new_actor_index].posY.whole += position_y;
        gActors[new_actor_index].posZ.whole += position_z;
        gActors[new_actor_index].rotateY = rotation_y;
    }

    return new_actor_index;
}

void func_801B3248_7AF168(u16 actor_index) {
    gActors[0x35].flags &= ~ACTOR_FLAG_PLATFORM1;
}

void func_801B326C_7AF18C(u16 actor_index) {
    if ((gActors[actor_index].actorType != 0x1A09) && (gActors[gActors[actor_index].var_158].var_158 == 1)) {
        gActors[actor_index].actorType = 0x1A09;
    }

    if ((gActors[actor_index].graphicIndex == 0x836) || (gActors[actor_index].graphicIndex == 0x838)) {
        switch ((u32)gActors[actor_index].unk_14C) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
            gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
            gActors[actor_index].unk_14C += 1.0f;
            // fallthrough

        case 1:
            gActors[actor_index].posX.whole = gActors[gActors[actor_index].var_158].posX.whole + (gActors[actor_index].var_15C * gActors[gActors[actor_index].var_158].scaleX);
            gActors[actor_index].posY.whole = gActors[gActors[actor_index].var_158].posY.whole + (gActors[actor_index].var_160 * gActors[gActors[actor_index].var_158].scaleY);

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                switch (gActors[gActors[actor_index].var_158].var_150) {
                case 4:
                    gActors[0x30].var_154 = gActors[actor_index].unk_148;
                    break;

                case 5:
                    gActors[0x30].var_154 = gActors[actor_index].unk_148 + 5.0f;
                    break;

                case 6:
                    gActors[0x30].var_158 = gActors[actor_index].unk_148;
                    break;

                case 7:
                    gActors[0x30].var_158 = gActors[actor_index].unk_148 + 5.0f;
                    break;

                case 0x1C:
                    gActors[0x30].var_154 = gActors[actor_index].unk_148 + 10.0f;
                    break;

                case 0x1D:
                    gActors[0x30].var_158 = gActors[actor_index].unk_148 + 10.0f;
                    break;
                }

                gActors[actor_index].unk_14C = 2.0f;
            }
            break;

        case 2:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK19;
                gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityZ.raw = 0;
                gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
                gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
                gActors[gActors[actor_index].unk_164].posX.whole = gActors[actor_index].posX.whole;
                gActors[gActors[actor_index].unk_164].posY.whole = gActors[actor_index].posY.whole;
            }
            else {
                gActors[actor_index].posZ.whole = -4;
                gActors[actor_index].unk_14C = 1.0f;
                gActors[actor_index].posX.whole = gActors[gActors[actor_index].var_158].posX.whole + (gActors[actor_index].var_15C * gActors[gActors[actor_index].var_158].scaleX);
                gActors[actor_index].posY.whole = gActors[gActors[actor_index].var_158].posY.whole + (gActors[actor_index].var_160 * gActors[gActors[actor_index].var_158].scaleY);
            }
            break;
        }

        gActors[gActors[actor_index].unk_164].posX.whole = gActors[actor_index].posX.whole;
        gActors[gActors[actor_index].unk_164].posY.whole = gActors[actor_index].posY.whole;
        gActors[gActors[actor_index].unk_164].posZ.whole = gActors[actor_index].posZ.whole + 1;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_801B3798_7AF6B8(u16 actor_index) {
    if ((gActors[actor_index].actorType != 0x1A09) && (gActors[gActors[actor_index].var_158].var_158 == 1)) {
        gActors[actor_index].actorType = 0x1A09;
    }

    if ((gActors[actor_index].graphicIndex == 0x836) || (gActors[actor_index].graphicIndex == 0x838)) {
        gActors[gActors[actor_index].unk_164].posX.whole = gActors[actor_index].posX.whole;
        gActors[gActors[actor_index].unk_164].posY.whole = gActors[actor_index].posY.whole;
        gActors[gActors[actor_index].unk_164].posZ.whole = gActors[actor_index].posZ.whole + 1;
    }
}

void func_801B3874_7AF794(u16 actor_index) {
    UnkStruct_7AC820__Graphic graphic_configs[6] = D_801B7600_7B3520;
    u16 index;

    for (index = 0; index < 6; index++) {
        u16 new_actor_index = Actor_RangeFindInactive(0x38, 0x3E);
        if (new_actor_index != 0) {
            ACTOR_INIT(new_actor_index, 0x1A07);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;

            if (index < 3) {
                gActors[new_actor_index].unk_164 |= 0x1D0;
                gActors[new_actor_index].pfn_190 = func_801B326C_7AF18C;
            }
            else {
                gActors[new_actor_index].unk_164 |= 0x50;
            }

            gActors[new_actor_index].scaleX = 1.9f;
            gActors[new_actor_index].posZ.whole = -8;
            gActors[new_actor_index].var_150 = graphic_configs[index].unk_00;
            gActors[new_actor_index].unk_174 = (s32)graphic_configs[index].graphicList;

            if (index < 3) {
                gActors[new_actor_index].palette_18C = D_800D9B64;
            }
            else {
                gActors[new_actor_index].palette_18C = D_800D9AE4;
            }
        }
    }
}

void func_801B3A04_7AF924(u16 actor_index, s16 position_x, s16 position_y) {
    u16 new_actor_index = Actor_RangeFindInactive(0x3E, 0x40);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x1A08);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicIndex = 0x2D0;
        gActors[new_actor_index].colorB = 0xBA;
        gActors[new_actor_index].colorA = 0xB2;
        gActors[new_actor_index].scaleX = 4.0f;
        gActors[new_actor_index].scaleY = 1.0f;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posY.whole = position_y - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = -1;
    }
}

void func_801B3AE8_7AFA08(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x76, 0x7E);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x1A03);
        gActors[new_actor_index].posX.whole = 0x1D0 - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posY.whole = -0x18;
        gActors[new_actor_index].var_110 = 65281.0f;
        gActors[new_actor_index].var_0D8 = 0x1D03;
    }
}

void func_801B3B84_7AFAA4(u16 actor_index) {
    u16 new_actor_index;
    u16 index;

    func_801B3A04_7AF924(actor_index, 0x1F0, 0x150);
    func_801B3A04_7AF924(actor_index, 0x270, 0x150);

    for (index = 0; index < 8; index++) {
        s32 position_x;

        new_actor_index = index + 0x40;
        ACTOR_INIT(new_actor_index, 0x1A08);
        position_x = -(index * 8);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].graphicIndex = 0x2D2;
        gActors[new_actor_index].unk_18C = (s32)D_800D9AE4;
        gActors[new_actor_index].posX.whole = (position_x - gScreenPosCurrentX.whole) + 0x20C;
        gActors[new_actor_index].posY.whole = 0x150 - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = 0;
    }

    gActors[0x40].flags |= ACTOR_FLAG_DRAW;

    for (index = 0; index < 8; index++) {
        s32 position_x;

        new_actor_index = index + 0x48;
        ACTOR_INIT(new_actor_index, 0x1A08);
        position_x = -(index * 8);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].graphicIndex = 0x2D2;
        gActors[new_actor_index].unk_18C = (s32)D_800D9AE4;
        gActors[new_actor_index].posX.whole = (position_x - gScreenPosCurrentX.whole) + 0x28C;
        gActors[new_actor_index].posY.whole = 0x150 - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = 0;
    }

    gActors[0x48].flags |= ACTOR_FLAG_DRAW;
}

void func_801B3D68_7AFC88(u16 actor_index) {
    gFestivalCompetitors[1].unk_12 = 0x180;
    gFestivalCompetitors[1].unk_10 = 0;
}

void func_801B3D84_7AFCA4(u16 actor_index) {
    u16 new_actor_index;
    u16 fixed_actor_index;

    new_actor_index = func_801B3104_7AF024(actor_index, 0, 0, 0, 0.0f);
    func_801B3104_7AF024(actor_index, -0x20, 0, -0x20, 90.0f);
    func_801B3104_7AF024(actor_index, 0x20, 0, -0x20, 270.0f);
    gActors[new_actor_index].flags |= ACTOR_FLAG_PLATFORM1;

    fixed_actor_index = 0x33;
    gActors[fixed_actor_index].actorType = 0x708;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].posX.whole = 0x330 - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = 0x1A3 - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = 0;
    gActors[fixed_actor_index].var_110 = 4096.0f;
    gActors[fixed_actor_index].var_0D8 = 0x2130;
    gActors[actor_index].unk_17C = 0;
    func_801B3D68_7AFC88(actor_index);
}

void func_801B3EDC_7AFDFC(u16 actor_index) {
    u16 fixed_actor_index = 0x71;
    gActors[fixed_actor_index].actorType = 0x1A08;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[fixed_actor_index].graphicIndex = 0x2D0;
    gActors[fixed_actor_index].scaleX = 9.0f;
    gActors[fixed_actor_index].scaleY = 2.0f;
    gActors[fixed_actor_index].colorR = 0xFF;
    gActors[fixed_actor_index].colorG = 0xFF;
    gActors[fixed_actor_index].colorB = 0xFF;
    gActors[fixed_actor_index].posX.whole = 0x230 - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = 0x1E0 - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = -3;
    gActors[fixed_actor_index].unk_188 = 0;
    gActors[fixed_actor_index].unk_16C = (s32)D_801B75C0_7B34E0;

    fixed_actor_index = 0x34;
    gActors[fixed_actor_index].actorType = 0x709;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].posX.whole = 0x330 - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = 0x172 - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = 0;
    gActors[fixed_actor_index].var_110 = 384.0f;
    gActors[fixed_actor_index].var_0D8 = 0;

    func_801B3874_7AF794(actor_index);
    func_801B3B84_7AFAA4(actor_index);
    Sound_PlaySfx(SFX_DROP_0132);
}

u16 func_801B4048_7AFF68(u16 value) {
    u16 graphic_index;

    if (value == 0xA) {
        graphic_index = 0x3E;
    }
    else {
        graphic_index = value;
    }

    return (graphic_index * 2) + 0x2D2;
}

void func_801B407C_7AFF9C(u16 actor_index, u32 value, u16 use_second_row) {
    s16 index;
    u16 temp;
    s32 base_actor_index;
    s32 blank_digit;
    s32 should_draw;

    should_draw = 0;
    blank_digit = 0xA;
    if (use_second_row != 0) {
        base_actor_index = 0x48;
    }
    else {
        base_actor_index = 0x40;
    }

    index = 7;
    temp = 0;
    while (index >= 0) {
        if (((value >> (index * 4)) & 0xF) == blank_digit) {
            temp = index + 1;
        }
        index--;
    }

    if (temp >= 8) {
        temp = 0;
    }

    for (index = 7; index >= 0; index--) {
        s32 digit = (value >> (index * 4)) & 0xF;

        if (((digit != 0) || (index == 0) || (temp >= index)) && ((digit != blank_digit) || (index != 7))) {
            should_draw = 1;
        }

        gActors[base_actor_index + index].graphicIndex = func_801B4048_7AFF68(digit);
        if (should_draw != 0) {
            gActors[base_actor_index + index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[base_actor_index + index].flags &= ~ACTOR_FLAG_DRAW;
        }
    }
}

s32 func_801B420C_7B012C(u16 actor_index, u16 use_unk_170) {
    s16 index;
    u32 value;

    if (use_unk_170 != 0) {
        value = gActors[actor_index].unk_170;
    }
    else {
        value = gActors[actor_index].unk_16C_u32;
    }

    for (index = 7; index >= 0; index--) {
        if (((value >> (index * 4)) & 0xF) == 0xA) {
            return 1;
        }
    }

    return 0;
}

void func_801B42C0_7B01E0(u16 actor_index) {
    u16 temp;

    if (((u32)gActors[actor_index].var_154 != gActors[actor_index].var_15C) && ((u32)gActors[actor_index].var_154 != 0)) {
        gActors[actor_index].unk_164 = 1;
    }

    if (((u32)gActors[actor_index].var_158 != gActors[actor_index].var_160) && ((u32)gActors[actor_index].var_158 != 0)) {
        gActors[actor_index].unk_168 = 1;
    }

    if (gActors[actor_index].unk_164 != 0) {
        temp = 0;
        switch ((temp == temp) ? gActors[actor_index].var_154 : gActors[actor_index].var_154) {
        case 0xA:
            break;

        default:
            temp = (u16)gActors[actor_index].var_154;
            break;

        case 0xC:
            temp = 0xA;
            break;

        case 0xB:
            gActors[actor_index].unk_16C = 0;
            break;
        }

        if ((temp == 0xA) && (func_801B420C_7B012C(actor_index, 0) != 0)) {
            return;
        }

        gActors[actor_index].unk_16C *= 0x10;
        gActors[actor_index].unk_16C |= temp;
        func_801B407C_7AFF9C(actor_index, gActors[actor_index].unk_16C_u32, 0);
        func_8003EEC0(
            0.5f,
            gActors[gActors[0].parentIndex].posX.whole,
            gActors[gActors[0].parentIndex].posY.whole,
            gActors[0].posZ.whole + 1
        );
        Sound_PlaySfxAtActor2(SFX_POP_00C5, 0);
    }

    if (gActors[actor_index].unk_168 != 0) {
        temp = 0;
        switch ((temp == temp) ? gActors[actor_index].var_158 : gActors[actor_index].var_158) {
        case 0xA:
            break;

        default:
            temp = (u16)gActors[actor_index].var_158;
            break;

        case 0xB:
            temp = 0xA;
            break;

        case 0xC:
            gActors[actor_index].unk_170 = 0;
            break;
        }

        if ((temp == 0xA) && (func_801B420C_7B012C(actor_index, 1) != 0)) {
            return;
        }

        gActors[actor_index].unk_170 *= 0x10;
        gActors[actor_index].unk_170 |= temp;
        func_801B407C_7AFF9C(actor_index, gActors[actor_index].unk_170, 1);
    }

    gActors[actor_index].var_160 = gActors[actor_index].var_158;
    gActors[actor_index].var_15C = gActors[actor_index].var_154;
    gActors[actor_index].var_154 = 0;
    gActors[actor_index].var_158 = 0;
    gActors[actor_index].unk_164 = 0;
    gActors[actor_index].unk_168 = 0;
}

void func_801B4504_7B0424(u16 table_index) {
    s32* entry;

    if (table_index == 0xFF) {
        D_800BE544 = 0;
        D_800BE704 = 0x10;
        D_800BE708 = 4;
        D_800BE548.raw = FIXED_UNIT(16.0);
        D_800BE54C.raw = FIXED_UNIT(16.0);
        return;
    }

    D_800BE544 = 0x8000;
    table_index *= 3;
    entry = &D_801B75F4_7B3514[table_index];
    gScreenPosTargetX.whole = entry[0];
    D_800BE704 = entry[1];
    D_800BE548.raw = entry[2];
}

void func_801B45A0_7B04C0(u16 actor_index) {
    actor_index = 0x32;
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_8;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].unk_178 = (s32)D_801B74C4_7B33E4;
}

void func_801B4600_7B0520(u16 actor_index) {
    actor_index = 0x70;
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_7;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = 0x230 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = 0x1E0 - gScreenPosCurrentY.whole;
    gActors[actor_index].posZ.whole = -2;
    gActors[actor_index].var_150 = 0x1F;
    gActors[actor_index].unk_164 = 0x40;
    gActors[actor_index].unk_174 = (s32)D_801B75A8_7B34C8;
}

s32 func_801B469C_7B05BC(u16 index, u8 value) {
    if (value >= 100) {
        ToBCD(value);
        D_801B80B0_7B3FD0[index++] = gBCDArray[5] + 0xA1;
        D_801B80B0_7B3FD0[index++] = gBCDArray[6] + 0xA1;
        D_801B80B0_7B3FD0[index++] = gBCDArray[7] + 0xA1;
    }
    else if (value >= 10) {
        ToBCD(value);
        D_801B80B0_7B3FD0[index++] = gBCDArray[6] + 0xA1;
        D_801B80B0_7B3FD0[index++] = gBCDArray[7] + 0xA1;
    }
    else {
        D_801B80B0_7B3FD0[index++] = value + 0xA1;
    }

    return index;
}

void func_801B47DC_7B06FC(u8* destination, u8* source, u16 count) {
    u16 index;

    for (index = 0; index < count; index++) {
        destination[index] = source[index];
    }
}

void func_801B4818_7B0738(u16 actor_index) {
    u8 temp0;
    u8 temp1;
    u8 temp2;
    s32 zero;
    u8 index;

    temp0 = Rand() % 10;
    temp1 = Rand() % 10;
    zero = 0;
    temp2 = Rand() % 10;

    if (temp0 == zero) {
        temp0 = 1;
    }

    if (temp1 == zero) {
        temp1 = 1;
    }

    if (temp2 == zero) {
        temp2 = 1;
    }

    D_801B80B0_7B3FD0[zero] = 0xFF7F;
    index = func_801B469C_7B05BC(1, temp0);
    D_801B80B0_7B3FD0[index++] = 0xBF;
    index = func_801B469C_7B05BC(index, temp1);
    D_801B80B0_7B3FD0[index++] = 0xBF;
    index = func_801B469C_7B05BC(index, temp2);
    D_801B80B0_7B3FD0[index++] = 0xC3;
    D_801B80B0_7B3FD0[index++] = 0xB3;
    D_801B80B0_7B3FD0[index] = 0x8FFF;

    // fakematch
    if (temp0) {
    }
    {
        s32 temp = temp2;
        if (temp && temp) {
        }
    }
    //

    ToBCD((u16)(temp0 + temp1 + temp2));
    func_801B47DC_7B06FC(D_801B80E0_7B4000, gBCDArray, 8);
}

void func_801B49B8_7B08D8(u16 actor_index) {
    u8 temp0;
    u8 temp1;
    u8 product;
    u8 random;
    u16 answer;
    u8 index;

    random = Rand() & 1;
    if (random) {
        temp0 = Rand() % 10;
        temp1 = Rand() % 10;

        if (temp0 == 0) {
            temp0 = 1;
        }

        if (temp1 == 0) {
            temp1 = 1;
        }

        product = temp0 * temp1;
        answer = temp1;
        temp1 = temp0;
        temp0 = product;
    }
    else {
        temp0 = Rand() % 10;
        temp1 = Rand() % 10;

        if (temp0 == 0) {
            temp0 = 1;
        }

        if (temp1 == 0) {
            temp1 = 1;
        }

        answer = temp0 * temp1;
    }

    D_801B80B0_7B3FD0[0] = 0xFF7F;
    index = func_801B469C_7B05BC(1, temp0);
    D_801B80B0_7B3FD0[index++] = random + 0xC1;
    index = func_801B469C_7B05BC(index, temp1);
    D_801B80B0_7B3FD0[index++] = 0xC3;
    D_801B80B0_7B3FD0[index++] = 0xB3;
    D_801B80B0_7B3FD0[index] = 0x8FFF;

    ToBCD(answer);
    func_801B47DC_7B06FC(D_801B80E0_7B4000, gBCDArray, 8);
}

void func_801B4B80_7B0AA0(u16 actor_index) {
    u8 index;
    u8 temp1;
    s32 temp0;

    temp0 = (u8)(Rand() % 10);
    {
        s16 temp1_copy;
        s32 sum;
        s32 temp0_copy;

        temp1 = (u8)(Rand() % 10);
        temp0_copy = temp0;
        if (temp0 == 0) {
            temp0 = 1;
            temp0_copy = 1;
        }

        if (temp1 == 0) {
            temp1 = 1;
        }

        D_801B80B0_7B3FD0[0] = 0xFF7F;
        index = func_801B469C_7B05BC(1, temp0);
        D_801B80B0_7B3FD0[index++] = 0xBF;
        index = func_801B469C_7B05BC(index, temp1);
        D_801B80B0_7B3FD0[index++] = 0xC3;
        D_801B80B0_7B3FD0[index++] = 0xB3;

        // fakematch
        if (temp1 && temp1) {
        }
        {
            sum = temp1;
            D_801B80B0_7B3FD0[index] = 0x8FFF;

            if (temp0) {
            }

            temp1_copy = temp1;
            sum = temp0_copy + sum;

            if (temp1_copy && temp1_copy) {
            }

            ToBCD((u16)sum);
        }
        //

        func_801B47DC_7B06FC(D_801B80E0_7B4000, gBCDArray, 8);
    }
}

void func_801B4CB0_7B0BD0(u16 actor_index) {
    f64 random;
    u8* values;
    u16 index;

    values = D_801B80E0_7B4000;
    for (index = 0; index < 8; index++) {
        values[index] = 0;
    }

    random = (f64)(u32)Rand();
    if (random < 84.15) {
        func_801B4818_7B0738(actor_index);
    }
    else if (random < 168.3) {
        func_801B49B8_7B08D8(actor_index);
    }
    else {
        func_801B4B80_7B0AA0(actor_index);
    }

    gActors[actor_index].unk_174 = 0;
    for (index = 0; index < 8; index++) {\
        gActors[actor_index].unk_174 *= 0x10;
        gActors[actor_index].unk_174 |= values[index];\
    }
}

void func_801B4DF8_7B0D18(u16 actor_index) {
    u16 fixed_actor_index = 0x70;
    
    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL2_FEST_7;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[fixed_actor_index].posX.whole = 0x230 - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = 0x1E0 - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = -2;
    gActors[fixed_actor_index].unk_164 = 0x240;
    gActors[fixed_actor_index].unk_184 = (s32)D_801B80B0_7B3FD0;
    func_801B4CB0_7B0BD0(actor_index);
}

s32 func_801B4E94_7B0DB4(u16 actor_index) {
    Actor* actor;
    s32 difference;
    s32 temp;

    actor = &gActors[actor_index];
    temp = actor->unk_174;
    difference = actor->unk_16C - temp;
    if (difference == 0) {
        return 1;
    }

    if ((actor->unk_170 - temp) == 0) {
        return 2;
    }

    return 0;
}

void func_801B4EFC_7B0E1C(u16 actor_index) {
    // fakematch
    s8 byte_index = actor_index;
    s16 half_index = actor_index;

    if (byte_index && byte_index) {
    }
    if (half_index && half_index) {
    }
    //

    actor_index = 0;
    gFestivalCompetitors[actor_index].rank = 1;
    actor_index++;
    gFestivalCompetitors[actor_index].rank = 2;
}

void func_801B4F1C_7B0E3C(u16 actor_index) {
    gFestivalTimeToBeat = gFestivalRecords[gFestivalCurrentEvent];
}

void func_801B4F44_7B0E64(u16 actor_index) {
    Actor* actor;
    s32 var_a1;
    s32 var_a2;
    u32 record;
    s32 var_v1;

    gFestivalEventsPlayed[gFestivalCurrentEvent] = 1;
    actor = &gActors[actor_index];
    gFestivalEventClearCount++;
    var_a1 = actor->unk_184;
    var_a2 = actor->unk_180;
    if (var_a1 < var_a2) {
        var_v1 = gFestivalTimeCurrent = var_a2;
    }
    else {
        gFestivalTimeCurrent = var_a1;
        var_v1 = var_a2;
    }

    gFestivalIsTimeBeat = 0;
    record = gFestivalTimeToBeat;
    if (record < *((u32*)&gFestivalTimeCurrent)) {
        gFestivalIsTimeBeat = 1;
        gFestivalTimeToBeat = *((u32*)&gFestivalTimeCurrent);
        record = *((u32*)&gFestivalTimeCurrent);
    }

    gFestivalTimeCurrent = var_v1;
    gFestivalRecords[gFestivalCurrentEvent] = record;
    if (var_a1 < var_a2) {
        gFestivalCompetitors[0].rank = 1;
    }
    else {
        gFestivalCompetitors[0].rank = 2;
    }

    if (gFestivalCompetitors[0].rank == 1) {
        gFestivalCompetitors[1].rank = 2;
        return;
    }
    gFestivalCompetitors[1].rank = 1;
}

void func_801B5064_7B0F84(u16 actor_index, u16 player_number) {
    u16 new_actor_index = Actor_RangeFindInactive(0x76, 0x7E);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_FEST_7);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].posZ.whole = 8;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[new_actor_index].var_150 = 0x25;
        gActors[new_actor_index].unk_174 = (s32)D_801B75EC_7B350C;
        gActors[new_actor_index].unk_164 = 0x40;

        if (player_number == 1) {
            gActors[new_actor_index].posX.whole = 0x1F0 - gScreenPosCurrentX.whole;
            gActors[new_actor_index].posY.whole = 0x150 - gScreenPosCurrentY.whole;
        }
        else {
            gActors[new_actor_index].posX.whole = 0x270 - gScreenPosCurrentX.whole;
            gActors[new_actor_index].posY.whole = 0x150 - gScreenPosCurrentY.whole;
        }

        func_8003ED48(
            actor_index,
            0,
            gActors[new_actor_index].posX.whole,
            gActors[new_actor_index].posY.whole,
            9
        );
        Sound_PlaySfxAtActor2(SFX_GEM_APPEAR, new_actor_index);
    }
}

void func_801B519C_7B10BC(u16 actor_index) {
    Festival_UnkMotion table[8] = D_801B7630_7B3550;
    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;
        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;
        gActors[actor_index].unk_180++;
        if (gActors[actor_index].unk_180 >= table[current_index].duration) {
            gActors[actor_index].unk_17C = current_index + 1;
            gActors[actor_index].unk_180 = 0;
        }
    }
}

void func_801B52B4_7B11D4(u16 actor_index) {
    Festival_UnkMotion table[9] = D_801B7690_7B35B0;
    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;
        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;
        gActors[actor_index].unk_180++;
        if (gActors[actor_index].unk_180 >= table[current_index].duration) {
            gActors[actor_index].unk_17C = current_index + 1;
            gActors[actor_index].unk_180 = 0;
        }
    }
}

u16 func_801B53CC_7B12EC(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior) {
    u16 new_actor_index = Actor_RangeFindInactive(0x7C, 0x7E);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x070A);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posZ.whole = position_z;
        gActors[new_actor_index].var_110 = timer;
        gActors[new_actor_index].var_0D8 = random_base;
        switch (behavior) {
        case 0:
            gActors[new_actor_index].pfn_190 = func_801B519C_7B10BC;
            break;

        case 1:
            gActors[new_actor_index].pfn_190 = func_801B52B4_7B11D4;
            break;
        }
    }
    return new_actor_index;
}

void func_801B54DC_7B13FC(u16 actor_index) {
    u16 unused;
    u16 temp;
    s16 position_x;
    u16 new_actor_index;
    u16 random[2];

    if (!(gActiveFrames & 0xFF)) {
        random[0] = Rand();
        temp = D_801B73F4_7B3314[random[0] & 7] + D_801B7404_7B3324[Rand() & 0xF];
        if (!(Rand() & 1)) {
            position_x = gScreenPosCurrentX.whole + 0xE0;
            new_actor_index = func_801B53CC_7B12EC(position_x, -0xFC, 0, temp, 1);
        }
        else {
            position_x = gScreenPosCurrentX.whole - 0xE0;
            new_actor_index = func_801B53CC_7B12EC(position_x, -0xFC, 0, temp, 0);
        }

        if (new_actor_index != 0) {
            if (position_x < gScreenPosCurrentX.whole) {
                gActors[new_actor_index].unk_16C = FIXED_UNIT(2.0);
                return;
            }
            gActors[new_actor_index].unk_16C = FIXED_UNIT(-2.0);
        }
    }
}

void func_801B5630_7B1550(u16 actor_index) {
    func_801B2F70_7AEE90(actor_index);
    func_801B54DC_7B13FC(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gFestivalCompetitorCount = 2;
        func_801B3D84_7AFCA4(actor_index);
        func_801B4504_7B0424(0);
        gFestivalEventState = 0x10;
        func_801B3AE8_7AFA08(actor_index);
        func_801B45A0_7B04C0(actor_index);
        func_801B4F1C_7B0E3C(actor_index);
        gActors[actor_index].var_150 = 0x3C;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_BROKEN);
        D_801B80E8_7B4008 = 0;
        gActors[actor_index].state++;
        // fallthrough

    case 1:
        if (--gActors[actor_index].var_150 < 0) {
            gFestivalEventState = 0x20;
            OverlayABI_Slot2_fn30_u16(actor_index);
            gActors[actor_index].var_150 = 0x78;
            gActors[actor_index].state++;
        }
        break;

    case 2:
        if (--gActors[actor_index].var_150 < 0) {
            func_801B3EDC_7AFDFC(actor_index);
            D_800BE5F4.unk_00_u32 = 0x18;
            gActors[actor_index].var_150 = 0x3C;
            D_801B80E8_7B4008 = 0xE10;
            gActors[actor_index].state++;
        }
        break;

    case 3:
        if (--gActors[actor_index].var_150 < 0) {
            gFestivalEventState = 0x30;
            func_801B4600_7B0520(actor_index);
            Sound_PlaySfx(SFX_GEM_APPEAR);
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].unk_170 = 0;
            func_801B407C_7AFF9C(actor_index, 0, 0);
            func_801B407C_7AFF9C(actor_index, gActors[actor_index].unk_170, 1);
            gActors[actor_index].var_150 = 0x78;
            gActors[actor_index].unk_17C++;
            gActors[actor_index].state++;
        }
        break;

    case 4:
        if (--gActors[actor_index].var_150 < 0) {
            gFestivalEventState = 0x40;
            func_801B3248_7AF168(actor_index);
            func_801B4504_7B0424(0xFF);
            func_801B4DF8_7B0D18(actor_index);
            gActors[actor_index].unk_114 = D_801B7504_7B3424[D_80178292];
            if (gActors[actor_index].unk_118 == 0.0f) {
                gActors[actor_index].unk_118 = 1.0f;
                D_800BE5F4.unk_00_u32 = 5;
            }
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].state++;
        }
        break;

    case 5:
        func_801B42C0_7B01E0(actor_index);
        gActors[actor_index].unk_178 = func_801B4E94_7B0DB4(actor_index);
        if (gActors[actor_index].unk_178 != 0) {
            if (gActors[actor_index].unk_178 == 1) {
                gActors[actor_index].unk_180++;
                Sound_PlaySfxAtActor2(SFX_CORRECT_0133, 0);
            }
            else {
                gActors[actor_index].unk_184++;
                Sound_PlaySfxAtActor2(SFX_CORRECT_0133, 0x34);
            }
            
            gActors[actor_index].state = 6;
            gActors[actor_index].var_150 = 0x78;
            gActors[0x70].flags = ACTOR_FLAG_NONE;
            func_801B5064_7B0F84(actor_index, gActors[actor_index].unk_178_u16[1]);
            if (D_801B80E8_7B4008 <= 0) {
                gActors[actor_index].var_150 = 0xF0;
                gActors[actor_index].state = 7;
            }
        }
        break;

    case 6:
        func_801B42C0_7B01E0(actor_index);
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state = 3;
        }
        break;

    case 7:
        if (--gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            Sound_StartFade(1, 0x3C);
            gActors[actor_index].var_150 = 0x1E;
        }
        break;

    case 8:
        if ((--gActors[actor_index].var_150 < 0) || (gAudioFadeMode != 1)) {
            func_801B4EFC_7B0E1C(actor_index);
            func_801B4F44_7B0E64(actor_index);
            func_801B1828_7AD748(actor_index);
            gActors[actor_index].state++;
        }
        break;

    case 9:
        break;
    }

    if (D_801B80E8_7B4008 > 0) {
        D_801B80E8_7B4008--;
    }
}

void func_801B5A3C_7B195C(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].var_154 = -0x4F0000;
        gActors[actor_index].posZ.raw = FIXED_UNIT(-79.0);
    }

    if (gFestivalEventState >= 0x30) {
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    }

    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        if (gFestivalEventState != gActors[actor_index].unk_174_u16[1]) {
            gActors[actor_index].unk_174 = gFestivalEventState;
        }
        switch (gActors[actor_index].unk_174_u16[1]) {
        case 0x10:
        case 0x20:
            gActors[actor_index].unk_184_s16[0] = 0x230;
            gActors[actor_index].unk_184_s16[1] = 0x1A3;
            func_800734C4(actor_index, 4);
            break;

        case 0x30:
        case 0x40:
            break;
        }
        // fallthrough

    case 0xA1:
        gActors[actor_index].unk_118 = 1.4f;
        func_800734C4(actor_index, 2);
        if (gActors[actor_index].state == 0x120) {
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        if (((gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0]) > 0
                    ? (gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])
                    : -(gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])) < 3) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x60;
        }
        break;

    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
}

void func_801B5C38_7B1B58(u16 actor_index) {
    u16 index;

    for (index = 0; index < 8; index++) {
        D_801B80A0_7B3FC0[index] = 0;
    }

    D_801B80A8_7B3FC8 = 0;
    D_801B80AC_7B3FCC = 0;
    gActors[actor_index].unk_170 = 0;
}

void func_801B5CA8_7B1BC8(u16 actor_index) {
    s16 source_index;
    s16 destination_index;
    s32 temp;

    temp = 0;
    source_index = 0;\
    destination_index = 0;\
    while (source_index < 8) {
        u8 value = D_801B80E0_7B4000[source_index];
        if ((value != 0) && (temp == 0)) {
            temp = 1;
            D_801B80A8_7B3FC8 = 8 - source_index;
        }

        if (temp != 0) {
            D_801B80A0_7B3FC0[destination_index++] = value;
        }
        source_index++;
    }
}

void func_801B5D2C_7B1C4C(u16 actor_index) {
    func_80067E50(actor_index, D_800E1700);
    if (gFestivalEventState != gActors[actor_index].unk_174_u16[1]) {
        gActors[actor_index].unk_174 = gFestivalEventState;
    }

    switch (gActors[actor_index].unk_174_u16[1]) {
    case 0x10:
    case 0x20:
        gActors[actor_index].unk_184_s16[0] = 0x270;
        gActors[actor_index].unk_184_s16[1] = 0x16F;
        func_800734C4(actor_index, 4);
        break;

    case 0x30:
        break;

    case 0x40:
        switch (gActors[actor_index].unk_174_u16[0]) {
        case 0:
            func_801B5C38_7B1B58(actor_index);
            D_801B80AC_7B3FCC = gActors[0x30].unk_174;
            func_801B5CA8_7B1BC8(actor_index);
            gActors[actor_index].unk_174_u16[0]++;
            // fallthrough

        case 1:
            gActors[0x30].unk_114 -= 1.0f;
            if (gActors[0x30].unk_114 < 0.0f) {
                gActors[actor_index].unk_174_u16[0]++;
            }
            break;

        case 2:
            if (gActors[actor_index].unk_170 >= D_801B80A8_7B3FC8) {
                gActors[actor_index].unk_174_u16[0] = 5;
                break;
            }
            {
                u8 entry_index;

                entry_index = D_801B80A0_7B3FC0[gActors[actor_index].unk_170];
                gActors[actor_index].unk_184_s16[0] = D_801B76FC_7B361C[entry_index].unk_00;
                gActors[actor_index].unk_16C = D_801B76FC_7B361C[entry_index].unk_02;
                gActors[actor_index].unk_174_u16[0]++;
            }
            // fallthrough

        case 3:
            func_800734C4(actor_index, 2);
            if (ABS(gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0]) < 3) {
                gActors[actor_index].unk_174_u16[0]++;
            }
            break;

        case 4:
            switch (gActors[actor_index].unk_16C) {
            case 0:
                gActors[actor_index].unk_11C = FIXED_UNIT(6.25);
                break;

            case 1:
                gActors[actor_index].unk_11C = FIXED_UNIT(4.5);
                break;

            case 2:
                gActors[actor_index].unk_11C = FIXED_UNIT(1.0);
                break;
            }
            gActors[actor_index].unk_120 = 0.0f;
            gActors[actor_index].state = 0x120;
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            break;

        case 5:
            if (gFestivalEventState == 0x30) {
                gActors[actor_index].unk_174 = 0;
            }
            break;
        }
        break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
}

void func_801B5FFC_7B1F1C(u16 actor_index) {
    switch (gActors[actor_index].unk_174_u16[1]) {
    case 0x10:
    case 0x20:
        gActors[actor_index].unk_118 = 1.4f;
        func_800734C4(actor_index, 2);
        if (((gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0]) > 0
                    ? (gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])
                    : -(gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])) < 3) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x60;
        }
        // fallthrough

    case 0x30:
        break;

    case 0x40:
        gActors[actor_index].unk_118 = 1.4f;
        func_800734C4(actor_index, 2);
        if (((gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0]) > 0
                    ? (gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])
                    : -(gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0])) < 3) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state = 0x60;
        }
        break;
    }
}

u16 func_801B6128_7B2048(u16 value) {
    u16 result;

    switch (value) {
    case 0:
        result = 0xA;
        break;
    case 0xA:
        result = 0xB;
        break;
    default:
        result = value;
        break;
    }

    return result;
}

void func_801B6158_7B2078(u16 actor_index) {
    if (gActors[actor_index].unk_174_u16[0] == 4) {
        gActors[0x30].var_158 = func_801B6128_7B2048(D_801B80A0_7B3FC0[gActors[actor_index].unk_170]);
        func_8003EEC0(
            0.5f,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 8,
            8
        );
        Sound_PlaySfxAtActor2(SFX_POP_00C5, actor_index);
        gActors[actor_index].unk_174_u16[0] = 1;
        gActors[actor_index].unk_170++;
    }
}

void func_801B6214_7B2134(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        return;

    case 0x61:
        func_801B5D2C_7B1C4C(actor_index);
        return;

    case 0xA1:
        func_801B5FFC_7B1F1C(actor_index);
        return;

    case 0x101:
        func_801B6158_7B2078(actor_index);
        return;

    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        return;
    }
}

void func_801B62E4_7B2204(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 176) {
        gActors[actor_index].var_154 = 0x30;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B63B0_7B22D0(u16 actor_index) {
    if ((gActiveFrames & 0x40) && (gActors[actor_index].graphicTimer == 0)) {
        gActors[actor_index].var_154 = 0x140;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B649C_7B23BC(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 160) {
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].unk_170 = FIXED_UNIT(4.0);
        gActors[actor_index].var_154 = 0x20;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B6574_7B2494(u16 actor_index) {
    if (((gPlayerActor.posX.whole - gActors[actor_index].posX.whole) > 0
             ? (gPlayerActor.posX.whole - gActors[actor_index].posX.whole)
             : -(gPlayerActor.posX.whole - gActors[actor_index].posX.whole)) < 160) {
        gActors[actor_index].var_154 = 0x90;
    }

    if (gPlayerActor.posX.whole < gActors[actor_index].posX.whole) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
        }
    }

    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
        }
    }
}

void func_801B6640_7B2560(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x50;
    }
}

void func_801B6688_7B25A8(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        if (gActors[actor_index].unk_114 != 0.0f) {
            if (gActors[actor_index].unk_17C != 0) {
                gActors[actor_index].unk_16C = FIXED_UNIT(1.0);
                gActors[actor_index].unk_17C = 0;
            }
            else {
                gActors[actor_index].unk_16C = FIXED_UNIT(-1.0);
                gActors[actor_index].unk_17C = 1;
            }
            
            gActors[actor_index].unk_114 = 0.0f;
        }
        gActors[actor_index].var_154 = 0x70;
    }
}

void func_801B6718_7B2638(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x60;
    }
}

void func_801B6760_7B2680(u16 actor_index) {
    if ((gActors[actor_index].graphicTimer == 0) && (gActors[actor_index].unk_174 == 0)) {
        gActors[actor_index].var_154 = 0xE0;
    }
}

s32 func_801B67B8_7B26D8(u16 actor_index) {
    u16 index;

    for (index = 0x50; index < 0x60; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) &&
            (gActors[index].actorType == 0x105) &&
            (actor_index == gActors[index].unk_178)) {
            return 1;
        }
    }

    return 0;
}

u16 func_801B6840_7B2760(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior) {
    u16 new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x105);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posZ.whole = position_z;
        gActors[new_actor_index].var_110 = timer;
        gActors[new_actor_index].var_0D8 = random_base;

        switch (behavior) {
        case 0:
            gActors[new_actor_index].pfn_190 = func_801B62E4_7B2204;
            break;

        case 1:
            gActors[new_actor_index].pfn_190 = func_801B63B0_7B22D0;
            break;

        case 2:
            gActors[new_actor_index].pfn_190 = func_801B649C_7B23BC;
            break;

        case 3:
            gActors[new_actor_index].pfn_190 = func_801B6574_7B2494;
            break;

        case 4:
            gActors[new_actor_index].pfn_190 = func_801B6640_7B2560;
            break;

        case 5:
            gActors[new_actor_index].pfn_190 = func_801B6688_7B25A8;
            break;

        case 6:
            gActors[new_actor_index].pfn_190 = func_801B6718_7B2638;
            break;

        case 7:
            gActors[new_actor_index].pfn_190 = func_801B6760_7B2680;
            break;
        }
    }

    return new_actor_index;
}

void func_801B69BC_7B28DC(u16 actor_index) {
    Festival_Actor_SpawnWithBehavior* entry;
    s16 left_bound;
    s16 position_x;
    s16 right_bound;
    u16 index;
    s32 new_actor_index;

    left_bound = gScreenPosCurrentX.whole - 0x199;
    right_bound = gScreenPosCurrentX.whole + 0x190;

    for (index = 0; index < 6; index++) {
        entry = &D_801B7728_7B3648[index];
        position_x = entry->spawn.positionX;
        if ((position_x >= left_bound) &&
            (right_bound >= position_x) &&
            (func_801B67B8_7B26D8(index) == 0)) {
            new_actor_index = func_801B6840_7B2760(
                position_x,
                entry->spawn.positionY,
                entry->spawn.unk_04,
                entry->spawn.unk_06,
                entry->behavior
            );

            if (new_actor_index != 0) {
                gActors[new_actor_index].unk_178 = index;
            }
        }
        if (!position_x) {
        }
    }
}

void func_801B6AD4_7B29F4(u16 actor_index, s16* graphic_list) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].graphicList = graphic_list;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_154 = 0;
    }
}

s32 func_801B6B24_7B2A44(u16 actor_index) {
    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
    if (gActors[actor_index].velocityX.raw < 0) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
            return 1;
        }
    }

    if (gActors[actor_index].velocityX.raw > 0) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
            return 1;
        }
    }

    return 0;
}

void func_801B6BB4_7B2AD4(u16 actor_index) {
    switch (gActors[actor_index].var_154) {
    case 0:
    case 0x160:
        if (gActors[actor_index].pfn_190 != NULL) {
            gActors[actor_index].pfn_190(actor_index);
        }

        if (gActors[actor_index].graphicTimer != 0) {
            return;
        }

        if (gActors[actor_index].var_154 != 0) {
            return;
        }

        gActors[actor_index].graphicTimer = 1;

        if (gActors[actor_index].unk_174 != 0) {
            gActors[actor_index].graphicList = D_801B7764_7B3684;
        }
        else {
            gActors[actor_index].graphicList = D_800E1700;
        }

        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
        break;

    case 0x10:
        gActors[actor_index].graphicTimer = 1;

        if (gActors[actor_index].unk_174 != 0) {
            gActors[actor_index].graphicList = D_800E19E8;
        }
        else {
            gActors[actor_index].graphicList = D_800E19C0;
        }

        gActors[actor_index].var_158 = 6;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_154++;
        // fallthrough

    case 0x11:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].var_154 = 0;
        }

        gActors[actor_index].var_158--;
        if (gActors[actor_index].var_158 == 0) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
        }
        break;

    case 0x20:
        ACTOR_GFX_INIT(actor_index, D_800E1BF4);
        gActors[actor_index].var_154++;
        // fallthrough

    case 0x21:
        if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E1C00);
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_170;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
            gActors[actor_index].var_154++;
        }
        break;

    case 0x22:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(68.0 / 256);
        }

        if (gActors[actor_index].velocityY.raw >= 0) {
            break;
        }

        if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < gActors[actor_index].var_160) {
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
        }
        break;

    case 0x30:
        func_801B6AD4_7B29F4(actor_index, D_800E2274);
        break;

    case 0x40:
        func_801B6AD4_7B29F4(actor_index, D_801B78CC_7B37EC);
        break;

    case 0x50:
        func_801B6AD4_7B29F4(actor_index, D_801B7974_7B3894);
        gActors[actor_index].var_154 = 0x160;
        break;

    case 0x60:
        func_801B6AD4_7B29F4(actor_index, D_801B7954_7B3874);
        break;

    case 0x90:
        func_801B6AD4_7B29F4(actor_index, D_801B7888_7B37A8);
        break;

    case 0xB0:
        func_801B6AD4_7B29F4(actor_index, D_801B7944_7B3864);
        gActors[actor_index].var_154 = 0x160;
        break;

    case 0xC0:
        func_801B6AD4_7B29F4(actor_index, D_801B7930_7B3850);
        break;

    case 0xA0:
        func_801B6AD4_7B29F4(actor_index, D_801B78E8_7B3808);
        break;

    case 0xE0:
        func_801B6AD4_7B29F4(actor_index, D_800E17A4);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_174 = 1;
        break;

    case 0xF0:
        func_801B6AD4_7B29F4(actor_index, D_800E17DC);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_174 = 0;
        break;

    case 0x120:
        func_801B6AD4_7B29F4(actor_index, D_800E1750);
        break;

    case 0x130:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicTimer = 1;

            if (gActors[actor_index].unk_174 != 0) {
                gActors[actor_index].graphicList = D_800E1840;
            }
            else {
                gActors[actor_index].graphicList = D_800E17F8;
            }

            gActors[actor_index].var_154 = 0;
        }
        break;

    case 0x140:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicTimer = 1;

            if (gActors[actor_index].unk_174 != 0) {
                gActors[actor_index].graphicList = D_800E1CB4;
            }
            else {
                gActors[actor_index].graphicList = D_800E1C9C;
            }

            gActors[actor_index].var_154 = 0;
        }
        break;

    case 0x70:
        if (gActors[actor_index].graphicTimer == 0) {
            if (func_801B6B24_7B2A44(actor_index) == 0) {
                gActors[actor_index].graphicTimer = 1;

                if (gActors[actor_index].unk_174 != 0) {
                    gActors[actor_index].graphicList = D_801B7800_7B3720;
                }
                else {
                    gActors[actor_index].graphicList = D_801B7778_7B3698;
                }

                gActors[actor_index].var_154 = 0;
                gActors[actor_index].unk_114 += 1.0f;
            }
        }
        break;

    case 0x80:
        if (gActors[actor_index].graphicTimer == 0) {
            if (func_801B6B24_7B2A44(actor_index) == 0) {
                gActors[actor_index].graphicTimer = 1;

                if (gActors[actor_index].unk_174 != 0) {
                    gActors[actor_index].graphicList = D_801B7800_7B3720;
                }
                else {
                    gActors[actor_index].graphicList = D_801B77BC_7B36DC;
                }

                gActors[actor_index].var_154 = 0;
                gActors[actor_index].unk_114 += 1.0f;
            }
        }
        break;

    case 0xD0:
        gActors[actor_index].velocityX.raw = 0;
        break;

    case 0x100:
        if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E22A8);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
            gActors[actor_index].var_154++;
        }
        break;

    case 0x101:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(68.0 / 256);
        }

        if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E22B4);
            gActors[actor_index].var_154++;
        }
        break;

    case 0x102:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(68.0 / 256);
        }

        if (gActors[actor_index].velocityY.raw < 0) {
            if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < gActors[actor_index].var_160) {
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].unk_174 = 1;
            }
        }
        break;

    case 0x110:
        if (gActors[actor_index].graphicTimer == 0) {
            if (func_801B6B24_7B2A44(actor_index) == 0) {
                gActors[actor_index].graphicTimer = 1;
                gActors[actor_index].graphicList = D_800E1D0C;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                gActors[actor_index].posY.whole = (gActors[actor_index].var_160 - gScreenPosCurrentY.whole) - 8;
                gActors[actor_index].var_154 = 0;
            }
        }
        break;

    case 0x150:
        if (gActors[actor_index].graphicTimer == 0) {
            if (func_801B6B24_7B2A44(actor_index) == 0) {
                gActors[actor_index].graphicTimer = 1;
                gActors[actor_index].graphicList = D_801B7844_7B3764;
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
            }
        }
        break;
    }
}


void func_801B71F4_7B3114(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = 0x6800;
        gActors[actor_index].posY.whole = -40;
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
        gActors[actor_index].var_15C = gScreenPosCurrentX.whole;
        gActors[actor_index].var_15C += gActors[actor_index].posX.whole;
        gActors[actor_index].var_160 = gScreenPosCurrentY.whole;
        gActors[actor_index].var_160 += gActors[actor_index].posY.whole;
        gActors[actor_index].state++;
    }
    else {
        func_801B6BB4_7B2AD4(actor_index);
        if (!(gActors[actor_index].var_0D8 & 1)) {
            if ((gActors[actor_index].posX.whole < -0x190) ||
                (gActors[actor_index].posX.whole >= 0x191)) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
            }
        }
    }

    if (gActors[actor_index].flags != 0) {
        func_80066BCC(actor_index);
    }
    else {
        func_8006CB88(actor_index);
    }
}
