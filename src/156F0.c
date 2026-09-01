#include "common.h"

extern ActorFunc D_800C7F20[];
extern ActorFunc D_800C7F60[];
extern ActorFunc D_800C7FA0[];

void ActorsUpdate_Velocity(void) {
    u16 index;

    if (D_800BE6F8 != 0) {
        D_800BE6F8--;
    }
    if (gActorStall != 0) {
        for (index = 0; index < 0xC0; index++) {
            if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].flags & ACTOR_FLAG_ALWAYS_UPDATE)) {
                gActors[index].posX.raw += gActors[index].velocityX.raw;
                gActors[index].posY.raw += gActors[index].velocityY.raw;
                gActors[index].posZ.raw += gActors[index].velocityZ.raw;
            }
        }
    }
    else {
        for (index = 0; index < 0xC0; index++) {
            if (gActors[index].flags & ACTOR_FLAG_ACTIVE) {
                gActors[index].posX.raw += gActors[index].velocityX.raw;
                gActors[index].posY.raw += gActors[index].velocityY.raw;
                gActors[index].posZ.raw += gActors[index].velocityZ.raw;
            }
        }
    }
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
}

void ActorsUpdate_Position(void) {
    u16 index;
    u16 actor_1;
    s32 delta_x;
    s32 delta_y;

    for (index = 0; index < 0x90; index++) {
        if (gActors[index].flags != 0) {
            actor_1 = gActors[index].actorHitIndex;
            if (actor_1) {
                actor_1 &= 0x7FFF;
                delta_x = TO_FIXED((gScreenPosCurrentX.whole + gActors[actor_1].posX.whole) - gActors[index].actorHitX);
                delta_y = TO_FIXED((gScreenPosCurrentY.whole + gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0) - gActors[index].actorHitY);
                gActors[index].posX.raw += delta_x;
                gActors[index].posY.raw += delta_y;
                gActors[index].posX.raw += gActors[actor_1].velocityX.raw;
                gActors[index].posY.raw += gActors[actor_1].velocityY.raw;
            }
        }
    }
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    if ((TO_FIXED(gPlayerActor.hitboxBX0) + gPlayerPosX.raw) < gScreenBoundX0.raw) {
        if (gPlayerData.flags & PLAYERDATA_UNBOUND) {
            gPlayerData.flags &= ~(PLAYERDATA_UNBOUND | PLAYERDATA_BOUND);
        }
        if (gPlayerData.flags & PLAYERDATA_BOUND) {
            gPlayerPosX.raw = gScreenBoundX0.raw - TO_FIXED(gPlayerActor.hitboxBX0);
            gPlayerActor.posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
            if (gPlayerActor.velocityX.raw < 0) {
                gPlayerVelXMirror.raw = gPlayerActor.velocityX.raw = 0;
            }
            gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK2;
        }
    }
    else {
        if (gScreenBoundX1.raw < (TO_FIXED(gPlayerActor.hitboxBX1) + gPlayerPosX.raw)) {
            if (gPlayerData.flags & PLAYERDATA_UNBOUND) {
                gPlayerData.flags &= ~(PLAYERDATA_UNBOUND | PLAYERDATA_BOUND);
            }
            if (gPlayerData.flags & PLAYERDATA_BOUND) {
                gPlayerPosX.raw = gScreenBoundX1.raw - TO_FIXED(gPlayerActor.hitboxBX1);
                gPlayerActor.posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
                if (gPlayerActor.velocityX.raw > 0) {
                    gPlayerVelXMirror.raw = gPlayerActor.velocityX.raw = 0;
                }
                gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK3;
            }
        }
        else {
            gPlayerData.flags |= PLAYERDATA_BOUND;
        }
    }
    if (D_801370D2 <= 0) {
        D_800BE6A4 |= 0x8000;
        D_801370D4 = ((D_800BE6A4 & 0xFFFF) + gCurrentFramebufferIndex + 1) * 2;
        D_801370D2 = 0xA;
    }
    D_801370D0++;
    D_801370D8[D_801370D0 & 0x7F] = D_801370D4;
    D_801371D8[D_801370D0 & 0x7F] = gPlayerPosX.whole;
    D_801372D8[D_801370D0 & 0x7F] = gPlayerPosY.whole;
}

