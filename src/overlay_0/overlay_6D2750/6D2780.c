#include "common.h"
#include "actor.h"
#include "SFX.h"
#include "1F1E0.h"
#include "asset_loader.h"
#include "28EF0.h"
#include "66250.h"
#include "80D90.h"
#include "84BB0.h"
#include "8F080.h"

// "overlay 0" code for intro scene

typedef struct {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
} UnkStruct_func_801960BC_6D673C;

typedef struct {
    /* 0x00 */ u16 graphic_index;
    /* 0x02 */ u16 child_graphic_index;
    /* 0x04 */ s16 pos_x;
    /* 0x06 */ s16 pos_y;
    /* 0x08 */ s16 target_x;
    /* 0x0A */ s16 target_y;
} IntroActorMotion;

typedef struct {
    /* 0x00 */ s16 pos_x;
    /* 0x02 */ s16 pos_y;
    /* 0x04 */ s32 vel_x;
    /* 0x08 */ s32 vel_y;
    /* 0x0C */ s32 vel_z;
    /* 0x10 */ f32 scale;
} IntroBoulderInit;


extern u8 D_800BE70C;
extern uintptr_t D_800D74A0[];
extern u16 D_800D85A8[];
extern s16 D_800E1604[];
extern s16 D_800E5D30[];
extern s16 D_800E5E48[];
extern u16* D_800E8820[];
extern s16 D_800E8EAC[];

u16 D_80199930_6D9FB0[256];
s16 D_80199B30_6DA1B0;

IntroBoulderInit D_80198DE0_6D9460[] = {
//    pos_x  pos_y  velocity_x  velocity_y  velocity_z      scale
    {   -61,   -60,    -0xB505,    0x6B83C,    0x63800, 1.214844f },
    {   -68,   -21,    -0xF314,    0x60BC6,    0x37800, 1.355469f },
    {     1,    51,     0x1917,    0x3B713,    0x67800, 1.207031f },
    {   -31,    -4,    -0xFE13,    0x2A87F,    0x64800, 0.507813f },
    {    43,     6,     0xFE13,     0x3780,     0xF800, 1.269531f },
    {    59,   -59,     0xB505,    0x3283C,    0x3B800, 1.097656f },
    {    39,   -55,     0x9D7F,     0xD8A3,    0x1B800, 0.617188f },
    {    42,    44,     0xB505,    0x3DFC3,    0x4F000, 1.367188f },
    {    14,   -45,     0x504D,    0x2A9B0,    0x4D000, 0.726563f },
    {   -28,    70,    -0x5C22,    0x2BB22,    0x1B800, 0.636719f },
    {   -52,    46,    -0xB505,    0x787C3,    0x57800, 1.230469f },
    {   -61,   -12,    -0xFB15,    0x52A8A,    0x38000, 0.671875f },
    {   -18,   -15,    -0xB505,    0x4703C,    0x51000, 0.757813f },
    {    58,    22,     0xEED8,    0x6FD19,     0x5000, 1.074219f },
    {    27,    36,     0x9D7F,    0x11F5C,    0x21800, 0.839844f },
    {   -10,   -44,    -0x3816,    0x24CAA,    0x5D800, 0.652344f },
    {   -36,    27,    -0xC9D1,    0x3261F,    0x72800, 0.777344f },
    {   -16,   -55,    -0x4A4F,     0x6044,    0x46000, 0.777344f },
    {    10,   -58,     0x2BC4,    0x432D3,    0x20000, 0.503906f },
    {   -48,   -33,    -0xC9D1,     0x71E0,    0x1D800, 0.792969f },
    {    15,    50,     0x4A4F,    0x52FBB,    0x27000, 1.464844f },
    {    58,    29,     0xE4AA,    0x2E653,    0x4D000, 1.355469f },
    {   -29,   -21,    -0xC9D1,    0x499E0,    0x18000, 0.507813f },
    {   -69,    76,    -0xB505,    0x5CFC3,    0x76800, 0.828125f },
};

s16 D_80198FC0_6D9640[] = {
//  graphic timer
    0x581D, 2,
    0x581E, 2,
    0x581F, 2,
    0x5820, 2,
    0x5821, 2,
    0x5822, 2,
    0,      0,
};

s16 D_80198FDC_6D965C[] = {
//  graphic timer
    0x5823, 2,
    0x5824, 2,
    0x5825, 2,
    0x5826, 2,
    0x5827, 2,
    0x5828, 2,
    0,      0,
};

s16 D_80198FF8_6D9678[] = {
//  graphic timer
    0x584C, 2,
    0x584D, 2,
    0x584E, 2,
    0x584F, 32,
    0x5850, 3,
    0x5851, 4,
    0x5852, 4,
    0,      0,
};

s16 D_80199018_6D9698[] = {
//  graphic timer
    0x5801, 3,
    0x5802, 3,
    0x5803, 3,
    0x5804, 3,
    0x5805, 3,
    0x5806, 3,
    0x5807, 3,
    0x5808, 3,
    0x5809, 3,
    0x580A, 3,
    0x580B, 3,
    0x580C, 3,
    0,      0,
};

s16 D_8019904C_6D96CC[] = {
//  graphic timer
    0x5865, 1,
    0x5866, 6,
    0x5865, 1,
    0x5867, 4,
    0x5868, 4,
    0x5869, 2,
    0x586A, 2,
    0x586B, 3,
    0,      0,
};

UnkStruct_func_801960BC_6D673C D_80199070_6D96F0[] = {
//    rotation               x                y  unk_0C
    {     0.0f, FIXED_UNIT(16), FIXED_UNIT(118),      0 },
    {     0.0f, FIXED_UNIT(16), FIXED_UNIT(110),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199090_6D9710[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-82), FIXED_UNIT(59),      0 },
    {  -1e+01f, FIXED_UNIT(-76), FIXED_UNIT(51),      0 },
};

UnkStruct_func_801960BC_6D673C D_801990B0_6D9730[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(81), FIXED_UNIT(59),      0 },
    {   1e+01f, FIXED_UNIT(76), FIXED_UNIT(51),      0 },
};

UnkStruct_func_801960BC_6D673C D_801990D0_6D9750[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-12), FIXED_UNIT(16),      0 },
    {     5.0f, FIXED_UNIT(-12), FIXED_UNIT(13),      0 },
    {     0.0f, FIXED_UNIT(-12), FIXED_UNIT(16),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199100_6D9780[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(-7), FIXED_UNIT(30),      0 },
    {     5.0f, FIXED_UNIT(-8), FIXED_UNIT(28),      0 },
    {     0.0f, FIXED_UNIT(-7), FIXED_UNIT(30),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199130_6D97B0[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-29), FIXED_UNIT(47),      0 },
    {     0.0f, FIXED_UNIT(-22), FIXED_UNIT(48),      0 },
    {     0.0f, FIXED_UNIT(-30), FIXED_UNIT(48),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199160_6D97E0[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-26), FIXED_UNIT(73),      0 },
    {     0.0f, FIXED_UNIT(-24), FIXED_UNIT(79),      0 },
    {     0.0f, FIXED_UNIT(-26), FIXED_UNIT(72),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199190_6D9810[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-41), FIXED_UNIT(83),      0 },
    {     0.0f, FIXED_UNIT(-41), FIXED_UNIT(88),      0 },
    {     0.0f, FIXED_UNIT(-39), FIXED_UNIT(81),      0 },
};

UnkStruct_func_801960BC_6D673C D_801991C0_6D9840[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-56), FIXED_UNIT(67),      0 },
    {     0.0f, FIXED_UNIT(-58), FIXED_UNIT(75),      0 },
    {     0.0f, FIXED_UNIT(-55), FIXED_UNIT(69),      0 },
};

