#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

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
// functionally matched, major regalloc differences, and pointer dereference for actor creates extra instructions
void func_80016CB4(void) {
    uint16_t index;

    if ((D_80137458 & 0x10) == 0) {
        for (index = 0; index < ACTOR_COUNT1; index++) {
            if ((gActors[index].flag & 2) != 0) {
                func_800160EC(index);
                gActors[index].unk_0x98 &= 0xFFF7FFFF;
            }
        }
        D_800BE5D8 = gActors[index].pos.x_w + *((int16_t*)(&D_800BE558));
        D_800BE5DC = gActors[index].pos.y_w + *((int16_t*)(&D_800BE55C));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80016CB4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_80016D94.s")
