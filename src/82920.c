#include "actor.h"
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081E38.s")
void func_80081FC8(uint16_t index){
    if(gActors[index].actorState) func_800819A8(index,D_800E2600);
}

void func_80082024(uint16_t index){
    Actor* actor;
    func_80081E38(index);
    actor = &gActors[index];
    actor->flag3&= ~0x00200600;
}

#ifdef NON_MATCHING
void func_80082088(uint16_t index){
  if (index == 0x40) gActors[64].pos.z = 0x10;
  if (index == 0x50) gActors[80].pos.z = 0xfeff;
  if (index == 0x60) gActors[96].pos.z = 0xff7f;
  func_80081FC8(index);
  if (gActors[index].actorState == 0) {
    func_80081D20(index);
    gActors[index].actorState++;
  }
  func_80082024(index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80082088.s")
#endif
void func_80082184(uint16_t i){
    func_80081E38(i);
}

