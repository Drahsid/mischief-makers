#include "common.h"

void Text_SpawnAt(uint16_t index, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    ACTORINIT(index,0);
    thisActor.flag2 |= 0x800;
    thisActor.unk_0x188._w = 0;
    thisActor.pos.x = pos_x;
    thisActor.pos.y = pos_y;
    thisActor.pos.z = pos_z;
}

void Text_SpawnAt2(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    Text_SpawnAt(index, pos_x, pos_y, pos_z);
    thisActor.graphic = arg1;
}

void Text_SpawnLetter(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, uint8_t r, uint8_t g, uint8_t b) {
    Actor* actor;

    Text_SpawnAt(index, pos_x, pos_y, pos_z);
    actor = &thisActor;
    actor->graphicTime = 0;
    actor->graphic = arg1;

    if ((r | g | b)) {
        actor->rgba.r = r;
        actor->flag2 |= 0x10;
        actor->rgba.g = g;
        actor->rgba.b = b;
    }
}

void Text_SpawnIcon(uint16_t index, void* arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    Actor* actor;

    Text_SpawnAt(index, pos_x, pos_y, pos_z);
    actor = &thisActor;
    actor->graphicList = arg1;
    actor->graphicTime = 1;
}
//takes 16-bit color vales, returns 32-bit?
#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_ConvertColor.s")

void func_80027644(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, void* arg5) {
    Actor* actor;

    Text_SpawnAt2(index, arg1, pos_x, pos_y, pos_z);
    actor = &thisActor;
    actor->flag2 |= 0x200;
    actor->flag |= ACTOR_FLAG_UNK3;
    actor->unk_0x18C._p = arg5;
}

#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_PrintASCII.s") 

#ifdef NON_MATCHING
uint16_t Text_Print2Digits(uint16_t index, uint16_t N, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, int32_t arg5){
    uint16_t N2=0;
    for(N=N;9<N;N-=10) N2++;
    func_80027644(index,ALPHAINDEX(N2),pos_x,pos_y,pos_z,arg5);
    func_80027644(index+1,ALPHAINDEX(N),pos_x+9,pos_y,pos_z,arg5);
    return index+2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_Print2Digits.s")
#endif
#ifdef NON_MATCHING
uint16_t Text_Print3Digits(uint16_t index, uint16_t N, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, int32_t arg5){
    uint16_t N2=0;
    uint16_t N1=0;
    for(N=N;99<N;N-=100) N1++;
    for(N=N;9<N;N-=10) N2++;
    func_80027644(index,ALPHAINDEX(N1),pos_x,pos_y,pos_z,arg5);
    func_80027644(index+1,ALPHAINDEX(N2),pos_x+9,pos_y,pos_z,arg5);
    func_80027644(index+2,ALPHAINDEX(N),pos_x+18,pos_y,pos_z,arg5);
    return index+3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_Print3Digits.s")
#endif
//all text in Japanese is monospaced(?)
#ifndef VER_JPN
#ifdef NON_MATCHING
uint16_t Text_GetWidth(uint16_t* arg0) {
    if (ALPHA_LOWER_A > *arg0)
        return 6;
    if (*arg0 == 0xC000)
        return 7;
    return D_800D16AA[*arg0];//wrong lookup. need to find the real address.
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_GetWidth.s")
#endif
#ifdef NON_MATCHING
uint16_t Text_getKerning(uint16_t* TXT){
    return Text_GetWidth(TXT)+Text_GetWidth(TXT+1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_getKerning.s")
#endif
#endif

uint16_t Text_ZeroFlagActors(uint16_t index, uint16_t* TXT){
    uint16_t C = *TXT;
    while(C!=ALPHA_NULL){
        if(C)gActors[index++].flag=0;
        C=*++TXT;
    }
    return index;
}
//TODO: add #ifdef for monospace japanese
uint16_t Text_PrintAlphaAt(uint16_t index, uint16_t* TXT, uint16_t pos_x, uint16_t pos_y,uint16_t pos_z){
    uint16_t C = *TXT;
    while(C!=ALPHA_NULL){
        if(C){
            Text_SpawnAt(index, pos_x, pos_y, pos_z);
            thisActor.flag|=8;
            gActors[index++].graphic = ALPHAINDEX(*TXT);
#ifdef VER_JPN
        }
        pos+=16;
#else            
            pos_x+= Text_getKerning(TXT);
        }
        else pos_x+=14;
#endif
        C=*++TXT;
    }
    return index;
}

uint16_t Text_PrintAlphaAtColor(uint16_t index,uint16_t *TXT,uint16_t pos_x,uint16_t pos_y,uint16_t pos_z,uint8_t r,uint8_t g,uint8_t b){
    uint16_t C = *TXT;
    while(C!=ALPHA_NULL){
        if(C){
            Text_SpawnAt(index, pos_x, pos_y, pos_z);
            thisActor.flag|=8;
            thisActor.graphic = ALPHAINDEX(*TXT);
                if ((r | g | b)) {
                    thisActor.rgba.r = r;
                    thisActor.flag2 |= 0x10;
                    thisActor.rgba.g = g;
                    thisActor.rgba.b = b;
                }
            index++;
#ifdef VER_JPN
        }
        pos+=16;
#else            
            pos_x+= Text_getKerning(TXT);
        }
        else pos_x+=14;
#endif
        C=*++TXT;
    }
    return index;
}

#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_PrintAlphaAtColorScale.s")

#pragma GLOBAL_ASM("asm/nonmatchings/text/Text_PrintAlphaAt2.s")

uint16_t Text_PrintAlphaAt3(uint16_t index, uint16_t* TXT, uint16_t pos_x, uint16_t pos_y,uint16_t pos_z){
    uint16_t C = *TXT;
    while(C!=ALPHA_NULL){
        if(C){
            Text_SpawnAt(index, pos_x, pos_y, pos_z);
            thisActor.flag|=8;
            thisActor.graphic = ALPHAINDEX(*TXT);
        }
        else thisActor.flag=0;
        index++;
        C=*++TXT;
        pos_x+=16;
    }
    return index;
}

#pragma GLOBAL_ASM("asm/nonmatchings/text/func_80028260.s")