#include "common.h"
#include "actor.h"
#include "5D120.h"
#include "1F1E0.h"
#include "marina_effect.h"
#include "marina_grab.h"
#include "frontend.h"
#include "actor_physics.h"
#include "boot.h"
#include "stage_tilemap.h"

// "overlay 1" code for "Tarus!!"

void func_8019B6B0_72B6F0(u16 actor_index);
void func_8019B730_72B770(u16 actor_index);
void func_8019B964_72B9A4(u16 actor_index);
void func_8019BACC_72BB0C(u16 actor_index);
void func_8019BCCC_72BD0C(u16 actor_index);
void func_8019BD7C_72BDBC(u16 actor_index);
void func_8019C010_72C050(u16 actor_index);
void func_8019C188_72C1C8(u16 actor_index);
void func_8019C3C8_72C408(u16 actor_index);
void func_8019C624_72C664(u16 actor_index);
void func_8019CAC0_72CB00(u16 actor_index);
void func_8019CD44_72CD84(u16 actor_index);
void func_8019CE94_72CED4(u16 actor_index);
void func_8019D2BC_72D2FC(u16 actor_index);
void func_8019D4F4_72D534(u16 actor_index);
void func_8019D694_72D6D4(u16 actor_index);
void func_8019DA5C_72DA9C(u16 actor_index);
void func_8019DCAC_72DCEC(u16 actor_index);
void func_8019DDBC_72DDFC(u16 actor_index);
void func_8019DF70_72DFB0(u16 actor_index);
void func_8019E05C_72E09C(u16 actor_index);
void func_8019E27C_72E2BC(u16 actor_index);
void func_8019E788_72E7C8(u16 actor_index);
void func_8019EE10_72EE50(u16 actor_index);
void func_8019F0A8_72F0E8(u16 actor_index);
void func_8019F11C_72F15C(u16 actor_index);
void func_8019F60C_72F64C(u16 actor_index);

s8 D_801A1820_731860[] = {
//  BX0  BX1 BY0  BY1
    -18, 18, 22,  -46,
    -22, 28, 28,  -26,
    -44, 44, 0,   -46,
    -24, 24, 24,  -24,
    -28, 24, -18, -38,
    20,  52, 6,   -16,
    -8,  8,  -8,  -16,
    -36, 0,  24,  0,
};

s16 D_801A1840_731880[] = {
//  graphic timer
    0x4C01, 8,
    0x4C00, 20,
    0x4C01, 8,
    0x4C02, 20,
    -4,     0,
};

s32 D_801A1854_731894[] = {
    FIXED_UNIT(1), FIXED_UNIT(1), FIXED_UNIT(1), FIXED_UNIT(1),
    FIXED_UNIT(1), FIXED_UNIT(1), FIXED_UNIT(1), FIXED_UNIT(1),
};

s16 D_801A1874_7318B4[] = {
//  graphic timer
    0x4C03, 8,
    0x4C04, 8,
    0x4C05, 8,
    0x4C06, 8,
    0x4C07, 8,
    0x4C08, 8,
    0x4C09, 8,
    0x4C0A, 8,
    -8,     0,
};

s16 D_801A1898_7318D8[] = {
//  graphic timer
    0x4800, 8,
    0x4801, 16,
    0x4802, 6,
    0x4803, 6,
    0x4804, 6,
    0x4805, 6,
    0,      0,
};

s16 D_801A18B4_7318F4[] = {
//  graphic timer
    0x4806, 4,
    0,      0,
};

s16 D_801A18BC_7318FC[] = {
//  graphic timer
    0x4807, 32,
    0x4808, 8,
    0,      0,
};

s16 D_801A18C8_731908[] = {
//  graphic timer
    0x4809, 24,
    0x480A, 8,
    0x480B, 8,
    0,      0,
};

s16 D_801A18D8_731918[] = {
//  graphic timer
    0x480B, 8,
    0x480C, 16,
    0x4810, 8,
    0,      0,
};

s16 D_801A18E8_731928[] = {
//  graphic timer
    0x480D, 12,
    0x480E, 32,
    0x480D, 8,
    0,      0,
};

s16 D_801A18F8_731938[] = {
//  graphic timer
    0x480F, 16,
    0x4810, 16,
    0,      0,
};

s16 D_801A1904_731944[] = {
//  graphic timer
    0x4811, 16,
    0x4812, 64,
    0x4813, 24,
    0,      0,
};

s16 D_801A1914_731954[] = {
//  graphic timer
    0x4814, 24,
    0x4810, 48,
    0,      0,
};

s16 D_801A1920_731960[] = {
//  graphic timer
    0x4815, 16,
    0,      0,
};

s16 D_801A1928_731968[] = {
//  graphic timer
    0x4818, 2,
    0x4817, 2,
    0x4816, 24,
    0x4817, 6,
    0x4818, 6,
    0,      0,
};

s16 D_801A1940_731980[] = {
//  graphic timer
    0x481B, 2,
    0x481A, 2,
    0x4819, 24,
    0x481A, 6,
    0x481B, 6,
    0,      0,
};

s16 D_801A1958_731998[] = {
//  graphic timer
    0x481C, 48,
    0,      0,
};

s16 D_801A1960_7319A0[] = {
//  graphic timer
    0x481E, 8,
    0x481D, 8,
    0,      0,
};

s16 D_801A196C_7319AC[] = {
//  graphic timer
    0x4820, 8,
    0x481F, 8,
    0,      0,
};

s16 D_801A1978_7319B8[] = {
//  graphic timer
    0x4821, 8,
    0,      0,
};

s16 D_801A1980_7319C0[] = {
//  graphic timer
    0x4822, 8,
    0,      0,
};

s16 D_801A1988_7319C8[] = {
//  graphic timer
    0x4823, 16,
    0x4824, 64,
    0,      0,
};

s16 D_801A1994_7319D4[] = {
//  graphic timer
    0x4C0B, 8,
    0x4C0C, 7,
    0x4C0C, 9,
    0x4C0B, 8,
    0,      0,
};

s16 D_801A19A8_7319E8[] = {
//  graphic timer
    0x4825, 5,
    0x4826, 5,
    0x4827, 5,
    0x4828, 5,
    -4,     0,
};

s16 D_801A19BC_7319FC[] = {
//  graphic timer
    0x4829, 12,
    0x482A, 32,
    0x482B, 8,
    0x482C, 8,
    -2,     0,
};

s16 D_801A19D0_731A10[] = {
//  graphic timer
    0x482D, 16,
    0x482E, 4,
    0x482F, 4,
    0x4830, 4,
    0x4831, 4,
    0x4832, 4,
    0x4833, 4,
    0x4834, 4,
    0x4835, 4,
    -8,     0,
};

s16 D_801A19F8_731A38[] = {
//  graphic timer
    0x4836, 4,
    0x4837, 32,
    0x4838, 8,
    0x4839, 8,
    0,      0,
};

s16 D_801A1A0C_731A4C[] = {
//  graphic timer
    0x483A, 6,
    0x483B, 6,
    0x483C, 6,
    0x483D, 6,
    0x483E, 6,
    0x483F, 6,
    0x4840, 12,
    0x4841, 8,
    0,      0,
};

s16 D_801A1A30_731A70[] = {
//  graphic timer
    0x4842, 64,
    0x4843, 8,
    0x480B, 64,
    0,      0,
};

s16 D_801A1A40_731A80[] = {
//  graphic timer
    0x484A, 6,
    0x484B, 6,
    0x4845, 6,
    0x4846, 6,
    0x4847, 6,
    0x4848, 6,
    0x4849, 6,
    -7,     0,
};

s16 D_801A1A60_731AA0[] = {
//  graphic timer
    0x484C, 8,
    0x484D, 8,
    0,      0,
};

s16 D_801A1A6C_731AAC[] = {
//  graphic timer
    0x484E, 8,
    0x484F, 8,
    0,      0,
};

s16 D_801A1A78_731AB8[] = {
//  graphic timer
    0x4850, 16,
    0x4851, 12,
    0x4852, 8,
    0x4853, 48,
    0x4854, 16,
    0,      0,
};

s16* D_801A1A90_731AD0[] = {
    NULL,
    D_801A1840_731880,
    D_801A1874_7318B4,
    D_801A1898_7318D8,
    D_801A18B4_7318F4,
    D_801A18BC_7318FC,
    D_801A18C8_731908,
    D_801A18D8_731918,
    D_801A18E8_731928,
    D_801A18F8_731938,
    D_801A1904_731944,
    D_801A1914_731954,
    D_801A1920_731960,
    D_801A1928_731968,
    D_801A1940_731980,
    D_801A1958_731998,
    D_801A1960_7319A0,
    D_801A196C_7319AC,
    D_801A1978_7319B8,
    D_801A1980_7319C0,
    D_801A1988_7319C8,
    D_801A1994_7319D4,
    D_801A19A8_7319E8,
    D_801A19BC_7319FC,
    D_801A19D0_731A10,
    D_801A19F8_731A38,
    D_801A1A0C_731A4C,
    D_801A1A30_731A70,
    D_801A1A40_731A80,
    D_801A1A60_731AA0,
    D_801A1A6C_731AAC,
    D_801A1A78_731AB8,
};

ActorFunc D_801A1B10_731B50[] = {
    func_8019B6B0_72B6F0,
    func_8019B730_72B770,
    func_8019B964_72B9A4,
    func_8019BACC_72BB0C,
    func_8019BCCC_72BD0C,
    func_8019BD7C_72BDBC,
    func_8019C010_72C050,
    func_8019C188_72C1C8,
    func_8019C3C8_72C408,
    func_8019C624_72C664,
    func_8019CAC0_72CB00,
    func_8019CD44_72CD84,
    func_8019CE94_72CED4,
    func_8019D2BC_72D2FC,
    func_8019D4F4_72D534,
    func_8019D694_72D6D4,
    func_8019DA5C_72DA9C,
    func_8019DCAC_72DCEC,
    func_8019DDBC_72DDFC,
    func_8019DF70_72DFB0,
    func_8019E05C_72E09C,
    func_8019E27C_72E2BC,
    func_8019E788_72E7C8,
    func_8019EE10_72EE50,
    func_8019F0A8_72F0E8,
    func_8019F11C_72F15C,
    func_8019F60C_72F64C,
};

s16 D_801A1B7C_731BBC[] = {
//  graphic timer
    0x280E, 1,
    0x2810, 5,
    0x2812, 5,
    0x2814, 5,
    0,      0,
};

s16 D_801A1B90_731BD0[] = {
//  graphic timer
    0x2816, 1,
    0x2818, 5,
    0x281A, 5,
    0x281C, 5,
    0,      0,
};

s32 D_801A1BA4_731BE4[] = {
    FIXED_UNIT(0.5), FIXED_UNIT(4),
    FIXED_UNIT(1.75), FIXED_UNIT(2.5),
    FIXED_UNIT(2.5), FIXED_UNIT(2),
    FIXED_UNIT(2), FIXED_UNIT(-2.5),
    FIXED_UNIT(1), FIXED_UNIT(-3),
};


