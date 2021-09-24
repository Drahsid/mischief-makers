#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

int32_t DebugText_Count;
TextTransform DebugText_TransformArray[40];
int32_t DebugText_Time;


#ifdef NON_MATCHING
void DebugText_Reset(void){
    uint32_t i;
    for(i=0;i<40;i++) DebugText_TransformArray[i].unk0x0=0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Reset.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_SetData.s")

#ifdef NON_MATCHING
void DebugText_PrintIntHex(int i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%08X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintIntHex.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintInt(int i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04d",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintInt.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintFloat(int f, int posX,int posY){
    char txt[80];
    sprintf(txt,"%8.4f",f);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintFloat.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintByteHex(uint16_t i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%02X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintByteHex.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintShortHexWhite(uint16_t i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04X",i);
    DebugText_SetData(txt,posX,posY,0XFF,0XFF,0XFF,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexWhite.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintShortHexBlack(uint16_t i, int posX,int posY){
    char txt[80];
    sprintf(txt,"%04X",i);
    DebugText_SetData(txt,posX,posY,D_800BE6B8._lo,D_800BE6B8._lo,D_800BE6B8._lo,0xff,1.0,1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexBlack.s")
#endif

uint64_t DebugText_GetTime(void){
    uint64_t t =osGetTime();
    DebugText_Time = t;
    return t;
}

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintDeltaTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintfTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Tick.s")
