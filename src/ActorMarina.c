#include "common.h"

#ifdef NON_MATCHING
uint16_t ActorTick_Marina_SetFacing(uint16_t index) {
    uint16_t ret;

    if ((D_801370CC & gButton_DLeft) == 0) {
        ret = 0;
        if ((D_801370CC & gButton_DRight) && (ret = 2, thisActor.flag & 0x20)) {
            ret = 0x82;
        }
    }
    else {
        ret = 1;
        if (thisActor.flag & 0x20) {
            ret = 0x81;
        }
    }

    if (D_801370CC & gButton_DDown) {
        ret |= 0x10;
    }

    if (D_801370CC & gButton_DUp) {
        ret |= 0x20;
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/ActorTick_Marina_SetFacing.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_800486F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048C28.s")

int32_t D_800D5794[32] = {
    0x4000,  0x20000, 0x20000, 0x10000, 0x8000,  0x38000, 0x38000, 0x38000, 0x28000, 0x2666,
    0x50000, 0x50000, 0x50000, 0x50000, 0x50000, 0x30000, 0x30000, 0x30000, 0x28000, 0x6000,
    0x28000, 0x28000, 0x28000, 0x20000, 0x38000, 0x38000, 0x38000, 0x28000, 0x30000, 0x30000,
    0x30000, 0x20000
};

int32_t ActorMarina_VelByScale(int32_t arg0) {
    return D_800D5794[arg0] * gPlayerActorScale;
}

int32_t func_80048CE4() {
    if (gPlayerActor.actorState_b[1] == 1) {
        return 1;
    }

    if (gPlayerActor.actorState_b[1] < 46) {
        return 0;
    }

    if (gPlayerActor.actorState_b[1] < 55) {
        return 2;
    }

    return 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80048F70.s")

int32_t func_80049040(uint16_t index) {
    if ((thisActor.flag3 & 0x40) == 0) {
        return 0;
    }

    thisActor.flag &= ~(ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK14);
    thisActor.flag &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23),
        thisActor.flag |= ACTOR_FLAG_UNK17; // whitespace memes

    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_800490BC.s")

#ifdef NON_MATCHING
// Needs reordering
int32_t func_800491B8(uint16_t index, uint32_t arg1, int16_t arg2) {
    Actor* actor = &thisActor;

    if (actor->vel.y_w > 0) {
        return 0;
    }

    if ((actor->flag3 & 0x20) == 0) {
        return 0;
    }

    actor->flag &=
        ~(ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 |
          ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23); // 0xFF3CB53F;
    actor->flag |= ACTOR_FLAG_UNK16;
    arg2 = ((float)arg2 * gActors->unk_0x120);

    actor->unk_0x150._w = ABS(actor->vel.y_w) - 4;
    if (actor->unk_0x150._w <= 0) {
        actor->unk_0x150._w = 1;
    }

    actor->vel.y_w = 0;
    actor->unk_0x150._w *= 3;
    if (arg1 >= 0) {
        actor->unk_0x17C._w = arg1;
        if (arg2 < actor->hitboxBY1) {
            actor->pos.y = (actor->pos.y + actor->hitboxBY1) - arg2;
        }
    }

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_800491B8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80049300.s")

uint32_t func_80049460(uint16_t index) {
    switch (func_80049300(index)) {
        case 1: {
            if (thisActor.flag3 & 0x80) thisActor.unk_0x140._bu[0] = 0;
            if (D_801373D8 & 2) thisActor.flag &= ~ACTOR_FLAG_FLIPPED;
            if (D_801373D8 & 1) thisActor.flag |= ACTOR_FLAG_FLIPPED;

            if (thisActor.actorState_b[1] != 0x16) thisActor.unk_0x150._w = 0;
            thisActor.actorState = 0x1F;

            return 1;
            break;
        }
        case 2: {
            if (thisActor.flag3 & 0x80) thisActor.unk_0x140._bu[0] = 0;

            if (D_801373D8 & 2) thisActor.flag &= ~ACTOR_FLAG_FLIPPED;
            if (D_801373D8 & 1) thisActor.flag |= ACTOR_FLAG_FLIPPED;
            if (thisActor.actorState_b[1] != 0x16) thisActor.unk_0x150._w = 0;

            thisActor.actorState = 0x1F;

            return 2;
            break;
        }
        case 3: {
            if (D_801373D8 & 0x20) thisActor.actorState = 0x2D;
            else thisActor.actorState = 0x2C;

            return 3;
            break;
        }
        default: {
            return 0;
            break;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80049660.s")

int32_t func_80049A04(uint16_t index) {
    short new_var;
    uint32_t temp_a0;

    temp_a0 = D_800D4184[func_8005D338(index)];
    if (temp_a0 == 0) {
        return 0;
    }

    new_var = *((int8_t*)(temp_a0 + thisActor.unk_0x170._b[1]));
    return (float)(new_var << 0x10) * gActors->unk_0x120;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_80049AC0.s")

void func_8004A8E0(uint16_t index) {
    thisActor.unk_0x12C._bu[2] = 0xFF;
}

void func_8004A918(uint16_t index) {
    Actor* actor = &thisActor;

    actor->unk_0x12C._bu[2] |= 0x41;
    actor->flag = actor->unk_0x150._w;
}
//gPlayerActor.actorState 0
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004A960.s")

void func_8004AA64(uint16_t index) {
    thisActor.unk_0x12C._bu[2] |= 0x41;
    if (thisActor.actorState_b[0] == 0) {
        thisActor.unk_0x140._hu[1] = 0;
        thisActor.unk_0x140._bu[1] = 0;
        thisActor.unk_0x180._w = 0;
        D_801373E0.unk_0x13 = 0;
        D_801373E0.unk_0x12 = 100;
        thisActor.unk_0x12C._bu[3] = 0;
        thisActor.vel.y_w = 0;
        thisActor.vel.x_w = 0;
        thisActor.flag &= ACTOR_FLAG_FLIPPED;
        thisActor.flag |= ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK27;
        thisActor.actorState_b[0] = 1;
        thisActor.unk_0x128 = 1.0f;
        thisActor.unk_0x124 = 1.0f;
    }

    thisActor.unk_0x17C._w = 0;
    func_8005D370(index, 1);
    thisActor.actorState = 3;
}
//deals with marina's idle state
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004AB3C.s")

void func_8004B0A0(uint16_t index) {
    Actor* actor = &thisActor;
    actor->unk_0x12C._hu[0] = 7;
    MODi(actor->vel.x_w, 0, ActorMarina_VelByScale(0));

    if (actor->actorState_b[0] == 0) {
        func_8005A4B0(index, 1.0f);
        SFX_Play_1(0x25U);
        actor->unk_0x170._w = 0x2A;
        actor->actorState_b[0]++;
    }

    if (actor->unk_0x170._b[1] == 1) {
        actor->unk_0x170._b[0] = 0;
        if (actor->unk_0x150._w == 0) actor->unk_0x170._b[1] = 2;
        else actor->unk_0x150._w--;
    }

    if (func_8005D418(index)) {
        actor->actorState = (uint16_t)3;
    }
}

void func_8004B18C(uint16_t index) {
    int32_t phi_a1;
    Actor* actor;

    actor = &thisActor;
    actor->unk_0x12C._hu[0] = 7;

    phi_a1 = ActorMarina_VelByScale(1);
    if ((actor->flag & ACTOR_FLAG_FLIPPED) != 0) {
        phi_a1 = -phi_a1;
    }

    MODi(actor->vel.x_w, phi_a1, ABS(phi_a1) / 8);
    func_8005D370(index, 0x1D);

    if (actor->unk_0x170._b[0] == 0 && (actor->unk_0x170._b[1] == 2 || actor->unk_0x170._b[1] == 8)) {
        SFX_Play_1(0x53U);
    }

    if (((D_801373D8 & 3) == 0) || ((D_801373D8 & 0x80) != 0)) {
        actor->actorState = 3;
    }
}

void func_8004B290(uint16_t index) {
    thisActor.unk_0x12C._hu[0] = 7;
    if (thisActor.actorState_b[0] == 0) {
        thisActor.unk_0x170._w = 0x2D;
        thisActor.actorState_b[0] = 1;
    }
    MODi(thisActor.vel.x_w, 0, ActorMarina_VelByScale(0) * 2);
    if (thisActor.vel.x_w != 0) {
        thisActor.unk_0x180._bu[3] = 4;
    }
    else{
        thisActor.flag |= ACTOR_FLAG_UNK14;
        thisActor.actorState = 3;
    }
}
#ifdef NON_MATCHING
void func_8004B344(uint16_t index) { //regalloc, stack. 99.48% matching
    s32 sp38[6];
    s32 temp_v1;
    s16 phi_a0;

    thisActor.unk_0x12C._hu[0] = 2U;
    if (thisActor.actorState_b[0] == 0) {
        thisActor.unk_0x150._w = 0x10;
        if (D_801373F0 == 4) {
            thisActor.vel.x_w = (D_801373EE / 100) * ActorMarina_VelByScale(5) + ActorMarina_VelByScale(9);
            if (ActorMarina_VelByScale(10) < thisActor.vel.x_w) {
                thisActor.vel.x_w = ActorMarina_VelByScale(0xA);
            }
            thisActor.actorState_b[0] = 2U;
            if (thisActor.flag & 0x20) {
                thisActor.actorState_b[0] |= 0x80;
            }
        }
        if (D_801373F0 == 0xC) {
            thisActor.vel.x_w = -((D_801373EE / 100) * ActorMarina_VelByScale(5) + ActorMarina_VelByScale(9));
            if (thisActor.vel.x_w < -ActorMarina_VelByScale(0xA)) {thisActor.vel.x_w = -ActorMarina_VelByScale(0xA);}
            thisActor.actorState_b[0] = 1U;
            if ((thisActor.flag & 0x20) == 0) {
                thisActor.actorState_b[0]|= 0x80;
            }
        }
        thisActor.unk_0xDA = 0;
        thisActor.unk_0xDB = 0x15;
        thisActor.attackDmg = 0;
        thisActor.hitboxAY0 = thisActor.hitboxBY0 - 2;
        thisActor.hitboxAY1 = thisActor.hitboxBY1 + 8;
        if ((thisActor.actorState_b[0] & 0x80) == 0) {
            if ((thisActor.flag & 0x20) == 0) {
                thisActor.hitboxAX0 = 0;
                thisActor.hitboxAX1 = thisActor.hitboxBX1 + 1;
            } else {
                thisActor.hitboxAX1 = 0;
                thisActor.hitboxAX0 = thisActor.hitboxBX0 - 1;
            }
            thisActor.unk_0x170._w = 0x47;
        } else {
            if ((thisActor.flag & 0x20) == 0) {
                thisActor.hitboxAX1 = 0;
                thisActor.hitboxAX0 = (thisActor.hitboxBX0 - 1);
            } else {
                thisActor.hitboxAX0 = 0;
                thisActor.hitboxAX1 = (thisActor.hitboxBX1 + 1);
            }
            thisActor.unk_0x170._w = 0x4A;
        }
        func_8005C098(index, 1);
        thisActor.unk_0x17C = 0;
        thisActor.unk_0x17C._b[1] = 2;
        thisActor.unk_0x182 = (s8) D_801373F0;
        D_801373F2 = 0x14;
        D_801373F3 = 1;
    }
    if (((s8) thisActor.unk_0x170._b[0] == 0) && ((thisActor.unk_0x170._b[1] == 0) || (thisActor.unk_0x170._b[1] == 3))) {
        D_801370D2 = 0;
        func_8005C250(index);
    }
    if ((D_801373D8 & 0x10)) {
        thisActor.actorState = 9;
    } else {
        if (--thisActor.unk_0x150._w == 0xA) {
            SFX_Play_1(0x27);
            sp38[1] = thisActor.pos.y+thisActor.hitboxBY1;
            sp38[3] = 0x16C;
            sp38[4] = 0;
            sp38[0] = thisActor.pos.x;
            sp38[2] = thisActor.pos.z;
            gActors[func_80059F30(index, sp38, 0.2, 0xF)].scaleY /= 2;
        }
        if (thisActor.unk_0x150._w < 0xA) {
            thisActor.unk_0x12C._hu[0] |= 4;
        }
        if (thisActor.unk_0x150._w < 8) {
            MODi(thisActor.vel.x_w, 0, ActorMarina_VelByScale(0));
        }
        if (ABS(thisActor.vel.x_w) >= 0x30000) {
            if (ABS(thisActor.hitboxAX0) < ABS(thisActor.hitboxAX1)) {
                phi_a0 = (thisActor.pos.x + thisActor.hitboxAX1 + 1);
            } else {
                phi_a0 = (thisActor.pos.x + thisActor.hitboxAX0  - 1);
            }
            if ((func_80012AB4(phi_a0, thisActor.pos.y) & 0x80)) {
                thisActor.actorState_b[0] = 1U;
                thisActor.actorState_b[1] = 0x11;
                thisActor.vel.x_w =-thisActor.vel.x_w *.75;
            } else {
                thisActor.flag |= 0x80;
                goto block_40;
            }
        } else {
block_40:
            if (thisActor.unk_0x150._w == 0) {
                if (ABS(thisActor.vel.x_w)>ActorMarina_VelByScale(5)) {
                    thisActor.unk_0x150._w = 1;
                } else {
                    thisActor.flag &=~0x80;
                    thisActor.flag |= 0x40;
                    thisActor.actorState = 3;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004B344.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004B878.s")
//marina's Down-A dash
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004BB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004BEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004C5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004CE1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004D140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004D6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004D7BC.s")
//gPlayerActor.actorState 32
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004DA6C.s")
//gPlayerActor.actorState 33
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004DC44.s")
//gPlayerActor.actorState 44
void func_8004E1D4(int32_t arg0) {}
//gPlayerActor.actorState 45
void func_8004E1DC(int32_t arg0) {}
//gPlayerActor.actorState 55
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004E1E4.s")
//gPlayerActor.actorState 56
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004E4E0.s")
//animation test? set gplayeractor.actorState_b[1] to 0x3A
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004E6FC.s")
//gPlayerActor.actorState 59
#ifdef NON_MATCHING
// Needs reordering
void func_8004EAE4(uint16_t index) {
    int16_t phi_a3;

    thisActor.unk_0x12C._bu[2] |= 0x40;

    if (thisActor.actorState_b[0] == 0) {
        thisActor.unk_0x170._w = 0;
        thisActor.actorState_b[0]++;
        thisActor.graphic = (uint16_t)thisActor.unk_0x158._w;
    }

    func_80083A04(
        thisActor.graphic - thisActor.unk_0x158._w, (int16_t)thisActor.pos.x - 0x20, (int16_t)thisActor.pos.y + 0x30, 0);

    phi_a3 = 0;
    if (((gButtonHold & gButton_DRight) != 0) &&
        (((thisActor.unk_0x150._w == 0)) || (phi_a3 = 1, ((thisActor.unk_0x150._w < 9) == 0)))) {
        thisActor.graphic++;
        phi_a3 = 1;
        if (thisActor.unk_0x15C < (thisActor.graphic & 0xFFFF)) {
            thisActor.graphic = (uint16_t)thisActor.unk_0x158._w;
            phi_a3 = 1;
        }
    }

    phi_a3++;
    if (((gButtonHold & gButton_DLeft) != 0) && (((thisActor.unk_0x150._w == 0)) || (((thisActor.unk_0x150._w < 9) == 0)))) {
        thisActor.graphic--;
        if ((thisActor.graphic & 0xFFFF) < thisActor.unk_0x158._w) {
            thisActor.graphic = (uint16_t)thisActor.unk_0x15C;
        }
    }

    if (phi_a3 == 0) {
        thisActor.unk_0x150._w = 0;
        return;
    }

    thisActor.unk_0x150._w++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/func_8004EAE4.s")
#endif
//gPlayerActor.actorState 60
void func_8004EC60(uint16_t index) {
    Actor* actor;
    uint32_t temp_v1;

    actor = &thisActor;
    thisActor.vel.x_w = 0;
    thisActor.unk_0x12C._bu[2] |= 0xC1;
    thisActor.vel.y_w = 0;

    temp_v1 = D_801373D8;
    if ((temp_v1 & 2)) {
        thisActor.vel.x_w = 0x80000;
    }

    if ((temp_v1 & 1)) {
        thisActor.vel.x_w = 0xFFF80000;
    }

    if ((temp_v1 & 0x20)) {
        thisActor.vel.y_w = 0x80000;
    }

    if ((temp_v1 & 0x10)) {
        thisActor.vel.y_w = 0xFFF80000;
    }

    D_801373E0.DebugPosX = gPlayerPosXMirror._w;
    D_801373E0.DebugPosY = gPlayerPosYMirror._w;
}

#ifdef NON_MATCHING
// ActorFunc for Marina
void ActorTick_Marina(uint16_t index) {
    int16_t* phi_v0;
    int16_t* phi_v1;

    if ((D_801373E0.unk_0x78 & 8) == 0) {
        if (thisActor.actorState == 0) {
            func_8004A960(index);
        }

        D_800BE5E4 = 0;
        thisActor.flag2 &= 0xF781;
        thisActor.rgba.r = thisActor.rgba.g = thisActor.rgba.b = 0; // whitespace memes
        D_800BE5E0 = D_800BE5E4;
        D_801373E0.unk_0x70 = 0;
        thisActor.pos.z_w = 0;

        MODi(D_800D57E0, 0x6000, 0x400);

        if (thisActor.unk_0x12C._bu[3] < 4) {
            thisActor.unk_0x12C._bu[3]++;
        }

        D_801370CC = gButtonHold;
        D_801370CE = gButtonPress;

        if (D_800BE5F4._w != 0) {
            if (D_800BE5F4._w&0xFF == 2) {
                func_800485AC(index, &D_801370CE, &D_801370CC);
            }
            else {
                phi_v0 = gInputHistoryHold;
                phi_v1 = gInputHistoryPress;
                do {
                    phi_v0[1] = 0;
                    phi_v1[-3] = 0;
                    phi_v0[2] = 0;
                    phi_v1[-2] = 0;
                    phi_v0[3] = 0;
                    phi_v1[-1] = 0;
                    phi_v0[0] = 0;
                    phi_v1[0] = 0;

                    phi_v0 += 4;
                    phi_v1 += 4;
                } while (((uint32_t)&phi_v1[3]) != (uint32_t)&gInputHistoryPress[64]);

                D_801370CE = 0;
                D_801370CC = 0;

                thisActor.unk_0x12C._bu[3] = 0;

                D_801373E0.unk_0x12 = 0x64;
                D_801373E0.unk_0x13 = 0;

                func_800485AC(index, &D_801370CE, &D_801370CC);
            }
        }

        D_801373D8 = ActorTick_Marina_SetFacing(index);

        if (D_801373E0.DebugPosX) {
            func_80083A04(D_801373E0.DebugPosX, -0x20, 0x40);
            if ((gSceneFrames & 0x7F) == 0) {
                D_801373E0.DebugPosX = 0;
            }
        }

        if (D_801373E0.DebugPosY) {
            func_80083A04(D_801373E0.DebugPosY, -0x20, 0x30);
            if ((gSceneFrames & 0x7F) == 0) {
                D_801373E0.DebugPosY = 0;
            }
        }

        if (D_801373E0.DebugValC) {
            func_80083A04(D_801373E0.DebugValC, -0x20, 0x20);
            if ((gSceneFrames & 0x7F) == 0) {
                D_801373E0.DebugValC = 0;
            }
        }

        if (D_801373E0.DebugValD) {
            func_80083A04(D_801373E0.DebugValD, -0x20, 0x10);
            if ((gSceneFrames & 0x7F) == 0) {
                D_801373E0.DebugValD = 0;
            }
        }

        // when these two flags are set, marina looks like she's holding blockman,
        // however, blockman himself doesn't effect these
        // maybe it's the tricycle?
        thisActor.flag &= ~ACTOR_FLAG_UNK3;
        if (D_801373E0.unk_0x78 & 0x10000) {
            thisActor.flag |= ACTOR_FLAG_UNK3;
            thisActor.unk_0x12C._hu[0] &= 0xFFF8;
            thisActor.unk_0xDC &= 0xFFFE;
            thisActor.pos.x_w += D_801373E0.unk_0x60;
        }

        func_80048740(index);

        if (func_80058F9C(index) == 0) {
            func_80049AC0(index);
        }

        thisActor.flag &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11); //~0xA80;
        thisActor.unk_0x12C._hu[0] = 0;
        thisActor.unk_0x12C._bu[2] = 0;

        //(((thisActor.unkD0 & 0xFF) * 4) + 0x800D0000)->unk3DB0(index);
        gActorFuncTable_800D3DB0[thisActor.actorState](index);

        func_80048BB0(index);

        if (thisActor.flag & ACTOR_FLAG_ATTACHED) {
            D_801373E0.unk_0x70 = thisActor.unk_0xD6;

            if (func_8005D338(index) < 0x66) {
                gActors[thisActor.unk_0xD6].unk_0x108 += func_80049A04(index); // return size
            }

            // ((((((d6 * 4) - d6) * 4) + d6) * 4) - d6) * 8
            /* ((((((1 * 4) - 1) * 4) + 1) * 4) - 1) * 8
             * (((((4 - 1) * 4) + 1) * 4) - 1) * 8
             * ((((3 * 4) + 1) * 4) - 1) * 8
             * (((12 + 1) * 4) - 1) * 8
             * ((13 * 4) - 1) * 8
             * (52 - 1) * 8
             * 51 * 8
             * = 408 == 0x198
             * bruh
             */
            // held = (((((((thisActor.unk_0xD6 * 4) - thisActor.unk_0xD6) * 4) + thisActor.unk_0xD6) * 4) -
            // thisActor.unk_0xD6) * 8) + gActors;
            gActors[thisActor.unk_0xD6].unk_0x104._w += thisActor.vel.x_w;
            gActors[thisActor.unk_0xD6].unk_0x108 += thisActor.vel.y_w;
        }

        func_8005D450(index);
        func_8005CAA8(index, &D_800D4000);
        func_8005BFA4(index);

        if (func_8005C5E0(index) == 1 && thisActor.unk_0x13C >= 0x1F) {
            thisActor.unk_0x180._bu[3] = 6;
        }

        if ((thisActor.flag3 & 2) != 0) {
            D_801373E0.unk_0x68 = thisActor.unk_0xF8._w;
            D_801373E0.unk_0x6C = thisActor.unk_0xFC._w;
        }

        D_801373E0.unk_0x64 = thisActor.flag3;
        thisActor.flag3 &= 0xFFDFF9FF;
        D_801373E0.unk_0x7C++;

        thisActor.scaleX = D_800EF630 * thisActor.unk_0x124;
        thisActor.scaleY = (&D_800EF630)[-0x274] * thisActor.unk_0x128; // -0x9D0 (I don't know how this is produced?)

        D_800BE5D8 = thisActor.pos.x_w + gScreenPosCurrentX;
        D_800BE5DC = thisActor.pos.y_w + gScreenPosCurrentY;
        D_800BE5E8 = thisActor.vel.x_w;
        D_800BE5EC = thisActor.vel.y_w;

        if (gCurrentScene == SCENE_FREEFALL) { //play the fall whistle sound if falling in "freefall"
            if (thisActor.vel.y_w <= -294912.0) {
                if (D_801373E0.FallBool == 0) {
                    if (func_8000334C(0x3E) >= 0) {
                        D_801373E0.FallBool = 1;
                    }

                    return;
                }
            }
            else if (D_801373E0.FallBool != 0) {
                SFX_Stop(0x3E);
                D_801373E0.FallBool = 0;

                return;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorMarina/ActorTick_Marina.s")
#endif
