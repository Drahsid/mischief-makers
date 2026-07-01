#ifndef COMMON_STRUCTS_H
#define COMMON_STRUCTS_H

// game uses Q16.16 fixed-point numbers for position and velocity values.
typedef union {
    /* 0x00 */ s32 raw;
    struct {
    /* 0x00 */ s16 whole;
    /* 0x02 */ s16 frac;
    };
} FixedCoord;

typedef struct {
    /* 0x0000 */ u8 unk_000[0x180];
    /* 0x0180 */ Gfx dlist[3072];
} GfxData; /* sizeof = 0x6180 */

// portraits seem to use the same graphic flags as actors with this one exception.
#define PORTRAIT_GFLAG_UNK1 ACTOR_GFLAG_ROTX

// used for the portrait transition effect, lifebar, and lifebar head.
typedef struct {
    /* 0x00 */ Mtx translateMtxs[2];
    /* 0x80 */ u16 flags; // uses ActorGFlags
    /* 0x82 */ u16 graphicIndex;
    /* 0x84 */ FixedCoord posX;
    /* 0x88 */ FixedCoord posY;
    /* 0x8C */ f32 scaleX;
    /* 0x90 */ f32 scaleY;
    /* 0x94 */ u8 alpha;
    /* 0x95 */ u8 align[3];
    /* 0x98 */ u16* palette; // used if ACTOR_GFLAG_PALETTE is set
    /* 0x9C */ u32 unk_9C; // unused
} PortraitStruct; /* sizeof = 0xA0 */

#define gLifebar gPortraits[0x40] // lifebar uses PortraitStruct
#define gLifebarHead gPortraits[0x41] // head at edge of lifebar uses PortraitStruct

// data on "static" objects (clanblocks, gems)
typedef struct {
    /* 0x00 */ Mtx translateMtxs[2];
    /* 0x80 */ u16 graphicIndex; // does NOT use GINDEX_*
    /* 0x82 */ u16 align;
    /* 0x84 */ FixedCoord posX;
    /* 0x88 */ FixedCoord posY;
    /* 0x8C */ u16* palette;
} UnkStruct_801069E0; /* sizeof = 0x90 */

// struct storing data about Marina player actor
typedef struct {
    /* 0x00 */ FixedCoord unk_00[2]; // used for storing and modding some actors' x-and-y positions.
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

    // the following 4 values are displayed through the debug OSD when non-zero.

    /* 0x50 */ u32 debugPosX; // set during Marina's "flymode" state with her global X position.
    /* 0x54 */ u32 debugPosY; // set during Marina's "flymode" state with her global Y position.
    /* 0x58 */ u32 debugVal2; // another dislayed Debug value? unused.
    /* 0x5C */ u32 debugVal3; // another dislayed Debug value? unused.
    /* 0x60 */ u32 unk_60; 
    /* 0x64 */ u32 marina_Flags_098; // stores Marina's "flags_098" value
    /* 0x68 */ s32 marina_Unk_0F8; // stores Marina's "unk_0F8" value when ACTOR_FLAG3_UNK1 is set.
    /* 0x6C */ u32 marina_Unk_0FC; // stores Marina's "unk_0FC" value when ACTOR_FLAG3_UNK1 is set.
    /* 0x70 */ u16 unk_70; // index of "held" actor?
    /* 0x72 */ u8 unk_72[6]; // unused?
    /* 0x78 */ u32 unk_78; // bitfield. 0x8 allows marina actor to update.
    /* 0x7C */ u32 unk_7C;
} UnkStruct_D_801373E0;

// D_800BE5F4 is treated as both word and 4 bytes.
typedef union {
    u32 unk_00_u32;
    s32 unk_00_s32; // sometimes only matches as signed word.
    struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02;
        u8 unk_03;
    };
} UnkStruct_D_800BE5F4;

#define SPAWNRECORD_END 0xff00 // u16[] actor spawn tables end with 0xFF00

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
#define FROM_FIXED(value) ((value) / FIXED_UNIT(1.0))

#endif
