#include "common.h"
#include "actor.h"

extern f32 D_801A7F70_78CAB0;

void func_801A6900_78B440(s32 arg0) {
}

void func_801A6908_78B448(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x2000);
}

void func_801A6968_78B4A8(u16 actor_index, u16 new_actor_index, u16 graphic_index) {
    f32 scale;

    gActors[new_actor_index].actorType = 0x1D;
    func_8001E2D0(new_actor_index);

    scale = D_801A7F70_78CAB0;
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
    gActors[new_actor_index].graphicIndex = graphic_index;
    gActors[new_actor_index].posX.whole = gActors[(u16)(actor_index + 0xB)].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[(u16)(actor_index + 0xB)].posY.whole;
    gActors[new_actor_index].posZ.raw = gActors[(u16)(actor_index + 0xB)].posZ.raw;
    gActors[new_actor_index].scaleX = scale;
    gActors[new_actor_index].scaleY = scale;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6A44_78B584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6AD0_78B610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6CA8_78B7E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6D4C_78B88C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6E48_78B988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A7100_78BC40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A7C78_78C7B8.s")
