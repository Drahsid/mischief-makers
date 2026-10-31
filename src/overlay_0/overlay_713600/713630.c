// BUG: incorrect prototype!
#define func_80012AB4_ARGS s32 arg0, s32 arg1
#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "stage_tilemap.h"

extern u16* D_800D18F8[];
extern u16* D_800D19A8[];
extern u16 D_800DCE7C[];
extern u16 D_800DD07C[];
extern u16 D_800DD27C[];
extern s16 D_800E15AC[];
extern s16 D_800E2584[];
extern s16 D_800E2598[];

void func_801941A8_7156D8(u16 actor_index);
void func_80194304_715834(u16 actor_index);
void func_801943D8_715908(u16 actor_index);
void func_801944E0_715A10(u16 actor_index);
void func_801946CC_715BFC(u16 actor_index);

u16* D_80197C20_719150[] = {
    NULL, D_800DCE7C, D_800DD07C, D_800DD27C,
};

u16 D_80197C30_719160[] = {
//  graphic palette
    0x302E, 0,
    0x300E, 0,
    0x3010, 0,
    0x300E, 1,
    0x3010, 1,
    0x300E, 2,
    0x3010, 2,
    0x300E, 3,
    0x3010, 3,
    0x304C, 0,
    0x3004, 0,
    0x3006, 0,
    0x3012, 0,
    0x305C, 0,
    0x306E, 0,
    0x0246, 0,
};

ActorFunc D_80197C70_7191A0[] = {
    func_801941A8_7156D8,
    func_80194304_715834,
    func_801943D8_715908,
    func_801944E0_715A10,
    func_801946CC_715BFC,
};

s16 D_80197C84_7191B4[] = {
    -16, 0, 16,
    -16, 0, 16,
    -16, 0, 16,
};

s16 D_80197C98_7191C8[] = {
    16, 16, 16,
    0, 0, 0,
    -16, -16, -16,
};

s16 D_80197CAC_7191DC[] = { -2, 2, -2, 2 };
s16 D_80197CB4_7191E4[] = { 5, 5, -2, -2 };
u16 D_80197CBC_7191EC[] = { 1, 50, 100, 150 };

void func_80192100_713630(u16 actor_index) {
    gActors[actor_index].graphicIndex = D_80197C30_719160[gActors[actor_index].var_0D8 + 0];
    gActors[actor_index].palette_18C = D_80197C20_719150[D_80197C30_719160[gActors[actor_index].var_0D8 + 1]];
}

void func_80192168_713698(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        func_80192100_713630(actor_index);
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

void func_801921DC_71370C(u16 actor_index) {
    if (gActors[actor_index].state != 0 && gActors[actor_index].state != 0x100) {
        gActors[actor_index].unk_174++;
        if (gActors[actor_index].health <= 0 || gActors[actor_index].unk_174 >= 0x259) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            return;
        }

        gActors[actor_index].posZ.raw = FIXED_UNIT(-0.5);
        func_8002C6E4(actor_index);
        if (Clanpot_AddItemCheck3(actor_index, CLANPOT_ACTORICON, 0, 0, 0x2608) >= 0) {
            gActors[actor_index].state = 0x100;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
        else if ((gActors[actor_index].iFrames > 0 && gActors[actor_index].unk_174 % 10 == 0) ||
            (gActors[actor_index].unk_174 >= 481 && gActors[actor_index].unk_174 % 10 == 0)) {
            gActors[actor_index].colorR = 0xC0;
        }
    }

    if ((gActors[actor_index].var_150 & 0x100000) && gActors[actor_index].parentIndex == 0) {
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
    }

    switch (gActors[actor_index].state) {
    case 0x0:
        func_80192100_713630(actor_index);
        func_8002C5C4(actor_index, gActors[actor_index].graphicIndex, 8, 1.0f, (s32)gActors[actor_index].palette_18C, 0x3000);
        gActors[actor_index].health = 5;
        gActors[actor_index].unk_164 |= 1;
        gActors[actor_index].hitType = HITTYPE_2;
        break;
    case 0x10:
    case 0x20:
    case 0x30:
    case 0x40:
        break;
    case 0x100:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state = 0x30;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].unk_174 = 0;
        }
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
}

f32 func_80192430_713960(f32 arg0) {
    if (arg0 < 0.0f) {
        arg0 = -arg0;
    }

    if (arg0 > FIXED_UNIT(4)) {
        arg0 = FIXED_UNIT(4);
    }

    return FROM_FIXED(arg0) / 9.0f;
}

void func_80192478_7139A8(u16 actor_index) {
    gActors[actor_index].state = 0x100;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    Actor_SetColorRgb(actor_index, 0x7F);
    Sound_PlaySfxAtActor2(SFX_BLING, actor_index);
    gActors[actor_index].scaleX = 1.5f;
    gActors[actor_index].rotateZ = 0.0f;
    SpawnParticle_RingSparkle(
        actor_index, 0, 1.0f,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 1
    );
}

void func_80192530_713A60(u16 actor_index) {
    if (!(gActors[actor_index].var_0D8 & 1) && gActors[actor_index].unk_174 >= 16) {
        func_80192478_7139A8(actor_index);
    }
}

void func_801925A4_713AD4(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_MINEROUND;
        gActors[actor_index].palette_18C = D_800D18F8[(gActors[actor_index].var_0D8 & 0x300) / 256];
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

void func_80192640_713B70(u16 actor_index) {
    u16 particle_index;

    if (Clanpot_AddItemCheck3(actor_index, CLANPOT_NEWITEM | CLANPOT_UNSETFLAGS, 0, 0, GINDEX_MINEROUND) >= 0) {
        return;
    }

    gActors[actor_index].posZ.raw = FIXED_UNIT(1);
    func_8002C6E4(actor_index);
    if (gActors[actor_index].state != 0 && gActors[actor_index].health <= 0) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
        return;
    }

    if (gActors[actor_index].var_150 & 0x100000) {
        gActors[actor_index].scaleX = 1.4f;
        if (gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_0D8 = gActors[actor_index].var_0D8;
        func_8002C5C4(actor_index, GINDEX_MINEROUND, 8, 0.8f, 0, 0x3000);
        gActors[actor_index].health = 1;
        gActors[actor_index].unk_164 |= 1;
        gActors[actor_index].hitType = HITTYPE_23;
        break;
    case 0x10:
        gActors[actor_index].unk_174++;
        func_80192530_713A60(actor_index);
        break;
    case 0x40:
        if (gActors[actor_index].var_150 & 0x80000000) {
            if ((gActors[actor_index].var_150 & 0x01070000) || gActors[actor_index].unk_174 >= 19) {
                func_8002D040(actor_index, 0);
            }
            else {
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                gActors[actor_index].unk_174++;
                if (!(gActiveFrames & 1)) {
                    particle_index = func_8003F05C(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
                    if (particle_index) {
                        gActors[particle_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 4;
                        gActors[particle_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 4;
                    }
                }
            }
        }
        break;

    case 0x20:
        gActors[actor_index].unk_174 = 0;
        break;
    case 0x30:
        gActors[actor_index].unk_174 = 0;
        gActors[actor_index].var_0D8 &= ~1;
        break;
    case 0x100:
        if (gActors[actor_index].colorR == 0) {
            func_8002D040(actor_index, 0);
            return;
        }
        break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10);
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 8);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].scaleY = gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.8f, 0.1f);
}

void func_80192950_713E80(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].rotateZ += 28.0f;
    }
    else {
        gActors[actor_index].rotateZ -= 28.0f;
    }
}

