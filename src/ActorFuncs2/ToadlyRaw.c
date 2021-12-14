#include "common.h"

extern void func_801A2F34_75C3D4(uint16_t index, int16_t x,int16_t y,int16_t z,float scale);
extern uint16_t func_801A2894_75BD34(uint16_t index,int16_t x, int16_t y, uint16_t state);
//.bss
uint32_t D_801A4190,D_801A4194,D_801A4198,D_801A419C,D_801A41A0,D_801A41A4;
int16_t D_801A41A8,D_801A41AA,D_801A41AC,D_801A41AE,D_801A41B0,D_801A41B2,D_801A41B4,D_801A41B6;

void func_8019B100_7545A0(uint16_t x){}

//toad summons the thunder god. (taunts the player in JPN)
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B108_7545A8.s")

void func_8019B21C_7546BC(uint16_t x){
    gActors[112].actorState=3;
    gActors[112].vel.y_w=-0x38000;
}
#ifdef NON_MATCHING
void func_8019B240_7546E0(uint16_t index){
    if(thisActor.pos.x<gPlayerActor.pos.x) MODi(thisActor.vel.x_w,0x10000,0x1000);
    else MODi(thisActor.vel.x_w,-0x10000,0x1000);
    if(thisActor.vel.x_w>1) thisActor.flag&=~0x20;
    else thisActor.flag|=0x20;
    if(50-(Rand()%15)>thisActor.pos.y) MODi(thisActor.vel.y_w,0x10000,0x1000);
    else MODi(thisActor.vel.y_w,-0x10000,0x1000);
    gActors[113].pos.x=thisActor.pos.x;
    gActors[113].pos.y=thisActor.pos.y+14;
    gActors[113].pos.y=thisActor.pos.z+-1;
}
#else
extern void func_8019B240_7546E0(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B240_7546E0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B370_754810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B43C_7548DC.s")

void func_8019B740_754BE0(uint16_t index){
    thisActor.pos.x=gActors[112].pos.x;
    thisActor.pos.z=gActors[112].pos.z-1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B790_754C30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019B90C_754DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019BB0C_754FAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019BCD4_755174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019BED4_755374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C098_755538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C160_755600.s")

void func_8019C368_755808(uint16_t index){
    MODi(thisActor.vel.x_w,0,0x400);
    if(-0x680000<thisActor.vel.y_w) thisActor.vel.y_w+=-0x4400;
}

void func_8019C3E8_755888(uint16_t index){
    Actor* actorp;
    func_8019C368_755808(index);
    actorp =&thisActor;
    if((actorp->vel.y_w<0)&&(actorp->unk_0x98&0x20))actorp->actorState=80;
}

uint32_t func_8019C464_755904(uint16_t index){
    if(thisActor.unk_0x98&0x40){
        thisActor.actorState=64;
        thisActor.flag&=~0x8A80;
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C4D0_755970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C520_7559C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C5C8_755A68.s")
//toad's main behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019C608_755AA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019E55C_7579FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019E910_757DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019E99C_757E3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_8019EA28_757EC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A07CC_759C6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A0990_759E30.s")

void func_801A0A68_759F08(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A0A70_759F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A0D34_75A1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A0E80_75A320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1740_75ABE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1834_75ACD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A19D8_75AE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1B4C_75AFEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1CD8_75B178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1E64_75B304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A1FF0_75B490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A217C_75B61C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2308_75B7A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2494_75B934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2608_75BAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2738_75BBD8.s")

#ifdef NON_MATCHING
uint16_t func_801A2894_75BD34(uint16_t index,int16_t x, int16_t y, uint16_t state){
    uint16_t other;
    uint32_t flag;
    if(thisActor.flag&0x20) x=-x;
    other=Actor_GetInactiveInRange(0x90,0xc0);
    if(other){
        ACTORINIT(other,0x1306);
        gActors[other].unk_0x94=9;
        flag=0x20;
        if(thisActor.flag&0x20) flag=0;
        gActors[other].flag=flag+2;
        gActors[other].pos.x=thisActor.pos.x+x;
        gActors[other].pos.y=thisActor.pos.y+y;
        gActors[other].actorState=state;
        gActors[other].pos.z=thisActor.pos.z+16;
    }
    return other;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2894_75BD34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A29C8_75BE68.s")
#ifdef NON_MATCHING
void func_801A2F34_75C3D4(uint16_t index, int16_t x,int16_t y,int16_t z,float scale){
    Actor* actorp=&thisActor;
    uint16_t other = func_8003123C(&D_800E1380,actorp->pos.x+x,actorp->pos.y+y,1);
    if(other){
        gActors[other].unk_0x94=0x19;
        gActors[other].flag=3;
        gActors[other].graphic=0x188;
        gActors[other].unk_0x148=20.0;
        gActors[other].pos.z=actorp->pos.z+z;
        gActors[other].scaleX=scale;
        gActors[other].scaleY=scale;
        gActors[other].rotateZ=(float)(rand()&0xFF);
        gActors[other].rgba.a=255;
        gActors[other].unk_0x154._w=-10;
        gActors[other].unk_0x114=0.015;//rodata
        gActors[other].unk_0x110=0.03;//rodata
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A2F34_75C3D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/ToadlyRaw/func_801A3078_75C518.s")
