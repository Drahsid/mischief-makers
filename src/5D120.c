#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C5E0.s")

int32_t func_8005C6D0(int32_t x){
    if(x<0)x=-x;
    return x;
}

float func_8005C6E4(float x){
    if(x<0)x=-x;
    return x;
}
/*
int32_t func_8005C708(int32_t x){
    int32_t ret = Rand();
    if(x!=0)ret=ret % x;
    return ret;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C708.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C774.s")
/*
uint8_t func_8005C870(uint8_t x){
    if(x&0x30==0x30)return x & 0xC0;
    return x;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C8A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005CA34.s")

int16_t func_8005CA98(){
    return D_800BE590;
}

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005CAA8.s")

uint8_t func_8005D1B0(uint16_t index){
    return gActors[index].unk_0xDF&3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005D1E8.s")
uint16_t func_8005D338(uint16_t index){
    return gActors[index].unk_0x172&0x1FFF;
}
/*uint32_t func_8005D370(uint16_t index, int32_t x){
    uint16_t b=func_8005D338(index);
    uint16_t a=x;
    if(x!=b) gActors[index].unk_0x170_w = a;
    return a!=b;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005D370.s")
void func_8005D3D8(uint16_t index){
    gActors[index].unk_0x172&=0x1fff;
}

uint16_t func_8005D418(uint16_t index){
    return gActors[index].unk_0x172&0xA000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005D450.s")
