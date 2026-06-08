#include "common.h"
#include "actor.h"

extern ActorFunc D_801AF758_795A48[];
extern ActorFunc D_801AF778_795A68[];
extern u16 D_801AF79C_795A8C[];
extern u16 D_801AF7C4_795AB4[];
extern u16 D_801AF7C6_795AB6[];
extern u8 D_801AFA24_795D14[];

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6900_78CBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6ED4_78D1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7200_78D4F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7304_78D5F4.s")

void func_801A73F4_78D6E4(s32 arg0, s32 arg1) {
}

void func_801A7400_78D6F0(s32 arg0, s32 arg1) {
}

void func_801A740C_78D6FC(s32 arg0, s32 arg1) {
}

void func_801A7418_78D708(s32 arg0, s32 arg1) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7424_78D714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A74A0_78D790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A76AC_78D99C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A774C_78DA3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7878_78DB68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7940_78DC30.s")

void func_801A7C0C_78DEFC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7C14_78DF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7CA4_78DF94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7E98_78E188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A821C_78E50C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8284_78E574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8380_78E670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8428_78E718.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8780_78EA70.s")

u16 func_801A87C0_78EAB0(s32 arg0) {
    u16 value;
    s32 next = arg0;

    arg0 = next;
    arg0 += 2;
    value = func_801A8780_78EA70(next, arg0);
    return value + func_801A8780_78EA70(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8800_78EAF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8D38_78F028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A913C_78F42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A92D8_78F5C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9440_78F730.s")

void func_801A9508_78F7F8(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9510_78F800.s")

void func_801A9690_78F980(s32 arg0) {
}

void func_801A9698_78F988(u16 actor_index) {
    gActors[actor_index].flags = 0;
}

void func_801A96CC_78F9BC(s32 arg0) {
}

void func_801A96D4_78F9C4(s32 arg0) {
}

void func_801A96DC_78F9CC(u16 actor_index) {
    u8 table_index;

    table_index = gActors[gActors[actor_index].var_158].var_154 & 0xFF;
    D_801AF758_795A48[table_index](actor_index);
}

void func_801A9768_78FA58(u16 actor_index) {
    u8 table_index;

    table_index = (gActors[gActors[actor_index].var_158].var_154 & 0xFF00) >> 8;
    D_801AF778_795A68[table_index](actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A97FC_78FAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A99E4_78FCD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9A6C_78FD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9C24_78FF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9DD4_7900C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9FF0_7902E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA108_7903F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA208_7904F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA2A4_790594.s")

void func_801AA2FC_7905EC(s32 arg0, s32 arg1) {
    D_801781F8[0x9A] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA310_790600.s")

void func_801AA368_790658(void) {
}

void func_801AA370_790660(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA378_790668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA42C_79071C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA480_790770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAB78_790E68.s")

void func_801AAFC4_7912B4(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAFCC_7912BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB14C_79143C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB1EC_7914DC.s")

void func_801AB3EC_7916DC(u16 actor_index, u16* arg1) {
    gActors[0x33].posX.whole = arg1[gActors[actor_index].unk_170 * 3] - gActors[actor_index].unk_180 + 0x30;
    gActors[0x33].posY.whole = arg1[gActors[actor_index].unk_170 * 3 + 1];
    gActors[0x33].flags |= 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB474_791764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB5B4_7918A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB610_791900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB6B4_7919A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB710_791A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB7A0_791A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABA40_791D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABAE4_791DD4.s")

void func_801ABB44_791E34(u16 actor_index, u16 arg1) {
    gStageCinemaState = 0;
    D_800D28F0 = D_801AF7C6_795AB6[arg1 * 2];
    D_800D28E4 = 0x62;
}

void func_801ABB80_791E70(u16 actor_index) {
    *(u16*)&D_801781F8[0x2C] = D_801AF79C_795A8C[actor_index * 3];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABBAC_791E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABC8C_791F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABDA8_792098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABE24_792114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC0F8_7923E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC13C_79242C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC250_792540.s")

void func_801AC360_792650(u16 actor_index) {
    ((u16*)&D_800F4268)[0x7F5] = 0x1A08;
    func_8001E2D0(0x3A);
    ((u32*)&D_800F43B0)[0x394] = ((u32*)&D_800F43A8)[0x396] | ACTOR_FLAG_FREEZE_POS;
    D_800E59E0[0x7C14] = 0;
    D_800E5970[0x7C4E] = 0;
    ((s32*)D_800E5910)[0x3E7A] = (s32)D_801AFA24_795D14;
}

void func_801AC3C0_7926B0(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = 0x1A07;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].var_150 = arg1;
    gActors[actor_index].unk_164 = 0x40;
}

void func_801AC448_792738(u16 actor_index) {
    D_800E3488[0x8885] = 0;
    func_8001E2D0(0x32);
    D_800E3518[0x881E] = 0x800;
    D_800E352C[0x4405] = 0x2003;
    D_800E45D0[0x7FBA] = 0x81C;
    D_800E4698[0x7F58] = 0;
    D_800E574C[0x7700] = -0x22;
    D_800E57D4[0x76BE] = -1;
    D_800E58D4[0x3B5D] = 0x60;
    D_800E58F0[0x763F] = 0x12;
    D_800E5910[0x7630] = -0x12;
    D_800E5938[0x7619] = -0x14;
    D_800E5970[0x75FE] = 0x14;

    D_800E59E0[0x7771] = 0;
    func_8001E2D0(0x34);
    ((u32*)&D_800F4268)[0x182] = 0x2002;
    ((u16*)&D_800F43A8)[0x266] = 0;
    ((s16*)&D_800F43B0)[0x264] = -0x2C;
    D_800E3488[0x89FA] = -0x38;
    D_800E3518[0x89B4] = 0x60;
    ((u16*)D_800E352C)[0x89B9] = 0x10;
    D_800E45D0[0x8168] = -0x10;
    D_800E4698[0x8101] = -0x14;
    D_800E574C[0x78A8] = 0x14;

    D_800E57D4[0x7943] = 0;
    func_8001E2D0(0x35);
    D_800E58D4[0x3C4D] = 0x2002;
    D_800E58F0[0x788E] = 0;
    D_800E5910[0x7880] = 0x2C;
    D_800E5938[0x786E] = -0x38;
    D_800E5970[0x7854] = 0x60;
    D_800E59E0[0x782B] = 0x10;
    ((s16*)&D_800F4268)[0x3E8] = -0x10;
    ((s16*)&D_800F43A8)[0x345] = -0x14;
    ((u16*)&D_800F43B0)[0x342] = 0x14;

    D_800E3488[0x8951] = 0x1A00;
    func_8001E2D0(0x33);
    D_800E3518[0x88E4] = 0;
    ((u16*)D_800E352C)[0x88DC] = 0x48;
    D_800E45D0[0x808C] = -1;
    ((f32*)D_800E4698)[0x4034] = -1.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC624_792914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC698_792988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC760_792A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACB58_792E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACC90_792F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACD80_793070.s")

void func_801ACEE8_7931D8(u16 actor_index) {
    func_801AC3C0_7926B0(0x3C, D_801AF7C4_795AB4[*(u16*)&D_801781F8[0x2C] * 2]);
    D_800E3488[0x9058] = 0;
    D_800E3518[0x9012] = 0x20;
    D_800E352C[0x483A] = 0x280A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACF40_793230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD0AC_79339C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD37C_79366C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD4F4_7937E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD628_793918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD658_793948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD71C_793A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD840_793B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD9B0_793CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ADE64_794154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE0DC_7943CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE5A0_794890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE5C8_7948B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE804_794AF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE8B4_794BA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE8DC_794BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEA60_794D50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB10_794E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB3C_794E2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB68_794E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEBD4_794EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEC44_794F34.s")

void func_801AECA0_794F90(s32 arg0) {
}

void func_801AECA8_794F98(s32 arg0) {
}

void func_801AECB0_794FA0(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AECB8_794FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AED30_795020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AED88_795078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEE00_7950F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF024_795314.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF10C_7953FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF1EC_7954DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF480_795770.s")
