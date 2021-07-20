#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_80042CE0(void) {}

void func_80042CE8(int32_t a0) {}

void func_80042CF0(int32_t a0) {}

#ifdef NON_MATCHING
void func_80042CF8(uint16_t* arg0) {
    uint16_t new_var;
    uint16_t* sp0;
    uint32_t index;
    uint32_t new_var2;
    uint16_t* a0;
    if (!index) {
    }

    a0 = arg0;
    if (a0 != 0) {
        if ((*a0) != 0) {
            do {
                sp0 = (&D_800D2978)[index];
                index = (index + 3) & 0xFFFF;
                new_var = a0[1];
                sp0[0] = a0[0];
                sp0[1] = new_var;
                sp0[2] = a0[2];
                a0 += 6;
            } while (a0[3] != 0);
        }
    }

    new_var2 = index;
    while (new_var2 != 0x600) {
        do {
            index = (index + 3) & 0xFFFF;
            (&D_800D2978)[index] = 0;
        } while (index != 0x600);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042CF8.s")
#endif

#ifdef NON_MATCHING
// Differences are minor regalloc and instruction order (functionally identical)
void func_80042D84(int32_t arg0) {
    uint16_t* new_var;
    int32_t phi_v0;
    int32_t* new_var2;
    new_var2 = &arg0;
    phi_v0 = (*new_var2) & 0xFFFF;
    if (phi_v0 != 0x600) {
        do {
            new_var = (&D_800D2978) + phi_v0;
            phi_v0 = (phi_v0 + 3) & 0xFFFF;
            *new_var = 0;
        } while (phi_v0 != 0x600);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042D84.s")
#endif

#ifdef NON_MATCHING
void func_80042DBC(uint16_t* arg0, uint16_t arg1, int32_t* arg2) {
    int32_t temp_t9;
    uint16_t temp_a1;
    uint16_t temp_a1_2;
    uint16_t* temp_v0;
    uint16_t phi_a1;
    int32_t phi_a3;
    uint16_t* phi_a0;
    int32_t phi_a3_2;
    uint16_t phi_a1_2;
    int32_t* phi_a2;

    phi_a3_2 = 0;
    phi_a1_2 = arg1;
    phi_a2 = arg2;
    if (arg0 != 0) {
        temp_a1 = *arg0;
        phi_a1 = temp_a1;
        phi_a3 = 0;
        phi_a0 = arg0;
        phi_a3_2 = 0;
        phi_a1_2 = temp_a1;
        phi_a2 = &D_800D2978;
        if (temp_a1 != 0) {
            do {
                temp_v0 = &D_800D2978 + (phi_a3 * 2);
                temp_v0[0] = phi_a1;
                temp_v0[1] = phi_a0[1];
                temp_t9 = (phi_a3 + 3) & 0xFFFF;
                temp_v0[2] = phi_a0[2];
                temp_a1_2 = phi_a0[3];
                phi_a1 = temp_a1_2;
                phi_a3 = temp_t9;
                phi_a0 += 6;
                phi_a3_2 = temp_t9;
                phi_a1_2 = temp_a1_2;
                phi_a2 = &D_800D2978;
            } while (temp_a1_2 != 0);
        }
    }
    func_80042D84(phi_a3_2 & 0xFFFF, phi_a1_2, phi_a2, phi_a3_2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042DBC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042E28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042E84.s")

#ifdef NON_MATCHING
void func_80042F2C(int32_t arg0, int32_t arg1, int32_t arg2) {
    int32_t s0;
    int32_t s1;
    int32_t s2;

    s0 = arg0 << 0x10;
    s1 = arg1 << 0x10;
    s2 = arg2 << 0x10;
    s0 = s0 >> 0x10;
    s1 = s1 >> 0x10;
    s2 = s2 >> 0x10;

    func_80043234();
    func_8002B82C(&D_800DE348, &D_800DE348, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DE508, &D_800DE508, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DE6C8, &D_800DE6C8, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DE888, &D_800DE888, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DEA48, &D_800DEA48, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DEF88, &D_800DEF88, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DEC08, &D_800DEC08, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DEDC8, &D_800DEDC8, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DF308, &D_800DF308, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DF4C8, &D_800DF4C8, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DF688, &D_800DF688, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DF148, &D_800DF148, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DDA88, &D_800DDA88, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DDE08, &D_800DDE08, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DDC48, &D_800DDC48, 0xDF, (int16_t)s0, s1, s2);
    func_8002B82C(&D_800DDFC8, &D_800DDFC8, 0xDF, (int16_t)s0, s1, s2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042F2C.s")
#endif

void func_8004320C(void) {
    D_800D2968 = -1;
    D_800D296C = 0;
    D_800D2974 = 0;
    D_800D2970 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043234.s")

void func_80043478(void) {
    func_8002B82C(&D_800DD47C, &D_800DD47C, 0xFF, 4, 2, 2);
    func_8002B82C(&D_800DD67C, &D_800DD67C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DD87C, &D_800DD87C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DCC7C, &D_800DCC7C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DC67C, &D_800DC67C, 0xFF, 2, 4, 2);
    func_8002B82C(&D_800DC27C, &D_800DC27C, 0xFF, 2, 2, 4);
    func_8002B82C(&D_800DC47C, &D_800DC47C, 0xFF, 4, 2, 2);
    func_8002B82C(&D_800DC87C, &D_800DC87C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DCA7C, &D_800DCA7C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DC07C, &D_800DC07C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DB07C, &D_800DB07C, 0xFF, 7, 2, 2);
    func_8002B82C(&D_800DB27C, &D_800DB27C, 0xFF, 7, 2, 2);
    func_8002B82C(&D_800DB47C, &D_800DB47C, 0xFF, 1, 1, 1);
    func_8002B82C(&D_800DB67C, &D_800DB67C, 0xFF, 2, 2, 2);
    func_8002B82C(&D_800DB87C, &D_800DB87C, 0xFF, 1, 2, 5);
    func_8002B82C(&D_800DBA7C, &D_800DBA7C, 0xFF, 3, 2, 3);
    func_8002B82C(&D_800DBC7C, &D_800DBC7C, 0xFF, 4, 3, 2);
    func_8002B82C(&D_800DFE48, &D_800DFE48, 0xFF, 2, 6, 2);
    func_8002B82C(&D_800E0248, &D_800E0248, 0xFF, 8, 2, 2);
    func_8002B82C(&D_800E0448, &D_800E0448, 0xFF, 3, 3, 7);
    func_8002B82C(&D_800E0048, &D_800E0048, 0xFF, 3, 3, 3);
    func_8002B82C(&D_800DFA48, &D_800DFA48, 0xE0, 2, 6, 2);
    func_8002B82C(&D_800DFC48, &D_800DFC48, 0xE0, 8, 2, 2);
    func_8002B82C(&D_800DF848, &D_800DF848, 0xE0, 4, 2, 4);
    func_8002B82C(&D_800D9B7C, &D_800D9B7C, 0x7A, 1, 4, 1);
    func_8002B82C(&D_800D9E7C, &D_800D9E7C, 0x7A, 4, -1, 1);
    func_8002B82C(&D_800D9C7C, &D_800D9C7C, 0x7A, 1, 1, 3);
    func_8002B82C(&D_800D9F7C, &D_800D9F7C, 0x7A, 1, 1, 1);
    func_8002B82C(&D_800D9D7C, &D_800D9D7C, 0x7A, 1, 2, 3);
}

void func_80043918(void) {
    D_800D28EC = 0;
    D_800D28F0 = 0;
    D_800D28F8 = 0;
    D_800D28FC = 0;
    D_800D28F4 = 1;
    D_800D28E8 = 0;
    D_800D2938 = 0;
    D_800BE668 = 0x32;
    func_8002653C();
    func_80043234();
    func_8004320C();
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004398C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D04.s")

void func_80043D30(int32_t arg0) {
    if (D_800D2908 == 0) {
        func_80043D04();
    }
    func_80043A68(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004400C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800441F4.s")

void func_80044360(void) {
    D_801069E0[D_801782C0].unk_0x80 = 10;
    D_801069E0[D_801782C0].unk_0x8C = NULL;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800446F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800447AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044884.s")

void func_8004495C(void) {
    D_801069E0[D_801782C0].unk_0x80 = D_800D3770[D_800D37A4];
    D_801069E0[D_801782C0].unk_0x8C = 0x80203440;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800449A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044A84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044C90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044CEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800450D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004512C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800451E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045610.s")

#ifdef NON_MATCHING
// Differences are regalloc for t1 and t9 during the int16 cast for return
int16_t func_800456DC(void) {
    uint32_t temp_v1;
    int16_t temp_t1_t9;

    temp_v1 = D_801782B8;
    if ((temp_v1 & 0x20) != 0) {
        temp_t1_t9 = 15 - (temp_v1 & 0x1F);
        return temp_t1_t9;
    }

    temp_t1_t9 = (temp_v1 & 0x1F) - 15;
    return temp_t1_t9;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800456DC.s")
#endif

#ifdef NON_MATCHING
// missing "move    a3,t6" temporary variable
void func_8004571C(void) {
    int16_t temp_t6;

    temp_t6 = func_800456DC();
    func_8002B5A0(0x8001, 0, 0, temp_t6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004571C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800457C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004586C.s")

void func_80045D84(int32_t arg0, int32_t arg1) {
    D_800D28E4 = 100;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045E58.s")

int32_t func_80045F08(int32_t arg0) {
    return 0;
}

#ifdef NON_MATCHING
void func_80045F14(uint16_t* arg0) {
    D_800BE550 = arg0[0];
    D_800BE554 = arg0[1];
    D_800BE558 = D_800BE550;
    D_800BE55C = D_800BE554;
    D_800BE560 = D_800BE558;
    D_800BE564 = D_800BE55C;
    D_800D2920 = arg0[2];
    D_800D2924 = arg0[3];
    D_800D2918 = arg0[4];
    D_800D291C = arg0[5];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045F14.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045FA4.s")

void func_80046148(void) {
    func_80045FA4();
    gPlayerActorp->flag &= -2;
    D_800BE5F4 = 4;
}

void func_80046188(int32_t arg0, int32_t arg1) {
    D_800D28E8 += 1;
    func_80028744();
    func_80045FA4(arg0, 0);
    func_80028380();
    D_800BE544 = 0x8000;
    D_800BE6E4 = 0;
    D_800BE6E8 = 0;
    D_800BE6EC = 0;
    func_80043A68(arg1);
    func_80046A9C();
    func_80003A64();
    func_80003A38();
}

#ifdef NON_MATCHING
// needs reordering
void func_80046218(int16_t arg0, int32_t arg1) {
    if ((arg1 & 0xFFFF) != 0) {
        D_800D28FC |= 1;
    }

    D_800D28E4 = 0x64;
    D_800D28E8 = 0;
    D_800D28EC = 0;
    D_800D28F0 = arg0;
    D_800D28F4 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046218.s")
#endif

void func_80046274(int32_t arg0, int32_t arg1) {
    return;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800462F0.s")

void func_800463C0(void) {
    func_800462F0();
    D_800BE568 = D_800BE558 - 0x90;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800463F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800465F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046934.s")

#ifdef NON_MATCHING
// Differences are regalloc, functionally identical
void func_80046A30(void) {
    int new_var;
    Actor* actor;
    uint16_t index;

    func_800286C8();

    index = ACTOR_COUNT1;
    do {
        new_var = index;
        actor = &gActors[new_var];
        index = (index + 1) & 0xFFFF;
        if (!index) {
        }

        if ((actor->flag & 0x80000) != 0) {
            actor->flag = 0;
        }
    } while (index < (ACTOR_COUNT1 + 7));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A30.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046D5C.s")

#ifdef NON_MATCHING
// Differences are regalloc, and what seems to be a (void) {return 0; } at the bottom
int32_t func_80046E6C(void) {
    if ((D_800BE4FC & D_800BE52C) != 0) {
        D_800D28F0 = (uint16_t)D_800D28E4;
        D_800D28E4 = 0x63;
        D_800D2938 = 0;
    }

    if (1) return 1;
    else
        return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046E6C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046EBC.s")

void func_800472D4(void) {
    D_800D28E8 += 1;
    D_800D2928 = 0xA0;
    func_8007CFE0(0xC7, 5, -0x28, 0, 0, 0x78);
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004732C.s")

#ifdef NON_MATCHING
void func_8004735C(uint16_t arg0, int32_t arg1) {
    int32_t temp_t7;
    int32_t temp_t9;

    temp_t7 = D_800D28FC | 8;
    temp_t9 = D_800D2928 - 1;
    D_800D28FC = temp_t7;
    D_800D2928 = temp_t9;

    if (temp_t9 < 0) {
        D_800D28FC = temp_t7 & ~6;
        func_8007CFE0(0xC7, 3, -0x28, 0, 0, 0x78);
        gPlayerActorp->flag |= arg1;
        D_800BE5F4 = 5;
        D_800D28E8 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004735C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047410.s")

#ifdef NON_MATCHING
void func_800475EC(void) {
    int16_t temp_v0;
    int16_t temp_v1;
    int32_t temp_a0;

    temp_v0 = D_800BE558 - D_800BE560;
    if ((int32_t)temp_v0 >= 0) {
        D_800D2914 = (int16_t)(D_800D2914 - temp_v0);
    }

    temp_v1 = D_800D2914;
    temp_a0 = temp_v1 << 0x10;
    D_800D2914 = (int16_t)(temp_v1 - 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800475EC.s")
#endif

#ifdef NON_MATCHING
void func_80047648(int32_t arg0) {
    D_800D2914 = (arg0 - (D_800EF5F0 / 0xA)) + 0x64;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047648.s")
#endif

void func_80047674(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047714.s")

void func_80047958(void) {
    uint16_t new_var;
    D_800BE5D0 = (uint16_t)(*((&D_800D28D0) + ((new_var = D_800D28F0 - 0x1F) & 0xFFFF)));
    gGameState = 5;
    gGameSubState = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047994.s")

void func_80047A14(void) {
    func_80047994();
    if (D_800D28E4 == D_800D28F0) {
        D_800D28E8 = 0x1000;
    }
}

#ifdef NON_MATCHING
void func_80047A54(void) {
    int32_t temp_t0;
    int32_t temp_t2;

    D_800BE4EC = 1;
    D_800D28E4 += 1;
    D_800D2928 = 0;
    temp_t0 = D_800D28FC | 4;
    temp_t2 = temp_t0 & ~8;
    D_800D28FC = temp_t0;
    D_800D28FC = temp_t2;
    D_800BE544 = 0x8000;
    D_800D2938 = 0;
    D_800D2908 = 0;
    D_800D2900 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047A54.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047C28.s")

void func_80047C98(void) {
    if ((D_800D28FC & 0x80) == 0) {
        func_800451E4(&D_800D2978);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047CCC.s")