void func_80014F14(u16 actor_index, s32 arg1) {
    s32 temp_a3;

    temp_a3 = (((gScreenPosCurrentX.parts[0] + gActors[actor_index].posX.whole + arg1) & ~0xF) - gScreenPosCurrentX.parts[0]) - arg1;
    if (Math_AbsS32_2(temp_a3 - gActors[actor_index].posX.whole) < 0xF) {
        gActors[actor_index].posX.whole = temp_a3;
    }
    else {
        if (gActors[actor_index].posX.whole < temp_a3) {
            gActors[actor_index].posX.whole += 0xF;
        }
        else {
            gActors[actor_index].posX.whole -= 0xF;
        }
    }
    gActors[actor_index].posX.frac = 0;
}

void func_80014FD0(u16 actor_index, s32 arg1) {
    s32 temp_t0;

    temp_t0 = ((((gScreenPosCurrentY.whole + gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) & ~0xF) - gScreenPosCurrentY.whole) - gActors[actor_index].hitboxBY1) + arg1;
    if (Math_AbsS32_2(temp_t0 - gActors[actor_index].posY.whole) < 0xF) {
        gActors[actor_index].posY.whole = temp_t0;
    }
    else {
        if (gActors[actor_index].posY.whole < temp_t0) {
            gActors[actor_index].posY.whole = gActors[actor_index].posY.whole + 0xF;
        }
        else {
            gActors[actor_index].posY.whole = gActors[actor_index].posY.whole - 0xF;
        }
    }
    gActors[actor_index].posY.frac = 0;
}

void func_80015094(u16 actor_index) {
    if (!(gActors[actor_index].unk_0A0 & 0xF) && (gActors[actor_index].unk_0A0 & 0xC0)) {
        func_80014FD0(actor_index, 0x10);
    }
}

void func_800150FC(u16 actor_index) {
    func_80014FD0(actor_index, ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2);
}

