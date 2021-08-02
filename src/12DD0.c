#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#ifdef NON_MATCHING
// Only difference is index should get moved into t9 when masked, and back into v1 before the loop continues
void func_800121D0(void) {
    uint16_t sp1E;
    uint16_t index;

    sp1E = D_800EF5F0;
    func_8001E2D0(0);

    if (sp1E) {}

    D_800EF5F0 = sp1E;

    gActors->pos.z = 1;
    D_800BE5E8 = 0;
    D_800BE5EC = 0;
    gActors->unk_0xCC = 0;
    D_800BE5D4 = 0;
    D_800BE5F0 = 0;

    if (gActors) {}

    D_800BE5F8 = 0;

    for (index = 0; index < 0x40;  index++ /* = (index + 1) & 0xFFFF*/) {
        (&D_8011DD70)[index] = 0;
        (&D_801225F0)[index] = 0;
    }

    func_8004A960(0, &D_801225F0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800121D0.s")
#endif

void func_80012288(void) {
    gPlayerActor.unk_0xD2 = 0x16;
    func_800121D0();
}

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800122B0.s")

#ifdef NON_MATCHING
// totally identical except for swapped regalloc on 2 instructions
void func_800123AC(void) {
    int32_t temp_a0;

    temp_a0 = gPlayerPosXMirror - D_800BE558;

    if (temp_a0 < -0x90) {
        gPlayerPosXMirror = D_800BE558 - 0x90;
        D_800EF598 = -0x90;
        return;
    }

    if ((gPlayerPosXMirror - D_800BE558) >= 0x91) {
        gPlayerPosXMirror = D_800BE558 + 0x90;
        D_800EF598 = 0x90;
        return;
    }

    D_800EF598 = (int16_t)temp_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_800123AC.s")
#endif

void func_80012418(void) {
    gPlayerActor.pos.y = (int16_t)(*(int16_t*)(&gPlayerPosYMirror) - D_800BE55C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012634.s")

#ifdef NON_MATCHING
/* Differences come from when we read D_800BE558 and D_800BE55C
 * The code reads them as 16 bit, then 32 bit
 * I am not sure how to replicate, since what I have currently written gets optimized out
 */
void func_80012830(void) {
    // It is lh then lw the same values ?
    D_800BE560 = (int16_t)D_800BE558;
    D_800BE560 = (int32_t)D_800BE558;
    if (D_800BE62C != 0) {
        func_800123AC();
    }
    else {
        func_80012438();
    }
    D_800BE564 = (int16_t)D_800BE55C;
    D_800BE564 = (int32_t)D_800BE55C;
    if (D_800BE630 != 0) {
        func_80012418();
    }
    else {
        func_80012634();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/12DD0/func_80012830.s")
#endif
