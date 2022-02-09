#include "common.h"

void func_80045500(void) {
    uint16_t index;
    for (index = 0; index < 16; index++) {
        D_800D36DC[index] = 0;
        D_800D36FC[index] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045610.s")

int16_t func_800456DC(void) {
    if ((gStageTimeReal & 32)) {
        return (0xf - (gStageTimeReal & 0x1f));
    }

    return ((gStageTimeReal & 0x1f) - 0xf);
}

int16_t func_8004571C(void) {
    return func_8002B5A0(0x8001, 0, 0, func_800456DC());
}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800457C8.s")

void func_80045D84(int32_t arg0, int32_t arg1) {
    D_800D28E4 = 100;
}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045E58.s")

int32_t func_80045F08(int32_t arg0) {
    return 0;
}

#ifdef NON_MATCHING
uint16_t* func_80045F14(uint16_t* arg0) {
    gScreenPosTargetX._hi = arg0[0];
    gScreenPosTargetY._hi = arg0[1];
    gScreenPosCurrentX._hi = gScreenPosTargetX._w;
    gScreenPosCurrentY._hi = gScreenPosTargetY._w;
    gScreenPosNextX._hi = gScreenPosTargetX._hi;
    gScreenPosNextY._hi = gScreenPosTargetY._hi;
    D_800D2920 = arg0[2];
    D_800D2924 = arg0[3];
    D_800D2918 = arg0[4];
    D_800D291C = arg0[5];
    return arg0+6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045F14.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80045FA4.s")

void func_80046148(void) {
    func_80045FA4();
    gPlayerActorp->flag &= ~ACTOR_FLAG_DRAW;
    D_800BE5F4._w = 4;
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

    if (arg1) {
        D_800D28FC |= 1;
    }
}

void func_80046274(int32_t arg0, int32_t arg1) {}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800462F0.s")

void func_800463C0(void) {
    func_800462F0();
    D_800BE568 = gScreenPosCurrentX._hi - 0x90;
}

#ifdef NON_MATCHING
int32_t func_800463F0(void){
    if ((!D_800D28FC & 0x1000) && func_8005DEFC() == 0) {
        return 0;
    }

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800463F0.s")
#endif

void func_80046434(void) {
    if (gPlayerActor.flag & 0x20) {
        MODi(D_801782B0, -0x300000, 0x80000);
    }
    else {
        MODi(D_801782B0, 0x300000, 0x80000);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800465F4.s")
void func_8004664C(void){
    MODi(D_801782B4,0,0x10000);
}
//#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_8004664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046934.s")

void func_80046A30(void) {
    uint16_t index;

    func_800286C8();

    for (index = ACTOR_COUNT1; index < (ACTOR_COUNT1 + 7); index++) {
        if ((thisActor.flag & ACTOR_FLAG_UNK19)) {
            thisActor.flag = 0;
        }
    }
}
//smash to black?
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046A9C.s")
//"expanding squares" transition effect
#pragma GLOBAL_ASM("asm/nonmatchings/46100/transition_expandingSqares.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/Transition_fadeIn.s")

int32_t Cutscene_Skip(void) {
    if (gButtonPress & gButton_ZTrig) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 0x63;
        D_800D2938 = 0;
        return 1;
    }

    return 0;
}

//scene tranistion out
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80046EBC.s")

void func_800472D4(void) {
    D_800D28E8++;
    D_800D2928 = 0xA0;
    func_8007CFE0(199, 5, -0x28, 0, 0, 0x78);
}

void func_8004732C(void) {
    if (Transition_fadeIn())
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
        D_800BE5F4._w = 5;
        D_800D28E8 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_8004735C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047410.s")

#ifdef NON_MATCHING
void func_800475EC(void) {
    int16_t temp_v0;
    int16_t temp_v1;
    int32_t temp_a0;

    temp_v0 = gScreenPosCurrentX - gScreenPosNextX;
    if ((int32_t)temp_v0 >= 0) {
        D_800D2914 -= temp_v0;
    }

    temp_v1 = D_800D2914;
    temp_a0 = temp_v1 << 0x10;
    D_800D2914 = (int16_t)(temp_v1 - 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_800475EC.s")
#endif

void func_80047648(int16_t arg0) {
    D_800D2914 = (arg0 - (gPlayerActor.health / 10)) + 100;
}

void func_80047674(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047714.s")
//changes the scene index for "the day of"
void func_80047958(void) {
    uint16_t temp = D_800D28F0 - 0x1F;
    gCurrentScene = (uint16_t)D_800D28D0[temp];
    gGameState = GAMESTATE_LOADING;
    gGameSubState = 0;
}

#ifdef NON_MATCHING
void func_80047994() {
    D_800BE4EC = 1;
    if (transition_expandingSqares()) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047994.s")
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
#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047A54.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047C28.s")

void func_80047C98(void) {
    if ((D_800D28FC & 0x80) == 0) {
        func_800451E4(&D_800D2978);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/46100/func_80047CCC.s")
