#include "actor.h"


#include "common.h"

int32_t D_801AA120;
int16_t D_801AFE90[];
float D_801B0080;
float D_801B0088;
float D_801B00A0;
float D_801B01C0;
float D_801B01C8;

void func_801A6900_7754F0(int32_t arg0) {}
/*
void func_801A6908_7754F8(uint16_t index, uint8_t arg1) {
    uint16_t i;

    if (gActors[index].pos.y) {}

    for (i = 0; i < 7; i++) {
        func_80012044(gActors[index].pos.x, gActors[index].pos.y + D_801AFE90[i], arg1);
    }
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A6908_7754F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A69CC_7755BC.s")
void func_801A6CB0_7758A0(void) {
    uint8_t a = func_8002981C(gActors[50].rgba.a, 0xFF, 1);
    uint64_t rgb = (0xFF - a) / 2; // why does this match??

    gActors[50].rgba.a = a;
    gActors[50].rgba.r = rgb;
    gActors[50].rgba.g = rgb;
    gActors[50].rgba.b = rgb;
}


#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A6D10_775900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7500_7760F0.s")


#ifdef NON_MATCHING
void func_801A7620_776210(uint16_t index) {

    if ((gActors[index].flag & ACTOR_FLAG_FLIPPED && ((gButtonHold & gButton_DRight))) 
     || (gActors[index].flag & ACTOR_FLAG_FLIPPED == 0 && ((gButtonHold & gButton_DLeft)))) {
        gActors[index].flag ^= ACTOR_FLAG_FLIPPED;
    }

    gActors[index].unk_0x148 = gActors[index].ScaleX * 1.0f;

    if (gActors[index].flag & ACTOR_FLAG_FLIPPED) {
        gActors[index].unk_0x148 = -gActors[index].unk_0x148;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7620_776210.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc, and some instruction order
void func_801A76DC_7762CC(uint16_t index) {
    if ((gButtonHold & gButton_DRight) != 0 || (gButtonHold & gButton_DLeft) != 0) {
        if ((gActors[index].flag & ACTOR_FLAG_FLIPPED) != 0) {
            // Is this an oversight?
            if (gButtonHold & gButton_DRight != 0) {}
            gActors[index].unk_0xD0_h = 0x60;
        }
        else {
            if ((gButtonHold & gButton_DLeft) != 0) {
                gActors[index].unk_0xD0_h = 0x60;
            }
        }
    }
    else {
        gActors[index].unk_0xD0_h = 0x60;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A76DC_7762CC.s")
#endif
#ifdef NON_MATCHING
void func_801A77AC_77639C(uint16_t index) {
    if ((gButtonPress & gButton_A) != 0) {
        if ((gButtonHold & gButton_DDown) != 0) {
            gActors[index].unk_0xD0_h = 0x3C0;
        }
        else {
            gActors[index].unk_0xD0_h = 0x130;
            gActors[index].flag &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK15);
            gActors[index].unk_0x120 = ((float)gActors[index].vel.x_w * 1.5);
            gActors[index].unk_0x158 = 0x6000;
            gActors[index].unk_0x15C = 0;
            gActors[index].unk_0x160 = 0;
            gActors[index].unk_0x164 = -1;
            gActors[index].unk_0x11C = 196608.0f;
            gActors[index].unk_0x124 = 0.0f;
            func_801A7620_776210(index);
            SFX_ActorPanX(0x118, index);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A77AC_77639C.s")
#endif
#ifdef NON_MATCHING
// Differences are regalloc and argument spilling
void func_801A78DC_7764CC(uint16_t index) {
    if ((gButtonPress & gButton_B)) {
        if ((gButtonHold & gButton_DUp)) {
            gActors[index].unk_0xD0 = 0x4010;
        }
        else {
            gActors[index].unk_0xD0_h = 0x3B0;
            gActors[index].unk_0x158 = 0;
            gActors[index].unk_0x118 = -1.0f;
            gActors[index].unk_0x11C = 0.0f;
            func_801A7620_776210(index);
        }
    }
    else {
        func_801A77AC_77639C(index);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A78DC_7764CC.s")
#endif
#ifdef NON_MATCHING
void func_801A79BC_7765AC(uint16_t index) {
    if (((gButtonHold & gButton_DLeft) != 0) || ((gButtonHold & gButton_DRight) != 0)) {
        if (D_800BE5FC == 3) {
            gActors[index].unk_0xD0_h = 0xA0;
        }
        else {
            if (gActors[index].unk_0xD0_h != 0x91) {
                gActors[index].unk_0xD0_h = 0x90;
            }
        }

        if ((gActors[index].flag & ACTOR_FLAG_FLIPPED) != 0) {
            if ((gButtonHold & gButton_DLeft) == 0) {
                gActors[index].unk_0xD0_h = 0x70;
            }
        }
        else if ((gButtonHold & gButton_DRight) == 0) {
            gActors[index].unk_0xD0_h = 0x70;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A79BC_7765AC.s")
#endif
#ifdef NON_MATCHING
void func_801A7AB8_7766A8(uint16_t index) {
    gActors[index].unk_0x118 = 1.5f;
    func_801A76DC_7762CC(index);
    func_801A78DC_7764CC(index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7AB8_7766A8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7B20_776710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7C34_776824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A7E04_7769F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A8008_776BF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A8108_776CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A81E4_776DD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A870C_7772FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9478_778068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9534_778124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9584_778174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9A3C_77862C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9D34_778924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9E6C_778A5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9EB8_778AA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801A9FF8_778BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AA120_778D10.s")
/*
void func_801AA224_778E14(uint16_t index0, uint16_t index1) {
    Actor* actor = &gActors[index1];
    actor->unk_0xD2 = 0x45;
    Actor_Spawn(index1);
    actor->pos.x = gActors[index0].pos.x;
    actor->pos.y = gActors[index0].pos.y;
    actor->vel.x_w = gActors[index0].unk_0x148 * 131072.0f;
    actor->vel.y_w = 0x30000;
    actor->unk_0x110 = D_801B01C0;
    actor->unk_0xD8 = 2;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AA224_778E14.s")
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AA310_778F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AA778_779368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AA964_779554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAA2C_77961C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAA34_779624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAA3C_77962C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAA88_779678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAC20_779810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AAEFC_779AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB104_779CF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB354_779F44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB3D4_779FC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB604_77A1F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB6DC_77A2CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB8E8_77A4D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AB9D8_77A5C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ABAC8_77A6B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ABB00_77A6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ABCD4_77A8C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ABDAC_77A99C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ABE58_77AA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AC3EC_77AFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AC5FC_77B1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AC8D8_77B4C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ACA60_77B650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ACE50_77BA40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ACEC8_77BAB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AD438_77C028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AD918_77C508.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AD920_77C510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADA84_77C674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADAD4_77C6C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADE38_77CA28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADE80_77CA70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADEC8_77CAB8.s")

void func_801ADF50_77CB40(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801ADF58_77CB48.s")

void func_801AE060_77CC50(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE068_77CC58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE208_77CDF8.s")

void func_801AE250_77CE40(uint16_t x){}
void func_801AE258_77CE48(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE260_77CE50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE32C_77CF1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE3E8_77CFD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE4AC_77D09C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AE634_77D224.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AEEBC_77DAAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AF1C4_77DDB4.s")

void func_801AF6AC_77E29C(uint16_t x){}

func_801AF6B4_77E2A4(uint16_t index){
    gActors[index].unk_0xD2=0x1d;
    Actor_Spawn(index);
    gActors[index].unk_0x94=0x1817;
    gActors[index].unk_0x84=0x262;
    gActors[index].pos.x=0;
    gActors[index].pos.y=0;
    gActors[index].pos.z=0xFE00;
    gActors[index].rgba.r=0x80;
    gActors[index].ScaleX=8.0;
    gActors[index].RotateX=45.0;
}



#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AF750_77E340.s")

void func_801AF8A0_77E490(){
    func_801AF750_77E340(0x81);
    func_801AF750_77E340(0x82);
}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_801AF8C8_77E4B8.s")
