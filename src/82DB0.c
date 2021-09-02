#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

/* We need to know more about the game to properly decompile this
 * Major issue is the wacky addresses 05095C98, 0040AC80, FB000000, FAFFFFFC
 * Could be tlb, segments, overlays
 * Beyond that, the behavior of this function seems to be to dma sprite data to 801C4400
*/
#ifdef NON_MATCHING
void func_800821B0(void) {
    uint32_t addr;
    uint32_t devaddr;
    uint32_t temp_t7 = &D_05095C98;
    uint32_t temp_t9 = &D_0040AC80;
    uint16_t index;

    if (((gActors->flag & ACTOR_FLAG_DRAW) != 0) || D_800BE714 != 0) {
        if ((gActors->unk_0x84 & 0xF800) == 0x5800) {
            index = (gActors->unk_0x84 & 0x7FF) % 0x322;
            D_800BE714 = 0;

            if (index != 0) {
                devaddr = (index * 4) + temp_t7 + -0x05000004 + temp_t9;
            }

            // get address of the next dma
            func_800011F0(devaddr, &addr, 8);

            // dma
            func_80001290(addr + 0xFB000000 + temp_t9, &D_801C4400, temp_t7 - addr);
            D_80178460 = 1;
            return;
        }
    }
    D_80178460 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82DB0/func_800821B0.s")
#endif

#ifdef NON_MATCHING
// regalloc, instruction order
void func_800822B8(void) {
    uint16_t phi_v0;
    uint32_t temp_v1;
    uint32_t temp_t7;

    if (D_80178460 != 0) {
        func_80001264();

        temp_t7 = D_800BE6A4 & 0x7FFF;
        temp_v1 = temp_t7 + gCurrentFramebufferIndex;
        if (temp_v1 != 0) {
            if (temp_v1 != 1) {}
            else {
                func_80098B50(0x801C4400, 0x8027BEE8, 0x1000);
                phi_v0 = temp_t7;
            }
        }
        else {
            func_80098B50(0x801C4400, 0x8027AEE8, 0x1000);
            phi_v0 = temp_t7;
        }

        D_800BE6A4 = phi_v0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/82DB0/func_800822B8.s")
#endif
