#define Actor_Initialize_RET void
#include "common.h"
#include "11820.h"
#include "28EF0.h"
#include "7D8E0.h"
#include "84BB0.h"

// TODO: func_8001FCA0 only matches if arg1/arg2 are `s16`, but only matches below as `s32`
u8 func_8001FCA0(u16 actor_index, s32 x, s32 y);

typedef struct ActorUnk190 {
    s32 actorType;
    s32 unk_04;
    s32 unk_08;
    s32 velocityX;
    s32 velocityY;
    s32 unk_14;
} ActorUnk_800E44C0; // size = 0x18

extern u16 D_800D9B64[]; // palette
extern u16 D_800DE188[]; // palette

extern u8 D_800E0F00[];
extern u16 D_800E3D20[]; // array of graphic indices, used in func_80084974
extern u8 D_800E3D2C[];
extern u16 D_800E3D4C[]; // array of graphic indices, used in func_800853C8
extern s16 D_800E3D64[];
extern s16 D_800E3D78[];
extern s16 D_800E3D8C[];
extern s16 D_800E3DA0[];
extern u16 D_800E3DB8;
extern f32 D_800E3DBC[];
extern s16 D_800E3DDC[];
extern s32 D_800E3DE4[];
extern s32 D_800E3E24[];
extern s32 D_800E41A4[];
extern s32 D_800E41B4[];
extern s32 D_800E41C4[];
extern s32 D_800E42F0[];
extern s16 D_800E42F4[];
extern s32* D_800E4440[];
extern ActorUnk_800E44C0* D_800E44C0[];
extern s16 D_800E44C8[]; // graphic list
extern s16 D_800E44DC[]; // graphic list
extern s32 D_800E44F0[];
extern s16 D_800E4534[];

// .bss
u32 D_80182020[0x40];
u32 D_80182120[0x40];
u16 D_80182220[0x40];
u32 D_801822A0[4][0x40];
s32 D_801826A0[4];

// forward declarations
void func_800859C4(u16 actor_index);
void func_80085D00(u16 actor_index);
s32 func_8008BFE4(u16 actor_index);
u16 func_8008C120(u16 actor_index);

void func_80083FB0(s16 x, s16 y) {
    u16 actor_index;

    actor_index = func_8003EEC0(1.0 - ((f32) (Rand() & 3) * 0.1), (0x10 - (Rand() & 0x1F)) + x, (0x10 - (Rand() & 0x1F)) + y, 1);
    if (actor_index != 0) {
        Actor_SetColorRgb(actor_index, 0x6F);
        gActors[actor_index].velocityZ.raw = 0x38000;
    }
}

void func_800840A4(u16 actor_index) {
    if (gActors[actor_index].unk_178 != 0) {
        gActors[actor_index].unk_17C++;
        if (gActors[actor_index].unk_17C >= 0x2D0) {
            gActors[actor_index].flags = 0;
        }
        if (gActors[actor_index].unk_17C >= 0x21C) {
            if (gActors[actor_index].unk_17C & 4) {
                gActors[actor_index].colorA = 0;
            }
            else {
                gActors[actor_index].colorA = 0xFF;
            }
        }
    }
}

s32 func_8008412C(u16 actor_index, f32 arg1, f32 arg2, u16 arg3) {
    f32 temp_f2;
    f32 var_f0;
    f32 velocity_y;
    u16 index;
    f32 velocity_x = arg1;

    var_f0 = ABS(arg3 / 2);
    temp_f2 = 2.0 * (arg2 / SQ(var_f0));
    velocity_y = 0.0f;
    for (index = 0; index < arg3 / 2; index++) {
        velocity_y += temp_f2;
    }
    gActors[actor_index].velocityX.raw = TO_FIXED(velocity_x / arg3);
    gActors[actor_index].velocityY.raw = TO_FIXED(velocity_y);
    return TO_FIXED(temp_f2);
}

s32 func_800842AC(s32* arg0, f32* arg1, f32* arg2, f32* arg3) {
    s32 result;

    result = FALSE;
    if (*arg0 != 0) {
        if (*arg1 >= 270.0f) {
            *arg2 -= *arg3;
        }
        else {
            *arg2 += *arg3;
            if (*arg2 >= 0.0f) {
                *arg2 = 0.0f;
                result = TRUE;
                *arg0 ^= 1;
            }
        }
    }
    else if (*arg1 <= 270.0f) {
        *arg2 += *arg3;
    }
    else {
        *arg2 -= *arg3;
        if (*arg2 <= 0.0f) {
            *arg2 = 0.0f;
            result = TRUE;
            *arg0 ^= 1;
        }
    }
    *arg1 += *arg2;
    return result;
}

void func_800843E0(u16 actor_index) {
    s32 pad0;
    s32 pad1;

    gActors[actor_index].var_15C = gActors[actor_index].velocityX.raw;
    gActors[actor_index].var_160 = gActors[actor_index].velocityY.raw;
    if (gActors[actor_index].velocityX.raw < 0) {
        gActors[actor_index].var_154 = 0;
    }
    else if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].var_154 = 1;
    }
    else {
        gActors[actor_index].var_154 = Rand() & 1;
    }
    if (gActors[actor_index].var_154 != 0) {
        gActors[actor_index].unk_114 = 295.0f;
    }
    else {
        gActors[actor_index].unk_114 = 255.0f;
    }
    gActors[actor_index].unk_11C = 0.08f;
    if (gActors[actor_index].var_154 != 0) {
        gActors[actor_index].unk_16C = 0;
    }
    else {
        gActors[actor_index].unk_16C = 1;
    }
}

void func_800844B8(u16 actor_index) {
    s16 angle;

    gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 0x400);
    gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, -0x4000, 0x4000);
    if (func_800842AC(&gActors[actor_index].var_154, &gActors[actor_index].unk_114, &gActors[actor_index].unk_118, &gActors[actor_index].unk_11C)) {
        gActors[actor_index].unk_11C = (Rand() * 0.0001) + 0.04;
    }
    angle = gActors[actor_index].unk_114 * 2.84;
    gActors[actor_index].velocityX.raw = gActors[actor_index].var_15C + (COS(angle) * FIXED_UNIT(2.0));
    gActors[actor_index].velocityY.raw = gActors[actor_index].var_160 + (SIN(angle) * FIXED_UNIT(0.125));
    gActors[actor_index].rotateZ = INDEX_TO_DEG((Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw) + 0x100) & 0x3FF);
}

s32 func_800846A8(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw <= 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state = 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            return TRUE;
        }
    }
    return FALSE;
}

void func_80084734(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].state = 5;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
    }
    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2))) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].var_154 ^= 1;
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].unk_114 = 295.0f;
        }
        else {
            gActors[actor_index].unk_114 = 255.0f;
        }
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 2;
        gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw / 2;
        gActors[actor_index].var_15C = 0;
    }
}

void func_8008486C(u16 actor_index) {
    func_800846A8(actor_index);
    func_80084734(actor_index);
}

s32 func_800848A0(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].state = 2;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        Sound_PlaySfxAtActor2(0x2F, actor_index);
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_80084924(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 12; \
    gActors[actor_index].hitboxBY1 = -4; \
    gActors[actor_index].hitboxBX0 = -4; \
    gActors[actor_index].hitboxBX1 = 4;
}

void func_80084974(u16 actor_index) {
    u16 index;
    u16 temp_v0;
    s32 flags;

    flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    if (Clanpot_AddItemCheck3(actor_index, 0, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
        gActors[actor_index].state = 0xA;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    }
    gActors[actor_index].posZ.raw = FIXED_UNIT(-4.0);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = flags;
        index = gActors[actor_index].var_110;
        if (gActors[actor_index].var_110 >= 0.0f) {
            gActors[actor_index].graphicIndex = D_800E3D20[index & 0xF];
        }
        gActors[actor_index].unk_178 = gActors[actor_index].var_0D8 & 1;
        gActors[actor_index].unk_0DF = 0x40;
        func_80084924(actor_index);
        /* fallthrough */
    case 1:
        gActors[actor_index].rotateZ = 0.0f;
        if (!func_800846A8(actor_index)) {
            gActors[actor_index].state = 4;
        }
        if (func_800848A0(actor_index)) {
            gActors[actor_index].state = 2;
        }
        break;
    case 2:
        temp_v0 = func_800291AC(actor_index, 3, flags, 4, flags);
        switch (temp_v0) {
        case 0:
        case 1:
            break;
        case 2:
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].unk_0F8.raw = (s32) gActors[actor_index].unk_0F8.raw / 24;
            gActors[actor_index].unk_0FC.raw /= 24;
            gActors[actor_index].unk_0FC.raw -= 0x800;
            func_80084924(actor_index);
            break;
        case 3:
            func_80084924(actor_index);
            gActors[actor_index].var_150 = 0xA;
            break;
        }
        break;
    case 3:
        gActors[actor_index].velocityX.raw -= gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw -= gActors[actor_index].unk_0FC.raw;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].var_150 = 0xA;
            gActors[actor_index].state = 4;
        }
        gActors[actor_index].rotateZ = INDEX_TO_DEG((Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw) + 0x100) & 0x3FF);
        func_800848A0(actor_index);
        func_8008486C(actor_index);
        break;
    case 4:
        func_800843E0(actor_index);
        gActors[actor_index].state++;
        /* fallthrough */
    case 5:
        func_800844B8(actor_index);
        func_800848A0(actor_index);
        func_8008486C(actor_index);
        break;
    case 10:
        func_800848A0(actor_index);
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    func_800840A4(actor_index);
}

void func_80084D18(u16 actor_index) {
    u8 base_index;

    base_index = gActors[actor_index].var_110 * 4;
    gActors[actor_index].unk_138_arr[0] = D_800E3D2C[base_index + 0];
    gActors[actor_index].unk_138_arr[1] = D_800E3D2C[base_index + 1];
    gActors[actor_index].unk_138_arr[2] = D_800E3D2C[base_index + 2];
    gActors[actor_index].unk_138_arr[3] = D_800E3D2C[base_index + 3];
}

