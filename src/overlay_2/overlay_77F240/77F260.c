#include "common.h"
#include "actor.h"
#include "28EF0.h"

extern u16 D_800D4350[];
extern u16 D_800D4424[];
extern u16 D_800D4518[];
extern u16 D_800D4884[];
extern u16 D_800D4B94[];
extern u16 D_800D4C30[];
extern u16 D_800D4EA8[];
extern u16 D_800D4F6C[];
extern u16 D_800D50BC[];
extern u16 D_800D5348[];
extern u16 D_800D5448[];
extern u16 D_800D9ADC[];
extern s16 D_800E149C[];
extern u16 D_801AC70A_78506A[];

u8 D_801ABDB0_784710 = 0;

u16 D_801ABDB4_784714[] = {
    0x013C, 0x0133, 0x0126, 0x0129,
    0x8FFF,
    0x0000,
};

u16 D_801ABDC0_784720[] = {
    0x0149, 0x011E, 0x0124, 0x0122,
    0x8FFF,
    0x0000,
};

u16 D_801ABDCC_78472C[] = {
    0x013C, 0x012B, 0x0122, 0x012A, 0x0136,
    0x8FFF,
};

u16 D_801ABDD8_784738[] = {
    0x0139, 0x0129, 0x012C, 0x012C, 0x0121,
    0x8FFF,
};

u16 D_801ABDE4_784744[] = {
    0x0147, 0x011E, 0x0126, 0x012B,
    0x8FFF,
    0x0000,
};

u16 D_801ABDF0_784750[] = {
    0x013F, 0x0132, 0x012F, 0x0131,
    0x8FFF,
    0x0000,
};

u16 D_801ABDFC_78475C[] = {
    0x0138, 0x012B, 0x0124, 0x0122, 0x012F,
    0x8FFF,
};

u16 D_801ABE08_784768[] = {
    0x014A, 0x011E, 0x0121,
    0x8FFF,
};

u16 D_801ABE10_784770[] = {
    0x013B, 0x0122, 0x011E, 0x0131, 0x0125,
    0x8FFF,
};

u16 D_801ABE1C_78477C[] = {
    0x013B, 0x0126, 0x012F, 0x0122,
    0x8FFF,
    0x0000,
};

u16 D_801ABE28_784788[] = {
    0x013E, 0x012C, 0x012C, 0x0121,
    0x8FFF,
    0x0000,
};

u16 D_801ABE34_784794[] = {
    0x0147, 0x0122, 0x011E, 0x0120, 0x0122,
    0x8FFF,
};

u16 D_801ABE40_7847A0[] = {
    0x0138, 0x0129, 0x0129, 0x0136,
    0x8FFF,
    0x0000,
};

u16 D_801ABE4C_7847AC[] = {
    0x013A, 0x0132, 0x012F, 0x0122,
    0x8FFF,
    0x0000,
};

u16 D_801ABE58_7847B8[] = {
    0x013E, 0x0129, 0x0122, 0x0122,
    0x8FFF,
    0x0000,
};

u16 D_801ABE64_7847C4[] = {
    0x014A, 0x0131, 0x012C, 0x012D,
    0x8FFF,
    0x0000,
};

u16 D_801ABE70_7847D0[] = {
    0x0141, 0x012C, 0x0136,
    0x8FFF,
};

u16 D_801ABE78_7847D8[] = {
    0x013F, 0x011E, 0x012D, 0x012D, 0x0136,
    0x8FFF,
};

u16 D_801ABE84_7847E4[] = {
    0x0143, 0x0126, 0x0123, 0x0122,
    0x8FFF,
    0x0000,
};

u16 D_801ABE90_7847F0[] = {
    0x0143, 0x0132, 0x0120, 0x0128, 0x0136,
    0x8FFF,
};

u16 D_801ABE9C_7847FC[] = {
    0x00B4, 0x00B4, 0x00B4,
    0x8FFF,
};

u16* D_801ABEA4_784804[] = {
    D_801ABDB4_784714,
    D_801ABE28_784788,
    D_801ABDC0_784720,
    D_801ABE34_784794,
    D_801ABDCC_78472C,
    D_801ABE40_7847A0,
    D_801ABDD8_784738,
    D_801ABE4C_7847AC,
    D_801ABDE4_784744,
    D_801ABE58_7847B8,
    D_801ABDFC_78475C,
    D_801ABE70_7847D0,
    D_801ABE08_784768,
    D_801ABE78_7847D8,
    D_801ABDF0_784750,
    D_801ABE64_7847C4,
    D_801ABDB4_784714,
    D_801ABE28_784788,
    D_801ABDC0_784720,
    D_801ABE34_784794,
    D_801ABDCC_78472C,
    D_801ABE40_7847A0,
    D_801ABDD8_784738,
    D_801ABE4C_7847AC,
    D_801ABDE4_784744,
    D_801ABE58_7847B8,
    D_801ABDFC_78475C,
    D_801ABE70_7847D0,
    D_801ABE08_784768,
    D_801ABE78_7847D8,
    D_801ABDF0_784750,
    D_801ABE64_7847C4,
    D_801ABE10_784770,
    D_801ABE84_7847E4,
    D_801ABE1C_78477C,
    D_801ABE90_7847F0,
};

u16 D_801ABF34_784894[] = {
//  index   color
    0x0001, 0x20C1,
    0x0002, 0xEDC7,
    0x0003, 0xE5C7,
    0x0009, 0x2101,
    0x000B, 0x2901,
    0x000D, 0xE587,
    0x000E, 0xDD87,
    0x000F, 0xDD47,
    0x0010, 0xD547,
    0x0012, 0x3101,
    0x0014, 0xD507,
    0x0015, 0xCD07,
    0x0016, 0x3141,
    0x0018, 0xCCC7,
    0x0019, 0xC4C7,
    0x001C, 0x3941,
    0x001D, 0xC487,
    0x001E, 0xBC87,
    0x0021, 0xBC47,
    0x0022, 0x3981,
    0x0023, 0xB447,
    0x0024, 0x4181,
    0x0025, 0xB407,
    0x0026, 0xAC07,
    0x0028, 0xAC05,
    0x0029, 0xABC5,
    0x002A, 0x4981,
    0x002B, 0xA3C5,
    0x002C, 0x49C1,
    0x002E, 0xA385,
    0x002F, 0x9B85,
    0x0030, 0x49C3,
    0x0031, 0xEE09,
    0x0032, 0xEE07,
    0x0040, 0xD6D6,
    0x0000,
    0x0000,
};

u16 D_801ABFC4_784924[] = {
//  index   color
    0x0004, 0x6801,
    0x0006, 0x4801,
    0x0007, 0xC801,
    0x0008, 0x3801,
    0x0017, 0xF001,
    0x0000,
    0x0000,
};

