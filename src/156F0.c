#include "common.h"

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
    gPlayerPosX.raw = gActors[0].posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gActors[0].posY.raw + gScreenPosCurrentY.raw;
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
    gPlayerPosX.raw = gActors[0].posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gActors[0].posY.raw + gScreenPosCurrentY.raw;
    if (((gActors[0].hitboxBX0 << 0x10) + gPlayerPosX.raw) < D_800BE568.raw) {
        if (D_801373E0.unk_78 & 4) {
            D_801373E0.unk_78 &= ~6;
        }
        if (D_801373E0.unk_78 & 2) {
            gPlayerPosX.raw = D_800BE568.raw - (gActors[0].hitboxBX0 << 0x10);
            gActors[0].posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
            if (gActors[0].velocityX.raw < 0) {
                gPlayerVelXMirror.raw = gActors[0].velocityX.raw = 0;
            }
            gActors[0].flags_098 |= 4;
        }
    }
    else {
        if (D_800BE56C.raw < ((gActors[0].hitboxBX1 << 0x10) + gPlayerPosX.raw)) {
            if (D_801373E0.unk_78 & 4) {
                D_801373E0.unk_78 &= ~6;
            }
            if (D_801373E0.unk_78 & 2) {
                gPlayerPosX.raw = D_800BE56C.raw - (gActors[0].hitboxBX1 << 0x10);
                gActors[0].posX.raw = gPlayerPosX.raw - gScreenPosCurrentX.raw;
                if (gActors[0].velocityX.raw > 0) {
                    gPlayerVelXMirror.raw = gActors[0].velocityX.raw = 0;
                }
                gActors[0].flags_098 |= 8;
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
        gActors[actor_index].flags_098 |= 0x40;
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

    if (!(gActors[actor].flags & 0x30000)) {
        return arg0;
    }

    if (!(gActors[actor].flags_098 & 0x80000)) {
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

void func_800160EC(u16);
#pragma GLOBAL_ASM("asm/nonmatchings/156F0/func_800160EC.s")

void func_80016CB4(void) {
    u16 index;

    if ((D_80137458 & 0x10) == 0) {
        for (index = 0; index < 0xC0; index++) {
            if ((gActors[index].flags & 2) == 0) {
                continue;
            }
            func_800160EC(index);
            gActors[index].flags_098 &= 0xFFF7FFFF;
        }
        gPlayerPosX.raw = gActors[0].posX.raw + gScreenPosCurrentX.raw;
        gPlayerPosY.raw = gActors[0].posY.raw + gScreenPosCurrentY.raw;
    }
}

void func_80016D94(void) {
    u16 index;
    s32 delta_x;
    s32 delta_y;

    delta_x = gScreenPosNextX.raw - gScreenPosCurrentX.raw;
    delta_y = gScreenPosNextY.raw - gScreenPosCurrentY.raw;
    for (index = 1; index < 0xC0; index++) {
        if ((gActors[index].flags & 2) && !(gActors[index].flags & 8)) {
            gActors[index].posX.raw += delta_x;
            gActors[index].posY.raw += delta_y;
            if (gActors[index].flags & 4) {
                if ((gActors[index].posX.whole < -0xD0) || (gActors[index].posX.whole >= 0xD1) || 
                    (gActors[index].posY.whole < -0xA0) || (gActors[index].posY.whole >= 0xA1)) {
                    gActors[index].flags = 0;
                }
            }
        }
    }
}
