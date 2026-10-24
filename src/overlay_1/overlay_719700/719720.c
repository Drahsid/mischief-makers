#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "42E90.h"
#include "5D120.h"
#include "frontend.h"
#include "marina.h"
#include "marina_effect.h"
#include "marina_grab.h"
#include "marina_hit.h"
#include "boot.h"
#include "stage_tilemap.h"

// "overlay 1" code for stage "Merco!!"

extern u16 D_800D82E8[];
extern s8 D_801A3820_721E40[];
extern s16 D_801A382C_721E4C[];
extern s32 D_801A38C0_721EE0[];
extern s16* D_801A3AEC_72210C[]; // graphic lists for Merco
extern ActorFunc D_801A3B90_7221B0[];
extern s16 D_801A3BD8_7221F8[];
extern s16 D_801A3EA8_7224C8[];
extern s16 D_801A3F2C_72254C[];
extern s16 D_801A41FC_72281C[];
extern s32 D_801A4280_7228A0[];
extern f32 D_801A42B0_7228D0;
extern f64 D_801A42B8_7228D8;

u16 D_801A4410_722A30[256];
u8 D_801A4610_722C30[16];

void func_8019B100_719720(u16 actor_index, s32 arg1);
void func_8019F7F4_71DE14(u16 actor_index);

void func_8019B100_719720(u16 actor_index, s32 arg1) {
    s16 sp36;
    s32 sp30;
    s32 sp2C;
    Actor* actor;
    u16 sp26;
    s8 temp_v0_2;
    u32 temp_v1;
    u8 temp_a0;
    u16 player_actor_index = PLAYER_INDEX;

    actor = &gActors[actor_index];
    sp36 = Math_AbsS32_2(gActors[player_actor_index].posX.whole - actor->posX.whole);
    sp30 = TO_FIXED(actor->health) / 300;
    if (sp30 <= FIXED_UNIT(0.375) && actor->stateLower == 0xA && actor->stateUpper >= 2 &&
        (actor->flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) &&
        (gActors[(u16)(actor_index + 1)].flags_098 & ACTOR_FLAG3_UNK0) && actor->var_150 >= 30) {
        actor->state = 9;
    }

    temp_a0 = actor->stateLower;
    if (temp_a0 >= 5) {
        return;
    }

    temp_v1 = actor->flags;
    if (temp_v1 & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
        if (temp_a0 >= 3) {
            return;
        }

        if (gActors[player_actor_index].posX.raw >= actor->posX.raw) {
            if (temp_v1 & ACTOR_FLAG_FLIPPED) {
                if (temp_a0 != 1) {
                    actor->state = 1;
                }

                return;
            }

            if (!(gActors[player_actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (Math_AbsS32_2(gActors[player_actor_index].posX.whole - actor->posX.whole) < 64 && (actor->flags_098 & ACTOR_FLAG3_UNK2)) {
                    actor->state = 6;
                }
                else if (actor->stateLower != 1) {
                    actor->state = 1;
                }

                if (sp30 <= FIXED_UNIT(0.625)) {
                    sp26 = Rand();

                    if (func_8005C774(10) >= sp26) {
                        actor->state = 4;
                    }
                }

                return;
            }
        }
        else {
            if (!(temp_v1 & ACTOR_FLAG_FLIPPED)) {
                if (temp_a0 != 1) {
                    actor->state = 1;
                }

                return;
            }

            if (gActors[player_actor_index].flags & ACTOR_FLAG_FLIPPED) {
                if (Math_AbsS32_2(gActors[player_actor_index].posX.whole - actor->posX.whole) < 64 && (actor->flags_098 & ACTOR_FLAG3_UNK3)) {
                    actor->state = 6;
                }
                else if (actor->stateLower != 1) {
                    actor->state = 1;
                }

                if (RandModulo(FIXED_UNIT(0.25)) + sp30 <= FIXED_UNIT(0.625)) {
                    sp26 = Rand();
                    if (func_8005C774(10) >= sp26) {
                        actor->state = 4;
                    }
                }

                return;
            }
        }

        if (sp30 <= FIXED_UNIT(1) && sp36 < 128 && sp36 >= 49 && gActors[(u16)(actor_index + 1)].stateLower == 1) {
            sp26 = Rand();
            if (func_8005C774(10) + 3 >= sp26) {
                actor->state = 7;
                return;
            }
        }

        if (sp30 <= FIXED_UNIT(0.875) && sp36 < 96 && sp36 >= 49 && gActors[(u16)(actor_index + 1)].stateLower == 1) {
            sp26 = Rand();
            if (func_8005C774(10) + 5 >= sp26) {
                actor->state = 0xA;
                return;
            }
        }

        if (RandModulo(FIXED_UNIT(0.25)) + sp30 <= FIXED_UNIT(0.5) && sp36 < 96 && gActors[(u16)(actor_index + 1)].stateLower == 1) {
            sp26 = Rand();
            if (func_8005C774(10) + 10 >= sp26) {
                actor->state = 9;
                return;
            }
        }

        if (sp36 < 288 && sp36 >= 113) {
            if (sp30 <= FIXED_UNIT(0.1875)) {
                sp26 = Rand();
                if (func_8005C774(5) + 5 >= sp26) {
                    actor->state = 8;
                    return;
                }
            }
            else if (gActors[(u16)(actor_index + 1)].stateLower != 1) {
                sp26 = Rand();
                if (func_8005C774(5) >= sp26) {
                    actor->state = 8;
                    return;
                }
            }
        }

        if (sp30 <= FIXED_UNIT(0.625)) {
            if (gActors[player_actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                sp2C = 10;
            }
            else {
                sp2C = 30;
            }

            if (sp36 < 192) {
                sp26 = Rand();
                if (func_8005C774(sp2C) + 20 >= sp26) {
                    actor->state = 3;
                    actor->var_160_s8[0] = 0;
                }
            }
        }

        return;
    }

    if (gActors[player_actor_index].posX.raw >= actor->posX.raw) {
        if ((temp_v1 & ACTOR_FLAG_FLIPPED) || !(gActors[player_actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            return;
        }
    }
    else if (!(temp_v1 & ACTOR_FLAG_FLIPPED) || (gActors[player_actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        return;
    }

    if (sp30 <= FIXED_UNIT(1) && sp36 < 128 && sp36 >= 17 && gActors[(u16)(actor_index + 1)].stateLower == 1) {
        sp26 = Rand();
        if (func_8005C774(10) + 5 >= sp26) {
            sp26 = Rand();
            if (func_8005C774(10) + 5 >= sp26) {
                actor->velocityX.raw = (gActors[player_actor_index].posX.raw - actor->posX.raw) / (s32)(func_8005C774(20) + 50);
                actor->velocityY.raw = (gActors[player_actor_index].posY.raw - actor->posY.raw) / (s32)(func_8005C774(20) + 40);
            }

            actor->state = 7;

            if (actor->var_160_s8[1] >= 0) {
                Sound_StopSfx(actor->var_160_s16[1]);
                actor->var_160_s8[1] = -1;
            }

            return;
        }
    }

    if (sp30 <= FIXED_UNIT(0.875) && sp36 < 96 && sp36 >= 49 && gActors[(u16)(actor_index + 1)].stateLower == 1) {
        sp26 = Rand();
        if (func_8005C774(10) + 5 >= sp26) {
            temp_v0_2 = actor->var_160_s8[0];

            if (temp_v0_2 == 0) {
                actor->state = 0xA;
                actor->var_160_s8[0] = temp_v0_2 + 1;

                if (actor->var_160_s8[1] >= 0) {
                    Sound_StopSfx(actor->var_160_s16[1]);
                    actor->var_160_s8[1] = -1;
                }

                return;
            }
        }
    }

    if (sp36 >= 288 || sp36 < 113 || actor->var_160_s8[0] != 0) {
        return;
    }

    sp2C = 0;

    if (!(gActors[player_actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) && Math_AbsS32_2(actor->posY.whole - gActors[player_actor_index].posY.whole) < 64) {
        sp2C = 20;
    }

    if (sp30 <= FIXED_UNIT(0.1875)) {
        sp26 = Rand();
        if (func_8005C774(sp2C) + 5 >= sp26) {
            actor->state = 8;
            actor->var_160_s8[0]++;

            if (actor->var_160_s8[1] >= 0) {
                Sound_StopSfx(actor->var_160_s16[1]);
                actor->var_160_s8[1] = -1;
            }
        }
    }
    else if (gActors[(u16)(actor_index + 1)].stateLower != 1) {
        sp26 = Rand();
        if (func_8005C774(sp2C) >= sp26) {
            actor->state = 8;
            actor->var_160_s8[0]++;

            if (actor->var_160_s8[1] >= 0) {
                Sound_StopSfx(actor->var_160_s16[1]);
                actor->var_160_s8[1] = -1;
            }
        }
    }
}

void func_8019BB2C_71A14C(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && gActors[actor_index].stateLower != 8) {
        gActors[actor_index].iFrames = 60;

        if (gActors[actor_index].stateLower != 11) {
            func_80058924(actor_index);
            Sound_PlaySfx(SFX_GRAB_002F);
            gActors[actor_index].state = 11;
        }
    }
    else if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index].stateLower != 17 && gActors[actor_index].hitByType < 20) {
        func_80058924(actor_index);

        if (gActors[actor_index].var_160_s8[1] >= 0) {
            Sound_StopSfx(gActors[actor_index].var_160_s16[1]);
            gActors[actor_index].var_160_s8[1] = -1;
        }

        gActors[actor_index].state = 16;
    }
}

u16 func_8019BC24_71A244(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x30, 0x90);
    if (new_actor_index == 0) {
        return 0;
    }

    SpawnParticle_List(new_actor_index, D_801A382C_721E4C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 4, gActors[actor_index].posZ.whole + 3);
    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
    gActors[new_actor_index].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
    gActors[new_actor_index].colorA = 0xFE;
    gActors[new_actor_index].var_154 = -4;
    gActors[new_actor_index].palette_18C = PALETTE_8022D568;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[new_actor_index].posX.whole += 32;
    }
    else {
        gActors[new_actor_index].posX.whole -= 32;
    }

    gActors[new_actor_index].scaleX = 2.5f;
    gActors[new_actor_index].scaleY = D_801A42B0_7228D0;
    return new_actor_index;
}

void func_8019BD70_71A390(s32 arg0) {
}

void func_8019BD78_71A398(u16 actor_index) {
    gActors[actor_index].graphicLists = D_801A3AEC_72210C;
    gActors[actor_index].health = 300;
    gActors[actor_index].flags &= 0xFF3CFFFF;\
    gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
    gActors[actor_index].unk_170 = 1;
}

void func_8019BDE8_71A408(u16 actor_index) {
    s32 var_v0 = actor_index + 1;

    if (func_80049040(actor_index)) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 4;
        return;
    }

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
    if (gActors[actor_index].velocityX.raw) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }

    if (gActors[(u16)var_v0].stateLower != 1 &&
        gActors[(u16)var_v0].stateLower != 3 &&
        gActors[(u16)var_v0].var_158 >= 300 &&
        (gActors[(u16)var_v0].stateLower == 4 || (gActors[(u16)var_v0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)))) {
        gActors[(u16)var_v0].state = 3;
    }

    if (gActors[actor_index].stateUpper == 10) {
        if (!gMarinaAnim.anim_u32 && gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state = 2;
            return;
        }

        gActors[actor_index].var_150--;

        if (func_8005D338(actor_index) != 1) {
            if (gActors[actor_index + 2].stateLower == 1) {
                SpawnCrosshair(20, actor_index);
            }
            else {
                SpawnCrosshair(31, actor_index);
            }

            gActors[actor_index].unk_170 = 1;
        }
    }

    var_v0 = gActors[actor_index].stateUpper;
    if (var_v0 == 0 || var_v0 == 10) {
        if (gActors[actor_index].actorHitIndex) {
            gActors[actor_index].state = 6;
            return;
        }

        if (!var_v0) {
            gActors[actor_index].var_150 = 100 - func_8005C774(Rand());
        }

        gActors[actor_index].stateUpper = 10;

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
        gActors[actor_index].unk_170 = 7;
        gActors[actor_index].stateUpper = 2;
    }
    else if (gActors[actor_index].stateUpper == 2) {
        if (gActors[actor_index].unk_170_s8[1] == 2) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].stateUpper = 3;
        }
    }
    else if (gActors[actor_index].stateUpper == 3) {
        if (func_8005D418(actor_index)) {
            gActors[actor_index].stateUpper = 10;
        }
    }
}

