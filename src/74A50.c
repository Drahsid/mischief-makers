#define func_80012AB4_ARGS
#include "common.h"
#include "28EF0.h"
#include "66250.h"

extern u16* D_800D18E4[]; // array of palettes
extern u16* D_800D1938[]; // array of palettes
extern s16 D_800D2918; // = 0;
extern s16 D_800D291C; // = 0;
extern u16 D_800D80C0[]; // = { 0x0000, 0x0010, 0x0030, 0x0000, };
extern s16 D_800D80C8[];
extern s16 D_800D80D0[];
extern u16 D_800D80F0[];
extern f32 D_800D8108[]; // scaleX/Y values
extern s16 D_800D8118[];
extern s16 D_800D8190[]; /* = {
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D8198[]; /* = {
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D81A0[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ1, 2,
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    0, 0
}; */
extern s16 D_800D81AC[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    GINDEX_WM_STAGEICONIMPHQ1, 2,
    0, 0
}; */
extern s16 D_800D81B8[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    GINDEX_WM_STAGEICONMERCO, 4,
    GINDEX_WM_STAGEICONFINAL, 2,
    0, 0
}; */
extern s16 D_800D81C8[]; /* = {
    GINDEX_WM_STAGEICONFINAL, 2,
    GINDEX_WM_STAGEICONMERCO, 4,
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    0, 0
}; */
extern s16 D_800D81D8[]; /* = {
    GINDEX_WM_STAGEICONPLAINS, 4,
    GINDEX_WM_STAGEICONENDING, 4,
    GINDEX_WM_STAGEICONVERTICAL, 4,
    GINDEX_303E, 4,
    GINDEX_3040, 8,
    GINDEX_3042, 4 | 2,
    GINDEX_WM_STAGEICONMERCO, 3,
    0, 0
}; */
extern s16 D_800D81F8[]; /* = {
    GINDEX_3044, 4,
    GINDEX_3046, 4,
    GINDEX_3048, 4,
    GINDEX_304A, 3,
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D8210[]; /* = {
    GINDEX_304A, 8,
    GINDEX_3044, 8,
    0xFFFC, 0
}; */
extern s16 D_800D821C[]; /* = {
    GINDEX_3046, 3,
    GINDEX_3048, 3,
    GINDEX_3046, 3,
    GINDEX_3048, 5,
    GINDEX_3046, 5,
    GINDEX_3048, 5,
    GINDEX_3046, 8,
    GINDEX_3048, 8,
    0, 0
}; */
extern s16 D_800D8240[]; /* = {
    GINDEX_3046, 5,
    GINDEX_3048, 5,
    GINDEX_3046, 8,
    GINDEX_3048, 8,
    GINDEX_WM_STAGEICONFINAL, 2,
    0, 0
}; */
extern u16 D_800D8258[]; // = { 0x0005, 0x0014, 0x0032, 0x0064, 0x0166, 0x01B2, 0x01B4, 0x01B2 };
extern s16 D_800D8268[];
extern s16 D_800D82BC[]; /* = {
    0x0008, 0x000E,
    0x0008, 0x000E,
    0x0000, 0x0011,
    0x0013, 0x0008,
    0xFFFD, 0xFFEE,
    0x0022, 0xD801,
    0x0026, 0xD001,
    0x0100, 0x0000
};*/
extern u16 D_800E3574; // = 0; // actor flag storage?
extern s16 D_800E1BE0[];
extern s16 D_800E20E0[];
extern s16 D_800E2564[];
extern s16 D_800E2578[];
extern u16 D_800E3570; // = 0; // actor flag storage?

void func_80073E50(u16 actor_index, u16 graphic_index) {
    s32 vel_x;
    s32 vel_y;

    if (1) { // fakematch?
        gActors[actor_index].actorType = 0;
        vel_x = gActors[actor_index].velocityX.raw;
        vel_y = gActors[actor_index].velocityY.raw;
        Actor_Initialize(actor_index);
        gActors[actor_index].health = 10;
        gActors[actor_index].velocityX.raw = vel_x;
        gActors[actor_index].velocityY.raw = vel_y;
        gActors[actor_index].actorType = ACTORTYPE_HAT;
        gActors[actor_index].var_110 = -1.0f;
        gActors[actor_index].graphicIndex = graphic_index;
    }
}

void func_80073EF4(u16 actor_index) {
    s32 flag_flipped;

    gActors[actor_index].actorType = ACTORTYPE_96;
    flag_flipped = gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = flag_flipped + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE);
    gActors[actor_index].state = 0xFFFF;
    gActors[actor_index].hitboxBY1 = -18; \
    gActors[actor_index].hitboxBX0 = -14;
    gActors[actor_index].hitboxBY0 = 14; \
    gActors[actor_index].hitboxBX1 = 14;
    ACTOR_GFX_INIT(actor_index, D_800E1BE0);
    if (flag_flipped & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
    }
    else {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
    }
    gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
    gActors[actor_index].flags_098 = 0;
}

void func_80073FD8(u16 actor_index, u16 arg1, s32 arg2) {
    func_80073EF4(actor_index);
    gActors[actor_index].var_0D8 = (arg1 & 0x700) * 0x10;
    gActors[actor_index].var_0D8 |= D_800D80C0[(arg1 & 0x3000) / 4096];
}

void func_8007406C(u16 actor_index, u16 arg1, s32 arg2) {
    func_80073EF4(actor_index);
    gActors[actor_index].var_0D8 = arg1 & 0x7000;
}

void func_800740C8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    default:
        break;
    case 0xFFFF:
        gActors[actor_index].state--;
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        func_8006CD5C(actor_index);
        /* fallthrough */
    case 0xFFFE:
        Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.03125));
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
        }
        if (((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) || 
            ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            gActors[actor_index].velocityY.raw = 0;
        }
        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                Sound_PlaySfxAtActor2(SFX_0036, actor_index);
                gActors[actor_index].state--;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].graphicList = D_800E20E0; \
                gActors[actor_index].graphicTimer = 1;
            }
        }
        break;
    case 0xFFFD:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 4);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

u16 func_800742B8(u16 arg0) {
    if (arg0 & 1) {
        return Actor_RangeFindInactive(1, 0x10);
    }
    else {
        return Actor_RangeFindInactive(0x70, 0x7A);
    }
}

u16 func_800742FC(u16 actor_dst, u16 actor_src) {
    s32 rotation_index;
    u16 angle;

    gActors[actor_dst].rotateZ = gActors[actor_src].rotateZ;
    rotation_index = DEG_TO_INDEX(gActors[actor_src].rotateZ);
    if (gActors[actor_src].flags & ACTOR_FLAG_FLIPPED) {
        angle = (rotation_index + 0x1E8);
    }
    else {
        angle = (rotation_index + 0x18);
    }
    gActors[actor_dst].posX.raw = gActors[actor_src].posX.raw + TO_FIXED(COS(angle) * 26.0f);
    gActors[actor_dst].posY.raw = gActors[actor_src].posY.raw + TO_FIXED(SIN(angle) * 26.0f);
    gActors[actor_dst].posZ.raw = gActors[actor_src].posZ.raw + FIXED_UNIT(1);
    if (gActors[actor_src].flags & ACTOR_FLAG_FLIPPED) {
        angle += 0x18;
    }
    else {
        angle -= 0x18;
    }
    return angle;
}

u16 func_800744AC(u16 arg0, u16 arg1) {
    return func_800742FC(arg0, arg1);
}

u16 func_800744E0(u16 actor_dst, u16 actor_src) {
    s32 rotation_index;
    u16 angle;

    gActors[actor_dst].rotateZ = gActors[actor_src].rotateZ;
    rotation_index = DEG_TO_INDEX(gActors[actor_src].rotateZ);
    if (gActors[actor_src].flags & ACTOR_FLAG_FLIPPED) {
        angle = rotation_index + COS_DEG_180;
    }
    else {
        angle = rotation_index;
    }
    gActors[actor_dst].posX.raw = gActors[actor_src].posX.raw + TO_FIXED(COS(angle) * 16.0f);
    gActors[actor_dst].posY.raw = gActors[actor_src].posY.raw + TO_FIXED(SIN(angle) * 16.0f);
    gActors[actor_dst].posZ.raw = gActors[actor_src].posZ.raw + FIXED_UNIT(1);
    return angle;
}

u16 func_80074654(u16 actor_dst, u16 actor_src) {
    s32 rotation_index;
    u16 angle;

    gActors[actor_dst].rotateZ = gActors[actor_src].rotateZ;
    rotation_index = DEG_TO_INDEX(gActors[actor_src].rotateZ);
    if (gActors[actor_src].flags & ACTOR_FLAG_FLIPPED) {
        angle = rotation_index + 0x218;
    }
    else {
        angle = rotation_index - 0x18;
    }
    gActors[actor_dst].posX.raw = gActors[actor_src].posX.raw + TO_FIXED(COS(angle) * 20.0f);
    gActors[actor_dst].posY.raw = gActors[actor_src].posY.raw + TO_FIXED(SIN(angle) * 20.0f);
    gActors[actor_dst].posZ.raw = gActors[actor_src].posZ.raw + FIXED_UNIT(1);
    if (gActors[actor_src].flags & ACTOR_FLAG_FLIPPED) {
        angle -= 0x18;
    }
    else {
        angle += 0x18;
    }
    return angle;
}

void func_80074804(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = ACTORTYPE_OVL1_GEN_GUNMISSLE;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].damage = 80;
    if (arg1 & 1) {
        gActors[actor_index].flags = ACTOR_FLAG_UNK7 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        Actor_SetHitboxA(actor_index, 7);
    }
    else {
        gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        Actor_SetHitboxA(actor_index, 4);
        Actor_SetHitboxB(actor_index, 6);
        gActors[actor_index].damage /= 2;
    }
    gActors[actor_index].graphicIndex = GINDEX_3064;
    gActors[actor_index].unk_0CE = 9;
    gActors[actor_index].unk_0DF = ACTOR0DF_6;
    gActors[actor_index].hitFlags = HITFLAG_7 | HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_BOOM_10; \
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(1); \
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(5);
    gActors[actor_index].scaleY = 2.0f;
    gActors[actor_index].unk_114 = 240.0f;
    gActors[actor_index].unk_118 = 30.0f;
}

u16 func_80074938(u16 actor_index, u16 arg1) {
    u16 free_actor;
    u16 angle;

    free_actor = func_800742B8(arg1 & 1);
    if (free_actor) {
        gActors[free_actor].var_0D8 = (arg1 & 0x1F00) / 256;
        func_80074804(free_actor, arg1 & 1);
        if (gActors[free_actor].var_0D8 & 1) {
            gActors[free_actor].damage /= 2;
            gActors[free_actor].graphicFlags &= ~ACTOR_GFLAG_SCALE;
            Sound_PlaySfxAtActor2(SFX_00D6, actor_index);
        }
        else {
            Sound_PlaySfxAtActor2(SFX_LASER_0052, actor_index);
        }
        gActors[free_actor].flags += gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        angle = func_800744AC(free_actor, actor_index);
        gActors[free_actor].velocityX.raw = COS(angle) * FIXED_UNIT(-0.5);
        gActors[free_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(-0.5);
        if (arg1 & 1) {
            gActors[free_actor].var_158 = COS(angle) * FIXED_UNIT(0.28125);
            gActors[free_actor].var_15C = SIN(angle) * FIXED_UNIT(0.28125);
        }
        else {
            gActors[free_actor].var_158 = COS(angle) * FIXED_UNIT(0.15625);
            gActors[free_actor].var_15C = SIN(angle) * FIXED_UNIT(0.15625);
        }
        if (gActors[free_actor].flags & ACTOR_FLAG_FLIPPED) {
            gActors[free_actor].unk_16C = TO_FIXED(-angle) + FIXED_UNIT(512);
        }
        else {
            gActors[free_actor].unk_16C = TO_FIXED(angle);
        }
        gActors[free_actor].unk_170 = TO_FIXED(angle);
        gActors[free_actor].unk_184 = actor_index;
        gActors[free_actor].unk_188 = gActors[actor_index].actorType;
    }
    return free_actor;
}

void func_80074C30(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = ACTORTYPE_OVL1_GEN_GUNBULLET;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    if (arg1 & 1) {
        gActors[actor_index].flags = ACTOR_FLAG_UNK7 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        Actor_SetHitboxA(actor_index, 6);
    }
    else {
        gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        Actor_SetHitboxA(actor_index, 1);
        Actor_SetHitboxB(actor_index, 6);
    }
    gActors[actor_index].graphicIndex = GINDEX_MOCHI;
    gActors[actor_index].unk_0DF = ACTOR0DF_5 | ACTOR0DF_2;
    gActors[actor_index].hitFlags = HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_3; \
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2); \
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(0.5);
    gActors[actor_index].damage = 5;
    gActors[actor_index].scaleY = 1.5f;
}