void func_80084E7C(u16 actor_index) {
    gActors[actor_index].var_158 = gActors[actor_index].velocityX.raw;
    gActors[actor_index].var_15C = gActors[actor_index].velocityY.raw;

    if (gActors[actor_index].velocityX.raw < 0) {
        gActors[actor_index].unk_16C = 0;
    }
    else if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].unk_16C = 1;
    }
    else {
        gActors[actor_index].unk_16C = Rand() & 1;
    }

    if (gActors[actor_index].unk_16C != 0) {
        gActors[actor_index].unk_138_arr[5] = 295.0f;
    }
    else {
        gActors[actor_index].unk_138_arr[5] = 255.0f;
    }
    gActors[actor_index].unk_130 = 0.08f;
}

void func_80084F38(u16 actor_index) {
    s16 angle;

    gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, 0, 0x400);
    gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, -0x4000, 0x4000);
    if (func_800842AC(&gActors[actor_index].unk_16C, &gActors[actor_index].unk_138_arr[5], &gActors[actor_index].unk_128, &gActors[actor_index].unk_130)) {
        gActors[actor_index].unk_130 = (Rand() * 0.0001) + 0.04;
    }
    angle = (f32) gActors[actor_index].unk_138_arr[5] * 2.84; // * 2.84 almost DEG_TO_INDEX
    gActors[actor_index].velocityX.raw = (s32) (gActors[actor_index].var_158 + (COS(angle) * 131072.0f));
    gActors[actor_index].velocityY.raw = (s32) (gActors[actor_index].var_15C + (SIN(angle) * 8192.0f));
    gActors[actor_index].rotateZ = gActors[actor_index].unk_138_arr[5] - 270.0f;
}

// same implementation as func_800846A8
s32 func_80085108(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw <= 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state = 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            return TRUE;
        }
    }
    return FALSE;
}

void func_80085194(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].state = 5;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
    }
    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2))) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].unk_16C ^= 1;
        if (gActors[actor_index].unk_16C != 0) {
            gActors[actor_index].unk_138_arr[5] = 295.0f;
        }
        else {
            gActors[actor_index].unk_138_arr[5] = 255.0f;
        }
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 2;
        gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw / 2;
        gActors[actor_index].var_158 = 0;
    }
}

void func_800852CC(u16 actor_index) {
    func_80085108(actor_index);
    func_80085194(actor_index);
}

void func_80085300(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8; \
    gActors[actor_index].hitboxBY1 = 0; \
    gActors[actor_index].hitboxBX0 = -6; \
    gActors[actor_index].hitboxBX1 = 6;
}

void func_80085350(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].state = 2;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        Sound_PlaySfxAtActor2(0x2F, actor_index);
    }
}

void func_800853C8(u16 actor_index) {
    u16 temp_v1;
    u16 index;
    s32 flags;

    flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    if (Clanpot_AddItemCheck3(actor_index, 0, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
        gActors[actor_index].state = 0xA;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    }
    index = gActors[actor_index].var_110;
    gActors[actor_index].posZ.raw = FIXED_UNIT(1.0);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = flags;
        if (gActors[actor_index].var_110 >= 0.0f) {
            gActors[actor_index].graphicIndex = D_800E3D4C[index & 0xF];
        }
        gActors[actor_index].unk_178 = gActors[actor_index].var_0D8 & 1;
        gActors[actor_index].unk_0DF = 0x40;
        func_80084D18(actor_index);
        func_80085300(actor_index);
        /* fallthrough */
    case 1:
        gActors[actor_index].rotateZ = 0.0f;
        if (func_800846A8(actor_index) == 0) {
            gActors[actor_index].state = 6;
        }
        func_80085350(actor_index);
        break;
    case 2:
        temp_v1 = func_800291AC(actor_index, 3, flags, 6, flags);
        if (temp_v1 == 2) {
            gActors[actor_index].unk_114 = 20.0f;
            gActors[actor_index].unk_0F8.raw = gActors[actor_index].unk_0F8.raw / 24;
            gActors[actor_index].unk_0FC.raw /= 24;
            gActors[actor_index].unk_0FC.raw -= 0x800;
            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].var_154 = 1;
            }
            func_80085300(actor_index);
        }
        if (temp_v1 == 3) {
            func_80085300(actor_index);
        }
        break;
    case 3:
        gActors[actor_index].unk_114 -= 1.0f;
        gActors[actor_index].velocityX.raw -= gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw -= gActors[actor_index].unk_0FC.raw;
        if (gActors[actor_index].unk_114 < 0.0f) {
            gActors[actor_index].state += 3;
        }
        func_800852CC(actor_index);
        func_80085350(actor_index);
        break;
    case 4:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.0390625);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.5)) {
            gActors[actor_index].state++;
        }
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.01953125);
        }
        else {
            gActors[actor_index].velocityX.raw += FIXED_UNIT(0.01953125);
        }
        func_800852CC(actor_index);
        func_80085350(actor_index);
        break;
    case 5:
        gActors[actor_index].velocityY.raw += FIXED_UNIT(0.0390625);
        if (gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].state--;
            gActors[actor_index].var_154 ^= 1;
        }
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].velocityX.raw += FIXED_UNIT(0.01953125);
        }
        else {
            gActors[actor_index].velocityX.raw -= FIXED_UNIT(0.01953125);
        }
        func_800852CC(actor_index);
        func_80085350(actor_index);
        break;
    case 6:
        func_80084E7C(actor_index);
        gActors[actor_index].state++;
        /* fallthrough */
    case 7:
        func_80084F38(actor_index);
        func_80085350(actor_index);
        func_800852CC(actor_index);
        break;
    case 10:
        func_80085350(actor_index);
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    func_800840A4(actor_index);
}

void func_80085844(u16 actor_index) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x90, 0xC0);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x46;
        Actor_Initialize(free_actor);
        gActors[free_actor].var_160 = 0;
        gActors[free_actor].unk_164 = FIXED_UNIT(-12.0);
        gActors[free_actor].var_158 = actor_index;
        gActors[free_actor].unk_170 = gActors[actor_index].unk_168 / 60;
        if (gActors[actor_index].unk_184 >= 0x3A) {
            gActors[free_actor].unk_174 = 0;
        }
        else {
            gActors[free_actor].unk_174 = 1;
        }
    }
    gActors[actor_index].unk_184 = 0;
}

s32 func_8008594C(u16 actor_index, u16 arg1) {
    gActors[actor_index].unk_168 -= arg1;
    if (gActors[actor_index].unk_168 <= 0) {
        func_800859C4(actor_index);
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_800859C4(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].health = 0;
    func_80085D00(actor_index);
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].state = 4;
    gActors[actor_index].unk_168 = 0;
    Sound_PlaySfxAtActor2(0x43, actor_index);
}

s32 func_80085A4C(u16 actor_index) {
    if (ABS(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1.0)) {
        return TRUE;
    }
    if (ABS(gActors[actor_index].velocityY.raw) > FIXED_UNIT(2.25)) {
        return TRUE;
    }
    return FALSE;
}

s32 func_80085AE4(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw <= 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].state = 1;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        if (func_80085A4C(actor_index) != 0) {
            func_800859C4(actor_index);
        }
        else {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        return FALSE;
    }
    return TRUE;
}

s32 func_80085BAC(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].state = 3;
        if (func_80085A4C(actor_index) != 0) {
            func_800859C4(actor_index);
        }
        else {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        return TRUE;
    }

    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        if (func_80085A4C(actor_index) != 0) {
            func_800859C4(actor_index);
        }
        else {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
            gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 2;
        }
        return TRUE;
    }
    return FALSE;
}


void func_80085D00(u16 arg0) {
    f32 scale;

    scale = D_800E3DBC[gActors[arg0].var_0D8];
    gActors[arg0].hitboxBY0 = D_800E3DDC[0] * scale;
    gActors[arg0].hitboxBY1 = D_800E3DDC[1] * scale;
    gActors[arg0].hitboxBX0 = D_800E3DDC[2] * scale;
    gActors[arg0].hitboxBX1 = D_800E3DDC[3] * scale;
    gActors[arg0].hitboxAY0 = gActors[arg0].hitboxBY0 - 1;
    gActors[arg0].hitboxAY1 = gActors[arg0].hitboxBY1 + 1;
    gActors[arg0].hitboxAX0 = gActors[arg0].hitboxBX0 + 1;
    gActors[arg0].hitboxAX1 = gActors[arg0].hitboxBX1 - 1;
}

// needs return to match regalloc in some callers
s32 func_80085E60(u16 actor_index) {
    f32 scale = D_800E3DBC[gActors[actor_index].var_0D8];
    gActors[actor_index].scaleX = scale;
    gActors[actor_index].scaleY = scale;
}

void func_80085EB0(u16 actor_index) {
    gActors[actor_index].unk_0F8.raw = D_800E3DE4[gActors[actor_index].var_0D8 * 2 + 0];
    gActors[actor_index].unk_0FC.raw = D_800E3DE4[gActors[actor_index].var_0D8 * 2 + 1];
}

void func_80085F08(u16 actor_index) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(D_80182020); index++) {
        D_80182020[index] = -1;
    }
    gActors[actor_index].unk_174 = 0;
    gActors[actor_index].unk_178 = 0;
}

void func_80085F78(u16 actor_index) {
    u16 index;
    s16 pos_x;
    s16 pos_y;

    for (index = 0; index < ARRAYLENGTH(D_80182220); index++) { D_80182220[index] = 0; }

    pos_x = ((gActors[actor_index].posX.whole + (0, gScreenPosCurrentX.whole)) & 0xFFF0) + 8; // fakematch
    pos_y = ((gActors[actor_index].posY.whole + (0, gScreenPosCurrentY.whole)) & 0xFFF0) + 8;
    gActors[actor_index].var_158 = 0;
    D_80182020[gActors[actor_index].unk_178] = (pos_x << 16) + pos_y;
    gActors[actor_index].unk_178++;
}

s32 func_8008603C(u16 arg0, s16 x, s16 y, u32* arg3) {
    if (func_80012AB4(x, y) == 0xF8) {
        func_80083FB0(x, y);
        D_80182020[*arg3] = gScreenPosCurrentY.whole + ((x + gScreenPosCurrentX.whole) << 0x10) + y;
        func_80012044(x, y, 0x34);
        *arg3 += 1;
        *arg3 &= 0x3F;
        return TRUE;
    }
    else {
        return FALSE;
    }
}

