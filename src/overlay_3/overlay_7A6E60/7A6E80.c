#include "common.h"
#include "7D8E0.h"

typedef struct Overlay_7A6E60_Graphic_Index_Table {
    /* 0x00 */ u16 indices[4];
} Overlay_7A6E60_Graphic_Index_Table; /* sizeof = 0x08 */

typedef struct Overlay_7A6E60_Actor_Spawn_Record {
    /* 0x00 */ s16 positionX;
    /* 0x02 */ u16 positionY;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 unk_06;
} Overlay_7A6E60_Actor_Spawn_Record; /* sizeof = 0x08 */

typedef struct Overlay_7A6E60_Graphic_Spawn_Record {
    /* 0x00 */ u16 graphicFlags;
    /* 0x02 */ u16 positionX;
    /* 0x04 */ u16 positionY;
} Overlay_7A6E60_Graphic_Spawn_Record; /* sizeof = 0x06 */

typedef struct Overlay_7A6E60_Spawn_Config {
    /* 0x00 */ s16 positionX;
    /* 0x02 */ s16 positionZ;
    /* 0x04 */ s16 unused_04;
    /* 0x06 */ s16 unused_06;
    /* 0x08 */ s16 behavior;
} Overlay_7A6E60_Spawn_Config; /* sizeof = 0x0A */

typedef struct Overlay_7A6E60_Init_Record {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 timer;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 actorType;
} Overlay_7A6E60_Init_Record; /* sizeof = 0x0C */

extern void* D_800D1968[];
extern u8 D_800D9AF4[];
extern u8 D_800D9B04[];
extern u8 D_800D9B14[];
extern u8 D_800D9B24[];
extern u8 D_800D9B34[];
extern u8 D_800D9B44[];
extern s16 D_800E1750[];
extern s16 D_800E176C[];
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

Overlay_7A6E60_Init_Record D_801B4E90_7AB410[3] = {
    { 1, 0, 0, 0x1000, 0x1110, 0x0103 },
    { 2, 0, 0, 0x1000, 0x2220, 0x0103 },
    { 0, 0, 0, 0x1000, 0, 0x0103 },
};

Overlay_7A6E60_Init_Record D_801B4EB4_7AB434[3] = {
    { 3, 0x0100, 0, 0x1000, 0x3330, 0x0103 },
    { 4, 0x0200, 0, 0x1000, 0x4400, 0x0103 },
    { 5, 0x0301, 0, 0x1000, 0x5000, 0x0103 },
};

Overlay_7A6E60_Init_Record D_801B4ED8_7AB458[3] = {
    { 6, 0x0402, 0, 0x1000, 0x6600, 0x0103 },
    { 7, 0x0503, 0x0100, 0x1000, 0x7700, 0x0103 },
    { 8, 0x0604, 0x0200, 0x1000, 0, 0x0103 },
};

Overlay_7A6E60_Init_Record D_801B4EFC_7AB47C[3] = {
    { 9, 0x0705, 0x0300, 0x1000, 0x0900, 0x0103 },
    { 0, 0x0806, 0x0400, 0x1000, 0x0A00, 0x0103 },
    { 0, 0x0907, 0x0500, 0x1000, 0x0B00, 0x0103 },
};

Overlay_7A6E60_Init_Record D_801B4F20_7AB4A0[4] = {
    { 0, 8, 0x0600, 0x1000, 0x0600, 0x0104 },
    { 0, 9, 0x0700, 0x1000, 0x0F00, 0x0104 },
    { 0, 0, 0x0800, 0x1000, 0x0D00, 0x0104 },
    { 0, 0, 0x0800, 0x1000, 0x2D30, 0x0104 },
};

s16 D_801B4F50_7AB4D0[12] = {
    0x0220, 0x016E, 0, 0x0220, 0x016F, 0x0060,
    0x0220, 0x016F, -0x60, 0x0220, 0x016F, -0xC0,
};

s32 D_801B4F68_7AB4E8[9] = {
    0x01C0, 1, 0x10000, 0x0280, 1, 0x10000, 0x0E50, 1, 0x10000,
};

s32 D_801B4F8C_7AB50C[9] = {
    0x01C0, 1, 0x10000, 0x0280, 1, 0x10000, 0x1A50, 1, 0x10000,
};

s32 D_801B4FB0_7AB530[9] = {
    0x01C0, 1, 0x10000, 0x0280, 1, 0x10000, 0x3250, 1, 0x10000,
};

s32 D_801B4FD4_7AB554[9] = {
    0x01C0, 1, 0x10000, 0x0280, 1, 0x10000, 0x6450, 1, 0x10000,
};

s32 D_801B4FF8_7AB578[9] = {
    0x01C0, 1, 0x10000, 0x0280, 1, 0x10000, 0x0E50, 1, 0x10000,
};

u8 D_801B501C_7AB59C[16] = {
    0, 5, 0x28, 0, 1, 0, 0, 6, 1, 0, 1, 0, 0, 0xB4, 0, 0,
};

f32 D_801B502C_7AB5AC[51] = {
    2.0f, 868.0f, 36.0f, -194.0f, 680.0f, -32.0f, -194.0f, 3.0f,
    868.0f, 36.0f, 42.0f, 680.0f, -52.0f, 42.0f, 60.0f, 3.0f,
    0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f, 120.0f, 0.0f,
    3.0f, 90.0f, 30.0f, 448.0f, 0.0f, 0.0f, 0.0f, 240.0f,
    0.0f, 3.0f, 0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f,
    120.0f, 0.0f, 3.0f, -152.0f, 63.0f, 448.0f, 0.0f, 0.0f,
    0.0f, 600.0f, 0.0f,
};

f32 D_801B50F8_7AB678[43] = {
    2.0f, 297.0f, 97.0f, -109.0f, 254.0f, 0.0f, 0.0f, 3.0f,
    0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f, 180.0f, 0.0f,
    3.0f, 90.0f, 40.0f, 448.0f, 0.0f, 0.0f, 0.0f, 240.0f,
    0.0f, 3.0f, 0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f,
    120.0f, 0.0f, 3.0f, -152.0f, 63.0f, 448.0f, 0.0f, 0.0f,
    0.0f, 600.0f, 0.0f,
};

f32 D_801B51A4_7AB724[43] = {
    2.0f, 0.0f, 0.0f, -110.0f, 0.0f, 0.0f, -240.0f, 3.0f,
    0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f, 180.0f, 0.0f,
    3.0f, 90.0f, 40.0f, 448.0f, 0.0f, 0.0f, 0.0f, 240.0f,
    0.0f, 3.0f, 0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f,
    120.0f, 0.0f, 3.0f, -152.0f, 63.0f, 448.0f, 0.0f, 0.0f,
    0.0f, 600.0f, 0.0f,
};

f32 D_801B5250_7AB7D0[43] = {
    2.0f, -390.0f, 956.0f, 551.0f, 0.0f, 0.0f, 0.0f, 3.0f,
    0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f, 180.0f, 0.0f,
    3.0f, 90.0f, 40.0f, 448.0f, 0.0f, 0.0f, 0.0f, 240.0f,
    0.0f, 3.0f, 0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f,
    120.0f, 0.0f, 3.0f, -152.0f, 63.0f, 448.0f, 0.0f, 0.0f,
    0.0f, 600.0f, 0.0f,
};

f32 D_801B52FC_7AB87C[62] = {
    2.0f, -50.0f, 2.0f, 72.0f, 0.0f, 0.0f, 0.0f, 3.0f,
    0.0f, 0.0f, 448.0f, 0.0f, 0.0f, 0.0f, 180.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 2.0f, -390.0f, 956.0f, 551.0f, 0.0f,
    0.0f, 0.0f, 3.0f, 0.0f, 0.0f, 448.0f, 0.0f, 0.0f,
    0.0f, 120.0f, 0.0f, 3.0f, 135.0f, 48.0f, 448.0f, 0.0f,
    0.0f, 0.0f, 240.0f, 0.0f, 3.0f, 0.0f, 0.0f, 448.0f,
    0.0f, 0.0f, 0.0f, 120.0f, 0.0f, 3.0f, -152.0f, 63.0f,
    448.0f, 0.0f, 0.0f, 0.0f, 600.0f, 0.0f,
};

u16 D_801B53F4_7AB974[16] = {
    GINDEX_CLANBLOCKSQAURE, GRAPHIC_FRAME(CLANBLOCKSQAURE, 1),
    GRAPHIC_FRAME(CLANBLOCKSQAURE, 2), GRAPHIC_FRAME(CLANBLOCKSQAURE, 1),
    0x21, 0x20, 0x24, 0x22,
    0x23, 0x26, 0x28, 0x1F, 0x1F, 0x1F, 0x1F, 0x32,
};
Overlay_7A6E60_Graphic_Index_Table D_801B5414_7AB994 = {
    { 0x013E, 0x0146, 0x0138, 0x0143 },
};

Overlay_7A6E60_Actor_Spawn_Record D_801B541C_7AB99C[14] = {
    { 0x0130, 0x0183, 0xFF01, 0x1C00 },
    { 0x01C8, 0x0180, 0xFF02, 0x1D03 },
    { 0x0428, 0x018D, 0xFF01, 0x1202 },
    { 0x0560, 0x0185, 0xFF01, 0x1D03 },
    { 0x071F, 0x018A, 0xFF01, 0x1202 },
    { 0x084C, 0x0183, 0xFF01, 0x1D03 },
    { 0x0A25, 0x018A, 0xFF01, 0x1202 },
    { 0x0B32, 0x018B, 0xFF01, 0x1202 },
    { 0x0BE0, 0x019F, 0xFF01, 0x1D06 },
    { 0x0DF2, 0x0183, 0xFF00, 0x1D03 },
    { 0x17E0, 0x019F, 0xFF01, 0x1D06 },
    { 0x19F2, 0x0183, 0xFF00, 0x1D03 },
    { 0x2FE0, 0x019F, 0xFF01, 0x1D06 },
    { 0x31F2, 0x0183, 0xFF00, 0x1D03 },
};

