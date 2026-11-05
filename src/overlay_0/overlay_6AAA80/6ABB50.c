#include "actor.h"
#include "actorTypes.h"
#include "boot.h"
#include "common.h"
#include "28EF0.h"
#include "80D90.h"
#include "8D0A0.h"
#include "marina_grab.h"

// TODO: prototype where
void func_80192100_6AAAF0(u16 actor_index, u16 child_actor_index, s16 arg2);
void func_8019224C_6AAC3C(u16 actor_index);
void func_80192698_6AB088(u16 actor_index);
void func_80192A64_6AB454(u16 actor_index);
void func_80192E28_6AB818(u16 actor_index);
void func_801930F4_6ABAE4(u16 actor_index);

extern u16 D_801A10C0_6B9AB0;
extern u16 D_801A10C4_6B9AB4;
extern s16 D_801A10C8_6B9AB8;
extern s16 D_801A10CC_6B9ABC;
extern s16 D_801A10DC_6B9ACC;
extern u16 D_801A10E8_6B9AD8;
extern s32 D_801A10EC_6B9ADC;
extern u16 D_801A10F4_6B9AE4;
extern u16 D_801A10F8_6B9AE8;
extern s16 D_801A10FC_6B9AEC;
extern u16 D_801A1100_6B9AF0;
extern f32 D_801A1104_6B9AF4;
extern s32 D_801A1108_6B9AF8;
extern u16 D_801A110C_6B9AFC;
extern u16 D_801A1110_6B9B00;
extern u16 D_801A1114_6B9B04;
extern s32 D_801A1118_6B9B08;
extern s32 D_801A111C_6B9B0C;
extern s16 D_801A1120_6B9B10[];
extern s16 D_801A120C_6B9BFC[];
extern s16 D_801A1394_6B9D84[];
extern s16 D_801A1480_6B9E70[];
extern s16 D_801A1608_6B9FF8[];
extern s16 D_801A16B0_6BA0A0[];
extern s16 D_801A17CC_6BA1BC[];
extern s16 D_801A182C_6BA21C[];
extern u8 D_801A2F2C_6BB91C[];
extern s32 D_801A3094_6BBA84; // TODO: type
extern s16 D_801A30CC_6BBABC[];
extern s16 D_801A30F4_6BBAE4[];
extern s16 D_801A3130_6BBB20[];
extern s16 D_801A3178_6BBB68[];
extern s16 D_801A31A8_6BBB98[];
extern s32 D_801A31C4_6BBBB4; // TODO: type
extern u16 D_801A31D8_6BBBC8[];
extern u16 D_801A31FC_6BBBEC[];
extern s16 D_801A3218_6BBC08[];
extern s16 D_801A3250_6BBC40[];
extern u16 D_801A3280_6BBC70[];
extern u16 D_801A32A0_6BBC90[];
extern u16 D_801A34F0_6BBEE0[];
extern u16 D_801A3510_6BBF00[];
extern u16 D_801A3530_6BBF20[];
extern s16 D_801A3554_6BBF44[];
extern s16 D_801A355C_6BBF4C[];
extern s16 D_801A3570_6BBF60[];
extern s16 D_801A3584_6BBF74[];
extern s16 D_801A358C_6BBF7C[];
extern u16 D_801A35A4_6BBF94;
extern s32 D_801A35A8_6BBF98;
extern f32 D_801A35C0_6BBFB0[16];
extern f32 D_801A3600_6BBFF0[16];
extern s16 D_801A3640_6BC030[]; // graphic list
extern s16 D_801A3650_6BC040[16]; // graphic list
extern u16 D_801A369C_6BC08C[]; // graphic index
extern u16 D_801A36A0_6BC090[]; // damage
extern FixedCoord D_801A36A4_6BC094;
extern FixedCoord D_801A36A8_6BC098;
extern FixedCoord D_801A36AC_6BC09C;
extern FixedCoord D_801A36B0_6BC0A0;
extern s16 D_801A36B4_6BC0A4[]; // graphic list
extern u16 D_801A36CC_6BC0BC;
extern f32 D_801A36D0_6BC0C0;
extern f32 D_801A36FC_6BC0EC[];
extern s32 D_801A3724_6BC114[];
extern u16 D_801A374C_6BC13C[6];
extern u16 D_801A3758_6BC148;
extern f32 D_801A375C_6BC14C;
extern f32 D_801A3760_6BC150;
extern s16 D_801A3764_6BC154;
extern s32 D_801A3768_6BC158;
extern s32 D_801A376C_6BC15C;
extern void* D_801A3770_6BC160[];
extern void* D_801A3790_6BC180[];
extern void* D_801A37B0_6BC1A0[];
extern void* D_801A37D0_6BC1C0[];
extern s16 D_801A37F0_6BC1E0[];
extern s16 D_801A37F8_6BC1E8[];
extern s16 D_801A380C_6BC1FC[];
extern s16 D_801A381C_6BC20C[]; // graphic list
extern s16 D_801A3844_6BC234[];
extern s16 D_801A3868_6BC258[];
extern s16 D_801A3870_6BC260[];
extern s16 D_801A3884_6BC274[];
extern s16 D_801A3894_6BC284[];
extern s16 D_801A38A0_6BC290[];
extern s16 D_801A38AC_6BC29C[];
extern s16 D_801A38BC_6BC2AC[];
extern s16 D_801A38D4_6BC2C4[];
extern s16 D_801A38E4_6BC2D4[];
extern s16 D_801A38EC_6BC2DC[];

extern s16 D_801A3908_6BC2F8[];
extern s16 D_801A3938_6BC328[];
extern s16 D_801A395C_6BC34C[];
extern s16 D_801A3940_6BC330[];
extern s16 D_801A3974_6BC364[];
extern s16 D_801A3980_6BC370[];
extern s16 D_801A399C_6BC38C[];
extern s16 D_801A39B4_6BC3A4[];

extern u16 D_801A39BC_6BC3AC[510];
extern u16 D_801A3DB8_6BC7A8[];
extern u16 D_801A3DCC_6BC7BC[];
extern u16 D_801A3DF0_6BC7E0[];
extern u16 D_801A3E14_6BC804[];
extern u16 D_801A3E20_6BC810[];
extern u16 D_801A3E30_6BC820[];

extern u16 D_801A3E3C_6BC82C[]; // graphic indexes
extern s16 D_801A3E58_6BC848[];
extern f32 D_801A3E70_6BC860[];
extern u16 D_801A3E88_6BC878[];
extern u16 D_801A4390_6BCD80[]; // angles
extern s32 D_801A43D0_6BCDC0[30];
extern s32 D_801A4448_6BCE38[30];
extern s32 D_801A44C0_6BCEB0;
extern s32 D_801A44C4_6BCEB4;
extern u16 D_801A44C8_6BCEB8[64];
extern s32 D_801A4548_6BCF38[64];
extern s32 D_801A4648_6BD038[64];

// forward declarations
void func_8019AB1C_6B350C(u16 actor_index);
void func_8019AF9C_6B398C(void);
void func_8019B21C_6B3C0C(u16 actor_index);
void func_8019C418_6B4E08(u16 actor_index);

void func_80193160_6ABB50(u16 actor_index) {
    s16 rotation;
    s32 target_angle;
    s32 saved_velocity_x;
    s32 saved_velocity_y;
    u16 sample_index;
    s32 velocity_x;
    s32 velocity_y;
    s32 angle;
    u16 index;
    u16 saved_rotation;

    gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
    if (gActors[actor_index].state != 0) {
        if (!(gActiveFrames & 7)) {
            index = func_8003EEC0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            if (index != 0) {
                gActors[index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
                gActors[index].flags |= ACTOR_FLAG_FREEZE_POS;
                Actor_SetColorRgb(index, 0x7F);
            }
        }
        gActors[actor_index].unk_12C -= 1.0f;
        if (gActors[actor_index].unk_12C < 0.0f) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
            for (index = 0x64; index < 0x74; index++) {
                gActors[index].flags = ACTOR_FLAG_NONE;
            }
            return;
        }
    }
    else {
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].var_150 < 0) || (gActors[actor_index].posX.whole > 0x80) || (gActors[actor_index].posX.whole < -0x80)) {
            gActors[actor_index].state = 1;
            func_801930F4_6ABAE4(actor_index);
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            gActors[actor_index].state = 1;
            func_801930F4_6ABAE4(actor_index);
        }
        else {
            target_angle = Math_Atan2(gActors[0x8C].posX.whole - gActors[actor_index].posX.whole, gActors[0x8C].posY.whole - gActors[actor_index].posY.whole);
            target_angle -= (Rand() & 0xF) * 0x10;
            target_angle = TO_FIXED((target_angle + COS_DEG_45) & COS_MASK);
            gActors[actor_index].unk_16C = func_800298D0(target_angle, gActors[actor_index].unk_16C, FIXED_UNIT(64));
            angle = FROM_FIXED(gActors[actor_index].unk_16C);
            gActors[actor_index].velocityX.raw = COS(angle) * FIXED_UNIT(7.0f);
            gActors[actor_index].velocityY.raw = SIN(angle) * FIXED_UNIT(7.0f);
            gActors[actor_index].rotateZ = INDEX_TO_DEG(angle);
        }
    }

    if (gActiveFrames & 1) {
        gActors[actor_index].colorR = 0x7F;
    }
    else {
        gActors[actor_index].colorR = 0x3F;
    }

    // 64 frame history
    velocity_x = gActors[actor_index].velocityX.raw;
    velocity_y = gActors[actor_index].velocityY.raw;
    rotation = gActors[actor_index].rotateZ;
    for (index = 0; index < ARRAYLENGTH(D_801A44C8_6BCEB8); index++) {
        saved_rotation = D_801A44C8_6BCEB8[index];
        saved_velocity_x = D_801A4548_6BCF38[index];
        saved_velocity_y = D_801A4648_6BD038[index];
        D_801A44C8_6BCEB8[index] = rotation;
        rotation = saved_rotation;
        D_801A4548_6BCF38[index] = velocity_x;
        velocity_x = saved_velocity_x;
        D_801A4648_6BD038[index] = velocity_y;
        velocity_y = saved_velocity_y;
    }

    // each trailing actor follows four frames back
    for (sample_index = 3, index = 0x64; index < 0x74; index++, rotation -= 8) {
        gActors[index].rotateZ = (s16)D_801A44C8_6BCEB8[sample_index];
        if (gActors[index].rotateZ != 765.0f) {
            gActors[index].flags = gActors[index].var_150;
            gActors[index].colorR = gActors[actor_index].colorR;
        }
        else {
            gActors[index].flags = ACTOR_FLAG_ACTIVE;
        }
        gActors[index].posY.raw += D_801A1108_6B9AF8;
        gActors[index].velocityX.raw = D_801A4548_6BCF38[sample_index];
        gActors[index].velocityY.raw = D_801A4648_6BD038[sample_index];
        sample_index += 4;
    }
}

void func_801935C8_6ABFB8(u16 actor_index) {
    if ((gActors[0x8D].flags & ACTOR_FLAG_ACTIVE) && (gActors[0x8D].actorType == ACTORTYPE_OVL0_PGAMMA_14)) {
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
    }
    else {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
}

// TODO: pull in Drahsid's scratch https://decomp.me/scratch/uudKQ
void func_80193668_6AC058(u16 actor_index, u16 angle, s32 velocity) {
    u16 index;
    u16 sample_index;
    u16 other_actor;

    other_actor = 0x8C;
    gActors[other_actor].actorType = ACTORTYPE_OVL0_PGAMMA_16;
    Actor_Initialize(other_actor);
    gActors[other_actor].graphicFlags = ACTOR_GFLAG_NONE;
    gActors[other_actor].flags = ACTOR_FLAG_ACTIVE;
    gActors[other_actor].posX.whole = gActors[actor_index].posX.whole;
    gActors[other_actor].posY.whole = gActors[actor_index].posY.whole;
    gActors[other_actor].velocityX.raw = COS(angle) * velocity;
    gActors[other_actor].velocityY.raw = SIN(angle) * velocity;
    Sound_PlaySfxAtActorPanning(SFX_007A, other_actor);

    other_actor = 0x8D;
    gActors[other_actor].actorType = ACTORTYPE_OVL0_PGAMMA_14;
    Actor_Initialize(other_actor);
    gActors[other_actor].posX.whole = gActors[actor_index].posX.whole;
    gActors[other_actor].posY.whole = gActors[actor_index].posY.whole;
    gActors[other_actor].posZ.whole = gActors[actor_index].posZ.whole + 66;
    gActors[other_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[other_actor].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    ACTOR_GFX_INIT(other_actor, D_801A3640_6BC030);
    gActors[other_actor].colorG = 0x6F;
    gActors[other_actor].colorB = 0x7F;
    Actor_SetHitboxA(other_actor, 8);
    Actor_SetHitboxB(other_actor, 0xC);
    gActors[other_actor].unk_0DF = 0x20;
    gActors[other_actor].health = 0;
    gActors[other_actor].damage = 0x50;
    gActors[other_actor].hitType = HITTYPE_2;
    gActors[other_actor].hitFlags = HITFLAG_2;
    gActors[other_actor].scaleX = 0.8f;
    gActors[other_actor].scaleY = 0.5f;
    gActors[other_actor].var_150 = 0x96;
    gActors[other_actor].unk_16C = TO_FIXED((u32)angle);

    sample_index = 0;
    for (index = 0x64; index < 0x74; index++) {
        gActors[index].actorType = ACTORTYPE_33;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_ACTIVE;
        gActors[index].graphicList = &D_801A3650_6BC040[sample_index * 2]; \
        gActors[index].graphicTimer = 1;
        other_actor = 0x8D;
        other_actor++; // fakematch
        other_actor--;
        gActors[index].posX.whole = gActors[other_actor].posX.whole;
        gActors[index].posY.whole = gActors[other_actor].posY.whole;
        gActors[index].posZ.whole = gActors[other_actor].posZ.whole;
        gActors[index].scaleY = D_801A35C0_6BBFB0[sample_index];
        gActors[index].colorA = D_801A3600_6BBFF0[sample_index];
        gActors[index].colorG = 0x6F;
        gActors[index].colorB = 0x7F;
        if ((index & 1) && (index < 0x6E)) {
            gActors[index].var_150 = 515;
            gActors[index].damage = 80;
            gActors[index].hitType = HITTYPE_2;
            gActors[index].hitFlags = HITFLAG_2;
            Actor_SetHitboxA(index, 8);
        }
        else {
            gActors[index].var_150 = 3;
        }
        sample_index++;
    }

    for (index = 0; index < ARRAYLENGTH(D_801A44C8_6BCEB8); index++) {
        D_801A4548_6BCF38[index] = 0;
        D_801A4648_6BD038[index] = 0;
        D_801A44C8_6BCEB8[index] = 0x2FD;
    }
}

void func_80193AE0_6AC4D0(u16 actor_index, u16 arg1) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive_90ToC0();
    if (free_actor == 0) {
        return;
    }
    gActors[free_actor].actorType = ACTORTYPE_GRAPHIC_52;
    Actor_Initialize(free_actor);
    gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
    gActors[free_actor].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[free_actor].graphicIndex = gActors[actor_index].graphicIndex;
    gActors[free_actor].rotateZ = gActors[actor_index].rotateZ;
    gActors[free_actor].posX.raw = gActors[actor_index].posX.raw;
    gActors[free_actor].posY.raw = (gActors[actor_index].posY.raw - D_801A1108_6B9AF8) - FIXED_UNIT(4);
    func_80031D58(actor_index, free_actor);
    if (arg1 == 0) {
        gActors[free_actor].posZ.raw = gPlayerActor.posZ.raw + 1;
    }
    else {
        gActors[free_actor].posZ.raw = gActors[actor_index].posZ.raw;
    }
}

void func_80193C0C_6AC5FC(u16 actor_index, u16 sample_index) {
    s32 var_a0;
    s32 temp_v0;

    if ((gActors[actor_index].state != 0) && 
        (gActors[actor_index].state != 2) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB)) {
        gActors[actor_index].state = 2;
        gActors[actor_index].unk_168 = 0;
        func_80029134(actor_index);
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
    }
    if ((gActors[actor_index].state != 2) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
        gActors[actor_index].state = 1;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        Sound_PlaySfxAtActor3(SFX_TINK_0064, actor_index);
        gActors[actor_index].iFrames = 5;
        if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_168 = FIXED_UNIT(64);
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_168 = FIXED_UNIT(-64);
        }
    }
    gActors[actor_index].var_150 = 0;
    if (gActors[actor_index].posY.whole < -128) {
        gActors[actor_index].posY.whole = -128;
        gActors[actor_index].var_150 |= 1;
    }
    else if (gActors[actor_index].posY.whole > 128) {
        gActors[actor_index].posY.whole = 128;
        gActors[actor_index].var_150 |= 2;
    }
    if (gActors[actor_index].posX.whole < -136) {
        gActors[actor_index].posX.whole = -136;
        gActors[actor_index].var_150 |= 4;
    }
    else if (gActors[actor_index].posX.whole > 136) {
        gActors[actor_index].posX.whole = 136;
        gActors[actor_index].var_150 |= 8;
    }
    gActors[actor_index].posZ.raw = FIXED_UNIT(1);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = D_801A369C_6BC08C[sample_index];
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].grabType = GRABTYPE_1;
        gActors[actor_index].hitType = HITTYPE_2;
        gActors[actor_index].damage = D_801A36A0_6BC090[sample_index];
        gActors[actor_index].flags_098 = ACTOR_FLAG3_NONE;
        gActors[actor_index].unk_0CE = 5;
        /* fallthrough */
    case 1:
        gActors[actor_index].posY.raw = gActors[actor_index].posY.raw + D_801A1108_6B9AF8 - FIXED_UNIT(1);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.0625));
        if (sample_index == 0) {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, FIXED_UNIT(-16), FIXED_UNIT(1));
        }
        else {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, FIXED_UNIT(32), FIXED_UNIT(1));
        }
        break;
    case 3:
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || ((gActors[actor_index].var_150 & 8) && (gActors[actor_index].velocityX.raw > 0)) || ((gActors[actor_index].var_150 & 4) && (gActors[actor_index].velocityX.raw < 0)) || (gActors[actor_index].var_150 & 3)) {
            gActors[actor_index].state = 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
            if (gActors[actor_index].var_150 & 0xC) {
                gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = (f32) gActors[actor_index].velocityY.raw * 0.5;
                Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index);
            }
            if (gActors[actor_index].var_150 & 3) {
                gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.5;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.25;
                gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.25;
                if (sample_index != 0) {
                    if ((gActors[actor_index].parentIndex == 0x88) && !(gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_UNK15)) {
                        Sound_PlaySfxAtActor2(SFX_STAB_006E, actor_index);
                    }
                    else {
                        Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index);
                    }
                }
                else {
                    if ((gActors[actor_index].parentIndex == 0x88) && !(gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_UNK15)) {
                        Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                    }
                    else {
                        Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index);
                    }
                }
            }
        }
        break;
    case 2:
        temp_v0 = func_800291AC(actor_index, 3, 0x291A3, 1, 0x29123);
        switch (temp_v0) {
        case 0:
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            var_a0 = 0;
            if ((gButtonHold & gButton_DUp) && ((gButtonHold & gButton_DLeft) || (gButtonHold & gButton_DRight))) {
                var_a0 = FIXED_UNIT(128);
            }
            else if (gButtonHold & gButton_DUp) {
                var_a0 = FIXED_UNIT(255);
            }
            gActors[actor_index].unk_16C = func_800298D0(var_a0, gActors[actor_index].unk_16C, FIXED_UNIT(32));
            func_80193AE0_6AC4D0(actor_index, sample_index);
            break;
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            break;
        case 2:
            Sound_PlaySfxAtActor2(SFX_WOOSH_0048, actor_index);
            if (sample_index == 0) {
                gActors[actor_index].unk_168 = FIXED_UNIT(-64);
            }
            else {
                gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 1.4;
                gActors[actor_index].velocityY.raw = (f32) gActors[actor_index].velocityY.raw * 1.4;
            }
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].unk_16C = TO_FIXED(Math_Atan2(-gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw));
            }
            else {
                gActors[actor_index].unk_16C = TO_FIXED(Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw));
            }
            break;
        }
        break;
    }
    gActors[actor_index].unk_16C += gActors[actor_index].unk_168;
    gActors[actor_index].unk_16C &= COS_MASK_FIXED_UNIT;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].rotateZ = INDEX_TO_DEG(-FROM_FIXED(gActors[actor_index].unk_16C));
    }
    else {
        gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].unk_16C));
    }
    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_WARPING | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_GRAB);
}

void func_80194484_6ACE74(u16 actor_index) {
    func_80193C0C_6AC5FC(actor_index, 0);
}

void func_801944B0_6ACEA0(u16 actor_index) {
    func_80193C0C_6AC5FC(actor_index, 1);
}

void func_801944DC_6ACECC(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        if (actor_index & 1) {
            Sound_PlaySfx2(SFX_MARINA_OW1);
        }
        gActors[actor_index].state += 1;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        gActors[actor_index].graphicList = D_801A36B4_6BC0A4;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].colorA = 0xE0;
        gActors[actor_index].colorG = 0x2F;
        gActors[actor_index].colorB = 0x7F;
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].scaleX = 2.0f;
    }
    if (gActors[actor_index].state != 0) {
        gActors[actor_index].colorA -= 0x10;
        if (gActors[actor_index].colorA == 0x00) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        else {
            gActors[actor_index].scaleX += 0.3;
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        }
        return;
    }
    if ((gLookatEyeZ - 96.0f) < gActors[actor_index].posZ.whole) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }

    if ((gActors[actor_index].posZ.whole > -24) && (gActors[actor_index].posZ.whole < 24)) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
    }
    gActors[actor_index].scaleX += 0.04;
    gActors[actor_index].scaleY += 0.05;
    gActors[actor_index].rotateZ += 33.0f;
    gActors[actor_index].colorG += 1;
    gActors[actor_index].colorB += 3;
}

