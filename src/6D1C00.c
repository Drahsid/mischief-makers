#include "common.h"
//"meet marina" funcs
#pragma GLOBAL_ASM("asm/nonmatchings/6D1C00/func_80192100_6D1C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6D1C00/func_801921D4_6D1CD4.s")


void func_80192418_6D1F18(uint16_t index){
    gActors[index].unk_0x98&=~0x00200600;
}

void func_80192460_6D1F60(uint16_t index0,uint16_t index1){
    gActors[index1].pos.x=gActors[index0+1].pos.x;
    gActors[index1].pos.y=gActors[index0+1].pos.y + 36;
    gActors[index1].pos.z_w=gActors[index0+1].pos.z_w;
    func_8007F9E0(index1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/6D1C00/func_801924F4_6D1FF4.s")

void func_80192C00_6D2700(uint16_t x){}