UnkStruct_func_801960BC_6D673C D_801991F0_6D9870[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(-63), FIXED_UNIT(52),      0 },
    {     0.0f, FIXED_UNIT(-68), FIXED_UNIT(58),      0 },
    {     0.0f, FIXED_UNIT(-62), FIXED_UNIT(53),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199220_6D98A0[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(58), FIXED_UNIT(35),      0 },
    {     0.0f, FIXED_UNIT(54), FIXED_UNIT(42),      0 },
    {     0.0f, FIXED_UNIT(58), FIXED_UNIT(38),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199250_6D98D0[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(72), FIXED_UNIT(52),      0 },
    {     0.0f, FIXED_UNIT(72), FIXED_UNIT(59),      0 },
    {     0.0f, FIXED_UNIT(72), FIXED_UNIT(53),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199280_6D9900[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(86), FIXED_UNIT(54),      0 },
    {     0.0f, FIXED_UNIT(87), FIXED_UNIT(62),      0 },
    {     0.0f, FIXED_UNIT(84), FIXED_UNIT(53),      0 },
};

UnkStruct_func_801960BC_6D673C D_801992B0_6D9930[] = {
//    rotation               x               y  unk_0C
    {     0.0f, FIXED_UNIT(96), FIXED_UNIT(48),      0 },
    {     0.0f, FIXED_UNIT(98), FIXED_UNIT(56),      0 },
    {     0.0f, FIXED_UNIT(92), FIXED_UNIT(50),      0 },
};

UnkStruct_func_801960BC_6D673C D_801992E0_6D9960[] = {
//    rotation                x               y  unk_0C
    {     0.0f, FIXED_UNIT(104), FIXED_UNIT(26),      0 },
    {     0.0f, FIXED_UNIT(109), FIXED_UNIT(30),      0 },
    {     0.0f, FIXED_UNIT(101), FIXED_UNIT(30),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199310_6D9990[] = {
//    rotation                x                y  unk_0C
    {     4.0f, FIXED_UNIT(-19), FIXED_UNIT(-25),      0 },
    {   -28.0f, FIXED_UNIT(-30), FIXED_UNIT(-17),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199330_6D99B0[] = {
//    rotation               x               y  unk_0C
    {    26.0f, FIXED_UNIT(18), FIXED_UNIT(22),      0 },
    {   -27.0f, FIXED_UNIT(18),  FIXED_UNIT(8),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199350_6D99D0[] = {
//    rotation                x                y  unk_0C
    {    53.0f, FIXED_UNIT(-10), FIXED_UNIT(-17),      0 },
    {   -24.0f, FIXED_UNIT(-23),  FIXED_UNIT(19),      0 },
};

UnkStruct_func_801960BC_6D673C D_80199370_6D99F0[] = {
//    rotation               x                y  unk_0C
    {     0.0f, FIXED_UNIT(-4),   FIXED_UNIT(9),      0 },
    {     0.0f, FIXED_UNIT(-1), FIXED_UNIT(-34),      0 },
};

IntroActorMotion D_80199390_6D9A10[] = {
//    graphic  child_graphic  pos_x  pos_y  target_x  target_y
    {       0,             0,  -148,   124,      -79,       53 },
    {       0,             0,   119,  -130,       69,      -47 },
    {       0,             0,   -35,  -128,      -55,      -42 },
    {       0,             0,    37,   147,      128,       48 },
};

IntroActorMotion D_801993C0_6D9A40[] = {
//    graphic  child_graphic  pos_x  pos_y  target_x  target_y
    {  0x1804,             0,    44,    22,       75,       57 },
    {  0x1806,             0,   -46,   -22,     -102,      -24 },
    {  0x1808,        0x180A,   -35,    23,      -67,       68 },
    {  0x1806,             0,    37,   -64,       75,      -64 },
};

s16 D_801993F0_6D9A70[] = {
//  graphic timer
    0x6870, 5,
    0x686F, 5,
    0x686E, 5,
    0x686D, 5,
    0x686C, 5,
    0x686B, 5,
    0x6860, 2,
    0x6861, 2,
    0x6862, 2,
    0x6863, 2,
    0x6864, 2,
    0x6865, 2,
    0x6866, 2,
    0x6867, 2,
    0x6868, 2,
    0x6869, 2,
    0x686A, 2,
    0,      0,
};

s16 D_80199438_6D9AB8[] = {
//  graphic timer
    0x6876, 5,
    0x6875, 5,
    0x6874, 5,
    0x6873, 5,
    0x6872, 5,
    0x6871, 5,
    0x685F, 2,
    0x685E, 2,
    0x685D, 2,
    0x6818, 2,
    0x6817, 2,
    0x6816, 2,
    0x6815, 2,
    0x6814, 2,
    0x6813, 2,
    0,      0,
};

void func_80194334_6D49B4(u16 actor_index, s16 pos_y);

// Intro actor setup helpers
// The controller uses fixed actor slots for the main portraits, attached sprite parts, screen fades, particles, and effects
void func_80192100_6D2780(u16 parent_actor, u16 actor_index, u16 actor_type, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    gActors[actor_index].actorType = actor_type;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].graphicIndex = graphic_index;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].posZ.whole = pos_z;
    gActors[actor_index].stateLower = gActors[parent_actor].stateLower;
}

void func_801921C8_6D2848(u16 arg0, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, ACTORTYPE_OVL0_INTRO_2, graphic_index, pos_x, pos_y, pos_z);
}

void func_80192224_6D28A4(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(parent_index, actor_index, ACTORTYPE_OVL0_INTRO_3, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].posX.whole = gActors[parent_index].posX.whole + pos_x;
    gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + pos_y;
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + pos_z;
    gActors[actor_index].var_158 = TO_FIXED(pos_x);
    gActors[actor_index].var_15C = TO_FIXED(pos_y);
    gActors[actor_index].var_154 = parent_index;
    gActors[actor_index].var_160 = pos_z;
}

void func_801922F4_6D2974(u16 arg0, u16 arg1, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, arg1, ACTORTYPE_OVL0_INTRO_4, graphic_index, pos_x, pos_y, pos_z);
}

void func_80192350_6D29D0(u16 arg0, u16 arg1, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, arg1, ACTORTYPE_OVL0_INTRO_1, graphic_index, pos_x, pos_y, pos_z);
}

void func_801923AC_6D2A2C(u16 arg0, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, ACTORTYPE_OVL0_INTRO_6, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
}

void func_80192438_6D2AB8(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192224_6D28A4(parent_index, actor_index, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].actorType = ACTORTYPE_OVL0_INTRO_7;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
}

void func_801924CC_6D2B4C(u16 arg0, u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, ACTORTYPE_OVL0_INTRO_8, 0, pos_x, pos_y, pos_z);
}

// Particles used during the orange-gradient clancer-rise scene?
void func_80192528_6D2BA8(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x51, 0x59);

    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL0_INTRO_9;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = Rand() - 0x80;
        gActors[new_actor_index].posY.whole = (Rand() * 0.125) + 16.0;
        gActors[new_actor_index].posZ.whole = -gActors[new_actor_index].posY.whole;
        if (Rand() & 1) {
            gActors[new_actor_index].var_110 = 256.0f;
        }
        else {
            gActors[new_actor_index].var_110 = 0.0f;
        }

        gActors[new_actor_index].var_0D8 = 0;
        gActors[new_actor_index].var_154 = gActors[new_actor_index].posZ.whole;
        gActors[new_actor_index].unk_170 = gActors[new_actor_index].posY.whole;
    }
}

// linear interpolate (lerp) float values
f32 Intro_LerpF32(f32 arg0, f32 arg1, f32* arg2) {
    f32 temp_f2 = *arg2;
    if (temp_f2 == 0.0f) {
        return arg1;
    }

    return ((arg1 - arg0) / temp_f2) + arg0;
}

// linear interpolate (lerp) integer values
s32 Intro_LerpS32(s32 arg0, s32 arg1, f32* arg2) {
    return Intro_LerpF32(arg0, arg1, arg2);
}

f32 func_801926E0_6D2D60(f32 arg0, f32 arg1, f32 arg2, u16 arg3) {
    f32 temp_f2 = (arg1 - arg0) / arg3;

    if (temp_f2 < 0.0f) {
        if (temp_f2 < -arg2) {
            return arg0 - arg2;
        }

        return arg0 + temp_f2;
    }

    if (arg2 < temp_f2) {
        return arg0 + arg2;
    }

    return arg0 - temp_f2;
}

s32 func_80192778_6D2DF8(s32 arg0, s32 arg1, s32 arg2, u16 arg3) {
    s32 temp_v1 = (arg1 - arg0) / arg3;

    if (temp_v1 < 0) {
        if (temp_v1 < -arg2) {
            return arg0 - arg2;
        }

        return arg0 + temp_v1;
    }

    if (arg2 < temp_v1) {
        return arg0 + arg2;
    }

    return arg0 - temp_v1;
}

f32 func_801927F8_6D2E78(u16 actor_index, f32 arg1, u16 arg2) {
    s32 velocity_x = gActors[actor_index].velocityX.raw;
    s32 velocity_y = gActors[actor_index].velocityY.raw;
    s32 temp_v0 = func_8008412C(actor_index, 1.0f, arg1, arg2);

    gActors[actor_index].unk_11C = FROM_FIXED((f64)gActors[actor_index].velocityY.raw);
    gActors[actor_index].velocityX.raw = velocity_x;
    gActors[actor_index].velocityY.raw = velocity_y;
    return FROM_FIXED((f64)(f32)temp_v0);
}

f32 func_801928B8_6D2F38(u16 arg0, f32 arg1, u16 arg2) {
    f32 ret = func_801927F8_6D2E78(arg0, arg1, arg2);

    gActors[arg0].unk_11C = 0.0f;
    return -ret;
}

// Advance the shared intro timeline actors together.
void func_80192920_6D2FA0(u16 actor_state) {
    gActors[0x30].state = actor_state;
    gActors[0x31].state = actor_state;
    gActors[0x32].state = actor_state;
}

void func_8019293C_6D2FBC(u16 actor_index) {
    u16 new_actor_index = 0x38;
    u16 index;

    for (index = 0; index < ARRAYLENGTH(D_80198DE0_6D9460); index++) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL0_INTRO_4;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
        gActors[new_actor_index].dlist_17C = (Gfx*)D_800D74A0[12];
        gActors[new_actor_index].stateLower = 0x14;
        gActors[new_actor_index].scaleX = D_80198DE0_6D9460[index].scale;
        gActors[new_actor_index].scaleY = D_80198DE0_6D9460[index].scale;
        gActors[new_actor_index].unk_12C = D_80198DE0_6D9460[index].scale;
        gActors[new_actor_index].posX.whole = D_80198DE0_6D9460[index].pos_x;
        gActors[new_actor_index].posY.whole = D_80198DE0_6D9460[index].pos_y;
        gActors[new_actor_index].velocityX.raw = D_80198DE0_6D9460[index].vel_x;
        gActors[new_actor_index].velocityY.raw = D_80198DE0_6D9460[index].vel_y * 1.4;
        gActors[new_actor_index].velocityZ.raw = D_80198DE0_6D9460[index].vel_z;
        new_actor_index++;
    }
}

void func_80192A98_6D3118(u16 actor_index) {
    Actor_ClearRange(0x31, 0x8F);
    gIsPlayerInactive = FALSE;
    gMarinaAnim.anim_s32 = MARINAANIM_4;
}

