#include "common.h"
//no .bss - seems the values are stored in the dog's actor segments?

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019B100_749CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019B184_749D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019B1E4_749D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019B248_749DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019B480_74A030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019BB60_74A710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019BC9C_74A84C.s")

void func_8019BD00_74A8B0(uint16_t x){}
void func_8019BD08_74A8B8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019BD10_74A8C0.s")

void func_8019BD38_74A8E8(uint16_t x){}
void func_8019BD40_74A8F0(uint16_t x){}
void func_8019BD48_74A8F8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019BD50_74A900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019BF78_74AB28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019C29C_74AE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019C3F4_74AFA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019C6A4_74B254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019E3C0_74CF70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019E410_74CFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019E600_74D1B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019E710_74D2C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019EAE4_74D694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019F618_74E1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_8019FE50_74EA00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A047C_74F02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A04F0_74F0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A05E8_74F198.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A0948_74F4F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A0C8C_74F83C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A0FC4_74FB74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A14A0_750050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A16F4_7502A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A1974_750524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A1D48_7508F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A1DE8_750998.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A1E44_7509F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A1FB8_750B68.s")
#ifdef NON_MATCHING
uint32_t func_801A202C_750BDC(uint16_t x){
    return func_8002877C(x)!=0;
}
#else
extern uint32_t func_801A202C_750BDC(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A202C_750BDC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A206C_750C1C.s")
#ifdef NON_MATCHING
uint32_t func_801A20FC_750CAC(uint16_t index){
    if((0<thisActor.vel.y_w)&&(thisActor.unk_0x98&0x10))return 1;
    return 0;
}
#else
extern uint32_t func_801A20FC_750CAC(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A20FC_750CAC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2170_750D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2234_750DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A23F8_750FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2558_751108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A269C_75124C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2828_7513D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2A44_7515F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ChillyDog/func_801A2BCC_75177C.s")
