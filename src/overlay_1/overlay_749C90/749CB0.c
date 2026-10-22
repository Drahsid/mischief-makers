#include "common.h"
#include "actor.h"
#include "80D90.h"
#include "cosine.h"
#include "frontend.h"

// "overlay 1" code for "Chilly Dog!!"

extern u16 D_801A2DA0_751950[];
extern s16 D_801A2E9C_751A4C[];
extern u8 D_801A4354_752F04[];
extern u8 D_801A4418_752FC8[];
extern u8 D_801A442C_752FDC[];
extern u8 D_801A4448_752FF8[];
extern u8 D_801A446C_75301C[];
extern u8 D_801A4484_753034[];
extern u8 D_801A44B8_753068[];
extern u8 D_801A4508_7530B8[];
extern u8 D_801A4554_753104[];
extern u8 D_801A458C_75313C[];
extern u8 D_801A45B8_753168[];
extern u8 D_801A45F8_7531A8[];
extern u8 D_801A4620_7531D0[];
extern u8 D_801A463C_7531EC[];
extern u8 D_801A4678_753228[];
extern u8 D_801A46AC_75325C[];

// BUG: inconsistent prototype!
void func_8019BD48_74A8F8(s32 arg0);
void func_8019C6A4_74B254(u16 actor_index);
void func_8019E410_74CFC0(u16 actor_index);
void func_8019E600_74D1B0(u16 actor_index);
void func_8019E710_74D2C0(u16 actor_index);
void func_8019EAE4_74D694(u16 actor_index);
void func_8019F618_74E1C8(u16 actor_index);
void func_8019FE50_74EA00(u16 actor_index);
void func_801A047C_74F02C(u16 actor_index);
void func_801A04F0_74F0A0(u16 actor_index);
void func_801A05E8_74F198(u16 actor_index);
void func_801A0948_74F4F8(u16 actor_index);
void func_801A0C8C_74F83C(u16 actor_index);
void func_801A0FC4_74FB74(u16 actor_index);
void func_801A14A0_750050(u16 actor_index);
void func_801A16F4_7502A4(u16 actor_index);
void func_801A1974_750524(u16 actor_index);


u8 D_801A4710_7532C0[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x08, 0x00, 0x00, 0x00, 0x19, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x04, 0x00, 0x00,
    0x7F, 0xFD, 0x10, 0x00, 0x00, 0x2F, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2F, 0x00, 0x08, 0x00, 0x00,
    0x7F, 0xFF, 0x00, 0x00,
};

u16 D_801A473C_7532EC[] = {
    0x0005, 0x001A, 0x001B, 0x001C,
    0x0000, 0x0000, 0x0000, 0x0000,
    0x003C, 0x0000, 0x0000, 0x0000,
};

s16 D_801A4754_753304[] = {
    0, 16, -16, -16, 16,
    4, 8, -8, -8, 8,
    2, 6, -6, -4, 4,
    5, 6, -6, -6, 6,
};

u32 D_801A477C_75332C[] = {
    0x00020003, 0x00001403, 0x00000003, 0x00001403,
};

f32 D_801A478C_75333C[] = {
    3.2625f, 0.163125f, 0.15f, -0.0075f, 0.008f,
    2.175f, 0.10875f, 0.1f, -0.005f, 0.005f,
    1.0875f, 0.054375f, 0.05f, -0.0025f, 0.003f,
    0.54375f, 0.0271875f, 0.025f, -0.00125f, 0.0025f,
};

f32 D_801A47DC_75338C[] = {
    0.8f, 0.5f, 0.7f, 1.1f,
    0.4f, 0.6f, 1.0f, 0.9f,
};

ActorFunc D_801A47FC_7533AC[] = {
    func_8019C6A4_74B254,
    func_8019E410_74CFC0,
    func_8019EAE4_74D694,
    func_8019E600_74D1B0,
    func_8019E710_74D2C0,
    func_8019F618_74E1C8,
    func_8019FE50_74EA00,
    func_801A047C_74F02C,
    (ActorFunc)func_8019BD48_74A8F8,
};

s16 D_801A4820_7533D0[] = {
    64, 80, 144, 48, 112, 128, 96, 144,
};

s16 D_801A4830_7533E0[] = {
    48, 96, 80, 48,
};

ActorFunc D_801A4838_7533E8[] = {
    func_801A04F0_74F0A0,
    func_801A05E8_74F198,
    func_801A0948_74F4F8,
    func_801A0C8C_74F83C,
    func_801A0FC4_74FB74,
    func_801A14A0_750050,
    func_801A16F4_7502A4,
    func_801A1974_750524,
};

s16 D_801A4858_753408[] = {
    480, 6,
    482, 6,
    484, 6,
    0, 0,
    0, 0,
    0, 0,
};


void Actor_SetHitboxB(u16 actor_index, s16 val);
void func_8019B100_749CB0(u16 actor_index);
void func_8019B480_74A030(u16 actor_index);
void func_8019BD50_74A900(u16 actor_index);
void func_8019BF78_74AB28(u16 actor_index);
void func_8019C29C_74AE4C(u16 actor_index);
void func_8019C3F4_74AFA4(u16 actor_index);
void func_8019E3C0_74CF70(u16 actor_index);
void func_801A1D48_7508F8(u16 actor_index);
void func_801A1DE8_750998(u16 actor_index);
s32 func_801A1E44_7509F4(u16 actor_index);
s16 func_801A1FB8_750B68(u16 actor_index);
s16 func_801A202C_750BDC(u16 actor_index);
s32 func_801A206C_750C1C(u16 actor_index);
s16 func_801A20FC_750CAC(u16 actor_index);
void func_801A2170_750D20(u16 actor_index);
void func_801A2234_750DE4(u16 actor_index, s16 arg1, s16 arg2);
void func_801A23F8_750FA8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4);
void func_801A2558_751108(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4);
void func_801A269C_75124C(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4);
void func_801A2828_7513D8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4);
void func_801A2A44_7515F4(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4);
void func_801A2BCC_75177C(u16 actor_index, s16 arg1, s16 arg2);


void func_8019B100_749CB0(u16 actor_index) {
    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
    }

    gActors[actor_index + 4].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 2].iFrames = gActors[actor_index].iFrames;
    gActors[actor_index + 5].iFrames = gActors[actor_index].iFrames;
}

void func_8019B184_749D34(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK10;
    Actor_SetHitboxB(actor_index, 8);
}

void func_8019B1E4_749D94(u16 actor_index) {
    func_8019B184_749D34(actor_index + 4);
    func_8019B184_749D34(actor_index + 2);
    func_8019B184_749D34(actor_index + 5);
}

void func_8019B248_749DF8(u16 actor_index) {
    u16 var_s1;
    u16 var_s2;

    func_80026E60(31);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
    func_8008105C(actor_index, (s16*)D_801A2DA0_751950, D_801A2E9C_751A4C);
    gActors[actor_index].unk_178 = (s32)D_801A4354_752F04;
    gActors[actor_index].health = 200;
    gActors[actor_index].hitboxBY0 = 6;
    gActors[actor_index].hitboxBY1 = -24;
    gActors[actor_index].hitboxBX0 = -16;
    gActors[actor_index].hitboxBX1 = 12;
    gActors[actor_index].unk_168 = 10000;
    var_s1 = actor_index + 26;
    for (var_s2 = 0; var_s2 < 4; var_s1++, var_s2++) {
        gActors[var_s1].actorType = 0x302;
        Actor_Initialize(var_s1);
        gActors[var_s1].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[var_s1].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[var_s1].graphicIndex = 0x806;
        gActors[var_s1].var_110 = D_801A473C_7532EC[var_s2] + actor_index;
        gActors[var_s1].unk_164 = actor_index;
    }

    gActors[var_s1].graphicIndex = 0x808;
    gActors[actor_index + 26].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 27].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 26].scaleX = 0.75f;
    gActors[actor_index + 26].scaleY = 0.75f;
    gActors[actor_index + 27].scaleX = 0.86f;
    gActors[actor_index + 27].scaleY = 0.86f;
    func_8019B1E4_749D94(actor_index);
}

