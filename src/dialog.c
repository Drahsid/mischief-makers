#include "common.h"
#include "5EA30.h"
#include "graphics_memory.h"
#include "rle.h"

// script related to dialog code.

extern u32 D_800D73CC[];
extern u32 D_800D7448[];
extern s16 D_800E1474[]; // graphic list for "press L/R prompt"

u16 D_800D5820 = 0x0000;
u16 D_800D5824 = 0x0000;
u16 D_800D5828 = 0x0000;
u16 D_800D582C = 0x0000;
s16 D_800D5830 = 0x0000;
s16 D_800D5834 = 0x003C;

s16 D_800D5838[] = {
    0x0108, 0x010A, 0x010C, 0x010E, 0x0110, 0x0112, 0x0114, 0x0116,
    0x0118, 0x011A, 0x011C, 0x011E, 0x0120, 0x0122, 0x0124, 0x0126,
    0x0128, 0x012A, 0x012C, 0xFFFF, 0xFFFE, 0xFFFD, 0xFFFC, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0xB800, 0x0000, 0x0000, 0x0000,
};

u8 D_800D5878[32 * 32] = {
#include "textures/texture_CI8__D_800D5878.inc.c"
};

u16 D_800D5C78[] = {
#include "textures/tlut_RGBA16__D_800D5C78.inc.c"
};

u8 D_800D5C88[32 * 32] = {
#include "textures/texture_CI8__D_800D5C88.inc.c"
};

u16 D_800D6088[] = {
#include "textures/tlut_RGBA16__D_800D6088.inc.c"
};

u16 D_800D60B8[] = {
#include "textures/tlut_RGBA16__D_800D60B8.inc.c"
};

Vtx D_800D60E8[] = {
    { 0, 0, 26, 0, 0, 0, 23, 73, 100, 0x00 },
    { 18, 13, 11, 0, 0, 816, 23, 73, 100, 0x00 },
    { -7, 22, 11, 0, 0, 0, 23, 73, 100, 0x00 },
    { 0, 0, 26, 0, 16384, 816, 77, 0, 100, 0x00 },
    { 18, -13, 11, 0, 0, 1632, 77, 0, 100, 0x00 },
    { 18, 13, 11, 0, 0, 816, 77, 0, 100, 0x00 },
    { 0, 0, 26, 0, 16384, 1632, 23, -73, 100, 0x00 },
    { -7, -22, 11, 0, 0, 2448, 23, -73, 100, 0x00 },
    { 18, -13, 11, 0, 0, 1632, 23, -73, 100, 0x00 },
    { 0, 0, 26, 0, 16384, 2448, -62, -45, 100, 0x00 },
    { -23, 0, 11, 0, 0, 3264, -62, -45, 100, 0x00 },
    { -7, -22, 11, 0, 0, 2448, -62, -45, 100, 0x00 },
    { -7, 22, 11, 0, 16384, 4080, -62, 45, 100, 0x00 },
    { -23, 0, 11, 0, 0, 4080, -62, 45, 100, 0x00 },
    { 0, 0, 26, 0, 16384, 3264, -62, 45, 100, 0x00 },
};

Vtx D_800D61D8[] = {
    { -7, 22, 11, 0, 16384, 4080, -102, 74, -13, 0x00 },
    { -23, 0, 11, 0, 0, 4912, -102, 74, -13, 0x00 },
    { -23, 0, 11, 0, 0, 4080, -94, 68, -50, 0x00 },
    { -18, 13, -11, 0, 16384, 4912, -100, 73, 23, 0x00 },
    { -18, -13, -11, 0, 16384, 5728, -124, 0, -23, 0x00 },
    { -23, 0, 11, 0, 0, 5728, -124, 0, -23, 0x00 },
    { -18, 13, -11, 0, 16384, 4912, -124, 0, -23, 0x00 },
    { -18, -13, -11, 0, 16384, 5728, -100, -73, 23, 0x00 },
    { -7, -22, 11, 0, 0, 6544, -100, -73, 23, 0x00 },
    { -23, 0, 11, 0, 0, 5728, -100, -73, 23, 0x00 },
    { 7, -22, -11, 0, 16384, 7360, -38, -118, -23, 0x00 },
    { -7, -22, 11, 0, 0, 7360, -38, -118, -23, 0x00 },
    { -18, -13, -11, 0, 16384, 6544, -38, -118, -23, 0x00 },
    { 7, -22, -11, 0, 16384, 7360, -108, -22, 62, 0x00 },
    { 18, -13, 11, 0, 0, 8192, -108, -22, 62, 0x00 },
    { -7, -22, 11, 0, 0, 7360, 38, -118, 23, 0x00 },
};

Vtx D_800D62D8[] = {
    { 7, -22, -11, 0, 16384, 8192, -38, 118, -23, 0x00 },
    { 18, -13, 11, 0, 0, 8192, -108, -22, 62, 0x00 },
    { 7, -22, -11, 0, 16384, 7360, -108, -22, 62, 0x00 },
    { 23, 0, -11, 0, 16384, 9008, 100, -73, -23, 0x00 },
    { 18, -13, 11, 0, 0, 9008, 100, -73, -23, 0x00 },
    { 7, -22, -11, 0, 16384, 8192, 100, -73, -23, 0x00 },
    { 23, 0, -11, 0, 16384, 9008, 124, 0, 23, 0x00 },
    { 18, 13, 11, 0, 0, 9824, 124, 0, 23, 0x00 },
    { 18, -13, 11, 0, 0, 9008, 124, 0, 23, 0x00 },
    { 7, 22, -11, 0, 16384, 10640, 100, 73, -23, 0x00 },
    { 18, 13, 11, 0, 0, 10640, 100, 73, -23, 0x00 },
    { 23, 0, -11, 0, 16384, 9824, 100, 73, -23, 0x00 },
    { 7, 22, -11, 0, 16384, 10640, 38, 118, 23, 0x00 },
    { -7, 22, 11, 0, 0, 11456, 38, 118, 23, 0x00 },
    { 18, 13, 11, 0, 0, 10640, 38, 118, 23, 0x00 },
};