void func_8019C11C_71A73C(u16 actor_index) {
    u8 temp_v0;

    if (func_80049040(actor_index)) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 4;
    }
    else {
        temp_v0 = gActors[actor_index].stateUpper;
        if (temp_v0 == 0) {
            gActors[actor_index].unk_170 = 0x4021;
            gActors[actor_index].stateUpper = temp_v0 + 1;
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].unk_114 = 0.0f;
        }

        if (gActors[actor_index].var_110 < 1.0) {
            gActors[actor_index].var_110 += D_801A42B8_7228D8;
        }

        gActors[actor_index].var_150 = D_801A38C0_721EE0[gActors[actor_index].unk_170_s8[1]];
        gActors[actor_index].unk_114 += gActors[actor_index].var_110;

        if (gActors[actor_index].unk_114 >= 1.0) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].unk_114 -= 1.0f;
        }

        gActors[actor_index].velocityX.raw = (s32)(gActors[actor_index].var_150 * gActors[actor_index].var_110);

        if ((gActors[actor_index].unk_170_s8[1] == 2 || gActors[actor_index].unk_170_s8[1] == 6) && gActors[actor_index].unk_170_s8[0] == 3) {
            Sound_PlaySfx(SFX_0029);
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }

        if (Math_AbsS32_2(gActors[actor_index].posX.raw - gPlayerActor.posX.raw) < FIXED_UNIT(32)) {
            gActors[actor_index].state = 6;
        }
    }
}

void func_8019C340_71A960(u16 actor_index) {
    u8 temp_v0 = gActors[actor_index].stateUpper;
    switch (temp_v0) {
    case 0:
        gActors[actor_index].unk_170 = 2;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] >= 5) {
            Sound_PlaySfx(SFX_TP_ARRIVE);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].velocityX.raw = (gPlayerActor.posX.raw - gActors[actor_index].posX.raw) / 90;

            if (gActors[actor_index].velocityX.raw > FIXED_UNIT(3)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            }

            if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-3)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            }

            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    default:
        gActors[actor_index].unk_170 = 0x4004;

        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1)) {
            gActors[actor_index].unk_170 = 0x4005;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].unk_170 = 0x4006;
                }
            }
            else if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].unk_170 = 0x4006;
            }

            gActors[actor_index].unk_170_s8[1] = 2;

            if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(2)) {
                gActors[actor_index].unk_170_s8[1] = 3;
            }
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (func_800490BC(actor_index, 0, -16)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            gActors[actor_index].state = 5;
        }
        break;
    }
}

void func_8019C5A8_71ABC8(u16 actor_index) {
    u16 fixed_actor_index = 0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 2;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] >= 5) {
            Sound_PlaySfx(SFX_TP_ARRIVE);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(6);
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].unk_170 = 4;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);

        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(-3)) {
            if (gActors[fixed_actor_index].posX.whole >= gActors[actor_index].posX.whole) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(4);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-4);
            }

            gActors[actor_index].var_160_s16[1] = SFX_0071;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_160_s8[1] = Sound_PlaySfx(gActors[actor_index].var_160_s16[1]);
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        gActors[actor_index].unk_170 = 0x4004;

        if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1)) {
            gActors[actor_index].unk_170 = 0x4005;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].unk_170 = 0x4006;
                }
            }
            else if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].unk_170 = 0x4006;
            }

            gActors[actor_index].unk_170_s8[1] = 2;

            if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(2)) {
                gActors[actor_index].unk_170_s8[1] = 3;
            }
        }

        if (Math_AbsS32_2(gActors[actor_index].posX.whole - gPlayerActor.posX.whole) < 9) {
            gActors[actor_index].unk_170 = 0x1A;
            Sound_StopSfx(gActors[actor_index].var_160_s16[1]);
            gActors[actor_index].var_160_s8[1] = -1;
            gActors[actor_index].stateUpper = 5;
        }
        break;

    default:
        if (gActors[actor_index].stateUpper == 5) {
            if (gActors[actor_index].unk_170_s8[1] == 2) {
                gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].velocityX.raw /= 2;
                gActors[actor_index].stateUpper = 6;
            }
        }
        else if (gActors[actor_index].stateUpper == 6) {
            if (func_8005D418(actor_index)) {
                gActors[actor_index].unk_170 = 0x4006;
                gActors[actor_index].unk_170_s8[1] = 3;
                gActors[actor_index].stateUpper = 7;
            }
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (func_800490BC(actor_index, 0, -16)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            gActors[actor_index].state = 5;
        }
        break;
    }
}

void func_8019C8B8_71AED8(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[actor_index].velocityX.raw == 0) {
            Sound_PlaySfx(SFX_0070);
        }
        else {
            Sound_PlaySfx(SFX_006C);
        }

        gActors[actor_index].unk_170 = 3;
        gActors[actor_index].stateUpper = 1;
    }

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
    if (gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }

    if (func_8005D418(actor_index)) {
        if (Math_AbsS32_2(gActors[actor_index].posX.raw - gPlayerActor.posX.raw) < FIXED_UNIT(56) && gActors[actor_index + 1].stateLower == 1) {
            gActors[actor_index].state = 9;
        }
        else {
            gActors[actor_index].state = 1;
        }
    }
}

void func_8019C9E0_71B000(u16 actor_index) {
    u16 fixed_actor_index = 0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[fixed_actor_index].posX.whole >= gActors[actor_index].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        gActors[actor_index].unk_170 = 27;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

        if (gActors[actor_index].unk_170_s8[1] >= 3) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            }

            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (func_800490BC(actor_index, 0, -16)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            gActors[actor_index].unk_170 = 3;
            Sound_PlaySfx(SFX_006C);
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].velocityX.raw != 0) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }
        else if (Math_AbsS32_2(gActors[actor_index].posX.raw - gPlayerActor.posX.raw) < FIXED_UNIT(32) && gActors[actor_index + 1].stateLower == 1) {
            gActors[actor_index].state = 9;
        }
        else {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019CC14_71B234(u16 actor_index) {
    u16 sp36;
    u16 temp_a1;
    Actor* temp_v0;
    s32 var_v0;

    temp_a1 = actor_index + 1;
    sp36 = 0;

    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.046875));

        if (gActors[actor_index].velocityX.raw) {
            gActors[actor_index].unk_180_u8[3] = 4;
        }
    }
    else {
        if (func_800490BC(actor_index, 0, -16)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;

            if (gActors[temp_a1].flags_098 & ACTOR_FLAG3_GRAB) {
                sp36 = gActors[temp_a1].parentIndex;
                gActors[sp36].flags_098 |= ACTOR_FLAG3_UNK16;
                Sound_PlaySfx(SFX_0039);
                gActors[temp_a1].unk_0F8.raw = 0;
                gActors[temp_a1].unk_0FC.raw = 0;
            }

            gActors[temp_a1].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index].state = 5;
            return;
        }

        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        SpawnCrosshair(15, temp_a1);

        gActors[temp_a1].grabType = GRABTYPE_11;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[temp_a1].flags |= ACTOR_FLAG_UNK12;
            gActors[actor_index].unk_170 = 12;
        }
        else {
            var_v0 = Math_Atan2(gActors[sp36].posX.raw - gActors[actor_index].posX.raw, gActors[sp36].posY.raw - gActors[actor_index].posY.raw);

            if (var_v0 >= FIXED_UNIT(768)) {
                var_v0 -= FIXED_UNIT(768);
            }

            var_v0 = Math_AbsS32_2(FROM_FIXED(var_v0)) & 0x1FF;
            gActors[actor_index].unk_170 = 24;

            if (var_v0 >= 64) {
                gActors[actor_index].unk_170 = 22;
            }

            if (var_v0 >= 144) {
                gActors[actor_index].unk_170 = 20;
            }
        }

        Sound_PlaySfx(SFX_MERCO_YELL);
        gActors[actor_index].var_150 = 40;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].unk_170_u16[1] |= 0x4000;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        var_v0 = func_8005C774(1);
        gActors[actor_index].var_154 += var_v0 + 1;

        if (gActors[actor_index].var_154 >= 2) {
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_170_s8[0]++;
        }

        var_v0 = actor_index;

        if (gActors[temp_a1].flags_098 & (ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN)) {
            if (gActors[temp_a1].flags_098 & ACTOR_FLAG3_GRAB) {
                gActors[actor_index].unk_170_s8[0] = 0;
                gActors[temp_a1].flags &= ~ACTOR_FLAG_UNK9;
                sp36 = gActors[temp_a1].parentIndex;

                if (gActors[temp_a1].flags_098 & ACTOR_FLAG3_SHAKE) {
                    temp_v0 = &gActors[sp36];
                    temp_v0->unk_140_u16[1] = 0;
                    temp_v0->parentIndex = temp_a1;
                    gPlayerData.unk_00[0].raw = gActors[temp_a1].posX.raw - temp_v0->posX.raw;
                    gPlayerData.unk_00[1].raw = gActors[temp_a1].posY.raw - temp_v0->posY.raw;
                    temp_v0->stateUpper = 0;
                    gActors[temp_a1].grabType = GRABTYPE_1;
                    gActors[temp_a1].state = 4;
                    gActors[temp_a1].parentIndex = gActors[actor_index].parentIndex;
                    gActors[temp_a1].flags_098 = ~ACTOR_FLAG3_SHAKE;
                    gActors[temp_a1].unk_104 = gActors[temp_a1].posX.raw;
                    gActors[temp_a1].unk_108 = gActors[temp_a1].posY.raw;
                    gActors[temp_a1].unk_10C = gActors[temp_a1].posZ.raw;
                    gActors[actor_index].stateUpper = 11;
                    gActors[actor_index].stateLower = 14;
                    return;
                }
            }

            if (gActors[temp_a1].flags_098 & ACTOR_FLAG3_THROWN) {
                if (gActors[temp_a1].unk_140_u8[0] < 4) {
                    gActors[actor_index].state = 13;
                }
                else if (gActors[temp_a1].unk_140_u8[0] > 4) {
                    gActors[actor_index].state = 14;
                }
                else if (gActors[temp_a1].unk_140_u8[0] == 4) {
                    gActors[actor_index].state = 15;
                }

                gActors[actor_index].unk_140_u16[1] = gActors[temp_a1].unk_0FC.raw;
                return;
            }

            if (--gActors[actor_index].var_150 == 0) {
                gActors[temp_a1].grabType = GRABTYPE_11;

                temp_v0 = &gActors[sp36];
                temp_v0->parentIndex = var_v0;
                gPlayerData.unk_00[0].raw = gActors[actor_index].posX.raw - temp_v0->posX.raw;
                gPlayerData.unk_00[1].raw = gActors[actor_index].posY.raw - temp_v0->posY.raw;
                gActors[0].hitByFlags = 0;
                gActors[0].hitByType = HITTYPE_18;
                gActors[0].pendingDamage = 0;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[0].unk_0F8.raw = FIXED_UNIT(-2);
                }
                else {
                    gActors[0].unk_0F8.raw = FIXED_UNIT(2);
                }

                gActors[0].unk_0FC.raw = FIXED_UNIT(4);
                MarinaHit_Type18(0, actor_index);
                gActors[actor_index].unk_170 = 18;
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = 11;
            }
        }
        else if (func_8005D418(actor_index)) {
            if (gActors[actor_index].var_150 == 40) {
                gActors[temp_a1].flags |= ACTOR_FLAG_UNK9;
                Sound_PlaySfx(SFX_006D);
            }

            if (--gActors[actor_index].var_150 == 0 && (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
                gActors[actor_index].unk_170 = 13;
                gActors[temp_a1].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
                gActors[actor_index].stateUpper = 2;
                break;
            }
        }
        break;

    case 2:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019D1FC_71B81C(u16 actor_index) {
    s32 index;
    s32 var_a2;
    Actor* temp_s0;
    Actor* temp_v0;
    u16 new_actor_index;
    s32 position[3];

    temp_s0 = &gActors[actor_index];

    if (temp_s0->flags_098 & ACTOR_FLAG3_GRAB) {
        temp_s0->flags &= ~ACTOR_FLAG_UNK9;
    }

    if (temp_s0->flags_098 & ACTOR_FLAG3_UNK0) {
        temp_s0->damage = 0;
        position[0] = (gActors[gActors[actor_index].parentIndex].posX.whole + temp_s0->posX.whole) / 2;
        position[1] = (gActors[gActors[actor_index].parentIndex].posY.whole + temp_s0->posY.whole) / 2;
        position[2] = gActors[gActors[actor_index].parentIndex].posZ.whole;
        func_8005A1A4(actor_index, position, 1.0f);
        Sound_PlaySfx(SFX_0028);
    }

    switch (temp_s0->stateUpper) {
    case 0:
        D_801A4410_722A30[0] = 0;

        for (index = 1; index < 256; index++) {
            D_801A4410_722A30[index] = 0x8421;
        }

        temp_s0 = &gActors[actor_index];
        temp_s0->unk_170 = 0xA;
        temp_s0->velocityX.raw = 0;
        temp_s0->velocityY.raw = 0;
        temp_s0->var_150 = 0;
        temp_s0->var_15C = 0x28;
        SpawnCrosshair(0xFU, actor_index);
        temp_s0->stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].unk_170_s8[1] == 2) {
            gActors[actor_index].unk_17C = 2;

            if (!(ACTOR_FLAG_FLIPPED & gActors[actor_index].flags)) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(8);
                gActors[actor_index].hitboxBX0 = 0;
            }\
            else {\
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-8);
                gActors[actor_index].hitboxBX1 = 0;
            }

            gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 / 2;
            gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 / 2;
            gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 8;
            gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 8;
            gActors[actor_index].hitFlags = HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_16;
            gActors[actor_index].damage = 0x64;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            gActors[actor_index].var_160_s16[1] = SFX_0083;
            gActors[actor_index].var_160_s8[1] = Sound_PlaySfx((u32)gActors[actor_index].var_160_s16[1]);
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        temp_s0 = &gActors[actor_index];

        if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
            var_a2 = temp_s0->hitboxBX1 + 0x20;
        }
        else {
            var_a2 = temp_s0->hitboxBX0 - 0x20;
        }

        if ((--temp_s0->var_15C % 8) == 7) {
            position[0] = temp_s0->posX.whole;
            position[1] = temp_s0->posY.whole;
            position[2] = temp_s0->posZ.whole;
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, position);

            if (new_actor_index != 0) {
                temp_v0 = &gActors[new_actor_index];
                temp_v0->graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
                temp_v0->graphicIndex = temp_s0->graphicIndex;
                temp_v0->posX.raw += temp_s0->velocityX.raw;
                temp_v0->colorA = 0x80;
                temp_v0->var_154 = -6;
                temp_v0->colorB = 0x7F;
                temp_v0->palette_18C = D_801A4410_722A30;
                temp_v0->scaleX = 1.5f;
                temp_v0->scaleY = 1.5f;
                temp_v0->var_110 = -0.025f;
                temp_v0->unk_114 = -0.025f;
                temp_v0->unk_148 = 15.0f;
            }
        }

        if ((func_80012AB4((s16)(temp_s0->posX.whole + var_a2), temp_s0->posY.whole) != 0) || temp_s0->var_15C == 0) {
            if (temp_s0->flags_098 & ACTOR_FLAG3_GRAB) {
                gActors->hitByFlags = 0;
                gActors->hitByType = HITTYPE_18;
                gActors->pendingDamage = 0;

                if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
                    gActors->unk_0F8.raw = FIXED_UNIT(5);
                }
                else {
                    gActors->unk_0F8.raw = -FIXED_UNIT(5);
                }

                gActors->unk_0FC.raw = FIXED_UNIT(4);
                temp_s0->damage = 0;
                MarinaHit_Type18(0, actor_index);
            }

            temp_s0->flags &= ~ACTOR_FLAG_UNK9;
            Sound_StopSfx((u32)temp_s0->var_160_s16[1]);
            temp_s0->var_160_s8[1] = -1;
            temp_s0->unk_17C = 0;
            temp_s0->var_150 = FIXED_UNIT(8);
            temp_s0->var_154 = 0x30;
            temp_s0->velocityX.raw = (s32)temp_s0->velocityX.raw / 2;
            temp_s0->unk_170 = 0xB;
            temp_s0->stateUpper = 3;
        }
        break;

    case 3:
        temp_s0 = &gActors[actor_index];
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, 0, FIXED_UNIT(0.25));

        if ((temp_s0->flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && temp_s0->velocityX.raw != 0) {
            temp_s0->unk_180_u8[3] = 4;
        }

        if (func_8005D418(actor_index) != 0) {
            temp_s0->stateUpper = 4;

            if (temp_s0->flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                temp_s0->state = 1;
            }
            else {
                temp_s0->stateLower = 3;
            }
        }
        break;
    }
}