u16 D_801B548C_7ABA0C[16] = {
    0, 0, 0x0100, 0x0200, 0x0300, 0x0400, 0x0500, 0x0600,
    0x0700, 0x0800, 0x0900, 0x0A00, 0x0B00, 0x0C00, 0x0F00, 0x0D00,
};

Overlay_7A6E60_Spawn_Config D_801B54AC_7ABA2C[6] = {
    { 0x0128, -0xFC, 0, 0x0800, 0 },
    { 0x0140, -0xFC, 0, 0x0100, 1 },
    { 0x0300, -0xFC, 0, 0x0800, 2 },
    { 0x0318, -0xFC, 0, 0x0B00, 3 },
    { 0x0290, 0xA0, 0, 0x0200, 4 },
    { 0x02C8, 0xA0, 0, 0x0300, 4 },
};

Overlay_7A6E60_Spawn_Config D_801B54E8_7ABA68[6] = {
    { 0x0118, -0xFC, 0, 0x0800, 0 },
    { 0x0140, -0xFC, 0, 0x0300, 1 },
    { 0x0300, -0xFC, 0, 0x0800, 2 },
    { 0x0318, -0xFC, 0, 0x0200, 3 },
    { 0x02D0, -0xFC, 0, 0x0800, 4 },
    { 0x02E8, 0xA0, 0, 0x0300, 4 },
};

Overlay_7A6E60_Spawn_Config D_801B5524_7ABAA4[6] = {
    { 0x0110, -0xFC, 0, 0x0800, 0 },
    { 0x0130, -0xFC, 0, 0x0500, 1 },
    { 0x0300, -0xFC, 0, 0x0300, 2 },
    { 0x0318, 0xA0, 0, 0x0200, 3 },
    { 0x02C0, 0xA0, 0, 0x0800, 4 },
    { 0x02E8, 0xA0, 0, 0x0400, 4 },
};

Overlay_7A6E60_Spawn_Config D_801B5560_7ABAE0[6] = {
    { 0x0100, -0xFC, 0, 0x0500, 0 },
    { 0x0120, -0xFC, 0, 0x0800, 1 },
    { 0x0180, 0xA0, 0, 0x0800, 4 },
    { 0x0198, 0xA0, 0, 0x0400, 4 },
    { 0x0300, -0xFC, 0, 0x0300, 2 },
    { 0x0318, -0xFC, 0, 0x0400, 3 },
};

u16 D_801B559C_7ABB1C[28] = {
    0, 0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x7000,
    0, 0, 0x0100, 0x0200, 0x0300, 0x0400, 0x0500, 0x0600,
    0x0700, 0x0800, 0x0900, 0x0A00, 0x0B00, 0x0C00, 0x0F00, 0x0D00,
    0, 0x10, 0x20, 0x30,
};

f32 D_801B55D4_7ABB54[33] = {
    1.7f, 1.9f, 2.0f, 2.0f, 2.0f, 2.1f, 2.2f, 2.1f,
    1.8f, 2.2f, 2.1f, 2.0f, 1.9f, 2.1f, 2.0f, 1.9f,
    1.7f, 2.0f, 2.1f, 1.9f, 2.2f, 2.1f, 2.0f, 2.0f,
    1.8f, 2.2f, 2.1f, 2.2f, 2.0f, 2.0f, 1.8f, 1.9f,
    1.0f,
};

f32 D_801B5658_7ABBD8[33] = {
    1.7f, 1.9f, 2.0f, 2.0f, 2.0f, 2.1f, 2.2f, 2.0f,
    1.8f, 2.2f, 2.1f, 2.0f, 1.9f, 2.1f, 2.0f, 1.8f,
    1.7f, 2.0f, 2.1f, 1.9f, 2.2f, 2.1f, 2.0f, 1.9f,
    1.8f, 2.2f, 2.1f, 2.2f, 2.0f, 2.0f, 1.8f, 1.8f,
    1.0f,
};

f32 D_801B56DC_7ABC5C[33] = {
    1.7f, 1.9f, 2.0f, 2.0f, 2.0f, 2.1f, 2.1f, 1.9f,
    1.8f, 2.2f, 2.1f, 2.0f, 1.9f, 2.1f, 1.9f, 1.7f,
    1.7f, 2.0f, 2.1f, 1.9f, 2.2f, 2.1f, 1.9f, 1.8f,
    1.8f, 2.2f, 2.1f, 2.2f, 2.0f, 2.0f, 1.7f, 1.7f,
    1.0f,
};

f32 D_801B5760_7ABCE0[10] = {
    0.0f, 0.05f, 0.1f, 0.15f, 0.2f, 0.25f, 0.3f, 0.35f, 0.4f, 0.45f,
};

f32 D_801B5788_7ABD08[33] = {
    2.0f, 2.1f, 2.2f, 2.1f, 2.2f, 2.2f, 2.1f, 2.0f,
    2.2f, 2.1f, 2.3f, 2.1f, 2.2f, 2.2f, 2.1f, 2.0f,
    2.2f, 2.1f, 2.4f, 2.1f, 2.2f, 2.2f, 2.1f, 2.0f,
    2.2f, 2.1f, 2.3f, 2.1f, 2.2f, 2.2f, 2.1f, 2.0f,
    1.0f,
};

f32 D_801B580C_7ABD8C[10] = {
    0.0f, 0.05f, 0.1f, 0.15f, 0.2f, 0.25f, 0.3f, 0.35f, 0.4f, 0.45f,
};
s16 D_801B5834_7ABDB4[10] = {
    0x6829, 0xA, 0x682A, 7, 0x682B, 0xA, 0x682A, 7, 0, 0,
};

s16 D_801B5848_7ABDC8[34] = {
    0x6885, 2, 0x6886, 2, 0x6887, 2, 0x6888, 2, 0x6889, 2,
    0x688A, 2, 0x688B, 2, 0x688C, 2, 0x688D, 2, 0x688E, 2,
    0x688F, 2, 0x6890, 2, 0x6881, 2, 0x6882, 2, 0x6883, 2,
    0x6884, 2, 0, 0,
};

s16 D_801B588C_7ABE0C[34] = {
    0x6806, 2, 0x6807, 2, 0x6808, 2, 0x6809, 2, 0x680A, 2,
    0x680B, 2, 0x680C, 2, 0x680D, 2, 0x680E, 2, 0x680F, 2,
    0x6810, 2, 0x6811, 2, 0x6812, 2, 0x6803, 2, 0x6804, 2,
    0x6805, 2, 0, 0,
};

s16 D_801B58D0_7ABE50[34] = {
    0x6819, 2, 0x681A, 2, 0x681B, 2, 0x681C, 2, 0x681D, 2,
    0x681E, 2, 0x681F, 2, 0x6820, 2, 0x6821, 2, 0x6822, 2,
    0x6823, 2, 0x6824, 2, 0x6825, 2, 0x6826, 2, 0x6827, 2,
    0x6828, 2, 0, 0,
};

s16 D_801B5914_7ABE94[34] = {
    0x689C, 3, 0x689D, 3, 0x689E, 3, 0x689F, 3, 0x68A0, 3,
    0x68A1, 3, 0x68A2, 3, 0x68A3, 3, 0x68A4, 3, 0x68A5, 3,
    0x68A6, 3, 0x68A7, 3, 0x68A8, 3, 0x68A9, 3, 0x689A, 3,
    0x689B, 3, 0, 0,
};

s16 D_801B5958_7ABED8[34] = {
    0x6907, 4, 0x6908, 4, 0x6909, 4, 0x690A, 5, 0x690B, 6,
    0x690A, 5, 0x6909, 4, 0x6908, 4, 0x6907, 4, 0x6906, 4,
    0x6905, 4, 0x6904, 5, 0x6903, 6, 0x6904, 5, 0x6905, 4,
    0x6906, 4, 0, 0,
};

s16 D_801B599C_7ABF1C[14] = {
    0x6845, 0x1E, 0x6846, 8, 0x6845, 0x1E, 0x6846, 8, 0x6845, 8,
    0x6846, 8, 0, 0,
};

s16 D_801B59B8_7ABF38[36] = {
    0x6842, 5, 0x6841, 5, 0x6854, 5, 0x6841, 5, 0x6852, 5,
    0x6853, 4, 0x6852, 3, 0x6853, 3, 0x6854, 3, 0x6855, 3,
    0x6856, 3, 0x6857, 3, 0x6858, 3, 0x6859, 3, 0x685A, 3,
    0x685B, 3, 0x685C, 3, 0, 0,
};

s16 D_801B5A00_7ABF80[10] = {
    0x691F, 4, 0x6920, 4, 0x6921, 4, 0x6800, 4, 0, 0,
};

s16 D_801B5A14_7ABF94[8] = {
    0x6921, 4, 0x6920, 4, 0x691F, 4, 0, 0,
};

s16 D_801B5A24_7ABFA4[16] = {
    0x690F, 4, 0x6910, 4, 0x6911, 6, 0x6912, 8,
    0x6911, 6, 0x6910, 4, 0x690F, 4, 0, 0,
};

