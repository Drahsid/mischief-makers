#ifndef MUSIC_H
#define MUSIC_H

#include <PR/ultratypes.h>
#include <ultra64.h>
#include "BGM.h"
#include "SFX.h"

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

// in globals .bss

extern u8 gMusicPlayerFlags;
extern s16 gMusicVolume;
extern s16 D_800EF4D4;
extern s32 gMusicSequenceId;
extern s32 D_800EF4DC; // unused.
extern u8 gMusicChannelFxMixes[16];
extern u8 gSfxPlayerFlags[4];
extern s16 gSfxPlayerVolumes[4];
extern s8 gSfxPanOverrides[];
extern u16 gSfxSequenceIds[4];
extern u16 gSfxActorIndices[4];
extern u16 gSfxStopTimers[4];
extern u8 gSfxChannelVolumes[8];
extern u8 gSfxChannelPans[8];



void Sound_DmaReadSync(u32 rom_addr, void* vram_addr, u32 length);
void Sound_LoadSequence(u32 sequence_id, void* sequence_buffer);

void Sound_ActorPanVol(u8 arg0);
void func_80003D64(u8 arg0);
void Sound_StopMusic(void);
void Sound_StopAllSfx(void);
void func_800040A0(void);

void Sound_PlayMusic(u32 sequence_id);
s32 Sound_AddSfx(u32 arg0, s16 arg1, s8 arg2, u8 arg3, u16 arg4, u16 arg5);
s32 Sound_StopSfx(u32 arg0);
s32 Sound_PlaySfx(u32 sound_id);
s32 Sound_PlaySfx2(u32 sound_id);
s32 Sound_PlaySfxAtVol(u32 sfx_id, s16 volume);
s32 Sound_PlaySfxAtPan(u32 sfx_id, s8 pan);
s32 Sound_PlaySfxAtVolPan(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtVolPan2(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtVolPan3(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtVolPan4(u32 sfx_id, s16 volume, s8 pan);
s32 Sound_PlaySfxAtActor(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfxAtActor2(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfxAtActor3(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfxAtObject(u32 sfx_id, u16 index);
s32 Sound_PlaySfxAtActorTimed(u32 sfx_id, u16 actor_index, u16 timer);
void Sound_PlaySfxAtActorPanning(u32 sfx_id, u16 actor_index);
s32 Sound_PlaySfx3(u32 sfx_id, s32 volume, s32 pan);
void Sound_StopMusic(void);
void Sound_StopAllSfx(void);
void Sound_ActorPanVol(u8 arg0);
extern void Sound_InitPlayers(void);
extern void Sound_SetEventMesg(void);
extern void Sound_Update(void);
extern void Sound_NextBuffer(void);
extern void Sound_StartTask(void);
extern void Sound_StartFade(u16 mode, u16 duration);


#endif