u16 func_800860FC(u16 actor_index) {
    u16 result;
    s16 x;
    s16 y;
    u32 index;
    u32 sp58;

    result = FALSE;
    sp58 = gActors[actor_index].unk_178;
    for (index = gActors[actor_index].unk_174; index != gActors[actor_index].unk_178; index++, index &= 0x3F) {
        if (D_80182020[index] == -1) {
            continue;
        }
        x = (D_80182020[index] >> 0x10) & 0xFFFF;
        y = D_80182020[index] & 0xFFFF;
        x -= gScreenPosCurrentX.whole;
        y -= gScreenPosCurrentY.whole;
        func_8008603C(actor_index, x, y + 16, &sp58);
        func_8008603C(actor_index, x, y - 16, &sp58);
        func_8008603C(actor_index, x - 16, y, &sp58);
        func_8008603C(actor_index, x + 16, y, &sp58);
        D_80182020[index] = -1;
        if (!(gActors[actor_index].var_150 & 0x1000)) {
            gActors[actor_index].posX.whole = x;
            gActors[actor_index].posY.whole = y;
        }
        result = TRUE;
    }
    gActors[actor_index].unk_174 = gActors[actor_index].unk_178;
    gActors[actor_index].unk_178 = sp58;
    return result;
}

void func_800862CC(u16 actor_index, s16 x, s16 y) {
    if (gActors[actor_index].unk_18C < ARRAYLENGTH(D_80182120)) {
        D_80182120[gActors[actor_index].unk_18C] = gScreenPosCurrentY.whole + ((x + gScreenPosCurrentX.whole) << 0x10) + y;
        gActors[actor_index].unk_18C++;
    }
}

s32 func_80086360(u16 actor_index, s16 x, s16 y, u32* arg3) {
    u16 index;
    u16 sp2C;
    u16 sp2A;
    u8 temp_v0;

    if (((gActors[actor_index].posX.whole - 48) >= x) || (x >= (gActors[actor_index].posX.whole + 48)) ||
        ((gActors[actor_index].posY.whole - 48) >= y) || (y >= (gActors[actor_index].posY.whole + 48))) {
        return FALSE;
    }

    sp2C = ((x - gActors[actor_index].posX.whole) + 64) & 0xF0;
    sp2A = ((y - gActors[actor_index].posY.whole) + 64) & 0xF0;
    temp_v0 = func_80012AB4(x, y);
    if (temp_v0 == 0xF8) {
        if (temp_v0 == 0xF8) {
            func_80083FB0(x, y);
        }
        D_80182020[*arg3] = gScreenPosCurrentY.whole + ((x + gScreenPosCurrentX.whole) << 0x10) + y;
        func_80012044(x, y, 0x34);
        func_800862CC(actor_index, x, y);
        *arg3 += 1;
        *arg3 &= 0x3F;
        return TRUE;
    }

    if (temp_v0 == 0x00) {
        index = (sp2C >> 1) + (sp2A >> 4);
        if (D_80182220[index] != 0) {
            return FALSE;
        }
        D_80182020[*arg3] = gScreenPosCurrentY.whole + ((x + gScreenPosCurrentX.whole) << 0x10) + y;
        D_80182220[index] = 1;
        *arg3 += 1;
        *arg3 &= 0x3F;
        return TRUE;
    }
    return FALSE;
}

s32 func_800865BC(u16 actor_index) {
    s16 x;
    s16 y;
    s32 result;
    u32 index;
    u32 sp60;
    s32 pad[2];

    result = FALSE;
    sp60 = gActors[actor_index].unk_178;

    for (index = gActors[actor_index].unk_174; index != gActors[actor_index].unk_178; index++, index &= 0x3F) {
        if (D_80182020[index] == -1) {
            continue;
        }

        x = (D_80182020[index] >> 0x10) & 0xFFFF;
        y = D_80182020[index] & 0xFFFF;
        x -= gScreenPosCurrentX.whole;
        y -= gScreenPosCurrentY.whole;
        if (func_80086360(actor_index, x - 16, y, &sp60)) {
            result = TRUE;
        }
        if (func_80086360(actor_index, x + 16, y, &sp60)) {
            result = TRUE;
        }
        if (func_80086360(actor_index, x, y + 16, &sp60)) {
            result = TRUE;
        }
        if (func_80086360(actor_index, x, y - 16, &sp60)) {
            result = TRUE;
        }

        D_80182020[index] = -1;

        // REAL (FAKE)
        if (&sp60) {}
        if (&sp60) {}
        if (actor_index) {}
        if (actor_index) {}
        if (result) {}
        if (result) {}
    }
    gActors[actor_index].unk_174 = gActors[actor_index].unk_178;
    gActors[actor_index].unk_178 = sp60;
    return result;
}

s32 func_80086790(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_18C == 0) {
        gActors[actor_index].flags = 0;
        return FALSE;
    }
    for (index = 0; index < gActors[actor_index].unk_18C; index++) {
        D_80182020[index] = D_80182120[index];
    }
    gActors[actor_index].unk_178 = gActors[actor_index].unk_18C;
    return TRUE;
}

s32 func_80086824(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].state = 2;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].parentIndex == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        if (gActors[actor_index].unk_168 == 0) {
            gActors[actor_index].unk_168 = ((gActors[actor_index].var_150 & 0xFF) * 0x3C) + 1;
            Sound_PlaySfxAtActor2(0x7C, actor_index);
        }
        gActors[actor_index].unk_164 = 0x1E;
        gActors[actor_index].var_150 &= 0xFFFF;
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_80086900(u16 actor_index) {
    u16 index_s0;
    u16 index_v1;

    func_80085F08(actor_index);
    gActors[actor_index].unk_168 = 0;
    func_80085F78(actor_index);

    for (index_s0 = 0; index_s0 < 0x200; index_s0++) {
        if (!func_800865BC(actor_index)) {
            func_80085F08(actor_index);
            if (gActors[actor_index].unk_18C == 0) {
                return;
            }
            for (index_v1 = 0; index_v1 < gActors[actor_index].unk_18C; index_v1++) {
                D_80182020[index_v1] = D_80182120[index_v1];
            }
            gActors[actor_index].unk_178 = gActors[actor_index].unk_18C;
            break;
        }
    }

    for (index_s0 = 0; index_s0 < 0x200; index_s0++) {
        if (!func_800860FC(actor_index)) {
            break;
        }
    }
}


void func_80086A20(u16 actor_index) {
    u16 new_actor_index;

    if (!(gActiveFrames & 3)) {
        new_actor_index = SpawnParticle_List_90C0_16(
            D_800E3DA0,
            gActors[actor_index].posX.whole + (gActors[actor_index].scaleX * 6.0f), 
            gActors[actor_index].posY.whole + (gActors[actor_index].scaleY * 16.0f), 
            gActors[actor_index].posZ.whole
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK4;
            gActors[new_actor_index].colorR = 0;
            gActors[new_actor_index].colorG = 0x94;
            gActors[new_actor_index].colorB = 0xB4;
            gActors[new_actor_index].colorA = 0xE6;
            gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + 1;
        }
    }
}

void func_80086B74(u16 actor_index) {
    u16 index_s0;
    u16 index_v1;

    func_80085F08(actor_index);
    func_80085F78(actor_index);
    for (index_s0 = 0; index_s0 < 0x200; index_s0++) {
        if (!func_800865BC(actor_index)) {
            func_80085F08(actor_index);
            if (gActors[actor_index].unk_18C == 0) {
                return;
            }
            for (index_v1 = 0; index_v1 < gActors[actor_index].unk_18C; index_v1++) {
                D_801822A0[gActors[actor_index].var_154][gActors[actor_index].unk_178] = D_80182120[index_v1];
                gActors[actor_index].unk_178++;
            }
            gActors[actor_index].unk_178 = gActors[actor_index].unk_18C;
            break;
        }
    }
}

