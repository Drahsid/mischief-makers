#include "common.h"

#ifdef NON_MATCHING
void func_80192100_6D1C00(uint16_t index){
    thisActor.flag2|=0x11;
    thisActor.flag=3;
    func_8008105C(index,D_800E4698,D_800E45D0);
    thisActor.unk_0x178._p = D_800A574C;
    func_80081478(index,D_800E4698,0);
    func_80081790(index,D_800E57D4);
    func_800819A8(index,D_800E4698);
    thisActor.rgba.A = 0xfe;
    Actor_Shade(index,4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MeetMarina/func_80192100_6D1C00.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MeetMarina/func_801921D4_6D1CD4.s")

void func_80192418_6D1F18(uint16_t index){
    thisActor.flag3&=~0x00200600;
}

void func_80192460_6D1F60(uint16_t index0,uint16_t index1){
    gActors[index1].pos.x=gActors[index0+1].pos.x;
    gActors[index1].pos.y=gActors[index0+1].pos.y + 36;
    gActors[index1].pos.z_w=gActors[index0+1].pos.z_w;
    func_8007F9E0(index1);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MeetMarina/func_801924F4_6D1FF4.s")

void func_80192C00_6D2700(uint16_t x){}
