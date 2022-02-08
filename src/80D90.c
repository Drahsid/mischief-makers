#include "common.h"

void func_80080190(uint16_t index){
    thisActor.flag3&=~0x200600;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800801D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800805B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800808D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80080FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_8008105C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800816AC.s")
#ifdef NON_MATCHING
void func_80081720(uint16_t index, int16_t* p, uint32_t flag){
    int16_t s=*p;
    while(s!=0x7FFF){
        p+=5;
        gActors[s+index].flag&=-flag+1;
        s=*p;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_80081720.s")
#endif
void func_80081790(uint16_t index, void*p){
    thisActor.unk_0x174=(uint32_t)p;
    thisActor.unk_0x16C._w=0;
    thisActor.unk_0x124=0.0;
    thisActor.unk_0x11C=0.0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800817D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800818C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/80D90/func_800819A8.s")

void func_80081CBC(uint32_t x, uint32_t y){}

void func_80081CC8(uint32_t x, uint32_t y){}

void func_80081CD4(uint32_t x, uint32_t y,uint32_t z){}

void func_80081CE4(uint32_t x, uint32_t y){}

void func_80081CF0(uint32_t x, uint32_t y){}

void func_80081CFC(uint32_t x, uint32_t y){}

void func_80081D08(uint32_t x, uint32_t y){}