u16 func_80074D28(u16 actor_index, u16 arg1) {
    u16 free_actor;
    u16 angle;
    u16 pad;

    free_actor = func_800742B8(arg1 & 1);
    if (free_actor) {
        func_80074C30(free_actor, arg1 & 1);
        gActors[free_actor].flags += gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        switch (arg1 & 0xF000) {
        case 0x0:
            angle = func_800742FC(free_actor, actor_index);
            break;
        case 0x1000:
            angle = func_800744E0(free_actor, actor_index);
            break;
        }
        angle = angle - (Rand() & 0x1F) + 0x10;
        if (arg1 & 1) {
            gActors[free_actor].unk_114 = 10.0f;
            gActors[free_actor].velocityX.raw = COS(angle) * FIXED_UNIT(4);
            gActors[free_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(4);
            gActors[free_actor].var_158 = COS(angle) * FIXED_UNIT(0.5);
            gActors[free_actor].var_15C = SIN(angle) * FIXED_UNIT(0.5);
        }
        else {
            gActors[free_actor].unk_114 = 20.0f;
            gActors[free_actor].velocityX.raw = COS(angle) * FIXED_UNIT(1);
            gActors[free_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(1);
            gActors[free_actor].var_158 = COS(angle) * FIXED_UNIT(0.25);
            gActors[free_actor].var_15C = SIN(angle) * FIXED_UNIT(0.25);
        }
        gActors[free_actor].var_150 = 0x18;
        Sound_PlaySfxAtActor3(SFX_SHOT_0046, free_actor);
    }
    return free_actor;
}

s32 func_8007502C(u16 actor_index, u16 arg1) {
    u16 index;
    u16 free_actor;
    u16 base_actor;
    u16 angle;
    u16 base_angle;

    for (index = 0; index != 3; index++) {
        free_actor = func_800742B8(arg1 & 1);
        if (free_actor) {
            func_80074C30(free_actor, arg1 & 1);
            gActors[free_actor].flags += gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
            if (index == 0) {
                angle = func_800742FC(free_actor, actor_index);
                base_actor = free_actor;
                base_angle = angle;
            } 
            else {
                gActors[free_actor].posX.raw = gActors[base_actor].posX.raw;
                gActors[free_actor].posY.raw = gActors[base_actor].posY.raw;
                gActors[free_actor].posZ.raw = gActors[base_actor].posZ.raw;
                angle = (D_800D80C8[index] + base_angle);
                angle &= COS_MASK;
                gActors[free_actor].rotateZ = INDEX_TO_DEG((f32)angle);
            }
            gActors[free_actor].unk_114 = 10.0f;
            gActors[free_actor].velocityX.raw = COS(angle) * FIXED_UNIT(1);
            gActors[free_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(1);
            gActors[free_actor].var_158 = COS(angle) * FIXED_UNIT(0.75);
            gActors[free_actor].var_15C = SIN(angle) * FIXED_UNIT(0.75);
            gActors[free_actor].var_150 = 0x12;
        }
    }
    if (index) {
        Sound_PlaySfxAtActor3(SFX_SHOT_0046, free_actor);
        return TRUE;
    }
    return FALSE;
}

s32 func_80075324(u16 actor_index, u16 arg1) {
    u16 free_actor;
    u16 angle;

    free_actor = func_800742B8(arg1 & 1);
    if (free_actor) {
        angle = func_80074654(free_actor, actor_index);
        func_8002DB0C(
            free_actor,
            arg1 & 1,
            TO_FIXED(angle),
            gActors[free_actor].posX.raw,
            gActors[free_actor].posY.raw,
            gActors[free_actor].posZ.raw
        );
        return TRUE;
    }
    return FALSE;
}

void func_800753C4(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 16; \
    gActors[actor_index].hitboxBY1 = -4; \
    gActors[actor_index].hitboxBX0 = -8;\
    gActors[actor_index].hitboxBX1 = 8; \
}

void func_80075418(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(1.0 / 16.0));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
    }
}

s32 func_80075498(u16 actor_index) {
    func_80075418(actor_index);
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        Sound_PlaySfxAtActor2(SFX_0075, actor_index);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
            gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.2;
            gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.3;
        }
        else {
            gActors[actor_index].state = 0x20;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            return TRUE;
        }
    }
    return FALSE;
}

s32 func_800755F8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x10;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        return TRUE;
    }
    return FALSE;
}

s32 func_80075670(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 0x100;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        func_80029134(actor_index);
        return TRUE;
    }
    return FALSE;
}

void func_800756FC(u16 actor_index) {
    gActors[actor_index].state = 0x20;
    ACTOR_GFX_INIT(actor_index, D_800E2564);
}

void func_8007574C(u16 actor_index, s16 arg1) {
    s16 sign;

    gActors[actor_index].var_158--;
    if (gActors[actor_index].var_154 & 1) {
        if ((((gActors[actor_index].unk_178 + arg1) < gActors[actor_index].unk_180) ||
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) && (gActors[actor_index].var_158 < 0)) {
            func_800756FC(actor_index);
            gActors[actor_index].var_158 = 0x1E;
            gActors[actor_index].var_154 ^= 1;
        }
        else {
            sign = 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
    else if (((gActors[actor_index].unk_180 < (gActors[actor_index].unk_178 - arg1)) ||
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) && (gActors[actor_index].var_158 < 0)) {
        func_800756FC(actor_index);
        gActors[actor_index].var_158 = 0x1E;
        gActors[actor_index].var_154 ^= 1;
    }
    else {
        sign = -1;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    if (gActiveFrames & 8) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, sign * FIXED_UNIT(0.75), FIXED_UNIT(0.25));
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, sign * FIXED_UNIT(0.375), FIXED_UNIT(0.25));
    }
}

void func_80075900(u16 actor_index) {
    u16 should_spawn;

    if (!(gActors[actor_index + 1].unk_188 & 0x8000)) {
        if (gActors[actor_index].unk_11C < 0.0f) {
            should_spawn = FALSE;
            if (!((u16)gActors[actor_index].var_110 & 0xF0) && (D_800E3584 & 0x30000)) {
                if (func_80029B00(0xC0, 0x40, -0x40)) {
                    should_spawn = TRUE;
                }
            }
            if (should_spawn) {
                gActors[actor_index].state = 0x21;
                gActors[actor_index].var_158 = 0x14;
                gActors[actor_index].unk_120 = 0.0f;
                SpawnParticle_Exclamation(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 1);
            }
        }
    }
}

void func_80075A90(u16 actor_index) {
    u16 should_update;

    if (!(gActors[actor_index + 1].unk_188 & 0x8000)) {
        if (gActors[actor_index].unk_11C < 0.0f) {
            should_update = FALSE;
            switch ((u16)gActors[actor_index].var_110 & 0xF) {
            case 0:
                if (func_80074938(actor_index + 1, 0)) {
                    gActors[actor_index].unk_11C = 40.0f;
                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        gActors[actor_index].velocityX.raw = FIXED_UNIT(1.375);
                    }
                    else {
                        gActors[actor_index].velocityX.raw = FIXED_UNIT(-1.375);
                    }
                    gActors[actor_index].unk_120 += 1.0f;
                    if (gActors[actor_index].unk_120 > 2.0f) {
                        should_update = TRUE;
                    }
                }
                break;
            case 1:
                if (func_80074D28(actor_index + 1, 0)) {
                    gActors[actor_index].unk_11C = 8.0f;
                    gActors[actor_index].unk_120 += 1.0f;
                    if (gActors[actor_index].unk_120 > 5.0f) {
                        should_update = TRUE;
                    }
                }
                break;
            }
            if (should_update) {
                gActors[actor_index].state = 0x20;
                gActors[actor_index].var_158 = 0xA;
                gActors[actor_index].unk_11C = 140.0f;
            }
        }
    }
}

void func_80075CD8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
    func_800755F8(actor_index);
    func_80075670(actor_index);
}

void func_80075D50(u16 actor_index) {
    gActors[actor_index].flags = 0;
    Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
    func_8003F138(0.8f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
}

void ActorUpdate_CatTank(u16 actor_index) {
    u16 temp_v0;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[actor_index].health <= 0)) {
        func_80075D50(actor_index);
        return;
    }

    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].posZ.raw = (actor_index * 4) - 4;
    if (gActors[actor_index].unk_11C >= 0.0f) {
        gActors[actor_index].unk_11C -= 1.0f;
    }
    switch ( gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x10;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_800E2564);
        gActors[actor_index].unk_0CE = 10;
        gActors[actor_index].health = 10;
        gActors[actor_index].scaleX = 0.8f;
        gActors[actor_index].scaleY = 0.8f;
        func_800753C4(actor_index);
        gActors[actor_index].unk_178 = gActors[actor_index].unk_180;
        gActors[actor_index].unk_17C = gActors[actor_index].unk_184;
        if (gActors[D_800E3580].posX.whole < gActors[actor_index].posX.whole) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        break;
    case 0x10:
        func_80075498(actor_index);
        func_80075670(actor_index);
        break;
    case 0x20:
        gActors[actor_index].var_158--;
        if (gActors[actor_index].var_158 < 0) {
            gActors[actor_index].state = 0x30;
        }
        func_80075900(actor_index);
        func_80075CD8(actor_index);
        break;
    case 0x21:
        gActors[actor_index].var_158--;
        if (gActors[actor_index].var_158 < 0) {
            gActors[actor_index].state++;
        }
        func_80075CD8(actor_index);
        break;
    case 0x22:
        func_80075A90(actor_index);
        func_80075CD8(actor_index);
        break;
    case 0x30:
        gActors[actor_index].state++;
        gActors[actor_index].var_158 = 0x1E;
        ACTOR_GFX_INIT(actor_index, D_800E2578);
        /* fallthrough */
    case 0x31:
        func_8007574C(actor_index, gActors[actor_index].var_0D8 & 0xFF);
        func_80075900(actor_index);
        func_800755F8(actor_index);
        func_80075670(actor_index);
        if ((gActiveFrames % 9) == 0) {
            Sound_PlaySfxAtActor3(SFX_00A5, actor_index);
        }
        break;
    case 0x100:
        temp_v0 = func_800291AC(
            actor_index,
            0x110,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW,
            0x10,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW
        );
        switch (temp_v0) {
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            // fallthrough
        case 2:
            func_800753C4(actor_index);
            break;
        }
        break;
    case 0x110:
        if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            func_80075D50(actor_index);
        }
        if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
            ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
            func_80075D50(actor_index);
        }
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            func_80075D50(actor_index);
        }
        func_80075498(actor_index);
        func_80075670(actor_index);
        break;
    }
    func_80032E60(actor_index, 0x2CC, 0x60, 13.0f, 1, 1.0f, 1.0f);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

