#include "common.h"
#include "boot.h"
#include "28EF0.h"
#include "actor.h"
#include "frontend.h"
#include "marina.h"
#include "marina_effect.h"
#include "marina_grab.h"
#include "5D120.h"

extern s16 D_800E157C[];

// "overlay 1" code used by "Lunar!!"

void func_8019BAC4_723414(u16 actor_index);
void func_8019BB48_723498(u16 actor_index);
void func_8019BD6C_7236BC(u16 actor_index);
void func_8019BED0_723820(u16 actor_index);
void func_8019C088_7239D8(u16 actor_index);
void func_8019C15C_723AAC(u16 actor_index);
void func_8019C4EC_723E3C(u16 actor_index);
void func_8019CC80_7245D0(u16 actor_index);
void func_8019D274_724BC4(u16 actor_index);
void func_8019D690_724FE0(u16 actor_index);
void func_8019D9BC_72530C(u16 actor_index);
void func_8019E1BC_725B0C(u16 actor_index);
void func_8019E2A8_725BF8(u16 actor_index);
void func_8019E4E8_725E38(u16 actor_index);
void func_8019E9A4_7262F4(u16 actor_index);
void func_8019EDDC_72672C(u16 actor_index);
void func_8019EF14_726864(u16 actor_index);
void func_8019F038_726988(u16 actor_index);
void func_8019F48C_726DDC(u16 actor_index);
void func_8019F788_7270D8(u16 actor_index);
void func_8019F9F8_727348(u16 actor_index);
void func_8019FEDC_72782C(u16 actor_index);

s8 D_801A3120_72AA70[] = {
//  BX0  BX1 BY0 BY1
    -12, 12, 24, -38,
    -24, 24, 12, -16,
    -12, 12, 16, -16,
    -12, 12, 4,  -38,
    -12, 12, 16, -16,
    -12, 12, -6, -38,
    -24, 24, 8,  -12,
    -14, 14, 16, -38,
    -12, 12, 20, -24,
    -32, 8,  32, -14,
};

s32 D_801A3148_72AA98[] = {
    0, FIXED_UNIT(0.5), FIXED_UNIT(1), FIXED_UNIT(0.5),
};

s16 D_801A3158_72AAA8[] = {
//  graphic timer
    0x4400, 3,
    0x4401, 6,
    0x4402, 12,
    0x4401, 3,
    -4,     0,
};

s16 D_801A316C_72AABC[] = {
//  graphic timer
    0x4412, 16,
    0,      0,
};

s16 D_801A3174_72AAC4[] = {
//  graphic timer
    0x4414, 2,
    0x4413, 2,
    -2,     0,
};

s16 D_801A3180_72AAD0[] = {
//  graphic timer
    0x4414, 48,
    0,      0,
};

s16 D_801A3188_72AAD8[] = {
//  graphic timer
    0x4001, 6,
    0x4000, 6,
    0,      0,
};

s16 D_801A3194_72AAE4[] = {
//  graphic timer
    0x4415, 8,
    0x4416, 12,
    0x4417, 8,
    0x4418, 8,
    0,      0,
};

s16 D_801A31A8_72AAF8[] = {
//  graphic timer
    0x4419, 4,
    0x441B, 8,
    0x441C, 4,
    0x441D, 4,
    0,      0,
};

s16 D_801A31BC_72AB0C[] = {
//  graphic timer
    0x441C, 16,
    0x441B, 4,
    0,      0,
};

s16 D_801A31C8_72AB18[] = {
//  graphic timer
    0x441B, 2,
    0x4419, 6,
    0x441A, 12,
    0x4419, 4,
    0,      0,
};

s16 D_801A31DC_72AB2C[] = {
//  graphic timer
    0x4002, 6,
    0x4003, 24,
    0,      0,
};

s16 D_801A31E8_72AB38[] = {
//  graphic timer
    0x4004, 8,
    0x4005, 1,
    0,      0,
};

s16 D_801A31F4_72AB44[] = {
//  graphic timer
    0x4006, 64,
    0x4007, 1,
    0,      0,
};

s16 D_801A3200_72AB50[] = {
//  graphic timer
    0x440B, 4,
    0x440C, 4,
    0x440C, 4,
    0x440B, 4,
    0,      0,
};

s16 D_801A3214_72AB64[] = {
//  graphic timer
    0x4008, 26,
    0x4009, 4,
    0x400A, 1,
    0,      0,
};

s16 D_801A3224_72AB74[] = {
//  graphic timer
    0x400B, 4,
    0x400C, 18,
    0x400D, 12,
    0,      0,
};

s16 D_801A3234_72AB84[] = {
//  graphic timer
    0x400E, 8,
    0x400F, 8,
    0x4010, 8,
    0,      0,
};

s16 D_801A3244_72AB94[] = {
//  graphic timer
    0x4011, 8,
    0x4012, 8,
    0x4013, 8,
    0,      0,
};

s16 D_801A3254_72ABA4[] = {
//  graphic timer
    0x4014, 8,
    0x4015, 8,
    0x4016, 8,
    0,      0,
};

s16 D_801A3264_72ABB4[] = {
//  graphic timer
    0x4017, 8,
    0x4018, 8,
    0x4019, 8,
    0,      0,
};

s16 D_801A3274_72ABC4[] = {
//  graphic timer
    0x4403, 6,
    0x4404, 6,
    0x4405, 6,
    0x4406, 6,
    0x4407, 6,
    0x4408, 6,
    0x4409, 6,
    0x440A, 6,
    -8,     0,
};

s16 D_801A3298_72ABE8[] = {
//  graphic timer
    0x401A, 3,
    0x401B, 5,
    0,      0,
};

s16 D_801A32A4_72ABF4[] = {
//  graphic timer
    0x401C, 3,
    0x401D, 5,
    0,      0,
};

s16 D_801A32B0_72AC00[] = {
//  graphic timer
    0x401E, 20,
    0x401F, 9,
    0x4020, 16,
    0,      0,
};

s16 D_801A32C0_72AC10[] = {
//  graphic timer
    0x4021, 5,
    0x4022, 5,
    0x4023, 5,
    0x4024, 8,
    0x4025, 8,
    0,      0,
};

s16 D_801A32D8_72AC28[] = {
//  graphic timer
    0x4026, 16,
    0,      0,
};

s16 D_801A32E0_72AC30[] = {
//  graphic timer
    0x4027, 16,
    0,      0,
};

s16 D_801A32E8_72AC38[] = {
//  graphic timer
    0x4028, 6,
    0x4029, 6,
    0x402A, 16,
    0x402B, 6,
    0x402C, 32,
    0,      0,
};

s16 D_801A3300_72AC50[] = {
//  graphic timer
    0x4028, 4,
    0x4029, 4,
    0x402A, 32,
    0,      0,
};

s16 D_801A3310_72AC60[] = {
//  graphic timer
    0x402D, 16,
    0,      0,
};

s16 D_801A3318_72AC68[] = {
//  graphic timer
    0x441E, 12,
    0x441F, 12,
    0x4420, 12,
    0x4421, 12,
    0,      0,
};

s16 D_801A332C_72AC7C[] = {
//  graphic timer
    0x441E, 8,
    0,      0,
};

s16 D_801A3334_72AC84[] = {
//  graphic timer
    0x4421, 8,
    0,      0,
};

s16 D_801A333C_72AC8C[] = {
//  graphic timer
    0x402E, 64,
    0,      0,
};

s16 D_801A3344_72AC94[] = {
//  graphic timer
    0x440D, 4,
    0x440E, 4,
    0x440F, 4,
    0x4410, 64,
    0x4411, 8,
    0,      0,
};

s16 D_801A335C_72ACAC[] = {
//  graphic timer
    0x440F, 4,
    0x4410, 8,
    -2,     0,
};

s16* D_801A3368_72ACB8[] = {
    NULL,
    D_801A3158_72AAA8,
    D_801A316C_72AABC,
    D_801A3174_72AAC4,
    D_801A3180_72AAD0,
    D_801A3188_72AAD8,
    D_801A3194_72AAE4,
    D_801A31A8_72AAF8,
    D_801A31BC_72AB0C,
    D_801A31C8_72AB18,
    D_801A31DC_72AB2C,
    D_801A31E8_72AB38,
    D_801A31F4_72AB44,
    D_801A3200_72AB50,
    D_801A3214_72AB64,
    D_801A3224_72AB74,
    D_801A3234_72AB84,
    D_801A3244_72AB94,
    D_801A3254_72ABA4,
    D_801A3264_72ABB4,
    D_801A3274_72ABC4,
    D_801A3298_72ABE8,
    D_801A32A4_72ABF4,
    D_801A32B0_72AC00,
    D_801A32C0_72AC10,
    D_801A32D8_72AC28,
    D_801A32E0_72AC30,
    D_801A32E8_72AC38,
    D_801A3300_72AC50,
    D_801A3310_72AC60,
    D_801A3318_72AC68,
    D_801A332C_72AC7C,
    D_801A3334_72AC84,
    D_801A333C_72AC8C,
    D_801A3344_72AC94,
    D_801A335C_72ACAC,
};

s16 D_801A33F8_72AD48[] = {
//  x   y   angle
    -8, 40, 0x0000,
    38, -5, 0x0100,
};

s16 D_801A3404_72AD54[] = {
//  graphic timer
    0x181E, 6,
    0x1820, 6,
    0x1822, 10,
    0,      0,
};

s16 D_801A3414_72AD64[] = {
//  graphic timer
    0x1828, 12,
    0x182A, 12,
    0x182C, 12,
    0x182E, 12,
    0x1830, 12,
    0,      0,
};

ActorFunc D_801A342C_72AD7C[] = {
    func_8019BAC4_723414,
    func_8019BB48_723498,
    func_8019BD6C_7236BC,
    func_8019BED0_723820,
    func_8019C088_7239D8,
    func_8019C15C_723AAC,
    func_8019C4EC_723E3C,
    func_8019CC80_7245D0,
    func_8019D274_724BC4,
    func_8019D690_724FE0,
    func_8019D9BC_72530C,
    func_8019E1BC_725B0C,
    func_8019E2A8_725BF8,
    func_8019E4E8_725E38,
    func_8019E9A4_7262F4,
    func_8019EDDC_72672C,
    func_8019EF14_726864,
    func_8019F038_726988,
    func_8019F48C_726DDC,
    func_8019F788_7270D8,
    func_8019F9F8_727348,
    func_8019FEDC_72782C,
};

s32 D_801A3484_72ADD4[] = {
//  unk_0F8.raw  unk_0FC.raw
    0,           FIXED_UNIT(4),
    2,           FIXED_UNIT(3),
    4,           FIXED_UNIT(2),
    6,          -FIXED_UNIT(4),
    8,          -FIXED_UNIT(6.5),
};


void func_8019B55C_722EAC(u16 actor_index, s32 arg1);
void func_8019B8FC_72324C(u16 actor_index);
void func_801A07B8_728108(u16 actor_index);
void func_801A0BC4_728514(u16 actor_index, u16 index, s32 angle, s32 position_x, s32 position_y, s32 position_z);
void func_801A17E0_729130(u16 actor_index);


void func_8019B100_722A50(u16 actor_index) {
    s32 var_v1;
    FixedCoord* temp_t2;
    s32 position[3];
    u16 new_actor_index;
    s32 graphic_index;
    s32 var_a2;

    graphic_index = gActors[actor_index].graphicIndex;
    switch (graphic_index) {
    case 0x4412:
        var_v1 = 0;
        break;

    case 0x4413:
    case 0x4414:
        var_v1 = 1;
        break;

    default:
        var_v1 = 0;
    }

    var_v1 *= 3;
    temp_t2 = gActors[actor_index].pos;
    position[0] = temp_t2[0].whole;
    position[1] = temp_t2[1].whole;
    position[2] = temp_t2[2].whole + 1;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        position[0] += D_801A33F8_72AD48[var_v1];
        var_a2 = 0x100 - D_801A33F8_72AD48[var_v1 + 2];
    }
    else {
        position[0] -= D_801A33F8_72AD48[var_v1];
        var_a2 = D_801A33F8_72AD48[var_v1 + 2] + 0x100;
    }

    position[1] += D_801A33F8_72AD48[var_v1 + 1];
    var_a2 += 0x200;
    new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);

    if (!new_actor_index) {
        return;
    }

    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
    gActors[new_actor_index].unk_140_f32 = 17.0f;
    gActors[new_actor_index].unk_184 = gActors[new_actor_index].posX.raw;
    gActors[new_actor_index].unk_188 = gActors[new_actor_index].posY.raw;
    gActors[new_actor_index].graphicIndex = GINDEX_CONE;
    gActors[new_actor_index].unk_144 = 0.0f;
    gActors[new_actor_index].unk_148 = 1.0f;
    var_a2 += RandModulo(0) * 1.5;
    gActors[new_actor_index].var_160 = TO_FIXED(var_a2);
    gActors[new_actor_index].scaleX = (f32)(Rand() + 50) / 150.0f;
    gActors[new_actor_index].scaleY = 0.3f;
    gActors[new_actor_index].palette_18C = PALETTE_8022D568;

    if (gActors[actor_index].unk_170_s8[1] == 1) {
        new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (new_actor_index) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL1_LUNAR_3;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags |= ACTOR_FLAG_UNK19 | (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED);
            gActors[new_actor_index].posX.whole = position[0];
            gActors[new_actor_index].posY.whole = position[1];
            gActors[new_actor_index].posZ.whole = position[2];
        }
    }
}