void func_8019B480_74A030(u16 actor_index) {
    Actor* actor;
    Actor* segment;
    s32 first_segment_index;
    u16 segment_index;
    u16 count;
    u16 index;
    s32 phase;
    s32 x_velocity;
    s32 y_velocity;
    s32 temp_v0_4;
    s32 x_history;
    s32 y_history;
    s32 previous;
    f32 radius;
    f32 temp_f0;

    radius = 14.0f;
    first_segment_index = actor_index + 26;
    phase = (gActors[actor_index + 5].var_150 - 48) & 0x3FF;

    actor = &gActors[actor_index];
    if (actor->unk_138 != 0.0f) {
        Actor* origin;

        origin = &gActors[actor_index + 5];
        gActors[(u16)first_segment_index].posX.whole = (s32)((f32)origin->posX.whole - (gCosineLookup[phase & 0x3FF] * radius));
        x_velocity = (s32)((gCosineLookup[phase & 0x3FF] * (f32)FIXED_UNIT(-1.5)) - (f32)actor->velocityX.raw);
    }
    else {
        Actor* origin;

        origin = &gActors[actor_index + 5];
        gActors[(u16)first_segment_index].posX.whole = (s32)((gCosineLookup[phase & 0x3FF] * radius) + (f32)origin->posX.whole);
        temp_f0 = gCosineLookup[phase & 0x3FF];
        x_velocity = (s32)((f32)actor->velocityX.raw + (temp_f0 * (f32)FIXED_UNIT(-1.5)));
    }

    {
        Actor* origin = &gActors[actor_index + 5];
        temp_f0 = gCosineLookup[(phase - 256) & 0x3FF];
        gActors[(u16)first_segment_index].posY.whole = (s32)((temp_f0 * radius) + (f32)origin->posY.whole);
        y_velocity = (s32)((f32)actor->velocityY.raw + (temp_f0 * (f32)FIXED_UNIT(1.5)));
    }

    if (actor->velocityY.raw == 0) {
        temp_v0_4 = ((gActiveFrames & 0x10) << 13) - FIXED_UNIT(1);
        y_velocity += temp_v0_4;
    }
    else {
        temp_v0_4 = ((gActiveFrames & 4) << 16) - FIXED_UNIT(2);
        x_velocity += temp_v0_4;
    }

    if ((gActors[actor_index].velocityX.raw > FIXED_UNIT(1.75)) || (gActors[actor_index].velocityX.raw < FIXED_UNIT(-1.75))) {
        temp_v0_4 = ((gActiveFrames & 8) << 15) - FIXED_UNIT(2);
        y_velocity += temp_v0_4;
    }

    x_history = gActors[(u16)first_segment_index].unk_168 += x_velocity;
    y_history = gActors[(u16)first_segment_index].unk_184 += y_velocity;
    segment_index = first_segment_index;
    segment_index++;
    radius = 7.0f;
    temp_f0 = DEG_PER_INDEX;

    for (count = 0; count < 3; count++, segment_index++) {
        segment = &gActors[segment_index];
        gActors[segment_index].posZ.whole = gActors[actor_index + 5].posZ.whole;
        for (index = 0; index < 7; index++) {
            previous = gActors[segment_index].base_0F8_s32[index + 0x16];
            gActors[segment_index].base_0F8_s32[index + 0x16] = x_history;
            x_history = previous;
            previous = gActors[segment_index].base_0F8_s32[index + 0x1D];
            gActors[segment_index].base_0F8_s32[index + 0x1D] = y_history;
            y_history = previous;
        }

        temp_v0_4 = func_800298D0(((Math_Atan2(gActors[segment_index - 1].unk_168 - segment->unk_168, gActors[segment_index - 1].unk_184 - segment->unk_184) + 512) & 1023) << 16, segment->unk_18C, FIXED_UNIT(36));
        gActors[segment_index].unk_18C = temp_v0_4;

        if (gActors[actor_index].unk_138 != 0.0f) {
            phase = FROM_FIXED(temp_v0_4);
            actor = &gActors[segment_index - 1];
            gActors[segment_index].posX.whole = (s32)((f32)actor->posX.whole - (gCosineLookup[phase & 1023] * radius));
            segment->rotateZ = ((f32)((1024 - phase) & 1023)) * temp_f0;
            gActors[segment_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            phase = FROM_FIXED(temp_v0_4);
            actor = &gActors[segment_index - 1];
            gActors[segment_index].posX.whole = (s32)((gCosineLookup[phase & 1023] * radius) + (f32)actor->posX.whole);
            gActors[segment_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[segment_index].rotateZ = (f32)phase * temp_f0;
        }

        actor = &gActors[segment_index - 1];
        gActors[segment_index].posY.whole = (s32)((gCosineLookup[(phase - 256) & 1023] * radius) + (f32)actor->posY.whole);
    }

    gActors[(u16)first_segment_index].posZ.whole = gActors[actor_index + 5].posZ.whole;
    phase = Math_Atan2(gActors[(u16)first_segment_index + 1].posX.whole - gActors[actor_index + 5].posX.whole, gActors[(u16)first_segment_index + 1].posY.whole - gActors[actor_index + 5].posY.whole);
    
    if (gActors[actor_index].unk_138 != 0.0f) {
        gActors[(u16)first_segment_index].rotateZ = ((f32)((phase + 512) & 1023)) * temp_f0;
        gActors[(u16)first_segment_index].flags |= ACTOR_FLAG_FLIPPED;
        return;
    }

    gActors[(u16)first_segment_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[(u16)first_segment_index].rotateZ = (f32)phase * temp_f0;
}

void func_8019BB60_74A710(u16 actor_index) {
    Actor* temp_v1 = &gActors[actor_index];
    u16 index;

    if (temp_v1->state == 0) {
        return;
    }

    func_800819A8(actor_index, (s16*)D_801A2DA0_751950);
    if (temp_v1->state < 2) {
        func_8019B480_74A030(actor_index);
        for (index = actor_index + 26; index < actor_index + 30; index++) {
            gActors[index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
            gActors[index].graphicFlags |= temp_v1->graphicFlags & ACTOR_GFLAG_UNK4;
            gActors[index].flags &= ~ACTOR_FLAG_ENABLED;
            gActors[index].flags |= temp_v1->flags & ACTOR_FLAG_ENABLED;
            gActors[index].colorA = temp_v1->colorA;
            gActors[index].colorR = temp_v1->colorR;
            gActors[index].colorG = temp_v1->colorG;
            gActors[index].colorB = temp_v1->colorB;
        }
    }

    func_8002AA20(actor_index, 0);
}

void func_8019BC9C_74A84C(u16 actor_index) {
    func_8019B100_749CB0(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019BD00_74A8B0(s32 arg0) {
}

void func_8019BD08_74A8B8(s32 arg0) {
}

void func_8019BD10_74A8C0(u16 actor_index) {
    func_8019BD50_74A900(actor_index);
}

void func_8019BD38_74A8E8(s32 arg0) {
}

void func_8019BD40_74A8F0(s32 arg0) {
}

void func_8019BD48_74A8F8(s32 arg0) {
}

void func_8019BD50_74A900(u16 actor_index) {
    u16 index;

    func_8019BB60_74A710(actor_index);
    switch (gActors[actor_index + 1].unk_180_s16[0]) {
    case 0:
        func_8019B248_749DF8(actor_index);
        func_80081478(actor_index, (s16*)D_801A2DA0_751950, 5);
        func_80081790(actor_index, D_801A442C_752FDC);
        func_800819A8(actor_index, (s16*)D_801A2DA0_751950);
        func_801A1D48_7508F8(actor_index);
        gActors[actor_index].posY.whole += 32;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        gActors[actor_index].state++;
        gActors[actor_index + 1].unk_180_s16[0] = 1;
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        gActors[actor_index + 2].unk_180_s16[0] = 0;
        gActors[actor_index + 3].unk_180_u8[3] = 60;
        D_800BE544 = actor_index;
        gActors[actor_index].health = 500;
        break;

    case 1:
        func_8019BF78_74AB28(actor_index);
        D_801A47FC_7533AC[gActors[actor_index + 1].unk_180_s16[1]](actor_index);
        func_8019C29C_74AE4C(actor_index);
        break;

    case 2:
        func_8019C3F4_74AFA4(actor_index);
        break;

    case 3:
        if (gActors[actor_index + 1].unk_180_s16[1] == 0) {
            gActors[actor_index + 1].unk_180_s16[1]++;
            for (index = actor_index + 26; index < actor_index + 30; index++) {
                gActors[index].flags = 0;
                gActors[index].var_110 = 0.0f;
                gActors[index].unk_164 = 0;
            }

            gActors[actor_index].flags = 0;
        }
        break;
    }

    func_8019BC9C_74A84C(actor_index);
}

void func_8019BF78_74AB28(u16 actor_index) {
    Actor* temp_v0;
    s16 var_a0;

    temp_v0 = &gActors[actor_index];

    if (temp_v0[3].unk_180_u8[2] == 0) {
        temp_v0[5].unk_180 += (u32)FIXED_UNIT(0.0234375);
        if ((u32)temp_v0[5].unk_180 >= (u32)FIXED_UNIT(608)) {
            temp_v0[3].unk_180_u8[2] = 1;
        }
    }
    else {
        temp_v0[5].unk_180 -= FIXED_UNIT(1);
        if ((u32)temp_v0[5].unk_180 <= FIXED_UNIT(4)) {
            temp_v0[3].unk_180_u8[2] = 0;
        }
    }

    temp_v0[4].unk_180 &= 0xFFFF;
    if (temp_v0[7].unk_180_s8[2] > 0) {
        temp_v0[7].unk_180_s8[2]--;
    }
    else {
        temp_v0[7].unk_180_s8[2] = 0;
    }

    temp_v0[6].unk_180_s16[0] = gPlayerActor.posX.whole - gActors[actor_index + 0].posX.whole;
    temp_v0[4].unk_180 &= ~0x40;
    if (temp_v0[6].unk_180_s16[0] < 0) {
        if (gActors[actor_index + 0].unk_138 == 0.0f) {
            temp_v0[4].unk_180 |= 0x40;
        }
    }
    else if (gActors[actor_index + 0].unk_138 != 0.0f) {
        temp_v0[4].unk_180 |= 0x40;
    }

    var_a0 = temp_v0[6].unk_180_s16[0];
    if (var_a0 < 0) {
        var_a0 = -var_a0;
    }

    temp_v0[6].unk_180_s16[0] = var_a0;
    temp_v0[6].unk_180_s16[1] = gPlayerActor.posY.whole - gActors[actor_index + 0].posY.whole;
    if (!(gPlayerActor.flags & ACTOR_FLAG_UNK12)) {
        temp_v0[4].unk_180 |= 0x10000;
    }

    if (gPlayerActor.flags & ACTOR_FLAG_UNK11) {
        if (temp_v0[4].unk_180 & 0x20) {
            temp_v0[4].unk_180 |= 0x60010;
        }
        else if (temp_v0[7].unk_180_s8[2] > 0) {
            temp_v0[4].unk_180 |= 0x60020;
        }
        else {
            temp_v0[4].unk_180 |= 0x20010;
        }
    }
    else {
        if (temp_v0[4].unk_180 & 0x10) {
            temp_v0[7].unk_180_s8[2] = 30;
        }

        temp_v0[4].unk_180 &= ~0x30;
    }

    if (temp_v0[3].unk_180_u8[3] > 0) {
        temp_v0[3].unk_180_u8[3]--;
    }

    if (!(temp_v0[4].unk_180 & 1) && temp_v0[3].unk_180_u8[3] == 0) {
        if (temp_v0[4].flags_098 & ACTOR_FLAG3_GRAB) {
            temp_v0[7].unk_180_s16[0] = 4;
            temp_v0[4].unk_180 |= 1;
        }

        if (temp_v0[2].flags_098 & ACTOR_FLAG3_GRAB) {
            temp_v0[7].unk_180_s16[0] = 2;
            temp_v0[4].unk_180 |= 1;
        }

        if (temp_v0[5].flags_098 & ACTOR_FLAG3_GRAB) {
            temp_v0[7].unk_180_s16[0] = 5;
            temp_v0[4].unk_180 |= 1;
        }

        if (temp_v0[4].unk_180 & 1) {
            temp_v0[11].unk_180_s16[0] = 0;
            temp_v0[4].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11);
            temp_v0[2].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11);
            temp_v0[5].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11);
            temp_v0[1].unk_180_s16[1] = 2;
            temp_v0[2].unk_180_s16[0] = 0;
            temp_v0[2].unk_180_s16[1] = 0;
            if (temp_v0[4].unk_180 & 2) {
                temp_v0[4].unk_180 &= ~2;
                temp_v0[4].unk_180 |= 8;
            }
        }
    }
}

void func_8019C29C_74AE4C(u16 actor_index) {
    if (gActors[actor_index].health <= 0) {
        gActors[actor_index + 1].unk_180_s16[0] = 2;
        gActors[actor_index + 1].unk_180_s16[1] = gActors[actor_index + 2].unk_180_s16[0] = gActors[actor_index + 2].unk_180_s16[1] = 0;
    }

    if (gActors[actor_index + 9].unk_180_s8[0]) {
        if (gActors[actor_index + 9].unk_180_s8[0] >= 21) {
            Actor_SetColorRgb(actor_index, 0);
            gActors[actor_index + 9].unk_180_s8[0] = gActors[actor_index + 9].unk_180_s8[1] = 0;
        }
        else {
            gActors[actor_index + 9].unk_180_s8[1]--;
            if (gActors[actor_index + 9].unk_180_s8[1] <= 0) {
                gActors[actor_index + 9].unk_180_s8[0]++;
                if (gActors[actor_index + 9].unk_180_s8[0] & 1) {
                    Actor_SetColorRgb(actor_index, 0);
                }
                else {
                    Actor_SetColorRgb(actor_index, 0x7F);
                }

                gActors[actor_index + 9].unk_180_s8[1] = 4;
            }
        }
    }
}

void func_8019C3F4_74AFA4(u16 actor_index) {
    s16 var_v1;

    switch (gActors[actor_index + 1].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 1].unk_180_s16[1]++;
        Actor_SetColorRgb(actor_index, 0);
        break;

    case 1:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (func_801A206C_750C1C(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
        }

        if (func_801A20FC_750CAC(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 14].unk_180_s16[0] = 0;
        }

        if (func_801A1FB8_750B68(actor_index)) {
            gActors[actor_index + 1].unk_180_s16[1]++;
            gActors[actor_index].unk_170 = FIXED_UNIT(512);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index + 14].unk_180_s16[0] = 3;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_80081790(actor_index, D_801A45F8_7531A8);
        }
        break;

    case 2:
        gActors[actor_index + 1].unk_180_s16[1]++;
        gStageState++;
        gActors[actor_index].health = -1;
        gActors[actor_index + 2].unk_180_s16[1] = 60;
        break;

    case 3:
        gActors[actor_index + 2].unk_180_s16[1]--;
        if (gActors[actor_index + 2].unk_180_s16[1] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1]++;
            for (var_v1 = 0; var_v1 < 25; var_v1++) {
                gActors[actor_index + var_v1].flags &= ~(ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0);
            }
        }
        break;

    case 4:
        gActors[actor_index + 1].unk_180_s16[0] = 3;
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        func_80081720(actor_index, (s16*)D_801A2DA0_751950, 3);
        break;

    case 5:
        break;
    }
}

void func_8019C6A4_74B254(u16 actor_index) {
    s32 var_v1;
    s32 temp_v0;
    temp_v0 = gActors[(u32)actor_index + 5].unk_180;
    temp_v0 = (s16)((u32)temp_v0 >> 16);

    switch (gActors[(u32)actor_index + 2].unk_180_s16[0]) {
    case 0x0:
        gActors[(u32)actor_index + 1].unk_180_s16[1] = 1;
        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        break;

    case 0x20:
        gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        func_80081790(actor_index, D_801A4484_753034);
        // fallthrough

    case 0x21:
        gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        var_v1 = (gActors[(u32)actor_index + 13].unk_180_s16[1] << 8) + FIXED_UNIT(2.5);

        if (gActors[actor_index + 0].unk_138 != 0.0f) {
            gActors[actor_index + 0].velocityX.raw = -var_v1;
        }
        else {
            gActors[actor_index + 0].velocityX.raw = var_v1;
        }
        break;

    case 0x22:
        if (gActors[(u32)actor_index + 13].unk_180_s16[0] >= gActors[(u32)actor_index + 6].unk_180_s16[0]) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x10;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            temp_v0 = gActors[actor_index + 0].velocityX.raw;
            if (((temp_v0 > 0) && (gActors[actor_index + 0].flags_098 & 8)) || ((gActors[actor_index + 0].velocityX.raw < 0) && (gActors[actor_index + 0].flags_098 & 4)) || ((func_8002877C(actor_index) != 0))) {
                if ((Rand() & 7) == 4) {
                    gActors[(u32)actor_index + 1].unk_180_s16[1] = 4;
                }
                else {
                    gActors[(u32)actor_index + 1].unk_180_s16[1] = 3;
                }

                gActors[(u32)actor_index + 2].unk_180_s16[0] = 0;
            }
        }
        break;

    case 0x100:
        gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        func_80081790(actor_index, D_801A4418_752FC8);
        // fallthrough

    case 0x101:
        func_801A1E44_7509F4(actor_index);
        func_801A206C_750C1C(actor_index);
        gActors[(u32)actor_index + 13].unk_180_s16[0]--;
        if (gActors[(u32)actor_index + 13].unk_180_s16[0] <= 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x10;
        }
        break;

    case 0x10:
        gActors[(u32)actor_index + 11].unk_180_s16[0]--;
        if (gActors[(u32)actor_index + 11].unk_180_s16[0] <= 0) {
            if (temp_v0 < 0x20) {
                if (((Rand() & 7) == 2) || (gActors[(u32)actor_index + 4].unk_180 & 0x10000)) {
                    gActors[(u32)actor_index + 11].unk_180_s16[1] = (s16)((Rand() & 0x3F) + 0xB4);
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x30;
                }
                else {
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x40;
                }
            }
            else if (temp_v0 < 0x48) {
                if ((Rand() & 7) == 2) {
                    if (Rand() & 1) {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x90;
                    }
                    else {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x80;
                    }
                }
                else {
                    if ((Rand() & 3) == 2) {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x50;
                    }
                    else {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x40;
                    }
                }
            }
            else if (temp_v0 < 0x100) {
                if (((Rand() & 7) == 6) || (gActors[(u32)actor_index + 4].unk_180 & 0x10000)) {
                    gActors[(u32)actor_index + 11].unk_180_s16[1] = (s16)((Rand() & 0x3F) + 0xB4);
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x30;
                }
                else {
                    if ((Rand() & 3) == 2) {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x60;
                    }
                    else {
                        gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x70;
                    }
                }
            }
            else {
                s16 selected_state;

                if (gActors[(u32)actor_index + 4].unk_180 & 0x10000) {
                    var_v1 = Rand();\
                    selected_state = D_801A4830_7533E0[var_v1 & 3];
                }
                else {
                    var_v1 = Rand();\
                    selected_state = D_801A4820_7533D0[var_v1 & 7];
                }

                if (selected_state == 0x40) {
                    gActors[(u32)actor_index + 11].unk_180_s16[1] = (s16)((Rand() & 0x3F) + 0x78);
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x30;
                }
                else {
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = selected_state;
                }
            }
        }
        break;

    case 0x30:
        gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        func_80081790(actor_index, D_801A4484_753034);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }
        break;

    case 0x31:
        if (gActors[actor_index + 0].unk_138 == 0.0f) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x32;
            gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x33;
            gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);
        }
        break;

    case 0x32:
        gActors[(u32)actor_index + 11].unk_180_s16[1]--;
        if (gActors[(u32)actor_index + 11].unk_180_s16[1] <= 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x10;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            if ((gActors[actor_index + 0].velocityX.raw > 0) && (gActors[actor_index + 0].pos[0].raw >= FIXED_UNIT(134))) {
                if ((Rand() & 7) == 4) {
                    gActors[(u32)actor_index + 1].unk_180_s16[1] = 4;
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0;
                }
                else {
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x33;
                    gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
            }
        }
        break;

    case 0x33:
        gActors[(u32)actor_index + 11].unk_180_s16[1]--;
        if (gActors[(u32)actor_index + 11].unk_180_s16[1] <= 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x10;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            if ((gActors[actor_index + 0].velocityX.raw < 0) && (gActors[actor_index + 0].pos[0].raw < (-FIXED_UNIT(134) + 1))) {
                if ((Rand() & 7) == 4) {
                    gActors[(u32)actor_index + 1].unk_180_s16[1] = 4;
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0;
                }
                else {
                    gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x32;
                    gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
                    gActors[actor_index + 0].unk_138 = 0.0f;
                }
            }
        }
        break;

    case 0x40:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0x50) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x41:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x51) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) ||
                (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x42:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if ((gActors[(u32)actor_index + 4].unk_180 & 0x40000) && (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x41)) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
        }
        else if (gActors[(u32)actor_index + 6].unk_180_s16[1] > 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 2;
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 1;
        }
        break;

    case 0x50:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0xA0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x51:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0xA1) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) ||
                (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x52:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if ((gActors[(u32)actor_index + 4].unk_180 & 0x40000) && (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x41)) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
        }
        else if (gActors[(u32)actor_index + 6].unk_180_s16[1] > 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 2;
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 6;
        }
        break;

    case 0x60:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0x100) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x61:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x101) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) || (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x62:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if ((gActors[(u32)actor_index + 4].unk_180 & 0x40000) && (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x41)) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 1;
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 2;
        }
        break;

    case 0x70:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0x50) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x71:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x51) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) || (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x72:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40000) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0;
        }
        else if (gActors[(u32)actor_index + 6].unk_180_s16[1] > 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 2;
        }
        else {
            var_v1 = gActors[(u32)actor_index + 6].unk_180_s16[0];
            if ((var_v1 >= 0x51) || (var_v1 < 0x20)) {
                gActors[(u32)actor_index + 2].unk_180_s16[0] = 6;
            }
            else {
                gActors[(u32)actor_index + 2].unk_180_s16[0] = 1;
            }
        }
        break;

    case 0x80:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0x50) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x81:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x51) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) || (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x82:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40000) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
        }
        else if (gActors[(u32)actor_index + 6].unk_180_s16[1] > 0) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 1;
        }
        break;

    case 0x90:
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        if (gActors[(u32)actor_index + 6].unk_180_s16[0] >= 0x40) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4484_753034);
            if (gActors[actor_index + 0].unk_138 == 0.0f) {\
                gActors[actor_index + 0].velocityX.raw = FIXED_UNIT(2.5);\
            }\
            else {\
                gActors[actor_index + 0].velocityX.raw = -FIXED_UNIT(2.5);\
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 0x42;
        }
        break;

    case 0x91:
        if (gActors[(u32)actor_index + 6].unk_180_s16[0] < 0x41) {
            gActors[(u32)actor_index + 2].unk_180_s16[0]++;
        }
        else {
            gActors[(u32)actor_index + 9].unk_180_s8[2]--;
            if (gActors[(u32)actor_index + 9].unk_180_s8[2] <= 0) {
                var_v1 = Rand();\
                func_801A23F8_750FA8(actor_index, 0, -0x10, 2, D_801A47DC_75338C[var_v1 & 7]);
                gActors[(u32)actor_index + 9].unk_180_s8[2] = (s8)((Rand() & 0x1F) + 0xA);
            }

            var_v1 = gActors[actor_index + 0].velocityX.raw;
            if ((var_v1 > 0 && gActors[actor_index + 0].posX.raw >= FIXED_UNIT(134)) ||
                (var_v1 < 0 && gActors[actor_index + 0].posX.raw <= -FIXED_UNIT(134))) {
                if (gActors[actor_index + 0].unk_138 == 0.0f) {
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags | ACTOR_FLAG_FLIPPED;
                    gActors[actor_index + 0].unk_138 = 1.0f;
                }
                else {
                    gActors[actor_index + 0].unk_138 = 0.0f;
                    gActors[actor_index + 0].flags = gActors[actor_index + 0].flags & ~ACTOR_FLAG_FLIPPED;
                }

                gActors[actor_index + 0].velocityX.raw = -gActors[actor_index + 0].velocityX.raw;
            }
        }
        break;

    case 0x92:
        func_8019E3C0_74CF70(actor_index);
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40) {\
            if (gActors[actor_index + 0].unk_138 != 0.0f) {
                gActors[actor_index + 0].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index + 0].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 0].unk_138 = 1.0f;
            }
        }

        gActors[(u32)actor_index + 1].unk_180_s16[1] = 7;
        gActors[(u32)actor_index + 2].unk_180_s16[1] = 0;
        gActors[(u32)actor_index + 4].unk_180 |= 2;
        if (gActors[(u32)actor_index + 4].unk_180 & 0x40000) {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
        }
        else if (gActors[(u32)actor_index + 6].unk_180_s16[1] > 0) {
            if (Rand() & 1) {
                gActors[(u32)actor_index + 2].unk_180_s16[0] = 4;
            }
            else {
                gActors[(u32)actor_index + 2].unk_180_s16[0] = 1;
            }
        }
        else {
            gActors[(u32)actor_index + 2].unk_180_s16[0] = 7;
        }
        break;
    }
}