void func_801929C8_713EF8(u16 actor_index) {
    func_800340CC(actor_index, 6, 0);
    gActors[actor_index].flags = ACTOR_FLAG_NONE;
    Sound_StopSfx(SFX_005F);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        if (!(gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_UNK15)) {
            Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
            return;
        }

        Sound_PlaySfxAtActor2(SFX_00E2, actor_index);
        return;
    }

    Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index);
}

void func_80192AB8_713FE8(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(
        D_800E15AC,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole
    );
    if (new_actor_index) {
        gActors[new_actor_index].var_154 = -32;
        gActors[new_actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[new_actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
        gActors[new_actor_index].var_158 = gActors[actor_index].velocityX.raw / 16;
        gActors[new_actor_index].var_15C = gActors[actor_index].velocityY.raw / 16;
        gActors[new_actor_index].unk_174 = -16;
        gActors[new_actor_index].unk_178 = -24;
        gActors[new_actor_index].unk_17C = -128;
    }

    gActors[actor_index].flags = ACTOR_FLAG_NONE;
}

void func_80192BD8_714108(u16 actor_index) {
    s32 angle;
    s32 position_x;
    s32 position_y;
    u16 index;
    u16 new_actor_index;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        angle = (s32)(f32)DEG_TO_INDEX(gActors[actor_index].rotateZ) & COS_MASK;
    }
    else {
        angle = (s32)(f32)DEG_TO_INDEX(gActors[actor_index].rotateZ) & COS_MASK;
    }

    position_x = COS(angle) * FIXED_UNIT(8.0f);
    position_y = SIN(angle) * FIXED_UNIT(8.0f);
    position_x += gActors[actor_index].posX.raw;
    position_y += gActors[actor_index].posY.raw;
    for (index = 1; index < 4; index++) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            0x1EC,
            FROM_FIXED(position_x),
            FROM_FIXED(position_y),
            gActors[actor_index].posZ.whole - index + 1
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
            gActors[new_actor_index].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ^ ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX = 1.0 - index * 0.2;
            gActors[new_actor_index].colorA = (gActiveFrames & 1) * 0x7F - index * 0x18 + 0x90;
            Actor_SetColorRgb(new_actor_index, gActors[new_actor_index].colorA / 2);
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[new_actor_index].var_160 = TO_FIXED(angle);
                angle = (angle + COS_DEG_45 / 2) & COS_MASK;
            }
            else {
                gActors[new_actor_index].var_160 = TO_FIXED(angle) + FIXED_UNIT(COS_DEG_180);
                angle = (angle - COS_DEG_45 / 2) & COS_MASK;
            }

            gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
            gActors[new_actor_index].unk_148 = 0.0f;
            position_x = COS(angle) * FIXED_UNIT(8.0f) + gActors[actor_index].posX.raw;
            position_y = SIN(angle) * FIXED_UNIT(8.0f) + gActors[actor_index].posY.raw;
        }
    }
}

