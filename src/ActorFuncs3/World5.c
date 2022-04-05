#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6900_7854D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A69B4_785584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6A68_785638.s")
//instruction order?
/*
void func_801A6BEC_7857BC(uint16_t index){
    gPlayerActor.pos.x_w=gActors[index+1].pos.x_w;
    gPlayerPosXMirror._w=gActors[index+1].pos.x_w+gScreenPosCurrentX._w;
    gPlayerActor.pos.y_w=gActors[index+1].pos.y_w+0x1A0000;
    gPlayerPosYMirror._w=gPlayerActor.pos.y_w+gScreenPosCurrentY._w;
    gPlayerActor.pos.z_w=gActors[index+1].pos.z_w+1;
    gPlayerActor.flag3&=0x20;
}*/
extern void func_801A6BEC_7857BC(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6BEC_7857BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6C7C_78584C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6D5C_78592C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6DEC_7859BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6ED4_785AA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6F5C_785B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A6FF8_785BC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A70A4_785C74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A71FC_785DCC.s")

void func_801A72B8_785E88(uint16_t index){
    if(thisActor.vel.y_w>-0x80000)thisActor.vel.y_w-=0x8000;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7310_785EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A73D8_785FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A75F4_7861C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7908_7864D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7A08_7865D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7D7C_78694C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7EE8_786AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A7FF4_786BC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8084_786C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8164_786D34.s")

void func_801A8248_786E18(uint16_t index){
    MODi(thisActor.vel.x_w,0,0x8000);
}
void func_801A82A8_786E78(uint16_t index){
    MODi(thisActor.vel.y_w,0,0x8000);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8308_786ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A86FC_7872CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A87E8_7873B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8878_787448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A89C0_787590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8AA8_787678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8BFC_7877CC.s")

void func_801A8C4C_78781C(uint16_t index0,uint16_t index1){
    gActors[index1].pos.x=gActors[index0+16].pos.x;
    gActors[index1].pos.y=gActors[index0+16].pos.y;
    gActors[index1].pos.z_w=gActors[index0+17].pos.z_w+-1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A8CC4_787894.s")

uint16_t func_801A91C0_787D90(uint16_t x){
    uint16_t index=Actor_GetInactiveInRange(0x48,0x4b);
    if(index){
        ACTORINIT(index,0x1f05);
        thisActor.flag=2;
        thisActor.unk_0x150._w=x;
        if(Rand()&1) thisActor.unk_0x158._w=72;
        else thisActor.unk_0x158._w=4;
        func_801A8C4C_78781C(x,index);
    }
    return index;
}

uint32_t func_801A9278_787E48(uint16_t x){
    uint16_t index;
    for(index=0x48;index<0x4B;index++){
        if(thisActor.flag&0x2) return 0;
    }
    return 1;

}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A92D4_787EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A9340_787F10.s")
//grabbing General's big beam?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A93BC_787F8C.s")

void func_801A95C4_788194(uint16_t index){
    thisActor.pos.x=gActors[81].pos.x+28;
    thisActor.pos.y=gActors[81].pos.y-12;
    thisActor.pos.z=gActors[81].pos.z+2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A9628_7881F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A9814_7883E4.s")

void func_801A9ED8_788AA8(uint16_t x){
    ACTORINIT(79,0x1f04);
    gActors[79].flag=2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801A9F10_788AE0.s")

func_801AA024_788BF4(uint16_t x){
    func_8002A404(x,0x8000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA050_788C20.s")
/*
void func_801AA104_788CD4(uint16_t index){
    thisActor.flag|=0x10000;
    thisActor.flag&=~0x20000;
    thisActor.vel.y_w=0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA104_788CD4.s")
/*
void func_801AA15C_788D2C(uint16_t index){
    thisActor.flag|=0x20000;
    thisActor.flag&=~0x10000;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA15C_788D2C.s")
/*
void func_801AA1B0_788D80(uint16_t index){
    if(thisActor.flag3&0x40)thisActor.actorState=32;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA1B0_788D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA200_788DD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA2EC_788EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA3F8_788FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA46C_78903C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA66C_78923C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA824_7893F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AA944_789514.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AAAA0_789670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World5/func_801AAB64_789734.s")

void func_801AB184_789D54(uint16_t x){}

void func_801AB18C_789D5C(uint16_t x){}
