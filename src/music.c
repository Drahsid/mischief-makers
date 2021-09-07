#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

// since the functions in this file include music, sfx and other general sound stuff, should we rename this file to "sound.c" ?

ALCSPlayer gSFX_ALCPlayers[4];
ALCSPlayer* SFX_pALCPlayers[4];

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800017D0.s")

// TODO: Figure out D_8016D9A8 and D_8016D9B8 types
#ifdef NON_MATCHING
void func_80001988(void** arg0) {
    ALLink* phi_s0;
    ALLink* phi_s1;

    if (D_8016D9A8.unk0 == 0) {
        D_8016D9A8.unk8 = &D_8016D9B8;
        D_8016D9B8.unk4 = 0;
        D_8016D9B8.unk0 = 0;

        for (phi_s0 = &D_8016D9CC, phi_s1 = &D_8016D9B8; phi_s0 != 0x8016DEB8; phi_s0 += 2, phi_s1 += 2) {
            alLink(phi_s0, phi_s1);
            phi_s1->next = alHeapDBAlloc(NULL, 0, &D_80137D80, 1, 0x270);
        }

        phi_s1[2].next = alHeapDBAlloc(0, 0, &D_80137D80, 1, 0x270);
        D_8016D9A8.unk0 = 1U;
    }
    *arg0 = &D_8016D9A8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80001988.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_InitPlayers.s")

void Sound_SetEventMesg(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    osSetEventMesg(4, &D_801377D0, 0);
    osSendMesg(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_Tick.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800028D0.s")

void func_800029EC(void) {
    osWritebackDCacheAll();
    osSpTaskLoad(D_8016E6F0);
    osSpTaskStartGo(D_8016E6F0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002A2C.s")

void Sound_DMA(uint32_t devaddr, void* vaddr, uint32_t nbytes) {
    osWritebackDCacheAll();
    osPiStartDma(&D_801378C8, 0, 0, devaddr, vaddr, nbytes, &D_801377B8);
    osRecvMesg(&D_801377B8, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/BGM_Play.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800032C4.s")

// main SFX playing wrapper
void SFX_Play_1(uint32_t id) {
    SFX_Play_0(id, -1, -1, 0x81, 0xFF, 0);
}

void SFX_Play_2(uint32_t id) {
    SFX_Play_0(id, -1, -1, 0x91, 0xFF, 0);
}

void SFX_Play_3(uint32_t id, int16_t arg1) {
    SFX_Play_0(id, arg1, -1, 0x81, 0xFF, 0);
}

void SFX_Play_4(uint32_t id, int8_t arg1) {
    SFX_Play_0(id, -1, arg1, 0x81U, 0xFFU, 0U);
}

void SFX_Play_5(uint32_t id, int16_t arg1, int8_t arg2) {
    SFX_Play_0(id, arg1, arg2, 0x81, 0xFF, 0);
}

void SFX_Play_6(uint32_t id, int16_t arg1, int8_t arg2) {
    SFX_Play_0(id, arg1, arg2, 0x91, 0xFF, 0);
}

void SFX_Play_7(uint32_t id, int16_t arg1, int8_t arg2) {
    SFX_Play_0(id, arg1, arg2, 0x92, 0xFF, 0);
}

void SFX_Play_8(uint32_t id, int16_t arg1, int8_t arg2) {
    SFX_Play_0(id, arg1, arg2, 0x93, 0xFF, 0);
}

void func_80003540(int16_t arg0, int16_t arg1, int8_t* arg2, int16_t* arg3) {
    int32_t phi_v1;
    int32_t phi_v0;
    int16_t temp;

    if (arg0 < -0x80) {
        *arg2 = 0;
    }
    else if (arg0 >= 0x80) {
        *arg2 = 0x7F;
    }
    else {
        *arg2 = ((arg0 / 2) + 0x40);
    }

    // looks like inlined abs?
    if (arg0 > 0) {
        phi_v0 = arg0;
    }
    else {
        phi_v0 = -arg0;
    }

    if (arg1 > 0) {
        phi_v1 = arg1;
    }
    else {
        phi_v1 = -arg1;
    }

    temp = phi_v1 + phi_v0;
    if (temp < 0x100) {
        *arg3 = 0x100;
    }
    else if (temp < 0x200) {
        *arg3 = (0x200 - temp);
    }
    else {
        *arg3 = 0;
    }
}

// play sound relative to actor?
int32_t func_800035F8(uint32_t id, uint16_t index) {
    int8_t sp2F;
    int16_t sp2C;

    if (gActors[index].pos.x < -0x90 || gActors[index].pos.x >= 0x90) {
        return -1;
    }
    if (gActors[index].pos.y < -0x60 || gActors[index].pos.y >= 0x60) {
        return -1;
    }

    func_80003540(gActors[index].pos.x, gActors[index].pos.y, &sp2F, &sp2C);
    if (sp2C < 0x80) {
        return -1;
    }

    return SFX_Play_0(id, sp2C, sp2F, 0x81, 0xFF, 0);
}

// play sound relative to actor?
int32_t func_800036C8(uint32_t id, uint16_t index) {
    int8_t sp2F;
    int16_t sp2C;

    if (gActors[index].pos.x < -0x17F || gActors[index].pos.x >= 0x180) {
        return -1;
    }

    func_80003540(gActors[index].pos.x, gActors[index].pos.y, &sp2F, &sp2C);
    if (sp2C < 0x80) {
        return -1;
    }

    return SFX_Play_0(id, sp2C, sp2F, 0x81, 0xFF, 0);
}

// play sound relative to actor?
int32_t func_80003778(uint32_t id, uint16_t index) {
    int8_t sp2F;
    int16_t sp2C;

    if (gActors[index].pos.x < -0x17F || gActors[index].pos.x >= 0x180) {
        return -1;
    }

    func_80003540(gActors[index].pos.x, gActors[index].pos.y, &sp2F, &sp2C);
    if (sp2C < 0x80) {
        return -1;
    }

    return SFX_Play_0(id, sp2C, sp2F, 0x91, 0xFF, 0);
}

// play sound relative to level object?
int32_t func_80003828(uint32_t id, uint16_t index) {
    int8_t sp2F;
    int16_t sp2C;

    if (D_801069E0[index].pos.x < -0x17F || D_801069E0[index].pos.x >= 0x180) {
        return -1;
    }

    func_80003540(D_801069E0[index].pos.x, D_801069E0[index].pos.y, &sp2F, &sp2C);
    if (sp2C < 0x80) {
        return -1;
    }

    return SFX_Play_0(id, sp2C, sp2F, 0x81, 0xFF, 0);
}

// play sound relative to actor?
int32_t func_800038C8(uint32_t id, uint16_t index, uint16_t arg2) {
    int8_t sp2F;
    int16_t sp2C;

    if (gActors[index].pos.x < -0x17F || gActors[index].pos.x >= 0x180) {
        return -1;
    }

    func_80003540(gActors[index].pos.x, gActors[index].pos.y, &sp2F, &sp2C);
    if (sp2C < 0x80) {
        return -1;
    }

    return SFX_Play_0(id, sp2C, sp2F, 0xA1, 0xFF, arg2);
}

void SFX_Play_9(uint32_t id, uint16_t arg1) {
    SFX_Play_0(id, -1, -1, 0xC1, arg1, 0);
}

void func_800039B8(uint32_t id, uint32_t arg1, uint32_t arg2) {
    int32_t temp_v0;

    temp_v0 = SFX_Play_0(id, -1, -1, 0x89, 0xFF, 0);
    *(((uint8_t*)&D_8011CDF0) + temp_v0) = 0x7F;
    *(((uint8_t*)&D_8011CF18) + temp_v0) = 0x40;
}

void BGM_SFX_Stop(void) {
    BGM_Stop();
    SFX_StopAll();
}

void BGM_Stop(void) {
    alSeqpStop(BGM_pALCPlayer);
    bssStart = 0;
}

void SFX_StopAll(void) {
    uint8_t index;
    for (index = 0; index < 4; index++) {
        alSeqpStop(SFX_pALCPlayers[index]);
        gSFX_ChannelStates[index] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan_2.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800040A0.s")
