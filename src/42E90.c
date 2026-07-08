#define Actor_Initialize_RET void
#include "common.h"
#include "actor.h"

extern ActorFunc D_800D28B0[];

s32 func_80042290(u16 actor_index) {
    if ((gActors[actor_index].actorType == ACTORTYPE_OVL1_GEN_GUN) &&
        (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) &&
       !(gActors[actor_index].unk_188 & 0x8000)) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

// update function for actor type 4
void ActorUpdate_Type4(u16 arg0) {
}

void func_80042310(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

void func_80042324(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

// update function for actor type 10
void ActorUpdate_Type10(u16 arg0) {
}

// update function for actor type 23
void ActorUpdate_Type23(u16 arg0) {
}

// update function for actor type 25
void ActorUpdate_Type25(u16 arg0) {
}

// update function for actor type 26
void ActorUpdate_Type26(u16 arg0) {
}

// update function for actor type 71
void ActorUpdate_Type71(u16 arg0) {
}

void Actor_AdvanceState(u16 actor_index) {
    gActors[actor_index].state++;
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/W3o78
void func_800423A0(u16 actor_index) {
    s32 y;
    s32 x;
    s32 var_a1_2;
    s32 angle;
    u16 var_v1;

    if (gActors[actor_index].var_160 & 1) {
        gActors[actor_index].var_160 &= ~1;
        if (gButtonHold & gButton_DRight) {
            angle = 0x8000;
        }
        else if (gButtonHold & gButton_DLeft) {
            angle = 0x01FF8000;
        }
        else if (gButtonHold & gButton_DUp) {
            if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
                angle = 0x01008000;
            }
            else {
                angle = 0xFF8000;
            }
        }
        else if (gButtonHold & gButton_DDown) {
            if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
                angle = 0x02FF8000;
            }
            else {
                angle = 0x03008000;
            }
        }
        else {
            angle = gActors[actor_index].var_15C;
            gActors[actor_index].var_160 |= 1;
        }
        gActors[actor_index].var_15C = angle;
        angle = gActors[actor_index].var_158;
    }
    else {
        x = (gActors[actor_index].var_15C - gActors[actor_index].var_158) & 0x03FFFFFF;
        if (x != 0) {
            if ((x < 0x800000) || (x >= 0x03800001)) {
                gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x30000, 0x20000);
            }
            else {
                gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x160000, 0x40000);
            }
        }
        else if (gButtonHold & gButton_RTrig) {
            gActors[actor_index].var_160 |= 1;
        }
        angle = func_800298D0(gActors[actor_index].var_15C, gActors[actor_index].var_158, gActors[actor_index].unk_168);
    }
    gActors[actor_index].var_158 = angle;
    angle /= 0x10000;
    if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_16C += 24;
    }
    else {
        gActors[actor_index].unk_16C -= 24;
    }
    x = COS(gActors[actor_index].unk_16C) * 294912.0f;
    y = SIN(gActors[actor_index].unk_16C) * 294912.0f;
    x = (((COS(angle) * 2621440.0f) + x) / 65536.0f) + gPlayerActor.posX.whole + gScreenPosCurrentX.whole;
    y = (((SIN(angle) * 2621440.0f) + y) / 65536.0f) + gPlayerActor.posY.whole + gScreenPosCurrentY.whole;
    
    var_a1_2 = (x << 0x10) + (y & 0xFFFF);
    for (var_v1 = 0; var_v1 < 8; var_v1++) {
        angle = (&gActors[actor_index].unk_170)[var_v1];
        (&gActors[actor_index].unk_170)[var_v1] = var_a1_2;
        var_a1_2 = angle;
    }
    gActors[actor_index].posX.whole = (gActors[actor_index].unk_18C / 65536) - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = gActors[actor_index].unk_18C - gScreenPosCurrentY.whole;
}
#else
void func_800423A0(u16);
#pragma GLOBAL_ASM("asm/nonmatchings/42E90/func_800423A0.s")
#endif

void func_800427E0(u16 arg0) {
    u16 index;

    index = gActors[arg0].var_154;
    if (gActors[index].actorType == ACTORTYPE_12) {
        gActors[index].posX.whole = gActors[arg0].posX.whole;
        gActors[index].posY.whole = gActors[arg0].posY.whole;
        gActors[index].posZ.whole = gActors[arg0].posZ.whole;
    }
    else {
        gActors[arg0].state += 1;
    }
}

void func_80042864(u16 actor_index) {
    s16 x;
    s16 y;
    u16 index;

    if (!(gActiveFrames & 3)) {
        x = gActors[actor_index].posX.whole - (Rand() & 0x1F) + 0x10;
        y = gActors[actor_index].posY.whole - (Rand() & 0x1F) + 0x10;
        index = SpawnParticle_List_90C0_16(D_800E158C, x, y, gActors[actor_index].posZ.whole);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[index].var_160 = 8;
            gActors[index].var_154 = -16;
            gActors[index].var_110 = 0.02f;
            gActors[index].unk_114 = 0.02f;
            gActors[index].unk_118 = -0.01f;
            gActors[index].unk_11C = -0.01f;
            gActors[index].scaleX = 0.35f;
            gActors[index].scaleY = 0.55f;
            gActors[index].colorR = 0xFF;
            gActors[index].colorG = 0xCC;
            gActors[index].colorB = 0x80;
        }
    }
}

void func_800429A4(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].graphicFlags = 0;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = 0x1CE;
    gActors[actor_index].colorR = 0x80;
    gActors[actor_index].var_110 = 30.0f;
}

void func_80042A0C(u16 actor_index) {
    u16 index;

    func_80042864(actor_index);
    func_800423A0(actor_index);
    index = Actor_RangeFindInactive(0x10, 0x18);
    if (index != 0) {
        gActors[actor_index].state += 1;
        gActors[actor_index].var_154 = index;
        gActors[actor_index].var_110 -= 1.0f;
        gActors[index].actorType = ACTORTYPE_12;
        Actor_Initialize(index);
        gActors[index].graphicFlags = 0;
        gActors[index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE;
        Actor_SetHitboxB(index, 4);
        gActors[index].var_150 = gActors[actor_index].var_150;
        func_800427E0(actor_index);
    }
}

void func_80042AEC(u16 arg0) {
    func_80042864(arg0);
    func_800423A0(arg0);
    func_800427E0(arg0);
}

void func_80042B2C(u16 actor_index) {
    if (gActors[actor_index].var_110 < 0.0f) {
        gActors[actor_index].flags = 0;
    }
    else {
        gActors[actor_index].state -= 2;
    }
}

void func_80042B94(u16 actor_index) {
    D_800D28B0[gActors[actor_index].state](actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_80042C10(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (gActors[actor_index].parentIndex != 0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].actorType = 0;
        }
        else {
            if (gActors[actor_index].var_150 == 0) {
                func_8002ED34(actor_index, gActors[actor_index].unk_0F8.raw, gActors[actor_index].unk_0FC.raw, 0, 0);
            }
            gActors[actor_index].parentIndex = 0;
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK9;
        }
    }
    else {
        gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    }
}
