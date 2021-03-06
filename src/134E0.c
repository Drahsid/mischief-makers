#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

uint8_t func_800128E0(int32_t x, int32_t y) {
    return 255;
}

#ifdef NON_MATCHING
uint8_t func_800128F0(int32_t x, int32_t y) {
    if (((x & 0xF)) >> 1 + 8 <= (y & 0xF))
        return 0;

    return 255;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_800128F0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_800129C8.s")

#ifdef NON_MATCHING
uint8_t func_80012A24(uint32_t arg0, uint32_t arg1) {
    if ((arg1 & 0xF) < (0xF - (arg0 & 0xF))) {
        return 0xFF;
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012A24.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012A58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012B88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/134E0/func_80012C04.s")
