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

extern s16 D_800EF4D4;
extern s16 gMusicVolume;
extern u16 gSfxPlayerVolumes[];
extern u8 gSfxPlayerFlags[];
extern u16 gSfxSequenceIds[];

s32 func_80003430(u32, s16, s8);
s32 func_80003474(u32, s16, s8);
s32 func_800036C8(u32 arg0, u16 actor_index);

#endif