void func_8019E3C0_74CF70(u16 actor_index) {
    s32 var_v0 = gActors[actor_index + 5].unk_180;
    var_v0 = 60 - (var_v0 >> 19);
    if (var_v0 < 0) {
        var_v0 = 1;
    }

    gActors[actor_index + 11].unk_180_s16[0] = var_v0;
}

void func_8019E410_74CFC0(u16 actor_index) {
    s16 var_s0;
    s16 var_s1;
    s16 var_s2;
    s16 var_s3;

    if (gActors[actor_index].velocityY.raw == 0) {
        var_s2 = gActors[actor_index].posX.whole - 16;
        var_s3 = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 4;
        var_s1 = 0;
        for (var_s0 = 0; var_s0 < 3; var_s0++) {
            if (func_80012AB4(var_s2, var_s3) & 0xFF) {
                var_s1++;
            }
        }

        if (var_s1 != 0) {
            return;
        }

        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    }

    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    if (gActors[actor_index].velocityY.raw < 0) {
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            Sound_PlaySfxAtActor2(SFX_0070, actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            func_801A2828_7513D8(actor_index, 12, -16, 2, 2.0f);
        }
    }
}

void func_8019E600_74D1B0(u16 actor_index) {
    switch (gActors[actor_index + 2].unk_180_s16[0]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[0]++;
        break;

    case 1:
        gActors[actor_index + 2].unk_180_s16[0]++;
        if (gActors[actor_index].unk_138 != 0.0f) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_138 = 0.0f;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_138 = 1.0f;
        }

        if (gActors[actor_index].unk_138 != 0.0f) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.5);
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.5);
        }
        break;

    case 2:
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        gActors[actor_index + 2].unk_180_s16[0] = 16;
        break;
    }
}

