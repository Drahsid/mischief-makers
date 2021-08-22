#include "common.h"
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_8008C4A0(u32 x){}
void func_8008C4A8(u32 x){}
void func_8008C4B0(u32 x,u32 y, u32 z){}
void func_8008C4C0(u32 x){}
void func_8008C4C8(u32 x){}
void func_8008C4D0(u32 x){}
void func_8008C4D8(u32 x){}

void func_8008C4E0(u16 i){
    gActors[i].rgba.b=0;
    gActors[i].rgba.g=0;
    gActors[i].rgba.r=0;
    D_80137420=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CA90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CF10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D728.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D960.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D99C.s")

u32 func_8008DA24(u16 i){
    return func_8008D480(i);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DA4C.s")

void StartContinueMode(u16 i){
    if(gGameState==GAMESTATE_GAMEPLAY){
        gActors[i].flag=0;
        gActors[i].unk_0xD0_h=0;
        gGameState=GAMESTATE_CONTINUE;
        gGameSubState=0;
        gActors[i].unk_0xEC=0;
        gActors[i].unk_0xF0=0;
        gActors[i].unk_0xF4=0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/Check_for_player_death.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DE20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DEBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E3C0.s")