s32 func_8019B3F8_722D48(u16 actor_index, u16 index) {
    s32 params[5];
    u16 new_actor_index;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        params[0] = gActors[index].posX.whole + gActors[index].hitboxBX0;
    }
    else {
        params[0] = gActors[index].posX.whole + gActors[index].hitboxBX1;
    }

    params[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0 - 3;

    if ((gActors[index].hitboxBY0 + gActors[index].posY.whole - 3) < params[1]) {
        params[1] = gActors[index].hitboxBY0 + gActors[index].posY.whole - 3;
    }

    if (params[1] < (gActors[index].posY.whole + gActors[index].hitboxBY1 + 3)) {
        params[1] = gActors[index].posY.whole + gActors[index].hitboxBY1 + 3;
    }

    params[2] = gActors[index].posZ.whole + 1;
    params[3] = 0x182;
    params[4] = (intptr_t)PALETTE_8022D4E8;
    new_actor_index = func_80059F30(actor_index, params, 0.8f, 10);
    if (!new_actor_index) {
        return new_actor_index;
    }

    gActors[new_actor_index].var_110 = 0.0f;
    gActors[new_actor_index].graphicIndex = 0x1DE;
    gActors[new_actor_index].unk_114 = -gActors[new_actor_index].unk_114;
    return new_actor_index;
}

void func_8019B55C_722EAC(u16 actor_index, s32 arg1) {
    s16 sp36;
    s32 sp30;
    s32 var_a1;
    Actor* temp_s0 = &gActors[actor_index];

    sp36 = Math_AbsS32_2(gActors[0].posX.whole - temp_s0->posX.whole);
    sp30 = TO_FIXED(temp_s0->health) / 150;

    if (temp_s0->stateLower >= 4) {
        return;
    }

    if (temp_s0->flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        if (temp_s0->stateLower >= 3) {
            return;
        }

        if (temp_s0->var_160_u8 > 0) {
            temp_s0->var_160_u8--;
        }

        if (temp_s0->stateUpper != 0 && temp_s0->stateUpper != 10) {
            return;
        }

        if (sp36 < 32) {
            sp30 = 0;
        }

        if (sp36 >= 80 && Math_AbsS32_2(temp_s0->posX.whole) <= 160) {
            var_a1 = 5;

            if (sp30 <= FIXED_UNIT(0.75)) {
                var_a1 = 10;
            }

            if (Rand() <= func_8005C774(10) + var_a1) {
                temp_s0->state = 7;
            }
        }

        var_a1 = 3;

        if (sp30 <= FIXED_UNIT(0.25)) {
            var_a1 = 13;
        }

        if (Rand() <= func_8005C774(10) + var_a1) {
            temp_s0->state = 6;
            temp_s0->var_160_u8 = 1;
        }

        if (sp36 < 112) {
            var_a1 = 5;

            if (sp30 <= FIXED_UNIT(0.5)) {
                var_a1 = 15;
            }

            if (Rand() <= func_8005C774(10) + var_a1) {
                temp_s0->state = 10;
            }
        }

        var_a1 = 5;

        if (!temp_s0->var_160_u8 && sp30 <= FIXED_UNIT(1) && Math_AbsS32_2(temp_s0->posX.whole) < 160 && sp36 > 48) {
            if (sp30 < FIXED_UNIT(0.5)) {
                var_a1 = 10;
            }

            if (Rand() <= func_8005C774(10) + var_a1) {
                temp_s0->state = 9;
            }

            var_a1 = 5;

            if (sp36 < 128 && Rand() <= 10 - func_8005C774(5)) {
                temp_s0->state = 8;
                temp_s0->var_160_u8 = 60;
            }
        }

        if (sp36 < 64) {
            var_a1 = 15;
        }

        if (Rand() < var_a1) {
            temp_s0->state = 3;
            temp_s0->var_160_u8 = 0;
        }
    }
    else if (!temp_s0->var_160_u8 && sp36 < 96 && temp_s0->stateLower == 3 && temp_s0->var_150 == 12345678) {
        var_a1 = 20;

        if (sp30 < FIXED_UNIT(0.5)) {
            var_a1 = 40;
        }

        if (Rand() < func_8005C774(40) + var_a1) {
            temp_s0->state = 5;
        }
    }
}

void func_8019B8FC_72324C(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gActors[actor_index].stateLower != 0xE) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FREEZE_POS;
            func_80058924(actor_index);
            gActors[actor_index].var_160_u8 = 0;
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = 0xE;
        }
    }
    else if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index].hitByType < HITTYPE_20) {
        switch (gActors[actor_index].stateLower) {
        case 1:
        case 2:
        case 4:
        case 0xB:
            func_80058924(actor_index);
            gActors[actor_index].posZ.raw = 0;
            gActors[actor_index].state = 0xB;
            break;

        default:
            if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
                if (!gActors[actor_index].health || gActors[actor_index].stateLower == 0xD) {
                    func_800575C0(actor_index);
                }

                if (gActors[actor_index].hitByType >= HITTYPE_BOOM_9 && gActors[actor_index].hitByType < HITTYPE_SHOCK_12) {
                    MarinaEffect_Set(actor_index, MARINAEFF_BURN);
                    gActors[actor_index].unk_144 = 1.5f;
                }

                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].unk_13C_s16[1] = 0;
                gActors[actor_index].flags &= ~ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].var_160_u8 = 0;
                func_80058924(actor_index);
                gActors[actor_index].posZ.raw = 0;
                func_8005C550(actor_index, 60);

                if (!(gActors[actor_index].hitByFlags & HITFLAG_0)) {
                    gActors[actor_index].state = 0xC;
                }
                else {
                    gActors[actor_index].state = 0xD;
                }
            }
            break;
        }
    }
}

void func_8019BAC4_723414(u16 actor_index) {
}

void func_8019BACC_72341C(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicLists = D_801A3368_72ACB8;
    gActors[actor_index].health = 0x96;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].var_160_u8 = 0;
    gActors[actor_index].unk_170 = 1;
}

void func_8019BB48_723498(u16 actor_index) {
    if (func_80049040(actor_index)) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 2;
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));

        if (gActors[actor_index].stateUpper == 0xA) {
            if (gMarinaAnim.anim_u32 == 0 && gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].state = 2;
                return;
            }

            gActors[actor_index].var_150--;

            if (func_8005D338(actor_index) == 1) {
                return;
            }

            gActors[actor_index].unk_170 = 1;

            if (gActors[actor_index].unk_17C_s16[1]) {
                gActors[actor_index].unk_17C = 0;
            }
        }

        if (gActors[actor_index].stateUpper == 0 || gActors[actor_index].stateUpper == 0xA) {
            gActors[actor_index].var_150 = 110 - func_8005C774(Rand());

            if (gActors[0].posX.raw >= gActors[actor_index].posX.raw) {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].stateUpper = 1;
                }
            }
            else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].stateUpper = 1;
            }
        }

        if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].unk_170 = 0xD;
            gActors[actor_index].stateUpper = 2;
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (gActors[actor_index].unk_170_s8[1] == 2) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3 && func_8005D418(actor_index)) {
            gActors[actor_index].stateUpper = 0xA;
        }
    }
}

void func_8019BD6C_7236BC(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    if (func_80049040(actor_index)) {
        actor->state = 3;
        actor->stateUpper = 2;
        return;
    }

    if (!actor->unk_170_s8[1] && !actor->unk_170_s8[0]) {
        actor->stateUpper = 0;
    }

    if (!actor->stateUpper) {
        actor->var_150 = Rand() & 1;
        actor->stateUpper++;

        if (actor->posX.whole < gActors[0].posX.whole) {
            if (actor->flags & ACTOR_FLAG_FLIPPED) {
                actor->state = 1;
            }
        }
        else if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
            actor->state = 1;
        }
    }

    actor->velocityX.raw = D_801A3148_72AA98[actor->unk_170_s8[1]];

    if (actor->var_150) {
        actor->velocityX.raw = -actor->velocityX.raw;
    }
}

void func_8019BED0_723820(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 7;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] > 0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(8.0);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2.0);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.0);
            }

            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.0)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-2.0)) {
            if (func_8005D338(actor_index) != 7) {
                gActors[actor_index].unk_170 = 7;
                gActors[actor_index].unk_170_s8[1] = 2;
            }
        }
        else if (func_8005D338(actor_index) != 8) {
            gActors[actor_index].unk_170 = 8;
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(1.0)) {
            gActors[actor_index].var_150 = 12345678;
        }

        if (func_800490BC(actor_index, 0, -0x26)) {
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8019C088_7239D8(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        Sound_PlaySfx(SFX_006C);
        gActors[actor_index].unk_170 = 9;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].velocityX.raw) {
            gActors[actor_index].unk_180_u8[3] = MARINAEFF_4;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
            SpawnCrosshair(15, actor_index);
        }
        break;
    }
}

void func_8019C15C_723AAC(u16 actor_index) {
    u16 new_actor_index;
    Actor* particle;
    u8 state_upper = gActors[actor_index].stateUpper;
    s32 position[3];

    if (!state_upper) {
        gActors[actor_index].unk_170 = 11;
        Sound_PlaySfx(SFX_LUNAR_YELL);
        gActors[actor_index].hitboxAY0 = 0;
        gActors[actor_index].hitboxAY1 = -32;
        gActors[actor_index].hitboxAX1 = 16;
        gActors[actor_index].hitboxAX0 = -16;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].hitboxAX1 = 32;
            gActors[actor_index].hitboxAX0 = 0;
        }
        else {
            gActors[actor_index].hitboxAX1 = 0;
            gActors[actor_index].hitboxAX0 = -32;
        }

        position[0] = gActors[actor_index].posX.whole;
        position[1] = gActors[actor_index].posY.whole;
        position[2] = gActors[actor_index].posZ.whole;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);

        if (new_actor_index) {
            particle = &gActors[new_actor_index];
            particle->graphicIndex = 0x1826;
            particle->graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
            particle->colorA = 0xC0;
            particle->unk_148 = 64.0f;
            particle->scaleX = 0.1f;
            particle->var_110 = 0.05f;
            particle->palette_18C = PALETTE_8022D568;
            particle->flags |= ACTOR_FLAG_UNK15;
            particle->unk_184 = particle->posX.raw;
            particle->unk_188 = particle->posY.raw;

            if (!(particle->flags & ACTOR_FLAG_FLIPPED)) {
                particle->unk_140_f32 = -24.0f;
            }
            else {
                particle->unk_140_f32 = 24.0f;
            }

            particle->unk_144 = 0.0f;
            particle->unk_130 = actor_index;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                particle->unk_134 = -12.0f;
            }
            else {
                particle->unk_134 = 12.0f;
            }

            particle->unk_138 = -32.0f;
            particle->unk_13C_f32 = 1.0f;
            particle->unk_14C = gActors[actor_index].actorType;
            particle->pfn_17C = func_801A17E0_729130;
            particle->parentIndex = actor_index;
        }

        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
    }
    else if (state_upper == 1) {
        if (!gActors[actor_index].var_150 && func_8005D418(actor_index)) {
            gActors[actor_index].damage = 100;
            gActors[actor_index].hitFlags = HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_2;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index].var_150 = 1;
            position[0] = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1 + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
            position[1] = (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1 + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
            position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
            func_8005A1A4(actor_index, position, 2.0f);
            Sound_PlaySfx(SFX_HIT_002D);
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
        }

        if (func_800490BC(actor_index, 0, -0x26)) {
            gActors[actor_index].state = 4;
        }
    }
}

