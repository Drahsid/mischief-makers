#include "common.h"

uint8_t (*D_800C7CD0[16])(int16_t,int16_t)={
    func_800128E0,func_800128F0,func_80012944,func_800128E0,
    func_800128E0,func_80012970,func_800128E0,func_800128E0,
    func_800128E0,func_800129C8,func_80012A24,func_800128E0,
    func_800128E0,func_80012A58,func_800128E0,func_800128E0
};

uint8_t func_800128E0(int16_t x, int16_t y) {
    return 255;
}

#ifdef NON_MATCHING
uint8_t func_800128F0(int16_t x, int16_t y) {
    if (((x & 0xf)) >> 1 + 8 <= (y & 0xf)) return 0;
    return 255;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_800128F0.s")
#endif

uint8_t func_80012944(int16_t x, int16_t y) {
    if((x&0xf)>(y&0xf)) return 255;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_800129C8.s")

#ifdef NON_MATCHING
uint8_t func_80012A24(uint32_t arg0, uint32_t arg1) {
    if ((arg1 & 0xF) < (0xF - (arg0 & 0xF))) return 0xff;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012A24.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012A58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012B28.s")

uint8_t func_80012B88(uint8_t i, int16_t x, int16_t y){
    return D_800C7CD0[i&15](gScreenPosCurrentX._hi+x,gScreenPosCurrentY._hi+y)&i;
}

uint8_t func_80012C04(int16_t x, int16_t y){
    return func_80012B88(func_80012AB4(x,y),x,y);
}
