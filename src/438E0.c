#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

void func_80042CE0(void) {}

void func_80042CE8(int32_t a0) {}

void func_80042CF0(int32_t a0) {}

#ifdef NON_MATCHING
void func_80042CF8(uint16_t* arg0) {
    uint16_t* sp0;
    uint16_t index = 0;

    if (arg0 != 0 && arg0[0] != 0) {
        do {
            sp0 = D_800D2978[index];
            sp0[0] = arg0[0];
            sp0[1] = arg0[1];
            sp0[2] = arg0[2];

            index += 3;
            arg0 += 6;
        } while (arg0[3] != 0);
    }

    while (index != 0x600) {
        index += 3;
        D_800D2978[index] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042CF8.s")
#endif

void func_80042D84(uint16_t index) {
    while (index != 0x600) {
        // index is being promoted to a u32 here (implicitly,) and this is on the same line as index += 3
        // this might be something like D_800D2978[index += 3]
        D_800D2978[index & 0xFFFFFFFF] = 0, index += 3; // whitespace memes
    }
}

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
    func_80042D84(phi_a3_2 & 0xFFFF);
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
    D_801069E0[D_801782C0].texture = NULL;
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
    D_801069E0[D_801782C0].texture = 0x80203440;
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

void func_80045500(void) {
    uint16_t index;
    for (index = 0; index < 16; index++) {
        D_800D36DC[index] = 0;
        D_800D36FC[index] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045610.s")

int16_t func_800456DC(void) {
    if ((gStageTimeReal & 32)) {
        return (0xf - (gStageTimeReal & 0x1f));
    }

    return ((gStageTimeReal & 0x1f) - 0xf);
}

int16_t func_8004571C(void) {
    return func_8002B5A0(0x8001, 0, 0, func_800456DC());
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800457C8.s")

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
    gScreenPosTargetX._w = arg0[0];
    gScreenPosTargetY._w = arg0[1];
    D_800BE558 = gScreenPosTargetX._w;
    D_800BE55C = gScreenPosTargetY._w;
    D_800BE560._hi = D_800BE558;
    D_800BE564._hi = D_800BE55C;
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
    gPlayerActorp->flag &= ~ACTOR_FLAG_DRAW;
    D_800BE5F4 = 4;
}

void func_80046188(int32_t arg0, int32_t arg1) {
    D_800D28E8++;
    func_80028744();
    func_80045FA4(arg0, 0);
    func_80028380();
    D_800BE544 = 0x8000;
    D_800BE6E4 = 0;
    D_800BE6E8 = 0;
    D_800BE6EC = 0;
    func_80043A68(arg1);
    func_80046A9C();
    SFX_StopAll();
    BGM_Stop();
}

void func_80046218(uint16_t arg0, uint16_t arg1) {
    D_800D28E8 = 0;
    D_800D28F4 = 0;
    D_800D28F0 = arg0;
    D_800D28E4 = 0x64;
    D_800D28EC = 0;

    if (arg1 != 0) {
        D_800D28FC |= 1;
    }
}

void func_80046274(int32_t arg0, int32_t arg1) {}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800462F0.s")

void func_800463C0(void) {
    func_800462F0();
    D_800BE568 = D_800BE558._hi - 0x90;
}

#ifdef NON_MATCHING
int32_t func_800463F0(void){
    if ((!D_800D28FC & 0x1000) && func_8005DEFC() == 0) {
        return 0;
    }

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800463F0.s")
#endif

void func_80046434(void) {
    if (gPlayerActor.flag & 0x20) {
        D_801782B0 = func_8002981C(D_801782B0, 0xFFD00000, 0x80000);
    }
    else {
        D_801782B0 = func_8002981C(D_801782B0, 0x300000, 0x80000);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800465F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046934.s")

void func_80046A30(void) {
    uint16_t index;

    func_800286C8();

    for (index = ACTOR_COUNT1; index < (ACTOR_COUNT1 + 7); index++) {
        if ((gActors[index].flag & ACTOR_FLAG_UNK19)) {
            gActors[index].flag = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046D5C.s")

int32_t func_80046E6C(void) {
    if (gButtonPress & gButton_ZTrig) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 0x63;
        D_800D2938 = 0;
        return 1;
    }

    return 0;
}


#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046EBC.s")

void func_800472D4(void) {
    D_800D28E8++;
    D_800D2928 = 0xA0;
    func_8007CFE0(199, 5, -0x28, 0, 0, 0x78);
}

void func_8004732C(void) {
    if (func_80046D5C())
        func_800472D4();
}

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

void func_80047648(int16_t arg0) {
    D_800D2914 = (arg0 - (gPlayerActor.health / 10)) + 100;
}

void func_80047674(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047714.s")

void func_80047958(void) {
    uint16_t temp = D_800D28F0 - 0x1F;
    D_800BE5D0 = (uint16_t)(*((&D_800D28D0) + temp));
    gGameState = GAMESTATE_LOADING;
    gGameSubState = 0;
}

#ifdef NON_MATCHING
void func_80047994() {
    D_800BE4EC = 1;
    if (func_80046B4C()) {
        D_800D2938 = 0;
        func_80020A54();
        func_80028744();
        func_8005DFC8(0);
        D_800D16C4 = 0;
        SFX_StopAll();
        if (D_800D28E4 == 98) {
            func_80047958();
        }
    }
    D_800D28E4 = D_800D28F0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047994.s")
#endif

void func_80047A14(void) {
    func_80047994();
    if (D_800D28E4 == D_800D28F0) {
        D_800D28E8 = 0x1000;
    }
}


#ifdef NON_MATCHING
void func_80047A54(void) {
    D_800BE4EC = 1;
    D_800D28E4++;
    D_800D2928 = 0;
    D_800D28FC = D_800D28FC & ~8 | 4;
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
