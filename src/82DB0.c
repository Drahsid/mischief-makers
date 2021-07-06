#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#ifdef NON_MATCHING
void func_800821B0(void) {
    int32_t sp2C;
    int32_t sp28;
    int32_t temp_t1;
    uint16_t temp_v0;
    int32_t phi_a0;

    if (((gPlayerActor.flag & 1) != 0) || (D_800BE714 != 0)) {
        temp_v0 = gPlayerActor.unk_0x84;
        if ((temp_v0 & 0xF800) == 0x5800) {
            D_800BE714 = (uint16_t)0U;
            temp_t1 = ((int32_t)(temp_v0 & 0x7FF) % 0x322) & 0xFFFF;
            phi_a0 = 0x1004A0918;
            if (temp_t1 != 0) {
                phi_a0 = (temp_t1 * 4) + 0x5095C98 + 0xFAFFFFFC + 0x40AC80;
            }
            func_800011F0(phi_a0, &sp28, 8);
            func_80001290(sp28 + 0xFB000000 + 0x40AC80, 0x801C4400, sp2C - sp28);
            D_80178460 = (uint16_t)1;
            return;
        }
    }
    D_80178460 = (uint16_t)0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82DB0/func_800821B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/82DB0/func_800822B8.s")
