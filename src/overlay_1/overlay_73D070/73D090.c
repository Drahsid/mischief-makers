#include "common.h"
#include "actor.h"

// "Overlay 1" code used in "Wormin' Up!!"

void func_8019BEDC_73DE6C(u16 actor_index);
void func_8019C244_73E1D4(u16 actor_index);
void func_8019C9A4_73E934(u16 actor_index);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B100_73D090.s")

void func_8019B1F0_73D180(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

void func_8019B204_73D194(s32 arg0) {
}

void func_8019B20C_73D19C(s32 arg0) {
}

void func_8019B214_73D1A4(s32 arg0) {
}

void func_8019B21C_73D1AC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B224_73D1B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B660_73D5F0.s")

void func_8019BAC0_73DA50(s32 arg0, s32 arg1) {
}

void func_8019BACC_73DA5C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BAD4_73DA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BC64_73DBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BE98_73DE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BEDC_73DE6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C060_73DFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C120_73E0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C244_73E1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C49C_73E42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C710_73E6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C7CC_73E75C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C9A4_73E934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CDB8_73ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CE34_73EDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CF04_73EE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CFFC_73EF8C.s")

void func_8019D0B0_73F040(u16 actor_index) {
    gActors[actor_index].unk_16C = (gActors[actor_index].unk_16C + gActors[actor_index].unk_174) & 0x3FFFFFF;
    gActors[actor_index].unk_170 = (gActors[actor_index].unk_170 + gActors[actor_index].unk_178) & 0x3FFFFFF;
    func_8019C9A4_73E934(actor_index);
    func_8019BEDC_73DE6C(actor_index);
    func_8019C244_73E1D4(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D14C_73F0DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D254_73F1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D3B0_73F340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D4A8_73F438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D5E4_73F574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D64C_73F5DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D780_73F710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E654_7405E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E738_7406C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E7A4_740734.s")

void func_8019E918_7408A8(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E920_7408B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E990_740920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EA00_740990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EA6C_7409FC.s")

void func_8019EB10_740AA0(s32 arg0) {
    Sound_PlaySfx(0xC0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EB34_740AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EC28_740BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EC80_740C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EEA0_740E30.s")

void func_8019F27C_74120C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F284_741214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F2E0_741270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F3F8_741388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F538_7414C8.s")

void func_801A08D0_742860(s32 arg0) {
}

void func_801A08D8_742868(s32 arg0) {
}
