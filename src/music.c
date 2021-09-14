#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

// While this script contains general sound functions, it is named music.c after Assert found in code.

ALCSPlayer gSFX_ALCPlayers[4];
ALCSPlayer* SFX_pALCPlayers[4];

#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_dmaCallBack.s")

// TODO: Figure out D_8016D9A8 and D_8016D9B8 types
#ifdef NON_MATCHING
void Audio_dmaNew(void** arg0) {
    ALLink* phi_s0;
    ALLink* phi_s1;

    if (D_8016D9A8.unk0 == 0) {
        D_8016D9A8.unk8 = &D_8016D9B8;
        D_8016D9B8.unk4 = 0;
        D_8016D9B8.unk0 = 0;

        for (phi_s0 = &D_8016D9CC, phi_s1 = &D_8016D9B8; phi_s0 != 0x8016DEB8; phi_s0 += 2, phi_s1 += 2) {
            alLink(phi_s0, phi_s1);
            phi_s1->next = alHeapDBAlloc(NULL, 0, &Sound_ALHeap, 1, 0x270);
        }

        phi_s1[2].next = alHeapDBAlloc(0, 0, &Sound_ALHeap, 1, 0x270);
        D_8016D9A8.unk0 = 1U;
    }
    *arg0 = &D_8016D9A8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/music/Audio_dmaNew.s")
#endif

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
  for(i=0;i<D_800C3830;i++)
  if (D_800C3830>0) {
    for(i=0;i<D_800C3830;i++)
      osRecvMesg(&D_801377B8,0,0);
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

void Sound_DMA(uint32_t devaddr, void* vaddr, uint32_t nbytes) {
    osWritebackDCacheAll();
    osPiStartDma(&D_801378C8, 0, 0, devaddr, vaddr, nbytes, &D_801377B8);
    osRecvMesg(&D_801377B8, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/BGM_Play.s")
/*
void func_80002F48(u8 chan,void *player,s16 SFX_ID,s16 arg3,s8 arg4,u8 state,u16 arg6,u16 arg7){
    gSFX_ChannelStates[chan]=state;
    D_80108DE0[chan]=arg6;
    gSFXCurrentIndex[chan]=SFX_ID;
    D_80104090[chan]=SFX2ByteArray[SFX_ID][1];
    D_8010CDE8[chan]=arg7;
    D_801069D8[chan]=arg4;
    if((-1<arg3)&&(arg3<257)){
        gSFX_Volumes[chan]=SFX2ByteArray[SFX_ID][0] * arg3;
        return;
    }
    gSFX_Volumes[chan]=SFX2ByteArray[SFX_ID][0] << 8;

}*/
#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Play_0.s")
/*
int32_t SFX_Stop(u16 ID){
    u8 i;
    for(i=0; gSFXCurrentIndex[i] != ID || gSFX_ChannelStates[i]==0; i++){
        if(i>3) return -1;
    }
    alSeqpStop((ALSeqPlayer *)SFX_pALCPlayers[i]);
    return i;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/music/SFX_Stop.s")

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

    if (arg0 < -0x80) *arg2 = 0;
    else if (arg0 >= 0x80) *arg2 = 0x7F;
    else *arg2 = ((arg0 / 2) + 0x40);

    // looks like inlined abs?
    if (arg0 > 0) phi_v0 = arg0;
    else phi_v0 = -arg0;

    if (arg1 > 0) phi_v1 = arg1;
    else phi_v1 = -arg1;

    temp = phi_v1 + phi_v0;
    if (temp < 0x100) *arg3 = 0x100;
    else if (temp < 0x200) *arg3 = (0x200 - temp);
    else *arg3 = 0;
}
int32_t func_800035F8(uint32_t SFX_ID, u16 i){
    s8 valA;
    s16 valB;

    if((gActors[i].pos.x<-0x90)||(gActors[i].pos.x>=0x90)) return -1;
    if((gActors[i].pos.y<-0x60)||(gActors[i].pos.y>=0x60)) return -1;
    func_80003540(gActors[i].pos.x,gActors[i].pos.y,&valA,&valB);
    if(valB<128) return -1;
    else return SFX_Play_0(SFX_ID,valB,valA,0x81,0xFF,0);
}

int32_t func_800036C8(uint32_t SFX_ID, u16 i){
    s8 valA;
    s16 valB;

    if((gActors[i].pos.x<-383)||(gActors[i].pos.x>=384)) return -1;
    func_80003540(gActors[i].pos.x,gActors[i].pos.y,&valA,&valB);
    if(valB<128) return -1;
    else return SFX_Play_0(SFX_ID,valB,valA,0x81,0xFF,0);
}

int32_t func_80003778(uint32_t SFX_ID, u16 i){
    s8 valA;
    s16 valB;

    if((gActors[i].pos.x<-383)||(gActors[i].pos.x>=384)) return -1;
    func_80003540(gActors[i].pos.x,gActors[i].pos.y,&valA,&valB);
    if(valB<128) return -1;
    else return SFX_Play_0(SFX_ID,valB,valA,0x91,0xFF,0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/music/func_80003828.s")

int32_t func_800038C8(uint32_t SFX_ID, u16 i,u16 arg2){
    s8 valA;
    s16 valB;

    if((gActors[i].pos.x<-383)||(gActors[i].pos.x>=384)) return -1;
    func_80003540(gActors[i].pos.x,gActors[i].pos.y,&valA,&valB);
    if(valB<128) return -1;
    else return SFX_Play_0(SFX_ID,valB,valA,0xA1,0xFF,arg2);
}

void func_80003980(uint32_t arg0, uint16_t arg1) {
    SFX_Play_0(arg0, -1, -1, 0xC1, arg1, 0);
}

void func_800039B8(uint32_t SFX_ID,u32 arg1,u32 arg2){ //2 unused args?
    int i = SFX_Play_0(SFX_ID, -1, -1, 0x89, 0xFF, 0);
    D_8011CDF0[i]=127;
    D_8011CF18[i]=64;
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