// Main opening cinematic timeline, stateLower advances through the visible beats
void func_80192AD0_6D3150(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    // Bootstrap the intro overlay after the logo fades
    case 0:
        func_80192350_6D29D0(actor_index, 0x8F, GINDEX_SOLIDSQUARE, 0, 0, 0x10);
        func_80192920_6D2FA0(3);
        D_80199B30_6DA1B0 = 0x30;
        break;
    // Blue gradient opens with Marina running in from the right
    case 3:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x800, 0xD0, 0, 0xA);
            break;
        case 1:
            break;
        }

        if (gActors[0x33].stateUpper >= 6) {
            func_80192920_6D2FA0(4);
        }
        break;
    // Marina lands as a larger portrait with separate hand/wrist parts
    case 4:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].var_150 = 0xA;
            // fallthrough
        case 1:
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].stateUpper++;
                func_801921C8_6D2848(actor_index, 0x33, 0x1800, 0, 0xE8, 0xA);
                func_80192224_6D28A4(0x33, 0x34, 0x1802, 0x10, 0x76, 1);
                func_80192224_6D28A4(0x33, 0x35, 0x1804, -0x52, 0x3B, 2);
                func_80192224_6D28A4(0x33, 0x36, 0x1806, 0x51, 0x3B, 2);
            }
            break;
        case 2:
            if (gActors[0x33].stateUpper >= 3) {
                func_80192920_6D2FA0(5);
            }
            break;
        }
        break;

    // Theo appearing
    case 5:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].var_150 = 8;
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
                func_801921C8_6D2848(actor_index, 0x33, 0x1808, 0x20, -0x40, 0xA);
                gActors[0x34].flags = ACTOR_FLAG_NONE;
                gActors[0x35].flags = ACTOR_FLAG_NONE;
                gActors[0x36].flags = ACTOR_FLAG_NONE;
                gActors[actor_index].var_150 = 4;
            }
            break;
        case 2:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
                func_801921C8_6D2848(actor_index, 0x33, 0x800, 0x20, -0x57, 0xA);
                Sound_PlaySfx(SFX_BLING); // shock/sparkle
                gActors[actor_index].var_150 = 0x28;
            }
            break;
        case 3:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 4:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 4) {
            func_80192920_6D2FA0(6);
        }
        break;

    // Theo fingers and shocked expression
    case 6:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQUARE, 0, 0, 0x10);
            gActors[0x33].stateLower = gActors[actor_index].stateLower;
            gActors[0x33].stateUpper = 0;
            func_80192224_6D28A4(0x33, 0x34, 0x180A, -0x1F, 0x69, 1);
            func_80192224_6D28A4(0x33, 0x35, 0x180C, -0x5A, 0x8F, 1);
            func_801922F4_6D2974(actor_index, 0x37, 0x1000, -0x18, -0x36, -2);
            func_80192438_6D2AB8(0x37, 0x38, 0x180E, -0x1A, 0x28, 1);
            func_80192438_6D2AB8(0x37, 0x39, 0x1810, -0x1A, 0x46, 1);
            func_80192438_6D2AB8(0x37, 0x3A, 0x1812, -0x29, 0x4C, 1);
            func_80192438_6D2AB8(0x37, 0x3B, 0x1814, -0x38, 0x3F, 1);
            func_80192438_6D2AB8(0x37, 0x3C, 0x1816, -0x41, 0x2E, 1);
            func_80192438_6D2AB8(0x37, 0x3D, 0x1818, 0x37, 0x20, 1);
            func_80192438_6D2AB8(0x37, 0x3E, 0x181A, 0x4A, 0x2F, 1);
            func_80192438_6D2AB8(0x37, 0x3F, 0x181C, 0x59, 0x32, 1);
            func_80192438_6D2AB8(0x37, 0x40, 0x181E, 0x61, 0x29, 1);
            func_80192438_6D2AB8(0x37, 0x41, 0x1820, 0x6B, 0x14, 1);
            break;

        case 1:
            break;
        }

        if (gActors[0x32].stateUpper >= 3) {
            func_80192920_6D2FA0(7);
        }
        break;

    // Punching pose and Theo gag transition into the villain impact cut-ins
    case 7:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x1822, 0, 0xC8, 0xA);
            func_80192224_6D28A4(0x33, 0x34, 0x1824, -0xC, 0xA, 1);
            func_80192224_6D28A4(0x33, 0x35, 0x1826, 2, 0x12, 2);
            func_801922F4_6D2974(actor_index, 0x37, 0x182A, 0x60, 0x90, 0);
            gActors[0x38].flags = ACTOR_FLAG_NONE;
            gActors[0x39].flags = ACTOR_FLAG_NONE;
            gActors[0x3A].flags = ACTOR_FLAG_NONE;
            gActors[0x3B].flags = ACTOR_FLAG_NONE;
            gActors[0x3C].flags = ACTOR_FLAG_NONE;
            gActors[0x3D].flags = ACTOR_FLAG_NONE;
            gActors[0x3E].flags = ACTOR_FLAG_NONE;
            gActors[0x3F].flags = ACTOR_FLAG_NONE;
            gActors[0x40].flags = ACTOR_FLAG_NONE;
            gActors[0x41].flags = ACTOR_FLAG_NONE;
            // fallthrough
        case 1:
            if (gActors[0x37].stateUpper >= 7) {
                gActors[actor_index].stateUpper++;
                gActors[0x33].flags = ACTOR_FLAG_NONE;
                gActors[0x34].flags = ACTOR_FLAG_NONE;
                gActors[0x35].flags = ACTOR_FLAG_NONE;
                gActors[0x37].flags = ACTOR_FLAG_NONE;
                func_80026E60(0x51);
            }
            break;
        case 2:
            gActors[actor_index].stateUpper++;
            func_80026F2C(0x51);
            break;
        case 3:
            func_80192920_6D2FA0(8);
            func_801921C8_6D2848(actor_index, 0x33, 0x800, 0, 0, 0);
            func_801922F4_6D2974(actor_index, 0x37, 0x1000, 0x1F, -0x1D, 2);
            func_80192350_6D29D0(actor_index, 0x32, 0x802, -3, 3, 1);
            gActors[0x34].flags = ACTOR_FLAG_NONE;
            gActors[0x35].flags = ACTOR_FLAG_NONE;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            gActors[0x52].flags = ACTOR_FLAG_NONE;
            func_80027018(0x51);
            break;
        }
        break;

    // Lunar cut-in after the rotating oval impact
    case 8:
        if (gActors[0x33].stateUpper >= 3) {
            func_80192920_6D2FA0(9);
            func_801921C8_6D2848(actor_index, 0x33, 0x1002, 0, 0, 0);
            gActors[0x37].flags = ACTOR_FLAG_NONE;
            func_80192350_6D29D0(actor_index, 0x32, 0x1806, -3, 3, 1);
        }
        break;
    // Merco slash cut-in
    case 9:
        if (gActors[0x33].stateUpper >= 3) {
            func_80192920_6D2FA0(0xA);
            func_801921C8_6D2848(actor_index, 0x33, 0x1004, 0, 0, 0);
            func_801922F4_6D2974(actor_index, 0x37, 0, 0, 0, 2);
            func_80192350_6D29D0(actor_index, 0x32, 0x1800, -3, 3, 1);
        }
        break;
    // Tarus red impact cut-in, then spawn the Beastector group card and the red gradient background
    case 10:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            if (gActors[0x33].stateUpper >= 3) {
                gActors[actor_index].stateUpper++;
                gActors[0x33].flags = ACTOR_FLAG_NONE;
                gActors[0x37].flags = ACTOR_FLAG_NONE;
                gActors[0x32].flags = ACTOR_FLAG_NONE;
                func_80027018(0x54);
            }
            break;
        case 1:
            func_80192920_6D2FA0(0xB);
            func_801921C8_6D2848(actor_index, 0x33, 0x1800, 0, 0, 0);
            gActors[0x37].flags = ACTOR_FLAG_NONE;
            func_80026F2C(0);
            break;
        }
        break;

    // Hold while the Beastector group scales down after the cut-ins
    case 11:
        if (gActors[0x33].stateUpper >= 2) {
            func_80192920_6D2FA0(0xC);
        }
        break;
    // Leo and the clancer commander appear on the settled group card, with the twinkle, hand parts, and laugh
    case 12:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801922F4_6D2974(actor_index, 0x37, 0x1802, 0x10, -0x16, 8);
            // fallthrough
        case 1:
            if (gActors[0x37].stateUpper >= 2) {
                gActors[actor_index].stateUpper++;
                func_801923AC_6D2A2C(actor_index, 0x50, 0x1802, 0, 0, -8);
                func_80192438_6D2AB8(0x37, 0x51, 0x1D6, 0xD, 0x10, 1);
                gActors[actor_index].var_150 = 0x3C;
            }
            break;
        case 2:
            if (gActors[actor_index].var_150-- <= 0) {
                ++gActors[actor_index].stateUpper;
                gActors[actor_index].var_150 = 0x78;
                Sound_PlaySfx(SFX_LEO_LAUGH);
            }
            break;
        case 3:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
                gActors[0x32].stateUpper++;
            }
            break;
        case 4:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 4) {
            func_80192920_6D2FA0(0xD);
        }
        break;

    // Calina/smoke transition clears the villain portrait scene into white
    case 13:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801924CC_6D2B4C(actor_index, 0x60, 0, -0x20, 0x10);
            gActors[0x50].stateBytes[1] = 0xD;
            gActors[0x37].stateLower = gActors[actor_index].stateLower;
            gActors[0x37].stateUpper = 0;
            gActors[0x33].stateLower = gActors[actor_index].stateLower;
            gActors[0x33].stateUpper = 0;
            func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQUARE, 0, 0, 0x11);
            break;
        case 1:
            if (gActors[0x32].stateUpper >= 3) {
                gActors[actor_index].stateUpper++;
                gActors[0x60].flags = ACTOR_FLAG_NONE;
                func_80081720(0x60, D_800E5E48, 3);
                gActors[0x50].flags = ACTOR_FLAG_NONE;
                gActors[0x37].flags = ACTOR_FLAG_NONE;
                gActors[0x33].flags = ACTOR_FLAG_NONE;
                func_80026E60(0x52);
            }
            break;
        case 2:
            gActors[actor_index].stateUpper++;
            func_80026F2C(0x52);
            break;
        case 3:
            func_80192920_6D2FA0(0xE);
            func_80027018(0x52);
            break;
        }
        break;

    // Orange gradient with clancers rising
    case 14:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].var_158 = 0xF0;
            // fallthrough
        case 1:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].var_150 = Rand() & 0x1F;
            break;
        case 2:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper--;
                func_80192528_6D2BA8(actor_index);
                Sound_PlaySfxAtActor2(SFX_CLANCERDEATH, actor_index);
            }
            break;
        }

        if (gActors[actor_index].var_158-- <= 0) {
            func_80192920_6D2FA0(0xF);
        }
        break;

    // Marina and Theo portraits slide in
    case 15:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x800, 0xCC, -0x1C, 0xA);
            func_801922F4_6D2974(actor_index, 0x37, 0x804, -0xDD, -4, 8);
            func_80192224_6D28A4(0x33, 0x34, 0x802, 0, 0, 1);
            func_80192224_6D28A4(0x37, 0x35, 0x806, 0, 0, 1);
            func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQUARE, 0, 0, 0);
            break;
        case 1:
            break;
        }

        if (gActors[0x32].stateUpper >= 3) {
            gActors[0x37].flags = ACTOR_FLAG_NONE;
            gActors[0x34].flags = ACTOR_FLAG_NONE;
            gActors[0x35].flags = ACTOR_FLAG_NONE;
            Actor_ClearRange(0x51, 0x59);
            func_80192920_6D2FA0(0x10);
        }
        break;

    // Marina holds the clancer toward the camera
    case 16:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x1000, 0x18, 0, 0x10);
            func_80192224_6D28A4(0x33, 0x34, 0x1002, -8, 6, -0x10);
            func_80192224_6D28A4(0x33, 0x50, 0x180C, -0x19, -3, -8);
            func_80192438_6D2AB8(0x50, 0x51, 0x180E, -0x17, -0x16, 2);
            func_80192438_6D2AB8(0x50, 0x52, 0x1810, 0xF, 0x14, -2);
            func_80192438_6D2AB8(0x50, 0x53, 0x1812, -0x1D, 7, -2);
            func_80192438_6D2AB8(0x50, 0x54, 0x1814, -1, -0x17, -2);
            Sound_PlaySfx(SFX_CLANCER_OW_009D); // clancer throw?
            gActors[actor_index].var_150 = 0x1E;
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 2) {
            func_80192920_6D2FA0(0x11);
        }
        break;

    // Hold the throw frame and pass the state to the separated throw pieces
    case 17:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x1004, 0x18, 0, 0x10);
            func_80192224_6D28A4(0x33, 0x34, 0x1006, 0xA, -6, -0x10);
            gActors[0x34].stateLower = gActors[actor_index].stateLower;
            gActors[0x50].stateBytes[1] = gActors[actor_index].stateLower;
            gActors[0x51].stateLower = gActors[actor_index].stateLower;
            gActors[0x52].stateLower = gActors[actor_index].stateLower;
            gActors[0x53].stateLower = gActors[actor_index].stateLower;
            gActors[0x54].stateLower = gActors[actor_index].stateLower;
            gActors[actor_index].var_150 = 0xA;
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 2) {
            func_80192920_6D2FA0(0x12);
        }
        break;

    // Rear-view clancer throw
    case 18:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            func_801921C8_6D2848(actor_index, 0x33, 0x1008, 0x18, 0, 0x10);
            gActors[0x34].flags = ACTOR_FLAG_NONE;
            func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQUARE, 0, 0, 0x100);
            func_801923AC_6D2A2C(actor_index, 0x50, 0x1800, 0, 0, 0x20);
            func_80192438_6D2AB8(0x50, 0x51, 0x1802, -0x15, 0x22, -4);
            func_80192438_6D2AB8(0x50, 0x52, 0x1804, -0x4D, 0xA, -2);
            func_80192438_6D2AB8(0x50, 0x53, 0x1806, 0x52, 7, -2);
            func_80192438_6D2AB8(0x50, 0x54, 0x1808, 0xA, -0x44, -6);
            func_80192438_6D2AB8(0x50, 0x55, 0x180A, -0x1F, 0x36, -6);
            Sound_PlaySfx(SFX_MARINA_YELL4);
            Sound_PlaySfx(SFX_013C);
            gActors[actor_index].var_150 = 60;
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        default:
            break;
        }

        if (gActors[0x32].stateUpper >= 3) {
            func_80192920_6D2FA0(0x13);
        }
        break;

    // Rear-view clancer throw 2
    case 19:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[0x33].flags = ACTOR_FLAG_NONE;
            func_801923AC_6D2A2C(actor_index, 0x50, 0x1816, 0, 0, 0x20);
            func_801922F4_6D2974(actor_index, 0x51, 0x1818, -0x94, 0x7C, 0x10);
            func_801922F4_6D2974(actor_index, 0x52, 0x181A, 0x77, -0x82, 0x10);
            func_801922F4_6D2974(actor_index, 0x53, 0x100A, -0x23, -0x80, 0x10);
            func_801922F4_6D2974(actor_index, 0x54, 0x100C, 0x25, 0x93, 0x10);
            gActors[0x55].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].var_150 = 180;
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 2) {
            func_80192920_6D2FA0(0x14);
            func_800270E4(0x15);
        }
        break;

    // Clancer impact
    case 20:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[0x50].flags = ACTOR_FLAG_NONE;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            gActors[0x52].flags = ACTOR_FLAG_NONE;
            gActors[0x53].flags = ACTOR_FLAG_NONE;
            gActors[0x54].flags = ACTOR_FLAG_NONE;
            func_801921C8_6D2848(actor_index, 0x33, 0xD8, 0, 0, 0x28);
            gActors[0x33].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].var_150 = 0xA;
            Sound_PlaySfx(SFX_BOOM_0026);
            // fallthrough
        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        default:
            break;
        }

        if (gActors[actor_index].stateUpper >= 2) {
            func_80192920_6D2FA0(0x15);
        }
        break;

    // boulder actors
    case 21:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[0x38].graphicFlags = 0;
            gActors[actor_index].var_150 = 0x96;
            D_800BE70C = 5;
            func_801922F4_6D2974(actor_index, 0x60, 0, 0x63, 0x2B, -0x18);
            func_801922F4_6D2974(actor_index, 0x61, 0, 0x4E, 0x29, -0x17);
            func_801922F4_6D2974(actor_index, 0x62, 0, 0x36, 0x27, -0x16);
            func_801922F4_6D2974(actor_index, 0x63, 0, 0x1F, 0x24, -0x15);
            func_801922F4_6D2974(actor_index, 0x64, 0, 0xA, 0x25, -0x14);
            func_801922F4_6D2974(actor_index, 0x65, 0, -0x65, 0x20, -0x10);
            func_801922F4_6D2974(actor_index, 0x66, 0, -0x49, 0x27, -0x11);
            func_801922F4_6D2974(actor_index, 0x67, 0, -0x28, 0x29, -0x12);
            func_801922F4_6D2974(actor_index, 0x68, 0, -0x10, 0x25, -0x13);
            gActors[0x60].var_158 = 8;
            gActors[0x61].var_158 = 7;
            gActors[0x62].var_158 = 6;
            gActors[0x63].var_158 = 5;
            gActors[0x64].var_158 = 4;
            gActors[0x66].var_158 = 1;
            gActors[0x67].var_158 = 2;
            gActors[0x68].var_158 = 3;
            gActors[0x65].var_150 = 0x2E;
            gActors[0x66].var_150 = 0x36;
            gActors[0x65].var_158 = 0;
            gActors[0x67].var_150 = 0x3E;
            gActors[0x68].var_150 = 0x46;
            gActors[0x64].var_150 = 0x4E;
            gActors[0x63].var_150 = 0x56;
            gActors[0x62].var_150 = 0x5E;
            gActors[0x61].var_150 = 0x66;
            gActors[0x60].var_150 = 0x6E;
            break;

        case 1:
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].stateUpper++;
                gActors[0x8F].stateUpper++;
            }
            break;
        case 2:
            if (gActors[0x8F].stateUpper >= 3) {
                gActors[0x60].flags = ACTOR_FLAG_NONE;
                gActors[0x61].flags = ACTOR_FLAG_NONE;
                gActors[0x62].flags = ACTOR_FLAG_NONE;
                gActors[0x63].flags = ACTOR_FLAG_NONE;
                gActors[0x64].flags = ACTOR_FLAG_NONE;
                gActors[0x65].flags = ACTOR_FLAG_NONE;
                gActors[0x66].flags = ACTOR_FLAG_NONE;
                gActors[0x67].flags = ACTOR_FLAG_NONE;
                gActors[0x68].flags = ACTOR_FLAG_NONE;
                gActors[0x32].flags = ACTOR_FLAG_NONE;
                func_80192920_6D2FA0(0x16);
                func_80192A98_6D3118(actor_index);
            }
            break;
        }
        break;

    // Hand off to the title-screen game state
    case 22:
        gGameState = GAMESTATE_TITLESCREEN;
        gGameStateSubState = 0x10;
        break;
    }

    if ((gButtonPress & gButton_Start) && (gActors[0x8F].stateUpper == 1)) {
        gActors[0x8F].stateUpper = 2;
    }
}