s16 D_801B5A44_7ABFC4[10] = {
    0x690C, 5, 0x690D, 7, 0x690E, 0xA, 0x690D, 7, 0, 0,
};

extern void OverlayABI_Slot2_fn26_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn27_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn28_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn29_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn30_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn31_u16(u16 actor_index);
extern void func_80067E50(u16 actor_index, void* arg1);
extern s32 func_800734C4(u16 actor_index, s32 arg1);
extern void func_8007CD68(u16 actor_index, u16 graphic_flags, s16 position_x, s16 position_y, u16 var_150, u16 var_154, s32 var_15C);

void func_801B0900_7A6E80(u16 actor_index);
s32 func_801B09B4_7A6F34(u16 arg0, s16 arg1);
void func_801B0A58_7A6FD8(u16 actor_index, s16 position_z);
void func_801B0BFC_7A717C(u16 arg0);
void func_801B0C20_7A71A0(u16 actor_index);
void func_801B0CBC_7A723C(u16 arg0);
void func_801B0CEC_7A726C(u16 actor_index);
void func_801B0DA0_7A7320(u16 arg0);
void func_801B0DC8_7A7348(u16 actor_index);
void func_801B10A8_7A7628(u16 actor_index);
void func_801B11E0_7A7760(u16 actor_index);
s32 func_801B12F0_7A7870(u16 actor_index);
void func_801B13F8_7A7978(u16 actor_index);
s32 func_801B14A4_7A7A24(u16 actor_index);
void func_801B159C_7A7B1C(u16 actor_index);
void func_801B16E0_7A7C60(u16 actor_index, u16 arg1);
void func_801B1750_7A7CD0(u16 actor_index);
void func_801B18E8_7A7E68(u16 actor_index);
void func_801B195C_7A7EDC(u16 actor_index);
void func_801B1B48_7A80C8(u16 actor_index);
void func_801B1D60_7A82E0(u16 actor_index, u16 arg1);
s16 func_801B1E80_7A8400(u16 actor_index);
s32 func_801B2040_7A85C0(u16 actor_index);
void func_801B23B8_7A8938(u16 actor_index);
DEFAULT_INT func_801B2498_7A8A18(u16 actor_index);
void func_801B25C4_7A8B44(u16 actor_index);
void func_801B2658_7A8BD8(u16 actor_index);
void func_801B2738_7A8CB8(u16 actor_index);
void func_801B2854_7A8DD4(u16 actor_index);
s32 func_801B286C_7A8DEC(u16 actor_index);
void func_801B2908_7A8E88(u16 actor_index);
void func_801B2A88_7A9008(u16 actor_index);
void func_801B2B54_7A90D4(u16 actor_index);
void func_801B2C40_7A91C0(u16 actor_index);
void func_801B2D18_7A9298(u16 actor_index);
void func_801B2DE4_7A9364(u16 actor_index);
void func_801B2E2C_7A93AC(u16 actor_index);
void func_801B2EBC_7A943C(u16 actor_index);
void func_801B2F04_7A9484(u16 actor_index);
s32 func_801B2F5C_7A94DC(u16 actor_index);
u16 func_801B2FE4_7A9564(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior);
void func_801B3180_7A9700(u16 actor_index);
void func_801B3370_7A98F0(u16 actor_index);
void func_801B3480_7A9A00(u16 start_index, u16 end_index);
void func_801B34D4_7A9A54(u16 actor_index);
void func_801B3BC4_7AA144(u16 actor_index);
void func_801B3BCC_7AA14C(u16 actor_index);
void func_801B3E9C_7AA41C(u16 actor_index);
void func_801B41F4_7AA774(u16 actor_index);
void func_801B4298_7AA818(u16 actor_index);
void func_801B466C_7AABEC(u16 actor_index, s16* graphic_list);
s32 func_801B46C0_7AAC40(u16 actor_index);
void func_801B4750_7AACD0(u16 actor_index);
void func_801B4D68_7AB2E8(u16 actor_index);


#define ACTOR_UNPACK_138(index_, value_) \
{ \
    u16 index = (index_); \
    u32 value = (value_); \
    gActors[index].unk_14C = (f32)(value & 0xF); value = value >> 4; \
    gActors[index].unk_148 = (f32)(value & 0xF); value = value >> 4; \
    gActors[index].unk_144 = (f32)(value & 0xF); value = value >> 4; \
    gActors[index].unk_140_f32 = (f32)(value & 0xF); value = value >> 4; \
    gActors[index].unk_13C_f32 = (f32)(value & 0xF); value = value >> 4; \
    gActors[index].unk_138 = (f32)(value & 0xF); \
}

#define ACTOR_COPY_138_TO_140(index_, jndex_) \
{ \
    u16 index = (index_); \
    u16 jndex = (jndex_); \
    gActors[index].unk_138 = gActors[jndex].unk_138; \
    gActors[index].unk_13C_f32 = gActors[jndex].unk_13C_f32; \
    gActors[index].unk_140_f32 = gActors[jndex].unk_140_f32; \
}

#define ACTOR_COPY_144_TO_14C(index_, jndex_) \
{ \
    u16 index = (index_); \
    u16 jndex = (jndex_); \
    gActors[index].unk_144 = gActors[jndex].unk_144; \
    gActors[index].unk_148 = gActors[jndex].unk_148; \
    gActors[index].unk_14C = gActors[jndex].unk_14C; \
}


void func_801B0900_7A6E80(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].state++;
            // fallthrough
        case 1:
            if ((gActors[actor_index].posX.whole < -168) || (gActors[actor_index].posX.whole >= 169)) {
                gActors[actor_index].flags = 0;
            }
            gActors[actor_index].graphicIndex = D_801B53F4_7AB974[(gActiveFrames & 0x30) >> 4];
            break;
    }
}

s32 func_801B09B4_7A6F34(u16 arg0, s16 arg1) {
    u16 index;

    for (index = 0x30; index < 0xC0; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == 0x102) && (arg0 == gActors[index].var_0D8) && (arg1 == gActors[index].posZ.whole)) {
            return 1;
        }
    }

    return 0;
}

void func_801B0A58_7A6FD8(u16 actor_index, s16 position_z) {
    u16 new_var;
    Overlay_7A6E60_Graphic_Spawn_Record* record;
    s32 left_bound;
    Overlay_7A6E60_Graphic_Spawn_Record* records;
    s32 right_bound;
    u16 index;
    u16 new_actor_index;
    u16 record_size;

    records = (Overlay_7A6E60_Graphic_Spawn_Record*)D_80178288;

    if (D_80178288 && D_80178288) {
    }

    if (records == 0) {
        return;
    }

    right_bound = gScreenPosCurrentX.whole + 168;
    new_var = gScreenPosCurrentX.whole - 168;
    right_bound = (u16)right_bound;
    left_bound = new_var;
    index = 0;

    if (index && index) {
    }

    if (records[0].graphicFlags == (gScreenPosCurrentX.raw * 0)) {
        if ((((gScreenPosCurrentX.frac * 0) + ((s32)((s8*)&gScreenPosCurrentX)[0] * 0)) + ((s32)((s8*)&gScreenPosCurrentX)[1] * 0))) {
        }
        return;
    }

    record_size = (left_bound * 0) + 6;
    record = records;
    while (1) {
        if (((record->positionX >= left_bound) && (right_bound >= record->positionY)) && (func_801B09B4_7A6F34(index, position_z) == 0)) {
            new_actor_index = Actor_RangeFindInactive(0x30, 0xC0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].actorType = 0x102;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].var_0D8 = index;
                gActors[new_actor_index].unk_18C = (s32)D_800D1968[record->graphicFlags & 0xF];
                gActors[new_actor_index].posX.whole = record->positionX - gScreenPosCurrentX.whole;
                gActors[new_actor_index].posY.whole = record->positionY - gScreenPosCurrentY.whole;
                gActors[new_actor_index].posZ.whole = position_z;
            }
        }

        index++;
        index = (u16)index;
        record = (Overlay_7A6E60_Graphic_Spawn_Record*)((index * record_size) + ((u8*)records));
        if (record->graphicFlags == 0) {
            break;
        }
    }
}

void func_801B0BFC_7A717C(u16 arg0) {
    gStageState = 0;
    D_800D28F0 = arg0;
    D_800D28E4 = 0x62;
}

void func_801B0C20_7A71A0(u16 actor_index) {
    FestivalPlayer* players;

    gFestivalRecords[gFestivalCurrentEvent] = gActors[actor_index].unk_178;
    func_801B0DA0_7A7320(actor_index);
    func_801B2498_7A8A18(actor_index);
    players = gFestivalCompetitors;
    players[0].rank = 4;
    players[1].rank = 1;
    players[2].rank = 2;
    players[3].rank = 3;
}

void func_801B0CBC_7A723C(u16 arg0) {
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x63;
    gStageState = 4;
}

