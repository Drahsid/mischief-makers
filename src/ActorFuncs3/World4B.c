#include "common.h"
extern UNK_TYPE D_801AC0DC_784A3C;
extern uint16_t* D_801ABEA4_784804[36]; //Leo Cloud words. Bad,Good,Bad,Good,Ect.

void func_801A6900_77F260(uint16_t x){}

void func_801A6908_77F268(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94=0x301;
    gActors[index].flag=3;
    gActors[index].pos.x=0;
    gActors[index].pos.y=0;
    gActors[index].pos.z=0x80;
    gActors[index].unk_0x84=0xE6;
    gActors[index].rgba.a=0x40;
    gActors[index].unk_0x18C=&D_801AC0DC_784A3C;
    gActors[index].scaleX=12.0;
    gActors[index].scaleY=12.0;
}

void func_801A69B0_77F310(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94=0x100;
    gActors[index].flag=3;
    gActors[index].unk_0x84=0x2004;
    gActors[index].rgba.a=0xF8;
    Actor_Shade(index,255);
    gActors[index].pos.x=0;
    gActors[index].pos.y=0xFFB0;
    gActors[index].pos.z=0x30;
}

void func_801A6A54_77F3B4(void) {}

void func_801A6A5C_77F3BC(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A6A64_77F3C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A6D0C_77F66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A6EA8_77F808.s")

void func_801A7048_77F9A8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7050_77F9B0.s")
//print Leo cloud text
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7230_77FB90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7538_77FE98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7688_77FFE8.s")
//spawn gem from Leo cloud. issue with stack?
#ifdef NON_MATCHING
void func_801A7838_780198(uint16_t index, uint16_t gemflag){
    uint16_t Gemindex;
    Actor* gemActor;
    gActors[index].flag=0;
    Gemindex=Gem_ActorSpawn(index,gemflag,0);
    if(Gemindex){
        gemActor=&gActors[Gemindex];
        gemActor->vel.x_w=gActors[index].vel.x_w/3;
        gemActor->vel.y_w=gActors[index].vel.y_w/3;
    }
    
}
#else
extern void func_801A7838_780198(uint16_t index, uint16_t gemflag);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7838_780198.s")
#endif
//Leo cloud behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A7948_7802A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A8254_780BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A8350_780CB0.s")
#ifdef NON_MATCHING
void func_801A83D8_780D38(uint16_t index){
    if(gActors[index].actorState==0){
        gActors[index].actorState=1;
        gActors[index].flag=3;
        gActors[index].unk_0x84=0x7004;
        gActors[index].vel.y_w=0x10000;
        gActors[index].rgba.a=0;
    }
    else if(gActors[index].actorState!=1) return;
    MODi(gActors[index].vel.y_w,0,0x800);
    MODi(gActors[index].rgba.a,255,1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A83D8_780D38.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A849C_780DFC.s")

void func_801A8604_780F64(){
    ACTORINIT(143,0x1E05);
    gActors[143].unk_0x94=0;
    gActors[143].flag=2;
    gActors[143].unk_0x84=0x2D0;
    gActors[143].pos.z=0xE0;
    gActors[143].unk_0x154._w=4;
    gActors[143].scaleX=20.0;
    gActors[143].scaleY=20.0;
}

void func_801A866C_780FCC(uint16_t x){
    gActors[143].actorState=1;
    gActors[143].unk_0x94=0xB11;
    gActors[143].flag=0xb;
    gActors[143].unk_0x18C=&D_800D8588;
    gActors[143].rgba.a=255;
    gActors[143].unk_0x150._w=0;
    gActors[143].unk_0x154._w=x;
    Actor_Shade(143,0);
}

void func_801A86D4_781034(uint16_t x){
    gActors[143].actorState=2;
    gActors[143].unk_0x94=0xB11;
    gActors[143].flag=0xb;
    gActors[143].unk_0x18C=&D_800D8588;
    gActors[143].rgba.a=0;
    gActors[143].unk_0x150._w=0;
    gActors[143].unk_0x154._w=x;
    Actor_Shade(143,0);
}
void func_801A8738_781098(void) {}

void func_801A8740_7810A0(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A8748_7810A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A88C4_781224.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A89E8_781348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A9098_7819F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801A93B8_781D18.s")

#ifdef NON_MATCHING
void func_801AA240_782BA0(uint16_t index,int16_t x,int16_t y,uint16_t i){
    uint16_t index2=func_80031284(i,x,y,1);
    if(index2){
        gActors[index2].unk_0x94=0x8110;
        gActors[index2].unk_0x148=0.0;
        gActors[index2].rgba.r=gActors[index].rgba.r;
        gActors[index2].rgba.g=gActors[index].rgba.g;
        gActors[index2].rgba.b=gActors[index].rgba.b;
    }
}
#else
extern void func_801AA240_782BA0(uint16_t index,int16_t x,int16_t y,uint16_t i);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AA240_782BA0.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AA2E4_782C44.s")

void func_801AA3A4_782D04(uint16_t index){
    ACTORINIT(index,0x1D);
    gActors[index].unk_0x94=0x1817;
    gActors[index].unk_0x84=0x262;
    gActors[index].pos.x=0;
    gActors[index].pos.y=0;
    gActors[index].pos.z=0xFE00;
    gActors[index].rgba.r=0x80;
    gActors[index].scaleX=8.0;
    gActors[index].rotateX=45.0;
}
extern void func_801AA440_782DA0(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AA440_782DA0.s")

void func_801AA590_782EF0(){
    func_801AA440_782DA0(0x81);
    func_801AA440_782DA0(0x82);
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AA5B8_782F18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AA644_782FA4.s")

void func_801AB354_783CB4(uint16_t index){
    MODi(gActors[142].pos.x,gActors[index].pos.x-16,2);
    MODi(gActors[142].pos.y,gActors[index].pos.y+32,2);
}

void func_801AB3E0_783D40(uint16_t index){
    MODi(gActors[index].rgba.r,63,1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AB440_783DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs3/World4B/func_801AB4CC_783E2C.s")