void func_8019C4EC_723E3C(u16 actor_index) {
    u16 sp46;
    Actor* temp_s0;
    Actor* temp_v1;
    s32 position[3];

    if (gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw;
        gScreenPosTargetY.raw = gPlayerPosY.raw;
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (Math_AbsS32_2(gActors[actor_index].posX.whole) >= 0x81) {
            gActors[actor_index].state = 1;
            break;
        }

        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 7;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, 0, FIXED_UNIT(0.125));

        if (temp_s0->unk_170_s8[1] > 0) {
            temp_s0->flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            temp_s0->flags |= ACTOR_FLAG_UNK22;
            temp_s0->flags |= ACTOR_FLAG_FREEZE_POS;
            temp_s0->velocityY.raw = FIXED_UNIT(4);

            if (temp_s0->posX.raw >= 0) {
                temp_s0->velocityX.raw = (FIXED_UNIT(136) - temp_s0->posX.raw) / 32;
            }
            else {
                temp_s0->velocityX.raw = (FIXED_UNIT(-136) - temp_s0->posX.raw) / 32;
            }

            temp_s0->var_150 = FIXED_UNIT(0.125);
            temp_s0->stateUpper = 2;
        }
        break;

    case 2:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityY.raw -= temp_s0->var_150;

        if (temp_s0->velocityY.raw <= FIXED_UNIT(3)) {
            if (temp_s0->velocityX.raw > 0 && ((temp_s0->flags_098 & ACTOR_FLAG3_UNK3) || Math_AbsS32_2(temp_s0->posX.whole - 0x80) < 0x10)) {
                temp_s0->flags |= ACTOR_FLAG_FLIPPED | ACTOR_FLAG_FREEZE_POS;
                temp_s0->stateUpper = 5;
            }

            if (temp_s0->velocityX.raw < 0 && ((temp_s0->flags_098 & ACTOR_FLAG3_UNK2) || Math_AbsS32_2(temp_s0->posX.whole + 0x80) < 0x18)) {
                temp_s0->flags &= ~ACTOR_FLAG_FLIPPED;
                temp_s0->flags |= ACTOR_FLAG_FREEZE_POS;
                temp_s0->stateUpper = 5;
            }
        }

        if (temp_s0->velocityY.raw <= FIXED_UNIT(-2)) {
            temp_s0->flags &= ~ACTOR_FLAG_FREEZE_POS;
            temp_s0->unk_170 = 8;
            temp_s0->stateUpper = 3;
        }
        break;

    case 3:
        temp_s0 = &gActors[actor_index];

        if (temp_s0->velocityY.raw > FIXED_UNIT(-6)) {
            temp_s0->velocityY.raw -= FIXED_UNIT(0.375);
        }

        if (func_800490BC(actor_index, 0, -0x26) != 0) {
            temp_s0->state = 4;
        }
        break;

    case 5:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityX.raw = 0;
        temp_s0->velocityY.raw = 0;
        temp_s0->unk_170 = 0xA;
        temp_s0->unk_17C = 4;
        Sound_PlaySfx(SFX_0089);
        temp_s0->stateUpper = 6;
        break;

    case 6:
        temp_s0 = &gActors[actor_index];

        if (func_8005D418(actor_index) != 0) {
            temp_s0->flags &= ~ACTOR_FLAG_FREEZE_POS;
            temp_s0->unk_170 = 0xB;
            Sound_PlaySfx(SFX_LUNAR_YELL);
            temp_s0->hitboxAY0 = 0;
            temp_s0->hitboxAY1 = -0x20;
            temp_s0->hitboxAX1 = 0x10;
            temp_s0->hitboxAX0 = -0x10;

            if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
                temp_s0->hitboxAX1 += 0x10;
                temp_s0->hitboxAX0 += 0x10;
                temp_s0->velocityX.raw = FIXED_UNIT(4);
            }
            else {
                temp_s0->hitboxAX1 -= 0x10;
                temp_s0->hitboxAX0 -= 0x10;
                temp_s0->velocityX.raw = FIXED_UNIT(-4);
            }

            temp_s0->velocityY.raw = FIXED_UNIT(-5.5);
            Sound_PlaySfx(SFX_TP_ARRIVE);
            position[0] = temp_s0->posX.whole;
            position[1] = temp_s0->posY.whole;
            position[2] = temp_s0->posZ.whole;
            sp46 = MarinaEffect_SpawnParticle(actor_index, position);
            if (sp46 != 0) {
                temp_v1 = &gActors[sp46];
                temp_v1->graphicIndex = 0x1826;
                temp_v1->graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
                temp_v1->colorA = 0xC0;
                temp_v1->unk_148 = 64.0f;
                temp_v1->scaleX = 0.1f;
                temp_v1->var_110 = 0.05f;
                temp_v1->palette_18C = PALETTE_8022D568;
                temp_v1->flags |= ACTOR_FLAG_UNK15;
                temp_v1->unk_184 = temp_v1->posX.raw;
                temp_v1->unk_188 = temp_v1->posY.raw;

                if (!(temp_v1->flags & ACTOR_FLAG_FLIPPED)) {
                    temp_v1->unk_140_f32 = -24.0f;
                }
                else {
                    temp_v1->unk_140_f32 = 24.0f;
                }

                temp_v1->unk_144 = 0.0f;
                temp_v1->unk_130 = actor_index;

                if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
                    temp_v1->unk_134 = -12.0f;
                }
                else {
                    temp_v1->unk_134 = 12.0f;
                }

                temp_v1->unk_138 = -32.0f;
                temp_v1->unk_13C_f32 = 1.0f;
                temp_v1->unk_14C = temp_s0->actorType;
                temp_v1->pfn_17C = func_801A17E0_729130;
                temp_v1->parentIndex = actor_index;
            }

            temp_s0->var_150 = 0;
            temp_s0->stateUpper = 7;
        }
        break;

    case 7:
        temp_s0 = &gActors[actor_index];
        if (temp_s0->var_150 == 0 && func_8005D418(actor_index) != 0) {
            temp_s0->damage = 0x64;
            temp_s0->hitFlags = HITFLAG_7;
            temp_s0->hitType = HITTYPE_2;
            temp_s0->flags |= ACTOR_FLAG_UNK9;
        }

        if (temp_s0->flags_098 & ACTOR_FLAG3_UNK0) {
            temp_s0->flags &= ~ACTOR_FLAG_UNK9;
            temp_s0->var_150 = 1;
            position[0] = (gActors[gActors[actor_index].parentIndex].posX.whole + temp_s0->posX.whole + temp_s0->hitboxAX0 + temp_s0->hitboxAX1) / 2;
            position[1] = (gActors[gActors[actor_index].parentIndex].posY.whole + temp_s0->posY.whole + temp_s0->hitboxAY0 + temp_s0->hitboxAY1) / 2;
            position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
            func_8005A1A4(actor_index, position, 2.0f);
            Sound_PlaySfx(SFX_HIT_002D);
        }

        temp_s0->velocityY.raw += FIXED_UNIT(0.1875);
        if (temp_s0->velocityY.raw >= FIXED_UNIT(1.5)) {
            temp_s0->flags &= ~ACTOR_FLAG_UNK9;
            temp_s0->unk_170_s8[1] = 0;
            temp_s0->var_150 = 0x10;
            temp_s0->stateUpper = 8;
        }

        if ((gActiveFrames % -8) == 0) {
            sp46 = Actor_RangeFindInactive(0x30, 0x90);
            if (sp46) {
                SpawnRoundBomb(sp46, temp_s0->posX.whole, temp_s0->posY.whole, temp_s0->velocityX.raw / 8, FIXED_UNIT(2));
                gActors[sp46].actorType = 0x2601;
            }
        }

        if (func_800490BC(actor_index, 0, -0x26) != 0) {
            temp_s0->state = 4;
        }
        break;

    case 8:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, 0, FIXED_UNIT(0.125));
        temp_s0->var_150--;

        if (!temp_s0->var_150) {
            temp_s0->unk_170 = 7;
            temp_s0->unk_17C = 0;
            temp_s0->unk_17C_s8[1] = 1;
            temp_s0->state = 3;
            temp_s0->stateUpper = 2;
        }
        break;

    default:
        break;
    }
}

void func_8019CC80_7245D0(u16 actor_index) {
    Actor* temp_s0;
    Actor* temp_v0_2;
    s32 position[3];
    u16 sp3A;
    u16 new_actor_index;

    sp3A = 0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[sp3A].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_170 = 0xC;
        gActors[actor_index].unk_17C = 5;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].var_150 += func_8005C774(10) + 1;

        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0] += 1;
            gActors[actor_index].var_150 -= 10;
        }

        if (func_8005D418(actor_index) != 0) {
            position[0] = gActors[actor_index].posX.whole;
            position[1] = gActors[actor_index].posY.whole;
            position[2] = gActors[actor_index].posZ.whole;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);

            if (new_actor_index) {
                gActors[new_actor_index].graphicIndex = gActors[actor_index].graphicIndex;
                gActors[new_actor_index].var_154 = -8;
                gActors[new_actor_index].unk_148 = 100.0f;
                gActors[actor_index].velocityX.raw = func_8005C774(0) * 0x520 + FIXED_UNIT(4);

                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
                }

                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                func_8005C550(actor_index, -1);
                Sound_PlaySfx(SFX_008C);
                gActors[actor_index].var_150 = 0x20;
                gActors[actor_index].stateUpper = 2;
            }
        }
        break;

    case 2:
        temp_s0 = &gActors[actor_index];

        if ((gActiveFrames % 5) == 0) {
            sp3A = Actor_RangeFindInactive(0x30, 0x90);

            if (sp3A) {
                SpawnRoundBomb(sp3A, gActors[actor_index].posX.whole, gActors[actor_index].hitboxBY1 + temp_s0->posY.whole, temp_s0->velocityX.raw / 8, FIXED_UNIT(4));
                gActors[sp3A].actorType = 0x2601;
            }
        }

        temp_v0_2 = &gActors[sp3A];
        func_8005C550(actor_index, -4);
        temp_s0->var_150--;

        if (!temp_s0->var_150 || (temp_s0->flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3))) {
            temp_s0->flags |= ACTOR_FLAG_DRAW;
            temp_s0->unk_170 = 9;
            temp_s0->unk_170_s8[1] = 2;
            temp_s0->unk_17C = 0;
            temp_s0->unk_17C_s8[1] = 1;
            temp_s0->stateUpper = 3;
        }

        if (Math_AbsS32_2(temp_v0_2->posX.whole - temp_s0->posX.whole) < 0x41 &&
            Math_AbsS32_2(temp_v0_2->posX.whole - temp_s0->posX.whole) >= 0x10) {
            temp_s0->flags |= ACTOR_FLAG_UNK9 | ACTOR_FLAG_DRAW;
            temp_s0->hitboxAY0 = -0xC;
            temp_s0->hitboxAY1 = -0x10;

            if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
                temp_s0->hitboxAX0 = 0;
                temp_s0->hitboxAX1 = 0x28;
            }
            else {
                temp_s0->hitboxAX0 = -0x28;
                temp_s0->hitboxAX1 = 0;
            }

            temp_s0->hitFlags = HITFLAG_0 | HITFLAG_1 | HITFLAG_7;
            temp_s0->hitType = HITTYPE_3;
            temp_s0->unk_0F8.raw = FIXED_UNIT(2);
            temp_s0->unk_0FC.raw = FIXED_UNIT(7);
            temp_s0->damage = 0x64;
            temp_s0->unk_170 = 0x21;
            temp_s0->unk_17C = 9;
            temp_s0->posY.whole -= 0x18;
            temp_s0->var_150 = 0;
            temp_s0->stateUpper = 4;
        }
        break;

    case 3:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, 0, FIXED_UNIT(0.25));

        if (temp_s0->velocityX.raw) {
            if (temp_s0->unk_170_s8[1] == 2) {
                if (!(temp_s0->unk_170_u16[1] & 0x4000)) {
                    temp_s0->unk_170_u16[1] |= 0x4000;
                    Sound_PlaySfx(SFX_SWISH_0098);
                }
            }

            if (Math_AbsS32_2(temp_s0->velocityX.raw) < FIXED_UNIT(1)) {
                temp_s0->unk_170_s8[1] = 3;
            }

            temp_s0->unk_180_u8[3] = 4;
        }
        else {
            temp_s0->stateUpper = 0xA;
        }
        break;

    case 4:
        temp_s0 = &gActors[actor_index];

        if (temp_s0->flags_098 & ACTOR_FLAG3_UNK0) {
            temp_s0->flags &= ~ACTOR_FLAG_UNK9;
            position[0] = (gActors[gActors[actor_index].parentIndex].posX.whole + temp_s0->posX.whole + temp_s0->hitboxAX0 + temp_s0->hitboxAX1) / 2;
            position[1] = (gActors[gActors[actor_index].parentIndex].posY.whole + temp_s0->posY.whole + temp_s0->hitboxAY0 + temp_s0->hitboxAY1) / 2;
            position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
            func_8005A1A4(actor_index, position, 2.0f);
            Sound_PlaySfx(SFX_HIT_002D);
        }

        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, 0, FIXED_UNIT(0.125));

        if (Math_AbsS32_2(temp_s0->velocityX.raw) < FIXED_UNIT(2)) {
            temp_s0->flags &= ~ACTOR_FLAG_UNK9;
        }

        if (temp_s0->velocityX.raw != 0) {
            temp_s0->unk_180_u8[3] = 4;

            if (temp_s0->flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                temp_s0->velocityX.raw = 0;
            }
        }
        else {
            temp_s0->var_150 = 0xA;
            temp_s0->stateUpper = 7;
        }
        break;

    case 7:
        gActors[actor_index].var_150--;

        if (!gActors[actor_index].var_150) {
            gActors[actor_index].unk_170 = 5;
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].posY.whole += 0x18;
            gActors[actor_index].stateUpper = 8;
        }
        break;

    case 8:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].stateUpper = 0xA;
        }
        break;

    case 10:
        gActors[actor_index].state = 1;
        break;

    default:
        break;
    }
}