void func_801946DC_6AD0CC(u16 actor_index) {
    u16 free_actor;

    Sound_PlaySfxAtActor3(SFX_LASER_0052, actor_index);
    free_actor = Actor_RangeFindInactive(0x54, 0x90);
    if (free_actor == 0) {
        return;
    }

    gActors[free_actor].actorType = ACTORTYPE_OVL0_PGAMMA_11;
    Actor_Initialize(free_actor);
    gActors[free_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[free_actor].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[free_actor].graphicIndex = GINDEX_00D2;
    gActors[free_actor].scaleX = 0.2f;
    gActors[free_actor].scaleY = 0.5f;
    gActors[free_actor].rotateZ = gActiveFrames * 15;
    gActors[free_actor].colorA = 0xE0;
    gActors[free_actor].palette_18C = D_800D90A4;
    gActors[free_actor].posX.raw = gActors[0x50].posX.raw;
    gActors[free_actor].posY.raw = gActors[0x50].posY.raw;
    gActors[free_actor].posZ.raw = gActors[0x50].posZ.raw;
    gActors[free_actor].velocityX.raw = TO_FIXED((f32) (D_801A36A4_6BC094.whole - gActors[free_actor].posX.whole) / (-gActors[actor_index].posZ.whole / 24));
    gActors[free_actor].velocityY.raw = TO_FIXED((f32) (D_801A36A8_6BC098.whole - gActors[free_actor].posY.whole) / (-gActors[actor_index].posZ.whole / 24));
    gActors[free_actor].velocityZ.raw = FIXED_UNIT(24);
    gActors[free_actor].damage = 25;
    Actor_SetHitboxA(free_actor, 8);
}

void func_80194944_6AD334(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && (actor_index + 1)) {
        Sound_PlaySfx2(SFX_MARINA_OW1);
    }
    if ((gLookatEyeZ - 96.0f) < gActors[actor_index].posZ.whole) {
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
    }
    else {
        if ((gActors[actor_index].posZ.whole > -32) && (gActors[actor_index].posZ.whole < 32) && (D_801A36D0_6BC0C0 > 0.8)) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        }
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFC, D_801A36CC_6BC0BC * 0xC);
        gActors[actor_index].scaleX += 0.05 * D_801A36D0_6BC0C0;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].rotateZ += 10.0f;
        if ((gActors[actor_index].graphicIndex == GINDEX_018A) || (gActors[actor_index].graphicIndex == GINDEX_BLASTB)) {
            gActors[actor_index].var_150++;
            if (gActors[actor_index].var_150 & 1) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
                gActors[actor_index].graphicIndex = GINDEX_018A;
            }
            else {
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                gActors[actor_index].graphicIndex = GINDEX_BLASTB;
            }
        }
    }
}

void func_80194B1C_6AD50C(u16 actor_index) {
    u16 free_actor;
    u16 graphic_index;

    D_801A36CC_6BC0BC++;
    if (D_801A36CC_6BC0BC < 130) {
        D_801A36D0_6BC0C0 = Math_ApproachF32(D_801A36D0_6BC0C0, 1.0f, 0.1f);
    }
    else {
        D_801A36D0_6BC0C0 = Math_ApproachF32(D_801A36D0_6BC0C0, 0.0f, 0.04f);
    }
    if (D_801A36D0_6BC0C0 < 0.8) {
        if (D_801A36D0_6BC0C0 > 0.7) {
            graphic_index = GINDEX_DISSOLVE;
        }
        else if (D_801A36D0_6BC0C0 > 0.6) {
            graphic_index = GINDEX_0158;
        }
        else if (D_801A36D0_6BC0C0 > 0.5) {
            graphic_index = GINDEX_015A;
        }
        else if (D_801A36D0_6BC0C0 > 0.4) {
            graphic_index = GINDEX_015C;
        }
        else {
            graphic_index = GINDEX_015E;
        }
    }
    else {
        graphic_index = GINDEX_BLASTB;
    }

    free_actor = Actor_RangeFindInactive(0x54, 0x90);
    if (free_actor == 0) {
        return;
    }
    gActors[free_actor].actorType = ACTORTYPE_OVL0_PGAMMA_6;
    Actor_Initialize(free_actor);
    gActors[free_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[free_actor].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[free_actor].graphicIndex = graphic_index;
    gActors[free_actor].rotateZ = gActiveFrames * 0x28;
    gActors[free_actor].var_150 = gActiveFrames / 2;
    gActors[free_actor].posX.raw = gActors[0x50].posX.raw;
    gActors[free_actor].posY.raw = gActors[0x50].posY.raw;
    gActors[free_actor].posZ.raw = gActors[0x50].posZ.raw;
    gActors[free_actor].scaleX = D_801A36D0_6BC0C0;
    gActors[free_actor].scaleY = D_801A36D0_6BC0C0;
    gActors[free_actor].velocityX.raw = TO_FIXED((f32) (gPlayerActor.posX.whole - gActors[free_actor].posX.whole) / (-gActors[actor_index].posZ.whole / 32));
    gActors[free_actor].velocityY.raw = TO_FIXED((f32) (gPlayerActor.posY.whole - gActors[free_actor].posY.whole) / (-gActors[actor_index].posZ.whole / 32));
    gActors[free_actor].velocityZ.raw = FIXED_UNIT(32.0);
    gActors[free_actor].colorA = D_801A36CC_6BC0BC * 0x40;
    gActors[free_actor].damage = 7;
    Actor_SetHitboxA(free_actor, 8);
    gActors[free_actor].palette_18C = D_800D1A04;
}

void func_80194E84_6AD874(u16 arg0) {
    s32 angle;
    angle = Math_Plane16Way(gPlayerActor.posX.raw - D_801A36A4_6BC094.raw, gPlayerActor.posY.raw - D_801A36A8_6BC098.raw);
    D_801A36AC_6BC09C.raw = func_800298D0(TO_FIXED(angle & COS_MASK), D_801A36AC_6BC09C.raw, FIXED_UNIT(32));
    D_801A36A4_6BC094.raw += COS(D_801A36AC_6BC09C.whole) * FIXED_UNIT(1.5);
    D_801A36A8_6BC098.raw += SIN(D_801A36AC_6BC09C.whole) * FIXED_UNIT(1.5);
    D_801A36B0_6BC0A0.whole--;
}

void func_80194FB4_6AD9A4(u16 arg0) {
    D_801A36AC_6BC09C.raw = FIXED_UNIT(256);
    D_801A36A4_6BC094.raw = 0;
    D_801A36A8_6BC098.raw = 0;
    D_801A36B0_6BC0A0.whole = 0;
}

void func_80194FE0_6AD9D0(u16 actor_index) {
    gActors[actor_index].velocityZ.raw += FIXED_UNIT(2);
    gActors[actor_index].colorR += 4;
    gActors[actor_index].colorG += 2;
    gActors[actor_index].colorB -= 8;
}

void func_80195048_6ADA38(u16 actor_index) {
    s32 angle;
    u16 particle_actor;
    s32 particle_x;
    s32 particle_y;

    angle = DEG_TO_INDEX(gActors[actor_index].rotateZ - 132.0f);
    particle_x = (COS(angle) * -10.0f * gActors[actor_index].scaleX) + gActors[actor_index].posX.whole;
    particle_y = (SIN(angle) * -10.0f * gActors[actor_index].scaleX) + gActors[actor_index].posY.whole;
    if (gActiveFrames & 1) {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_BLASTB, particle_x, particle_y, gActors[actor_index].posZ.whole - 32);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[particle_actor].scaleX = gActors[actor_index].scaleX * 0.8;
            gActors[particle_actor].scaleY = gActors[particle_actor].scaleX;
            gActors[particle_actor].colorA = 0xC0;
            gActors[particle_actor].var_154 = -64;
            gActors[particle_actor].palette_18C = PALETTE_8022D4E8;
            gActors[particle_actor].var_110 = gActors[actor_index].scaleX * -0.4;
            gActors[particle_actor].unk_114 = gActors[particle_actor].var_110;
            Actor_SetColorRgb(particle_actor, 0x2F);
            gActors[particle_actor].unk_148 = 1.0f;
        }
    }
    else {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_STAREFFECT, particle_x, particle_y, gActors[actor_index].posZ.whole - 32);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[particle_actor].colorA = 0xC0;
            gActors[particle_actor].scaleX = gActors[actor_index].scaleX * 2.3;
            gActors[particle_actor].scaleY = gActors[actor_index].scaleX * 0.3;
            Actor_SetColorRgb(particle_actor, 0x7F);
            gActors[particle_actor].var_160 = Rand() * FIXED_UNIT(3);
            gActors[particle_actor].unk_148 = 0.0f;
        }
    }
    if ((gActiveFrames % 3) == 0) {
        particle_actor = func_8003EDF4(gActors[actor_index].scaleX * 3.0, (8 - (Rand() & 0xF)) + particle_x, (8 - (Rand() & 0xF)) + particle_y, gActors[actor_index].posZ.whole - 64);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[particle_actor].colorR = 0x48;
            gActors[particle_actor].colorG = 0x58;
            gActors[particle_actor].colorB = 0x6F;
            gActors[particle_actor].velocityZ.raw = FIXED_UNIT(-64);
            gActors[particle_actor].velocityX.raw = COS(angle) * FIXED_UNIT(-6);
            gActors[particle_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(-6);
            gActors[particle_actor].var_110 = gActors[actor_index].scaleX * -0.1;
            gActors[particle_actor].unk_114 = gActors[actor_index].scaleX * -0.1;
            gActors[particle_actor].var_154 = -24;
            gActors[particle_actor].pfn_17C = func_80194FE0_6AD9D0;
        }
    }
}

void func_80195508_6ADEF8(u16 actor_index) {
    if (gActors[actor_index].state < 2) {
        gActors[actor_index].rotateZ = INDEX_TO_DEG(Math_Atan2(gLookatEyeX - gActors[actor_index].posX.whole, gLookatEyeY - gActors[actor_index].posY.whole)) + -48.0;
    }
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].velocityY.raw += FIXED_UNIT(0.0625);
        if (gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = TO_FIXED((f32) (gPlayerActor.posX.whole - gActors[actor_index].posX.whole) / (-gActors[0x34].posZ.whole / 8));
            gActors[actor_index].velocityY.raw = TO_FIXED((f32) (gPlayerActor.posY.whole - gActors[actor_index].posY.whole) / (-gActors[0x34].posZ.whole / 8));
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(8);
        }
        break;
    case 1:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || (gActors[actor_index].posZ.whole > 24)) {
            Sound_PlaySfxAtActor2(SFX_BOOM_0041, actor_index);
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_UNK9 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicList = D_800D271C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].colorA = 0xE0;
            gActors[actor_index].scaleX = 2.0f;
            Actor_SetColorRgb(actor_index, 0x40);
            gActors[actor_index].colorG = 0x7F;
            gActors[actor_index].posZ.whole = 24;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].velocityZ.raw = 0;
            gActors[actor_index].var_150 = 0x10;
            gActors[actor_index].var_110 = 0.4f;
            Actor_SetHitboxA(actor_index, 32);
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            func_8019AF9C_6B398C();
            return;
        }
        else {
            if (gActors[actor_index].posZ.whole > -24) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9;
            }
            gActors[actor_index].scaleX += 0.015;
            func_80195048_6ADA38(actor_index);
        }
        break;
    default:
        gActors[actor_index].velocityZ.raw -= FIXED_UNIT(2);
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        else {
            gActors[actor_index].scaleX += gActors[actor_index].var_110;
        }
        gActors[actor_index].var_110 = Math_ApproachF32(gActors[actor_index].var_110, 0.1f, 0.01f);
        gActors[actor_index].var_150 = Math_ApproachF32(gActors[actor_index].var_150, 16.0f, 1.0f);
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_150);
        break;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_8019590C_6AE2FC(u16 arg0) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x54, 0x74);
    if (free_actor == 0) {
        return;
    }
    gActors[free_actor].actorType = ACTORTYPE_OVL0_PGAMMA_7;
    Actor_Initialize(free_actor);
    gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[free_actor].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[free_actor].graphicIndex = GINDEX_025E;
    gActors[free_actor].scaleX = 0.5f;
    gActors[free_actor].posX.raw = gActors[0x50].posX.raw;
    gActors[free_actor].posY.raw = gActors[0x50].posY.raw;
    gActors[free_actor].posZ.raw = gActors[0x50].posZ.raw;
    gActors[free_actor].velocityY.raw = FIXED_UNIT(-2);
    gActors[free_actor].damage = 50;
    gActors[free_actor].hitType = HITTYPE_6;
    Actor_SetHitboxA(free_actor, 1);
    Actor_SetHitboxB(free_actor, 0xC);
    Sound_PlaySfx(SFX_0074);
}

void func_801959F8_6AE3E8(u16 arg0) {
}

void func_80195A00_6AE3F0(u16 arg0) {
}

void func_80195A08_6AE3F8(void) {
    D_801A10E8_6B9AD8 = 0;
}

void func_80195A14_6AE404(void) {
    D_801A10E8_6B9AD8 = 1;
    gLookatEyeZ = 8.0f;
}

void func_80195A34_6AE424(void) {
    s32 pad;
    f32 var_f14;
    s32 actor_0;
    s32 actor_1;

    switch (D_801A10E8_6B9AD8) {
    case 0:
        gActors[0x90].colorR = Math_ApproachS32(gActors[0x90].colorR, 0, 3);
        gActors[0x91].colorR = gActors[0x90].colorR;
        gActors[0x92].colorR = gActors[0x90].colorR;
        gActors[0x93].colorR = gActors[0x90].colorR;
        gActors[0x90].colorG = gActors[0x90].colorR;
        gActors[0x91].colorG = gActors[0x90].colorR;
        gActors[0x92].colorG = gActors[0x90].colorR;
        gActors[0x93].colorG = gActors[0x90].colorR;
        if (!(gActors[0x88].state & 0x4000)) {
            if ((gPlayerActor.posX.whole >= gActors[0x88].posX.whole) && (gActors[0x34].posX.whole < gPlayerActor.posX.whole)) {
                actor_0 = PLAYER_INDEX;
            }
            else if ((gActors[0x88].posX.whole >= gPlayerActor.posX.whole) && (gActors[0x34].posX.whole < gActors[0x88].posX.whole)) {
                actor_0 = 0x88;
            }
            else {
                actor_0 = 0x34;
            }
            if ((gActors[0x88].posX.whole >= gPlayerActor.posX.whole) && (gPlayerActor.posX.whole < gActors[0x34].posX.whole)) {
                actor_1 = PLAYER_INDEX;
            }
            else if ((gPlayerActor.posX.whole >= gActors[0x88].posX.whole) && (gActors[0x88].posX.whole < gActors[0x34].posX.whole)) {
                actor_1 = 0x88;
            }
            else {
                actor_1 = 0x34;
            }
        }
        else {
            if (gActors[0x34].posX.whole < gActors[0x88].posX.whole) {
                actor_0 = 0x88;
                actor_1 = 0x34;
            }
            else {
                actor_1 = 0x88;
                actor_0 = 0x34;
            }
        }
        var_f14 = gActors[actor_0].posX.whole - ((gActors[actor_0].posX.whole - gActors[actor_1].posX.whole) / 2);
        if (var_f14 < -48.0f) {
            var_f14 = -48.0f;
        }
        if (var_f14 > 48.0f) {
            var_f14 = 48.0f;
        }
        gLookatEyeX = var_f14;
        gLookatAtX = Math_ApproachF32(gLookatAtX, var_f14, 10.0f);
        if (!(gActors[0x88].state & 0x4000)) {
            if ((gPlayerActor.posY.whole >= gActors[0x88].posY.whole) && (gActors[0x34].posY.whole < gPlayerActor.posY.whole)) {
                actor_0 = PLAYER_INDEX;
            }
            else if ((gActors[0x88].posY.whole >= gPlayerActor.posY.whole) && (gActors[0x34].posY.whole < gActors[0x88].posY.whole)) {
                actor_0 = 0x88;
            }
            else {
                actor_0 = 0x34;
            }
            if ((gActors[0x88].posY.whole >= gPlayerActor.posY.whole) && (gPlayerActor.posY.whole < gActors[0x34].posY.whole)) {
                actor_1 = PLAYER_INDEX;
            }
            else if ((gPlayerActor.posY.whole >= gActors[0x88].posY.whole) && (gActors[0x88].posY.whole < gActors[0x34].posY.whole)) {
                actor_1 = 0x88;
            }
            else {
                actor_1 = 0x34;
            }
        }
        else {
            if (gActors[0x34].posY.whole < gActors[0x88].posY.whole) {
                actor_0 = 0x88;
                actor_1 = 0x34;
            }
            else {
                actor_1 = 0x88;
                actor_0 = 0x34;
            }
        }
        var_f14 = gActors[actor_0].posY.whole - ((gActors[actor_0].posY.whole - gActors[actor_1].posY.whole) / 2);
        gLookatEyeY = var_f14 + 5.0f;
        gLookatAtY = Math_ApproachF32(gLookatAtY, var_f14, 40.0f);
        var_f14 = gActors[actor_0].posY.raw - gActors[actor_1].posY.raw;
        gLookatEyeZ = FROM_FIXED(var_f14 * 1.2);
        if (gLookatEyeZ < 0.0f) {
            gLookatEyeZ = 320.0f - gLookatEyeZ;
        }
        else {
            gLookatEyeZ += 320.0f;
        }
        if (gLookatEyeZ < 416.0f) {
            gLookatEyeZ = 416.0f;
        }
        if (gLookatEyeZ > 768.0f) {
            gLookatEyeZ = 768.0f;
        }
        D_800BE544 = 0x34;
        break;
    case 1:
        D_800BE544 = 0x8000;
        gLookatAtX = 0.0f;
        gLookatEyeX = 0.0f;
        gLookatAtY = 4.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = Math_ApproachF32(gLookatEyeZ, 320.0f, 4.0f);
        break;
    }
}

void func_80195EFC_6AE8EC(void) {
    s16 color;

    if (gActiveFrames & 1) {
        *((u16*)0x802EB78A) = 0x1801;
    }
    else {
        color = func_800456DC() * 2;
        *((u16*)0x802EB78A) = Palette_AdjustRgb5551(0x9801, 0, color, color);
    }
}

void func_80195F68_6AE958(u16 arg0) {
    u16 index;
    u16 sample_index;

    sample_index = 0;
    for (index = 0x96; index < 0xA0; index++) {
        gActors[index].actorType = ACTORTYPE_GRAPHIC_29;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[index].graphicIndex = GINDEX_FEST_WARITAMA;
        gActors[index].scaleX = D_801A36FC_6BC0EC[sample_index];
        gActors[index].scaleY = D_801A36FC_6BC0EC[sample_index];
        gActors[index].unk_188 = D_801A3724_6BC114[sample_index];
        sample_index++;
    }
    gActors[index - 1].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
    gActors[index - 1].graphicIndex = GINDEX_0806;
}

void func_80196088_6AEA78(u16 actor_index) {
    if (gActors[actor_index].unk_138 != 0.0f) {
        gActors[actor_index + 2].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index + 2].graphicIndex = GINDEX_FEST_WINNERSTAND;
        gActors[actor_index + 3].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index + 3].graphicIndex = GINDEX_FEST_PENNANT_A;
        gActors[actor_index + 0x1C].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_index + 2].graphicIndex = GINDEX_FEST_PENNANT_A;
        gActors[actor_index + 3].graphicIndex = GINDEX_FEST_WINNERSTAND;
    }
}

void func_80196160_6AEB50(u16 actor_index) {
    D_801A44C4_6BCEB4 = TO_FIXED(Math_Atan2(-gActors[actor_index].velocityX.raw, -gActors[actor_index].velocityY.raw));
}

