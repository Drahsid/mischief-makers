#include "common.h"

struct RockStruct{ //used by the boulders for speed and scale.
    uint32_t unk_0x0, unk_0x4,unk_0x8,unk_0xC; //different aspects of velocity.
    float scale;
}; //sizeof 0x14
struct RockStruct D_801B4400_7BC2B0[2]={
    {0x30000,0x800,0x30000,0xE00,1.2},
    {0x14000,0x600,0x20000,0x600,1.6}
};


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B0900_7B87B0.s")

void func_801B09D4_7B8884(uint16_t index,int32_t a, int32_t b){
    MODi(thisActor.vel.x_w,a,b);
}
//if boulder bounces off wall.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B0A2C_7B88DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B0BBC_7B8A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B0DC4_7B8C74.s")



//"rolling rock" boulder behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B0E48_7B8CF8.s")
/*
void func_801B13C8_7B9278(uint16_t x){
    ACTORINIT(53,0x2708);
    gActors[53].pos.x=0x290-gScreenPosCurrentX._hi;
    gActors[53].pos.y=0xb90-gScreenPosCurrentY._hi;
    gActors[53].pos.z=0;
    gActors[53].unk_0xD8=1;
}*/
extern func_801B13C8_7B9278(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B13C8_7B9278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1438_7B92E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B15CC_7B947C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B16A0_7B9550.s")
//used by clancer in "rolling rock."
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1884_7B9734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B19A8_7B9858.s")
/*
void func_801B1A90_7B9940(uint16_t x,uint16_t y){
    uint16_t index=Actor_GetInactiveInRange(0x90,0xc0);
    if(index){
        ACTORINIT(index,9999);
        thisActor.pos.x=x-gScreenPosCurrentX._hi;
        thisActor.pos.y=y-gScreenPosCurrentY._hi;
        thisActor.pos.z=0xFFFF;
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1A90_7B9940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1B30_7B99E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1C58_7B9B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1E14_7B9CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B1FC0_7B9E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B209C_7B9F4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B21BC_7BA06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2330_7BA1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2410_7BA2C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2530_7BA3E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B26B8_7BA568.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2758_7BA608.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2860_7BA710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B28C4_7BA774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2C60_7BAB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B2F90_7BAE40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B3068_7BAF18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B31AC_7BB05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B31F4_7BB0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B32D8_7BB188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B338C_7BB23C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B349C_7BB34C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B39B4_7BB864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B3BD0_7BBA80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B3F8C_7BBE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs4/World4/func_801B42EC_7BC19C.s")