u16 D_801ABFDC_78493C[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

u16 D_801AC0DC_784A3C[] = {
    0x0000, 0x0843, 0x1085, 0x2109, 0x6B5B, 0x4211, 0x5295, 0x4A53,
    0x294B, 0x18C7, 0x7BDF, 0xFFFF, 0xEF7B, 0xBDEF, 0x39CF, 0x318D,
    0x9CE7, 0x94A5, 0xB5AD, 0x8C63, 0xFFFF, 0xD6B5, 0xA529, 0x8421,
    0xDEF7, 0xCE73, 0x6319, 0xAD6B, 0xE739, 0xF7BD, 0xC631, 0xFFFF,
    0x739D, 0x5AD7, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 0x0001,
    0x0001, 0x0843, 0x0001, 0x0001, 0x0843, 0x1085, 0x18C7, 0x2109,
    0x294B, 0x318D, 0x2109, 0x0843, 0x0843, 0x4211, 0x5295, 0x5AD7,
    0x6319, 0x0001, 0x4A53, 0x739D, 0x8421, 0x94A5, 0x9CE7, 0x9CE7,
    0x8C63, 0x7BDF, 0x0001, 0xB5AD, 0xC631, 0xDEF7, 0xE739, 0xD6B5,
    0xCE73, 0x6319, 0x6B5B, 0xF7BD, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xC631, 0xFFFF,
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x4A53,
    0xFFFF, 0x739D, 0x8C63, 0x7BDF, 0x0843, 0x0001, 0x0001, 0x0843,
    0x0843, 0x0001, 0x0001, 0x39CF, 0x0843, 0x0843, 0xA529, 0xB5AD,
    0x39CF, 0xA529, 0xBDEF, 0xCE73, 0xDEF7, 0xAD6B, 0xEF7B, 0xFFFF,
    0x0843, 0x0001, 0xF7BD, 0x0001, 0x5295, 0x294B, 0xEF7B, 0x0843,
    0xAD6B, 0x8421, 0xD6B5, 0x5AD7, 0xBDEF, 0xA529, 0x94A5, 0x7BDF,
    0xE739, 0x318D, 0xF7BD, 0x6B5B, 0xCE73, 0xDEF7, 0x4211, 0x1085,
    0x1085, 0x0843, 0x0843, 0x0843, 0xB5AD, 0xEF7B, 0x5295, 0x0843,
    0x9CE7, 0x1085, 0x8421, 0x6319, 0xBDEF, 0xAD6B, 0x1085, 0xD6B5,
    0x0843, 0xCE73, 0x8C63, 0xE739, 0xC631, 0xF7BD, 0x1085, 0x294B,
    0xEF7B, 0xDEF7, 0x739D, 0x0843, 0x1085, 0x0843, 0x1085, 0x0843,
    0x18C7, 0x1085, 0x0843, 0x0843, 0x1085, 0x39CF, 0x1085, 0x1085,
    0x0843, 0xB5AD, 0xA529, 0x6B5B, 0x94A5, 0xC631, 0xE739, 0xD6B5,
    0xF7BD, 0x5AD7, 0x1085, 0x4A53, 0x0843, 0x18C7, 0x1085, 0x1085,
    0x0843, 0x18C7, 0x0843, 0x0843, 0x18C7, 0x18C7, 0x7BDF, 0x1085,
    0x8C63, 0xEF7B, 0xBDEF, 0xAD6B, 0x9CE7, 0xCE73, 0xDEF7, 0x1085,
    0x1085, 0x0843, 0x18C7, 0x18C7, 0x18C7, 0x2109, 0x18C7, 0x1085,
    0x0843, 0x2109, 0x18C7, 0x18C7, 0x318D, 0x2109, 0x18C7, 0x2109,
    0x18C7, 0x18C7, 0x2109, 0x318D, 0x294B, 0x318D, 0x2109, 0x2109,
    0x2109, 0x1085, 0x18C7, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x6B5B, 0x7BDF, 0x9CE7, 0xB5AD, 0x4211, 0x8421, 0x0000,
};

u16 D_801AC2DC_784C3C[] = {
    0x0000, 0x0801, 0x1001, 0x2001, 0x6801, 0x4001, 0x5001, 0x4801,
    0x2801, 0x1801, 0x7801, 0xF801, 0xE801, 0xB801, 0x3801, 0x3001,
    0x9801, 0x9001, 0xB001, 0x8801, 0xF843, 0xD001, 0xA001, 0x8001,
    0xD801, 0xC801, 0x6001, 0xA801, 0xE001, 0xF001, 0xC001, 0xF885,
    0x7001, 0x5801, 0xF94B, 0xF909, 0xF9CF, 0xF8C7, 0x0000, 0x0001,
    0x0001, 0x0801, 0x0001, 0x0001, 0x0801, 0x1043, 0x1843, 0x2085,
    0x2885, 0x3085, 0x2043, 0x0801, 0x0801, 0x40C7, 0x5109, 0x5909,
    0x6109, 0x0001, 0x48C7, 0x714B, 0x818D, 0x91CF, 0x99CF, 0x9A11,
    0x898D, 0x798D, 0x0001, 0xB253, 0xC295, 0xDA95, 0xE2D7, 0xD295,
    0xCA95, 0x614B, 0x694B, 0xF319, 0xFB5B, 0xFB9D, 0xFBDF, 0xFC63,
    0xFCA5, 0xFB19, 0xFCE7, 0xFD29, 0xFD6B, 0xFDAD, 0xC253, 0xFE31,
    0xFEB5, 0xFF39, 0xFF7B, 0xFEF7, 0xFE73, 0xFDEF, 0xFFFF, 0x4909,
    0xFFBD, 0x718D, 0x89CF, 0x794B, 0x0843, 0x0001, 0x0001, 0x0801,
    0x0801, 0x0001, 0x0001, 0x38C7, 0x0801, 0x0801, 0xA1CF, 0xB211,
    0x3885, 0xA211, 0xBA53, 0xCA53, 0xDAD7, 0xAA11, 0xEAD7, 0xFC21,
    0x0801, 0x0001, 0xF2D7, 0x0001, 0x50C7, 0x2843, 0xEB19, 0x0801,
    0xAA53, 0x81CF, 0xD2D7, 0x594B, 0xBA95, 0xA253, 0x9211, 0x79CF,
    0xE319, 0x30C7, 0xF35B, 0x698D, 0xCAD7, 0xDB19, 0x4109, 0x1043,
    0x1043, 0x0843, 0x0801, 0x0843, 0xB295, 0xEB5B, 0x514B, 0x0801,
    0x9A53, 0x1001, 0x8211, 0x618D, 0xBAD7, 0xAA95, 0x1001, 0xD319,
    0x0843, 0xCB19, 0x8A11, 0xE35B, 0xC2D7, 0xF39D, 0x1001, 0x28C7,
    0xEB9D, 0xDB5B, 0x71CF, 0x0843, 0x1043, 0x0843, 0x1043, 0x0843,
    0x1885, 0x1043, 0x0801, 0x0843, 0x1043, 0x3909, 0x1001, 0x1043,
    0x0801, 0xB2D7, 0xA295, 0x69CF, 0x9253, 0xC319, 0xE39D, 0xD35B,
    0xF3DF, 0x598D, 0x1001, 0x494B, 0x0843, 0x1843, 0x1043, 0x1043,
    0x0843, 0x1843, 0x0843, 0x0801, 0x1843, 0x1843, 0x7A11, 0x1043,
    0x8A53, 0xEBDF, 0xBB19, 0xAAD7, 0x9A95, 0xCB5B, 0xDB9D, 0x1001,
    0x1001, 0x0843, 0x1885, 0x1843, 0x1885, 0x2085, 0x1885, 0x1043,
    0x0801, 0x2085, 0x1843, 0x1843, 0x30C7, 0x2085, 0x1885, 0x2085,
    0x1843, 0x1885, 0x2043, 0x30C7, 0x2885, 0x30C7, 0x2085, 0x2043,
    0x2085, 0x1043, 0x1843, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x6BDF, 0x7CA5, 0x9DAD, 0xB631, 0x4295, 0x8529, 0x0000,
};

u16 D_801AC4DC_784E3C[] = {
    0x0000, 0x0003, 0x0005, 0x0009, 0x001B, 0x0011, 0x0015, 0x0013,
    0x000B, 0x0007, 0x001F, 0x003F, 0x003B, 0x002F, 0x000F, 0x000D,
    0x0027, 0x0025, 0x002D, 0x0023, 0x087F, 0x0035, 0x0029, 0x0021,
    0x0037, 0x0033, 0x0019, 0x002B, 0x0039, 0x003D, 0x0031, 0x10BF,
    0x001D, 0x0017, 0x297F, 0x213F, 0x39FF, 0x18FF, 0x0000, 0x0001,
    0x0001, 0x0003, 0x0001, 0x0001, 0x0003, 0x0845, 0x0847, 0x1089,
    0x108B, 0x108D, 0x0849, 0x0003, 0x0003, 0x18D1, 0x2115, 0x2117,
    0x2119, 0x0001, 0x18D3, 0x295D, 0x31A1, 0x39E5, 0x39E7, 0x4227,
    0x31A3, 0x319F, 0x0001, 0x4A6D, 0x52B1, 0x52B7, 0x5AF9, 0x52B5,
    0x52B3, 0x2959, 0x295B, 0x633D, 0x6B7F, 0x73BF, 0x7BFF, 0x8C7F,
    0x94BF, 0x633F, 0x9CFF, 0xA53F, 0xAD7F, 0xB5BF, 0x4A71, 0xC63F,
    0xD6BF, 0xE73F, 0xEF7F, 0xDEFF, 0xCE7F, 0xBDFF, 0xFFFF, 0x2113,
    0xF7BF, 0x319D, 0x39E3, 0x295F, 0x0843, 0x0001, 0x0001, 0x0003,
    0x0003, 0x0001, 0x0001, 0x18CF, 0x0003, 0x0003, 0x39E9, 0x422D,
    0x108F, 0x4229, 0x4A6F, 0x4A73, 0x5AF7, 0x422B, 0x5AFB, 0x843F,
    0x0003, 0x0001, 0x5AFD, 0x0001, 0x18D5, 0x084B, 0x633B, 0x0003,
    0x4A6B, 0x39E1, 0x5AF5, 0x2957, 0x52AF, 0x4A69, 0x4225, 0x39DF,
    0x6339, 0x18CD, 0x6B7D, 0x319B, 0x5AF3, 0x6337, 0x2111, 0x0845,
    0x0845, 0x0843, 0x0003, 0x0843, 0x52AD, 0x6B7B, 0x2955, 0x0003,
    0x4A67, 0x0005, 0x4221, 0x3199, 0x5AEF, 0x52AB, 0x0005, 0x6335,
    0x0843, 0x6333, 0x4223, 0x6B79, 0x5AF1, 0x73BD, 0x0005, 0x18CB,
    0x73BB, 0x6B77, 0x39DD, 0x0843, 0x0845, 0x0843, 0x0845, 0x0843,
    0x1087, 0x0845, 0x0003, 0x0843, 0x0845, 0x210F, 0x0005, 0x0845,
    0x0003, 0x5AED, 0x52A9, 0x39DB, 0x4A65, 0x6331, 0x73B9, 0x6B75,
    0x7BFD, 0x3197, 0x0005, 0x2953, 0x0843, 0x0847, 0x0845, 0x0845,
    0x0843, 0x0847, 0x0843, 0x0003, 0x0847, 0x0847, 0x421F, 0x0845,
    0x4A63, 0x7BFB, 0x632F, 0x5AEB, 0x52A7, 0x6B73, 0x73B7, 0x0005,
    0x0005, 0x0843, 0x1087, 0x0847, 0x1087, 0x1089, 0x1087, 0x0845,
    0x0003, 0x1089, 0x0847, 0x0847, 0x18CD, 0x1089, 0x1087, 0x1089,
    0x0847, 0x1087, 0x0849, 0x18CD, 0x108B, 0x18CD, 0x1089, 0x0849,
    0x1089, 0x0845, 0x0847, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x7BDB, 0x949F, 0xB5A7, 0xC62D, 0x5291, 0xA521, 0x0000,
};

u16 D_801AC6DC_78503C[] = {
    0x00DE, 0x00E0, 0x00E2, 0x00E4, 0x00E6, 0x00E8, 0x00EA, 0x00EC,
    0x00EE,
    0x0000,
};

u16 D_801AC6F0_785050[] = {
//  graphic time
    0x0166, 0x0001,
    0x01B4, 0x0001,
    0x01B2, 0x0001,
    0xFFFA,
    0x0000,

    0x7007, 0x0008,
    0x7008, 0x0005,
    0xFFFC,
    0x0000,
};

u16 D_801AC70C_78506C[] = {
//  posX    posY    angleFlags time
    0xFFF3, 0xFFD0, 0x00C0,    0x0000,
    0xFFF4, 0xFFE1, 0x0738,    0x003C,
    0x0016, 0xFFCE, 0x048C,    0x0000,
    0x0013, 0xFFEE, 0x01AC,    0x0000,
    0x0010, 0xFFFA, 0x04A8,    0x0000,
    0x0013, 0x000F, 0x0314,    0x0001,
    0x0013, 0x0026, 0x06F0,    0x003C,
    0x0005, 0xFFDA, 0x0390,    0x000A,
    0xFFEE, 0xFFF4, 0x0644,    0x003C,
    0xFFFE, 0xFFF7, 0x07D0,    0x0000,
    0xFFEB, 0x0018, 0x036C,    0x000A,
    0xFFFF, 0x001D, 0x05EC,    0x000A,
    0xFFEC, 0x0034, 0x0678,    0x000A,
    0x0010, 0x0033, 0x0398,    0x000A,
    0xFFF6, 0x0007, 0x0744,    0x000A,
    0xFFEA, 0x0006, 0x0698,    0x003C,
    0x0008, 0x0013, 0x01F8,    0x0004,
    0x0009, 0x002D, 0x0274,    0x0004,
    0xFFFA, 0x0024, 0x037C,    0x0004,
    0xFFFE, 0xFFCF, 0x0768,    0x00B4,
    0x7FFF,
    0x0000,
};

u16 D_801AC7B0_785110[] = {
//  graphic time
    0x5015, 0x0004,
    0x5016, 0x0004,
    0x5017, 0x0004,
    0x5018, 0x0004,
    0x5019, 0x000A,
    0x5018, 0x0005,
    0x5015, 0x0010,
    0x0000,
    0x0000,
};

u16 D_801AC7D0_785130[] = {
//  graphic time
    0x500A, 0x0020,
    0x500B, 0x0020,
    0x500C, 0x0078,
    0x0000,
    0x0000,
};

u16 D_801AC7E0_785140[] = {
//  graphic time
    0x500B, 0x000A,
    0x500A, 0x0014,
    0x0000,
    0x0000,
};

u16 D_801AC7EC_78514C[] = {
//  graphic time
    0x500D, 0x0004,
    0x500E, 0x0004,
    0x500F, 0x0004,
    0x5010, 0x0004,
    0x5011, 0x0004,
    0x5012, 0x0004,
    0x5013, 0x0004,
    0xFFF2,
    0x0000,
};

u16 D_801AC80C_78516C[] = {
//  graphic time
    0x5000, 0x0001,
    0x0000,
    0x0000,
};

u16 D_801AC814_785174[] = {
//  graphic time
    0x5019, 0x0004,
    0x501A, 0x0004,
    0x501B, 0x0008,
    0x0000,
    0x0000,
};

u16 D_801AC824_785184[] = {
//  graphic time
    0x5861, 0x0001,
    0x5862, 0x0001,
    0x0000,
    0x0000,

    0x5A46, 0x0002,
    0x5A47, 0x0002,
    0x5A4D, 0x0078,
    0xFFFA,
    0x0000,
};

u16 D_801AC840_7851A0[] = {
//  graphic time
    0x5A19, 0x0005,
    0x5A1A, 0x0005,
    0x5A1B, 0x0005,
    0x5A1C, 0x0005,
    0x5A1D, 0x0005,
    0x5A1C, 0x0005,
    0x5A1D, 0x0005,
    0x5A1C, 0x0005,
    0x5A1D, 0x0005,
    0x5A1C, 0x0005,
    0x5A1D, 0x0005,
    0x5A1B, 0x0005,
    0x5A1A, 0x0005,
    0x5A19, 0x0005,
    0x0000,
    0x0000,
    0x0000,
    0x0000,
};


void Actor_Scale_0F8_0FC_Velocity(u16 actor_index, s32 magnitude);
u16 func_8003EDF4(f32 scale, s16 position_x, s16 position_y, s16 position_z);
void func_8008DF20(u16 actor_index);

void func_801A93B8_781D18(u16 actor_index);

void func_801A6900_77F260(u16 actor_index) {
}


void func_801A6908_77F268(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].graphicIndex = GINDEX_BOOM2;
    gActors[actor_index].colorA = 0x40;
    gActors[actor_index].palette_18C = D_801AC0DC_784A3C;
    gActors[actor_index].scaleX = 12.0f;
    gActors[actor_index].scaleY = 12.0f;
}