void ActorUpdate_Clanbomb(u16 actor_index) {
    s32 temp_v0;

    if (Clanpot_AddItemCheck3(actor_index, 0, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
        gActors[actor_index].state = 0xA;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].unk_168 = 0;
    }
    if (gCurrentScene != 0x30) {
        func_8002877C(actor_index);
    }
    if (gActors[actor_index].unk_168 > 0) {
        func_8008594C(actor_index, 1);
        if (gActors[actor_index].state < 4) {
            func_80086A20(actor_index);
        }
        if (gActors[actor_index].unk_168 == 0x21C) {
            gActors[actor_index].graphicList = D_800E3D78;
        }
        if (gActors[actor_index].unk_168 == 0xB4) {
            gActors[actor_index].graphicList = D_800E3D8C;
        }
        if (gActors[actor_index].unk_168 < 0x81) {
            gActors[actor_index].colorR = 0x80 - gActors[actor_index].unk_168;
        }
        if (!(gActors[actor_index].var_150 & 0x100) && ((gActors[actor_index].unk_168 % 60) == 0)) {
            func_80085844(actor_index);
        }
        gActors[actor_index].unk_184++;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        func_800859C4(actor_index);
    }
    gActors[actor_index].posZ.raw = FIXED_UNIT(-4.0);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].health = 1;
        gActors[actor_index].unk_0DA |= 0x81;
        gActors[actor_index].unk_0DB = 0xB;
        gActors[actor_index].var_160 = 0x1E;
        func_80085EB0(actor_index);
        func_80085D00(actor_index);
        func_80085E60(actor_index);
        gActors[actor_index].graphicList = D_800E3D64;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        if (gActors[actor_index].var_150 & 0x8000) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9;
            gActors[actor_index].var_150 |= 0x10000;
        }
        if (gActors[actor_index].var_150 & 0x1000) {
            gActors[actor_index].damage = 20;
        }
        else {
            gActors[actor_index].damage = 100;
        }
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        if (func_80085AE4(actor_index) != 0) {
            gActors[actor_index].state = 3;
        }
        if (gActors[actor_index].var_160 > 0) {
            gActors[actor_index].var_160--;
        }
        if ((gActors[actor_index].var_160 == 0) && (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0xC0)) {
            func_800859C4(actor_index);
        }
        func_80086824(actor_index);
        break;
    case 2:
        temp_v0 = func_800291AC(actor_index,
            3, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW,
            3, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW
        );
        switch (temp_v0) {
        case 0:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) {
                func_8008594C(actor_index, (gActors[actor_index].unk_168 % 60) - 1);
            }
            if (gActors[actor_index].unk_164 > 0) {
                gActors[actor_index].unk_164--;
                if (gActors[actor_index].unk_164 == 0) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                }
            }
            break;
        case 1:
            func_800859C4(actor_index);
            break;
        case 2:
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            func_80085D00(actor_index);
            break;
        case 3:
            func_80085D00(actor_index);
            func_80085AE4(actor_index);
            break;
        }
        break;
    case 3:
        if (gActors[actor_index].parentIndex == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        if (func_80086824(actor_index) == 0) {
            if (!(gActors[actor_index].var_150 & 0x10000)) {
                if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4.0)) {
                    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
                }
                func_80085AE4(actor_index);
                func_80085BAC(actor_index);
            }
            else {
                if (func_80085AE4(actor_index) == 0) {
                    func_800859C4(actor_index);
                }
                if (func_80085BAC(actor_index) != 0) {
                    func_800859C4(actor_index);
                }
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    func_800859C4(actor_index);
                }
                gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9;
            }
        }
        break;
    case 4:
        if (!(gActors[actor_index].var_150 & 0x8000)) {
            func_8003F05C(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
        }
        else {
            func_8003F05C(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
        }
        func_80085F08(actor_index);
        gActors[actor_index].var_15C = 20;
        gActors[actor_index].state++;
        /* fallthrough */
    case 5:
        gActors[actor_index].var_15C--;
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].unk_168 = 0;
            gActors[actor_index].state = 0x10;
            gActors[actor_index].unk_170 = D_800E3DB8;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && (gActors[actor_index].parentIndex == 0)) {
            gPlayerActor.iFrames = 60;
        }
        gActors[actor_index].hitboxAY0 += 2;
        gActors[actor_index].hitboxAY1 -= 2;
        gActors[actor_index].hitboxAX0 -= 2;
        gActors[actor_index].hitboxAX1 += 2;
        break;
    case 6:
        if (!func_800865BC(actor_index)) {
            func_80085F08(actor_index);
            if (func_80086790(actor_index)) {
                gActors[actor_index].state++;
            }
        }
        break;
    case 7:
        gActors[actor_index].unk_170--;
        if (gActors[actor_index].unk_170 <= 0) {
            gActors[actor_index].unk_170 = D_800E3DB8;
            if (func_800860FC(actor_index) != 0) {
                Sound_PlaySfxAtActor3(0x93, actor_index);
            }
            else {
                gActors[actor_index].flags = 0;
            }
        }
        break;
    case 10:
        func_80086824(actor_index);
        break;
    case 11:
        func_80086900(actor_index);
        if (!(gActors[actor_index].var_150 & 0x8000)) {
            gActors[actor_index].var_15C = 20;
        }
        else {
            gActors[actor_index].var_15C = 10;
        }
        gActors[actor_index].state++;
        /* fallthrough */
    case 12:
        if (!(gActors[actor_index].var_150 & 0x8000)) {
            gActors[actor_index].hitboxAY0 += 2 * gActors[actor_index].scaleX;
            gActors[actor_index].hitboxAY1 -= 2 * gActors[actor_index].scaleX;
            gActors[actor_index].hitboxAX0 -= 2 * gActors[actor_index].scaleX;
            gActors[actor_index].hitboxAX1 += 2 * gActors[actor_index].scaleX;
        }
        else {
            gActors[actor_index].hitboxAY0 += 1;
            gActors[actor_index].hitboxAY1 -= 1;
            gActors[actor_index].hitboxAX0 -= 1;
            gActors[actor_index].hitboxAX1 += 1;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && (gActors[actor_index].parentIndex == 0)) {
            gActors[actor_index].flags = 0;
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags = 0;
        }
        gActors[actor_index].var_15C--;
        if (gActors[actor_index].var_15C <= 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 16:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = func_8008BFE4(actor_index);
        if (gActors[actor_index].var_154 == 0xFF) {
            gActors[actor_index].flags = 0;
            break;
        }
        else {
            func_80086B74(actor_index);
        }
        // fallthrough
    case 17:
        gActors[actor_index].unk_170--;
        if (gActors[actor_index].unk_170 <= 0) {
            gActors[actor_index].unk_170 = D_800E3DB8;
            if (func_8008C120(actor_index)) {
                Sound_PlaySfxAtActor3(0x93, actor_index);
            }
            else {
                gActors[actor_index].flags = 0;
                D_801826A0[gActors[actor_index].var_154] = 0;
            }
        }
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_80087568(u16 actor_index, u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x90, 0xC0);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x34;
        Actor_Initialize(free_actor);
        gActors[free_actor].graphicIndex = graphic_index;
        gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[free_actor].scaleX = gActors[actor_index].scaleX;
        gActors[free_actor].scaleY = gActors[actor_index].scaleY;
        gActors[free_actor].colorR = 0xFF;
        gActors[free_actor].colorG = 0xFF;
        gActors[free_actor].colorB = 0xFF;
        gActors[free_actor].colorA = gActors[actor_index].colorA;
        gActors[free_actor].unk_188 = 0;
        gActors[free_actor].posX.raw = pos_x;
        gActors[free_actor].posY.raw = pos_y;
        gActors[free_actor].posZ.raw = pos_z;
        gActors[free_actor].palette_18C = D_800D9B64;
        if (actor_index < free_actor) {
            gActors[free_actor].unk_138_arr[4] = 1.0f;
        }
        else {
            gActors[free_actor].unk_138_arr[4] = 0.0f;
        }
    }
}

void func_80087698(u16 actor_index) {
    s32 pad;
    func_8007CCE0(gActors[actor_index].unk_170);
    if (D_800E0F00[6] == 0) {
        func_80087568(actor_index, (D_800E0F00[7] * 2) + 0x2D2,
            gActors[actor_index].posX.raw,
            gActors[actor_index].posY.raw,
            gActors[actor_index].posZ.raw + FIXED_UNIT(1.0)
        );
    }
    else {
        func_80087568(actor_index, (D_800E0F00[6] * 2) + 0x2D2,
            gActors[actor_index].posX.raw - (gActors[actor_index].scaleX * FIXED_UNIT(4.0)),
            gActors[actor_index].posY.raw,
            gActors[actor_index].posZ.raw + FIXED_UNIT(1.0)
        );
        func_80087568(actor_index, (D_800E0F00[7] * 2) + 0x2D2,
            gActors[actor_index].posX.raw + (gActors[actor_index].scaleX * FIXED_UNIT(4.0)),
            gActors[actor_index].posY.raw,
            gActors[actor_index].posZ.raw + FIXED_UNIT(1.0)
        );
    }
}

void func_80087820(u16 actor_index) {
    s32 vel_y;
    s32 vel_x;
    u16 actor_1;

    actor_1 = gActors[actor_index].var_158;
    if (gActors[actor_1].unk_168 == 0) {
        gActors[actor_index].flags = 0;
    }
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].posZ.raw = FIXED_UNIT(126.0);
        gActors[actor_index].graphicIndex = 0x168;
        gActors[actor_index].colorR = 0x80;
        gActors[actor_index].colorG = 0x80;
        gActors[actor_index].colorB = 0x80;
        gActors[actor_index].scaleX = 0.0f;
        gActors[actor_index].scaleY = 0.0f;
        if (gActors[actor_index].posX.whole >= 0) {
            vel_x = -24;
        }
        else {
            vel_x = 24;
        }
        vel_y = 58;
        if (gActors[actor_index].unk_174 != 0) {
            vel_x += (Rand() - 0x80) * 0.0625;
            vel_y += (Rand() - 0x80) * 0.0625;
        }
        gActors[actor_index].var_15C = func_8008412C(actor_index, vel_x, vel_y, 40);
        gActors[actor_index].unk_168 = gActors[actor_index].velocityX.raw;
        gActors[actor_index].unk_16C = gActors[actor_index].velocityY.raw;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_18C = 20;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        gActors[actor_index].unk_16C -= gActors[actor_index].var_15C;
        gActors[actor_index].scaleX += 0.05;
        gActors[actor_index].scaleY += 0.05;
        gActors[actor_index].var_160 += gActors[actor_index].unk_168;
        gActors[actor_index].unk_164 += gActors[actor_index].unk_16C;
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw + gActors[actor_index].var_160;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw + gActors[actor_index].unk_164;
        func_80087698(actor_index);
        gActors[actor_index].unk_18C--;
        if (gActors[actor_index].unk_18C < 0) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_18C = 0x1E;
            gActors[actor_index].state++;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 1.0f;
            Sound_PlaySfxAtActor2(0x7B, actor_index);
        }
        break;
    case 2:
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw + gActors[actor_index].var_160;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw + gActors[actor_index].unk_164;
        gActors[actor_index].colorA -= 6;
        func_80087698(actor_index);
        gActors[actor_index].unk_18C--;
        if (gActors[actor_index].unk_18C < 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

void func_80087B4C(u16 actor_index) {
    s32 var_110_int;

    var_110_int = (s32) gActors[actor_index].var_110;
    gActors[actor_index].var_160 += (var_110_int & 0xF) * 8;
    gActors[actor_index].var_15C += (((var_110_int & 0xF0) >> 4) << 22);
    gActors[actor_index].var_15C &= 0x03FFFFFF;
}

void func_80087BDC(u16 actor_index) {
    s16 angle;

    gActors[actor_index].var_15C += gActors[actor_index].unk_164;
    gActors[actor_index].var_15C &= 0x03FFFFFF;
    angle = FROM_FIXED(gActors[actor_index].var_15C) & 0x3FF;
    gActors[actor_index].posX.whole = ((COS(angle) * gActors[actor_index].var_160) + gActors[actor_index].unk_170) - (0, gScreenPosCurrentX.whole);
    gActors[actor_index].posY.whole = ((SIN(angle) * gActors[actor_index].var_160) + gActors[actor_index].unk_174) - (0, gScreenPosCurrentY.whole);
}

void ActorUpdate_Spikeball_OrbitXY(u16 actor_index) {
    u16 index;

    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        Spikeball_State0(actor_index);
        index = gActors[actor_index].var_0D8 * 4;
        gActors[actor_index].var_15C = D_800E3E24[index + 1];
        gActors[actor_index].var_160 = D_800E3E24[index + 2];
        gActors[actor_index].unk_164 = D_800E3E24[index + 3];
        gActors[actor_index].unk_114 = D_800E3E24[index + 0];
        func_80087B4C(actor_index);
        // fallthrough
    case 1:
        func_80087BDC(actor_index);
        Spikeball_State1End(actor_index, gActors[actor_index].unk_114);
        break;
    }
    Spikeball_UpdateHitbox(actor_index);
}