void func_8019D274_724BC4(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 2;

        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].var_150 += func_8005C774(10) + 1;
        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].var_150 -= 10;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = func_8005C774(20) + 20;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_170 = 3;
            gActors[actor_index].hitboxAY0 = 0;
            gActors[actor_index].hitboxAY1 = -20;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = func_8005C774(50) + 96;
                gActors[actor_index].hitboxAX0 = 16;
            }
            else {
                gActors[actor_index].hitboxAX1 = -16;
                gActors[actor_index].hitboxAX0 = -96 - func_8005C774(50);
            }

            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(1);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(1.625);
            gActors[actor_index].damage = 20;
            gActors[actor_index].hitFlags = 0;
            gActors[actor_index].hitType = HITTYPE_3;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        if (gActors[actor_index].var_150 % 7 == 0) {
            Sound_PlaySfx(SFX_SHOT_0054);
        }

        if (!gActors[actor_index].unk_170_s8[0]) {
            func_8019B100_722A50(actor_index);

            if (gActors[actor_index].unk_170_s8[1] == 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
                gActors[actor_index].var_150--;
            }
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
            func_8019B3F8_722D48(actor_index, gActors[actor_index].parentIndex);
            Sound_PlaySfx(SFX_0028);

            if (gActors[actor_index].var_150 > 10) {
                gActors[actor_index].var_150 = 10;
            }

            if (gActors[actor_index].var_150 == 1) {
                gActors[actor_index].hitFlags = HITFLAG_0 | HITFLAG_7;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4);
            }
        }

        if (!gActors[actor_index].unk_170_s8[0] && !gActors[actor_index].unk_170_s8[1] && !gActors[actor_index].var_150) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].var_150 = 50 - func_8005C774(40);
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        gActors[actor_index].unk_170 = 6;
        gActors[actor_index].stateUpper = 5;
        break;

    case 5:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        gActors[actor_index].var_150--;
        if (!gActors[actor_index].var_150) {
            if (Math_AbsS32_2(gActors[actor_index].posX.whole - gActors[0].posX.whole) > 64 &&
                Math_AbsS32_2(gActors[actor_index].posX.whole - gActors[0].posX.whole) < 128 &&
                Rand() < 30) {
                gActors[actor_index].stateUpper = 1;
            }
            else {
                gActors[actor_index].unk_170 = 2;
                gActors[actor_index].stateUpper = 8;
            }
        }
        break;

    case 8:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019D690_724FE0(u16 actor_index) {
    s32 angle;
    s32 position_offset;
    u16 new_actor_index;

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 2;

        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].unk_170 = 6;
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].stateUpper = 5;
        }
        break;

    case 5:
        if (!func_8005D418(actor_index)) {
            gActors[actor_index].var_150 += func_8005C774(10) + 1;
            if (gActors[actor_index].var_150 >= 10) {
                gActors[actor_index].unk_170_s8[0]++;
                gActors[actor_index].var_150 -= 10;
            }
        }
        else {
            new_actor_index = Actor_RangeFindInactive(0x30, 0x90);

            if (new_actor_index) {
                gActors[actor_index].var_150 = func_8005C774(20) + 20;
                gActors[actor_index].var_154 = 0;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    angle = 0;
                    position_offset = FIXED_UNIT(24);
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
                }
                else {
                    angle = FIXED_UNIT(512);
                    position_offset = FIXED_UNIT(-24);
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
                }

                func_801A0BC4_728514(new_actor_index, actor_index, angle, gActors[actor_index + 1].posX.raw + position_offset, gActors[actor_index + 1].posY.raw - FIXED_UNIT(8), gActors[actor_index + 1].posZ.raw);
                gActors[actor_index].stateUpper = 10;
            }
        }
        break;

    case 10:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        if (!gActors[actor_index].velocityX.raw) {
            gActors[actor_index].unk_170 = 6;
            gActors[actor_index].stateUpper = 11;
        }
        break;

    case 11:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].stateUpper = 12;
        }
        break;

    case 12:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            Sound_PlaySfx(SFX_008A);
            gActors[actor_index].stateUpper = 13;
        }
        break;

    case 13:
        gActors[actor_index].var_150--;
        if (!gActors[actor_index].var_150) {
            gActors[actor_index].unk_170 = 2;
            gActors[actor_index].stateUpper = 14;
        }
        break;

    case 14:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019D9BC_72530C(u16 actor_index) {
    Actor* temp_v1;
    s32 var_v1;
    s32 position[3];
    s32 temp_a0;
    u16 temp_t0 = gActors[actor_index].parentIndex;

    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        temp_v1 = &gActors[temp_t0];
        temp_v1->flags_098 |= ACTOR_FLAG3_GRAB;
        temp_v1->parentIndex = actor_index;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            temp_v1->unk_104 = gActors[actor_index].posX.raw + FIXED_UNIT(40);
        }
        else {
            temp_v1->unk_104 = gActors[actor_index].posX.raw + FIXED_UNIT(-40);
        }

        temp_v1->unk_108 = ((gActors[actor_index].hitboxAY0 << 16) + gActors[actor_index].posY.raw) - (temp_v1->hitboxBY0 << 16);
        temp_v1->unk_10C = gActors[actor_index].posZ.raw - 1;
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            var_v1 = gActors[actor_index].posX.whole + 0x38;
        }
        else {
            var_v1 = gActors[actor_index].posX.whole - 0x38;
        }

        if (func_80012AB4(var_v1, gActors[actor_index].posY.whole) != 0) {
            gActors[actor_index].state = 1;
            break;
        }

        Sound_PlaySfx(SFX_LUNAR_YELL);
        gActors[actor_index].unk_170 = 0xE;
        gActors[actor_index].stateUpper = 1;
        // fallthrough
    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].hitboxAY0 = 0;
            var_v1 = FIXED_UNIT(3);
            temp_a0 = func_8005C774(0xA);
            var_v1 += temp_a0 * 0x1A00;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = var_v1;
                gActors[actor_index].hitboxAX1 = 0x34;
                gActors[actor_index].hitboxAX0 = 0;
            }
            else {
                gActors[actor_index].velocityX.raw = -var_v1;
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = -0x34;
            }

            gActors[actor_index].hitboxAY0 = 0xC;
            gActors[actor_index].hitboxAY1 = -0x10;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK11;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    default:
        break;

    case 2:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK8) && gActors[actor_index].parentIndex == 0) {
            MarinaEffect_Grab(actor_index, 0.8f);
            temp_t0 = gActors[actor_index].parentIndex;
            temp_v1 = &gActors[temp_t0];
            temp_v1->flags_098 |= ACTOR_FLAG3_GRAB;
            temp_v1->parentIndex = actor_index;
            temp_v1->unk_104 = temp_v1->posX.raw;
            temp_v1->unk_108 = temp_v1->posY.raw;
            temp_a0 = temp_v1->posZ.raw;
            temp_v1->unk_10C = temp_a0;
            gActors[actor_index].posZ.raw = temp_a0 + 1;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
        }

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            var_v1 = gActors[actor_index].posX.whole + 0x38;
        }
        else {
            var_v1 = gActors[actor_index].posX.whole - 0x38;
        }

        if (func_80012AB4(var_v1, gActors[actor_index].posY.whole) != 0) {
            gActors[actor_index].velocityX.raw = 0;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) <= FIXED_UNIT(1)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
        }

        if (gActors[actor_index].velocityX.raw != 0) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                gActors[actor_index].state = 1;
            }
            else {
                gActors[actor_index].stateUpper = 4;
            }

            gActors[actor_index].var_150 = 0x3C;
        }
        break;

    case 4:
        gActors[actor_index].var_150--;
        if (!gActors[actor_index].var_150) {
            gActors[actor_index].unk_170 = 0xF;
            Sound_PlaySfx(SFX_SWISH_0098);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                position[0] = gActors[actor_index].posX.whole + 0x1C;
            }
            else {
                position[0] = gActors[actor_index].posX.whole - 0x1C;
            }

            position[1] = gActors[actor_index].posY.whole;
            position[2] = gActors[actor_index].posZ.whole - 1;
            temp_v1 = &gActors[MarinaEffect_SpawnParticle(actor_index, position)];
            temp_v1->palette_18C = PALETTE_8022D568;
            temp_v1->graphicFlags |= ACTOR_GFLAG_PALETTE;
            temp_v1->graphicList = D_801A3404_72AD54;
            gActors[actor_index].stateUpper = 5;
        }
        break;

    case 5:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            func_8004F614(actor_index, 0, FIXED_UNIT(6), 0x64);
            Marina_SubHealth(gActors[actor_index].parentIndex, 0x64);
            gPlayerData.unk_0A += 3;
            gActors[temp_t0].hitByType = 0x1C;
            func_8005C774(0);
            gActors[temp_t0].var_158 = FIXED_UNIT(0.09375);
            position[0] = gActors[temp_t0].posX.whole;
            position[1] = (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0) - gActors[temp_t0].hitboxBY0;
            position[2] = gActors[actor_index].posZ.whole;
            func_8005A1A4(actor_index, position, 2.0f);
            Sound_PlaySfx(SFX_006A);
            gActors[actor_index].posZ.raw = 0;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        temp_v1 = &gActors[temp_t0];
        if ((temp_v1->velocityY.raw - (temp_v1->var_158 * 0x25)) <= FIXED_UNIT(-6)) {
            gActors[actor_index].unk_170 = 0x1B;
            gActors[actor_index].stateUpper = 8;
        }
        break;

    case 8:
        if (gActors[actor_index].unk_170_s8[1] == 4) {
            if (gActors[actor_index].unk_170_s8[0] == 0) {
                gActors[actor_index].hitboxAY0 = 0x28;
                gActors[actor_index].hitboxAY1 = -0x18;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].hitboxAX1 = 0x30;
                    gActors[actor_index].hitboxAX0 = 0;
                }
                else {
                    gActors[actor_index].hitboxAX1 = 0;
                    gActors[actor_index].hitboxAX0 = -0x30;
                }

                Sound_PlaySfx(SFX_SWISH_0098);
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 1;
                gActors[actor_index].var_150 = 0xA;
                gActors[actor_index].damage = 0xC8;
                gActors[actor_index].hitFlags = HITFLAG_0 | HITFLAG_1 | HITFLAG_7;
                gActors[actor_index].hitType = HITTYPE_3;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(5);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    position[0] = gActors[actor_index].posX.whole + 0x20;
                }
                else {
                    position[0] = gActors[actor_index].posX.whole - 0x20;
                }

                position[1] = gActors[actor_index].posY.whole - 4;
                position[2] = gActors[actor_index].posZ.whole;
                temp_t0 = MarinaEffect_SpawnParticle(actor_index, position);

                if (temp_t0 != 0) {
                    temp_v1 = &gActors[temp_t0];
                    temp_v1->graphicIndex = 0x1824;
                    temp_v1->graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
                    temp_v1->palette_18C = PALETTE_8022D568;
                    temp_v1->posZ.raw += 1;
                    temp_v1->colorA = 0x78;
                    temp_v1->var_154 = 0x10;
                    temp_v1->unk_164 = -1;
                    temp_v1->unk_148 = 48.0f;
                    temp_v1->unk_114 = 0.01f;
                }
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                    position[0] = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1 + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
                    position[1] = (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1 + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
                    position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
                    func_8005A1A4(actor_index, position, 3.0f);
                    Sound_PlaySfx(SFX_HIT_002D);
                }

                gActors[actor_index].var_150--;

                if (!gActors[actor_index].var_150) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                }
            }
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019E1BC_725B0C(u16 actor_index) {
    if (!gActors[actor_index].stateUpper) {
        gActors[actor_index].unk_170 = 0x1D;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;

        if (gActors[actor_index].unk_0F8.raw < 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].stateUpper = 1;
    }

    gActors[actor_index].unk_180_u8[3] = MARINAEFF_5;
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.375));

    if (func_8005D418(actor_index) && Math_AbsS32_2(gActors[actor_index].velocityX.raw) < FIXED_UNIT(1.0)) {
        gActors[actor_index].state = 1;
    }
}

void func_8019E2A8_725BF8(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;

        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].unk_170 = gActors[actor_index].unk_0F8.raw < 0 ? 16 : 17;
        }
        else {
            gActors[actor_index].unk_170 = gActors[actor_index].unk_0F8.raw > 0 ? 16 : 17;
        }

        if (func_8005D338(actor_index) == 16) {
            gActors[actor_index].var_15C = 0;
        }

        if (func_8005D338(actor_index) == 17) {
            gActors[actor_index].var_15C = 1;
        }

        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            if (func_8005D338(actor_index) == 16) {
                gActors[actor_index].unk_170 = 18;
            }

            if (func_8005D338(actor_index) == 17) {
                gActors[actor_index].unk_170 = 19;
            }
        }

        gActors[actor_index].unk_17C = 0;
        Sound_PlaySfxAtActor2(SFX_LUNAR_OW, actor_index);
        gActors[actor_index].var_160_u8 = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].unk_180_u8[3] = MARINAEFF_5;
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            // BUG: checks the actor index instead of horizontal velocity
            if (Math_AbsS32_2(actor_index) > FIXED_UNIT(1.0)) {
                break;
            }
        }
        else {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

            if (func_800490BC(actor_index, 0, -0x26)) {
                Sound_PlaySfx(SFX_006C);
                gActors[actor_index].unk_170 = 9;
                gActors[actor_index].state = 4;
                break;
            }
        }

        if (func_8005D418(actor_index)) {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].state = 1;
            }
            else {
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = 3;
            }
        }
        break;
    }
}