void func_801A69B0_77F310(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = 0x2004;
    gActors[actor_index].colorA = 0xF8;
    Actor_SetColorRgb(actor_index, 0xFF);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = -0x50;
    gActors[actor_index].posZ.whole = 0x30;
}


void func_801A6A54_77F3B4(void) {
}


void func_801A6A5C_77F3BC(void) {
}


void func_801A6A64_77F3C4(u16 actor_index) {
    gActors[actor_index].var_150--;
    if (gActors[actor_index].var_150 >= 0x21) {
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x40, 2);
    }
    else {
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 2);
    }

    if (actor_index == 0x90) {
        gActors[actor_index].posZ.whole = gLookatEyeZ - 320.0f;
    }
    else {
        gActors[actor_index].posZ.whole = gLookatEyeZ - 320.0f - 128.0f;
    }

    if (gActors[actor_index].var_150 < 0) {
        gActors[actor_index].colorA = 0;
        gActors[actor_index].posX.whole = 8 - (Rand() & 0xF);
        gActors[actor_index].posY.whole = -0x38;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= Rand() & ACTOR_FLAG_FLIPPED;
        gActors[actor_index].var_150 = 0x40;
        gActors[actor_index].scaleX = 9.0f;
        gActors[actor_index].scaleY = 10.0f;
        gActors[actor_index].var_110 = 0.25f;
        gActors[actor_index].graphicIndex = D_801AC6DC_78503C[Rand() % 9];
        switch (Rand() % 3) {
        case 0:
            gActors[actor_index].palette_18C = D_801AC0DC_784A3C;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_801AC2DC_784C3C;
            break;
        case 2:
            gActors[actor_index].palette_18C = D_801AC4DC_784E3C;
            break;
        }
    }

    gActors[actor_index].var_110 += -0.01;
    gActors[actor_index].scaleX += gActors[actor_index].var_110 * 1.4;
    gActors[actor_index].scaleY -= gActors[actor_index].var_110 * 0.8;
    gActors[actor_index].velocityY.raw += FIXED_UNIT(0.1875);
}


void func_801A6D0C_77F66C(u16 actor_index) {
    u16 index;
    u16 color;
    s16 var_a1;

    var_a1 = func_800456DC();
    for (index = 0; D_801ABF34_784894[index + 0] != 0; index += 2) {
        color = Palette_AdjustRgb5551(D_801ABF34_784894[index + 1], var_a1, var_a1, var_a1);
        ((u16*)0x8036CBE0)[D_801ABF34_784894[index + 0]] = color;
        D_801ABFDC_78493C[D_801ABF34_784894[index + 0]] = color;
    }

    var_a1 = -(func_800456DC() * 2);
    for (index = 0; D_801ABFC4_784924[index + 0] != 0; index += 2) {
        color = Palette_AdjustRgb5551(D_801ABFC4_784924[index + 1], var_a1, var_a1, var_a1);
        ((u16*)0x8036CBE0)[D_801ABFC4_784924[index + 0]] = color;
        D_801ABFDC_78493C[D_801ABFC4_784924[index + 0]] = color;
    }
}


void func_801A6EA8_77F808(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_Image_90C0_16(0x2004, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 0x30, 0);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = (u32)gActors[actor_index].unk_134;
        gActors[new_actor_index].var_154 = 0x40;
        Actor_SetColorRgb(new_actor_index, 0xFF);
        gActors[new_actor_index].var_160 = FIXED_UNIT(256);
        gActors[new_actor_index].rotateY = 45.0f;
        gActors[new_actor_index].scaleY = gActors[actor_index].unk_130;
        gActors[new_actor_index].scaleX = 0.75f;
        gActors[new_actor_index].unk_114 = -gActors[actor_index].unk_130 / 2;
        gActors[new_actor_index].unk_148 = 1.0f;
    }
}


void func_801A7048_77F9A8(u16 actor_index) {
}


void func_801A7050_77F9B0(u16 actor_index) {
    u16 new_actor_index;
    u16 var_a2;

    if ((gActiveFrames % 60) == 0) {
        gActors[actor_index].var_160++;
        if (gActors[actor_index].unk_164 == 0 && gActors[actor_index].var_160 == 0x20) {
            var_a2 = 0x22;
            gActors[actor_index].unk_164++;
        }
        else if ((gActors[actor_index].var_160 & 7) == 0) {
            var_a2 = 0x20;
        }
        else {
            var_a2 = Rand();
            var_a2 &= 0x1E;
        }

        new_actor_index = Actor_RangeFindInactive(0x80, 0x90);
        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL2_LITH_CLOUD;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;

            if (var_a2 == 0x22) {
                gActors[new_actor_index].posX.whole = gActors[0].posX.whole;
            }
            else {
                gActors[new_actor_index].posX.whole = (f32)(0x80 - Rand()) * 0.8;
            }

            gActors[new_actor_index].posY.whole = 0x198 - gScreenPosCurrentY.whole;
            gActors[new_actor_index].posZ.raw = FIXED_UNIT(-2) + new_actor_index * 5;
            gActors[new_actor_index].var_0D8 = var_a2;
        }
    }
}


void func_801A7230_77FB90(u16 actor_index) {
    u16 new_actor_index;
    u16 var_s3;
    u16* text;
    f32 position_x;

    Actor_SetColorRgb(actor_index, (u16)(0x7F - (gActors[actor_index].posY.whole & 0x3F)));
    text = D_801ABEA4_784804[gActors[actor_index].var_0D8];
    gActors[actor_index].scaleX = gActors[actor_index].scaleY;
    position_x = gActors[actor_index].posX.whole + gActors[actor_index].scaleY * 8.0f;
    for (; *text != ALPHA_NULL; text++) {
        gActors[actor_index].scaleX += gActors[actor_index].scaleY * Text_GetWidth2(text) / 24;
        position_x -= (gActors[actor_index].scaleY * Text_GetWidth2(text)) / 1.5;
    }

    text = D_801ABEA4_784804[gActors[actor_index].var_0D8];
    for (; *text != ALPHA_NULL; text++) {
        new_actor_index = SpawnParticle_Image_90C0_16((u16)(ALPHA_GLYPH_INDEX(*text)), (s32)position_x, gActors[actor_index].posY.whole, 0);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].colorA = gActors[actor_index].colorA;
            gActors[new_actor_index].var_154 = -0x40;
            gActors[new_actor_index].unk_148 = 0.0f;
            gActors[new_actor_index].palette_18C = D_800D9ADC;
            gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + (gActors[actor_index].var_0D8 & 1) * FIXED_UNIT(6) - 1;
            gActors[new_actor_index].scaleX = gActors[actor_index].scaleY;
            gActors[new_actor_index].scaleY = gActors[actor_index].scaleY;
        }
        var_s3++;
        position_x += gActors[actor_index].scaleY * Text_GetWidth2(text);
    }
}