// Start fadeout/flash
void func_8019429C_6D491C(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].colorR = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorB = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -0x100;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].palette_18C = D_800D85A8;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

// Start one half of the vertically scrolling blue background
void func_80194334_6D49B4(u16 actor_index, s16 pos_y) {
    u16 temp_actor_index;

    gActors[actor_index].actorType = ACTORTYPE_OVL0_INTRO_6;
    temp_actor_index = actor_index;
    Actor_Initialize(actor_index);
    gActors[temp_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[temp_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[temp_actor_index].graphicIndex = 0x2800;
    gActors[temp_actor_index].posX.whole = 0;
    gActors[temp_actor_index].posY.whole = pos_y;
    gActors[temp_actor_index].posZ.whole = -0xFF;
    gActors[temp_actor_index].unk_188 = 0;
    gActors[temp_actor_index].scaleX = 2.0f;
    gActors[temp_actor_index].scaleY = 2.0f;
    gActors[temp_actor_index].stateLower = gActors[0x31].stateLower;
}

void func_801943E4_6D4A64(u16 arg0) {
    gActors[arg0].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4;
    gActors[arg0].flags = ACTOR_FLAG_FREEZE_POS |ACTOR_FLAG_ENABLED;
    gActors[arg0].colorA = 0xFF;
    gActors[arg0].posX.whole = -2;
    gActors[arg0].posY.whole = 3;
    gActors[arg0].posZ.whole = -0xFF;
    gActors[arg0].unk_188 = 0;
}

// Background and gradient controller
void func_8019444C_6D4ACC(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
    case 1:
    case 2:
        break;
    case 3:
    case 23:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper += 1;
            func_801943E4_6D4A64(actor_index);
            gActors[actor_index].graphicIndex = 0x2802;
        }
        break;
    case 7:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper += 1;
            func_80194334_6D49B4(0x51, 0xC0);
            func_80194334_6D49B4(0x52, 0);
            break;
        case 1:
            break;
        }
        break;
    case 8:
    case 9:
    case 10:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper += 1;
            func_8019429C_6D491C(actor_index);
            break;
        case 1:
            break;
        }
        break;
    case 11:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper += 1;
            func_801943E4_6D4A64(actor_index);
            gActors[actor_index].graphicIndex = 0x2804;
        }
        break;
    case 19:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper += 1;
            func_801943E4_6D4A64(actor_index);
            gActors[actor_index].graphicIndex = 0x280C;
        }
        break;
    case 14:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper += 1;
            func_801943E4_6D4A64(actor_index);
            gActors[actor_index].graphicIndex = 0x2806;
        }
        break;
    }
}

