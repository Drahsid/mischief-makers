#include "BGM.h"
#include "actor.h"
#include "common.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>
//parses ints to base 10 equivalent
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CCE0.s")

/*
void func_8007CD68(uint16_t index,uint16_t arg1,int16_t x,int16_t y,uint16_t i,uint16_t j,uint32_t q){
    gActors[index].unk_0xD2=0x28;
    Actor_Spawn(index);
    gActors[index].flag|=10;
    gActors[index].pos.x=x;
    gActors[index].pos.y=y;
    gActors[index].unk_0x150._w=i;
    gActors[index].unk_0x154._w=arg1;
    gActors[index].unk_0x15C=q;
    gActors[index].unk_0x14C=j;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CD68.s")

void func_8007CE24(uint16_t index,uint16_t arg1,int16_t x,int16_t y,uint16_t i){
    gActors[index].unk_0xD2=0x28;
    Actor_Spawn(index);
    gActors[index].flag|=10;
    gActors[index].pos.x=x;
    gActors[index].pos.y=y;
    gActors[index].unk_0x150._w=i;
    gActors[index].unk_0x154._w=arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CEB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CFE0.s")

uint32_t func_8007D0DC(uint16_t x,void* p,uint16_t y,uint16_t z,uint16_t q){
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D384.s")

void func_8007D3EC(uint16_t index){
    if (128<gActors[index].rgba.a) gActors[index].rgba.a=0x90;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D438.s")

void func_8007D520(uint16_t index){
    gActors[index].flag=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D880.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007DB84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007DF44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EA14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EE14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EE70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EF58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F37C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F560.s")
