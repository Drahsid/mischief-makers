#include "common.h"
#include "actor.h"
#include "music.h"
#include "globalData.h"
#include "linker.h"

#define AUDIO_DMA_QUEUE_SIZE              0x30
#define AUDIO_DMA_BUFFER_COUNT            64
#define AUDIO_DMA_BUFFER_SIZE             0x270
#define AUDIO_DMA_BUFFER_RETENTION_FRAMES 2
#define AUDIO_HEAP_SIZE                   0x35C00
#define AUDIO_COMMAND_LIST_SIZE           0x3800
#define AUDIO_TASK_LIST_SIZE              0x40
#define AUDIO_BUFFER_SIZE                 0xA00
#define AUDIO_SEQ_BUFFER_SIZE             0x3400
#define AUDIO_PLAYER_SEQ_BUFFER_SIZE      0x500
#define AUDIO_OUTPUT_RATE                 0x5622
#define AUDIO_PLAYER_COUNT                4
#define AUDIO_SYN_VOICE_COUNT             0x14
#define AUDIO_SYN_UPDATE_COUNT            0x90
#define AUDIO_SEQ_VOICE_COUNT             0x1E
#define AUDIO_SEQ_EVENT_COUNT             0x40
#define AUDIO_SEQ_CHANNEL_COUNT           0x14
#define AUDIO_FRAME_SAMPLE_PADDING        0x60
#define AUDIO_SAMPLE_ENV_SCALE            10000
#define MUSIC_SEQUENCE_PATCH_MUTE_RUN     0xFF

#define SFX_SAMPLE_PARAM_SIZE             8
#define SFX_SAMPLE_PARAM_VOLUME           0
#define SFX_SAMPLE_PARAM_PAN              1
#define SFX_SAMPLE_PARAM_KEY_BASE         2
#define SFX_SAMPLE_PARAM_ATTACK_TIME      3
#define SFX_SAMPLE_PARAM_ATTACK_VOLUME    4
#define SFX_SAMPLE_PARAM_DECAY_TIME       5
#define SFX_SAMPLE_PARAM_DECAY_VOLUME     6
#define SFX_SAMPLE_PARAM_RELEASE_TIME     7

#define SFX_SOUND_IDS gSfxSoundIds.soundIds
#define AUDIO_BUFFER_SAMPLE_COUNTS gAudioBufferSampleCounts.counts

// Matches the ordered sequence DMA cache from the SDK PLAYSEQ demo.
typedef struct {
    /* 0x00 */ ALLink node;
    /* 0x08 */ s32 startAddr;
    /* 0x0C */ u32 lastFrame;
    /* 0x10 */ u8* ptr;
} DMABuffer; /* size = 0x14 */

// Matches the ordered sequence DMA cache from the SDK PLAYSEQ demo.
typedef struct {
    /* 0x00 */ u8 initialized;
    /* 0x04 */ DMABuffer* firstUsed;
    /* 0x08 */ DMABuffer* firstFree;
} DMAState; /* size = 0x0C */


extern u8 D_800EF4D0; // folded addr required for fakematching
extern u16 gAudioFadeMode;
extern u32 gAudioUpdateCounter;
extern u8 gAudioHeapBuffer[];

extern u8 gAudioInitialized;
extern u32 gAudioFrameCounter;
extern u16 gAudioFadeDuration;
extern u16 gAudioFadeCounter;
extern s16 gMusicFadeVolume;
extern s16 gSfxFadeVolumes[];

extern u8 D_800C2927[];
extern u8 D_800C2968[];
extern s16 D_800EF4D4;
extern s32 D_80137794;

extern MusicSequenceParams gMusicSequenceParams[];
extern u8* gMusicSequenceSamplePatchLists[];
extern SfxSoundTables gSfxSoundIds;
extern u8 gSfxBankIds[];
extern u8 gSfxSampleParams[];
extern u16 D_800C2B74[];
extern u16 D_800C2BB4[];
extern s32 gAudioSamplesLeft;
extern s32 gAudioNextDma;
extern s32 gAudioListIndex;
extern s32 gAudioBufferCounter;
extern AudioBufferSampleCounts gAudioBufferSampleCounts;
extern s32 gAudioCustomFxParams[];

extern OSMesgQueue gAudioDmaMessageQueue;
extern OSMesgQueue gAudioTaskMessageQueue;
extern OSMesgQueue gAudioSeqDmaMessageQueue;
extern OSMesg gAudioDmaMessageBuf[];
extern OSMesg gAudioTaskMessage;
extern OSMesg gAudioSeqDmaMessage;
extern OSIoMesg gAudioDmaIoMesg;
extern OSIoMesg gAudioDmaIoMesgBuf[];
extern OSIoMesg gAudioSeqDmaIoMesg;
extern OSTask* gAudioTask;
extern OSTask* gAudioTaskLists[];
extern Acmd* gAudioCommandLists[];
extern Acmd* gAudioCmdListPtr;
extern s32 gAudioCmdCount;
extern ALHeap gAudioHeap;
extern s32* gAudioBuffers[];
extern ALGlobals gAudioGlobals;
extern ALSynConfig gAudioSynthConfig;
extern ALBankFile* gAudioBankFile;
extern ALSeqpConfig gSeqPlayerConfig;
extern ALBank* gMusicBank;
extern ALBank* gAudioBank1;
extern ALBank* gAudioBank2;
extern ALBank* gAudioBank3;
extern ALSeqFile* gSeqFile;
extern ALCSPlayer* gMainSeqPlayer;
extern ALCSPlayer gMainSeqPlayerStorage;
extern ALCSPlayer gSfxSeqPlayerStorage[];
extern ALCSPlayer* gSfxSeqPlayers[];
extern ALCSeq gMainSequenceStorage;
extern ALCSeq* gMainSequence;
extern ALCSeq gSfxSequenceStorage[];
extern ALCSeq* gSfxSequences[];
extern void* gMainSeqBuffer;
extern void* gSfxSeqBuffers[];
extern ALInstrument* gSfxInstrument;
extern ALSound* gSfxSound;
extern ALEnvelope* gSfxEnvelope;
extern ALKeyMap* gSfxKeyMap;

extern DMAState gAudioDmaState;
extern DMABuffer gAudioDmaBuffers[];
extern s32 gAudioDmaLength;
extern s32 gAudioBufferIndex;
extern f32 gAudioFrameSizeFloat;
extern s32 gAudioFrameSize;
extern s32 gAudioMinFrameSize;
extern s16* gAudioOutputBufferPhysical;

