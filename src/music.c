#include "music.h"
#include "common.h"
// While this script contains general sound functions, it is named music.c after Assert found in code.

ALCSPlayer gSFXPlayers[4];
ALCSPlayer* gSFXPlayersp[4];

#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_dmaCallBack.s")

// TODO: Figure out D_8016D9A8 and D_8016D9B8 types
#ifdef NON_MATCHING
void Audio_DmaNew(void** arg0) {
    ALLink* phi_s0;
    ALLink* phi_s1;

    if (D_8016D9A8.unk0 == 0) {
        D_8016D9A8.unk8 = &D_8016D9B8;
        D_8016D9B8.unk4 = 0;
        D_8016D9B8.unk0 = 0;

        for (phi_s0 = &D_8016D9CC, phi_s1 = &D_8016D9B8; phi_s0 != 0x8016DEB8; phi_s0 += 2, phi_s1 += 2) {
            alLink(phi_s0, phi_s1);
            phi_s1->next = alHeapDBAlloc(NULL, 0, &gALHeap, 1, 0x270);
        }

        phi_s1[2].next = alHeapDBAlloc(0, 0, &gALHeap, 1, 0x270);
        D_8016D9A8.unk0 = 1U;
    }
    *arg0 = &D_8016D9A8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_DmaNew.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_InitPlayers.s")

void Sound_SetEventMesg(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    osSetEventMesg(OS_EVENT_SP, &D_801377D0, 0);
    osSendMesg(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_Tick.s")

#ifdef NON_MATCHING
void func_800028D0(void) {
    uint8_t index;

    osRecvMesg(&D_801377D0, 0, 1);
    D_8016E718 = (D_800C3838 - 1) % 3;
    osAiSetNextBuffer(gAIBuffers[D_8016E718], D_800C383C[D_8016E718] << 2);
    for (index = 0; index < D_800C3830; index++) {
        if (D_800C3830 > 0) {
            for (index = 0; index < D_800C3830; index++) {
                osRecvMesg(&Sound_DMAmesgQA, 0, 0);
            }
        }
    }

    func_80001A80();
    D_800C3830 = 0;
    D_800C3834 ^= 1;
    D_800C3838++;
    D_8016DEB8++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800028D0.s")
#endif

void Sound_StartTask(void) {
    osWritebackDCacheAll();
    osSpTaskLoad(Sound_OSTaskp);
    osSpTaskStartGo(Sound_OSTaskp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002A2C.s")

void Sound_DMA(uint32_t devaddr, void* vaddr, uint32_t nbytes) {
    osWritebackDCacheAll();
    osPiStartDma(&D_801378C8, 0, 0, devaddr, vaddr, nbytes, &Sound_DMAmesgQA);
    osRecvMesg(&Sound_DMAmesgQA, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/BGM_Play.s")

#ifdef NON_MATCHING
void func_80002F48(uint8_t chan, void* player, int16_t SFX_ID, int16_t arg3, s8 arg4, uint8_t state, uint16_t arg6, uint16_t arg7) {
    gSFX_ChannelStates[chan] = state;
    D_80108DE0[chan] = arg6;
    gSFXCurrentIndex[chan] = SFX_ID;
    D_80104090[chan] = gSFX_2ByteArray[SFX_ID][1];
    D_8010CDE8[chan] = arg7;
    D_801069D8[chan] = arg4;
    if ((-1 < arg3) && (arg3 < 257)) {
        gSFX_Volumes[chan] = gSFX_2ByteArray[SFX_ID][0] * arg3;
        return;
    }
    gSFX_Volumes[chan] = gSFX_2ByteArray[SFX_ID][0] << 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002F48.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_0.s")

#ifdef NON_MATCHING
int32_t SFX_Stop(uint16_t id) {
    int8_t index=0;
    while(gSFX_ChannelStates[index] == 0||gSFXCurrentIndex[index] != id) {
        if (3<++index) {
            return -1;
        }
    }
    alSeqpStop((ALSeqPlayer*)gSFXPlayersp[index]);
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Stop.s")
#endif

// main SFX playing wrapper
int32_t SFX_Play_1(uint32_t id) {
    SFX_Play_0(id, -1, -1, 0x81, 0xFF, 0);
}

int32_t SFX_Play_2(uint32_t id) {
    SFX_Play_0(id, -1, -1, 0x91, 0xFF, 0);
}

int32_t SFX_Play_3(uint32_t id, int16_t arg1) {
    SFX_Play_0(id, arg1, -1, 0x81, 0xFF, 0);
}

int32_t SFX_Play_4(uint32_t id, int8_t arg1) {
    return SFX_Play_0(id, -1, arg1, 0x81U, 0xFFU, 0U);
}

int32_t SFX_Play_5(uint32_t id, int16_t arg1, int8_t arg2) {
    return SFX_Play_0(id, arg1, arg2, 0x81, 0xFF, 0);
}

int32_t SFX_Play_6(uint32_t id, int16_t arg1, int8_t arg2) {
    return SFX_Play_0(id, arg1, arg2, 0x91, 0xFF, 0);
}

int32_t SFX_Play_7(uint32_t id, int16_t arg1, int8_t arg2) {
    return SFX_Play_0(id, arg1, arg2, 0x92, 0xFF, 0);
}

int32_t SFX_Play_8(uint32_t id, int16_t arg1, int8_t arg2) {
    return SFX_Play_0(id, arg1, arg2, 0x93, 0xFF, 0);
}

void func_80003540(int16_t arg0, int16_t arg1, int8_t* arg2, int16_t* arg3) {
    int32_t phi_v1;
    int32_t phi_v0;
    int16_t temp;

    if (arg0 < -0x80) *arg2 = 0;
    else if (arg0 >= 0x80)
        *arg2 = 0x7F;
    else
        *arg2 = ((arg0 / 2) + 0x40);

    // looks like inlined abs?
    if (arg0 > 0) phi_v0 = arg0;
    else
        phi_v0 = -arg0;

    if (arg1 > 0) phi_v1 = arg1;
    else
        phi_v1 = -arg1;

    temp = phi_v1 + phi_v0;
    if (temp < 0x100) *arg3 = 0x100;
    else if (temp < 0x200)
        *arg3 = (0x200 - temp);
    else
        *arg3 = 0;
}

int32_t SFX_ActorPanXY(uint32_t SFX_ID, uint16_t i) {
    int8_t val_a;
    int16_t val_b;

    if ((gActors[i].pos.x < -0x90) || (gActors[i].pos.x >= 0x90)) {
        return -1;
    }

    if ((gActors[i].pos.y < -0x60) || (gActors[i].pos.y >= 0x60)) {
        return -1;
    }

    func_80003540(gActors[i].pos.x, gActors[i].pos.y, &val_a, &val_b);

    if (val_b < 128) {
        return -1;
    }
    else {
        return SFX_Play_0(SFX_ID, val_b, val_a, 0x81, 0xFF, 0);
    }
}

int32_t SFX_ActorPanX(uint32_t SFX_ID, uint16_t i) {
    int8_t val_a;
    int16_t val_b;

    if ((gActors[i].pos.x < -383) || (gActors[i].pos.x >= 384)) {
        return -1;
    }

    func_80003540(gActors[i].pos.x, gActors[i].pos.y, &val_a, &val_b);

    if (val_b < 128) {
        return -1;
    }
    else {
        return SFX_Play_0(SFX_ID, val_b, val_a, 0x81, 0xFF, 0);
    }
}

int32_t SFX_ActorPanX2(uint32_t SFX_ID, uint16_t i) {
    int8_t val_a;
    int16_t val_b;

    if ((gActors[i].pos.x < -383) || (gActors[i].pos.x >= 384)) {
        return -1;
    }

    func_80003540(gActors[i].pos.x, gActors[i].pos.y, &val_a, &val_b);

    if (val_b < 128) {
        return -1;
    }
    else {
        return SFX_Play_0(SFX_ID, val_b, val_a, 0x91, 0xFF, 0);
    }
}
//used for gem collision func.
int32_t func_80003828(uint32_t SFX_ID, uint16_t i){
    int8_t val_a;
    int16_t val_b;

    if ((D_801069E0[i].pos.x < -383) || (D_801069E0[i].pos.x >= 384)) {
        return -1;
    }

    func_80003540(D_801069E0[i].pos.x, D_801069E0[i].pos.y, &val_a, &val_b);

    if (val_b < 128) {
        return -1;
    }
    else {
        return SFX_Play_0(SFX_ID, val_b, val_a, 0x81, 0xFF, 0);
    }
}

int32_t func_800038C8(uint32_t SFX_ID, uint16_t index, uint16_t arg2) {
    int8_t val_a;
    int16_t val_b;

    if ((gActors[index].pos.x < -383) || (gActors[index].pos.x >= 384))
        return -1;
    func_80003540(gActors[index].pos.x, gActors[index].pos.y, &val_a, &val_b);

    if (val_b < 128) {
        return -1;
    }
    else {
        return SFX_Play_0(SFX_ID, val_b, val_a, 0xA1, 0xFF, arg2);
    }
}

void func_80003980(uint32_t arg0, uint16_t arg1) {
    SFX_Play_0(arg0, -1, -1, 0xC1, arg1, 0);
}

void func_800039B8(uint32_t SFX_ID, uint32_t arg1, uint32_t arg2) { // 2 unused args?
    int i = SFX_Play_0(SFX_ID, -1, -1, 0x89, 0xFF, 0);
    D_8011CDF0[i] = 127;
    D_8011CF18[i] = 64;
}

void BGM_SFX_Stop(void) {
    BGM_Stop();
    SFX_StopAll();
}

void BGM_Stop(void) {
    alSeqpStop((ALSeqPlayer*)gBGM_pALCPlayer);
    bssStart = 0;
}

void SFX_StopAll(void) {
    uint8_t index;
    for (index = 0; index < 4; index++) {
        alSeqpStop((ALSeqPlayer*)gSFXPlayersp[index]);
        gSFX_ChannelStates[index] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan_2.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800040A0.s")
