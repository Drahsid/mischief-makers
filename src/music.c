#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

ALCSPlayer gSFX_ALCPlayers[4];
ALCSPlayer* SFX_pALCPlayers[4];

#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_dmaCallBack.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_dmaNew.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_InitPlayers.s")

void Sound_SetEventMesg(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    osSetEventMesg(4, &D_801377D0, 0);
    osSendMesg(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/Sound_Tick.s")
/*
void func_800028D0(void){  
  u8 i;
  
  osRecvMesg(&D_801377D0,0,1);
  D_8016E718 = (D_800C3838 -1) % 3;
  osAiSetNextBuffer(Sound_AIBuffers[D_8016E718],D_800C383C[D_8016E718] << 2);
  i = 0;
  if (D_800C3830>0) {
    do {
      osRecvMesg(&D_801377B8,0,0);
      i++;
    } while (i < D_800C3830);
  }
  func_80001A80();
  D_800C3830 = 0;
  D_800C3834 ^= 1;
  D_800C3838++;
  D_8016DEB8++;
  }
*/
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800028D0.s")

void func_800029EC(void) {
    osWritebackDCacheAll();
    osSpTaskLoad(D_8016E6F0);
    osSpTaskStartGo(D_8016E6F0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002A2C.s")

void Sound_DMA(int32_t Addr, void* Vaddr, uint32_t Len) {
    osWritebackDCacheAll();
    osPiStartDma(&D_801378C8, 0, 0, Addr, Vaddr, Len, &D_801377B8);
    osRecvMesg(&D_801377B8, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/BGM_Play.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_func.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800032C4.s")

int32_t SFX_Play_1(UNK_TYPE ID) { // main SFX playing wrapper
    return SFX_func(ID, -1, -1, 0x81, 0xFF, 0);
}

void SFX_Play_2(UNK_TYPE arg0) {
    SFX_func(arg0, -1, -1, 0x91, 0xFF, 0);
}

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_3(UNK_TYPE arg0, int16_t arg1) {
    SFX_func(arg0, arg1, -1, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_3.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_4(UNK_TYPE arg0, int8_t arg1) {
    SFX_func(-1, arg1, -1, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_4.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_5(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    SFX_func(arg0, arg1, arg2, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_5.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_6(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    SFX_func(arg0, arg1, arg2, 0x91, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_6.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_7(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    SFX_func(arg0, arg1, arg2, 0x92, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_7.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void SFX_Play_8(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    SFX_func(arg0, arg1, arg2, 0x93, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800035F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800036C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800038C8.s")

#ifdef NON_MATCHING
// Differences are regalloc
void func_80003980(UNK_TYPE arg0, uint16_t arg1) {
    SFX_func(arg0, -1, -1, 0xC1, arg1, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003980.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800039B8.s")

void BGM_SFX_Stop(void) {
    BGM_Stop();
    SFX_StopAll();
}

void BGM_Stop(void) {
    alSeqpStop(BGM_pALCPlayer);
    bssStart = 0;
}

void SFX_StopAll(void) {
    u8 i;
    for (i = 0; i < 4; i++) {
        alSeqpStop(SFX_pALCPlayers[i]);
        gSFX_ChannelStates[i] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_SetPan_2.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_800040A0.s")
