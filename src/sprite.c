#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_800045F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_init.s")

void Sprite_Finish(int32_t* arg0) {
    int32_t sp1C;
    int32_t* temp_a0;

    temp_a0 = &sp1C;
    sp1C = *arg0;
    spFinish(temp_a0);
    *arg0 = (int32_t)(sp1C - 8);
}

void NOTosSetTime(int32_t arg0, uint32_t arg1) {
    D_800C4EC4 = arg0;
    D_800C4EC8 = arg1;
}

void func_8000474C(int32_t arg0, uint32_t arg1) {
    D_800C4EBC = arg0;
    D_800C4EC0 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_setScale.s")

#ifdef NON_MATCHING
void Sprite_SetColor(uint64_t arg0, int8_t arg1, int8_t arg2, int8_t arg3) {
    int8_t new_var;
    new_var = arg3;
    D_800C4EAC = arg0;
    D_800C4EB0 = (0, arg1);
    D_800C4EB4 = arg2;
    D_800C4EB8 = new_var;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_SetColor.s")
#endif

void Sprite_SetTransparent(int32_t arg0) {
    Sprite* new_var = &D_800C4E5C;
    spClearAttribute(&D_800C4E5C, 0xFFFF);
    if (arg0 != 0) {
        spSetAttribute(new_var, SP_TRANSPARENT);
    }
    else {
        spClearAttribute(new_var, SP_TRANSPARENT);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/sprite_func.s")

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004910.s")