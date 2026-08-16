#ifndef MUSIC_H
#define MUSIC_H

#include <PR/ultratypes.h>
#include <ultra64.h>
#include "BGM.h"
#include "SFX.h"

#define AUDIO_CHANNEL_COUNT 16
#define SFX_PRIMARY_BANK_INSTRUMENT_BASE   0x000
#define SFX_SECONDARY_BANK_INSTRUMENT_BASE 0x080
#define SFX_TERTIARY_BANK_INSTRUMENT_BASE  0x100


typedef enum {
    SFX_BANK_NONE,
    SFX_BANK_PRIMARY,
    SFX_BANK_SECONDARY,
    SFX_BANK_TERTIARY
} SfxBankId;


typedef struct {
    /* 0x00 */ u8 volume;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 channelFxMixes[AUDIO_CHANNEL_COUNT];
} MusicSequenceParams; /* sizeof = 0x12 */

typedef struct {
    /* 0x00 */ u8 volume;
    /* 0x01 */ u8 priority;
} SfxPlaybackParams; /* sizeof = 0x02 */

typedef struct {
    /* 0x00 */ s16 counts[3];
    /* 0x06 */ u16 unk_06[11];
} AudioBufferSampleCounts; /* sizeof = 0x1C */

typedef struct {
    /* 0x00 */ s32 input;
    /* 0x04 */ s32 output;
    /* 0x08 */ s32 feedback;
    /* 0x0C */ s32 feedforward;
    /* 0x10 */ s32 gain;
    /* 0x14 */ s32 chorusRate;
    /* 0x18 */ s32 chorusDepth;
    /* 0x1C */ s32 filterCoefficient;
} AudioCustomFxSection; /* sizeof = 0x20 */

typedef struct {
    /* 0x00 */ s32 sectionCount;
    /* 0x04 */ s32 totalDelayLength;
    /* 0x08 */ AudioCustomFxSection sections[5];
} AudioCustomFxParams; /* sizeof = 0xA8 */


extern u8* gMusicSequenceSamplePatchLists[];
extern MusicSequenceParams gMusicSequenceParams[];
extern u8 gSfxBankIds[];
extern u16 gSfxSoundIds[];
extern u16 D_800C2B74[];
extern u16 gSfxSequenceSoundOffsets[];
extern u8 gSfxSampleParams[];
extern s32 gAudioSamplesLeft;
extern s32 gAudioNextDma;
extern s32 gAudioListIndex;
extern s32 gAudioBufferCounter;
extern AudioBufferSampleCounts gAudioBufferSampleCounts;
extern AudioCustomFxParams gAudioCustomFxParams;

// in globals .bss

extern u8 gMusicPlayerFlags;
extern s16 gMusicVolume;
extern s16 gPauseMusicVolume;
extern s32 gMusicSequenceId;
extern u8 gMusicChannelFxMixes[16];
extern u8 gSfxPlayerFlags[4];
extern s16 gSfxPlayerVolumes[4];
extern u16 gSfxSequenceIds[4];
extern s8 gSfxPanOverrides[4];
extern u16 gSfxActorIndices[4];
extern u16 gSfxStopTimers[4];
extern u8 gSfxChannelVolumes[8];
extern u8 gSfxChannelPans[8];
extern u32 gAudioUpdateCounter;

void Sound_InitPlayers(void);
void Sound_SetEventMesg(void);
void Sound_Update(void);
void Sound_NextBuffer(void);
void Sound_StartTask(void);
void Sound_PlayMusic(s32 sequence_id);
s32 Sound_StopSfx(u32 sfx_id);
s32 Sound_PlaySfx(u32 sound_id);
s32 Sound_PlaySfx2(u32 sound_id);
s32 Sound_PlaySfxAtVol(u32 sfx_id, s16 volume);
s32 Sound_PlaySfxAtPan(u32 sfx_id, s8 pan);
s32 Sound_PlaySfxAtVolPan(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtVolPan2(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtActor2(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfxAtActor3(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfxAtObject(u32 sfx_id, u16 index);
s32 Sound_PlaySfxAtActorTimed(u32 sfx_id, u16 actor_index, u16 timer);
void Sound_PlaySfxAtActorPanning(u32 sfx_id, u16 actor_index);
void Sound_StopMusic(void);
void Sound_StopAllSfx(void);
void Sound_StartFade(u16 mode, u16 duration);

#endif
