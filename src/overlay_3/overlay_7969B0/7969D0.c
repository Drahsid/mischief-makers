#define Actor_Initialize_RET void

#include "common.h"

// Overlay 3 code for World 1

extern Gfx D_800D6DD0[];
extern s16 D_800E13B8[];
extern s16 D_800E1670[];
extern s16 D_800E24EC[];

s16 D_801B23F0_7984C0[] = { GINDEX_FIREBALL, 8, GRAPHIC_FRAME(FIREBALL, 1), 8, 0, 0 };

s16 D_801B23FC_7984CC[] = {
    GINDEX_DISSOLVE, 1,
    GRAPHIC_FRAME(DISSOLVE, 1), 1,
    GRAPHIC_FRAME(DISSOLVE, 2), 1,
    GRAPHIC_FRAME(DISSOLVE, 3), 1,
    GRAPHIC_FRAME(DISSOLVE, 4), 1,
    0, 0,
};

s16 D_801B2414_7984E4[] = {
    GINDEX_SHOCKEFFECT, 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 1), 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 2), 2,
    GRAPHIC_FRAME(SHOCKEFFECT, 1), 2,
    -8, 0,
};

f32 D_801B2428_7984F8[] = { 0.5f, 0.75f, 1.0f, 1.5f };

s16 D_801B2438_798508[] = {
    -208, 208, 3, 0x64,
    -96, 160, 3, 0x50,
    -224, 128, 3, 0x50,
    -176, 128, 3, 0x64,
    -272, 144, 3, 0x64,
    -176, 176, 3, 0x64,
    -176, 176, 3, 0x64,
    -176, 176, 3, 0x64,
    0, 0, 0, 0,
};

// BUG: incorrect prototype!
extern DEFAULT_INT func_8001FCA0(u16 actor_index, s16 x, s16 y);

void func_801B1768_797838(u16 actor_index);
s32 func_801B1A28_797AF8(u16 actor_index, s16 left_offset, s16 right_offset);
void func_801B1DD4_797EA4(u16 actor_index);
void func_801B2018_7980E8(u16 actor_index);

void func_801B0900_7969D0(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index == 0) {
        return;
    }

    gActors[new_actor_index].actorType = 0x402;
    Actor_Initialize(new_actor_index);
    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[new_actor_index].var_154 = 0;
    gActors[new_actor_index].colorR = 0x80;
    gActors[new_actor_index].colorG = 0x80;
    gActors[new_actor_index].colorB = 0;
    gActors[new_actor_index].unk_164 = 0x28;
    gActors[new_actor_index].posX.whole = -10;
    gActors[new_actor_index].unk_178 = actor_index;
    gActors[new_actor_index].rotateZ = 90.0f;
    gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
    gActors[new_actor_index].scaleX = 1.7f;
    gActors[new_actor_index].scaleY = 0.9f;
    gActors[new_actor_index].posZ.whole = -30;
    gActors[new_actor_index].colorA = 0xA0;
}

s32 func_801B0A10_796AE0(u16 actor_index) {
    ACTOR_FIXEDADDRESS_SET(0x31, actorType, ACTORTYPE_GRAPHICONLY);
    Actor_Initialize(0x31);
    ACTOR_FIXEDADDRESS_SET(0x31, graphicFlags, ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE);
    ACTOR_FIXEDADDRESS_SET(0x31, flags, ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED);
    ACTOR_FIXEDADDRESS_SET(0x31, graphicIndex, GINDEX_SOLIDSQARE);
    ACTOR_FIXEDADDRESS_SET(0x31, scaleX, 19.0f);
    ACTOR_FIXEDADDRESS_SET(0x31, scaleY, 13.0f);
    ACTOR_FIXEDADDRESS_SET(0x31, posX.whole, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, posY.whole, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, posZ.whole, -16);
    ACTOR_FIXEDADDRESS_SET(0x31, unk_188, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, colorA, 0);
    ACTOR_FIXEDADDRESS_SET(0x31, colorB, 0xBA);

    return 0x31;
}