void func_80087EAC(u16 actor_index) {
    u16 index;
    u16 particle_index;

    for (index = 0; index != 2; index++) {
        particle_index = SpawnParticle_Image_90C0_16(0x1D6, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 4);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_index].var_154 = -16;
            gActors[particle_index].scaleX = 0.25f;
            gActors[particle_index].scaleY = 2.0f;
            if (index != 0) {
                gActors[particle_index].var_160 = FIXED_UNIT(256.0);
            }
            gActors[particle_index].unk_114 = 0.2f;
            gActors[particle_index].var_150 = FIXED_UNIT(64.0);
            Actor_SetColorRgb(particle_index, 0x7F);
        }
    }
}

void func_80088010(u16 actor_index) {
    switch (gActors[actor_index].var_15C) {
    case 0:
        if (func_80029B00(gActors[actor_index].var_160, gActors[actor_index].unk_164, gActors[actor_index].unk_168)) {
            func_80087EAC(actor_index);
            gActors[actor_index].unk_16C = 1;
            gActors[actor_index].var_15C++;
        }
        break;
    case 1:
        gActors[actor_index].unk_16C--;
        if (gActors[actor_index].unk_16C < 0) {
            gActors[actor_index].var_15C++;
        }
        break;
    case 2:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4.0)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
        }
        if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0, gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY1) ||
            func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1, gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY1)) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_800390BC(actor_index);
        }
        break;
    }
}

void ActorUpdate_Spikeball_77(u16 actor_index) {
    u16 index;

    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        Spikeball_State0(actor_index);
        index = gActors[actor_index].var_0D8 * 4;
        gActors[actor_index].var_160 = D_800E41A4[index + 1];
        gActors[actor_index].unk_164 = D_800E41A4[index + 2];
        gActors[actor_index].unk_168 = D_800E41A4[index + 3];
        gActors[actor_index].unk_114 = D_800E41A4[index + 0];
        // fallthrough
    case 1:
        func_80088010(actor_index);
        Spikeball_State1End(actor_index, gActors[actor_index].unk_114);
        break;
        
    }
    Spikeball_UpdateHitbox(actor_index);
}

s32 func_800882E8(u16 actor_index, f32 arg1, u16 arg2) {
    f32 temp_f2;
    f32 var_f0;
    f32 velocity_x;
    u16 index;

    var_f0 = ABS(arg2 / 2);
    temp_f2 = 2.0 * (arg1 / SQ(var_f0));
    velocity_x = 0.0f;
    for (index = 0; index < arg2 / 2; index++) {
        velocity_x += temp_f2;
    }
    gActors[actor_index].velocityY.raw = TO_FIXED(velocity_x);
    return TO_FIXED(temp_f2);
}

void func_80088408(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].var_15C = func_800882E8(actor_index, gActors[actor_index].unk_164, gActors[actor_index].unk_168);
    }
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = (s32) -gActors[actor_index].velocityY.raw / 2;
    }

    if (gActors[actor_index].velocityX.raw > 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
    }

    gActors[actor_index].velocityY.raw -= gActors[actor_index].var_15C;
    if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-4.0)) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-4.0);
    }
}

void func_80088518(u16 actor_index) {
    gActors[actor_index].var_15C = FIXED_UNIT(0.1875);
    gActors[actor_index].velocityX.raw = gActors[actor_index].var_160;
}

void ActorUpdate_Spikeball_78(u16 actor_index) {
    u16 index;

    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        Spikeball_State0(actor_index);
        index = gActors[actor_index].var_0D8 * 4;
        gActors[actor_index].var_160 = D_800E41B4[index + 1];
        gActors[actor_index].unk_164 = D_800E41B4[index + 2];
        gActors[actor_index].unk_168 = D_800E41B4[index + 3];
        gActors[actor_index].unk_114 = D_800E41B4[index + 0];
        func_80088518(actor_index);
        /* fallthrough */
    case 1:
        func_80088408(actor_index);
        Spikeball_State1End(actor_index, gActors[actor_index].unk_114);
        break;
    }
    Spikeball_UpdateHitbox(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
}

void func_800886E0(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
}

// similar to func_80087B4C
void func_80088720(u16 actor_index) {
    s32 var_110_int;

    var_110_int = (s32) gActors[actor_index].var_110;
    gActors[actor_index].var_160 += (var_110_int & 0xF) * 8;
    gActors[actor_index].var_15C += (((var_110_int & 0xF0) >> 4) << 22);
    gActors[actor_index].var_15C &= 0x03FFFFFF;
}

void func_800887B0(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7;
}

void func_800887F0(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
}

void func_80088834(u16 actor_index) {
    s16 angle = FROM_FIXED(gActors[actor_index].var_15C) & 0x3FF;
    gActors[actor_index].posX.whole = ((COS(angle) * gActors[actor_index].var_160) + gActors[actor_index].unk_170) - (0, gScreenPosCurrentX.whole);
    gActors[actor_index].unk_188 = (SIN(angle) * gActors[actor_index].var_160) * -3.0f;
}

void func_80088944(u16 actor_index) {
    s16 angle = FROM_FIXED(gActors[actor_index].var_15C) & 0x3FF;
    gActors[actor_index].posY.whole = ((COS(angle) * gActors[actor_index].var_160) + gActors[actor_index].unk_174) - (0, gScreenPosCurrentY.whole);
    gActors[actor_index].unk_188 = (SIN(angle) * gActors[actor_index].var_160) * -2.0f;
}

void func_80088A54(u16 actor_index) {
    s32 color;

    if (gActors[actor_index].var_158 != 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        return;
    }

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
    if (gActors[actor_index].var_15C > FIXED_UNIT(512.0)) {
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = 0;
    }
    else {
        color = (gActors[actor_index].var_15C > FIXED_UNIT(256.0)) ? FIXED_UNIT(512.0) - gActors[actor_index].var_15C : gActors[actor_index].var_15C;
        gActors[actor_index].colorG = gActors[actor_index].colorR = color >> 0x11;
        gActors[actor_index].colorB = gActors[actor_index].colorR;
    }
}

void func_80088B08(u16 actor_index) {
    s32 delta_z;

    gActors[actor_index].var_15C += gActors[actor_index].unk_164;
    gActors[actor_index].var_15C &= 0x03FFFFFF;
    if (gActors[actor_index].unk_168 != 0) {
        func_80088944(actor_index);
    }
    else {
        func_80088834(actor_index);
    }
    func_800887F0(actor_index);
    if ((gActors[actor_index].var_15C > FIXED_UNIT(369.0)) && (gActors[actor_index].var_15C < FIXED_UNIT(654.0))) {
        func_800887B0(actor_index);
    }
    if ((gActors[actor_index].var_15C < FIXED_UNIT(142.0)) || (gActors[actor_index].var_15C > FIXED_UNIT(881.0))) {
        func_800887B0(actor_index);
    }
    func_80088A54(actor_index);

    delta_z = (gActors[actor_index].var_15C & 0x03FF0000) >> 0x14;
    if (delta_z >= 48) {
        gActors[actor_index].posZ.whole = 64 - delta_z;
    }
    else if (delta_z >= 32) {
        gActors[actor_index].posZ.whole = delta_z - 32;
    }
    else if (delta_z >= 16) {
        gActors[actor_index].posZ.whole = delta_z - 40;
    }
    else {
        gActors[actor_index].posZ.whole = -8 - delta_z;
    }
    if (gActors[actor_index].unk_16C != NULL) {
        ((ActorFunc) gActors[actor_index].unk_16C)(actor_index);
    }
}

void ActorUpdate_Spikeball_OrbitYZ(u16 actor_index) {
    u16 index;

    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        Spikeball_State0(actor_index);
        func_800886E0(actor_index);
        index = gActors[actor_index].var_0D8 * 5;
        gActors[actor_index].var_15C = D_800E41C4[index + 1];
        gActors[actor_index].var_160 = D_800E41C4[index + 2];
        gActors[actor_index].unk_164 = D_800E41C4[index + 3];
        gActors[actor_index].unk_168 = D_800E41C4[index + 4];
        gActors[actor_index].unk_114 = D_800E41C4[index + 0];
        func_80088720(actor_index);
        /* fallthrough */
    case 1:
        func_80088B08(actor_index);
        Spikeball_State1End(actor_index, gActors[actor_index].unk_114);
        break;
    }
    Spikeball_UpdateHitbox(actor_index);
}

void func_80088E38(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    if (gActors[actor_index].var_150 & 1) {
        gActors[actor_index].damage = 0;
        gActors[actor_index].unk_0DA = 0;
    }
}

void func_80088E90(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].velocityY.raw /= 2;
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(2.0)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        }
    }
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
    }
    if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
    }
    if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
    }

    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
    if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-4.0)) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-4.0);
    }

    if (gActors[actor_index].var_150 & 0x1000) {
        // TODO?: -FROM_FIXED((f64)gActors[actor_index].velocityX.raw) * 5.371479329;
        gActors[actor_index].rotateZ += -(gActors[actor_index].velocityX.raw / 65536.0) * 5.371479329;
    }
    else {
        gActors[actor_index].rotateZ += -(gActors[actor_index].velocityX.raw / 65536.0) * 3.58098622;
    }

    if ((gActors[actor_index].var_150 & 2) && ((gActors[actor_index].posX.whole < -300) || (gActors[actor_index].posX.whole > 300))) {
        gActors[actor_index].flags = 0;
    }
}

void ActorUpdate_Spikeball_80(u16 actor_index) {
    u16 index;

    Spikeball_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        Spikeball_State0(actor_index);
        func_80088E38(actor_index);
        index = gActors[actor_index].var_0D8;
        gActors[actor_index].unk_114 = D_800E42F0[index];
        /* fallthrough */
    case 1:
        func_80088E90(actor_index);
        Spikeball_State1End(actor_index, gActors[actor_index].unk_114);
        break;
    }
    Spikeball_UpdateHitbox(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
}