void func_80015174(u16 actor_index) { \
    func_80014FD0(actor_index, (gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF);
}

void func_800151D8(u16 actor_index) {
    func_80014FD0(actor_index, ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2 + 8);
}

void func_80015250(u16 actor_index) {
    func_80014FD0(actor_index, -((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2 + 7);
}

void func_800152C8(u16 actor_index) { \
    func_80014FD0(actor_index, 0xF - ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF));
}

void func_80015330(u16 actor_index) {
    func_80014FD0(actor_index, (-((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2) + 0xF);
}

void func_800153A8(u16 actor_index) {
    if (gActors[actor_index].unk_0A0 == 0) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK6;
    }
    else {
        func_80014FD0(actor_index, 0);
    }
}

void func_80015418(u16 actor_index) {
    func_80014FD0(actor_index, (((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2) - 0x10);
}

void func_80015490(u16 actor_index) { \
    func_80014FD0(actor_index, ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) - 0x10);
}

void func_800154F4(u16 actor_index) {
    func_80014FD0(actor_index, (((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2) - 8);
}

void func_8001556C(u16 actor_index) {
    func_80014FD0(actor_index, -((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2 - 9);
}

void func_800155E4(u16 actor_index) { \
    func_80014FD0(actor_index, -1 - ((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF));
}

void func_8001564C(u16 actor_index) {
    func_80014FD0(actor_index, (-((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xF) / 2) - 1);
}

u8* func_800156C4(u8* arg0, u16 actor) {
    arg0[0x24] = arg0[0x25] = arg0[0x26] = arg0[0x27] = 0;
    if ((arg0[0x0] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, (gActors[actor].posY.whole + gActors[actor].hitboxBY0))) & 0x80) {
        arg0[0x24]++;
    }
    if ((arg0[0x1] = func_80012AB4(gActors[actor].posX.whole + ((gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2), gActors[actor].posY.whole + gActors[actor].hitboxBY0)) & 0x80) {
        arg0[0x24]++;
    }
    if ((arg0[0x2] = func_80012AB4((gActors[actor].posX.whole + gActors[actor].hitboxBX1) - 1, gActors[actor].posY.whole + gActors[actor].hitboxBY0)) & 0x80) {
        arg0[0x24]++;
    }
    if ((arg0[0x3] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX0, (gActors[actor].posY.whole + gActors[actor].hitboxBY0) - 1)) & 0x80) {
        arg0[0x26]++;
    }
    if ((arg0[0x4] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX0, gActors[actor].posY.whole + (gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2)) & 0x80) {
        arg0[0x26]++;
    }
    if ((arg0[0x5] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX0, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 1)) & 0x80) {
        arg0[0x26]++;
    }
    if ((arg0[0x6] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX1, (gActors[actor].posY.whole + gActors[actor].hitboxBY0) - 1)) & 0x80) {
        arg0[0x27]++;
    }
    if ((arg0[0x7] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX1, gActors[actor].posY.whole + (gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2)) & 0x80) {
        arg0[0x27]++;
    }
    if ((arg0[0x8] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX1, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 1)) & 0x80) {
        arg0[0x27]++;
    }
    if ((arg0[0x9] = func_80012AB4(gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, (gActors[actor].posY.whole + gActors[actor].hitboxBY1) - 1)) & 0xC0) {
        arg0[0x25]++;
    }
    if ((arg0[0xA] = func_80012AB4(gActors[actor].posX.whole + (gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2, (gActors[actor].posY.whole + gActors[actor].hitboxBY1) - 4)) & 0xC0) {
        arg0[0x25]++;
    }
    if ((arg0[0xB] = func_80012AB4((gActors[actor].posX.whole + gActors[actor].hitboxBX1) - 1, (gActors[actor].posY.whole + gActors[actor].hitboxBY1) - 1)) & 0xC0) {
        arg0[0x25]++;
    }
    return arg0;
}

u8* func_80015B28(u8* arg0, u16 actor) {
    u8 mask;

    if (!(gActors[actor].flags & (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16))) {
        return arg0;
    }

    if (!(gActors[actor].flags_098 & ACTOR_FLAG3_UNK19)) {
        mask = 0xC0;
    }
    else {
        mask = 0x80;
    }
    arg0[0x28] = arg0[0x29] = arg0[0x2A] = arg0[0x2B] = 0;
    arg0[0x18] = arg0[0x19] = arg0[0x1A] = arg0[0x1B] = arg0[0x1C] = arg0[0x1D] = arg0[0x1E] = arg0[0x1F] = arg0[0x20] = arg0[0x21] = arg0[0x22] = arg0[0x23] = 0xFF;

    if ((arg0[0xC] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 3, gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x18] = gPlatformHitActor;
    }
    if ((arg0[0xD] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + ((gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2), gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x19] = gPlatformHitActor;
    }
    if ((arg0[0xE] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 3, gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x1A] = gPlatformHitActor;
    }
    if ((arg0[0xF] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + gActors[actor].hitboxBY0 - 1)) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1B] = gPlatformHitActor;
    }
    if ((arg0[0x10] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + ((gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2))) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1C] = gPlatformHitActor;
    }
    if ((arg0[0x11] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 4)) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1D] = gPlatformHitActor;
    }
    if ((arg0[0x12] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + gActors[actor].hitboxBY0 - 1)) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x1E] = gPlatformHitActor;
    }
    if ((arg0[0x13] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + ((gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2))) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x1F] = gPlatformHitActor;
    }
    if ((arg0[0x14] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 4)) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x20] = gPlatformHitActor;
    }
    if ((arg0[0x15] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 3, gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 1)) & mask) {
        arg0[0x29]++;
        arg0[0x21] = gPlatformHitActor;
    }
    if ((arg0[0x16] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + ((gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2), gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 4)) & mask) {
        arg0[0x29]++;
        arg0[0x22] = gPlatformHitActor;
    }
    if ((arg0[0x17] = Actor_CheckPlatforms(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 3, gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 1)) & mask) {
        arg0[0x29]++;
        arg0[0x23] = gPlatformHitActor;
    }
    return arg0;
}

