

#include "common.h"

void func_8005C520(int8_t x, int8_t y){
    gPlayerActor.unk_0xDC|=0x40;
    D_801373E0.unk_0xA=x;
    D_801373E0.unk_0xB=y;
}

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C5E0.s")

int32_t ABS(int32_t x){
    if(x<0)x=-x;
    return x;
}

float FABS(float x){
    if(x<0)x=-x;
    return x;
}
#ifdef NON_MATCHING
uint32_t func_8005C708(uint32_t x){
    int32_t ret;
    uint8_t r = Rand();
    ret=r;
    if(x!=0)ret=r % x;
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C708.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/5D120/func_8005C774.s")

uint8_t func_8005C870(uint8_t x){
    if((x&0x30)==0x30)return x & 0xC0;
    return x;
}

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