u16 func_801A0490_7304D0(u16 actor_index);


void func_8019B100_72B140(u16 actor_index, u16 arg1) {
    s16 sp36;
    s32 sp30;
    s32 var_v1;
    Actor* actor = &gActors[actor_index];
    u16 sp26;
    s8 temp_v1;

    sp36 = Math_AbsS32_2(gActors[0].posX.whole - actor->posX.whole);
    sp30 = TO_FIXED(actor->health) / 500;

    if (actor->stateLower < 3 && (actor->stateLower != 1 || actor->stateUpper == 0)) {
        temp_v1 = actor->var_160_u8;
        if (temp_v1 != 0) {
            actor->var_160_u8 = temp_v1 - 1;
        }

        if (sp36 < 48) {
            sp30 = 0;
        }

        if (sp36 < 96) {
            if (Rand() < 8) {
                if (Rand() & 1) {
                    actor->state = 7;
                }
                else {
                    actor->state = 7;
                }
            }

            var_v1 = 5;

            if (sp30 < FIXED_UNIT(0.25)) {
                var_v1 = 10;
            }

            sp26 = Rand();
            if (sp26 < func_8005C774(5) + var_v1) {
                actor->state = 13;
            }
        }

        if (sp36 >= 33 && sp36 < 160) {
            var_v1 = 10;

            if (sp30 < FIXED_UNIT(0.5)) {
                var_v1 = 15;
            }

            sp26 = Rand();
            if (sp26 < func_8005C774(10) + var_v1) {
                switch (Rand() % 4) {
                default:
                    actor->state = 3;
                    break;

                case 0:
                    actor->state = 12;
                    break;

                case 1:
                    actor->state = 9;
                    break;

                case 2:
                    actor->state = 5;
                    break;
                }
            }
        }

        if (actor->flags_098 & ACTOR_FLAG3_UNK7) {
            var_v1 = 10;

            if (sp30 < FIXED_UNIT(0.75)) {
                var_v1 = 20;
            }

            sp26 = Rand();
            if (sp26 < func_8005C774(10) + var_v1) {
                actor->state = 14;
            }
        }
    }
}

void func_8019B394_72B3D4(u16 actor_index) {
    u8 var_v0;

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        var_v0 = gActors[actor_index].stateLower;

        if (var_v0 == 12) {
            func_80058924(actor_index);
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = 23;
            var_v0 = gActors[actor_index].stateLower;
        }

        switch (var_v0) {
        case 22:
        case 23:
            break;

        default:
            func_80058924(actor_index);
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = 22;
            break;
        }
    }
    else if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index].hitByType < 20) {
        switch (gActors[actor_index].stateLower) {
        case 1:
        case 2:
        case 4:
        case 19:
            func_80058924(actor_index);
            gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
            gActors[actor_index].state = 19;
            break;

        default:
            if (!(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
                if (gActors[actor_index].health == 0) {
                    Sound_PlaySfx(SFX_TUARUS_YELL3);
                }
                else {
                    Sound_PlaySfx(SFX_TUARUS_OW);
                }

                if (gActors[actor_index].health <= 0 || gActors[actor_index].stateLower == 21) {
                    func_800575C0(actor_index);
                }

                if (gActors[actor_index].hitByType == HITTYPE_BOOM_9) {
                    MarinaEffect_Set(actor_index, MARINAEFF_BURN);
                    gActors[actor_index].unk_144 = 1.7f;
                }

                gActors[actor_index].var_160_u8 = 0;
                gActors[actor_index].unk_13C_s16[1] = gActors[actor_index].pendingDamage;
                func_80058924(actor_index);
                gActors[actor_index].posZ.raw = FIXED_UNIT(-1);

                if (!(gActors[actor_index].hitByFlags & HITFLAG_0)) {
                    gActors[actor_index].state = 20;
                }
                else {
                    gActors[actor_index].state = 21;
                }
            }
            break;
        }
    }
}

void func_8019B5B0_72B5F0(u16 actor_index) {
    gActors[actor_index].flags &= ~ACTOR_FLAG_PLATFORM0;
    if (actor_index == (gActors[0].actorHitIndex & 0x7FFF)) {
        gActors[0].actorHitIndex = 0;
    }
}

void func_8019B60C_72B64C(u16 actor_index, s8 arg1, s16 arg2) {
    if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == arg1) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.whole += arg2;
        }
        else {
            gActors[actor_index].posX.whole -= arg2;
        }
    }
}

void func_8019B6B0_72B6F0(u16 actor_index) {
}

void func_8019B6B8_72B6F8(u16 actor_index) {
    gActors[actor_index].graphicLists = D_801A1A90_731AD0;
    gActors[actor_index].health = 500;
    gActors[actor_index].posZ.raw = FIXED_UNIT(-1.0);
    gActors[actor_index].flags &= 0xFF3CFFFF;\
    gActors[actor_index].flags |= 0x10000;
    gActors[actor_index].unk_170 = 1;
}

void func_8019B730_72B770(u16 actor_index) {
    Actor* actor;
    u16 sp22;

    if (func_80049040(actor_index) != 0) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 2;
        return;
    }

    actor = &gActors[actor_index];
    actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.1875));

    if (actor->stateUpper == 0) {
        if (func_8005D338(actor_index) != 1) {
            actor->var_150 = 0;
            actor->unk_170 = 1;
        }

        if (gActors[0].posX.whole >= actor->posX.whole) {
            if (actor->flags & ACTOR_FLAG_FLIPPED) {
                actor->stateUpper = 1;
            }
        }
        else if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
            actor->stateUpper = 1;
        }

        if (gMarinaAnim.anim_u32 == 0 && actor->var_150 >= 20) {
            actor->state = 2;
            return;
        }
    }

    sp22 = func_8005C774(4);
    actor->var_150 += (Rand() % (sp22 + 1)) + 1;

    if (actor->stateUpper == 1) {
        actor->unk_170 = 21;
        actor->stateUpper = 2;
    }
    else if (actor->stateUpper == 2) {
        if (actor->unk_170_s8[1] == 2) {
            actor->flags ^= ACTOR_FLAG_FLIPPED;
            actor->stateUpper = 3;
        }
    }
    else if (actor->stateUpper == 3) {
        if (func_8005D418(actor_index) != 0) {
            actor->stateUpper = 0;
        }
    }
}

void func_8019B964_72B9A4(u16 actor_index) {
    Actor* actors = gActors;

    if (func_80049040(actor_index) != 0) {
        actors[actor_index].state = 3;
        actors[actor_index].stateUpper = 2;
        return;
    }

    switch (actors[actor_index].stateUpper) {
    case 0:
        actors[actor_index].unk_170 = 2;
        actors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (actors[actor_index].posX.whole < actors[0].posX.whole) {
            if (actors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                actors[actor_index].state = 1;
            }
        }
        else if (!(actors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            actors[actor_index].state = 1;
        }
        break;
    }

    actors[actor_index].velocityX.raw = D_801A1854_731894[actors[actor_index].unk_170_s8[1]];
    if (actors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        actors[actor_index].velocityX.raw = -actors[actor_index].velocityX.raw;
    }
}

void func_8019BACC_72BB0C(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] >= 3) {
            gActors[actor_index].flags &= 0xFF3CFFFF;
            gActors[actor_index].unk_17C = 1;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(7);
            gActors[actor_index].unk_17C_s8[1] = 1;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            }

            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            if (func_8005D338(actor_index) != 3) {
                gActors[actor_index].unk_170 = 3;
                gActors[actor_index].unk_170_s8[1] = 3;
            }
        }
        else {
            if (func_8005D338(actor_index) != 4) {
                gActors[actor_index].unk_170 = 4;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY1 + 10;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 2;
                gActors[actor_index].damage = 20;
                gActors[actor_index].hitFlags = HITFLAG_7;
                gActors[actor_index].hitType = HITTYPE_2;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            }

            gActors[actor_index].damage += 5;
        }

        if (func_800490BC(actor_index, 0, -46) != 0) {
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8019BCCC_72BD0C(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        Sound_PlaySfx(SFX_BOOM_0045);
        CameraShake(6, 50);
        gActors[actor_index].unk_170 = 5;
        gActors[actor_index].stateUpper = 1;
        return;
    }

    if (gActors[actor_index].stateUpper == 1) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
    }
}

void func_8019BD7C_72BDBC(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] >= 3) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(7);
            gActors[actor_index].unk_17C = 1;
            gActors[actor_index].unk_17C_s8[1] = 1;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            }

            gActors[actor_index].var_150 = FIXED_UNIT(0.25);
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Math_AbsS32_2(gActors[actor_index].velocityX.raw / 16));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, Math_AbsS32_2(gActors[actor_index].velocityY.raw / 16));

        if (Math_AbsS32_2(gActors[actor_index].velocityY.raw) < FIXED_UNIT(0.125)) {
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.5);
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            if (func_8005D338(actor_index) != 3) {
                gActors[actor_index].unk_170 = 3;
                gActors[actor_index].unk_170_s8[1] = 3;
            }
        }
        else {
            if (func_8005D338(actor_index) != 4) {
                gActors[actor_index].unk_170 = 4;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY1 + 10;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 2;
                gActors[actor_index].damage = 20;
                gActors[actor_index].hitFlags = HITFLAG_7;
                gActors[actor_index].hitType = HITTYPE_2;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            }

            gActors[actor_index].damage += 5;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }

        if (func_800490BC(actor_index, 0, -46) != 0) {
            gActors[actor_index].state = 6;
        }
        break;
    }
}

