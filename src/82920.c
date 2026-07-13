#include "common.h"
#include "80D90.h"

void func_80081D20(u16 actor_index) {
    Actor_Initialize(actor_index);
    func_8008105C(actor_index, D_800E2600, D_800E25B0);
    gActors[actor_index].unk_178 = (s32)D_800E31EC;
    func_80081478(actor_index, D_800E2600, 1);
    func_80081790(actor_index, D_800E334C);
    func_800819A8(actor_index, D_800E2600);
    gActors[actor_index + 0x1].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0x5].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0x7].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0x9].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0xB].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0xD].graphicFlags |= ACTOR_GFLAG_SCALE;
}

void func_80081E38(u16 actor_index) {
    gActors[actor_index + 0x1].scaleX *= 0.7;
    gActors[actor_index + 0x1].scaleY *= 0.9;
    gActors[actor_index + 0x5].scaleX *= 0.5;
    gActors[actor_index + 0x7].scaleX *= 0.5;
    gActors[actor_index + 0x9].scaleX *= 0.5;
    gActors[actor_index + 0xB].scaleX *= 0.5;
    gActors[actor_index + 0xD].scaleX *= 0.8;
    gActors[actor_index + 0xD].scaleY *= 0.8;
    gActors[actor_index + 0x7].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x7, 0x20);
    gActors[actor_index + 0xB].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xB, 0x20);
    gActors[actor_index + 0xD].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xD, 0x10);
}

void func_80081FC8(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        func_800819A8(actor_index, D_800E2600);
    }
}

void func_80082024(u16 actor_index) {
    func_80081E38(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_80082088(u16 actor_index) {
    s32 pad0;
    s32 pad1;

    if (actor_index == 0x40) {
        gActors[actor_index].posZ.whole = 16;
    }
    if (actor_index == 0x50) {
        gActors[actor_index].posZ.whole = -257;
    }
    if (actor_index == 0x60) {
        gActors[actor_index].posZ.whole = -129;
    }
    func_80081FC8(actor_index);
    switch (gActors[actor_index].state) {
    case 1:
        break;
    case 0:
        func_80081D20(actor_index);
        gActors[actor_index].state = 1;
        break;
    }
    func_80082024(actor_index);
}

void func_80082184(u16 actor_index) {
    func_80081E38(actor_index);
}
