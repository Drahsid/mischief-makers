#include "BGM.h"
#include "common.h"

//parses ints to base 10 equivalent
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CCE0.s")

/*
void func_8007CD68(uint16_t index,uint16_t arg1,int16_t x,int16_t y,uint16_t i,uint16_t j,uint32_t q){
    ACTORINIT(index,0x28);
    thisActor.flag|=10;
    thisActor.pos.x=x;
    thisActor.pos.y=y;
    thisActor.unk_0x150._w=i;
    thisActor.unk_0x154._w=arg1;
    thisActor.unk_0x15C=q;
    thisActor.unk_0x14C=j;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CD68.s")

void func_8007CE24(uint16_t index,uint16_t arg1,int16_t x,int16_t y,uint16_t i){
    ACTORINIT(index,0x28);
    thisActor.flag|=10;
    thisActor.pos.x=x;
    thisActor.pos.y=y;
    thisActor.unk_0x150._w=i;
    thisActor.unk_0x154._w=arg1;
}
//spawn dialouge portait?
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CEB8.s")
//has 7 args sometimes?
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007CFE0.s")
//this is wherein the japanese version text would appear over actors' heads (i.e. Migen Jr)
//0x8007CECC in JPN
uint16_t ActorSpawn_JPNSpeechBox(uint16_t i,uint16_t* txt,int16_t x,int16_t y,int16_t z){
    #ifdef VER_JPN
    uint16_t index= Actor_GetInactiveInRange(140,144);
    if(index){
        ACTORINIT(index,ACTORTYPE_TEXTBUBBLE);
        thisActor.flag2=0x901;
        thisActor.flag=2;
        thisActor.rgba.a=0;
        thisActor.unk_0x114=z&0x7FFF;
        thisActor.unk_0x118=z&0x8000;
        thisActor.pos.z_w=0x80000;
        thisActor.unk_0x158._w=x;
        thisActor.pos.x=x;
        thisActor.unk_0x15C._w=y;
        thisActor.pos.y=y;
        thisActor.scaleX=0.0;
        thisActor.scaleY=0.0;
        thisActor.scaleX=0.0;
        thisActor.unk_0x150._w=txt;
        thisActor.unk_0x154._w=i;
    }
    return index;
    #else
    return 0;
    #endif
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D0F4.s")

uint16_t func_8007D1E8(uint16_t i,uint16_t* p,int16_t x,int16_t y,uint16_t z,void* r){
    uint16_t index = ActorSpawn_JPNSpeechBox(i,p,x,y,z);
    if(index){
        thisActor.flag2|= 0x200;
        thisActor.flag2&= ~0x0100;
        if(r) thisActor.unk_0x18C._p=r;
        else thisActor.unk_0x18C._p=&D_800D9AE4;
    }
    return index;
}
//wrong stack size?
#ifdef NON_MATCHING
uint16_t func_8007D290(uint16_t i){
    Actor* actorp;
    uint16_t index = Actor_GetInactiveInRange_144_192();
    if(index){
        ACTORINIT(index,0x34);
        actorp=&gActors[i];
        if(actorp->unk_0x18C) thisActor.flag2=0xA00;
        else thisActor.flag2=0x800;
        thisActor.flag=3;
        thisActor.pos.z_w=actorp->pos.z_w+1;
        thisActor.unk_0x18C=actorp->unk_0x18C;
        if(index<i) thisActor.unk_0x148=0.0;
        else thisActor.unk_0x148=1.0;
    }
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D290.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D384.s")

void func_8007D3EC(uint16_t index){
    if (128<thisActor.rgba.a) thisActor.rgba.a=0x90;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D438.s")

void func_8007D520(uint16_t index){
    thisActor.flag=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007D880.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007DB84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007DF44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EA14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EE14.s")
//regalloc?
#ifdef NON_MATCHING
uint16_t func_8007EE70(uint32_t i,int32_t x,int32_t y,int32_t z,float scalex,float scaley){
    uint16_t index = Actor_GetInactiveInRange_144_192();
    if(index){
        ACTORINIT(index,0x34);
        thisActor.flag2=i&0xDFFF;
        thisActor.flag=3;
        thisActor.graphic=0x2D0;
        thisActor.rgba.a=0xC0;
        thisActor.pos.x_w=x;
        thisActor.pos.y_w=y;
        thisActor.pos.z_w=z;
        thisActor.scaleX=scalex;
        thisActor.scaleY=scaley;
        if(i&0x2000) thisActor.unk_0x148=1.0;
        else thisActor.unk_0x148=0.0;
    }
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EE70.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007EF58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F37C.s")
//actor tick for japan-only speech bubbles
#pragma GLOBAL_ASM("asm/nonmatchings/7D8E0/func_8007F560.s")
