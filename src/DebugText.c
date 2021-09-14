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

/*
void DebugText_PrintIntHex(int i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%08X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintIntHex.s")
/*
void DebugText_PrintInt(int i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04d",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintInt.s")
/*
void DebugText_PrintFloat(int f, int posX,int posY){
    char txt[80];
    sprintf(txt,"%8.4f",f);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintFloat.s")
/*
void DebugText_PrintByteHex(u16 i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%02X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintByteHex.s")
/*
void DebugText_PrintShortHexWhite(u16 i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04X",i);
    DebugText_SetData(txt,posX,posY,0XFF,0XFF,0XFF,0xff,1.0,1.0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexWhite.s")
/*
void DebugText_PrintShortHexBlack(u16 i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexBlack.s")

u64 DebugText_GetTime(void){
    u64 t =osGetTime();
    DebugText_Time = t;
    return t;
}

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintDeltaTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintfTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Tick.s")