void func_8019D6E4_71BD04(u16 actor_index) {
    u16 new_actor_index;
    s32 sp30[5];

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.046875));
    if (gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_170 = 0x12;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        gActors[actor_index].var_150 += func_8005C774(10) + 1;

        if (gActors[actor_index].var_150 >= 10) {
            gActors[actor_index].unk_170_s8[0]++;
            gActors[actor_index].var_150 -= 10;
        }

        if (func_8005D418(actor_index) && func_8019BC24_71A244(actor_index)) {
            gActors[actor_index].hitboxAY0 = 16;
            gActors[actor_index].hitboxAY1 = -32;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 96;
                gActors[actor_index].hitboxAX0 = 0;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = -96;
            }

            gActors[actor_index].hitFlags = HITFLAG_0 | HITFLAG_7;
            gActors[actor_index].hitType = HITTYPE_3;
            gActors[actor_index].damage = 50;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            Sound_PlaySfx(SFX_006F);
            gActors[actor_index].var_150 = 120;
            gActors[actor_index].var_154 = 16;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (--gActors[actor_index].var_154 == 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
            // BUG: sp30 is never initialized!
            new_actor_index = MarinaEffect_SpawnParticle(actor_index, sp30);

            if (new_actor_index) {
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].graphicIndex = GINDEX_IMPACTEFFECTA;
                gActors[new_actor_index].var_154 = -5;
                gActors[new_actor_index].scaleX = 0.5f;
                gActors[new_actor_index].scaleY = 0.5f;
                gActors[new_actor_index].unk_148 = 20.0f;
                gActors[new_actor_index].var_110 = 0.1f;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[new_actor_index].var_160 = TO_FIXED(DEG_TO_INDEX(70));
                }
                else {
                    gActors[new_actor_index].var_160 = TO_FIXED(DEG_TO_INDEX(290));
                }

                gActors[new_actor_index].palette_18C = PALETTE_8022D568;
                gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
                gActors[new_actor_index].unk_130 = gActors[actor_index].parentIndex;
                gActors[new_actor_index].unk_14C = gActors[gActors[actor_index].parentIndex].actorType;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[new_actor_index].unk_140_f32 = 10.0f;
                    gActors[new_actor_index].unk_134 = gActors[gActors[actor_index].parentIndex].hitboxBX0 / 2;
                }
                else {
                    gActors[new_actor_index].unk_140_f32 = -10.0f;
                    gActors[new_actor_index].unk_134 = gActors[gActors[actor_index].parentIndex].hitboxBX1 / 2;
                }

                gActors[new_actor_index].unk_138 = gActors[gActors[actor_index].parentIndex].hitboxBY1;
                gActors[new_actor_index].unk_13C_f32 = 0.0f;
                gActors[new_actor_index].unk_144 = 10.0f;
                Sound_PlaySfx(SFX_STAB_006E);
            }
        }

        gActors[actor_index].var_150 -= func_8005C774(3) + 1;
        if (gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
            gActors[actor_index].unk_170 = 0x13;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019DB38_71C158(u16 actor_index) {
    u16 temp_t0 = actor_index + 1;
    u16 fixed_actor_index = PLAYER_INDEX;

    if (gActors[actor_index].stateUpper >= 2) {
        gActors[temp_t0].var_15C = 1;
    }

    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.046875));
            if (gActors[actor_index].velocityX.raw != 0) {
                gActors[actor_index].unk_180_u8[3] = 4;
                break;
            }
        }
        else {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        }

        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].stateUpper = 1;
        break;

    case 1:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].unk_170 = 0x4026;
        }
        else {
            gActors[actor_index].unk_170 = 0x4014;
        }

        if (--gActors[actor_index].var_150 <= 0) {
            Sound_PlaySfx(SFX_MERCO_YELL);
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        gActors[temp_t0].flags &= ~ACTOR_FLAG_UNK9;
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].unk_170 = 0x400C;
        }
        else {
            gActors[actor_index].unk_170 = 0x4014;
        }

        gActors[actor_index].unk_170_s8[1] = 2;
        gActors[actor_index].unk_170_u16[1] += (gActors[actor_index].var_150 % 3) * 2;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].var_150 += 1;
        }
        else {
            gActors[actor_index].var_150 += 4;
        }

        if (Math_AbsS32_2(gActors[actor_index].posX.whole - gPlayerActor.posX.whole) > 96) {
            gActors[actor_index].var_150 += 10;
        }

        if (gActors[fixed_actor_index].posX.raw >= gActors[actor_index].posX.raw) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].var_150 += 10;
            }
        }
        else if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_150 += 10;
        }

        gActors[actor_index].var_154 = 0;
        gActors[actor_index].stateUpper = 3;
        break;

    case 3:
        if (++gActors[actor_index].var_154 >= 3) {
            if (gActors[actor_index].var_150 < 100) {
                gActors[temp_t0].flags |= ACTOR_FLAG_UNK9;

                if (!(gActors[actor_index].var_150 % 8)) {
                    Sound_PlaySfx(SFX_006D);
                }

                gActors[actor_index].stateUpper = 2;
            }
            else {
                gActors[actor_index].stateUpper = 4;

                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    gActors[actor_index].state = 1;
                }
                else {
                    gActors[actor_index].stateLower = 3;
                }
            }
        }
        break;
    }
}