void func_801A7538_77FE98(u16 actor_index) {
    u16 new_actor_index;

    if ((gActiveFrames & 7) == 0) {
        new_actor_index = SpawnParticle_Image_90C0_16(gActors[actor_index].graphicIndex, 0, 0, 0);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].scaleX = gActors[actor_index].scaleX;
            gActors[new_actor_index].scaleY = gActors[actor_index].scaleY;
            gActors[new_actor_index].unk_130 = actor_index;
            gActors[new_actor_index].unk_14C = gActors[actor_index].actorType;
            gActors[new_actor_index].var_110 = 0.2f;
            gActors[new_actor_index].unk_114 = 0.2f;
            gActors[new_actor_index].unk_118 = -0.02f;
            gActors[new_actor_index].unk_11C = -0.02f;
            gActors[new_actor_index].colorA = 0x80;
            gActors[new_actor_index].var_154 = -0x11;
            gActors[new_actor_index].palette_18C = D_800D84E8;
            gActors[new_actor_index].unk_13C_f32 = FIXED_UNIT(4);
        }
    }
}


void func_801A7688_77FFE8(u16 actor_index) {
    u16 new_actor_index;
    s16 angle;

    angle = Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw);
    gActors[actor_index].rotateZ = INDEX_TO_DEG(angle);
    if (gActiveFrames & 1) {
        new_actor_index = SpawnParticle_List_90C0_16((s16*)D_801AC6F0_785050, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            Actor_SetColorRgb(new_actor_index, 0x7F);
            gActors[new_actor_index].var_154 = -0x10;
            gActors[new_actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 8;
            gActors[new_actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 8;
            gActors[new_actor_index].velocityZ.raw = 4;
            gActors[new_actor_index].var_110 = 0.1f;
            gActors[new_actor_index].unk_114 = -0.1f;
            gActors[new_actor_index].var_158 = -gActors[actor_index].velocityX.raw / 32;
            gActors[new_actor_index].var_15C = -gActors[actor_index].velocityY.raw / 32;
            gActors[new_actor_index].var_160 = TO_FIXED(angle);
            gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
        }
    }
}


void func_801A7838_780198(u16 actor_index, u16 actor_type) {
    u16 new_actor_index;

    gActors[actor_index].flags = ACTOR_FLAG_NONE;
    new_actor_index = SpawnGemActor(actor_index, actor_type, 0);
    if (new_actor_index != 0) {
        gActors[new_actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 3;
        gActors[new_actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 3;
    }
}


void func_801A7948_7802A8(u16 actor_index) {
    u16 new_actor_index;
    u16 angle;
    s32 position_x;
    s32 position_y;

    position_x = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
    if (position_x < 0xE0 || position_x > 0x320 || (position_y = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole)) > 0x310 || position_y < 0x188) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }

    if (D_801ABDB0_784710 != 0) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        func_8003EDF4(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        return;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].state = 0x10;
        gActors[actor_index].graphicIndex = GINDEX_BLASTB;
        gActors[actor_index].unk_0CE = 9;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].colorA = 0;
        gActors[actor_index].scaleY = 2.0f;
        Actor_SetHitboxA(actor_index, 8);
        Actor_SetHitboxB(actor_index, 8);
        gActors[actor_index].var_154 = 3;
        gActors[actor_index].palette_18C = PALETTE_8022D4C8;
        break;
    case 0x10:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].state = 0x30;
            gActors[actor_index].scaleY = 2.0f;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            func_80029134(actor_index);
            func_801A7230_77FB90(actor_index);
        }
        else if (position_y > 0x220) {
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].state = 0x100;
        }
        else {
            if (position_y > 0x1A8) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
                position_y = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.parts[actor_index * 0]);
            }
            if (position_y > 0x210) {
                gActors[actor_index].scaleY -= 0.05;
            }
            else {
                gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
            }
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(0.015625));
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x80 - (gActiveFrames & 0x1F), 1);
            func_801A7230_77FB90(actor_index);
        }
        break;
    case 0x30:
        switch (func_800291AC(actor_index, 0x40, 0x1083, 0, 0x1003)) {
        case 0:
            if (gActors[actor_index].var_0D8 & 1) {
                func_801A7538_77FE98(actor_index);
            }

            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE) && (gActors[actor_index].var_154 >= 0)) {
                gActors[actor_index].var_154--;
                gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, 0x100, 0x20);
                gLookatAtX = Math_ApproachS32((s32)gLookatAtX, gActors[actor_index].posX.whole, 0x20);
                if (gActors[actor_index].var_154 < 0) {
                    gActors[actor_index].var_0D8++;
                    gActors[actor_index].scaleY = 3.0f;
                    SpawnParticle_RingWaveBlue(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
                    gActors[actor_index].damage = 0x100;
                    Sound_PlaySfx(SFX_BLING);
                    gActors[actor_index].palette_18C = D_800D84E8;
                }
            }

            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
            gActors[actor_index].colorA = 0x80;
            break;
        case 3:
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            new_actor_index = func_8003EDF4(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            if (new_actor_index != 0) {
                gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(4);
            }
            return;
        case 2:
            switch (gActors[actor_index].var_0D8) {
            default:
                if (gActors[actor_index].damage != 0) {
                    gActors[actor_index].state = 0x1000;
                    Sound_PlaySfxAtActor2(SFX_WOOSH_0099, actor_index);
                    break;
                }

                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                new_actor_index = func_8003EDF4(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
                if (new_actor_index != 0) {
                    gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(4);
                    gActors[new_actor_index].velocityX.raw = gActors[actor_index].velocityX.raw;
                    gActors[new_actor_index].velocityY.raw = gActors[actor_index].velocityY.raw;
                    gActors[new_actor_index].var_158 = -gActors[actor_index].velocityX.raw / 16;
                    gActors[new_actor_index].var_15C = -gActors[actor_index].velocityY.raw / 16;
                }
                return;
            case 0x21:
                func_801A7838_780198(actor_index, 0x31);
                return;
            case 0x23:
                func_801A7838_780198(actor_index, 0x32);
                return;
            }
            break;
        }
        func_801A7230_77FB90(actor_index);
        break;
    case 0x100:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
        gActors[actor_index].graphicIndex = GINDEX_BOOM1;
        gActors[actor_index].posZ.raw = FIXED_UNIT(0.5);
        gActors[actor_index].colorA = 0x60;
        gActors[actor_index].scaleX = 1.0f;
        gActors[actor_index].scaleY = 1.2f;
        Actor_SetHitboxA(actor_index, 4);
        Actor_SetHitboxB(actor_index, 8);
        gActors[actor_index].unk_0DF = ACTOR0DF_5;
        gActors[actor_index].hitFlags = HITFLAG_2;
        gActors[actor_index].hitType = HITTYPE_SHOCK_13;\
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.5);\
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.25);
        gActors[actor_index].damage = 0x32;
        Actor_Scale_0F8_0FC_Velocity(actor_index, FIXED_UNIT(2));
        angle = Math_PlaneOctant(gActors[0].posX.whole - gActors[actor_index].posX.whole, gActors[0].posY.whole - gActors[actor_index].posY.whole);
        gActors[actor_index].var_150 = COS(angle) * FIXED_UNIT(2);
        gActors[actor_index].var_154 = SIN(angle) * FIXED_UNIT(2);
        gActors[actor_index].velocityX.raw = COS(angle) * FIXED_UNIT(-2);
        gActors[actor_index].velocityY.raw = SIN(angle) * FIXED_UNIT(-2);
        gActors[actor_index].rotateZ = INDEX_TO_DEG(angle);
        Sound_PlaySfxAtActor2(SFX_SHOT_0046, actor_index);
        func_8003EEC0(0.8f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    case 0x101:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            return;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveBlue(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            return;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_150, FIXED_UNIT(0.25));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_154, FIXED_UNIT(0.25));
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.1f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.7f, 0.1f);
        break;
    case 0x1000:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            func_8003EEC0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            Sound_PlaySfxAtActor2(SFX_BOOM_0041, actor_index);
            return;
        }
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        func_801A7688_77FFE8(actor_index);
        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 > 0x28) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            return;
        }
        break;
    case 0x40:
    case 0x1001:
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x7F, 0x20);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801A8254_780BB4(s16 position_x, s16 position_z, s16 angle) {
    u16 new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_3030, position_x, 0x1F8 - gScreenPosCurrentY.whole, position_z);
    if (new_actor_index != 0) {
        if (angle != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].rotateY = angle;
        }
        else {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        }

        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0x20;
        gActors[new_actor_index].palette_18C = D_801ABFDC_78493C;
        gActors[new_actor_index].scaleX = 3.0f;
        gActors[new_actor_index].scaleY = 3.0f;
        gActors[new_actor_index].unk_148 = 0.0f;
    }
}


void func_801A8350_780CB0(u16 actor_index) {
    func_801A8254_780BB4(0x200 - gScreenPosCurrentX.whole, -0x240, 0);
    func_801A8254_780BB4(0x80 - gScreenPosCurrentX.whole, -0x240, 0x2D);
    func_801A8254_780BB4(0x380 - gScreenPosCurrentX.whole, -0x240, -0x2D);
}


void func_801A83D8_780D38(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x700D;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].colorA = 0;
    case 1:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.03125));
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 1);
        break;
    }
}


void func_801A849C_780DFC(u16 actor_index) {
    gActors[actor_index].posX.whole = gLookatAtX;
    gActors[actor_index].posY.whole = gLookatAtY;
    gActors[actor_index].unk_188 = gLookatEyeZ - 320.0f;

    switch (gActors[actor_index].state) {
    case 1:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_154);
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].state = 0;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
        break;
    case 2:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, gActors[actor_index].var_154);
        break;
    case 3:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, gActors[actor_index].var_158, gActors[actor_index].var_154);
        break;
    }
    gActors[actor_index].var_150++;
}


void func_801A8604_780F64(void) {
    gActors[0x8F].actorType = ACTORTYPE_OVL2_LITH_5;
    Actor_Initialize(0x8F);
    gActors[0x8F].graphicFlags = ACTOR_GFLAG_NONE;
    gActors[0x8F].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x8F].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[0x8F].posZ.whole = 0xE0;
    gActors[0x8F].var_154 = 4;
    gActors[0x8F].scaleX = 20.0f;
    gActors[0x8F].scaleY = 20.0f;
}