void func_801B0CEC_7A726C(u16 actor_index) {
    ACTOR_FIXEDADDRESS_SET(0x31, actorType, ACTORTYPE_ZERO);
    Actor_Initialize(0x31);
    ACTOR_FIXEDADDRESS_SET(0x31, graphicIndex, GINDEX_SOLIDSQARE);
    ACTOR_FIXEDADDRESS_OR(0x31, graphicFlags, ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK11);
    ACTOR_FIXEDADDRESS_OR(0x31, flags, ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_SET(0x31, posX.whole, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, posY.whole, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, posZ.whole, -1);
    ACTOR_FIXEDADDRESS_SET(0x31, colorB, 0xBA);
    ACTOR_FIXEDADDRESS_SET(0x31, colorA, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, scaleX, 20.0f);
    ACTOR_FIXEDADDRESS_SET(0x31, scaleY, 16.0f);
    ACTOR_FIXEDADDRESS_SET(0x31, unk_188, 0);
}

void func_801B0DA0_7A7320(u16 arg0) {
    gStageState = 0;
    D_800D28F0 = 50;
    D_800D28E4 = 0x62;
}

void func_801B0DC8_7A7348(u16 actor_index) {
    s32 unused[1];
    Overlay_7A6E60_Init_Record* init_records;
    FestivalPlayer* records;
    Overlay_7A6E60_Init_Record* init_record;
    u16 new_actor_index;
    u16 index;
    u16 current_index;

    switch (gFestivalCurrentEvent) {
        case 0:
            init_records = D_801B4E90_7AB410;
            break;

        case 1:
            init_records = D_801B4EB4_7AB434;
            break;

        case 2:
            init_records = D_801B4ED8_7AB458;
            break;

        case 7:
            init_records = D_801B4EFC_7AB47C;
            break;

        case 5:
            init_records = D_801B4F20_7AB4A0;
            break;
    }

    records = gFestivalCompetitors;
    records[0].actorIndex = 0;
    records[0].playerNumber = 0xFFFF;
    records[0].actor_unk_174 = gActors[actor_index].unk_174;

    if (gFestivalCompetitorCount >= 2) {
        index = 1;
        do {
            new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
            if (new_actor_index != 0) {
                init_record = &init_records[index];
                current_index = index;
                gActors[new_actor_index].actorType = init_record[-1].actorType;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].var_110 = (f32)init_record[-1].timer;
                gActors[new_actor_index].var_0D8 = init_record[-1].unk_08;
                gActors[new_actor_index].unk_16C = current_index;
                gActors[new_actor_index].posX.whole = D_801B4F50_7AB4D0[current_index * 3] - gScreenPosCurrentX.whole;
                gActors[new_actor_index].posY.whole = D_801B4F50_7AB4D0[(current_index * 3) + 1] - gScreenPosCurrentY.whole;
                gActors[new_actor_index].posZ.whole = D_801B4F50_7AB4D0[(current_index * 3) + 2];
                records[current_index].actorIndex = new_actor_index;
                records[current_index].playerNumber = current_index;
                records[current_index].actor_unk_174 = gActors[actor_index].unk_174;
                records[current_index].rand = Rand() & 3;
                records[current_index].unk_12 = gActors[new_actor_index].var_110;
                records[current_index].unk_10 = gActors[new_actor_index].var_0D8;
            }

            index++;
        } while (index < gFestivalCompetitorCount);
    }
}

void func_801B10A8_7A7628(u16 actor_index) {
    ACTOR_UNPACK_138(0x6F, gActors[actor_index].unk_178);
}

void func_801B11E0_7A7760(u16 actor_index) {
    s32 saved_graphic[2];
    s32 graphic;

    if (func_8007CE24(0x6F, 0, 0x60, 0x54, 0)) {
    }

    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(graphic, 0x6F, actorType, 0x1A08);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(graphic, 0x6F, unk_16C, (s32)D_801B501C_7AB59C);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(graphic, 0x6F, unk_190, (s32)func_8007DF44);
    graphic = (s32)D_800D9AE4;
    ACTOR_FIXEDADDRESS_DIRECT_SET(0x6F, unk_18C, graphic);
    ACTOR_FIXEDADDRESS_DIRECT_SET(0x6F, posZ.whole, 2);
    saved_graphic[0] = graphic;
    func_801B10A8_7A7628(actor_index);
    gActors[0x6E].actorType = 0x1A07;
    Actor_Initialize(0x6E);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, graphicFlags, ACTOR_GFLAG_PALETTE);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, flags, ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, scaleX, 1.0f);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, posX.whole, -6);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, posY.whole, 84);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, posZ.whole, 2);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, unk_18C, saved_graphic[0]);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6E, var_150, 0x27);
    ACTOR_FIXEDADDRESS_INDEX_VAR_OR(actor_index, 0x6E, unk_164, 0x8001);
}

s32 func_801B12F0_7A7870(u16 actor_index) {
    s32 unused[1];
    s32 saved_graphic[1];
    s32 graphic;

    if (func_8007CE24(0x6D, 0, 0x60, 0x44, 0)) {
    }

    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6D, actorType, 0x1A08);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6D, unk_16C, (s32)D_801B501C_7AB59C);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6D, unk_190, (s32)func_8007DF44);
    graphic = (s32)D_800D9AE4;
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6D, unk_18C, graphic);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6D, posZ.whole, 2);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, actorType, 0x1A07);
    saved_graphic[0] = graphic;
    Actor_Initialize(0x6C);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, graphicFlags, ACTOR_GFLAG_PALETTE);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, flags, ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, scaleX, 0.9f);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, posX.whole, -13);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, posY.whole, 68);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, posZ.whole, 2);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, unk_18C, saved_graphic[0]);
    ACTOR_FIXEDADDRESS_INDEX_VAR_SET(actor_index, 0x6C, var_150, 0x28);
    ACTOR_FIXEDADDRESS_INDEX_VAR_OR(actor_index, 0x6C, unk_164, 0x401);

    return saved_graphic[0];
}