void func_8019DE94_71C4B4(u16 actor_index) {
    u16 sp4E;
    u16 temp_t5;
    s32 sp38[5];
    s32 var_v1;

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) && ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) || gActors[actor_index].stateUpper >= 2)) {
        sp4E = gActors[actor_index].parentIndex;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));

            if (gActors[actor_index].velocityX.raw != 0) {
                gActors[actor_index].unk_180_u8[3] = 4;
            }

            if (func_80049040(actor_index) != 0) {
                gActors[actor_index].stateUpper = 0;
            }
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.25));

            if (func_800490BC(actor_index, 0, -16) != 0) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
                gActors[actor_index].stateUpper = 0;
            }
        }

        if (gActors[actor_index].stateUpper == 0) {
            if ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != (gActors[sp4E].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    gActors[actor_index].unk_170 = 0x1D;
                }
                else {
                    gActors[actor_index].unk_170 = 0x20;
                }

                gActors[actor_index].stateUpper = 1;
            }
            else {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    gActors[actor_index].unk_170 = 8;
                }
                else {
                    gActors[actor_index].unk_170 = 0x22;
                }

                gActors[actor_index].stateUpper = 11;
            }

            gActors[actor_index].var_110 = 0.0f;
        }

        var_v1 = gActors[actor_index].stateUpper;

        if (gActors[actor_index].stateUpper == 1) {
            temp_t5 = actor_index + 2;

            if (gActors[temp_t5].stateLower == 1 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE)) {
                gActors[sp4E].parentIndex = temp_t5;
                gActors[sp4E].unk_140_u16[1] = 0;
                gActors[sp4E].stateUpper = 0;
                gPlayerData.unk_00[0].raw = gActors[temp_t5].posX.raw - gActors[sp4E].posX.raw;
                gPlayerData.unk_00[1].raw = gActors[temp_t5].posY.raw - gActors[sp4E].posY.raw;
                gActors[temp_t5].state = 3;
                gActors[temp_t5].parentIndex = gActors[actor_index].parentIndex;
                gActors[temp_t5].flags_098 |= ACTOR_FLAG3_GRAB;
                gActors[temp_t5].unk_104 = gActors[temp_t5].posX.raw;
                gActors[temp_t5].unk_108 = gActors[temp_t5].posY.raw;
                gActors[temp_t5].unk_10C = gActors[temp_t5].posZ.raw;
                gActors[actor_index].stateUpper = 11;
                gActors[actor_index].stateLower = 14;
                return;
            }

            var_v1 = func_8005C774(5);
            gActors[actor_index].var_110 += (f32)(var_v1 + 1);

            if (gActors[(u16)(actor_index + 1)].stateLower == 1) {
                if (gActors[actor_index].var_110 >= 100.0f) {
                    gPlayerActor.hitByFlags = 0;
                    gPlayerActor.hitByType = HITTYPE_18;
                    gPlayerActor.pendingDamage = 0;

                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gPlayerActor.unk_0F8.raw = FIXED_UNIT(2);
                    }
                    else {
                        gPlayerActor.unk_0F8.raw = FIXED_UNIT(-2);
                    }

                    gPlayerActor.unk_0FC.raw = FIXED_UNIT(4);
                    MarinaHit_Type18(PLAYER_INDEX, actor_index);
                    gActors[actor_index].unk_170 = 0x12;
                    gActors[actor_index].var_150 = 0;
                    gActors[actor_index].stateUpper = 2;
                }
            }
            else if (gActors[actor_index].var_110 >= 100.0f) {
                gPlayerActor.hitByFlags = 0;
                gPlayerActor.hitByType = HITTYPE_18;
                gPlayerActor.pendingDamage = 0;

                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gPlayerActor.unk_0F8.raw = FIXED_UNIT(2);
                }
                else {
                    gPlayerActor.unk_0F8.raw = FIXED_UNIT(-2);
                }

                gPlayerActor.unk_0FC.raw = FIXED_UNIT(4);
                MarinaHit_Type18(PLAYER_INDEX, actor_index);
                gActors[actor_index].state = 8;
            }
        }
        else if (var_v1 == 2) {
            var_v1 = func_8005C774(10);
            gActors[actor_index].var_150 += var_v1 + 1;

            if (gActors[actor_index].var_150 >= 10) {
                gActors[actor_index].unk_170_s8[0] += 1;
                gActors[actor_index].var_150 -= 10;
            }

            if (func_8005D418(actor_index)) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
                    gActors[actor_index].hitFlags = HITFLAG_0;
                    gActors[actor_index].hitType = HITTYPE_4;
                    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4);
                    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
                    gActors[sp4E].parentIndex = actor_index;
                    gActors[sp4E].flags_098 |= ACTOR_FLAG3_UNK1 | ACTOR_FLAG3_UNK16;
                    Sound_PlaySfx(SFX_0039);
                    func_8001EB8C(actor_index, sp4E);
                    gActors[actor_index].damage = 0;
                    gActors[actor_index].var_150 = 64;
                    func_8019BC24_71A244(actor_index);
                    // BUG: sp38 is never initialized!
                    sp4E = MarinaEffect_SpawnParticle(actor_index, sp38);
                    if (sp4E != 0) {
                        gActors[sp4E].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
                        gActors[sp4E].graphicIndex = GINDEX_IMPACTEFFECTA;
                        gActors[sp4E].var_154 = -5;
                        gActors[sp4E].scaleX = 0.5f;
                        gActors[sp4E].scaleY = 0.5f;
                        gActors[sp4E].unk_148 = 20.0f;
                        gActors[sp4E].var_110 = 0.1f;

                        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                            gActors[sp4E].var_160 = TO_FIXED(DEG_TO_INDEX(70));
                        }
                        else {
                            gActors[sp4E].var_160 = TO_FIXED(DEG_TO_INDEX(290));
                        }

                        gActors[sp4E].palette_18C = PALETTE_8022D568;
                        gActors[sp4E].flags |= ACTOR_FLAG_UNK15;
                        gActors[sp4E].unk_130 = gActors[actor_index].parentIndex;
                        gActors[sp4E].unk_14C = gActors[gActors[actor_index].parentIndex].actorType;

                        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                            gActors[sp4E].unk_140_f32 = 10.0f;
                            gActors[sp4E].unk_134 = gActors[gActors[actor_index].parentIndex].hitboxBX0 / 2;
                        }
                        else {
                            gActors[sp4E].unk_140_f32 = -10.0f;
                            gActors[sp4E].unk_134 = gActors[gActors[actor_index].parentIndex].hitboxBX1 / 2;
                        }

                        gActors[sp4E].unk_138 = gActors[gActors[actor_index].parentIndex].hitboxBY1;
                        gActors[sp4E].unk_13C_f32 = 0.0f;
                        gActors[sp4E].unk_144 = 10.0f;
                        Sound_PlaySfx(SFX_STAB_006E);
                    }

                    gActors[actor_index].stateUpper = 2;
                }
                else {
                    gActors[actor_index].var_150 = 0;
                    gActors[actor_index].stateUpper = 1;
                }

                gActors[actor_index].stateLower = 9;
            }
        }
        else if (var_v1 == 11) {
            var_v1 = func_8005C774(10);
            gActors[actor_index].var_110 += (f32)(15 - var_v1);

            if (gActors[actor_index].var_110 >= 20.0f) {
                gActors[actor_index].unk_170_s8[0] -= 1;
                gActors[actor_index].var_110 -= 20.0f;
            }

            if (func_8005D418(actor_index)) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
                    gActors[sp4E].parentIndex = actor_index;
                    gPlayerActor.hitByFlags = 0;
                    gPlayerActor.hitByType = HITTYPE_18;
                    gPlayerActor.pendingDamage = 0;

                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gPlayerActor.unk_0F8.raw = FIXED_UNIT(-2);
                    }
                    else {
                        gPlayerActor.unk_0F8.raw = FIXED_UNIT(2);
                    }

                    gPlayerActor.unk_0FC.raw = FIXED_UNIT(4);
                    MarinaHit_Type18(PLAYER_INDEX, actor_index);
                }

                gActors[actor_index].damage = 0;
                gActors[actor_index].state = 12;
            }
        }
    }
    else {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
            if (gActors[actor_index].unk_140_u8[0] < 4) {
                gActors[actor_index].state = 13;
            }
            else if (gActors[actor_index].unk_140_u8[0] >= 5) {
                if (gActors[actor_index].stateUpper == 11) {
                    gActors[actor_index].stateUpper = 1;
                }
                else {
                    gActors[actor_index].stateUpper = 0;
                }

                gActors[actor_index].stateLower = 14;
            }
            else if (gActors[actor_index].unk_140_u8[0] == 4) {
                gActors[actor_index].state = 15;
            }

            gActors[actor_index].unk_140_u16[1] = gActors[actor_index].unk_0FC.raw;
            return;
        }

        gActors[actor_index].stateUpper = 4;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].state = 1;
            return;
        }

        gActors[actor_index].stateLower = 3;
    }
}

void func_8019E78C_71CDAC(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 5;
        gActors[actor_index].unk_170_s8[1] = 3;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
        }

        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].var_150 = 18;
        gActors[actor_index].stateUpper = 1;
    }

    gActors[actor_index].velocityY.raw += FIXED_UNIT(0.03125);

    if (--gActors[actor_index].var_150 <= 0) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 4;
    }
}

void func_8019E85C_71CE7C(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 4;
        gActors[actor_index].unk_170_s8[1] = 3;

        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].velocityX.raw = 0;
        }
        else if (gActors[actor_index].unk_140_u16[1] == 0) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170_s16[1] = 5;
            }
            else {
                gActors[actor_index].unk_170_s16[1] = 6;
            }
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170_s16[1] = 6;
            }
            else {
                gActors[actor_index].unk_170_s16[1] = 5;
            }
        }

        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].var_150 = 18;
        gActors[actor_index].stateUpper = 1;
    }

    gActors[actor_index].velocityY.raw += FIXED_UNIT(0.03125);

    if (--gActors[actor_index].var_150 <= 0) {
        gActors[actor_index].state = 3;
        gActors[actor_index].stateUpper = 4;
    }
}

void func_8019E988_71CFA8(u16 actor_index) {
    s32 sp2C[5];
    u16 fixed_actor_index = PLAYER_INDEX;

    gActors[actor_index].iFrames = 60;

    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[(u16)(actor_index + 2)].stateLower == 1) {
            gActors[actor_index].stateUpper = 11;
        }
        else {
            gActors[actor_index].stateUpper = 1;
        }
    }

    switch (gActors[actor_index].stateUpper) {
    case 1:
        gActors[actor_index].unk_170 = 0x4009;
        gActors[actor_index].unk_17C = 1;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;

        if (gActors[actor_index].unk_140_u8[0] == 6) {
            if (gActors[actor_index].unk_140_u16[1] == 0) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            }
        }

        gActors[actor_index].velocityY.raw = FIXED_UNIT(-6);
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 2;
        break;

    case 2:
        if (gActors[actor_index].var_150 == 0) {
            if (!func_800490BC(actor_index, -1, -1)) {
                break;
            }

            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            Sound_PlaySfx(SFX_0068);
            sp2C[0] = gActors[actor_index].posX.whole;
            sp2C[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            sp2C[2] = gActors[actor_index].posZ.whole;
            sp2C[3] = 0;
            sp2C[4] = (intptr_t)PALETTE_8022D568;
            func_8005A320(actor_index, sp2C, 0, 3.5f);

            if (Marina_SubHealth(actor_index, 50) == 3) {
                Sound_PlaySfx(SFX_MERCO_OW);
            }
            else {
                Sound_PlaySfx(SFX_MERCO_OW);
            }

            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170_s8[1] = 1;
            gActors[actor_index].var_150 = 6;
        }

        if (--gActors[actor_index].var_150 == 0) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].unk_170_s8[1] = 0;
            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }

        if (func_800490BC(actor_index, -1, -1)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            Sound_PlaySfx(SFX_0068);
            gActors[actor_index].unk_170_s8[1] = 1;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (--gActors[actor_index].var_150 == 0) {
            if (gActors[actor_index].health <= 0) {
                Sound_StartFade(0x81, 60);
                gStageState++;
                gActors[actor_index].stateUpper = 6;
            }
            else {
                if (gActors[fixed_actor_index].posX.raw >= gActors[actor_index].posX.raw) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.75);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(1.75);
                }

                gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
                gActors[actor_index].unk_170 = 0x23;
                gActors[actor_index].unk_17C = 0;
                gActors[actor_index].unk_17C_s8[1] = 1;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
                gActors[actor_index].stateUpper = 5;
            }
        }
        break;

    case 5:
        if (func_8005D418(actor_index)) {
            gActors[actor_index].stateUpper = 4;
            gActors[actor_index].stateLower = 3;
        }
        break;

    case 11:
        gActors[actor_index].unk_170 = 0x401E;
        gActors[actor_index].unk_170_s8[1] = 1;

        if (gActors[actor_index].unk_140_u8[0] == 6) {
            if (gActors[actor_index].unk_140_u16[1] == 0) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            }
        }

        gActors[actor_index].velocityY.raw -= FIXED_UNIT(5);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        gActors[actor_index].stateUpper = 12;
        break;

    case 12:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.25));
        if (gActors[actor_index].velocityY.raw == 0) {
            gActors[actor_index].state = 3;
            gActors[actor_index].stateUpper = 4;
        }
        else if (func_800490BC(actor_index, 0, -16)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            Sound_PlaySfx(SFX_0086);
            gActors[actor_index].unk_170 = 3;
            gActors[actor_index].stateUpper = 13;
        }
        break;

    case 13:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].velocityX.raw) {
            gActors[actor_index].unk_180_u8[3] = MARINAEFF_4;
        }

        gActors[actor_index].unk_170_s8[0]++;

        if (func_8005D418(actor_index)) {
            gActors[actor_index].state = 1;
        }
        break;
    }
}

void func_8019EE78_71D498(u16 actor_index) {
    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            Sound_PlaySfx(SFX_0086);
        }

        if (gActors[actor_index].unk_140_u16[1] == 0) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].unk_170 = 0x401E;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170_s8[1] = 1;
                gActors[actor_index].var_150 = 80 - func_8005C774(40);
                gActors[actor_index].iFrames = 0;
                SpawnCrosshair(20, actor_index);
                gActors[actor_index].stateUpper = 2;
            }
            else {
                gActors[actor_index].unk_170_s8[1] = 3;
                gActors[actor_index].var_150 = 50 - func_8005C774(40);
                gActors[actor_index].stateUpper = 1;
            }
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].unk_170 = 0x401E;

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].unk_170_s8[1] = 3;
                gActors[actor_index].var_150 = 50 - func_8005C774(40);
                gActors[actor_index].stateUpper = 1;
            }
            else {
                gActors[actor_index].unk_170_s8[1] = 1;
                gActors[actor_index].var_150 = 80 - func_8005C774(40);
                gActors[actor_index].iFrames = 0;
                SpawnCrosshair(20, actor_index);
                gActors[actor_index].stateUpper = 2;
            }
        }
    }

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) && gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }

    if (gActors[actor_index].stateUpper == 1) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
    }

    if (gActors[actor_index].stateUpper == 2) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
    }

    if (--gActors[actor_index].var_150 <= 0) {
        gActors[actor_index].stateUpper = 4;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].state = 1;
        }
        else {
            gActors[actor_index].stateLower = 3;
        }
    }
}

