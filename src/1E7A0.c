#include <actor.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

void func_8001DBA0(uint16_t* arg0, uint16_t index) {
    gActors[index].unk_0xD2 = arg0[5];
    func_8001E2D0(index);
    gActors[index].pos.x = arg0[1] - D_800BE558;
    gActors[index].pos.y = arg0[2] - D_800BE55C;
    gActors[index].unk_0x110 = arg0[3];
    gActors[index].unk_0xD8 = arg0[4];
}

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001DE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1E7A0/func_8001E2D0.s")