void func_801B13F8_7A7978(u16 actor_index) {
    ACTOR_FIXEDADDRESS_SET(0x69, actorType, ACTORTYPE_GRAPHICONLY);
    Actor_Initialize(0x69);
    ACTOR_FIXEDADDRESS_SET(0x69, graphicFlags, ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK11);
    ACTOR_FIXEDADDRESS_SET(0x69, flags, ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_SET(0x69, graphicIndex, GINDEX_SOLIDSQARE);
    ACTOR_FIXEDADDRESS_SET(0x69, colorB, 0xBA);
    ACTOR_FIXEDADDRESS_SET(0x69, colorA, 0xB2);
    ACTOR_FIXEDADDRESS_SET(0x69, posX.whole, 55);
    ACTOR_FIXEDADDRESS_SET(0x69, posY.whole, 77);
    ACTOR_FIXEDADDRESS_SET(0x69, posZ.whole, 1);
    ACTOR_FIXEDADDRESS_SET(0x69, scaleX, 9.7f);
    ACTOR_FIXEDADDRESS_SET(0x69, scaleY, 2.2f);
}

s32 func_801B14A4_7A7A24(u16 actor_index) {
    s32 graphic[2];

    ACTOR_FIXEDADDRESS_SET(0x6B, actorType, 0x1A07);
    Actor_Initialize(0x6B);
    ACTOR_FIXEDADDRESS_SET(0x6B, graphicFlags, ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11);
    ACTOR_FIXEDADDRESS_SET(0x6B, flags, ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_SET(0x6B, posX.whole, 64);
    ACTOR_FIXEDADDRESS_SET(0x6B, posY.whole, (graphic[0] = -72));
    ACTOR_FIXEDADDRESS_SET(0x6B, posZ.whole, 512);
    ACTOR_FIXEDADDRESS_SET(0x6B, unk_188, 0);
    ACTOR_FIXEDADDRESS_SET(0x6B, unk_18C, (graphic[0] = (s32)D_800D9AE4));
    ACTOR_FIXEDADDRESS_SET(0x6B, var_150, 0x18);

    ACTOR_FIXEDADDRESS_OR(0x6B, unk_164, 0x8001);
    func_8007CD68(0x6A, 0, 104, -72, (*(s32*)&graphic[0] = graphic[0], 0), 3, 0x3E7);
    ACTOR_FIXEDADDRESS_SET(0x6A, graphicFlags, ACTOR_GFLAG_UNK11);
    ACTOR_FIXEDADDRESS_SET(0x6A, posZ.whole, 512);
    ACTOR_FIXEDADDRESS_SET(0x6A, unk_188, 0);
    ACTOR_FIXEDADDRESS_SET(0x6A, unk_18C, graphic[0]);

    return graphic[0];
}

void func_801B159C_7A7B1C(u16 actor_index) {
    s32 unused[3];
    s32 divisor;
    s32 position_x;
    s32 numerator;
    s32 denominator;
    s32 value;

    switch (gFestivalCurrentEvent) {
        case 0:
            divisor = 100;
            break;

        case 1:
            divisor = 200;
            break;

        case 2:
            divisor = 400;
            break;

        case 7:
            divisor = 100;
            break;

        case 5:
            divisor = 100;
            break;
    }

    numerator = (gActors[actor_index].unk_174 - gScreenPosCurrentX.whole) - gActors[0].posX.whole;
    denominator = (gActors[actor_index].unk_174 - 0x220) / divisor;
    value = numerator / denominator;
    if (divisor < value) {
        value = divisor;
    }
    if (value < 0) {
        value = 0;
    }

    gActors[0x6A].var_158 = value;
}

void func_801B16E0_7A7C60(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = 0x1A07;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].var_150 = arg1;
}

void func_801B1750_7A7CD0(u16 actor_index) {
    u16 new_actor_index;

    if (gFestivalFouls >= 3) {
        new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
        func_801B16E0_7A7C60(new_actor_index, 0x15);
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 64;
        gActors[new_actor_index].posZ.whole = 168;
        gActors[new_actor_index].unk_164 |= 0x1020;
        gFestivalEventsPlayed[gFestivalCurrentEvent] = 1;
        Sound_PlaySfx(0x131);
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
    func_801B16E0_7A7C60(new_actor_index, 0x14);
    gActors[new_actor_index].posX.whole = 0;
    gActors[new_actor_index].posY.whole = 64;
    gActors[new_actor_index].posZ.whole = 168;
    gActors[new_actor_index].unk_164 |= 0x2060;
    gActors[new_actor_index].scaleX = 1.0f;

    new_actor_index = Actor_RangeFindInactive(0x60, 0x70);
    func_801B16E0_7A7C60(new_actor_index, 0x16);
    gActors[new_actor_index].posX.whole = 0;
    gActors[new_actor_index].posY.whole = -72;
    gActors[new_actor_index].posZ.whole = 168;
    gActors[new_actor_index].scaleX = 1.0f;
    Sound_PlaySfx(0x12F);
}

void func_801B18E8_7A7E68(u16 actor_index) {
    if ((gActors[actor_index].posX.whole < -400) || (gActors[actor_index].posX.whole >= 401)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    }
}

void func_801B195C_7A7EDC(u16 actor_index) {
    Overlay_7A6E60_Graphic_Index_Table graphic_data;
    u16 index;
    u16 new_actor_index;

    graphic_data = D_801B5414_7AB994;

    for (index = 0; index < 4; index++) {
        new_actor_index = Actor_RangeFindInactive(0x40, 0x50);
        gActors[new_actor_index].actorType = 0x1A08;
        Actor_Initialize(new_actor_index);

        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags &= ~ACTOR_FLAG_ONSCREEN_ONLY;
        gActors[new_actor_index].graphicIndex = (graphic_data.indices[index] * 2) + GINDEX_ALPHASTART;
        gActors[new_actor_index].posX.whole = gActors[actor_index].unk_174 - gScreenPosCurrentX.whole + 64;
        gActors[new_actor_index].posY.whole = 350 - gScreenPosCurrentY.whole;
        gActors[new_actor_index].posZ.whole = -255;
        gActors[new_actor_index].rotateY = 270.0f;
        gActors[new_actor_index].rotateZ = 270.0f;
        gActors[new_actor_index].unk_188 = (index * 0x5C) - 0xB0;
        gActors[new_actor_index].scaleX = 6.0f;
        gActors[new_actor_index].scaleY = 4.0f;
        gActors[new_actor_index].pfn_190 = func_801B18E8_7A7E68;
    }
}

void func_801B1B48_7A80C8(u16 actor_index) {
    u16 index;

    switch (gFestivalCurrentEvent) {
        case 0:
            gActors[actor_index].unk_174 = 0xE20;
            gFestivalCompetitorCount = 4;
            break;

        case 1:
            gActors[actor_index].unk_174 = 0x1A20;
            gFestivalCompetitorCount = 4;
            break;

        case 2:
            gActors[actor_index].unk_174 = 0x3220;
            gFestivalCompetitorCount = 4;
            break;

        case 7:
            gActors[actor_index].unk_174 = 0x6420;
            gFestivalCompetitorCount = 4;
            break;

        case 5:
            gActors[actor_index].unk_174 = 0xE20;
            gFestivalCompetitorCount = 2;
            break;
    }

    func_801B0DC8_7A7348(actor_index);
    for (index = 0; (s32)index < (s32)gFestivalCompetitorCount; index++) {
        gFestivalCompetitorIndices[index] = gFestivalCompetitors[index].actorIndex;
    }

    func_801B195C_7A7EDC(actor_index);
    gActors[actor_index].unk_170 = 1;
}

void func_801B1D60_7A82E0(u16 actor_index, u16 arg1) {
    s32* table;
    s32* entry;
    f32 value;

    switch (gFestivalCurrentEvent) {
        case 0:
            table = D_801B4F68_7AB4E8;
            break;

        case 1:
            table = D_801B4F8C_7AB50C;
            break;

        case 2:
            table = D_801B4FB0_7AB530;
            break;

        case 7:
            table = D_801B4FD4_7AB554;
            break;

        case 5:
            table = D_801B4FF8_7AB578;
            break;
    }

    if (arg1 == 0xFF) {
        D_800BE544 = 0;
        D_800BE704 = 0x10;
        D_800BE708 = 4;
        D_800BE548.raw = FIXED_UNIT(16.0);
        D_800BE54C.raw = FIXED_UNIT(16.0);
    }
    else {
        D_800BE544 = 0x8000;
        arg1 *= 3;
        entry = (s32*)((u8*)table + (((u16)arg1) << 2));
        gScreenPosTargetX.whole = entry[0];
        D_800BE704 = entry[1];
        D_800BE548.raw = entry[2];
    }
}

s16 func_801B1E80_7A8400(u16 actor_index) {
    u16* sort_indices;
    s32 count;
    s32 flags;
    u16 index;
    s32 next_index;
    s32 remaining;
    s32 outer_remaining;
    u16 first_actor;
    u16 actor_a;
    u16 actor_b;
    s32 old_value;

    count = gFestivalCompetitorCount;
    for (outer_remaining = (flags = 0); outer_remaining < count; outer_remaining = (outer_remaining + 1) & 0xFFFF) {
        first_actor = gFestivalCompetitors[outer_remaining].actorIndex;
        if (((s16)gScreenPosCurrentX.whole + gActors[first_actor].posX.whole) >= gActors[actor_index].unk_174) {
            if (gFestivalCompetitors[outer_remaining].rank == 0) {
                s32 rank_value;

                rank_value = gActors[actor_index].unk_170;
                gActors[actor_index].unk_170 = rank_value + 1;
                gFestivalCompetitors[outer_remaining].rank = rank_value;
                if (first_actor == 0) {
                    flags |= 1;
                }

                if (gActors[actor_index].unk_170 == 2) {
                    flags |= 2;
                }
            }
        }

        if (!(&gScreenPosCurrentX)) {
        }
    }

    remaining = count - 1 + (outer_remaining * 0);
    outer_remaining = remaining & 0xFFFF;
    remaining = outer_remaining;
    while (remaining > 0) {
        sort_indices = gFestivalCompetitorIndices;
        first_actor = 0;
        while (first_actor < remaining) {
            u16* entry_a;
            u16 loaded_a;
            s16 position_b;

            entry_a = sort_indices;
            entry_a += first_actor;
            loaded_a = *entry_a;
            entry_a += loaded_a * 0;
            if (gActors[loaded_a].posX.whole && gActors[loaded_a].posX.whole) {
            }

            old_value = gActors[loaded_a].posX.whole;
            if (old_value && old_value) {
            }

            if ((s32)old_value < (position_b = gActors[sort_indices[first_actor + 1]].posX.whole)) {
                loaded_a += 0;
                *entry_a = sort_indices[first_actor + 1];
                sort_indices[first_actor + 1] = (u64)loaded_a;
            }
            first_actor++;
        }
        outer_remaining--;
        remaining = outer_remaining & 0xFFFF;
        outer_remaining = remaining;
    }

    flags = (s16)flags;
    return flags;
}

s32 func_801B2040_7A85C0(u16 actor_index) {
    s32 result;

    result = ((u32)gActors[actor_index].unk_138 & 0xFF) << 4;
    result += ((u32)gActors[actor_index].unk_13C_f32 & 0xFF);
    result <<= 4;
    result += ((u32)gActors[actor_index].unk_140_f32 & 0xFF);
    result <<= 4;
    result += ((u32)gActors[actor_index].unk_144 & 0xFF);
    result <<= 4;
    result += ((u32)gActors[actor_index].unk_148 & 0xFF);
    result <<= 4;
    result += ((u32)gActors[actor_index].unk_14C & 0xFF);
    return result;
}

void func_801B23B8_7A8938(u16 actor_index) {
    gActors[actor_index].unk_17C = func_801B2040_7A85C0(0x6D);

    if (gActors[actor_index].unk_17C < gActors[actor_index].unk_178) {
        ACTOR_COPY_138_TO_140(0x6F, 0x6D);
        ACTOR_COPY_144_TO_14C(0x6F, 0x6D);

        gActors[actor_index].unk_178 = gActors[actor_index].unk_17C;
        gActors[actor_index].unk_180 = 1;
        gFestivalIsTimeBeat = 1;
    }

    gFestivalRecords[gFestivalCurrentEvent] = gActors[actor_index].unk_178;
}

DEFAULT_INT func_801B2498_7A8A18(u16 actor_index) {
    u16 index = 0;
    s32 count = gFestivalCompetitorCount;

    for (; index < count; index++) {
        u16 other_actor = gFestivalCompetitorIndices[index];
        if (other_actor != 0) {
            u16 record_index = gActors[other_actor].unk_16C_u16[1];
            if (gFestivalCompetitors[record_index].rank == 0) {
                gFestivalCompetitors[record_index].rank = gActors[actor_index].unk_170;
                gActors[actor_index].unk_170++;
            }
        }
    }
    gFestivalEventsPlayed[gFestivalCurrentEvent] = 1;
    gFestivalTimeToBeat = gActors[actor_index].unk_178;
    gFestivalTimeCurrent = gActors[actor_index].unk_17C;
    gFestivalRecords[gFestivalCurrentEvent] = gFestivalTimeToBeat;
    gFestivalEventClearCount++;
}

void func_801B25C4_7A8B44(u16 actor_index) {
    FestivalPlayer* records = gFestivalCompetitors;
    u16 actor = actor_index;
    u16 index = 0;
    s32 count = gFestivalCompetitorCount;
    s32 position_x;

    if (count <= 0) {
        return;
    }

    position_x = gActors[actor].posX.whole - gScreenPosCurrentX.whole;

    do {
        if (position_x >= 543) {
            records[index].unk_06 = 1;
        }
        index++;
    } while (index < count);
}

void func_801B2658_7A8BD8(u16 actor_index) {
    ACTOR_FIXEDADDRESS_SET(0x32, actorType, 0x1A08);
    Actor_Initialize(0x32);
    ACTOR_FIXEDADDRESS_OR(0x32, flags, ACTOR_FLAG_FREEZE_POS);
    ACTOR_FIXEDADDRESS_SET(0x32, posX.whole, 0);
    ACTOR_FIXEDADDRESS_SET(0x32, posY.whole, 0);

    switch (gFestivalCurrentEvent) {
        case 0:
            ACTOR_FIXEDADDRESS_SET(0x32, unk_178, (s32)D_801B502C_7AB5AC);
            break;

        case 1:
            ACTOR_FIXEDADDRESS_SET(0x32, unk_178, (s32)D_801B50F8_7AB678);
            break;

        case 2:
            ACTOR_FIXEDADDRESS_SET(0x32, unk_178, (s32)D_801B51A4_7AB724);
            break;

        case 7:
            ACTOR_FIXEDADDRESS_SET(0x32, unk_178, (s32)D_801B5250_7AB7D0);
            break;

        case 5:
            ACTOR_FIXEDADDRESS_SET(0x32, unk_178, (s32)D_801B52FC_7AB87C);
            break;
    }
}

void func_801B2738_7A8CB8(u16 actor_index) {
    u16 frame;

    if (gActors[actor_index].unk_180 == 0) {
        return;
    }

    if (gFestivalCompetitors[0].rank != 1) {
        return;
    }

    frame = gActiveFrames;
    frame &= 7;

    switch (frame) {
        case 0:
            gActors[0x6E].unk_18C = (s32)D_800D9AE4;
            break;

        case 1:
            gActors[0x6E].unk_18C = (s32)D_800D9AF4;
            break;

        case 2:
            gActors[0x6E].unk_18C = (s32)D_800D9B04;
            break;

        case 3:
            gActors[0x6E].unk_18C = (s32)D_800D9AE4;
            break;

        case 4:
            gActors[0x6E].unk_18C = (s32)D_800D9B14;
            break;

        case 5:
            gActors[0x6E].unk_18C = (s32)D_800D9B24;
            break;

        case 6:
            gActors[0x6E].unk_18C = (s32)D_800D9B34;
            break;

        case 7:
            gActors[0x6E].unk_18C = (s32)D_800D9B44;
            break;
    }
}

void func_801B2854_7A8DD4(u16 actor_index) {
    gActors[0x6E].unk_18C = (s32)D_800D9AE4;
}

s32 func_801B286C_7A8DEC(u16 actor_index) {
    u16 index;

    for (index = 0x70; index < 0x7A; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == 0x1A03) && (gActors[index].var_158 == 1) && (actor_index == gActors[index].var_154)) {
            return 1;
        }
    }

    return 0;
}