void func_801961C4_6AEBB4(u16 actor_index) {
    s16 angle;
    s16 pos_z;
    s32 temp_pos_x;
    s32 temp_pos_y;
    s32 pos_x;
    s32 pos_y;
    u16 sample_index;
    u16 index;
    u16 temp_angle;
    s32 angle_index;

    gActors[actor_index + 0x19].posZ.raw += FIXED_UNIT(16);
    gActors[actor_index + 0x1A].posZ.raw += FIXED_UNIT(32);
    gActors[actor_index + 0x1B].posZ.raw += FIXED_UNIT(48);
    gActors[actor_index + 0x1C].posZ.raw += FIXED_UNIT(64);
    if (((gActors[actor_index].state < 0x410) || (gActors[actor_index].state >= 0x41E)) && (gActors[actor_index].state >= 0x403)) {
        D_801A44C0_6BCEB0 = func_800298D0((D_801A44C4_6BCEB4 - TO_FIXED((Rand() & 0xF) * 4)) + FIXED_UNIT(32), D_801A44C0_6BCEB0, FIXED_UNIT(16));
        angle = FROM_FIXED(D_801A44C0_6BCEB0);
        pos_x = -(f32)gActors[actor_index].velocityX.raw * 1.5;
        pos_y = -(f32)(gActors[actor_index].velocityY.raw - D_801A1108_6B9AF8) * 1.5;
        for (index = 0; index < ARRAYLENGTH(D_801A43D0_6BCDC0); index++) {
            temp_angle = D_801A4390_6BCD80[index];
            D_801A4390_6BCD80[index] = angle;
            angle = temp_angle;

            temp_pos_x = D_801A43D0_6BCDC0[index];
            D_801A43D0_6BCDC0[index] = pos_x;
            pos_x = temp_pos_x;

            temp_pos_y = D_801A4448_6BCE38[index];
            D_801A4448_6BCE38[index] = pos_y;
            pos_y = temp_pos_y;
        }

        pos_x = gActors[actor_index + 1].posX.raw;
        pos_y = gActors[actor_index + 1].posY.raw;
        pos_z = gActors[actor_index].posZ.whole - 2;
        sample_index = 2;
        for (index = 0x96; index < 0xA0; index++, pos_z -= 8) {
            angle = D_801A4390_6BCD80[sample_index];
            gActors[index].posX.raw = (s32)(COS(angle) * gActors[index].unk_188) + D_801A43D0_6BCDC0[sample_index] + pos_x;
            gActors[index].posY.raw = (s32)(SIN(angle) * gActors[index].unk_188) + D_801A4448_6BCE38[sample_index] + pos_y;
            gActors[index].posZ.whole = pos_z;
            pos_x = gActors[index].posX.raw;
            pos_y = gActors[index].posY.raw;
            sample_index += 3;
        }
        angle_index = Math_Atan2(gActors[0x9F].posX.whole - gActors[0x9E].posX.whole, gActors[0x9F].posY.whole - gActors[0x9E].posY.whole);
        gActors[0x9F].rotateZ = INDEX_TO_DEG((angle_index + COS_DEG_90) & COS_MASK);
    }
}

void func_80196564_6AEF54(u16 actor_index) {
    D_801A375C_6BC14C -= D_801A3760_6BC150;
    if (D_801A375C_6BC14C < 0.0f) {
        gActors[actor_index + 0xA].graphicIndex = D_801A374C_6BC13C[D_801A3758_6BC148];
        D_801A3758_6BC148++;
        D_801A375C_6BC14C = 10.0f;
        if (D_801A3758_6BC148 >= ARRAYLENGTH(D_801A374C_6BC13C)) {
            D_801A3758_6BC148 = 0;
        }
        Actor_SetColorRgb(actor_index + 0xA, (gActiveFrames / 2) & 0x1F);
    }
    D_801A3760_6BC150 = Math_ApproachF32(D_801A3760_6BC150, 10.1f, 0.05f);
}

void func_8019666C_6AF05C(u16 actor_index) {
    u16 other_actor;

    other_actor = actor_index + 1;
    gActors[other_actor].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10;
    Actor_SetHitboxB(other_actor, 0x1C);

    other_actor = actor_index + 0xA;
    gActors[other_actor].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9;
    Actor_SetHitboxA(other_actor, 0x14);
    Actor_SetHitboxB(other_actor, 0xE);
    gActors[other_actor].damage = 100;
    gActors[other_actor].hitType = HITTYPE_8;
    gActors[other_actor].hitFlags = HITFLAG_2;
}

void func_80196750_6AF140(u16 actor_index) {
    u16 other_actor;

    other_actor = actor_index + 0x1C;
    gActors[other_actor].flags |= ACTOR_FLAG_UNK15;
    Actor_SetHitboxA(other_actor, 0xC);
    gActors[other_actor].damage = 30;
    gActors[other_actor].hitType = HITTYPE_4;
    gActors[other_actor].hitFlags = 0;
    gActors[other_actor].unk_0F8.raw = 0;
    gActors[other_actor].unk_0FC.raw = FIXED_UNIT(-4);
    D_801A3768_6BC158 = 0;
    D_801A376C_6BC15C = 0;
    func_80081790(actor_index, &D_801A31C4_6BBBB4);
    gActors[actor_index].unk_138 = 0.0f;
}

void func_8019682C_6AF21C(u16 actor_index) {
    s32 direction;
    u16 angle;

    func_80196160_6AEB50(actor_index);
    gActors[actor_index].velocityX.raw += D_801A3768_6BC158;
    gActors[actor_index].velocityY.raw += D_801A376C_6BC15C;
    direction = Math_Plane16Way(gPlayerActor.posX.raw - gActors[actor_index].posX.raw, gPlayerActor.posY.raw - gActors[actor_index].posY.raw);
    gActors[actor_index].unk_170 = func_800298D0(TO_FIXED((direction + COS_DEG_90) & COS_MASK), gActors[actor_index].unk_170, FIXED_UNIT(8));
    if (gActors[actor_index].unk_16C & 1) {
        Sound_PlaySfxAtActor2(SFX_008C, actor_index);
        gActors[actor_index + 0x1C].flags |= ACTOR_FLAG_UNK9;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3570_6BBF60);
        angle = FROM_FIXED(gActors[actor_index].unk_170) - COS_DEG_90;
        gActors[actor_index].velocityX.raw = COS(angle) * FIXED_UNIT(4);
        D_801A3768_6BC158 = COS(angle) * FIXED_UNIT(-0.25);
        if (gActors[actor_index].posY.whole < (gPlayerActor.posY.whole + 0x40)) {
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(3);
            D_801A376C_6BC15C = FIXED_UNIT(-0.125);
        }
        else {
            gActors[actor_index].velocityY.raw = (s32) (SIN(angle) * FIXED_UNIT(3.5)) + D_801A1108_6B9AF8;
            D_801A376C_6BC15C = SIN(angle) * FIXED_UNIT(-0.125);
        }
    }
    if (gActors[actor_index].unk_11C < 0.0f) {
        D_801A3764_6BC154 -= 1;
        gActors[actor_index + 0x1C].flags &= ~ACTOR_FLAG_UNK9;
        if ((D_801A3764_6BC154 < 0) || (gActors[actor_index].posY.whole < gPlayerActor.posY.whole)) {
            func_80081790(actor_index, D_801A31FC_6BBBEC);
            gActors[actor_index].state += 1;
            SpawnCrosshair(CROSSHAIR_ALL, actor_index + 0x1C);
            gActors[actor_index + 0x1C].flags |= ACTOR_FLAG_UNK12;
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 - FIXED_UNIT(1.5);
            D_801A10C8_6B9AB8 = 0x1E;
        }
        else {
            func_80081790(actor_index, D_801A31D8_6BBBC8);
        }
    }
}

void func_80196BA4_6AF594(u16 actor_index) {
    u16 other_actor;

    other_actor = actor_index + 1;
    gActors[other_actor].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10;
    gActors[other_actor].hitboxBY0 = 10; \
    gActors[other_actor].hitboxBY1 = -10;
    gActors[other_actor].hitboxBX0 = -18; \
    gActors[other_actor].hitboxBX1 = 18;

    other_actor = actor_index + 0x1C;
    gActors[other_actor].health = 10;
    gActors[other_actor].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    gActors[other_actor].grabType = GRABTYPE_5;
    Actor_SetHitboxB(other_actor, 8);
}

void func_80196C48_6AF638(u16 actor_index, s32 flags) {
    if ((gActors[actor_index].posZ.whole > 24) || (gActors[actor_index].posZ.whole < -24)) {
        gActors[actor_index].flags &= -1 - flags;
    }
    else {
        gActors[actor_index].flags |= flags;
    }
}

void func_80196CC0_6AF6B0(u16 actor_index) {
    s32 angle;

    func_80196C48_6AF638(actor_index + 1, ACTOR_FLAG_UNK10);
    func_80196C48_6AF638(actor_index + 0xA, ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9);
    angle = FROM_FIXED(gActors[actor_index].unk_170 - FIXED_UNIT(256));
    gActors[actor_index + 0xA].unk_0F8.raw = COS(angle) * FIXED_UNIT(6.0);
    gActors[actor_index + 0xA].unk_0FC.raw = SIN(angle) * FIXED_UNIT(6.0);
}

void func_80196DF8_6AF7E8(u16 actor_index) {
    if ((gActors[actor_index].posZ.whole > 24) || (gActors[actor_index].posZ.whole < -24)) {
        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK10;
        gActors[actor_index + 0x1C].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
    }
    else {
        gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK10;
        gActors[actor_index + 0x1C].flags |= (ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
    }
}

s32 func_80196EC4_6AF8B4(u16 actor_index) {
    if ((gActors[actor_index + 0x1C].flags_098 & ACTOR_FLAG3_GRAB) && (D_800D294C == 0)) {
        gPlayerActor.posY.raw += D_801A1108_6B9AF8;
        return TRUE;
    }
    return FALSE;
}

s32 func_80196F38_6AF928(u16 actor_index) {
    if (func_80196EC4_6AF8B4(actor_index)) {
        gActors[actor_index].state = 0x480;
        gActors[actor_index].unk_120 = 1.0f;
        D_801A110C_6B9AFC = 0;
        D_801A1110_6B9B00 = 3;
        Sound_PlaySfx(SFX_GRAB_002F);
        return TRUE;
    }
    return FALSE;
}

s32 func_80196FCC_6AF9BC(u16 actor_index, u16 arg1) {
    if (D_801A110C_6B9AFC < 7) {
        D_801A110C_6B9AFC++;
    }
    if (D_801A110C_6B9AFC > 6) {
        gActors[actor_index].state++;
        gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
        Sound_PlaySfxAtActor2(SFX_0039, actor_index);
        switch (arg1) {
            case 0:
                gPlayerActor.unk_0F8.raw = FIXED_UNIT(4);
                gPlayerActor.unk_0FC.raw = 0;
                break;
            case 1:
                gPlayerActor.unk_0F8.raw = 0;
                gPlayerActor.unk_0FC.raw = FIXED_UNIT(4);
                break;
            case 2:
                gPlayerActor.unk_0F8.raw = FIXED_UNIT(-4);
                gPlayerActor.unk_0FC.raw = 0;
                break;
            case 3:
                gPlayerActor.unk_0F8.raw = 0;
                gPlayerActor.unk_0FC.raw = FIXED_UNIT(-4);
                break;
        }
        return TRUE;
    }
    return FALSE;
}

s32 func_801970F0_6AFAE0(u16 actor_index) {
    u16 other_index = actor_index + 0x1C;
    if (func_80196EC4_6AF8B4(actor_index)) {
        if (gActors[other_index].flags_098 & ACTOR_FLAG3_SHAKE) {
            Sound_PlaySfx(SFX_0115);
            if (func_800486F4() == 4) {
                if (D_801A1110_6B9B00 != 0) {
                    if (D_801A110C_6B9AFC > 0) {
                        return 1;
                    }
                    D_801A1110_6B9B00 = 0;
                }
                gActors[actor_index].unk_138 = 1.0f;
                if (func_80196FCC_6AF9BC(actor_index, 0)) {
                    func_80081790(actor_index, D_801A3530_6BBF20);
                }
                else {
                    if (gActors[actor_index].velocityX.raw < FIXED_UNIT(8.0)) {
                        gActors[actor_index].velocityX.raw += FIXED_UNIT(4.0);
                    }
                    func_80081790(actor_index, D_801A3770_6BC160[D_801A110C_6B9AFC]);
                }
            }
            else if (func_800486F4() == 0) {
                if (D_801A1110_6B9B00 != 1) {
                    if (D_801A110C_6B9AFC > 0) {
                        return 1;
                    }
                    D_801A1110_6B9B00 = 1;
                }
                if (func_80196FCC_6AF9BC(actor_index, 1)) {
                    func_80081790(actor_index, D_801A3510_6BBF00);
                }
                else {
                    if (gActors[actor_index].velocityY.raw < (D_801A1108_6B9AF8 + FIXED_UNIT(8.0))) {
                        gActors[actor_index].velocityY.raw += FIXED_UNIT(4.0);
                    }
                    func_80081790(actor_index, D_801A3790_6BC180[D_801A110C_6B9AFC]);
                }
            }
            else if (func_800486F4() == 0xC) {
                if (D_801A1110_6B9B00 != 2) {
                    if (D_801A110C_6B9AFC > 0) {
                        return 1;
                    }
                    D_801A1110_6B9B00 = 2;
                }
                gActors[actor_index].unk_138 = 0.0f;
                if (func_80196FCC_6AF9BC(actor_index, 2)) {
                    func_80081790(actor_index, D_801A3530_6BBF20);
                }
                else {
                    if (gActors[actor_index].velocityX.raw > FIXED_UNIT(-8.0)) {
                        gActors[actor_index].velocityX.raw -= FIXED_UNIT(4.0);
                    }
                    func_80081790(actor_index, D_801A37B0_6BC1A0[D_801A110C_6B9AFC]);
                }
            }
            else if (func_800486F4() == 8) {
                if (D_801A1110_6B9B00 != 3) {
                    if (D_801A110C_6B9AFC > 0) {
                        return 1;
                    }
                    D_801A1110_6B9B00 = 3;
                }
                if (func_80196FCC_6AF9BC(actor_index, 3)) {
                    func_80081790(actor_index, D_801A34F0_6BBEE0);
                }
                else {
                    if ((D_801A1108_6B9AF8 - FIXED_UNIT(8.0)) < gActors[actor_index].velocityY.raw) {
                        gActors[actor_index].velocityY.raw -= FIXED_UNIT(4.0);
                    }
                    func_80081790(actor_index, D_801A37D0_6BC1C0[D_801A110C_6B9AFC]);
                }
            }
        }
        else {
            if ((gActors[actor_index].unk_16C & 1) && (D_801A110C_6B9AFC > 0)) {
                D_801A110C_6B9AFC -= 1;
            }
            if (gActors[actor_index].unk_11C < 0.0f) {
                if (D_801A110C_6B9AFC == 0) {
                    func_80081790(actor_index, &D_801A3280_6BBC70);
                }
                else {
                    func_80081790(actor_index, &D_801A32A0_6BBC90);
                }
            }
        }
        return 1;
    }
    gActors[actor_index].state = 0x402;
    return 0;
}

void func_801975E8_6AFFD8(u16 actor_index) {
    if ((gActors[actor_index + 0x1C].flags_098 & ACTOR_FLAG3_GRAB) && (D_800D294C == 0)) {
        gPlayerActor.unk_0F8.raw = 0;
        gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
        gPlayerActor.unk_0FC.raw = 0;
    }
}

void func_80197654_6B0044(u16 actor_index, s16 x0, s16 x1, s16 y0, s16 y1) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].hitboxBX0 = -x1;
        gActors[actor_index].hitboxBX1 = -x0;
    }
    else {
        gActors[actor_index].hitboxBX0 = x0;
        gActors[actor_index].hitboxBX1 = x1;
    }
    gActors[actor_index].hitboxBY0 = y0;
    gActors[actor_index].hitboxBY1 = y1;
}

void func_801976E8_6B00D8(u16 actor_index, s16 x0, s16 x1, s16 y0, s16 y1) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].hitboxAX0 = -x1;
        gActors[actor_index].hitboxAX1 = -x0;
    }
    else {
        gActors[actor_index].hitboxAX0 = x0;
        gActors[actor_index].hitboxAX1 = x1;
    }
    gActors[actor_index].hitboxAY0 = y0;
    gActors[actor_index].hitboxAY1 = y1;
}

void func_8019777C_6B016C(u16 actor_index, s16 x0, s16 x1, s16 y0, s16 y1) {
    s16 dx0;
    s16 dx1;
    s16 dy0;
    s16 dy1;
    u16 other_actor;

    if ((D_800D294C & 0x8000) && (gActors[0x10].flags & ACTOR_FLAG_DRAW)) {
        other_actor = 0x10;
    }
    else {
        other_actor = 0;
    }
    dx0 = gActors[other_actor].posX.whole + gActors[other_actor].hitboxBX0;
    dx1 = gActors[other_actor].posX.whole + gActors[other_actor].hitboxBX1;
    dy0 = gActors[other_actor].posY.whole + gActors[other_actor].hitboxBY0;
    dy1 = gActors[other_actor].posY.whole + gActors[other_actor].hitboxBY1;
    if ((dx1 >= x0) && (dx0 < x1) && (dy0 >= y1) && (dy1 < y0)) {
        if (gActors[other_actor].posX.raw < gActors[actor_index].posX.raw) {
            if ((dx1 - x0) < 8) {
                gActors[other_actor].posX.whole -= dx1 - x0;
            }
            else {
                gActors[other_actor].posX.whole -= 8;
            }
        }
        else {
            if ((x1 - dx0) < 8) {
                gActors[other_actor].posX.whole += x1 - dx0;
            }
            else {
                gActors[other_actor].posX.whole += 8;
            }
        }
    }
}

void func_801978DC_6B02CC(u16 actor_index) {
    if ((gActors[actor_index].posZ.whole < 32) && (gActors[actor_index].posZ.whole > -32)) {
        func_8019777C_6B016C(actor_index,
            gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0,
            gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1,
            gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0,
            gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1);
    }
}

void func_80197988_6B0378(u16 actor_index, u16 count) {
    u16 index;
    for (index = actor_index + 1; count; index++, count--) {
        gActors[index].flags = ACTOR_FLAG_NONE;
    }
}

void func_801979E8_6B03D8(u16 actor_index, u16 arg1) {
    u16 index_3;
    u16 index_5;
    u16 count;
    s16* array_3;
    s16* array_5;

    switch (arg1) {
    case 0:
        array_3 = D_801A1394_6B9D84;
        array_5 = D_801A1480_6B9E70;
        count = 39;
        break;
    case 1:
        array_3 = D_801A1608_6B9FF8;
        array_5 = D_801A16B0_6BA0A0;
        count = 28;
        break;
    case 2:
        array_3 = D_801A17CC_6BA1BC;
        array_5 = D_801A182C_6BA21C;
        count = 16;
        break;
    }

    func_80197988_6B0378(actor_index, 39);

    index_3 = 0;
    index_5 = 0;
    for (; count != 0; count--) {
        D_801A1120_6B9B10[index_3 + 0] = array_3[0];
        D_801A1120_6B9B10[index_3 + 1] = array_3[1];
        D_801A1120_6B9B10[index_3 + 2] = array_3[2];

        D_801A120C_6B9BFC[index_5 + 0] = array_5[0];
        D_801A120C_6B9BFC[index_5 + 1] = array_5[1];
        D_801A120C_6B9BFC[index_5 + 2] = array_5[2];
        D_801A120C_6B9BFC[index_5 + 3] = array_5[3];
        D_801A120C_6B9BFC[index_5 + 4] = array_5[4];
        index_3 += 3;
        index_5 += 5;
        array_3 += 3;
        array_5 += 5;
    }

    D_801A120C_6B9BFC[index_5] = 0x7FFF;
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
    func_8008105C(actor_index, D_801A120C_6B9BFC, D_801A1120_6B9B10);
    gActors[actor_index].unk_178 = (s32) D_801A2F2C_6BB91C;
    gActors[actor_index].colorA = 0xFE;
}

s16 func_80197BD0_6B05C0(u16 actor_index, s16 pos_y_limit) {
    if (gActors[actor_index].posY.whole < -pos_y_limit) {
        gActors[actor_index].posY.whole = -pos_y_limit;
        return -1;
    }
    if (pos_y_limit < gActors[actor_index].posY.whole) {
        gActors[actor_index].posY.whole = pos_y_limit;
        return 1;
    }
    return 0;
}

void func_80197C48_6B0638(u16 actor_index) {
    s32 pad;
    D_801A10EC_6B9ADC = 0;
    if ((gActors[actor_index].state != 0) && !(gActors[actor_index].state & 0x8000)) {
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        if ((gActors[0x34].posZ.whole > 32) || (gActors[0x34].posZ.whole < -32)) {
            gActors[0x34].iFrames = 8;
        }
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        if (gActors[actor_index].posX.whole < -80) {
            gActors[actor_index].posX.whole = -80;
        }
        else if (gActors[actor_index].posX.whole > 80) {
            gActors[actor_index].posX.whole = 80;
        }
        if (gActors[actor_index].state & 0x400) {
            func_801961C4_6AEBB4(actor_index);
            func_80196088_6AEA78(actor_index);
            func_80196DF8_6AF7E8(actor_index);
            func_80197BD0_6B05C0(actor_index, 384);
            func_80195EFC_6AE8EC();
            func_80192100_6AAAF0(actor_index, actor_index + 0x15, -1);
            func_80192100_6AAAF0(actor_index, actor_index + 0x18, 1);
        }
        else if (gActors[actor_index].state & 0x200) {
            func_80196564_6AEF54(actor_index);
            func_801978DC_6B02CC(actor_index + 0x01);
            func_801978DC_6B02CC(actor_index + 0x0A);
            func_80197BD0_6B05C0(actor_index, 384);
            func_80196CC0_6AF6B0(actor_index);
            func_80192100_6AAAF0(actor_index, actor_index + 0x0D, -1);
            func_80192100_6AAAF0(actor_index, actor_index + 0x10, 1);
        }
    }
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 2);
    gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 2);
    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 2);
}

void func_80197E74_6B0864(u16 actor_index) {
    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
    }
    if (gActors[actor_index].unk_138 != 0.0f) {
        gActors[actor_index + 2].unk_180 = -1;
    }
    else {
        gActors[actor_index + 2].unk_180 = 1;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_WARPING | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_GRAB);
}

