#ifndef COMMON_STRUCTS_H
#define COMMON_STRUCTS_H

// game uses Q16.16 fixed-point numbers for position and velocity values.
typedef union {
    /* 0x00 */ s32 raw;
    struct {
    /* 0x00 */ s16 whole;
    /* 0x02 */ u16 frac;
    };
} FixedCoord;

typedef struct {
    /* 0x0000 */ u8 unk_000[0x180];
    /* 0x0180 */ Gfx dlist[3072];
} GfxData; /* sizeof = 0x6180 */

// struct storing data about Marina player actor
typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s8 unk_0A;
    /* 0x0B */ s8 unk_0B;
    /* 0x0C */ s16 unk_0C; //stores posZ.whole value of some actors.
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ s8 unk_10;
    /* 0x11 */ s8 unk_11;
    /* 0x12 */ s8 unk_12;
    /* 0x13 */ s8 unk_13;
    /* 0x14 */ u8 unk_14[0xC]; // unused?
    /* 0x20 */ s32 unk_20; // stores a button input?
    /* 0x24 */ s32 unk_24; // stores a button input?
    /* 0x28 */ u8 unk_28[0x18]; // unused?
    /* 0x40 */ s16 unk_40;
    /* 0x42 */ s8 unk_42;
    /* 0x43 */ s8 unk_43;
    /* 0x44 */ s32 fallWhistle; // boolean(?) used while playing the "fall Whistle" sound in "Freefall!"
    /* 0x48 */ u8 unk_48[8]; // unused?
    /* 0x50 */ u32 debugPosX; // set during Marina's "flymode" state with her global X position.
    /* 0x54 */ u32 debugPosY; // set during Marina's "flymode" state with her global Y position.
    /* 0x58 */ u32 unk_58; // another dislayed Debug value? unused.
    /* 0x5C */ u32 unk_5C; // another dislayed Debug value? unused.
    /* 0x60 */ u32 unk_60; 
    /* 0x64 */ u32 marina_Flags_098; // stores Marina's "flags_098" value
    /* 0x68 */ s32 marina_Unk_0F8; // stores Marina's "unk_0F8" value when ACTOR_FLAG3_UNK1 is set.
    /* 0x6C */ u32 marina_Unk_0FC; // stores Marina's "unk_0FC" value when ACTOR_FLAG3_UNK1 is set.
    /* 0x70 */ u16 unk_70; // index of "held" actor?
    /* 0x72 */ u8 unk_72[6]; // unused?
    /* 0x78 */ u32 unk_78; // bitfield. 0x8 allows marina actor to update.
    /* 0x7C */ u32 unk_7C;
} UnkStruct_D_801373E0;

// data for setting actors in a stage (may actually be u16[] - often ending with a 0xff00.)
typedef struct {
    /* 0x00 */ u16 flags; 
    /* 0x02 */ u16 index; // index of actor to set
    /* 0x04 */ u16 posX;  // x-position of actor in stage
    /* 0x06 */ u16 posY;  // y-position of actor in stage
    /* 0x08 */ u16 timer_110; // value of actor->timer_110
    /* 0x0A */ u16 unk_0D8; // value of actor->unk_0D8
    /* 0x0C */ u16 type; // value of actor->actorType
} ActorSpawnRecord; /* size = 0xE */


#define FIXED_UNIT(value) ((s32)((value) * 0x10000))

#endif