void func_80192FF8_714528(u16 actor_index) {
    if (gActors[actor_index].state) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            if (gActors[actor_index].hitByType != HITTYPE_19) {
                if (gActors[actor_index].hitByType != HITTYPE_23) {
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                    gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                }
            }
            else {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                return;
            }
        }

        if (gActors[actor_index].health <= 0 || gActors[actor_index].damage == 0) {
            func_801929C8_713EF8(actor_index);
            return;
        }

        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && gActors[actor_index].state != 3) {
            gActors[actor_index].state = 3;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12);
            Sound_StopSfx(SFX_005F);
            func_80029134(actor_index);
            if (gActors[actor_index].parentIndex == 0) {
                Sound_PlaySfxAtActor2(SFX_POP_00C5, actor_index);
            }
        }
        else {
            gActors[actor_index].var_150++;
            if (gActors[actor_index].var_150 >= 151) {
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                func_8003F7A0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
                return;
            }

            if (Clanpot_AddItemCheck3(actor_index, CLANPOT_NEWITEM | CLANPOT_UNSETFLAGS, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
                return;
            }
        }

        if ((gActors[actor_index].state == 1 || gActors[actor_index].state == 2) &&
            gActors[actor_index].var_150 >= 121 && gActors[actor_index].var_150 % 10 == 0) {
            gActors[actor_index].colorR = 0xC0;
        }

        gActors[actor_index].posZ.raw = FIXED_UNIT(6);
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
        gActors[actor_index].graphicIndex = GINDEX_SHURIKEN;
        gActors[actor_index].unk_0CE = 5;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].hitFlags = HITFLAG_2;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].scaleX = 0.8f;
        gActors[actor_index].scaleY = 0.8f;
        Actor_SetHitboxB(actor_index, 8);
        gActors[actor_index].health = 1;
        gActors[actor_index].damage = 30;
        gActors[actor_index].var_150 = 0;
        break;

    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        break;
    case 2:
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.875)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
        }

        if ((gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
            (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
            gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.5;
            gActors[actor_index].velocityY.raw = (f32)gActors[actor_index].velocityY.raw * 0.5;
        }

        if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            gActors[actor_index].velocityY.raw = 0;
        }

        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
                gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.5;
            }
            else {
                gActors[actor_index].state = 1;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK17;
                gActors[actor_index].velocityY.raw = 0;
            }
        }

        func_8002C218(actor_index);
        break;

    case 3:
        gActors[actor_index].var_150 = 0;
        switch (func_800291AC(actor_index, 4, ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17,
            2, ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17)) {
        case 0:
            break;
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            break;
        case 2:
            Sound_PlaySfxAtActor2(SFX_005F, actor_index);
            if (gActors[actor_index].parentIndex == 0) {
                Actor_SetHitboxA(actor_index, 12);
            }
            else {
                Actor_SetHitboxA(actor_index, 1);
            }

            gActors[actor_index].var_160 = 0;
            gActors[actor_index].unk_164 = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_168 = gActors[actor_index].velocityY.raw;
            gActors[actor_index].unk_16C = gActors[actor_index].velocityX.raw / 16;
            gActors[actor_index].unk_170 = gActors[actor_index].velocityY.raw / 16;
            if (gActors[actor_index].unk_16C < 0) {
                gActors[actor_index].unk_16C = -gActors[actor_index].unk_16C;
            }

            if (gActors[actor_index].unk_170 < 0) {
                gActors[actor_index].unk_170 = -gActors[actor_index].unk_170;
            }

            if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
                gActors[actor_index].unk_178 = 1;
            }
            else {
                gActors[actor_index].unk_178 = 0;
            }

            if (gActors[actor_index].velocityX.raw < 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            break;
        }
        break;

    case 4:
        if (gActors[actor_index].unk_178) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].unk_164, gActors[actor_index].unk_16C);
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].unk_168, gActors[actor_index].unk_170);
            if (gActors[actor_index].var_160 > 0) {
                gActors[actor_index].var_160--;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            if (gActors[actor_index].unk_178) {
                gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.4;
                gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.4;
                gActors[actor_index].unk_164 = (f32)gActors[actor_index].unk_164 * 0.8;
                gActors[actor_index].unk_168 = (f32)gActors[actor_index].unk_168 * 0.8;
                gActors[actor_index].var_160 = 4;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].damage--;
            }
            else {
                func_801929C8_713EF8(actor_index);
                return;
            }
        }

        if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            if (gActors[actor_index].velocityX.raw < FIXED_UNIT(1) && gActors[actor_index].velocityX.raw > FIXED_UNIT(-1)) {
                func_801929C8_713EF8(actor_index);
                return;
            }

            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_168 = 0;
        }

        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            if (gActors[actor_index].velocityX.raw < FIXED_UNIT(1) && gActors[actor_index].velocityX.raw > FIXED_UNIT(-1)) {
                func_801929C8_713EF8(actor_index);
                return;
            }

            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_168 = 0;
        }

        if ((gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
            (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(1) && gActors[actor_index].velocityY.raw > FIXED_UNIT(-1)) {
                func_801929C8_713EF8(actor_index);
                return;
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_164 = 0;
        }

        func_80192950_713E80(actor_index);
        break;
    }

    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801939AC_714EDC(u16 actor_index) {
    gActors[actor_index].unk_174 = -1;
    Actor_SetColorRgb(actor_index, 0x7F);
    Sound_PlaySfxAtActor2(SFX_BLING, actor_index);
    gActors[actor_index].scaleX = 1.5f;
    SpawnParticle_RingSparkle(
        actor_index,
        0,
        1.2f,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 1
    );
}

void func_80193A58_714F88(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_MINEROUND;
        gActors[actor_index].palette_18C = D_800D18F8[(gActors[actor_index].var_0D8 & 0x300) / 256];
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

void func_80193AF4_715024(u16 actor_index) {
    u16 particle_index;

    if (Clanpot_AddItemCheck3(actor_index, CLANPOT_NEWITEM | CLANPOT_UNSETFLAGS, 0, 0, GINDEX_BOMB_ELLIPSE) >= 0) {
        return;
    }

    gActors[actor_index].posZ.raw = FIXED_UNIT(1);
    func_8002C6E4(actor_index);
    if (gActors[actor_index].state != 0 && gActors[actor_index].health <= 0) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
        return;
    }

    if (gActors[actor_index].var_150 & 0x100000) {
        gActors[actor_index].unk_174 = 0;
        gActors[actor_index].scaleX = 1.2f;
        if (gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_JIGGLE_008F, actor_index);
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_0D8 = gActors[actor_index].var_0D8;
        func_8002C5C4(actor_index, GINDEX_BOMB_ELLIPSE, 8, 1.2f, 0, 0x2800);
        gActors[actor_index].health = 1;
        gActors[actor_index].unk_164 |= 1;
        gActors[actor_index].hitType = HITTYPE_23;
        break;
    case 0x10:
        gActors[actor_index].state = 0x30;
        gActors[actor_index].velocityX.raw /= 4;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
        break;
    case 0x40:
        if (gActors[actor_index].var_150 & 0x80000000) {
            gActors[actor_index].unk_174--;
            if (gActors[actor_index].var_150 & 0x01070000) {
                gActors[actor_index].unk_174 = -1;
                gActors[actor_index].colorR = 0x10;
                break;
            }

            if (!(gActiveFrames & 1)) {
                particle_index = func_8003F05C(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
                if (particle_index) {
                    gActors[particle_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 4;
                    gActors[particle_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 4;
                }
            }
        }
        else if (gActiveFrames % 6 == 0) {
            func_8003EDF4(0.7f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole,
                gActors[actor_index].posZ.whole - 1);
        }
        // fall through
    case 0x20:
        if (!(gActors[actor_index].var_150 & 0x80000000) && !(gActors[actor_index].var_0D8 & 1)) {
            if (gActors[actor_index].var_150 & 0x01050000) {
                gActors[actor_index].rotateZ = 0.0f;
                func_801939AC_714EDC(actor_index);
            }
        }
        else if (gActors[actor_index].state == 0x20) {
            gActors[actor_index].var_150 &= ~0x80000000;
        }
        break;
    case 0x30:
        gActors[actor_index].var_0D8 &= ~1;
        gActors[actor_index].unk_174 = 22;
        break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10);
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x10, 8);
    Actor_SetColorRgb(actor_index, gActors[actor_index].colorR);
    gActors[actor_index].scaleY = gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.1f);
    if (gActors[actor_index].unk_174 < 0 && gActors[actor_index].colorR == 0x10) {
        func_8002D040(actor_index, 0);
    }
}

s32 func_80193E88_7153B8(u16 actor_index) {
    if ((gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
        (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
        Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index);
        gActors[actor_index].state = 2;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        gActors[actor_index].velocityY.raw /= 2;
        Actor_SetHitboxB(actor_index, 8);
        return 1;
    }

    return 0;
}

s32 func_80193F84_7154B4(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw < -1 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        Sound_PlaySfxAtActor2(SFX_DASH_0027, actor_index);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
        gActors[actor_index].rotateZ = 180.0f;
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
            gActors[actor_index].state = 2;
            Actor_SetHitboxB(actor_index, 8);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK16);
            gActors[actor_index].velocityX.raw /= 2;
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
        }
        else {
            gActors[actor_index].state = 1;
            Actor_SetHitboxB(actor_index, 8);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK17);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_14C = 0.0f;
            gActors[actor_index].rotateX = 0.0f;
        }

        return 1;
    }

    return 0;
}