void func_801B0ABC_796B8C(u16 actor_index) {
    Actor* other_actor;
    u32 done;
    u16 temp;

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicIndex = 0x2000;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].posX.whole = -12;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[actor_index].unk_188 = -0x20;
            gActors[actor_index].posZ.whole = -528;
            gActors[actor_index].state = 0x10;
            if (gCurrentScene == 0x36) {
                func_801B2018_7980E8(actor_index);
            }
            break;

        case 0x10:
            if ((gActors[0x88].actorType == ACTORTYPE_49) && (gActors[0x88].flags & ACTOR_FLAG_ACTIVE)) {
                func_801B0A10_796AE0(actor_index);
                gActors[actor_index].state++;
            }
            break;

        case 0x11:
            if (gActors[actor_index].unk_18C != 0) {
                gActors[actor_index].var_154 = 4;
                Sound_PlaySfxAtActor2(0xBE, actor_index);
                func_801B0900_7969D0(actor_index);
                gActors[actor_index].state = 0x20;
                gActors[actor_index].var_15C++;
                gActors[0x31].colorA = 0;
            }
            else if (gActors[0x88].flags & ACTOR_FLAG_DRAW) {
                gActors[0x31].colorA = gActors[0x88].colorA * 0.5;
                if (Rand() < (gActors[0x88].colorA >> 5)) {
                    Sound_PlaySfxAtVol(0xBE, 0x93);
                    gActors[0x31].colorA = 0;
                }
            }
            break;

        case 0x20:
            gActors[0x31].colorA = 0x7F;
            gActors[actor_index].colorR += 0x20;
            gActors[actor_index].colorG += 0x20;
            temp = gActors[actor_index].var_154;
            gActors[actor_index].colorB += 0x20;
            if (gActors[actor_index].colorR == 0x80) {
                gActors[actor_index].colorB = 0x7F;

                // fakematch
                if (temp && temp) {
                }
                
                gActors[actor_index].colorG = 0x7F;
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].state++;
            }
            break;

        case 0x21:
            gActors[actor_index].colorR -= 0x20;
            gActors[actor_index].colorG -= 0x20;
            gActors[actor_index].colorB -= 0x20;
            if (gActors[actor_index].colorR == 0xFF) {
                done = gActors[actor_index].var_154 < 1U;
                temp = gActors[actor_index].var_154;

                if (!temp) {
                }

                gActors[actor_index].colorB = 0;
                gActors[actor_index].colorG = 0;
                gActors[actor_index].colorR = 0;
                gActors[actor_index].var_154--;
                if (done != 0) {
                    gActors[actor_index].state = 0x30;
                }
                else {
                    gActors[actor_index].var_15C++;
                    Sound_PlaySfxAtActor2(0xBE, actor_index);
                    gActors[actor_index].state--;
                }
            }
            break;

        case 0x30:
            gActors[actor_index - 1].actorType = 0x400;
            Actor_Initialize(actor_index - 1);
            gActors[actor_index - 1].graphicFlags |= ACTOR_GFLAG_UNK11;
            gActors[actor_index - 1].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index - 1].graphicIndex = 0x2002;
            gActors[actor_index - 1].posX.whole = -12;
            gActors[actor_index - 1].unk_188 = -0x20;
            gActors[actor_index - 1].posZ.whole = -527;
            gActors[actor_index - 1].colorA = 0;
            gActors[actor_index - 1].state = 0x50;
            Sound_PlaySfxAtActor2(0x47, actor_index);
            gActors[actor_index].state++;
            break;

        case 0x31:
            other_actor = &gActors[actor_index - 1];
            other_actor->colorA += 8;
            gActors[actor_index - 2].colorA += 8;
            if (other_actor->colorA == 0) {
                other_actor->colorA = 0xFF;
                gActors[actor_index - 2].colorA = 0xFF;
                gActors[actor_index].state++;
            }
            break;

        case 0x40:
        case 0x50:
            break;

        case 0x32:
            gActors[actor_index].colorA -= 0x20;
            if (gActors[actor_index].colorA == 0xFF) {
                gActors[actor_index].graphicIndex += 2;
                other_actor = &gActors[actor_index - 1];
                other_actor->colorA = 0;
                other_actor->graphicIndex += 2;
                if (gActors[actor_index].graphicIndex == 0x2008) {
                    other_actor->flags = 0;
                    gActors[actor_index].state = 0x50;
                    gActors[actor_index - 2].state = 0x40;
                    Sound_PlayMusic(0xF);
                    if (gStageState == 2) {
                        gStageState = 3;
                    }
                    gActors[actor_index].unk_164 = 1;
                    gActors[actor_index].var_160 = 0;
                    gActors[actor_index - 2].unk_184 = 0xB4;
                }
                else {
                    gActors[actor_index].state--;
                }
            }
            break;

    }

    gActors[actor_index].posY.whole = (gActors[actor_index].unk_170 - D_800BE580) + 541;
}

