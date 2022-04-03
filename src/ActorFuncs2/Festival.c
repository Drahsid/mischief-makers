#include "common.h"

#ifdef NON_MATCHING
void func_8019B100_753880(uint16_t index){

  MODi(thisActor.vel.x_w,0,(int)(float)(gActors[index + 1].unk_0x12C._f * 2048.0));
  if ((thisActor.unk_0x16C._w & 1)) {
    thisActor.vel.x_w = gActors[index + 1].unk_0x130 * gActors[index + 1].unk_0x12C._f * 81920.0;
  }
  return;
}
#else
extern void func_8019B100_753880(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B100_753880.s")
#endif
void func_8019B208_753988(uint16_t x){
    func_8019B100_753880(x);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B230_7539B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B314_753A94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B468_753BE8.s")
#ifdef NON_MATCHING
void func_8019B60C_753D8C(uint16_t index){
    DebugText_PrintShortHexWhite((uint16_t)(D_800E3584>>0x10),thisActor.pos.x,0);
    if(D_800E3584&0xc0000) thisActor.flag^=0x20;
    else thisActor.actorState=0x20;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B60C_753D8C.s")
#endif
#ifdef NON_MATCHING
void func_8019B6A8_753E28(uint16_t index){
    DebugText_PrintShortHexWhite(D_800E3584>>0x10,thisActor.pos.x,0);
    if(D_800E3584&0xc0000) thisActor.actorState=16;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B6A8_753E28.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/Festival/func_8019B730_753EB0.s")

void func_8019B848_753FC8(uint16_t x){}