f32 func_80076228(f32 val) {
    if (val < 0.0f) {
        val = -val;
    }
    if (val > FIXED_UNIT(4)) {
        val = FIXED_UNIT(4);
    }
    return FROM_FIXED(val) / 10.0f;
}

void func_80076270(u16 actor_index) {
    u16 index;

    index = (((u16)gActors[actor_index].var_110 & 0x30) / 16) * 4;
    gActors[actor_index].hitboxBY0 = D_800D80D0[index + 0];
    gActors[actor_index].hitboxBY1 = D_800D80D0[index + 1];
    gActors[actor_index].hitboxBX0 = D_800D80D0[index + 2];
    gActors[actor_index].hitboxBX1 = D_800D80D0[index + 3];
}

s32 func_80076374(u16 actor_index) {
    s32 x;

    if (gActors[actor_index].velocityX.raw == 0) {
        if (Rand() & 1) {
            x = FIXED_UNIT(0.5);
        }
        else {
            x = FIXED_UNIT(-0.5);
        }
    }
    else {
        x = gActors[actor_index].velocityX.raw;
    }
    return (TO_FIXED(Math_Atan2(x, gActors[actor_index].velocityY.raw)) + FIXED_UNIT(256)) & 0x03FFFFFF;
}

void func_80076414(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
    }
    gActors[actor_index].unk_16C = func_800298D0(func_80076374(actor_index), gActors[actor_index].unk_16C, FIXED_UNIT(32.0));
}

s32 func_800764B0(u16 actor_index) {
    f32 temp_f2;

    func_80076414(actor_index);
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || 
        ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || 
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].state = 0x12;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        gActors[actor_index].unk_118 = 3.0f;
        temp_f2 = func_80076228(gActors[actor_index].velocityX.raw);
        gActors[actor_index].unk_130 = 1.0 + (temp_f2 * 1.5);
        gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 2;
        gActors[actor_index].unk_134 = 1.0 - temp_f2;
        gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 2;
        gActors[actor_index].velocityY.raw += 131072.0f / gActors[actor_index].unk_144;
        gActors[actor_index].var_158 = (f32) -(gActors[actor_index].velocityX.raw * 0.6);
        gActors[actor_index].var_15C = (f32) (gActors[actor_index].velocityY.raw * 0.8);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = (f32) gActors[actor_index].velocityY.raw * 0.4;
    }
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
            gActors[actor_index].state = 0x11;
            gActors[actor_index].unk_118 = 3.0f;
            temp_f2 = func_80076228(gActors[actor_index].velocityY.raw);
            gActors[actor_index].unk_130 = 1.0 + (temp_f2 * 1.5);
            gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 3.0f;
            gActors[actor_index].unk_134 = 1.0 - temp_f2;
            gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 3.0f;
            gActors[actor_index].var_158 = (f32) gActors[actor_index].velocityX.raw * 0.2;
            gActors[actor_index].var_15C = (f32) -gActors[actor_index].velocityY.raw * 0.3;
            gActors[actor_index].unk_140_f32 = -1.0f;
            gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.3;
            gActors[actor_index].velocityY.raw = 0;
        }
        else {
            gActors[actor_index].state = 0x20;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_138 = 0.1f;
            gActors[actor_index].unk_13C_f32 = 0.1f;
            return TRUE;
        }
    }
    return FALSE;
}

s32 func_800768D8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x10;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        return TRUE;
    }
    return FALSE;
}

// func_80076950 is unused
void func_80076950(u16 actor_index) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
}

s32 func_800769AC(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 0x100;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        func_80029134(actor_index);
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        return TRUE;
    }
    return FALSE;
}

void func_80076A38(u16 actor_index) {
    gActors[actor_index].state = 1;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].flags_098 = 0;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityZ.raw = 0;
    gActors[actor_index].posX.whole = gActors[actor_index].unk_170 - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = gActors[actor_index].unk_174 - gScreenPosCurrentY.whole;
}

void func_80076AB4(u16 actor_index, f32 arg1) {
    s32 index;

    if ((gActors[actor_index].flags & ACTOR_FLAG_ENABLED) == ACTOR_FLAG_ENABLED) {
        index = (u16)gActors[actor_index].var_110 & 0xF00;
        if (index) {
            func_80032E60(actor_index, D_800D80F0[index / 256], 0x100, gActors[actor_index].scaleY * 3.0f, 1, (f64)arg1, (f64)arg1);
        }
    }
}

void func_80076BF4(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_CLANBLOB;
        gActors[actor_index].palette_18C = D_800D18E4[(u16)gActors[actor_index].var_110 & 0xF];
        gActors[actor_index].scaleX = D_800D8108[((u16)gActors[actor_index].var_110 & 0x30) / 16];
        gActors[actor_index].scaleY = D_800D8108[((u16)gActors[actor_index].var_110 & 0x30) / 16];
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
    func_80076AB4(actor_index, 0.7f);
}

void Clanblob_Update(u16 actor_index) {
    f32 temp_f2;
    s32 var_a0;
    u16 temp_v0;

    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (Clanpot_AddItemCheck3(actor_index, 0x400, 0, 0, 0x6A) >= 0) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].state = 0x1000;
    }
    if ((gActors[actor_index].state > 1) && (gActors[actor_index].state != 0x1000)) {
        if ((gActors[actor_index].health <= 0) || (gActors[actor_index].hitboxBY0 & 0x80)) {
            func_8003F138(0.6f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
            Sound_PlaySfxAtActor2(SFX_005D, actor_index);
            if ((u16)gActors[actor_index].var_110 & 0x8000) {
                func_80076A38(actor_index);
            }
            else {
                gActors[actor_index].flags = 0;
                return;
            }
        }
        else {
            if (((u16)gActors[actor_index].var_110 & 0x2000) && (Actor_IsOutsideRegion(actor_index, 128))) {
                if ((u16)gActors[actor_index].var_110 & 0x4000) {
                    func_80076A38(actor_index);
                }
                else {
                    gActors[actor_index].flags = 0;
                    return;
                }
            }
            else {
                func_8002877C(actor_index);
                D_800E3580 = 0;
                func_8002AA20(actor_index, 0);
                gActors[actor_index].posZ.whole = -4;
                if (gActors[actor_index].unk_140_f32 >= 0.0f) {
                    gActors[actor_index].unk_140_f32 -= 1.0f;
                }
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
                    if (gActors[actor_index].velocityY.raw >= 0) {
                        gActors[actor_index].velocityY.raw = -1;
                    }
                    gActors[actor_index].unk_140_f32 = 3.0f;
                }
                if ((gActors[actor_index].state != 0x100) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
                    switch (gActors[actor_index].hitByType) {
                    default:
                        gActors[actor_index].state = 0x110;
                        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                        gActors[actor_index].unk_130 = 0.95f;
                        gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 4;
                        gActors[actor_index].unk_134 = 1.5f;
                        gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 4;
                        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                        gActors[actor_index].unk_16C = func_80076374(actor_index);
                        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(2)) {
                            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                        }
                        break;
                    case HITTYPE_19:
                        if ((u16)gActors[actor_index].var_110 & 0x8000) {
                            func_80076A38(actor_index);
                        }
                        else {
                            gActors[actor_index].flags = 0;
                            gActors[actor_index].health = 0;
                            return;
                        }
                        break;
                    case HITTYPE_23:
                        break;
                    }
                }
            }
        }
    }

    switch (gActors[actor_index].state) {
    case 0x1:
        if (Actor_IsOutsideRegion(actor_index, 0x70) == 0) {
            break;
        }
        gActors[actor_index].state--;
        // fallthrough
    case 0x0:
        gActors[actor_index].state = 0x10;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = GINDEX_CLANBLOB;
        gActors[actor_index].health = 10;
        gActors[actor_index].unk_0CE = 10;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].hitFlags = 0;
        func_80076270(actor_index);
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = 0;
        gActors[actor_index].unk_168 = 0;
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0];
        gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0];
        gActors[actor_index].unk_178 = gActors[actor_index].posX.whole + gScreenPosCurrentX.parts[0];
        gActors[actor_index].unk_17C = gActors[actor_index].posY.whole + gScreenPosCurrentY.parts[0];
        gActors[actor_index].unk_190 = 0;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = D_800D18E4[(u16)gActors[actor_index].var_110 & 0xF];
        gActors[actor_index].unk_114 = 0.0f;
        gActors[actor_index].unk_118 = 0.0f;
        gActors[actor_index].unk_11C = 0.0f;
        gActors[actor_index].unk_120 = 0.0f;
        gActors[actor_index].unk_124 = 0.0f;
        gActors[actor_index].unk_128 = 0.0f;
        gActors[actor_index].unk_12C = 0.0f;
        gActors[actor_index].unk_134 = 0.0f;
        gActors[actor_index].unk_13C_f32 = 0.0f;
        gActors[actor_index].unk_140_f32 = 0.0f;
        gActors[actor_index].unk_148 = 0.0f;
        gActors[actor_index].unk_130 = 1.0f;
        gActors[actor_index].unk_138 = 1.0f;
        gActors[actor_index].unk_144 = D_800D8108[((u16)gActors[actor_index].var_110 & 0x30) / 16];
        gActors[actor_index].scaleX = gActors[actor_index].unk_144;
        gActors[actor_index].scaleY = gActors[actor_index].unk_144;
        break;
    case 0x10:
        func_800764B0(actor_index);
        func_800769AC(actor_index);
        break;
    case 0x11:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
            gActors[actor_index].unk_140_f32 = 3.0f;
        }
        if (gActors[actor_index].unk_140_f32 >= 0.0f) {
            gActors[actor_index].hitboxBY0--;
            gActors[actor_index].unk_140_f32 -= 1.0f;
            if (gActors[actor_index].hitboxBY0 & 0x80) {
                func_8003F138(0.6f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
                gActors[actor_index].flags = 0;
                return;
            }
        }
        else {
            func_80076270(actor_index);
            gActors[actor_index].unk_118 -= 1.0f;
            if (gActors[actor_index].unk_118 < 0.0f) {
                gActors[actor_index].state--;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
                gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
                gActors[actor_index].velocityX.raw = gActors[actor_index].var_158;
                temp_f2 = func_80076228(gActors[actor_index].velocityY.raw);
                gActors[actor_index].unk_130 = 1.0 - temp_f2;
                gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 8;
                gActors[actor_index].unk_134 = 1.0 + temp_f2;
                gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 4;
                Sound_PlaySfxAtActor2(SFX_0119, actor_index);
            }
        }
        gActors[actor_index].unk_16C = func_800298D0(0, gActors[actor_index].unk_16C, FIXED_UNIT(48));
        func_800769AC(actor_index);
        break;
    case 0x12:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 < 0.0f) {
            gActors[actor_index].state -= 2;
            gActors[actor_index].velocityX.raw = gActors[actor_index].var_158;
            gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
            temp_f2 = func_80076228(gActors[actor_index].velocityX.raw);
            gActors[actor_index].unk_130 = 1.0 - temp_f2;
            gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 4;
            gActors[actor_index].unk_134 = 1.0 + temp_f2;
            gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 8;
        }
        if (gActors[actor_index].var_158 > 0) {
            var_a0 = FIXED_UNIT(768);
        }
        else {
            var_a0 = FIXED_UNIT(256);
        }
        gActors[actor_index].unk_16C = func_800298D0(var_a0, gActors[actor_index].unk_16C, FIXED_UNIT(48));
        func_800769AC(actor_index);
        break;
    case 0x20:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        gActors[actor_index].unk_118 += 1.0f;
        var_a0 = (s32) gActors[actor_index].unk_118;
        if (var_a0 & 0x10) {
            gActors[actor_index].unk_130 = 1.2f;
        }
        else {
            gActors[actor_index].unk_130 = 1.0f;
        }
        if (!(var_a0 & 0xF)) {
            gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 28.0f;
        }
        var_a0 += 8;
        if (var_a0 & 0x10) {
            gActors[actor_index].unk_134 = 1.3f;
        }
        else {
            gActors[actor_index].unk_134 = 1.0f;
        }
        if (!(var_a0 & 0xF)) {
            gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 28.0f;
        }
        func_800768D8(actor_index);
        func_800769AC(actor_index);
        break;
    case 0x100:
        temp_v0 = func_800291AC(
            actor_index,
            0x110,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW,
            0x10,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW
        );
        switch (temp_v0) {
        case 0:
            if (gActiveFrames & 0x10) {
                gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(80), gActors[actor_index].unk_16C, FIXED_UNIT(14));
            }
            else {
                gActors[actor_index].unk_16C = func_800298D0(FIXED_UNIT(944), gActors[actor_index].unk_16C, FIXED_UNIT(14));
            }
            if (gActiveFrames & 8) {
                gActors[actor_index].unk_130 = 0.8f;
                gActors[actor_index].unk_134 = 1.4f;
                gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 12.0f;
                gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 12.0f;
            }
            else {
                gActors[actor_index].unk_134 = 0.8f;
                gActors[actor_index].unk_130 = 1.4f;
                gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 12.0f;
                gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 12.0f;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE) {
                gActors[actor_index].unk_130 = 0.8f;
                gActors[actor_index].unk_134 = 1.4f;
                gActors[actor_index].unk_138 = (gActors[actor_index].unk_130 - gActors[actor_index].scaleX) / 4;
                gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 4;
            }
            break;
        case 3:
            func_80076270(actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            /* fallthrough */
        case 2:
            func_80076270(actor_index);
            gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 + 1;
            gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 - 1;
            gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
            gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
            gActors[actor_index].damage = 10;
            gActors[actor_index].unk_130 = 0.95f;
            gActors[actor_index].unk_134 = 1.5f;
            gActors[actor_index].unk_138 = (gActors[actor_index].unk_130  - gActors[actor_index].scaleX) / 4;
            gActors[actor_index].unk_13C_f32 = (gActors[actor_index].unk_134 - gActors[actor_index].scaleY) / 4;
            gActors[actor_index].unk_16C = func_80076374(actor_index);
            break;
        }
        break;
    case 0x110:
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
            gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.3;
            gActors[actor_index].velocityY.raw = 0;
        }
        func_800764B0(actor_index);
        func_800769AC(actor_index);
        break;
    case 0x1000:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state = 0x100;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        }
        break;
    }

    if (gActors[actor_index].state > 1) {
        if (gActors[actor_index].unk_138 < 0.0f) {
            gActors[actor_index].unk_138 = -gActors[actor_index].unk_138;
        }
        if (gActors[actor_index].unk_13C_f32 < 0.0f) {
            gActors[actor_index].unk_13C_f32 = -gActors[actor_index].unk_13C_f32;
        }
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, gActors[actor_index].unk_130 * gActors[actor_index].unk_144, gActors[actor_index].unk_138 * gActors[actor_index].unk_144);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_134 * gActors[actor_index].unk_144, gActors[actor_index].unk_13C_f32 * gActors[actor_index].unk_144);
        gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].unk_16C));
        func_80076AB4(actor_index, 1.0f);
    }
}