void func_801B2908_7A8E88(u16 actor_index) {
    Overlay_7A6E60_Actor_Spawn_Record* records;
    u16 index;
    Overlay_7A6E60_Actor_Spawn_Record* record;
    s16 position_x;
    u16 new_actor_index;
    u16 saved_index;
    s16 min_x;
    s16 max_x;

    min_x = gScreenPosCurrentX.whole - 600;
    max_x = gScreenPosCurrentX.whole + 600;
    records = D_801B541C_7AB99C;
    for (index = 0; index < 0xE; index++) {
        if (1) {
        }
        record = &D_801B541C_7AB99C[index];
        position_x = record->positionX;
        if ((position_x >= min_x) && (max_x >= position_x)) {
            if (func_801B286C_7A8DEC(index) == 0) {
                new_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
                if (new_actor_index != 0) {
                    gActors[new_actor_index].actorType = 0x1A03;
                    Actor_Initialize(new_actor_index);
                    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
                    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                    gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
                    gActors[new_actor_index].posY.whole = record->positionY - gScreenPosCurrentY.whole;
                    gActors[new_actor_index].var_110 = (f32)record->unk_04;
                    saved_index = index;
                    gActors[new_actor_index].var_154 = saved_index;
                    gActors[new_actor_index].var_0D8 = record->unk_06;
                }
            }
        }
    }
}

void func_801B2A88_7A9008(u16 actor_index) {
    if (((gActors[0].posX.whole - gActors[actor_index].posX.whole) > 0 ? (gActors[0].posX.whole - gActors[actor_index].posX.whole) : -(gActors[0].posX.whole - gActors[actor_index].posX.whole)) < 176) {
        gActors[actor_index].var_154 = 0x30;
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

void func_801B2B54_7A90D4(u16 actor_index) {
    if ((gActiveFrames & 0x40) && (gActors[actor_index].graphicTimer == 0)) {
        gActors[actor_index].var_154 = 0x140;
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

void func_801B2C40_7A91C0(u16 actor_index) {
    if (((gActors[0].posX.whole - gActors[actor_index].posX.whole) > 0 ? (gActors[0].posX.whole - gActors[actor_index].posX.whole) : -(gActors[0].posX.whole - gActors[actor_index].posX.whole)) < 160) {
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].unk_170 = FIXED_UNIT(4.0);
        gActors[actor_index].var_154 = 0x20;
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

void func_801B2D18_7A9298(u16 actor_index) {
    if (((gActors[0].posX.whole - gActors[actor_index].posX.whole) > 0 ? (gActors[0].posX.whole - gActors[actor_index].posX.whole) : -(gActors[0].posX.whole - gActors[actor_index].posX.whole)) < 160) {
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

void func_801B2DE4_7A9364(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x50;
    }
}

void func_801B2E2C_7A93AC(u16 actor_index) {
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

void func_801B2EBC_7A943C(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x60;
    }
}

void func_801B2F04_7A9484(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        if (gActors[actor_index].unk_174 == 0) {
            gActors[actor_index].var_154 = 0xE0;
        }
    }
}

s32 func_801B2F5C_7A94DC(u16 actor_index) {
    u16 index;

    for (index = 0x50; index < 0x60; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == 0x105) && (actor_index == gActors[index].unk_178)) {
            return 1;
        }
    }

    return 0;
}

u16 func_801B2FE4_7A9564(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 behavior) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x105);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posZ.whole = position_z;
        gActors[new_actor_index].var_110 = (f32)timer;
        gActors[new_actor_index].var_0D8 = D_801B559C_7ABB1C[Rand() & 7] + random_base;
        switch (behavior) {
            case 0:
                gActors[new_actor_index].pfn_190 = func_801B2A88_7A9008;
                break;

            case 1:
                gActors[new_actor_index].pfn_190 = func_801B2B54_7A90D4;
                break;

            case 2:
                gActors[new_actor_index].pfn_190 = func_801B2C40_7A91C0;
                break;

            case 3:
                gActors[new_actor_index].pfn_190 = func_801B2D18_7A9298;
                break;

            case 4:
                gActors[new_actor_index].pfn_190 = func_801B2DE4_7A9364;
                break;

            case 5:
                gActors[new_actor_index].pfn_190 = func_801B2E2C_7A93AC;
                break;

            case 6:
                gActors[new_actor_index].pfn_190 = func_801B2EBC_7A943C;
                break;

            case 7:
                gActors[new_actor_index].pfn_190 = func_801B2F04_7A9484;
                break;
        }
    }
    return new_actor_index;
}

void func_801B3180_7A9700(u16 actor_index) {
    Overlay_7A6E60_Spawn_Config* entry;
    s16 min_x;
    s16 max_x;
    s16 position_x;
    s16 position_z;
    s16 behavior;
    u16 index;
    s32 new_actor_index;

    min_x = gScreenPosCurrentX.whole - 900;
    max_x = gScreenPosCurrentX.whole + 900;
    for (index = 0; index < 6; index++) {
        switch (gFestivalCurrentEvent) {
            case 0:
                entry = &D_801B54AC_7ABA2C[index];
                break;

            case 1:
                entry = &D_801B54E8_7ABA68[index];
                break;

            case 2:
                entry = &D_801B5524_7ABAA4[index];
                break;

            case 5:
                entry = &D_801B5560_7ABAE0[index];
                break;
        }

        position_x = entry->positionX;
        position_z = entry->positionZ;
        behavior = entry->behavior;
        if (position_x < min_x) {
        }
        else if (max_x < position_x) {
        }
        else if (func_801B2F5C_7A94DC(index) == 0) {
            new_actor_index = func_801B2FE4_7A9564(position_x, position_z, 0, 1, behavior);
            if (new_actor_index != 0) {
                gActors[new_actor_index].unk_178 = index;
            }
        }
    }
}

void func_801B3370_7A98F0(u16 actor_index) {
    s32 saved_actor_index = actor_index;
    s16 spawn_x;
    s16 spawn_z;
    s16 delta;
    s32 absolute_delta;

    delta = (s16)(gActors[saved_actor_index].unk_168 - gScreenPosCurrentX.whole);
    absolute_delta = (delta > 0) ? delta : -delta;
    if (absolute_delta < (gActors[saved_actor_index].unk_16C + 0x80)) {
        return;
    }

    if (delta < 0) {
        spawn_x = gScreenPosCurrentX.whole + 256;
    }
    else {
        spawn_x = gScreenPosCurrentX.whole - 336;
    }

    if ((Rand() & 3) == 0) {
        spawn_z = 160;
    }
    else {
        spawn_z = -252;
    }

    func_801B2FE4_7A9564(spawn_x, spawn_z, 0, 0, Rand() & 3);
    gActors[saved_actor_index].unk_168 = gScreenPosCurrentX.whole;
    gActors[saved_actor_index].unk_16C = Rand();
}

void func_801B3480_7A9A00(u16 start_index, u16 end_index) {
    u16 actor_index;

    for (actor_index = start_index; actor_index < end_index; actor_index++) {
        gActors[actor_index].flags = 0;
    }
}

