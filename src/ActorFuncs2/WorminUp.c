#include "common.h"

//bss
uint16_t D_801A0D10;
int16_t D_801A0D12;

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019B100_73D090.s")

void func_8019B1F0_73D180(uint16_t x,uint16_t y,uint16_t z,uint16_t w){}
void func_8019B204_73D194(uint16_t x){}
void func_8019B20C_73D19C(uint16_t x){}
void func_8019B214_73D1A4(uint16_t x){}
void func_8019B21C_73D1AC(uint16_t x){}

extern func_8019B224_73D1B4(uint16_t index, uint16_t y);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019B224_73D1B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019B660_73D5F0.s")

void func_8019BAC0_73DA50(uint16_t x,uint16_t y){}

void func_8019BACC_73DA5C(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019BAD4_73DA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019BC64_73DBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019BE98_73DE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019BEDC_73DE6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C060_73DFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C120_73E0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C244_73E1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C49C_73E42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C710_73E6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C7CC_73E75C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019C9A4_73E934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019CDB8_73ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019CE34_73EDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019CF04_73EE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019CFFC_73EF8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D0B0_73F040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D14C_73F0DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D254_73F1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D3B0_73F340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D4A8_73F438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D5E4_73F574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D64C_73F5DC.s")
extern void func_8019D780_73F710(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019D780_73F710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019E654_7405E4.s")
//flag segments if dead.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019E738_7406C8.s")
//damage func
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019E7A4_740734.s")

void func_8019E918_7408A8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019E920_7408B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019E990_740920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019EA00_740990.s")

void func_8019EA6C_7409FC(uint16_t index){
    if(gPlayerActor.flag&0x20) gActors[index].unk_0x18C_w  &=~0x10;
    else gActors[index].unk_0x18C_w |=0x10;
    func_8019D780_73F710(index);
}

void func_8019EB10_740AA0(uint16_t x){
    SFX_Play_1(0xC0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019EB34_740AC4.s")

uint32_t func_8019EC28_740BB8(uint16_t index){
    if(gActors[index].unk_0x98&0x40){
        gActors[index].actorState=0x60;
        return 2;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019EC80_740C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019EEA0_740E30.s")

void func_8019F27C_74120C(uint16_t x){}

void func_8019F284_741214(uint16_t index){
    if(gActors[index].health<130) func_8019B224_73D1B4(index,0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019F2E0_741270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019F3F8_741388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/WorminUp/func_8019F538_7414C8.s")

void func_801A08D0_742860(uint16_t x){}
void func_801A08D8_742868(uint16_t x){}