void func_800891EC(u16 actor_index) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 12, gActors[actor_index].posZ.whole + 1);
    if (particle_index != 0) {
        gActors[particle_index].graphicIndex = 0x16E;
        gActors[particle_index].velocityX.raw = FIXED_UNIT(-0.0078125);
        gActors[particle_index].var_154 = -4;
    }
}

void func_80089298(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0xD8;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[actor_index].var_150 = 0x28;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].scaleY = 0.1f;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.0234375);
        gActors[actor_index].posX.raw += (Rand() << 8) - FIXED_UNIT(0.5);
        gActors[actor_index].posY.raw += (Rand() << 8) - FIXED_UNIT(0.5);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
        }
        break;
    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.01171875);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state++;
        }
        break;
    case 3:
        func_8003F05C(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
        gActors[actor_index].flags = 0;
        break;
    }
}

void func_80089418(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicList = D_800E42F4;
        gActors[actor_index].graphicTimer = 1;
        Actor_SetHitboxA(actor_index, 8);
        Actor_SetHitboxB(actor_index, 8);
        gActors[actor_index].unk_0DA = 5;
        gActors[actor_index].unk_0DB = 0xB;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.0);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4.0);
        gActors[actor_index].health = 0;
        gActors[actor_index].unk_0DF = 0x20;
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        if (gActors[actor_index].var_150 & 1) {
            gActors[actor_index].scaleX = 0.5f;
        }
        else {
            gActors[actor_index].scaleX = 1.0f;
        }
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        gActors[actor_index].var_154++;
        if (gActors[actor_index].var_154 >= 3) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        if (!(gActors[actor_index].var_150 & 2)) {
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8.0)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
            }
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].flags = 0;
            if (gActors[actor_index].unk_0DD == 0x13) {
                gActors[actor_index].health = 0;
            }
            else {
                func_8003F9E0(0.7f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
                SpawnGemActor(actor_index, 0x30, 0);
            }
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].health = 0;
            func_8003F05C(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        }
        else if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK5 | ACTOR_FLAG3_UNK4 | ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].health = 0;
            func_8003F05C(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        }
        else {
            gActors[actor_index].rotateZ = INDEX_TO_DEG(Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw) & 0x3FF);
        }
        break;
    }
}

u16 func_800896AC(u16 actor_index) {
    u16 free_actor;

    if (gActors[actor_index].var_158 == 0) {
        return 0;
    }
    if ((gActors[actor_index].unk_164 == 1) &&
        (gActors[gActors[actor_index].unk_168].flags & ACTOR_FLAG_ACTIVE)) {
        return 0;
    }

    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor == 0) {
        return 0;
    }
    gActors[free_actor].actorType = 0x1D;
    Actor_Initialize(free_actor);
    gActors[free_actor].hitboxBY0 = 8; \
    gActors[free_actor].hitboxBY1 = -8;
    gActors[free_actor].hitboxBX0 = -8; \
    gActors[free_actor].hitboxBX1 = 8;
    gActors[free_actor].unk_0DF = 0x40;
    gActors[free_actor].flags = ACTOR_FLAG_ACTIVE;
    gActors[free_actor].health = 1;
    gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
    gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
    gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole;
    return free_actor;
}

void DiggingSpot_SpawnActor(u16 actor_0, u16 actor_1, s32* vals) {
    s32* vals_ptr;

    vals_ptr = &vals[gActors[actor_0].var_15C];
    if (vals_ptr[0] == 0) {
        return;
    }

    gActors[actor_1].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_1].actorType = *vals_ptr++;
    gActors[actor_1].var_110 = *vals_ptr++;
    gActors[actor_1].var_0D8 = *vals_ptr++;
    gActors[actor_0].unk_164 = *vals_ptr++;
    if (gActors[actor_1].actorType == 8) {
        gActors[actor_1].health = 0;
        gActors[actor_1].posY.whole += 16;
        if (Rand() & 1) {
            gActors[actor_1].velocityX.raw = FIXED_UNIT(3.0);
        }
        else {
            gActors[actor_1].velocityX.raw = FIXED_UNIT(-3.0);
        }
    }
    if (gActors[actor_0].unk_164 == 1) {
        gActors[actor_0].unk_168 = gActors[actor_0].var_160;
    }
    gActors[actor_0].var_15C += 4;
    if (vals_ptr[0] < 0) {
        gActors[actor_0].var_15C += vals_ptr[0];
    }
    gActors[actor_0].var_158 = vals_ptr[0];
    if (vals_ptr[0] == 0) {
        gActors[actor_0].flags = 0;
    }
}

void DiggingSpot_SpawnActorCheck(u16 actor_0, u16 actor_1) {
    if (gActors[actor_0].unk_190 == NULL) {
        DiggingSpot_SpawnActor(actor_0, actor_1, D_800E4440[gActors[actor_0].var_0D8]);
    }
    else {
        DiggingSpot_SpawnActor(actor_0, actor_1, (s32*)gActors[actor_0].unk_190);
    }
}

void func_80089A10(u16 actor_index) {
    u16 particle_index;
    u16 state;

    state = gActors[actor_index].var_150 & 0xF;
    switch (state) {
    case 0:
        if (!(gActiveFrames & 0xF)) {
            particle_index = SpawnParticle_List_90C0_16(
                gGraphicListBlank,
                gActors[actor_index].posX.whole + ((Rand() - 0x80) * 0.03125),
                gActors[actor_index].posY.whole + ((Rand() - 0x80) * 0.125) + 16.0,
                gActors[actor_index].posZ.whole
            );
            if (particle_index != 0) {
                gActors[particle_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[particle_index].graphicIndex = 0x1AE;
                gActors[particle_index].scaleX = (Rand() * 0.0078125);
                gActors[particle_index].scaleY = gActors[particle_index].scaleX;
                gActors[particle_index].var_154 = -10;
                gActors[particle_index].var_150 = FIXED_UNIT(-8.0);
                gActors[particle_index].var_15C = 2000;
                gActors[particle_index].unk_16C = 0x28;
            }
        }
        break;
    case 1:
        if (!(gActiveFrames & 0x3F)) {
            particle_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 8, 1);
            if (particle_index != 0) {
                gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[particle_index].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[particle_index].graphicIndex = 0x1A2;
                gActors[particle_index].scaleX = 1.8f;
                gActors[particle_index].scaleY = 1.8f;
                gActors[particle_index].velocityY.raw = FIXED_UNIT(0.625);
                gActors[particle_index].var_154 = -3;
                gActors[particle_index].var_110 = 0.002f;
                gActors[particle_index].unk_114 = 0.001f;
                gActors[particle_index].unk_118 = 0.0f;
                gActors[particle_index].unk_11C = 0.0f;
                gActors[particle_index].var_15C = -400;
                gActors[particle_index].unk_16C = 0;
            }
        }
        break;
    case 2:
        if (!(gActiveFrames & 0x3F)) {
            particle_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 16, gActors[actor_index].posZ.whole);
            if (particle_index != 0) {
                gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[particle_index].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[particle_index].graphicIndex = 0x1A2;
                gActors[particle_index].scaleX = 0.8f;
                gActors[particle_index].scaleY = 0.8f;
                gActors[particle_index].velocityY.raw = FIXED_UNIT(0.625);
                gActors[particle_index].var_154 = -3;
                gActors[particle_index].var_110 = 0.002f;
                gActors[particle_index].unk_114 = 0.001f;
                gActors[particle_index].unk_118 = 0.0f;
                gActors[particle_index].unk_11C = 0.0f;
                gActors[particle_index].var_15C = -400;
                gActors[particle_index].unk_16C = 0;
            }
        }
        break;
    case 3:
        if (!(gActiveFrames & 0xF)) {
            particle_index = SpawnParticle_List_90C0_16(
                gGraphicListBlank,
                gActors[actor_index].posX.whole + ((Rand() - 0x80) * 0.05),
                gActors[actor_index].posY.whole + ((Rand() - 0x80) * 0.05),
                gActors[actor_index].posZ.whole
            );
            if (particle_index != 0) {
                gActors[particle_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[particle_index].graphicIndex = 0x1D6;
                gActors[particle_index].scaleX = 1.0f;
                gActors[particle_index].scaleY = 1.0f;
                gActors[particle_index].var_154 = -10;
                gActors[particle_index].var_150 = FIXED_UNIT(-32.0);
                gActors[particle_index].var_110 = -0.05f;
                gActors[particle_index].unk_114 = -0.05f;
                gActors[particle_index].unk_118 = 0.0f;
                gActors[particle_index].unk_11C = 0.0f;
            }
        }
        break;
    }
}

s32 func_80089EF8(u16 actor_index) {
    ActorUnk_800E44C0* init_data;
    u16 free_actor;
    u16 index;

    if (gActors[actor_index].unk_17C == 0xFF) {
        return FALSE;
    }

    if (gActors[actor_index].unk_190 != NULL) {
        init_data = (ActorUnk_800E44C0*) gActors[actor_index].unk_190;
    }
    else {
        init_data = D_800E44C0[(u16)gActors[actor_index].var_0D8];
    }
    init_data += gActors[actor_index].unk_17C;
    gActors[actor_index].unk_174++;
    if (gActors[actor_index].unk_174 >= gActors[actor_index].unk_178) {
        free_actor = Actor_RangeFindInactive(0x30, 0x90);
        if (free_actor != 0) {
            gActors[free_actor].actorType = init_data->actorType;
            Actor_Initialize(free_actor);
            gActors[free_actor].var_110 = init_data->unk_04;
            gActors[free_actor].var_0D8 = init_data->unk_08;
            gActors[free_actor].velocityX.raw = init_data->velocityX;
            gActors[free_actor].velocityY.raw = init_data->velocityY;
            gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
            gActors[free_actor].posY.whole = gActors[actor_index].posY.whole + 0x30;
            gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole + 1;
        }
        gActors[actor_index].unk_174 = 0;
        gActors[actor_index].unk_178 = init_data->unk_14;
        if (gActors[actor_index].unk_16C == 0) {
            gActors[actor_index].unk_16C = 1;
        }
        init_data++;
        if (init_data->actorType < 0) {
            gActors[actor_index].unk_17C += (init_data->actorType / 6) + 1;
        }
        else if (init_data->actorType == 0) {
            gActors[actor_index].unk_17C = 0xFF;
        }
        else {
            gActors[actor_index].unk_17C++;
        }
        return TRUE;
    }
    return FALSE;
}