void func_8019E4E8_725E38(u16 actor_index) {
    s32 params[5];
    s32 angle;
    s32 temp_v0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        temp_v0 = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityX.raw = temp_v0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].unk_170 = temp_v0 < 0 ? 18 : 19;
        }
        else {
            gActors[actor_index].unk_170 = temp_v0 > 0 ? 18 : 19;
        }

        if (func_8005D338(actor_index) == 18) {
            gActors[actor_index].var_15C = 0;
        }

        if (func_8005D338(actor_index) == 19) {
            gActors[actor_index].var_15C = 1;
        }

        gActors[actor_index].var_154 = 0;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
        gActors[actor_index].unk_11C = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
        gActors[actor_index].var_110 = 0.0f;
        // fallthrough
    case 1:
        if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.125));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2), FIXED_UNIT(0.125));
        }

        if (gActors[actor_index].pendingDamage) {
            gActors[actor_index].pendingDamage--;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 3;
            break;
        }
        else if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
            Sound_PlaySfxAtActor2(SFX_LUNAR_OW, actor_index);
            gActors[actor_index].stateUpper = 2;
        }
        else {
            break;
        }
        // fallthrough
    case 2:
        Sound_PlaySfx(SFX_0068);
        // BUG: ? angle and params[0] can be uninitialized when neither flag is set
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            params[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
            angle = FIXED_UNIT(-256);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            params[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
            angle = FIXED_UNIT(256);
        }

        params[1] = gActors[actor_index].posY.whole;
        params[2] = gActors[actor_index].posZ.whole;
        params[3] = 0;
        params[4] = 0;
        func_8005A320(actor_index, params, angle, 3.0f);
        Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]);
        Sound_PlaySfx(SFX_LUNAR_OW);
        gActors[actor_index].unk_13C_s16[1] = 0;
        gActors[actor_index].unk_170 = func_8005D338(actor_index) == 18 ? 0x4013 : 0x4012;
        gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityX.whole) + 4;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].unk_170 = func_8005D338(actor_index) == 18 ? 26 : 25;
            gActors[actor_index].unk_17C = 6;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            params[0] = gActors[actor_index].posX.whole;
            params[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            params[2] = gActors[actor_index].posZ.whole;
            params[3] = 0;
            params[4] = 0;
            func_8005A320(actor_index, params, 0, 3.0f);

            if (func_8005D338(actor_index) == 25) {
                gActors[actor_index].unk_170 = 21;
            }

            if (func_8005D338(actor_index) == 26) {
                gActors[actor_index].unk_170 = 22;
            }

            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].stateUpper = 5;
        }
        break;

    case 5:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            func_8005D3D8(actor_index);
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        if (gActors[actor_index].velocityX.raw) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }
        else if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = 32;
            gActors[actor_index].state = 19;
        }
        break;
    }
}

void func_8019E9A4_7262F4(u16 actor_index) {
    u16 parent_index;

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) && ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) || gActors[actor_index].stateUpper >= 3)) {
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        parent_index = gActors[actor_index].parentIndex;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));

            if (func_80049040(actor_index)) {
                gActors[actor_index].stateUpper = 0;
            }
        }
        else {
            gActors[actor_index].var_150 = 0;

            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
            }

            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                gActors[actor_index].velocityX.raw = 0;
            }

            if (func_800490BC(actor_index, -1, -38)) {
                Sound_PlaySfx(SFX_006C);
                gActors[actor_index].stateUpper = 0;
            }
        }

        switch (gActors[actor_index].stateUpper) {
        case 0:
            if ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != (gActors[parent_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                    gActors[actor_index].unk_170 = 29;
                }
                else {
                    gActors[actor_index].unk_170 = 18;
                }

                gActors[actor_index].stateUpper = 1;
            }
            else {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                    gActors[actor_index].unk_170 = 29;
                }
                else {
                    gActors[actor_index].unk_170 = 19;
                }

                gActors[actor_index].stateUpper = 2;
            }

            gActors[actor_index].unk_17C = 0;

            if (gActors[actor_index].hitboxBY1 > -38) {
                gActors[actor_index].posY.whole += gActors[actor_index].hitboxBY1 + 38;
            }

            gActors[actor_index].var_150 = 0;
            // fallthrough
        case 1:
        case 2:
            gActors[actor_index].var_150 += func_8005C774(5) + 1;
            if (gActors[actor_index].var_150 >= 100) {
                gActors[actor_index].hitFlags = HITFLAG_0;
                gActors[actor_index].hitType = HITTYPE_3;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1;

                if (gActors[actor_index].stateUpper == 1) {
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].hitboxAX0 = 0;
                        gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 32;
                    }
                    else {
                        gActors[actor_index].hitboxAX1 = 0;
                        gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 32;
                    }

                    gActors[actor_index].unk_170 = 27;
                    gActors[actor_index].stateUpper = 3;
                }

                if (gActors[actor_index].stateUpper == 2) {
                    gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxAY1 + 32;

                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].hitboxAX1 = 0;
                        gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 32;
                    }
                    else {
                        gActors[actor_index].hitboxAX0 = 0;
                        gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 32;
                    }

                    gActors[actor_index].unk_170 = 28;
                    gActors[actor_index].stateUpper = 5;
                }
            }
            break;

        case 3:
            if (gActors[actor_index].unk_170_s8[1] >= 4) {
                Sound_PlaySfx(SFX_SWISH_0098);
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(5);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
                gActors[actor_index].damage = 0;
                gActors[actor_index].state = 15;
            }
            break;

        case 5:
            if (gActors[actor_index].unk_170_s8[1] >= 2) {
                Sound_PlaySfx(SFX_SWISH_0098);
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(-5);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
                gActors[actor_index].damage = 0;
                gActors[actor_index].state = 15;
            }
            break;
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
        gActors[actor_index].unk_13C_s16[1] = 30;
        func_8005C550(actor_index, -30);

        if (gActors[actor_index].unk_140_u8[0] < 4) {
            gActors[actor_index].state = 16;
        }
        else if (gActors[actor_index].unk_140_u8[0] >= 5) {
            gActors[actor_index].state = 17;
        }
        else if (gActors[actor_index].unk_140_u8[0] == 4) {
            gActors[actor_index].state = 18;
        }
    }
    else {
        gActors[actor_index].stateUpper = 2;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].state = 1;
        }
        else {
            gActors[actor_index].stateLower = 3;
        }
    }
}

void func_8019EDDC_72672C(u16 actor_index) {
    f32 scale = 3.0f;
    s32 sound = SFX_HIT_002D;
    s32 position[3];

    if (!gActors[actor_index].stateUpper && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        position[0] = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1 + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
        position[1] = (gActors[actor_index].posY.whole + gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1 + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
        position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
        func_8005A1A4(actor_index, position, scale);
        Sound_PlaySfx(sound);
        gActors[actor_index].stateUpper = 1;
    }

    if (func_8005D418(actor_index)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        gActors[actor_index].state = 1;
    }
}

void func_8019EF14_726864(u16 actor_index) {
    func_8005C550(actor_index, -30);

    if (!gActors[actor_index].stateUpper) {
        gActors[actor_index].unk_170 = 7;
        gActors[actor_index].unk_170_s8[1] = 1;

        if (!gActors[actor_index].unk_0FC.raw) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2.75);
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.75);
        }

        gActors[actor_index].velocityY.raw = FIXED_UNIT(6.0);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        gActors[actor_index].stateUpper = 2;

        if (!gActors[actor_index].unk_140_u8[0]) {
            gActors[actor_index].velocityX.raw /= 2.5;
            gActors[actor_index].stateLower = 3;
        }
        else {
            gActors[actor_index].var_150 = FIXED_UNIT(0.3125);
            gActors[actor_index].stateLower = 6;
        }
    }
}

void func_8019F038_726988(u16 actor_index) {
    s32 params[5];

    func_8005C550(actor_index, -60);

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-4);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;

        if (gActors[actor_index].unk_140_u8[0] == 8) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].stateUpper = 8;
        }
        else {
            if (!gActors[actor_index].unk_0FC.raw) {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].unk_170 = 25;
                }
                else {
                    gActors[actor_index].unk_170 = 26;
                }

                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            }
            else {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].unk_170 = 26;
                }
                else {
                    gActors[actor_index].unk_170 = 25;
                }

                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            }

            gActors[actor_index].unk_17C = 6;
            gActors[actor_index].stateUpper = 1;
        }
        break;

    case 1:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]);
            Sound_PlaySfx(SFX_LUNAR_OW);
            params[0] = gActors[actor_index].posX.whole;
            params[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            params[2] = gActors[actor_index].posZ.whole;
            params[3] = 0;
            params[4] = 0;
            func_8005A320(actor_index, params, 0, 3.0f);

            if (func_8005D338(actor_index) == 25) {
                gActors[actor_index].unk_170 = 21;
            }

            if (func_8005D338(actor_index) == 26) {
                gActors[actor_index].unk_170 = 22;
            }

            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            func_8005D3D8(actor_index);
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (gActors[actor_index].velocityX.raw) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }
        else if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = 32;
            gActors[actor_index].state = 19;
        }
        break;

    case 8:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-2)) {
            if (func_8005D338(actor_index) != 7) {
                gActors[actor_index].unk_170 = 7;
                gActors[actor_index].unk_170_s8[1] = 2;
            }
        }
        else if (func_8005D338(actor_index) != 8) {
            gActors[actor_index].unk_170 = 8;
        }

        if (func_800490BC(actor_index, 0, -38)) {
            Sound_PlaySfx(SFX_006C);
            gActors[actor_index].unk_170 = 9;
            gActors[actor_index].unk_170_s8[1] = 1;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                params[0] = gActors[actor_index].posX.whole - 3;
            }
            else {
                params[0] = gActors[actor_index].posX.whole + 3;
            }

            params[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            params[2] = gActors[actor_index].posZ.whole;
            params[3] = 0;
            params[4] = 0;
            func_8005A320(actor_index, params, 0, 3.0f);
            gActors[actor_index].var_150 = 15;
            gActors[actor_index].stateUpper = 9;
        }
        break;

    case 9:
        if (gActors[actor_index].unk_170_s8[1] == 2 && gActors[actor_index].var_150) {
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].var_150--;
        }

        if (func_8005D418(actor_index)) {
            func_8005C550(actor_index, -10);
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019F48C_726DDC(u16 actor_index) {
    s32 params[5];
    s32 angle;

    func_8005C550(actor_index, -60);

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;

        if (!gActors[actor_index].unk_0FC.raw) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170 = 19;
            }
            else {
                gActors[actor_index].unk_170 = 18;
            }

            gActors[actor_index].velocityX.raw = FIXED_UNIT(6);
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170 = 18;
            }
            else {
                gActors[actor_index].unk_170 = 19;
            }

            gActors[actor_index].velocityX.raw = FIXED_UNIT(-6);
        }

        gActors[actor_index].unk_17C = 8;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.125));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-2), FIXED_UNIT(0.125));
        }

        if (gActors[actor_index].pendingDamage) {
            gActors[actor_index].pendingDamage--;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_8005D418(actor_index)) {
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }
        else if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
            Sound_PlaySfxAtActor2(SFX_LUNAR_OW, actor_index);
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        Sound_PlaySfx(SFX_0068);
        // BUG: ? angle and params[0] can be uninitialized when neither flag is set
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            params[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
            angle = FIXED_UNIT(-256);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            params[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
            angle = FIXED_UNIT(256);
        }

        params[1] = gActors[actor_index].posY.whole;
        params[2] = gActors[actor_index].posZ.whole;
        params[3] = 0;
        params[4] = 0;
        func_8005A320(actor_index, params, angle, 3.0f);
        Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]);
        Sound_PlaySfx(SFX_LUNAR_OW);
        gActors[actor_index].unk_170 = func_8005D338(actor_index) == 18 ? 0x4013 : 0x4012;
        gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityX.whole) + 4;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
        gActors[actor_index].var_150--;

        if (!gActors[actor_index].var_150) {
            gActors[actor_index].unk_170 = func_8005D338(actor_index) == 18 ? 26 : 25;
            gActors[actor_index].unk_17C = 6;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].stateLower = 0x11;
        }
        break;
    }
}

void func_8019F788_7270D8(u16 actor_index) {
    if (gActors[actor_index].health <= 0) {
        gActors[actor_index].state = 0x14;
        return;
    }

    func_8005C550(actor_index, 60);

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].var_150) {
            gActors[actor_index].var_150--;
            return;
        }

        if (func_8005D338(actor_index) == 0x15) {
            gActors[actor_index].unk_170 = 0x17;
            gActors[actor_index].stateUpper = 1;
        }

        if (func_8005D338(actor_index) == 0x16) {
            gActors[actor_index].unk_170 = 0x18;
            gActors[actor_index].unk_17C = 7;
            gActors[actor_index].posY.whole += 24;
            gActors[actor_index].stateUpper = 5;
        }

        gActors[actor_index].var_160_u8 = 0;
        break;

    case 1:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            }

            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].unk_17C_s8[1] = 1;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_8005D418(actor_index)) {
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }
        break;

    case 5:
        if (gActors[actor_index].unk_170_s8[1] >= 3) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            }

            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);

        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].velocityX.raw /= 2;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }
        break;
    }
}

void func_8019F9F8_727348(u16 actor_index) {
    if (!gActors[actor_index].stateUpper) {
        gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= ACTOR_FLAG_ENABLED;
        Sound_StartFade(0x81, 60);
        gStageState++;
        gActors[actor_index].stateUpper++;
    }

    D_800BE544 = 0x8000;
    gScreenPosTargetX.raw = gPlayerPosX.raw;
    gScreenPosTargetY.raw = gPlayerPosY.raw;
}

