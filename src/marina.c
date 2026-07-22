#include "common.h"
#include "actor.h"
#include "data_symbols.h"
#include "boot.h"
#include "debug.h"
#include "input.h"
#include "48A30.h"
#include "4FEB0.h"
#include "57F20.h"
#include "59EA0.h"
#include "5D120.h"

extern u16 D_801373D8;
extern ActorFunc gMarinaStateTable[];

u8 func_80048600(u16 actor_index) {
    u8 ret;

    if (D_801370CC & gButton_DLeft) {
        ret = 1;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret |= 0x80;
        }
    }
    else if (D_801370CC & gButton_DRight) {
        ret = 2;
        if ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            ret |= 0x80;
        }
    }
    else {
        ret = 0;
    }

    if (D_801370CC & gButton_DDown) {
        ret |= 0x10;
    }

    if (D_801370CC & gButton_DUp) {
        ret |= 0x20;
    }

    return ret;
}

// get direction from which Marina is pulling?
s32 func_800486F4(void) {
    s8 v0 = gPlayerData.unk_10;
    if ((gPlayerData.unk_10 == 2) || (gPlayerData.unk_10 == 6)) {
        v0 = 4;
    }

    if ((gPlayerData.unk_10 == 0xE) || (gPlayerData.unk_10 == 0xA)) {
        v0 = 0xC;
    }

    return v0;
}

void func_80048740(u16 actor_index); 
#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048740.s")

void func_80048BB0(u16 actor_index);
#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048C28.s")

// get velocity for Marina's actions and multiply it by field 0x120
s32 func_80048C94(s32 arg0) {
    return gMarinaActionVelocities[arg0] * gPlayerActor.unk_120;
}

s32 func_80048CE4(void) {
    if (gPlayerActor.stateLower == 1) {
        return 1;
    }
    if (gPlayerActor.stateLower < 0x2e) {
        return 0;
    }
    if (gPlayerActor.stateLower < 0x37) {
        return 2;
    }
    return 3;
}

void func_80048D30(u16 actor_index, s32 arg1) {
    s8* var_a0;
    s8* temp_v0 = D_800D4094[arg1];

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        var_a0 = &temp_v0[(gActors[actor_index].unk_170_s8[1] * 4)];
        gActors[actor_index].hitboxAX0 = var_a0[0];
        gActors[actor_index].hitboxAX1 = var_a0[1];
    }
    else {
        var_a0 = &temp_v0[(gActors[actor_index].unk_170_s8[1] * 4)];
        gActors[actor_index].hitboxAX1 = -var_a0[0];
        gActors[actor_index].hitboxAX0 = -var_a0[1];
    }

    gActors[actor_index].hitboxAY0 = var_a0[2];
    gActors[actor_index].hitboxAY1 = var_a0[3];
    gActors[actor_index].hitboxAX0 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAX1 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAY0 *= gPlayerActor.unk_120;
    gActors[actor_index].hitboxAY1 *= gPlayerActor.unk_120;
}

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80048F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_800490BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_800491B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049660.s")

s32 func_80049A04(u16 actor_index) {
    s32 temp_v1;
    s8 *temp_a0;

    temp_a0 = D_800D4184[func_8005D338(actor_index)];
    if (temp_a0 == NULL) {
        return 0;
    }

    temp_v1 = temp_a0[gActors[actor_index].unk_170_s8[1]] << 0x10;
    temp_v1 *= gPlayerActor.unk_120;
    return temp_v1;
}

void func_80049AC0(u16 actor_index);
#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_80049AC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004A8E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004A918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/Marina_State0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004AA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004AB3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B18C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004B878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004BB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004BEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004C5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004CE1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004D7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004DA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004DC44.s")

void func_8004E1D4(s32 arg0) {
}

void func_8004E1DC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004E6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EAE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/marina/func_8004EC60.s")