void func_8019E710_74D2C0(u16 actor_index) {
    switch (gActors[actor_index + 2].unk_180_s16[0]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[0]++;
        gActors[actor_index + 4].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index + 2].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index + 5].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        gActors[actor_index].velocityX.raw = 0;
        func_80081790(actor_index, D_801A4448_752FF8);
        break;

    case 1:
        if (gActors[actor_index].unk_16C & 0x100) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            Sound_PlaySfx(SFX_JUMP_0024);
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A4678_753228);
            gActors[actor_index].velocityY.raw = 0;
        }
        break;

    case 3:
        if (gActors[actor_index].unk_16C & 0x100) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_138 == 0.0f ? FIXED_UNIT(-3) : FIXED_UNIT(3);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            Sound_PlaySfx(SFX_JUMP_0024);
        }
        break;

    case 4:
        func_801A1DE8_750998(actor_index);
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index + 14].unk_180_s16[0] = (Rand() & 7) + 6;
            Sound_PlaySfxAtActor2(SFX_0070, actor_index);
        }
        break;

    case 5:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            D_801A2DA0_751950[3] = 496;
            gActors[actor_index + 4].flags |= ACTOR_FLAG_UNK12;
            gActors[actor_index + 2].flags |= ACTOR_FLAG_UNK12;
            gActors[actor_index + 5].flags |= ACTOR_FLAG_UNK12;
            if (D_800E3584 & 0xC0000) {
                if (gActors[actor_index].unk_138 != 0.0f) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].unk_138 = 0.0f;
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].unk_138 = 1.0f;
                }
            }
        }
        break;
    }
}

void func_8019EAE4_74D694(u16 actor_index) {
    u16 temp_t8;
    s16 temp_v0_2;
    Actor* temp_t0;

    func_801A202C_750BDC(actor_index);
    temp_t8 = (u16)gActors[actor_index + 7].unk_180_s16[0] + actor_index;
    switch (gActors[actor_index + 2].unk_180_s16[0]) {
    case 0:
        gActors[actor_index + 10].unk_180_s8[1] = 0;

        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].velocityX.raw = 0;
        if (gActors[actor_index].velocityY.raw != 0) {
            gActors[actor_index + 2].unk_180_s16[0] = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            if (temp_t8 == (actor_index + 4)) {
                gActors[actor_index + 2].unk_180_s16[0] = 0xA;
            }
            else {
                gActors[actor_index + 2].unk_180_s16[0] = 0x14;
            }
        }
        else if (temp_t8 == (actor_index + 4)) {
            gActors[actor_index + 2].unk_180_s16[0] = 0xA;
        }
        else {
            gActors[actor_index + 2].unk_180_s16[0] = 0x14;
        }

    default:
        break;

    case 1:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                if (temp_t8 == (actor_index + 4)) {
                    gActors[actor_index + 2].unk_180_s16[0] = 0xA;
                }
                else {
                    gActors[actor_index + 2].unk_180_s16[0] = 0x14;
                }
            }
        }
        break;

    case 10:
        gActors[actor_index + 2].unk_180_s16[0]++;
        if (gActors[actor_index].velocityX.raw > 0) {
            gActors[actor_index + 14].unk_180_s16[0] = -FIXED_UNIT(0.06640625);
        }
        else {
            gActors[actor_index + 14].unk_180_s16[0] = FIXED_UNIT(0.06640625);
        }
        break;

    case 11:
        gActors[actor_index].velocityX.raw += gActors[actor_index + 14].unk_180_s16[0];
        func_801A202C_750BDC(temp_t8);
        if (gActors[actor_index + 14].unk_180_s16[0] < 0) {
            if (gActors[actor_index].velocityX.raw <= 0) {
                gActors[actor_index + 2].unk_180_s16[0]++;
                gActors[actor_index].velocityX.raw = 0;
            }
        }
        else if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityX.raw = 0;
        }
        break;

    case 12:
        gActors[actor_index + 2].unk_180_s16[0]++;

        gActors[actor_index].hitboxBX1 = 0;
        temp_v0_2 = gActors[actor_index].hitboxBX1;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].hitboxBX0 = temp_v0_2;
        gActors[actor_index].hitboxBY1 = temp_v0_2;
        gActors[actor_index].hitboxBY0 = temp_v0_2;
        gActors[actor_index].unk_128 = (f32)temp_t8;
        gActors[actor_index].unk_12C = (f32)temp_t8;

        func_80081790(actor_index, D_801A46AC_75325C);
        gActors[actor_index + 14].unk_180_s16[0] = 0x78;
        break;

    case 13:
        temp_t0 = &gActors[temp_t8];
        if (temp_t0->flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index + 9].unk_180_s8[3] = (s8)(gActors[actor_index + 9].unk_180_s8[3] - 1);
            if (gActors[actor_index + 9].unk_180_s8[3] <= 0) {
                func_801A2BCC_75177C((u16)(actor_index + 4), -4, (s16)((Rand() & 3) + 4));
                gActors[actor_index + 9].unk_180_s8[3] = 6;
            }

            temp_t0->posX.raw = temp_t0->unk_104;
            temp_t0->posY.raw = temp_t0->unk_108;

            gActors[actor_index].posZ.raw = temp_t0->unk_10C - 1;
            if (gActors->flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].unk_138 = 0.0f;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].unk_138 = 1.0f;
            }

            if (temp_t0->flags_098 & ACTOR_FLAG3_SHAKE) {
                if (((Rand() & 0x3F) == 0x13) && (YellowGem_GetFlag(gCurrentStage) == 0) && (gActors[actor_index + 10].unk_180_s8[1] == 0)) {
                    gActors[actor_index + 10].unk_180_s8[1] = 1;

                    SpawnGemActor((u16)(actor_index + 4), 0x32U, 0U);
                }
                else if ((Rand() & 7) == 4 && gActors[actor_index + 10].unk_180_s8[0] < 0x15) {
                    gActors[actor_index + 10].unk_180_s8[0]++;

                    SpawnGemActor((u16)(actor_index + 4), 0x31U, 0U);
                }
            }

            gActors[actor_index + 5].unk_180 += FIXED_UNIT(0.25);
            gActors[actor_index + 14].unk_180_s16[0]--;
            if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
                gActors[actor_index + 2].unk_180_s16[0] = 0x1E;
            }
        }
        else {
            gActors[actor_index].unk_128 = (f32)actor_index;
            gActors[actor_index].unk_12C = (f32)actor_index;

            func_801A1D48_7508F8(actor_index);
            gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~1);
            gActors[actor_index + 2].unk_180_s16[0] = 0;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
            if (temp_t0->flags_098 & ACTOR_FLAG3_THROWN) {
                gActors[actor_index + 1].unk_180_s16[1] = 5;
                gActors[actor_index].velocityX.raw = temp_t0->unk_0F8.raw;
                gActors[actor_index].velocityY.raw = temp_t0->unk_0FC.raw;
            }
            else {
                gActors[actor_index + 1].unk_180_s16[1] = 1;
                gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~0xC);
            }
        }
        break;

    case 20:
        gActors[actor_index + 2].unk_180_s16[0]++;
        if (gActors[actor_index].velocityX.raw > 0) {
            gActors[actor_index + 14].unk_180_s16[0] = -FIXED_UNIT(0.06640625);
        }
        else {
            gActors[actor_index + 14].unk_180_s16[0] = FIXED_UNIT(0.06640625);
        }

        gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~0xC);
        gActors[actor_index + 5].unk_180 = (s32)(gActors[actor_index + 5].unk_180 + FIXED_UNIT(20));
        break;

    case 21:
        gActors[actor_index].velocityX.raw += gActors[actor_index + 14].unk_180_s16[0];
        func_801A202C_750BDC(temp_t8);
        if (gActors[actor_index + 14].unk_180_s16[0] < 0) {
            if (gActors[actor_index].velocityX.raw <= 0) {
                gActors[actor_index + 2].unk_180_s16[0]++;
                gActors[actor_index].velocityX.raw = 0;
            }
        }
        else if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityX.raw = 0;
        }
        break;

    case 22:
        gActors[actor_index + 2].unk_180_s16[0]++;
        func_80081790(actor_index, D_801A44B8_753068);
        break;

    case 23:
        if (gActors[actor_index].unk_16C & 0x1000) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            temp_t0 = &gActors[temp_t8];
            gActors[temp_t0->parentIndex].flags_098 |= ACTOR_FLAG3_UNK16;
            if (gActors[actor_index].unk_138 == 0.0f) {
                gActors[temp_t0->parentIndex].unk_0F8.raw = FIXED_UNIT(-9);
            }
            else {
                gActors[temp_t0->parentIndex].unk_0F8.raw = FIXED_UNIT(9);
            }

            gActors[temp_t0->parentIndex].unk_0FC.raw = FIXED_UNIT(4);
            gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~1);
            Sound_PlaySfxAtActor2(SFX_0034, actor_index);
            func_800340CC(actor_index, 0xE, 0U);
        }
        break;

    case 24:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index + 1].unk_180_s16[1] = 1;
            gActors[actor_index + 2].unk_180_s16[0] = 0;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
        }
        break;

    case 30:
        gActors[actor_index + 2].unk_180_s16[0]++;
        gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~0xC);
        func_80081790(actor_index, D_801A4678_753228);
        break;

    case 31:
        if (gActors[actor_index].unk_16C & 0x100) {
            gActors[actor_index + 2].unk_180_s16[0]++;

            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;

            func_801A1D48_7508F8(actor_index);
            if (gActors[actor_index].unk_138 == 0.0f) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            }

            gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            temp_t0 = &gActors[temp_t8];
            gActors[temp_t0->parentIndex].flags_098 |= ACTOR_FLAG3_UNK16;
            gActors[temp_t0->parentIndex].unk_0F8.raw = -gActors[actor_index].velocityX.raw;
            gActors[temp_t0->parentIndex].unk_0FC.raw = FIXED_UNIT(4);
            gActors[actor_index].unk_128 = (f32)actor_index;
            gActors[actor_index].unk_12C = (f32)actor_index;
            gActors[actor_index + 4].unk_180 = (s32)(gActors[actor_index + 4].unk_180 & ~1);
            func_800340CC(actor_index, 0xE, 0U);
        }
        break;

    case 32:
        func_801A1DE8_750998(actor_index);

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityY.raw = 0;

            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index + 14].unk_180_s16[0] = (s16)((Rand() & 7) + 6);
            Sound_PlaySfx(SFX_LAND_0025);
        }
        break;

    case 33:
        gActors[actor_index + 14].unk_180_s16[0] = (s16)(gActors[actor_index + 14].unk_180_s16[0] - 1);
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 0x10;
            D_801A2DA0_751950[3] = 0x1F0;
            func_80081790(actor_index, D_801A4484_753034);
        }
        break;
    }
}

