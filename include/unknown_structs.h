#ifndef UNKNOWN_STRUCTS
#define UNKNOWN_STRUCTS

#include "inttypes.h"

typedef struct {
    uint8_t unk_0x000[0xBC6];
    uint8_t unk_0xBC6;
    uint8_t unk_0xBC7;
} struct_func_800188CC_gActors; //struct used in sound test

typedef struct {
    uint8_t unk_0x00[0x2880];
    uint16_t unk_0x2880;
    uint16_t unk_0x2882;
    uint8_t unk_0x2884[0x9C];
    uint16_t unk_0x2920;
    uint16_t unk_0x2922;
} struct_func_80021270_D_80104098;

typedef struct {
    uint8_t unk_0x00[0x80];
    uint16_t unk_0x80;
    uint8_t unk_0x82[0xA];
    uint8_t* unk_0x8C;
} struct_func_80044360_D_801069E0; /* sizeof 0x90 */

typedef struct {
    /* 0x00 */ uint8_t unk_0x00[0x12];
    /* 0x12 */ uint8_t unk_0x12;
    /* 0x13 */ uint8_t unk_0x13;
    /* 0x14 */ uint8_t unk_0x14[0x30];
    /* 0x44 */ uint32_t unk_0x44;
    /* 0x48 */ uint32_t unk_0x48;
    /* 0x4C */ uint32_t unk_0x4C;
    /* 0x50 */ uint32_t unk_0x50;
    /* 0x54 */ uint32_t unk_0x54;
    /* 0x58 */ uint32_t unk_0x58;
    /* 0x5C */ uint32_t unk_0x5C;
    /* 0x60 */ uint32_t unk_0x60;
    /* 0x64 */ uint32_t unk_0x64;
    /* 0x68 */ uint32_t unk_0x68;
    /* 0x6C */ uint32_t unk_0x6C;
    /* 0x70 */ int16_t unk_0x70;
    /* 0x72 */ int16_t unk_0x72;
    /* 0x74 */ uint32_t unk_0x74;
    /* 0x78 */ uint32_t unk_0x78;
    /* 0x7C */ uint32_t unk_0x7C;
} struct_D_801373E0; /* sizeof = unk */

#endif