void func_80197F34_6B0924(u16 actor_index) {
    gActors[actor_index].colorR = -gActors[actor_index].posZ.whole / 2;
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_80197F90_6B0980(u16 actor_index) {
    if (D_801A10C8_6B9AB8 >= 0) {
        D_801A10C8_6B9AB8--;
        return;
    }
    switch (D_801A10C0_6B9AB0) {
    case 0:
        if (!func_80029B00(512, 128, -224)) {
            gActors[actor_index].state = 0x444;
        }
        else {
            switch (D_801A10C4_6B9AB4) {
            default:
                D_801A10C4_6B9AB4 = 0; \
                D_801A10C8_6B9AB8 = 180; \
                gActors[actor_index].state = 0x430; \
                D_801A3764_6BC154 = 16;
                break;
            case 0:
            case 1:
            case 2:
                D_801A10C4_6B9AB4++;
                D_801A10C8_6B9AB8 = 100;
                gActors[actor_index].state = 0x430;
                D_801A3764_6BC154 = D_801A10C4_6B9AB4 + 5;
                break;
            }
        }
        break;
    case 1:
        switch (D_801A10C4_6B9AB4) {
        case 0:
            D_801A10C4_6B9AB4++;
            gActors[actor_index].state = 0x43C;
            D_801A10C8_6B9AB8 = 80;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            if (!func_80029B00(512, 64, -128)) {
                gActors[actor_index].state = 0x444;
            }
            else {
                D_801A10C4_6B9AB4++;
                gActors[actor_index].state = 0x420;
                D_801A10C8_6B9AB8 = -1;
            }
            break;
        case 5:
            if (!func_80029B00(512, 96, -128)) {
                gActors[actor_index].state = 0x444;
            }
            else {
                D_801A10C4_6B9AB4++;
                gActors[actor_index].state = 0x428;
                D_801A10C8_6B9AB8 = 100;
            }
            break;
        case 6:
            D_801A10C4_6B9AB4++;
            gActors[actor_index].state = 0x43C;
            D_801A10C8_6B9AB8 = 80;
            break;
        case 7:
        case 8:
        case 9:
            if (!func_80029B00(512, 0, -128)) {
                gActors[actor_index].state = 0x444;
            }
            else {
                D_801A10C4_6B9AB4++;
                D_801A10C8_6B9AB8 = 100;
                gActors[actor_index].state = 0x430;
                D_801A3764_6BC154 = 10;
            }
            break;
        default:
            D_801A10C4_6B9AB4 = 7;
            gActors[actor_index].state = 0x43C;
            D_801A10C8_6B9AB8 = 80;
            break;
        }
        break;
    case 2:
        switch (D_801A10C4_6B9AB4) {
        case 0:
            D_801A10C4_6B9AB4++;
            gActors[actor_index].state = 0x43C;
            D_801A10C8_6B9AB8 = 80;
            break;
        case 1:
        case 2:
        case 4:
        case 5:
            if (!func_80029B00(512, 64, -128)) {
                gActors[actor_index].state = 0x444;
            }
            else {
                D_801A10C4_6B9AB4++;
                gActors[actor_index].state = 0x420;
                D_801A10C8_6B9AB8 = -1;
            }
            break;
        case 3:
        case 6:
            if (!func_80029B00(512, 96, -128)) {
                gActors[actor_index].state = 0x444;
            }
            else {
                D_801A10C4_6B9AB4++;
                gActors[actor_index].state = 0x428;
                D_801A10C8_6B9AB8 = 100;
            }
            break;
        case 7:
            D_801A10C4_6B9AB4++;
            /* fallthrough */
        case 8:
            if (!func_80029B00(512, 0, -0xC0)) {
                D_801A10C4_6B9AB4 = 7;
                gActors[actor_index].state = 0x43C;
                D_801A10C8_6B9AB8 = 80;
            }
            else {
                D_801A10C8_6B9AB8 = 100;
                gActors[actor_index].state = 0x430;
                D_801A3764_6BC154 = 16;
            }
        }
        break;
    }
}

void func_80198610_6B1000(u16 actor_index) {
    D_801A10C8_6B9AB8--;
    switch (D_801A10C0_6B9AB0) {
    case 0:
    case 2:
    case 4:
        if (D_801A10C8_6B9AB8 < 0) {
            D_801A10C0_6B9AB0++;
            D_801A10C8_6B9AB8 = 120;
        }
        break;
    case 1:
    case 3:
        if (D_801A10C8_6B9AB8 < 0) {
            D_801A10C0_6B9AB0++;
            D_801A10C8_6B9AB8 = 45;
        }
        else if (!(gActiveFrames & 3)) {
            func_801946DC_6AD0CC(actor_index);
        }
        break;
    case 5:
        if (D_801A10C8_6B9AB8 < 0) {
            D_801A10C0_6B9AB0++;
            D_801A10C8_6B9AB8 = 240;
        }
        break;
    case 6:
        if (D_801A10C8_6B9AB8 < 0) {
            D_801A10C0_6B9AB0++;
            D_801A10C8_6B9AB8 = 120;
        }
        else if ((gActiveFrames % 30) == 0) {
            func_8019590C_6AE2FC(actor_index);
        }
        break;
    case 7:
        if (D_801A10C8_6B9AB8 < 0) {
            D_801A10C0_6B9AB0++;
            D_801A36CC_6BC0BC = 0;
            D_801A36D0_6BC0C0 = 0.0f;
        }
        break;
    case 8:
        if (D_801A36CC_6BC0BC > 10) {
            D_801A10C0_6B9AB0++;
            Sound_PlaySfx(SFX_WOOSH_0099);
        }
        /* fallthrough */
    case 9:
        if ((D_801A36CC_6BC0BC >= 150) && (D_801A36D0_6BC0C0 < 0.1)) {
            D_801A10C0_6B9AB0 = 0;
            D_801A10C8_6B9AB8 = 120;
        }
        else if (!(gActiveFrames & 1)) {
            func_80194B1C_6AD50C(actor_index);
        }
        break;
    }
}

void func_80198800_6B11F0(u16 actor_index) {
    s32 angle;
    s32 angle_fixed;

    if (gActors[actor_index].state && (gActors[actor_index].state >= 0x100)) {
        func_80195A34_6AE424();
    }
    func_80197C48_6B0638(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x200;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
        func_801979E8_6B03D8(actor_index, 2);
        func_80081478(actor_index, D_801A120C_6B9BFC, 0x10);
        func_80081790(actor_index, D_801A30CC_6BBABC);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(1);
        D_801A3758_6BC148 = 0;
        D_801A375C_6BC14C = 0;
        D_801A3760_6BC150 = 0;
        break;
    case 0x8004:
        gActors[actor_index].state++;
        func_801979E8_6B03D8(actor_index, 0);
        func_80081478(actor_index, D_801A120C_6B9BFC, 0);
        func_80081790(actor_index, &D_801A3094_6BBA84);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        break;
    case 0x8005:
        if (gActors[actor_index].unk_16C & 1) {
            Sound_PlaySfx(SFX_0072);
        }
        if (gActors[actor_index].unk_11C < 0) {
            gActors[actor_index].state = 0x8006;
            func_801979E8_6B03D8(actor_index, 1);
            func_80081478(actor_index, D_801A120C_6B9BFC, 0x30);
            func_80081790(actor_index, D_801A3130_6BBB20);
            func_800819A8(actor_index, D_801A120C_6B9BFC);
        }
        /* fallthrough */
    case 0x8006:
        func_80195EFC_6AE8EC();
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        break;
    case 0x8100:
        gActors[actor_index].state++;
        func_801979E8_6B03D8(actor_index, 1);
        func_80081478(actor_index, D_801A120C_6B9BFC, 0x30);
        func_80081790(actor_index, D_801A3130_6BBB20);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(12);
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(0.34375);
        /* fallthrough */
    case 0x8101:
        func_80195EFC_6AE8EC();
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        if ((gLookatEyeZ - 128.0f) < gActors[actor_index].posZ.whole) {
            gActors[actor_index].state++;
            func_8019AB1C_6B350C(actor_index);
            gActors[0x8A].state = 1;
            gActors[0x8A].colorA = 0xFF;
            Sound_PlaySfx(SFX_BOOM_0026);
            Sound_PlaySfx(SFX_MERCO_OW);
        }
        break;
    case 0x8102:
        func_80195EFC_6AE8EC();
        func_800819A8(actor_index, D_801A120C_6B9BFC);
        if (gActors[0x8A].colorA == 0xFF) {
            func_8019B21C_6B3C0C(0x88);
        }
        break;
    case 0x200:
        gActors[actor_index].state = 0x220;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(1);
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].posZ.whole = -1;
        func_8019666C_6AF05C(actor_index);
        D_801A3758_6BC148 = 0;
        D_801A375C_6BC14C = 0;
        D_801A3760_6BC150 = 0;
        Sound_PlaySfx(SFX_004C);
        Sound_PlaySfx(SFX_MARINA_LETSGO);
        break;
    case 0x220:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        func_80081790(actor_index, D_801A30CC_6BBABC);
        /* fallthrough */
    case 0x221:
        if (D_801A10CC_6B9ABC >= 0) {
            if (gActors[actor_index].posY.whole >= 0x41) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(1), FIXED_UNIT(0.25));
            }
            else {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(1), FIXED_UNIT(0.25));
            }
        }
        else {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
        break;
    case 0x222:
        func_80197F34_6B0924(actor_index);
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, -FIXED_UNIT(192), FIXED_UNIT(2));
        if (gActors[0x88].state == 0x31A) {
            gActors[actor_index].state = 0x224;
            Sound_PlaySfxAtActorTimed(SFX_0083, actor_index, 0x3C);
            Sound_StopSfx(SFX_004C);
        }
        else if (gActors[actor_index].posY.whole > 0) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(1), FIXED_UNIT(0.0625));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(1), FIXED_UNIT(0.0625));
        }
        break;
    case 0x224:
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, FIXED_UNIT(0.96875), FIXED_UNIT(2));
        angle = Math_Plane16Way(gPlayerActor.posX.raw - gActors[actor_index].posX.raw, gPlayerActor.posY.raw - gActors[actor_index].posY.raw);
        angle_fixed = TO_FIXED((angle + COS_DEG_90) & COS_MASK);
        gActors[actor_index].unk_170 = func_800298D0(angle_fixed, gActors[actor_index].unk_170, FIXED_UNIT(1));
        if (func_80029B00(0x140, 0x68, -0x68)) {
            if ((gActors[actor_index].posZ.raw == FIXED_UNIT(0.96875)) && (angle_fixed == gActors[actor_index].unk_170)) {
                gActors[actor_index].state = 0x240;
            }
            angle_fixed = FIXED_UNIT(0.5);
        }
        else if (func_80029B00(0x140, 0xB8, -0xB8)) {
            angle_fixed = FIXED_UNIT(0.6875);
        }
        else {
            angle_fixed = FIXED_UNIT(3);
        }
        if (gActors[actor_index].posY.whole > 0) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - angle_fixed, angle_fixed / 8);
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + angle_fixed, angle_fixed / 8);
        }
        break;
    case 0x240:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A30F4_6BBAE4);
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        D_801A1104_6B9AF4 = 1.0f;
        /* fallthrough */
    case 0x241:
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x7F, 8);
        gActors[actor_index].colorG = gActors[actor_index].colorR / 2;
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            Sound_PlaySfxAtActor2(SFX_0074, actor_index + 0xA);
            CameraShake(4, 4);
            gActors[0x90].colorR = 0x90;
        }
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.1875));
        break;
    case 0x242:
        func_80192A64_6AB454(actor_index);
        if (gActors[actor_index].unk_16C & 2) {
            gActors[actor_index].state++;
            Sound_PlaySfxAtActor2(SFX_TINK_0064, actor_index + 0xA);
            CameraShake(4, 4);
        }
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.1875));
        break;
    case 0x243:
        D_801A1104_6B9AF4 = Math_ApproachF32(D_801A1104_6B9AF4, 0.3f, 0.02f);
        func_80192A64_6AB454(actor_index);
        if (gActors[actor_index].unk_11C < 0) {
            gActors[actor_index].state = 0x224;
            func_80081790(actor_index, D_801A30CC_6BBABC);
        }
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.1875));
        break;
    case 0x400:
        D_801A10C0_6B9AB0 = 0;
        D_801A10C4_6B9AB4 = 0;
        D_801A10C8_6B9AB8 = 0x14;
        gActors[actor_index].state = 0x40A;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(0.5);
        gActors[actor_index].velocityZ.raw = 0;
        func_80195F68_6AE958(actor_index);
        func_80196BA4_6AF594(actor_index);
        gActors[actor_index + 0x1C].actorType = ACTORTYPE_GRAPHIC_29;
        D_801A44C0_6BCEB0 = FIXED_UNIT(768);
        D_801A44C4_6BCEB4 = FIXED_UNIT(768);
        break;
    case 0x402:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3554_6BBF44);
        func_80081790(actor_index, D_801A3130_6BBB20);
        /* fallthrough */
    case 0x403:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        if (gActors[actor_index].unk_16C & 1) {
            Sound_PlaySfxAtActor2(SFX_0078, actor_index);
        }
        if (func_80196F38_6AF928(actor_index)) {
            break;
        }
        func_80197F90_6B0980(actor_index);
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, -FIXED_UNIT(1), FIXED_UNIT(4));
        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        if (gActors[actor_index].posY.whole >= 0x41) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        break;
    case 0x444:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3554_6BBF44);
        /* fallthrough */
    case 0x445:
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.7f, 0.1f);
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        if (func_80196F38_6AF928(actor_index)) {
            break;
        }
        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        if (gActors[actor_index].posY.whole >= 0x41) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(4.5), FIXED_UNIT(0.5));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(4.5), FIXED_UNIT(0.5));
        }
        if ((gActors[actor_index].posY.whole >= 0x31) && (gActors[actor_index].posY.whole < 0x50)) {
            gActors[actor_index].state = 0x402;
            gActors[actor_index].unk_120 = 1.0f;
        }
        break;
    case 0x408:
    case 0x40A:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        func_80081790(actor_index, D_801A3130_6BBB20);
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3554_6BBF44);
        /* fallthrough */
    case 0x409:
    case 0x40B:
        func_80197F34_6B0924(actor_index);
        if (gActors[actor_index].unk_16C & 1) {
            Sound_PlaySfxAtActor2(SFX_0078, actor_index);
        }
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, -FIXED_UNIT(192), FIXED_UNIT(4));
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[actor_index].posX.whole = Math_ApproachS32(gActors[actor_index].posX.whole, 0, 1);
        if (gActors[actor_index].state == 0x40B) {
            if (D_801A10CC_6B9ABC < 0x1E) {
                gActors[actor_index].state = 0x438;
            }
            break;
        }
        D_801A10C8_6B9AB8--;
        if (D_801A10C8_6B9AB8 < 0) {
            gActors[actor_index].state = 0x438;
        }
        if (gActors[actor_index].posY.whole >= 0x41) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(3), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(3), FIXED_UNIT(0.25));
        }
        break;
    case 0x438:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        func_80081790(actor_index, D_801A3178_6BBB68);
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A358C_6BBF7C);
        /* fallthrough */
    case 0x439:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(8);
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(4);
            Sound_PlaySfx(SFX_0074);
        }
        break;
    case 0x43A:
        func_80197F34_6B0924(actor_index);
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.20703125);
        if (gActors[actor_index].posZ.whole >= -7) {
            gActors[actor_index].state = 0x402;
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8;
            gActors[actor_index].velocityZ.raw = 0;
        }
        break;
    case 0x43C:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        func_80081790(actor_index, D_801A31A8_6BBB98);
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A358C_6BBF7C);
        /* fallthrough */
    case 0x43D:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 - FIXED_UNIT(8);
        gActors[actor_index].velocityZ.raw = -FIXED_UNIT(4);
        Sound_PlaySfx(SFX_0074);
        /* fallthrough */
    case 0x43E:
        func_801975E8_6AFFD8(actor_index);
        func_80197F34_6B0924(actor_index);
        gActors[actor_index].velocityY.raw += FIXED_UNIT(0.20703125);
        if (gActors[actor_index].posZ.whole < -0xB0) {
            gActors[actor_index].state = 0x408;
            gActors[actor_index].velocityZ.raw = 0;
        }
        break;
    case 0x430:
        gActors[actor_index].state++;
        func_80196750_6AF140(actor_index);
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A355C_6BBF4C);
        Sound_PlaySfx(SFX_002B);
        /* fallthrough */
    case 0x431:
        func_8019682C_6AF21C(actor_index);
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, -FIXED_UNIT(1), FIXED_UNIT(0.5));
        break;
    case 0x432:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.03125));
        if (func_80196F38_6AF928(actor_index)) {
            break;
        }
        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(1.5), FIXED_UNIT(0.25));
        }
        if (gActors[actor_index].unk_11C < 0) {
            gActors[actor_index].state = 0x402;
        }
        break;
    case 0x428:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A3250_6BBC40);
        gActors[actor_index + 0x1C].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        gActors[actor_index + 0x1C].health = 0;
        gActors[actor_index].unk_138 = 0;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A358C_6BBF7C);
        /* fallthrough */
    case 0x429:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, 0, FIXED_UNIT(1.5));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(1), FIXED_UNIT(0.25));
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            D_801A35A4_6BBF94 = COS_DEG_180 + COS_DEG_90;
            gActors[0x90].colorR = 0x4F;
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(2);
            ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3584_6BBF74);
            Sound_PlaySfxAtActor2(SFX_005B, actor_index);
        }
        break;
    case 0x42A:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.25));
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            gActors[actor_index + 0x1C].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
            gActors[actor_index + 0x1C].health = 10;
            break;
        }
        angle_fixed = D_801A35A4_6BBF94;
        D_801A35A4_6BBF94 = angle_fixed + 32;
        D_801A35A8_6BBF98 = FIXED_UNIT(32);
        func_80192698_6AB088(actor_index);
        D_801A35A4_6BBF94 = 0x5E0 - angle_fixed;
        func_80192698_6AB088(actor_index);
        D_801A35A4_6BBF94 = angle_fixed + 0x40;
        D_801A35A8_6BBF98 = FIXED_UNIT(64);
        func_80192698_6AB088(actor_index);
        D_801A35A4_6BBF94 = 0x5C0 - angle_fixed;
        func_80192698_6AB088(actor_index);
        D_801A35A4_6BBF94 = angle_fixed + 0x40;
        break;
    case 0x42B:
        if (!func_80196F38_6AF928(actor_index) && (gActors[actor_index].unk_11C < 0)) {
            gActors[actor_index].state = 0x402;
            SpawnCrosshair(CROSSHAIR_ALL, actor_index + 0x1C);
        }
        break;
    case 0x420:
        gActors[actor_index].state++;
        gActors[actor_index + 0x1C].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        gActors[actor_index + 0x1C].health = 0;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A358C_6BBF7C);
        func_80081790(actor_index, D_801A3218_6BBC08);
        gActors[actor_index].unk_138 = (gPlayerActor.posX.whole > 0) ? 1.0f : 0;
        /* fallthrough */
    case 0x421:
        gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, -FIXED_UNIT(1), FIXED_UNIT(0.5));
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.25));
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3584_6BBF74);
            D_801A35A4_6BBF94 = COS_DEG_180 + COS_DEG_90;
            gActors[0x90].colorR = 0x4F;
            gActors[actor_index].velocityX.raw = (gActors[actor_index].unk_138 != 0) ? -FIXED_UNIT(4) : FIXED_UNIT(4);
            gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(3.5);
            Sound_PlaySfxAtActor2(SFX_WOOSH_0099, actor_index);
        }
        break;
    case 0x422:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8, FIXED_UNIT(0.25));
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            gActors[actor_index + 0x1C].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
            gActors[actor_index + 0x1C].health = 10;
            break;
        }
        D_801A35A8_6BBF98 = FIXED_UNIT(32);
        func_80192698_6AB088(actor_index);
        D_801A35A8_6BBF98 = FIXED_UNIT(64);
        if (gActors[actor_index].unk_16C & 2) {
            break;
        }
        if (gActors[actor_index].unk_138 != 0) {
            D_801A35A4_6BBF94 += 32;
            func_80192698_6AB088(actor_index);
            D_801A35A4_6BBF94 += 32;
        }
        else {
            D_801A35A4_6BBF94 -= 32;
            func_80192698_6AB088(actor_index);
            D_801A35A4_6BBF94 -= 32;
        }
        break;
    case 0x423:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        if (!func_80196F38_6AF928(actor_index) && (gActors[actor_index].unk_11C < 0)) {
            gActors[actor_index].state = 0x402;
        }
        break;
    case 0x480:
        gActors[actor_index].state++;
        gActors[actor_index].velocityX.raw = 0;
        func_80081790(actor_index, D_801A3280_6BBC70);
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A3584_6BBF74);
        /* fallthrough */
    case 0x481:
        gActors[actor_index].unk_170 = func_800298D0(0, gActors[actor_index].unk_170, FIXED_UNIT(4));
        func_801970F0_6AFAE0(actor_index);
        if (gActors[actor_index].posX.whole > 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(3), FIXED_UNIT(0.625));
        }
        else {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(3), FIXED_UNIT(0.625));
        }
        if (gActors[actor_index].posY.whole >= 0x21) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 - FIXED_UNIT(3), FIXED_UNIT(0.625));
        }
        else {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, D_801A1108_6B9AF8 + FIXED_UNIT(3), FIXED_UNIT(0.625));
        }
        break;
    case 0x482:
        if (gActors[actor_index].unk_16C & 2) {
            CameraShake(8, 0x14);
            Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
            func_8019C418_6B4E08(0x88);
            gActors[0x88].health -= 256;
            D_801A10C0_6B9AB0++;
            D_801A10C4_6B9AB4 = 0;
            D_801A10C8_6B9AB8 = -1;
        }
        if (gActors[actor_index].unk_11C < 0) {
            gActors[actor_index].state = 0x402;
        }
        break;
    case 0x410:
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = gPlayerActor.posZ.whole - 0x1E0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = D_801A1108_6B9AF8;
        gActors[actor_index].velocityZ.raw = 0;
        func_80081790(actor_index, D_801A3130_6BBB20);
        func_80194FB4_6AD9A4(actor_index);
        D_801A10C0_6B9AB0 = 0;
        D_801A10C8_6B9AB8 = 0x78;
        ACTOR_GFX_INIT(actor_index + 0x1C, D_801A358C_6BBF7C);
        /* fallthrough */
    case 0x411:
        func_80198610_6B1000(actor_index);
        func_80194E84_6AD874(actor_index);
        if (gActors[actor_index].unk_16C & 1) {
            Sound_PlaySfx(SFX_0078);
        }
        gActors[actor_index].posX.raw = (f32)-gPlayerActor.posX.raw * 0.7;
        gActors[actor_index].posY.raw = (f32)-gPlayerActor.posY.raw * 0.7;
        gActors[actor_index].unk_170 = gActors[actor_index].posX.raw;
        break;
    }
    func_80197E74_6B0864(actor_index);
}