void func_801A866C_780FCC(u16 actor_index) {
    gActors[0x8F].state = 1;
    gActors[0x8F].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x8F].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED;
    gActors[0x8F].palette_18C = D_800D8588;
    gActors[0x8F].colorA = 0xFF;
    gActors[0x8F].var_150 = 0;
    gActors[0x8F].var_154 = actor_index;
    Actor_SetColorRgb(0x8F, 0);
}


void func_801A86D4_781034(u16 actor_index) {
    gActors[0x8F].state = 2;
    gActors[0x8F].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x8F].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED;
    gActors[0x8F].palette_18C = D_800D8588;
    gActors[0x8F].colorA = 0;
    gActors[0x8F].var_150 = 0;
    gActors[0x8F].var_154 = actor_index;
    Actor_SetColorRgb(0x8F, 0);
}


void func_801A8738_781098(void) {
}


void func_801A8740_7810A0(void) {
}


void func_801A8748_7810A8(u16 actor_index) {
    FixedCoord* player_x_position = &gActors[0].posX;
    s16 player_right;
    s16 player_left;
    s16 player_top;
    s16 player_bottom;
    s16 actor_left;
    s16 actor_top;
    s16 actor_right;
    s16 actor_bottom;

    player_left = player_x_position->whole - 0x10;
    player_right = player_x_position->whole + 0x10;
    player_top = gActors[0].posY.whole + 8;
    player_bottom = gActors[0].posY.whole - 8;
    actor_left = (gActors + actor_index)->hitboxBX0 + (gActors + actor_index)->posX.whole;
    actor_right = (gActors + actor_index)->hitboxBX1 + (gActors + actor_index)->posX.whole;
    actor_bottom = (gActors + actor_index)->hitboxBY0 + (gActors + actor_index)->posY.whole;
    actor_top = (gActors + actor_index)->hitboxBY1 + (gActors + actor_index)->posY.whole;

    if (player_right >= actor_left && player_left < actor_right && player_top >= actor_top && player_bottom < actor_bottom) {
        if (player_x_position->raw < (gActors + actor_index)->posX.raw) {
            if (player_right - actor_left < 8) {
                player_x_position->whole = (player_x_position->whole - player_right) + actor_left;
            }
            else {
                player_x_position->whole -= 8;
            }
        }
        else if (actor_right - player_left < 8) {
            player_x_position->whole += actor_right - player_left;
        }
        else {
            player_x_position->whole += 8;
        }
    }
}


void func_801A88C4_781224(u16 actor_index) {
    u16 index;

    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = 0;
    gActors[actor_index].dlist_17C = (Gfx*)0x8037D700;
    gActors[actor_index].scaleX = 0.9f;
    gActors[actor_index].scaleY = 0.9f;
    gActors[actor_index].unk_12C = 1.0f;

    for (index = 0; D_801ABF34_784894[index + 0] != 0; index += 2) {
        D_801ABFDC_78493C[D_801ABF34_784894[index + 0]] = D_801ABF34_784894[index + 1];
    }

    for (index = 0; D_801ABFC4_784924[index + 0] != 0; index += 2) {
        D_801ABFDC_78493C[D_801ABFC4_784924[index + 0]] = D_801ABFC4_784924[index + 1];
    }
}


void func_801A89E8_781348(u16 actor_index) {
    if (gActors[actor_index].state & 0x8000) {
        func_801A93B8_781D18(actor_index);
        return;
    }

    gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, ((gActiveFrames / 8) & 7) + 480, 1);
    gLookatAtX = Math_ApproachS32((s32)gLookatAtX, 0, 1);
    gLookatEyeX = gLookatAtX;
    gLookatAtY = Math_ApproachS32((s32)gLookatAtY, 0, 1);
    gLookatEyeY = gLookatAtY + 8.0f;
    if (gActors[actor_index].state) {
        if (gActors[0x90].flags & ACTOR_FLAG_DRAW) {
            func_801A6A64_77F3C4(0x90);
            func_801A6A64_77F3C4(0x91);
            gActors[0x92].posX.whole = (s32)gLookatAtX;
        }

        if (gActors[actor_index].health <= 0) {
            gActors[actor_index].state = 0x8000;
            D_801ABDB0_784710 = 1;
            func_801A93B8_781D18(actor_index);
            Sound_StartFade(0x81, 0xF0);
            return;
        }

        if (gActors[actor_index].posZ.whole >= -4) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK10;
            func_801A8748_7810A8(actor_index);
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK10;
        }

        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && gActors[gActors[actor_index].parentIndex].damage != 0) {
            gActors[actor_index].state = 0x300;
        }

        func_801A6D0C_77F66C(actor_index);
    }

    switch (gActors[actor_index].state) {
    case 0:
        func_801A88C4_781224(actor_index);
        gActors[actor_index].state = 0x100;
        func_801A6908_77F268(0x90);
        func_801A6908_77F268(0x91);
        gActors[0x91].var_150 = 0x20;
        func_801A69B0_77F310(0x92);
        gActors[actor_index].posY.whole = 0x34;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = 0;
        gActors[actor_index].health = 0x800;
        gActors[actor_index].hitboxBY0 = 0x38;
        gActors[actor_index].hitboxBY1 = -0x38;
        gActors[actor_index].hitboxBX0 = -0x18;
        gActors[actor_index].hitboxBX1 = 0x18;
        D_801ABDB0_784710 = 0;
        gLookatEyeZ = 448.0f;
        break;
    case 0x100:
        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[0].posX.raw, FIXED_UNIT(0.25));
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-4), FIXED_UNIT(2));
        gActors[actor_index].unk_16C = func_800298D0(0, gActors[actor_index].unk_16C, FIXED_UNIT(1));
        gActors[actor_index].unk_170 = func_800298D0(FIXED_UNIT(992), gActors[actor_index].unk_170, FIXED_UNIT(1));

        if (Math_AbsS32(gActors[actor_index].posX.whole - gActors[0].posX.whole) < 0x40) {
            gActors[actor_index].unk_174 = func_800298D0(0, gActors[actor_index].unk_174, FIXED_UNIT(1));
        }
        else if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].unk_174 = func_800298D0(FIXED_UNIT(64), gActors[actor_index].unk_174, FIXED_UNIT(1));
        }
        else {
            gActors[actor_index].unk_174 = func_800298D0(FIXED_UNIT(960), gActors[actor_index].unk_174, FIXED_UNIT(1));
        }

        func_801A7050_77F9B0(actor_index);
        func_801A8350_780CB0(actor_index);
        break;
    case 0x200:
        gActors[actor_index].state++;
        gActors[actor_index].unk_130 = 2.0f;
        gActors[actor_index].unk_134 = 0.0f;
    case 0x201:
        if (gButtonPress & gButton_RTrig) {
            gActors[actor_index].state = 0x100;
        }

        gActors[actor_index].unk_130 = Math_ApproachF32(gActors[actor_index].unk_130, 1.0f, 0.01f);
        gActors[actor_index].unk_134 = Math_ApproachS32((s32)gActors[actor_index].unk_134, 0x80, 2);
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(-128), FIXED_UNIT(2));
        gActors[actor_index].unk_16C = func_800298D0(0, gActors[actor_index].unk_16C, FIXED_UNIT(4));
        gActors[actor_index].unk_170 = func_800298D0(FIXED_UNIT(128), gActors[actor_index].unk_170, FIXED_UNIT(4));
        gActors[actor_index].unk_174 = func_800298D0(0, gActors[actor_index].unk_174, FIXED_UNIT(4));
        func_801A6EA8_77F808(actor_index);
        break;
    case 0x300:
        gActors[actor_index].state++;
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].unk_174 = 0;
        CameraShake(8, 0xC);
        Sound_PlaySfxAtActor2(SFX_THEO_GRUNT1, actor_index);
    case 0x301:
        gActors[actor_index].unk_16C += FIXED_UNIT(16);
        gActors[actor_index].unk_170 += FIXED_UNIT(16);
        gActors[actor_index].unk_174 += FIXED_UNIT(16);
        gActors[actor_index].unk_16C &= 0x01FFFFFF;
        gActors[actor_index].unk_170 &= 0x01FFFFFF;
        gActors[actor_index].unk_174 &= 0x01FFFFFF;
        if (gActors[actor_index].unk_16C == 0) {
            gActors[actor_index].state = 0x100;
        }
        break;
    }

    if (gActors[actor_index].state) {
        gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].unk_16C));
        gActors[actor_index].rotateX = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].unk_170));
        gActors[actor_index].rotateY = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].unk_174));
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