Vtx D_800D63C8[] = {
    { 7, 22, -11, 0, 16384, 11456, 5, -15, -125, 0x00 },
    { -18, 13, -11, 0, 0, 12288, 5, -15, -125, 0x00 },
    { -7, 22, 11, 0, 0, 11456, -38, 118, -23, 0x00 },
    { 7, 22, -11, 0, 16384, 12288, 39, -120, 8, 0x00 },
    { 0, 0, -26, 0, 16384, 13104, -23, 73, -100, 0x00 },
    { -18, 13, -11, 0, 0, 13104, -23, 73, -100, 0x00 },
    { 7, 22, -11, 0, 16384, 12288, -23, 73, -100, 0x00 },
    { 0, 0, -26, 0, 16384, 13104, -77, 0, -100, 0x00 },
    { -18, -13, -11, 0, 0, 13920, -77, 0, -100, 0x00 },
    { -18, 13, -11, 0, 0, 13104, -77, 0, -100, 0x00 },
    { 0, 0, -26, 0, 16384, 13920, -23, -73, -100, 0x00 },
    { 7, -22, -11, 0, 0, 14736, -23, -73, -100, 0x00 },
    { -18, -13, -11, 0, 0, 13920, -23, -73, -100, 0x00 },
    { 0, 0, -26, 0, 16384, 14736, 62, -45, -100, 0x00 },
    { 23, 0, -11, 0, 0, 15552, 62, -45, -100, 0x00 },
    { 7, -22, -11, 0, 0, 14736, 62, -45, -100, 0x00 },
};

Vtx D_800D64C8[] = {
    { 0, 0, -26, 0, 16384, 15552, 62, 45, -100, 0x00 },
    { 7, 22, -11, 0, 0, 16384, 62, 45, -100, 0x00 },
    { 23, 0, -11, 0, 0, 15552, 62, 45, -100, 0x00 },
};

