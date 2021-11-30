#include "BGM.h"
#include "common.h"

/*
void func_80025E00(void){
    D_801376DC=&D_80200400;
    RomCopy_A(0x1E6900,&D_80267CD0,0X2E240);
    D_801376E0=&D_80200400+func_80004910(&D_80267CD0,&D_80200400);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025E00.s")

// romcopies 0x34400 bytes from rom:0x214b40 to ram:0x80296000
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/func_80025E6C.s")

//RomCopies gActorFuncTable_80192000 based on u32[4] lookup.
#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/RomCopy_ActorFuncs.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/RomCopy_ActorFuncs2.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/RomCopy_ActorFuncs3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/romcopy_actorFuncs4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/RomCopy/RomCopy_ActorFuncs5.s")

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
//seems to load data for intermission scenes.
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