void func_8019A12C_6B2B1C(u16 actor_0, u16 actor_1, u16* arg2) {
    gActors[actor_1].graphicIndex = D_801A3E3C_6BC82C[arg2[0]];
    gActors[actor_1].posZ.raw = (s16)arg2[4] + gActors[actor_0].posZ.raw;
    func_80033204(actor_1, actor_0, arg2[1], (s16)arg2[2], arg2[3]);
    gActors[actor_1].velocityX.raw = gActors[actor_0].velocityX.raw;
    gActors[actor_1].velocityY.raw = gActors[actor_0].velocityY.raw;
    gActors[actor_1].velocityZ.raw = gActors[actor_0].velocityZ.raw;
}

void func_8019A1F8_6B2BE8(u16 actor_index, u16* arg1) {
    u16 index;
    s16 var_v1;
    u16 graphic_index;
    s16* graphic_list;
    s16 sample_index;

    graphic_list = gActors[actor_index].graphicList;
    if ((gActors[actor_index].graphicTimer == 1) && (graphic_list != NULL) && ((var_v1 = graphic_list[0]) != 0)) {
        if (var_v1 < 0) {
            graphic_list += var_v1;
            var_v1 = *graphic_list;
        }
        graphic_index = var_v1;
    }
    else {
        graphic_index = gActors[actor_index].graphicIndex;
    }

    sample_index = *arg1++;
    for (index = 0; *arg1 != 0; index++, arg1++) {
        if (graphic_index == *arg1) {
            if (D_801A10F4_6B9AE4 == 0) {
                gActors[0x8E].flags |= ACTOR_FLAG_DRAW;
                func_8019A12C_6B2B1C(actor_index, 0x8E, D_801A39BC_6BC3AC + (sample_index + index * 10));
            }

            if (D_801A10F8_6B9AE8 == 0) {
                gActors[0x8F].flags |= ACTOR_FLAG_DRAW;
                func_8019A12C_6B2B1C(actor_index, 0x8F, D_801A39BC_6BC3AC + (sample_index + index * 10) + 5);
            }
            return;
        }
    }

    if (D_801A10F4_6B9AE4 == 0) {
        gActors[0x8E].flags &= ~ACTOR_FLAG_DRAW;
    }

    if (D_801A10F8_6B9AE8 == 0) {
        gActors[0x8F].flags &= ~ACTOR_FLAG_DRAW;
    }
}

void func_8019A3C0_6B2DB0(u16 actor_index) {
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].flags_098 = ACTOR_FLAG3_NONE;
    gActors[actor_index].health = 10;
    gActors[actor_index].grabType = GRABTYPE_19;
    Actor_SetHitboxA(actor_index, 12);
    Actor_SetHitboxB(actor_index, 11);
}

void func_8019A44C_6B2E3C(u16 arg0) {
    D_801A10F4_6B9AE4 = 0;
    gActors[0x8E].actorType = ACTORTYPE_33;
    func_8019A3C0_6B2DB0(0x8E);
    D_801A10F8_6B9AE8 = 0;
    gActors[0x8F].actorType = ACTORTYPE_33;
    func_8019A3C0_6B2DB0(0x8F);
}

void func_8019A4A0_6B2E90(u16 sfx_id, u16 actor_index) {
    Sound_StopSfx(gActors[actor_index].unk_164);
    Sound_PlaySfxAtActor2(sfx_id, actor_index);
    gActors[actor_index].unk_164 = sfx_id;
}

void func_8019A518_6B2F08(u16 arg0) {
    gCameraRot = 0;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 0x390;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 0x300;
    func_80195A08_6AE3F8();
    func_80195A34_6AE424();
    D_801A1108_6B9AF8 = FIXED_UNIT(12);
    gActors[0x34].actorType = ACTORTYPE_OVL0_PGAMMA_0;
    Actor_Initialize(0x34);
    gActors[0x34].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x34].posX.whole = 0;
    gActors[0x34].posY.whole = 64;
    gActors[0x34].velocityY.raw = D_801A1108_6B9AF8 + FIXED_UNIT(1);
    func_800282F0(0, -96);
    gMarinaAnim.anim_u32 = 5;
    gPlayerActor.velocityY.raw = D_801A1108_6B9AF8;
    D_801A1118_6B9B08 = 0;
    D_801A111C_6B9B0C = D_801A1108_6B9AF8;
    gActors[0x90].colorA = 0x80;
    gActors[0x91].colorA = 0x80;
    gActors[0x92].colorA = 0x80;
    gActors[0x93].colorA = 0x80;
}

void func_8019A628_6B3018(u16 actor_index) {
    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 912;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 768;
    gCameraRot = 0;
    if (D_800D294C != 0) {
        D_800D294C = 0;
    }
    func_80028380();
    Actor_ClearRange_30To90();
    Actor_ClearRange_10To20();
    Actor_ClearRange(0x10, 0x30);
    Actor_ClearRange(0x94, 0xC0);
    Actor_ClearRange_C0ToC7();
    func_800286C8();
    gActors[actor_index].actorType = ACTORTYPE_OVL0_PGAMMA_2;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].health = 1000;
    gActors[actor_index].var_154 = 0x3C;
    ACTOR_GFX_INIT(actor_index, D_801A381C_6BC20C);
    gActors[actor_index].unk_114 = 0.0f;
    Sound_PlaySfx(SFX_MERCO_HENSHIN2);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posZ.whole = 512;
    gLookatEyeX = 0.0f;
    gLookatEyeY = 0.0f;
    gLookatEyeZ = 496.0f;
    gLookatAtX = 0.0f;
    gLookatAtY = 84.0f;
    gLookatAtZ = -64.0f;
    gLookatUpX = 0.0f;
    gLookatUpY = 1.0f;
    gLookatUpZ = 64.0f;
    Sound_StopSfx(SFX_004C);
}

void func_8019A7F4_6B31E4(u16 actor_index, u16 actor_state) {
    s32 pad;
    gScreenPosTargetY.whole += 32;
    gActors[actor_index].velocityZ.raw += FIXED_UNIT(0.125);
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
    gActors[actor_index].posY.whole = 0x10;
    gActors[actor_index].posZ.raw = Math_ApproachS32(gActors[actor_index].posZ.raw, 0, FIXED_UNIT(8));
    if (gActors[actor_index].velocityZ.raw == FIXED_UNIT(8)) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        Actor_SetColorRgb(actor_index, 0);
        gActors[0x34].actorType = ACTORTYPE_OVL0_PGAMMA_0;
        Actor_Initialize(0x34);
        gActors[0x34].flags = ACTOR_FLAG_ACTIVE;
        gActors[0x34].state = actor_state;
        gActors[0x34].posX.whole = 0;
        gActors[0x34].posY.whole = 0;
        gActors[0x34].posZ.whole = 0;
        gActors[0x34].velocityX.raw = 0; \
        gActors[0x34].velocityY.raw = FIXED_UNIT(16); \
        gActors[0x34].velocityZ.raw = FIXED_UNIT(-0.25);
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 512;
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = 256.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 4.0f;
        gLookatUpZ = 0.0f;
        D_800BE544 = 0x8000;
        D_801A10E8_6B9AD8 = 0xFFFF;
    }
}

void func_8019A984_6B3374(u16 arg0) {
    gScreenPosTargetY.whole += 32;
    gLookatEyeZ += 1.0f;
}

void func_8019A9BC_6B33AC(u16 actor_index) {
    func_80195A08_6AE3F8();
    func_80195A34_6AE424();
    func_800282F0(0, 64);
    gMarinaAnim.anim_u32 = 5;
    gPlayerActor.iFrames = 60;
    D_801A1118_6B9B08 = 0;
    D_801A111C_6B9B0C = D_801A1108_6B9AF8;
    gLookatEyeY = 0.0f;
    gLookatAtY = 4.0f;
    gLookatEyeX = 0.0f;
    gLookatAtX = 0.0f;
    gStageState = 3;
    D_801A10DC_6B9ACC = 0;

    gActors[actor_index].state = 0x410;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_DRAW;
    gActors[actor_index].posX.whole = -64;
    gActors[actor_index].posZ.whole = 0;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityZ.raw = 0;
    gActors[actor_index].health = 768;
    gActors[actor_index].unk_114 = 15.0f;

    gActors[0x34].state = 0x400;
    gActors[0x34].posX.whole = 0;
    gActors[0x34].posY.whole = 0;
    gActors[0x34].posZ.whole = -192;
    gActors[0x34].velocityZ.raw = 0;
    gCameraRot = FIXED_UNIT(COS_MASK);
    Sound_PlaySfx(SFX_003F);
    func_8019AB1C_6B350C(actor_index);

    gActors[0x8A].state = 0;
    gActors[0x8A].colorA = 0xFF;
    gActors[0x8A].var_154 = 8;
}

void func_8019AB1C_6B350C(u16 arg0) {
    gActors[0x8A].actorType = ACTORTYPE_OVL0_PGAMMA_4;
    Actor_Initialize(0x8A);
    gActors[0x8A].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x8A].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x8A].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[0x8A].posX.whole = 0;
    gActors[0x8A].posY.whole = 0;
    gActors[0x8A].posZ.whole = 512;
    gActors[0x8A].palette_18C = D_800D8588;
    gActors[0x8A].scaleX = 20.0f;
    gActors[0x8A].scaleY = 20.0f;
}

void func_8019AB98_6B3588(u16 arg0) {
    gActors[0x8A].flags = ACTOR_FLAG_NONE;
}

void func_8019ABA8_6B3598(u16 actor_index) {
    gActors[actor_index].posX.whole = gLookatAtX;
    gActors[actor_index].posY.whole = gLookatAtY;
    gActors[actor_index].unk_188 = gLookatEyeZ - 128;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_154);
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    case 1:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, gActors[actor_index].var_154);
        break;
    }
}

void func_8019ACD8_6B36C8(u16 actor_index, u16 alpha) {
    gActors[actor_index].actorType = ACTORTYPE_OVL0_PGAMMA_8;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].graphicIndex = GINDEX_CALINA_LEG;
    gActors[actor_index].colorA = alpha;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.raw = -FIXED_UNIT(512);
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleY = 1.2f;
}

void func_8019AD78_6B3768(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_NONE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].actorType = ACTORTYPE_ZERO;
    gActors[actor_index].state = 0;
}

void func_8019ADC0_6B37B0(u16 actor_index) {
    u32 saved_flags;

    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 912;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 1024;
    D_801A1108_6B9AF8 = 0;
    func_80195A14_6AE404();
    func_80195A34_6AE424();
    if (D_800D294C != 0) {
        D_800D294C = 0;
    }
    func_800282F0(0, -8);
    gMarinaAnim.anim_u32 = 2;
    D_801A1118_6B9B08 = 0;
    D_801A111C_6B9B0C = D_801A1108_6B9AF8;
    saved_flags = gActors[actor_index].flags;
    Actor_ClearRange_10To20();
    Actor_ClearRange(0x10, 0x30);
    Actor_ClearRange(0x51, 0x90);
    Actor_ClearRange(0x96, 0xC0);
    Actor_ClearRange_C0ToC7();
    func_800286C8();
    gActors[actor_index].flags = saved_flags & ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8);

    gActors[0x34].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x34].state = 0x410;
    func_80081720(0x34, D_801A120C_6B9BFC, ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9);

    Sound_PlaySfx(SFX_CHARGE_00A6);

    func_8019AD78_6B3768(0x90);
    func_8019AD78_6B3768(0x91);
    func_8019AD78_6B3768(0x92);
    func_8019AD78_6B3768(0x93);
    func_8019ACD8_6B36C8(0x94, 0);
    func_8019ACD8_6B36C8(0x95, 0x60);
    gActors[0x94].unk_188 = -512;
    func_8019AB1C_6B350C(actor_index);
    gActors[0x8A].state = 0;
    gActors[0x8A].colorA = 0xFF;
    gActors[0x8A].var_154 = 4;
}

void func_8019AF9C_6B398C(void) {
    gCannotPause = TRUE;
    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 912;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 408;
    if (D_800D294C != 0) {
        D_800D294C = 0;
    }
    func_80028380();
    D_801A1108_6B9AF8 = 0;
    Actor_ClearRange_30To90();
    Actor_ClearRange_10To20();
    Actor_ClearRange(0x10, 0x30);
    Actor_ClearRange(0x94, 0xC0);
    Actor_ClearRange_C0ToC7();
    func_800286C8();
    D_801A10E8_6B9AD8 = 0xFFFF;
    gActors[0x10].actorType = ACTORTYPE_OVL0_PGAMMA_17;
    Actor_Initialize(0x10);
    gActors[0x10].flags = ACTOR_FLAG_ACTIVE;
    D_800D2934 = 1;
}

void func_8019B090_6B3A80(void) {
    D_800D294C = 0;
    gCameraRot = 0;
    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 912;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 408;
    Actor_ClearRange_10To20();
    Actor_ClearRange_30To90();
    Actor_ClearRange(0x10, 0x30);
    Actor_ClearRange(0x90, 0xC0);
    gActors[0x88].actorType = ACTORTYPE_OVL0_PGAMMA_2;
    Actor_Initialize(0x88);
    gActors[0x88].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8;
    gActors[0x88].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x88].state = 0x240;

    gActors[0x34].actorType = ACTORTYPE_OVL0_PGAMMA_0;
    Actor_Initialize(0x34);
    gActors[0x34].flags = ACTOR_FLAG_ACTIVE;
    gActors[0x34].state = 0x8100;
    gActors[0x34].posX.whole = 0;
    gActors[0x34].posY.whole = 0;
    gActors[0x34].posZ.whole = -504;
    D_801A1114_6B9B04 = 1;

    func_8019ACD8_6B36C8(0x94, 0x78);
    gActors[0x94].graphicIndex = GINDEX_CALINA_FOOT;
    gActors[0x94].unk_188 = 0;
    gActors[0x94].posZ.raw = -FIXED_UNIT(512) + 32;
    gActors[0x94].colorR = 0xFF;

    func_8019ACD8_6B36C8(0x95, 0);
    gActors[0x95].graphicIndex = GINDEX_CALINA_FOOT;
    gLookatEyeX = 0.0f;
    gLookatEyeY = 20.0f;
    gLookatEyeZ = 512.0f;
    gLookatAtX = 0.0f;
    gLookatAtY = 0.0f;
}

void func_8019B21C_6B3C0C(u16 actor_index) {
    D_800BE544 = 0x8000;
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole = 0x400;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole = 0x198;
    Actor_ClearRange_10To20();
    Actor_ClearRange(0x10, 0x30);
    Actor_ClearRange_30To90();
    Actor_ClearRange_90ToC0();
    Actor_ClearRange_C0ToC7();
    func_800286C8();
    gActors[actor_index].actorType = ACTORTYPE_OVL0_PGAMMA_3;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0;
    gActors[actor_index].var_0D8 = 0;
    gActors[actor_index].var_110 = 0.0f;
    gLookatEyeX = 0.0f;
    gLookatEyeY = 0.0f;
    gLookatEyeZ = 448.0f;
    gLookatAtX = 0.0f;
    gLookatAtY = 4.0f;
    gLookatAtZ = 0.0f;
    gLookatUpX = 0.0f;
    gLookatUpY = 1.0f;
    gLookatUpZ = 64.0f;
    func_8019AB1C_6B350C(actor_index);
    gActors[0x8A].actorType = ACTORTYPE_ZERO;
    gActors[0x8A].colorA = 0xFF;
    gStageState = 5;
    gCameraRot = 0;
    gCameraRotDelta = 0;
}

void func_8019B3A8_6B3D98(u16 actor_index) {
    f32 var_f0;
    s32 temp_a0;

    var_f0 = (f32) gPlayerActor.posX.raw * 0.1;
    var_f0 = FROM_FIXED(var_f0);
    if (var_f0 > 2.0f) {
        var_f0 = 2.0f;
    }
    if (var_f0 < -2.0f) {
        var_f0 = -2.0f;
    }
    gActors[actor_index].posX.raw = (f32) -gPlayerActor.posX.raw * 0.8;
    gActors[actor_index].posY.raw = (f32) -gPlayerActor.posY.raw * 0.8;
    gActors[actor_index].scaleY = 2.0f;
    if (D_801A1114_6B9B04 != 0) {
        gActors[actor_index].rotateZ -= 2.0f;
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].colorA = 0xF8;
            gActors[actor_index].unk_188 = -0x400;
            gActors[actor_index].posZ.raw = FIXED_UNIT(-512.0);
            gActors[actor_index].colorR = 0x7F;
        }
        else {
            gActors[actor_index].colorA -= 4;
            gActors[actor_index].unk_188 += 32;
            gActors[actor_index].posZ.raw += 1;
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
        }
    }
    else {
        temp_a0 = gActors[actor_index].unk_188 + 0x400;
        gActors[actor_index].rotateZ -= var_f0 * ((f32)temp_a0 / 1024);
        if (gActors[actor_index].unk_188 < -0x400) {
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].posZ.raw = FIXED_UNIT(-512.0);
        }
        else {
            gActors[actor_index].colorA = temp_a0 / 4;
            gActors[actor_index].colorR = 0x80 - (temp_a0 / 8);
            gActors[actor_index].unk_188 -= 24;
            gActors[actor_index].posZ.raw += 1;
            gActors[actor_index].scaleX = (temp_a0 / 384.0f) + 0.5;
            gActors[actor_index].scaleY = ((f32)temp_a0 / 1024) + 1.0;
        }
    }
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorB = 0;
}

void func_8019B644_6B4034(void) {
    if (gPlayerData.unk_12 == 0) {
        if (func_800486F4() == 4) {
            D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, FIXED_UNIT(6.5), FIXED_UNIT(6.5));
        }
        else if (func_800486F4() == 12) {
            D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, FIXED_UNIT(-6.5), FIXED_UNIT(6.5));
        }
    }
    else {
        if (gButtonHold & gButton_DRight) {
            D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, FIXED_UNIT(2.5), FIXED_UNIT(0.5));
        }
        else if (gButtonHold & gButton_DLeft) {
            D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, FIXED_UNIT(-2.5), FIXED_UNIT(0.5));
        }
        else {
            D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, FIXED_UNIT(0), FIXED_UNIT(0.5));
        }
    }
    gPlayerActor.velocityX.raw = D_801A1118_6B9B08;
}

void func_8019B788_6B4178(void) {
    if (gPlayerData.unk_12 == 0) {
        if (func_800486F4() == 0) {
            D_801A111C_6B9B0C = Math_ApproachS32(D_801A111C_6B9B0C, D_801A1108_6B9AF8 + FIXED_UNIT(6.5), FIXED_UNIT(6.5));
        }
        else if (func_800486F4() == 8) {
            D_801A111C_6B9B0C = Math_ApproachS32(D_801A111C_6B9B0C, D_801A1108_6B9AF8 - FIXED_UNIT(6.5), FIXED_UNIT(6.5));
        }
    }
    else {
        if (gButtonHold & gButton_DUp) {
            D_801A111C_6B9B0C = Math_ApproachS32(D_801A111C_6B9B0C, D_801A1108_6B9AF8 + FIXED_UNIT(2.5), FIXED_UNIT(0.5));
        }
        else if (gButtonHold & gButton_DDown) {
            D_801A111C_6B9B0C = Math_ApproachS32(D_801A111C_6B9B0C, D_801A1108_6B9AF8 - FIXED_UNIT(2.5), FIXED_UNIT(0.5));
        }
        else {
            D_801A111C_6B9B0C = Math_ApproachS32(D_801A111C_6B9B0C, D_801A1108_6B9AF8, FIXED_UNIT(0.5));
        }
    }
    gPlayerActor.velocityY.raw = D_801A111C_6B9B0C;
}

void func_8019B8F8_6B42E8(void) {
    u16 index;

    for (index = 1; index < 0x30; index++) {
        if ((gActors[index].flags & ACTOR_FLAG_DRAW) && (gActors[index].flags & ACTOR_FLAG_UNK19) && (gActors[index].actorType != ACTORTYPE_114)) {
            gActors[index].flags = ACTOR_FLAG_NONE;
        }
    }
}

