#include "common.h"

extern func_8019D0E4_75F644(uint16_t);
extern func_801A165C_763BBC(uint16_t index,int16_t x,int16_t y,uint16_t moleIndex);
#define ACTORTYPE_DIZZYSTAR 0x1102
//has its own "actorinit" struct, it seems.
struct MoleStruct{
/*0x00*/    uint16_t actorFeild_0x94;
/*0x02*/    uint16_t unk_0x2; //align
/*0x04*/    uint32_t flag;
/*0x08*/    float actorFeild_0x148;
/*0x0C*/    int16_t posZ;
/*0x0E*/    uint16_t unk_0xE; //align
/*0x10*/    int32_t velX;
/*0x14*/    uint32_t actorFeild_0x158;
/*0x18*/    uint32_t actorFeild_0x168;
/*0x1C*/    int32_t velY;
/*0x20*/    uint32_t actorFeild_0x15C;
/*0x24*/    uint32_t actorFeild_0x16C;
/*0x28*/    int32_t velZ;
/*0x2C*/    uint32_t actorFeild_0x174;
/*0x30*/    uint32_t actorFeild_0x160;
/*0x34*/    uint32_t actorFeild_0x150;
/*0x38*/    float scaleX;
/*0x3C*/    float actorFeild_0x110;
/*0x40*/    float actorFeild_0x118;
/*0x44*/    float scaleY;
/*0x48*/    float actorFeild_0x114;
/*0x4C*/    float actorFeild_0x11C;
/*0x50*/    RGBA32 color;
/*0x54*/    int32_t actorFeild_0x154;
/*0x58*/    uint32_t actorFeild_0x164;
/*0x5C*/    void* actorFeild_0xE8;
}; //sizeof 0x60
struct MoleStruct D_801A3050_7655B0[13];

struct DizzyStar{ //properties for concussion "stars"
    /*0x00*/    float scaleX;
    /*0x04*/    float scaleY;
    /*0x08*/    RGBA32 color;
    /*0x0C*/    uint16_t graphic;
    /*0x0E*/    uint16_t align;
}; //sizeof 0x10
struct DizzyStar D_801A2EAC_76540C[16];
uint16_t D_801A2EA0_765400[3]={0,0,0}; //actor indecies for "dizzy stars"

float D_801A2FAC_76550C[4][2]={{0.1,0.1},{0.2,0.2},{0.4,0.4},{0.8,0.8}};

func_8019B100_75D660(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B108_75D668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B248_75D7A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B288_75D7E8.s")
//spawn DizzyStars.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B308_75D868.s")

//kill DizzyStars
#ifdef NON_MATCHING
void func_8019B514_75DA74(uint16_t x){
    int16_t i;
    for(i=0;i++;i<3){
        gActors[D_801A2EA0_765400[i]].flag=0;
        gActors[D_801A2EA0_765400[i]].flag2=0;
    }
}
#else
extern void func_8019B514_75DA74(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B514_75DA74.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B56C_75DACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B76C_75DCCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019B9F4_75DF54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019BAE4_75E044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019BC80_75E1E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019BE78_75E3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019BFEC_75E54C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C1C4_75E724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C26C_75E7CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C314_75E874.s")

void func_8019C380_75E8E0(uint16_t index){
    MODi(thisActor.vel.x_w,0,0x2800);
}

void func_8019C3E0_75E940(uint16_t index){
    MODi(thisActor.vel.x_w,0,0x400);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C440_75E9A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C4B0_75EA10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C52C_75EA8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C5A8_75EB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C684_75EBE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C700_75EC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C838_75ED98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C980_75EEE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019C9A8_75EF08.s")
extern void func_8019CAA0_75F000(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019CAA0_75F000.s")

void func_8019CC40_75F1A0(uint16_t index){
    if(thisActor.flag&0x20){
        gActors[index+1].unk_0x130=-1.0;
        thisActor.unk_0x138=1.0;
    }
    else{
        gActors[index+1].unk_0x130=1.0;
        thisActor.unk_0x138=0.0;
    }
    thisActor.flag3&=~0x200600;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019CD08_75F268.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019CDD4_75F334.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019CF5C_75F4BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019D03C_75F59C.s")

void func_8019D0A4_75F604(uint16_t x) {
    func_8019CAA0_75F000(x);
    func_8019D0E4_75F644(x);
    func_8019CC40_75F1A0(x);
}
//main behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_8019D0E4_75F644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_801A0B68_7630C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_801A0C94_7631F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_801A0DF0_763350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_801A1340_7638A0.s")
//uses the MoleStruct
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/MoleyCow/func_801A165C_763BBC.s")
