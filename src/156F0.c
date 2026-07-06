#include "common.h"

extern ActorFunc D_800C7F20[];
extern ActorFunc D_800C7F60[];
extern ActorFunc D_800C7FA0[];

void func_80014AF0(void) {
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

void func_80014C44(void) {
    u16 index;
    u16 actor_1;
    s32 delta_x;
    s32 delta_y;

    for (index = 0; index < 0x90; index++) {
        if (gActors[index].flags != 0) {
            actor_1 = gActors[index].unk_0CC;
            if (actor_1) {
                actor_1 &= 0x7FFF;
                delta_x = (((gScreenPosCurrentX.whole + gActors[actor_1].posX.whole) - gActors[index].unk_0C8) << 0x10);
                delta_y = (((gScreenPosCurrentY.whole + gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0) - gActors[index].unk_0CA) << 0x10);
                gActors[index].posX.raw += delta_x;
                gActors[index].posY.raw += delta_y;
                gActors[index].posX.raw += gActors[actor_1].velocityX.raw;
                gActors[index].posY.raw += gActors[actor_1].velocityY.raw;
            }
        }
    }
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    if (((gPlayerActor.hitboxBX0 << 0x10) + gPlayerPosX.raw) < D_800BE568.raw) {
        if (D_801373E0.unk_78 & 4) {
            D_801373E0.unk_78 &= ~6;
        }
        if (D_801373E0.unk_78 & 2) {
            gPlayerPosX.raw = D_800BE568.raw - (gPlayerActor.hitboxBX0 << 0x10);
            gPlayerActor.posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
            if (gPlayerActor.velocityX.raw < 0) {
                gPlayerVelXMirror.raw = gPlayerActor.velocityX.raw = 0;
            }
            gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK2;
        }
    }
    else {
        if (D_800BE56C.raw < ((gPlayerActor.hitboxBX1 << 0x10) + gPlayerPosX.raw)) {
            if (D_801373E0.unk_78 & 4) {
                D_801373E0.unk_78 &= ~6;
            }
            if (D_801373E0.unk_78 & 2) {
                gPlayerPosX.raw = D_800BE56C.raw - (gPlayerActor.hitboxBX1 << 0x10);
                gPlayerActor.posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
                if (gPlayerActor.velocityX.raw > 0) {
                    gPlayerVelXMirror.raw = gPlayerActor.velocityX.raw = 0;
                }
                gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK3;
            }
        }
        else {
            D_801373E0.unk_78 |= 2;
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

    // fakematch: regalloc with `(0, `
    temp_a3 = ((((gActors[actor_index].posX.whole) + (0, gScreenPosCurrentX.whole) + arg1) & ~0xF) - gScreenPosCurrentX.whole) - arg1;
    if (func_8005C6D0(temp_a3 - gActors[actor_index].posX.whole) < 0xF) {
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
    if (func_8005C6D0(temp_t0 - gActors[actor_index].posY.whole) < 0xF) {
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

    if ((arg0[0xC] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 3, gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x18] = gPlatformHitActor;
    }
    if ((arg0[0xD] = func_8001FA78(actor, gActors[actor].posX.whole + ((gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2), gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x19] = gPlatformHitActor;
    }
    if ((arg0[0xE] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 3, gActors[actor].posY.whole + gActors[actor].hitboxBY0)) == 0xC0) {
        arg0[0x28]++;
        arg0[0x1A] = gPlatformHitActor;
    }
    if ((arg0[0xF] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + gActors[actor].hitboxBY0 - 1)) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1B] = gPlatformHitActor;
    }
    if ((arg0[0x10] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + ((gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2))) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1C] = gPlatformHitActor;
    }
    if ((arg0[0x11] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 1, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 4)) == 0xC0) {
        arg0[0x2A]++;
        arg0[0x1D] = gPlatformHitActor;
    }
    if ((arg0[0x12] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + gActors[actor].hitboxBY0 - 1)) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x1E] = gPlatformHitActor;
    }
    if ((arg0[0x13] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + ((gActors[actor].hitboxBY0 + gActors[actor].hitboxBY1) / 2))) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x1F] = gPlatformHitActor;
    }
    if ((arg0[0x14] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 1, gActors[actor].posY.whole + gActors[actor].hitboxBY1 + 4)) == 0xC0) {
        arg0[0x2B]++;
        arg0[0x20] = gPlatformHitActor;
    }
    if ((arg0[0x15] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX0 + 3, gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 1)) & mask) {
        arg0[0x29]++;
        arg0[0x21] = gPlatformHitActor;
    }
    if ((arg0[0x16] = func_8001FA78(actor, gActors[actor].posX.whole + ((gActors[actor].hitboxBX0 + gActors[actor].hitboxBX1) / 2), gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 4)) & mask) {
        arg0[0x29]++;
        arg0[0x22] = gPlatformHitActor;
    }
    if ((arg0[0x17] = func_8001FA78(actor, gActors[actor].posX.whole + gActors[actor].hitboxBX1 - 3, gActors[actor].posY.whole + gActors[actor].hitboxBY1 - 1)) & mask) {
        arg0[0x29]++;
        arg0[0x23] = gPlatformHitActor;
    }
    return arg0;
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/s22AN
void func_800160EC(u16 arg0) {
    u8 sp3C[0x2C];
    u16 sp3A;
    u16 var_a1;
    s32 var_a2; // sp34?

    gActors[arg0].unk_0CC = gActors[arg0].unk_0A0 = 0;
    if (!(gActors[arg0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16))) {
        return;
    }

    func_800156C4(sp3C, arg0);
    var_a2 = (gActors[arg0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) ? 0 : 1;
    if (var_a2 < (sp3C[0x27])) {
        func_80014F14(arg0, gActors[arg0].hitboxBX1);
        gActors[arg0].posX.whole -= 1;
        gActors[arg0].posX.frac = -1;
        gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK3;
    }

    if (var_a2 < sp3C[0x26]) {
        func_80014F14(arg0, gActors[arg0].hitboxBX0);
        gActors[arg0].posX.whole += 0x10;
        gActors[arg0].posX.frac = 0;
        gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK2;
    }

    if (gActors[arg0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012AB4(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY0))) & 0x80) {
            var_a2 = (((gActors[arg0].posY.whole + gScreenPosCurrentY.whole + gActors[arg0].hitboxBY0) & ~0xF) - gScreenPosCurrentY.whole) - gActors[arg0].hitboxBY0;
            if (func_8005C6D0(var_a2 - gActors[arg0].posY.whole) < 0xF) {
                gActors[arg0].posY.whole = var_a2;
            }
            else {
                if (gActors[arg0].posY.whole < var_a2) {
                    gActors[arg0].posY.whole += 0xF;
                }
                else {
                    gActors[arg0].posY.whole -= 0xF;
                }
            }
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK4;
        }
        gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK5;
        
        if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012AB4(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1)))) {
            D_800C7F20[gActors[arg0].unk_0A0 & 0xF](arg0);
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012AB4(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1 - 4)))) {
            D_800C7F60[gActors[arg0].unk_0A0 & 0xF](arg0);
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole + gActors[arg0].hitboxBX0, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1 - 4)))) {
            D_800C7F60[0](arg0);
            gActors[arg0].unk_0A0 = 0x17;
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole + gActors[arg0].hitboxBX1, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1 - 4)))) {
            D_800C7F60[0](arg0);
            gActors[arg0].unk_0A0 = 7;
        }
        else {
            gActors[arg0].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK6;
        }
    }
    else {
        if (gActors[arg0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            func_800156C4(sp3C, arg0);
        }
        if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012AB4(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY0))) & 0x80) {
            gActors[arg0].posY.whole = (((gActors[arg0].posY.whole + gScreenPosCurrentY.whole + gActors[arg0].hitboxBY0) & 0xFFF0) - gScreenPosCurrentY.whole) - gActors[arg0].hitboxBY0;
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK4;
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1))) & 0x81) {
            D_800C7FA0[gActors[arg0].unk_0A0 & 0xF](arg0);
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK5;
        }
        else {
            gActors[arg0].unk_0A0 = 0;
        }

        if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1)))) {
            D_800C7FA0[gActors[arg0].unk_0A0 & 0xF](arg0);
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole + gActors[arg0].hitboxBX0 + 2, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1)))) {
            D_800C7FA0[0](arg0);
            gActors[arg0].unk_0A0 = 0x17;
        }
        else if ((gActors[arg0].unk_0A0 = func_8005C870(func_80012C04(gActors[arg0].posX.whole + gActors[arg0].hitboxBX1 - 2, gActors[arg0].posY.whole + gActors[arg0].hitboxBY1)))) {
            D_800C7FA0[0](arg0);
            gActors[arg0].unk_0A0 = 7;
        }
        if (gActors[arg0].unk_0A0 != 0) {
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK5;
        }
    }

    if (!(gActors[arg0].flags & (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16))) {
        return;
    }

    func_80015B28(sp3C, arg0);
    if ((sp3C[0x2B] != 0) && (sp3C[0x2A] < 2)) {
        if (sp3C[0x1E] != 0xFF) {
            sp3A = sp3C[0x1E];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        if (sp3C[0x1F] != 0xFF) {
            sp3A = sp3C[0x1F];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        if (sp3C[0x20] != 0xFF) {
            sp3A = sp3C[0x20];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK12;
        }
        var_a2 = (gActors[sp3A].posX.whole + gActors[sp3A].hitboxBX0 - gActors[arg0].hitboxBX1);
        gActors[arg0].posX.whole--;
        if (gActors[arg0].posX.whole > var_a2) {
            gActors[arg0].posX.whole--;
        }
        gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK13 | ACTOR_FLAG3_UNK3;
    }

    if ((sp3C[0x2A] != 0) && (sp3C[0x2B] < 2)) {
        if (sp3C[0x1B] != 0xFF) {
            sp3A = sp3C[0x1B];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        if (sp3C[0x1C] != 0xFF) {
            sp3A = sp3C[0x1C];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        if (sp3C[0x1D] != 0xFF) {
            sp3A = sp3C[0x1D];
            gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK13;
        }
        var_a2 = ((gActors[sp3A].posX.whole + gActors[sp3A].hitboxBX1) - gActors[arg0].hitboxBX0);
        gActors[arg0].posX.whole++;
        if (gActors[arg0].posX.whole < var_a2) {
            gActors[arg0].posX.whole++;
        }
        gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK12 | ACTOR_FLAG3_UNK2;
    }

    if (gActors[arg0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        func_80015B28(sp3C, arg0);
    }

    if (sp3C[0x25] < sp3C[0x29]) {
        if (gActors[arg0].velocityY.raw <= 0) {
            var_a1 = sp3C[0x22];
            if (var_a1 != 0xFF) {
                gActors[var_a1].flags_098 |= ACTOR_FLAG3_UNK7;
                gActors[arg0].unk_0A0 = 0x40;
                sp3A = sp3C[0x23];
                if (sp3A != 0xFF) {
                    if (gActors[sp3A].hitboxBY0 + gActors[sp3A].posY.whole > gActors[var_a1].hitboxBY0 + gActors[var_a1].posY.whole) {
                        var_a1 = sp3C[0x23];
                        gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK7;
                        gActors[arg0].unk_0A0 = 0x47;
                    }
                }
            }
            else {
                var_a1 = sp3C[0x23];
                gActors[arg0].unk_0A0 = 0x47;
            }
            if (var_a1 != 0xFF) {
                gActors[var_a1].flags_098 |= ACTOR_FLAG3_UNK7;
                sp3A = sp3C[0x21];
                if (sp3A != 0xFF) {
                    if ((gActors[var_a1].posY.whole + gActors[var_a1].hitboxBY0) < (gActors[sp3A].posY.whole + gActors[sp3A].hitboxBY0)) {
                        var_a1 = sp3C[0x21];
                        gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK7;
                        gActors[arg0].unk_0A0 = 0x57;
                    }
                }
            }
            else {
                var_a1 = sp3C[0x21];
                gActors[arg0].unk_0A0 = 0x57;
            }
            var_a2 = gActors[var_a1].hitboxBY0 + gActors[var_a1].posY.whole - gActors[arg0].hitboxBY1;
            if ((gActors[var_a1].unk_0DF & 0x10) && (arg0)) {
            }
            else {
                gActors[arg0].posY.whole = var_a2;
                gActors[arg0].posY.frac = gActors[var_a1].posY.frac;
                gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5;
                var_a2 = ~0x40;
                gActors[arg0].flags_098 &= var_a2;
                gActors[arg0].unk_0C8 = gActors[var_a1].posX.whole + gScreenPosCurrentX.whole;
                gActors[arg0].unk_0CA = gScreenPosCurrentY.whole + gActors[var_a1].posY.whole + gActors[var_a1].hitboxBY0;
                gActors[arg0].unk_0CC = var_a1 + 0x8000;
                gActors[var_a1].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            }
        }
    }
    if (sp3C[0x28] == 0) {
        return;
    }
    sp3A = sp3C[0x19];
    if (sp3A == 0xFF) {
        sp3A = sp3C[0x1A];
    }
    if (sp3A == 0xFF) {
        sp3A = sp3C[0x18];
    }
    var_a2 = (gActors[sp3A].posY.whole + gActors[sp3A].hitboxBY1) - gActors[arg0].hitboxBY0;
    if (var_a2 >= (gActors[arg0].posY.whole - (gActors[arg0].hitboxBY0 - gActors[arg0].hitboxBY1) / 2)) {
        gActors[sp3A].flags_098 |= ACTOR_FLAG3_UNK15;
        if (gActors[arg0].velocityY.raw > 0) {
            gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            if (!(gActors[arg0].flags_098 & (ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5))) {
                gActors[arg0].posY.whole = var_a2;
                gActors[arg0].posY.frac = gActors[sp3A].posY.frac;
                gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK14;
            }
            else {
                gActors[sp3A].flags_098 &= ~ACTOR_FLAG3_UNK6;
            }
        }
        else {
            if ((arg0 != 0) || (var_a2 != gActors[arg0].posY.whole)) {
                gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK7;
            }
            if (!(gActors[arg0].flags_098 & (ACTOR_FLAG3_UNK15 | ACTOR_FLAG3_UNK5))) {
                gActors[arg0].posY.whole = var_a2;
                gActors[arg0].posY.frac = gActors[sp3A].posY.frac;
                gActors[arg0].flags_098 |= ACTOR_FLAG3_UNK4;
            }
            else {
                gActors[sp3A].flags_098 &= ~ACTOR_FLAG3_UNK6;
            }
        }
    }
}
#else
void func_800160EC(u16);
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800160EC.s")
#endif

void func_80016CB4(void) {
    u16 index;

    if ((D_80137458 & 0x10) == 0) {
        for (index = 0; index < 0xC0; index++) {
            if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) == 0) {
                continue;
            }
            func_800160EC(index);
            gActors[index].flags_098 &= ~ACTOR_FLAG3_UNK19;
        }
        gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
        gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    }
}

void func_80016D94(void) {
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
