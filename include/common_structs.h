#ifndef COMMON_STRUCTS_H
#define COMMON_STRUCTS_H

typedef struct {
    /* 0x0000 */ u8 unk_000[0x180];
    /* 0x0180 */ Gfx dlist[3072];
} GfxData; /* sizeof = 0x6180 */

typedef struct {
    /* 0x00 */ u8 unk_00[0x3];
    /* 0x04 */ u8 unk_04[0x1C];
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ u8 unk_28[0x50];
    /* 0x78 */ u32 unk_78;
} UnkStruct_D_801373E0;

typedef struct {
    /* 0x00 */ u16 flags;
    /* 0x02 */ u8 unk_02[0xC];
} ActorSpawnRecord; /* size = 0xE */

#endif