void func_8019F618_74E1C8(u16 actor_index) {
    Actor* temp_s0 = &gActors[actor_index + 0];
    Actor* temp_t0;
    s16 temp_v0;
    u16 temp_s1;

    temp_v0 = temp_s0[2].unk_180_s16[0];
    switch (temp_v0) {
    case 0:
        temp_s0[2].unk_180_s16[0] = temp_v0 + 1;
        temp_s0[14].unk_180_s16[0] = 0xA;
        func_80081790(actor_index, D_801A4620_7531D0);
        break;

    case 1:
        temp_s1 = actor_index;
        gActors[temp_s1].unk_170 = (s32)((f64)gActors[temp_s1].unk_170 + TO_FIXED(DEG_TO_INDEX(7)));
        if ((f64)gActors[temp_s1].unk_170 >= TO_FIXED(DEG_TO_INDEX(180))) {
            gActors[temp_s1].unk_170 = TO_FIXED(DEG_TO_INDEX(180));
        }

        func_801A202C_750BDC(temp_s1);
        if (func_801A206C_750C1C(temp_s1) != 0) {
            gActors[temp_s1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[temp_s1].velocityX.raw = -(gActors[temp_s1].velocityX.raw >> 1);
            gActors[temp_s1].velocityY.raw = 0;
        }

        if (func_801A20FC_750CAC(temp_s1) != 0) {
            gActors[temp_s1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[temp_s1].velocityX.raw = -(gActors[temp_s1].velocityX.raw >> 1);
            gActors[temp_s1].velocityY.raw = 0;
            gActors[temp_s1 + 14].unk_180_s16[0] = 0;
        }

        if (func_801A1FB8_750B68(temp_s1) != 0) {
            gActors[temp_s1 + 2].unk_180_s16[0]++;

            Sound_PlaySfxAtActor2(SFX_0068, temp_s1);
            func_801A2558_751108(temp_s1, 0, -0x18, 2, 2.0f);
            gActors[temp_s1].unk_170 = TO_FIXED(DEG_TO_INDEX(180));
            gActors[temp_s1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[temp_s1 + 14].unk_180_s16[0] = 3;
            gActors[temp_s1].velocityX.raw = gActors[temp_s1].velocityX.raw >> 1;
            gActors[temp_s1].velocityY.raw = -(gActors[temp_s1].velocityY.raw >> 1);
            func_80081790(temp_s1, D_801A45F8_7531A8);
            if (gActors[temp_s1 + 4].unk_180 & 8) {
                gActors[temp_s1].health -= 0x50;
                gActors[temp_s1 + 5].unk_180 += FIXED_UNIT(20);
                gActors[temp_s1 + 9].unk_180_u8[0] = 1;

                Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, temp_s1);
                if (gActors[temp_s1 + 4].unk_180 & 4) {
                    if (YellowGem_GetFlag(gCurrentStage) != 0) {
                        gActors[temp_s1 + 4].unk_180 &= ~0xC;
                    }
                    break;
                }
                else {
                    gActors[temp_s1 + 4].unk_180 &= ~0xC;
                }
            }
            else {
                gActors[temp_s1].health -= 0x28;
                gActors[temp_s1 + 5].unk_180 += FIXED_UNIT(10);
                gActors[temp_s1 + 9].unk_180_u8[0] = 1;

                Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, temp_s1);
            }
        }

        gActors[temp_s1].velocityX.raw = Math_ApproachS32(gActors[temp_s1].velocityX.raw, 0, FIXED_UNIT(0.01171875));
        gActors[temp_s1 + 14].unk_180_s16[0]--;
        if (gActors[temp_s1 + 14].unk_180_s16[0] < 0) {
            gActors[temp_s1 + 14].unk_180_s16[0] = 0;
            gActors[temp_s1].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[temp_s1].velocityY.raw < FIXED_UNIT(-7.5)) {
                gActors[temp_s1].velocityY.raw = FIXED_UNIT(-7.5);
            }
        }
        break;

    case 2:
        func_801A202C_750BDC(actor_index);
        if (func_801A206C_750C1C(actor_index) != 0) {
            temp_t0 = &gActors[actor_index];
            temp_t0->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            temp_t0->velocityX.raw = -(temp_t0->velocityX.raw >> 1);
            temp_t0->velocityY.raw = 0;
        }

        temp_t0 = &gActors[actor_index];

        if (func_801A20FC_750CAC(actor_index) != 0) {
            temp_t0->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            temp_t0->velocityX.raw = -(temp_t0->velocityX.raw >> 1);
            temp_t0->velocityY.raw = 0;
            temp_s0[14].unk_180_s16[0] = 0;
        }

        if (func_801A1FB8_750B68(actor_index) != 0) {
            temp_s0[2].unk_180_s16[0]++;

            Sound_PlaySfxAtActor2(SFX_0068, actor_index);
            temp_t0->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            temp_s0[14].unk_180_s16[0] = 3;
            temp_t0->velocityY.raw = 0;
            temp_t0->velocityX.raw = 0;
            temp_s0[4].flags &= ~ACTOR_FLAG_UNK12;
            temp_s0[2].flags &= ~ACTOR_FLAG_UNK12;
            temp_s0[5].flags &= ~ACTOR_FLAG_UNK12;
        }

        temp_t0->velocityX.raw = Math_ApproachS32(temp_t0->velocityX.raw, 0, FIXED_UNIT(0.01171875));
        temp_s0[14].unk_180_s16[0]--;
        if (temp_s0[14].unk_180_s16[0] < 0) {
            temp_s0[14].unk_180_s16[0] = 0;
            temp_t0->velocityY.raw -= FIXED_UNIT(0.25);
            if (temp_t0->velocityY.raw < FIXED_UNIT(-7.5)) {
                temp_t0->velocityY.raw = FIXED_UNIT(-7.5);
            }
        }
        break;

    case 3:
        if (func_801A1E44_7509F4(actor_index) != 0) {
            func_801A206C_750C1C(actor_index);
            temp_s0[2].unk_180_s16[0]++;
            func_801A2828_7513D8(actor_index, 0xC, -0x10, 2, 2.0f);
            temp_t0 = &gActors[actor_index];
            temp_t0->velocityY.raw = 0;
            temp_t0->velocityX.raw = 0;
            temp_s0[14].unk_180_s16[0] = 0x3C;
        }
        break;

    case 4:
        temp_s0[14].unk_180_s16[0]--;
        if (temp_s0[14].unk_180_s16[0] <= 0) {
            temp_s0[2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A463C_7531EC);
        }
        break;

    case 5:
        temp_t0 = &gActors[actor_index];
        if (temp_t0->unk_16C & 1) {
            temp_s0[2].unk_180_s16[0] = temp_v0 + 1;
            temp_t0->velocityY.raw = FIXED_UNIT(3);
            func_801A2A44_7515F4(actor_index, 0, -0x10, -2, 1.0f);
        }
        break;

    case 6:
        temp_t0 = &gActors[actor_index];
        temp_t0->unk_170 = (s32)((f64)temp_t0->unk_170 - TO_FIXED(DEG_TO_INDEX(18)));
        if (temp_t0->unk_170 <= 0) {
            temp_s0[2].unk_180_s16[0]++;
            temp_t0->flags |= ACTOR_FLAG_UNK16;
            temp_t0->flags &= ~ACTOR_FLAG_UNK17;\
            temp_t0->flags_098 &= ~ACTOR_FLAG3_UNK6;
            temp_t0->velocityX.raw = 0;
            temp_t0->velocityY.raw = 0;
            temp_t0->unk_170 = 0;
        }
        break;

    case 7:
        temp_t0 = &gActors[actor_index];
        temp_t0->velocityY.raw -= FIXED_UNIT(0.25);
        if (temp_t0->velocityY.raw < FIXED_UNIT(-7.5)) {
            temp_t0->velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (func_801A1FB8_750B68(actor_index) != 0) {
            temp_s0[2].unk_180_s16[0]++;
            temp_t0->velocityX.raw = 0;
            temp_t0->velocityY.raw = 0;
            func_80081790(actor_index, D_801A446C_75301C);
            temp_s0[14].unk_180_s16[0] = 0x1E;
            Sound_PlaySfxAtActor2(SFX_0070, actor_index);
            func_801A2828_7513D8(actor_index, 0xC, -0x10, 2, 2.0f);
        }
        break;

    case 8:
        temp_s0[14].unk_180_s16[0]--;
        if (temp_s0[14].unk_180_s16[0] <= 0) {
            if (temp_s0[6].unk_180_s16[0] < 0x41) {
                temp_s0[1].unk_180_s16[1] = 7;
                temp_s0[4].unk_180 |= 2;
                if (D_800E3584 & 0x30000) {
                    temp_s0[2].unk_180_s16[0] = 4;
                }
                else {
                    temp_s0[2].unk_180_s16[0] = 1;
                }
            }
            else {
                temp_s0[1].unk_180_s16[1] = 0;
                temp_s0[2].unk_180_s16[0] = 0x10;
                func_801A1D48_7508F8(actor_index);
            }
        }
        break;
    }
}

void func_8019FE50_74EA00(u16 actor_index) {
    switch (gActors[actor_index + 2].unk_180_s16[0]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[0]++;
        gActors[actor_index + 14].unk_180_s16[0] = 2;
        func_80081790(actor_index, D_801A4620_7531D0);
        break;

    case 1:
        gActors[actor_index].unk_170 += TO_FIXED(DEG_TO_INDEX(7));
        if (gActors[actor_index].unk_170 >= TO_FIXED(DEG_TO_INDEX(180))) {
            gActors[actor_index].unk_170 = TO_FIXED(DEG_TO_INDEX(180));
        }

        func_801A202C_750BDC(actor_index);
        if (func_801A206C_750C1C(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
        }

        if (func_801A20FC_750CAC(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 14].unk_180_s16[0] = 0;
        }

        if (func_801A1FB8_750B68(actor_index)) {
            u16 temp_v0;

            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].unk_170 = TO_FIXED(DEG_TO_INDEX(180));
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index + 14].unk_180_s16[0] = 3;
            gActors[actor_index].velocityX.raw >>= 1;
            gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw >> 2);
            temp_v0 = actor_index;
            func_80081790(temp_v0, D_801A45F8_7531A8);
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.01171875));
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] < 0) {
            gActors[actor_index + 14].unk_180_s16[0] = 0;
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }
        }
        break;

    case 2:
        func_801A202C_750BDC(actor_index);
        if (func_801A206C_750C1C(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
        }

        if (func_801A20FC_750CAC(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = -(gActors[actor_index].velocityX.raw >> 1);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index + 14].unk_180_s16[0] = 0;
        }

        if (func_801A1FB8_750B68(actor_index)) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index + 14].unk_180_s16[0] = 3;
            gActors[actor_index].velocityY.raw = 0;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.01171875));
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] < 0) {
            gActors[actor_index + 14].unk_180_s16[0] = 0;
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
            }
        }
        break;

    case 3:
        if (func_801A1E44_7509F4(actor_index)) {
            func_801A206C_750C1C(actor_index);
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index + 14].unk_180_s16[0] = 60;
        }
        break;

    case 4:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            func_80081790(actor_index, D_801A463C_7531EC);
        }
        break;

    case 5:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index + 2].unk_180_s16[0]++;
        }
        break;

    case 6:
        gActors[actor_index].unk_170 -= TO_FIXED(DEG_TO_INDEX(18));
        if (gActors[actor_index].unk_170 <= 0) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_170 = 0;
        }
        break;

    case 7:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (func_801A1FB8_750B68(actor_index)) {
            gActors[actor_index + 2].unk_180_s16[0]++;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index + 14].unk_180_s16[0] = 30;
        }
        break;

    case 8:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
        }
        break;
    }
}

