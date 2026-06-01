#ifndef MUSIC_H
#define MUSIC_H

#include "common.h"

#define AUDIO_CHANNEL_COUNT 16

typedef struct {
    /* 0x00 */ u8 volume;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 channelFxMixes[AUDIO_CHANNEL_COUNT];
} MusicSequenceParams; /* size = 0x12 */

typedef struct {
    /* 0x000 */ u16 soundIds[293];
    /* 0x24A */ u8 unk_2926;
    /* 0x24B */ u8 unk_2927[0x41];
    /* 0x28C */ u8 unk_2968[0x20C];
} SfxSoundTables; /* size = 0x498 */

typedef struct {
    /* 0x00 */ s16 counts[3];
    /* 0x06 */ u16 unk_3842[11];
} AudioBufferSampleCounts; /* size = 0x1C */

typedef struct {
    /* 0x00 */ u8 unk_000[0x80];
    /* 0x80 */ s16 unk_080;
    /* 0x82 */ u8 unk_082[0x2];
    /* 0x84 */ s16 unk_084;
    /* 0x86 */ u8 unk_086[0x2];
    /* 0x88 */ s16 unk_088;
    /* 0x8A */ u8 unk_08A[0x2];
    /* 0x8C */ s32 unk_08C;
} UnkStruct_801069E0; /* size = 0x90 */

extern s16 D_800EF4D4;
extern s16 gMusicVolume;
extern s16 gSfxPlayerVolumes[];
extern u8 gSfxPlayerFlags[];
extern u16 gSfxSequenceIds[];
extern UnkStruct_801069E0 D_801069E0[];

s32 func_800032C4(u32);
s32 func_80003430(u32, s16, s8);
s32 func_80003474(u32, s16, s8);
s32 func_800036C8(u32 arg0, u16 actor_index);
s32 func_80003778(u32 arg0, u16 actor_index);
s32 func_80003828(u32 arg0, u16 actor_index);

#endif