extern void __assert(const char* expression, const char* file, s32 line);

// rodata
const char D_800EAC30[] = "SVOICE1L";
const char D_800EAC3C[] = "SVOICE1M";
const char D_800EAC48[] = "SVOICE1H";
const char D_800EAC54[] = "SLAPBASS";
const char D_800EAC60[] = "FX1";
const char D_800EAC64[] = "STL";
const char D_800EAC68[] = "STM";
const char D_800EAC6C[] = "STH";
const char D_800EAC70[] = "STHM";
const char D_800EAC78[] = "STSH";
const char D_800EAC80[] = "SVOICE2M";
const char D_800EAC8C[] = "SVOICE2H";
const char D_800EAC98[] = "SVOICE2SH";
const char D_800EACA4[] = "SBRASSL";
const char D_800EACAC[] = "SBRASSM";
const char D_800EACB4[] = "SBRASSH";
const char D_800EACBC[] = "FVOICEL";
const char D_800EACC4[] = "FVOICEM";
const char D_800EACCC[] = "FVOICEH";
const char D_800EACD4[] = "BELLM";
const char D_800EACDC[] = "BELLH";
const char D_800EACE4[] = "HITL";
const char D_800EACEC[] = "HITM";
const char D_800EACF4[] = "HITH";
const char D_800EACFC[] = "CHORUS1";
const char D_800EAD04[] = "CHORUS2";
const char D_800EAD0C[] = "CHORUS2H";
const char D_800EAD18[] = "PIZZL";
const char D_800EAD20[] = "PIZZM";
const char D_800EAD28[] = "PIZZH";
const char D_800EAD30[] = "TIMPL";
const char D_800EAD38[] = "TIMPH";
const char D_800EAD40[] = "DOORSLAM";
const char D_800EAD4C[] = "VOX.SE1";
const char D_800EAD54[] = "VOX1";
const char D_800EAD5C[] = "LOOP1";
const char D_800EAD64[] = "DGL";
const char D_800EAD68[] = "DGTM";
const char D_800EAD70[] = "SD1";
const char D_800EAD74[] = "LOOP2";
const char D_800EAD7C[] = "SINE";
const char D_800EAD84[] = "CLAPSD";
const char D_800EAD8C[] = "HCLAP";
const char D_800EAD94[] = "RS";
const char D_800EAD98[] = "GTR";
const char D_800EAD9C[] = "EMA";
const char D_800EADA0[] = "WIN";
const char D_800EADA4[] = "DYNA";
const char D_800EADAC[] = "HARPL";
const char D_800EADB4[] = "HARPM";
const char D_800EADBC[] = "HARPH";
const char D_800EADC4[] = "HARPHM";
const char D_800EADCC[] = "HARPSSH";
const char D_800EADD4[] = "DISL";
const char D_800EADDC[] = "DGTM";
const char D_800EADE4[] = "DGTH";
const char D_800EADEC[] = "HORNL";
const char D_800EADF4[] = "HORNM";
const char D_800EADFC[] = "HORNH";
const char D_800EAE04[] = "BASSSE";
const char D_800EAE0C[] = "OLG";
const char D_800EAE10[] = "VOICE";
const char D_800EAE18[] = "UH";
const char D_800EAE1C[] = "HITL";
const char D_800EAE24[] = "HITM";
const char D_800EAE2C[] = "HITH";
const char D_800EAE34[] = "BRS";
const char D_800EAE38[] = "AIRL";
const char D_800EAE40[] = "AIRH";
const char D_800EAE48[] = "BS";
const char D_800EAE4C[] = "SD1";
const char D_800EAE50[] = "CLAOSD";
const char D_800EAE58[] = "HCLAP";
const char D_800EAE60[] = "SE2";
const char D_800EAE64[] = "LTOM";
const char D_800EAE6C[] = "HH1";
const char D_800EAE70[] = "MTOM";
const char D_800EAE78[] = "HH3";
const char D_800EAE7C[] = "STOM1";
const char D_800EAE84[] = "HH2";
const char D_800EAE88[] = "STOM1";
const char D_800EAE90[] = "HTOM";
const char D_800EAE98[] = "CYM1";
const char D_800EAEA0[] = "TAMBARINE";
const char D_800EAEAC[] = "CLAP";
const char D_800EAEB4[] = "BDD";
const char D_800EAEB8[] = "RIDE";
const char D_800EAEC0[] = "CYM2";
const char D_800EAEC8[] = "LBOTTLE";
const char D_800EAED0[] = "AIRCOMP";
const char D_800EAED8[] = "SAW";
const char D_800EAEDC[] = "BROCKEN";
const char D_800EAEE4[] = "TBO";
const char D_800EAEE8[] = "BCMB";
const char D_800EAEF0[] = "DOORSLAM";

s32 Sound_DmaCallback(s32 addr, s32 len, void* state) {
    s32 buffer_end;
    s32 delta;
    u8* free_buffer;
    DMABuffer* dma_ptr;
    DMABuffer* last_dma_ptr;

    dma_ptr = gAudioDmaState.firstUsed;
    last_dma_ptr = NULL;

    while (dma_ptr != NULL) {
        buffer_end = dma_ptr->startAddr + AUDIO_DMA_BUFFER_SIZE;
        if (addr < dma_ptr->startAddr) {
            break;
        }
        if (addr + len <= buffer_end) {
            dma_ptr->lastFrame = gAudioFrameCounter;
            free_buffer = dma_ptr->ptr + addr - dma_ptr->startAddr;
            return osVirtualToPhysical(free_buffer);
        }

        last_dma_ptr = dma_ptr;
        dma_ptr = (DMABuffer*)dma_ptr->node.next;
    }

    dma_ptr = gAudioDmaState.firstFree;
    if (dma_ptr == NULL) {
        __assert("dmaPtr", "music.c", 195);
    }

    gAudioDmaState.firstFree = (DMABuffer*)dma_ptr->node.next;
    alUnlink((ALLink*)dma_ptr);

    if (last_dma_ptr != NULL) {
        alLink((ALLink*)dma_ptr, (ALLink*)last_dma_ptr);
    }
    else if (gAudioDmaState.firstUsed != NULL) {
        last_dma_ptr = gAudioDmaState.firstUsed;
        gAudioDmaState.firstUsed = dma_ptr;
        dma_ptr->node.next = (ALLink*)last_dma_ptr;
        dma_ptr->node.prev = NULL;
        last_dma_ptr->node.prev = (ALLink*)dma_ptr;
    }
    else {
        gAudioDmaState.firstUsed = dma_ptr;
        dma_ptr->node.next = NULL;
        dma_ptr->node.prev = NULL;
    }

    free_buffer = dma_ptr->ptr;
    delta = addr & 1;
    addr -= delta;
    dma_ptr->startAddr = addr;
    dma_ptr->lastFrame = gAudioFrameCounter;
    osPiStartDma(&gAudioDmaIoMesgBuf[gAudioNextDma++], OS_MESG_PRI_NORMAL, OS_READ, addr, free_buffer, AUDIO_DMA_BUFFER_SIZE, &gAudioDmaMessageQueue);

    return osVirtualToPhysical(free_buffer) + delta;
}