void func_8008A0F4(u16 actor_index) {
    u16 free_actor;
    u16 angle;

    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    gActors[actor_index].unk_174++;
    if (gActors[actor_index].unk_174 >= gActors[actor_index].unk_178) {
        if (func_80029B00(224, 128, -128)) {
            free_actor = Actor_RangeFindInactive(0x30, 0x90);
            if (free_actor != 0) {
                angle = (gActors[actor_index].var_150 & 0xFF00) >> 4;
                gActors[free_actor].actorType = 0x59;
                Actor_Initialize(free_actor);
                gActors[free_actor].velocityX.raw = COS(angle) * FIXED_UNIT(2.0);
                gActors[free_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(4.0);
                gActors[free_actor].var_110 = gActors[actor_index].var_0D8;
                if (gActors[actor_index].var_0D8 == 1) {
                    gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
                    gActors[free_actor].posY.whole = gActors[actor_index].posY.whole + 8;
                    gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole - 1;
                }
                else {
                    gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
                    gActors[free_actor].posY.whole = gActors[actor_index].posY.whole + 0x18;
                    gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole - 1;
                }
            }
            Sound_PlaySfxAtActor2(0x5D, free_actor);
            if (gActors[actor_index].unk_16C == 0) {
                gActors[actor_index].unk_16C = 1;
            }
        }
        gActors[actor_index].unk_174 = 0;
    }
}

void func_8008A32C(u16 actor_index) {
    u16 index;

    index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 24, 2);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[index].graphicIndex = 0x170;
        gActors[index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[index].var_15C = -0x100;
        gActors[index].unk_16C = 0;
        gActors[index].var_154 = -0x10;
        gActors[index].unk_164 = 0;
        gActors[index].scaleX = 1.0f;
        gActors[index].scaleY = 1.0f;
        gActors[index].var_110 = 0.05f;
        gActors[index].unk_114 = 0.05f;
        gActors[index].unk_118 = 0.0f;
        gActors[index].unk_11C = 0.0f;
    }
}

void func_8008A41C(u16 actor_index) {
    u16 index;

    index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 8, 2);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[index].graphicIndex = 0x170;
        gActors[index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[index].var_15C = -0x100;
        gActors[index].unk_16C = 0;
        gActors[index].var_154 = -0x10;
        gActors[index].unk_164 = 0;
        gActors[index].scaleX = 0.5f;
        gActors[index].scaleY = 0.5f;
        gActors[index].var_110 = 0.05f;
        gActors[index].unk_114 = 0.05f;
        gActors[index].unk_118 = 0.0f;
        gActors[index].unk_11C = 0.0f;
    }
}

void func_8008A50C(u16 actor_index) {
    switch (gActors[actor_index].unk_16C) {
    case 0:
        gActors[actor_index].unk_170 = 6;
        break;
    case 1:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.8f, 0.1f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.4f, 0.1f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].unk_16C += 1;
        }
        break;
    case 2:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.4f, 0.6f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.8f, 0.6f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].unk_16C += 1;
            if (gActors[actor_index].var_150 & 0xA) {
                func_8008A32C(actor_index);
            }
            if (gActors[actor_index].var_150 & 0x14) {
                func_8008A41C(actor_index);
            }
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.2f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.2f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].unk_16C = 0;
        }
        break;
    }
    gActors[actor_index].unk_170--;
}

void ActorUpdate_DiggingSpot(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].posZ.whole = -7;
        gActors[actor_index].var_158 = 0xFF;
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        if (gActors[actor_index].var_150 & 0x10) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicList = D_800E44C8;
            gActors[actor_index].graphicTimer = 1;
        }
        if (gActors[actor_index].var_150 & 0x20) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicList = D_800E44DC;
            gActors[actor_index].graphicTimer = 1;
        }
        if (gActors[actor_index].var_150 & 0x30) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[actor_index].unk_18C = D_800E44F0[(gActors[actor_index].var_150 & 0xF00) >> 8];
        }
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        gActors[actor_index].var_160 = func_800896AC(actor_index);
        if (gActors[actor_index].var_160 != 0) {
            gActors[actor_index].state++;
        }
        break;
    case 2:
        if ((gPlayerActor.posY.whole >= (gActors[actor_index].posY.whole + 0x10)) && 
            (ABS(gActors[actor_index].posX.whole - gPlayerActor.posX.whole) < 0x11)) {
            gActors[gActors[actor_index].var_160].flags |= ACTOR_FLAG_UNK12;
        }
        else {
            gActors[gActors[actor_index].var_160].flags &= ~ACTOR_FLAG_UNK12;
        }
        if (gActors[gActors[actor_index].var_160].flags_098 & ACTOR_FLAG3_UNK9) {
            if ((gActors[actor_index].parentIndex == 0) && (gPlayerActor.unk_140_u8[0] == 8) &&
                (ABS(gActors[actor_index].posX.whole - gPlayerActor.posX.whole) < 0xD)) {
                DiggingSpot_SpawnActorCheck(actor_index, gActors[actor_index].var_160);
                Sound_PlaySfxAtActor2(0x11F, actor_index);
                gActors[actor_index].state--;
                if (gActors[actor_index].unk_16C == 0) {
                    gActors[actor_index].unk_16C = 1;
                }
            }
            else {
                gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
            }
        }
        func_80089A10(actor_index);
        break;
    case 3:
        func_80089EF8(actor_index);
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    if (!(gActors[actor_index].var_150 & 0x10)) {
        func_8008A50C(actor_index);
    }
}

s32 func_8008AA28(u16 actor_index) {
    u16 var_s1;

    if (gActors[actor_index].var_0D8 == 1) {
        var_s1 = func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole);
    }
    else {
        var_s1 = func_80012AB4(gActors[actor_index].posX.whole - 8, gActors[actor_index].posY.whole + 8);
        var_s1 |= func_80012AB4(gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole + 8);
        var_s1 |= func_80012AB4(gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole - 8);
        var_s1 |= func_80012AB4(gActors[actor_index].posX.whole - 8, gActors[actor_index].posY.whole - 8);
    }
    if (var_s1 == 0) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_8008AB68(u16 actor_index) {
    switch (gActors[actor_index].unk_16C) {
    case 0:
        gActors[actor_index].unk_170 = 6;
        break;
    case 1:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.8f, 0.1f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.4f, 0.1f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].unk_16C++;
        }
        break;
    case 2:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.4f, 0.6f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.8f, 0.6f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].unk_16C++;
            if (gActors[actor_index].var_0D8 == 1) {
                func_8008A41C(actor_index);
            }
            else {
                func_8008A32C(actor_index);
            }
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.2f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.2f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].unk_16C = 0;
        }
        break;
    }
    gActors[actor_index].unk_170--;
}

void func_8008AD3C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].posZ.whole = -8;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = D_800DE188;
        if (gActors[actor_index].var_0D8 == 1) {
            gActors[actor_index].graphicList = D_800E44DC;
        }
        else {
            gActors[actor_index].graphicList = D_800E44C8;
        }
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        gActors[actor_index].unk_178 = gActors[actor_index].var_150 & 0xFF;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        func_8008A0F4(actor_index);
        if (func_8008AA28(actor_index)) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    func_8008AB68(actor_index);
}

void func_8008AE78(u16 actor_index) {
    s32 pos_y;
    s32 temp_t6;

    gActors[actor_index].var_154 = (gActors[actor_index].var_150 & 0xF) << 16;
    gActors[actor_index].var_158 = ((gActors[actor_index].var_0D8 & 0xF000) >> 12) << 15;
    temp_t6 = ((gActors[actor_index].var_0D8 & 0xF00) >> 8) << 19;
    pos_y = gActors[actor_index].posY.raw + gScreenPosCurrentY.raw;
    gActors[actor_index].var_15C = pos_y + temp_t6;
    gActors[actor_index].var_160 = pos_y - temp_t6;
    gActors[actor_index].unk_164 = gActors[actor_index].var_0D8 & 0xFF;
}

void func_8008AF04(u16 actor_index) {
    s32 current;
    s32 target;

    current = gActors[actor_index].posY.raw + gScreenPosCurrentY.raw;
    if (gActors[actor_index].unk_168 != 0) {
        target = gActors[actor_index].var_160;
    }
    else {
        target = gActors[actor_index].var_15C;
    }
    current = Math_ApproachS32(current, target, gActors[actor_index].var_158);
    if (current == target) {
        gActors[actor_index].unk_168 ^= 1;
    }
    gActors[actor_index].posY.raw = current - gScreenPosCurrentY.raw;
    if (!(gActors[actor_index].unk_164 & gActiveFrames) && (gActors[actor_index].unk_16C == 0)) {
        gActors[actor_index].unk_16C = 1;
    }
}

void func_8008AFE8(u16 actor_index) {
    u16 angle;
    s16 pos_x;
    u16 particle_index;
    f32 x;
    f32 y;

    pos_x = (gActors[actor_index].var_150 & 0x100) ? -8 : 8;
    pos_x += gActors[actor_index].posX.whole;
    particle_index = SpawnParticle_List_90C0_16(D_800E4534, pos_x, gActors[actor_index].posY.whole, 1);
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[particle_index].graphicIndex = 0x170;
        gActors[particle_index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[particle_index].scaleY = gActors[particle_index].scaleX = 0.5f;
        angle = (u16)(gActors[actor_index].rotateZ * 2.844444); // TODO: 1/DEG_PER_INDEX
        angle += COS_DEG_90;
        x = COS(angle);
        y = SIN(angle);
        gActors[particle_index].posX.whole = gActors[actor_index].posX.whole + (x * 8.0f);
        gActors[particle_index].posY.whole = gActors[actor_index].posY.whole + (y * 8.0f);
        gActors[particle_index].velocityX.raw = x * FIXED_UNIT(2.0);
        gActors[particle_index].var_158 = -0x100;
        gActors[particle_index].velocityY.raw = x * FIXED_UNIT(2.0);
        gActors[particle_index].unk_168 = 0;
        gActors[particle_index].var_15C = -0x80;
        gActors[particle_index].unk_16C = 0;
        gActors[particle_index].var_154 = -0x10;
        gActors[particle_index].unk_164 = 0;
        gActors[particle_index].var_110 = 0.05f;
        gActors[particle_index].unk_114 = 0.05f;
        gActors[particle_index].unk_118 = gActors[particle_index].unk_11C = 0.0f;
    }
}