void func_8019C010_72C050(u16 actor_index) {
    if (gActors[actor_index].stateUpper != 0 && gActiveFrames % 10 == 0) {
        func_801A0490_7304D0(actor_index);
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        Sound_PlaySfx(SFX_0080);
        Sound_PlaySfx(SFX_BOOM_0045);
        CameraShake(8, 120);
        gActors[actor_index].unk_170 = 5;
        gActors[actor_index].hitboxAX0 -= 64;
        gActors[actor_index].hitboxAX1 += 64;
        gActors[actor_index].hitboxAY0 = -44;
        gActors[actor_index].hitboxAY1 = -48;
        gActors[actor_index].hitFlags = HITFLAG_0;
        gActors[actor_index].hitType = HITTYPE_4;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        gActors[actor_index].unk_170_s8[0] = 0;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (GetCameraShakeTime() == 0) {
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019C188_72C1C8(u16 actor_index) {
    s32 var_a0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_170 = 26;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        var_a0 = 0;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;

        if (gActors[actor_index].unk_170_s8[0] == 0) {
            if (gActors[actor_index].unk_170_s8[1] == 2) {
                var_a0 = 12;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 3) {
                var_a0 = 2;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 4) {
                var_a0 = 7;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 5) {
                var_a0 = 13;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 6) {
                var_a0 = 19;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].hitboxAX0 = 0;
                    gActors[actor_index].hitboxAX1 = 56;
                }
                else {
                    gActors[actor_index].hitboxAX0 = -56;
                    gActors[actor_index].hitboxAX1 = 0;
                }

                gActors[actor_index].hitboxAY0 = -8;
                gActors[actor_index].hitboxAY1 = -36;
                gActors[actor_index].damage = 30;
                gActors[actor_index].hitFlags = HITFLAG_7;
                gActors[actor_index].hitType = HITTYPE_3;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 7) {
                var_a0 = 16;
            }
        }

        if (var_a0 != 0) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole += var_a0;
            }
            else {
                gActors[actor_index].posX.whole -= var_a0;
            }
        }

        if (func_8005D418(actor_index) != 0) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole += 20;
            }
            else {
                gActors[actor_index].posX.whole -= 20;
            }

            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019C3C8_72C408(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_170 = 11;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].posX.whole += 15;
            gActors[actor_index].hitboxAX0 = 32;
            gActors[actor_index].hitboxAX1 = 56;
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].posX.whole -= 15;
            gActors[actor_index].hitboxAX0 = -56;
            gActors[actor_index].hitboxAX1 = -32;
        }

        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 + 4;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) >= FIXED_UNIT(1)) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 1) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole -= 8;
            }
            else {
                gActors[actor_index].posX.whole += 8;
            }

            gActors[actor_index].damage = 30;
            gActors[actor_index].hitFlags = HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_15;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(0.5);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }

        gActors[actor_index].var_150 += func_8005C774(10) + 1;

        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].var_150 -= 10;
        }

        if (gActors[actor_index].unk_170_s8[0] >= 5) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019C624_72C664(u16 actor_index) {
    s32 var_v0;
    u16 child_index;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            var_v0 = gActors[actor_index].posX.whole + 80;
        }
        else {
            var_v0 = gActors[actor_index].posX.whole - 80;
        }

        if (func_80012AB4(var_v0, gActors[actor_index].posY.whole)) {
            gActors[actor_index].state = 1;
            return;
        }

        gActors[actor_index].unk_170 = 28;
        gActors[actor_index + 1].var_154 = 7;
        SpawnCrosshair(17, actor_index + 1);
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].stateUpper = 1;
        return;

    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 3) {
            Sound_PlaySfx(SFX_SWISH_0096);
        }

        gActors[actor_index + 1].var_154 = 7;
        gActors[actor_index].var_150 += func_8005C774(10) + 1;
        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].var_150 -= 10;
        }

        if (func_8005D418(actor_index)) {
            gActors[actor_index].var_154++;

            if (gActors[actor_index].var_154 < 2) {
                func_8005D3D8(actor_index);
            }
            else {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
                }
                else {
                    gActors[actor_index].velocityX.raw = -FIXED_UNIT(2);
                }

                gActors[actor_index].unk_170 = 10;
                gActors[actor_index].stateUpper = 3;
            }
        }

        return;

    case 3:
        var_v0 = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        gActors[actor_index].velocityX.raw = var_v0;

        if (Math_AbsS32_2(var_v0) >= FIXED_UNIT(1)) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }

        gActors[actor_index].flags |= ACTOR_FLAG_UNK12;

        if (gActors[actor_index].unk_170_s8[1] == 0) {
            gActors[actor_index].unk_170_s8[0]++;
        }
        else if (gActors[actor_index].unk_170_s8[1] == 1) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
            gActors[(u16)(actor_index + 1)].var_150 = 5;
        }

        child_index = actor_index + 1;

        if (gActors[child_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;

            if (gActors[child_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                gActors[actor_index].posX.raw = gActors[child_index].posX.raw;
            }

            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = 10;
            return;
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 1) {
            Sound_PlaySfx(SFX_SWISH_0098);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 48;
                gActors[actor_index].hitboxAX0 = 16;
                gActors[actor_index].posX.whole += 24;
            }
            else {
                gActors[actor_index].hitboxAX1 = -16;
                gActors[actor_index].hitboxAX0 = -48;
                gActors[actor_index].posX.whole -= 24;
            }

            gActors[actor_index].hitboxAY0 = 4;
            gActors[actor_index].hitboxAY1 = -16;
            gActors[actor_index].damage = 50;
            gActors[actor_index].hitFlags = HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_15;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(6);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }

        if (gActors[actor_index].unk_170_s8[0] >= 9) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }

        func_8019B60C_72B64C(actor_index, 2, -24);

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
        }

        return;
    }
}

void func_8019CAC0_72CB00(u16 actor_index) {
    u16 child_index = actor_index + 1;
    u16 parent_index;

    gActors[child_index].var_150 = 5;

    if (!(gActors[child_index].flags_098 & ACTOR_FLAG3_THROWN) && (gActors[child_index].flags_098 & ACTOR_FLAG3_GRAB)) {
        parent_index = gActors[child_index].parentIndex;

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));

            if (gActors[child_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
                gActors[actor_index].posX.raw = gActors[child_index].posX.raw;
            }

            gActors[actor_index].unk_170_s8[0] += 4;
            if (gActors[actor_index].unk_170_s8[1] >= 2) {
                gActors[actor_index].unk_170 = 31;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].var_150 = 60 - func_8005C774(40);
                gActors[actor_index].stateUpper = 1;
            }
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].unk_170_s8[0] = 0;

            if (--gActors[actor_index].var_150 <= 0) {
                gActors[actor_index].parentIndex = gActors[child_index].parentIndex + parent_index * 0;
                gActors[parent_index].flags_098 |= ACTOR_FLAG3_GRAB;
                gActors[parent_index].parentIndex = actor_index;
                gActors[parent_index].unk_104 = gActors[parent_index].posX.raw;
                gActors[parent_index].unk_108 = gActors[parent_index].posY.raw;
                gActors[parent_index].unk_10C = gActors[parent_index].posZ.raw;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].flags |= ACTOR_FLAG_ATTACHED;
                gActors[actor_index].state = 11;
            }
        }
    }
    else if (gActors[child_index].flags_098 & ACTOR_FLAG3_THROWN) {
        gActors[actor_index].velocityX.raw = gActors[child_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[child_index].unk_0FC.raw;

        if (gActors[child_index].unk_140_u8[0] != 0 && gActors[child_index].unk_140_u8[0] != 8 && ((gActors[actor_index].velocityX.raw > 0 && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)))) {
            gActors[actor_index].unk_170 = 22;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].iFrames = 100;
            gActors[actor_index].unk_13C_s16[1] = 150;
            gActors[actor_index].state = 25;
        }
        else {
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }

        gActors[actor_index].unk_17C = 1;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
    }
    else {
        gActors[actor_index].state = 1;
    }
}

void func_8019CD44_72CD84(u16 actor_index) {
    s32 thrown_actor_index;

    if (gActors[actor_index].stateUpper == 0) {
        func_8019B60C_72B64C(actor_index, 1, -8);
        func_8019B60C_72B64C(actor_index, 3, -32);

        if (gActors[actor_index].unk_170_s8[1] >= 3 && gActors[actor_index].unk_170_s8[0] != 0) {
            thrown_actor_index = func_8004F614(actor_index, FIXED_UNIT(-4), 0, 20);
            gActors[thrown_actor_index].flags_098 |= ACTOR_FLAG3_UNK16;
            gActors[thrown_actor_index].hitByFlags = 0;
            gActors[thrown_actor_index].hitByType = HITTYPE_28;
            gActors[thrown_actor_index].var_158 = FIXED_UNIT(0.0625);
            gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
            gActors[actor_index].stateUpper = 1;
        }
    }
    else if (gActors[actor_index].stateUpper == 1) {
        func_8019B60C_72B64C(actor_index, 4, 12);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_170 = 1;
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].state = 1;
        }
    }
}

void func_8019CE94_72CED4(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 var_a3;
    s32 sp24;
    s32 temp_v0;

    sp24 = actor->stateUpper;
    switch (sp24) {
    case 0:
        SpawnCrosshair(20, actor_index);

        if (actor->posX.whole < gActors[0].posX.whole) {
            actor->flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }

        if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
            var_a3 = actor->posX.whole + 72;
        }
        else {
            var_a3 = actor->posX.whole - 72;
        }

        if (func_80012AB4(var_a3, actor->posY.whole)) {
            actor->state = 1;
            return;
        }

        actor->unk_170 = 10;
        actor->velocityX.raw = 0;
        actor->unk_170_s16[1] = (u16)actor->unk_170_s16[1] | 0x4000;
        Sound_PlaySfx(SFX_TUARUS_YELL1);
        actor->stateUpper = 1;
        actor->var_150 = 60;

    case 1:
        var_a3 = func_8005C774(10) * 0x3000 + FIXED_UNIT(4) + actor->velocityX.raw * 0;

        if (actor->flags & ACTOR_FLAG_FLIPPED) {
            var_a3 = -var_a3;
        }

        sp24 = Math_AbsS32_2(gActors[0].posX.whole - actor->posX.whole);
        if (sp24 < (Rand() & 31) + 68) {
            if (Math_AbsS32_2(actor->velocityX.raw) >= FIXED_UNIT(3)) {
                actor->var_150 = 0;
            }
            else {
                var_a3 = actor->velocityX.raw;
                actor->var_150 -= 2;
            }
        }

        temp_v0 = Math_ApproachS32(actor->velocityX.raw, var_a3, (func_8005C774(20) << 8) + FIXED_UNIT(0.078125));
        actor->velocityX.raw = temp_v0;

        if (Math_AbsS32_2(temp_v0) >= FIXED_UNIT(1.5)) {
            actor->unk_180_u8[3] = 4;
        }

        if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
            var_a3 = actor->posX.whole + 72;
        }
        else {
            var_a3 = actor->posX.whole - 72;
        }

        if (func_80012AB4(var_a3, actor->posY.whole)) {
            actor->velocityX.raw = 0;
            actor->var_150 = 0;
        }

        if (--actor->var_150 <= 0) {
            actor->unk_170_s8[1] = 1;
            actor->unk_170_s8[0] = 0;
            Sound_PlaySfx(SFX_SWISH_0098);

            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                actor->hitboxAX1 = 48;
                actor->hitboxAX0 = 16;
                actor->posX.whole += 24;
            }
            else {
                actor->hitboxAX1 = -16;
                actor->hitboxAX0 = -48;
                actor->posX.whole -= 24;
            }

            actor->hitboxAY0 = 4;
            actor->hitboxAY1 = -16;
            actor->damage = 50;
            actor->hitFlags = HITFLAG_7;
            actor->hitType = HITTYPE_15;
            actor->unk_0F8.raw = FIXED_UNIT(6);
            actor->unk_0FC.raw = FIXED_UNIT(2);
            actor->flags |= ACTOR_FLAG_UNK9;
            actor->var_150 = 0;
            actor->stateUpper = 2;
        }

        return;

    case 2:
        if (actor->damage != 0) {
            actor->damage--;

            if (actor->damage < 5) {
                actor->damage = 0;
            }
        }

        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.125));
        if (actor->velocityX.raw != 0) {
            actor->unk_180_u8[3] = 4;
            actor->var_150++;
            return;
        }

        actor->unk_170_s8[0] += actor->var_150;
        actor->var_150 = 0;
        actor->flags &= ~ACTOR_FLAG_UNK9;
        func_8005D3D8(actor_index);
        actor->stateUpper = 3;
        return;

    case 3:
        func_8019B60C_72B64C(actor_index, 2, -24);
        actor->var_150 += func_8005C774(10) + 1;
        if (actor->var_150 >= 10) {
            actor->unk_170_s8[0]++;
            actor->var_150 -= 10;
        }

        if (func_8005D418(actor_index)) {
            actor->state = 1;
        }
        break;
    }
}