ALDMAproc Sound_DmaNew(DMAState** state) {
    s32 index;

    if (gAudioDmaState.initialized == 0) {
        gAudioDmaState.firstFree = &gAudioDmaBuffers[0];
        gAudioDmaBuffers[0].node.prev = NULL;
        gAudioDmaBuffers[0].node.next = NULL;

        for (index = 0; index < AUDIO_DMA_BUFFER_COUNT - 1; index++) {
            alLink((ALLink*)&gAudioDmaBuffers[index + 1], (ALLink*)&gAudioDmaBuffers[index]);
            gAudioDmaBuffers[index].ptr = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_DMA_BUFFER_SIZE);
        }

        gAudioDmaBuffers[index].ptr = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_DMA_BUFFER_SIZE);
        gAudioDmaState.initialized = 1;
    }

    *state = &gAudioDmaState;
    return Sound_DmaCallback;
}

void Sound_CleanDmaBuffers(void) {
    DMABuffer* dma_ptr;
    DMABuffer* next_ptr;

    dma_ptr = gAudioDmaState.firstUsed;
    while (dma_ptr != NULL) {
        next_ptr = (DMABuffer*)dma_ptr->node.next;
        if (dma_ptr->lastFrame + AUDIO_DMA_BUFFER_RETENTION_FRAMES < gAudioFrameCounter) {
            if (dma_ptr == gAudioDmaState.firstUsed) {
                gAudioDmaState.firstUsed = (DMABuffer*)dma_ptr->node.next;
            }

            alUnlink((ALLink*)dma_ptr);
            if (gAudioDmaState.firstFree != NULL) {
                alLink((ALLink*)dma_ptr, (ALLink*)gAudioDmaState.firstFree);
            }
            else {
                gAudioDmaState.firstFree = dma_ptr;
                dma_ptr->node.next = NULL;
                dma_ptr->node.prev = NULL;
            }
        }

        dma_ptr = next_ptr;
    }
}

void Sound_InitPlayers(void) {
    u8 index;

    osCreateMesgQueue(&gAudioDmaMessageQueue, gAudioDmaMessageBuf, AUDIO_DMA_QUEUE_SIZE);
    osCreateMesgQueue(&gAudioSeqDmaMessageQueue, &gAudioSeqDmaMessage, 1);
    gAudioInitialized = 1;
    gMainSeqPlayer = &gMainSeqPlayerStorage;
    gMainSequence = &gMainSequenceStorage;
    gMusicPlayerFlags = 0;

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        gSfxSeqPlayers[index] = &gSfxSeqPlayerStorage[index];
        gSfxSequences[index] = &gSfxSequenceStorage[index];
        gSfxPlayerFlags[index] = 0;
    }

    alHeapInit(&gAudioHeap, gAudioHeapBuffer, AUDIO_HEAP_SIZE);
    gAudioCommandLists[0] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_COMMAND_LIST_SIZE);
    gAudioCommandLists[1] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_COMMAND_LIST_SIZE);
    gAudioTaskLists[0] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_TASK_LIST_SIZE);
    gAudioTaskLists[1] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_TASK_LIST_SIZE);
    gAudioBuffers[0] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_BUFFER_SIZE);
    gAudioBuffers[1] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_BUFFER_SIZE);
    gAudioBuffers[2] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_BUFFER_SIZE);

    gAudioDmaLength = (s32)audio_bank_ctl_ROM_END - (s32)audio_bank_ctl_ROM_START;
    gAudioBankFile = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, gAudioDmaLength);
    Sound_DmaReadSync(audio_bank_ctl_ROM_START, gAudioBankFile, gAudioDmaLength);

    gAudioDmaLength = 4;
    gSeqFile = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, gAudioDmaLength);
    Sound_DmaReadSync(audio_seq_bank_DATA_START, gSeqFile, gAudioDmaLength);

    gAudioDmaLength = gSeqFile->seqCount * sizeof(ALSeqData) + 4;
    gSeqFile = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, gAudioDmaLength);
    Sound_DmaReadSync(audio_seq_bank_ROM_START, gSeqFile, gAudioDmaLength);
    alSeqFileNew(gSeqFile, audio_seq_bank_ROM_START);

    gAudioSynthConfig.outputRate = osAiSetFrequency(AUDIO_OUTPUT_RATE);
    gAudioFrameSizeFloat = (f32)1 * gAudioSynthConfig.outputRate / (f32)60;
    gAudioFrameSize = (s32)gAudioFrameSizeFloat;
    if (gAudioFrameSize < gAudioFrameSizeFloat) {
        gAudioFrameSize++;
    }

    if (gAudioFrameSize & 0xF) {
        gAudioFrameSize = (gAudioFrameSize & ~0xF) + 0x10;
    }

    gAudioMinFrameSize = gAudioFrameSize - 16;
    gAudioSynthConfig.maxVVoices = AUDIO_SYN_VOICE_COUNT;
    gAudioSynthConfig.maxPVoices = AUDIO_SYN_VOICE_COUNT;
    gAudioSynthConfig.maxUpdates = AUDIO_SYN_UPDATE_COUNT;
    gAudioSynthConfig.dmaproc = Sound_DmaNew;
    gAudioSynthConfig.fxType = AL_FX_CUSTOM;
    gAudioSynthConfig.heap = &gAudioHeap;
    gAudioSynthConfig.params = gAudioCustomFxParams;
    alInit(&gAudioGlobals, &gAudioSynthConfig);

    gSeqPlayerConfig.maxVoices = AUDIO_SEQ_VOICE_COUNT;
    gSeqPlayerConfig.maxEvents = AUDIO_SEQ_EVENT_COUNT;
    gSeqPlayerConfig.maxChannels = AUDIO_SEQ_CHANNEL_COUNT;
    gSeqPlayerConfig.heap = &gAudioHeap;
    gSeqPlayerConfig.initOsc = NULL;
    gSeqPlayerConfig.updateOsc = NULL;
    gSeqPlayerConfig.stopOsc = NULL;
    alCSPNew((ALCSPlayer*)gMainSeqPlayer, &gSeqPlayerConfig);

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        alCSPNew((ALCSPlayer*)gSfxSeqPlayers[index], &gSeqPlayerConfig);
    }

    alBnkfNew(gAudioBankFile, audio_bank_tbl_ROM_START);
    gMusicBank = gAudioBankFile->bankArray[0];
    gAudioBank1 = gAudioBankFile->bankArray[1];
    gAudioBank2 = gAudioBankFile->bankArray[2];
    gAudioBank3 = gAudioBankFile->bankArray[3];
    alSeqpSetBank((ALSeqPlayer*)gMainSeqPlayer, gMusicBank);

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        alSeqpSetBank((ALSeqPlayer*)gSfxSeqPlayers[index], gAudioBank1);
    }

    gMainSeqBuffer = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_SEQ_BUFFER_SIZE);
    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        gSfxSeqBuffers[index] = alHeapDBAlloc(NULL, 0, &gAudioHeap, 1, AUDIO_PLAYER_SEQ_BUFFER_SIZE);
    }
}