void func_801945EC_6D4C6C(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].colorR = 0xFF;
    gActors[actor_index].colorG = 0xFF;
    gActors[actor_index].colorB = 0xFF;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x7F;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

// Copy one palette row into the active palette for the slash/impact flash
void func_8019466C_6D4CEC(u16 arg0) {
    u16 jndex;
    u32 index = arg0;
    u16* src;
    u16* dst;

    if (index != 0) {
        src = &((u16*)0x8033B808)[index * 0x10];
        dst = (u16*)0x8033B808;
        for (jndex = 0; jndex < 0x10; jndex++) {
            *dst++ = *src++;
        }
    }
}

// fade/flash controller
// These states line up with logo fade-outs, Theo/Calina whiteouts, villain impact flashes, and the final title fade.
void func_801946BC_6D4D3C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    switch (actor->stateLower) {
    case 0:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            func_801945EC_6D4C6C(actor_index);
            actor->posZ.whole = 0x80;
            actor->colorA = 0;
            actor->unk_114 = 10.0f;
            break;
        case 1:
            break;
        case 2:
            actor->colorA = Intro_LerpS32(gActors[actor_index].colorA, 0xFF, &gActors[actor_index].unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->stateUpper++;
                actor->colorA = 0xFF;
                gActors[0x30].stateLower = 0x16;
                func_80192A98_6D3118(actor_index);
                return;
            }
            break;
        case 3:
            return;
        }
        break;

    case 6:
    case 15:
    case 21:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            func_801945EC_6D4C6C(actor_index);
            actor->colorA = 0;
            actor->unk_114 = 20.0f;
            break;
        case 1:
            break;
        case 2:
            actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->stateUpper++;
                actor->colorA = 0xFF;
            }
            break;
        case 3:
            return;
        }
        break;

    case 13:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            func_801945EC_6D4C6C(actor_index);
            actor->colorA = 0;
            actor->unk_114 = 60.0f;
            break;
        case 1:
            break;
        case 2:
            actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->stateUpper++;
                actor->colorA = 0xFF;
            }
            break;
        case 3:
            return;
        }
        break;

    case 7:
    case 14:
    case 16:
    case 22:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            func_801945EC_6D4C6C(actor_index);
            actor->colorA = 0xFF;
            actor->unk_114 = 30.0f;
            // fallthrough
        case 1:
            actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->flags = ACTOR_FLAG_NONE;
                actor->stateUpper++;
            }
            break;
        case 2:
            return;
        }
        break;

    case 8:
    case 10:
        switch (actor->stateUpper) {
        case 0:
            actor->unk_114 = 20.0f;
            actor->stateUpper++;
            if (actor->stateLower == 8) {
                Sound_PlaySfx(SFX_007A); // lunar impact?
            }
            else {
                Sound_PlaySfx(SFX_005B); // tarus impact?
            }
            // fallthrough
        case 1:
            actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->flags = ACTOR_FLAG_NONE;
                actor->stateUpper++;
            }
            break;
        case 2:
            return;
        }
        break;

    case 9:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            actor->unk_114 = 20.0f;
            actor->var_150 = 2;
            actor->flags |= 0x200;
            actor->unk_18C = 0x8033B808;
            Sound_PlaySfx(SFX_0039); // merco slash?
            // fallthrough
        case 1:
            actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->unk_114 = 0.0f;
            }

            func_8019466C_6D4CEC(actor->var_150 >> 1);
            if (actor->var_150++ >= 0x2D) {
                actor->flags = ACTOR_FLAG_NONE;
                actor->stateUpper++;
            }
            break;
        case 2:
            return;
        }
        break;

    case 18:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            func_8019429C_6D491C(actor_index);
            actor->posZ.whole = 0x100;
            actor->colorA = 0;
            actor->unk_114 = 40.0f;
            // fallthrough
        case 1:
            if (actor->unk_114-- <= 0.0f) {
                actor->stateUpper++;
                actor->unk_114 = 20.0f;
            }
            break;
        case 2:
            actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->stateUpper++;
                actor->colorA = 0xFF;
            }
            break;
        case 3:
            return;
        }
        break;

    case 19:
        switch (actor->stateUpper) {
        case 0:
            actor->stateUpper++;
            actor->unk_114 = 20.0f;
            break;
        case 1:
            actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
            if (actor->unk_114-- <= 0.0f) {
                actor->flags = ACTOR_FLAG_NONE;
                actor->stateUpper++;
            }
            break;
        case 2:
            return;
        }
        break;
    }
}

// Sparkle/smoke/impact particle spawners used by the portrait actors
void func_80194D2C_6D53AC(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 0x10, 1);

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = 1;
        gActors[new_actor_index].flags = 0x23;
        gActors[new_actor_index].graphicIndex = GINDEX_IMPACTEFFECTA;
        gActors[new_actor_index].scaleX = 0.5f;
        gActors[new_actor_index].scaleY = 0.5f;
        gActors[new_actor_index].unk_114 = -0.01f;
        gActors[new_actor_index].unk_11C = -0.002f;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -1;
    }
}

void func_80194E0C_6D548C(u16 actor_index) {
    u16 new_actor_index;

    if ((gActiveFrames & 3) == 0) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            GINDEX_IMPACTEFFECTA,
            gActors[actor_index].posX.whole - 8,
            gActors[actor_index].posY.whole - 0x10,
            gActors[actor_index].posZ.whole + 1
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = 1;
            gActors[new_actor_index].flags = 0x23;
            gActors[new_actor_index].var_154 = -0xA;
            gActors[new_actor_index].unk_140_f32 = 0.0f;
            gActors[new_actor_index].unk_144 = 4.0f;
            gActors[new_actor_index].unk_148 = 20.0f;
            gActors[new_actor_index].var_110 = 0.06f;
            gActors[new_actor_index].unk_118 = -0.008f;
            gActors[new_actor_index].unk_114 = 0.1f;
            gActors[new_actor_index].unk_11C = -0.01f;
        }
    }
}

void func_80194F1C_6D559C(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = SpawnParticle_Image_90C0_16(
        0x1AA,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole - 0x10,
        gActors[actor_index].posZ.whole + 1
    );
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0;
        gActors[new_actor_index].posZ.whole = 0;
        gActors[new_actor_index].colorA = 0xFE;
        gActors[new_actor_index].var_154 = -0xA;
        gActors[new_actor_index].unk_148 = 20.0f;
        gActors[new_actor_index].var_110 = 0.05f;
        gActors[new_actor_index].unk_114 = 0.05f;
        gActors[new_actor_index].scaleX = 1.0f;
        gActors[new_actor_index].unk_118 = -gActors[new_actor_index].var_110 / gActors[new_actor_index].unk_148;
        gActors[new_actor_index].unk_11C = -gActors[new_actor_index].unk_114 / gActors[new_actor_index].unk_148;
    }
}

