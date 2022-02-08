#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192100_713630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192168_713698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801921DC_71370C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192430_713960.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192478_7139A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192530_713A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801925A4_713AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192640_713B70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192950_713E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801929C8_713EF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192AB8_713FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192BD8_714108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80192FF8_714528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801939AC_714EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80193A58_714F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80193AF4_715024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80193E88_7153B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80193F84_7154B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801940F0_715620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801941A8_7156D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80194304_715834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801943D8_715908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801944E0_715A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801946CC_715BFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801948BC_715DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80194B84_7160B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801950D4_716604.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_8019528C_7167BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80195354_716884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80195854_716D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_801958C8_716DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80195948_716E78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80195A00_716F30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80195FB0_7174E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_8019603C_71756C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_8019613C_71766C.s")
extern void func_80196A0C_717F3C(uint16_t,uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80196A0C_717F3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80196B28_718058.s")

void func_80196BFC_71812C(uint16_t index){
    if(thisActor.vel.x_w>0x20000) func_80196A0C_717F3C(index,0);
}
void func_80196C60_718190(uint16_t index){
    if(thisActor.vel.x_w<-0x20000) func_80196A0C_717F3C(index,0);
}
void func_80196CC0_7181F0(uint16_t index){
    if(thisActor.vel.x_w>0x20000) func_80196A0C_717F3C(index,64);
}

void func_80196D24_718254(uint16_t index){
    if(thisActor.vel.x_w>0x20000) func_80196A0C_717F3C(index,128);
}

void func_80196D88_7182B8(uint16_t index){
    if(thisActor.vel.x_w<-0x20000) func_80196A0C_717F3C(index,64);
}
void func_80196DE8_718318(uint16_t index){
    if(thisActor.vel.x_w<-0x20000) func_80196A0C_717F3C(index,128);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80196E48_718378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_8019706C_71859C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_8019715C_71868C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80197480_7189B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/General/func_80197514_718A44.s")

void func_80197B84_7190B4(uint16_t index){
    if(thisActor.actorState==0){
        thisActor.actorState++;
        thisActor.flag2=0x100;
        thisActor.flag=3;
        thisActor.graphic=0x168;
        Actor_Shade(index,127);
        thisActor.rgba.a=0xA0;
        thisActor.vel.z_w=0xC0000;
    }
}