void Sound_SetEventMesg(void) {
    osCreateMesgQueue(&gAudioTaskMessageQueue, &gAudioTaskMessage, 1);
    osSetEventMesg(OS_EVENT_SP, &gAudioTaskMessageQueue, NULL);
    osSendMesg(&gAudioTaskMessageQueue, NULL, OS_MESG_BLOCK);
}

// Follows PLAYSEQ's audio frame loop: select buffers, call alAudioFrame, and build M_AUDTASK.
void Sound_Update(void) {
    u16 index;
    u16 current_index;

    gAudioUpdateCounter++;
    func_800040A0();

    if (gMusicPlayerFlags != 0) {
        alSeqpSetVol((ALSeqPlayer*)gMainSeqPlayer, gMusicVolume);

        for (index = 0; index < AUDIO_CHANNEL_COUNT; index++) {
            if (gMusicChannelFxMixes[index] != 0) {
                alSeqpSetChlFXMix((ALSeqPlayer*)gMainSeqPlayer, index, gMusicChannelFxMixes[index]);
            }
        }
    }

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        if (gSfxPlayerFlags[index] != 0) {
            alSeqpSetVol((ALSeqPlayer*)gSfxSeqPlayers[index], gSfxPlayerVolumes[index]);
        }
    }

    gAudioTask = gAudioTaskLists[gAudioListIndex];
    gAudioCmdListPtr = gAudioCommandLists[gAudioListIndex];

    gAudioBufferIndex = gAudioBufferCounter % 3;
    gAudioOutputBufferPhysical = (s16*)osVirtualToPhysical(gAudioBuffers[gAudioBufferIndex]);
    AUDIO_BUFFER_SAMPLE_COUNTS[gAudioBufferIndex] = (gAudioFrameSize - gAudioSamplesLeft + AUDIO_FRAME_SAMPLE_PADDING) & ~0xF;
    if (AUDIO_BUFFER_SAMPLE_COUNTS[gAudioBufferIndex] < gAudioMinFrameSize) {
        AUDIO_BUFFER_SAMPLE_COUNTS[gAudioBufferIndex] = gAudioMinFrameSize;
    }

    gAudioCmdListPtr = alAudioFrame(gAudioCmdListPtr, &gAudioCmdCount, gAudioOutputBufferPhysical, AUDIO_BUFFER_SAMPLE_COUNTS[gAudioBufferIndex]);

    gAudioTask->t.type = M_AUDTASK;
    gAudioTask->t.flags = 0;
    gAudioTask->t.ucode_boot = (u64*)rspbootTextStart;
    gAudioTask->t.ucode_boot_size = (s32)gspFast3DTextStart - (s32)rspbootTextStart;
    gAudioTask->t.ucode = (u64*)aspMainTextStart;
    gAudioTask->t.ucode_data = (u64*)aspMainDataStart;
    gAudioTask->t.ucode_size = 0x1000;
    gAudioTask->t.ucode_data_size = (((s32)&D_800EF4D0 - (s32)aspMainDataStart) >> 3) << 3;
    gAudioTask->t.data_ptr = (u64*)gAudioCommandLists[gAudioListIndex];
    gAudioTask->t.data_size = (((s32)gAudioCmdListPtr - (s32)gAudioCommandLists[gAudioListIndex]) >> 3) << 3;

    gAudioSamplesLeft = IO_READ(AI_LEN_REG) >> 2;

    if (alSeqpGetState((ALSeqPlayer*)gMainSeqPlayer) == AL_STOPPED) {
        if ((gMusicPlayerFlags & 0x80) != 0) {
            gMusicPlayerFlags &= 0x7F;
            Sound_LoadSequence(gMusicSequenceId, gMainSeqBuffer);
            alCSeqNew(gMainSequence, gMainSeqBuffer);
            alSeqpSetSeq((ALSeqPlayer*)gMainSeqPlayer, (ALSeq*)gMainSequence);
            alSeqpSetVol((ALSeqPlayer*)gMainSeqPlayer, gMusicVolume);
            alSeqpPlay((ALSeqPlayer*)gMainSeqPlayer);
        }
        else {
            gMusicPlayerFlags = 0;
        }
    }

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        if (alSeqpGetState((ALSeqPlayer*)gSfxSeqPlayers[index]) == AL_STOPPED) {
            if ((gSfxPlayerFlags[index] & 0x80) != 0) {
                current_index = D_800C2BB4[gSfxSequenceIds[index] - 0x21];

                if (current_index < D_800C2BB4[gSfxSequenceIds[index] - 0x20]) {
                    do {
                        switch (gSfxBankIds[SFX_SOUND_IDS[current_index]]) {
                            case 1:
                                alSeqpSetBank((ALSeqPlayer*)gSfxSeqPlayers[index], gAudioBank1);
                                gSfxInstrument = gAudioBank1->instArray[SFX_SOUND_IDS[current_index]];
                                break;

                            case 2:
                                alSeqpSetBank((ALSeqPlayer*)gSfxSeqPlayers[index], gAudioBank2);
                                gSfxInstrument = gAudioBank2->instArray[SFX_SOUND_IDS[current_index] - 0x80];
                                break;

                            case 3:
                                alSeqpSetBank((ALSeqPlayer*)gSfxSeqPlayers[index], gAudioBank3);
                                gSfxInstrument = gAudioBank2->instArray[SFX_SOUND_IDS[current_index] - 0x100];
                                break;
                        }

                        gSfxSound = gSfxInstrument->soundArray[0];
                        gSfxKeyMap = gSfxSound->keyMap;
                        gSfxEnvelope = gSfxSound->envelope;

                        gSfxSound->sampleVolume =
                            gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_VOLUME];
                        if (gSfxPanOverrides[index] == -1) {
                            gSfxSound->samplePan =
                                gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_PAN];
                        }
                        else {
                            gSfxSound->samplePan = gSfxPanOverrides[index];
                        }

                        gSfxKeyMap->keyBase = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_KEY_BASE];
                        gSfxEnvelope->attackTime = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_ATTACK_TIME] * AUDIO_SAMPLE_ENV_SCALE;
                        gSfxEnvelope->attackVolume = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_ATTACK_VOLUME];
                        gSfxEnvelope->decayTime = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_DECAY_TIME] * AUDIO_SAMPLE_ENV_SCALE;
                        gSfxEnvelope->decayVolume = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_DECAY_VOLUME];
                        gSfxEnvelope->releaseTime = gSfxSampleParams[(current_index * SFX_SAMPLE_PARAM_SIZE) + SFX_SAMPLE_PARAM_RELEASE_TIME] * AUDIO_SAMPLE_ENV_SCALE;

                        current_index++;
                    } while (current_index < D_800C2B74[gSfxSequenceIds[index]]);
                }

                Sound_LoadSequence(gSfxSequenceIds[index], gSfxSeqBuffers[index]);
                alCSeqNew(gSfxSequences[index], gSfxSeqBuffers[index]);
                alSeqpSetSeq((ALSeqPlayer*)gSfxSeqPlayers[index], (ALSeq*)gSfxSequences[index]);
                alSeqpSetVol((ALSeqPlayer*)gSfxSeqPlayers[index], gSfxPlayerVolumes[index]);
                alSeqpPlay((ALSeqPlayer*)gSfxSeqPlayers[index]);
                gSfxPlayerFlags[index] &= 0x7F;
            }
            else {
                gSfxPlayerFlags[index] = 0;
            }
        }
        else {
            if ((gSfxPlayerFlags[index] & 0x40) != 0) {
                Sound_ActorPanVol(index);
            }

            if ((gSfxPlayerFlags[index] & 8) != 0) {
                func_80003D64(index);
            }

            if ((gSfxPlayerFlags[index] & 0x20) != 0) {
                gSfxStopTimers[index]--;
                if (gSfxStopTimers[index] == 0) {
                    Sound_StopSfx(gSfxSequenceIds[index]);
                    gSfxPlayerFlags[index] &= ~0x20;
                }
            }
        }
    }
}

