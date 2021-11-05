#include "actor.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014AF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800150FC.s")
/*
void func_80015174(uint16_t index){
    func_80014FD0(index,gActors[index].pos.x+gScreenPosCurrentX._hi&0xf);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800151D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800152C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800153A8.s")

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

    if ((D_80137458 & 0x10) == 0) {
        for (index = 0; index < ACTOR_COUNT1; index++) {
            if ((gActors[index].flag & ACTOR_FLAG_ACTIVE)) {
                func_800160EC(index);
                gActors[index].unk_0x98 &= ~(1 << 19);
            }
        }
        gPlayerPosXMirror._w = gActors[index].pos.x_w + gScreenPosCurrentX._w;
        gPlayerPosYMirror._w = gActors[index].pos.y_w + gScreenPosCurrentY._w;
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
        if( (gActors[index].flag & 2) && ((gActors[index].flag & 8)==0)){
            gActors[index].pos.x_w+=x;
            gActors[index].pos.y_w+=y;
            if((gActors[index].flag & 4)&&
            ((gActors[index].pos.x<-0xd0||gActors[index].pos.x>0xd0)||
            (gActors[index].pos.y<-0xa0||gActors[index].pos.y>0xa0)))
                gActors[index].flag=0;
        }
    }
}