void func_801B1000_7970D0(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    f32 scale = D_801B2428_7984F8[actor->var_158];

    actor->flags = ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ENABLED;
    actor->posZ.raw = FIXED_UNIT(0.5);
    actor->unk_12C = scale;
    actor->scaleY = scale;
    actor->scaleX = scale;
    actor->unk_0F8.raw = (FIXED_UNIT(1.25) * scale);
    actor->unk_0FC.raw = (FIXED_UNIT(3.25) * scale);
    Actor_SetHitboxA(actor_index, (s16)(s32)(16.0f * scale));
    actor->posX.whole = actor->var_15C - gScreenPosCurrentX.whole;
    actor->velocityX.raw = 0;
    actor->unk_16C = 0x10;
}

void func_801B112C_7971FC(u16 actor_index, u16 arg1) {
    u16 new_actor_index;

    gActors[actor_index].rotateX -= gActors[actor_index].unk_16C;

    if (gActiveFrames & 1) {
        return;
    }

    if (!arg1) {
        return;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        D_801B23F0_7984C0,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole - 1
    );
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = gActors[actor_index].scaleX * 2.2;
        gActors[new_actor_index].colorA = 0xC8;
        gActors[new_actor_index].var_154 = -0x10 - (Rand() & 0xF);
        gActors[new_actor_index].unk_164 = 0;
        gActors[new_actor_index].var_110 = -0.08f;
        gActors[new_actor_index].unk_114 = -0.08f;
        gActors[new_actor_index].unk_118 = -0.01f;
        gActors[new_actor_index].unk_11C = -0.01f;
    }

    new_actor_index = SpawnParticle_List_90C0_16(
        D_801B23FC_7984CC,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + 16,
        gActors[actor_index].posZ.whole - 1
    );
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(4.0);
        gActors[new_actor_index].colorA = 0x78;
        gActors[new_actor_index].scaleX = gActors[new_actor_index].scaleY = gActors[actor_index].scaleX * 1.6;
        gActors[new_actor_index].var_154 = -8;
        gActors[new_actor_index].unk_164 = 0;
    }
}

void func_801B131C_7973EC(u16 actor_index) {
    u16 new_actor_index;
    f32 scale;

    new_actor_index = SpawnParticle_List_90C0_16(
        D_800E13B8, gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 1
    );
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        scale = gActors[actor_index].scaleX;
        gActors[new_actor_index].colorR = 0x70;
        gActors[new_actor_index].colorG = 0x98;
        gActors[new_actor_index].colorB = 0xC9;
        gActors[new_actor_index].var_110 = 0.01f;
        gActors[new_actor_index].unk_114 = 0.01f;
        gActors[new_actor_index].unk_118 = 0.01f;
        gActors[new_actor_index].unk_11C = 0.01f;
        gActors[new_actor_index].scaleY = scale;
        gActors[new_actor_index].scaleX = scale;
    }

    CameraShake(8, 8);
    gCamShakeType = 2;
}

