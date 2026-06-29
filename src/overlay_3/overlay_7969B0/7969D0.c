#include "common.h"
#include "actor.h"

// "Overlay 3" code for world 1

extern f32 D_801B2428_7984F8[];

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B0900_7969D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B0A10_796AE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B0ABC_796B8C.s")

void func_801B1000_7970D0(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    f32 scale = D_801B2428_7984F8[actor->var_158];

    actor->flags = 0x283;
    actor->posZ.raw = 0x8000;
    actor->unk_12C = scale;
    actor->scaleY = scale;
    actor->scaleX = scale;
    actor->unk_0F8.raw = (FIXED_UNIT(1.25) * scale);
    actor->unk_0FC.raw = (FIXED_UNIT(3.25) * scale);
    Actor_SetHitboxA(actor_index, (s16)(s32)(16.0f * scale));
    actor->posX.whole = actor->var_15C - gScreenPosCurrentX.whole;
    actor->velocityX.raw = 0;
    actor->unk_16C = 0x10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B112C_7971FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B131C_7973EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1414_7974E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1618_7976E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1768_797838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B182C_7978FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1A28_797AF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1AD4_797BA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1CA4_797D74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1DD4_797EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B1F24_797FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B2018_7980E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_3/overlay_7969B0/7969D0/func_801B21C8_798298.s")