void func_8019D2BC_72D2FC(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].unk_170 = 6;
        gActors[actor_index].unk_17C = 2;
        gActors[actor_index].unk_17C_s8[1] = 1;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.whole += 12;
        }
        else {
            gActors[actor_index].posX.whole -= 12;
        }

        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0) {
            if (gActors[actor_index].unk_170_s8[1] == 1) {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].posX.whole += 20;
                    gActors[actor_index].hitboxAX0 = -16;
                    gActors[actor_index].hitboxAX1 = 56;
                }
                else {
                    gActors[actor_index].posX.whole -= 20;
                    gActors[actor_index].hitboxAX0 = -56;
                    gActors[actor_index].hitboxAX1 = 16;
                }

                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY1 + 8;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 2) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK11;
            }
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_ATTACHED)) {
                gActors[actor_index].state = 17;
            }
            else {
                gActors[actor_index].unk_170 = 7;
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 1;
                gActors[actor_index].stateUpper = 2;
            }
        }
        break;

    case 2:
        func_8019B60C_72B64C(actor_index, 2, -24);

        if (func_8005D418(actor_index) != 0) {
            if (Rand() & 1) {
                gActors[actor_index].state = 15;
            }
            else {
                gActors[actor_index].state = 16;
            }
        }
        break;
    }
}

void func_8019D4F4_72D534(u16 actor_index) {
    s32 position_x;

    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;

    if (!gActors[actor_index].stateUpper) {
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].unk_170 = 8;
        gActors[actor_index].stateUpper = 1;
        return;
    }

    if (gActors[actor_index].stateUpper == 1) {
        if (gActors[actor_index].unk_170_s8[0] == 0) {
            if (gActors[actor_index].unk_170_s8[1] == 1) {
                gActors[actor_index].hitboxAX0 = -28;
                gActors[actor_index].hitboxAX1 = 28;
                gActors[actor_index].hitboxAY0 = 40;
                gActors[actor_index].hitboxAY1 = 16;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK11;
            }
            else if (gActors[actor_index].unk_170_s8[1] == 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
                if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        position_x = gActors[actor_index].posX.whole + 64;
                    }
                    else {
                        position_x = gActors[actor_index].posX.whole - 64;
                    }

                    if (func_80012AB4(position_x, gActors[actor_index].posY.whole) != 0) {
                        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                    }

                    gActors[actor_index].unk_170 = 9;
                    gActors[actor_index].stateUpper = 2;
                }
            }
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
    }
    else if (gActors[actor_index].stateUpper == 2) {
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 16;
        }
    }
}

void func_8019D694_72D6D4(u16 actor_index) {
    u16 thrown_actor_index;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 28;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 3) {
            Sound_PlaySfx(SFX_SWISH_0096);
        }

        gActors[actor_index].var_150 += func_8005C774(10) + 1;
        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].var_150 -= 10;
        }

        if (func_8005D418(actor_index)) {
            if (++gActors[actor_index].var_154 < 4) {
                func_8005D3D8(actor_index);
            }
            else {
                thrown_actor_index = func_8004F614(actor_index, FIXED_UNIT(0.5), FIXED_UNIT(1.75), 0);
                gActors[thrown_actor_index].flags_098 |= ACTOR_FLAG3_UNK16;
                gActors[thrown_actor_index].hitByType = 28;
                gActors[thrown_actor_index].var_158 = FIXED_UNIT(0.0625);
                gActors[actor_index].posZ.raw = -FIXED_UNIT(1);
                gActors[actor_index].unk_170 = 15;
                gActors[actor_index].stateUpper = 2;
            }
        }
        break;

    case 2:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 10;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            Sound_PlaySfx(SFX_SWISH_0098);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 48;
                gActors[actor_index].hitboxAX0 = 16;
                gActors[actor_index].posX.whole += 24;
            }
            else {
                gActors[actor_index].hitboxAX1 = -16;
                gActors[actor_index].hitboxAX0 = -48;
                gActors[actor_index].posX.whole -= 24;
            }

            gActors[actor_index].hitboxAY0 = 4;
            gActors[actor_index].hitboxAY1 = -16;
            gActors[actor_index].damage = 50;
            gActors[actor_index].hitFlags = HITFLAG_0 | HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_15;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(6);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].var_150++;
        }

        if (gActors[actor_index].unk_170_s8[0] >= 9) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }

        func_8019B60C_72B64C(actor_index, 2, -24);

        if (func_8005D418(actor_index)) {
            if (gActors[actor_index].var_150 == 0) {
                gActors[actor_index].state = 1;
            }
            else {
                gActors[actor_index].unk_170 = 23;
                gActors[actor_index].var_150 = 0;
                Sound_PlaySfx(SFX_TUARUS_YELL2);
                gActors[actor_index].stateUpper = 5;
            }
        }
        break;

    case 5:
        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] >= 2) {
            Sound_PlaySfx(SFX_004A);
        }

        if (func_8005D418(actor_index)) {
            if (++gActors[actor_index].var_150 < 3) {
                func_8005D3D8(actor_index);
            }
            else {
                gActors[actor_index].state = 1;
            }
        }
        break;
    }
}

void func_8019DA5C_72DA9C(u16 actor_index) {
    s32 thrown_actor_index;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 24;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 1) {
            Sound_PlaySfx(SFX_SWISH_0097);
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].var_154++;

            if (gActors[actor_index].var_154 < 3) {
                func_8005D3D8(actor_index);
            }
            else {
                gActors[actor_index].unk_170 = 25;
                func_8019B60C_72B64C(actor_index, 0, 16);
                gActors[actor_index].stateUpper = 2;
            }
        }
        break;

    case 2:
        if (gActors[actor_index].unk_170_s8[1] > 0) {
            Sound_PlaySfx(SFX_0039);
            thrown_actor_index = func_8004F614(actor_index, FIXED_UNIT(6), FIXED_UNIT(2), 100);
            gActors[thrown_actor_index].flags_098 |= ACTOR_FLAG3_UNK16;
            gActors[thrown_actor_index].hitByType = HITTYPE_28;
            gActors[thrown_actor_index].var_158 = FIXED_UNIT(0.0625);
            gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        func_8019B60C_72B64C(actor_index, 3, -16);

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_170 = 23;
            gActors[actor_index].var_150 = 0;
            Sound_PlaySfx(SFX_TUARUS_YELL2);
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] >= 2) {
            Sound_PlaySfx(SFX_004A);
        }

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].var_150++;

            if (gActors[actor_index].var_150 < 6) {
                func_8005D3D8(actor_index);
            }
            else {
                gActors[actor_index].state = 1;
            }
        }
        break;
    }
}

void func_8019DCAC_72DCEC(u16 actor_index) {
    s32 sp24[5];

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 16;
        gActors[actor_index].unk_170_s8[1] = 1;
        sp24[0] = gActors[actor_index].posX.whole;
        sp24[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
        sp24[2] = gActors[actor_index].posZ.whole - 1;
        sp24[3] = 0;
        sp24[4] = 0;
        func_8005A320(actor_index, sp24, 0, 3.0f);
        Sound_PlaySfx(SFX_0058);
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].var_150 = 30;

            if (gActors[actor_index].health > 0) {
                gActors[actor_index].state = 18;
            }
            else {
                gActors[actor_index].stateUpper++;
            }
        }
        break;
    }
}

void func_8019DDBC_72DDFC(u16 actor_index) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
        }
        else {
            if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.5);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1.5);
            }

            gActors[actor_index].unk_170 = 3;
            gActors[actor_index].unk_170_s8[1] = 5;
            gActors[actor_index].unk_17C = 1;
            gActors[actor_index].flags &= 0xFF3CFFFF;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.8);
            gActors[actor_index].stateUpper = 1;
        }
        break;

    case 1:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2) && func_8005D338(actor_index) != 4) {
            gActors[actor_index].unk_170 = 4;
        }

        if (func_800490BC(actor_index, 0, -46) != 0) {
            Sound_PlaySfx(SFX_BOOM_0045);
            CameraShake(2, 25);
            gActors[actor_index].unk_170 = 5;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019DF70_72DFB0(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 12;
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

    gActors[actor_index].unk_180_u8[3] = 5;
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.375));

    if (func_8005D418(actor_index) != 0 && Math_AbsS32_2(gActors[actor_index].velocityX.raw) < FIXED_UNIT(1)) {
        gActors[actor_index].state = 1;
    }
}

void func_8019E05C_72E09C(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;

        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].unk_0F8.raw < 0) {
                gActors[actor_index].unk_170 = 13;
            }
            else {
                gActors[actor_index].unk_170 = 14;
            }
        }
        else if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_170 = 13;
        }
        else {
            gActors[actor_index].unk_170 = 14;
        }

        if (func_8005D338(actor_index) == 13) {
            gActors[actor_index].var_15C = 0;
        }

        if (func_8005D338(actor_index) == 14) {
            gActors[actor_index].var_15C = 1;
        }

        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            if (func_8005D338(actor_index) == 13) {
                gActors[actor_index].unk_170 = 29;
            }

            if (func_8005D338(actor_index) == 14) {
                gActors[actor_index].unk_170 = 30;
            }
        }

        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
    }

    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_index].unk_180_u8[3] = 5;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));

        if (Math_AbsS32_2(actor_index) > FIXED_UNIT(1)) {
            return;
        }
    }
    else if (func_800490BC(actor_index, 0, -46) != 0) {
        Sound_PlaySfx(SFX_006C);
        gActors[actor_index].unk_170 = 5;
        gActors[actor_index].state = 4;
        return;
    }
    else {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
    }

    if (func_8005D418(actor_index) != 0) {
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_index].state = 1;
        }
        else {
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }
    }
}

