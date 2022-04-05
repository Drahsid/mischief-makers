

#include "common.h"

int32_t DebugText_Count;
TextTransform DebugText_TransformArray[40];
int32_t DebugText_Time;


void DebugText_Reset(void) {
    int16_t index;
    for (index = 0; index < 40; index++) {
        DebugText_TransformArray[index].Active = 0;
    }
}
#ifdef NON_MATCHING
void DebugText_SetData(uint8_t* TXT, int posX, int posY, uint8_t R, uint8_t G, uint8_t B, uint8_t A, float scaleX, float scaleY){
    uint8_t c;
    uint16_t i;
    if(DebugText_Count<41){
        DebugText_TransformArray[DebugText_Count].Active=1;
        DebugText_TransformArray[DebugText_Count].posX=posX;
        DebugText_TransformArray[DebugText_Count].posY=posY;
        DebugText_TransformArray[DebugText_Count].color.r=R;
        DebugText_TransformArray[DebugText_Count].color.g=G;
        DebugText_TransformArray[DebugText_Count].color.b=B;
        DebugText_TransformArray[DebugText_Count].color.a=A;
        DebugText_TransformArray[DebugText_Count].scaleX=scaleX;
        DebugText_TransformArray[DebugText_Count].scaleY=scaleY;
        for(i=0;i<80;i++){
            DebugText_TransformArray[DebugText_Count].text[i]=*TXT;
            c=*TXT++;
            if(c==0)break;
        }
        DebugText_Count++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_SetData.s")
#endif

void DebugText_PrintIntHex(int32_t i, int32_t posX, int32_t posY) {
    char txt[80];

    sprintf(txt, "%08X", i);
    DebugText_SetData(txt, posX, posY, gDebugBorW._lo, gDebugBorW._lo, gDebugBorW._lo, 0xff, 1.0, 1.0);
}

void DebugText_PrintInt(int32_t i, int32_t posX, int32_t posY) {
    char txt[80];

    sprintf(txt, "%04d", i);
    DebugText_SetData(txt, posX, posY, gDebugBorW._lo, gDebugBorW._lo, gDebugBorW._lo, 0xff, 1.0, 1.0);
}

void DebugText_PrintFloat(float f, int32_t posX, int32_t posY) {
    char txt[80];

    sprintf(txt, "%8.4f", (double)f);
    DebugText_SetData(txt, posX, posY, 0XFF, 0XFF, 0XFF, 0xff, 1.0, 1.0);
}


#ifdef NON_MATCHING
void DebugText_PrintByteHex(int16_t i, int32_t posX, int32_t posY) {
    char txt[80];

    sprintf(txt, "%02X", i);
    DebugText_SetData(txt, posX, posY, 0XFF, 0XFF, 0XFF, 0xff, 1.0, 1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintByteHex.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintShortHexWhite(int16_t i, int32_t posX, int32_t posY) {
    char txt[84];

    sprintf(txt, "%04X", (uint32_t)i);
    DebugText_SetData(txt, posX, posY, 0XFF, 0XFF, 0XFF, 0xFF, 1.0, 1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexWhite.s")
#endif

#ifdef NON_MATCHING
void DebugText_PrintShortHexBlack(int16_t i, int32_t posX, int32_t posY) {
    char txt[84];

    sprintf(txt, "%04X", (uint32_t)i);
    DebugText_SetData(txt, posX, posY, gDebugBorW._lo, gDebugBorW._lo, gDebugBorW._lo, 0xff, 1.0, 1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintShortHexBlack.s")
#endif

uint64_t DebugText_GetTime(void) {
    uint64_t t = osGetTime();
    DebugText_Time = t;
    return t;
}
#ifdef NON_MATCHING
const double D_800ED0C0=1.32;
const double D_800ED0C8=1000.0;
void DebugText_PrintDeltaTime(int posX, int posY){
    int32_t delta=osGetTime()-DebugText_Time;
    char txt[80];
    delta*=(D_800ED0C0/D_800ED0C8);
    sprintf(txt, "%03d", delta);
    DebugText_SetData(txt, posX, posY, gDebugBorW._lo, gDebugBorW._lo, gDebugBorW._lo, 0xff, 1.0, 1.0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintDeltaTime.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_PrintfTime.s")
#ifdef NON_MATCHING
void DebugText_Tick(void){
    TextTransform* T;
    Gfx* G = gDListHead;
    Sprite_Init(&G);
    Sprite_SetTransparent(0);
    Sprite_SetColor(gDebugBorW._lo,gDebugBorW._lo,gDebugBorW._lo,0xFF);
    Sprite_SetScale(0.0,1.0);
    Sprite_SetTransparent(1);
    T=DebugText_TransformArray;
    do{
        if(T->Active){
            Sprite_SetSize(strlen(T->text)+1,1);
            Sprite_SetPosition(T->posX+0xA0, 0x78-T->posY);
            Sprite_SetColor(T->color.r,T->color.g,T->color.b,T->color.a);
            Sprite_SetScale(T->scaleX,T->scaleY);
            Sprite_Update(&G,T->text);
        }
        T++;
    } while (T!=&DebugText_TransformArray[40]);
    DebugText_Count=0;
    Sprite_Finish(&G);
    gDListHead=G;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/DebugText/DebugText_Tick.s")
#endif