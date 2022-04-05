#include "common.h"


#include "inttypes.h"
#include <ultra64.h>

//This script deals with the "Level clear" sequence.

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_80096B70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_80096E14.s")

#ifdef NON_MATCHING
const float D_800ED508=0.8f; //rodata
void func_8009705C(uint16_t index) {
    ACTORINIT(index,0X75);
    thisActor.actorState = 0x1000;
    thisActor.flag2 = 0x100;
    thisActor.flag = 11;
    thisActor.graphic = 0x800;
    thisActor.rgba.a = 0;
    thisActor.pos.x = 0xFFDF;
    thisActor.pos.y = 0xFFFC;
    thisActor.pos.z = 0x80;
    thisActor.unk_0x114 = D_800ED508;
    thisActor.unk_0x154._w = 0x6000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_8009705C.s")
#endif

void func_80097108(uint16_t index) {
    ACTORINIT(index,0X75);
    thisActor.actorState = 0x2000;
    thisActor.flag2 = 0x110;
    thisActor.flag = 11;
    thisActor.graphic = 0x1000;
    thisActor.rgba.a = 0;
    thisActor.pos.x = 0x1e;
    thisActor.pos.y = 0xFFD8;
    thisActor.pos.z = 0xFC80;
}

void func_800971A0(uint16_t index) {
    ACTORINIT(index,0X75);
    thisActor.actorState = 0x100;
    thisActor.flag2 = 0x900;
    thisActor.flag = 11;
    thisActor.graphic = 0x2800;
    thisActor.rgba.a = 0;
    thisActor.pos.x = 0x0;
    thisActor.pos.z = 0x80;
    thisActor.rgba.g = 0x50;
    thisActor.rgba.b = 0x70;
}

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_8009723C.s")

#ifdef NON_MATCHING
void func_800972DC(void) {
    ACTORINIT(80,0X75);
    gActors[80].flag2 = 0x900;
    gActors[80].flag = 3;
    gActors[80].graphic = 0x2d0;
    gActors[80].scaleX = 20.0;
    gActors[80].scaleY = 20.0;
    gActors[80].unk_0x18C._p = D_800D8588;
    gActors[80].pos.x_1 = 0;
    gActors[80].pos.y_1 = 0;
    gActors[80].pos.z_1 = 0x90;
    Actor_Shade(80, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_800972DC.s")
#endif

void func_80097384(uint16_t index) {
    ACTORINIT(index,0X75);
    thisActor.actorState = 0xC000;
    thisActor.flag2 = 0x900;
    thisActor.flag = 11;
    thisActor.graphic = 0xCE;
    thisActor.rgba.a = 0;
    thisActor.pos.x = 0x0;
    thisActor.pos.y = 0x0;
    thisActor.pos.z = 0x40;
    Actor_Shade(index, 127);
}

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_80097428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_80097574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/func_800977B8.s")
#ifdef NON_MATCHING
void LevelClear_SkipScene(void) {
    if (gButtonPress & gButton_ZTrig) {
        D_800D28E4 = 100;
        Actor_ZeroFlag_48_144();
        Actor_ZeroFlag_16_32();
        Actor_ZeroFlagRange(0x10, 0x30);
        Actor_ZeroFlagRange(0x90, 0xC0);
        Actor_ZeroFlag_192_199();
        func_800286C8();
        ACTORINIT(193,0x34);
        gActors[193].flag2 = 0x911;
        gActors[193].flag = 11;
        gActors[193].rgba.b = 0x40;
        gActors[193].unk_0x148 = 30.0;
        gActors[193].pos.x = 0;
        gActors[193].pos.y = 0;
        gActors[193].pos.z = 0xc0;
        gActors[193].graphic = 0x2d0;
        gActors[193].scaleX = 20.0;
        gActors[193].scaleY = 20.0;
        func_8005DFC8(0);
        D_800D16C4 = 0;
        SFX_StopAll();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/LevelClear_SkipScene.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/LevelClear/ActorTick_LevelClear.s")