void ActorUpdate_Physics(u16 actor_index) {
    u8 sp3C[0x2C];
    u16 actor_1;
    u16 actor_2;
    s32 var_a2;
    u16 candidate_actor;

    gActors[actor_index].actorHitIndex = gActors[actor_index].unk_0A0 = 0;
    if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16))) {
        return;
    }

    func_800156C4(sp3C, actor_index);
    var_a2 = (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) ? 0 : 1;
    if (var_a2 < (sp3C[0x27])) {
        func_80014F14(actor_index, gActors[actor_index].hitboxBX1);
        gActors[actor_index].posX.whole -= 1;
        gActors[actor_index].posX.frac = -1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK3;
    }

    if (var_a2 < sp3C[0x26]) {
        func_80014F14(actor_index, gActors[actor_index].hitboxBX0);
        gActors[actor_index].posX.whole += 0x10;
        gActors[actor_index].posX.frac = 0;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK2;
    }

    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0))) & 0x80) {
            var_a2 = (((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole + gActors[actor_index].hitboxBY0) & ~0xF) - gScreenPosCurrentY.whole) - gActors[actor_index].hitboxBY0;
            if (Math_AbsS32_2(var_a2 - gActors[actor_index].posY.whole) < 0xF) {
                gActors[actor_index].posY.whole = var_a2;
            }
            else {
                if (gActors[actor_index].posY.whole < var_a2) {
                    gActors[actor_index].posY.whole += 0xF;
                }
                else {
                    gActors[actor_index].posY.whole -= 0xF;
                }
            }
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK4;
        }
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
        
        if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1)))) {
            D_800C7F20[gActors[actor_index].unk_0A0 & 0xF](actor_index);
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 4)))) {
            D_800C7F60[gActors[actor_index].unk_0A0 & 0xF](actor_index);
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 4)))) {
            D_800C7F60[0](actor_index);
            gActors[actor_index].unk_0A0 = 0x17;
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 4)))) {
            D_800C7F60[0](actor_index);
            gActors[actor_index].unk_0A0 = 7;
        }
        else {
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK6;
        }
    }
    else {
        if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            func_800156C4(sp3C, actor_index);
        }
        if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0))) & 0x80) {
            gActors[actor_index].posY.whole = (((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole + gActors[actor_index].hitboxBY0) & 0xFFF0) - gScreenPosCurrentY.whole) - gActors[actor_index].hitboxBY0;
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK4;
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1))) & 0x81) {
            D_800C7FA0[gActors[actor_index].unk_0A0 & 0xF](actor_index);
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
        }
        else {
            gActors[actor_index].unk_0A0 = 0;
        }

        if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1)))) {
            D_800C7FA0[gActors[actor_index].unk_0A0 & 0xF](actor_index);
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 + 2, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1)))) {
            D_800C7FA0[0](actor_index);
            gActors[actor_index].unk_0A0 = 0x17;
        }
        else if ((gActors[actor_index].unk_0A0 = func_8005C870(func_80012C04(gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 - 2, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1)))) {
            D_800C7FA0[0](actor_index);
            gActors[actor_index].unk_0A0 = 7;
        }
        if (gActors[actor_index].unk_0A0 != 0) {
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
        }
    }

    if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16))) {
        return;
    }

    func_80015B28(sp3C, actor_index);
    if ((sp3C[0x2B] != 0) && (sp3C[0x2A] < 2)) {
        if (sp3C[0x1E] != 0xFF) {
            actor_1 = sp3C[0x1E];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        if (sp3C[0x1F] != 0xFF) {
            actor_1 = sp3C[0x1F];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        if (sp3C[0x20] != 0xFF) {
            actor_1 = sp3C[0x20];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        var_a2 = (gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX0 - gActors[actor_index].hitboxBX1);
        gActors[actor_index].posX.whole--;
        if (gActors[actor_index].posX.whole > var_a2) {
            gActors[actor_index].posX.whole--;
        }
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK13 | ACTOR_FLAG3_UNK3;
    }

    if ((sp3C[0x2A] != 0) && (sp3C[0x2B] < 2)) {
        if (sp3C[0x1B] != 0xFF) {
            actor_1 = sp3C[0x1B];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        if (sp3C[0x1C] != 0xFF) {
            actor_1 = sp3C[0x1C];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        if (sp3C[0x1D] != 0xFF) {
            actor_1 = sp3C[0x1D];
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        var_a2 = ((gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX1) - gActors[actor_index].hitboxBX0);
        gActors[actor_index].posX.whole++;
        if (gActors[actor_index].posX.whole < var_a2) {
            gActors[actor_index].posX.whole++;
        }
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK12 | ACTOR_FLAG3_UNK2;
    }

    if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        func_80015B28(sp3C, actor_index);
    }

    if (sp3C[0x25] < sp3C[0x29]) {
        if (gActors[actor_index].velocityY.raw <= 0) {
            actor_2 = actor_1 = sp3C[0x22];
            if (actor_1 != 0xFF) {
                candidate_actor = sp3C[0x23];
                gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK7;
                gActors[actor_index].unk_0A0 = 0x40;
                if ((candidate_actor != 0xFF) &&
                    (gActors[candidate_actor].hitboxBY0 + gActors[candidate_actor].posY.whole >
                     gActors[actor_1].hitboxBY0 + gActors[actor_1].posY.whole)) {
                    actor_2 = actor_1 = sp3C[0x23];
                    gActors[candidate_actor].flags_098 |= ACTOR_FLAG3_UNK7;
                    gActors[actor_index].unk_0A0 = 0x47;
                }
            }
            else {
                actor_1 = actor_2 = sp3C[0x23];
                gActors[actor_index].unk_0A0 = 0x47;
            }
            if (actor_1 != 0xFF) {
                gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK7;
                candidate_actor = sp3C[0x21];
                if (candidate_actor != 0xFF) {
                    if ((gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0) < (gActors[candidate_actor].posY.whole + gActors[candidate_actor].hitboxBY0)) {
                        actor_1 = sp3C[0x21];
                        gActors[candidate_actor].flags_098 |= ACTOR_FLAG3_UNK7;
                        gActors[actor_index].unk_0A0 = 0x57;
                    }
                }
            }
            else {
                actor_1 = sp3C[0x21];
                gActors[actor_index].unk_0A0 = 0x57;
            }
            var_a2 = gActors[actor_1].hitboxBY0 + gActors[actor_1].posY.whole - gActors[actor_index].hitboxBY1;
            if ((gActors[actor_1].unk_0DF & ACTOR0DF_4) && (actor_index)) {
            }
            else {
                gActors[actor_index].posY.whole = var_a2;
                gActors[actor_index].posY.frac = gActors[actor_1].posY.frac;
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5;
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                gActors[actor_index].actorHitX = gActors[actor_1].posX.whole + gScreenPosCurrentX.whole;
                gActors[actor_index].actorHitY = gScreenPosCurrentY.whole + gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0;
                gActors[actor_index].actorHitIndex = actor_1 + 0x8000;
                gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            }
        }
    }

    if (sp3C[0x28] == 0) {
        return;
    }
    actor_1 = sp3C[0x19];
    if (actor_1 == 0xFF) {
        actor_1 = sp3C[0x1A];
    }
    if (actor_1 == 0xFF) {
        actor_1 = sp3C[0x18];
    }
    var_a2 = (gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY1) - gActors[actor_index].hitboxBY0;
    if (var_a2 >= (gActors[actor_index].posY.whole - (gActors[actor_index].hitboxBY0 - gActors[actor_index].hitboxBY1) / 2)) {
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK15;
        if (gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            if (!(gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5))) {
                gActors[actor_index].posY.whole = var_a2;
                gActors[actor_index].posY.frac = gActors[actor_1].posY.frac;
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK14;
            }
            else {
                gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK6;
            }
        }
        else {
            if ((actor_index != 0) || (var_a2 != gActors[actor_index].posY.whole)) {
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            }
            if (!(gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5))) {
                gActors[actor_index].posY.whole = var_a2;
                gActors[actor_index].posY.frac = gActors[actor_1].posY.frac;
                gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK4;
            }
            else {
                gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK6;
            }
        }
    }
}

void ActorsUpdate_Physics(void) {
    u16 index;

    if (!(gPlayerData.flags & PLAYERDATA_NOCOLLIDE)) {
        for (index = 0; index < 0xC0; index++) {
            if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) == 0) {
                continue;
            }
            ActorUpdate_Physics(index);
            gActors[index].flags_098 &= ~ACTOR_FLAG3_UNK19;
        }
        gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
        gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    }
}

void ActorsUpdate_Screenspace(void) {
    u16 index;
    s32 delta_x;
    s32 delta_y;

    delta_x = gScreenPosNextX.raw - gScreenPosCurrentX.raw;
    delta_y = gScreenPosNextY.raw - gScreenPosCurrentY.raw;
    for (index = 1; index < 0xC0; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && !(gActors[index].flags & ACTOR_FLAG_FREEZE_POS)) {
            gActors[index].posX.raw += delta_x;
            gActors[index].posY.raw += delta_y;
            if (gActors[index].flags & ACTOR_FLAG_ONSCREEN_ONLY) {
                if ((gActors[index].posX.whole < -0xD0) || (gActors[index].posX.whole >= 0xD1) || 
                    (gActors[index].posY.whole < -0xA0) || (gActors[index].posY.whole >= 0xA1)) {
                    gActors[index].flags = 0;
                }
            }
        }
    }
}