s32 func_801940F0_715620(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 3;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK16);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        func_80029134(actor_index);
        if (gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }

        return 1;
    }

    return 0;
}

void func_801941A8_7156D8(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
    gActors[actor_index].graphicIndex = GINDEX_BOOMERANG;
    gActors[actor_index].unk_0CE = 1;
    gActors[actor_index].hitFlags = HITFLAG_1;
    gActors[actor_index].hitType = HITTYPE_0;
    gActors[actor_index].damage = 20;
    Actor_SetHitboxA(actor_index, 7);
    Actor_SetHitboxB(actor_index, 8);
    if ((u16)gActors[actor_index].var_110 & 1) {
        gActors[actor_index].unk_130 = 900.0f;
    }

    if (func_801940F0_715620(actor_index) == 0) {
        gActors[actor_index].state = 1;
    }
}

void func_80194304_715834(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTX;
    gActors[actor_index].rotateX = Math_ApproachF32(gActors[actor_index].rotateX, 50.0f, 10.0f);
    gActors[actor_index].hitboxBY1 = Math_ApproachS32(gActors[actor_index].hitboxBY1, 0, 1);
    gActors[actor_index].posY.whole--;
    if (func_801940F0_715620(actor_index) == 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6)) {
        gActors[actor_index].state = 2;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    }
}

void func_801943D8_715908(u16 actor_index) {
    if (!(gActiveFrames & 3)) {
        gActors[actor_index].unk_14C = Math_ApproachS32((s32)gActors[actor_index].unk_14C, 0, 1);
    }

    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.015625));
    if (func_801940F0_715620(actor_index) != 0) {
        return;
    }

    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
    }

    func_80193F84_7154B4(actor_index);
    func_80193E88_7153B8(actor_index);
}

void func_801944E0_715A10(u16 actor_index) {
    gActors[actor_index].rotateZ = 0.0f;
    switch (func_800291AC(actor_index, 4, ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17,
        2, ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17)) {
    case 0:
        break;
    case 3:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
        break;
    case 2:
        if (gActors[actor_index].parentIndex == 0) {
            Actor_SetHitboxA(actor_index, 0xC);
        }
        else {
            Actor_SetHitboxA(actor_index, 1);
        }

        if (gActors[actor_index].hitByType == HITTYPE_27) {
            gActors[actor_index].unk_0F8.raw = (f32)gActors[actor_index].unk_0F8.raw * 1.5;
            gActors[actor_index].unk_0FC.raw = (f32)gActors[actor_index].unk_0FC.raw * 1.5;
        }

        gActors[actor_index].var_158 = -gActors[actor_index].velocityX.raw / 16;
        gActors[actor_index].var_15C = -gActors[actor_index].velocityY.raw / 16;
        gActors[actor_index].var_160 = 0xF;
        if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_14C = -28.0f;
        }
        else {
            gActors[actor_index].unk_14C = 28.0f;
        }

        gActors[actor_index].unk_148 = -1.0f;
        break;
    }
}

void func_801946CC_715BFC(u16 actor_index) {
    u32 temp_v0;
    s32 temp_a2;
    s32 temp_a3;

    if (func_801940F0_715620(actor_index) != 0) {
        return;
    }

    if (func_80193F84_7154B4(actor_index) != 0) {
        return;
    }

    if (func_80193E88_7153B8(actor_index) != 0) {
        return;
    }

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        gActors[actor_index].unk_148 = 3.0f;
        temp_v0 = gActors[actor_index].flags;
        temp_a2 = gActors[actor_index].velocityX.raw;
        temp_a3 = gActors[actor_index].velocityY.raw;
        gActors[actor_index].flags = temp_v0 & ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
        gActors[actor_index].unk_168 = temp_v0;
        gActors[actor_index].unk_16C = temp_a2;
        gActors[actor_index].unk_170 = temp_a3;
        gActors[actor_index].velocityX.raw = temp_a2 / 16;
        gActors[actor_index].velocityY.raw = temp_a3 / 16;
        Sound_PlaySfxAtActor3(SFX_STAB_006E, actor_index);
    }

    if (gActors[actor_index].unk_148 < 0.0f) {
        gActors[actor_index].var_160--;
        if (gActors[actor_index].var_160 >= -55 && gActors[actor_index].var_160 < 0) {
            gActors[actor_index].var_160--;
            gActors[actor_index].velocityX.raw += gActors[actor_index].var_158;
            gActors[actor_index].velocityY.raw += gActors[actor_index].var_15C;
        }
        else if (gActors[actor_index].var_160 < -80) {
            gActors[actor_index].state = 2;
        }

        if (!(gActors[actor_index].var_160 & 0xF)) {
            Sound_PlaySfxAtActor3(SFX_THROW_002A, actor_index);
        }
    }
    else {
        gActors[actor_index].unk_148 -= 1.0f;
        if (gActors[actor_index].unk_148 < 0.0f) {
            gActors[actor_index].flags = gActors[actor_index].unk_168;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_170;
        }
    }

    SpawnAfterImage(actor_index, 0xE0, 0x10, 3);
}