Gfx D_800D64F8[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(D_800D5878, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(D_800D5C78),
    gsSPVertex(D_800D60E8, 15, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSPVertex(D_800D61D8, 16, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 1, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSP1Triangle(7, 8, 9, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsSP1Triangle(13, 14, 15, 0),
    gsSPVertex(D_800D62D8, 15, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSPVertex(D_800D63C8, 16, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 1, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSP1Triangle(7, 8, 9, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsSP1Triangle(13, 14, 15, 0),
    gsSPVertex(D_800D64C8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx D_800D6650[] = {
    { -9, 28, -4, 0, 0, 0, 45, 118, 0, 0x00 },
    { -9, 28, 4, 0, 0, 16384, 45, 118, 0, 0x00 },
    { 16, 18, -11, 0, 16384, 16384, 45, 118, 0, 0x00 },
};

Vtx D_800D6680[] = {
    { -9, 28, -4, 0, 0, 0, -37, 74, -95, 0x00 },
    { 6, 20, -18, 0, 0, 16384, -37, 74, -95, 0x00 },
    { -20, 6, -18, 0, 16384, 16384, -37, 74, -95, 0x00 },
};

Vtx D_800D66B0[] = {
    { -28, 9, 2, 0, 0, 0, -89, 89, 0, 0x00 },
    { -9, 28, 4, 0, 0, 16384, -89, 89, 0, 0x00 },
    { -9, 28, -4, 0, 16384, 16384, -89, 89, 0, 0x00 },
};

Vtx D_800D66E0[] = {
    { 20, -20, -4, 0, 0, 0, 45, -75, -91, 0x00 },
    { -6, -20, -18, 0, 0, 16384, 45, -75, -91, 0x00 },
    { -1, -6, -26, 0, 16384, 16384, 45, -75, -91, 0x00 },
};

Vtx D_800D6710[] = {
    { -6, -20, -18, 0, 16384, 16384, -4, -119, -43, 0x00 },
    { 9, -28, 4, 0, 0, 16384, -4, -119, -43, 0x00 },
    { -24, -25, -1, 0, 0, 0, -4, -119, -43, 0x00 },
};

Vtx D_800D6740[] = {
    { -9, 28, -4, 0, 0, 0, -68, 76, -74, 0x00 },
    { -20, 6, -18, 0, 0, 16384, -68, 76, -74, 0x00 },
    { -28, 9, -6, 0, 16384, 16384, -68, 76, -74, 0x00 },
};

Vtx D_800D6770[] = {
    { -6, -20, -18, 0, 16384, 16384, -76, -38, -93, 0x00 },
    { -24, -25, -1, 0, 0, 16384, -76, -38, -93, 0x00 },
    { -20, 6, -18, 0, 0, 0, -76, -38, -93, 0x00 },
};

Vtx D_800D67A0[] = {
    { -24, -25, -1, 0, 16384, 16384, -11, -126, 0, 0x00 },
    { 9, -28, 4, 0, 0, 16384, -11, -126, 0, 0x00 },
    { 9, -28, 7, 0, 0, 0, -11, -126, 0, 0x00 },
};

Vtx D_800D67D0[] = {
    { -1, -6, -26, 0, 0, 0, 45, 22, -116, 0x00 },
    { 6, 20, -18, 0, 0, 16384, 45, 22, -116, 0x00 },
    { 20, -6, -18, 0, 16384, 16384, 45, 22, -116, 0x00 },
};

Vtx D_800D6800[] = {
    { 15, 13, 18, 0, 0, 0, 81, 6, 97, 0x00 },
    { 6, 7, 26, 0, 0, 16384, 81, 6, 97, 0x00 },
    { 27, -9, 10, 0, 16384, 16384, 81, 6, 97, 0x00 },
};

Vtx D_800D6830[] = {
    { -6, 20, 22, 0, 16384, 16384, 38, 76, 93, 0x00 },
    { 6, 7, 26, 0, 0, 16384, 38, 76, 93, 0x00 },
    { 15, 13, 18, 0, 0, 0, 38, 76, 93, 0x00 },
};

Vtx D_800D6860[] = {
    { -9, 28, 4, 0, 0, 0, 56, 111, 22, 0x00 },
    { 15, 13, 18, 0, 0, 16384, 56, 111, 22, 0x00 },
    { 16, 18, -11, 0, 16384, 16384, 56, 111, 22, 0x00 },
};

Vtx D_800D6890[] = {
    { 6, -20, 22, 0, 16384, 16384, -11, -22, 124, 0x00 },
    { 6, 7, 26, 0, 0, 16384, -11, -22, 124, 0x00 },
    { -20, -6, 22, 0, 0, 0, -11, -22, 124, 0x00 },
};

Vtx D_800D68C0[] = {
    { 27, -9, 10, 0, 16384, 16384, 75, -78, 65, 0x00 },
    { 6, -20, 22, 0, 0, 16384, 75, -78, 65, 0x00 },
    { 9, -28, 7, 0, 0, 0, 75, -78, 65, 0x00 },
};

Vtx D_800D68F0[] = {
    { 9, -28, 7, 0, 16384, 16384, 89, -88, 12, 0x00 },
    { 20, -20, -4, 0, 0, 16384, 89, -88, 12, 0x00 },
    { 28, -9, 6, 0, 0, 0, 89, -88, 12, 0x00 },
};

Vtx D_800D6920[] = {
    { 16, 18, -11, 0, 0, 0, 36, 117, -32, 0x00 },
    { 6, 20, -18, 0, 0, 16384, 36, 117, -32, 0x00 },
    { -9, 28, -4, 0, 16384, 16384, 36, 117, -32, 0x00 },
};

Vtx D_800D6950[] = {
    { -21, -20, 19, 0, 16384, 16384, -2, -107, 67, 0x00 },
    { 9, -28, 7, 0, 0, 16384, -2, -107, 67, 0x00 },
    { 6, -20, 22, 0, 0, 0, -2, -107, 67, 0x00 },
};

Vtx D_800D6980[] = {
    { 6, -20, 22, 0, 16384, 16384, -9, -18, 125, 0x00 },
    { -20, -6, 22, 0, 0, 16384, -9, -18, 125, 0x00 },
    { -21, -20, 19, 0, 0, 0, -9, -18, 125, 0x00 },
};

Vtx D_800D69B0[] = {
    { -6, -20, -18, 0, 16384, 16384, 32, -104, -64, 0x00 },
    { 20, -20, -4, 0, 0, 16384, 32, -104, -64, 0x00 },
    { 9, -28, 4, 0, 0, 0, 32, -104, -64, 0x00 },
};

Vtx D_800D69E0[] = {
    { -28, 9, 2, 0, 16384, 16384, -114, 2, 53, 0x00 },
    { -21, -20, 19, 0, 0, 16384, -114, 2, 53, 0x00 },
    { -20, -6, 22, 0, 0, 0, -114, 2, 53, 0x00 },
};

Vtx D_800D6A10[] = {
    { -24, -25, -1, 0, 0, 0, -126, -15, 0, 0x00 },
    { -28, 9, 2, 0, 0, 16384, -126, -15, 0, 0x00 },
    { -28, 9, -6, 0, 16384, 16384, -126, -15, 0, 0x00 },
};

Vtx D_800D6A40[] = {
    { 20, -6, -18, 0, 16384, 16384, 109, -45, -45, 0x00 },
    { 28, -9, 6, 0, 0, 16384, 109, -45, -45, 0x00 },
    { 20, -20, -4, 0, 0, 0, 109, -45, -45, 0x00 },
};

Vtx D_800D6A70[] = {
    { -28, 9, -6, 0, 16384, 16384, -89, 89, 0, 0x00 },
    { -28, 9, 2, 0, 0, 16384, -89, 89, 0, 0x00 },
    { -9, 28, -4, 0, 0, 0, -89, 89, 0, 0x00 },
};

Vtx D_800D6AA0[] = {
    { 9, -28, 7, 0, 16384, 16384, 82, -96, 0, 0x00 },
    { 9, -28, 4, 0, 0, 16384, 82, -96, 0, 0x00 },
    { 20, -20, -4, 0, 0, 0, 82, -96, 0, 0x00 },
};

Vtx D_800D6AD0[] = {
    { -20, -6, 22, 0, 0, 0, -31, 15, 122, 0x00 },
    { 6, 7, 26, 0, 0, 16384, -31, 15, 122, 0x00 },
    { -6, 20, 22, 0, 16384, 16384, -31, 15, 122, 0x00 },
};

Vtx D_800D6B00[] = {
    { -6, 20, 22, 0, 16384, 16384, 40, 110, 48, 0x00 },
    { 15, 13, 18, 0, 0, 16384, 40, 110, 48, 0x00 },
    { -9, 28, 4, 0, 0, 0, 40, 110, 48, 0x00 },
};

Vtx D_800D6B30[] = {
    { -24, -25, -1, 0, 0, 0, -123, -17, 23, 0x00 },
    { -21, -20, 19, 0, 0, 16384, -123, -17, 23, 0x00 },
    { -28, 9, 2, 0, 16384, 16384, -123, -17, 23, 0x00 },
};

Vtx D_800D6B60[] = {
    { 15, 13, 18, 0, 16384, 16384, 113, 47, 31, 0x00 },
    { 27, -9, 10, 0, 0, 16384, 113, 47, 31, 0x00 },
    { 28, -9, 6, 0, 0, 0, 113, 47, 31, 0x00 },
};

Vtx D_800D6B90[] = {
    { -20, -6, 22, 0, 0, 0, -89, 44, 77, 0x00 },
    { -6, 20, 22, 0, 0, 16384, -89, 44, 77, 0x00 },
    { -28, 9, 2, 0, 16384, 16384, -89, 44, 77, 0x00 },
};

Vtx D_800D6BC0[] = {
    { -1, -6, -26, 0, 0, 0, -73, -36, -96, 0x00 },
    { -6, -20, -18, 0, 0, 16384, -73, -36, -96, 0x00 },
    { -20, 6, -18, 0, 16384, 16384, -73, -36, -96, 0x00 },
};

Vtx D_800D6BF0[] = {
    { 16, 18, -11, 0, 16384, 16384, 112, 56, 13, 0x00 },
    { 15, 13, 18, 0, 0, 16384, 112, 56, 13, 0x00 },
    { 28, -9, 6, 0, 0, 0, 112, 56, 13, 0x00 },
};

Vtx D_800D6C20[] = {
    { 20, -6, -18, 0, 0, 0, 34, -86, -86, 0x00 },
    { 20, -20, -4, 0, 0, 16384, 34, -86, -86, 0x00 },
    { -1, -6, -26, 0, 16384, 16384, 34, -86, -86, 0x00 },
};

Vtx D_800D6C50[] = {
    { 16, 18, -11, 0, 0, 0, 69, 34, -100, 0x00 },
    { 20, -6, -18, 0, 0, 16384, 69, 34, -100, 0x00 },
    { 6, 20, -18, 0, 16384, 16384, 69, 34, -100, 0x00 },
};

Vtx D_800D6C80[] = {
    { -28, 9, 2, 0, 16384, 16384, -84, 78, 53, 0x00 },
    { -6, 20, 22, 0, 0, 16384, -84, 78, 53, 0x00 },
    { -9, 28, 4, 0, 0, 0, -84, 78, 53, 0x00 },
};

Vtx D_800D6CB0[] = {
    { -20, 6, -18, 0, 0, 0, -22, 44, -116, 0x00 },
    { 6, 20, -18, 0, 0, 16384, -22, 44, -116, 0x00 },
    { -1, -6, -26, 0, 16384, 16384, -22, 44, -116, 0x00 },
};

Vtx D_800D6CE0[] = {
    { 28, -9, 6, 0, 0, 0, 89, -86, 25, 0x00 },
    { 27, -9, 10, 0, 0, 16384, 89, -86, 25, 0x00 },
    { 9, -28, 7, 0, 16384, 16384, 89, -86, 25, 0x00 },
};

Vtx D_800D6D10[] = {
    { -24, -25, -1, 0, 16384, 16384, -100, -23, -73, 0x00 },
    { -28, 9, -6, 0, 0, 16384, -100, -23, -73, 0x00 },
    { -20, 6, -18, 0, 0, 0, -100, -23, -73, 0x00 },
};

Vtx D_800D6D40[] = {
    { -24, -25, -1, 0, 16384, 16384, -19, -121, 31, 0x00 },
    { 9, -28, 7, 0, 0, 16384, -19, -121, 31, 0x00 },
    { -21, -20, 19, 0, 0, 0, -19, -121, 31, 0x00 },
};

Vtx D_800D6D70[] = {
    { 6, -20, 22, 0, 16384, 16384, 68, -17, 105, 0x00 },
    { 27, -9, 10, 0, 0, 16384, 68, -17, 105, 0x00 },
    { 6, 7, 26, 0, 0, 0, 68, -17, 105, 0x00 },
};

Vtx D_800D6DA0[] = {
    { 16, 18, -11, 0, 0, 0, 118, 25, -39, 0x00 },
    { 28, -9, 6, 0, 0, 16384, 118, 25, -39, 0x00 },
    { 20, -6, -18, 0, 16384, 16384, 118, 25, -39, 0x00 },
};

Gfx D_800D6DD0[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(D_800D5C88, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(D_800D6088),
    gsSPVertex(D_800D6650, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6680, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D66B0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D66E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6710, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6740, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6770, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D67A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D67D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6800, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6830, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6860, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6890, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D68C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D68F0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6920, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6950, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6980, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D69B0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D69E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A10, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A40, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A70, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6AA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6AD0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B00, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B30, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B60, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B90, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6BC0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6BF0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C20, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C50, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C80, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6CB0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6CE0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D10, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D40, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D70, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6DA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx D_800D70C8[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(D_800D5C88, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(D_800D60B8),
    gsSPVertex(D_800D6650, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6680, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D66B0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D66E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6710, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6740, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6770, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D67A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D67D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6800, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6830, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6860, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6890, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D68C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D68F0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6920, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6950, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6980, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D69B0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D69E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A10, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A40, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6A70, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6AA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6AD0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B00, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B30, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B60, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6B90, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6BC0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6BF0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C20, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C50, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6C80, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6CB0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6CE0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D10, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D40, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6D70, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(D_800D6DA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

s8* D_800D73C0[] = {
    (s8*)D_800D73C0, (s8*)D_800D73CC, (s8*)D_800D7448,
};

u32 D_800D73CC[] = {
    0x00FC2813, 0x42310017, 0x373F0012, 0x2D323843,
    0x4300132A, 0x003D3339, 0x002B2D3A, 0x29003129,
    0xFE020100, 0xF7130041, 0x00134230, 0x30003829,
    0x25272C00, 0x3D3339FE, 0x37333129, 0x382C2D32,
    0x2B002B33, 0x33284343, 0xFF132A00, 0x3D333900,
    0x3B253238, 0x00313D00, 0x2C2D3238, 0x41FE372C,
    0x252F2900, 0x31290038, 0x3B2D2729, 0x41003937,
    0x2D322B00, 0xF712003F, 0xFFFF0000,
};

u32 D_800D7448[] = {
    0x00FC2812, 0x293D4300, 0x212C2538, 0x00283300,
    0x3D333900, 0x2F32333B, 0x4344FE23, 0x33390028,
    0x33324238, 0x002C253A, 0x29002932, 0x33392B2C,
    0x43001300, 0x2B392937, 0x37FE1300, 0x27253242,
    0x38003829, 0x25272C00, 0x3D333900, 0x252A3829,
    0x36002530, 0x3043FFFF,
};

u8 D_801782D0[8]; // unused start of .bss
s8* D_801782D8; // dialog data stream?
s8 D_801782DC;
s16 gDialogPortraitGraphic; // index of portrait for current speaker.
s16 D_801782E0;
s16 D_801782E2;
u32 D_801782E4; // unused
s16 D_801782E8[0x80];
s16 D_801783E8;
s16 D_801783EA;
s16 D_801783EC;
s16 D_801783EE;
s16 D_801783F0;
s16 D_801783F2;
s16 D_801783F4; // set, but not read
s16 D_801783F6; // y-position for textbox
s16 D_801783F8[0x10];
s16 D_80178418[0x10];
u16 gDialogTextboxIndex; // index for actor of text graphic
u16 gDialogTextBGIndex; // index for actor of text background
u16 gDialogPortraitIndex; // index for actor of speaker portrait.
u16 gDialogLRIndex; // index for actor of "press L/R" prompt.
s16 D_80178440; // x-position of player during dialog start
s16 D_80178442; // y-position of player during dialog start

#define D_801C1000 ((s32*)STAGE_TABLE2_DEST)

// forward declarations
u16 func_8005EC20(s16, s16, s32);

void func_8005DE30(void) {
    for (D_801783F0 = 0; D_801783F0 < 0x10; D_801783F0++) {
        D_801783F8[D_801783F0] = D_80178418[D_801783F0] = 0;
    }
    D_801783F0 = D_801783F2 = 0;
    D_801782DC = 0;
    D_801783EE = 2;
    gDialogTextboxIndex = gDialogTextBGIndex = gDialogPortraitIndex = gDialogLRIndex = 0;
    D_801783F4 = -3;
    D_801783F6 = 0xC;
}

s16 func_8005DEFC(void) {
    s16 var_v1;

    var_v1 = D_80178418[0];
    if (var_v1 != 0) {
        var_v1 |= D_801783F8[0] & 0x8000;
    }
    return var_v1;
}

s16 func_8005DF30(void) {
    return D_801783F8[0];
}

void func_8005DF40(s16 arg0, s16 arg1) {
    D_801783F4 = arg0;
    D_801783F6 = arg1;
}

s32 func_8005DF5C(s32 arg0) {
   s32 var_v1;

    D_800D5820 = 0;
    D_800D5830 = 0;
    D_800D5834 = 0x46;
    for (var_v1 = 0; var_v1 < 0x10; var_v1++) {
        if (D_80178418[var_v1] == 0) {
            D_801783F8[var_v1] = 0;
            D_80178418[var_v1] = arg0;
            break;
        }
    }
    return var_v1;
}

s32 func_8005DFC8(s32 arg0) {
    s32 index;

    if (func_8005DEFC() == 0) {
        return func_8005DF5C(arg0);
    }
    index = 1;
    if (D_801783F0 == 0) {
        index = 0;
    }
    if (D_801783F0 == 1) {
        D_801783F0 = 2;
    }
    if (D_801783F0 == 2) {
        D_801783F2 = -1;
    }
    for (; index < 0x10; index++) {
        D_801783F8[index] = 0;
        D_80178418[index] = arg0;
        arg0 = 0;
    }
    if (D_801783F0 == 0) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void func_8005E09C(s32 arg0, s32 arg1) {
    D_801783F8[arg0] = arg1;
}

void func_8005E0B0(s16 arg0, s16 arg1, s32 arg2) {
    if (arg2 == 2) {
        func_8005EC20(arg0, arg1, arg2);
    }
    else if (arg0 > 0) {
        if (arg0 < 0x81) {
            switch (D_801782E0) {
            case 1:
                break;
            case 2:
                arg0 += 0x7C;
                break;
            case 3:
                arg0 += 0xCD;
                break;
            }
        }
        if (arg2 != 0) {
            func_8005EC20(arg0, arg1, arg2);
        }
        else {
            func_800831D0(arg1 % 32, arg1 / 32, arg0, D_801782E2);
        }
    }
}

// squish speech bubble icon.
void AnimateSpeechBubble(u16 actor_index, f32 arg1) {
    f32 temp_f0;

    temp_f0 = arg1 / 5.0f;
    gActors[actor_index].scaleX = arg1 + (temp_f0 * COS(gActiveFrames * 0x20));
    gActors[actor_index].scaleY = arg1 + (temp_f0 * SIN(gActiveFrames * 0x20));
}

void func_8005E260(u16 actor_index) {
    s16 index;
    u16 actor_1;

    actor_1 = gActors[actor_index].parentIndex;
    if ((gActors[actor_index].stateLower < 2) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index].state = 2;
    }
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = GINDEX_SPEECHBUBBLE;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].unk_0DE = 0xD;
        gActors[actor_index].var_110 = 0.0f;
        if (gActors[actor_index].unk_104 < 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].state = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw;
        gActors[actor_index].posZ.raw = gActors[actor_1].posZ.raw;
        gActors[actor_index].posX.raw += gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw += gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw += gActors[actor_index].unk_10C;
        gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxBX1 = gActors[actor_1].posX.whole - gActors[actor_index].posX.whole;
        gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxBY1 = gActors[actor_1].posY.whole - gActors[actor_index].posY.whole;
        gActors[actor_index].hitboxBX0 += gActors[actor_1].hitboxBX0;
        gActors[actor_index].hitboxBX1 += gActors[actor_1].hitboxBX1;
        gActors[actor_index].hitboxBY0 += gActors[actor_1].hitboxBY0;
        gActors[actor_index].hitboxBY1 += gActors[actor_1].hitboxBY1;
        gActors[actor_index].var_110 += 0.05;
        if (gActors[actor_index].var_110 >= 1.0) {
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
        }
        AnimateSpeechBubble(actor_index, gActors[actor_index].var_110);
        if (!(gActors[actor_1].flags_098 & ACTOR_FLAG3_UNK18)) {
            gActors[actor_index].state = 3;
        }
        break;
    case 2:
        index = 0;
        func_8005DFC8((&gActors[actor_index].unk_150)[index].frac);
        index++;
        while (index < 0x10) {
            func_8005DF5C((&gActors[actor_index].unk_150)[index].frac);
            index++;
        }
        gActors[actor_index].state = 3;
        break;
    case 3:
        AnimateSpeechBubble(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_index].var_110 > 0.0f) {
            gActors[actor_index].var_110 -= 0.05;
        }
        else {
            gActors[actor_index].flags = 0;
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8005E56C(u16 actor_index) {
    s16 index;
    u16 actor_1;

    actor_1 = gActors[actor_index].parentIndex;
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = GINDEX_SPEECHBUBBLE;
        gActors[actor_index].colorA = 0xD8;
        gActors[actor_index].unk_0DB = 0x17;
        gActors[actor_index].health = 1;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitboxAY0 = 0xC; \
        gActors[actor_index].hitboxAY1 = -0xC;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].var_110 = 0.0f;
        if (gActors[actor_index].unk_104 < 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].hitboxAX0 = -0x14; \
            gActors[actor_index].hitboxAX1 = 8;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].hitboxAX0 = -8; \
            gActors[actor_index].hitboxAX1 = 0x14;
        }
        gActors[actor_index].state = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw;
        gActors[actor_index].posZ.raw = gActors[actor_1].posZ.raw;
        gActors[actor_index].posX.raw += gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw += gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw += gActors[actor_index].unk_10C;
        gActors[actor_index].var_110 += 0.1;
        if (gActors[actor_index].var_110 >= 1.0) {
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }
        AnimateSpeechBubble(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_1].flags_098 & ACTOR_FLAG3_UNK18) {
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK20;
            if ((gActors[actor_index].stateLower < 2) && (D_800D5820 == 0)) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    if ((gButtonPress & gButton_LTrig) || (gButtonPress & gButton_RTrig)) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                        gActors[actor_index].state = 2;
                        Sound_PlaySfx(SFX_SPEECHSTART);
                        D_80178440 = gPlayerPosX.whole;
                        D_80178442 = gPlayerPosY.whole;
                        gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK20;
                    }
                }
            }
        }
        else {
            gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK20;
            gActors[actor_index].state = 3;
        }
        break;
    case 2:
        index = 0;
        func_8005DFC8((&gActors[actor_index].unk_150)[index].frac);
        index++;
        while (index < 0x10) {
            func_8005DF5C((&gActors[actor_index].unk_150)[index].frac);
            index++;
        }
        D_800D5820 = actor_1;
        gActors[actor_index].state = 3;
        break;
    case 3:
        AnimateSpeechBubble(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_index].var_110 > 0.0f) {
            gActors[actor_index].var_110 -= 0.1;
        }
        else {
            gActors[actor_index].flags = 0;
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8005E8F8(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_114, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == gActors[actor_index].unk_114) {
            if (gActors[actor_index].graphicIndex == GINDEX_TEXTBOX) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;
            }
            gActors[actor_index].state = 1;
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, gActors[actor_index].var_110, gActors[actor_index].var_110 / 20.0f);
        if (gActors[actor_index].scaleX == gActors[actor_index].var_110) {
            gActors[actor_index].stateUpper = 1;
        }
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_114, gActors[actor_index].unk_114 / 20.0f);
        if ((gActors[actor_index].scaleY == gActors[actor_index].unk_114) && (gActors[actor_index].stateUpper == 1)) {
            gActors[actor_index].stateUpper = 2;
        }
        if (gActors[actor_index].colorR >= 9) {
            gActors[actor_index].colorR -= 6;
        }
        else {
            gActors[actor_index].colorR = 0;
            if (gActors[actor_index].stateUpper == 2) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
                gActors[actor_index].hitboxBX0 = 0x30;
                gActors[actor_index].hitboxBX1 = 1;
                gActors[actor_index].hitboxBY0 = 0x18;
                gActors[actor_index].hitboxBY1 = 2;
                gActors[actor_index].unk_17C = (gActors[actor_index].graphicIndex * 0x480) + DIALOG_PORTRAIT_GRAPHICS_VRAM;
                gActors[actor_index].state = 4;
            }
        }
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        break;
    case 2:
        if (gActors[actor_index].graphicIndex == GINDEX_TEXTBOX) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28);
        }
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.0f, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == 0.0f) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 5:
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28);
        if (gActors[actor_index].colorR < 0x78) {
            gActors[actor_index].colorR += 6;
        }
        else {
            gActors[actor_index].colorR = 0x7F;
        }
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].scaleX += gActors[actor_index].var_110 / 20.0f;
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.0f, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == 0.0f) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 6:
        gActors[actor_index].posY.whole = (D_801783F6 - (gActiveFrames & 0xF) / 4) - 0x26;
        break;
    default:
        break;
    }
}

