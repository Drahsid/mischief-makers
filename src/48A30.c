#include "common.h"

void func_80047E30(uint16_t x){}
#ifdef NON_MATCHING
void func_80047E38(uint16_t x){
    uint16_t mask;
    D_801370CC= D_801373E0.unk_0x20._lo;
    D_801370CC= D_801373E0.unk_0x24._lo;
    mask=gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A;
    gInputHistoryHold[0]= D_801373E0.unk_0x20._lo & mask;
    gInputHistoryPress[0]= D_801373E0.unk_0x24._lo & mask;
    D_801373E0.unk_0x20._w=0;
    D_801373E0.unk_0x24._w=0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80047E38.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80047ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80047F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80047FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_800480B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80048238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80048320.s")

void func_800483B4(uint16_t index){
    if(gActors[index].unk_0xD1==3)gActors[index].unk_0x150._w=600;
    D_800BE5F4=1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_80048408.s")

#pragma GLOBAL_ASM("asm/nonmatchings/48A30/func_800485AC.s")