void ActorUpdate_Clanblob(u16 actor_index) {
    Clanblob_Update(actor_index);
    if (gActors[actor_index].state == 0x20) {
        gActors[actor_index].state = 0x11;
        gActors[actor_index].unk_118 = 6.0f;
        gActors[actor_index].unk_130 = 1.3f;
        gActors[actor_index].unk_134 = 0.8f;
        gActors[actor_index].unk_138 = (1.3f - gActors[actor_index].scaleX) / 6.0f;
        gActors[actor_index].unk_13C_f32 = (0.8f - gActors[actor_index].scaleY) / 6.0f;
        if (gActors[actor_index].unk_178 < gActors[actor_index].unk_180) {
            gActors[actor_index].var_158 = FIXED_UNIT(-1.5);
        }
        else {
            gActors[actor_index].var_158 = FIXED_UNIT(1.5);
        }
        gActors[actor_index].var_15C = ((Rand() & 7) << 14) + FIXED_UNIT(2.5);
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_80077D24(u16 actor_index) {
    s16 angle;
    s32 target_angle;
    s32 x;
    s32 y;

    x = gActors[actor_index].unk_180 - gActors[actor_index].unk_178;
    y = gActors[actor_index].unk_184 - gActors[actor_index].unk_17C;
    target_angle = Math_Atan2(x, y);
    gActors[actor_index].unk_168 = func_800298D0(TO_FIXED(target_angle), gActors[actor_index].unk_168, FIXED_UNIT(24));
    angle = FROM_FIXED(gActors[actor_index].unk_168);

    if (x < 0) {
        x = -x;
    }
    x = Math_ClampLimit(x << 8, 0x2000) & 0xFFFFFFFFFFFFFFFF; // fakematch

    if (y < 0) {
        y = -y;
    }
    y = Math_ClampLimit(y << 8, 0x2000);

    x = COS(angle) * x;
    if (x < 0) {
        x = -x;
    }
    y = SIN(angle) * y;
    if (y < 0) {
        y = -y;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, (COS(angle) * x * 16.0f), x);
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, (SIN(angle) * y * 16.0f), y);
}

void func_80077F58(u16 actor_index) {
    u16 temp_t0;
    u16 next_actor;

    temp_t0 = gActors[actor_index].var_110;
    if (temp_t0 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    next_actor = actor_index + 1;
    gActors[actor_index].flags |= ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = GINDEX_3050;
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].unk_16C = next_actor;
    gActors[next_actor].actorType = ACTORTYPE_PARTICLE;
    Actor_Initialize(next_actor);
    gActors[next_actor].graphicFlags = gActors[actor_index].graphicFlags;
    gActors[next_actor].flags = ACTOR_FLAG_ENABLED;
    gActors[next_actor].graphicList = D_800D8118;
    gActors[next_actor].graphicTimer = 1;
    gActors[next_actor].unk_130 = actor_index;
    gActors[next_actor].unk_14C = gActors[actor_index].actorType;
    gActors[next_actor].unk_13C_f32 = 1.0f;
    gActors[next_actor].unk_148 = 10.0f;
    gActors[next_actor].posZ.raw = gActors[actor_index].posZ.raw;
    if ((temp_t0 & 0x7000) != 0) {
        if ((temp_t0 & 0x7000) != 0x7000) {
            gActors[next_actor].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[next_actor].palette_18C = D_800D1938[(temp_t0 & 0x7000) / 4096];
        }
    }
}

void func_80078190(u16 actor_index, u16 arg1_unused) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    gActors[actor_index].health = 100;
    gActors[actor_index].grabType = GRABTYPE_6; \
    gActors[actor_index].unk_0DF = 2;
    gActors[actor_index].hitboxBY0 = 23; \
    gActors[actor_index].hitboxBY1 = -12; \
    gActors[actor_index].hitboxBX0 = -24; \
    gActors[actor_index].hitboxBX1 = 16;
}

void func_80078214(u16 actor_index) {
    f32 x_scale;
    u16 actor_1;

    actor_1 = gActors[actor_index].unk_16C_u16[1];
    if (actor_1 != 0) {
        if (gActors[actor_1].flags != 0) {
            if (actor_index == gActors[actor_1].unk_130) {
                gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_1].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED);
                gActors[actor_1].unk_148 = 1.0f;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].hitboxBX0 = -16; \
                    gActors[actor_index].hitboxBX1 = 24;
                    x_scale = 6.0f;
                }
                else {
                    gActors[actor_index].hitboxBX0 = -24; \
                    gActors[actor_index].hitboxBX1 = 16;
                    x_scale = -6.0f;
                }
                gActors[actor_1].unk_134 = gActors[actor_index].scaleX * x_scale;
                gActors[actor_1].unk_138 = gActors[actor_index].scaleY * 25.0f;
                gActors[actor_1].scaleX = gActors[actor_index].scaleX;
                gActors[actor_1].scaleY = gActors[actor_index].scaleY;
            }
        }
    }
}

void func_80078338(u16 actor_index) {
    s32 angle;
    s32 y;
    s32 z;
    s32 x;
    u16 free_actor;

    gActors[actor_index].var_150 ^= 0x4000;
    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        if (gActors[actor_index].var_150 & 0x4000) {
            x = FIXED_UNIT(8);
            y = FIXED_UNIT(3);
            z = 0x4E20;
        }
        else {
            x = FIXED_UNIT(31);
            y = FIXED_UNIT(6);
            z = 1;
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            angle = FIXED_UNIT(COS_DEG_180);
            x = -x;
        }
        else {
            angle = 0;
        }
        SpawnHovercraftShot(free_actor, 0, angle, gActors[actor_index].posX.raw + x, gActors[actor_index].posY.raw + y, gActors[actor_index].posZ.raw + z);
    }
}

void Hovercraft_Update(u16 actor_index) {
    s32 pad;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK15;
    gActors[actor_index].unk_178 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_17C = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].posZ.raw = (actor_index * 8) - FIXED_UNIT(4);
    if (gActors[actor_index].state > 0x10) {
        if (gActors[actor_index].health <= 0 || (((u16)gActors[actor_index].var_110 & 4) && Actor_IsOutsideRegion(actor_index, 128))) {
            if (gActors[actor_index].health <= 0) {
               func_8007406C(gActors[actor_index].unk_16C_u16[1], gActors[actor_index].var_110, gActors[actor_index].var_0D8);
                gActors[actor_index].flags = 0;
                return;
            }
            gActors[actor_index].unk_16C = 0;
            if ((u16)gActors[actor_index].var_110 & 2) {
                gActors[actor_index].state = 0x10;
                gActors[actor_index].flags = 2;
                gActors[actor_index].flags_098 = 0;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityZ.raw = 0;
                gActors[actor_index].posX.whole = gActors[actor_index].unk_170 - gScreenPosCurrentX.whole;
                gActors[actor_index].posY.whole = gActors[actor_index].unk_174 - gScreenPosCurrentY.whole;
            }
            else {
                gActors[actor_index].flags = 0;
                return;
            }
        }
        else if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) &&
            !(gActors[actor_index].state & 0x1000) &&
            !(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
            switch (gActors[actor_index].hitByType) {
            case HITTYPE_20:
            case HITTYPE_23:
                break;
            // default cases can be reduced. minimally needs: 2 and at least two other cases < 24 and not 20/23
            default:
            case HITTYPE_2:
            case HITTYPE_3:
            case HITTYPE_4:
            case HITTYPE_5:
            case HITTYPE_6:
            case HITTYPE_7:
            case HITTYPE_8:
            case HITTYPE_BOOM_9:
            case HITTYPE_BOOM_10:
            case HITTYPE_BOOM_11:
            case HITTYPE_SHOCK_12:
            case HITTYPE_SHOCK_13:
            case HITTYPE_SHOCK_14:
            case HITTYPE_15:
            case HITTYPE_16:
            case HITTYPE_17:
            case HITTYPE_18:
            case HITTYPE_19:
            case HITTYPE_21:
            case HITTYPE_22:
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                Actor_ClampVelocityX(actor_index, FIXED_UNIT(2.5));
                Actor_ClampVelocityY(actor_index, FIXED_UNIT(2.5));
                break;
            }
        }
        else if (gActors[actor_index].var_150 & 0x8000) {
            func_80078338(actor_index);
        }
    }

    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    switch (gActors[actor_index].state) {
    case 0x10:
        if (!Actor_IsOutsideRegion(actor_index, 112)) {
            break;
        }
        gActors[actor_index].state = 0;
        // fallthrough
    case 0x0:
        func_80078190(actor_index, 0);
        func_80077F58(actor_index);
        break;
    case 0x20:
    case 0x30:
    case 0x40:
    case 0x50:
        gActors[actor_index].state++;
        gActors[actor_index].var_160 = FIXED_UNIT(2);
        /* fallthrough */
    case 0x21:
    case 0x31:
    case 0x41:
    case 0x51:
        func_80077D24(actor_index);
        break;
    case 0x60:
    case 0x70:
    case 0x80:
    case 0x90:
        gActors[actor_index].state++;
        gActors[actor_index].unk_114 = 1.0f;
        /* fallthrough */
    case 0x61:
    case 0x71:
    case 0x81:
    case 0x91:
        func_80077D24(actor_index);
        break;
    }
    if (gActors[actor_index].state > 0x10) {
        func_80078214(actor_index);
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        if (((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) || 
            ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4))) {
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
        }
        if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || 
            ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        }
        gActors[actor_index].var_150 &= ~0x8000;
    }
}

