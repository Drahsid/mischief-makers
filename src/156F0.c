#include <inttypes.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <ultra64.h>
#include <actor.h>

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014AF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80014FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800150FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800151D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800152C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800153A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015490.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800154F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_8001556C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800155E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_8001564C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800156C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80015B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800160EC.s")

#ifdef NON_MATCHING
/* Differences are regalloc and instruction order
 * Additionally, my code is generating nops below lw?
 * This function iterates over all of the actors, and updates the collision for active actors
*/
void func_80016CB4(void) {
    Actor* actor;
    int32_t index;

    if ((D_80137458 & 0x10) == 0) {
        index = 0;
        // I am sure this is supposed to be a for loop, but my testing was unsuccessful
        do {
            actor = &gActors[index];
            if (Actor_Active_Get(actor) != 0) {
                func_800160EC(index); // update collision
                actor->unk_0x98 &= 0xFFF7FFFF;
            }

            index = (index + 1) & 0xFFFF;
        } while (index < ACTOR_COUNT1);

        D_800BE5D8 = (int32_t)(PlayerActor.pos_x + D_800BE558);
        D_800BE5DC = (int32_t)(PlayerActor.pos_y + D_800BE55C);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80016CB4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80016D94.s")