void func_8019E27C_72E2BC(u16 actor_index) {
    s32 sp34[5];
    s32 sp30;
    s32 temp_v0;
    u32 temp_v1;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        temp_v0 = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityX.raw = temp_v0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (temp_v0 < 0) {
                gActors[actor_index].unk_170 = 29;
            }
            else {
                gActors[actor_index].unk_170 = 30;
            }
        }
        else if (temp_v0 > 0) {
            gActors[actor_index].unk_170 = 29;
        }
        else {
            gActors[actor_index].unk_170 = 30;
        }

        if (func_8005D338(actor_index) == 29) {
            gActors[actor_index].var_15C = 0;
        }

        if (func_8005D338(actor_index) == 30) {
            gActors[actor_index].var_15C = 1;
        }

        gActors[actor_index].var_154 = 0;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
        gActors[actor_index].unk_11C = 0;
        gActors[actor_index].unk_114 = 0;
        gActors[actor_index].var_110 = 0;

    case 1:
        if (gActors[actor_index].velocityX.raw >= 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(2), FIXED_UNIT(0.125));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(2), FIXED_UNIT(0.125));
        }

        if (gActors[actor_index].pendingDamage != 0) {
            gActors[actor_index].pendingDamage--;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (func_8005D418(actor_index)) {
            if (gActors[actor_index].health > 0) {
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = 3;
            }
            else {
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].stateUpper = 3;
            }
            break;
        }

        if (!(gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3))) {
            break;
        }

        gActors[actor_index].stateUpper = 2;

    case 2:
        Sound_PlaySfx(SFX_0068);
        temp_v1 = gActors[actor_index].flags_098;

        if (temp_v1 & ACTOR_FLAG3_UNK2) {
            sp34[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
            sp30 = -FIXED_UNIT(256);
        }

        if (temp_v1 & ACTOR_FLAG3_UNK3) {
            sp30 = FIXED_UNIT(256);
            sp34[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
        }

        sp34[1] = gActors[actor_index].posY.whole;
        sp34[2] = gActors[actor_index].posZ.whole;
        sp34[3] = 0;
        sp34[4] = 0;
        func_8005A320(actor_index, sp34, sp30, 3.0f);

        if (Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]) == 3) {
            Sound_PlaySfx(SFX_TUARUS_YELL3);
        }
        else {
            Sound_PlaySfx(SFX_TUARUS_OW);
        }

        gActors[actor_index].unk_13C_s16[1] = 0;

        if (func_8005D338(actor_index) == 29) {
            gActors[actor_index].unk_170 = 0x401E;
        }
        else {
            gActors[actor_index].unk_170 = 0x401D;
        }

        gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityX.whole) + 4;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (--gActors[actor_index].var_150 <= 0) {
            if (func_8005D338(actor_index) == 29) {
                gActors[actor_index].unk_170 = 18;
            }
            else {
                gActors[actor_index].unk_170 = 19;
            }

            gActors[actor_index].unk_17C = 4;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            sp34[0] = gActors[actor_index].posX.whole;
            sp34[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            sp34[2] = gActors[actor_index].posZ.whole;
            sp34[3] = 0;
            sp34[4] = 0;
            func_8005A320(actor_index, sp34, 0, 3.0f);

            if (func_8005D338(actor_index) == 19) {
                gActors[actor_index].unk_170 = 16;
            }

            if (func_8005D338(actor_index) == 18) {
                gActors[actor_index].unk_170 = 17;
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
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    case 6:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_0068);
            func_8005D3D8(actor_index);
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        if (gActors[actor_index].velocityX.raw != 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }
        else if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = 32;

            if (gActors[actor_index].health > 0) {
                gActors[actor_index].state = 18;
            }
            else {
                gActors[actor_index].stateUpper++;
            }
        }
        break;

    default:
        break;
    }
}

void func_8019E788_72E7C8(u16 actor_index) {
    Actor* actor;
    s32 var_v1;
    s32 sp34[3];
    u16 sp32;
    u16 new_actor_index;

    actor = &gActors[actor_index];
    if (!(actor->flags_098 & ACTOR_FLAG3_THROWN) &&
        ((actor->flags_098 & ACTOR_FLAG3_GRAB) || actor->stateUpper >= 3)) {
        sp32 = actor->parentIndex;

        if (actor->flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.25));

            if (func_80049040(actor_index) != 0) {
                actor->stateUpper = 0;
            }
        }
        else {
            if (actor->velocityY.raw > -FIXED_UNIT(8)) {
                actor->velocityY.raw -= FIXED_UNIT(0.25);
            }

            if (actor->flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                actor->velocityX.raw = 0;
            }

            if (func_800490BC(actor_index, 0, -0x2E) != 0) {
                Sound_PlaySfx(SFX_BOOM_0045);
                CameraShake(2, 0x19);
                actor->stateUpper = 0;
            }
        }

        if (actor->stateUpper == 0) {
            if (actor->flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                actor->unk_170 = 0xC;
                actor->unk_17C = 0;
                actor->stateUpper = 2;
            }
            else {
                if ((actor->flags & ACTOR_FLAG_FLIPPED) == (gActors[sp32].flags & ACTOR_FLAG_FLIPPED)) {
                    actor->unk_170 = 0x1D;
                }
                else {
                    actor->unk_170 = 0x1E;
                }

                actor->unk_17C = 3;
                actor->stateUpper = 1;
            }

            actor->var_150 = 0;
        }

        var_v1 = actor->stateUpper;
        if (actor->stateUpper == 2) {
            actor->var_150 += func_8005C774(5) + 1;

            if (actor->var_150 >= 100) {
                actor->unk_170 = 0x14;
                Sound_PlaySfx(SFX_TUARUS_LAUGH1);
                actor->stateUpper = 3;
            }

            var_v1 = actor->stateUpper;
        }
        else if (var_v1 == 3) {
            if (actor->unk_170_s8[1] > 0) {
                actor->hitFlags = 0;
                actor->hitType = 4;
                actor->unk_0F8.raw = FIXED_UNIT(4);
                actor->unk_0FC.raw = FIXED_UNIT(3);

                if (actor->flags_098 & ACTOR_FLAG3_GRAB) {
                    gActors[0].flags_098 |= (ACTOR_FLAG3_UNK1 | ACTOR_FLAG3_UNK16);
                    gActors[0].hitByFlags = 0;
                    gActors[0].hitByType = 0x12;
                    gActors[0].pendingDamage = 0;

                    if (actor->posX.raw < gActors[0].posX.raw) {
                        gActors[0].unk_0F8.raw = FIXED_UNIT(4);
                    }
                    else {
                        gActors[0].unk_0F8.raw = -FIXED_UNIT(4);
                    }

                    gActors[0].unk_0FC.raw = FIXED_UNIT(4);
                }

                actor->damage = 0;
                actor->stateUpper = 4;
                var_v1 = actor->stateUpper;
            }
        }

        if (var_v1 == 4) {
            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                sp34[0] = actor->posX.whole + 0x1B;
            }
            else {
                sp34[0] = actor->posX.whole - 0x1B;
            }

            sp34[1] = actor->posY.whole + 8;
            sp34[2] = actor->posZ.whole - 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp34);
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK19;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].graphicIndex = 0x2808;
            gActors[new_actor_index].unk_148 = 0.0f;
            gActors[new_actor_index].scaleX = 2.0f;

            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                sp34[0] = actor->posX.whole - 0x2C;
            }
            else {
                sp34[0] = actor->posX.whole + 0x2C;
            }

            sp34[1] = actor->posY.whole + 8;
            sp34[2] = actor->posZ.whole - 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp34);
            gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK19;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].graphicIndex = 0x2808;
            gActors[new_actor_index].unk_148 = 0.0f;
            gActors[new_actor_index].scaleX = 3.0f;

            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                sp34[0] = actor->posX.whole + 0x2E;
            }
            else {
                sp34[0] = actor->posX.whole - 0x2E;
            }

            sp34[1] = actor->posY.whole + 8;
            sp34[2] = actor->posZ.whole - 2;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp34);
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK19;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].graphicIndex = 0x280C;
            gActors[new_actor_index].unk_148 = 0.0f;

            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                sp34[0] = actor->posX.whole - 0x38;
            }
            else {
                sp34[0] = actor->posX.whole + 0x38;
            }

            sp34[1] = actor->posY.whole + 8;
            sp34[2] = actor->posZ.whole - 1;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp34);
            gActors[new_actor_index].flags &= ~ACTOR_FLAG_UNK19;
            gActors[new_actor_index].colorA = 0xFF;
            gActors[new_actor_index].graphicIndex = 0x280A;
            gActors[new_actor_index].unk_148 = 0.0f;

            if (func_8005D418(actor_index) != 0) {
                actor->state = 1;
            }
        }
    }
    else if (actor->flags_098 & ACTOR_FLAG3_THROWN) {
        actor->velocityX.raw = actor->unk_0F8.raw;
        actor->velocityY.raw = actor->unk_0FC.raw;

        if (!(actor->flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) && actor->unk_140_u8[0] >= 5) {
            actor->unk_170 = 0x16;

            if (actor->velocityX.raw >= 0) {
                actor->flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                actor->flags |= ACTOR_FLAG_FLIPPED;
            }

            actor->var_150 = -1;
            actor->state = 0x19;
        }
        else {
            actor->stateUpper = 2;
            actor->stateLower = 3;
        }

        actor->unk_17C = 1;
        actor->flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        actor->flags |= ACTOR_FLAG_UNK22;
        return;
    }
    else {
        actor->stateUpper = 2;

        if (actor->flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            actor->state = 1;
            return;
        }

        actor->stateLower = 3;
    }
}

void func_8019EE10_72EE50(u16 actor_index) {
    u16 parent_index = gActors[actor_index].parentIndex;

    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[actor_index].unk_170_s8[1] != 1 || gActors[parent_index].unk_140_u8[0] != 4 || (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != (gActors[parent_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].state = 22;
            return;
        }

        gActors[actor_index].unk_170_s8[0] = 0;
        gActors[actor_index].unk_170_s16[1] = (u16)gActors[actor_index].unk_170_s16[1] | 0x4000;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
    }

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) && ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) || gActors[actor_index].stateUpper >= 2)) {
        if (gActors[actor_index].stateUpper * 1 == 1) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            gActors[actor_index].var_150 += func_8005C774(10) + 10;

            if (gActors[actor_index].var_150 >= 600) {
                gActors[actor_index].unk_170 = 31;
                Sound_PlaySfx(SFX_TUARUS_LAUGH1);
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper * 1 == 2) {
            if (gActors[actor_index].unk_170_s8[1] >= 3) {
                gActors[actor_index].hitFlags = 0;
                gActors[actor_index].hitType = HITTYPE_3;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(-4);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);

                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
                    gActors[parent_index].parentIndex = actor_index;
                    gActors[parent_index].flags_098 |= ACTOR_FLAG3_UNK16 | ACTOR_FLAG3_UNK1;
                    func_8001EB8C(actor_index, parent_index);
                }

                gActors[actor_index].damage = 0;
                gActors[actor_index].state = 24;
            }
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;

        if (gActors[actor_index].unk_140_u8[0] != 0 && gActors[actor_index].unk_140_u8[0] != 8 && ((gActors[actor_index].velocityX.raw > 0 && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)))) {
            gActors[actor_index].unk_170 = 22;
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].iFrames = 100;
            gActors[actor_index].pendingDamage = 150;
            gActors[actor_index].state = 25;
        }
        else {
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 3;
        }

        gActors[actor_index].unk_17C = 1;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
    }
    else {
        gActors[actor_index].state = 1;
    }
}

