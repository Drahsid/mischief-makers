#define func_80031284 func_80031284_s16_arg2
#include "common.h"
#undef func_80031284
#include "actor.h"

extern u16 D_801A80DE_6A00DE;
extern s16 D_801A80EE_6A00EE;
extern s16 D_801A80F0_6A00F0;
extern s16 D_801A80F2_6A00F2;
extern u16 D_801A3D40_69BD40[];
extern u16 D_801A67FC_69E7FC[];
extern u16 D_801A6848_69E848[];
extern u16 D_801A6894_69E894[];
extern u16 D_801A682A_69E82A[];
extern u16 D_801A6876_69E876[];
extern u16 D_801A68C2_69E8C2[];

u16 func_80031284(s32 arg0, s16 arg1, s32 arg2, s32 arg3);
void func_8002AC30(u16 actor_index, s16 val);
void func_80194DC4_68CDC4(u16 arg0, f32 arg1, f32 arg2);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80192100_68A100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80192198_68A198.s")

void func_8019226C_68A26C(u16 arg0, u16 arg1) {
    func_800036C8(arg0, (u32)arg1);
}

void func_801922A0_68A2A0(s32 arg0) {
    gActors[0xC1].actorType = 0xF0A;
    func_8001E2D0(0xC1);
    gActors[0xC1].flags = (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[0xC1].graphicFlags = (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE);
    gActors[0xC1].graphicIndex = 0x2D0;
    gActors[0xC1].posX.whole = 0;
    gActors[0xC1].posY.whole = 0;
    gActors[0xC1].posZ.whole = 0x80;
    gActors[0xC1].unk_18C = (s32)D_800D8588;
    gActors[0xC1].scaleX = 20.0f;
    gActors[0xC1].scaleY = 20.0f;
}

void func_8019231C_68A31C(s32 arg0) {
    gActors[0xC1].flags = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019232C_68A32C.s")

void func_8019245C_68A45C(void) {
    D_801A80DE_6A00DE = 1;
    D_801A80EE_6A00EE = 0x1E0;
    D_801A80F0_6A00F0 = 0x140;
    D_801A80F2_6A00F2 = 0x2C0;
}

void func_80192490_68A490(void) {
    D_801A80DE_6A00DE = 2;
    D_801A80EE_6A00EE = 0x1E0;
    D_801A80F0_6A00F0 = 0x1A0;
    D_801A80F2_6A00F2 = 0x300;
}

void func_801924C4_68A4C4(void) {
    D_801A80DE_6A00DE = 3;
    D_801A80EE_6A00EE = 0x1E0;
    D_801A80F0_6A00F0 = 0x1E0;
    D_801A80F2_6A00F2 = 0x2C0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801924F4_68A4F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801925F4_68A5F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80192AFC_68AAFC.s")

void func_80192D44_68AD44(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80192D4C_68AD4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80192EC4_68AEC4.s")

void func_801932C4_68B2C4(s32 arg0) {
    gActors[0x48].actorType = 0xF05;
    func_8001E2D0(0x48);
    gActors[0x48].colorA = 0xF0;
}

void func_801932FC_68B2FC(void) {
    gActors[0x48].actorType = 0;
    func_8001E2D0(0x48);
    gActors[0x48].graphicFlags = 0x319;
    gActors[0x48].flags = 2;
    gActors[0x48].graphicIndex = 0x164;
    gActors[0x48].unk_18C = (s32)D_800D8588;
    gActors[0x48].colorA = 0xC0;
    gActors[0x48].unk_114 = 576.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193364_68B364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193584_68B584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193DB4_68BDB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193EA8_68BEA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193EF8_68BEF8.s")

void func_80193FB8_68BFB8(s32 arg0) {
}

void func_80193FC0_68BFC0(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80193FC8_68BFC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801941F4_68C1F4.s")

void func_801945C4_68C5C4(s32 arg0) {
}

void func_801945CC_68C5CC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801945D4_68C5D4.s")

void func_80194754_68C754(u16 actor_index) {
    s32 saved_actor_index[1];
    s32 final_actor_index;

    saved_actor_index[0] = actor_index;

    func_80031E38(0x80, 0x90, (actor_index + 0x14) & 0xFFFF, 0xF, 0x200, 0x84, 8, 0x50000, 0x20000, 0xA, 0, -0x18, 0,
        0x10, -8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x28, 0, 0x6E, 0x46, 0, 0);
    final_actor_index = saved_actor_index[0];
    gActors[final_actor_index + 0x14].unk_18C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80194858_68C858.s")

void func_801949B4_68C9B4(u16 actor_index) {
    s32 saved_actor_index[1];
    s32 final_actor_index;

    saved_actor_index[0] = actor_index;

    func_80031E38(0x80, 0x90, (actor_index + 6) & 0xFFFF, 0xF, 0x200, 0x84, 8, 0x80000, 0x40000, 0xA, 0, -0x16, 0x10,
        0x16, -0x16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x14, 0, 0x2D, 0x50, 0, 0);
    final_actor_index = saved_actor_index[0];
    gActors[final_actor_index + 6].unk_18C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80194ABC_68CABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80194B28_68CB28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80194DC4_68CDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80194F40_68CF40.s")

void func_80195454_68D454(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = func_80031284(0x1D8, gActors[actor_index + 0x1E].posX.whole, gActors[actor_index + 0x1E].posY.whole - 0x1C, 0x11);
    func_80194DC4_68CDC4(new_actor_index, 1.0f, 1.0f);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801954D0_68D4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019568C_68D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195808_68D808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019589C_68D89C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195930_68D930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195AD4_68DAD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195C14_68DC14.s")

void func_80195CA8_68DCA8(u16 actor_index) {
    gActors[actor_index].flags |= 0x200;
    gActors[actor_index].damage = 0x64;
    gActors[actor_index].unk_0DA = 4;\
    gActors[actor_index].unk_0DB = 3;
    gActors[actor_index].unk_0FC.raw = 0x30000;
    func_8002ABE4(actor_index, 0xC);
}

void func_80195D28_68DD28(void) {
    gActors[0x36].actorType = 0xF11;
    gActors[0x36].flags |= 0x8400;
    gActors[0x36].hitboxBX1 = 0x10;
    gActors[0x36].hitboxBY0 = 0x18;
    gActors[0x36].hitboxBY1 = -0x18;
    gActors[0x36].hitboxBX0 = -0x18;
    gActors[0x39].actorType = 0xF11;
    gActors[0x39].flags |= 0x8400;
    gActors[0x39].hitboxBX0 = -0xE;\
    gActors[0x39].hitboxBX1 = 0x20;
    gActors[0x39].hitboxBY0 = 0x18;
    gActors[0x39].hitboxBY1 = -0x18;
    func_80195CA8_68DCA8(0x43);
    gActors[0x43].unk_0F8.raw = 0x110000;
    func_80195CA8_68DCA8(0x46);
    gActors[0x46].unk_0F8.raw = 0x50000;
}

void func_80195DCC_68DDCC(void) {
    s32 flags = ~0x1700;

    gActors[0x36].flags &= flags;
    gActors[0x39].flags &= flags;
    gActors[0x43].flags &= flags;
    gActors[0x46].flags &= flags;
}

void func_80195E0C_68DE0C(u16 actor_index) {
    gActors[actor_index].graphicList = D_801A3D40_69BD40;\
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].flags |= 0x200;
    gActors[actor_index].damage = 0;
    gActors[actor_index].unk_0DA = 0x80;\
    gActors[actor_index].unk_0DB = 4;
    gActors[actor_index].unk_0F8.raw = 0x30000;\
    gActors[actor_index].unk_0FC.raw = 0x20000;
    func_8002ABE4(actor_index, 0xE);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195EA4_68DEA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80195F04_68DF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196100_68E100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196528_68E528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196898_68E898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801968F0_68E8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019698C_68E98C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196A20_68EA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196AB4_68EAB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196B84_68EB84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196C64_68EC64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196D2C_68ED2C.s")

void func_80196DF8_68EDF8(s32 arg0) {
    u16* data1 = D_801A6848_69E848;
    u16* data0 = D_801A67FC_69E7FC;
    u16 value0 = 4;
    u16* data2 = D_801A6894_69E894;
    u16 value1 = 0xFFE5;

    data0[3] = value0;
    data1[3] = value0;
    data2[3] = value0;
    data0[9] = value1;
    data1[9] = value1;
    data2[9] = value1;
}

void func_80196E38_68EE38(s32 arg0) {
    u16* data1 = D_801A6848_69E848;
    u16* data0 = D_801A67FC_69E7FC;
    u16 value0 = 0xB;
    u16* data2 = D_801A6894_69E894;
    u16 value1 = 0xFFDB;

    data0[3] = value0;
    data1[3] = value0;
    data2[3] = value0;
    data0[9] = value1;
    data1[9] = value1;
    data2[9] = value1;
}

void func_80196E78_68EE78(s32 arg0) {
    D_801A682A_69E82A[0] = 0xFFF0;
    D_801A6876_69E876[0] = 0xFFF1;
    D_801A68C2_69E8C2[0] = 0xFFEF;
}

void func_80196EA4_68EEA4(s32 arg0) {
    D_801A682A_69E82A[0] = 0;
    D_801A6876_69E876[0] = 0;
    D_801A68C2_69E8C2[0] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80196EC4_68EEC4.s")

void func_80196F48_68EF48(u16 actor_index) {
    gActors[actor_index].actorType = 0xF11;
    gActors[actor_index].flags |= 0x9400;
    gActors[actor_index].health = 0xA;
}

void func_80196F98_68EF98(s32 arg0) {
    func_80196F48_68EF48(0x36);
    func_8002AC30(0x36, 0x12);
    func_80196F48_68EF48(0x3C);
    func_8002AC30(0x3C, 0x12);
    func_80196F48_68EF48(0x38);
    func_8002AC30(0x38, 0x12);
    gActors[0x38].flags &= ~0x1000;
    func_80196F48_68EF48(0x3A);
    func_8002AC30(0x3A, 0xE);
    func_80196F48_68EF48(0x45);
    func_8002AC30(0x45, 0xA);
    func_80196F48_68EF48(0x47);
    func_8002AC30(0x47, 0xA);
    func_80196F48_68EF48(0x4B);
    func_8002AC30(0x4B, 0xA);
    func_80196F48_68EF48(0x4D);
    func_8002AC30(0x4D, 0xA);
    func_80196F48_68EF48(0x51);
    func_8002AC30(0x51, 0xA);
    func_80196F48_68EF48(0x53);
    func_8002AC30(0x53, 0xA);
    func_80196F48_68EF48(0x57);
    func_8002AC30(0x57, 0xA);
    func_80196F48_68EF48(0x59);
    func_8002AC30(0x59, 0xA);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801970BC_68F0BC.s")

void func_80197280_68F280(u16 actor_index) {
}

void func_80197288_68F288(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197290_68F290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801972FC_68F2FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197368_68F368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197414_68F414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801974A4_68F4A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801974C8_68F4C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019752C_68F52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197590_68F590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801975F4_68F5F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197658_68F658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801976BC_68F6BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019771C_68F71C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019777C_68F77C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801977D8_68F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80197AC4_68FAC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80199DB0_691DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80199E90_691E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80199EF0_691EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80199F50_691F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_80199F58_691F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019A000_692000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019A050_692050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019A170_692170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019A864_692864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019AA14_692A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019AC00_692C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019AE34_692E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019B328_693328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019B468_693468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019B760_693760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019B830_693830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BA6C_693A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BB2C_693B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BBBC_693BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BC2C_693C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BC70_693C70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BCE0_693CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BD5C_693D5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019BF2C_693F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C070_694070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C198_694198.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C228_694228.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C404_694404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C474_694474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C54C_69454C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C6DC_6946DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019C7C0_6947C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019CCC4_694CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019CD94_694D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019CDC0_694DC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019CE7C_694E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019F5B4_6975B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019F908_697908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019FDC4_697DC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_8019FEBC_697EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A04B4_6984B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A0EA4_698EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A1178_699178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A1CCC_699CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A1CD4_699CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A1E94_699E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A2010_69A010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A2070_69A070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A2184_69A184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A2234_69A234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A22AC_69A2AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A233C_69A33C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A23C4_69A3C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A30B8_69B0B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A32C8_69B2C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A3304_69B304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A330C_69B30C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A3314_69B314.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A3384_69B384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A35FC_69B5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A363C_69B63C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A37E8_69B7E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A3858_69B858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_68A090/68A100/func_801A3D1C_69BD1C.s")