void Sound_NextBuffer(void) {
    u8 index;

    osRecvMesg(&gAudioTaskMessageQueue, NULL, OS_MESG_BLOCK);
    gAudioBufferIndex = (gAudioBufferCounter - 1) % 3;
    osAiSetNextBuffer(gAudioBuffers[gAudioBufferIndex], AUDIO_BUFFER_SAMPLE_COUNTS[gAudioBufferIndex] * 4);

    for (index = 0; index < gAudioNextDma; index++) {
        osRecvMesg(&gAudioDmaMessageQueue, NULL, OS_MESG_NOBLOCK);
    }

    Sound_CleanDmaBuffers();
    gAudioNextDma = 0;
    gAudioFrameCounter++;
    gAudioListIndex ^= 1;
    gAudioBufferCounter++;
}

void Sound_StartTask(void) {
    osWritebackDCacheAll();
    osSpTaskLoad(gAudioTask);
    osSpTaskStartGo(gAudioTask);
}

void Sound_LoadSequence(u32 sequence_id, void* sequence_buffer) {
    s32 rom_addr;

    rom_addr = (s32)gSeqFile->seqArray[sequence_id].offset;
    gAudioDmaLength = gSeqFile->seqArray[sequence_id].len;

    if (gAudioDmaLength & 1) {
        gAudioDmaLength++;
    }

    osInvalDCache(sequence_buffer, gAudioDmaLength);
    osPiStartDma(&gAudioSeqDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, rom_addr, sequence_buffer, gAudioDmaLength, &gAudioSeqDmaMessageQueue);
    osRecvMesg(&gAudioSeqDmaMessageQueue, NULL, OS_MESG_BLOCK);
}

void Sound_DmaReadSync(u32 rom_addr, void* vram_addr, u32 length) {
    osWritebackDCacheAll();
    osPiStartDma(&gAudioDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, rom_addr, vram_addr, length, &gAudioDmaMessageQueue);
    osRecvMesg(&gAudioDmaMessageQueue, NULL, OS_MESG_BLOCK);
}