void func_800789C4(u16 actor_index) {
    f32 scale_x;
    f32 scale_y;
    f32 sp3C;
    s16 rotation;
    u16 index;
    u32 angle;
    s32 sp30;

    if (gActors[actor_index].graphicIndex == 0) {
        return;
    }

    index = ((gActors[actor_index].graphicIndex - 0x3030) / 2) * 3;
    rotation = D_800D8268[index + 0];
    sp3C = D_800D8268[index + 1];
    sp30 = D_800D8268[index + 2];
    scale_x = 0.6 + (f32) (Rand() & 7) / 15.0f;
    scale_y = 0.6 - (f32) (Rand() & 7) / 15.0f;
    index = func_80032E60(
        actor_index,
        0x168,
        rotation,
        gActors[actor_index].scaleX * sp3C,
        -1,
        gActors[actor_index].scaleX * scale_x,
        gActors[actor_index].scaleX * scale_y
    );
    if (index != 0) {
        gActors[index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[index].colorA = 0xA0;
        angle = (COS_DEG_180 - sp30);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[index].rotateZ -= INDEX_TO_DEG(angle);
        }
        else {
            gActors[index].rotateZ += INDEX_TO_DEG(angle);
        }

        if (Rand() & 3) {
            if (gActiveFrames & 1) {
                gActors[index].palette_18C = PALETTE_8022D4E8;
            }
            else {
                gActors[index].palette_18C = D_800D84E8;
            }
        }
        else {
            gActors[index].palette_18C = D_800D8508;
        }
    }
}

void Rocketeer_FireParticle(u16 actor_index, u16 arg1_unused) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(
        D_800E1540,
        (gActors[actor_index].posX.whole - (Rand() & 0xF)) + 8,
        (gActors[actor_index].posY.whole - (Rand() & 0xF)) + 8,
        gActors[actor_index].posZ.whole - 1
    );
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = 1;
        gActors[particle_index].flags = 3;
        gActors[particle_index].scaleX = 1.0f;
        gActors[particle_index].scaleY = 1.0f;
        Actor_SetColorRgb(particle_index, 0x7F);
        gActors[particle_index].var_110 = 0.4f;
        gActors[particle_index].unk_118 = -0.08f;
        gActors[particle_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.5;
        gActors[particle_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.5;
        gActors[particle_index].var_158 = -gActors[actor_index].velocityX.raw / 6;
        gActors[particle_index].var_15C = -gActors[actor_index].velocityY.raw / 6;
        gActors[particle_index].unk_114 = 0.4f;
        gActors[particle_index].unk_11C = -0.08f;
        gActors[particle_index].unk_148 = 10.0f;
        gActors[particle_index].var_154 = -0x10;
        gActors[particle_index].unk_104 = -0x20;
        gActors[particle_index].pfn_17C = func_80030A24;
        gActors[particle_index].velocityZ.raw = -1;
    }
}

void Rocketeer_PackFlame(u16 actor_index, s32 arg1) {
    if (!(gActiveFrames & 1)) {
        Rocketeer_FireParticle(actor_index, 0);
    }
}

void func_80078F54(u16 actor_index) {
    s32 var_v1;

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    var_v1 = gActors[actor_index].unk_168 / FIXED_UNIT(1);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v1 = (var_v1 + (ARRAYLENGTH(gCosineLookup) / 2)) & COS_MASK;
    }
    gActors[actor_index].rotateZ = INDEX_TO_DEG(var_v1);
}

void func_80078FF0(u16 actor_index, s32 arg1, s32 arg2) {
    Actor* temp_s0;

    temp_s0 = &gActors[actor_index];
    if (temp_s0->var_150 & 1) {
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, arg1, arg2);
        if (((Rand() & 3) + temp_s0->unk_180) < temp_s0->unk_178) {
            temp_s0->var_150 &= ~1;
        }
    }
    else {
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, -arg1, arg2);
        if (temp_s0->unk_178 < (temp_s0->unk_180 - (Rand() & 3))) {
            temp_s0->var_150 |= 1;
        }
    }
    if (temp_s0->var_150 & 2) {
        temp_s0->velocityY.raw = Math_ApproachS32(temp_s0->velocityY.raw, arg1, arg2);
        if (((Rand() & 3) + temp_s0->unk_184) < temp_s0->unk_17C) {
            temp_s0->var_150 &= ~2;
        }
    }
    else {
        temp_s0->velocityY.raw = Math_ApproachS32(temp_s0->velocityY.raw, -arg1, arg2 * 2);
        if (temp_s0->unk_17C < (temp_s0->unk_184 - (Rand() & 3))) {
            temp_s0->var_150 |= 2;
        }
    }
    if (temp_s0->graphicTimer == 0) {
        if (temp_s0->velocityY.raw > FIXED_UNIT(1.125)) {
            temp_s0->graphicList = D_800D8198;
        }
        if (temp_s0->velocityY.raw < -FIXED_UNIT(1.125)) {
            temp_s0->graphicList = D_800D8190;
        }
        temp_s0->graphicTimer = 1;
    }
}

void func_800791D4(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].var_150 &= ~1;
    }
    else {
        gActors[actor_index].var_150 |= 1;
    }
    if (gActors[actor_index].velocityY.raw > 0) {
        gActors[actor_index].var_150 &= ~2;
    }
    else {
        gActors[actor_index].var_150 |= 2;
    }
}

s16 func_80079270(s16 actor_index) {
    actor_index *= 2;
    return ((actor_index + 1) / 2) - ((Rand() * 4) & actor_index);
}

s32 func_800792C0(u16 actor_index) {
    s16 temp_a1;
    s16 temp_v0;

    temp_v0 = gActors[actor_index].unk_180 - gActors[actor_index].unk_178;
    temp_a1 = gActors[actor_index].unk_184 - gActors[actor_index].unk_17C;
    if (temp_v0 > 7 && temp_v0 < -7 && temp_a1 > 7 && temp_a1 < -7) {
        return 1;
    }

    if ((gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        return 1;
    }

    return 0;
}

void func_80079378(u16 actor_index) {
    s32 var_t9;

    gActors[actor_index].unk_168 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].unk_168, FIXED_UNIT(16));
    func_80078F54(actor_index);
    var_t9 = gActors[actor_index].unk_168 / FIXED_UNIT(1);
    gActors[actor_index].velocityX.raw = COS(var_t9) * gActors[actor_index].var_160;
    gActors[actor_index].velocityY.raw = SIN(var_t9) * gActors[actor_index].var_160;
    Actor_ClampVelocityX(actor_index, FIXED_UNIT(8));
    gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, gActors[actor_index].var_15C, gActors[actor_index].unk_114 * 16384.0f);
    gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, gActors[actor_index].unk_114 * 12288.0f);
}

void func_8007951C(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -gActors[actor_index].var_160, gActors[actor_index].var_160 / 32);
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_160, gActors[actor_index].var_160 / 32);
    }

    if (gActors[actor_index].var_150 & 2) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(16.0/256));
        if (gActors[actor_index].unk_184 < gActors[actor_index].unk_17C) {
            gActors[actor_index].var_150 &= ~2;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -FIXED_UNIT(1), FIXED_UNIT(16.0/256));
        if (gActors[actor_index].unk_17C < (gActors[actor_index].unk_184 - 1)) {
            gActors[actor_index].var_150 |= 2;
        }
    }

    if ((gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) || (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4))) {
        gActors[actor_index].var_150 ^= 2;
        gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 1.2;
    }
    if (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) || (gActors[actor_index].velocityX.raw > 0 && gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 1.2;
    }
}

void func_80079760(u16 actor_index) {
    s32 arg0;

    func_80078F54(actor_index);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        arg0 = FIXED_UNIT(512.0);
    }
    else {
        arg0 = 0;
    }

    gActors[actor_index].unk_168 = func_800298D0(arg0, gActors[actor_index].unk_168, FIXED_UNIT(24));
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, gActors[actor_index].var_158 + FIXED_UNIT(1.0/512));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, gActors[actor_index].var_15C + FIXED_UNIT(1.0/512));
}

void func_80079810(u16 actor_index) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
    gActors[actor_index].flags |= (D_800E3574 + ACTOR_FLAG_UNK12);
    gActors[actor_index].var_150 &= ~(ACTOR_FLAG_UNK21 | ACTOR_FLAG_UNK20);
    ACTOR_GFX_INIT(actor_index, D_800D8190);
    func_800791D4(actor_index);
    gActors[actor_index].var_154 = 0;
}

void func_800798EC(u16 actor_index) {
    gActors[actor_index].state = 0x30;
    ACTOR_GFX_INIT(actor_index, D_800D81AC);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].velocityX.raw /= 2;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_154 = 0;
}

void func_80079984(u16 actor_index) {
    u16 var_t3;

    gActors[actor_index].state = 0x20;
    gActors[actor_index].var_154 = 0x1E;
    ACTOR_GFX_INIT(actor_index, D_800D81B8);
    var_t3 = gActors[actor_index].var_158 / FIXED_UNIT(1);
    gActors[actor_index].var_15C = gActors[actor_index].unk_114 * 393216.0f;
    gActors[actor_index].var_160 = gActors[actor_index].unk_114 * -65536.0f;
    if (COS(var_t3) < 0.0f) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 0x02000000;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 0;
    }
}

void func_80079AB4(u16 actor_index) {
    gActors[actor_index].state = 0x200;
    ACTOR_GFX_INIT(actor_index, D_800D8210);
    gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].var_150 |= 0x300000;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
}

