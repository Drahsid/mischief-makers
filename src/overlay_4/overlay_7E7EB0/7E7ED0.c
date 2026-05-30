#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern void func_80011F44(s16 arg0, s16 arg1, s32 arg2, s32 arg3);
extern s16 D_800BE5D8;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s32 D_800D2928;

s32 func_801B9900_7E7ED0(u16 arg0, s16 arg1, s16 arg2) {
    if (Math_AbsS32(arg1 - D_800BE5D8) < 0x12) {
        if (Math_AbsS32(arg2 - D_800BE5DC) < 0x80) {
            if (gActors[0].health >= 0) {
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800D28E8 = arg0;
                func_80028380();
                return 1;
            }
        }
    }

    return 0;
}

void func_801B99A4_7E7F74(u16* actor_indices, u16 arg1) {
    u16 actor_index = actor_indices[0];

    if (arg1 == gActors[actor_index].colorA) {
        return;
    }

    arg1 = gActors[actor_index].colorA - 1;

    if (actor_index != 0) {
        do {
            if (arg1) {
                gActors[actor_index].colorA = arg1;
            }
            else {
                gActors[actor_index].flags = 0;
            }

            actor_indices++;
            actor_index = actor_indices[0];
        } while (actor_index != 0);
    }
}

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

void func_801B9BF0_7E81C0(s16 arg0, s16 arg1, void* arg2) {
    switch (D_800D2928) {
        case 0:
            break;

        case 1:
            D_800D2924 = arg1;
            D_800D2928++;
            break;

        case 2:
            if (arg0 < D_800BE5D8) {
                D_800D2920 = arg0;
                D_800D2928++;
            }
            break;

        case 3:
            if ((arg0 - 0x100) < D_800BE558) {
                Actor_ClearRange(0x30, 0x90);
                Actor_LoadSpawnTable(arg2);
                D_800D28E8++;
            }
            break;
    }
}

void func_801B9CD4_7E82A4(s16 arg0) {
    if (D_800BE558 < arg0) {
        D_800D2920 = arg0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801B9D00_7E82D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BA634_7E8C04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BA984_7E8F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7E7EB0/7E7ED0/func_801BACBC_7E928C.s")
