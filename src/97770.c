#include "common.h"
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80096B70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80096E14.s")
/*
void func_8009705C(u16 i){
    gActors[i].unk_0xD2=0x75;
    Actor_Spawn(i);
    gActors[i].unk_0xD0_h=0x1000;
    gActors[i].unk_0x94=0x100;
    gActors[i].flag=11;
    gActors[i].unk_0x84=0x800;
    gActors[i].rgba.a=0;
    gActors[i].pos.x=0xFFDF;
    gActors[i].pos.y=0xFFFC;
    gActors[i].pos.z=0x80;
    gActors[i].unk_0x154=0x6000;
    gActors[i].unk_0x114=0.8; //seen as rodata
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_8009705C.s")

void func_80097108(u16 i){
    gActors[i].unk_0xD2=0x75;
    Actor_Spawn(i);
    gActors[i].unk_0xD0_h=0x2000;
    gActors[i].unk_0x94=0x110;
    gActors[i].flag=11;
    gActors[i].unk_0x84=0x1000;
    gActors[i].rgba.a=0;
    gActors[i].pos.x=0x1e;
    gActors[i].pos.y=0xFFD8;
    gActors[i].pos.z=0xFC80;
}

void func_800971A0(u16 i){
    gActors[i].unk_0xD2=0x75;
    Actor_Spawn(i);
    gActors[i].unk_0xD0_h=0x100;
    gActors[i].unk_0x94=0x900;
    gActors[i].flag=11;
    gActors[i].unk_0x84=0x2800;
    gActors[i].rgba.a=0;
    gActors[i].pos.x=0x0;
    gActors[i].pos.z=0x80;
    gActors[i].rgba.g=0x50;
    gActors[i].rgba.b=0x70;
}

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_8009723C.s")
/*
void func_800972DC(void){
    gActors[80].unk_0xD2=0x75;
    Actor_Spawn(80);
    gActors[80].unk_0x94=0x900;
    gActors[80].flag=3;
    gActors[80].unk_0x84=0x2d0;
    gActors[80].unk_0xB4=20.0;
    gActors[80].unk_0xB8=20.0;
    gActors[80].unk_0x18C=&D_800D8588;
    gActors[80].pos.x_1=0;
    gActors[80].pos.y_1=0;
    gActors[80].pos.z_1=0x90;
    func_8002AEB4(80,0);
}*/


#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_800972DC.s")

void func_80097384(u16 i){
    gActors[i].unk_0xD2=0x75;
    Actor_Spawn(i);
    gActors[i].unk_0xD0_h=0xC000;
    gActors[i].unk_0x94=0x900;
    gActors[i].flag=11;
    gActors[i].unk_0x84=0xCE;
    gActors[i].rgba.a=0;
    gActors[i].pos.x=0x0;
    gActors[i].pos.y=0x0;
    gActors[i].pos.z=0x40;
    func_8002AEB4(i,127);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80097384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80097428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80097574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_800977B8.s")
/*
void func_80097968(void){
  if (gButtonPress & gButton_ZTrig) {
    D_800D28E4 = 100;
    Actor_ZeroFlag_0x30_0x90();
    Actor_ZeroFlag_0x10_0x20();
    Actor_ZeroFlagRange(0x10,0x30);
    Actor_ZeroFlagRange(0x90,0xc0);
    Actor_ZeroFlag_0xC0_0xC7();
    func_800286C8();
    gActors[193].unk_0xD2 = 0x34;
    Actor_Spawn(193);
    gActors[193].unk_0x94 = 0x911;
    gActors[193].flag = 11;
    gActors[193].rgba.b = 0x40;
    gActors[193].unk_0x148 = 30.0;
    gActors[193].pos.x = 0;
    gActors[193].pos.y = 0;
    gActors[193].pos.z = 0xc0;
    gActors[193].unk_0x84 = 0x2d0;
    gActors[193].unk_0xB4 = 20.0;
    gActors[193].unk_0xB8 = 20.0;
    func_8005DFC8(0);
    D_800D16C4 = 0;
    SFX_StopAll();
  }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80097968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/97770/func_80097A74.s")