void func_8019FAB8_727408(u16 actor_index) {
    u16 new_actor_index;
    Actor* particle;
    s32 position[3];
    u8 environment_color;

    if (!gActors[actor_index].stateUpper) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        D_801376BC[1] = 0;
        gUseBlackPrimColor[1] = 0;
        gEnvColorsBlue[1] = 0;
        gEnvColorsGreen[1] = 0;
        gEnvColorsRed[1] = 0;
        gEnvColorsAlpha[1] = 0x80;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = 0;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(8);
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[actor_index].var_150 = 12;
        gActors[actor_index].stateUpper = 1;
        *PALETTE_80380200 = 0x2109;
    }

    if (gActors[actor_index].velocityX.raw == gActors[actor_index].unk_0F8.raw) {
        gActors[actor_index].unk_0F8.raw = RandModulo(8) << 16;
    }

    gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityX.raw) / 4096;
    D_800BE578 = gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0];
    D_800BE580 = gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0];
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].unk_0F8.raw, FIXED_UNIT(0.0078125));
    environment_color = gActors[actor_index].var_150;
    gEnvColorsBlue[1] = environment_color;
    gEnvColorsGreen[1] = environment_color;
    gEnvColorsRed[1] = environment_color;

    if (80.0 < ((s32*)D_80137480)[8] * 1.32 / 10000.0 || Rand() >= 6) {
        return;
    }

    switch ((s32)Rand() % 2) {
    case 0:
        position[0] = RandModulo(0);
        position[1] = RandModulo(32) + 64;
        position[2] = RandModulo(50) - 30;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
        if (new_actor_index) {
            particle = &gActors[new_actor_index];
            particle->graphicFlags |= ACTOR_GFLAG_SCALE;

            switch (Rand() & 5) {
            case 0:
                particle->graphicIndex = 0x15A;
                break;

            case 1:
                particle->graphicIndex = 0x15C;
                break;

            case 4:
                particle->graphicIndex = 0x1D4;
                break;

            case 2:
            case 3:
                break;
            }

            particle->colorA = 0x80;
            particle->var_154 = 10;
            particle->unk_164 = -1;
            particle->scaleY = 2.0f;
            particle->scaleX = 2.0f;
            particle->unk_148 = 120.0f;
            particle->velocityX.raw = -gActors[actor_index].unk_0F8.raw;
            particle->velocityY.raw = FIXED_UNIT(-2);
        }
        break;

    case 1:
        position[0] = RandModulo(0);
        position[1] = RandModulo(16) - gScreenPosCurrentY.parts[0] + 320;
        position[2] = RandModulo(50) - 30;
        new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);
        if (new_actor_index) {
            particle = &gActors[new_actor_index];
            particle->graphicFlags |= ACTOR_GFLAG_SCALE;
            particle->graphicList = D_801A3414_72AD64;
            particle->colorA = 0xFF;
            particle->var_154 = -1;
            particle->unk_148 = 300.0f;
            particle->velocityX.raw = -gActors[actor_index].velocityX.raw / 2;

            if (particle->velocityX.raw > 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            particle->scaleX = 2.5f;
            particle->scaleY = 1.5f;
        }
        break;
    }
}

void func_8019FEDC_72782C(u16 actor_index) {
    s32 params[5];
    u16 new_actor_index;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;

        if (gStageState == 3) {
            gActors[actor_index].var_150 = 96;
            gActors[actor_index].stateUpper = 1;
        }
        break;

    case 1:
        if (--gActors[actor_index].var_150 == 0) {
            gActors[actor_index].posY.whole += 192;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].unk_170 = 31;
            Sound_PlaySfx(SFX_013C);
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.09375);
        params[0] = gActors[actor_index].posX.whole;
        params[1] = gActors[actor_index].posY.whole;
        params[2] = gActors[actor_index].posZ.whole;

        if (func_800490BC(actor_index, 0, -38)) {
            Sound_PlaySfx(SFX_0080);
            params[1] += gActors[actor_index].hitboxBY1 / 2;
            params[3] = 0;
            params[4] = 0;
            func_8005A320(actor_index, params, 0, 3.0f);
            params[1] = gActors[actor_index].posY.whole;
            gActors[actor_index].var_150 = 10;
            gActors[actor_index].var_154 = FIXED_UNIT(2);
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].stateUpper = 3;
            gActors[actor_index].var_110 = 2.0f;
        }

        new_actor_index = MarinaEffect_SpawnParticle(actor_index, params);
        if (new_actor_index) {
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].graphicIndex = GINDEX_BLASTA;
            gActors[new_actor_index].colorA = 160;
            gActors[new_actor_index].unk_148 = 1.0f;

            if (gActors[actor_index].stateUpper == 3) {
                gActors[new_actor_index].unk_148 = 30.0f;
            }

            gActors[new_actor_index].var_154 = -5;
            gActors[new_actor_index].var_160 = 0x03000000;
            gActors[new_actor_index].posZ.whole++;
            gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
            gActors[new_actor_index].unk_184 = gActors[new_actor_index].posX.raw;
            gActors[new_actor_index].unk_188 = gActors[new_actor_index].posY.raw;
            gActors[new_actor_index].unk_140_f32 = -20.0f;
            gActors[new_actor_index].unk_144 = 0.0f;

            if (!(gPlayerData.frames & 1)) {
                gActors[new_actor_index].scaleX = 2.0f;
                gActors[new_actor_index].scaleY = 1.5f;
            }
            else {
                gActors[new_actor_index].scaleY = 2.0f;
                gActors[new_actor_index].scaleX = 4.5f;
            }

            switch (Rand() % 4) {
            case 0:
                gActors[new_actor_index].palette_18C = PALETTE_8022D588;
                break;

            case 1:
                gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
                break;

            case 2:
                gActors[new_actor_index].palette_18C = PALETTE_8022D568;
                break;

            case 3:
                gActors[new_actor_index].palette_18C = PALETTE_8022D548;
                break;
            }

            if ((s32)gPlayerData.frames % 3 == 0) {
                params[4] = 0;
                new_actor_index = MarinaEffect_SpawnParticle(actor_index, params);
                if (new_actor_index) {
                    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                    gActors[new_actor_index].var_154 = -6;
                    gActors[new_actor_index].graphicIndex = 0xD6;
                    gActors[new_actor_index].scaleX = 0.2f;
                    gActors[new_actor_index].scaleY = 0.2f;
                    gActors[new_actor_index].var_110 = 0.1f;
                    gActors[new_actor_index].unk_114 = 0.1f;
                    gActors[new_actor_index].unk_118 = -0.0001f;
                    gActors[new_actor_index].unk_11C = -0.0001f;
                    gActors[new_actor_index].unk_148 = 30.0f;
                }
            }
        }
        break;

    case 3:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (gActors[actor_index].var_15C % 24 == 0) {
            params[0] = gActors[actor_index].posX.whole;
            params[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            params[2] = gActors[actor_index].posZ.whole;
            params[4] = (s32)PALETTE_8022D4E8;

            for (gActors[actor_index].var_150 = gActors[actor_index].var_15C % 64; gActors[actor_index].var_150 < 1024; gActors[actor_index].var_150 += 112) {
                if (gActors[actor_index].var_150 > 512 && gActors[actor_index].var_150 < 1008) {
                    continue;
                }

                new_actor_index = func_8005A7D0(actor_index, params, gActors[actor_index].var_110 * 0.75, gActors[actor_index].var_110);
                if (!new_actor_index) {
                    break;
                }

                gActors[new_actor_index].velocityX.raw = (f32)gActors[actor_index].var_154 * COS(gActors[actor_index].var_150);
                gActors[new_actor_index].velocityZ.raw = (f32)gActors[actor_index].var_154 * SIN(gActors[actor_index].var_150);
                gActors[new_actor_index].var_158 = -gActors[new_actor_index].velocityX.raw / 60;
                gActors[new_actor_index].unk_174 = -gActors[new_actor_index].velocityZ.raw / 60;
            }

            gActors[actor_index].var_154 -= FIXED_UNIT(0.125);
            gActors[actor_index].var_110 -= 0.2;

            if (gActors[actor_index].var_110 < 1.5 && !(gActors[actor_index].flags & ACTOR_FLAG_DRAW)) {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;

                for (gActors[actor_index].var_150 = 0; gActors[actor_index].var_150 < 10; gActors[actor_index].var_150++) {
                    new_actor_index = MarinaEffect_SpawnParticle(actor_index, params);
                    if (!new_actor_index) {
                        break;
                    }

                    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                    gActors[new_actor_index].unk_148 = (f32)(RandModulo(50) + 200);
                    gActors[new_actor_index].colorA = 96;
                    gActors[new_actor_index].graphicIndex = Rand() % 10 + 0x1CA;
                    gActors[new_actor_index].posX.whole += RandModulo(16);
                    gActors[new_actor_index].posY.whole += Math_AbsS32_2(RandModulo(16));
                    gActors[new_actor_index].velocityX.raw = RandModulo(0) << 7;
                    gActors[new_actor_index].velocityY.raw = (Rand() & 0x7F) << 8;
                    gActors[new_actor_index].var_110 = -0.002f;
                    gActors[new_actor_index].unk_114 = -0.002f;
                }
            }

            if (gActors[actor_index].var_110 < 1.0) {
                gActors[actor_index].var_150 = 140;
                gActors[actor_index].stateUpper = 5;
            }
        }

        gActors[actor_index].var_15C++;
        break;

    case 5:
        if (--gActors[actor_index].var_150 == 0) {
            Sound_PlaySfx(SFX_LUNAR_INTRO1);
            gActors[actor_index].unk_170 = 30;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 32;
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 34;
            gActors[actor_index].stateUpper = 8;
        }
        break;

    case 8:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 35;
            gStageState++;
            gActors[actor_index].stateUpper = 100;
        }
        break;

    case 100:
        if (gStageState >= 10) {
            SpawnCrosshair(15, actor_index);
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_801A07B8_728108(u16 actor_index) {
    u16 index;
    Actor* temp_v1;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].var_160_s8[1] = 0;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
        gActors[actor_index].graphicLists = D_801A3368_72ACB8;
        gActors[actor_index].graphicIndex = GINDEX_STAREFFECT;
        gActors[actor_index].grabType = GRABTYPE_14;
        gActors[actor_index].unk_0DF = 1;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        func_8019BACC_72341C(actor_index);
        index = actor_index + 1;
        temp_v1 = &gActors[index];
        temp_v1->actorType = ACTORTYPE_OVL1_LUNAR_1;
        Actor_Initialize(index);
        temp_v1->unk_14C = actor_index;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_124 = 1.0f;

        if (gStageState < 0x1000) {
            gActors[actor_index].state = 0x15;
        }
        else {
            gActors[actor_index].state = 1;
        }
        break;

    case 2: {
        FixedCoord* temp_t2 = &gActors[0].posX;
        FixedCoord* temp_t3 = &gActors[actor_index].posX;
        if (temp_t2->raw >= temp_t3->raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 0x24;
            gActors[actor_index].stateUpper = 1;
        }

        Marina_DebugAnim(actor_index);
        break;
    }

    case 3: {
        FixedCoord* temp_t2 = &gActors[0].posX;
        FixedCoord* temp_t3 = &gActors[actor_index].posX;
        if (temp_t2->raw >= temp_t3->raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_158 = 0x4000;
            gActors[actor_index].var_15C = 0x403F;
        }

        Marina_DebugGraphic(actor_index);
        break;
    }
    }
}

void func_801A0A08_728358(u16 actor_index) {
    if (!gActors[actor_index].state) {
        gActors[actor_index].unk_124 = 0.0f;
    }

    gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
    gActors[actor_index].posZ.raw = -1;

    switch ((s32)gActors[actor_index].unk_124) {
    case 0:
        func_801A07B8_728108(actor_index);
        break;

    case 1:
        D_800BE544 = actor_index;
        func_8019B8FC_72324C(actor_index);

        if (!gMarinaAnim.anim_u32) {
            func_8019B55C_722EAC(actor_index, 0);
        }

        D_801A342C_72AD7C[gActors[actor_index].stateLower](actor_index);
        break;
    }

    if (gActors[actor_index].iFrames) {
        gActors[actor_index].iFrames--;
    }

    func_8005D450(actor_index);
    func_8005CAA8(actor_index, D_801A3120_72AA70);
    MarinaEffect_Update(actor_index);

    if (!func_8005C5E0(actor_index)) {
        if (gActors[actor_index].stateLower == 1 || gActors[actor_index].stateLower == 2 || gActors[actor_index].stateLower == 4 || gActors[actor_index].stateLower == 0xB) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        }
    }
    else if (gActors[actor_index].unk_13C_s16[0] > 0) {
        gActors[actor_index].unk_180_u8[3] = MARINAEFF_INVULN;
    }

    func_8002877C(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A0BC4_728514(u16 actor_index, u16 index, s32 angle, s32 position_x, s32 position_y, s32 position_z) {
    gActors[actor_index].actorType = ACTORTYPE_OVL1_LUNAR_SHOT;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
    gActors[actor_index].graphicIndex = GINDEX_BLASTB;
    gActors[actor_index].colorA = 0x80;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].palette_18C = PALETTE_8022D4E8;
    gActors[actor_index].scaleX = 1.5f;
    gActors[actor_index].scaleY = 1.8f;
    gActors[actor_index].hitFlags = HITFLAG_7;
    gActors[actor_index].hitType = HITTYPE_BOOM_9;
    gActors[actor_index].grabType = GRABTYPE_1;

    if (gActors[index].var_160_s8[1] < 3 && YellowGem_GetFlag(gCurrentStage) == 0) {
        gActors[actor_index].unk_0DF = ACTOR0DF_5;
    }
    else {
        gActors[actor_index].unk_0DF = ACTOR0DF_5 | ACTOR0DF_7;
        SpawnCrosshair(0xF, actor_index);
    }

    gActors[actor_index].unk_14C = index;
    gActors[actor_index].damage = 0xC8;
    gActors[actor_index].hitboxAY0 = 3;
    gActors[actor_index].hitboxAY1 = -3;
    gActors[actor_index].hitboxAX0 = -6;
    gActors[actor_index].hitboxAX1 = 6;
    gActors[actor_index].hitboxBY0 = 5;
    gActors[actor_index].hitboxBY1 = -5;
    gActors[actor_index].hitboxBX0 = -12;
    gActors[actor_index].hitboxBX1 = 12;
    gActors[actor_index].posX.raw = position_x;
    gActors[actor_index].posY.raw = position_y;
    gActors[actor_index].posZ.raw = position_z;
    angle = FROM_FIXED(angle);
    gActors[actor_index].rotateZ = angle * 0.3515625;
    gActors[actor_index].var_150 = COS(angle) * FIXED_UNIT(6);
    gActors[actor_index].var_154 = SIN(angle) * FIXED_UNIT(6);
    gActors[actor_index].var_158 = Math_AbsS32_2(gActors[actor_index].var_150 / 48);
    gActors[actor_index].var_15C = Math_AbsS32_2(gActors[actor_index].var_154 / 48);
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_110 = 0.05f;
    Sound_PlaySfx(SFX_008D);
}