void ActorUpdate_Marina(u16 actor_index) {
    s32 i;
    s32 pad;
    u16 pad2;
    u16 temp_a1;

    if (gPlayerData.flags & PLAYERDATA_PAUSEACTOR) {
        return;
    }

    if (gActors[actor_index].state == 0) {
        Marina_State0(actor_index);
    }

    gActors[actor_index].graphicFlags &= ~(ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ);
    gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
    D_800BE5E0 = D_800BE5E4 = 0;
    gPlayerData.unk_70 = 0;
    gActors[actor_index].posZ.raw = 0;
    gMarinaActionVelocities[19] = Math_ApproachS32(gMarinaActionVelocities[19], FIXED_UNIT(0.375), FIXED_UNIT(0.015625));
    if (gActors[actor_index].unk_12F_u8 < 4) {
        gActors[actor_index].unk_12F_u8++;
    }
    D_801370CC = gButtonHold;
    D_801370CE = gButtonPress;
    if (D_800BE5F4.unk_00_u32 != 0) {
        if ((D_800BE5F4.unk_00_u32 & 0xFF) == 2) {
            func_800485AC(actor_index);
        }
        else {
            for (i = 0; i < ARRAYLENGTH(gButtonPressHistory); i++) {
                gButtonPressHistory[i] = gButtonHoldHistory[i] = 0;
            }
            D_801370CC = D_801370CE = 0;
            gActors[actor_index].unk_12F_u8 = 0;
            gPlayerData.unk_12 = 0x64;
            gPlayerData.unk_13 = 0;
            func_800485AC(actor_index);
        }
    }
    D_801373D8 = func_80048600(actor_index);
    if (gPlayerData.debugPosX != 0) {
        OSD_PrintIntHex(gPlayerData.debugPosX, -0x20, 0x40);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugPosX = 0;
        }
    }
    if (gPlayerData.debugPosY != 0) {
        OSD_PrintIntHex(gPlayerData.debugPosY, -0x20, 0x30);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugPosY = 0;
        }
    }
    if (gPlayerData.debugVal2 != 0) {
        OSD_PrintIntHex(gPlayerData.debugVal2, -0x20, 0x20);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugVal2 = 0;
        }
    }
    if (gPlayerData.debugVal3 != 0) {
        OSD_PrintIntHex(gPlayerData.debugVal3, -0x20, 0x10);
        if (!(gActiveFrames & 0x7F)) {
            gPlayerData.debugVal3 = 0;
        }
    }
    gActors[actor_index].flags &= ~ACTOR_FLAG_FREEZE_POS;
    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].unk_12C_u16[0] &= ~7;
        gActors[actor_index].unk_0DC &= ~1;
        gActors[actor_index].posX.raw += gPlayerData.unk_60;
    }
    func_80048740(actor_index);
    if (func_80058F9C(actor_index) == 0) {
        func_80049AC0(actor_index);
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].unk_12C_u16[0] = 0;
    gActors[actor_index].unk_12E_u8 = 0;
    gMarinaStateTable[gActors[actor_index].state & 0xFF](actor_index);
    func_80048BB0(actor_index);
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        temp_a1 = gActors[actor_index].parentIndex;
        gPlayerData.unk_70 = temp_a1;
        if (func_8005D338(actor_index) < 0x66) {
            gActors[temp_a1].unk_108 += func_80049A04(actor_index);
        }
        gActors[temp_a1].unk_104 += gActors[actor_index].velocityX.raw;
        gActors[temp_a1].unk_108 += gActors[actor_index].velocityY.raw;
    }
    func_8005D450(actor_index);
    func_8005CAA8(actor_index, D_800D4000[0]);
    func_8005BFA4(actor_index);
    if ((func_8005C5E0(actor_index) == 1) && (gActors[actor_index].unk_13C_s16[0] >= 0x1F)) {
        gActors[actor_index].unk_180_u8[3] = 6;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        gPlayerData.marina_Unk_0F8 = gActors[actor_index].unk_0F8.raw;
        gPlayerData.marina_Unk_0FC = gActors[actor_index].unk_0FC.raw;
    }
    gPlayerData.marina_Flags_098 = gActors[actor_index].flags_098;
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    gPlayerData.unk_7C++;
    gActors[actor_index].scaleX = gActors[actor_index].unk_124 * gPlayerActor.unk_120;
    gActors[actor_index].scaleY = gActors[actor_index].unk_128 * gPlayerActor.unk_120;
    gPlayerPosX.raw = gActors[actor_index].posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gActors[actor_index].posY.raw + gScreenPosCurrentY.raw;
    gPlayerVelXMirror.raw = gActors[actor_index].velocityX.raw;
    gPlayerVelYMirror.raw = gActors[actor_index].velocityY.raw;
    if (gCurrentScene == SCENE_FREEFALL) {
        if (gActors[actor_index].velocityY.raw <= -294912.0) { // 0x48000
            if (gPlayerData.fallWhistle == 0) {
                if (Sound_PlaySfx(SFX_FALLWHISTLE) >= 0) {
                    gPlayerData.fallWhistle = 1;
                }
            }
        }
        else if (gPlayerData.fallWhistle != 0) {
            Sound_StopSfx(SFX_FALLWHISTLE);
            gPlayerData.fallWhistle = 0;
        }
    }
}