void func_80079B28(u16 actor_index) {
    s16 var_s0;
    s16 var_s2;

    gActors[actor_index].state = 0x60;
    gActors[actor_index].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[actor_index].var_150 |= 0x300040;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_160 = 0x01000000;
    gActors[actor_index].unk_118 = 0.0f;
    var_s2 = 3;
    var_s0 = (gPlayerActor.posY.whole + gActors[actor_index].hitboxBY0) - 1;
    while (var_s2 > 0) {
        if ((func_80012AB4(gPlayerActor.posX.whole - 0x10, var_s0) & 0x80) || (func_80012AB4(gPlayerActor.posX.whole + 0x10, var_s0) & 0x80)) {
            gActors[actor_index].posY.whole -= 8;
            gPlayerActor.posY.whole -= 8;
        }
        var_s0 -= 8; var_s2--;
    }
    // Can't use ACTOR_INIT here
    gActors[actor_index + 1].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(actor_index + 1);
    gActors[actor_index + 1].flags = (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE);
    gActors[actor_index + 1].posX.whole = gActors[actor_index].posX.whole;
    gActors[actor_index + 1].posY.whole = gActors[actor_index].posY.whole;
    gActors[actor_index + 1].health = 0x64;
    gActors[actor_index + 1].hitboxBY0 = 0x30; gActors[actor_index + 1].hitboxBY1 = 8;
    gActors[actor_index + 1].hitboxBX0 = -0x18; gActors[actor_index + 1].hitboxBX1 = 0x18;
    gActors[actor_index + 1].flags_098 = 0;
}

void func_80079CE8(u16 actor_index) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive_90ToC0();
    if (free_actor != 0) {
        func_800333A0(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole, 1.5f);
        Sound_PlaySfx(SFX_BOOM_0093);
        func_80073FD8(free_actor, gActors[actor_index].var_110, gActors[actor_index].var_0D8);
    }
}

void func_80079DF8(u16 actor_index) {
    func_80034644(actor_index);
    Sound_PlaySfx(SFX_HIT_002D);
    gActors[actor_index].unk_118 = 4.0f;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].unk_114 += 5.0f;
    gActors[actor_index].var_154 = gActors[actor_index].velocityX.raw;
    gActors[actor_index].var_158 = gActors[actor_index].velocityY.raw;
    gActors[actor_index].velocityX.raw = gActors[actor_index].var_154 / 16;
    gActors[actor_index].velocityY.raw = gActors[actor_index].var_158 / 16;
}

void func_80079EB8(u16 actor_index) {
    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].var_154;
            gActors[actor_index].velocityY.raw = gActors[actor_index].var_158;
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
        }
    }
}

void func_80079F50(u16 actor_index, u16 other_actor_index) {
    s16 temp_f10;
    s16 temp;
    u16 var_v1;

    gActors[other_actor_index].parentIndex = actor_index;
    gActors[other_actor_index].flags_098 |= ACTOR_FLAG3_GRAB;
    var_v1 = (gActors[actor_index].graphicIndex - 0x3036) / 2 * 2;
    // + 0 required to match
    temp_f10 = D_800D82BC[var_v1 + 0] * gActors[actor_index].scaleX;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        temp_f10 = -temp_f10;
    }
    temp = D_800D82BC[var_v1 + 1] * gActors[actor_index].scaleX;
    gActors[other_actor_index].unk_104 = gActors[actor_index].posX.raw + (temp_f10 << 0x10);
    gActors[other_actor_index].unk_108 = gActors[actor_index].posY.raw + (temp << 0x10);
    gActors[other_actor_index].unk_10C = gActors[actor_index].posZ.raw - 8;
}

void func_8007A090(u16 actor_index, u16 other_actor_index) {
    s32 var_a3;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a3 = -FIXED_UNIT(1.75);
    }
    else {
        var_a3 = FIXED_UNIT(1.75);
    }

    SpawnRoundBomb(other_actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, var_a3, -FIXED_UNIT(2.5));
}

void func_8007A118(u16 actor_index, u16 other_actor_index) {
    gActors[other_actor_index].actorType = ACTORTYPE_OVL0_GEN_BOMB1;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[other_actor_index].velocityX.raw = -FIXED_UNIT(1.75);
    }
    else {
        gActors[other_actor_index].velocityX.raw = FIXED_UNIT(1.75);
    }
    gActors[other_actor_index].velocityY.raw = -FIXED_UNIT(2);
}

u16 func_8007A190(u16 actor_index) {
    u16 free_actor;

    gActors[actor_index].unk_128 -= 1.0f;
    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        ACTOR_INIT(free_actor, 0);
        gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole - 1;
        ((Actor2Func) gActors[actor_index].var_154)(actor_index, free_actor);
        gActors[actor_index].unk_118 = free_actor;
        gActors[actor_index].unk_11C = gActors[free_actor].actorType;
        gActors[free_actor].parentIndex = actor_index;
        gActors[free_actor].flags_098 = ACTOR_FLAG3_GRAB;
        gActors[actor_index].var_154 = gActors[free_actor].velocityX.raw * gActors[actor_index].scaleX;
        gActors[actor_index].var_158 = gActors[free_actor].velocityY.raw * gActors[actor_index].scaleX;
        gActors[actor_index].velocityX.raw /= 2;
        gActors[actor_index].velocityY.raw /= 2;
        if ((((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != 0) && gActors[actor_index].var_154 > 0) || (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) == 0) && gActors[actor_index].var_154 < 0)) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONFINAL;
        func_80079F50(actor_index, free_actor);
    }

    return free_actor;
}

u16 func_8007A3CC(u16 actor_index) {
    u16 free_actor;

    gActors[actor_index].unk_128 -= 1.0f;
    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        ACTOR_INIT(free_actor, 0);
        gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole - 1;
    }

    return free_actor;
}

s32 func_8007A4B0(u16 actor_index) {
    Actor* temp_v0;
    Actor* temp_v1;

    temp_v0 = &gActors[actor_index];
    temp_v1 = &gActors[(u16)temp_v0->unk_118];
    if (!(temp_v1->flags & ACTOR_FLAG_ACTIVE) || (u16)(temp_v0->unk_11C) != temp_v1->actorType) {
        func_80079810(actor_index);
        return 1;
    }

    if ((temp_v0->graphicIndex == GINDEX_303E) && (temp_v0->graphicTimer == 1)) {
        temp_v0->state += 1;
        temp_v1->flags_098 |= ACTOR_FLAG3_THROWN;
        temp_v1->unk_0F8.raw = temp_v0->var_154;
        temp_v1->unk_0FC.raw = temp_v0->var_158;
        Sound_PlaySfxAtActor2(SFX_THROW_002A, actor_index);
        return 1;
    }

    func_80079F50(actor_index, temp_v0->unk_118);
    return 0;
}

void func_8007A6A8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(1.0/4));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(1.0/4));
}

void func_8007A720(u16 actor_index) {
    Actor *actor = &gActors[actor_index];

    actor->iFrames = 5;
    actor->flags |= ACTOR_FLAG_UNK12;
    actor->var_150 |= 0x200000;\
    actor->var_150 &= ~0x100000;
    actor->velocityX.raw = 0;
    actor->velocityY.raw = 0;
    if (
        actor->unk_0F8.raw != 0 &&
        ((!(actor->flags & ACTOR_FLAG_FLIPPED) && actor->unk_0F8.raw > 0) || ((actor->flags & ACTOR_FLAG_FLIPPED) && actor->unk_0F8.raw < 0))
    ) {
        actor->flags ^= ACTOR_FLAG_FLIPPED;
    }
}

void func_8007A7C4(u16 actor_index) {
    func_8007A720(actor_index);
    gActors[actor_index].state = ACTOR_FLAG_UNK10;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
}

void func_8007A84C(u16 actor_index) {
    func_8007A7C4(actor_index);
    gActors[actor_index].graphicList = D_800D81F8;
    gActors[actor_index].graphicTimer = 1;
}

void func_8007A8B0(u16 actor_index) {
    u16 parent_index;

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[actor_index].var_150 & 0x100000)) {
        return;
    }

    if ((gActors[actor_index].var_150 & 0x200000) || (gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
        return;
    }

    parent_index = gActors[actor_index].parentIndex;
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
    switch (gActors[actor_index].hitByType) {
    case HITTYPE_23:
    case HITTYPE_20:
        break;
    case HITTYPE_4:
        func_80028B90(actor_index);
        /* fallthrough */
    case HITTYPE_3:
        gActors[actor_index].unk_0FC.raw = gActors[parent_index].unk_0FC.raw;
        /* fallthrough */
    case HITTYPE_2:
    default:
        gActors[actor_index].unk_114 = 0.0f;
        func_8007A84C(actor_index);
        break;
    case HITTYPE_8:
        func_80028B90(actor_index);
        /* fallthrough */
    case HITTYPE_7:
        gActors[actor_index].unk_0FC.raw = gActors[parent_index].unk_0FC.raw;
        /* fallthrough */
    case HITTYPE_6:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(SFX_CLANCER_OW_009D);
        break;
    case HITTYPE_BOOM_11:
        func_80028B90(actor_index);
        /* fallthrough */
    case HITTYPE_BOOM_10:
        gActors[actor_index].unk_0FC.raw = gActors[parent_index].unk_0FC.raw;
        /* fallthrough */
    case HITTYPE_BOOM_9:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(SFX_CLANCER_OW_009D);
        break;
    case HITTYPE_SHOCK_14:
        func_80028B90(actor_index);
        /* fallthrough */
    case HITTYPE_SHOCK_13:
        gActors[actor_index].unk_0FC.raw = gActors[parent_index].unk_0FC.raw;
        /* fallthrough */
    case HITTYPE_SHOCK_12:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(SFX_CLANCER_OW_009D);
        break;
    case HITTYPE_19:
        Sound_PlaySfx(SFX_CLANCER_OW_009D);
        gActors[actor_index].flags = 0;
        gActors[actor_index].health = 0;
        break;
    }
}