void func_801A0EBC_72880C(u16 actor_index) {
    s32 params[5];
    u32 parent_index;
    s32 var_v0;

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        parent_index = gActors[actor_index].parentIndex;

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                params[0] = gActors[parent_index].posX.whole + gActors[parent_index].hitboxBX0;
            }
            else {
                params[0] = gActors[parent_index].posX.whole + gActors[parent_index].hitboxBX1;
            }
        }

        params[1] = gActors[actor_index].posY.whole;
        params[2] = gActors[parent_index].posZ.whole;
        params[3] = 0x182;
        params[4] = (s32)PALETTE_8022D4E8;
        func_80059F30(actor_index, params, 1.0f, 30);
        gActors[actor_index].flags = 0;
        return;
    }

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);

        if (!YellowGem_GetFlag(gCurrentStage)) {
            parent_index = (u16)gActors[actor_index].unk_14C;
            ++gActors[parent_index].var_160_s8[1];

            if (gActors[parent_index].var_160_s8[1] >= 3) {
                SpawnGemActor(actor_index, 50, 0);
            }
        }

        gActors[actor_index].flags ^= ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
        gActors[actor_index].palette_18C = PALETTE_8022D568;
        var_v0 = func_8002A658(actor_index);
        gActors[actor_index].damage = 50;
        var_v0 /= FIXED_UNIT(1);
        gActors[actor_index].rotateZ = INDEX_TO_DEG(var_v0);
        gActors[actor_index].var_150 = COS(var_v0) * FIXED_UNIT(5.0f);
        gActors[actor_index].var_154 = SIN(var_v0) * FIXED_UNIT(5.0f);
        var_v0 = gActors[actor_index].var_150;
        gActors[actor_index].var_158 = Math_AbsS32_2(var_v0 / 64);
        gActors[actor_index].var_15C = Math_AbsS32_2(gActors[actor_index].var_154 / 64);
        gActors[actor_index].unk_0F8.raw = Math_AbsS32_2(gActors[actor_index].unk_0F8.raw);

        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
        }

        gActors[actor_index].velocityX.raw = gActors[actor_index].var_150;
        gActors[actor_index].flags = 0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].var_154;
    }

    if (gActors[actor_index].var_110 < 0.01) {
        gActors[actor_index].var_110 -= 0.002;
    }

    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, gActors[actor_index].var_110);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.5f, gActors[actor_index].var_110 * 1.2);
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_150, gActors[actor_index].var_158);
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_154, gActors[actor_index].var_15C);

    if (!(gActiveFrames & 3)) {
        params[0] = gActors[actor_index].posX.whole;
        params[1] = gActors[actor_index].posY.whole;
        params[2] = gActors[actor_index].posZ.whole - 1;
        parent_index = MarinaEffect_SpawnParticle(actor_index, params);
        if (parent_index) {
            gActors[parent_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
            gActors[parent_index].flags &= ~ACTOR_FLAG_FLIPPED;

            if (gActors[actor_index].unk_18C == (s32)PALETTE_8022D4E8) {
                gActors[parent_index].palette_18C = PALETTE_8022D568;
            }

            if (gActors[actor_index].unk_18C == (s32)PALETTE_8022D568) {
                gActors[parent_index].palette_18C = PALETTE_8022D4E8;
            }

            gActors[parent_index].rotateZ = gActors[actor_index].rotateZ;
            gActors[parent_index].var_160 = TO_FIXED(DEG_TO_INDEX(gActors[parent_index].rotateZ));
            gActors[parent_index].graphicList = D_800E157C;
            gActors[parent_index].colorA = 200;
            gActors[parent_index].scaleX = gActors[actor_index].scaleX + 0.2;
            gActors[parent_index].scaleY = gActors[actor_index].scaleY + 0.2;
            gActors[parent_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
            gActors[parent_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
            gActors[parent_index].unk_148 = 12.0f;
            gActors[parent_index].unk_168 = gActors[parent_index].velocityX.raw / 64;
            gActors[parent_index].unk_16C = gActors[parent_index].velocityY.raw / 64;
            gActors[parent_index].unk_164 = -1;
            gActors[parent_index].posX.raw -= gActors[actor_index].velocityX.raw;
            gActors[parent_index].posY.raw -= gActors[actor_index].velocityY.raw;
            gActors[parent_index].unk_114 = -0.03f;
        }
    }

    if (gActors[actor_index].flags_098 & 0x3D) {
        gActors[actor_index].flags = 0;
    }

    gActors[actor_index].flags_098 = 0;
}

void func_801A1544_728E94(u16 actor_index) {
    if (!gActors[actor_index].stateUpper) {
        f32 temp_f0 = 0.4f;

        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].graphicIndex = GINDEX_181C;
        gActors[actor_index].hitboxBX0 = -1;
        gActors[actor_index].hitboxBX1 = 1;
        gActors[actor_index].hitboxBY0 = 1;
        gActors[actor_index].hitboxBY1 = -1;
        gActors[actor_index].scaleX = temp_f0;
        gActors[actor_index].scaleY = temp_f0;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.whole -= 32;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
            gActors[actor_index].var_110 = 3.0f;
        }
        else {
            gActors[actor_index].posX.whole += 32;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
            gActors[actor_index].var_110 = -3.0f;
        }

        gActors[actor_index].velocityX.raw += RandModulo(0) * 0x30;
        gActors[actor_index].velocityY.raw = RandModulo(0) * 0x70 + FIXED_UNIT(2);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        gActors[actor_index].stateUpper = 1;
    }

    if (gActors[actor_index].stateUpper == 1) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        gActors[actor_index].var_154 = gActors[actor_index].velocityY.raw;

        if (!func_800490BC(actor_index, -1, -1)) {
            gActors[actor_index].var_158 = gActors[actor_index].posX.raw;
        }
        else {
            Sound_PlaySfx(SFX_008B);
            gActors[actor_index].velocityX.raw = RandModulo(0) << 9;
            gActors[actor_index].var_110 *= 2;
            gActors[actor_index].posX.raw = gActors[actor_index].var_158;
            gActors[actor_index].var_110 += RandModulo(8) * 0.5;
            gActors[actor_index].velocityY.raw = -gActors[actor_index].var_154 / 2 - (RandModulo(0) << 9);
            gActors[actor_index].var_150 = 48;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].stateUpper = 2;
        }
    }
    else if (gActors[actor_index].stateUpper == 2) {
        gActors[actor_index].rotateZ += gActors[actor_index].var_110;
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (--gActors[actor_index].var_150 == 0) {
            gActors[actor_index].stateUpper = 3;
            gActors[actor_index].flags = 0;
        }
    }
}

void func_801A17E0_729130(u16 actor_index) {
    if (!gActors[gActors[actor_index].parentIndex].unk_170_s8[0] && gActors[gActors[actor_index].parentIndex].unk_170_s8[1] == 1) {
        gActors[actor_index].scaleX = 1.0f;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].unk_134 = 24.0f;
        }
        else {
            gActors[actor_index].unk_134 = -24.0f;
        }
    }

    if (gActors[gActors[actor_index].parentIndex].stateUpper == 8) {
        gActors[actor_index].var_154 = -8;
        gActors[actor_index].var_110 = -0.05f;
        gActors[actor_index].unk_114 = -0.01f;
    }

    if (func_8005D338(gActors[actor_index].parentIndex) != 0xB) {
        gActors[actor_index].flags = 0;
    }
}