s32 func_801A9098_7819F8(u16 actor_index) {
    u16 index;
    u16 new_actor_index;
    s16 angle;
    u16* entry;

    for (index = 0; index < gActors[actor_index].var_150; index += 4) {
        entry = &D_801AC70C_78506C[index + 0];
        new_actor_index = SpawnParticle_Image_90C0_16(0x1EE, (s16)entry[0], (s16)entry[1], gActors[actor_index].posZ.whole);
        if (new_actor_index != 0) {
            angle = entry[2];
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;

            if (angle & 0x400) {
                gActors[new_actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[new_actor_index].var_160 = TO_FIXED(angle & 0x3FF);
            gActors[new_actor_index].unk_148 = 0.0f;

            if (gActiveFrames & 1) {
                gActors[new_actor_index].colorG = 0x3F;
                gActors[new_actor_index].colorA = 0xE0;
            }
            else {
                gActors[new_actor_index].colorG = 0x7F;
                gActors[new_actor_index].colorA = 0xFF;
            }

            gActors[new_actor_index].colorB = 0x7F;
            gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw;
        }
    }

    gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 384.0f, 8.0f);
    gLookatEyeY = Math_ApproachF32(gLookatEyeY, 0.0f, 0.05f);
    gLookatEyeX = Math_ApproachF32(gLookatEyeX, 0.0f, 0.05f);
    gLookatAtX = gLookatEyeX * 0.24;
    gLookatAtY = gLookatEyeY - 8.0f;
    if ((s16)D_801AC70C_78506C[gActors[actor_index].var_150] == 0x7FFF) {
        return 1;
    }

    gActors[actor_index].var_154--;
    if (gActors[actor_index].var_154 < 0) {
        gActors[actor_index].var_150 += 4;
        gActors[actor_index].var_154 = (s16)D_801AC70A_78506A[index];
        Sound_PlaySfx2(0xE1);
        CameraShake(4, 2);
        gLookatEyeX = gActors[new_actor_index].posX.whole * 6;
        gLookatEyeY = gActors[new_actor_index].posY.whole + 0x18;
        gLookatEyeZ = 256.0f;
    }
    return 0;
}


void func_801A93B8_781D18(u16 actor_index) {
    if ((gActors[0x90].flags & ACTOR_FLAG_DRAW) && ((s32)gActors[actor_index].state < 0xC000)) {\
        func_801A6A64_77F3C4(0x90U);
        func_801A6A64_77F3C4(0x91U);
        gActors[0x92].posX.whole = (s32)gLookatAtX;
        func_801A6D0C_77F66C(actor_index);
    }

    switch (gActors[actor_index].state) {
    case 0x8000:
        D_800BE544 = 0x8000;
        gScreenPosTargetX.whole = 0x200;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosTargetY.whole = 0x1E0;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        func_80028380();
        Actor_ClearRange_10To20();
        Actor_ClearRange(0x10U, 0xC0U);
        Actor_ClearRange_C0ToC7();
        func_800286C8();
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = 448.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 0.0f;
        Actor_Initialize(actor_index);
        func_801A88C4_781224(actor_index);
        gActors[actor_index].state = 0x8001;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        func_801A6908_77F268(0x90U);
        func_801A6908_77F268(0x91U);
        gActors[0x91].var_150 = 0x20;
        func_801A8604_780F64();
        func_801A866C_780FCC(6U);
        gActors[actor_index].var_154 = 0x3C;
        D_800D28FC |= 4;
        break;
    case 0x8001:
        if (func_801A9098_7819F8(actor_index) != 0) {
            gActors[actor_index].state += 1;
            func_801A86D4_781034(1U);
            gActors[actor_index].var_154 = 0xF0;
            gActors[0x31].actorType = ACTORTYPE_OVL2_LITH_4;
            Actor_Initialize(0x31U);
            gActors[0x31].posX.whole = gActors[actor_index].posX.whole;
            gActors[0x31].posY.whole = gActors[actor_index].posY.whole + 0x10;
            gActors[0x31].posZ.whole = gActors[actor_index].posZ.whole + 8;
            Sound_PlaySfx(SFX_THEO_HELP1);
        }
        break;
    case 0x8002:
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 < 0) {
            gActors[actor_index].state = 0xC000;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            return;
        }
        func_801A9098_7819F8(actor_index);
        break;
    case 0x9000:
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = 512.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 4.0f;
        func_801A88C4_781224(actor_index);
        gActors[actor_index].state += 1;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = -0x40;
        gActors[actor_index].rotateX = -20.0f;
        func_801A6908_77F268(0x90U);
        func_801A6908_77F268(0x91U);
        gActors[0x91].var_150 = 0x20;
        func_801A8604_780F64();
        func_801A866C_780FCC(4U);
        func_8005DF40(0, -0x30);
        Sound_PlaySfx(SFX_0080);
        break;
    case 0x9001:
        gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, 0xC0, 2);
        if ((s16)(s32)gLookatEyeZ == 0xC0) {
            gActors[actor_index].state += 1;
            func_8005DF5C(1);
            D_800D5830 = 0x68;
            D_800D5834 = 0x18;
        }
        break;
    case 0x9002:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
        }
        break;
    case 0x9003:
        gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, 0x1C0, 2);
        if ((s16)(s32)gLookatEyeZ == 0x1C0) {
            gActors[actor_index].state += 1;
            func_8005DF40(0, 0x40);
            func_8005DF5C(2);
            D_800D5830 = 0x50;
            D_800D5834 = 0;
        }
        break;
    case 0x9004:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            Sound_PlaySfx(SFX_0078);
        }
        break;
    case 0x9005:
        gLookatAtX = Math_ApproachF32(gLookatAtX, gActors[0x33].posX.whole, 2.25f);
        gActors[actor_index].rotateY = Math_ApproachF32(gActors[actor_index].rotateY, 40.0f, 1.0f);
        if ((s16)(s32)gLookatAtX == gActors[0x33].posX.whole) {
            gActors[actor_index].state += 1;
            func_8005DF5C(3);
            D_800D5830 = 0x50;
            D_800D5834 = 0;
        }
        break;
    case 0x9006:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            Sound_PlaySfx(SFX_0078);
        }
        break;
    case 0x9007:
        gLookatAtX = Math_ApproachF32(gLookatAtX, gActors[0x34].posX.whole, 2.0f);
        gActors[actor_index].rotateY = Math_ApproachF32(gActors[actor_index].rotateY, -40.0f, 1.0f);
        if ((s16)(s32)gLookatAtX == gActors[0x34].posX.whole) {
            gActors[actor_index].state += 1;
            func_8005DF5C(4);
            D_800D5830 = -0x50;
            D_800D5834 = 0;
        }
        break;
    case 0x9008:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].unk_130 = 20.0f;
        }
        break;
    case 0x9009:
        gActors[actor_index].rotateY = Math_ApproachF32(gActors[actor_index].rotateY, 0.0f, 1.0f);
        gActors[actor_index].unk_130 -= 1.0f;
        if (gActors[actor_index].unk_130 < 0.0f) {
            gActors[actor_index].state += 1;
            func_8005DF5C(5);
            D_800D5830 = -0x50;
            D_800D5834 = 0;
            Sound_PlaySfx(SFX_MARINA_STOP);
            Sound_StartFade(0x81U, 0x78U);
        }
        break;
    case 0x900A:
        gActors[actor_index].rotateY = Math_ApproachF32(gActors[actor_index].rotateY, 0.0f, 1.0f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            gMarinaAnim.anim_u32 = 0xB;
        }
        break;
    case 0x900B:
        gActors[actor_index].rotateY = Math_ApproachF32(gActors[actor_index].rotateY, 0.0f, 1.0f);
        gLookatAtX = Math_ApproachF32(gLookatAtX, 0.0f, 1.75f);
        gLookatAtY = Math_ApproachF32(gLookatAtY, -48.0f, 1.0f);
        gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 224.0f, 5.0f);
        if ((s16)(s32)gLookatEyeZ == 0xE0) {
            gActors[actor_index].state += 1;
            func_8005DF5C(6);
            D_800D5830 = -0x50;
            D_800D5834 = 0;
        }
        break;
    case 0x900C:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            Sound_PlaySfx(SFX_00B0);
        }
        break;
    case 0x900D:
        gLookatAtY = Math_ApproachS32((s32)gLookatAtY, 0x40, 2);
        gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 192.0f, 1.0f);
        if ((s16)(s32)gLookatEyeZ == 0xC0) {
            gActors[actor_index].state += 1;
            func_8005DF40(0, -0x30);
            func_8005DF5C(7);
            D_800D5830 = 0x50;
            D_800D5834 = 0x10;
            Sound_PlayMusic(0xF);
        }
        break;
    case 0x900E:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            func_801A86D4_781034(2U);
            gActors[actor_index].unk_130 = 180.0f;
            Sound_PlaySfx(SFX_013D);
        }
        break;
    case 0x900F:
        gActors[actor_index].rotateX -= 0.2;
        gActors[actor_index].unk_130 -= 1.0f;
        if (gActors[actor_index].unk_130 < 0.0f) {
            gStageState = 0x1001;
            Actor_ClearRange_10To20();
            Actor_ClearRange(0x10U, 0xC0U);
            Actor_ClearRange_C0ToC7();
            func_800286C8();
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gLookatEyeX = 0.0f;
            gLookatAtX = 0.0f;
            gLookatEyeY = 0.0f;
            gLookatAtY = 4.0f;
            gLookatEyeZ = 448.0f;
            return;
        }
        break;
    case 0x9100:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x3028;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -0x20;
        gActors[actor_index].posZ.whole = 0xA0;
        break;
    case 0x9101:
        if (gLookatEyeZ <= 226.0f) {
            gActors[actor_index].colorA = 0;
        }
        else if (gLookatEyeZ < 288.0f) {
            gActors[actor_index].colorA = (u32)(((gLookatEyeZ - 224.0f) * 4.0f) - 1.0f);
        }
        break;
    case 0x9200:
        gActors[actor_index].state = 0x9101;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x302C;
        gActors[actor_index].posX.raw = FIXED_UNIT(72);
        gActors[actor_index].posY.raw = FIXED_UNIT(-32);
        gActors[actor_index].posZ.whole = 0xA0;
        break;
    case 0x9201:
        break;
    case 0x9300:
        gActors[actor_index].state = 0x9101;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[actor_index].graphicIndex = 0x302E;
        gActors[actor_index].posX.raw = -FIXED_UNIT(72);
        gActors[actor_index].posY.raw = FIXED_UNIT(-32);
        gActors[actor_index].posZ.whole = 0xA0;
        break;
    case 0xC000:
        gStageState = 0x13;
        D_800BE544 = 0x8000;
        gScreenPosTargetX.whole = 0x200;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosTargetY.whole = 0x1E0;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        func_80028380();
        Actor_ClearRange_10To20();
        Actor_ClearRange(0x10U, 0xC0U);
        Actor_ClearRange_C0ToC7();
        func_800286C8();
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = 448.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 0.0f;
        Actor_Initialize(actor_index);
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].state = 0xC001;
        func_801A8604_780F64();
        func_801A866C_780FCC(8U);
        gActors[0x8E].actorType = ACTORTYPE_OVL2_LITH_THEO;
        Actor_Initialize(0x8EU);
        gActors[0x8E].flags = ACTOR_FLAG_ACTIVE;
        break;
    case 0xC001:
        break;
    }
    if (gActors[actor_index].state >= 0x9001 && gActors[actor_index].state < 0x9010) {
        gLookatEyeX = gLookatAtX;
        gLookatEyeY = gLookatAtY + 2.0f;
    }
}


void func_801AA240_782BA0(u16 actor_index, s16 position_x, s16 position_y, u16 graphic_index) {
    u16 new_actor_index = SpawnParticle_Image_90C0_16(graphic_index, position_x, position_y, 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].unk_148 = 0.0f;
        gActors[new_actor_index].colorR = gActors[actor_index].colorR;
        gActors[new_actor_index].colorG = gActors[actor_index].colorG;
        gActors[new_actor_index].colorB = gActors[actor_index].colorB;
    }
}