void func_801B1414_7974E4(u16 actor_index) {
    Actor* actor;
    u8 first_check;
    u32 on_ground;

    actor = &gActors[actor_index];

    switch (actor->state) {
        case 0:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            if (actor->posY.whole >= 201) {
                actor->var_150 = 0x3C;
                actor->velocityY.raw = (actor->velocityX.raw = 0);
                func_801B1000_7970D0(actor_index);
                func_801B1768_797838(actor_index);
                actor->state++;
                break;
            }
            func_801B112C_7971FC(actor_index, 0);
            break;

        case 2:
            actor->posY.whole = 200;
            actor->var_150--;
            if (actor->var_150 < 0) {
                actor->velocityY.raw = FIXED_UNIT(-9.0);
                actor->state++;
            }
            break;

        case 3:
            func_801B112C_7971FC(actor_index, 1);
            on_ground = actor->flags_098 & ACTOR_FLAG3_UNK0;
            if (on_ground == 0) {
                first_check = func_8001FCA0(actor_index, actor->hitboxAX0 + actor->posX.whole, actor->hitboxAY1 + actor->posY.whole);
                if (((first_check & 0xFF) | func_8001FCA0(actor_index, actor->hitboxAX1 + actor->posX.whole, actor->hitboxAY1 + actor->posY.whole)) == 0) {
                    return;
                }

                if (first_check) {
                }

                on_ground = actor->flags_098 & ACTOR_FLAG3_UNK0;
            }

            if (on_ground && (actor->parentIndex == 0)) {
                Sound_PlaySfxAtActor2(0x45, actor_index);
                gActors[0].iFrames = 0x5A;
            }
            else {
                Sound_PlaySfxAtActor2(0x45, actor_index);
            }
            actor->flags = 0;
            func_801B131C_7973EC(actor_index);
            break;
    }
}

void func_801B1618_7976E8(u16 actor_index) {
    Actor* actor;
    s32 state;

    actor = &gActors[actor_index];
    state = actor->state;

    switch (state) {
        case 0:
            actor->graphicIndex = D_801B2414_7984E4[0];
            actor->state++;
            actor->unk_170 = 0;
            actor->unk_16C = 0;
            actor->unk_168 = 0x14;
            break;

        case 1:
            actor->unk_170++;
            if (actor->unk_170 >= D_801B2414_7984E4[actor->unk_16C + 1]) {
                actor->unk_170 = 0;
                actor->unk_16C = actor->unk_16C + 2;
                if (D_801B2414_7984E4[actor->unk_16C] < 0) {
                    actor->unk_16C += D_801B2414_7984E4[actor->unk_16C];
                }
                actor->graphicIndex = D_801B2414_7984E4[actor->unk_16C];
            }
            if (--actor->unk_168 <= 0) {
                actor->state++;
            }
            break;

        case 2:
            actor->flags = 0;
            break;
    }

    if (actor->state < 3) {
        actor->posY.whole = 576 - D_800BE580;
    }
}

void func_801B1768_797838(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x70, 0x80);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0x403);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].posZ.whole = 1;
        gActors[new_actor_index].var_15C = actor_index;
    }
}

void func_801B182C_7978FC(u16 actor_index) {
    Actor* actor;
    Actor* parent;
    s32 parent_index;

    actor = &gActors[actor_index];

    switch (actor->state) {
        case 0:
            actor->graphicIndex = 0x28E;
            actor->flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ACTIVE;
            actor->velocityX.raw = 0;
            actor->velocityY.raw = FIXED_UNIT(-10.0);
            Actor_SetHitboxB(actor_index, 8);
            actor->state++;
            // fallthrough

        case 1:
            if (actor->flags_098 & ACTOR_FLAG3_UNK5) {
                actor->graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
                actor->flags = ACTOR_FLAG_ENABLED;
                actor->velocityX.raw = 0;
                actor->velocityY.raw = 0;
                parent = &gActors[actor->var_15C];
                actor->posX.whole = parent->posX.whole;
                actor->posY.whole -= 11;
                actor->colorR = 0x3A;
                actor->colorG = 0x2B;
                actor->colorB = 0x81;
                actor->colorA = 0;
                actor->scaleX = parent->scaleX * 4.0f;
                actor->scaleY = 0.5f;
                actor->var_154 = FIXED_UNIT(58.0);
                actor->var_158 = 0;
                actor->state++;
            }
            break;

        case 2:
            if (gActors[actor->var_15C].flags == 0) {
                actor->flags = 0;
                break;
            }
            actor->var_154 = Math_ApproachS32(actor->var_154, FIXED_UNIT(0.0), FIXED_UNIT(1.0));
            actor->var_158 = Math_ApproachS32(actor->var_158, FIXED_UNIT(192.0), FIXED_UNIT(6.0));
            actor->colorR = FROM_FIXED(actor->var_154);
            actor->colorA = FROM_FIXED(actor->var_158);
            break;
    }
}