void func_80195024_6D56A4(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
        break;
    case 3:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_FLIPPED;
            gActors[actor_index].graphicIndex = 0x5801;
            gActors[actor_index].graphicList = D_80198FC0_6D9640;
            gActors[actor_index].graphicTimer = 1;
            // fall through
        case 1:
            if (gActors[actor_index].graphicTimer == 0) {
                if (gActors[actor_index].graphicIndex == 0x5828) {
                    gActors[actor_index].graphicList = D_80198FC0_6D9640;
                }
                else {
                    gActors[actor_index].graphicList = D_80198FDC_6D965C;
                }

                gActors[actor_index].graphicTimer = 1;
                func_80194D2C_6D53AC(actor_index);
                Sound_PlaySfxAtActor2(SFX_DASH_0027, actor_index);
            }

            gActors[actor_index].posX.whole = Math_ApproachS32(gActors[actor_index].posX.whole, 0, 2);
            if (gActors[actor_index].posX.whole < 0x51) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].graphicList = D_80198FF8_6D9678;
                gActors[actor_index].graphicTimer = 1;
                Sound_PlaySfx(SFX_0034);
            }
            break;

        case 2:
            func_80194E0C_6D548C(actor_index);
            gActors[actor_index].posX.raw = func_80192778_6D2DF8(gActors[actor_index].posX.raw, FIXED_UNIT(-4), FIXED_UNIT(2), 4);
            if (gActors[actor_index].posX.whole <= 0) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].graphicList = D_80199018_6D9698;
                gActors[actor_index].graphicTimer = 1;
            }
            break;
        case 3:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].graphicList = D_8019904C_6D96CC;
                gActors[actor_index].graphicTimer = 1;
                gActors[actor_index].var_150 = 0xA;
            }
            break;
        case 4:
            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].stateUpper++;
                func_80194F1C_6D559C(actor_index);
                Sound_PlaySfx(SFX_DASH_0116);
                gActors[actor_index].var_150 = 0x78;
                gActors[actor_index].var_154 = func_8008412C(actor_index, 1.0f, 176.0f, 0xF0U);
            }
            break;
        case 5:
            gActors[actor_index].posY.whole = Math_ApproachS32(gActors[actor_index].posY.whole, 0x90, 4);
            gActors[actor_index].velocityY.raw -= gActors[actor_index].var_154;
            if ((gActors[actor_index].var_150-- <= 0) || (gActors[actor_index].posY.whole >= 0x90)) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 6:
            break;
        }
        break;

    case 4:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].var_154 = TO_FIXED(func_801928B8_6D2F38(actor_index, -110 - gActors[actor_index].posY.whole, 120));
            gActors[actor_index].var_158 = FIXED_UNIT(-6);
            // fall through
        case 1:
            gActors[actor_index].posY.raw += gActors[actor_index].var_158;
            gActors[actor_index].var_158 -= gActors[actor_index].var_154;
            if ((gActors[actor_index].var_150-- <= 0) || (gActors[actor_index].posY.whole < -0x6D)) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].posY.whole = -0x6E;
                gActors[52].stateUpper++;
                gActors[53].stateUpper++;
                gActors[54].stateUpper++;
                Sound_PlaySfx(SFX_0058);
            }
            break;
        }
        break;

    case 6:
        switch (gActors[actor_index].stateUpper) {
        case 4:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].unk_114 = 60.0f;
            // fall through
        case 1:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 0.6f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].posX.raw = Intro_LerpS32(gActors[actor_index].posX.raw, FIXED_UNIT(-63), &gActors[actor_index].unk_114);
            gActors[actor_index].posY.raw = Intro_LerpS32(gActors[actor_index].posY.raw, FIXED_UNIT(-28), &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 30.0f;
                gActors[52].flags |= ACTOR_FLAG_DRAW;
                gActors[53].flags |= ACTOR_FLAG_DRAW;
                gActors[53].stateUpper++;
                gActors[49].colorR = 0xFF;
                gActors[49].colorB = 0;
                gActors[49].colorG = 0;
            }
            break;

        case 2:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 30.0f;
            }
            break;
        case 3:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[50].stateUpper++;
            }
            break;
        }
        break;

    case 7:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 60.0f;
            Sound_PlaySfx(SFX_MARINA_YELL3);
            Sound_PlaySfx(SFX_013C);
            // fall through
        case 1:
            gActors[actor_index].posY.whole = Intro_LerpS32(gActors[actor_index].posY.whole, -0xC0, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].posY.whole = -0xC0;
                gActors[actor_index].unk_114 = 60.0f;
            }
            break;
        case 2:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 120.0f;
                gActors[actor_index].unk_16C = TO_FIXED(func_801927F8_6D2E78(actor_index, 134.0f, gActors[actor_index].unk_114 * 2));
                gActors[actor_index].unk_168 = TO_FIXED(gActors[actor_index].unk_11C);
            }
            break;
        case 3:
            gActors[actor_index].posY.raw += gActors[actor_index].unk_168;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 60.0f;
            }
            break;
        case 4:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[52].flags |= ACTOR_FLAG_DRAW;
                gActors[53].flags |= ACTOR_FLAG_DRAW;
                gActors[53].stateUpper++;
                gActors[actor_index].unk_114 = 60.0f;
            }
            break;
        case 5:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 6:
            break;
        }
        break;

    case 8:
    case 9:
    case 10:
        switch (gActors[actor_index].stateUpper) {
        case 3:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 20.0f;
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].unk_114 = 60.0f;
            }
            break;
        case 2:
            gActors[actor_index].colorA = Intro_LerpS32(gActors[actor_index].colorA, 0, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }
        break;

    case 11:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
            gActors[actor_index].ptr_180 = 0x8033A2B8;
            gActors[actor_index].palette_18C = D_80199930_6D9FB0;
            gActors[actor_index].scaleY = gActors[actor_index].scaleX = 6.0f;
            Palette_AdjustRgb5551Array((u16 *)0x8033A2B8, D_80199930_6D9FB0, 0x8F, 0, 0, 0);
            gActors[actor_index].unk_114 = 60.0f;
            Sound_PlaySfx(SFX_WOOSH_0099);
            // fall through
        case 1:
            gActors[actor_index].scaleX = func_801926E0_6D2D60(gActors[actor_index].scaleX, 1.0f, 0.2f, 3);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }
        break;

    case 13:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 30.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].palette_180 = D_80199930_6D9FB0;
            }
            break;
        }
        break;
    case 15:
        switch (gActors[actor_index].stateUpper) {
        case 3:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].unk_114 = 26.0f;
            gActors[actor_index].unk_16C = TO_FIXED(func_801927F8_6D2E78(actor_index, -128.0f, gActors[actor_index].unk_114 * 2));
            gActors[actor_index].unk_168 = TO_FIXED(gActors[actor_index].unk_11C);
            break;
        case 1:
            gActors[actor_index].posX.raw += gActors[actor_index].unk_168;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[52].stateUpper++;
                gActors[actor_index].unk_114 = 20.0f;
            }
            break;
        case 2:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[50].stateUpper++;
            }
            break;
        }
        break;

    case 20:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].scaleX = 30.0f;
            gActors[actor_index].scaleY = 20.0f;
            gActors[actor_index].unk_114 = 10.0f;
            // fall through
        case 1:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 0.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = Intro_LerpF32(gActors[actor_index].scaleY, 0.0f, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                func_8019293C_6D2FBC(actor_index);
            }
            break;
        }
        break;
    }

    D_800BE714 = 1;
    gPlayerActor.graphicIndex = gActors[actor_index].graphicIndex;
    gPlayerActor.posX.whole = gActors[actor_index].posX.whole;
    gPlayerActor.posY.whole = gActors[actor_index].posY.whole;
}

// Follow another actor with integer offsets
void func_80195EA0_6D6520(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[gActors[actor_index].var_154].posX.whole + gActors[actor_index].var_158;
    gActors[actor_index].posY.whole = gActors[gActors[actor_index].var_154].posY.whole + gActors[actor_index].var_15C;
    gActors[actor_index].posZ.whole = gActors[gActors[actor_index].var_154].posZ.whole + gActors[actor_index].var_160;
}

// Follow a parent portrait part while inheriting alpha
void func_80195F28_6D65A8(u16 actor_index) {
    u16 parent_index = gActors[actor_index].var_154;

    gActors[actor_index].posX.whole = gActors[parent_index].posX.whole + FROM_FIXED(gActors[actor_index].var_158);
    gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + FROM_FIXED(gActors[actor_index].var_15C);
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + gActors[actor_index].var_160;
    gActors[actor_index].colorA = gActors[parent_index].colorA;
}

// Follow a parent portrait part while inheriting scale
void func_80195FC4_6D6644(u16 actor_index) {
    u16 parent_index = gActors[actor_index].var_154;

    gActors[actor_index].scaleX = gActors[parent_index].scaleX;
    gActors[actor_index].scaleY = gActors[parent_index].scaleY;
    gActors[actor_index].posX.raw = (s32)(gActors[parent_index].posX.raw + (gActors[actor_index].var_158 * gActors[actor_index].scaleX));
    gActors[actor_index].posY.raw = (s32)(gActors[parent_index].posY.raw + (gActors[actor_index].var_15C * gActors[actor_index].scaleY));
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + gActors[actor_index].var_160;
}

void func_801960BC_6D673C(u16 actor_index, UnkStruct_func_801960BC_6D673C* arg1, u16 arg2) {
    Actor* actor = &gActors[actor_index];

    actor->var_158 = (arg1 + arg2)->unk_04;
    actor->var_15C = (arg1 + arg2)->unk_08;
    actor->rotateZ = (arg1 + arg2)->unk_00;
}

void func_8019611C_6D679C(u16 actor_index, UnkStruct_func_801960BC_6D673C* arg1, u16 arg2, f32* arg3) {
    gActors[actor_index].var_158 = Intro_LerpS32(gActors[actor_index].var_158, (arg1 + arg2)->unk_04, arg3);
    gActors[actor_index].var_15C = Intro_LerpS32(gActors[actor_index].var_15C, (arg1 + arg2)->unk_08, arg3);
    gActors[actor_index].rotateZ = Intro_LerpF32(gActors[actor_index].rotateZ, (arg1 + arg2)->unk_00, arg3);
}

// Attached portrait-part animation controller
void func_801961D0_6D6850(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 4:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            break;
        case 1:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
            switch (gActors[actor_index].graphicIndex) {
            case 0x1802:
                gActors[actor_index].unk_164 = (intptr_t)D_80199070_6D96F0;
                break;
            case 0x1804:
                gActors[actor_index].unk_164 = (intptr_t)D_80199090_6D9710;
                break;
            case 0x1806:
                gActors[actor_index].unk_164 = (intptr_t)D_801990B0_6D9730;
                break;
            }

            func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
            gActors[actor_index].unk_114 = 5.0f;
            // fallthrough
        case 2:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 20.0f;
            }
            break;
        case 3:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                if (gActors[actor_index].graphicIndex == 0x1802) {
                    gActors[0x33].stateUpper++;
                }
            }
            break;
        case 4:
            break;
        }

        func_80195F28_6D65A8(actor_index);
        break;

    case 6:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            // fallthrough
        case 1:
        case 3:
            break;
        case 2:
            if (gActiveFrames & 2) {
                gActors[actor_index].flags |= 1;
            }
            else {
                gActors[actor_index].flags &= ~1;
            }

            if (gActors[actor_index].var_150++ >= 0x1E) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].flags |= 1;
            }
            break;
        }

        func_80195FC4_6D6644(actor_index);
        break;

    case 7:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            break;
        case 1:
        case 4:
            break;
        case 2:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 30.0f;
            gActors[actor_index].unk_16C = (s32)TO_FIXED(func_801927F8_6D2E78(actor_index, -16.0f, 0x3C));
            gActors[actor_index].unk_168 = (s32)TO_FIXED(gActors[actor_index].unk_11C);
            break;
        case 3:
            gActors[actor_index].var_15C += gActors[actor_index].unk_168;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }

        func_80195FC4_6D6644(actor_index);
        break;

    case 12:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags |= 1;
            // fallthrough
        case 1:
            if (gActiveFrames & 0x10) {
                gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.5f, 0.1f);
            }
            else {
                gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0, 0.1f);
            }

            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            break;
        }

        func_80195F28_6D65A8(actor_index);
        break;

    case 15:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
            if (gActors[actor_index].graphicIndex == 0x802) {
                gActors[actor_index].unk_164 = (intptr_t)D_801990D0_6D9750;
            }
            else {
                gActors[actor_index].unk_164 = (intptr_t)D_80199100_6D9780;
            }

            func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
            gActors[actor_index].unk_114 = 8.0f;
            break;
        case 1:
        case 5:
            break;
        case 2:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].unk_114 = 1;
                gActors[actor_index].stateUpper++;
            }
            break;
        case 3:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].unk_114 = 1;
                gActors[actor_index].stateUpper++;
            }
            break;
        case 4:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 2, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }

        func_80195F28_6D65A8(actor_index);
        break;

    case 16:
    case 17:
    case 18:
        func_80195F28_6D65A8(actor_index);
        break;
    }
}