void func_801B34D4_7A9A54(u16 actor_index) {
    u16 input_mask;
    u16 action_flags;
    s32 actor_state;

    func_801B3180_7A9700(actor_index);
    func_801B3370_7A98F0(actor_index);
    OverlayABI_Slot2_fn26_u16(actor_index);
    func_801B2908_7A8E88(actor_index);

    actor_state = gActors[actor_index].state;
    switch (actor_state) {
        case 0:
            gFestivalEventState = 0;
            func_801B1B48_7A80C8(actor_index);
            func_801B2658_7A8BD8(actor_index);
            func_801B1D60_7A82E0(actor_index, 0);
            gActors[actor_index].unk_178 = gFestivalRecords[gFestivalCurrentEvent];
            gFestivalIsTimeBeat = 0;
            gActors[actor_index].var_150 = 0xB4;
            gAudioFadeMode = 0;
            Sound_PlayMusic(0x1A);
            Sound_PlaySfx(0x12D);
            gActors[actor_index].state++;

        case 1:
            if (--gActors[actor_index].var_150 < 0) {
                OverlayABI_Slot2_fn30_u16(actor_index);
                gActors[actor_index].var_150 = 0xB4;
                gActors[actor_index].state = 0x10;
            }
            break;

        case 0x10:
            if (--gActors[actor_index].var_150 <= 0) {
                gFestivalEventState = 0x20;
                D_800BE5F4.unk_00_u32 = 0x15;
                OverlayABI_Slot2_fn27_u16(actor_index);
                Sound_PlaySfx(0x130);
                func_801B1D60_7A82E0(actor_index, 1);
                gActors[actor_index].var_150 = 0xF0;
                gActors[actor_index].state = 0x20;
            }
            break;

        case 0x20:
            func_801B25C4_7A8B44(actor_index);
            if (--gActors[actor_index].var_150 <= 0) {
                func_801B11E0_7A7760(actor_index);
                func_801B12F0_7A7870(actor_index);
                func_801B13F8_7A7978(actor_index);
                gFestivalEventState = 0x30;
                D_800BE5F4.unk_00_u32 = 0x15;
                OverlayABI_Slot2_fn28_u16(actor_index);
                gActors[actor_index].var_150 = (Rand() / 4) + 0x78;
                gActors[actor_index].state = 0x30;
            }
            break;

        case 0x30:
            if ((544 - gScreenPosCurrentX.whole) < gActors[0].posX.whole) {
                gActors[actor_index].state = 0x60;
            }
            else {
                if (--gActors[actor_index].var_150 <= 0) {
                    func_801B14A4_7A7A24(actor_index);
                    gFestivalEventState = 0x40;
                    D_800BE5F4.unk_00_u32 = 5;
                    OverlayABI_Slot2_fn29_u16(actor_index);
                    Sound_PlaySfx(0x46);
                    gActors[0x6D].unk_134 = 1.6f;
                    func_801B1D60_7A82E0(actor_index, 0xFF);
                    gActors[actor_index].state = 0x50;
                    gActors[0x32].unk_17C++;
                }
            }
            break;

        case 0x50:
            if (gFestivalCurrentEvent != 5) {
                D_800BE5F4.unk_00_u32 = 2;
                D_801373E0.unk_20 = gButtonHold & (gButton_DRight + gButton_DLeft + gButton_CLeft + gButton_CRight);
                D_801373E0.unk_24 = gButtonPress & (gButton_DRight + gButton_DLeft + gButton_CLeft + gButton_CRight);
            }
            D_800BE544 = gFestivalCompetitorIndices[0];
            func_801B159C_7A7B1C(actor_index);
            if ((gActors[0x6A].var_158 < 0x1E) && (gActors[0x32].var_154 == 0)) {
                gActors[0x32].unk_17C++;
                gActors[0x32].var_154 = 1;
            }
            action_flags = func_801B1E80_7A8400(actor_index);
            if (action_flags & 2) {
                func_801B23B8_7A8938(actor_index);
            }
            if (action_flags & 1) {
                gActors[actor_index].state = 0x51;
                gActors[actor_index].var_150 = 0xF0;
                gActors[0x6B].flags = 0;
                gActors[0x6A].flags = 0;
                gActors[0x6D].unk_134 = 0.0f;
                OverlayABI_Slot2_fn31_u16(actor_index);
                D_800BE5F4.unk_00_u32 = 0x15;
                func_801B1D60_7A82E0(actor_index, 2);
                gActors[0x32].unk_17C++;
                gActors[actor_index].unk_17C = func_801B2040_7A85C0(0x6D);
            }
            break;

        case 0x51:
            func_801B1E80_7A8400(actor_index);
            func_801B2738_7A8CB8(actor_index);
            if (--gActors[actor_index].var_150 <= 0) {
                Sound_StartFade(1, 0x3C);
                gActors[actor_index].var_150 = 0x3C;
                gActors[actor_index].state++;
            }
            break;

        case 0x52:
            func_801B1E80_7A8400(actor_index);
            func_801B2738_7A8CB8(actor_index);
            if ((--gActors[actor_index].var_150 <= 0) || (gAudioFadeMode != 1)) {
                func_801B0DA0_7A7320(actor_index);
                func_801B2854_7A8DD4(actor_index);
                func_801B2498_7A8A18(actor_index);
                gActors[actor_index].state = 0x70;
            }
            break;

        case 0x60:
            gFestivalFouls++;
            func_801B0CEC_7A726C(actor_index);
            gActors[0x31].posZ.whole = 167;
            gActors[actor_index].var_150 = 0x41;
            gActors[actor_index].state++;
            break;

        case 0x61:
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].unk_188 = 0;
            gActors[0].posZ.whole = 168;
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].state++;
                func_801B3480_7A9A00(0x38, 0x40);
                func_801B3480_7A9A00(0x60, 0x70);
            }
            gActors[0x31].colorA = Math_ApproachS32(gActors[0x31].colorA, 0xFF, 4);
            break;

        case 0x62:
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].unk_188 = 0;
            gActors[0].posZ.whole = 168;
            func_801B1750_7A7CD0(actor_index);
            gActors[actor_index].var_150 = 0x78;
            gActors[actor_index].state++;

        case 0x63:
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].unk_188 = 0;
            gActors[0].posZ.whole = 168;
            if (--gActors[actor_index].var_150 < 0) {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 = 0x1E;
                Sound_StartFade(1, 0x1E);
            }
            break;

        case 0x64:
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].unk_188 = 0;
            gActors[0].posZ.whole = 168;
            if ((--gActors[actor_index].var_150 <= 0) && (gAudioFadeMode != 1)) {
                gActors[actor_index].state = 0x70;
                if (gFestivalFouls >= 3) {
                    func_801B0C20_7A71A0(actor_index);
                }
                else {
                    func_801B0CBC_7A723C(actor_index);
                }
            }
            break;

        case 0x70:
            gActors[0].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[0].unk_188 = 0;
            gActors[0].posZ.whole = 168;
            break;
    }

    if (gFestivalCurrentEvent == 5) {
        func_801B0A58_7A6FD8(actor_index, -96);
    }
}

void func_801B3BC4_7AA144(u16 actor_index) {
}

void func_801B3BCC_7AA14C(u16 actor_index) {
    s32 step;

    switch (gFestivalCurrentEvent) {
        case 0:
            step = 0xC00;
            break;

        case 1:
            step = 0x1800;
            break;

        case 2:
            step = 0x3000;
            break;

        case 7:
            step = 0x6200;
            break;

        case 5:
            step = 0xC00;
            break;
    }

    gActors[actor_index].unk_170 = (gActors[actor_index].unk_17C - 0x220) / (u16)(step / 8);

    switch (gFestivalCurrentEvent) {
        case 0:
            gActors[actor_index].unk_118 = D_801B55D4_7ABB54[(gFestivalCompetitors[gActors[actor_index].unk_16C].rand * 8) + gActors[actor_index].unk_170] + D_801B5760_7ABCE0[D_80178292];
            break;

        case 1:
            gActors[actor_index].unk_118 = D_801B5658_7ABBD8[(gFestivalCompetitors[gActors[actor_index].unk_16C].rand * 8) + gActors[actor_index].unk_170] + D_801B5760_7ABCE0[D_80178292];
            break;

        case 2:
            gActors[actor_index].unk_118 = D_801B56DC_7ABC5C[(gFestivalCompetitors[gActors[actor_index].unk_16C].rand * 8) + gActors[actor_index].unk_170] + D_801B5760_7ABCE0[D_80178292];
            break;
    }

    switch (gActors[actor_index].var_0D8 & 0x30) {
        case 0:
            break;

        case 0x10:
            gActors[actor_index].unk_118 = (f32)((f64)gActors[actor_index].unk_118 * 1.15);
            break;

        case 0x20:
            gActors[actor_index].unk_118 = (f32)((f64)gActors[actor_index].unk_118 * 1.3);
            break;

        case 0x30:
            gActors[actor_index].unk_118 = (f32)((f64)gActors[actor_index].unk_118 * 0.8);
            break;
    }
}