void func_8019F08C_71D6AC(u16 actor_index) {
    u16 index = gActors[actor_index].parentIndex;

    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[index].posX.whole >= gActors[actor_index].posX.whole) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gActors[(u16)(actor_index + 2)].stateLower == 1) {
                    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                        gActors[actor_index].unk_170 = 0x1C;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x1F;
                    }
                }
                else if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    gActors[actor_index].unk_170 = 8;
                }
                else {
                    gActors[actor_index].unk_170 = 0x22;
                }
            }
            else if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                gActors[actor_index].unk_170 = 0x27;
            }
            else {
                gActors[actor_index].unk_170 = 0x28;
            }
        }
        else if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (gActors[(u16)(actor_index + 2)].stateLower == 1) {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    gActors[actor_index].unk_170 = 0x1C;
                }
                else {
                    gActors[actor_index].unk_170 = 0x1F;
                }

                gActors[actor_index].iFrames = 0;
            }
            else if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                gActors[actor_index].unk_170 = 8;
            }
            else {
                gActors[actor_index].unk_170 = 0x22;
            }
        }
        else if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].unk_170 = 0x27;
        }
        else {
            gActors[actor_index].unk_170 = 0x28;
        }

        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;

        if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23))) {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw / 2;
        }
        else {
            Sound_PlaySfx(SFX_0086);
        }

        index = gActors[actor_index].unk_170_u16[1];
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 1;
        gActors[actor_index].stateUpper = 1;

        if (index == 0x1C || index == 0x1F) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
            gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 2;
        }
        else {
            Marina_SubHealth(actor_index, gActors[actor_index].pendingDamage);
            func_8005C550(actor_index, -0x8000);

            if (gActors[actor_index].health != 0) {
                Sound_PlaySfx(SFX_MERCO_OW);
            }
            else {
                gActors[actor_index].state = 0x11;
                return;
            }
        }
    }

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.125));

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) && gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = 4;
    }

    if (func_8005D418(actor_index)) {
        gActors[actor_index].stateUpper = 4;

        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].state = 1;
            return;
        }

        gActors[actor_index].stateLower = 3;
    }
}

void func_8019F3DC_71D9FC(u16 actor_index) {
    f32 var_f0;
    s32 temp_v0;

    switch (gActors[actor_index].stateUpper) {
    case 0:
        Sound_PlaySfx(SFX_MERCO_OW);

        if (func_8005D338(actor_index) == 8) {
            gActors[actor_index].unk_170 = 0x22;
            gActors[actor_index].velocityY.raw += FIXED_UNIT(2);
        }

        if (func_8005D338(actor_index) == 0x27) {
            gActors[actor_index].unk_170 = 0x28;
            gActors[actor_index].velocityY.raw += FIXED_UNIT(2);
        }

        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
        gActors[actor_index].unk_17C = 1;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].stateUpper = 1;
        // fallthrough
    case 1:
        if (func_8005D338(actor_index) == 0x22) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_f0 = Math_ApproachF32(gActors[actor_index].rotateZ, 79.0f, 2.0f);
            }
            else {
                var_f0 = Math_ApproachF32(gActors[actor_index].rotateZ, -79.0f, 2.0f);
            }

            gActors[actor_index].rotateZ = var_f0;
        }

        if (func_8005D338(actor_index) == 0x28) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_f0 = Math_ApproachF32(gActors[actor_index].rotateZ, -70.0f, 2.0f);
            }
            else {
                var_f0 = Math_ApproachF32(gActors[actor_index].rotateZ, 70.0f, 2.0f);
            }

            gActors[actor_index].rotateZ = var_f0;
        }

        temp_v0 = gActors[actor_index].velocityY.raw;
        if (temp_v0 > FIXED_UNIT(-6)) {
            gActors[actor_index].velocityY.raw = temp_v0 - FIXED_UNIT(0.25);
        }

        if (func_800490BC(actor_index, -1, -1) != 0) {
            if (func_8005D338(actor_index) == 0x22) {
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].rotateZ = 79.0f;
                }
                else {
                    gActors[actor_index].rotateZ = -79.0f;
                }
            }

            if (func_8005D338(actor_index) == 0x28) {
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                gActors[actor_index].unk_170 = 0x4009;
                gActors[actor_index].unk_170_s8[1] = 1;
                gActors[actor_index].rotateZ = 0.0f;
            }

            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            Sound_PlaySfx(SFX_0068);
            gActors[actor_index].var_150 = 8;
            gActors[actor_index].stateUpper = 2;
        }
        break;

    case 2:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;

            if (func_8005D338(actor_index) == 9) {
                gActors[actor_index].unk_170_s8[1] = 0;
            }

            if (func_8005D338(actor_index) == 0x22) {
                gActors[actor_index].unk_170 = 0x22;
            }

            gActors[actor_index].stateUpper = 3;
        }
        break;

    case 3:
        temp_v0 = gActors[actor_index].velocityY.raw;
        if (temp_v0 > FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw = temp_v0 - FIXED_UNIT(0.125);
        }

        if (func_800490BC(actor_index, -1, -1) != 0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK23;
            Sound_PlaySfx(SFX_0068);

            if (func_8005D338(actor_index) == 9) {
                gActors[actor_index].unk_170_s8[1] = 1;
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].stateUpper = 4;
        }
        break;

    case 4:
        if (--gActors[actor_index].var_150 <= 0) {
            Sound_StartFade(0x81, 60);
            gStageState += 1;
            gActors[actor_index].stateUpper = 6;
        }
        break;

    default:
        break;
    }
}

void func_8019F7F4_71DE14(u16 actor_index) {
    s32 sp64[5];
    ShockParticleStruct sp40;
    s32 temp_a0;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags &= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK17;
        gActors[actor_index].graphicList = (s16*)D_801A3AEC_72210C;
        gActors[actor_index].graphicIndex = 0x1D6;
        gActors[actor_index].grabType = GRABTYPE_11;
        gActors[actor_index].unk_0DF = 2;
        gActors[actor_index].var_160_s8[1] = -1;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        func_8019BD78_71A398(actor_index);
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = FIXED_UNIT(32);
        gActors[actor_index].posZ.raw = 0;
        gActors[(u16)(actor_index + 1)].actorType = 0xA01;
        Actor_Initialize(actor_index + 1);
        gActors[(u16)(actor_index + 1)].unk_14C = (f32)actor_index;
        gActors[(u16)(actor_index + 2)].actorType = 0xA02;
        Actor_Initialize(actor_index + 2);
        gActors[(u16)(actor_index + 2)].unk_14C = (f32)actor_index;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;

        if (gStageState < 0x1000) {
            Palette_AdjustRgb5551Array(D_800D82E8 + 1, D_800D82E8 + 0xC1, 15, 0, -16, -16);
            gActors[actor_index].unk_170 = 0x24;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].var_150 = FIXED_UNIT(160);
            gActors[actor_index].var_154 = FIXED_UNIT(64);
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].var_110 = 1.2f;
            gActors[actor_index].unk_114 = 1.5f;
            gActors[actor_index].unk_124 = 0.0f;
            gActors[actor_index].state = 1;
        }
        else {
            gActors[actor_index].state = 1;
            gActors[actor_index].unk_124 = 1.0f;
        }
        break;

    case 1:
        if (gStageState == 3) {
            if (!(gActors[actor_index].var_15C & 3)) {
                if (gActors[actor_index].stateUpper == 0) {
                    if (!(gActors[actor_index].var_15C & 4)) {
                        sp64[0] = gActors[actor_index].posX.whole + FROM_FIXED(gActors[actor_index].var_150);
                        sp64[2] = gActors[actor_index].posZ.whole + FROM_FIXED(temp_a0 = gActors[actor_index].var_154);
                    }
                    else {
                        sp64[0] = gActors[actor_index].posX.whole - FROM_FIXED(gActors[actor_index].var_150);
                        sp64[2] = gActors[actor_index].posZ.whole - FROM_FIXED(temp_a0 = gActors[actor_index].var_154);
                    }

                    gActors[actor_index].var_150 -= FIXED_UNIT(8);
                    gActors[actor_index].var_154 = temp_a0 - FIXED_UNIT(1.5);

                    if (gActors[actor_index].var_150 <= 0) {
                        gActors[actor_index].var_158 = Math_Atan2(0, gActors[actor_index].var_154);
                        gActors[actor_index].stateUpper += 1;
                    }
                }
                else {
                    if (!(gActors[actor_index].var_15C & 4)) {
                        sp64[0] = (s32)(gActors[actor_index].posX.whole + FROM_FIXED((f32)gActors[actor_index].var_154 * COS(gActors[actor_index].var_158)));
                        sp64[2] = (s32)(gActors[actor_index].posZ.whole + FROM_FIXED((f32)gActors[actor_index].var_154 * SIN(gActors[actor_index].var_158)));
                    }
                    else {
                        sp64[0] = (s32)(gActors[actor_index].posX.whole - FROM_FIXED((f32)gActors[actor_index].var_154 * COS(gActors[actor_index].var_158)));
                        sp64[2] = (s32)(gActors[actor_index].posZ.whole - FROM_FIXED((f32)gActors[actor_index].var_154 * SIN(gActors[actor_index].var_158)));
                    }

                    gActors[actor_index].var_158 = gActors[actor_index].var_158 + 35;
                    gActors[actor_index].var_154 -= FIXED_UNIT(0.59375);
                    gActors[actor_index].colorA += 4;
                    gActors[actor_index].var_110 -= 0.01;
                    gActors[actor_index].unk_114 -= 0.01;

                    if (gActors[actor_index].var_154 <= FIXED_UNIT(8)) {
                        gActors[actor_index].colorA = 0xFF;
                        gActors[actor_index].state = 2;
                    }
                }

                sp64[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
                sp64[4] = (s32)(D_800D82E8 + 0xC0);

                if (func_8005A7D0(actor_index, sp64, gActors[actor_index].var_110, gActors[actor_index].unk_114) == 0) {
                    break;
                }
            }

            gActors[actor_index].var_15C += 1;
            gActors[actor_index].unk_118 = 120.0f;
        }
        else {
            break;
        }
        // fallthrough
    case 2:
        sp40.actorIndex = actor_index;
        sp40.pos[0] = gActors[actor_index].posX.whole;
        sp40.pos[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
        sp40.pos[2] = gActors[actor_index].posZ.whole + 1;
        sp40.graphicIndex = 0;
        sp40.angle = FIXED_UNIT(256);
        sp40.scale = gActors[actor_index].unk_118;
        sp40.blue = sp40.green = Rand();
        temp_a0 = Rand();
        sp40.red = sp40.green = (u8)(sp40.green + temp_a0 % (256 - sp40.blue)) & 0xFF;

        if (sp40.green < 128) {
            sp40.green += 128;
        }

        sp40.red = sp40.green;
        sp40.randModulo = 8;
        func_8005A930(&sp40);
        gActors[actor_index].unk_118 -= 2.0;

        if (!(gActors[actor_index].unk_118 > 5.0f)) {
            gActors[actor_index].unk_170 = 0x25;
            gActors[actor_index].state = 3;
        }
        break;

    case 3:
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_170 = 1;
            gStageState += 1;
            gActors[actor_index].state = 4;
        }
        break;

    case 4:
        if (gStageState >= 10) {
            gActors[actor_index].state = 1;
            gActors[actor_index].unk_16C = 0;
            gActors[actor_index].unk_168 = 0;
            gActors[actor_index].unk_124 = 1.0f;
        }
        break;

    case 5:
        if (gPlayerActor.posX.raw >= gActors[actor_index].posX.raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 0x29;
            gActors[actor_index].stateUpper = 1;
        }

        Marina_DebugAnim(actor_index);
        break;

    case 6:
        if (gPlayerActor.posX.raw >= gActors[actor_index].posX.raw) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_158 = 0x6000;
            gActors[actor_index].var_15C = 0x604C;
        }

        Marina_DebugGraphic(actor_index);
        break;
    }
}