void func_8019F0A8_72F0E8(u16 actor_index) {
    if (func_8005D418(actor_index) != 0) {
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_170 = 1;
        gActors[actor_index].state = 1;
    }
}

void func_8019F11C_72F15C(u16 actor_index) {
    u16 sp46;
    s32 sp30[5];
    s32 sp2C;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].var_150 > 0) {
            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                if (gActors[actor_index].var_160_s8[1] == 0 && YellowGem_GetFlag(gCurrentStage) == 0) {
                    SpawnGemActor(actor_index, GEMFLAG_COMMON | GEMFLAG_YELLOW, 0);
                    gActors[sp46].var_160_s8[1] = 1;
                }

                gActors[actor_index].stateUpper = 2;
            }

            gActors[actor_index].var_150--;
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (func_800490BC(actor_index, -1, -1)) {
            gActors[actor_index].unk_170 = 16;
            gActors[actor_index].stateUpper = 5;
        }
        break;

    default:
        break;

    case 2:
        Sound_PlaySfx(SFX_0068);

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            sp30[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170 = 30;
            }
            else {
                gActors[actor_index].unk_170 = 29;
            }

            sp2C = -FIXED_UNIT(256);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            sp30[0] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170 = 29;
            }
            else {
                gActors[actor_index].unk_170 = 30;
            }

            sp2C = FIXED_UNIT(256);
        }

        sp30[3] = 0;
        sp30[4] = 0;
        sp30[1] = gActors[actor_index].posY.whole;
        sp30[2] = gActors[actor_index].posZ.whole;
        func_8005A320(actor_index, sp30, sp2C, 3.0f);

        if (Marina_SubHealth(actor_index, 150) == 3) {
            Sound_PlaySfx(SFX_TUARUS_YELL3);
        }
        else {
            Sound_PlaySfx(SFX_TUARUS_OW);
        }

        gActors[actor_index].var_150 = Math_AbsS32_2(gActors[actor_index].velocityX.whole) + 4;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw += FIXED_UNIT(1.5);
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (--gActors[actor_index].var_150 == 0) {
            if (func_8005D338(actor_index) == 29) {
                gActors[actor_index].unk_170 = 18;
            }
            else {
                gActors[actor_index].unk_170 = 19;
            }

            gActors[actor_index].unk_17C = 4;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);

        if (func_800490BC(actor_index, 0, -46)) {
            if (func_8005D338(actor_index) == 19) {
                gActors[actor_index].unk_170 = 16;
            }

            if (func_8005D338(actor_index) == 18) {
                gActors[actor_index].unk_170 = 17;
            }

            gActors[actor_index].stateUpper = 5;
        }
        break;

    case 5:
        if (Marina_SubHealth(actor_index, gActors[actor_index].unk_13C_s16[1]) == 3) {
            Sound_PlaySfx(SFX_TUARUS_YELL3);
        }
        else {
            Sound_PlaySfx(SFX_TUARUS_OW);
        }

        sp30[0] = gActors[actor_index].posX.whole;
        sp30[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
        sp30[2] = gActors[actor_index].posZ.whole;
        sp30[3] = 0;
        sp30[4] = 0;
        func_8005A320(actor_index, sp30, 0, 3.0f);
        Sound_PlaySfx(SFX_BOOM_0045);
        CameraShake(4, 25);
        gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].stateUpper = 6;
        break;

    case 6:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].stateUpper = 7;
        }
        break;

    case 7:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);

        if (func_800490BC(actor_index, -1, -1)) {
            Sound_PlaySfx(SFX_BOOM_0045);
            func_8005D3D8(actor_index);
            gActors[actor_index].unk_170_s8[0] = 0;
            gActors[actor_index].stateUpper = 8;
        }
        break;

    case 8:
        if (gActors[actor_index].velocityX.raw != 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        }
        else if (func_8005D418(actor_index)) {
            gActors[actor_index].var_150 = 32;

            if (gActors[actor_index].health > 0) {
                gActors[actor_index].state = 18;
            }
            else {
                gActors[actor_index].stateUpper++;
            }
        }
        break;
    }
}

void func_8019F60C_72F64C(u16 actor_index) {
    u16 new_actor_index;
    Actor* actor = &gActors[actor_index];
    Actor* child;
    s32 temp_v0;
    s32 temp_v0_2;
    f32 temp_f0;
    s32 temp_v0_4;

    switch (actor->stateUpper) {
    case 0:
        if (gStageState == 3) {
            actor->var_150 = 96;
            actor->var_15C = 192;
            Sound_PlaySfx(SFX_00AF);
            actor->flags |= ACTOR_FLAG_FLIPPED;
            actor->stateUpper = 1;
        }
        break;

    case 1:
        if (--actor->var_150 == 0) {
            actor->unk_170 = 12;
            actor->unk_17C = 0;
            actor->flags &= ~(ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17);\
            actor->flags |= ACTOR_FLAG_UNK17;
            actor->var_150 = 32;
            actor->stateUpper = 2;
        }
        break;

    case 2:
        actor->flags |= ACTOR_FLAG_DRAW;

        if (actor->var_15C == 0 && --actor->var_150 == 0) {
            actor->unk_170 = 23;
            actor->var_150 = 96;
            actor->stateUpper = 3;
        }
        break;

    case 3:
        if (actor->unk_170_s8[0] == 0 && actor->unk_170_s8[1] >= 2) {
            Sound_PlaySfx(SFX_004A);
        }

        if (actor->var_150 != 0) {
            if (--actor->var_150 == 0) {
                func_8005D3D8(actor_index);
            }
        }
        else if (func_8005D418(actor_index)) {
            actor->unk_170 = 1;
            gStageState++;
            actor->stateUpper = 4;
        }
        break;

    case 4:
        if ((s32)gStageState >= 10) {
            actor->state = 1;
        }
        break;
    }

    if (actor->var_15C != 0) {
        actor->var_15C--;

        if (actor->var_15C % 5 == 0) {
            new_actor_index = func_801A0490_7304D0(actor_index);
            gActors[new_actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
            temp_v0 = RandModulo(16);
            gActors[new_actor_index].posX.whole = temp_v0 * 1 + actor->posX.whole;
            child = &gActors[new_actor_index];
            child->posY.whole = actor->hitboxBY1 + actor->posY.whole;
            child->posZ.whole = actor->posZ.whole + 8;
            temp_v0_2 = RandModulo(0);
            child->velocityX.raw = temp_v0_2 * 0x300;
            child->velocityY.raw = (0x200 - actor->var_15C) * 0x300;
            child->velocityY.raw += RandModulo(0) * 0x300;
            temp_v0_4 = RandModulo(50);
            temp_f0 = (f32)temp_v0_4 * 0.3;
            child->var_110 = temp_f0;
            child->var_110 = Math_AbsS32_2((s32)temp_f0);

            if (child->velocityX.raw > 0) {
                child->var_110 = -child->var_110;
            }
        }
    }
}

void func_8019F9C8_72FA08(u16 actor_index) {
    s32 unused[4];
    Actor* temp_v1;
    u16 child_index;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicLists = D_801A1A90_731AD0;
        gActors[actor_index].graphicIndex = GINDEX_STAREFFECT;
        gActors[actor_index].grabType = GRABTYPE_15;
        gActors[actor_index].unk_0DF = ACTOR0DF_7 | ACTOR0DF_0_2;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        func_8019B6B8_72B6F8(actor_index);
        child_index = actor_index + 1;
        temp_v1 = &gActors[child_index];
        temp_v1->actorType = ACTORTYPE_OVL1_TARUS_1;
        Actor_Initialize(child_index);
        temp_v1->unk_14C = actor_index;
        gActors[actor_index].var_160_s8[1] = 0;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_120 = 1.0f;

        if (gStageState < 0x1000) {
            gActors[actor_index].state = 26;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].state = 1;
        }
        break;

    case 1:
        if (gActors[0].posX.raw >= gActors[actor_index].posX.raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 32;
            gActors[actor_index].stateUpper = 1;
        }

        Marina_DebugAnim(actor_index);
        break;

    case 2:
        if (gActors[0].posX.raw >= gActors[actor_index].posX.raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_158 = 0x4800;
            gActors[actor_index].var_15C = 0x4862;
        }

        Marina_DebugGraphic(actor_index);
        break;
    }
}

