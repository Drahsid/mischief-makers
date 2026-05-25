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

// data for setting actors in a stage (may actually be u16[] - often ending with a 0xff00.)
typedef struct {
    /* 0x00 */ u16 flags; // value for actor->flags
    /* 0x02 */ u16 index; // index of actor to set
    /* 0x04 */ u16 posX;  // x-position of actor in stage
    /* 0x06 */ u16 posY;  // y-position of actor in stage
    /* 0x08 */ u16 timer_110; // value of actor->timer_110
    /* 0x0A */ u16 unk_0D8; // value of actor->unk_0D8
    /* 0x0C */ u16 type; // value of actor->actorType
} ActorSpawnRecord; /* size = 0xE */


typedef union {
    /* 0x00 */ s32 raw;
    struct {
    /* 0x00 */ s16 whole;
    /* 0x00 */ u16 frac;
    };
} FixedCoord;

#define FIXED_UNIT(value) ((s32)((value) * 0x10000))

#endif
