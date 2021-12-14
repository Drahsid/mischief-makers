#include "common.h"

#ifdef NON_MATCHING
uint32_t func_8004F2B0(uint16_t index){
    if((D_801370CE&gButton_B)==0) return 0;
    else{
        gActors[index].flag&=~0X4040;
        gActors[index].unk_0x140=func_80048C28(0);
        if(D_801373D8&~0x80) return 2;
        return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F2B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8004F514.s")
//regalloc. redo branching?
#ifdef NON_MATCHING
void func_8004F5B0(uint16_t index){
    if(gActors[index].unk_0x142==0){
        gActors[index].unk_0x142=1;
        return;
    }
    if(gActors[index].unk_0x142!=8){
        gActors[index].unk_0x142=0;
        return;
    }
    gActors[index].unk_0x142=2;
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
 if(gActors[index].health<0) return -1;
 gActors[index].health+=x;
 if(gActors[index].health>3000){
     gActors[index].health=3000;
     return 2;
 }
 return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_8005739C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058E44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058EB0.s")
/*
void func_80058F54(uint16_t index){
    gActors[index].actorState=42;
    gActors[index].unk_0xF8._w=gActors[index].vel.x_w;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/4FEB0/func_80058F9C.s")