void func_801948BC_715DEC(u16 actor_index) {
    if (func_80029798(actor_index) != 0) {
        return;
    }

    if ((gActors[actor_index].state == 1 || gActors[actor_index].state == 2 || gActors[actor_index].state == 4) &&
        Clanpot_AddItemCheck3(actor_index, CLANPOT_NEWITEM | CLANPOT_UNSETFLAGS, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
        return;
    }

    if (gActors[actor_index].state && ((u16)gActors[actor_index].var_110 & 1)) {
        gActors[actor_index].unk_130 -= 1.0f;
        if (gActors[actor_index].unk_130 < 0.0f) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
            func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            return;
        }

        if (gActors[actor_index].unk_130 < 120.0f && (u16)gActors[actor_index].unk_130 % 10 == 0) {
            gActors[actor_index].colorR = 0x80;
        }
    }

    func_8002877C(actor_index);
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTX;
    gActors[actor_index].posZ.raw = FIXED_UNIT(6);
    D_80197C70_7191A0[gActors[actor_index].state](actor_index);
    gActors[actor_index].rotateZ += gActors[actor_index].unk_14C;
    gActors[actor_index].colorB = gActors[actor_index].colorG = gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 8);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_GRAB | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_WARPING);
}

void func_80194B84_7160B4(u16 actor_index) {
    u16 parameters = gActors[actor_index].var_110;
    u16 particle_index;

    gActors[actor_index].health = 10000;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        if (parameters & 0x400) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
        }
        else if (parameters & 0x800) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9;
        }

        gActors[actor_index].hitFlags = HITFLAG_2 | HITFLAG_7;
        gActors[actor_index].hitType = HITTYPE_BOOM_11;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);\
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(6.5);
        gActors[actor_index].unk_148 = (parameters & 0xF000) / 40960.0f + 1.0;
        gActors[actor_index].unk_144 = (parameters & 0x1F) * 10;
        gActors[actor_index].colorA = 0xE0;
        break;

    case 1:
        if (Actor_IsOutsideRegion(actor_index, 0) == 0) {
            gActors[actor_index].unk_140_f32 -= 1.0f;
            if (gActors[actor_index].unk_140_f32 < 0.0f) {
                gActors[actor_index].unk_140_f32 = 4.0f;
                particle_index = SpawnParticle_List_90C0_16(D_800E1540,
                    gActors[actor_index].posX.whole - (Rand() & 3) + 2,
                    gActors[actor_index].posY.whole - (Rand() & 3), gActors[actor_index].posZ.whole);
                if (particle_index) {
                    if (Rand() & 3) {
                        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
                        gActors[particle_index].colorR = 8;
                        gActors[particle_index].colorG = (Rand() & 0x3F) + 0x10;
                        gActors[particle_index].colorB = gActors[particle_index].colorG;
                    }
                    else {
                        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
                        gActors[particle_index].colorR = 0x7F;
                        gActors[particle_index].colorG = 0x7F;
                        gActors[particle_index].colorB = 0x3F;
                    }

                    gActors[particle_index].scaleX = gActors[actor_index].unk_148 * 0.6;
                    gActors[particle_index].scaleY = gActors[particle_index].scaleX;
                    gActors[particle_index].var_110 = gActors[actor_index].unk_148 * -0.05;
                    gActors[particle_index].unk_114 = gActors[actor_index].unk_148 * 0.05;
                    gActors[particle_index].colorA = gActors[actor_index].colorA;
                    gActors[particle_index].var_154 = -28;
                    gActors[particle_index].velocityY.raw = (((Rand() & 3) << 12) + FIXED_UNIT(1)) * gActors[actor_index].unk_148;
                    gActors[particle_index].var_15C = gActors[actor_index].unk_148 * FIXED_UNIT(-0.0625);
                }
            }
        }

        if (parameters & 0x20) {
            gActors[actor_index].unk_144 -= 1.0f;
            if (gActors[actor_index].unk_144 < 0.0f) {
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[actor_index].colorA -= 4;
                if (gActors[actor_index].colorA == 0) {
                    gActors[actor_index].flags = ACTOR_FLAG_NONE;
                    return;
                }
            }
        }

        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_0076, actor_index);
            gPlayerActor.iFrames = 60;
        }
        break;
    }

    gActors[actor_index].damage = gActors[actor_index].unk_148 * 30.0f;
    Actor_SetHitboxA(actor_index, gActors[actor_index].unk_148 * 6.0f);
    Actor_SetHitboxB(actor_index, gActors[actor_index].hitboxAY0);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801950D4_716604(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < ARRAYLENGTH(D_80197CAC_7191DC); index++) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            gActors[actor_index].graphicIndex,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole - 1
        );
        if (!new_actor_index) {
            break;
        }

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags |= (Rand() & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_UNK17;
        Actor_SetHitboxB(new_actor_index, 8);
        gActors[new_actor_index].scaleX = 0.5f;
        gActors[new_actor_index].scaleY = 0.5f;
        gActors[new_actor_index].rotateZ = Rand();
        gActors[new_actor_index].velocityX.raw = TO_FIXED(D_80197CAC_7191DC[index]);
        gActors[new_actor_index].velocityY.raw = TO_FIXED(D_80197CB4_7191E4[index]);
        gActors[new_actor_index].pfn_17C = func_80030D9C;
        gActors[new_actor_index].var_154 = -6;
    }

    gActors[actor_index].flags = ACTOR_FLAG_NONE;
    CameraShake(-4, 15);
    Sound_PlaySfxAtActor2(SFX_MECHSTEP_0062, actor_index);
}

void func_8019528C_7167BC(u16 actor_index) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(D_80197C84_7191B4); index++) {
        func_80012044(
            gActors[actor_index].posX.whole + D_80197C84_7191B4[index],
            gActors[actor_index].posY.whole + D_80197C98_7191C8[index],
            0
        );
    }
}