void func_80196848_6D6EC8(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 12:
        switch (gActors[actor_index].stateUpper) {
        case 3:
            break;
        case 0:
            gActors[actor_index].stateUpper++;

            gActors[actor_index].scaleY = gActors[actor_index].scaleX = 0.1f;
            gActors[actor_index].unk_114 = 4.0f;
            Sound_PlaySfx(SFX_BLING);
            // fall through
        case 1:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 1, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX * 2;
            gActors[actor_index].rotateZ++;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 60.0f;
            }
            break;
        case 2:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 0.01f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX * 2;
            gActors[actor_index].rotateZ -= 15.0f;
            if (gActiveFrames & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }

            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                gActors[actor_index].stateUpper++;
            }
            break;
        }

        func_80195F28_6D65A8(actor_index);
        return;

    case 16:
    case 17:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
            switch (gActors[actor_index].graphicIndex) {
            case 0x180E:
                gActors[actor_index].unk_164 = (intptr_t)D_80199310_6D9990;
                break;
            case 0x1810:
                gActors[actor_index].unk_164 = (intptr_t)D_80199330_6D99B0;
                break;
            case 0x1812:
                gActors[actor_index].unk_164 = (intptr_t)D_80199350_6D99D0;
                break;
            case GINDEX_1814:
                gActors[actor_index].unk_164 = (intptr_t)D_80199370_6D99F0;
                break;
            }

            func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
            gActors[actor_index].unk_114 = 10.0f;
            // fall through
        case 1:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        case 2:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper--;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        default:
            break;
        }

        func_80195F28_6D65A8(actor_index);
        return;

    case 18:
        func_80195FC4_6D6644(actor_index);
        return;
    case 6:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            switch (gActors[actor_index].graphicIndex) {
            case 0x180E:
                gActors[actor_index].unk_164 = (intptr_t)D_80199130_6D97B0;
                break;
            case 0x1810:
                gActors[actor_index].unk_164 = (intptr_t)D_80199160_6D97E0;
                break;
            case 0x1812:
                gActors[actor_index].unk_164 = (intptr_t)D_80199190_6D9810;
                break;
            case GINDEX_1814:
                gActors[actor_index].unk_164 = (intptr_t)D_801991C0_6D9840;
                break;
            case 0x1816:
                gActors[actor_index].unk_164 = (intptr_t)D_801991F0_6D9870;
                break;
            case 0x1818:
                gActors[actor_index].unk_164 = (intptr_t)D_80199220_6D98A0;
                break;
            case 0x181A:
                gActors[actor_index].unk_164 = (intptr_t)D_80199250_6D98D0;
                break;
            case GINDEX_181C:
                gActors[actor_index].unk_164 = (intptr_t)D_80199280_6D9900;
                break;
            case GINDEX_181E:
                gActors[actor_index].unk_164 = (intptr_t)D_801992B0_6D9930;
                break;
            case GINDEX_1820:
                gActors[actor_index].unk_164 = (intptr_t)D_801992E0_6D9960;
                break;
            }

            func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
            gActors[actor_index].unk_114 = 38.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        case 2:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 5.0f;
            }
            break;
        case 3:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 2, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        case 4:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 5.0f;
            }
            break;
        case 5:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 2, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        case 6:
            func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 10.0f;
            }
            break;
        case 7:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 8:
            break;
        default:
            break;
        }

        func_80195F28_6D65A8(actor_index);
        // fall through
    default:
        return;
    }
}

// Lunar cut in?
void func_80196FC8_6D7648(u16 actor_index) {
    s32 angle;
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, gActors[actor_index].posZ.whole);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
        if (Rand() & 1) {
            gActors[new_actor_index].graphicIndex = 0x1802;
        }
        else {
            gActors[new_actor_index].graphicIndex = 0x1804;
        }

        gActors[new_actor_index].posX.whole = (Rand() - 0x80) * 0.3;
        gActors[new_actor_index].posY.whole = ((Rand() - 0x80) * 0.3) + 48.0;
        angle = Math_Atan2(-gActors[actor_index].posX.whole, 0x30 - gActors[actor_index].posY.whole);
        gActors[new_actor_index].velocityX.raw = TO_FIXED(COS(angle));
        gActors[new_actor_index].velocityY.raw = TO_FIXED(SIN(angle));
        gActors[new_actor_index].var_158 = 0;
        gActors[new_actor_index].var_15C = 0;
        gActors[new_actor_index].unk_168 = 0;
        gActors[new_actor_index].unk_16C = 0;
        gActors[new_actor_index].var_110 = -0.03f;
        gActors[new_actor_index].unk_114 = -0.03f;
        gActors[new_actor_index].unk_118 = 0.0f;
        gActors[new_actor_index].unk_148 = 10.0f;
        gActors[new_actor_index].var_160 = TO_FIXED(Rand());
        gActors[new_actor_index].var_150 = TO_FIXED(Rand());
        gActors[new_actor_index].var_154 = -4;
    }
}

void func_80197224_6D78A4(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 6:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 60.0f;
            gActors[actor_index].unk_164 = TO_FIXED(func_801927F8_6D2E78(actor_index, 221.0f, (u16)gActors[actor_index].unk_114 * 2));
            gActors[actor_index].unk_168 = TO_FIXED(gActors[actor_index].unk_11C);
            gActors[actor_index].unk_16C = TO_FIXED(func_801927F8_6D2E78(actor_index, 284.0f, (u16)gActors[actor_index].unk_114 * 2));
            gActors[actor_index].unk_170 = TO_FIXED(gActors[actor_index].unk_11C);
            gActors[actor_index].posX.whole -= 0xCD;
            gActors[actor_index].posY.whole -= 0x128;
            gActors[actor_index].colorA = 0;
            // fall through
        case 1:
            gActors[actor_index].posX.raw += gActors[actor_index].unk_168;
            gActors[actor_index].posY.raw += gActors[actor_index].unk_170;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_164;
            gActors[actor_index].unk_170 -= gActors[actor_index].unk_16C;
            gActors[actor_index].colorA = Intro_LerpS32(gActors[actor_index].colorA, 0xFF, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].posX.whole = -3;
                gActors[actor_index].posY.whole = -0x3C;
                gActors[actor_index].colorA = 0xFF;
            }
            break;
        }
        break;

    case 7:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].unk_114 = 60.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[actor_index].posX.whole = 0;
                gActors[actor_index].posY.whole = 0;
                gActors[actor_index].posZ.whole = 0;
                gActors[actor_index].unk_114 = 120.0f;
                gActors[actor_index].unk_118 = 500.0f;
                Sound_PlaySfx(SFX_THEO_HELP1);
            }
            break;
        case 2:
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 8);
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 100000.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].posX.raw = Intro_LerpS32(gActors[actor_index].posX.raw, FIXED_UNIT(96), &gActors[actor_index].unk_114);
            gActors[actor_index].posY.raw = Intro_LerpS32(gActors[actor_index].posY.raw, FIXED_UNIT(136), &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_11C > 0.0f) {
                gActors[actor_index].unk_11C--;
            }

            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 60.0f;
                gActors[actor_index].unk_11C = 360.0f;
            }
            break;

        case 3:
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 1000000.0f, &gActors[actor_index].unk_11C);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].posX.raw = Intro_LerpS32(gActors[actor_index].posX.raw, FIXED_UNIT(96), &gActors[actor_index].unk_114);
            gActors[actor_index].posY.raw = Intro_LerpS32(gActors[actor_index].posY.raw, FIXED_UNIT(72), &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_11C > 0.0f) {
                gActors[actor_index].unk_11C--;
            }

            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 120.0f;
            }
            break;
        case 4:
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 1000000.0f, &gActors[actor_index].unk_11C);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].posX.raw = Intro_LerpS32(gActors[actor_index].posX.raw, FIXED_UNIT(96), &gActors[actor_index].unk_114);
            gActors[actor_index].posY.raw = Intro_LerpS32(gActors[actor_index].posY.raw, FIXED_UNIT(48), &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_11C > 0.0f) {
                gActors[actor_index].unk_11C--;
            }

            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].graphicIndex = GINDEX_182C;
                gActors[actor_index].rotateZ = 0.0f;
                gActors[actor_index].scaleY = gActors[actor_index].scaleX = 0.1f;
                gActors[actor_index].unk_114 = 4.0f;
                Sound_PlaySfx(SFX_GLIMMER_0140);
            }
            break;

        case 5:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 1, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].rotateZ++;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 120.0f;
            }
            break;
        case 6:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 0.01f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].rotateZ -= 10.0f;
            if (gActiveFrames & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }

            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 7:
            break;
        }
        break;

    case 8:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].scaleY = gActors[actor_index].scaleX = 0.5f;
            gActors[actor_index].unk_114 = 20.0f;
            // fall through
        case 1:
            gActors[actor_index].scaleX = Intro_LerpF32(gActors[actor_index].scaleX, 2.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].rotateZ -= 20.0f;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            }
            break;
        }
        break;

    case 10:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 20.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }
        break;
    case 12:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].unk_114 = 60.0f;
            // fall through
        case 1:
            gActors[actor_index].colorA = Intro_LerpS32(gActors[actor_index].colorA, 0xFF, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }
        break;

    case 13:
        switch (gActors[actor_index].stateUpper) {
        case 3:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 30.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index].palette_18C = D_80199930_6D9FB0;
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].unk_114 = 180.0f;
            }
            break;
        case 2:
            gActors[actor_index].var_154 = Intro_LerpS32(gActors[actor_index].var_154, FIXED_UNIT(31), &gActors[actor_index].unk_114);
            gActors[actor_index].var_158 = gActors[actor_index].var_154 / FIXED_UNIT(1);
            Palette_AdjustRgb5551Array((u16*)0x8033A2B8, D_80199930_6D9FB0, 0x8F, gActors[actor_index].var_158, gActors[actor_index].var_158, gActors[actor_index].var_158);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[50].stateUpper++;
            }
            break;
        }
        break;

    case 15:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 26.0f;
            gActors[actor_index].unk_16C = TO_FIXED(func_801927F8_6D2E78(actor_index, 183.0f, 0x3CU));
            gActors[actor_index].unk_168 = TO_FIXED(gActors[actor_index].unk_11C);
            // fall through
        case 1:
            gActors[actor_index].posX.raw += gActors[actor_index].unk_168;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[53].stateUpper++;
            }
            break;
        }
        break;

    case 19:
        switch (gActors[actor_index].stateUpper) {
        case 3:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 60.0f;
            // fall through
        case 1:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = 120.0f;
                gActors[actor_index].unk_118 = 50000.0f;
                gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                switch (gActors[actor_index].graphicIndex) {
                case 0x1818:
                    gActors[actor_index].unk_178 = 0;
                    break;
                case 0x181A:
                    gActors[actor_index].unk_178 = 1;
                    break;
                case 0x100A:
                    gActors[actor_index].unk_178 = 2;
                    break;
                case 0x100C:
                    gActors[actor_index].unk_178 = 3;
                    break;
                }

                gActors[actor_index].posX.whole = D_80199390_6D9A10[gActors[actor_index].unk_178].pos_x;
                gActors[actor_index].posY.whole = D_80199390_6D9A10[gActors[actor_index].unk_178].pos_y;
            }
            break;

        case 2:
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 200000.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].posX.raw *= 0.99;
            gActors[actor_index].posY.raw *= 0.99;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        }
        break;

    case 20:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_138 = -2 - (Rand() & 7);
            // fall through
        case 1:
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-2)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
            }

            gActors[actor_index].scaleX += 0.001;
            gActors[actor_index].scaleY += 0.001;
            gActors[actor_index].unk_12C += 0.001;
            gActors[actor_index].rotateX += gActors[actor_index].unk_138;
            if (gActors[actor_index].posX.whole < -176 || gActors[actor_index].posX.whole > 176 ||
                gActors[actor_index].posY.whole < -176 || gActors[actor_index].posY.whole > 176) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
            }
            break;
        }
        break;

    case 21:
        switch (gActors[actor_index].stateUpper) {
        case 2:
            break;
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].dlist_17C = (Gfx*)D_800D74A0[gActors[actor_index].var_158 + 16];
            gActors[actor_index].scaleX = 1.0f;
            gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].unk_12C = 1.0f;
            // fall through
        case 1:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].rotateY = 0.0f;
            if (actor_index == 0x68) {
                gActors[50].stateUpper++;
            }
            break;
        }
        break;
    }
}

