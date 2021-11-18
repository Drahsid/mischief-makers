#include "actor.h"
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80081E38.s")
void func_80081FC8(uint16_t index){
    if(gActors[index].unk_0xD0_h) func_800819A8(index,D_800E2600);
}

void func_80082024(uint16_t index){
    Actor* actor;
    func_80081E38(index);
    actor = &gActors[index];
    actor->unk_0x98&= ~0x00200600;
}


#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80082088.s")
/*
void func_80082184(uint16_t i){
    func_80081E38(i);
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/82920/func_80082184.s")