void func_8019FC24_72FC64(u16 actor_index) {
    Actor* actor;
    Actor* var_v0;
    s32 sp34[3];
    Actor* parent;
    u16 parent_index;
    s32 var_a0;
    s32 var_v0_2;

    actor = &gActors[actor_index];
    if (actor->state == 0) {
        actor->unk_120 = 0;
    }

    D_800BE544 = actor_index;

    if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
        actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11);

        if (actor->stateLower == 6) {
            sp34[0] = gActors[gActors[actor_index].parentIndex].posX.whole;
            var_v0 = &gActors[gActors[actor_index].parentIndex];
            sp34[1] = var_v0->hitboxBY1 + var_v0->posY.whole;
        }
        else {
            sp34[0] = (gActors[gActors[actor_index].parentIndex].posX.whole + actor->posX.whole + actor->hitboxAX0 + actor->hitboxAX1) / 2;
            var_v0 = &gActors[gActors[actor_index].parentIndex];
            sp34[1] = (var_v0->posY.whole + actor->posY.whole + actor->hitboxAY0 + actor->hitboxAY1) / 2;
        }

        sp34[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
        func_8005A1A4(actor_index, sp34, 3.0f);
        Sound_PlaySfx(SFX_HIT_002D);
    }

    if ((actor->flags_098 & ACTOR_FLAG3_UNK8) && !(gActors[actor->parentIndex].unk_0DF & 0x40)) {
        MarinaEffect_Grab(actor_index, 1.0f);
        parent_index = actor->parentIndex;
        parent = &gActors[parent_index];
        parent->flags_098 |= ACTOR_FLAG3_GRAB;
        parent->parentIndex = actor_index;
        parent->unk_104 = parent->posX.raw;
        parent->unk_108 = parent->posY.raw;
        parent->unk_10C = parent->posZ.raw;
        actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11);
        actor->flags |= ACTOR_FLAG_ATTACHED;
    }

    actor->colorB = 0;
    actor->colorG = 0;
    actor->colorR = 0;

    switch ((s32)actor->unk_120) {
    case 0:
        func_8019F9C8_72FA08(actor_index);
        break;

    case 1:
        func_8019B394_72B3D4(actor_index);

        if (gMarinaAnim.anim_u32 == 0) {
            func_8019B100_72B140(actor_index, 0U);
        }

        D_801A1B10_731B50[actor->stateLower](actor_index);
        break;
    }

    if (actor->iFrames != 0) {
        actor->iFrames--;
    }

    func_8005D450(actor_index);
    func_8005CAA8(actor_index, D_801A1820_731860);

    if (actor->flags & ACTOR_FLAG_ATTACHED) {
        parent_index = actor->parentIndex;
        parent = &gActors[parent_index];
        parent->flags_098 |= ACTOR_FLAG3_GRAB;
        parent->parentIndex = actor_index;
        actor->posZ.raw = parent->posZ.raw + 1;

        switch (actor->graphicIndex) {
        case 0x480B:
            var_v0_2 = FIXED_UNIT(32);
            var_a0 = TO_FIXED(actor->hitboxAY1) + FIXED_UNIT(12);
            break;

        case 0x480C:
            var_v0_2 = FIXED_UNIT(32);
            var_a0 = -FIXED_UNIT(20);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x480E:
            var_v0_2 = -FIXED_UNIT(2);
            var_a0 = FIXED_UNIT(20);
            break;

        case 0x480F:
            var_v0_2 = FIXED_UNIT(16);
            var_a0 = FIXED_UNIT(32);
            break;

        case 0x482D:
            actor->posZ.raw = parent->posZ.raw - 1;

        case 0x482E:
            var_v0_2 = FIXED_UNIT(40);
            var_a0 = FIXED_UNIT(12);
            break;

        case 0x482F:
            var_v0_2 = FIXED_UNIT(32);
            var_a0 = FIXED_UNIT(16);
            break;

        case 0x4830:
            var_v0_2 = FIXED_UNIT(8);
            var_a0 = FIXED_UNIT(20);
            break;

        case 0x4831:
            var_v0_2 = -FIXED_UNIT(16);
            var_a0 = FIXED_UNIT(20);
            break;

        case 0x4832:
            var_v0_2 = -FIXED_UNIT(32);
            var_a0 = FIXED_UNIT(20);
            break;

        case 0x4833:
            var_v0_2 = -FIXED_UNIT(32);
            var_a0 = FIXED_UNIT(16);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4834:
            var_v0_2 = -FIXED_UNIT(14);
            var_a0 = FIXED_UNIT(12);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4835:
            var_v0_2 = FIXED_UNIT(16);
            var_a0 = FIXED_UNIT(12);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4836:
            var_v0_2 = FIXED_UNIT(32);
            var_a0 = FIXED_UNIT(16);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4810:
        case 0x4845:
        case 0x4846:
        case 0x4847:
        case 0x4848:
        case 0x4849:
        case 0x484A:
        case 0x484B:
            var_v0_2 = FIXED_UNIT(40);
            var_a0 = FIXED_UNIT(12);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4850:
            var_v0_2 = FIXED_UNIT(64);
            var_a0 = -FIXED_UNIT(8);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4851:
            var_v0_2 = FIXED_UNIT(56);
            var_a0 = -FIXED_UNIT(8);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4852:
            var_v0_2 = FIXED_UNIT(14);
            var_a0 = -FIXED_UNIT(16);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        case 0x4853:
            var_v0_2 = -FIXED_UNIT(48);
            var_a0 = -FIXED_UNIT(8);
            actor->posZ.raw = parent->posZ.raw - 1;
            break;

        default:
            var_v0_2 = 0;
            var_a0 = 0;
            break;
        }

        if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
            parent->unk_104 = actor->posX.raw + var_v0_2;
        }
        else {
            parent->unk_104 = actor->posX.raw - var_v0_2;
        }

        parent->unk_108 = actor->posY.raw + var_a0;
    }

    MarinaEffect_Update(actor_index);

    if (func_8005C5E0(actor_index) == 0) {
        if (actor->stateLower == 1 || actor->stateLower == 2 || actor->stateLower == 4 || actor->stateLower == 0x13) {
            actor->flags |= ACTOR_FLAG_UNK15;
        }
    }
    else if (actor->unk_13C_s16[0] > 0) {
        actor->unk_180_u8[3] = 6;
    }

    func_8002877C(actor_index);
    actor->flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN);
}

void func_801A0280_7302C0(u16 actor_index) {
    u16 parent_index = (u32)gActors[actor_index].unk_14C;

    if (gActors[actor_index].stateLower == 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].grabType = GRABTYPE_15;
        gActors[actor_index].state = 1;
    }

    if (gActors[actor_index].var_150 != 0) {
        gActors[actor_index].unk_17C = gActors[actor_index].var_150;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
        gActors[actor_index].var_150 = 0;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
    }

    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= gActors[parent_index].flags & ACTOR_FLAG_FLIPPED;
    gActors[actor_index].posX.raw = gActors[parent_index].posX.raw;
    gActors[actor_index].posY.raw = gActors[parent_index].posY.raw;
    gActors[actor_index].posZ.raw = gActors[parent_index].posZ.raw;

    if (gActors[actor_index].var_154 != 0) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.whole += D_801A1820_731860[gActors[actor_index].var_154 * 4];
        }
        else {
            gActors[actor_index].posX.whole -= D_801A1820_731860[gActors[actor_index].var_154 * 4];
        }

        gActors[actor_index].posY.whole += D_801A1820_731860[gActors[actor_index].var_154 * 4 + 2];
        gActors[actor_index].var_154 = 0;
    }

    func_8005CAA8(actor_index, D_801A1820_731860);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN);
}

u16 func_801A0490_7304D0(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x30, 0x90);
    Actor* parent;

    if (new_actor_index == 0) {
        return new_actor_index;
    }

    gActors[new_actor_index].actorType = ACTORTYPE_OVL1_TARUS_2;
    Actor_Initialize(new_actor_index);
    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;

    if (Rand() & 1) {
        gActors[new_actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }

    gActors[new_actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9;
    gActors[new_actor_index].grabType = GRABTYPE_1;
    gActors[new_actor_index].unk_0DF = ACTOR0DF_6;
    gActors[new_actor_index].hitFlags = 0;
    gActors[new_actor_index].hitType = HITTYPE_4;
    gActors[new_actor_index].unk_0F8.raw = FIXED_UNIT(2);
    gActors[new_actor_index].unk_0FC.raw = FIXED_UNIT(3);
    parent = &gActors[actor_index];
    gActors[new_actor_index].posX.whole = RandModulo(0) + parent->posX.whole;
    gActors[new_actor_index].posY.whole = 160;
    gActors[new_actor_index].posZ.whole = parent->posZ.whole;

    switch (Rand() % 3) {
    case 0:
        gActors[new_actor_index].hitboxBY1 = -24;
        gActors[new_actor_index].hitboxBX0 = gActors[new_actor_index].hitboxBY1;
        gActors[new_actor_index].hitboxBY0 = 24;
        gActors[new_actor_index].hitboxBX1 = gActors[new_actor_index].hitboxBY0;
        gActors[new_actor_index].hitboxAY1 = -8;
        gActors[new_actor_index].hitboxAX0 = gActors[new_actor_index].hitboxAY1;
        gActors[new_actor_index].hitboxAY0 = 8;
        gActors[new_actor_index].hitboxAX1 = gActors[new_actor_index].hitboxAY0;
        gActors[new_actor_index].damage = 30;
        gActors[new_actor_index].unk_0DF |= ACTOR0DF_0_2;
        gActors[new_actor_index].graphicIndex = 0x2822;
        gActors[new_actor_index].scaleY = 2.0f;
        gActors[new_actor_index].scaleX = 2.0f;
        break;

    case 1:
        gActors[new_actor_index].hitboxBY1 = -16;
        gActors[new_actor_index].hitboxBX0 = gActors[new_actor_index].hitboxBY1;
        gActors[new_actor_index].hitboxBY0 = 16;
        gActors[new_actor_index].hitboxBX1 = gActors[new_actor_index].hitboxBY0;
        gActors[new_actor_index].hitboxAY1 = -4;
        gActors[new_actor_index].hitboxAX0 = gActors[new_actor_index].hitboxAY1;
        gActors[new_actor_index].hitboxAY0 = 4;
        gActors[new_actor_index].hitboxAX1 = gActors[new_actor_index].hitboxAY0;
        gActors[new_actor_index].damage = 20;
        gActors[new_actor_index].unk_0DF |= ACTOR0DF_0_1;
        gActors[new_actor_index].graphicIndex = 0x2820;
        gActors[new_actor_index].scaleY = 1.5f;
        gActors[new_actor_index].scaleX = 1.5f;
        break;

    case 2:
        gActors[new_actor_index].hitboxBY1 = -12;
        gActors[new_actor_index].hitboxBX0 = gActors[new_actor_index].hitboxBY1;
        gActors[new_actor_index].hitboxBY0 = 12;
        gActors[new_actor_index].hitboxBX1 = gActors[new_actor_index].hitboxBY0;
        gActors[new_actor_index].hitboxAY1 = -2;
        gActors[new_actor_index].hitboxAX0 = gActors[new_actor_index].hitboxAY1;
        gActors[new_actor_index].hitboxAY0 = 2;
        gActors[new_actor_index].hitboxAX1 = gActors[new_actor_index].hitboxAY0;
        gActors[new_actor_index].damage = 10;
        gActors[new_actor_index].unk_0DF = gActors[new_actor_index].unk_0DF;
        gActors[new_actor_index].graphicIndex = 0x281E;
        break;
    }

    gActors[new_actor_index].var_110 = 0;
    gActors[new_actor_index].unk_14C = actor_index;
    return new_actor_index;
}

void func_801A0754_730794(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    Actor* parent;
    s32 sp34[3];

    if ((actor->flags_098 & ACTOR_FLAG3_UNK0) && actor->stateLower == 1) {
        sp34[0] = (gActors[gActors[actor_index].parentIndex].posX.whole + actor->posX.whole + actor->hitboxAX0 + actor->hitboxAX1) / 2;
        parent = &gActors[gActors[actor_index].parentIndex];
        sp34[1] = (parent->posY.whole + actor->posY.whole + actor->hitboxAY0 + actor->hitboxAY1) / 2;
        sp34[2] = parent->posZ.whole;
        func_8005A1A4(actor_index, sp34, 2.5f);
        Sound_PlaySfx(SFX_HIT_002D);
        actor->state = 2;
    }

    if ((actor->flags_098 & ACTOR_FLAG3_GRAB) && actor->stateLower != 10) {
        func_80058924(actor_index);
        actor->state = 10;
        actor->velocityY.raw = 0;
        actor->velocityX.raw = 0;
    }

    switch (actor->stateLower) {
    case 0:
        actor->flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
        actor->var_150 = 0;
        actor->state = 1;
        break;

    case 1:
        actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, -FIXED_UNIT(4), (func_8005D1B0(actor_index) << 12) + FIXED_UNIT(0.125));
        actor->rotateZ += actor->var_110;

        if (actor->velocityX.raw < 0) {
            if (func_80012AB4(actor->hitboxBX0 + actor->posX.whole, actor->hitboxAY0 + actor->posY.whole)) {
                if (actor->velocityX.raw == 0) {
                    actor->flags = 0;
                    break;
                }

                func_80014F14(actor_index, actor->hitboxBX0 - 2);
                actor->velocityX.raw = Math_AbsS32_2(actor->velocityX.raw) / 2;
                actor->velocityY.raw /= 2;
                actor->var_150 = 1;
                actor->var_110 = -actor->var_110;
                Sound_PlaySfx(SFX_BOOM_0055);
            }
        }
        else if (func_80012AB4(actor->hitboxBX1 + actor->posX.whole, actor->hitboxAY0 + actor->posY.whole)) {
            if (actor->velocityX.raw == 0) {
                actor->flags = 0;
                break;
            }

            func_80014F14(actor_index, actor->hitboxBX1 + 2);
            actor->velocityX.raw = -Math_AbsS32_2(actor->velocityX.raw) / 2;
            actor->velocityY.raw /= 2;
            actor->var_150 = 1;
            actor->var_110 = -actor->var_110;
            Sound_PlaySfx(SFX_BOOM_0055);
        }

        if (actor->velocityY.raw >= 0) {
            break;
        }

        if (!func_80012AB4(actor->posX.whole, actor->posY.whole - 4)) {
            break;
        }

        Sound_PlaySfx(SFX_BOOM_0055);
        actor->state = 5;
        break;

    case 2:
        if (actor->stateUpper == 0) {
            actor->stateUpper = 1;
            actor->rotateZ = 0.0f;
        }

        actor->flags = 0;
        break;

    case 5:
        if (actor->stateUpper == 0) {
            actor->unk_170 = 0x1000;
            actor->rotateZ = 0.0f;

            if (actor->unk_0DF == 0) {
                actor->graphicList = D_801A1B7C_731BBC;
            }
            else {
                actor->graphicList = D_801A1B90_731BD0;
            }

            actor->flags = ACTOR_FLAG_ENABLED;
            actor->velocityY.raw = 0;
            actor->velocityX.raw = 0;
            actor->stateUpper = 1;
        }

        func_8005D450(actor_index);

        if (func_8005D418(actor_index)) {
            actor->colorA -= 5;

            if (actor->colorA < 5) {
                actor->flags = 0;
            }
        }
        break;

    case 10:
        if (actor->flags_098 & ACTOR_FLAG3_GRAB) {
            actor->posX.raw = actor->unk_104;
            actor->posY.raw = actor->unk_108;
            actor->posZ.raw = actor->unk_10C;
        }
        else {
            if (actor->flags_098 & ACTOR_FLAG3_THROWN) {
                actor->velocityX.raw = actor->unk_0F8.raw;
                actor->velocityY.raw = actor->unk_0FC.raw;
                actor->hitType = HITTYPE_2;

                if (actor->velocityX.raw < 0) {
                    actor->var_110 = 10.0f;
                }
                else {
                    actor->var_110 = -10.0f;
                }

                actor->flags |= ACTOR_FLAG_UNK7;
                actor->damage *= 5;
            }

            actor->state = 1;
        }
        break;

    default:
        break;
    }

    actor->flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_WARPING);
}