void func_801AA2E4_782C44(u16 actor_index) {
    switch (gActors[actor_index].graphicIndex) {
    case 0x5008:
        func_801AA240_782BA0(actor_index, gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole - 6, 0x2816);
        break;
    case 0x5009:
        func_801AA240_782BA0(actor_index, gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole - 5, 0x2818);
        break;
    }
}


void func_801AA3A4_782D04(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].graphicIndex = GINDEX_SPIRAL;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -0x200;
    gActors[actor_index].colorR = 0x80;
    gActors[actor_index].scaleX = 8.0f;
    gActors[actor_index].rotateX = 45.0f;
}


void func_801AA440_782DA0(u16 actor_index) {
    gActors[actor_index].posZ.whole = gActors[actor_index].unk_114 + (gLookatEyeZ - 576.0f);
    gActors[actor_index].unk_114 += 2.0f;
    gActors[actor_index].rotateY += gActors[actor_index].var_110;
    gActors[actor_index].scaleX += 0.05;
    gActors[actor_index].var_110 += 0.03;
    gActors[actor_index].unk_12C = gActors[actor_index].scaleX;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].colorA++;
        gActors[actor_index].colorR--;
        if (gActors[actor_index].colorA >= 0x41) {
            gActors[actor_index].state = 1;
        }
    }
    else {
        gActors[actor_index].colorA--;
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].state = 0;
            gActors[actor_index].scaleX = 4.0f;
            gActors[actor_index].var_110 = -0.2f;
            gActors[actor_index].unk_114 = 0.0f;
            gActors[actor_index].colorR = 0x51;
        }
    }
}


void func_801AA590_782EF0(void) {
    func_801AA440_782DA0(0x81);
    func_801AA440_782DA0(0x82);
}


void func_801AA5B8_782F18(u16 actor_index) {
    func_80033E7C(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 0x10, gActors[actor_index].posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 5);
}


void func_801AA644_782FA4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = 0x7003;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -0x30;
        gLookatEyeZ = 128.0f;
        gActors[0x80].actorType = ACTORTYPE_GRAPHIC_29;
        Actor_Initialize(0x80U);
        gActors[0x80].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK8;
        gActors[0x80].graphicIndex = 0x1802;
        gActors[0x80].posX.whole = 8;
        gActors[0x80].posY.whole = -0x10;
        gActors[0x80].posZ.whole = -0x140;
        gActors[0x80].colorA = 0x20;
        gActors[0x80].scaleX = 1.8f;
        gActors[0x80].scaleY = 1.8f;
        Actor_SetColorRgb(0x80U, 0x50U);
        func_801AA3A4_782D04(0x81U);
        gActors[0x81].colorA = 0;
        gActors[0x81].colorG = 0x80;
        gActors[0x81].colorB = 0x80;
        func_801AA3A4_782D04(0x82U);
        gActors[0x82].colorA = 0x40;
        gActors[0x82].colorG = 0x96;
        gActors[0x82].colorB = 0x96;
        gActors[0x82].rotateY = 180.0f;
        Sound_PlaySfx(SFX_WIND_0031);
    case 0x1:
        gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, 0x180, 1);
        if (gLookatEyeZ == 384.0f) {
            gActors[actor_index].state += 1;
            gActors[actor_index].var_150 = 0x3C;
        }
        func_801AA590_782EF0();
        break;
    case 0x2:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            func_8005DF5C(0xC);
            func_8005DF40(0, 0x3C);
            D_800D5830 = -0x60;
            D_800D5834 = 0;
        }
        func_801AA590_782EF0();
        break;
    case 0x3:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].var_150 = 0x78;
        }
        func_801AA590_782EF0();
        break;
    case 0x4:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            func_801A866C_780FCC(8U);
        }
        func_801AA590_782EF0();
        break;
    case 0x5:
        gActors[actor_index].state++;
        Sound_StopSfx(SFX_WIND_0031);
        Sound_PlaySfx(SFX_00E1);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15;
        ACTOR_GFX_INIT(actor_index, D_800E149C);
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].var_150 = 0;
        gLookatEyeZ = 32.0f;
        gActors[0x80].flags = ACTOR_FLAG_NONE;
        func_801AA590_782EF0();
        break;
    case 0x6:
        gLookatEyeZ += 4.0f;
        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 == 0x46) {
            Sound_PlaySfx(SFX_0074);
            Sound_PlaySfx(SFX_003F);
            gActors[0x31].actorType = ACTORTYPE_OVL0_GEN_BOOMGFX;
            Actor_Initialize(0x31U);
            gActors[0x31].posX.whole = gActors[actor_index].posX.whole;
            gActors[0x31].posY.whole = gActors[actor_index].posY.whole + 0x10;
            gActors[0x31].posZ.whole = gActors[actor_index].posZ.whole + 8;
        }

        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state += 1;
        }

        func_801AA590_782EF0();
        break;
    case 0x7:
        gLookatEyeZ += 4.0f;
        if (gLookatEyeZ > 512.0f) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[0x31].flags = ACTOR_FLAG_NONE;
            gActors[0x81].flags = ACTOR_FLAG_NONE;
            gActors[0x82].flags = ACTOR_FLAG_NONE;
            func_801A866C_780FCC(0xCU);
            gActors[0x8F].state = 3;
            gActors[0x8F].var_158 = 0x20;
        }
        else {
            func_801AA590_782EF0();
        }
        break;
    case 0x10:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].posX.whole = -0x60;\
        gActors[actor_index].posY.whole = 0x10;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].var_150 = 0x28;
        gLookatEyeZ = 448.0f;
        gActors[0x10].actorType = ACTORTYPE_OVL2_LITH_MARINA;
        Actor_Initialize(0x10U);
        gActors[0x10].flags = ACTOR_FLAG_ACTIVE;
        break;
    case 0x11:
        gLookatEyeZ -= 3.5;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0x14) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            ACTOR_GFX_INIT(actor_index, D_801AC7EC_78514C);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(8);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            Sound_PlaySfx(SFX_THEO_YAY2);
            Sound_PlaySfx(SFX_002B);
        }
        break;
    case 0x12:
        gLookatEyeZ -= 3.5;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0xA) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 5;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            ACTOR_GFX_INIT(actor_index, D_801AC7B0_785110);
            Sound_PlaySfx(SFX_0036);
            gActors[0x10].var_160 += 1;
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].posY.whole < 0x10)) {
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 0x10;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_150 = 0x1E;
            gActors[actor_index].state += 1;
        }
        break;
    case 0x13:
        gActors[actor_index].var_150--;
        gLookatEyeZ -= 4.0;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            func_801A86D4_781034(4U);
            gActors[0x8F].colorA = 0x20;
            gActors[actor_index].var_150 = 0xF0;
            Sound_PlaySfx(SFX_BOOM_0026);
            Sound_StopSfx(SFX_THEO_YAY2);
        }
        break;
    case 0x14:
        gLookatEyeZ = Math_ApproachS32((s32)gLookatEyeZ, 0x20, 4);
        if (gActors[actor_index].var_150 == 0xDC) {
            Sound_PlaySfx(SFX_THEO_YELL);
        }
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state = 0x100;
        }
        break;
    case 0x100:
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = -0x10;
        gActors[actor_index].posY.whole = -0x3C;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        ACTOR_GFX_INIT(actor_index, D_801AC7D0_785130);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        func_801A866C_780FCC(1U);
        gLookatEyeZ = 448.0f;
        gDrawMidground = 1;
        gDrawEnvLayer = 1;
        gDrawBackground = 1;
        gActors[0x10].var_160 = 0x10;
    case 0x101:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state += 1;
            ACTOR_GFX_INIT(actor_index, D_801AC7E0_785140);
        }
        break;
    case 0x102:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            func_8005DF40(0, 0x30);
            func_8005DF5C(8);
            D_800D5830 = -0x68;
            D_800D5834 = -8;
        }
        break;
    case 0x103:
        if (gActiveFrames & 8) {
            gActors[actor_index].graphicIndex = 0x5009;
        }
        else {
            gActors[actor_index].graphicIndex = 0x5008;
        }

        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].var_150 = 0x21C;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[0x10].var_160 = 0x20;
        }

        func_801AA2E4_782C44(actor_index);
        break;
    case 0x104:
        func_801AA2E4_782C44(actor_index);
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x3F, 1);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0x1B8) {
            ACTOR_GFX_INIT(actor_index, D_801AC7D0_785130);
            Sound_PlaySfx(SFX_THEO_GOODBYE);
        }

        if (gActors[actor_index].var_150 == 0x17C) {
            Sound_PlaySfx(SFX_0094);
        }

        if (gActors[actor_index].var_150 < 0) {
            func_801AA2E4_782C44(actor_index);
            gActors[actor_index].state += 1;
            ACTOR_GFX_INIT(actor_index, D_801AC7EC_78514C);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            Sound_PlaySfx(SFX_0121);
            Sound_PlaySfx(SFX_THEO_GRUNT2);
            Actor_SetColorRgb(actor_index, 0U);
            gActors[0x10].var_160 = 0x30;
        }
        break;
    case 0x105:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.3125);
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].posY.whole < -0x2D)) {
            gActors[actor_index].state += 1;
            Sound_PlaySfx(SFX_LAND_0025);
            gActors[actor_index].posY.whole = -0x2D;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            ACTOR_GFX_INIT(actor_index, D_801AC80C_78516C);
            func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole - 4), (s16)(gActors[actor_index].posY.whole + 8), 0x2808U);
            gActors[actor_index].var_150 = 0x3C;
        }
        break;
    case 0x106:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            func_8005DF5C(9);
            D_800D5830 = -0x68;
            D_800D5834 = -8;
        }

        func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole - 4), (s16)(gActors[actor_index].posY.whole + 0xA), 0x2808U);
        break;
    case 0x107:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state += 1;
            gActors[actor_index].var_150 = 0x3C;
        }

        if (gActiveFrames & 0x10) {
            func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole + 1), (s16)(gActors[actor_index].posY.whole + 0xA), 0x2810U);
        }
        else {
            func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole + 1), (s16)(gActors[actor_index].posY.whole + 9), 0x2812U);
        }
        break;
    case 0x108:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state += 1;
            gActors[0x10].var_160 = 0x40;
        }

        func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole - 4), (s16)(gActors[actor_index].posY.whole + 0xA), 0x2808U);
        break;
    case 0x109:
        if (gActiveFrames & 0x10) {
            func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole + 1), (s16)(gActors[actor_index].posY.whole + 0xA), 0x2810U);
        }
        else {
            func_801AA240_782BA0(actor_index, (s16)(gActors[actor_index].posX.whole + 1), (s16)(gActors[actor_index].posY.whole + 0xA), 0x2812U);
        }
        break;
    case 0x110:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -0x20;
        gActors[actor_index].posZ.whole = 0x100;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(-13);
        gActors[actor_index].scaleX = 0.5f;
        gActors[actor_index].scaleY = 0.5f;
        gActorDepthBack = -0x400;
        gActors[actor_index].graphicTimer = 0;
        Sound_PlaySfx(SFX_THEO_HELP2);
    case 0x111:
        gActors[actor_index].rotateZ -= 20.0f;
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.0546875);
        if (gActors[actor_index].posZ.whole < -0x400) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].posZ.whole = 0;
            gActors[actor_index].var_150 = 0x78;
            Sound_PlaySfx(SFX_BLING);
            SpawnParticle_RingSparkle(actor_index, 0, 0.5f, 0, 0, 0);
        }
        break;
    case 0x112:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[0x30].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}


