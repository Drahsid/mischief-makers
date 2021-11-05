#include "SFX.h"
#include "common.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

void func_8008C4A0(uint32_t x) {}
void func_8008C4A8(uint32_t x) {}
void func_8008C4B0(uint32_t x, uint32_t y, uint32_t z) {}
void func_8008C4C0(uint32_t x) {}
void func_8008C4C8(uint32_t x) {}
void func_8008C4D0(uint32_t x) {}
void func_8008C4D8(uint32_t x) {}

void func_8008C4E0(uint16_t index) {
    gActors[index].rgba.b = 0;
    gActors[index].rgba.g = 0;
    gActors[index].rgba.r = 0;
    D_80137420 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CA90.s")
/*
void func_8008CC00(void){
    D_800BE5F4=5;    
    gPlayerActor.pos.x=gActors[16].pos.x;
    gPlayerActor.pos.y=gActors[16].pos.y;
    gPlayerPosXMirror._hi = gScreenPosCurrentX._hi+ gActors[16].pos.x;
    gPlayerPosYMirror._hi = gScreenPosCurrentY._hi+ gActors[16].pos.y;
    gPlayerActor.flag= gPlayerActor.flag & ~0x20 | gActors[16].flag & 0x20;
    D_800D294C=0;
    gActors[16].flag=0;
    gActors[16].unk_0xD0_h=0;
    
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CDC4.s")

void func_8008CF10(uint16_t index){
    gActors[index].unk_0xAE=8;
    gActors[index].unk_0xB0=-14;
    gActors[index].unk_0xAA=-8;
    gActors[index].unk_0xAC=8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CF60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D128.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D39C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D510.s")

void func_8008D728(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D958.s")

void func_8008D960(uint16_t index){
    if(func_8008D418(index)==0)func_8008CF10(index);
}
void func_8008D99C(uint16_t index){
    if(func_8008D418(index)==0){
        func_8008CF10(index);
        if(gActors[index].unk_0x118==0x0)func_8008CF60(index);
        }
}

uint32_t func_8008DA24(uint16_t arg0) {
    return func_8008D480(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DA4C.s")

void StartContinueMode(uint16_t index) {
    if (gGameState == GAMESTATE_GAMEPLAY) {
        gActors[index].flag = 0;
        gActors[index].unk_0xD0_h = 0;
        gGameState = GAMESTATE_CONTINUE;
        gGameSubState = 0;
        gActors[index].unk_0xEC = 0;
        gActors[index].unk_0xF0 = 0;
        gActors[index].unk_0xF4 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/Check_For_Player_Death.s")

void func_8008DE20(uint16_t x){}

void func_8008DE28(uint16_t x){}

void func_8008DE30(uint16_t index){
    Actor* actorp;
    SFX_Stop(SFX_MARINA_OW1);
    SFX_Stop(SFX_MARINA_YELL1);
    actorp = &gActors[index];
    if(actorp->unk_0xF0>-0x68000) actorp->unk_0xF0-=0x3200;
    if(actorp->pos.y<-0x100) actorp->unk_0xD0_h=64;
}

void func_8008DEBC(uint16_t index){
    if(0x60<D_800D28E4) gActors[index].flag = 0;
    else D_800D28FC |= 0x200;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E3C0.s")