// start next song
// @param sequence_id ID of new song (should use BGM_*)
void Sound_PlayMusic(u32 sequence_id) {
    MusicSequenceParams* params;
    u16 patch_index;
    u8 channel_index;
    u8 index;
    u8 patch_mute_count;

    gAudioUpdateCounter = 0;
    gAudioFadeMode = 0;
    if (gAudioInitialized == 0) {
        return;
    }

    if (alSeqpGetState((ALSeqPlayer*)gMainSeqPlayer) != AL_STOPPED) {
        alSeqpStop((ALSeqPlayer*)gMainSeqPlayer);
    }

    gMusicSequenceId = *(u32*)&sequence_id;
    gMusicPlayerFlags = 0x81;

    params = &gMusicSequenceParams[gMusicSequenceId];
    gMusicVolume = params->volume << 8;
    D_800EF4D4 = gMusicVolume;
    D_80137794 = params->unk_01 << 12;

    for (index = 0; index < AUDIO_CHANNEL_COUNT; index++) {
        s32 num = index; // Thanks to inspectredc for finding this

        gMusicChannelFxMixes[index] = params->channelFxMixes[num];
    }

    patch_mute_count = 0;
    patch_index = 0;

    for (index = 0; index <= gMusicBank->instCount; index++) {
        channel_index = 0;
        if (index != gMusicBank->instCount) {
            gSfxInstrument = gMusicBank->instArray[index];
        }
        else {
            gSfxInstrument = gMusicBank->percussion;
        }

        if (gSfxInstrument->soundCount <= 0) {
            continue;
        }

        do {
            gSfxSound = gSfxInstrument->soundArray[channel_index];
            gSfxKeyMap = gSfxSound->keyMap;
            gSfxEnvelope = gSfxSound->envelope;

            if (patch_mute_count != 0) {
                patch_mute_count--;
                gSfxSound->sampleVolume = 0;
            }
            else {
                if (gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index] == MUSIC_SEQUENCE_PATCH_MUTE_RUN) {
                    patch_index++;
                    gSfxSound->sampleVolume = 0;
                    patch_mute_count = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++] - 1;
                }
                else {
                    gSfxSound->sampleVolume = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++];
                    gSfxSound->samplePan = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++];
                    gSfxKeyMap->keyBase = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++];
                    gSfxEnvelope->attackTime = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++] * AUDIO_SAMPLE_ENV_SCALE;
                    gSfxEnvelope->attackVolume = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++];
                    gSfxEnvelope->decayTime = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++] * AUDIO_SAMPLE_ENV_SCALE;
                    gSfxEnvelope->decayVolume = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++];
                    gSfxEnvelope->releaseTime = gMusicSequenceSamplePatchLists[gMusicSequenceId][patch_index++] * AUDIO_SAMPLE_ENV_SCALE;
                }
            }

            channel_index++;
        } while (channel_index < gSfxInstrument->soundCount);
    }
}

// add properties of next sound to play
// @param channel channel of next sound
// @param player pointer to seqence player. unused.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
// @param flags flags of sound to use
// @param actor_index actor whose position effects volume/pan of sound. (0xFF - no actor effect)
// @param timer timer
void Sound_SetSfxChannel(u8 channel, ALSeqPlayer* player, u32 sfx_id, s16 volume, s8 pan, u8 flags, u16 actor_index, u16 timer) {
    u8* data;

    gSfxPlayerFlags[channel] = flags;
    gSfxActorIndices[channel] = actor_index;
    gSfxSequenceIds[channel] = sfx_id;

    data = D_800C2968 + (sfx_id * 2);
    D_80104090[channel] = data[-0x41];
    gSfxStopTimers[channel] = timer;
    gSfxPanOverrides[channel] = pan;

    if ((volume < 0) || (volume >= 0x101)) {
        gSfxPlayerVolumes[channel] = data[-0x42] << 8;
    }
    else {
        gSfxPlayerVolumes[channel] = data[-0x42] * volume;
    }
}

// add properties of next sound to play
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
// @param flags flags of sound to use
// @param actor_index actor whose position effects volume/pan of sound. (0xFF - no actor effect)
// @param timer timer
s32 Sound_AddSfx(u32 sfx_id, s16 volume, s8 pan, u8 flags, u16 actor_index, u16 timer) {
    u8 index;
    u8 replace_index;
    u8 priority;

    if ((flags != 0x93) && (flags != 0x92)) {
        if ((gAudioFadeMode > 0) && (gAudioFadeMode < 0x80)) {
            return -1;
        }
    }

    if (flags == 0x93) {
        flags = 0x91;
    }
    else {
        if (flags == 0x92) {
            flags = 0x91;
        }

        for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
            if ((gSfxPlayerFlags[index] != 0) && (sfx_id == gSfxSequenceIds[index])) {
                if ((gSfxPlayerFlags[index] & 0x80) != 0) {
                    return -1;
                }

                alSeqpStop((ALSeqPlayer*)gSfxSeqPlayers[index]);

                if (flags != 0x91) {
                    Sound_SetSfxChannel(index, (ALSeqPlayer*)gSfxSeqPlayers[index], sfx_id, volume, pan, flags, actor_index, timer);
                    return index;
                }
            }
        }
    }

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        if (gSfxPlayerFlags[index] == 0) {
            Sound_SetSfxChannel(index, (ALSeqPlayer*)gSfxSeqPlayers[index], sfx_id, volume, pan, flags, actor_index, timer);
            return index;
        }
    }

    priority = D_80104090[0];
    replace_index = 0;
    for (index = 1; index < AUDIO_PLAYER_COUNT; index++) {
        if (D_80104090[index] < priority) {
            priority = D_80104090[index];
            replace_index = index;
        }
    }

    if (D_800C2927[sfx_id * 2] >= priority) {
        alSeqpStop((ALSeqPlayer*)gSfxSeqPlayers[replace_index]);
        Sound_SetSfxChannel(replace_index, (ALSeqPlayer*)gSfxSeqPlayers[replace_index], sfx_id, volume, pan, flags, actor_index, timer);

        return replace_index;
    }

    return -1;
}

// stop playing a sound effect
// @param sfx_id ID of sound to stop (should use SFX_* where applicable)
s32 Sound_StopSfx(u32 sfx_id) {
    u8 index;

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        if (gSfxPlayerFlags[index] && (sfx_id == gSfxSequenceIds[index])) {
            alSeqpStop((ALSeqPlayer*)gSfxSeqPlayers[index]);
            return index;
        }
    }

    return -1;
}

// play sound  with default configuration
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
s32 Sound_PlaySfx(u32 sfx_id) {
    return Sound_AddSfx(sfx_id, -1, -1, 0x81, 0xFF, 0);
}

// play sound
// add properties of next sound to play
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
s32 Sound_PlaySfx2(u32 sfx_id) {
    return Sound_AddSfx(sfx_id, -1, -1, 0x91, 0xFF, 0);
}

// play sound of with specific volume
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound to play (-1 or >0x100 means default)
s32 Sound_PlaySfxAtVol(u32 sfx_id, s16 volume) {
    return Sound_AddSfx(sfx_id, volume, -1, 0x81, 0xFF, 0);
}

// play sound with specific pan
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param pan pan of sound
s32 Sound_PlaySfxAtPan(u32 sfx_id, s8 pan) {
    return Sound_AddSfx(sfx_id, -1, pan, 0x81, 0xFF, 0);
}

// play sound with specified volume and pan
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
s32 Sound_PlaySfxAtVolPan(u32 sfx_id, s16 volume, s8 pan) {
    return Sound_AddSfx(sfx_id, volume, pan, 0x81, 0xFF, 0);
}

