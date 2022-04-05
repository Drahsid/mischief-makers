#include "common.h"
#ifdef NON_MATCHING
uint16_t func_800600F0(uint16_t i){
    uint16_t index=Actor_GetInactiveInRange(1,0x10);
    if(index){
        ACTORINIT(index,0x3C);
        thisActor.flag2|=0x309;
        thisActor.graphic=0x168;
        thisActor.unk_0x18C._p=D_8022D568;
        thisActor.pos.x_w=gActors[i].pos.x_w;
        thisActor.pos.y_w=gActors[i].pos.y_w;
        thisActor.unk_0xCE=7;
        thisActor.unk_0xDE=3;
        thisActor.unk_0xDF=0;
        thisActor.pos.z_w=gActors[i].pos.z_w;
        thisActor.unk_0x150._w=gActors[i].actorState_b[1];
        thisActor.unk_0x110=0.0;
    }
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/60CF0/func_800600F0.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/60CF0/func_800601FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/60CF0/func_8006098C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/60CF0/func_80060DB8.s")