void func_801A0C5C_730C9C(u16 actor_index, u16 arg1) {
    gActors[actor_index].unk_12E_u8 |= 0x80;

    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_140_u8[0] = 4;

        if ((gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1) >= (gActors[arg1].posY.whole + gActors[arg1].hitboxBY0)) {
            gActors[actor_index].unk_140_u8[0] = 8;
        }

        if ((gActors[arg1].hitboxBX0 + gActors[arg1].posX.whole) >= (gActors[actor_index].hitboxBX1 + gActors[actor_index].posX.whole) || (gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0) >= (gActors[arg1].posX.whole + gActors[arg1].hitboxBX1)) {
            gActors[actor_index].unk_140_u8[0] = 4;
        }

        if (gActors[actor_index].unk_140_u8[0] == 4) {
            func_8005D370(actor_index, 60);
        }

        if (gActors[actor_index].unk_140_u8[0] == 8) {
            func_8005D370(actor_index, 68);
        }

        gActors[actor_index].unk_140_u16[1] = gActors[actor_index].unk_140_u8[0];

        if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && gPlayerData.unk_00[1].raw > FIXED_UNIT(32)) {
            gPlayerData.unk_00[1].raw = FIXED_UNIT(32);
        }

        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].stateUpper = 1;
    }

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && func_8005D418(actor_index) != 0) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }

    if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_index, 60);
    }

    func_80052A6C(actor_index, arg1);
    func_80052CD0(actor_index, arg1);

    if (func_80053210(actor_index, arg1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }

        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_140_u16[1] = 4;
    }
}

void func_801A0ED4_730F14(u16 actor_index, u16 arg1) {
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 106;

        if (gActors[actor_index].unk_140_u8[0] < 4) {
            gActors[actor_index].unk_170++;
        }

        if (gActors[actor_index].unk_140_u8[0] >= 5) {
            gActors[actor_index].unk_170 += 2;
        }

        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        // fallthrough
    case 1:
        func_80052CD0(actor_index, arg1);

        if (func_8004F35C(actor_index, &gActors[actor_index].var_150_u32) != 0) {
            gActors[arg1].unk_140_u8[0] = gActors[actor_index].unk_140_u8[0];
            func_8004F5B0(actor_index);
            func_8004F614(actor_index, D_801A1BA4_731BE4[gActors[actor_index].unk_140_u8[0]], D_801A1BA4_731BE4[gActors[actor_index].unk_140_u8[0] + 1], 150);
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
                gActors[actor_index].flags &= 0xFF3CFFFF;\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            }

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
                gActors[actor_index].state = 3;
            }
            else {
                gActors[actor_index].state = 22;
            }
        }
        break;
    }
}

void func_801A10B4_7310F4(u16 actor_index, u16 arg1) {
    FixedCoord* temp_v1_2;
    f32 temp_f0;
    s16 temp_v0;
    s16 var_s0;
    s16 var_s1;
    s16 var_s2;
    s32 temp_v0_3;
    u16 temp_v0_5;

    gActors[actor_index].unk_12E_u8 |= 0x40;
    temp_v1_2 = &gActors[0x30].posX;

    switch (gMarinaAnim.state) {
    case 0:
        if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
            Marina_DropActor(actor_index, gActors[actor_index].parentIndex);

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                gActors[actor_index].state = 3;
            }
            else {
                gActors[actor_index].state = 0x16;
            }
        }

        if (func_8005D338(actor_index) == 1 && ++gMarinaAnim.timer >= 50) {
            if ((D_800D2924 - 0x80) < (gScreenPosCurrentX.whole + temp_v1_2->whole)) {
                gMarinaAnim.state = 5;
            }
            else {
                gMarinaAnim.state = 1;
            }
        }
        break;

    case 1:
        temp_v0 = gActors[actor_index].posX.whole;
        if (temp_v0 < (temp_v1_2->whole + 0x50)) {
            D_801370CC = gButton_DRight;
        }

        if ((temp_v1_2->whole + 0x60) < temp_v0) {
            D_801370CC = gButton_DLeft;
        }

        if (D_801370CC == 0) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                D_801370CC = gButton_DLeft;
            }
            else if (func_8005D338(actor_index) == 1) {
                gMarinaAnim.timer = 0x1E;
                gMarinaAnim.state = 0xA;
                gStageState += 1;
            }
        }
        break;

    case 5:
        temp_v0 = gActors[actor_index].posX.whole;
        if ((temp_v1_2->whole - 0x50) < temp_v0) {
            D_801370CC = gButton_DLeft;
        }

        if (temp_v0 < (temp_v1_2->whole - 0x60)) {
            D_801370CC = gButton_DRight;
        }

        if (D_801370CC == 0) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                D_801370CC = gButton_DRight;
            }
            else if (func_8005D338(actor_index) == 1) {
                gMarinaAnim.timer = 0x1E;
                gMarinaAnim.state = 0xA;
                gStageState += 1;
            }
        }
        break;

    case 10:
        if (gStageState >= 0x19 && --gMarinaAnim.timer <= 0) {
            gActors[actor_index].velocityX.raw = Marina_GetMoveSpeed(1) / 2;
            gActors[actor_index].velocityY.raw = Marina_GetMoveSpeed(0xF) * 1.3;
            gActors[actor_index].unk_170 = 0x24;
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.flags |= PLAYERDATA_UNBOUND;
            gActors[actor_index].state = MARINASTATE_57;
            gMarinaAnim.state = 0xB;
        }
        break;

    case 11:
        temp_v0_3 = Math_ApproachS32(gActors[actor_index].velocityY.raw, -FIXED_UNIT(6), Marina_GetMoveSpeed(0x13) / 4);
        gActors[actor_index].velocityY.raw = temp_v0_3;

        if (temp_v0_3 <= FIXED_UNIT(0.5)) {
            gMarinaAnim.timer = 0xA;
            gMarinaAnim.state = 0xC;
        }
        break;

    case 12:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Marina_GetMoveSpeed(0) / 2);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, Marina_GetMoveSpeed(0) / 4);

        if (gActors[actor_index].velocityX.raw == 0 && gActors[actor_index].velocityY.raw == 0 && --gMarinaAnim.timer <= 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_170 = 0x5B;
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 4;
            gActors[actor_index].velocityX.raw = Marina_GetMoveSpeed(5);
            Sound_PlaySfx(SFX_0074);
            gMarinaAnim.state = 0xD;
        }
        break;

    case 13: {
        Actor* actor = &gActors[actor_index];
        actor->velocityX.raw = Marina_GetMoveSpeed(5);

        if (actor->unk_180_u8[0] >= 0xC) {
            actor->unk_180_u8[0] = 4;
        }

        if (actor->flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
            if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
                var_s2 = actor->hitboxBX1 + actor->posX.whole + 8;
            }
            else {
                var_s2 = (actor->hitboxBX0 + actor->posX.whole) - 8;
            }

            var_s0 = actor->hitboxBY0 + actor->posY.whole + 8;

            for (var_s1 = 0; var_s1 < 4; var_s1++) {
                if (var_s1 == 1) {
                    func_80011A18(var_s2, var_s0, 0);
                }

                func_80012044(var_s2, var_s0, 0);
                var_s0 -= 0x10;
            }

            for (var_s1 = 0; var_s1 < 4; var_s1++) {
                temp_v0_5 = func_801A0490_7304D0(actor_index);

                arg1 = temp_v0_5;
                gActors[temp_v0_5].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
                temp_v0_3 = RandModulo(0x10);

                temp_v0_3 += var_s2;
                gActors[arg1].posX.whole = temp_v0_3;
                gActors[arg1].posY.whole = actor->posY.whole;
                gActors[arg1].posZ.whole = actor->posZ.whole + 8;
                gActors[arg1].velocityX.raw = (RandModulo(0) * 0x300) - FIXED_UNIT(3);
                gActors[arg1].velocityY.raw = (RandModulo(0) * 0x300) + FIXED_UNIT(2);
                temp_f0 = (f64)(f32)RandModulo(0x32) * 0.2;
                gActors[arg1].var_110 = temp_f0;
                gActors[arg1].var_110 = Math_AbsS32_2((s32)temp_f0);
            }

            Sound_PlaySfx(SFX_BOOM_0041);
        }
        break;
    }
    }
}