void func_801A0068_71E688(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].unk_124 = 0.0f;
    }

    D_800BE544 = actor_index;
    gLookatEyeX = -gActors[actor_index].posX.whole;
    gLookatEyeY = 128.0f;
    gLookatAtZ = -0.0f;

    switch ((s32)gActors[actor_index].unk_124) {
    case 0:
        func_8019F7F4_71DE14(actor_index);
        break;

    case 1:
        func_8019BB2C_71A14C(actor_index);

        if (gMarinaAnim.anim_u32 == 0) {
            if (gActors[actor_index].posX.whole < 0) {
                gCameraRot = Math_ApproachS32(gCameraRot, (FIXED_UNIT(16) - gActors[actor_index].posY.raw) / 3, FIXED_UNIT(4));
            }
            else {
                gCameraRot = Math_ApproachS32(gCameraRot, (gActors[actor_index].posY.raw - FIXED_UNIT(16)) / 3, FIXED_UNIT(4));
            }

            func_8019B100_719720(actor_index, 0);
        }

        D_801A3B90_7221B0[gActors[actor_index].stateLower](actor_index);
        break;
    }

    if (gActors[actor_index].iFrames != 0) {
        gActors[actor_index].iFrames--;
    }

    func_8005D450(actor_index);
    func_8005CAA8(actor_index, D_801A3820_721E40);
    MarinaEffect_Update(actor_index);

    if (func_8005C5E0(actor_index) && gActors[actor_index].unk_13C_s16[0] > 0) {
        gActors[actor_index].unk_180_u8[3] = 6;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
    func_8002877C(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A02A0_71E8C0(u16 actor_index, s32 arg1) {
    Actor* temp_s0;
    s32 temp_v3;
    s32 temp_v0;
    s32 temp_v2;
    s32 temp_v1;
    f32 temp_f0;
    f32 temp_f2;

    if (arg1 == 0) {
        arg1 = 24;
    }
    else {
        arg1 = 10;
    }

    temp_f2 = arg1;
    temp_s0 = &gActors[actor_index];
    temp_v3 = (s32)DEG_TO_INDEX(temp_s0->rotateZ);
    temp_v0 = (s32)(SIN(temp_v3) * 20.0f);
    temp_s0->hitboxBY0 = temp_v0;
    temp_s0->hitboxBY1 = temp_v0;

    if (!(temp_s0->flags & ACTOR_FLAG_FLIPPED)) {
        temp_f0 = COS(temp_v3);
        temp_v0 = (s32)(temp_f0 * 20.0f);
        temp_s0->hitboxBX1 = temp_v0;
        temp_s0->hitboxBX0 = temp_v0;
    }
    else {
        temp_f0 = COS(temp_v3);\
        temp_v0 = (s32)(temp_f0 * -20.0f);\
        temp_s0->hitboxBX1 = temp_v0;
        temp_s0->hitboxBX0 = temp_v0;
    }

    temp_v1 = Math_AbsS32_2((s32)(temp_f0 * temp_f2));
    temp_v1 += Math_AbsS32_2((s32)(SIN((s32)DEG_TO_INDEX(temp_s0->rotateZ)) * 4.0f));
    temp_s0->hitboxBX1 += temp_v1;
    temp_s0->hitboxBX0 -= temp_v1;
    temp_v2 = Math_AbsS32_2((s32)(COS((s32)DEG_TO_INDEX(temp_s0->rotateZ)) * 6.0f));
    temp_v2 += Math_AbsS32_2((s32)(SIN((s32)DEG_TO_INDEX(temp_s0->rotateZ)) * (f32)arg1));
    temp_s0->hitboxBY0 += temp_v2;
    temp_s0->hitboxBY1 -= temp_v2;
}

void func_801A0648_71EC68(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 temp_v3;
    s32 temp_v0;
    s32 temp_v2;
    s32 temp_v1;
    f32 temp_f0;

    temp_v3 = (s32)DEG_TO_INDEX(actor->rotateZ);
    temp_v0 = (s32)(SIN(temp_v3) * 24.0f);
    actor->hitboxAY0 = temp_v0;
    actor->hitboxAY1 = temp_v0;

    if (!(actor->flags & ACTOR_FLAG_FLIPPED)) {
        temp_f0 = COS(temp_v3);
        temp_v0 = (s32)(temp_f0 * 24.0f);
        actor->hitboxAX1 = temp_v0;
        actor->hitboxAX0 = temp_v0;
    }
    else {
        temp_f0 = COS(temp_v3);\
        temp_v0 = (s32)(temp_f0 * -24.0f);\
        actor->hitboxAX1 = temp_v0;
        actor->hitboxAX0 = temp_v0;
    }

    temp_v1 = Math_AbsS32_2((s32)(temp_f0 * 20.0f));
    temp_v1 += Math_AbsS32_2((s32)(SIN((s32)DEG_TO_INDEX(actor->rotateZ)) * 5.0f));
    actor->hitboxAX1 += temp_v1;
    actor->hitboxAX0 -= temp_v1;
    temp_v2 = Math_AbsS32_2((s32)(COS((s32)DEG_TO_INDEX(actor->rotateZ)) * 5.0f));
    temp_v2 += Math_AbsS32_2((s32)(SIN((s32)DEG_TO_INDEX(actor->rotateZ)) * 20.0f));
    actor->hitboxAY0 += temp_v2;
    actor->hitboxAY1 -= temp_v2;
}

void func_801A09D8_71EFF8(u16 actor_index) {
    s32 sp64[5];
    u16 sp62;
    u16 sp60;
    s16* var_v0;
    s32 temp_a2_5;
    s32 temp_v0_4;
    s32 temp_t5;
    s32 temp_a1_4;
    s32 temp_v1;

    sp62 = (u16)(s32)gActors[actor_index].unk_14C;
    gActors[actor_index].health = 10;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) &&
        gActors[actor_index].stateLower != 4 &&
        gActors[actor_index].stateLower != 3 &&
        gActors[actor_index].stateLower != 1) {
        func_80058924(actor_index);
        gActors[actor_index].state = 4;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].var_160_s8[0] = 0;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8;
        gActors[actor_index].graphicIndex = 0x1D6;
        gActors[actor_index].unk_180 = 0;
        gActors[actor_index].grabType = 1;
        gActors[actor_index].unk_0DF = 1;
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].hitType = HITTYPE_3;
        gActors[actor_index].unk_0CE = 7;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].state = 1;
        // fallthrough
    case 1:
        if (gActors[sp62].unk_170_u16[1] != 0) {
            temp_v1 = gActors[sp62].graphicIndex;
            if ((temp_v1 & 0xFF00) == 0x6000) {
                var_v0 = &D_801A3BD8_7221F8[(temp_v1 & 0xFF) * 5];
            }
            else {
                var_v0 = &D_801A3EA8_7224C8[(temp_v1 & 0xFF) * 5];
            }

            if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole = gActors[sp62].posX.whole + var_v0[0];
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].posX.whole = gActors[sp62].posX.whole - var_v0[0];
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].posY.whole = gActors[sp62].posY.whole + var_v0[1];
            gActors[actor_index].posZ.whole = gActors[sp62].posZ.whole + var_v0[2];
            gActors[actor_index].rotateZ = (f32)var_v0[3];
            gActors[actor_index].velocityX.raw = gActors[sp62].velocityX.raw;
            gActors[actor_index].velocityY.raw = gActors[sp62].velocityY.raw;
            gActors[actor_index].velocityZ.raw = gActors[sp62].velocityZ.raw;
            gActors[actor_index].graphicIndex = var_v0[4];

            if (gActors[sp62].stateLower != 7) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
            }

            if (gActors[actor_index].flags & ACTOR_FLAG_UNK12) {
                func_801A02A0_71E8C0(actor_index, 0);
            }

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                gActors[actor_index].flags = gActors[actor_index].flags & ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);

                if (gActors[actor_index].var_15C == 0) {
                    sp64[0] = gActors[actor_index].posX.whole + (gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1) / 2;
                    sp64[1] = gActors[actor_index].posY.whole + (gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1) / 2;

                    sp64[0] = (sp64[0] + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
                    sp64[1] = (sp64[1] + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
                }
                else {
                    sp64[0] = gActors[gActors[actor_index].parentIndex].posX.whole + (s16)((s8)Rand() % 20);
                    sp64[1] = gActors[gActors[actor_index].parentIndex].posY.whole + (s16)((s8)Rand() % 20);
                }

                sp64[2] = (s32)gActors[gActors[actor_index].parentIndex].posZ.whole;

                if (gActors[sp62].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                    if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                        temp_a2_5 = 0;
                    }
                    else {
                        temp_a2_5 = 0x02000000;
                    }
                }
                else if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                    temp_a2_5 = 0x03800000;
                }
                else {
                    temp_a2_5 = 0x02800000;
                }

                sp64[3] = 0x166;
                sp64[4] = (s32)PALETTE_8022D4E8;

                sp60 = func_8005A068(actor_index, sp64, temp_a2_5, 0.7f, 0x14);

                gActors[sp60].var_110 = 0;
                gActors[sp60].unk_118 = 0;
                gActors[sp60].scaleY = 0;
                gActors[sp60].unk_114 = 0.02f;
                gActors[sp60].unk_11C = 0;
                Sound_PlaySfx(SFX_STAB_006E);
            }

            if (gActors[sp62].stateLower != 7 && gActors[sp62].stateLower != 0xA) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            }

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7)) {
                gActors[actor_index].hitFlags = HITFLAG_7;
                gActors[actor_index].hitType = HITTYPE_3;
                gActors[actor_index].damage = 25;
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
                gActors[actor_index].unk_0FC.raw = FIXED_UNIT(1.5);

                if (gActors[actor_index].var_15C == 1) {
                    gActors[actor_index].hitFlags = 0;
                    gActors[actor_index].damage = gActors[actor_index].damage / 5;
                    gActors[actor_index].unk_0F8.raw /= 4;
                }

                func_801A0648_71EC68(actor_index);
            }

            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].rotateZ = -gActors[actor_index].rotateZ;
            }

            if (gActors[actor_index].var_15C == 1) {
                gActors[actor_index].flags = gActors[actor_index].flags & ~ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags = gActors[actor_index].flags | ACTOR_FLAG_DRAW;
            }

            if (gActors[actor_index].var_15C == 1) {
                sp60 = Actor_RangeFindInactive(0x30, 0x90);

                if (sp60 != 0) {
                    SpawnParticle_List(sp60, gGraphicListBlank, gActors[sp62].posX.whole, gActors[sp62].posY.whole, gActors[actor_index].posZ.whole - 3);

                    gActors[sp60].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                    gActors[sp60].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
                    gActors[sp60].graphicIndex = gActors[actor_index].graphicIndex;

                    if (gActors[sp62].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                        temp_a2_5 = 0x250;

                        if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                            gActors[sp60].posX.whole += gActors[sp62].hitboxBX1;
                            temp_a2_5 = 0x3B0;
                            gActors[sp60].var_160 = 0x03F00000;
                        }
                        else {
                            gActors[sp60].posX.whole += gActors[sp62].hitboxBX0;
                            gActors[sp60].var_160 = 0x100000;
                        }

                        gActors[sp60].posY.whole += 0x14;
                    }
                    else {
                        temp_a2_5 = 0x2A0;

                        if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                            gActors[sp60].posX.whole += gActors[sp62].hitboxBX1;
                            temp_a2_5 = 0x360;
                            gActors[sp60].var_160 = 0x03720000;
                        }
                        else {
                            gActors[sp60].posX.whole += gActors[sp62].hitboxBX0;
                            gActors[sp60].var_160 = 0x8E0000;
                        }

                        gActors[sp60].posY.whole += 8;
                    }

                    temp_v0_4 = (s8)Rand();
                    temp_a1_4 = gActors[sp62].var_150 * 0x38;
                    temp_t5 = temp_v0_4 % temp_a1_4;
                    temp_v0_4 = (Rand() & 0x38) + 0x10;
                    gActors[sp60].posX.whole += (f32)temp_v0_4 * gCosineLookup[(temp_a2_5 + temp_t5) & 0x3FF];
                    temp_v0_4 = (Rand() & 0x38) + 0x10;
                    gActors[sp60].posY.whole += (f32)temp_v0_4 * gCosineLookup[((temp_a2_5 + temp_t5) - 0x100) & 0x3FF];
                    gActors[sp60].colorA = 0xFF;
                    gActors[sp60].var_154 = -0x30;
                }
            }

            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 0;
        }
        break;

    case 2:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
            gActors[actor_index].var_158 += 1;

            if (func_80049040(actor_index) != 0) {
                gActors[actor_index].unk_140_u8[0] = 0;
            }
            else {
                if (gActors[actor_index].stateUpper == 0) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
                    gActors[actor_index].stateUpper = 1;
                    gActors[actor_index].var_110 = 10.0f;
                    gActors[actor_index].unk_164 = gActors[actor_index].posX.raw;
                    gActors[actor_index].unk_168 = gActors[actor_index].posY.raw;
                    gActors[actor_index].unk_120 = gActors[actor_index].rotateZ;
                }

                temp_v1 = gActors[actor_index].stateUpper;
                if (temp_v1 == 1) {
                    gActors[actor_index].stateUpper = 2;
                    gActors[actor_index].rotateZ += gActors[actor_index].var_110;
                }
                else if (temp_v1 == 2) {
                    gActors[actor_index].rotateZ -= gActors[actor_index].var_110;
                    gActors[actor_index].var_110 -= 0.5;

                    if (gActors[actor_index].var_110 > 0) {
                        gActors[actor_index].stateUpper = 1;
                    }
                    else {
                        gActors[actor_index].stateUpper = 3;
                    }
                }

                if (gActors[actor_index].rotateZ == gActors[actor_index].unk_120) {
                    gActors[actor_index].posX.raw = gActors[actor_index].unk_164;
                    gActors[actor_index].posY.raw = gActors[actor_index].unk_168;
                }
                else {
                    s32 temp_a0;
                    temp_v0_4 = (s32)((f64)gActors[actor_index].unk_120 / 0.3515625);
                    temp_v1 = (s32)(gCosineLookup[temp_v0_4 & 0x3FF] * (f32)FIXED_UNIT(32));
                    temp_a0 = (s32)(gCosineLookup[(temp_v0_4 - 0x100) & 0x3FF] * (f32)FIXED_UNIT(32));
                    temp_v0_4 = (s32)((f64)gActors[actor_index].rotateZ / 0.3515625);
                    temp_v1 -= (f32)FIXED_UNIT(32) * gCosineLookup[temp_v0_4 & 0x3FF];
                    temp_a0 -= (f32)FIXED_UNIT(32) * gCosineLookup[(temp_v0_4 - 0x100) & 0x3FF];
                    gActors[actor_index].posX.raw = gActors[actor_index].unk_164 + temp_v1;
                    gActors[actor_index].posY.raw = gActors[actor_index].unk_168 + temp_a0;
                }

                gActors[actor_index].unk_164 = (gActors[actor_index].unk_164 + gScreenPosNextX.raw) - gScreenPosCurrentX.raw;
                gActors[actor_index].unk_168 = (gActors[actor_index].unk_168 + gScreenPosNextY.raw) - gScreenPosCurrentY.raw;

                if (gActors[actor_index].stateUpper == 3) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;

                    if ((gActors[sp62].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) &&
                        Math_AbsS32_2(gActors[actor_index].posX.whole - gActors[sp62].posX.whole) < 0x20) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
                        gActors[actor_index].state = 1;
                    }
                }
            }
        }
        else {
            if ((s32)gActors[actor_index].unk_140_u8[0] < 4) {
                temp_v0_4 = gActors[actor_index].velocityY.raw;
                if (temp_v0_4 > FIXED_UNIT(-12)) {
                    gActors[actor_index].velocityY.raw = temp_v0_4 - FIXED_UNIT(0.125);
                }
            }

            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].rotateZ = (f32)((f64)Math_Atan2(FROM_FIXED(gActors[actor_index].velocityX.raw), FROM_FIXED(gActors[actor_index].velocityY.raw)) * 0.3515625);

                if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                    gActors[actor_index].velocityX.raw = (s32)-gActors[actor_index].velocityX.raw / 3;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
                    gActors[actor_index].unk_140_u8[0] = 0;
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7;
                    gActors[actor_index].stateUpper = 1;
                }

                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);

                    sp64[0] = (s32)(gActors[actor_index].posX.whole + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
                    sp64[1] = (s32)(gActors[actor_index].posY.whole + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
                    sp64[2] = (s32)gActors[gActors[actor_index].parentIndex].posZ.whole;
                    sp64[3] = 0x166;
                    sp64[4] = (s32)PALETTE_8022D4E8;
                    sp60 = func_8005A068(actor_index, sp64, (s32)(((f64)gActors[actor_index].rotateZ / 0.3515625) * 65536.0), 0.7f, 0x14);

                    gActors[sp60].var_110 = 0;
                    gActors[sp60].unk_118 = 0;
                    gActors[sp60].scaleY = 0;
                    gActors[sp60].unk_114 = 0.02f;
                    gActors[sp60].unk_11C = 0;
                    Sound_PlaySfx(SFX_STAB_006E);
                    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
                }
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].velocityX.raw = (s32)-gActors[actor_index].velocityX.raw / 2;
                    gActors[actor_index].velocityY.raw = (s32)gActors[actor_index].velocityY.raw / 2;

                    sp64[0] = (s32)(gActors[actor_index].posX.whole + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
                    sp64[1] = (s32)(gActors[actor_index].posY.whole + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
                    sp64[2] = (s32)gActors[gActors[actor_index].parentIndex].posZ.whole;
                    func_8005A1A4(actor_index, sp64, 1.5f);
                    Sound_PlaySfx(SFX_0058);
                }

                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].rotateZ += 20.0f;
                }
                else {
                    gActors[actor_index].rotateZ -= 20.0f;
                }
            }

            func_801A02A0_71E8C0(actor_index, 1);
            func_801A0648_71EC68(actor_index);
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(1);

            if (func_800490BC(actor_index, -1, -1) != 0) {
                gActors[actor_index].posY.whole = (-gActors[actor_index].hitboxBY1 - gScreenPosCurrentY.whole) + 0x190;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].stateUpper = 0;
            }
        }
        break;

    case 3:
        temp_v1 = gActors[actor_index].stateUpper;

        switch (temp_v1) {
        case 0:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
                sp62 = gActors[actor_index].parentIndex;
                gActors[sp62].flags_098 |= ACTOR_FLAG3_UNK16;
            }

            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].scaleY = 1.0f;
            gActors[actor_index].scaleX = 1.0f;
            break;

        case 1:
            gActors[actor_index].var_150 -= 6;

            if (gActors[actor_index].var_150 < -0x95) {
                gActors[actor_index].var_150 = -0x96;
                gActors[actor_index].var_154 = 0xA;
                gActors[actor_index].stateUpper = 2;

                break;
            }
            // fallthrough
        case 2:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.02f, 0.098f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.5f, 0.05f);
            gActors[actor_index].var_150 += 0x40;

            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_150 = 0xFF;
                gActors[actor_index].var_154 = 0xA;
                gActors[actor_index].stateUpper = 3;
            }

            break;

        case 3:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 3.0f, 0.298f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.02f, 0.15f);

            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].flags &= ~1;
                gActors[actor_index].var_154 = 0x14;
                gActors[actor_index].stateUpper = 0xA;
            }

            break;

        case 10:
            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_154 = 0xA;
                gActors[actor_index].var_150 = -0x96;
                gActors[actor_index].flags |= 1;
                gActors[actor_index].stateUpper = 0xB;
            }

            break;

        case 11:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.02f, 0.298f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.5f, 0.148f);
            gActors[actor_index].var_150 += 0x40;

            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_150 = 0xFF;
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].stateUpper = 0xC;
            }

            break;

        case 12:
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.098f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
            gActors[actor_index].var_150 -= 0x19;

            if (--gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].scaleY = 1.0f;
                gActors[actor_index].scaleX = 1.0f;
                gActors[actor_index].state = 1;
            }

            break;
        }

        temp_v1 = gActors[actor_index].stateUpper;
        if (temp_v1 >= 0xB) {
            s16* var_v0_2;

            temp_v1 = gActors[sp62].graphicIndex;

            if ((temp_v1 & 0xFF00) == 0x6000) {
                var_v0_2 = &D_801A3BD8_7221F8[(temp_v1 & 0xFF) * 5];
            }
            else {
                var_v0_2 = &D_801A3EA8_7224C8[(temp_v1 & 0xFF) * 5];
            }

            if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole = gActors[sp62].posX.whole + var_v0_2[0];
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].posX.whole = gActors[sp62].posX.whole - var_v0_2[0];
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].posY.whole = gActors[sp62].posY.whole + var_v0_2[1];
            gActors[actor_index].posZ.whole = gActors[sp62].posZ.whole + var_v0_2[2];
            gActors[actor_index].rotateZ = (f32)var_v0_2[3];
            gActors[actor_index].velocityX.raw = gActors[sp62].velocityX.raw;
            gActors[actor_index].velocityY.raw = gActors[sp62].velocityY.raw;
            gActors[actor_index].velocityZ.raw = gActors[sp62].velocityZ.raw;
            gActors[actor_index].graphicIndex = var_v0_2[4];
        }

        temp_v1 = Math_AbsS32_2(gActors[actor_index].var_150 / 2);
        gActors[actor_index].colorB = temp_v1;
        gActors[actor_index].colorG = temp_v1;
        gActors[actor_index].colorR = temp_v1;

        if (gActors[actor_index].var_150 >= 0) {
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        }
        else {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
        break;

    case 4:
        sp62 = gActors[actor_index].parentIndex;

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].graphicIndex = 0x181C;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].stateUpper = gActors[actor_index].stateUpper + 1;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].var_158 += 1;

            if (!(gActors[sp62].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].rotateZ = 80.0f;
            }
            else {
                gActors[actor_index].rotateZ = 100.0f;
            }

            func_801A02A0_71E8C0(actor_index, 0);
            gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;

            if (sp62 == 0 &&
                (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE) &&
                gPlayerData.unk_0C[1] > 0 &&
                gActors[actor_index].var_160_s8[0] == 0 &&
                YellowGem_GetFlag(gCurrentStage) == 0) {
                SpawnGemActor(actor_index, 0x32, 0);
                gActors[actor_index].var_160_s8[0] = 1;
            }
        }
        else {
            gActors[actor_index].unk_140_u8[0] = 0;

            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].posY.raw += FIXED_UNIT(16);
                gActors[actor_index].unk_140_u8[0] = gActors[sp62].unk_140_u8[0];
                gActors[actor_index].damage = 0x32;
                gActors[actor_index].hitType = HITTYPE_2;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }

            gActors[actor_index].flags &= 0xFF3CFFFF;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
            gActors[actor_index].state = 2;
        }
        break;
    }

    MarinaEffect_Update(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A2028_720648(u16 actor_index) {
    Actor* temp_v0;
    s32 temp_a1;
    s32 position[3];
    s16* var_a0;
    u16 var_a1;
    var_a1 = (u16)(s32)gActors[actor_index].unk_14C;
    gActors[actor_index].health = 0xA;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && gActors[actor_index].stateLower != 3) {
        func_80058924(actor_index);
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].state = 3;
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].var_160_s8[0] = 0;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8;
        gActors[actor_index].graphicIndex = 0x1D6;
        gActors[actor_index].unk_180 = 0;
        gActors[actor_index].grabType = 1;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].unk_0CE = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].state = 1;
        // fallthrough
    case 1:
        temp_v0 = &gActors[var_a1];

        if (temp_v0->unk_170_u16[1] != 0) {
            if ((temp_v0->graphicIndex & 0xFF00) == 0x6000) {
                var_a0 = &D_801A3F2C_72254C[(temp_v0->graphicIndex & 0xFF) * 5];
            }
            else {
                var_a0 = &D_801A41FC_72281C[(temp_v0->graphicIndex & 0xFF) * 5];
            }

            if (!(temp_v0->flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].posX.whole = var_a0[0] + temp_v0->posX.whole;
                gActors[actor_index].rotateZ = (f32)var_a0[3];
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].posX.whole = temp_v0->posX.whole - var_a0[0];
                gActors[actor_index].rotateZ = (f32)-var_a0[3];
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].posY.whole = var_a0[1] + temp_v0->posY.whole;
            gActors[actor_index].posZ.whole = var_a0[2] + temp_v0->posZ.whole;
            gActors[actor_index].velocityX.raw = temp_v0->velocityX.raw;
            gActors[actor_index].velocityY.raw = temp_v0->velocityY.raw;
            gActors[actor_index].velocityZ.raw = temp_v0->velocityZ.raw;
            gActors[actor_index].graphicIndex = (u16)var_a0[4];
        }
        break;

    case 2:
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            if (func_80049040(actor_index) == 0) {
                if (gActors[actor_index].stateUpper == 0) {
                    gActors[actor_index].rotateZ = (f32)Math_AbsS32_2((s32)gActors[actor_index].rotateZ % 360);

                    if (gActors[actor_index].rotateZ >= 270.0f) {
                        gActors[actor_index].stateUpper = 1;
                    }
                    else if (gActors[actor_index].rotateZ >= 180.0f) {
                        gActors[actor_index].stateUpper = 2;
                    }
                    else if (gActors[actor_index].rotateZ >= 90.0f) {
                        gActors[actor_index].stateUpper = 3;
                    }
                    else {
                        gActors[actor_index].stateUpper = 4;
                    }
                }

                temp_a1 = gActors[actor_index].stateUpper;

                if (temp_a1 == 1) {
                    gActors[actor_index].rotateZ -= 5.0f;

                    if (gActors[actor_index].rotateZ <= 270.0f) {
                        gActors[actor_index].rotateZ = 270.0f;
                        gActors[actor_index].stateUpper = 5;
                    }
                }
                else if (temp_a1 == 2) {
                    gActors[actor_index].rotateZ += 5.0f;

                    if (gActors[actor_index].rotateZ >= 270.0f) {
                        gActors[actor_index].rotateZ = 270.0f;
                        gActors[actor_index].stateUpper = 5;
                    }
                }
                else if (temp_a1 == 3) {
                    gActors[actor_index].rotateZ -= 5.0f;

                    if (gActors[actor_index].rotateZ <= 90.0f) {
                        gActors[actor_index].rotateZ = 90.0f;
                        gActors[actor_index].stateUpper = 5;
                    }
                }
                else if (temp_a1 == 4) {
                    gActors[actor_index].rotateZ += 5.0f;

                    if (gActors[actor_index].rotateZ >= 90.0f) {
                        gActors[actor_index].rotateZ = 90.0f;
                        gActors[actor_index].stateUpper = 5;
                    }
                }

                if (gActors[actor_index].stateUpper == 5) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
                    temp_v0 = &gActors[var_a1];

                    if ((temp_v0->flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) &&
                        Math_AbsS32_2(gActors[actor_index].posX.whole - temp_v0->posX.whole) < 0x20) {
                        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8);
                        gActors[actor_index].state = 1;
                    }
                }
            }
        }
        else {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].rotateZ += 7.0f;
            }
            else {
                gActors[actor_index].rotateZ -= 7.0f;
            }

            if (gActors[actor_index].stateUpper != 0) {
                if (gActors[actor_index].velocityY.raw <= 0) {
                    gActors[actor_index].graphicIndex = 0x180E;
                }

                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].rotateZ += 10.0f;
                }
                else {
                    gActors[actor_index].rotateZ -= 10.0f;
                }
            }

            if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK0 | ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                gActors[actor_index].velocityX.raw = (s32)-gActors[actor_index].velocityX.raw / 2;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    position[0] = (s32)(gActors[actor_index].posX.whole + gActors[gActors[actor_index].parentIndex].posX.whole) / 2;
                    position[1] = (s32)(gActors[actor_index].posY.whole + gActors[gActors[actor_index].parentIndex].posY.whole) / 2;
                    position[2] = (s32)gActors[gActors[actor_index].parentIndex].posZ.whole;
                    func_8005A1A4(actor_index, position, 1.5f);
                    Sound_PlaySfx(SFX_0058);
                }
            }

            if (func_800490BC(actor_index, -1, -1) != 0) {
                if (gActors[actor_index].stateUpper == 0) {
                    gActors[actor_index].velocityX.raw = (s32)gActors[actor_index].velocityX.raw / 2;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                    gActors[actor_index].hitboxBX0 = -0xC;
                    gActors[actor_index].hitboxBX1 = 0xC;
                    gActors[actor_index].hitboxBY0 = 6;
                    gActors[actor_index].hitboxBY1 = -6;
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
                    gActors[actor_index].stateUpper = 1;
                }
                else {
                    gActors[actor_index].graphicIndex = 0x1810;
                    gActors[actor_index].var_150 = 0;
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].stateUpper = 0;
                }
            }
        }
        break;

    case 3:
        var_a1 = gActors[actor_index].parentIndex;

        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].hitboxBX0 = -6;
            gActors[actor_index].hitboxBX1 = 6;
            gActors[actor_index].hitboxBY0 = 0xC;
            gActors[actor_index].hitboxBY1 = -0xC;
            gActors[actor_index].graphicIndex = 0x1808;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].stateUpper++;
            gActors[actor_index].rotateZ = 0.0f;
        }

        if (!(gActors[var_a1].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;

            if (var_a1 == 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE)) {
                temp_a1 = gActors[actor_index].var_160_s8[0];

                if (temp_a1 < 5 && gPlayerData.unk_0C[1] >= 0x46) {
                    SpawnGemActor(actor_index, 0x31U, 0U);
                    gActors[actor_index].var_160_s8[0] += 1;
                }

                temp_a1 = gActors[actor_index].var_160_s8[0];
                if (temp_a1 < 0xA && gPlayerData.unk_0C[1] >= 0xC8) {
                    SpawnGemActor(actor_index, 0x31U, 0U);
                    gActors[actor_index].var_160_s8[0] += 1;
                }

                temp_a1 = gActors[actor_index].var_160_s8[0];
                if (temp_a1 < 0x14 && gPlayerData.unk_0C[1] >= 0x1F4) {
                    SpawnGemActor(actor_index, 0x33U, 0U);
                    gActors[actor_index].var_160_s8[0] += 0x14;
                }
            }
        }
        else {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_THROWN) {
                gActors[actor_index].hitboxAX0 = -0xC;
                gActors[actor_index].hitboxAX1 = 0xC;
                gActors[actor_index].hitboxAY0 = 0xC;
                gActors[actor_index].hitboxAY1 = -0xC;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].damage = 0x1E;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }

            gActors[actor_index].hitboxBX0 = -8;
            gActors[actor_index].hitboxBY1 = -8;\
            gActors[actor_index].graphicIndex = 0x180C;\
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK22;\
            gActors[actor_index].hitboxBX1 = 8;\
            gActors[actor_index].hitboxBY0 = 8;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK8;
            gActors[actor_index].state = 2;
        }
        break;
    }

    if (gActors[actor_index].iFrames != 0) {
        gActors[actor_index].iFrames--;
    }

    MarinaEffect_Update(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A29D4_720FF4(u16 actor_index, u16 arg1) {
    gActors[actor_index].unk_12E_u8 |= 0x81;

    if (gActors[actor_index].stateUpper == 0) {
        func_8005D370(actor_index, 60);
        gActors[actor_index].unk_140_u8[0] = gActors[actor_index].unk_140_u16[1] = 4;

        if (gActors[actor_index].posX.whole < gActors[arg1].posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && gPlayerData.unk_00[1].raw > FIXED_UNIT(32)) {
            gPlayerData.unk_00[1].raw = FIXED_UNIT(32);
        }

        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].stateUpper = 1;
    }

    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK14)) && func_8005D418(actor_index)) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK14);
    }

    if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK14))) {
        func_8005D370(actor_index, 60);
    }

    func_80052CD0(actor_index, arg1);

    if (gActors[arg1].stateLower != 8) {
        if (func_80052A6C(actor_index, arg1) == 1) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                if (gPlayerData.unk_10 > 0 && gPlayerData.unk_10 < 8) {
                    gActors[arg1].flags_098 &= ~ACTOR_FLAG3_SHAKE;
                }
            }
            else if (gPlayerData.unk_10 >= 9 && gPlayerData.unk_10 < 16) {
                gActors[arg1].flags_098 &= ~ACTOR_FLAG3_SHAKE;
            }
        }

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
}