void func_80195354_716884(u16 actor_index) {
    u16 palette_index;
    s32 rotation_step;

    if (func_80029798(actor_index) != 0) {
        return;
    }

    if (gActors[actor_index].state >= 2) {
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.5f, 0.05f);
    }

    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8;
        if (gActors[actor_index].var_0D8 != 0) {
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
            palette_index = (u32)gActors[actor_index].var_110 & 3;
            if (palette_index != 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index].palette_18C = D_800D19A8[palette_index];
            }
        }
        else {
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
            palette_index = (u32)gActors[actor_index].var_110 & 3;
        }

        gActors[actor_index].health = D_80197CBC_7191EC[palette_index];
        gActors[actor_index].unk_0CE = 10;
        gActors[actor_index].graphicIndex = GINDEX_BIGBLOCK;
        gActors[actor_index].hitType = HITTYPE_7;
        gActors[actor_index].damage = 50;
        gActors[actor_index].unk_0DF = ACTOR0DF_6;
        Actor_SetHitboxB(actor_index, 22);
        // fall through
    case 1:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && gActors[actor_index].hitByType != HITTYPE_21 &&
            gActors[actor_index].hitByType != HITTYPE_23 && gActors[actor_index].health <= 0) {
            func_801950D4_716604(actor_index);
            func_8019528C_7167BC(actor_index);
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state++;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            func_8019528C_7167BC(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK17;
            CameraShake(-4, 15);
            func_80029134(actor_index);
            func_8003F7A0(3.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole,
                gActors[actor_index].posZ.whole + 2);
        }
        break;

    case 2:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            func_801950D4_716604(actor_index);
            break;
        }

        switch (func_800291AC( // ugh
            actor_index,
            3,
            ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17, 
            4,
            ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17
        )) {
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            // fall through
        case 2:
            Actor_SetHitboxA(actor_index, 12);
            Actor_SetHitboxB(actor_index, 8);
            break;
        }
        break;

    case 3:
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
        rotation_step = gActors[actor_index].velocityX.raw / FIXED_UNIT(0.25);
        if (rotation_step < 0) {
            rotation_step = -rotation_step;
        }

        if (rotation_step < 8) {
            rotation_step = 8;
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].rotateZ += rotation_step;
        }
        else {
            gActors[actor_index].rotateZ -= rotation_step;
        }
        // fall through
    case 4:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.046875));
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.21875);
        }

        if ((gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) ||
            (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) ||
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) ||
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || gActors[actor_index].health <= 0 ||
            (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
            (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
            func_801950D4_716604(actor_index);
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80195854_716D84(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_NONE;
    Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
    func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
}

void func_801958C8_716DF8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.046875));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.21875);
    }
}

s32 func_80195948_716E78(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 3;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK16);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        func_80029134(actor_index);
        if (gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        }

        return 1;
    }

    return 0;
}

void func_80195A00_716F30(u16 actor_index) {
    if (gActors[actor_index].state) {
        if (gActors[actor_index].state == 2 && func_80029798(actor_index) != 0) {
            return;
        }

        if (gActors[actor_index].health <= 0) {
            func_80195854_716D84(actor_index);
            return;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }

        gActors[actor_index].posZ.raw = gActors[actor_index].posY.whole + gActors[actor_index].posX.whole - 0x1F800;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK16;
        gActors[actor_index].unk_0CE = 9;
        gActors[actor_index].hitType = HITTYPE_6;
        gActors[actor_index].damage = 0x1E;
        gActors[actor_index].health = 0xA;
        gActors[actor_index].grabType = GRABTYPE_1;
        gActors[actor_index].unk_0DF = ACTOR0DF_6;
        gActors[actor_index].scaleX = 0.75f;
        gActors[actor_index].scaleY = 0.75f;
        Actor_SetHitboxB(actor_index, 0xC);
        gActors[actor_index].hitboxBY0 = 0xE;
        Actor_SetHitboxA(actor_index, 0x10);
        if (gActors[actor_index].var_0D8 & 0x10) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        switch ((u16)gActors[actor_index].var_110 & 0xF) {
        case 0:
            gActors[actor_index].graphicIndex = GINDEX_CLANCERSTATUEA;
            if ((u16)gActors[actor_index].var_110 & 0x300) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index].palette_18C = D_800D19A8[((u16)gActors[actor_index].var_110 & 0x300) / 768];
            }
            break;
        case 1:
            gActors[actor_index].graphicList = D_800E2584;
            gActors[actor_index].graphicTimer = 1;
            break;
        case 2:
            gActors[actor_index].graphicList = D_800E2598;
            gActors[actor_index].graphicTimer = 1;
            break;
        }
        // fall through
    case 1:
        if (func_80195948_716E78(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            }
        }
        break;
    case 2:
        if (func_80195948_716E78(actor_index) == 0) {
            func_801958C8_716DF8(actor_index);
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) ||
                (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
                (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
                Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.4;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            }

            if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.4;
                Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
                if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
                    gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.35;
                }
                else {
                    gActors[actor_index].state = 1;
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
                    gActors[actor_index].flags &= ~(u32)(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                    gActors[actor_index].velocityY.raw = 0;
                }
            }
        }
        break;

    case 3:
        switch (func_800291AC(actor_index, 2, ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK17,
            2, ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK17)) {
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            // fall through
        case 2:
            Actor_SetHitboxB(actor_index, 0xC);
            gActors[actor_index].hitboxBY0 = 0xE;
            break;
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80195FB0_7174E0(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
    gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.8;
}

void func_8019603C_71756C(u16 actor_index, u16 arg1) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        if (func_80012AB4(gActors[arg1].posX.whole - 5, gActors[arg1].posY.whole - 5) & 0x80) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
        }
    }
    else if (func_80012AB4(gActors[arg1].posX.whole + 5, gActors[arg1].posY.whole - 5) & 0x80) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
    }
}

