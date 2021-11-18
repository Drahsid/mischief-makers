#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800657B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800658D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006605C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800662F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006641C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800666B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006678C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800668E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006756C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800679DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067F44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067F98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067FEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800682AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800684D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068570.s")

uint32_t func_800686CC(uint32_t x){return 0;}


#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800686D8.s")
uint32_t func_80068870(void){return 0;}

uint32_t func_80068878(uint32_t x, uint32_t y){return 0;}


uint32_t func_80068888(uint32_t x, uint32_t y){return 0;}

uint32_t func_80068898(){
    return func_80029A7C(32,16,-16);
}

uint32_t func_800688C0(){
    return func_80029A7C(0x38,0x18,-0x18);
}

uint32_t func_800688E8(){
    return func_80029DEC(63,1);
}
uint32_t func_8006890C(){
    return func_80029A7C(0x50,0x20,-0x18);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800689A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800689F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068A68.s")

uint32_t func_80068ACC(){return 1;}

uint32_t func_80068AD4(){
    return func_80029D58(0x40,0x80,0x40,-0x40);
}

uint32_t func_80068B00(void){
    return func_80029A7C(0xa0,0x60,-0x60);
}


uint32_t func_80068B28(void){
    return func_80029D58(0x40,0x80,0x40,-0x40);
}



uint32_t func_80068B54(void){
    return func_80029CC0(0x40,0x80,0x80,-0x80);
}

uint32_t func_80068B80(uint32_t x){return 0;}

/*
uint32_t func_80068B8C(uint16_t i, uint16_t x){
    if(D_800E3584 << 0xf <0){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068B8C.s")

uint32_t func_80068BE8(uint16_t i, uint16_t x){
    if(D_800E3584 & 0x30000){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}


uint32_t func_80068C48(uint16_t i, uint16_t x){
    if(D_800E3584 & 0xC0000){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}


/*
uint32_t func_80068CA8(uint16_t i, uint16_t x){
    if((gActors[i].unk_0x150._w << 0xe < 0)&&(D_800E3584 << 0xf <0)){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068CA8.s")

uint32_t func_80068D18(uint16_t i, uint16_t x){
    if((gActors[i].unk_0x150._w << 0xe < 0)&&(D_800E3584 & 0x30000)){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}



uint32_t func_80068D88(uint16_t i, uint16_t x){
    if((gActors[i].unk_0x150._w << 0xe < 0)&&(D_800E3584 & 0xC0000)){
       gActors[i].unk_0xD0_h=x;
       return 1;
    }
    return 0;
}

// unused funcs - return of 2 funcs are dummied out.

uint16_t func_80068DF8(uint16_t x){}

uint16_t func_80068E00(uint16_t x){}

uint16_t func_80068E08(uint16_t x){
    return func_80068DF8(x) | func_80068E00(x);
}


#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068FBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006907C.s")

void func_80069130(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069204.s")

void func_800692C0(uint16_t x){}

void func_800692C8(uint16_t x){}

void func_800692D0(uint16_t x){}

void func_800692D8(uint16_t x){}

void func_800692E0(uint16_t x){}

void func_800692E8(uint16_t x){}

void func_800692F0(uint16_t x){}

void func_800692F8(uint16_t x,uint16_t y){}

void func_80069304(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006930C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800695E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800696A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069D04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069DA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A0B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A4DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A64C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A7B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006ABEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AD50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006ADF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AE84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AF30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B9EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BA80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BAFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BB8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BEF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C0F4.s")

void func_8006C1A4(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C1AC.s")

void func_8006C5A4(uint16_t index) {
    Actor* actor;

    actor = &gActors[index];
    if (actor->unk_0xD0_h >= 0x51 && actor->unk_0xD0_h != 0xFFFF) {
        if (actor->health == 0) {
            actor->flag &= ~ACTOR_FLAG_UNK10;
        }

        if (actor->unk_0xD4 != 0) {
            actor->unk_0xD4--;
        }

        func_80066964(index, ((actor->unk_0xD8 & 0x7000) / 0x1000));
        func_80066A10(index);

        if ((actor->flag & ACTOR_FLAG_FLIPPED) != 0) {
            actor->unk_0x148 = -actor->ScaleX;
        }
        else {
            actor->unk_0x148 = actor->ScaleX;
        }

        if (((actor->unk_0x98 & 0x200) == 0) && (gPlayerActorIndex != index)) {
            func_80028C00(index);
        }
    }

    func_80066BCC(index);
    actor->unk_0x98 &= 0xFFDFF9FF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C7B8.s")
/*
uint16_t func_8006C8B8(uint16_t x){
    return func_80069C54(x) | func_8006C7B8(x) | func_80069884(x);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C8B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C9D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CA0C.s")
/*uint16_t func_8006CAD4(uint16_t index){
    return func_8006C7B8(index)|func_80069884(index);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CAD4.s")
/*uint16_t func_8006CB10(uint16_t index){
    return func_8006C7B8(index)|func_80069884(index);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CB10.s")
/*uint16_t func_8006CB4C(uint16_t index){
    return func_8006C7B8(index)|func_80069884(index);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CB4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CB88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CFDC.s")
/*
void func_8006D0EC(uint16_t index){
    if(gActors[index].unk_0xD0_h) func_80035A20(index);
    else{
        func_8006CD5C(index);
        func_800358DC(index);
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D0EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D7F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D9A4.s")

void func_8006DB10(uint16_t index){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DB18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DBE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DCB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E1F8.s")

void func_8006E3DC(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006EA3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006EAC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F1FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FAC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FB48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FCC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FD74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FF70.s")

void func_80070000(uint16_t index){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007095C.s")

void func_80070A14(uint16_t index){}

void func_80070A1C(uint16_t index){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070BEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800715DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800717E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800721C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800722F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072400.s")

void func_80072620(uint16_t index){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800728E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072A28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072D9C.s")

void func_80072DD4(uint16_t index){}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072EE0.s")
/*
void func_80072F54(uint16_t index){
    if (gActors[index].unk_0xD0_h == 64){
            gActors[index].unk_0x150._w &= ~0x8000000;
            gActors[index].flag=2;
            gActors[index].vel.x_w=0;
            gActors[index].vel.y_w=0;
            gActors[index].RotateZ=0.0f;
    }
    else {func_80072E54(index);}
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072FE4.s")

void func_8007325C(uint16_t index) {
    // through in-game testing, this seems to process state changes
    func_8006C1AC(index);

    if (gActors[index].unk_0xD0_h < 0x4000) {
        // these seem to process being grabbed
        gActorFuncTable_800D7F00[gActors[index].unk_0xD0_h / 16](index);
    }

    // this seems to process damage and attachments
    func_8006C5A4(index);
}

void ActorTick_2(uint16_t index){
    func_8006C1A4(index); //noop func
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800733AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800734C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800735EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800737C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073EF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073FD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007406C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800740C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800742B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800742FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800744AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800744E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074C30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800753C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800755F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800756FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007574C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075D50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075DC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076228.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800764B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800768D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800769AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076D40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80077C18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80077D24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80077F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800789C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078FF0.s")
/*void func_800791D4(uint16_t index){
    if(gActors[index].vel.x_w<=0){
        gActors[index].unk_0x150._w |=1;
    }
    else{gActors[index].unk_0x150._w &= ~1;}
    if(gActors[index].vel.y_w<=0){
        gActors[index].unk_0x150._w |=2;
    }
    else{gActors[index].unk_0x150._w &= ~2;}
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800791D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800792C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007951C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800798EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A3CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A4B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A6A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A7C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A84C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007AB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007B60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007B73C.s")

void ActorTick_3(uint16_t x){}