s32 func_801B1A28_797AF8(u16 actor_index, s16 left_offset, s16 right_offset) {
    s16 player_screen_x;

    player_screen_x = gScreenPosCurrentX.whole - ((left_offset * 0) - gActors[0].posX.whole);
    left_offset = (gScreenPosCurrentX.whole - ((gActors[actor_index].posX.whole * 0) - gActors[actor_index].posX.whole)) + left_offset;
    right_offset = (gScreenPosCurrentX.whole - ((right_offset * 0) - gActors[actor_index].posX.whole)) + right_offset;
    
    if (player_screen_x < left_offset) {
        return 0;
    }

    if (right_offset < player_screen_x) {
        return 0;
    }

    return 1;
}

u16 func_801B1AD4_797BA4(u16 actor_index) {
    u16 new_actor_index;
    u16 particle_index;

    new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
    if (new_actor_index != 0) {
        Actor* parent;

        gActors[new_actor_index].actorType = 0x401;
        Actor_Initialize(new_actor_index);

        gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].graphicIndex = 0;
        gActors[new_actor_index].var_154 = 0;
        gActors[new_actor_index].dlist_17C = D_800D6DD0;
        gActors[new_actor_index].posX.whole = -12;
        gActors[new_actor_index].unk_12C = 0.3f;
        gActors[new_actor_index].scaleY = 0.3f;
        gActors[new_actor_index].scaleX = 0.3f;
        gActors[new_actor_index].posY.whole = gActors[0x8A].posY.whole + 44;
        gActors[new_actor_index].health = 0x64;
        gActors[new_actor_index].damage = 0x64;
        gActors[new_actor_index].unk_188 = -0x21;
        gActors[new_actor_index].posZ.whole = -529;
        gActors[new_actor_index].unk_0DA |= 0x81;
        gActors[new_actor_index].unk_0DB = 0xB;

        parent = &gActors[actor_index];
        gActors[new_actor_index].var_158 = parent->var_160;
        gActors[new_actor_index].var_15C = gScreenPosCurrentX.whole + parent->posX.whole;

        particle_index = SpawnParticle_List_90C0_16(D_800E1670, -12, 569 - D_800BE580, -31);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            gActors[particle_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED;
            gActors[particle_index].graphicIndex = GINDEX_MUSHROOMCLOUD;
            gActors[particle_index].colorA = 0xB4;
            gActors[particle_index].scaleY = 1.0f;
            gActors[particle_index].scaleX = 1.0f;
        }

        Sound_PlaySfx(0x43);
    }

    return new_actor_index;
}

void func_801B1CA4_797D74(u16 actor_index) {
    u16 table_base;
    s16 table_index;

    switch (gActors[actor_index].state) {
        case 0:
            table_base = gActors[actor_index].var_0D8;
            table_index = table_base * 4;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].var_158 = D_801B2438_798508[table_index];
            gActors[actor_index].var_15C = D_801B2438_798508[table_index + 1];
            gActors[actor_index].var_160 = D_801B2438_798508[table_index + 2];
            gActors[actor_index].var_154 = D_801B2438_798508[table_index + 3];
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            if (func_801B1A28_797AF8(actor_index, gActors[actor_index].var_158, gActors[actor_index].var_15C) != 0) {
                gActors[actor_index].state++;
            }
            else {
                break;
            }
            // fallthrough

        case 2:
            if (--gActors[actor_index].var_150 < 0) {
                gActors[actor_index].var_150 = gActors[actor_index].var_154;
                func_801B1AD4_797BA4(actor_index);
                gActors[actor_index].state--;
            }
            break;
    }
}