void func_8019613C_71766C(u16 actor_index) {
    u16 next_actor_index;
    s32 var_a1;
    s16 position_x_difference;
    s16 position_y_difference;

    next_actor_index = actor_index + 1;
    if ((gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0]) & 4) {
        gActors[actor_index].graphicIndex = 0x1084;
        gActors[next_actor_index].graphicIndex = 0x108C;
    }
    else {
        gActors[actor_index].graphicIndex = 0x1086;
        gActors[next_actor_index].graphicIndex = 0x108E;
    }

    if ((gActors[actor_index].flags & ACTOR_FLAG_UNK16) && (gActors[actor_index].velocityX.raw > FIXED_UNIT(1) || gActors[actor_index].velocityX.raw < FIXED_UNIT(-1)) && (gActiveFrames % 10 == 0)) {
        Sound_PlaySfxAtActor3(SFX_CHIRP_012C, actor_index);
    }

    if ((gActors[next_actor_index].flags_098 & ACTOR_FLAG3_GRAB) && func_80029044(next_actor_index) == 0) {
        if (!(gActors[actor_index].var_150 & 0x1000)) {
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            gActors[actor_index].var_150 |= 0x1000;
        }

        if (gActors[actor_index].velocityX.raw < 0) {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) ||
                (func_80012AB4(gPlayerActor.posX.whole - 16, gPlayerActor.posY.whole - 8) & 0x80)) {
                func_80195FB0_7174E0(actor_index);
            }
        }
        else if (gActors[actor_index].velocityX.raw > 0) {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) ||
                (func_80012AB4(gPlayerActor.posX.whole + 16, gPlayerActor.posY.whole - 8) & 0x80)) {
                func_80195FB0_7174E0(actor_index);
            }
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_UNK17) {
            func_8019603C_71756C(actor_index, next_actor_index);
        }

        if (gActors[actor_index].velocityY.raw > 0) {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) || (gPlayerData.marina_Flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityY.raw = 0;
            }
        }

        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        if (gActors[next_actor_index].flags_098 & ACTOR_FLAG3_SHAKE) {
            if (func_800486F4() == 0xC) {
                gActors[actor_index].velocityX.raw += FIXED_UNIT(-2);
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
            }
            else if (func_800486F4() == 4) {
                gActors[actor_index].velocityX.raw += FIXED_UNIT(2);
                gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
            }

            Actor_ClampVelocityX(actor_index, FIXED_UNIT(4));
            if (func_800486F4() == 0 && gActors[actor_index].state == 1) {
                gActors[actor_index].state = 2;
                gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            }
        }
        else {
            gActors[actor_index].flags |= gPlayerActor.flags & ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].unk_188) {
            var_a1 = (FIXED_UNIT(16) - Math_AbsS32(gActors[actor_index].velocityX.raw * 2)) / FIXED_UNIT(1);
            if (var_a1 < 2) {
                var_a1 = 2;
            }

            D_800BE704 = Math_ApproachS32(D_800BE704, var_a1, 1);
        }
    }
    else {
        if (gActors[actor_index].unk_188) {
            D_800BE704 = gActors[actor_index].unk_184;
        }

        if (gActors[actor_index].var_150 & 0x1000) {
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            gActors[actor_index].var_150 &= ~0x1000;
        }

        if ((gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.4;
        }

        if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
        }

        if (gActors[actor_index].state == 1 && (u16)gActors[actor_index].var_110 != 0 &&
            gActors[actor_index].var_0D8 != 0 &&
            (gActors[(u16)gActors[actor_index].var_110].flags & ACTOR_FLAG_ACTIVE) &&
            gActors[(u16)gActors[actor_index].var_110].actorType == gActors[actor_index].var_0D8 &&
            gActors[(u16)gActors[actor_index].var_110].state == 0x101 &&
            gActors[(u16)gActors[actor_index].var_110].velocityY.raw < 0) {
            position_x_difference = gActors[actor_index].posX.whole - gActors[(u16)gActors[actor_index].var_110].posX.whole;
            position_y_difference = gActors[actor_index].posY.whole - gActors[(u16)gActors[actor_index].var_110].posY.whole;
            if (position_x_difference >= -11 && position_x_difference < 12 &&
                position_y_difference >= -11 && position_y_difference < 0) {
                gActors[actor_index].state = 3;
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[next_actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[(u16)gActors[actor_index].var_110].state = 0xD0;
                gActors[(u16)gActors[actor_index].var_110].velocityX.raw = 0;
                gActors[(u16)gActors[actor_index].var_110].velocityY.raw = 0;
                Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            }
        }
    }
}

void func_80196A0C_717F3C(u16 actor_index, u16 angle) {
    s32 velocity_x;

    gActors[actor_index].state = 2;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 1.4;
    velocity_x = gActors[actor_index].velocityX.raw;
    if (velocity_x < 0) {
        velocity_x = -velocity_x;
    }

    gActors[actor_index].velocityY.raw = (s32)(SIN(angle) * velocity_x) + FIXED_UNIT(1);
    Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
}

u16 func_80196B28_718058(u16 actor_index) {
    u16 var_a2;
    u16 var_v1;

    var_a2 = func_80012AB4(gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 1) & 0x7F;
    if (var_a2 == 0x40) {
        var_v1 = func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 15) & 0x7F;
        switch (var_v1) {
        case 0x41:
        case 0x42:
        case 0x45:
        case 0x49:
        case 0x4A:
        case 0x4D:
            var_a2 = var_v1;
            break;
        }
    }

    return var_a2;
}

void func_80196BFC_71812C(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > FIXED_UNIT(2)) {
        func_80196A0C_717F3C(actor_index, 0);
    }
}

void func_80196C60_718190(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-2)) {
        func_80196A0C_717F3C(actor_index, 0);
    }
}

void func_80196CC0_7181F0(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > FIXED_UNIT(2)) {
        func_80196A0C_717F3C(actor_index, COS_DEG_45 / 2);
    }
}

void func_80196D24_718254(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > FIXED_UNIT(2)) {
        func_80196A0C_717F3C(actor_index, COS_DEG_45);
    }
}

void func_80196D88_7182B8(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-2)) {
        func_80196A0C_717F3C(actor_index, COS_DEG_45 / 2);
    }
}

void func_80196DE8_718318(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-2)) {
        func_80196A0C_717F3C(actor_index, COS_DEG_45);
    }
}

