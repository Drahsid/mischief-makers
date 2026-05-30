#include "common.h"
#include "actor.h"

void func_8002CCD0(u16 actor_index, s16 pos_x, s16 pos_y, u16 arg3);
void func_8002ABE4(u16 actor_index, s16 val);
void Actor_UpdateVelocityX(u16 actor_index, s32 dvx);
void func_8007B73C(u16 actor_index);

extern u32 D_801A5200_73BF60[];
extern u32 D_801A5280_73BFE0[];
extern u32 D_801A54B4_73C214[];
extern u32 D_801A54C4_73C224[];

void func_8019B100_731E60(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B108_731E68.s")

void func_8019B21C_731F7C(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0x1C;
    gActors[actor_index].hitboxBY1 = -4;
    gActors[actor_index].hitboxBX0 = -0xC;
    gActors[actor_index].hitboxBX1 = 0xC;
}

void func_8019B270_731FD0(u16 actor_index) {
    gActors[actor_index].flags |= 0x2400;
    gActors[actor_index].unk_0DA = 4;
    gActors[actor_index].unk_0DB = 6;
    gActors[actor_index].hitboxBY0 = 0x10;
    gActors[actor_index].hitboxBY1 = -0x10;
    gActors[actor_index].hitboxBX0 = -0x14;
    gActors[actor_index].hitboxBX1 = 0x14;
    gActors[actor_index].hitboxAY0 = 0x16;
    gActors[actor_index].hitboxAY1 = -0x16;
    gActors[actor_index].hitboxAX0 = -0x1A;
    gActors[actor_index].hitboxAX1 = 0x1A;
}

void func_8019B300_732060(u16 actor_index, u16 arg1) {
    func_8002CCD0(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B360_7320C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B5A8_732308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B68C_7323EC.s")

void func_8019B738_732498(u16 actor_index) {
    Actor_UpdateVelocityX(actor_index, 0x2000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B764_7324C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019B930_732690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019BA78_7327D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019BAF4_732854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019BDF4_732B54.s")

void func_8019C0A0_732E00(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0x28;
    gActors[actor_index].hitboxBX0 = -0x10;
    gActors[actor_index].hitboxBX1 = 0x10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C0F4_732E54.s")

void func_8019C1C4_732F24(u16 actor_index) {
    // FAKEMATCH ???
    gActors[actor_index].unk_0DB = 8;\
    gActors[actor_index].unk_0F8.raw = 0x48000;\
    if (1) { }\
    gActors[actor_index].unk_0FC.raw = 0x40000;
    gActors[actor_index].unk_0F8.raw = 0x48000;
    gActors[actor_index].damage = 0x14;
    func_8002ABE4(actor_index, 0xC);
}


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C23C_732F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C544_7332A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C6B4_733414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C778_7334D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019C80C_73356C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019D6D0_734430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019D77C_7344DC.s")

void func_8019DB10_734870(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DB58_7348B8(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DBA0_734900(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DBE8_734948(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DC30_734990(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DC78_7349D8(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DCC0_734A20(u16 actor_index) {
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_8019DD08_734A68(u16 actor_index) {
    func_8007B73C(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019DD30_734A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019DE88_734BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019E094_734DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019E240_734FA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019E364_7350C4.s")

void func_8019EB14_735874(u16 actor_index) {
    gActors[actor_index].graphicFlags |= 1;
    func_8008105C(actor_index, D_801A5280_73BFE0, D_801A5200_73BF60);
    gActors[actor_index].unk_178 = (s32)D_801A54C4_73C224;
    func_80081790(actor_index, D_801A54B4_73C214);
}

void func_8019EBA8_735908(u16 actor_index) {
    func_800819A8(actor_index, D_801A5280_73BFE0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019EBD8_735938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019EC6C_7359CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019ED3C_735A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019EFBC_735D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F00C_735D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F204_735F64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F2A4_736004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F2D0_736030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F370_7360D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F404_736164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F6FC_73645C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019F9EC_73674C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019FAE4_736844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_8019FCF0_736A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A08E8_737648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A099C_7376FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A0AB4_737814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A0C0C_73796C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A0F5C_737CBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A0FC0_737D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1024_737D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1088_737DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1158_737EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1440_7381A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1560_7382C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1644_7383A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1718_738478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1848_7385A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1C9C_7389FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1D4C_738AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A1E74_738BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A206C_738DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A2098_738DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A20EC_738E4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A2290_738FF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A2664_7393C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A2720_739480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A27D8_739538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A283C_73959C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A28A0_739600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A2920_739680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3290_739FF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3664_73A3C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A37C0_73A520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3874_73A5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3928_73A688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3AC4_73A824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3B64_73A8C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3BF0_73A950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3C6C_73A9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A3EE8_73AC48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A406C_73ADCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A4730_73B490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A4758_73B4B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_731DD0/731E60/func_801A4760_73B4C0.s")
