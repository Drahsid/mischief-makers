#include "common.h"


// "overlay 3" code for Festival Games.

extern u16 D_800D28F0;
extern u16 D_800D9AE4[];

void func_801B0DA0_7A7320(u16);
extern func_801B2498_7A8A18(u16);


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B0900_7A6E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B09B4_7A6F34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B0A58_7A6FD8.s")

void func_801B0BFC_7A717C(u16 arg0) {
    gStageCinemaState = 0;
    D_800D28F0 = arg0;
    D_800D28E4 = 0x62;
}

#ifdef NON_MATCHING
// forefit after too many false starts.
// https://decomp.me/scratch/OacVT
// match requires direct reference to gFestivalData.competitors.
void func_801B0C20_7A71A0(u16 actor_index){
    
    gFestivalRecords[gFestivalData.currentEvent] = gActors[actor_index].unk_178;
    func_801B0DA0_7A7320(actor_index);
    func_801B2498_7A8A18(actor_index);
    
    gFestivalData.competitors[0].rank = 4;
    gFestivalData.competitors[1].rank = 1;
    gFestivalData.competitors[2].rank = 2;
    gFestivalData.competitors[3].rank = 3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B0C20_7A71A0.s")
#endif

// warning on false start.
void func_801B0CBC_7A723C(u16 arg0) {
    D_800D28F0 = D_800D28E4;
    D_800D28E4 = 0x63;
    gStageCinemaState = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B0CEC_7A726C.s")

void func_801B0DA0_7A7320(u16 arg0) {
    gStageCinemaState = 0;
    D_800D28F0 = 50;
    D_800D28E4 = 0x62;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B0DC8_7A7348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B10A8_7A7628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B11E0_7A7760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B12F0_7A7870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B13F8_7A7978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B14A4_7A7A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B159C_7A7B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B16E0_7A7C60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B1750_7A7CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B18E8_7A7E68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B195C_7A7EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B1B48_7A80C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B1D60_7A82E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B1E80_7A8400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2040_7A85C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B23B8_7A8938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2498_7A8A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B25C4_7A8B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2658_7A8BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2738_7A8CB8.s")

void func_801B2854_7A8DD4(u16 arg0){
    gActors[0x6e].palette_18C = D_800D9AE4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B286C_7A8DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2908_7A8E88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2A88_7A9008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2B54_7A90D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2C40_7A91C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2D18_7A9298.s")

void func_801B2DE4_7A9364(u16 actor_index) {
    if(gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x50;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2E2C_7A93AC.s")

void func_801B2EBC_7A943C(u16 actor_index) {
    if(gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].var_154 = 0x60;
    }
}

void func_801B2F04_7A9484(u16 actor_index) {
    if((gActors[actor_index].graphicTimer == 0)&&(gActors[actor_index].unk_174 == 0)) {
        gActors[actor_index].var_154 = 0xE0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2F5C_7A94DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B2FE4_7A9564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B3180_7A9700.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B3370_7A98F0.s")

void func_801B3480_7A9A00(u16 from, u16 to) {
    u16 index;
    for(index = from; index < to; index++) {
        gActors[index].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B34D4_7A9A54.s")

void func_801B3BC4_7AA144(u16 arg0){
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B3BCC_7AA14C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B3E9C_7AA41C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B41F4_7AA774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B4298_7AA818.s")

void func_801B466C_7AABEC(u16 actor_index, s16* new_list) {
    if(gActors[actor_index].graphicTimer==0) {
        ACTOR_GFX_INIT(actor_index,new_list);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].velocityX.raw = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B46C0_7AAC40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B4750_7AACD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7A6E60/7A6E80/func_801B4D68_7AB2E8.s")
