#include "BGM.h"
#include "actor.h"
#include "common.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025E00.s")
// romcopies 0x34400 bytes from rom:0x214b40 to ram:0x80296000
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025E6C.s")
//RomCopies gActorFuncTable_80192000 based on u32[4] lookup.
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_8002601C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_800260C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026494.s")

#ifdef NON_MATCHING
// the subtraction gets optimized out...
s32 func_8002653C(void) {
    int32_t phi_a0 = 0x41E53F8;
    phi_a0 -= 0x4000000;

    return RomCopy_A(phi_a0, &D_800DE348, 0x1500);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_8002653C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_800265FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_8002670C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_800267FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_8002694C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80026F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80027018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_800270E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_800271B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_8002729C.s")