void func_8019B968_6B4358(void) {
    s16 pad;
    s16 temp_v0;
    s16 limit_pos_x;
    s16 limit_pos_y;

    func_8019B8F8_6B42E8();
    if (gGameState == 6) {
        if (D_801A10E8_6B9AD8 == 1) {
            limit_pos_y = 56;
            limit_pos_x = 72;
        }
        else {
            limit_pos_y = 133;
            limit_pos_x = 128;
        }
        if ((gPlayerActor.flags & ACTOR_FLAG_DRAW) && !(D_800D294C & 0x8000)) {
            if (gPlayerData.marina_Flags_098 & ACTOR_FLAG3_UNK1) {
                switch (gPlayerActor.hitByType) {
                case HITTYPE_6:
                case HITTYPE_8:
                    D_800D294C = 4;
                    break;
                default:
                    D_800D294C = 3;
                    break;
                }
                gPlayerActor.posY.raw += D_801A1108_6B9AF8;
                gPlayerPosY.whole = gPlayerActor.posY.whole + gScreenPosCurrentY.whole;
            }
            else {
                if (D_801A10CC_6B9ABC < 0) {
                    func_8019B644_6B4034();
                    func_8019B788_6B4178();
                    if ((gPlayerActor.stateLower == 0x22) || (gPlayerActor.stateLower == 0x21) || (gPlayerActor.stateLower == 0x20) || (gPlayerActor.stateLower == 0x26)) {
                        gPlayerActor.velocityX.raw = 0;
                        gPlayerActor.velocityY.raw = D_801A1108_6B9AF8;
                    }
                }
                else {
                    D_801A1118_6B9B08 = Math_ApproachS32(D_801A1118_6B9B08, 0, FIXED_UNIT(0.5));
                    gPlayerActor.velocityY.raw = D_801A1108_6B9AF8;
                }
                temp_v0 = func_80197BD0_6B05C0(0, limit_pos_y);
                if ((temp_v0 > 0) && (D_801A1108_6B9AF8 < gPlayerActor.velocityY.raw)) {
                    gPlayerActor.velocityY.raw = D_801A1108_6B9AF8;
                    gPlayerPosY.whole = gPlayerActor.posY.whole + gScreenPosCurrentY.whole;
                }
                else if ((temp_v0 < 0) && (gPlayerActor.velocityY.raw < D_801A1108_6B9AF8)) {
                    gPlayerActor.velocityY.raw = D_801A1108_6B9AF8;
                    gPlayerPosY.whole = gPlayerActor.posY.whole + gScreenPosCurrentY.whole;
                }
                if ((gPlayerActor.velocityX.raw > 0) && (limit_pos_x < gPlayerActor.posX.whole)) {
                    gPlayerActor.velocityX.raw = 0;
                }
                else if ((gPlayerActor.velocityX.raw < 0) && (gPlayerActor.posX.whole < -limit_pos_x)) {
                    gPlayerActor.velocityX.raw = 0;
                }
            }
        }
        else if (D_800D294C & 0x8000) {
            gActors[0x10].posY.raw += D_801A1108_6B9AF8;
            if (limit_pos_x < gActors[0x10].posX.whole) {
                gActors[0x10].posX.whole = limit_pos_x;
                if (gActors[0x10].velocityX.raw > 0) {
                    gActors[0x10].velocityX.raw = -gActors[0x10].velocityX.raw;
                }
            }
            else if (gActors[0x10].posX.whole < -limit_pos_x) {
                gActors[0x10].posX.whole = -limit_pos_x;
                if (gActors[0x10].velocityX.raw < 0) {
                    gActors[0x10].velocityX.raw = -gActors[0x10].velocityX.raw;
                }
            }
            func_80197BD0_6B05C0(0x10, limit_pos_y);
        }
    }
}

s32 func_8019BC64_6B4654(u16 actor_index) {
    if (gActors[actor_index].posX.whole > 112) {
        gActors[actor_index].posX.whole = 112;
        return 2;
    }
    if (gActors[actor_index].posX.whole < -112) {
        gActors[actor_index].posX.whole = -112;
        return 1;
    }
    return 0;
}

void func_8019BCD4_6B46C4(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].var_154));
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].rotateZ = 0.0f - gActors[actor_index].rotateZ;
    }
}

void func_8019BD78_6B4768(u16 actor_index) {
    gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(8));
}

void func_8019BDD8_6B47C8(u16 actor_index, s32 distance) {
    s32 velocity;
    s32 angle;

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    func_8019BC64_6B4654(actor_index);
    angle = FROM_FIXED(gActors[actor_index].var_154);
    gActors[actor_index].velocityX.raw += (COS(angle) * FIXED_UNIT(0.25));
    gActors[actor_index].velocityY.raw += (SIN(angle) * FIXED_UNIT(0.25));

    velocity = COS(angle) * distance;
    if (velocity > 0) {
        if (velocity < gActors[actor_index].velocityX.raw) {
            gActors[actor_index].velocityX.raw = velocity;
        }
    }
    else if (gActors[actor_index].velocityX.raw < velocity) {
        gActors[actor_index].velocityX.raw = velocity;
    }

    velocity = SIN(angle) * distance;
    if (velocity > 0) {
        if (velocity < gActors[actor_index].velocityY.raw) {
            gActors[actor_index].velocityY.raw = velocity;
        }
    }
    else if (gActors[actor_index].velocityY.raw < velocity) {
        gActors[actor_index].velocityY.raw = velocity;
    }
    gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
}


void func_8019BFC8_6B49B8(u16 actor_index) {
    s32 angle;

    func_8019BDD8_6B47C8(actor_index, FIXED_UNIT(2.5));
    angle = (FROM_FIXED(gActors[actor_index].var_154) + 64) & 0x380;
    switch (angle) {
    case 0x100:
        gActors[actor_index].graphicIndex = GINDEX_6418;
        break;
    case 0x80:
    case 0x180:
        gActors[actor_index].graphicIndex = GINDEX_6417;
        break;
    case 0x0:
    case 0x200:
        gActors[actor_index].graphicIndex = GINDEX_6416;
        break;
    case 0x280:
    case 0x380:
        gActors[actor_index].graphicIndex = GINDEX_6415;
        break;
    case 0x300:
        gActors[actor_index].graphicIndex = GINDEX_6414;
        break;
    }

    gActors[actor_index].rotateZ = INDEX_TO_DEG((FROM_FIXED(gActors[actor_index].var_154) - COS_DEG_90) & COS_MASK);
    if ((angle > COS_DEG_90) && (angle < 3 * COS_DEG_90)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
}

s32 func_8019C1B4_6B4BA4(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].rotateZ = 0.0f;
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        D_801A1100_6B9AF0 = 0;
        if ((D_801A10F8_6B9AE8 == 0) || (D_801A10F4_6B9AE4 == 0)) {
            D_801A10FC_6B9AEC = 4;
            ACTOR_GFX_INIT(actor_index, D_801A3940_6BC330);
        }
        if (D_801A10F8_6B9AE8 == 0) {
            gActors[actor_index].state = 0x43C4;
            gPlayerActor.parentIndex = 0x8F;
            gActors[0x8F].flags_098 = gActors[actor_index].flags_098;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            func_8019A1F8_6B2BE8(actor_index, D_801A3DCC_6BC7BC);
            return 2;
        }
        if (D_801A10F4_6B9AE4 == 0) {
            gActors[actor_index].state = 0x43C8;
            gPlayerActor.parentIndex = 0x8E;
            gActors[0x8E].flags_098 = gActors[actor_index].flags_098;
            Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
            func_8019A1F8_6B2BE8(actor_index, D_801A3DF0_6BC7E0);
            return 2;
        }
        gActors[actor_index].state = 0x43C0;
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        return 2;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[actor_index].hitByType < HITTYPE_20)) {
        gActors[actor_index].state = 0x13D8;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9);
        Sound_PlaySfx(SFX_MERCO_OW);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0;
        ACTOR_GFX_INIT(actor_index, D_801A399C_6BC38C);
        gActors[actor_index].rotateZ = 0.0f;
        func_8019A1F8_6B2BE8(actor_index, D_801A3DCC_6BC7BC);
        return 1;
    }
    return 0;
}

void func_8019C418_6B4E08(u16 actor_index) {
    gActors[actor_index].state = 0x1400;
    Sound_PlaySfx(SFX_MERCO_OW);
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
    ACTOR_GFX_INIT(actor_index, D_801A399C_6BC38C);
    func_8019A1F8_6B2BE8(actor_index, D_801A3DCC_6BC7BC);
}

s32 func_8019C4B0_6B4EA0(u16 actor_index, u16 other_actor) {
    ACTOR_GFX_INIT(actor_index, D_801A3980_6BC370);
    gActors[actor_index].var_158 = FIXED_UNIT(64.0);
    D_801A10FC_6B9AEC--;
    if (D_801A10FC_6B9AEC < 0) {
        Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
        SpawnCrosshair(CROSSHAIR_ALL, other_actor);
        if (other_actor == 0x8F) {
            gActors[other_actor].actorType = ACTORTYPE_OVL0_PGAMMA_10;
            D_801A10F8_6B9AE8 = 1;
        }
        else {
            gActors[other_actor].actorType = ACTORTYPE_OVL0_PGAMMA_9;
            D_801A10F4_6B9AE4 = 1;
        }
        gActors[other_actor].state = 0;
        gActors[other_actor].flags = ACTOR_FLAG_ACTIVE;
        gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
        if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
            gPlayerActor.velocityX.raw = FIXED_UNIT(4.0);
        }
        else {
            gPlayerActor.velocityX.raw = FIXED_UNIT(-4.0);
        }
        gPlayerActor.velocityY.raw = FIXED_UNIT(4.0);
        if ((D_801A10F8_6B9AE8 != 0) && (D_801A10F4_6B9AE4 != 0)) {
            gActors[actor_index].grabType = GRABTYPE_1;
            gActors[actor_index].unk_0CE = 5;
        }
        gActors[actor_index].iFrames = 6;
    }
    return 1;
}

s32 func_8019C650_6B5040(u16 actor_0, u16 actor_1) {
    s32 var_a0;

    gActors[actor_0].var_154 = func_800298D0(gActors[actor_0].var_158, gActors[actor_0].var_154, FIXED_UNIT(32.0));
    func_8019BCD4_6B46C4(actor_0);
    gActors[actor_0].posY.raw += D_801A1108_6B9AF8;
    gActors[actor_0].velocityX.raw = Math_ApproachS32(gActors[actor_0].velocityX.raw, 0, FIXED_UNIT(0.5));
    gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, 0, FIXED_UNIT(0.5));
    var_a0 = TO_FIXED(-(Rand() & 0x1F));
    gActors[actor_0].var_158 = func_800298D0(var_a0 + FIXED_UNIT(1008.0), gActors[actor_0].var_158, FIXED_UNIT(8.0));
    func_80192E28_6AB818(actor_1);
    if (gActors[actor_1].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gActors[actor_0].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_0, D_801A3940_6BC330);
            D_801A1100_6B9AF0 = 0;
        }
        gPlayerActor.posZ.whole = gActors[actor_1].posZ.whole + 1;

        if ((gActors[actor_1].flags_098 & ACTOR_FLAG3_SHAKE) && (D_801A1100_6B9AF0 == 0)) {
            D_801A1100_6B9AF0 = 1;
            if (func_800486F4() == 0) {
                gActors[actor_0].var_158 = FIXED_UNIT(128.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(5.25);
                ACTOR_GFX_INIT(actor_0, D_801A3974_6BC364);
                Sound_PlaySfxAtActor2(SFX_004A, actor_0);
            }
            else if (func_800486F4() == 8) {
                gActors[actor_0].var_158 = FIXED_UNIT(896.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(-5.25);
                ACTOR_GFX_INIT(actor_0, D_801A3974_6BC364);
                Sound_PlaySfxAtActor2(SFX_004A, actor_0);
            }
            else if (func_800486F4() == 0xC) {
                gActors[actor_0].velocityX.raw = FIXED_UNIT(-5.25);
                if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
                    Sound_PlaySfxAtActor2(SFX_0115, actor_0);
                    return func_8019C4B0_6B4EA0(actor_0, actor_1);
                }
                Sound_PlaySfxAtActor2(SFX_004A, actor_0);
                ACTOR_GFX_INIT(actor_0, D_801A3974_6BC364);
            }
            else {
                gActors[actor_0].velocityX.raw = FIXED_UNIT(5.25);
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    Sound_PlaySfxAtActor2(SFX_0115, actor_0);
                    return func_8019C4B0_6B4EA0(actor_0, actor_1);
                }
                Sound_PlaySfxAtActor2(SFX_004A, actor_0);
                ACTOR_GFX_INIT(actor_0, D_801A3974_6BC364);
            }
        }

        if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
            if (gActors[actor_0].posX.whole < -88) {
                gActors[actor_0].posX.whole = -88;
            }
            else if (gActors[actor_0].posX.whole > 128) {
                gActors[actor_0].posX.whole = 128;
            }
        }
        else {
            if (gActors[actor_0].posX.whole < -128) {
                gActors[actor_0].posX.whole = -128;
            }
            else if (gActors[actor_0].posX.whole > 88) {
                gActors[actor_0].posX.whole = 88;
            }
        }
        return 1;
    }
    return 0;
}

void func_8019C9AC_6B539C(u16 actor_index) {
    u16 angle;
    u16 particle_actor;
    u16 saved_actor;

    if (!(gActiveFrames & 3)) {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_6028, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 8);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
            gActors[particle_actor].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_UNK15 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
            gActors[particle_actor].colorA = 0xC0;
            gActors[particle_actor].unk_164 = -12;
            Actor_SetColorRgb(particle_actor, 0x3F);
            angle = (u16)((f32) (104 - (Rand() & 0x7F)) * 1.25) & COS_MASK;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                angle = (COS_DEG_360 - angle) & COS_MASK;
            }
            gActors[particle_actor].var_158 = COS(angle) * FIXED_UNIT(8.0);
            gActors[particle_actor].var_15C = SIN(angle) * FIXED_UNIT(8.0);
            gActors[particle_actor].var_160 = TO_FIXED(angle);
            gActors[particle_actor].unk_168 = -COS(angle) * FIXED_UNIT(0.75);
            gActors[particle_actor].unk_16C = -SIN(angle) * FIXED_UNIT(0.75);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[particle_actor].var_158 = -gActors[particle_actor].var_158;
                gActors[particle_actor].var_15C = -gActors[particle_actor].var_15C;
                gActors[particle_actor].unk_168 = -gActors[particle_actor].unk_168;
                gActors[particle_actor].unk_16C = -gActors[particle_actor].unk_16C;
            }
            gActors[particle_actor].unk_130 = actor_index;
            gActors[particle_actor].unk_14C = gActors[actor_index].actorType;
            gActors[particle_actor].unk_138 = (f32) (8 - (Rand() & 0xF));
            gActors[particle_actor].unk_13C_f32 = 1.0f;
            saved_actor = particle_actor;

            particle_actor = SpawnParticle_List_90C0_16(D_801A3E58_6BC848, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
            if (particle_actor != 0) {
                gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[particle_actor].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
                gActors[particle_actor].colorA = 0xC0;
                gActors[particle_actor].unk_164 = -12;
                gActors[particle_actor].var_110 = -0.01f;
                gActors[particle_actor].unk_114 = 0.3f;
                gActors[particle_actor].unk_11C = -0.1f;
                gActors[particle_actor].unk_130 = saved_actor;
                gActors[particle_actor].unk_14C = gActors[saved_actor].actorType;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[particle_actor].var_160 = TO_FIXED(angle) + FIXED_UNIT(16.0);
                    gActors[particle_actor].var_150 = TO_FIXED(SIN(angle) * -32.0f);
                    angle = (0x3B0 - angle);
                    gActors[particle_actor].velocityX.raw = COS(angle) * FIXED_UNIT(-46.0);
                }
                else {
                    gActors[particle_actor].var_160 = TO_FIXED(angle) - FIXED_UNIT(16.0);
                    gActors[particle_actor].var_150 = TO_FIXED(SIN(angle) * -32.0f);
                    angle = (angle + 0x3B0);
                    gActors[particle_actor].velocityX.raw = COS(angle) * FIXED_UNIT(46.0);
                }
                gActors[particle_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(46.0);
                Actor_SetColorRgb(particle_actor, 0x7F);
                gActors[particle_actor].unk_13C_f32 = 1.0f;
            }
        }
    }
}

void func_8019CFD4_6B59C4(u16 actor_index, u16 sample_index) {
    u16 particle_actor = SpawnParticle_Image_90C0_16(GINDEX_6029, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 4);
    if (particle_actor != 0) {
        gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[particle_actor].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_UNK15 | ACTOR_FLAG_FREEZE_POS);
        gActors[particle_actor].scaleX = D_801A3E70_6BC860[sample_index++];
        gActors[particle_actor].colorA = 0;
        gActors[particle_actor].var_154 = 3;
        gActors[particle_actor].scaleY = gActors[particle_actor].scaleX;
        gActors[particle_actor].var_110 = D_801A3E70_6BC860[sample_index++];
        gActors[particle_actor].unk_118 = D_801A3E70_6BC860[sample_index++];
        gActors[particle_actor].unk_114 = gActors[particle_actor].var_110;
        gActors[particle_actor].unk_11C = gActors[particle_actor].unk_118;
        gActors[particle_actor].colorG = 0x20;
        gActors[particle_actor].colorB = 0x7F;
        gActors[particle_actor].unk_148 = 30.0f;
        gActors[particle_actor].unk_130 = actor_index;
        gActors[particle_actor].unk_14C = gActors[actor_index].actorType;
        gActors[particle_actor].unk_134 = 0.0f;
        gActors[particle_actor].unk_138 = 0.0f;
        gActors[particle_actor].unk_13C_f32 = FIXED_UNIT(8.0);
    }
}

void func_8019D180_6B5B70(u16 actor_index) {
    gActors[actor_index].posY.raw = gActors[0x88].posY.raw;
}

void func_8019D1BC_6B5BAC(u16 actor_index) {
    u16 particle_actor;

    if (!(gActiveFrames % 4)) {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_602F, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 4);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_actor].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_FREEZE_POS;
            gActors[particle_actor].palette_18C = D_800D1A04;
            gActors[particle_actor].colorA = 0x80;
            gActors[particle_actor].scaleX = 1.5f;
            gActors[particle_actor].scaleY = 1.5f;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[particle_actor].var_160 = FIXED_UNIT(128.0);
                gActors[particle_actor].velocityX.raw = FIXED_UNIT(8.0);
            }
            else {
                gActors[particle_actor].var_160 = FIXED_UNIT(896.0);
                gActors[particle_actor].velocityX.raw = FIXED_UNIT(-8.0);
            }
            gActors[particle_actor].posY.raw += D_801A1108_6B9AF8;
            gActors[particle_actor].colorR = 0x7F;
            gActors[particle_actor].colorG = 0x3F;
            gActors[particle_actor].var_154 = -8;
            gActors[particle_actor].pfn_17C = func_8019D180_6B5B70;
            gActors[particle_actor].var_110 = -0.05f;
            gActors[particle_actor].unk_114 = -0.05f;
        }
    }
}

void func_8019D32C_6B5D1C(u16 actor_index) {
    Sound_PlaySfxAtActor2(SFX_BOOM_0041, actor_index);
    func_8003F138(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 3);
    CameraShake(8, 20);
}

void func_8019D3B0_6B5DA0(u16 actor_index) {
    u16 wave_actor;

    CameraShake(6, 4);
    wave_actor = SpawnParticle_RingWaveRed(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    if (wave_actor != 0) {
        gActors[wave_actor].graphicFlags |= ACTOR_GFLAG_UNK8;
        gActors[wave_actor].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[wave_actor].posY.raw += D_801A1108_6B9AF8;
    }
}

void func_8019D47C_6B5E6C(u16 actor_index) {
    u16 other_actor;

    other_actor = SpawnParticle_RingWaveRed(0.75f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    if (other_actor != 0) {
        gActors[other_actor].graphicFlags |= ACTOR_GFLAG_UNK8;
        gActors[other_actor].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[other_actor].posY.raw += D_801A1108_6B9AF8;
    }
    gActors[actor_index].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9;
    gActors[actor_index].damage = 100;
    gActors[actor_index].hitType = HITTYPE_8;
    gActors[actor_index].hitFlags = HITFLAG_2;
    gActors[actor_index].hitboxAY0 = 18;  \
    gActors[actor_index].hitboxAY1 = -18;
    gActors[actor_index].hitboxAX1 = 18;  \
    gActors[actor_index].hitboxAX0 = -18;

    other_actor = 0x8B;
    gActors[other_actor].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(other_actor);
    gActors[other_actor].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    Actor_SetHitboxA(other_actor, 5);
    Actor_SetHitboxB(other_actor, 7);
    gActors[other_actor].damage = gActors[actor_index].damage;
    gActors[other_actor].hitFlags = gActors[actor_index].hitFlags;
    gActors[other_actor].hitType = gActors[actor_index].hitType;
}

void func_8019D5D4_6B5FC4(u16 actor_index) {
    s32 angle;

    angle = Math_Atan2(gPlayerActor.posX.whole - gActors[actor_index].posX.whole, gPlayerActor.posY.whole - gActors[actor_index].posY.whole);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].unk_0F8.raw = COS(angle) * FIXED_UNIT(-6.0);
        if (gActors[actor_index].unk_0F8.raw > 0) {
            gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
        }
    }
    else {
        gActors[actor_index].unk_0F8.raw = COS(angle) * FIXED_UNIT(6.0);
        if (gActors[actor_index].unk_0F8.raw < 0) {
            gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
        }
    }
    gActors[actor_index].unk_0FC.raw = SIN(angle) * FIXED_UNIT(6.0);
}

void func_8019D74C_6B613C(u16 actor_index) {
    func_8019D5D4_6B5FC4(actor_index);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
        gPlayerActor.unk_0F8.raw = gActors[actor_index].unk_0F8.raw;
        gPlayerActor.unk_0FC.raw = gActors[actor_index].unk_0FC.raw;
    }
}