u16 func_8005EC20(s16 arg0, s16 arg1, s32 arg2) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x30, 0xD0);
    if (actor_index == 0) {
        return actor_index;
    }
    gActors[actor_index].actorType = ACTORTYPE_58;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_DRAW;
    // TODO: add #define for hard-coded address for less clumsy casting.
    gActors[actor_index].palette_18C = (u16*)((D_801782E2 * 8) + GRAPHICS_PALETTE_BUFFER_VRAM);
    if (arg2 == 2) { // arg0 treated as graphic.
        if (arg0 < 0) { // negative index treated as gem graphic. invert for color index.
            // macro mismatches.
            gActors[actor_index].graphicList = gGraphicListGem;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].palette_18C = gGemPalettes[func_8005C6D0(arg0) - 1];
        }
        else {
            gActors[actor_index].graphicIndex = arg0;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        }
        gActors[actor_index].state = 0xA;
    }
    else { // arg0 treated as (ALPHA_* - 0x50)
        gActors[actor_index].graphicIndex = (arg0 * 2) + ALPHA_GLYPH(EN_BRACKETRIGHT);
    }
    gActors[actor_index].scaleY = 1.0f;
    gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].posX.whole = -0x7B;
    gActors[actor_index].posY.whole = D_801783F6 + 0x13;
    gActors[actor_index].posX.whole += (arg1 % 32) * 8;
    gActors[actor_index].posY.whole -= (arg1 / 32) * 20;
    gActors[actor_index].posZ.whole = 0x400;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].var_110 = 0.5f;
    gActors[actor_index].unk_114 = -0.025f;
    gActors[actor_index].var_154 = D_801782E2;
    gActors[actor_index].var_158 = arg0;
    gActors[actor_index].var_15C = arg1;
    gActors[actor_index].unk_14C = D_80178418[0];
}