s32 func_8007AB44(u16 actor_index) {
    f32 var_f0;
    u16 angle;
    s32 var_a3;
    u16 var_v0_2;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && (func_80029044(actor_index) == 0)) {
        var_a3 = FIXED_UNIT(16) - Math_AbsS32(gActors[actor_index].velocityX.raw * 2);
        var_a3 = FROM_FIXED(var_a3);
        if (var_a3 < 2) {
            var_a3 = 2;
        }
        D_800BE704 = Math_ApproachS32(D_800BE704, var_a3, 1);
    }
    else {
        gActors[actor_index].state = 0x10;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
        gActors[actor_index].var_150 &= ~0x300000;
        D_800BE704 = 0x10;
        gActors[actor_index + 1].flags = ACTOR_FLAG_ACTIVE;
        return 1;
    }

    gActors[actor_index].graphicTimer = 0;
    gActors[actor_index].hitboxBY1 = gActors[actor_index].scaleX * -8.0f;
    var_a3 = gActors[actor_index].velocityX.raw;
    if (var_a3 < 0) {
        var_a3 = -var_a3;
    }
    if (var_a3 > FIXED_UNIT(6.0)) {
        gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONFINAL;
    }
    else {
        if ((var_a3 > FIXED_UNIT(3)) || (gActors[actor_index].velocityY.raw < FIXED_UNIT(-0.75))) {
            gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONMERCO;
        }
        else {
            gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONIMPHQ2;
        }
        if ((gActors[actor_index].velocityY.raw > FIXED_UNIT(3)) || (gActors[actor_index].velocityY.raw < FIXED_UNIT(-3))) {
            if ((u16)gActors[actor_index].unk_134) {
                gActors[actor_index].unk_134 = 0.0f;
                Sound_PlaySfxAtActor3(SFX_RUMBLE_00FD, actor_index);
            }
        }
        else if (!(gActiveFrames & 0xF)) {
            gActors[actor_index].unk_134 = 93.0f;
            Sound_PlaySfxAtActor3(SFX_RUMBLE_00FD, actor_index);
        }
    }
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    var_f0 = gActors[actor_index].velocityY.raw / 8192;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_f0 = -var_f0;
    }
    gActors[actor_index].rotateZ = var_f0;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v0_2 = (s32) DEG_TO_INDEX(var_f0) + 0xD0;
    }
    else {
        var_v0_2 = (s32) DEG_TO_INDEX(var_f0) + 0x130;
    }
    gActors[actor_index].var_160 = func_800298D0(TO_FIXED(var_v0_2), gActors[actor_index].var_160, FIXED_UNIT(8));
    angle = FROM_FIXED(gActors[actor_index].var_160);
    // The two float multiplies are required for matching.
    var_f0 = COS(angle) * 32.0f * (f32)FIXED_UNIT(1.0);
    gPlayerActor.posX.raw = gActors[actor_index].posX.raw + (s32) var_f0;
    var_f0 = SIN(angle) * 32.0f * (f32)FIXED_UNIT(1.0);
    gPlayerActor.posY.raw = gActors[actor_index].posY.raw + (s32) var_f0;
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    gPlayerActor.posZ.raw = gActors[actor_index].posZ.raw - FIXED_UNIT(16.0/256);
    var_a3 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole + 0x10;
    if (D_800D2918 < var_a3) {
        gActors[actor_index].posY.whole += D_800D2918 - var_a3;
    }
    var_a3 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (var_a3 < D_800D291C) {
        gActors[actor_index].posY.whole += D_800D291C - var_a3;
    }
    var_a3 = gActors[actor_index].var_15C;
    var_a3 /= 16;
    if (var_a3 <0) {
        var_a3 = -var_a3;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_15C, var_a3);
    var_a3 = gButtonHold & gButton_LTrig;
    if (!var_a3 && !(gButtonHold & gButton_RTrig)) {
        if (gActors[actor_index].velocityX.raw > FIXED_UNIT(1.5)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-1.5)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (((gButtonPress & gButton_LTrig) || (gButtonPress & gButton_RTrig)) && (gActors[actor_index].unk_118 < 0.0f)) {
        gActors[actor_index].unk_118 = 16.0f;
        Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
        gActors[actor_index].velocityX.raw -= ((f32) gActors[actor_index].velocityX.raw * 0.8);
        gActors[actor_index].var_15C -= ((f32) gActors[actor_index].var_15C * 1.5);
        gActors[actor_index].velocityY.raw -= ((f32) gActors[actor_index].velocityY.raw * 1.4);
    }
    else {
        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].var_15C -= FIXED_UNIT(1.0/4);
        }
        else if (gButtonHold & gButton_DRight) {
            gActors[actor_index].var_15C += FIXED_UNIT(1.0/4);
        }
        else if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, FIXED_UNIT(-0.5), FIXED_UNIT(16.0/256));
        }
        else {
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, FIXED_UNIT(0.5), FIXED_UNIT(16.0/256));
        }
    }
    var_a3 = gButtonHold & gButton_LTrig;
    if (var_a3 || (gButtonHold & gButton_RTrig)) {
        gActors[actor_index].var_15C = Math_ClampLimit(gActors[actor_index].var_15C, FIXED_UNIT(2.5));
        var_a3 = FIXED_UNIT(4.0);
        var_a3 |= FIXED_UNIT(0.5);
    }
    else {
        gActors[actor_index].var_15C = Math_ClampLimit(gActors[actor_index].var_15C, FIXED_UNIT(8));
        var_a3 = FIXED_UNIT(3.0);
        var_a3 |= FIXED_UNIT(0.5);
    }

    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(16.0/256));
    }
    else if (gButtonHold & gButton_DUp) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, var_a3, FIXED_UNIT(1.0/4));
    }
    else if (gButtonHold & gButton_DDown) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -var_a3, FIXED_UNIT(1.0/4));
    }
    else if ((gActors[actor_index].velocityX.raw > FIXED_UNIT(2)) || (gActors[actor_index].velocityX.raw < FIXED_UNIT(-2))) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(1.0/4));
    }
    else if (gActiveFrames & 0x10) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1.5), FIXED_UNIT(1.0/4));
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1.5), FIXED_UNIT(1.0/4));
    }
    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
    }
    gActors[actor_index].flags_098 |= gActors[actor_index + 1].flags_098;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(2);
        gActors[actor_index].posY.whole = gActors[actor_index + 1].posY.whole;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].posY.whole = gActors[actor_index + 1].posY.whole;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) || (func_80012AB4(gActors[actor_index + 1].posX.whole + gActors[actor_index + 1].hitboxBX0, (gActors[actor_index + 1].posY.whole + gActors[actor_index + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        gActors[actor_index].posX.whole = gActors[actor_index + 1].posX.whole;
        gActors[actor_index].var_15C = 0;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) || (func_80012AB4(gActors[actor_index + 1].posX.whole + gActors[actor_index + 1].hitboxBX1, (gActors[actor_index + 1].posY.whole + gActors[actor_index + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[actor_index].velocityX.raw = -FIXED_UNIT(2);
        gActors[actor_index].posX.whole = gActors[actor_index + 1].posX.whole;
        gActors[actor_index].var_15C = 0;
    }
    gActors[actor_index + 1].posX.whole = gActors[actor_index].posX.whole;
    gActors[actor_index + 1].posY.whole = gActors[actor_index].posY.whole;
    gActors[actor_index + 1].velocityX.raw = gActors[actor_index].velocityX.raw;
    gActors[actor_index + 1].velocityY.raw = gActors[actor_index].velocityY.raw;
    gActors[actor_index + 1].flags_098 = 0;

    // BUG: UB, missing return value
}

void ActorUpdate_ClancerIcon(u16 actor_index) {
    s32 index;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_3030;
        gActors[actor_index].scaleX = 0.75f;
        index = (u16)gActors[actor_index].var_110 & 0xF00;
        if (index) {
            gActors[actor_index].palette_18C = D_800D1938[index / 256];
        }
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

// update function for Rocketeer
void Rocketeer_Update(u16 actor_index) {
    Actor* actor; // needs temp var to match
    s32 var_v1;
    s32 var_v0;

    actor = &gActors[actor_index];
    actor->unk_178 = actor->posX.whole + gScreenPosCurrentX.whole;
    actor->unk_17C = actor->posY.whole + gScreenPosCurrentY.whole;
    if ((actor->scaleX == 0.75) && 
      (Clanpot_AddItemCheck3(actor_index, CLANPOT_ACTORICON, 0, 0, ACTORTYPE_CLANCERICON) >= 0)) {
        actor->flags = ACTOR_FLAG_ACTIVE;
        actor->state = 1;
    }
    if (actor->state >= 3) {
        if (actor->unk_124 < 32752.0f) {
            actor->unk_124 += 1.0f;
        }
        actor->posZ.raw = (actor_index * 16) + FIXED_UNIT(-2.0);
        if (actor->var_150 & 0x40) {
            D_800E3570 = ACTOR_FLAG_UNK7;
            D_800E3574 = ACTOR_FLAG_UNK8;
        }
        else {
            D_800E3570 = ACTOR_FLAG_UNK9;
            D_800E3574 = ACTOR_FLAG_UNK10;
        }
        actor->graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        func_8002877C(actor_index);
        if (actor->health <= 0 || (((u16)actor->var_110 & 0x4000) && (Actor_IsOutsideRegion(actor_index, 0x80) != 0))) {
                if (actor->health <= 0) {
                    func_80079CE8(actor_index);
                }
                if ((u16)actor->var_110 & 0x8000) {
                    actor->state = 2;
                    actor->flags = ACTOR_FLAG_ACTIVE;
                    actor->flags_098 = 0;
                    actor->velocityX.raw = 0;
                    actor->velocityY.raw = 0;
                    actor->velocityZ.raw = 0;
                    actor->posX.whole = actor->unk_170 - gScreenPosCurrentX.whole;
                    actor->posY.whole = actor->unk_174 - gScreenPosCurrentY.whole;
                }
                else {
                    actor->flags = 0;
                    return;
                }
        }
        else {
            if ((actor->flags_098 & ACTOR_FLAG3_GRAB) && !(actor->var_150 & 0x100000)) {
                if (actor->grabType == GRABTYPE_1) {
                    actor->graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                    Sound_PlaySfx(SFX_CLANCER_OW_0067);
                    func_80079AB4(actor_index);
                }
                else {
                    Sound_PlaySfx(SFX_GRAB_002F);
                    func_80079B28(actor_index);
                }
            }
            else {
                func_8007A8B0(actor_index);
            }
        }
    }
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    switch (actor->state) {
    case 0x1:
        if (actor->flags_098 & ACTOR_FLAG3_GRAB) {
            actor->state = 0x200;
            actor->flags = ACTOR_FLAG_ENABLED;
        }
        break;
    case 0x2:
        if (Actor_IsOutsideRegion(actor_index, 0x70) != 0) {
            actor->state = 0;
        }
        else {
            break;
        }
    case 0x0:
        actor->flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        ACTOR_GFX_INIT(actor_index, D_800D8190);
        actor->unk_0CE = 1;
        actor->grabType = GRABTYPE_1;
        actor->unk_0DF = 1;
        actor->var_150 = (u16)actor->var_110;
        if (actor->var_150 & 0x40) {
            D_800E3570 = ACTOR_FLAG_UNK7;
            D_800E3574 = ACTOR_FLAG_UNK8;
        }
        else {
            D_800E3570 = ACTOR_FLAG_UNK9;
            D_800E3574 = ACTOR_FLAG_UNK10;
        }
        actor->health = D_800D8258[(actor->var_150 & 0x30) / 16];
        if ((actor->var_150 & 0x3000) != 0) {
            actor->graphicFlags |= ACTOR_GFLAG_SCALE;
            switch ((actor->var_150 & 0x3000)) {
            case 0x1000:
                actor->unk_0DF = 0;
                actor->scaleX = 0.75f;
                break;
            case 0x2000:
                actor->grabType = GRABTYPE_6;
                actor->unk_0DF = 0x40;
                actor->scaleX = 1.25f;
                break;
            }
        }
        if (actor->var_150 & 8) {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }
        if ((actor->var_150 & 0xF00) != 0) {
            actor->graphicFlags |= ACTOR_GFLAG_PALETTE;
            actor->palette_18C = D_800D1938[(actor->var_150 & 0xF00) / 256];
        }
        var_v0 = gScreenPosCurrentX.whole + actor->posX.whole;
        actor->unk_170 = var_v0;
        var_v1 = gScreenPosCurrentY.whole + actor->posY.whole;
        actor->unk_174 = var_v1;
        actor->unk_180 = actor->unk_170;
        actor->unk_184 = actor->unk_174;
        func_80079810(actor_index);
        actor->state = 0;
        break;
    case 0xF:
        func_80079810(actor_index);
        /* fallthrough */
    case 0x10:
        actor->var_154++;
        func_80078FF0(actor_index, FIXED_UNIT(1.5), FIXED_UNIT(0.171875));
        if (D_800E3584 & 0xC0000) {
            actor->flags ^= ACTOR_FLAG_FLIPPED;
        }
        if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            func_800798EC(actor_index);
        }
        break;
    case 0x2F:
        func_800798EC(actor_index);
        /* fallthrough */
    case 0x30:
        if (actor->var_154 < 0x258) {
            actor->var_154++;
        }
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(1.0/4));
        if (D_800E3584 & 0xC0000) {
            actor->flags ^= ACTOR_FLAG_FLIPPED;
        }
        if (actor->flags_098 & ACTOR_FLAG3_UNK6) {
            actor->state = 0x80;
        }
        break;
    case 0x80:
        actor->state++;
        actor->flags &= ~ACTOR_FLAG_UNK16; actor->flags |= ACTOR_FLAG_UNK17;
        ACTOR_GFX_INIT(actor_index, D_800D81A0);
        /* fallthrough */
    case 0x81:
        if (actor->velocityY.raw > -FIXED_UNIT(7.5)) {
            actor->velocityY.raw -= FIXED_UNIT(1.0/4);
        }
        actor->velocityX.raw = 0;
        if (actor->flags_098 & ACTOR_FLAG3_UNK5) {
            func_800798EC(actor_index);
        }
        break;
    case 0x70:
    case 0x74:
    case 0x78:
        actor->state++;
        actor->flags &= ~ACTOR_FLAG_UNK16; actor->flags |= ACTOR_FLAG_UNK17;
        ACTOR_GFX_INIT(actor_index, D_800D81B8);
        /* fallthrough */
    case 0x71:
    case 0x75:
    case 0x79:
        if ((actor->velocityX.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK3)) || (actor->velocityX.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK2))) {
            actor->velocityX.raw = -actor->velocityX.raw / 2;
        }
        if (actor->velocityY.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK4)) {
            actor->velocityY.raw = 0;
        }
        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            func_800798EC(actor_index);
        }
        else {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(16.0/256));
            actor->velocityY.raw -= FIXED_UNIT(0.21875);
            if (actor->velocityY.raw < -FIXED_UNIT(2)) {
                actor->state++;
            }
        }
        break;
    case 0x20:
        func_80079984(actor_index);
        actor->state++;
        func_8003F138(actor->unk_114 / 4/*.0f*/, actor->posX.whole, actor->posY.whole, actor->posZ.whole - 8);
        /* fallthrough */
    case 0x21:
        func_80079378(actor_index);
        if (actor->var_154 < 0) {
            func_80079810(actor_index);
        }
        else {
            actor->var_154--;
            if ((actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) || (actor->velocityY.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK4))) {
                actor->velocityY.raw = 0;
                actor->velocityX.raw /= 2;
            }
            if ((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2) || (actor->velocityX.raw > 0 && actor->flags_098 & ACTOR_FLAG3_UNK3)) {
                actor->velocityX.raw = 0;
                actor->velocityY.raw /= 2;
            }
            if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
                if (actor->unk_114 > 2.5) {
                    Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                }
                actor->var_154 = 8;
                actor->var_160 = -actor->var_160;
                actor->posY.whole += 3;
            }
            if (actor->var_154 == 0x18) {
                if (actor->unk_114 > 2.5) {
                    actor->flags |= D_800E3570;
                    actor->hitFlags = HITFLAG_7 | HITFLAG_2;
                    actor->hitType = HITTYPE_7;
                    actor->damage = actor->unk_114 * 20.0f;
                    actor->unk_0F8.raw = actor->scaleX * FIXED_UNIT(5.0);
                    actor->unk_0FC.raw = FIXED_UNIT(4);
                }
            }
            if (actor->var_154 == 8) {
                actor->flags &= (-ACTOR_FLAG_DRAW - D_800E3570);
                ACTOR_GFX_INIT(actor_index, D_800D81C8);
                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    actor->var_158 = FIXED_UNIT(512);
                }
                else {
                    actor->var_158 = 0;
                }
            }
        }
        break;
    case 0x60:
        actor->state++;
        /* fallthrough */
    case 0x61:
        Rocketeer_FireParticle(actor_index, 0);
        func_8007AB44(actor_index);
        if (actor->var_154 < 0) {
        }
        break;
    case 0x24:
        actor->state++;
        ACTOR_GFX_INIT(actor_index, D_800D81B8);
        actor->unk_114 = 0.0f;
        if (actor->unk_180 < actor->unk_178) {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }
        /* fallthrough */
    case 0x25:
        actor->unk_114 += 1.0f;
        func_8007951C(actor_index);
        break;
    case 0x50:
        if (func_8007A190(actor_index) == 0) {
            func_80079810(actor_index);
        }
        else {
            actor->state++;
            ACTOR_GFX_INIT(actor_index, D_800D81D8);
        case 0x51:
            func_8007A6A8(actor_index);
            func_8007A4B0(actor_index);
        }
        break;
    case 0x52:
        func_8007A6A8(actor_index);
        if (actor->graphicTimer == 0) {
            func_80079810(actor_index);
        }
        break;
    case 0x54:
        if (func_8007A190(actor_index) == 0) {
            func_80079810(actor_index);
            break;
        }

        actor->state++;
        ACTOR_GFX_INIT(actor_index, D_800D81D8);
        /* fallthrough */
    case 0x55:
        func_8007951C(actor_index);
        func_8007A4B0(actor_index);
        break;
    case 0x56:
        func_8007951C(actor_index);
        if (actor->graphicTimer == 0) {
            actor->state = 0x24;
        }
        break;
    case 0x200:
        var_v0 = func_800291AC(actor_index, 0x40, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ENABLED, 0x10, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ENABLED);
        if (var_v0 != 2) {
            if (var_v0 != 3) {
                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    var_v0 = -5;
                }
                else {
                    var_v0 = 5;
                }
                func_80033E7C(actor_index, actor->posX.whole + var_v0, actor->posY.whole + 8, actor->posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 3);
                if (actor->flags_098 & ACTOR_FLAG3_UNK1) {
                    Sound_PlaySfx(SFX_CLANCER_OW_009D);
                    ACTOR_GFX_INIT(actor_index, D_800D821C);
                }
                else if (actor->flags_098 & ACTOR_FLAG3_SHAKE) {
                    ACTOR_GFX_INIT(actor_index, D_800D821C);
                    actor->velocityY.raw = FIXED_UNIT(1);
                    Rocketeer_FireParticle(actor_index, 0);
                    actor->velocityY.raw = 0;
                }
                else if (actor->graphicTimer == 0) {
                    ACTOR_GFX_INIT(actor_index, D_800D8210);
                }
            }
            else {
                actor->velocityX.raw = 0;
                actor->velocityY.raw = FIXED_UNIT(1);
                func_80079810(actor_index);
            }
        }
        else {
            ACTOR_GFX_INIT(actor_index, D_800D81B8);
            actor->flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8);
            actor->flags |= (D_800E3574 + ACTOR_FLAG_UNK12);
            actor->var_150 &= ~0x100000;
            actor->hitFlags = 0;
            actor->hitboxAY0 = (actor->scaleX * 7.0f);
            actor->hitboxAY1 = (actor->scaleX * -7.0f);
            actor->hitboxAX1 = (actor->scaleX * 7.0f);
            actor->hitboxAX0 = (actor->scaleX * -7.0f);
            actor->var_15C = actor->flags & (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            actor->unk_114 = 30.0f;
            actor->unk_118 = -1.0f;
            Sound_PlaySfx(SFX_BOOM_0045);
            actor->unk_168 = TO_FIXED(Math_Atan2(actor->velocityX.raw, actor->velocityY.raw));
        }
        break;
    case 0x40:
        func_80078F54(actor_index);
        Rocketeer_PackFlame(actor_index, 0);
        actor->hitType = HITTYPE_BOOM_10;
        actor->unk_0F8.raw = -FIXED_UNIT(2.125);
        actor->unk_0FC.raw = FIXED_UNIT(5.25);
        actor->damage = 10;
        if ((actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) || (actor->velocityY.raw > 0 && actor->flags_098 & ACTOR_FLAG3_UNK4)) {
            Actor_ReduceHealth(actor_index, 50);
            Sound_PlaySfx(SFX_LAND_00AC);
            func_80079810(actor_index);
            actor->velocityX.raw /= 4;
            break;
        }

        if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
            ACTOR_GFX_INIT(actor_index, D_800D8240);
            Actor_ReduceHealth(actor_index, 2);
            func_80079DF8(actor_index);
        }
        else {
            func_80079EB8(actor_index);
        }

        if ((actor->velocityX.raw > 0 && ((actor->flags_098 & ACTOR_FLAG3_UNK3) || (actor->var_150 & 8)))
           || (actor->velocityX.raw < 0 && ((actor->flags_098 & ACTOR_FLAG3_UNK2) || (actor->var_150 & 4)))) {
            Actor_ReduceHealth(actor_index, 50);
            Sound_PlaySfx(SFX_LAND_00AC);
            func_80079810(actor_index);
            actor->velocityX.raw = (s32) -actor->velocityX.raw / 2;
            break;
        }

        if (actor->unk_114 > 0.0f) {
            actor->unk_114 -= 1.0f;
            break;
        }
        if (actor->posX.whole > 0x100 || actor->posX.whole < -0x100 || actor->posY.whole >= 0xC1 || actor->posY.whole < -0xC0) {
            func_80079CE8(actor_index);
            actor->flags = 0;
            return;
        }
        break;
    case 0x400:
        actor->flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        if (actor->iFrames <= 0) {
            actor->state++;
            actor->var_150 &= ~0x200000;
            actor->unk_114 = 20.0f;
            actor->velocityX.raw = actor->unk_0F8.raw;
            actor->velocityY.raw = actor->unk_0FC.raw;
        }
        break;
    case 0x401:
        actor->unk_114 -= 1.0f;
        if (actor->unk_114 < 10.0f) {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(1.0/4));
            Actor_UpdateVelocityY(actor_index, FIXED_UNIT(1.0/4));
        }
        else {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(8.0/256));
            if (actor->velocityY.raw > 0) {
                actor->velocityY.raw -= FIXED_UNIT(0.21875);
            }
        }
        if (actor->unk_114 < 0.0f) {
            func_80079810(actor_index);
        }
        if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            Sound_PlaySfx(SFX_0036);
            ACTOR_GFX_INIT(actor_index, D_800D81F8);
            actor->velocityY.raw = -actor->velocityY.raw;
        }
        if (((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2)) || ((actor->velocityX.raw > 0) && (actor->flags_098 & ACTOR_FLAG3_UNK3))) {
            Sound_PlaySfx(SFX_0036);
            ACTOR_GFX_INIT(actor_index, D_800D81F8);
            actor->velocityX.raw = -actor->velocityX.raw;
        }
        break;
    case 0x4010:
        actor->state++;
        actor->flags = ACTOR_FLAG_ENABLED;
        actor->graphicIndex = GINDEX_3044;
        actor->graphicTimer = 0;
        actor->rotateZ = 0.0f;
        /* fallthrough */
    case 0x4011:
        actor->graphicFlags |= ACTOR_GFLAG_ROTZ;
        actor->var_154 += actor->var_158;
        actor->posZ.raw = actor->var_154;
        Rocketeer_PackFlame(actor_index, 0);
        if ((actor->posZ.whole < 0x20) && (actor->posZ.whole >= -0x1F)) {
            actor->flags |= D_800E3574 + ACTOR_FLAG_UNK12;
        }
        else {
            actor->flags &= -(ACTOR_FLAG_UNK12 | ACTOR_FLAG_DRAW) - D_800E3574;
        }
        break;
    case 0x4012:
        actor->flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        func_80079810(actor_index);
        break;
    case 0x4000:
        if (actor->posX.whole >= 0xC1) {
            actor->flags = 0;
        }
        break;
    case 0x800:
        break;
    }

    if ((actor->var_150 & 0x3000) == 0x2000) {
        actor->flags |= ACTOR_FLAG_UNK15;
    }

    if (actor->state >= 3) {
        actor->scaleY = actor->scaleX;
        if ((actor->state != 0x200) && (actor->state != 0x61)) {
            actor->hitboxBY0 = actor->scaleX * 12.0f;
            actor->hitboxBY1 = actor->scaleX * -17.0f;
            actor->hitboxBX0 = actor->scaleX * -10.0f;
            actor->hitboxBX1 = actor->scaleX * 10.0f;
        }
        if (!(actor->graphicFlags & ACTOR_GFLAG_ROTZ)) {
            actor->rotateZ = 0.0f;
        }
        func_800789C4(actor_index);
        if (actor->iFrames != 0) {
            actor->iFrames--;
        }
    }
}

// update for actor type 3
void ActorUpdate_Type3(u16 arg0) {
}