void func_8019D7DC_6B61CC(u16 actor_index) {
    gActors[actor_index].unk_118 += 0.15;
}

void func_8019D830_6B6220(u16 actor_index, f32 arg1) {
    f32 magnitude;
    s32 angle;
    u16 particle_actor;

    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0x4F, 4);
    angle = FROM_FIXED(gActors[actor_index].var_154);
    particle_actor = SpawnParticle_Image_90C0_16(D_801A3E88_6BC878[gActiveFrames & 3], 0, 0, gActors[actor_index].posZ.whole + 1);
    if (particle_actor != 0) {
        gActors[particle_actor].pfn_17C = func_8019D7DC_6B61CC;
        gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[particle_actor].colorR = Rand() & 0x7F;
        gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[particle_actor].scaleX = ((f32) (Rand() & 7) * 0.04) + (arg1 * 0.7);
        gActors[particle_actor].scaleY = arg1 * 0.3;
        gActors[particle_actor].var_110 = arg1 * 3.5;
        gActors[particle_actor].unk_118 = arg1 * -1.6;
        gActors[particle_actor].var_160 = gActors[actor_index].var_154 + FIXED_UNIT(256.0);
        gActors[particle_actor].colorA = 0xC0;
        gActors[particle_actor].var_154 = -10;
        gActors[particle_actor].unk_164 = -1;
        gActors[particle_actor].unk_148 = 8.0f;

        magnitude = TO_FIXED(Rand() & 0xF) + FIXED_UNIT(40.0);
        gActors[particle_actor].posX.raw = (COS(angle) * magnitude) + gActors[actor_index].posX.raw;
        gActors[particle_actor].posY.raw = (SIN(angle) * magnitude) + gActors[actor_index].posY.raw + D_801A1108_6B9AF8;

        magnitude = FIXED_UNIT(-8.0);
        gActors[particle_actor].velocityX.raw = (COS(angle) * magnitude);
        gActors[particle_actor].velocityY.raw = (SIN(angle) * magnitude);
        gActors[particle_actor].var_158 = gActors[particle_actor].velocityX.raw / 12.0f;
        gActors[particle_actor].var_15C = gActors[particle_actor].velocityY.raw / 12.0f;
    }
}

void func_8019DBA4_6B6594(u16 actor_index) {
    s32 angle;

    func_8019D830_6B6220(actor_index, 0.6f);
    angle = FROM_FIXED(gActors[actor_index].var_154);
    gActors[0x8B].posX.raw = (COS(angle) * FIXED_UNIT(18.0)) + gActors[actor_index].posX.raw;
    gActors[0x8B].posY.raw = (SIN(angle) * FIXED_UNIT(18.0)) + gActors[actor_index].posY.raw;
    gActors[0x8B].posZ.raw = gActors[actor_index].posZ.raw + 1;
    func_8019D74C_6B613C(actor_index);
    func_8019D74C_6B613C(0x8B);
    gActors[0x8B].flags_098 = ACTOR_FLAG3_NONE;
}

void func_8019DCF4_6B66E4(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[0x35].posX.whole;
    gActors[actor_index].posY.whole = gActors[0x35].posY.whole + 48;
    gActors[actor_index].posZ.raw = gActors[0x3A].posZ.raw - FIXED_UNIT(0.0625);
}

void func_8019DD4C_6B673C(u16 actor_index) {
    s32 clamp_type;
    s32 is_flipped;
    u16 result;
    s16* screen_x = &gScreenPosCurrentX.whole;
    s16* screen_y = &gScreenPosCurrentY.whole;

    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
    if (gActors[actor_index].state && (gActors[actor_index].state >= 0x300)) {
        func_8019B968_6B4358();
        func_80197BD0_6B05C0(actor_index, 0x180);
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].state & 0x400)) {
            func_801978DC_6B02CC(actor_index);
        }
        if (gCameraRot != 0) {
            gCameraRot = Math_ApproachS32(gCameraRot, 0, FIXED_UNIT(16.0));
        }
        gActors[actor_index].unk_130 = gActors[actor_index].posX.whole + *screen_x;
        gActors[actor_index].unk_134 = gActors[actor_index].posY.whole + *screen_y;
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
    }
    if (gActors[0x34].state & 0x400) {
        gActors[0x50].flags_098 &= ~(ACTOR_FLAG3_WARPING | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_GRAB);
    }
    switch (gActors[actor_index].state) {
    case 0x0:  
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_801A37F8_6BC1E8);
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -256;
        gLookatEyeZ = 640.0f;
        gLookatEyeX = gActors[actor_index].posX.whole;
        gLookatAtX = gLookatEyeX + 2.0f;
        gLookatEyeY = gActors[actor_index].posY.whole;
        gLookatAtY = gLookatEyeY + 3.0f;
        gActors[actor_index].var_15C = 40;
        func_8019A44C_6B2E3C(actor_index);
        gCameraRot = FIXED_UNIT(256.0);
        D_801A1108_6B9AF8 = 0;
        /* fallthrough */
    case 0x1:  
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].rotateZ = 270.0f;
        func_8019A1F8_6B2BE8(actor_index, D_801A3E30_6BC820);
        gActors[actor_index].var_15C--;
        if (gActors[actor_index].var_15C == 0) {
            Sound_PlaySfx(SFX_MERCO_INTRO1);
        }
        gLookatEyeZ -= 1.0;
        if (gLookatEyeZ < 448.0f) {
            gActors[actor_index].state++;
            Sound_PlaySfx(SFX_SWISH_0098);
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            ACTOR_GFX_INIT(actor_index, D_801A380C_6BC1FC);
        }
        break;
    case 0x2:  
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].rotateZ = 270.0f;
        func_8019A1F8_6B2BE8(actor_index, D_801A3E30_6BC820);
        gLookatEyeZ -= 1.2;
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_801A381C_6BC20C);
            Sound_PlaySfx(SFX_MERCO_HENSHIN1);
        }
        break;
    case 0x3:  
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_index].rotateZ = 270.0f;
        gLookatEyeZ -= 1.3;
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_801A3844_6BC234);
            func_8019A1F8_6B2BE8(actor_index, D_801A3DB8_6BC7A8);
            Sound_PlaySfx(SFX_MERCO_YELL);
            Sound_PlaySfx(SFX_00B0);
            gActors[actor_index].velocityX.raw = FIXED_UNIT(4.0);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-4.0);
            gActors[actor_index].var_15C = 0;
            gActors[0x8A].colorA = 0x00;
        }
        else {
            func_8019A1F8_6B2BE8(actor_index, D_801A3E30_6BC820);
        }
        break;
    case 0x4:  
        gCameraRot = Math_ApproachS32(gCameraRot, 0, FIXED_UNIT(INDEX_TO_DEG(10)));
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, 360.0f, 5.0f);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
        gActors[actor_index].velocityY.raw += FIXED_UNIT(0.25);
        gActors[actor_index].var_15C++;
        gLookatEyeY -= gActors[actor_index].var_15C / 30.0f;
        gLookatAtY -= gActors[actor_index].var_15C / 40.0f;
        func_8019A1F8_6B2BE8(actor_index, D_801A3DB8_6BC7A8);
        if (gActors[actor_index].var_15C == 0x3C) {
            func_8019AB1C_6B350C(actor_index);
            gActors[0x8A].state = 1;
            gActors[0x8A].colorA = 0x00;
            gActors[0x8A].var_154 = 8;
            Sound_PlaySfx(SFX_0073);
        }
        gLookatEyeZ -= 1.5;
        if (gActors[0x8A].colorA == 0xFF) {
            gActors[actor_index].state = 0x100;
            gActors[actor_index].posY.whole = 0;
            func_8019A518_6B2F08(actor_index);
            gActors[0x8A].state = 0;
            gActors[0x8A].var_154 = 2;
            gStageState = 3;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
        }
        break;
    case 0x10: 
        gActors[actor_index].state = 0x100;
        func_8019A518_6B2F08(actor_index);
        func_8019AB1C_6B350C(actor_index);
        gActors[0x8A].state = 0;
        gActors[0x8A].colorA = 0xFF;
        gActors[0x8A].var_154 = 4;
        break;
    case 0x210:
        func_8019A628_6B3018(actor_index);
        gActors[actor_index].state = 0x211;
        break;
    case 0x211:
        func_8019A7F4_6B31E4(actor_index, 0x8004);
        break;
    case 0x212:
        func_8019A984_6B3374(actor_index);
        if (gActors[0x34].state == 0x8006) {
            func_8019A9BC_6B33AC(actor_index);
            D_801A10CC_6B9ABC = 0x50;
        }
        break;
    case 0x100:
        gActors[actor_index].state = 0x310;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].grabType = GRABTYPE_19;
        gActors[actor_index].health = 4096;
        gActors[actor_index].hitboxBY1 = -32;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].unk_114 = 30.0f;
        D_801A10C0_6B9AB0 = 0;
        D_801A10C8_6B9AB8 = 0;
        D_801A10DC_6B9ACC = 0;
        func_80195A08_6AE3F8();
        func_8019A44C_6B2E3C(actor_index);
        D_801A1114_6B9B04 = 0;
        /* fallthrough */
    case 0x310:
        gActors[actor_index].state++;
        gActors[actor_index].velocityY.raw = 0;
        ACTOR_GFX_INIT(actor_index, D_801A37F0_6BC1E0);
        gActors[actor_index].hitboxBY1 = -32;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        D_801A10CC_6B9ABC = 0x64;
        /* fallthrough */
    case 0x311:
        if (D_801A10CC_6B9ABC < 0) {
            gActors[actor_index].state = 0x318;
            Sound_PlaySfx(SFX_MERCO_TAUNT2);
            Sound_PlaySfx(SFX_0039);
            D_801A10C8_6B9AB8 = 0x41;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
            gActors[actor_index].var_154 = FIXED_UNIT(256.0);
            gActors[actor_index].var_158 = FIXED_UNIT(256.0);
        }
        gActors[actor_index].posX.whole = gActors[0x35].posX.whole;
        gActors[actor_index].posY.whole = gActors[0x35].posY.whole + 48;
        gActors[actor_index].posZ.raw = gActors[0x3A].posZ.raw - FIXED_UNIT(0.0625);
        break;
    case 0x318:
        gActors[actor_index].state++;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9);
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].hitboxBY1 = -16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        gActors[actor_index].posZ.raw = -1;
        /* fallthrough */
    case 0x319:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].var_158 = TO_FIXED(
                Math_Atan2(
                    gPlayerActor.posX.whole - gActors[actor_index].posX.whole,
                    gPlayerActor.posY.whole - gActors[actor_index].posY.whole
                )
            );
            func_8019BD78_6B4768(actor_index);
            func_8019BFC8_6B49B8(actor_index);
            func_8019A1F8_6B2BE8(actor_index, D_801A3DB8_6BC7A8);
            D_801A10C8_6B9AB8--;
            if (D_801A10C8_6B9AB8 < 0) {
                gActors[actor_index].state = 0x328;
            }
        }
        break;
    case 0x31A:
        gActors[actor_index].state++;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9);
        ACTOR_GFX_INIT(actor_index, D_801A3870_6BC260);
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].hitboxBY1 = -16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        /* fallthrough */
    case 0x31B:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(32.0));
            func_8019BCD4_6B46C4(actor_index);
            if (gPlayerActor.posY.whole < gActors[actor_index].posY.whole) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-3.0), FIXED_UNIT(0.1875));
            }
            else {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(3.0), FIXED_UNIT(0.1875));
            }
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            func_8019A1F8_6B2BE8(actor_index, D_801A3E20_6BC810);
            if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                if (gActors[actor_index].unk_130 > 1040.0f) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-3.0), FIXED_UNIT(0.25));
                }
                else {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(3.0), FIXED_UNIT(0.25));
                }
            }
            else if (gActors[actor_index].unk_130 > 784.0f) {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-3.0), FIXED_UNIT(0.25));
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(3.0), FIXED_UNIT(0.25));
            }
            D_801A10C8_6B9AB8--;
            if (D_801A10C8_6B9AB8 < 0) {
                if (D_801A10F4_6B9AE4 == 0) {
                    if (func_80029B00(0x80, 0x68, -0x68) != 0) {
                        gActors[actor_index].state = 0x330;
                    }
                    else if ((func_80029B00(0x200, 0x68, -0x68) != 0) && !(gActors[0x8D].flags & ACTOR_FLAG_ACTIVE)) {
                        gActors[actor_index].state = 0x340;
                    }
                }
                else if (func_80029B00(0x100, 0x30, -0x58) != 0) {
                    gActors[actor_index].state = 0x320;
                }
            }
        }
        break;
    case 0x340:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A38A0_6BC290);
        gActors[actor_index].var_158 = FIXED_UNIT(928.0);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].hitboxBY1 = -16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        Sound_PlaySfxAtActor2(SFX_THROW_002A, actor_index);
        gActors[0x8E].flags &= ~ACTOR_FLAG_DRAW;
        /* fallthrough */
    case 0x341:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(64.0));
            func_8019BCD4_6B46C4(actor_index);
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state++;
                func_80193668_6AC058(actor_index, Math_Atan2(gPlayerActor.posX.whole - gActors[actor_index].posX.whole, gPlayerActor.posY.whole - gActors[actor_index].posY.whole), FIXED_UNIT(4.0));
                func_8019A4A0_6B2E90(SFX_MERCO_YELL, actor_index);
                Sound_PlaySfxAtActor2(SFX_0039, actor_index);
                ACTOR_GFX_INIT(actor_index, D_801A38AC_6BC29C);
                gActors[actor_index].var_158 = 0;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(2.0);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.0);
                }
            }
        }
        break;
    case 0x342:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(64.0));
            func_8019BCD4_6B46C4(actor_index);
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0x31A;
                D_801A10C8_6B9AB8 = 0x4B;
                SpawnCrosshair(CROSSHAIR_ALL, actor_index);
            }
        }
        break;
    case 0x330:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A3884_6BC274);
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].hitboxBY1 = -16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBX1 = 16;
        gActors[actor_index].damage = 10;
        gActors[actor_index].hitType = HITTYPE_4;
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.25);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
        gActors[0x8E].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[0x8E].flags |= ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_DRAW);
        gActors[0x8E].graphicIndex = GINDEX_181C;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[0x8E].rotateZ = 270.0f;
        }
        else {
            gActors[0x8E].rotateZ = 90.0f;
        }
        Sound_PlaySfxAtActor2(SFX_008E, actor_index);
        /* fallthrough */
    case 0x331:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(64.0));
            func_8019BCD4_6B46C4(actor_index);
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state++;
                func_8019A4A0_6B2E90(SFX_MERCO_YELL, actor_index);
                ACTOR_GFX_INIT(actor_index, D_801A3894_6BC284);
                gActors[actor_index].velocityY.raw = 0;
                D_801A10C8_6B9AB8 = 0x3C;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.5);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(0.5);
                }
            }
            else {
                gActors[0x8E].posX.whole = gActors[actor_index].posX.whole;
                gActors[0x8E].posY.whole = (gActors[actor_index].posY.whole - 8);
                gActors[0x8E].posZ.whole = (gActors[actor_index].posZ.whole - 1);
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[0x8E].rotateZ += 10.0f;
                }
                else {
                    gActors[0x8E].rotateZ -= 10.0f;
                }
            }
        }
        break;
    case 0x332:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            D_801A10C8_6B9AB8--;
            if (D_801A10C8_6B9AB8 < 0) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                ACTOR_GFX_INIT(actor_index, D_801A395C_6BC34C);
                gActors[actor_index].velocityX.raw = (2.0 * (f32) gActors[actor_index].velocityX.raw);
            }
            else {
                if ((gActiveFrames % 7) == 0) {
                    Sound_PlaySfxAtActor3(SFX_006D, actor_index);
                }
                func_8019C9AC_6B539C(actor_index);
                func_801976E8_6B00D8(actor_index, 0, 0x58, 0xC, -0x10);
                if ((gActiveFrames % 3) == 0) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
                }
                else {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                }
                if (!(gActiveFrames & 7)) {
                    if (gActors[actor_index].posX.whole < gPlayerActor.posX.whole) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                    }
                    else {
                        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    }
                }
            }
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(64.0));
            func_8019BCD4_6B46C4(actor_index);
            func_8019BC64_6B4654(actor_index);
            if (gPlayerActor.posY.whole < gActors[actor_index].posY.whole) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-3.0), FIXED_UNIT(0.1875));
            }
            else {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(3.0), FIXED_UNIT(0.1875));
            }
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            func_8019A1F8_6B2BE8(actor_index, D_801A3E14_6BC804);
        }
        break;
    case 0x333:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(64.0));
            func_8019BCD4_6B46C4(actor_index);
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            func_8019A1F8_6B2BE8(actor_index, D_801A3DF0_6BC7E0);
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0x31A;
                D_801A10C8_6B9AB8 = 0x32;
                SpawnCrosshair(CROSSHAIR_ALL, actor_index);
            }
        }
        break;
    case 0x328:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A3908_6BC2F8);
        func_8019D47C_6B5E6C(actor_index);
        D_801A10C8_6B9AB8 = 0x78;
        gActors[actor_index].velocityX.raw = ((f32) -gActors[actor_index].velocityX.raw * 0.5);
        gActors[actor_index].velocityY.raw = ((f32) -gActors[actor_index].velocityY.raw * 0.5);
        func_8019A4A0_6B2E90(SFX_MERCO_YELL, actor_index);
        /* fallthrough */
    case 0x329:
        func_8019DBA4_6B6594(actor_index);
        gActors[actor_index].var_158 = TO_FIXED(Math_Atan2(gPlayerActor.posX.whole - gActors[actor_index].posX.whole, gPlayerActor.posY.whole - gActors[actor_index].posY.whole));
        if ((gActiveFrames % 7) == 0) {
            Sound_PlaySfxAtActor3(SFX_008C, actor_index);
        }
        gActors[actor_index].rotateZ = INDEX_TO_DEG((FROM_FIXED(gActors[actor_index].var_154) - COS_DEG_90) & COS_MASK);
        gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(4.0));
        func_8019BDD8_6B47C8(actor_index, FIXED_UNIT(4.5));
        func_8019A1F8_6B2BE8(actor_index, D_801A3DB8_6BC7A8);
        D_801A10C8_6B9AB8--;
        if (D_801A10C8_6B9AB8 < 0) {
            gActors[0x8B].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].state = 0x318;
            D_801A10C8_6B9AB8 = 100;
            SpawnCrosshair(CROSSHAIR_ALL, actor_index);
            gActors[actor_index].velocityX.raw = ((f32) -gActors[actor_index].velocityX.raw * 0.5);
            gActors[actor_index].velocityY.raw = ((f32) -gActors[actor_index].velocityY.raw * 0.5);
        }
        break;
    case 0x320:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        ACTOR_GFX_INIT(actor_index, D_801A38E4_6BC2D4);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
        func_8019CFD4_6B59C4(actor_index, 3);
        func_8019CFD4_6B59C4(actor_index, 0);
        gActors[actor_index].var_160 = 0;
        /* fallthrough */
    case 0x321:
        gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, 0x7F, 4);
        Actor_SetColorRgb(actor_index, gActors[actor_index].var_160);
        func_8019BD78_6B4768(actor_index);
        func_8019BCD4_6B46C4(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_801A38EC_6BC2DC);
            gActors[actor_index].var_158 = FIXED_UNIT(896.0);
            gActors[actor_index].var_160 = 0;
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.1875));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.1875));
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        func_8019BC64_6B4654(actor_index);
        break;
    case 0x322:
        func_8019D1BC_6B5BAC(actor_index);
        gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(16.0));
        func_8019BCD4_6B46C4(actor_index);
        if ((gActors[actor_index].graphicTimer == 0) && (gActors[actor_index].var_160 == 0)) {
            gActors[actor_index].var_160++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            gActors[actor_index].damage = 200;
            gActors[actor_index].hitFlags = HITFLAG_7 | HITFLAG_2;
            gActors[actor_index].hitType = HITTYPE_6;
            gActors[actor_index].hitboxAY0 = 16;
            gActors[actor_index].hitboxAY1 = -16;
            gActors[actor_index].hitboxAX0 = -16;
            gActors[actor_index].hitboxAX1 = 16;
            func_8019D3B0_6B5DA0(actor_index);
            Sound_PlaySfxAtActor2(SFX_002B, actor_index);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-16.0);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(16.0);
            }
        }
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        clamp_type = func_8019BC64_6B4654(actor_index);
        is_flipped = gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        if ((!is_flipped && (clamp_type == 2)) || (is_flipped && (clamp_type == 1))) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK9);
            gActors[actor_index].state = 0x31A;
            D_801A10C8_6B9AB8 = 0x32;
            func_8019D32C_6B5D1C(actor_index);
        }
        break;
    case 0x43C0:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A3938_6BC328);
        /* fallthrough */
    case 0x43C1:
        result = func_800291AC(
            actor_index,
            0x13D0,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW,
            0x31A,
            ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW
        );
        switch (result) {
        case 0:
            gPlayerActor.posZ.whole = gActors[actor_index].posZ.whole - 1;
            /* fallthrough */
        case 3:
            D_801A10C8_6B9AB8 = 0x1E;
            break;
        case 2:
            Sound_PlaySfxAtActor2(SFX_005F, actor_index);
            gActors[actor_index].velocityX.raw = ((f32) gActors[actor_index].velocityX.raw * 1.4);
            gActors[actor_index].velocityY.raw = ((f32) gActors[actor_index].velocityY.raw * 1.4);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            break;
        }
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        break;
    case 0x43C4:
        if (func_8019C650_6B5040(actor_index, 0x8F) == 0) {
            if (D_801A10F8_6B9AE8 != 0) {
                gActors[actor_index].state = 0x43CC;
            }
            else {
                gActors[actor_index].state = 0x318;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(3.0);
                }
                else {
                    gActors[actor_index].velocityX.raw = FIXED_UNIT(-3.0);
                }
                gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                gActors[actor_index].var_154 = FIXED_UNIT(256.0);
                gActors[actor_index].var_158 = FIXED_UNIT(256.0);
                gActors[actor_index].iFrames = 8;
            }
        }
        func_8019A1F8_6B2BE8(actor_index, D_801A3DCC_6BC7BC);
        break;
    case 0x43C8:
        if (func_8019C650_6B5040(actor_index, 0x8E) == 0) {
            if (D_801A10F4_6B9AE4 != 0) {
                gActors[actor_index].state = 0x43CC;
            }
            else {
                gActors[actor_index].state = 0x31A;
                D_801A10C8_6B9AB8 = 30;
                gActors[actor_index].iFrames = 8;
            }
        }
        func_8019A1F8_6B2BE8(actor_index, D_801A3DF0_6BC7E0);
        break;
    case 0x43CC:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A395C_6BC34C);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
        gActors[actor_index].var_154 = FIXED_UNIT(256.0);
        gActors[actor_index].var_158 = FIXED_UNIT(256.0);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(4.0);
            gActors[actor_index].posX.whole += 32;
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.0);
            gActors[actor_index].posX.whole -= 32;
        }
        /* fallthrough */
    case 0x43CD:
        if (func_8019C1B4_6B4BA4(actor_index) == 0) {
            gActors[actor_index].var_154 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].var_154, FIXED_UNIT(32.0));
            func_8019BCD4_6B46C4(actor_index);
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0x31A;
                D_801A10C8_6B9AB8 = 0x1E;
            }
            func_8019BC64_6B4654(actor_index);
            gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
            func_8019A1F8_6B2BE8(actor_index, D_801A3DCC_6BC7BC);
        }
        break;
    case 0x13D0:
        gActors[actor_index].state++;
        gActors[actor_index].iFrames = 0x1E;
        ACTOR_GFX_INIT(actor_index, D_801A399C_6BC38C);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].var_160 = FIXED_UNIT(96.0);
        gActors[actor_index].unk_164 = -gActors[actor_index].velocityX.raw / 24;
        gActors[actor_index].unk_168 = -gActors[actor_index].velocityY.raw / 24;
        /* fallthrough */
    case 0x13D1:
        gActors[actor_index].velocityX.raw += gActors[actor_index].unk_164;
        gActors[actor_index].velocityY.raw += gActors[actor_index].unk_168;
        gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, FIXED_UNIT(8.0), FIXED_UNIT(4.0));
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(1008.0), gActors[actor_index].var_160);
        func_8019BCD4_6B46C4(actor_index);
        if (gActors[actor_index].var_154 == FIXED_UNIT(1008.0)) {
            gActors[actor_index].state = 0x31A;
            Sound_PlaySfx(SFX_MERCO_TAUNT1);
            D_801A10C8_6B9AB8 = 0x1E;
        }
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        func_8019BC64_6B4654(actor_index);
        break;
    case 0x13D8:
        if (gActors[actor_index].graphicTimer == 0) {
            if (gActors[actor_index].health < 3584) {
                gActors[actor_index].state = 0x210;
            }
            else {
                gActors[actor_index].state = 0x31A;
                D_801A10C8_6B9AB8 = 30;
            }
        }
        gActors[actor_index].posY.raw += D_801A1108_6B9AF8;
        func_8019A1F8_6B2BE8(actor_index, D_801A3E20_6BC810);
        break;
    case 0x410:
        gActors[actor_index].state++;
        gActors[actor_index].velocityY.raw = 0;
        ACTOR_GFX_INIT(actor_index, D_801A3868_6BC258);
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
        /* fallthrough */
    case 0x411:
        func_8019DCF4_6B66E4(actor_index);
        if ((gActors[0x8C].flags == ACTOR_FLAG_NONE) && (((D_801A10C0_6B9AB0 == 2) && (D_801A10C4_6B9AB4 == 8)) || ((gActors[0x34].state >= 0x480) && (D_801A10C0_6B9AB0 == 1)))) {
            gActors[actor_index].state = 0x418;
        }
        break;
    case 0x418:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A38BC_6BC2AC);
        Sound_PlaySfxAtActor2(SFX_008E, actor_index);
        /* fallthrough */
    case 0x419:
        func_8019DCF4_6B66E4(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x410;
            func_80193668_6AC058(actor_index, Math_Atan2(gPlayerActor.posX.whole - gActors[actor_index].posX.whole, gPlayerActor.posY.whole - gActors[actor_index].posY.whole), FIXED_UNIT(5.5));
            ACTOR_GFX_INIT(actor_index, D_801A38D4_6BC2C4);
            func_8019A4A0_6B2E90(SFX_MERCO_YELL, actor_index);
            Sound_PlaySfxAtActor2(SFX_0039, actor_index);
        }
        break;
    case 0x480:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A3868_6BC258);
        func_8019ADC0_6B37B0(actor_index);
        D_801A10CC_6B9ABC = 60;
        /* fallthrough */
    case 0x481:
        if (D_801A10CC_6B9ABC == 0) {
            gActors[actor_index].state++;
            gMarinaAnim.anim_u32 = 5;
            Sound_PlaySfx(SFX_MERCO_TAUNT2);
        }
        /* fallthrough */
    case 0x482:
        func_8019DCF4_6B66E4(actor_index);
        break;
    case 0x1400:
        func_8019DCF4_6B66E4(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            if ((gActors[actor_index].health <= 0) || (gActors[actor_index].health & 0x8000)) {
                gActors[actor_index].state = 0x480;
            }
            else {
                gActors[actor_index].state = 0x410;
                D_801A10C8_6B9AB8 = 0x1E;
            }
        }
        break;
    case 0x240:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_801A3868_6BC258);
        func_8019DCF4_6B66E4(actor_index);
        /* fallthrough */
    case 0x241:
        func_8019224C_6AAC3C(actor_index);
        func_8019DCF4_6B66E4(actor_index);
        break;
    }
    if (D_801A10CC_6B9ABC >= 0) {
        D_801A10CC_6B9ABC--;
    }
    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
        Actor_SetColorRgb(actor_index, 0x3F);
    }
    else {
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 1);
        gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 1);
        gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 1);
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_WARPING | ACTOR_FLAG3_THROWN | ACTOR_FLAG3_GRAB);
}