void func_8005EE24(u16 actor_index) {
    if (gActors[actor_index].unk_14C != D_80178418[0]) {
        gActors[actor_index].flags = 0;
        return;
    }
    switch (gActors[actor_index].stateLower) {
    case 0:
        if (D_801783F0 == 2) {
            gActors[actor_index].stateLower = 1;
        }
        break;
    case 1:
        if (D_801783F0 == 3) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].scaleX = 1.0f;
        }
        if (D_801783F0 == 1) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 10:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper = 0xA;
        }
        if (D_801783F0 >= 2) {
            gActors[actor_index].stateLower = 0xB;
        }
        break;
    case 11:
        if (D_801783F0 != 2) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].scaleX += gActors[actor_index].var_110;
        if (gActors[actor_index].scaleX >= 1.5) {
            gActors[actor_index].scaleX = 1.5f;
            gActors[actor_index].var_150 = 0xF;
            gActors[actor_index].stateUpper = 1;
        }
        break;
    case 1:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
        }
        else {
            gActors[actor_index].scaleX += gActors[actor_index].unk_114;
            if (gActors[actor_index].scaleX <= 1.0) {
                gActors[actor_index].scaleX = 1.0f;
                gActors[actor_index].var_150 = D_801782E2;
                D_801782E2 = gActors[actor_index].var_154;
                func_8005E0B0(gActors[actor_index].var_158, gActors[actor_index].var_15C, 0);
                D_801782E2 = gActors[actor_index].var_150;
                gActors[actor_index].flags = 0;
            }
        }
        break;
    default:
        break;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_8005F088(void) {
    u16 actor_index;

    if (gDialogTextBGIndex == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].colorG = 0x7F;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
                gActors[actor_index].colorA = 0xA0;
                gActors[actor_index].scaleX = 16.5f;
                gActors[actor_index].scaleY = 0.0f;
                gActors[actor_index].var_110 = 16.5f;
                gActors[actor_index].unk_114 = 4.0f;
                gActors[actor_index].posX.whole = -3;
                gActors[actor_index].posY.whole = D_801783F6;
                gActors[actor_index].posZ.whole = 0x3FF;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 0;
                gDialogTextBGIndex = actor_index;
            }
        }
    }
    else {
        actor_index = gDialogTextBGIndex;
        if (gActors[actor_index].flags == 0) {
            gDialogTextBGIndex = 0;
        }
        else if ((D_80178418[0] == 0) && (gActors[actor_index].stateLower < 2)) {
            gActors[actor_index].state = 2;
        }
    }

    if (gDialogTextboxIndex == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].graphicIndex = GINDEX_TEXTBOX;
                gActors[actor_index].scaleX = 1.0f;
                gActors[actor_index].scaleY = 0.0f;
                gActors[actor_index].var_110 = 1.0f;
                gActors[actor_index].unk_114 = 1.0f;
                gActors[actor_index].posX.whole = -3;
                gActors[actor_index].posY.whole = D_801783F6;
                gActors[actor_index].posZ.whole = 0x400;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 0;
                gDialogTextboxIndex = actor_index;
            }
        }
    }
    else {
        actor_index = gDialogTextboxIndex;
        if (gActors[actor_index].flags == 0) {
            gDialogTextboxIndex = 0;
        }
        else if ((D_80178418[0] == 0) && (gActors[actor_index].stateLower < 2)) {
            gActors[actor_index].state = 2;
        }
    }

    if (gDialogPortraitIndex == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0) && (gDialogPortraitGraphic != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
                if (D_800D5820 != 0) {
                    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                }
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].colorG = 0x7F;
                gActors[actor_index].colorB = 0x7F;
                gActors[actor_index].graphicIndex = gDialogPortraitGraphic;
                gActors[actor_index].scaleX = 0.0f;
                gActors[actor_index].scaleY = 1.5f;
                gActors[actor_index].var_110 = 1.0f;
                gActors[actor_index].unk_114 = 1.0f;
                gActors[actor_index].posX.whole = D_800D5830;
                gActors[actor_index].posY.whole = D_800D5834;
                gActors[actor_index].posZ.whole = 0x400;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 3;
                gDialogPortraitIndex = actor_index;
            }
        }
    }
    else {
        actor_index = gDialogPortraitIndex;
        if (gActors[actor_index].flags == 0) {
            gDialogPortraitIndex = 0;
        }
        else if ((D_80178418[0] == 0) || (gDialogPortraitGraphic == 0)) {
            if (gActors[actor_index].stateLower < 5) {
                gActors[actor_index].state = 5;
            }
        }
        else {
            gActors[actor_index].unk_17C = (gDialogPortraitGraphic * 0x480) + DIALOG_PORTRAIT_GRAPHICS_VRAM;
            gActors[actor_index].graphicIndex = gDialogPortraitGraphic;
        }
    }
    
    if (gDialogLRIndex == 0) {
        if (!(D_801782DC & 0xF)) {
            if (D_801783F0 == 2) {
                actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
                if (actor_index != 0) {
                    gActors[actor_index].actorType = ACTORTYPE_57;
                    Actor_Initialize(actor_index);
                    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6;
                    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                    ACTOR_GFX_INIT(actor_index, D_800E1474);
                    gActors[actor_index].posX.whole = -3;
                    gActors[actor_index].posY.whole = (D_801783F6 - (gActiveFrames & 0xF) / 4) - 0x26;
                    gActors[actor_index].posZ.whole = 0x400;
                    gActors[actor_index].unk_188 = 0;
                    gActors[actor_index].state = 6;
                    gDialogLRIndex = actor_index;
                }
            }
        }
    }
    else if (D_801783F0 != 2) {
        actor_index = gDialogLRIndex;
        gActors[actor_index].flags = 0;
        gDialogLRIndex = 0;
    }
}

