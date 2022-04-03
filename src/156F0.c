#include "common.h"

//update positions of actors.
void Actors_ApplyVelocity(void){
    uint16_t index;
    if(D_800BE6F8) D_800BE6F8--;
    if(D_800BE670){
        for(index=0;index<ACTOR_COUNT1;index++){
            if((thisActor.flag&2)&&(thisActor.flag&0x4000000)){
                thisActor.pos.x_w+=thisActor.vel.x_w;
                thisActor.pos.y_w+=thisActor.vel.y_w;
                thisActor.pos.z_w+=thisActor.vel.z_w;
            }
        }
    }
    else{
        for(index=0;index<ACTOR_COUNT1;index++){
            if((thisActor.flag&2)){
                thisActor.pos.x_w+=thisActor.vel.x_w;
                thisActor.pos.y_w+=thisActor.vel.y_w;
                thisActor.pos.z_w+=thisActor.vel.z_w;
            }
        }
    }
    gPlayerPosXMirror._w=gPlayerActor.pos.x_w+gScreenPosCurrentX._w;
    gPlayerPosYMirror._w=gPlayerActor.pos.y_w+gScreenPosCurrentY._w;
}


#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014FD0.s")
/*
void func_80015094(uint16_t index){
    if((thisActor.unk_0xA0&0xf ==0) &&(thisActor.unk_0xA0&0xC0)) func_80014FD0(index,16);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015094.s")
/*
void func_800150FC(uint16_t index){
    func_80014FD0(index,(thisActor.pos.x+gScreenPosCurrentX._hi&0xf)>>1);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800150FC.s")
/*
void func_80015174(uint16_t index){
    func_80014FD0(index,thisActor.pos.x+gScreenPosCurrentX._hi&0xf);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015174.s")
/*
void func_800151D8(uint16_t index){
    func_80014FD0(index,((thisActor.pos.x+gScreenPosCurrentX._hi&0xf)>>1) +8);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800151D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800152C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015330.s")

void func_800153A8(uint16_t index){
    if(thisActor.unk_0xA0==0) thisActor.flag3|=0x40;
    else func_80014FD0(index,0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800154F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_8001556C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800155E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_8001564C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800156C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800160EC.s")

#ifdef NON_MATCHING
// functionally matched, major regalloc differences, and pointer dereference for actor creates extra instructions
void func_80016CB4(void) {
    uint16_t index;

    if ((gPlayerManager.unk_0x78 & 0x10) == 0) {
        for (index = 0; index < ACTOR_COUNT1; index++) {
            if ((thisActor.flag & ACTOR_FLAG_ACTIVE)) {
                func_800160EC(index);
                thisActor.flag3 &= ~0x80000;
            }
        }
        gPlayerPosXMirror._w = gPlayerActor.pos.x_w + gScreenPosCurrentX._w;
        gPlayerPosYMirror._w = gPlayerActor.pos.y_w + gScreenPosCurrentY._w;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80016CB4.s")
#endif

void func_80016D94(){
    int32_t x,y;
    uint16_t index;
    x= gScreenPosNextX._w - gScreenPosCurrentX._w;
    y= gScreenPosNextY._w - gScreenPosCurrentY._w;
    for(index=1;index<ACTOR_COUNT1;index++){
        if( (thisActor.flag & ACTOR_FLAG_ACTIVE) && ((thisActor.flag & 8)==0)){
            thisActor.pos.x_w+=x;
            thisActor.pos.y_w+=y;
            if((thisActor.flag & 4)&&
            ((thisActor.pos.x<-0xd0||thisActor.pos.x>0xd0)||
            (thisActor.pos.y<-0xa0||thisActor.pos.y>0xa0)))
                thisActor.flag=0;
        }
    }
}