u16 func_8008B284(u16 actor_index) {
    u16 result;

    result = FALSE;
    switch (gActors[actor_index].unk_16C) {
    case 0:
        gActors[actor_index].unk_170 = 6;
        break;
    case 1:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.8f, 0.3f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.4f, 0.7f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].unk_16C++;
        }
        break;
    case 2:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.4f, 0.7f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.8f, 0.7f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].unk_16C++;
            func_8008AFE8(actor_index);
            result = TRUE;
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.2f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.2f);
        if (gActors[actor_index].unk_170 < 0) {
            gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].unk_16C = 0;
        }
        break;
    }
    gActors[actor_index].unk_170--;
    return result;
}

void func_8008B438(u16 actor_index) {
    s16 pos_x;
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x45;
        Actor_Initialize(free_actor);
        pos_x = (gActors[actor_index].var_150 & 0x100) ? -8 : 8;
        pos_x += gActors[actor_index].posX.whole;
        gActors[free_actor].posX.whole = pos_x;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        if (gActors[actor_index].var_150 & 0x100) {
            gActors[free_actor].velocityX.raw = -gActors[actor_index].var_154;
        }
        else {
            gActors[free_actor].velocityX.raw = gActors[actor_index].var_154;
        }
        gActors[free_actor].var_110 = 37123.0f;
        gActors[free_actor].var_0D8 = 2;
    }
}

void func_8008B548(u16 actor_index) {
    s16 pos_x;
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x59;
        Actor_Initialize(free_actor);
        pos_x = ((gActors[actor_index].var_150) & 0x100) ? -8 : 8;
        pos_x += gActors[actor_index].posX.whole;
        gActors[free_actor].posX.whole = pos_x;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        if (gActors[actor_index].var_150 & 0x100) {
            gActors[free_actor].velocityX.raw = -gActors[actor_index].var_154;
        }
        else {
            gActors[free_actor].velocityX.raw = gActors[actor_index].var_154;
        }
        gActors[free_actor].var_110 = 3.0f;
        gActors[free_actor].var_0D8 = 0;
    }
}

void func_8008B654(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].posZ.whole = -8;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = D_800DE188;
        if (gActors[actor_index].var_150 & 0x100) {
            gActors[actor_index].rotateZ = 90.0f;
        }
        else {
            gActors[actor_index].rotateZ = 270.0f;
        }
        gActors[actor_index].graphicList = D_800E44DC;
        func_8008AE78(actor_index);
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        func_8008AF04(actor_index);
        if (func_8008B284(actor_index) != 0) {
            switch (gActors[actor_index].var_150 & 0xF000) {
            case 0x0:
                func_8008B438(actor_index);
                break;
            case 0x1000:
                func_8008B548(actor_index);
                break;
            }
        }
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8008B7CC(u16 actor_index) {
    if (!(gActors[actor_index].unk_164 & gActiveFrames) && (gActors[actor_index].unk_16C == 0)) {
        gActors[actor_index].unk_16C = 1;
    }
}

void func_8008B830(u16 actor_index) {
    u16 free_actor;
    u16 angle;
    f32 x;
    f32 y;
    s32 pad;

    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x59;
        Actor_Initialize(free_actor);
        angle = FROM_FIXED(gActors[actor_index].var_154) + COS_DEG_90;
        x = COS(angle);
        y = SIN(angle);
        gActors[free_actor].posX.whole = gActors[actor_index].posX.whole + (x * 8.0f);
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole + (y * 8.0f);
        gActors[free_actor].velocityX.raw = x * FIXED_UNIT(4.0);
        gActors[free_actor].velocityY.raw = y * FIXED_UNIT(4.0);
        gActors[free_actor].var_0D8 = 0;
        gActors[free_actor].var_110 = 1.0f;
    }
}

void func_8008B9FC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_150 = gActors[actor_index].var_110;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicList = D_800E44DC;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].posZ.whole = -8;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = D_800DE188;
        gActors[actor_index].unk_164 = 0x1F;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        if (gActors[0x51].var_154 != 0) {
            func_8008B7CC(actor_index);
            gActors[actor_index].var_154 += FIXED_UNIT(16.0);
            gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].var_154));
        }
        if (func_8008B284(actor_index)) {
            func_8008B830(actor_index);
        }
        break;
    }
}

void func_8008BB64(u16 actor_index) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x90, 0xC0);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0x5C;
        Actor_Initialize(free_actor);
        gActors[free_actor].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[free_actor].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[free_actor].graphicIndex = 0x1A2;
        gActors[free_actor].state = 0x10;
        gActors[free_actor].scaleX = 0.5f;
        gActors[free_actor].scaleY = 0.5f;
        gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole;
        gActors[free_actor].var_150 = gActors[actor_index].var_150;
        gActors[free_actor].unk_168 = actor_index;
    }
}

void func_8008BC5C(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].state >= 0x10) {
        index = gActors[actor_index].unk_168;
        if (gActors[actor_index].unk_164 >= 0x3D) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[index].unk_168, FIXED_UNIT(0.015625));
        }
        else if (gActors[actor_index].unk_164 >= 0x1F) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[index].unk_164, FIXED_UNIT(0.015625));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[index].var_160, FIXED_UNIT(0.015625));
        }
    }
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].var_150 = (s32) gActors[actor_index].var_110;
        gActors[actor_index].var_154 = 1;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        if (!(gActiveFrames & 0x3F)) {
            func_8008BB64(actor_index);
        }
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 <= 0) {
            gActors[actor_index].var_154 = (Rand() * 0.46875) + 30.0;
            gActors[actor_index].var_160 = (Rand() * 0x160) - FIXED_UNIT(0.6875);
        }
        gActors[actor_index].unk_164 = Math_ApproachS32(gActors[actor_index].unk_164, gActors[actor_index].var_160, FIXED_UNIT(0.015625));
        gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, gActors[actor_index].var_160, FIXED_UNIT(0.015625));
        break;
    case 16:
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.625);
        gActors[actor_index].unk_180 = 0x14;
        gActors[actor_index].unk_164++;
        gActors[actor_index].state++;
        /* fallthrough */
    case 17:
        if (!(gActors[actor_index].var_150 & 1)) {
            gActors[actor_index].scaleX += 0.05;
            gActors[actor_index].scaleY += 0.05;
        }
        gActors[actor_index].unk_180--;
        if (gActors[actor_index].unk_180 < 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(0.375);
        }
        gActors[actor_index].unk_164++;
        break;
    case 18:
        gActors[actor_index].scaleX += 0.01;
        gActors[actor_index].scaleY += 0.01;
        gActors[actor_index].colorA -= 3;
        if (gActors[actor_index].colorA < 4) {
            gActors[actor_index].flags = 0;
        }
        gActors[actor_index].unk_164++;
        break;
    }
}

void func_8008BFB0(void) {
    u16 index;

    for (index = 0; index < 4; index++) {
        D_801826A0[index] = 0;
    }
}

s32 func_8008BFE4(u16 unused_arg0) {
    u16 index;

    for (index = 0; index < 4; index++) {
        if (D_801826A0[index] == 0) {
            D_801826A0[index] = 1;
            return index;
        }
    }
    return 0xFF;
}

s32 func_8008C038(u16 actor_index, s16 x, s16 y, u32* arg3) {
    if (func_80012AB4(x, y) == 0xF8) {
        D_801822A0[gActors[actor_index].var_154][*arg3] = gScreenPosCurrentY.whole + ((x + gScreenPosCurrentX.whole) << 0x10) + y;
        func_80012044(x, y, 0x34);
        func_80083FB0(x, y);
        *arg3 += 1;
        *arg3 &= 0x3F;
        return TRUE;
    }
    return FALSE;
}

u16 func_8008C120(u16 actor_index) {
    u16 result;
    s16 x;
    s16 y;
    u32 index;
    u32 sp58;

    result = FALSE;
    sp58 = gActors[actor_index].unk_178;
    for (index = gActors[actor_index].unk_174; index != gActors[actor_index].unk_178; index = (index + 1) & 0x3F) {
        if (D_801822A0[gActors[actor_index].var_154][index] == 0xFFFFFFFF) {
            continue;
        }
        x = (D_801822A0[gActors[actor_index].var_154][index] >> 0x10) & 0xFFFF;
        y = D_801822A0[gActors[actor_index].var_154][index] & 0xFFFF;
        x -= gScreenPosCurrentX.whole;
        y -= gScreenPosCurrentY.whole;
        func_8008C038(actor_index, x, y + 16, &sp58);
        func_8008C038(actor_index, x, y - 16, &sp58);
        func_8008C038(actor_index, x - 16, y, &sp58);
        func_8008C038(actor_index, x + 16, y, &sp58);
        D_801822A0[gActors[actor_index].var_154][index] = 0xFFFFFFFF;
        gActors[actor_index].posX.whole = x;
        gActors[actor_index].posY.whole = y;
        result = TRUE;
    }
    gActors[actor_index].unk_174 = gActors[actor_index].unk_178;
    gActors[actor_index].unk_178 = sp58;
    return result;
}

void func_8008C304(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_154 = func_8008BFE4(actor_index);
        if (gActors[actor_index].var_154 == 0xFF) {
            gActors[actor_index].flags = 0;
            return;
        }
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].unk_174 = 0;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].unk_170 = (s32) gActors[actor_index].var_110;
        D_801822A0[gActors[actor_index].var_154][0] = 
            ((((gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) & 0xFFF0) + 8) << 16) + 
            (((gActors[actor_index].posY.whole + (0, gScreenPosCurrentY.whole)) & 0xFFF0) + 8); // fakematch: (0, )
        gActors[actor_index].unk_178 = 1;
        gActors[actor_index].state++;
        // fallthrough
    case 1:
        gActors[actor_index].unk_170--;
        if (gActors[actor_index].unk_170 <= 0) {
            gActors[actor_index].unk_170 = (s32) gActors[actor_index].var_110;
            if (func_8008C120(actor_index)) {
                Sound_PlaySfxAtActor3(0x93, actor_index);
            }
            else {
                gActors[actor_index].flags = 0;
                D_801826A0[gActors[actor_index].var_154] = 0;
            }
        }
        break;
    }
}