void func_801A2CD0_7212F0(u16 actor_index, u16 arg1) {
    Actor* temp_t0;
    s32* var_v0;

    gActors[actor_index].unk_12E_u8 |= 1;

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

        if (func_8004F35C(actor_index, &gActors[actor_index].var_150_u32)) {
            temp_t0 = &gActors[arg1];
            var_v0 = D_801A4280_7228A0;
            temp_t0->unk_0F8.raw = var_v0[gActors[actor_index].unk_140_u8[0]];
            temp_t0->unk_0FC.raw = var_v0[gActors[actor_index].unk_140_u8[0] + 1];
            temp_t0->unk_140_u8[0] = gActors[actor_index].unk_140_u8[0];
            func_8004F5B0(actor_index);
            func_8004F614(actor_index, temp_t0->unk_0F8.raw, temp_t0->unk_0FC.raw, 50);

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                temp_t0->unk_0FC.raw = 0;
            }
            else {
                temp_t0->unk_0FC.raw = 1;
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
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
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

    default:
        break;
    }
}

void func_801A2F14_721534(u16 actor_index, s32 arg1) {
    gActors[actor_index].unk_12E_u8 |= 0x41;

    if (gActors[actor_index].var_150 != 0) {
        gActors[actor_index].var_150--;
    }

    if (gActors[actor_index].var_150 == 0) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6), Marina_GetMoveSpeed(0x13));
    }

    if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].unk_170 = 0x95;
            }
            else {
                gActors[actor_index].unk_170 = 0x94;
            }
        }
        else if (gActors[actor_index].velocityX.raw > 0) {
            gActors[actor_index].unk_170 = 0x95;
        }
        else {
            gActors[actor_index].unk_170 = 0x94;
        }

        gActors[actor_index].unk_0F8.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].unk_0FC.raw += FIXED_UNIT(3);
        gActors[actor_index].iFrames = 60;
        gActors[actor_index].state = 0x31;
    }
    else {
        gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
        gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;

        if (func_800490BC(actor_index, -1, -1)) {
            if (gActors[actor_index].var_15C == 0) {
                gActors[actor_index].unk_170 = 0x9A;
            }
            else {
                gActors[actor_index].unk_170 = 0x9B;
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_17C = 5;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].var_110 = 0.0f;
            gActors[actor_index].unk_114 = 0.0f;
            gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].stateUpper = 2;
            gActors[actor_index].stateLower = 0x31;
        }
    }
}