void func_801A1928_729278(u16 actor_index) {
    u16 temp_t9;
    u8 var_v0;
    s32 var_v0_2;
    s32 var_a2;

    temp_t9 = (u16)(s32)gActors[actor_index].unk_14C;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].graphicIndex = 0x1808;
        gActors[actor_index].grabType = GRABTYPE_1;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].unk_0CE = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 0;

        gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
        gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw;
        gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);
        gActors[actor_index].state = 1;
        // fallthrough
    case 1:

        switch (func_8005D338(temp_t9)) {
        case 1:
            var_v0 = 0;
            break;

        case 2:
        case 10:
            var_v0 = 1;
            break;

        case 3:
        case 4:
        case 22:
            var_v0 = 0xA;
            break;

        case 5:
        case 33:
            var_v0 = 2;
            break;

        case 6:
            var_v0 = 4;
            break;

        case 7:
        case 8:
        case 9:
        case 13:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 23:
        case 24:
        case 25:
        case 26:
        case 29:
        case 32:
        case 34:
        case 35:
            var_v0 = 3;
            break;

        case 11:
            var_v0 = 5;
            break;

        case 12:
            var_v0 = 7;
            break;

        case 14:
            var_v0 = 8;
            break;

        case 27:
        case 28:
            var_v0 = 0xB;
            break;

        case 21:
            var_v0 = 0xC;
            break;

        case 30:
        case 31:
            var_v0 = 6;
            break;

        default:
            var_v0 = 0;
            break;
        }

        if (!(gActors[temp_t9].flags & ACTOR_FLAG_DRAW)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            return;
        }

        gActors[actor_index].graphicIndex = 0x1808;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        switch (var_v0) {
        case 0:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);

            if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.raw += -FIXED_UNIT(6);
                gActors[actor_index].rotateZ = -50.0f;
            }
            else {
                gActors[actor_index].posX.raw += FIXED_UNIT(6);
                gActors[actor_index].rotateZ = 50.0f;
            }

            if (gActors[temp_t9].unk_170_s8[1] == 1) {
                gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw - FIXED_UNIT(3);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(5);
            }

            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.4375);
            break;

        case 1:
        case 2:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);

            if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.raw += -FIXED_UNIT(6);
                gActors[actor_index].rotateZ = -50.0f;
            }
            else {
                gActors[actor_index].posX.raw += FIXED_UNIT(6);
                gActors[actor_index].rotateZ = 50.0f;
            }

            if (var_v0 == 1) {
                gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw + FIXED_UNIT(23);
            }

            if (var_v0 == 2) {
                gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw + FIXED_UNIT(3);
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            break;

        case 3:
            var_v0_2 = gActors[temp_t9].posX.raw;

            if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                var_v0_2 = var_v0_2 - FIXED_UNIT(6);
                gActors[actor_index].rotateZ = -50.0f;
            }
            else {
                var_v0_2 = var_v0_2 + FIXED_UNIT(6);
                gActors[actor_index].rotateZ = 50.0f;
            }

            var_a2 = gActors[temp_t9].posY.raw + FIXED_UNIT(8);
            gActors[actor_index].velocityX.raw = (var_v0_2 - gActors[actor_index].posX.raw) / 4;
            gActors[actor_index].velocityY.raw = (var_a2 - gActors[actor_index].posY.raw) / 4;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);

            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(1.5)) {
                gActors[actor_index].var_150 = COS_DEG_90;
            }
            else {
                var_v0_2 = gActors[actor_index].var_150;
                gActors[actor_index].posY.raw = ((f32)(gActors[temp_t9].posY.raw + FIXED_UNIT(8)) + (COS(var_v0_2) * FIXED_UNIT(6.0f)));
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].var_150 = var_v0_2 + 0x10;
            }
            break;

        case 4:
            if (gActors[temp_t9].unk_170_s8[1] == 1) {
                var_v0_2 = gActors[temp_t9].unk_170_s8[0];

                if (var_v0_2 < 2) {
                    gActors[temp_t9].unk_170_s8[0] = var_v0_2 + 1;

                    if (gActors[temp_t9].unk_170_s8[0] == 1) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                    }
                    else {
                        gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
                        gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw - FIXED_UNIT(12);
                        gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;

                        if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                            gActors[actor_index].posX.raw += FIXED_UNIT(32);
                            gActors[actor_index].rotateZ = 90.0f;
                        }
                        else {
                            gActors[actor_index].posX.raw += -FIXED_UNIT(32);
                            gActors[actor_index].rotateZ = -90.0f;
                        }

                        gActors[actor_index].velocityY.raw = -FIXED_UNIT(2);
                        gActors[actor_index].var_150 = 0;
                    }
                }
                else if (++gActors[actor_index].var_150 == 4) {
                    if (gActors[actor_index].velocityY.raw < 0) {
                        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                        gActors[actor_index].var_150 = 0;
                        temp_t9 = Actor_RangeFindInactive(0x90U, 0xC0U);
                        if (temp_t9 != 0) {
                            gActors[temp_t9].actorType = 0xB03;
                            Actor_Initialize(temp_t9);
                            gActors[temp_t9].graphicFlags |= ACTOR_GFLAG_ROTZ;
                            gActors[temp_t9].graphicIndex = GINDEX_181C;
                            gActors[temp_t9].flags |= (ACTOR_FLAG_UNK19 | ACTOR_FLAG_UNK22) | (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED);
                            gActors[actor_index].hitboxBX0 = -2;
                            gActors[actor_index].hitboxBX1 = 2;
                            gActors[actor_index].hitboxBY0 = 2;
                            gActors[actor_index].hitboxBY1 = -2;
                            gActors[temp_t9].posX.whole = gActors[actor_index].posX.whole;
                            gActors[temp_t9].posY.whole = gActors[actor_index].posY.whole;
                            gActors[temp_t9].posZ.whole = gActors[actor_index].posZ.whole;

                            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                                gActors[temp_t9].var_110 = 3.0f;
                            }
                            else {
                                gActors[temp_t9].var_110 = -3.0f;
                            }

                            gActors[temp_t9].velocityY.raw = -FIXED_UNIT(3);
                            gActors[temp_t9].stateUpper = 1;
                        }
                    }
                    else {
                        gActors[actor_index].velocityY.raw = 0;
                        gActors[actor_index].var_150 = 0;
                        gActors[temp_t9].unk_170_s8[1] += 1;
                        gActors[temp_t9].unk_170_s8[0] = 0;
                        gActors[temp_t9].unk_170_s16[1] = (u16)gActors[temp_t9].unk_170_s16[1] & 0xBFFF;
                    }
                }
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
            break;

        case 5:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;

            if (gActors[temp_t9].unk_170_s8[0] == 0 || gActors[temp_t9].unk_170_s8[1] == 0) {
                gActors[actor_index].graphicIndex = 0x1818;

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += FIXED_UNIT(1);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -70.0f;
                }
                else {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(1);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 70.0f;
                }

                gActors[actor_index].posY.raw += FIXED_UNIT(4);
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }
            else {
                gActors[actor_index].graphicIndex = 0x181A;

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += FIXED_UNIT(3);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -100.0f;
                }
                else {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(3);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 100.0f;
                }

                gActors[actor_index].posY.raw += FIXED_UNIT(4);
            }
            break;

        case 6:
            var_v0_2 = gActors[actor_index].var_150;
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = ((f32)(gActors[temp_t9].posY.raw + FIXED_UNIT(8)) + (COS(var_v0_2) * FIXED_UNIT(6.0f)));
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);
            gActors[actor_index].var_150 = var_v0_2 + 0x10;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;

            if (gActors[temp_t9].unk_170_s8[1] == 0) {
                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += FIXED_UNIT(6);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 50.0f;
                }
                else {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(6);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -50.0f;
                }

                gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;
            }
            else if (gActors[temp_t9].unk_170_s8[1] == 1) {
                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(14);
                    gActors[actor_index].rotateZ = -90.0f;
                }
                else {
                    gActors[actor_index].posX.raw += FIXED_UNIT(14);
                    gActors[actor_index].rotateZ = 90.0f;
                }
            }
            else if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.raw += -FIXED_UNIT(6);
                gActors[actor_index].rotateZ = -50.0f;
            }
            else {
                gActors[actor_index].posX.raw += FIXED_UNIT(6);
                gActors[actor_index].rotateZ = 50.0f;
            }
            break;

        case 7:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;

            if (gActors[temp_t9].unk_170_s8[1] == 0) {
                gActors[actor_index].posZ.raw -= FIXED_UNIT(1);

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(2);
                    gActors[actor_index].rotateZ = -70.0f;
                }
                else {
                    gActors[actor_index].posX.raw += FIXED_UNIT(2);
                    gActors[actor_index].rotateZ = 70.0f;
                }

                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].posY.raw += gActors[actor_index].velocityY.raw;
            }

            if (gActors[temp_t9].unk_170_s8[1] == 1) {
                gActors[actor_index].graphicIndex = 0x1818;

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += FIXED_UNIT(14);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -30.0f;
                }
                else {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(14);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 30.0f;
                }

                gActors[actor_index].posY.raw += -FIXED_UNIT(12);
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
            break;

        case 8:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw + FIXED_UNIT(12);
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);

            if (gActors[temp_t9].unk_170_s8[0] != 0 && gActors[temp_t9].unk_170_s8[1] == 2) {
                gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            }

            var_v0_2 = gActors[actor_index].var_150;
            gActors[actor_index].posY.raw = ((FIXED_UNIT(6.0f) * COS(var_v0_2)) + (f32)gActors[actor_index].posY.raw);
            gActors[actor_index].var_150 = var_v0_2 + 0x10;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.raw += -FIXED_UNIT(4);
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].rotateZ = -60.0f;
            }
            else {
                gActors[actor_index].posX.raw += FIXED_UNIT(4);
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].rotateZ = 60.0f;
            }

            if (gActors[temp_t9].unk_170_s8[1] == 1) {
                gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            }
            break;

        case 10:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw;
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            break;

        case 11:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw - FIXED_UNIT(3);
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw - FIXED_UNIT(1);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;

            if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.raw += -FIXED_UNIT(6);
                gActors[actor_index].rotateZ = -50.0f;
            }
            else {
                gActors[actor_index].posX.raw += FIXED_UNIT(6);
                gActors[actor_index].rotateZ = 50.0f;
            }

            if (gActors[temp_t9].unk_170_s8[0] != 0 && gActors[temp_t9].unk_170_s8[1] == 4) {
                gActors[actor_index].posY.whole += 0xC;
                gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;
                gActors[actor_index].graphicIndex = 0x181A;

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(2);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 70.0f;
                }
                else {
                    gActors[actor_index].posX.raw += FIXED_UNIT(2);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -70.0f;
                }
            }

            if (gActors[temp_t9].unk_170_s8[0] != 0 && gActors[temp_t9].unk_170_s8[1] == 5) {
                gActors[actor_index].posY.whole += 0xD;
                gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;
                gActors[actor_index].graphicIndex = 0x1818;

                if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.raw += -FIXED_UNIT(2);
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = 70.0f;
                }
                else {
                    gActors[actor_index].posX.raw += FIXED_UNIT(2);
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].rotateZ = -70.0f;
                }
            }
            break;

        case 12:
            gActors[actor_index].posX.raw = gActors[temp_t9].posX.raw;
            gActors[actor_index].posY.raw = gActors[temp_t9].posY.raw + FIXED_UNIT(6);
            gActors[actor_index].posZ.raw = gActors[temp_t9].posZ.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].graphicIndex = 0x1818;

            if (!(gActors[temp_t9].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole += 4;
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].rotateZ = -70.0f;
            }
            else {
                gActors[actor_index].posX.whole -= 4;
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].rotateZ = 70.0f;
            }
            break;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN);
}

void func_801A27BC_72A10C(u16 actor_index, u16 index) {
    gActors[actor_index].unk_12E_u8 |= 0x80;

    if (!gActors[actor_index].stateUpper) {
        func_8005D370(actor_index, 60);
        gActors[actor_index].unk_140_u8[0] = gActors[actor_index].unk_140_u16[1] = 4;

        if (gActors[actor_index].posX.whole < gActors[index].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && gPlayerData.unk_00[1].raw > FIXED_UNIT(32.0)) {
            gPlayerData.unk_00[1].raw = FIXED_UNIT(32.0);
        }

        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].stateUpper = 1;
    }

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && func_8005D418(actor_index)) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }

    if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_index, 60);
    }

    func_80052A6C(actor_index, index);
    func_80052CD0(actor_index, index);

    if (func_80053210(actor_index, index) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_140_u16[1] = 4;
    }
}

void func_801A29D0_72A320(u16 actor_index, u16 index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 0x6A;

        if (gActors[actor_index].unk_140_u8[0] < 4) {
            gActors[actor_index].unk_170++;
        }

        if (gActors[actor_index].unk_140_u8[0] >= 5) {
            gActors[actor_index].unk_170 += 2;
        }

        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;

    case 1:
        func_80052CD0(actor_index, index);

        if (func_8004F35C(actor_index, &gActors[actor_index].var_150_u32)) {
            gActors[index].unk_0F8.raw = D_801A3484_72ADD4[gActors[actor_index].unk_140_u8[0]];
            gActors[index].unk_0FC.raw = D_801A3484_72ADD4[gActors[actor_index].unk_140_u8[0] + 1];
            gActors[index].unk_140_u8[0] = gActors[actor_index].unk_140_u8[0];
            func_8004F5B0(actor_index);
            func_8004F614(actor_index, gActors[index].unk_0F8.raw, gActors[index].unk_0FC.raw, 30);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[index].unk_0FC.raw = 0;
            }
            else {
                gActors[index].unk_0FC.raw = 1;
            }

            gActors[actor_index].unk_170 = func_8005D338(actor_index) + 8;
            if (gActors[actor_index].unk_140_u8[0] >= 5) {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
                }

                if (gActors[actor_index].unk_140_u8[0] == 8) {
                    gActors[actor_index].velocityX.raw = 0;
                }

                gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            }

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
                gActors[actor_index].state = 3;
            }
            else {
                gActors[actor_index].state = 0x16;
            }
        }
        break;
    }
}

void func_801A2C08_72A558(u16 actor_index, s32 arg1) {
    u16 fixed_actor_index = 48;

    gActors[actor_index].unk_12E_u8 |= 0x40;

    switch (gMarinaAnim.state) {
    case 0:
        if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
            Marina_DropActor(actor_index, gActors[actor_index].parentIndex);

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].state = 3;
            }
            else {
                gActors[actor_index].state = 22;
            }
        }

        if (func_8005D338(actor_index) == 1) {
            gMarinaAnim.timer++;
            if (gMarinaAnim.timer >= 50) {
                if (gActors[fixed_actor_index].posX.whole + gScreenPosCurrentX.parts[0] > D_800D2924 - 128) {
                    gMarinaAnim.state = 5;
                }
                else {
                    gMarinaAnim.state = 1;
                }
            }
        }
        break;

    case 1:
        if (gActors[actor_index].posX.whole < gActors[fixed_actor_index].posX.whole + 80) {
            D_801370CC = gButton_DRight;
        }

        if (gActors[actor_index].posX.whole > gActors[fixed_actor_index].posX.whole + 96) {
            D_801370CC = gButton_DLeft;
        }

        if (!D_801370CC) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                D_801370CC = gButton_DLeft;
            }
            else if (func_8005D338(actor_index) == 1) {
                gMarinaAnim.timer = 30;
                gMarinaAnim.state = 10;
                gStageState++;
            }
        }
        break;

    case 5:
        if (gActors[actor_index].posX.whole > gActors[fixed_actor_index].posX.whole - 80) {
            D_801370CC = gButton_DLeft;
        }

        if (gActors[actor_index].posX.whole < gActors[fixed_actor_index].posX.whole - 96) {
            D_801370CC = gButton_DRight;
        }

        if (!D_801370CC) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                D_801370CC = gButton_DRight;
            }
            else if (func_8005D338(actor_index) == 1) {
                gMarinaAnim.timer = 30;
                gMarinaAnim.state = 10;
                gStageState++;
            }
        }
        break;

    case 10:
        if (gStageState >= 25 && --gMarinaAnim.timer <= 0) {
            gActors[actor_index].velocityX.raw = MARINA_MOVE(WALKTARGET) / 2;
            gActors[actor_index].velocityY.raw = MARINA_MOVE(15);
            gActors[actor_index].unk_170 = 36;
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.flags |= PLAYERDATA_UNBOUND;
            gActors[actor_index].state = 57;
            gMarinaAnim.state = 11;
        }
        break;

    case 11:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6), MARINA_MOVE(19) / 4);
        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(0.5)) {
            gMarinaAnim.timer = 10;
            gMarinaAnim.state = 12;
        }
        break;

    case 12:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 2);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, MARINA_MOVE(0) / 4);
        if (gActors[actor_index].velocityX.raw || gActors[actor_index].velocityY.raw || --gMarinaAnim.timer > 0) {
            return;
        }

        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_170 = 91;
        MarinaEffect_Set(actor_index, MARINAEFF_DASH);
        gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 4;
        gActors[actor_index].velocityX.raw = MARINA_MOVE(5);
        Sound_PlaySfx(SFX_0074);
        gMarinaAnim.state = 13;
        return;

    case 13:
        if (gActors[actor_index].unk_180_u8[0] >= 12) {
            gActors[actor_index].unk_180_u8[0] = 4;
        }
        break;

    default:
        break;
    }
}
