#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80083FB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800840A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008412C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800842AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800843E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800844B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800846A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008486C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800848A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084974.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084D18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80084F38.s")

uint32_t func_80085108(uint16_t index){
    if((gActors[index].vel.y_w<1)&&(gActors[index].unk_0x98&0x20)){
        gActors[index].unk_0xD0_h=1;
        gActors[index].flag&= ~0x20000;
        gActors[index].flag|=0x10000;
        gActors[index].vel.x_w=0;
        gActors[index].vel.y_w=0;
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085194.s")

void func_800852CC(uint16_t x){
    func_80085108(x);
    func_80085194(x);
}

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085300.s")

void func_80085350(uint16_t index){
    if(gActors[index].unk_0x98&0x200){
        gActors[index].unk_0xD0_h=2;
        gActors[index].flag= 0x20003;
        gActors[index].vel.x_w=0;
        gActors[index].vel.y_w=0;
        SFX_ActorPanX(0x2f,index);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800853C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/Actor_Clanbomb_TickFuse.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800859C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085A4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085BAC.s")
extern float D_800E3DBC[8];
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085D00.s")

void func_80085E60(uint16_t index){
    float f=D_800E3DBC[gActors[index].unk_0xD8];
    gActors[index].ScaleX=f;
    gActors[index].ScaleY=f;
}

extern uint32_t D_800E3DE4[8][2];
/* regalloc?
void func_80085EB0(uint16_t index){
    gActors[index].unk_0xF8=D_800E3DE4[gActors[index].unk_0xD8][0];
    gActors[index].unk_0xFC=D_800E3DE4[gActors[index].unk_0xD8][1];
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085EB0.s")
extern int32_t D_80182020[64];
/*
void func_80085F08(uint16_t index){
    uint16_t i;
    for(i=0;i<64;i++) D_80182020[i]=-1;
    gActors[index].unk_0x174=0;
    gActors[index].unk_0x178=0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80085F78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008603C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800860FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800862CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800865BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80086B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/ActorTick_Clanbomb.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087568.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087D2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80087EAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800882E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088408.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008855C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800886E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800887B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800887F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80088E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80089084.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800891EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80089298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80089418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_800896AC.s")
//spawns the actor when digging
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/DiggingSpot_SpawnActor.s")
extern uint32_t* D_800E4440[6]; //common loot pools for digging spots.

//check if "digging spot" actor has unique loot or an index to the above.
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/DiggingSpot_SpawnPoolCheck.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80089A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_80089EF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008A0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008A32C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008A41C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008A50C.s")

//behavior for digging spots?
#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008A6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AA28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AB68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AD3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008AFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B548.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B7CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008B9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008BB64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008BC5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008BFB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008BFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008C038.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008C120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/84BB0/func_8008C304.s")
