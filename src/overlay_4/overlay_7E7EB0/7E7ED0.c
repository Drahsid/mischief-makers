#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern void func_80011F44(s16 arg0, s16 arg1, s32 arg2, s32 arg3);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9900_7E7ED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B99A4_7E7F74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9A3C_7E800C.s")


void func_801B9B64_7E8134(u16 actor_index, s16 arg1, s16 arg2) {
    D_800D28E8++;
    Sound_PlaySfx(0x93);
    gActors[actor_index].flags = 0;
    func_80011F44(arg1, arg2, 2, 8);
}

void func_801B9BE4_7E81B4(void) {
    D_800D2928 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9BF0_7E81C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9CD4_7E82A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9D00_7E82D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BA634_7E8C04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BA984_7E8F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BACBC_7E928C.s")