void func_80196E48_718378(u16 actor_index) {
    s32 index = actor_index;
    s32 angle;
    s32 position_x;
    s32 position_y;

    gActors[index + 1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[index + 1].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
    position_x = gActors[actor_index].posX.raw;
    position_y = gActors[actor_index].posY.raw;
    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    gActors[actor_index].posY.raw -= FIXED_UNIT(8);
    angle = gActors[actor_index].unk_16C / FIXED_UNIT(1) + COS_DEG_90;
    gActors[actor_index].posX.raw += COS((u16)angle) * FIXED_UNIT(8.0f);
    gActors[actor_index].posY.raw += SIN(angle) * FIXED_UNIT(8.0f);
    func_80032E60(actor_index, gActors[actor_index].graphicIndex, 0, 5.0f, 1, 1.0f, 1.0f);
    func_80032E60(actor_index, gActors[index + 1].graphicIndex, 600, 6.0f, -1, 1.0f, 1.0f);
    func_800330A4(index + 1, actor_index, 0xC0, 10.0f);
    gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    gActors[actor_index].posX.raw = position_x;
    gActors[actor_index].posY.raw = position_y;
}

void func_8019706C_71859C(u16 actor_index, s32 angle) {
    angle &= COS_MASK_FIXED_UNIT;
    if (angle > FIXED_UNIT(COS_DEG_45) && angle <= FIXED_UNIT(COS_DEG_180 - 1)) {
        angle = FIXED_UNIT(COS_DEG_45);
    }
    else if (angle < FIXED_UNIT(COS_DEG_360 - COS_DEG_45) && angle >= FIXED_UNIT(COS_DEG_180)) {
        angle = FIXED_UNIT(COS_DEG_360 - COS_DEG_45);
    }

    gActors[actor_index].unk_16C = func_800298D0(angle, gActors[actor_index].unk_16C, FIXED_UNIT(24));
    gActors[actor_index].rotateZ = (gActors[actor_index].unk_16C / FIXED_UNIT(1)) * DEG_PER_INDEX;
}

void func_8019715C_71868C(u16 actor_index) {
    u16 temp_v0;
    u16 index = actor_index;
    s32 angle;

    temp_v0 = func_80196B28_718058(index);
    switch (temp_v0) {
    case 0x40:
    default:
        angle = 0;
        switch (gActors[index].unk_170) {
        case 0x41:
        case 0x45:
            func_80196CC0_7181F0(index);
            break;
        case 0x42:
            func_80196D24_718254(index);
            break;
        case 0x49:
        case 0x4D:
            func_80196D88_7182B8(index);
            break;
        case 0x4A:
            func_80196DE8_718318(index);
            break;
        case 0x40:
            break;
        }
        break;

    case 0x41:
    case 0x42:
    case 0x45:
        if (temp_v0 == 0x42) {
            angle = FIXED_UNIT(COS_DEG_45);
            gActors[index].velocityX.raw -= FIXED_UNIT(0.046875);
        }
        else {
            angle = FIXED_UNIT(COS_DEG_45 / 2);
            gActors[index].velocityX.raw -= FIXED_UNIT(0.0234375);
        }

        switch (gActors[index].unk_170) {
        case 0x41:
        case 0x42:
        case 0x45:
            break;
        case 0x40:
            func_80196C60_718190(index);
            break;
        case 0x49:
        case 0x4D:
            func_80196D88_7182B8(index);
            break;
        case 0x4A:
            func_80196DE8_718318(index);
            break;
        }
        break;

    case 0x49:
    case 0x4A:
    case 0x4D:
        if (temp_v0 == 0x4A) {
            angle = FIXED_UNIT(-COS_DEG_45);
            gActors[index].velocityX.raw += FIXED_UNIT(0.046875);
        }
        else {
            angle = FIXED_UNIT(-COS_DEG_45 / 2);
            gActors[index].velocityX.raw += FIXED_UNIT(0.0234375);
        }

        switch (gActors[index].unk_170) {
        case 0x49:
        case 0x4A:
        case 0x4D:
            break;
        case 0x40:
            func_80196BFC_71812C(index);
            break;
        case 0x41:
        case 0x45:
            func_80196CC0_7181F0(index);
            break;
        case 0x42:
            func_80196D24_718254(index);
            break;
        }
        break;
    }

    gActors[index].unk_170 = temp_v0;
    func_8019706C_71859C(index, angle);
    func_80196E48_718378(index);
}

void func_80197480_7189B0(u16 actor_index) {
    s32 angle = TO_FIXED(Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw));

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        angle -= FIXED_UNIT(COS_DEG_180);
    }

    func_8019706C_71859C(actor_index, angle);
    func_80196E48_718378(actor_index);
    gActors[actor_index].unk_170 = 0;
}

void func_80197514_718A44(u16 actor_index) {
    u16 next_actor_index;

    if (gActors[actor_index].state) {
        if (gActors[actor_index].health <= 0) {
            gActors[actor_index + 1].flags = ACTOR_FLAG_NONE;
            func_80195854_716D84(actor_index);
            return;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        }

        func_8002877C(actor_index);
    }

    gActors[actor_index].posZ.raw = FIXED_UNIT(-0.984375);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK16;
        Actor_SetHitboxB(actor_index, 8);
        if (gActors[actor_index].var_0D8 & 0x8000) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }

        if ((u16)gActors[actor_index].var_110 & 0x8000) {
            gActors[actor_index].var_110 = (u16)gActors[actor_index].var_110 & ~0x8000;
            gActors[actor_index].unk_188 = 1;
            gActors[actor_index].unk_184 = D_800BE704;
        }

        next_actor_index = actor_index + 1;
        gActors[actor_index].var_0D8 &= 0x3FFF;
        gActors[actor_index].health = 50;
        gActors[actor_index].unk_170 = 0x40;
        gActors[next_actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK12;
        gActors[next_actor_index].grabType = GRABTYPE_6;
        gActors[next_actor_index].unk_0DF = ACTOR0DF_6;
        Actor_SetHitboxB(next_actor_index, 4);
        // fall through
    case 1:
        func_8019613C_71766C(actor_index);
        func_8019715C_71868C(actor_index);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.00390625));
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~(u32)ACTOR_FLAG_UNK16;\
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        break;
    case 2:
        func_8019613C_71766C(actor_index);
        func_80197480_7189B0(actor_index);
        func_801958C8_716DF8(actor_index);
        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
            Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
                gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.3;
            }
            else {
                gActors[actor_index].state = 1;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;\
                gActors[actor_index].flags &= ~(u32)(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                gActors[actor_index].velocityY.raw = 0;
            }
        }
        break;

    case 3:
        gActors[actor_index].posX.whole = gActors[(u16)gActors[actor_index].var_110].posX.whole;
        gActors[actor_index].posY.whole = gActors[(u16)gActors[actor_index].var_110].posY.whole;
        if (gActors[(u16)gActors[actor_index].var_110].health == 0 || (gActors[(u16)gActors[actor_index].var_110].flags & ACTOR_FLAG_ENABLED) != ACTOR_FLAG_ENABLED ||
            !(gActors[(u16)gActors[actor_index].var_110].var_150 & 0x08000000)) {
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            gActors[actor_index].state = 2;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK16;
            gActors[actor_index].flags |= gActors[(u16)gActors[actor_index].var_110].flags & ACTOR_FLAG_FLIPPED;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-1);
            }

            gActors[actor_index].health = 50;
            gActors[actor_index].unk_170 = 0;
            gActors[(u16)(actor_index + 1)].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_UNK12;
        }

        return;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
    gActors[(u16)(actor_index + 1)].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80197B84_7190B4(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_BLASTB;
        Actor_SetColorRgb(actor_index, 0x7F);
        gActors[actor_index].colorA = 0xA0;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(12);
    }
}
