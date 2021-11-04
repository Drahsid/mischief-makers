#include "actor.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

void func_807748F0(int32_t arg0) {}

void func_807748F8(uint16_t index, uint8_t arg1) {
    uint16_t i;

    if (gActors[index].pos.y) {}

    for (i = 0; i < 7; i++) {
        func_80012044(gActors[index].pos.x, gActors[index].pos.y + D_801AFE90[i], arg1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807749BC.s")

void func_80774CA0(void) {
    uint8_t a = func_8002981C(gActors[50].rgba.a, 0xFF, 1);
    uint64_t rgb = (0xFF - a) / 2; // why does this match??

    gActors[50].rgba.a = a;
    gActors[50].rgba.r = rgb;
    gActors[50].rgba.g = rgb;
    gActors[50].rgba.b = rgb;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80774D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807754F0.s")

#ifdef NON_MATCHING
// differences related to phi_a1
void func_80775610(uint16_t index) {
    int32_t phi_a1;

    phi_a1 = gActors[index].flag & ACTOR_FLAG_FLIPPED;
    if ((phi_a1 != 0 && ((gButtonHold & gButton_DRight) != 0)) || (phi_a1 == 0 && ((gButtonHold & gButton_DLeft) != 0))) {
        gActors[index].flag ^= ACTOR_FLAG_FLIPPED;
        phi_a1 &= ACTOR_FLAG_FLIPPED;
    }

    gActors[index].unk_0x148 = gActors[index].unk_0xB4 * 1.0f;

    if (phi_a1) {
        gActors[index].unk_0x148 = -gActors[index].unk_0x148;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80775610.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc, and some instruction order
void func_807756CC(uint16_t index) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807756CC.s")
#endif

void func_8077579C(uint16_t index) {
    if ((gButtonPress & gButton_A) != 0) {
        if ((gButtonHold & gButton_DDown) != 0) {
            gActors[index].unk_0xD0_h = 0x3C0;
        }
        else {
            gActors[index].unk_0xD0_h = 0x130;
            gActors[index].flag &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK15);
            gActors[index].unk_0x120 = ((float)gActors[index].unk_0xEC * 1.5);
            gActors[index].unk_0x158 = 0x6000;
            gActors[index].unk_0x15C = 0;
            gActors[index].unk_0x160 = 0;
            gActors[index].unk_0x164 = -1;
            gActors[index].unk_0x11C = 196608.0f;
            gActors[index].unk_0x124 = 0.0f;
            func_801A7620(index);
            func_800036C8(0x118, index);
        }
    }
}

#ifdef NON_MATCHING
// Differences are regalloc and argument spilling
void func_807758CC(uint16_t index) {
    if ((gButtonPress & gButton_B) != 0) {
        if ((gButtonHold & gButton_DUp) != 0) {
            gActors[index].unk_0xD0 = 0x4010;
        }
        else {
            gActors[index].unk_0xD0_h = 0x3B0;
            gActors[index].unk_0x158 = 0;
            gActors[index].unk_0x118 = -1.0f;
            gActors[index].unk_0x11C = 0.0f;
            func_801A7620(index);
        }
    }
    else {
        func_801A77AC(index);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807758CC.s")
#endif

void func_807759AC(uint16_t index) {
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

void func_80775AA8(uint16_t index) {
    gActors[index].unk_0x118 = 1.5f;
    func_801A76DC(index);
    func_801A78DC(index);
}

#ifdef NON_MATCHING
// Differences are primarily regalloc and instruction order
void func_80775B10(uint16_t index) {
    float phi_f12;
    float phi_f12_2;

    phi_f12 = gActors[index].unk_0x118;
    if ((gActors[index].unk_0x11C + gActors[index].unk_0x118) >= 32.0) {
        func_800036C8(0x53, index);
        phi_f12 = gActors[index].unk_0x118;
    }

    phi_f12_2 = phi_f12;
    if (phi_f12 < D_801B0080) {
        gActors[index].unk_0x118 = (float)D_801B0088;
        phi_f12_2 = gActors[index].unk_0x118;
    }

    gActors[index].unk_0x118 = func_80029860(phi_f12_2, 1.5f, 0.02f);
    func_801A76DC(index);
    if (gActors[index].unk_0xD0_h != 0xA1) {
        gActors[index].unk_0xE6 = 1;
        gActors[index].unk_0xE8 = &D_800E1C2C;
    }
    func_801A78DC(index);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80775B10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80775C24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80775DF4.s")

#ifdef NON_MATCHING
// Difference is stack size (temp has to go?) if we make Actor_Spawn have a return value
// Does Actor_Spawn return an Actor*?
void func_80775FF8(uint16_t index1) {
    float temp;
    uint16_t index0;

    index0 = func_800284B8(8, 0x10);
    if (index0 != 0) {
        gActors[index0].unk_0xD2 = 0x1D04;

        Actor_Spawn(index0);
        temp = D_801B00A0;
        gActors[index0].unk_0x84 = 0x13C;
        gActors[index0].pos.x = gActors[index1].pos.x;
        gActors[index0].pos.z = gActors[index1].pos.z + 0x10;
        gActors[index0].unk_0x94 = 0xA01;
        gActors[index0].flag = (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK3);
        gActors[index0].unk_0x18C = &D_800D8668;
        gActors[index0].unk_0x150._w = 0x100000;
        gActors[index0].unk_0xB4 = temp;
        gActors[index0].unk_0xB8 = temp;
        gActors[index0].unk_0x154._w = gActors[index1].unk_0x160;
        gActors[index0].unk_0x158 = 0x20000;
        gActors[index0].unk_0x15C = 0x14;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80775FF8.s")
#endif

#ifdef NON_MATCHING
// Bodies of the if statements are getting optimized out?
void func_807760F8(uint16_t index) {
    if (gActors[index].unk_0x164 >= 0) {
        gActors[index].unk_0x164--;
    }

    if ((gButtonPress & gButton_A) != 0) {
        if (gActors[index].unk_0x160 < 3) {
            if (gActors[index].unk_0x164 < 0) {
                gActors[index].unk_0xD0_h = 0x131;
                gActors[index].unk_0xF0 = 0x40000;
                gActors[index].unk_0x158 = 0;
                gActors[index].unk_0x160++;
                gActors[index].unk_0x164 = 8;
                gActors[index].unk_0x124 = 1.0f;

                func_800036C8(0x118, index);
                func_801A8008(index);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807760F8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807761D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807766FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777468.s")

void func_80777524(uint16_t index) {
    if (D_800E3584 & 0xC0000) {
        gActors[index].unk_0xD0_h = 0x70;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777D24.s")

void func_80777E5C(uint16_t index) {
    gActors[index].unk_0x184 = gActors[index].unk_0x17C;
    gActors[index].unk_0x186 = gActors[index].unk_0x180_w;
    gActors[index].unk_0xD0_h = 0x430;
}

#ifdef NON_MATCHING
// Differences are regalloc, instruction order, and an extra li 0x100
void func_80777EA8(uint16_t index) {
    if (gActors[index].unk_0xD0_h == 0) {
        gActors[index].unk_0xD0_h++;
        gActors[index].unk_0x94 = 0x200;
        gActors[index].flag = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[index].unk_0xE6 = 1;
        gActors[index].unk_0xE8 = &D_800E1F64;
        func_8006CD5C(index);
        func_8006CC70(index);
    }
    else if ((gActors[index].unk_0xD8 & 4) != 0) {
        func_8006D3E4(index, 0x100);
        gActors[index].unk_0xEC = 0xFFFB0000;
        gActors[index].unk_0xF0 = 0x30000;
        gActors[index].unk_0xD8 &= 0xFFF7;
        gActors[index].flag &= ~(ACTOR_FLAG_UNK2 | ACTOR_FLAG_UNK4); //-0x21;
        func_800036C8(0x9D, index);
    }
    else {
        func_80065724(index, 0x100);
        gActors[index].pos.x = gActors[71].pos.x;
        gActors[index].pos.y = gActors[71].pos.y + 4;
        gActors[index].pos.z_w = gActors[71].pos.z_w - 1;
        func_80066BCC(index);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777EA8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80777FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778110.s")

void func_80778214(uint16_t index0, uint16_t index1) {
    Actor* actor = &gActors[index1];
    actor->unk_0xD2 = 0x45;
    Actor_Spawn(index1);
    actor->pos.x = gActors[index0].pos.x;
    actor->pos.y = gActors[index0].pos.y;
    actor->unk_0xEC = gActors[index0].unk_0x148 * 131072.0f;
    actor->unk_0xF0 = 0x30000;
    actor->unk_0x110 = D_801B01C0;
    actor->unk_0xD8 = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778300.s")

#ifdef NON_MATCHING
void func_80778768(uint32_t index) {
    func_8007325C(index);

    if (gActors[index].unk_0xD0_h) {
        if (gActors[index].unk_0xD0_h != 0x61) {
            if (gActors[index].unk_0xD0_h == 0x91) {
                func_80073558(index, 8);
                gActors[index].unk_0x118 = D_801B01C8;
            }
            return;
        }

        gActors[index].unk_0xEC = 0;

        if (gActors[index].unk_0x150._w & 0x80000000) {
            gActors[index].unk_0xD0_h = 0x430;
        }

        func_80067E50(index, 0x800E1700);

        if ((func_80073558(index, 8) & 0x8000) == 0) {
            if (gActors[index].unk_0x158 >= 0x3E9) {
                gActors[index].unk_0x158 = 0x3E8;
            }

            if ((*(int32_t*)0x800E3584 & 0xC0000) != 0) {
                gActors[index].unk_0xD0_h = 0x70;
                return;
            }

            if (gActors[index].unk_0x174 == 0) {
                if (func_80029B00(0xA0, 0x60, -0x60) != 0) {
                    gActors[index].unk_0x174++;
                    func_8007D0DC(index, 0x801AFE70, 0, 0x20, 0x1E);
                    gActors[index].unk_0xE6 = 1;
                    gActors[index].unk_0xE8 = &D_800E1C00;
                }
            }

            if (((gActors[index].unk_0xD8 & 0xF) == 0) && (D_800E3584 & 0x10000)) {
                if (gActors[index].unk_0x158 >= 0x1F) {
                    if (func_80029B00(0xC8, 0x60, -0x60) != 0) {
                        gActors[index].unk_0xD0_h = 0x3A0;
                        gActors[index].unk_0x158 = (int32_t)&D_801AA120;
                    }
                }
                return;
            }
        }
        else {
            return;
        }
    }
    else {
        gActors[index].unk_0xD0_h = 0x60;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778768.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80778EEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807790F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807793C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807795F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807796CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807798D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_807799C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779AF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_80779E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077A3DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077A5EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077A8C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077AA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077AE40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077AEB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077B428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077B908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077B910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BA74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BAC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BE70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BEB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077BF48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C058.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C240.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C31C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077C624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077CEAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D1B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D69C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/7754F0/func_8077D8B8.s")