void func_801B1DD4_797EA4(u16 actor_index) {
    gActors[actor_index].var_160++;
    if (gActors[actor_index].var_160 & 4) {
        gActors[actor_index].var_15C = 1;
        gActors[actor_index].rotateZ = 270.0f;
    }
    else {
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].rotateZ = 90.0f;
    }
    gActors[actor_index].unk_16C += Rand();
    gActors[actor_index].unk_168 = COS(gActors[actor_index].unk_16C) * FIXED_UNIT(0.25);
    gActors[actor_index].var_154 = gActors[actor_index].unk_164 + gActors[actor_index].var_154;
    gActors[actor_index].var_158 = gActors[actor_index].unk_168 + gActors[actor_index].unk_170 + gActors[actor_index].var_158 - D_800BE580;
    gActors[actor_index].posX.whole = FROM_FIXED(gActors[actor_index].var_154);
    gActors[actor_index].posY.whole = FROM_FIXED(gActors[actor_index].var_158) + (gActors[actor_index].var_15C * 2) + 32;
}

void func_801B1F24_797FF4(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].graphicIndex = GINDEX_CONE;
            gActors[actor_index].colorR = 0xDF;
            gActors[actor_index].colorG = 0xFF;
            gActors[actor_index].colorB = 0xFF;
            gActors[actor_index].posZ.whole = -255;
            gActors[actor_index].unk_188 = -0x80;
            gActors[actor_index].scaleX = 0.1f;
            gActors[actor_index].scaleY = 0.1f;
            gActors[actor_index].unk_170 = D_800BE580;
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            func_801B1DD4_797EA4(actor_index);
            break;
    }

    if (gActors[actor_index].posX.whole < -208) {
        gActors[actor_index].flags = 0;
    }
}

void func_801B2018_7980E8(u16 actor_index) {
    u16 index;

    for (index = 0; index < 8; index++) {
        u16 new_actor_index;

        new_actor_index = Actor_RangeFindInactive(0xA0, 0xC0);
        if (new_actor_index != 0) {
            u16 angle;
            Actor* actor;

            angle = Rand();
            actor = &gActors[new_actor_index];
            ACTOR_INIT(new_actor_index, 0x405);
            actor->var_154 = TO_FIXED(Rand() & 0x1F) + FIXED_UNIT(192.0);
            actor->var_158 = TO_FIXED((Rand() - 0x80) * 0.125) + FIXED_UNIT(64.0);
            actor->posZ.whole = -255;
            actor->rotateZ = 90.0f;
            actor->var_160 = angle;
            actor->unk_164 = (-angle * FIXED_UNIT(1.0 / 4096.0)) - FIXED_UNIT(0.5);
            actor->unk_16C = angle << 0xA;
        }
    }
}

void func_801B21C8_798298(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_PLATFORM1 | ACTOR_FLAG_ENABLED;
            gActors[actor_index].hitboxBY0 = 0x10;\
            gActors[actor_index].hitboxBY1 = -0x10;
            gActors[actor_index].hitboxBX0 = -0x10;
            gActors[actor_index].hitboxBX1 = 0x10;
            gActors[actor_index].graphicList = D_800E24EC;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].posZ.whole = -8;\
            gActors[actor_index].var_158 = gScreenPosCurrentX.whole;
            gActors[actor_index].var_158 += gActors[actor_index].posX.whole;\
            gActors[actor_index].var_15C = gScreenPosCurrentY.whole;
            gActors[actor_index].var_15C += gActors[actor_index].posY.whole;
            gActors[actor_index].state++;
            // fallthrough

        case 1: {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
                gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.5f, 0.05f);
            }
            else {
                gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
            }
            gActors[actor_index].posY.whole = (gActors[actor_index].var_15C - gScreenPosCurrentY.whole) - ((1.0 - gActors[actor_index].scaleY) * 16.0);
            gActors[actor_index].hitboxBY0 = gActors[actor_index].scaleY * 16.0f;
            gActors[actor_index].hitboxBY1 = -(gActors[actor_index].scaleY * 16.0f);
            if (gActors[actor_index].scaleY == 0.5) {
                gActors[actor_index].var_154 = 1;
            }
            else {
                gActors[actor_index].var_154 = 0;
            }
            break;
        }
    }
}