// play sound with specified volume and pan
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
s32 Sound_PlaySfxAtVolPan2(u32 sfx_id, s16 volume, s8 pan) {
    return Sound_AddSfx(sfx_id, volume, pan, 0x91, 0xFF, 0);
}

// play sound with specified volume and pan
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
s32 Sound_PlaySfxAtVolPan3(u32 sfx_id, s16 volume, s8 pan) {
    return Sound_AddSfx(sfx_id, volume, pan, 0x92, 0xFF, 0);
}

// play sound with specified volume and pan
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume volume of sound (-1 or >0x100 means default.)
// @param pan pan of sound
s32 Sound_PlaySfxAtVolPan4(u32 sfx_id, s16 volume, s8 pan) {
    return Sound_AddSfx(sfx_id, volume, pan, 0x93, 0xFF, 0);
}

// calculate x-postion pan and y-postion volume of sound.
void Sound_CalculatePanVol(s16 x_in, s16 y_in, s8* x_out, s16* y_out) {
    s32 temp_v0;
    s32 temp_v1;
    s16 temp;

    if (x_in < -0x80) {
        *x_out = 0;
    }
    else if (x_in >= 0x80) {
        *x_out = 0x7F;
    }
    else {
        *x_out = (x_in / 2) + 0x40;
    }

    if (x_in > 0) {
        temp_v0 = x_in;
    }
    else {
        temp_v0 = -x_in;
    }

    if (y_in > 0) {
        temp_v1 = y_in;
    }
    else {
        temp_v1 = -y_in;
    }

    temp = temp_v1 + temp_v0;
    if (temp < 0x100) {
        *y_out = 0x100;
    }
    else if (temp < 0x200) {
        *y_out = 0x200 - temp;
    }
    else {
        *y_out = 0;
    }
}

// play sound with position of actor changing pan and volume
// will not play if actor is outside x and y boundaries.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param actor_index actor whose position effects volume/pan of sound.
s32 Sound_PlaySfxAtActor(u32 sfx_id, u16 actor_index) {
    s8 temp_a;
    s16 temp_b;

    if ((gActors[actor_index].posX.whole < -0x90) || (gActors[actor_index].posX.whole >= 0x90)) {
        return -1;
    }

    if ((gActors[actor_index].posY.whole < -0x60) || (gActors[actor_index].posY.whole >= 0x60)) {
        return -1;
    }

    Sound_CalculatePanVol(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, &temp_a, &temp_b);

    if (temp_b < 0x80) {
        return -1;
    }
    else {
        return Sound_AddSfx(sfx_id, temp_b, temp_a, 0x81, 0xFF, 0);
    }
}

// play sound with position of actor changing pan and volume
// will not play if actor is outside x boundaries.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param actor_index actor whose position effects volume/pan of sound.
s32 Sound_PlaySfxAtActor2(u32 sfx_id, u16 actor_index) {
    s8 temp_a;
    s16 temp_b;

    if ((gActors[actor_index].posX.whole < -0x17F) || (gActors[actor_index].posX.whole >= 0x180)) {
        return -1;
    }

    Sound_CalculatePanVol(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, &temp_a, &temp_b);

    if (temp_b < 0x80) {
        return -1;
    }
    else {
        return Sound_AddSfx(sfx_id, temp_b, temp_a, 0x81, 0xFF, 0);
    }
}

// play sound with position of actor changing pan and volume
// will not play if actor is outside x boundaries.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param actor_index actor whose position effects volume/pan of sound.
s32 Sound_PlaySfxAtActor3(u32 arg0, u16 actor_index) {
    s8 temp_a;
    s16 temp_b;

    if ((gActors[actor_index].posX.whole < -0x17F) || (gActors[actor_index].posX.whole >= 0x180)) {
        return -1;
    }

    Sound_CalculatePanVol(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, &temp_a, &temp_b);

    if (temp_b < 0x80) {
        return -1;
    }
    else {
        return Sound_AddSfx(arg0, temp_b, temp_a, 0x91, 0xFF, 0);
    }
}

// play sound with position of object changing pan and volume
// will not play if object is outside x boundaries.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param index index of object at position effects volume/pan of sound.
s32 Sound_PlaySfxAtObject(u32 sfx_id, u16 index) {
    s8 temp_a;
    s16 temp_b;

    if ((D_801069E0[index].posX.whole < -0x17F) || (D_801069E0[index].posX.whole >= 0x180)) {
        return -1;
    }

    Sound_CalculatePanVol(D_801069E0[index].posX.whole, D_801069E0[index].posY.whole, &temp_a, &temp_b);

    if (temp_b < 0x80) {
        return -1;
    }
    else {
        return Sound_AddSfx(sfx_id, temp_b, temp_a, 0x81, 0xFF, 0);
    }
}

// play timed sound with position of actor changing pan and volume
// will not play if actor is outside x boundaries.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param actor_index actor whose position effects volume/pan of sound.
// @param timer timer
s32 Sound_PlaySfxAtActorTimed(u32 sfx_id, u16 actor_index, u16 timer) {
    s8 temp_a;
    s16 temp_b;

    if ((gActors[actor_index].posX.whole < -0x17F) || (gActors[actor_index].posX.whole >= 0x180)) {
        return -1;
    }

    Sound_CalculatePanVol(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, &temp_a, &temp_b);

    if (temp_b < 0x80) {
        return -1;
    }
    else {
        return Sound_AddSfx(sfx_id, temp_b, temp_a, 0xA1, 0xFF, timer);
    }
}

// play sound with pan contiously changing with actor's x-position.
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param actor_index actor whose position effects volume/pan of sound.
void Sound_PlaySfxAtActorPanning(u32 sfx_id, u16 actor_index) {
    Sound_AddSfx(sfx_id, -1, -1, 0xC1, actor_index, 0);
}

// play sound. other 2 args are ignored
// @param sfx_id ID of sound effect (should use SFX_* where applicable)
// @param volume unused.
// @param pan unused.
s32 Sound_PlaySfx3(u32 sfx_id, s32 volume, s32 pan) {
    s32 index;

    index = Sound_AddSfx(sfx_id, -1, -1, 0x89, 0xFF, 0);
    gSfxChannelVolumes[index] = 0x7F;
    gSfxChannelPans[index] = 0x40;
    return index;
}

// stop both music and sounds
void Sound_StopAll(void) {
    Sound_StopMusic();
    Sound_StopAllSfx();
}

