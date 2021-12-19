#include "common.h"

#ifdef NON_MATCHING
uint32_t func_8004F2B0(uint16_t index){
    if(D_801370CE&gButton_B){
        thisActor.flag&=~0X4040;
        thisActor.unk_0x140=func_80048C28(0);
        if(D_801373D8&~0x80) return 2;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F2B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F514.s")
//regalloc. redo branching?
#ifdef NON_MATCHING
void func_8004F5B0(uint16_t index){
    if (thisActor.unk_0x142 == 0) thisActor.unk_0x142 = 1;
    else if (thisActor.unk_0x142 != 8) thisActor.unk_0x142 = 0;
    else thisActor.unk_0x142 = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F5B0.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F614.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FB30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FC68.s")
//main shake function?
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004FDF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800500B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005060C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005074C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800508F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800509C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80050F3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80051324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80051C48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052004.s")

void func_80052780(uint16_t x,uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005278C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800528F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80052CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800536CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005396C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80053F34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800541B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005457C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005498C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80054FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800551F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800553EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005544C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800554AC.s")
void func_8005552C(uint16_t x,uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800558F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80055F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800562EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800569AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80056CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80056F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005701C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057268.s")

int32_t Actor_AddHP(uint16_t index, int16_t x){
 if(thisActor.health<0) return -1;
 thisActor.health+=x;
 if(thisActor.health>3000){
     thisActor.health=3000;
     return 2;
 }
 return 1;
}
#ifdef NON_MATCHING
int32_t func_8005739C(uint16_t index, int16_t HP){
    if(index==0){
        if(gPlayerActor.unk_0xDC) gPlayerActor.unk_0x13C_h[1]=0;
        else gPlayerActor.unk_0x13C_h[1]=HP/2;
    }
    if(HP!=0){
        if(thisActor.health<1){
            if(index) return 3;
            if(thisActor.health==0) return 3;
        gPlayerActor.health=thisActor.health-HP;
        }
        else{
            thisActor.health-=HP;
            if(thisActor.health<0){
                thisActor.health=0;
                if(index) return 3;
                else return 2;
            }
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005739C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800574B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800575C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800576A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057848.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80057C98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_800584D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005878C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058924.s")

void func_8005896C(uint16_t x, uint16_t y){}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058C24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058CAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058D3C.s")

void func_80058E44(uint16_t index,uint16_t x){
    func_80058924(index);
    thisActor.unk_0xF8._w=-thisActor.unk_0xF8._w;
    thisActor.unk_0xFC._w=thisActor.unk_0xFC._w; //...but why?
    thisActor.actorState=43;
}
#ifdef NON_MATCHING
void func_80058EB0(uint16_t index,uint16_t x){
    if((thisActor.flag<<6)<0) func_8004F514(index,thisActor.unk_0xD6);
    func_80058924(index);
    thisActor.unk_0x150._w=thisActor.flag&=~0x1501;
    thisActor.actorState_b[0]=4,thisActor.actorState_b[1]=1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058EB0.s")
#endif

void func_80058F54(uint16_t index,uint16_t x){
    thisActor.unk_0xF8._w=thisActor.vel.x_w;
    thisActor.actorState=42;
}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058F9C.s")
