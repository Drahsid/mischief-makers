#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

s32 DebugText_Count;
TextTransform DebugText_TransformArray[40];
s32 DebugText_Time;
/*
void DebugText_Reset(void){
    u32 i;
    for(i=0;i<40;i++) DebugText_TransformArray[i].unk0x0=0;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Reset.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_SetData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintIntHex.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintInt.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintFloat.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintByteHex.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexWhite.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexBlack.s")
u64 DebugText_GetTime(void){
    u64 t =osGetTime();
    DebugText_Time = t;
    return t;
}
//#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_GetTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintDeltaTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintfTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Tick.s")