// stop the music.
void Sound_StopMusic(void) {
    alSeqpStop((ALSeqPlayer*)gMainSeqPlayer);
    gMusicPlayerFlags = 0;
}

// stop all SFX
void Sound_StopAllSfx(void) {
    u8 index;

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        alSeqpStop((ALSeqPlayer*)gSfxSeqPlayers[index]);
        gSfxPlayerFlags[index] = 0;
    }
}

// adjust pan and volume of sound based on x-position
// of gActors[gSfxActorIndices[index]]
void Sound_ActorPanVol(u8 index) {
    s8 pan;
    u16 current_index;
    u16 channel_index;
    u16 sound_index;
    u16 actor_index;
    s16 volume;
    s16 pos_x;

    actor_index = gSfxActorIndices[index];
    if (gActors[actor_index].flags != 0) {
        pos_x = gActors[actor_index].posX.whole;
        if ((pos_x < -0x180) || (pos_x >= 0x180)) {
            volume = 0;
        }
        else if (pos_x < -0x80) {
            pan = 0;
            volume = ((pos_x / 4) + 0xA0);
        }
        else if (pos_x >= 0x80) {
            pan = 0x7F;
            volume = (0xA0 - (pos_x / 4));
        }
        else {
            volume = 0x80;
            pan = pos_x / 2 + 0x40;
        }

        current_index = D_800C2BB4[gSfxSequenceIds[index] - 0x21];
        channel_index = 0;

        if (current_index < D_800C2BB4[gSfxSequenceIds[index] - 0x20]) {
            do {
                sound_index = SFX_SOUND_IDS[current_index];
                switch (gSfxBankIds[sound_index]) {
                    case 1:
                        gSfxInstrument = gAudioBank1->instArray[sound_index];
                        break;

                    case 2:
                        gSfxInstrument = gAudioBank2->instArray[sound_index - 0x80];
                        break;

                    case 3:
                        gSfxInstrument = gAudioBank3->instArray[sound_index - 0x100];
                        break;
                }

                gSfxSound = gSfxInstrument->soundArray[0];
                alSeqpSetChlVol((ALSeqPlayer*)gSfxSeqPlayers[index], channel_index, volume);
                alSeqpSetChlPan((ALSeqPlayer*)gSfxSeqPlayers[index], channel_index, pan);

                current_index++;
            } while (channel_index++, current_index < D_800C2BB4[gSfxSequenceIds[index] - 0x20]);
        }
    }
}

void func_80003D64(u8 arg0) {
    u16 current_index;
    u16 channel_index;
    u16 sound_index;

    current_index = D_800C2BB4[gSfxSequenceIds[arg0] - 0x21];
    channel_index = 0;

    if (current_index < D_800C2BB4[gSfxSequenceIds[arg0] - 0x20]) {
        do {
            sound_index = SFX_SOUND_IDS[current_index];
            switch (gSfxBankIds[sound_index]) {
                case 1:
                    gSfxInstrument = gAudioBank1->instArray[sound_index];
                    break;

                case 2:
                    gSfxInstrument = gAudioBank2->instArray[sound_index - 0x80];
                    break;

                case 3:
                    gSfxInstrument = gAudioBank3->instArray[sound_index - 0x100];
                    break;
            }

            gSfxSound = gSfxInstrument->soundArray[0];
            alSeqpSetChlVol((ALSeqPlayer*)gSfxSeqPlayers[arg0], channel_index, gSfxChannelVolumes[arg0]);
            alSeqpSetChlPan((ALSeqPlayer*)gSfxSeqPlayers[arg0], channel_index, gSfxChannelPans[arg0]);

            current_index++;
        } while (channel_index++, current_index < D_800C2BB4[gSfxSequenceIds[arg0] - 0x20]);
    }
}

void Sound_StartFade(u16 arg0, u16 arg1) {
    u16 index;

    if ((arg0 & 1) == 1) {
        gAudioFadeCounter = arg1;
    }
    else {
        gAudioFadeCounter = 0;
    }

    gAudioFadeDuration = arg1;

    if (arg0 == 0x41) {
        gAudioFadeMode = 1;
        gMusicFadeVolume = ((u8*)gMusicSequenceParams)[gMusicSequenceId * sizeof(MusicSequenceParams)] << 7;

        if ((arg0 & 0x80) != 0) {
            return;
        }

        for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
            gSfxFadeVolumes[index] = D_800C2968[(gSfxSequenceIds[index] * 2) - 0x42] << 7;
        }
        return;
    }

    gAudioFadeMode = arg0;
    gMusicFadeVolume = ((u8*)gMusicSequenceParams)[gMusicSequenceId * sizeof(MusicSequenceParams)] << 8;

    if ((arg0 & 0x80) != 0) {
        return;
    }

    for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
        gSfxFadeVolumes[index] = D_800C2968[(gSfxSequenceIds[index] * 2) - 0x42] << 8;
    }
}

void func_800040A0(void) {
    u16 progress;
    u16 index;

    switch (gAudioFadeMode) {
        case 0:
            break;

        case 1:
            gAudioFadeCounter--;
            progress = (gAudioFadeCounter << 7) / gAudioFadeDuration;
            gMusicVolume = (gMusicFadeVolume * progress) / 0x80;

            for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
                if (gSfxSequenceIds[index] != SFX_STAGE_TILES) {
                    gSfxPlayerVolumes[index] = (gSfxFadeVolumes[index] * progress) / 0x80;
                }
            }

            if (gAudioFadeCounter == 0) {
                Sound_StopAll();
                gAudioFadeMode = 3;
            }
            break;

        case 2:
            gAudioFadeCounter++;
            progress = (gAudioFadeCounter << 7) / gAudioFadeDuration;
            gMusicVolume = (gMusicFadeVolume * progress) / 0x80;

            for (index = 0; index < AUDIO_PLAYER_COUNT; index++) {
                gSfxPlayerVolumes[index] = (gSfxFadeVolumes[index] * progress) / 0x80;
            }

            if (gAudioFadeCounter == gAudioFadeDuration) {
                gAudioFadeMode = 3;
            }
            break;

        case 0x81:
            gAudioFadeCounter--;
            progress = (gAudioFadeCounter << 7) / gAudioFadeDuration;
            gMusicVolume = (gMusicFadeVolume * progress) / 0x80;

            if (gAudioFadeCounter == 0) {
                Sound_StopMusic();
                gAudioFadeMode = 0x83;
            }
            break;
    }
}