void func_801A047C_74F02C(u16 actor_index) {
    func_801A202C_750BDC(actor_index);
    D_801A4838_7533E8[gActors[actor_index + 2].unk_180_s16[0]](actor_index);
}

void func_801A04F0_74F0A0(u16 actor_index) {
    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        func_80081790(actor_index, D_801A4418_752FC8);
        break;

    case 1:
        if (func_801A1E44_7509F4(actor_index)) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index + 14].unk_180_s16[0] = (Rand() & 0x1F) + 60;
        }
        break;

    case 2:
        gActors[actor_index + 15].unk_180_s16[1]--;
        if (gActors[actor_index + 15].unk_180_s16[1] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
        }
        break;
    }
}

void func_801A05E8_74F198(u16 actor_index) {
    u16 temp_t4;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        func_80081790(actor_index, D_801A4554_753104);
        gActors[actor_index + 14].unk_180_s16[0] = 20;
        break;

    case 1:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_138 == 0.0f ? FIXED_UNIT(4) : FIXED_UNIT(-4);
            temp_t4 = actor_index + 4;
            gActors[temp_t4].hitboxAY0 = 7;
            gActors[temp_t4].hitboxAY1 = -7;
            gActors[temp_t4].hitboxAX0 = -7;
            gActors[temp_t4].hitboxAX1 = 7;
            gActors[temp_t4].hitFlags = HITFLAG_0;
            gActors[temp_t4].hitType = HITTYPE_3;
            gActors[temp_t4].unk_0F8.raw = FIXED_UNIT(4);
            gActors[temp_t4].unk_0FC.raw = FIXED_UNIT(2);
            gActors[temp_t4].damage = 16;
            Sound_PlaySfxAtActor2(SFX_ROAR_013B, actor_index);
            SpawnCrosshair(CROSSHAIR_ALL, temp_t4);
            func_801A269C_75124C(actor_index, -24, -16, 2, 1.0f);
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (gActors[actor_index].unk_16C & 1) {
            temp_t4 = actor_index + 4;
            gActors[temp_t4].flags |= ACTOR_FLAG_UNK9;
        }

        if (func_801A1FB8_750B68(actor_index)) {
            temp_t4 = actor_index + 4;
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].velocityY.raw = 0;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[temp_t4].flags &= ~ACTOR_FLAG_UNK9;
        }
        break;

    case 3:
        if (func_801A1E44_7509F4(actor_index)) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
            gActors[actor_index + 4].unk_180 &= ~2;
            func_801A1D48_7508F8(actor_index);
        }
        break;
    }
}

void func_801A0948_74F4F8(u16 actor_index) {
    u16 temp_t4;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        func_80081790(actor_index, D_801A4554_753104);
        gActors[actor_index + 14].unk_180_s16[0] = 20;
        break;

    case 1:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_138 == 0.0f ? FIXED_UNIT(4) : FIXED_UNIT(-4);
            temp_t4 = actor_index + 4;
            gActors[temp_t4].hitboxAY0 = 7;
            gActors[temp_t4].hitboxAY1 = -7;
            gActors[temp_t4].hitboxAX0 = -7;
            gActors[temp_t4].hitboxAX1 = 7;
            gActors[temp_t4].hitFlags = HITFLAG_0;
            gActors[temp_t4].hitType = HITTYPE_3;
            gActors[temp_t4].unk_0F8.raw = FIXED_UNIT(4);
            gActors[temp_t4].unk_0FC.raw = FIXED_UNIT(2);
            gActors[temp_t4].damage = 16;
            Sound_PlaySfxAtActor2(SFX_ROAR_013B, actor_index);
            SpawnCrosshair(CROSSHAIR_ALL, temp_t4);
            func_801A269C_75124C(actor_index, -24, -16, 2, 1.2f);
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (gActors[actor_index].unk_16C & 1) {
            gActors[(u16)(actor_index + 4)].flags |= ACTOR_FLAG_UNK9;
        }

        if (func_801A1FB8_750B68(actor_index)) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[(u16)(actor_index + 4)].flags &= ~ACTOR_FLAG_UNK9;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        }
        break;

    case 3:
        if (func_801A1E44_7509F4(actor_index)) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
            gActors[actor_index + 4].unk_180 &= ~2;
        }
        break;
    }
}

void func_801A0C8C_74F83C(u16 actor_index) {
    Actor* temp_v0;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        temp_v0 = &gActors[(u16)(actor_index + 5) + 0U];
        func_80081790(actor_index, D_801A4710_7532C0);
        temp_v0->hitFlags = HITFLAG_7 | HITFLAG_0;
        temp_v0->hitType = HITTYPE_4;
        temp_v0->unk_0F8.raw = FIXED_UNIT(1.5);
        temp_v0->unk_0FC.raw = FIXED_UNIT(7);
        temp_v0->damage = 10;
        break;

    case 1:
        if (gActors[actor_index].unk_16C & 0x1000) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            temp_v0 = &gActors[(u16)(actor_index + 5)];
            temp_v0->flags |= ACTOR_FLAG_UNK9;
            if (gActors[actor_index].unk_138 == 0.0f) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
                temp_v0->hitboxAY1 = -16;\
                temp_v0->hitboxAX1 = 22;\
                temp_v0->hitboxAY0 = 4;\
                temp_v0->hitboxAX0 = 4;
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
                temp_v0->hitboxAY1 = -16;\
                temp_v0->hitboxAX0 = -22;\
                temp_v0->hitboxAX1 = -4;
                temp_v0->hitboxAY0 = 4;
            }

            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
            Sound_PlaySfxAtActor2(SFX_008E, actor_index);
            SpawnCrosshair(CROSSHAIR_ALL, actor_index + 4);
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.5);
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1)) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            temp_v0 = &gActors[(u16)(actor_index + 5)];
            temp_v0->flags &= ~ACTOR_FLAG_UNK9;
        }
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);
        if (func_801A1FB8_750B68(actor_index) != 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_80081790(actor_index, D_801A446C_75301C);
        }
        break;

    case 4:
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        gActors[actor_index + 2].unk_180_s16[0] = 16;
        gActors[actor_index + 2].unk_180_s16[1] = 0;
        gActors[actor_index + 4].unk_180 &= ~2;
        break;
    }
}

