#include "common.h"

#ifdef NON_MATCHING
void func_80081D20(uint16_t i){
  uint32_t index=i;
  Actor_Spawn(i);
  func_8008105C(index,D_800E2600,D_800E25B0);
  thisActor.unk_0x178._p=D_800E31EC;
  func_80081478(index,D_800E2600,1);
  func_80081790(index,&D_800E334C);
  func_800819A8(index,D_800E2600);
  gActors[index+1].flag|=1;
  gActors[index+5].flag|=1;
  gActors[index+7].flag|=1;
  gActors[index+9].flag|=1;
  gActors[index+11].flag|=1;
  gActors[index+13].flag|=1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081D20.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081E38.s")
void func_80081FC8(uint16_t index){
    if(thisActor.actorState) func_800819A8(index,D_800E2600);
}

void func_80082024(uint16_t index){
    Actor* actor;
    func_80081E38(index);
    actor = &thisActor;
    actor->flag3&= ~0x00200600;
}

#ifdef NON_MATCHING
void ActorTick_42(uint16_t index){
  if (index == 0x40) thisActor.pos.z = 0x10;
  if (index == 0x50) thisActor.pos.z = -0x101;
  if (index == 0x60) thisActor.pos.z = -0x81;
  func_80081FC8(index);
  if (thisActor.actorState == 0) {
    func_80081D20(index);
    thisActor.actorState++;
  }
  func_80082024(index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82920/ActorTick_42.s")
#endif
void func_80082184(uint16_t i){
    func_80081E38(i);
}