void func_801AB354_783CB4(u16 actor_index) {
    gActors[0x8E].posX.whole = Math_ApproachS32(gActors[0x8E].posX.whole, gActors[actor_index].posX.whole - 0x10, 2);
    gActors[0x8E].posY.whole = Math_ApproachS32(gActors[0x8E].posY.whole, gActors[actor_index].posY.whole + 0x20, 2);
}


void func_801AB3E0_783D40(u16 actor_index) {
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x3F, 1);
}


void func_801AB440_783DA0(u16 actor_index) {
    func_80033E7C(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 0x12, gActors[actor_index].posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 5);
}


void func_801AB4CC_783E2C(u16 actor_index) {
    gActors[actor_index].var_110 = 32768.0f;
    func_8008DF20(actor_index);

    if (gActors[actor_index].state == 0x10) {
        gActors[actor_index].state = 0x50;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags &= ~ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].var_160 = 0;
    }

    switch (gActors[actor_index].var_160) {
    case 0x0:
        gActors[actor_index].var_160++;
        gActors[actor_index].palette_18C = D_801AC824_785184;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].unk_118 = 1.0f;
    case 0x56:
    default:
        break;
    case 0x2:
        gActors[actor_index].var_160++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.75);
        gActors[actor_index].palette_18C = D_800D4518;
        gActors[actor_index].unk_118 = 1.0f;
        Sound_PlaySfx(SFX_MARINA_OW2);
    case 0x3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
        break;
    case 0x10:
        gActors[actor_index].var_160++;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].palette_18C = D_800D4350;
        gActors[actor_index].posX.whole = 0x120;
        gActors[actor_index].posY.whole = -0x40;
        gActors[actor_index].posZ.whole = 2;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_164 = 0;
        gActors[actor_index].unk_118 = 1.0f;
    case 0x11:
        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, FIXED_UNIT(16), FIXED_UNIT(1.5));
        if (gActors[actor_index].posX.whole == 0x10) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].palette_18C = D_800D5448;
            gActors[actor_index].unk_118 = 1.0f;
        }

        gActors[actor_index].unk_164 += 1;
        func_801AB440_783DA0(actor_index);
        if (!(gActors[actor_index].unk_164 & 0xF)) {
            Sound_PlaySfxAtActor2(SFX_STEP_0053, actor_index);
        }
        break;
    case 0x20:
        gActors[actor_index].var_160++;
        gActors[actor_index].var_150 = 0x1E0;
        gActiveFrames = 0;
    case 0x21:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            Sound_PlaySfx(SFX_BLING);
            func_800339BC(gActors[actor_index].posX.raw + FIXED_UNIT(-6), gActors[actor_index].posY.raw + FIXED_UNIT(0.75), gActors[actor_index].posZ.raw + 1, 0U);
        }

        if (((gActors[actor_index].var_150 < 0xB4) && (((s32)gActiveFrames % 15) == 0)) || ((gActors[actor_index].var_150 < 0x6E) && !(gActiveFrames & 7)) || ((gActors[actor_index].var_150 < 0x3C) && !(gActiveFrames & 1))) {
            func_800339BC(gActors[actor_index].posX.raw + FIXED_UNIT(-6), gActors[actor_index].posY.raw + FIXED_UNIT(1), gActors[actor_index].posZ.raw + 1, 1U);
        }
        break;
    case 0x30:
        gActors[actor_index].var_160++;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        gActors[actor_index].palette_18C = D_800D4424;
        gActors[actor_index].unk_164 = 0x14;
        gActors[actor_index].unk_118 = 1.0f;
        Sound_PlaySfx(SFX_MARINA_YELL1);
    case 0x31:
        gActors[actor_index].unk_164 -= 1;
        if (gActors[actor_index].unk_164 == 0) {
            Sound_StopSfx(SFX_MARINA_YAY);
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].posY.whole < -0x40)) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = -0x40;
            gActors[actor_index].palette_18C = D_800D4EA8;
            gActors[actor_index].unk_118 = 1.0f;
            Sound_PlaySfx(SFX_LAND_0025);
        }

        func_801AB440_783DA0(actor_index);
        break;
    case 0x40:
        gActors[actor_index].var_160++;
        gActors[actor_index].palette_18C = D_801AC840_7851A0;
        gActors[actor_index].unk_118 = 1.0f;
    case 0x41:
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].unk_164 = 0;
            gActors[actor_index].palette_18C = D_800D5348;
            gActors[actor_index].unk_118 = 1.0f;
        }
        func_801AB440_783DA0(actor_index);
        func_801AB3E0_783D40(actor_index);
        break;
    case 0x42:
        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, 0, FIXED_UNIT(1.25));
        if (gActors[actor_index].posX.whole == 0) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].palette_18C = D_800D4B94;
            gActors[actor_index].unk_118 = 1.0f;
            func_8005DF5C(0xA);
            D_800D5830 = 0x68;
            D_800D5834 = -8;
        }

        gActors[actor_index].unk_164 += 1;
        if (!(gActors[actor_index].unk_164 & 0xF)) {
            Sound_PlaySfxAtActor2(SFX_STEP_0053, actor_index);
        }

        func_801AB440_783DA0(actor_index);
        func_801AB3E0_783D40(actor_index);
        break;
    case 0x43:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].var_160 = 0x50;
        }

        func_801AB440_783DA0(actor_index);
        func_801AB3E0_783D40(actor_index);
        break;
    case 0x50:
        gActors[actor_index].var_160++;
        gActors[actor_index].palette_18C = D_800D4C30;
        gActors[actor_index].unk_118 = 1.0f;
        Sound_PlaySfx(SFX_MARINA_YELL1);
        gActors[0x8E].state += 1;
        gActors[0x8E].flags |= ACTOR_FLAG_FLIPPED;
        ACTOR_GFX_INIT(0x8E, D_801AC814_785174);
    case 0x51:
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].palette_18C = D_800D4F6C;
            gActors[actor_index].unk_118 = 1.0f;
            func_8005DF5C(0xB);
            D_800D5830 = -0x68;
            D_800D5834 = -8;
            Sound_PlaySfx(SFX_GRAB_002F);
            Sound_PlaySfx(SFX_THEO_GRUNT2);
        }

        func_801AB354_783CB4(actor_index);
        func_801AB3E0_783D40(actor_index);
        break;
    case 0x52:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].palette_18C = D_800D4884;
            gActors[actor_index].unk_118 = 1.0f;
            Sound_PlaySfx(SFX_MARINA_YELL4);
            gActors[actor_index].var_150 = 0x1C;
            gActors[0x8E].velocityY.raw = FIXED_UNIT(2);
        }

        func_801AA5B8_782F18(0x8EU);
        func_801AB354_783CB4(actor_index);
        if (gActiveFrames & 8) {
            gActors[0x8E].posY.whole -= 2;
        }
        break;
    case 0x53:
        gActors[0x8E].velocityY.raw -= FIXED_UNIT(0.171875);
        gActors[actor_index].var_150 -= 1;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].var_160 += 1;
            Sound_PlaySfx(SFX_THEO_HELP1);
            Sound_PlaySfx(SFX_SWISH_0098);
            ACTOR_GFX_INIT(0x8E, D_801AC7EC_78514C);
            gActors[0x8E].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].var_150 = 0x64;
            Sound_PlayMusic(0x1F);
        }

        func_801AA5B8_782F18(0x8EU);
        break;
    case 0x54:
        gScreenPosTargetY.raw += FIXED_UNIT(0.25);
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        gActors[actor_index].posY.raw -= FIXED_UNIT(0.25);
        gActors[0x8E].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[0x8E].rotateZ -= 25.0f;

        gActors[actor_index].var_150 -= 1;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].var_160 += 1;
            gActors[actor_index].palette_18C = D_800D50BC;
            gActors[actor_index].unk_118 = 1.0f;
            SpawnTextBubble(actor_index, D_801ABE9C_7847FC, 0, 0x20, 0x32);
            D_801376BC[0] = 0;
            gEnvColorsAlpha[0] = 0xFF;
            gEnvColorsRed[0] = 0;
            gEnvColorsGreen[0] = 0;
            gEnvColorsBlue[0] = 0;
            D_801376BC[1] = 0;
            gEnvColorsAlpha[1] = 0xFF;
            gEnvColorsRed[1] = 0;
            gEnvColorsGreen[1] = 0;
            gEnvColorsBlue[1] = 0;
        }

        func_801AA5B8_782F18(0x8EU);
        break;
    case 0x55:
        gScreenPosTargetY.raw += FIXED_UNIT(0.25);
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        gActors[actor_index].posY.raw -= FIXED_UNIT(0.25);
        gEnvColorsAlpha[0] = Math_ApproachS32((s32)gEnvColorsAlpha[0], 0, 4);
        gEnvColorsAlpha[1] = Math_ApproachS32((s32)gEnvColorsAlpha[1], 0xC0, 2);
        gActors[actor_index].colorA = gEnvColorsAlpha[0];
        if (!gActors[actor_index].colorA) {
            gActors[actor_index].state += 1;
            gActors[0x8E].state = 0x110U;
        }
        break;
    }
}