void func_801A0FC4_74FB74(u16 actor_index) {
    u16 other_actor_index;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        gActors[actor_index + 4].unk_180 |= 4;
        func_80081790(actor_index, D_801A446C_75301C);
        gActors[actor_index + 14].unk_180_s16[0] = 5;
        break;

    case 1:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].unk_170 = TO_FIXED(DEG_TO_INDEX(50));
            func_80081790(actor_index, D_801A458C_75313C);
            other_actor_index = actor_index + 5;
            gActors[other_actor_index].hitFlags = HITFLAG_0 | HITFLAG_3 | HITFLAG_7;
            gActors[other_actor_index].hitType = HITTYPE_4;
            gActors[other_actor_index].unk_0F8.raw = FIXED_UNIT(3);
            gActors[other_actor_index].unk_0FC.raw = FIXED_UNIT(6);
            gActors[other_actor_index].damage = 48;
            if (gActors[actor_index].unk_138 == 0.0f) {
                gActors[other_actor_index].hitboxAY0 = 4;\
                gActors[other_actor_index].hitboxAY1 = -4;
                gActors[other_actor_index].hitboxAX0 = 0;
                gActors[other_actor_index].hitboxAX1 = 48;
            }
            else {
                gActors[other_actor_index].hitboxAY0 = 4;\
                gActors[other_actor_index].hitboxAY1 = -4;\
                gActors[other_actor_index].hitboxAX0 = -48;
                gActors[other_actor_index].hitboxAX1 = 0;
            }

            gActors[other_actor_index].flags |= ACTOR_FLAG_UNK9;
            Sound_PlaySfxAtActor2(SFX_SWISH_0098, actor_index);
            SpawnCrosshair(CROSSHAIR_ALL, actor_index + 4);
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        gActors[actor_index].unk_170 += TO_FIXED(DEG_TO_INDEX(8));
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            other_actor_index = actor_index + 5;
            gActors[other_actor_index].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index + 14].unk_180_s16[0] = 15;
        }
        break;

    case 3:
        gActors[actor_index].unk_170 += TO_FIXED(DEG_TO_INDEX(4));
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            func_801A1D48_7508F8(actor_index);
        }
        break;

    case 4:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        gActors[actor_index].unk_170 += TO_FIXED(DEG_TO_INDEX(2));
        if (gActors[actor_index].unk_170 > TO_FIXED(DEG_TO_INDEX(350))) {
            gActors[actor_index].unk_170 = TO_FIXED(DEG_TO_INDEX(350));
        }

        if (func_801A1FB8_750B68(actor_index)) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;\
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].unk_170 = 0;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index + 14].unk_180_s16[0] = 40;
        }
        break;

    case 5:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
            gActors[actor_index + 4].unk_180 &= ~2;
        }
        break;
    }
}

void func_801A14A0_750050(u16 actor_index) {
    s32 state = gActors[actor_index + 2].unk_180_s16[1];

    switch (state) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1] = state + 1;
        func_80081790(actor_index, D_801A4418_752FC8);
        break;

    case 1:
        if (func_801A1E44_7509F4(actor_index) != 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            func_80081790(actor_index, D_801A45B8_753168);
        }
        break;

    case 2:
        if (gActors[actor_index].unk_16C & 0x2000) {
            gActors[actor_index + 2].unk_180_s16[1] = state + 1;
            if (gActors[actor_index].unk_138 == 0.0f) {
                gActors[(u16)(actor_index + 2)].hitboxAY0 = 4;
                gActors[(u16)(actor_index + 2)].hitboxAY1 = -7;
                gActors[(u16)(actor_index + 2)].hitboxAX0 = -7;
                gActors[(u16)(actor_index + 2)].hitboxAX1 = 20;
            }
            else {
                gActors[(u16)(actor_index + 2)].hitboxAY0 = 4;
                gActors[(u16)(actor_index + 2)].hitboxAY1 = -7;
                gActors[(u16)(actor_index + 2)].hitboxAX0 = -20;
                gActors[(u16)(actor_index + 2)].hitboxAX1 = 7;
            }

            gActors[(u16)(actor_index + 2)].flags |= ACTOR_FLAG_UNK9;
            gActors[(u16)(actor_index + 2)].hitType = HITTYPE_4;
            gActors[(u16)(actor_index + 2)].unk_0F8.raw = FIXED_UNIT(1.5);
            gActors[(u16)(actor_index + 2)].unk_0FC.raw = 0;
            gActors[(u16)(actor_index + 2)].damage = 10;
            SpawnCrosshair(CROSSHAIR_ALL, actor_index + 4);
        }
        break;

    case 3:
        if (gActors[actor_index].unk_11C < 0.0f || (gActors[(u16)(actor_index + 2)].flags_098 & ACTOR_FLAG3_UNK0)) {
            gActors[actor_index + 2].unk_180_s16[1] = state + 1;
            gActors[(u16)(actor_index + 2)].flags &= ~ACTOR_FLAG_UNK9;
        }
        break;

    case 4:
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        gActors[actor_index + 2].unk_180_s16[0] = 16;
        gActors[actor_index + 2].unk_180_s16[1] = 0;
        gActors[actor_index + 4].unk_180 &= ~2;
        break;
    }
}

void func_801A16F4_7502A4(u16 actor_index) {
    u16 temp_t9;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        func_80081790(actor_index, D_801A4554_753104);
        gActors[actor_index + 14].unk_180_s16[0] = 26;
        break;

    case 1:
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            func_80081790(actor_index, D_801A446C_75301C);
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_138 == 0.0f ? FIXED_UNIT(4) : FIXED_UNIT(-4);
            temp_t9 = actor_index + 4;
            gActors[temp_t9].hitboxAY0 = 7;
            gActors[temp_t9].hitboxAY1 = -7;
            gActors[temp_t9].hitboxAX0 = -7;
            gActors[temp_t9].hitboxAX1 = 7;
            gActors[temp_t9].flags |= ACTOR_FLAG_UNK9;
            gActors[actor_index + 14].unk_180_s16[0] = 20;
            gActors[actor_index + 14].unk_180_s16[1] = 0;
            gActors[temp_t9].hitFlags = HITFLAG_0;
            gActors[temp_t9].hitType = HITTYPE_3;
            gActors[temp_t9].unk_0F8.raw = FIXED_UNIT(-3);
            gActors[temp_t9].unk_0FC.raw = FIXED_UNIT(6);
            gActors[temp_t9].damage = 20;
            Sound_PlaySfxAtActor2(SFX_0034, actor_index);
            SpawnCrosshair(CROSSHAIR_ALL, temp_t9);
        }
        break;

    case 2:
        func_801A2170_750D20(actor_index);
        gActors[actor_index + 14].unk_180_s16[0]--;
        if (gActors[actor_index + 14].unk_180_s16[0] <= 0) {
            gActors[actor_index + 2].unk_180_s16[1]++;
        }
        break;

    case 3:
        if (func_801A1E44_7509F4(actor_index) != 0) {
            temp_t9 = actor_index + 4;
            gActors[temp_t9].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index + 1].unk_180_s16[1] = 0;
            gActors[actor_index + 2].unk_180_s16[0] = 16;
            gActors[actor_index + 2].unk_180_s16[1] = 0;
            gActors[actor_index + 4].unk_180 &= ~2;
        }
        break;
    }
}

void func_801A1974_750524(u16 actor_index) {
    u16 temp_a1;

    switch (gActors[actor_index + 2].unk_180_s16[1]) {
    case 0:
        gActors[actor_index + 2].unk_180_s16[1]++;
        func_80081790(actor_index, D_801A4508_7530B8);
        gActors[actor_index + 14].unk_180_s16[0] = 180;
        temp_a1 = actor_index + 4;
        if (gActors[actor_index].unk_138 == 0.0f) {
            gActors[(u16)(actor_index + 4)].hitboxAY0 = 7;
            gActors[(u16)(actor_index + 4)].hitboxAY1 = -7;
            gActors[(u16)(actor_index + 4)].hitboxAX0 = -3;
            gActors[(u16)(actor_index + 4)].hitboxAX1 = 16;
        }
        else {
            gActors[(u16)(actor_index + 4)].hitboxAY0 = 7;
            gActors[(u16)(actor_index + 4)].hitboxAY1 = -7;
            gActors[(u16)(actor_index + 4)].hitboxAX0 = -16;
            gActors[(u16)(actor_index + 4)].hitboxAX1 = 3;
        }

        gActors[(u16)(actor_index + 4)].flags |= ACTOR_FLAG_UNK11;
        SpawnCrosshair(CROSSHAIR_ALL, temp_a1);
        break;

    case 1:
        if (gActors[actor_index].unk_16C & 0x2000) {
            gActors[actor_index + 2].unk_180_s16[1] = 5;
            gActors[(u16)(actor_index + 4)].flags &= ~ACTOR_FLAG_UNK11;
            break;
        }

        if (gActors[(u16)(actor_index + 4)].flags_098 & ACTOR_FLAG3_UNK8) {
            temp_a1 = gActors[(u16)(actor_index + 4)].parentIndex;
            if (temp_a1 == 0) {
                gActors[actor_index + 2].unk_180_s16[1]++;
                gActors[(u16)(actor_index + 4)].flags &= ~ACTOR_FLAG_UNK11;
                gActors[(u16)(actor_index + 4)].flags |= ACTOR_FLAG_ATTACHED;
                gActors[temp_a1].unk_104 = gActors[(u16)(actor_index + 4)].posX.raw + (gActors[actor_index].unk_138 != 0.0f ? FIXED_UNIT(8) : FIXED_UNIT(-8));
                gActors[temp_a1].unk_108 = gActors[(u16)(actor_index + 4)].posY.raw;
                gActors[temp_a1].unk_10C = gActors[(u16)(actor_index + 4)].posZ.raw - 1;
                gActors[temp_a1].flags_098 |= ACTOR_FLAG3_GRAB;
            }
        }
        break;

    case 2:
        func_801A1E44_7509F4(actor_index);
        temp_a1 = gActors[(u16)(actor_index + 4)].parentIndex;
        if (gActors[actor_index].unk_16C & 0x2000) {
            gActors[actor_index + 2].unk_180_s16[1]++;
            gActors[temp_a1].unk_0F8.raw = 0;
            gActors[temp_a1].flags_098 |= ACTOR_FLAG3_THROWN;
            gActors[temp_a1].unk_0FC.raw = FIXED_UNIT(9);
            gActors[temp_a1].hitFlags = HITFLAG_0;
            gActors[temp_a1].hitType = HITTYPE_3;
            gActors[temp_a1].damage = 10;
        }
        else {
            gActors[temp_a1].unk_104 = gActors[(u16)(actor_index + 4)].posX.raw;
            gActors[temp_a1].unk_108 = gActors[(u16)(actor_index + 4)].posY.raw;
            gActors[temp_a1].unk_10C = gActors[(u16)(actor_index + 4)].posZ.raw - 4;
            gActors[temp_a1].flags_098 |= ACTOR_FLAG3_GRAB;
        }
        break;

    case 3:
        gActors[actor_index + 2].unk_180_s16[1]++;
        func_80081790(actor_index, D_801A4418_752FC8);
        break;

    case 4:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index + 2].unk_180_s16[1]++;
        }
        break;

    case 5:
        gActors[actor_index + 1].unk_180_s16[1] = 0;
        gActors[actor_index + 2].unk_180_s16[0] = 16;
        gActors[actor_index + 2].unk_180_s16[1] = 0;
        gActors[actor_index + 4].unk_180 &= ~2;
        break;
    }
}