// Scrolling impact background, random portrait extras?
void func_80198274_6D88F4(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 7:
        gActors[actor_index].posY.whole -= 8;
        if (gActors[actor_index].posY.whole < -0xBF) {
            gActors[actor_index].posY.whole = 0xC0;
        }
        break;
    case 12:
    case 13:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            // fallthrough
        case 1: {
            u16 table_index;

            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_114 = 40.0f;
            table_index = Rand() & 3;
            gActors[actor_index].graphicIndex = D_801993C0_6D9A40[table_index].graphic_index;
            if (D_801993C0_6D9A40[table_index].child_graphic_index != 0) {
                func_80192224_6D28A4(actor_index, 0x34, D_801993C0_6D9A40[table_index].child_graphic_index, 0x12, 0x12, 1);
            }
            else {
                gActors[0x34].flags = ACTOR_FLAG_NONE;
            }

            gActors[actor_index].posX.whole = D_801993C0_6D9A40[table_index].pos_x;
            gActors[actor_index].posY.whole = D_801993C0_6D9A40[table_index].pos_y;
            gActors[actor_index].unk_16C =
                TO_FIXED(func_801927F8_6D2E78(
                    actor_index,
                    D_801993C0_6D9A40[table_index].target_x - gActors[actor_index].posX.whole,
                    0x28
                ));
            gActors[actor_index].unk_168 = TO_FIXED(gActors[actor_index].unk_11C);
            gActors[actor_index].unk_174 =
                TO_FIXED(func_801927F8_6D2E78(
                    actor_index,
                    D_801993C0_6D9A40[table_index].target_y - gActors[actor_index].posY.whole,
                    0x28
                ));
            gActors[actor_index].unk_170 = TO_FIXED(gActors[actor_index].unk_11C);
            break;
        }

        case 2:
            gActors[actor_index].posX.raw += gActors[actor_index].unk_168;
            gActors[actor_index].posY.raw += gActors[actor_index].unk_170;
            gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
            gActors[actor_index].unk_170 -= gActors[actor_index].unk_174;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_114 = Rand() & 0x1F;
            }
            break;
        case 3:
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                if (gActors[actor_index].stateLower == 13) {
                    gActors[actor_index].flags = ACTOR_FLAG_NONE;
                    gActors[actor_index].stateUpper++;
                    gActors[0x34].flags = ACTOR_FLAG_NONE;
                }
                else {
                    gActors[actor_index].stateUpper = 1;
                }
            }
            break;
        case 4:
            break;
        }
        break;

    case 18:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].unk_114 = 60.0f;
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_118 = 200000.0f;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            // fallthrough
        case 1:
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 1000.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].rotateZ = Intro_LerpF32(gActors[actor_index].rotateZ, 10.0f, &gActors[actor_index].unk_114);
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].state++;
            }
            break;
        case 2:
            break;
        }
        break;

    case 19:
        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].unk_114 = 180.0f;
            gActors[actor_index].stateUpper++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].unk_118 = 1000.0f;
            // fallthrough
        case 1:
            gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 400000.0f, &gActors[actor_index].unk_114);
            gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            if (gActors[actor_index].unk_114-- <= 0.0f) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 2:
            break;
        }
        break;
    }
}

// Smoke puffs in front of Leo before Calina appears?
void func_801987F0_6D8E70(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(D_800E1604, 0, 0, 0);

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].scaleX = 1.5f;
        gActors[new_actor_index].scaleY = 1.5f;
        gActors[new_actor_index].posX.whole = (s32)(((Rand() - 0x80) * 0.2) + gActors[actor_index].posX.whole);
        gActors[new_actor_index].posY.whole = (s32)(((Rand() - 0x80) * 0.2) + gActors[actor_index].posY.whole);
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    }
}

// Calina/smoke sprite animation during the fade out?
void func_8019897C_6D8FFC(u16 actor_index) {
    if (gActors[actor_index].stateLower == 0xD) {
        if (gActors[actor_index].stateUpper >= 2) {
            func_800819A8(actor_index, D_800E5E48);
        }

        switch (gActors[actor_index].stateUpper) {
        case 0:
            gActors[actor_index].stateUpper++;
            gActors[actor_index].unk_190 = 0x1E;
            // fall through
        case 1:
            func_801987F0_6D8E70(actor_index);
            if (gActors[actor_index].unk_190-- <= 0) {
                gActors[actor_index].stateUpper++;
                func_8008105C(actor_index, D_800E5E48, D_800E5D30);
                gActors[actor_index].unk_178 = (intptr_t)D_800E8820;
                func_80081478(actor_index, D_800E5E48, 1);
                func_80081790(actor_index, D_800E8EAC);
                func_800819A8(actor_index, D_800E5E48);
                gActors[actor_index].unk_190 = 0x3C;
            }
            break;
        case 2:
            if (gActors[actor_index].unk_190-- <= 0) {
                gActors[actor_index].stateUpper++;
                gActors[actor_index].unk_190 = 0x1E;
            }
            break;
        case 3:
            if (gActors[actor_index].unk_190-- <= 0) {
                gActors[actor_index].stateUpper++;
            }
            break;
        case 4:
            break;
        }

        func_80096AC4(actor_index);
    }
}

// each clancer picks a short animation, then walks or jumps offscreen
void func_80198B18_6D9198(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    if (gActors[actor_index].state == 0x101 && gActors[actor_index].unk_170 >= gActors[actor_index].posY.whole) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK5;
        gActors[actor_index].posY.whole = gActors[actor_index].unk_170;
    }

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
    }

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        if (Rand() & 1) {
            gActors[actor_index].graphicList = D_801993F0_6D9A70;
        }
        else {
            gActors[actor_index].graphicList = D_80199438_6D9AB8;
        }

        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_150 |= 0x1000;
        break;
    case 0x61:
        switch (gActors[actor_index].unk_174) {
        case 0:
            gActors[actor_index].unk_174 += 1;
            gActors[actor_index].unk_16C = Rand() & 7;
            // fallthrough
        case 1:
            if (gActors[actor_index].graphicTimer == 0) {
                switch (Rand() & 7) {
                case 0:
                    gActors[actor_index].state = 0x3B0;
                    gActors[actor_index].unk_118 = Rand() & 0x1F;
                    gActors[actor_index].unk_11C = Rand() & 3;
                    break;
                case 1:
                    gActors[actor_index].state = 0x3D0;
                    gActors[actor_index].unk_164 = 1;
                    break;
                case 2:
                    gActors[actor_index].state = 0x80;
                    break;
                case 3:
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_11C = FIXED_UNIT(5.5);
                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        gActors[actor_index].unk_120 = FIXED_UNIT(-2.0);
                    }
                    else {
                        gActors[actor_index].unk_120 = FIXED_UNIT(2.0);
                    }
                    break;
                case 4:
                    gActors[actor_index].state = 0x70;
                    break;
                case 5:
                    gActors[actor_index].state = 0x90;
                    break;
                case 6:
                    gActors[actor_index].state = 0xB0;
                    break;
                case 7:
                    gActors[actor_index].state = 0xC0;
                    break;
                }

                if (gActors[actor_index].unk_16C-- <= 0) {
                    gActors[actor_index].unk_174 += 1;
                }
            }
            break;

        case 2:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0xA0;
            }
            break;
        }
        break;
    }

    if ((gActors[actor_index].posX.whole < -0xB0) || (gActors[actor_index].posX.whole >= 0xB1)) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}