void func_801B3E9C_7AA41C(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].var_154 = TO_FIXED(D_801B4F50_7AB4D0[(gActors[actor_index].unk_16C * 3) + 2]);
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
    }

    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].unk_184_s16[0] = D_801B4F50_7AB4D0[gActors[actor_index].unk_16C * 3] - (Rand() / 2);
            gActors[actor_index].posX.whole = gActors[actor_index].unk_184_s16[0] - gScreenPosCurrentX.whole;
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            if (gFestivalEventState != gActors[actor_index].unk_174_u16[1]) {
                gActors[actor_index].unk_174 = gFestivalEventState;
            }

            func_80073320(actor_index);
            switch (gActors[actor_index].unk_174_u16[1]) {
                case 0x10:
                    break;

                case 0x20:
                    gActors[actor_index].unk_184_s16[0] = D_801B4F50_7AB4D0[gActors[actor_index].unk_16C * 3];
                    gActors[actor_index].unk_184_s16[1] = D_801B4F50_7AB4D0[(gActors[actor_index].unk_16C * 3) + 1];
                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        gActors[actor_index].state = 0x70;
                    }
                    break;

                case 0x30:
                    gActors[actor_index].graphicList = D_800E176C;
                    gActors[actor_index].graphicTimer = (u16)1;
                    break;

                case 0x40:
                    switch (gActors[actor_index].unk_174_u16[0]) {
                        case 0:
                            if ((!gActors[actor_index].unk_17C) && (!gActors[actor_index].unk_17C)) {
                            }
                            if (gActors[actor_index].unk_174_u16[0] && gActors[actor_index].unk_174_u16[0]) {
                            }
                            gActors[actor_index].state = 0xA0;
                            break;

                        case 1:
                            if (1 == gFestivalCompetitors[gActors[actor_index].unk_16C].rank) {
                                gActors[actor_index].unk_120 = 0.0f;
                                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(5.0);
                                gActors[actor_index].unk_124 = (f32)(Rand() & 1);
                                gActors[actor_index].state = 0x120;
                            }
                            else {
                                gActors[actor_index].state = 0x290;
                                if (actor_index && actor_index) {
                                }
                                gActors[actor_index].unk_174_u16[0] = gActors[actor_index].unk_174_u16[0] + ((u32)gActors[actor_index].unk_174_u16[0] * 0U) + 1;
                            }
                            break;

                        case 2:
                            break;
                    }
                    break;

                default:
                    break;
            }
            break;

        case 0x91:
            func_80073320(actor_index);
            break;

        case 0xA1:
            func_801B3BCC_7AA14C(actor_index);
            if ((gFestivalCompetitors[gActors[actor_index].unk_16C_u32].actor_unk_174 + 0x30) < gActors[actor_index].unk_17C) {
                gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
                gActors[actor_index].unk_184_s16[gActors[actor_index].unk_16C * 0] = gActors[actor_index].unk_17C;
                gActors[actor_index].unk_174_u16[0]++;
                gActors[actor_index].state = 0x60;
            }
            break;

        default:
            break;
    }

    gActors[actor_index].flags = gActors[actor_index].flags & ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
}

void func_801B41F4_7AA774(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 index = (actor->unk_17C - 0x220) / 0x180;

    actor->unk_170 = index;
    actor->unk_118 = D_801B5788_7ABD08[(gFestivalCompetitors[actor->unk_16C].rand * 8) + index] + D_801B580C_7ABD8C[D_80178292];
}

void func_801B4298_7AA818(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].var_154 = FIXED_UNIT(-96.0);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-96.0);
    }

    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].unk_184_s16[0] = D_801B4F50_7AB4D0[gActors[actor_index].unk_16C * 3] - (Rand() / 2);
            gActors[actor_index].posX.whole = gActors[actor_index].unk_184_s16[0] - gScreenPosCurrentX.whole;
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            if (gFestivalEventState != gActors[actor_index].unk_174_u16[1]) {
                gActors[actor_index].unk_174 = gFestivalEventState;
            }

            switch (gActors[actor_index].unk_174_u16[1]) {
                case 0x10:
                    break;

                case 0x20:
                    gActors[actor_index].unk_184_s16[0] = D_801B4F50_7AB4D0[gActors[actor_index].unk_16C * 3];
                    gActors[actor_index].unk_184_s16[1] = D_801B4F50_7AB4D0[(gActors[actor_index].unk_16C * 3) + 1];

                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        gActors[actor_index].state = 0x70;
                    }

                    func_80073320(actor_index);
                    break;

                case 0x30:
                    gActors[actor_index].graphicList = D_800E176C;
                    gActors[actor_index].graphicTimer = (u16)1;
                    gActors[actor_index].unk_184_s16[0] = gFestivalCompetitors[gActors[actor_index].unk_16C].actor_unk_174 + 0x60;
                    break;

                case 0x40:
                    switch (gActors[actor_index].unk_174_u16[0]) {
                        case 0:
                            func_800734C4(actor_index, 0x10);
                            break;

                        case 1:
                            if (gFestivalCompetitors[gActors[actor_index].unk_16C].rank == 1) {
                                gActors[actor_index].unk_120 = 0.0f;
                                gActors[actor_index].unk_11C = (f32)FIXED_UNIT(5.0);
                                gActors[actor_index].unk_124 = (f32)(Rand() & 1);
                                gActors[actor_index].state = 0x120;
                            }
                            else {
                                switch ((Rand() & 1) ^ 0) {
                                    case 0:
                                        gActors[actor_index].state = 0x290;
                                        break;

                                    case 1:
                                        Rand();
                                        gActors[actor_index].var_158 = 0;
                                        gActors[actor_index].state = 0x410;
                                        break;

                                    case 2:
                                        gActors[actor_index].state = 0x420;
                                        gActors[actor_index].unk_118 = (f32)FIXED_UNIT(1.0);
                                        gActors[actor_index].unk_120 = 30.0f;
                                        break;

                                    case 3:
                                        gActors[actor_index].state = 0x430;
                                        break;

                                    case 4:
                                        gActors[actor_index].state = 0x440;
                                        break;
                                }
                                gActors[actor_index].unk_174_u16[0]++;
                            }
                            break;

                        case 2:
                            break;
                    }
                    break;
            }
            break;

        case 0x91:
            func_80073320(actor_index);
            break;

        case 0xA1:
            func_801B41F4_7AA774(actor_index);
            func_800734C4(actor_index, 0x10);
            if (gActors[actor_index].unk_17C >= (gFestivalCompetitors[gActors[actor_index].unk_16C].actor_unk_174 + 0x20)) {
                gActors[actor_index].unk_184_s16[0] = gActors[actor_index].unk_17C;
                gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
                gActors[actor_index].unk_174_u16[0] = 1;
                gActors[actor_index].state = 0x60;
            }
            break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
}

void func_801B466C_7AABEC(u16 actor_index, s16* graphic_list) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].graphicList = graphic_list;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].velocityX.raw = 0;
    }
}

s32 func_801B46C0_7AAC40(u16 actor_index) {
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

void func_801B4750_7AACD0(u16 actor_index) {
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
                gActors[actor_index].graphicList = D_801B5834_7ABDB4;
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
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
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
            func_801B466C_7AABEC(actor_index, D_800E2274);
            break;

        case 0x40:
            func_801B466C_7AABEC(actor_index, D_801B599C_7ABF1C);
            break;

        case 0x50:
            func_801B466C_7AABEC(actor_index, D_801B5A44_7ABFC4);
            gActors[actor_index].var_154 = 0x160;
            break;

        case 0x60:
            func_801B466C_7AABEC(actor_index, D_801B5A24_7ABFA4);
            break;

        case 0x90:
            func_801B466C_7AABEC(actor_index, D_801B5958_7ABED8);
            break;

        case 0xB0:
            func_801B466C_7AABEC(actor_index, D_801B5A14_7ABF94);
            gActors[actor_index].var_154 = 0x160;
            break;

        case 0xC0:
            func_801B466C_7AABEC(actor_index, D_801B5A00_7ABF80);
            break;

        case 0xA0:
            func_801B466C_7AABEC(actor_index, D_801B59B8_7ABF38);
            break;

        case 0xE0:
            func_801B466C_7AABEC(actor_index, D_800E17A4);
            gActors[actor_index].unk_174 = 1;
            break;

        case 0xF0:
            func_801B466C_7AABEC(actor_index, D_800E17DC);
            gActors[actor_index].unk_174 = 0;
            break;

        case 0x120:
            func_801B466C_7AABEC(actor_index, D_800E1750);
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
                gActors[actor_index].velocityX.raw = 0;
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
                if (func_801B46C0_7AAC40(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;
                    if (gActors[actor_index].unk_174 != 0) {
                        gActors[actor_index].graphicList = D_801B58D0_7ABE50;
                    }
                    else {
                        gActors[actor_index].graphicList = D_801B5848_7ABDC8;
                    }
                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].unk_114 = 1.0f;
                }
            }
            break;

        case 0x80:
            if (gActors[actor_index].graphicTimer == 0) {
                if (func_801B46C0_7AAC40(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;
                    if (gActors[actor_index].unk_174 != 0) {
                        gActors[actor_index].graphicList = D_801B58D0_7ABE50;
                    }
                    else {
                        gActors[actor_index].graphicList = D_801B588C_7ABE0C;
                    }
                    gActors[actor_index].var_154 = 0;
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
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
            }
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E22B4);
                gActors[actor_index].var_154++;
            }
            break;

        case 0x102:
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
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
                if (func_801B46C0_7AAC40(actor_index) == 0) {
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
                if (func_801B46C0_7AAC40(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;
                    gActors[actor_index].graphicList = D_801B5914_7ABE94;
                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                }
            }
            break;
    }
}

void func_801B4D68_7AB2E8(u16 actor_index) {
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
        func_801B4750_7AACD0(actor_index);
        if (!(gActors[actor_index].var_0D8 & 1)) {
            if ((gActors[actor_index].posX.whole < -352) || (gActors[actor_index].posX.whole >= 272)) {
                gActors[actor_index].flags = 0;
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