void func_801A30C8_7216E8(u16 actor_index, u16 arg1) {
    func_80058924(actor_index);
    gActors[actor_index].velocityX.raw = (f64)gActors[arg1].velocityX.raw;

    if (!(gActors[arg1].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].posX.whole = gActors[arg1].posX.whole + gActors[arg1].hitboxBX1 - gActors[actor_index].hitboxBX0;

        if (!(gActors[arg1].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].unk_170 = 0x95;
        }
        else {
            gActors[actor_index].unk_170 = 0x94;
        }
    }
    else {
        gActors[actor_index].posX.whole = gActors[arg1].posX.whole + gActors[arg1].hitboxBX0 - gActors[actor_index].hitboxBX1;

        if (!(gActors[arg1].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].unk_170 = 0x94;
        }
        else {
            gActors[actor_index].unk_170 = 0x95;
        }
    }

    if (func_8005D338(actor_index) == 0x94) {
        gActors[actor_index].var_15C = 0;
    }

    if (func_8005D338(actor_index) == 0x95) {
        gActors[actor_index].var_15C = 1;
    }

    gActors[actor_index].velocityY.raw = FIXED_UNIT(0.25);
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK22;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].iFrames = 4;
    gActors[actor_index].var_150 = 30;
    gActors[actor_index].state = 0x36;
}

void func_801A3264_721884(u16 actor_index, s32 arg1) {
    s16 sp24[2];
    s16 var_v0 = 48;
    Actor* temp_v0;

    gActors[actor_index].unk_12E_u8 |= 0x40;

    switch (gMarinaAnim.state) {
    case 0:
        if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
            Marina_DropActor(actor_index, gActors[actor_index].parentIndex);

            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK23)) {
                gActors[actor_index].state = 3;
            }
            else {
                gActors[actor_index].state = 22;
            }
        }

        if (func_8005D338(actor_index) == 1 && ++gMarinaAnim.timer >= 50) {
            temp_v0 = &gActors[var_v0];
            if (gScreenPosCurrentX.whole + temp_v0->posX.whole > D_800D2924 - 128) {
                gMarinaAnim.state = 5;
            }
            else {
                gMarinaAnim.state = 1;
            }
        }
        break;

    case 1:
        if (gActors[actor_index].posX.whole < gActors[var_v0].posX.whole + 80) {
            D_801370CC = gButton_DRight;
        }

        if (gActors[actor_index].posX.whole > gActors[var_v0].posX.whole + 96) {
            D_801370CC = gButton_DLeft;
        }

        if (D_801370CC == 0) {
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
        if (gActors[actor_index].posX.whole > gActors[var_v0].posX.whole - 80) {
            D_801370CC = gButton_DLeft;
        }

        if (gActors[actor_index].posX.whole < gActors[var_v0].posX.whole - 96) {
            D_801370CC = gButton_DRight;
        }

        if (D_801370CC == 0) {
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
            gActors[actor_index].velocityX.raw = Marina_GetMoveSpeed(MARINAMOVE_WALKTARGET) / 2;
            gActors[actor_index].velocityY.raw = Marina_GetMoveSpeed(MARINAMOVE_15);
            gActors[actor_index].unk_170 = 0x24;
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23);\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.flags |= PLAYERDATA_UNBOUND;
            gActors[actor_index].state = 57;
            gMarinaAnim.state = 11;
        }
        break;

    case 11:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6), Marina_GetMoveSpeed(MARINAMOVE_19) / 4);
        if (gActors[actor_index].velocityY.raw <= FIXED_UNIT(0.5)) {
            gMarinaAnim.timer = 10;
            gMarinaAnim.state = 12;
        }
        break;

    case 12:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, Marina_GetMoveSpeed(MARINAMOVE_0) / 2);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, Marina_GetMoveSpeed(MARINAMOVE_0) / 4);

        if (gActors[actor_index].velocityX.raw != 0 || gActors[actor_index].velocityY.raw != 0 || --gMarinaAnim.timer > 0) {
            return;
        }

        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_170 = 0x5B;
        MarinaEffect_Set(actor_index, MARINAEFF_DASH);
        gPlayerData.unk_10 = gActors[actor_index].unk_180_u8[2] = 4;
        gActors[actor_index].velocityX.raw = Marina_GetMoveSpeed(MARINAMOVE_5);
        Sound_PlaySfx(SFX_0074);
        gMarinaAnim.state = 13;
        return;

    case 13:
        temp_v0 = &gActors[actor_index];
        gActors[actor_index].velocityX.raw = Marina_GetMoveSpeed(MARINAMOVE_5);

        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            sp24[1] = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 + 8;
        }
        else {
            sp24[1] = temp_v0->hitboxBX0 + temp_v0->posX.whole - 8;
        }

        sp24[0] = gActors[actor_index].posY.whole + 24;

        for (var_v0 = 0; var_v0 < 4; var_v0++) {
            func_80012044(sp24[1], sp24[0], 0);
            sp24[0] -= 16;
        }

        if (gActors[actor_index].unk_180_u8[0] >= 12) {
            gActors[actor_index].unk_180_u8[0] = 4;
        }
        break;
    }
}
