#ifndef UNKNOWN_STRUCTS
#define UNKNOWN_STRUCTS

#include "inttypes.h"
#include <ultra64.h>

typedef struct {
    /* 0x00 */ Mtx Mtxs[2]; //one for each FB
    /* 0x80 */ uint16_t unk_0x80;
    /* 0x82 */ uint16_t unk_0x82;
    /* 0x84 */ int16_t unk_0x84;
    /* 0x86 */ int16_t unk_0x86; //align?
    /* 0x88 */ int16_t unk_0x88; 
    /* 0x8A */ int16_t unk_0x8A; //align? these 2 may be unions.
    /* 0x8C */ float unk_0x8C;
    /* 0x90 */ float unk_0x90;
    /* 0x94 */ int8_t unk_0x94;
    /* 0x95 */ int8_t unk_0x95[3]; //this is Definitely align.
    /* 0x98 */ void* unk_0x98;
    /* 0x9C */ int32_t unk_0x9C; //unused?
} struct_D_80104098;/* sizeof 0xA0 */

typedef struct {
    /* 0x00 */ Mtx Mtxs[2]; //one for each FB
    /* 0x80 */ uint16_t unk_0x80;
    /* 0x82 */ uint16_t unk_0x82; //may be align
    /* 0x84 */ Vec2i_union pos;
    /* 0x8C */ void* texture;
} struct_D_801069E0; /* sizeof 0x90 */

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

// Dunno what to call this, contains a dlist and the 0x180 byte preamble
typedef struct {
    /* 0x0000 */ uint8_t unk_0x00[0x180];
    /* 0x0180 */ Gfx dlist[3072];
} Gfx_Data; /* sizeof = 0x6180 */


#endif