void UpdateDialog(void) {
    s16 index;
    s16 var_s2;
    s32 var_s6;
    s16 var_s1;

    if ((D_800D5820 != 0) && (D_800D5824 & 0x7000) && 
        (((D_80178440 + 0x20) < gPlayerPosX.whole) || (gPlayerPosX.whole < (D_80178440 - 0x20)) || 
         ((D_80178442 + 0x20) < gPlayerPosY.whole) || (gPlayerPosY.whole < (D_80178442 - 0x20)) || func_80040A64())) {
        func_8005DFC8(0);
    }

    D_800D5824 = 0;
    switch (D_801783F0) {
    case 0:
        if (D_80178418[0] == 0) {
            break;
        }

        if (D_800D5820 != 0) {
            if (gActors->posY.whole >= 9) {
                D_801783F6 = -0x30;
            }
            else {
                D_801783F6 = 0x34;
            }
        }
        D_800D582C = 0;
        D_800D5828 = 0;
        D_800D5824 = 0x4000;
        D_801783EA = 0;
        D_801783E8 = 0;
        D_801783EC = 0;
        D_801783EE = 2;
        if (D_801783F8[0] & 0x2000) {
            D_801782D8 = D_800D73C0[D_80178418[0]];
        }
        else {
            D_801782D8 = (s8*)(D_801C1000[D_80178418[0]] - D_801C1000[0] + STAGE_TABLE2_DEST_VRAM);
        }
        var_s2 = D_801782D8[D_801783E8];
        D_801783E8++;
        // fakematch: & 0xFFFF & 0xFFFF
        D_801782DC = var_s2 & 0xF & 0xFFFF & 0xFFFF;
        gDialogPortraitGraphic = 0;
        D_801782E0 = 1;
        D_801782E2 = 0;
        func_8008310C();
        D_801783F0 = 1;
        D_801783F2 = 0;
        break;
    case 1:
        D_800D5824 = 0x1000;
        if (!(D_801782DC & 0x40)) {
            if ((gDialogTextboxIndex == 0) || (gActors[gDialogTextboxIndex].stateLower != 1)) {
                break;
            }
        }
        else {
            D_801783EC = 0;
        }
        var_s2 = 0;
        if (D_800D5828 >= 2) {
            if (D_801783F2 != 0) {
                var_s2 = gButtonHold & (gButton_LTrig | gButton_RTrig);
            }
            else if (gButtonHold & (gButton_LTrig | gButton_RTrig)) {
                D_801783F2 = 1;
            }
        }
        if ((D_801782DC & 0xF) == 1) {
            var_s2 = 0;
        }
        if (var_s2 != 0) {
            D_801783EC = 0;
        }
        if (D_801783EC != 0) {
            D_801783EC--;
        }
        else {
            D_801783EC = D_801783EE;
            var_s6 = 0;
            do
            {
                var_s2 = 0;
                var_s1 = D_801782D8[D_801783E8++];
                if (var_s1 < 0) {
                    var_s2 = 1;
                    switch (var_s1) {
                    case -1:
                        if ((D_801782DC & 0xF) == 1) {
                            D_801783EC = 0x78;
                        }
                        D_801783F8[0] |= 0x4000;
                        if (D_801782D8[D_801783E8] == -1) {
                            D_801783F8[0] |= 0x8000;
                            D_800D5824 = 0x800;
                        }
                        D_801783F0 = 2;
                        var_s2 = 0;
                        break;
                    case -2:
                        D_801783EA /= 32;
                        D_801783EA++;
                        D_801783EA *= 32;
                        break;
                    case -3:
                        D_801783EC = D_801783EE = D_801782D8[D_801783E8++];
                        break;
                    case -4:
                        gDialogPortraitGraphic = GINDEX_PORTRAIT_MARINAA;
                        gDialogPortraitGraphic += D_801782D8[D_801783E8++];
                        if (gDialogPortraitGraphic < GINDEX_PORTRAIT_MARINAA) {
                            gDialogPortraitGraphic = 0;
                        }
                        break;
                    case -5:
                        D_801782E0 = D_801782D8[D_801783E8++];
                        break;
                    case -6:
                        D_801782E2 = D_801782D8[D_801783E8++];
                        break;
                    case -7:
                        var_s6 = 1;
                        break;
                    case -8:
                        D_801783F8[0] = D_801782D8[D_801783E8++];
                        break;
                    case -9:
                        var_s2 = D_801782D8[D_801783E8++];
                        var_s1 = D_800D5838[var_s2];
                        var_s6 = 2;
                        var_s2 = 0;
                        break;
                    default:
                        // fakematch: & 0xFF & 0xFF
                        var_s1 = ((var_s1 & 0x7F & 0xFF & 0xFF) << 8);
                        var_s1 += ((u8)D_801782D8[D_801783E8++]);
                        var_s1 = var_s1 + 0x102;
                        var_s2 = 0;
                        break;
                    }
                }
                if (var_s2 == 0) {
                    if (var_s1 != 0) {
                        D_800D5828++;
                        if (gDialogPortraitIndex != 0) {
                            if ((D_801783F2 != 1) ||
                                !((gButtonHold & gButton_LTrig) || (gButtonHold & gButton_RTrig)) ||
                                !(D_800D5828 & 3)) {
                                // change "voice grunt" based on portrait.
                                switch (gActors[gDialogPortraitIndex].graphicIndex) {
                                default:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_DEFAULT);
                                    break;
                                case GINDEX_PORTRAIT_CAT:
                                case GINDEX_PORTRAIT_ASTER:
                                case GINDEX_PORTRAIT_TERAN:
                                case GINDEX_PORTRAIT_CELES:
                                case GINDEX_PORTRAIT_CMDR:
                                case GINDEX_PORTRAIT_CALINA:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_CLANCER);
                                    break;
                                case GINDEX_PORTRAIT_MARINAA:
                                case GINDEX_PORTRAIT_MARINAB:
                                case GINDEX_PORTRAIT_MARINAC:
                                case GINDEX_PORTRAIT_MARINAD:
                                case 0x232:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_MARINA);
                                    break;
                                case GINDEX_PORTRAIT_THEOA:
                                case GINDEX_PORTRAIT_THEOB:
                                case GINDEX_PORTRAIT_THEOC:
                                case GINDEX_PORTRAIT_LEOA:
                                case GINDEX_PORTRAIT_LEOB:
                                case GINDEX_PORTRAIT_LITH:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_THEOLEO);
                                    break;
                                case GINDEX_PORTRAIT_LUNARA:
                                case GINDEX_PORTRAIT_LUNARB:
                                case GINDEX_PORTRAIT_LUNARC:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_LUNAR);
                                    break;
                                case GINDEX_PORTRAIT_MERCOA:
                                case GINDEX_PORTRAIT_MERCOB:
                                case GINDEX_PORTRAIT_MERCOC:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_MERCO);
                                    break;
                                case GINDEX_PORTRAIT_TARUSA:
                                case GINDEX_PORTRAIT_TARUSB:
                                case GINDEX_PORTRAIT_TARUSC:
                                case GINDEX_PORTRAIT_TARUSD:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_TARUS);
                                    break;
                                }
                            }
                        }
                    }
                    func_8005E0B0(var_s1, D_801783EA, var_s6);
                    D_801782E8[D_801783EA++] = var_s1;
                    var_s6 = 0;
                }
            } while (var_s2 || ((D_801782DC & 0x40) && (D_801783F0 != 2)));
        }
        break;
    case 2:
        if (!(D_801782DC & 0xF)) {
            if (!(gButtonPress & (gButton_LTrig | gButton_RTrig)) && (D_801783F2 != -1)) {
                D_800D5824 = 0x2000;
                D_801783F2 = 0;
                break;
            }
        }
        else {
            D_801783EC--;
            if (D_801783EC > 0) {
                break;
            }
        }
        var_s1 = D_801782D8[D_801783E8];
        D_801783EC = 0;
        if ((var_s1 == -1) || (D_801783F2 == -1)) {
            D_800D5824 = 0x8000;
            Sound_PlaySfx(SFX_SPEECHEND);
            if (gDialogTextboxIndex != 0) {
                gActors[gDialogTextboxIndex].state = 2;
            }
            if (gDialogTextBGIndex != 0) {
                gActors[gDialogTextBGIndex].state = 2;
            }
            if (gDialogPortraitIndex != 0) {
                gActors[gDialogPortraitIndex].state = 5;
            }
            D_801783F0 = 3;
        }
        else {
            func_8008310C();
            D_800D582C++;
            D_800D5828 = 0;
            D_800D5824 = 0x4000;
            D_801783F8[0] &= ~0x4000;
            D_801783F0 = 1;
            D_801783EA = 0;
        }
        break;
    case 3:
        if ((gDialogTextboxIndex == 0) && (gDialogTextBGIndex == 0) && (gDialogPortraitIndex == 0)) {
            index = 0;
            if (D_80178418[1] != 0) {
                for (; index < 0xF; index++) {
                    D_801783F8[index] = D_801783F8[index + 1];
                    D_80178418[index] = D_80178418[index + 1];
                }
            }
            D_801783F8[index] = 0;
            D_80178418[index] = 0;
            D_801783F0 = 0;
            D_801783EA = 0;
            D_800D5820 = 0;
        }
        break;
    }
    if (D_801783F0 > 0) {
        func_8005F088();
    }
}