void func_8019FC10_6B8600(u16 actor_index) {
    u16 other_actor;
    f32 scale;
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;

    if (!(gActiveFrames & 1)) {
        scale = 1.5 - ((f32) ((gActiveFrames / 2) & 3) / 2);
        pos_x = (gActors[actor_index].posX.whole - Rand()) + 96;
        pos_y = (gActors[actor_index].posY.whole - (Rand() & 0x7F)) + 64;
        pos_z = (gActors[actor_index].posZ.whole - (Rand() & 3)) - 8;
        other_actor = func_8003F05C(scale, pos_x, pos_y, pos_z);
        if (other_actor != 0) {
            gActors[other_actor].colorA = 0xE0;
            gActors[other_actor].velocityZ.raw = FIXED_UNIT(1.5);
        }
        other_actor = func_8003EF98(scale, pos_x, pos_y, pos_z + 1);
        if (other_actor != 0) {
            gActors[other_actor].velocityZ.raw = FIXED_UNIT(2.0);
        }
    }

    other_actor = Actor_RangeFindInactive_90ToC0();
    if (other_actor != 0) {
        gActors[other_actor].actorType = ACTORTYPE_GRAPHIC_52;
        Actor_Initialize(other_actor);
        gActors[other_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[other_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[other_actor].posX.whole = gLookatAtX;
        gActors[other_actor].posY.whole = gLookatAtY;
        gActors[other_actor].posZ.whole = gActors[actor_index].posZ.whole + 0x40;
        gActors[other_actor].graphicIndex = GINDEX_LASERA;
        gActors[other_actor].palette_18C = D_800D99A4;
        gActors[other_actor].colorA = 0x10;
        gActors[other_actor].colorG = 0x3F;
        gActors[other_actor].colorB = 0x7F;
        gActors[other_actor].scaleX = 6.0f;
        gActors[other_actor].scaleY = 6.0f;
        gActors[other_actor].unk_148 = 1.0f;
    }

    if (!(gActiveFrames & 7)) {
        CameraShake(-2 - (Rand() & 3), 0xC);
        Sound_PlaySfx2(SFX_BOOM_0093);
    }

    if (gActors[0x8A].colorA == 0) {
        gActors[0x8A].graphicFlags = ACTOR_GFLAG_NONE;
        gActors[0x8A].flags &= ~ACTOR_FLAG_DRAW;
    }
    else {
        gActors[0x8A].colorA = Math_ApproachS32(gActors[0x8A].colorA, 0, 8);
    }
}

void func_8019FF64_6B8954(u16 actor_index) {
    gCannotPause = TRUE;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_801A39B4_6BC3A4);
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].var_154 = FIXED_UNIT(32.0);
        gActors[actor_index].posX.whole = 64;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 256;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-4.0);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.25);
        gLetterboxMode = 0;
        /* fallthrough */
    case 1:
        func_8019FC10_6B8600(actor_index);
        gActors[actor_index].var_154 -= FIXED_UNIT(0.25);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 240;
        }
        break;
    case 2:
        func_8019FC10_6B8600(actor_index);
        gActors[actor_index].var_154 -= FIXED_UNIT(0.25);
        if (gActors[actor_index].var_150 < 0) {
            gActors[0x8A].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            gActors[0x8A].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[0x8A].colorA = Math_ApproachS32(gActors[0x8A].colorA, 0xFF, 0x11);
            if (gActors[0x8A].colorA == 0xFF) {
                gActors[actor_index].state++;
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityZ.raw = 0;
                gActors[actor_index].posX.whole = 0;
                gActors[actor_index].posY.whole = 0;
                gActors[actor_index].posZ.whole = 0;
                gActors[actor_index].var_150 = 30;
            }
        }
        else {
            gActors[actor_index].var_150--;
        }
        break;
    case 3:
        gActors[actor_index].var_154 -= FIXED_UNIT(0.25);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gStageState++;
            Actor_Initialize(actor_index);
            gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
            gActors[actor_index].state = 4;
            func_800282F0(0, 512);
            gMarinaAnim.anim_u32 = 2;
        }
        break;
    case 4:
        // `gPlayerActor` does not match without `gScreenPosCurrentX.parts[0]`
        gPlayerPosX.whole = gScreenPosCurrentX.whole + gActors->posX.whole;
        gActors[actor_index].var_150++;
        if ((gActors[actor_index].var_150 == 256) && (SpawnNoHitGem(actor_index) != 0)) {
            gActors[actor_index].var_150 = 512;
            gNoHit = -1;
        }
        if ((gActors[actor_index].var_150 == 320) || (gActors[actor_index].var_150 == 752)) {
            gStageState++;
        }
        gActors[0x8A].colorA = Math_ApproachS32(gActors[0x8A].colorA, 0, 1);
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].var_154 = 0;
        break;
    }

    gLookatEyeX = gActors[actor_index].posX.whole + FROM_FIXED(gActors[actor_index].var_154);
    gLookatAtX = gLookatEyeX;
    gLookatEyeY = gActors[actor_index].posY.whole;
    gLookatAtY = gLookatEyeY + 4.0f;
    gActors[0x8A].posX.whole = gLookatEyeX;
    gActors[0x8A].posY.whole = gLookatAtY;
    gActors[0x8A].posZ.whole = 512;
    gActors[0x8A].unk_188 = gLookatEyeZ - 128.0f;
}

void func_801A0344_6B8D34(u16 arg0) {
}

void func_801A034C_6B8D3C(u16 arg0) {
}

void func_801A0354_6B8D44(u16 arg0) {
    u16 actor_index = 0x30;
    gActors[actor_index].actorType = ACTORTYPE_OVL0_PGAMMA_18;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = GINDEX_MISSLE;
    gActors[actor_index].scaleX = 2.0f;
    gActors[actor_index].scaleY = 2.0f;
    gActors[actor_index].rotateZ = 270.0f;
}

void func_801A03CC_6B8DBC(u16 actor_index) {
    gActors[actor_index].var_110 = FIXED_UNIT(0.5);
    func_8008DF20(actor_index);
    if (gActors[actor_index].state == 0x10) {
        gActors[actor_index].state = 0x50;
        gActors[actor_index].palette_18C = D_800D475C;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_118 = 1.0f;
        D_800BE544 = actor_index;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 16;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(16);
        gActors[actor_index].rotateZ = 90.0f;
        gCameraRot = FIXED_UNIT(768.0);
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = 0x64;
        gLookatEyeX = gActors[actor_index].posX.whole - 16;
        gLookatEyeY = gActors[actor_index].posY.whole - 32;
        gLookatEyeZ = gActors[actor_index].posZ.whole + 320;
        func_801A0354_6B8D44(actor_index);
        gActors[0x90].colorA = 0x80;
        gActors[0x91].colorA = 0x80;
        gActors[0x92].colorA = 0x80;
        gActors[0x93].colorA = 0x80;
        Sound_StartFade(0x81, 0x78);
        Sound_PlaySfx(SFX_MARINA_YELL4);
        Sound_PlaySfx(SFX_BOOM_0026);
        Sound_PlaySfx(SFX_0126);
    }

    switch (gActors[actor_index].var_160) {
    case 0:
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, 70.0f, 3.0f);
        gActors[actor_index].rotateZ += 4 - (Rand() & 7);
        if (gActors[actor_index].unk_164 < 0) {
            if (gButtonPress & gButton_B) {
                gActors[actor_index].var_160 += 1;
                gActors[0x30].state++;
                gActors[0x30].velocityY.raw = FIXED_UNIT(20.0);
                gActors[0x30].rotateZ -= 40.0f;
                gActors[actor_index].palette_18C = D_800D4900;
                gActors[actor_index].unk_118 = 1.0f;
                Sound_PlaySfx(SFX_MARINA_YELL3);
                Sound_PlaySfx(SFX_007A);
                Sound_StopSfx(SFX_0126);
            }
        }
        else {
            gActors[actor_index].unk_164--;
        }
        break;
    case 1:
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, 120.0f, 4.0f);
        break;
    }
    gLookatAtX = gLookatEyeX;
    gLookatAtY = gLookatEyeY;
}

void func_801A0680_6B9070(u16 actor_index) {
    u16 particle_actor;
    s32 angle;
    s32 pos_x;
    s32 pos_y;

    angle = DEG_TO_INDEX(gActors[actor_index].rotateZ);
    pos_x = (COS(angle) * 14.0f * gActors[actor_index].scaleX) + gActors[actor_index].posX.whole;
    pos_y = (SIN(angle) * 14.0f * gActors[actor_index].scaleX) + gActors[actor_index].posY.whole;

    if (gActiveFrames & 1) {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_BLASTB, pos_x, pos_y, gActors[actor_index].posZ.whole - 1);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[particle_actor].colorA = 0xC0;
            gActors[particle_actor].var_154 = -64;
            gActors[particle_actor].palette_18C = PALETTE_8022D4E8;
            gActors[particle_actor].scaleX = 0.8f;
            gActors[particle_actor].scaleY = 0.8f;
            gActors[particle_actor].var_110 = -0.4f;
            gActors[particle_actor].unk_114 = -0.4f;
            Actor_SetColorRgb(particle_actor, 0x2F);
            gActors[particle_actor].unk_148 = 1.0f;
        }
    }
    else {
        particle_actor = SpawnParticle_Image_90C0_16(GINDEX_STAREFFECT, pos_x, pos_y, gActors[actor_index].posZ.whole - 1);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_actor].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[particle_actor].colorA = 0xC0;
            gActors[particle_actor].scaleX = 2.3f;
            gActors[particle_actor].scaleY = 0.3f;
            Actor_SetColorRgb(particle_actor, 0x7F);
            gActors[particle_actor].var_160 = Rand() * FIXED_UNIT(3.0);
            gActors[particle_actor].unk_148 = 0.0f;
        }
    }

    if ((gActiveFrames % 3) == 0) {
        particle_actor = func_8003EDF4(3.0f, (8 - (Rand() & 0xF)) + pos_x, (8 - (Rand() & 0xF)) + pos_y, gActors[actor_index].posZ.whole - 1);
        if (particle_actor != 0) {
            gActors[particle_actor].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[particle_actor].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[particle_actor].colorR = 0x48;
            gActors[particle_actor].colorG = 0x58;
            gActors[particle_actor].colorB = 0x6F;
            gActors[particle_actor].velocityX.raw = COS(angle) * FIXED_UNIT(16.0);
            gActors[particle_actor].velocityY.raw = SIN(angle) * FIXED_UNIT(16.0);
            gActors[particle_actor].var_154 = -0x18;
            gActors[particle_actor].var_110 = -0.1f;
            gActors[particle_actor].unk_114 = -0.1f;
            gActors[particle_actor].pfn_17C = func_80194FE0_6AD9D0;
        }
    }
}

void func_801A0AA4_6B9494(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].posX.whole = (gActors[0x10].posX.whole - (Rand() & 3)) - 24;
        gActors[actor_index].posY.whole = gActors[0x10].posY.whole - 24;
        gActors[actor_index].posZ.whole = gActors[0x10].posZ.whole - 1;
        break;
    case 0x1000:
        break;
    case 0x1:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.125);
        gActors[actor_index].rotateZ = (u16)(gActors[actor_index].rotateZ + 10.0f) % 360;
        if (gActors[actor_index].rotateZ == 90.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-6);
            gActors[actor_index].var_150 = 0x78;
        }
        break;
    case 0x2:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            func_8019B090_6B3A80();
            return;
        }
        break;
    }
    func_801A0680_6B9070(actor_index);
}

void func_801A0C90_6B9680(u16 actor_index) {
    if (gButtonPress & gButton_CDown) {
        func_801979E8_6B03D8(actor_index, 0);
        func_80081478(actor_index, D_801A120C_6B9BFC, 1);
        func_80081790(actor_index, &D_801A3094_6BBA84);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
    }
}

void func_801A0D04_6B96F4(u16 actor_index) {
    if (gButtonPress & gButton_CDown) {
        func_801979E8_6B03D8(actor_index, 1);
        func_80081478(actor_index, D_801A120C_6B9BFC, 0x30);
        func_80081790(actor_index, &D_801A3094_6BBA84);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
    }
}

void func_801A0D78_6B9768(u16 actor_index) {
    if (gButtonPress & gButton_CDown) {
        func_801979E8_6B03D8(actor_index, 2);
        func_80081478(actor_index, D_801A120C_6B9BFC, 0x10);
        func_80081790(actor_index, &D_801A3094_6BBA84);
        func_800819A8(actor_index, D_801A120C_6B9BFC);
    }
}

void func_801A0DEC_6B97DC(u16 marina_actor, u16 other_actor) {
    s32 button_mask;
    s32 unused;
    gActors[marina_actor].unk_12E_u8 |= 0x80;
    if (!(gActors[other_actor].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[marina_actor].flags |= ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[marina_actor].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    if (gActors[marina_actor].stateUpper == 0) {
        gActors[marina_actor].unk_140_s16[1] = 4;
        gActors[marina_actor].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[marina_actor].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[marina_actor].flags |= ACTOR_FLAG_UNK17;
        gActors[marina_actor].stateUpper = 1;
    }
    if ((gActors[marina_actor].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(marina_actor) != 0)) {
        gActors[marina_actor].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[marina_actor].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        if (gActors[marina_actor].flags_098 & ACTOR_FLAG3_UNK5) {
            func_8005D370(marina_actor, 0x3C);
        }
        else {
            func_8005D370(marina_actor, 0x3F);
        }
    }
    if (func_8004F2B0(marina_actor) != 0) {
        button_mask = D_801370CC & (gButton_DUp | gButton_DDown | gButton_DLeft | gButton_DRight);
        if (button_mask == 0) {
            Marina_DropActor(marina_actor, other_actor);
            gActors[marina_actor].unk_12F_u8 = 0;
            gActors[marina_actor].state = 0x16;
            return;
        }
        if (gButton_DUp & button_mask) {
            gPlayerData.unk_10 = 0;
        }
        if (gButton_DDown & button_mask) {
            gPlayerData.unk_10 = 8;
        }
        if (gButton_DRight & button_mask) {
            gPlayerData.unk_10 = 4;
            if (gButton_DUp & button_mask) {
                gPlayerData.unk_10 = 2;
            }
            if (gButton_DDown & button_mask) {
                gPlayerData.unk_10 = 6;
            }
        }
        if (gButton_DLeft & button_mask) {
            gPlayerData.unk_10 = 0xC;
            if (gButton_DUp & button_mask) {
                gPlayerData.unk_10 = 0xE;
            }
            if (gButton_DDown & button_mask) {
                gPlayerData.unk_10 = 0xA;
            }
        }
        gPlayerData.unk_11 = 0xC;
        gPlayerData.unk_0C[1] = 0x64;
        gPlayerData.unk_12 = 0;
    }
    gActors[marina_actor].unk_140_u8[0] = 4;
    func_80052A6C(marina_actor, other_actor);
    func_800536CC(marina_actor, other_actor);
    if (func_80048F70(marina_actor)) {
        Marina_DropActor(marina_actor, other_actor);
        gActors[marina_actor].state = 0x14;
        gActors[marina_actor].stateUpper = 0xA;
    }
}