void func_801A1D48_7508F8(u16 actor_index) {
    s16 index;
    u16 var_a0;
    s16* var_v0 = D_801A4754_753304;
    u32* var_v1 = D_801A477C_75332C;

    for (index = 0; index < 4; index++) {
        var_a0 = var_v0[0] + actor_index;
        gActors[var_a0].hitboxBY0 = var_v0[1];
        gActors[var_a0].hitboxBY1 = var_v0[2];
        gActors[var_a0].hitboxBX0 = var_v0[3];
        gActors[var_a0].hitboxBX1 = var_v0[4];
        gActors[var_a0].flags = *var_v1;
        gActors[var_a0].unk_0DF = ACTOR0DF_6;
        var_v0 += 5;
        var_v1++;
    }
}

void func_801A1DE8_750998(u16 actor_index) {
    D_801A2DA0_751950[3] = ((gActors[actor_index + 1].unk_174 / FIXED_UNIT(1)) + 0x200) & 0x3FF;
}

s32 func_801A1E44_7509F4(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw == 0) {
        return 1;
    }

    gActors[actor_index + 15].unk_180_s16[1]++;
    gActors[actor_index + 15].unk_180_s16[1] &= 3;
    func_801A2170_750D20(actor_index);
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        if ((gActors[actor_index].velocityX.raw > FIXED_UNIT(1)) && !func_801A206C_750C1C(actor_index) && !func_801A202C_750BDC(actor_index)) {
            Sound_PlaySfxAtActor2(SFX_006C, actor_index);
        }

        gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.21875);
        if (gActors[actor_index].velocityX.raw > 0) {
            return 0;
        }
    }
    else {
        if ((gActors[actor_index].velocityX.raw < FIXED_UNIT(-1)) && !func_801A206C_750C1C(actor_index) && !func_801A202C_750BDC(actor_index)) {
            Sound_PlaySfxAtActor2(SFX_006C, actor_index);
        }

        gActors[actor_index].velocityX.raw += FIXED_UNIT(0.21875);
        if (gActors[actor_index].velocityX.raw < 0) {
            return 0;
        }
    }

    gActors[actor_index].velocityX.raw = 0;
    return 1;
}

s16 func_801A1FB8_750B68(u16 actor_index) {
    return ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) ? 1 : 0;
}

s16 func_801A202C_750BDC(u16 actor_index) {
    s32 var_v1;

    if (func_8002877C(actor_index) == 0) {
        var_v1 = 0;
    }
    else {
        var_v1 = 1;
    }

    return var_v1;
}

s32 func_801A206C_750C1C(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw == 0) {
        return 0;
    }

    if (((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
        ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
        return 1;
    }

    return 0;
}

s16 func_801A20FC_750CAC(u16 actor_index) {
    return ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) ? 1 : 0;
}

void func_801A2170_750D20(u16 actor_index) {
    s16 var_a1;
    s32 var_a0;

    if (gActors[actor_index].velocityX.raw && !gActors[actor_index].velocityY.raw) {
        gActors[actor_index + 8].unk_180_s8[2]--;
        if (gActors[actor_index + 8].unk_180_s8[2] <= 0) {
            var_a0 = gActors[actor_index].velocityX.raw;
            var_a1 = 24;
            if (var_a0 > 0) {
                var_a1 = -24;
            }

            func_801A2234_750DE4(actor_index, var_a1, -8);
            gActors[actor_index + 8].unk_180_s8[2] = 6;
        }
    }
}

void func_801A2234_750DE4(u16 actor_index, s16 arg1, s16 arg2) {
    Actor* temp_t1;
    f32* temp_t0;
    u16 temp_v0;

    temp_t0 = &D_801A478C_75333C[(Rand() & 3) * 5];
    temp_t1 = &gActors[actor_index];

    temp_v0 = SpawnParticle_List_90C0_16(gGraphicListBlank, temp_t1->posX.whole + arg1, temp_t1->posY.whole + arg2, 1);
    if (temp_v0) {
        gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
        gActors[temp_v0].graphicIndex = GINDEX_GROUNDFLAME;
        gActors[temp_v0].unk_148 = 36.0f;
        gActors[temp_v0].posZ.whole = temp_t1->posZ.whole + 2;
        gActors[temp_v0].scaleX = 0.2f;
        gActors[temp_v0].scaleY = 0.5f;
        gActors[temp_v0].colorA = 255;
        gActors[temp_v0].var_154 = -6;
        gActors[temp_v0].velocityY.raw = (s32)TO_FIXED(*temp_t0++);
        gActors[temp_v0].var_15C = -(s32)TO_FIXED(*temp_t0++);
        gActors[temp_v0].unk_114 = *temp_t0++;
        gActors[temp_v0].unk_11C = *temp_t0++;
        gActors[temp_v0].var_110 = *temp_t0;
    }
}

void func_801A23F8_750FA8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4) {
    u16 temp_v0 = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + arg1, gActors[actor_index].posY.whole + arg2, 1);
    if (temp_v0) {
        gActors[temp_v0].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[temp_v0].flags = ACTOR_FLAG_ENABLED;
        gActors[temp_v0].graphicIndex = GINDEX_POOF;
        gActors[temp_v0].graphicTimer = 1;
        gActors[temp_v0].unk_148 = 20.0f;
        gActors[temp_v0].posZ.whole = gActors[actor_index].posZ.whole + arg3;
        gActors[temp_v0].scaleX = gActors[temp_v0].scaleY = arg4;

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[temp_v0].velocityX.raw = FIXED_UNIT(0.625);
        }
        else {
            gActors[temp_v0].velocityX.raw = FIXED_UNIT(-0.625);
        }

        gActors[temp_v0].velocityY.raw = FIXED_UNIT(0.28125);
        gActors[temp_v0].rotateZ = Rand() & 0xFF;
        gActors[temp_v0].colorA = 255;
        gActors[temp_v0].var_154 = -8;
        gActors[temp_v0].unk_114 = -0.01f;
        gActors[temp_v0].var_110 = -0.01f;
    }
}

void func_801A2558_751108(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + arg1, gActors[actor_index].posY.whole + arg2, 1);
    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicIndex = 0x188;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].unk_148 = 30.0f;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + arg3;
        gActors[new_actor_index].scaleX = arg4;
        gActors[new_actor_index].scaleY = arg4;
        gActors[new_actor_index].rotateZ = Rand() & 0xFF;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_114 = 0.025f;
        gActors[new_actor_index].var_110 = 0.01f;
    }
}

void func_801A269C_75124C(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4) {
    u16 new_actor_index;
    u32 var_t1 = 0;

    if (gActors[actor_index].unk_138 != 0.0f) {
        arg1 = -arg1;
        var_t1 = ACTOR_FLAG_FLIPPED;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + arg1, gActors[actor_index].posY.whole + arg2, 1);
    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | var_t1;
        gActors[new_actor_index].graphicList = D_801A4858_753408;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].unk_148 = 24.0f;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + arg3;
        gActors[new_actor_index].scaleX = arg4 + 0.6;
        gActors[new_actor_index].scaleY = arg4;
        gActors[new_actor_index].rotateZ = Rand() & 0xFF;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_114 = 0.025f;
        gActors[new_actor_index].var_110 = 0.01f;
    }
}

void func_801A2828_7513D8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4) {
    u16 new_actor_index;
    s16 index;
    s32 var_s1;
    s32 var_s2 = FIXED_UNIT(0.5);

    for (var_s1 = 0, index = 0; index < 2; index++) {
        new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + arg1, gActors[actor_index].posY.whole + arg2, 1);
        if (new_actor_index) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | var_s1;
            gActors[new_actor_index].graphicIndex = 0x1AC;
            gActors[new_actor_index].graphicTimer = 1;
            gActors[new_actor_index].unk_148 = 60.0f;
            gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + arg3;
            gActors[new_actor_index].scaleX = arg4 + 1.0;
            gActors[new_actor_index].scaleY = arg4;
            gActors[new_actor_index].rotateZ = Rand() & 0xFF;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].velocityX.raw = var_s2;
            gActors[new_actor_index].velocityY.raw = FIXED_UNIT(0.15625);
            gActors[new_actor_index].var_154 = -4;
            gActors[new_actor_index].unk_114 = 0.0001f;
            gActors[new_actor_index].var_110 = 0.001f;
        }

        var_s1 = ACTOR_FLAG_FLIPPED;
        arg1 = -arg1;
        var_s2 = -var_s2;
    }
}

void func_801A2A44_7515F4(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, f32 arg4) {
    u16 new_actor_index;
    u32 var_t1 = 0;

    if (gActors[actor_index].unk_138 != 0.0f) {
        arg1 = -arg1;
        var_t1 = ACTOR_FLAG_FLIPPED;
    }

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole + arg1, gActors[actor_index].posY.whole + arg2, 1);
    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | var_t1;
        gActors[new_actor_index].graphicIndex = 0x1AA;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].unk_148 = 30.0f;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + arg3;
        gActors[new_actor_index].scaleX = arg4 + 0.8;
        gActors[new_actor_index].scaleY = arg4;
        gActors[new_actor_index].rotateZ = Rand() & 0xFF;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_114 = 0.0025f;
        gActors[new_actor_index].var_110 = 0.03f;
    }
}

void func_801A2BCC_75177C(u16 actor_index, s16 arg1, s16 arg2) {
    s32 position_x;
    s32 position_y;
    s32 velocity_x;
    Actor* actor = &gActors[actor_index];
    s32 var_v0;
    s32 var_a0;
    u16 new_actor_index;

    if (actor->flags & ACTOR_FLAG_FLIPPED) {
        var_v0 = -arg1;
    }
    else {
        var_v0 = arg1;
    }

    position_x = var_v0;
    position_x += actor->posX.whole;
    position_y = actor->posY.whole + arg2;
    var_a0 = Rand() & 3;
    if (var_a0 == 0) {
        var_a0 = 1;
    }

    velocity_x = 1 << (var_a0 + 13);
    var_a0 = Rand() & 3;
    position_x += var_a0 - 2;
    if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
        velocity_x = -velocity_x;
    }

    Rand();
    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, position_x, position_y, 1);
    if (new_actor_index) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicIndex = GINDEX_BLASTB;
        gActors[new_actor_index].unk_148 = (Rand() & 0xF) + 20;
        gActors[new_actor_index].posZ.whole = actor->posZ.whole - 2;
        gActors[new_actor_index].scaleX = 0.08f;
        gActors[new_actor_index].scaleY = 0.08f;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].velocityX.raw = velocity_x;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3.2625);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.163125);
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_114 = 0.005f;
        gActors[new_actor_index].var_110 = 0.005f;
    }
}
