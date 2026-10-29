#include "common.h"
#include "actor.h"
#include "80D90.h"
#include "28EF0.h"
#include "42E90.h"
#include "74A50.h"
#include "music.h"
#include "SFX.h"

// "Overlay 1" code used in most scenes.

extern u16* D_800D1918[];
extern u16* D_800D1938[];
extern s16 D_800E16B8[];
extern s16 D_801A47C8_73B528[];
extern s16 D_801A4824_73B584[];
extern s16 D_801A482C_73B58C[];
extern s16* D_801A4840_73B5A0[];
extern s16 D_801A4868_73B5C8[];
extern s16 D_801A48BC_73B61C[];
extern s16 D_801A494C_73B6AC[];
extern s16 D_801A4958_73B6B8[];
extern s16 D_801A4FAC_73BD0C[];
extern s16 D_801A5028_73BD88[];
extern s16 D_801A5038_73BD98[];
extern s16 D_801A5054_73BDB4[];
extern s16 D_801A506C_73BDCC[];
extern s16 D_801A5094_73BDF4[];
extern s16 D_801A50BC_73BE1C[];
extern s16 D_801A50E0_73BE40[];
extern s16 D_801A50F4_73BE54[];
extern s16 D_801A5110_73BE70[];
extern s16 D_801A5120_73BE80[];
extern s16 D_801A5130_73BE90[];
extern s16 D_801A5140_73BEA0[];
extern s16 D_801A515C_73BEBC[];
extern s16 D_801A5178_73BED8[];
extern s16 D_801A518C_73BEEC[];
extern s16 D_801A519C_73BEFC[];
extern s16 D_801A51B0_73BF10[];
extern s16 D_801A51C4_73BF24[];
extern s16 D_801A51D8_73BF38[];
extern s16 D_801A5200_73BF60[];
extern s16 D_801A5280_73BFE0[];
extern s16 D_801A54B4_73C214[];
extern u32 D_801A54C4_73C224[];
extern u16* D_801A54FC_73C25C[];
extern u16 D_801A551C_73C27C[];
extern s16 D_801A5534_73C294[];
extern s16 D_801A5558_73C2B8[];
extern s16 D_801A577C_73C4DC[];
extern s16 D_801A57CC_73C52C[];
extern s16 D_801A57E8_73C548[];
extern s16 D_801A5804_73C564[];
extern s16 D_801A5820_73C580[];
extern s16 D_801A583C_73C59C[];
extern s16 D_801A5858_73C5B8[];
extern s16 D_801A5868_73C5C8[];
extern s16 D_801A5884_73C5E4[];
extern s16 D_801A58A0_73C600[];
extern s16 D_801A58C4_73C624[];
extern s16 D_801A58D4_73C634[];
extern s16 D_801A58F0_73C650[];
extern s16 D_801A590C_73C66C[];
extern s16 D_801A591C_73C67C[];
extern s16 D_801A5948_73C6A8[];
extern s16 D_801A5A70_73C7D0[];
extern s16 D_801A5AAC_73C80C[];
extern s16 D_801A5AC0_73C820[];
extern s16 D_801A5AD8_73C838[];
extern s16 D_801A5AEC_73C84C[];
extern s16 D_801A5B00_73C860[];
extern u16 D_801A5B5C_73C8BC[];
extern u16 D_801A5B68_73C8C8[];
extern u16 D_801A5B78_73C8D8[];
extern u16 D_801A5B88_73C8E8[];
extern u16 D_801A5B9C_73C8FC[];
extern f64 D_801A5BB0_73C910;
extern f64 D_801A5BB8_73C918;
extern f64 D_801A5BC0_73C920;
extern f64 D_801A5BC8_73C928;
extern f64 D_801A5BD0_73C930;
extern f32 D_801A5BD8_73C938;
extern f32 D_801A5BDC_73C93C;


void Actor_SetHitboxA(u16 actor_index, s16 val);
void func_8002CCD0(u16 actor_index, s16 pos_x, s16 pos_y, u16 arg3);
// BUG: inconsistent prototype!
u16 func_800327B4(u16 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, u16 grab_type, u16 actor_0DF, s16 arg7, s16 arg8, s16 arg9, s16 arg10, s16 arg11, s16 arg12, s32 arg13);
s32 func_8019B5A8_732308(u16 actor_index);
s32 func_8019B764_7324C4(u16 actor_index, u16 arg1);
void func_8019C80C_73356C(u16 actor_index);
s32 func_8019F00C_735D6C(u16 actor_index);
void func_8019FCF0_736A50(u16 actor_index);
void func_801A1440_7381A0(u16 actor_index);
void func_801A1560_7382C0(u16 actor_index);
void func_801A1848_7385A8(u16 actor_index);
void func_801A1D4C_738AAC(u16);
void func_801A1E74_738BD4(u16 actor_index);
void func_801A2290_738FF0(u16 actor_index);


void func_8019B100_731E60(s32 arg0) {
}

void func_8019B108_731E68(u16 actor_index, u16 arg1) {
    if (((u16)gActors[actor_index].var_110 & 0x7000) == 0x7000) {
        arg1++;
    }

    gActors[actor_index + 14].graphicList = D_801A4840_73B5A0[arg1];
    gActors[actor_index + 14].graphicTimer = 1;
}

void func_8019B21C_731F7C(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0x1C;
    gActors[actor_index].hitboxBY1 = -4;
    gActors[actor_index].hitboxBX0 = -0xC;
    gActors[actor_index].hitboxBX1 = 0xC;
}

void func_8019B270_731FD0(u16 actor_index) {
    gActors[actor_index].flags |= 0x2400;
    gActors[actor_index].hitFlags = HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_6;
    gActors[actor_index].hitboxBY0 = 0x10;
    gActors[actor_index].hitboxBY1 = -0x10;
    gActors[actor_index].hitboxBX0 = -0x14;
    gActors[actor_index].hitboxBX1 = 0x14;
    gActors[actor_index].hitboxAY0 = 0x16;
    gActors[actor_index].hitboxAY1 = -0x16;
    gActors[actor_index].hitboxAX0 = -0x1A;
    gActors[actor_index].hitboxAX1 = 0x1A;
}

void func_8019B300_732060(u16 actor_index, u16 arg1) {
    func_8002CCD0(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 3);
}

void func_8019B360_7320C0(u16 actor_index) {
    s32 temp_s1;
    s32 sp30;
    s32 sp2C;
    s32 temp_v0;

    Sound_PlaySfxAtActor2(SFX_0037, actor_index);
    temp_v0 = gActors[actor_index].graphicFlags;
    temp_s1 = actor_index;
    if (temp_v0 & ACTOR_GFLAG_PALETTE) {
        sp30 = gActors[temp_s1 + 1].unk_18C;
        sp2C = gActors[temp_s1 + 14].unk_18C;
    }
    else {
        sp30 = 0;
    }

    gActors[actor_index].graphicFlags = temp_v0 & ~ACTOR_GFLAG_PALETTE;
    func_8008105C(actor_index, D_801A4958_73B6B8, D_801A494C_73B6AC);
    gActors[actor_index].unk_178 = (s32)D_801A5028_73BD88;
    func_80081790(actor_index, D_801A51D8_73BF38);
    func_800819A8(actor_index, D_801A4958_73B6B8);
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
    gActors[actor_index].state = 0x2000;
    gActors[actor_index].unk_0CE = 10;
    gActors[actor_index].unk_0DF = 0;
    func_8019B21C_731F7C(actor_index);
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
    CameraShake(-8, 15);

    gActors[temp_s1 + 1].health = 100;
    gActors[temp_s1 + 1].damage = 50;
    func_8019B270_731FD0(temp_s1 + 1);
    func_8019B300_732060(actor_index, temp_s1 + 3);
    func_8019B300_732060(actor_index, temp_s1 + 5);
    func_8019B300_732060(actor_index, temp_s1 + 7);
    func_8019B300_732060(actor_index, temp_s1 + 9);
    func_8019B300_732060(actor_index, temp_s1 + 11);
    func_8019B300_732060(actor_index, temp_s1 + 13);
    func_8019B108_731E68(actor_index, 0);

    if (sp30) {
        gActors[temp_s1 + 1].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[temp_s1 + 1].unk_18C = sp30;
        gActors[temp_s1 + 14].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[temp_s1 + 14].unk_18C = sp2C;
    }
}

s32 func_8019B5A8_732308(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].state & 0x1000)) {
        gActors[actor_index].state = 0x1000;
        gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_PLATFORM0);
        func_80029134(actor_index);
        gActors[actor_index + 2].unk_190 = 0;
        gActors[actor_index + 1].var_110 = 7.0f;
        func_80081790(actor_index, D_801A5140_73BEA0);
        Sound_PlaySfxAtActor2(SFX_GRAB_002F, actor_index);
        return 1;
    }

    return 0;
}

s32 func_8019B68C_7323EC(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].state & 0x1000)) {
        gActors[actor_index].state = 0x3000;
        gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_PLATFORM0);
        func_80029134(actor_index);
        return 1;
    }

    return 0;
}

void func_8019B738_732498(u16 actor_index) {
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(32.0/256));
}

s32 func_8019B764_7324C4(u16 actor_index, u16 arg1) {
    u16 var_a0;

    if (gActors[actor_index + 1].health < 0x100) {
        var_a0 = actor_index;
        func_8019B360_7320C0(var_a0);
        gActors[actor_index + 1].health = 0;
        return 3;
    }

    if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK1) && !(gActors[actor_index].state & 0x9800) && gActors[actor_index + 1].hitByType != HITTYPE_21 && gActors[actor_index + 1].hitByType != HITTYPE_22 && gActors[actor_index + 1].hitByType != HITTYPE_23) {
        if (arg1) {
            gActors[actor_index].state = 0x810;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK7;
            gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_0F8.raw / 2;
            gActors[actor_index].velocityY.raw = gActors[actor_index + 1].unk_0FC.raw / 2;
            return 2;
        }
        else {
            gActors[actor_index].state = 0x800;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK7;
            gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_0F8.raw / 4;
            gActors[actor_index].velocityY.raw = gActors[actor_index + 1].unk_0FC.raw / 2;
            return 1;
        }
    }

    return 0;
}

s32 func_8019B930_732690(u16 actor_index) {
    if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK1) && !(gActors[actor_index].state & 0x9800) && gActors[actor_index + 1].hitByType != HITTYPE_23) {
        gActors[actor_index].state = 0x2010;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index + 1].unk_0F8.raw * 0.75;
        gActors[actor_index].velocityY.raw = (f32)gActors[actor_index + 1].unk_0FC.raw * 0.75;
        return 1;
    }

    return 0;
}

void func_8019BA78_7327D8(u16 actor_index) {
    if (gActors[actor_index + 1].flags & ACTOR_FLAG_UNK7) {
        gActors[actor_index + 1].health -= 0x100;
        if (gActors[actor_index + 1].health < 0) {
            gActors[actor_index + 1].health = 0;
        }

        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK7;
    }
}

s32 func_8019BAF4_732854(u16 actor_index, u16 arg1) {
    if (func_8019B5A8_732308(actor_index)) {
        return 1;
    }

    func_8019B764_7324C4(actor_index, arg1);
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.0625));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }

    if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK0)
        || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))
        || (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * D_801A5BB0_73C910;
        gActors[actor_index].velocityY.raw /= 2;
        func_8019BA78_7327D8(actor_index);
    }

    if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].velocityY.raw = 0;
        func_8019BA78_7327D8(actor_index);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && gActors[actor_index].velocityY.raw < 0) {
        gActors[actor_index].unk_170 = 0;
        CameraShake(-6, 10);
        func_8019BA78_7327D8(actor_index);
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * D_801A5BB8_73C918;
        if (arg1 == 2) {
            gActors[actor_index].state = 0x810;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            Sound_PlaySfxAtActor2(SFX_0069, actor_index);
            return 2;
        }

        if (arg1 == 0) {
            gActors[actor_index].velocityY.raw = 0;
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-4)) {
            gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * D_801A5BC0_73C920;
        }
        else {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_170 = 0;
            return 2;
        }
    }

    return 0;
}

s32 func_8019BDF4_732B54(u16 actor_index) {
    if (func_8019B68C_7323EC(actor_index)) {
        return 1;
    }

    func_8019B930_732690(actor_index);
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.046875));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK0)
        || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))
        || (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * D_801A5BC8_73C928;
        gActors[actor_index].velocityY.raw /= 2;
        func_8019BA78_7327D8(actor_index);
    }

    if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = 0;
        func_8019BA78_7327D8(actor_index);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && gActors[actor_index].velocityY.raw < 0) {
        func_8019BA78_7327D8(actor_index);
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.5;
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.5)) {
            gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * D_801A5BD0_73C930;
        }
        else {
            gActors[actor_index].state = 0x2000;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = 0;
            return 2;
        }
    }

    return 0;
}

void func_8019C0A0_732E00(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0x28;
    gActors[actor_index].hitboxBX0 = -0x10;
    gActors[actor_index].hitboxBX1 = 0x10;
}

void func_8019C0F4_732E54(u16 actor_index) {
    u16 new_actor_index;
    f32 var_f0[2];

    new_actor_index = SpawnParticle_List_90C0_16(D_800E16B8, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 12, gActors[actor_index].posZ.whole + 4);
    if (new_actor_index) {
        var_f0[0] = 2.0f;
        var_f0[1] = D_801A5BD8_73C938;
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].colorA = 160;
        gActors[new_actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[new_actor_index].scaleX = var_f0[0];
        gActors[new_actor_index].scaleY = var_f0[0];
        gActors[new_actor_index].var_110 = var_f0[1];
        gActors[new_actor_index].unk_114 = var_f0[1];
    }
}

void func_8019C1C4_732F24(u16 actor_index) {
    gActors[actor_index].hitType = HITTYPE_8;\
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4.5);\
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4);
    gActors[actor_index].damage = 20;\
    Actor_SetHitboxA(actor_index, 12);
}

void func_8019C23C_732F9C(u16 actor_index) {
    u16 var_v1;
    s32 var_a3;
    u16** temp_v1;

    var_v1 = gActors[actor_index].var_110;
    var_a3 = var_v1 & 0x300;
    if (var_a3) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    }

    func_8008105C(actor_index, D_801A48BC_73B61C, D_801A4868_73B5C8);
    gActors[actor_index].unk_178 = (s32)D_801A4FAC_73BD0C;
    func_80081790(actor_index, D_801A5038_73BD98);
    func_800819A8(actor_index, D_801A48BC_73B61C);
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_0CE = 10;
    gActors[actor_index].unk_0DF = ACTOR0DF_6;
    func_8019C0A0_732E00(actor_index);
    gActors[actor_index + 1].health = 0x400;
    gActors[actor_index + 1].damage = 100;
    func_8019B270_731FD0(actor_index + 1);
    func_8019C1C4_732F24(actor_index + 5);
    func_8019C1C4_732F24(actor_index + 11);

    if (var_a3) {
        temp_v1 = &D_800D1918[(u16)(var_a3 / 256)];
        gActors[actor_index + 5].palette_18C = temp_v1[0];
        gActors[actor_index + 7].palette_18C = temp_v1[0];
        gActors[actor_index + 11].palette_18C = temp_v1[0];
        gActors[actor_index + 13].palette_18C = temp_v1[0];
        gActors[actor_index + 1].palette_18C = temp_v1[4];
    }

    gActors[actor_index + 3].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 9].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 15].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    func_8019B108_731E68(actor_index, 0);
    var_a3 = var_v1 & 0x7000;
    if (var_a3 && var_a3 != 0x7000) {
        gActors[(u16)(actor_index + 14)].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[(u16)(actor_index + 14)].palette_18C = D_800D1938[var_a3 / 4096];
    }

    gActors[actor_index + 2].unk_11C = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index + 2].unk_120 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
}

void func_8019C544_7332A4(u16 actor_index) {
    Actor* actor;
    s32 var_v0;
    u16 var_t6;

    actor = &gActors[actor_index];
    if (actor->state != 0) {
        var_t6 = actor_index;
        gActors[actor_index + 2].unk_114 = actor->posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index + 2].unk_118 = actor->posY.whole + gScreenPosCurrentY.whole;
        func_8002877C(actor_index);
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        var_v0 = actor->unk_178;
        actor->posZ.raw = (var_t6 << 4) - FIXED_UNIT(2);
        if (var_v0 == (s32)D_801A5028_73BD88) {
            if (!(actor->state & 0x8000)) {
                func_800819A8(actor_index, D_801A4958_73B6B8);
                if (gActors[actor_index + 1].health <= 0) {
                    actor->state = 0x8000;
                    gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                }
            }
        }
        else {
            func_800819A8(actor_index, D_801A48BC_73B61C);
        }

        gActors[actor_index + 1].unk_12C = (f32)actor->unk_168 / D_801A5BDC_73C93C;
    }
}

void func_8019C6B4_733414(u16 actor_index) {
    if (!(gActors[actor_index].state & 0x8000)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index + 1].unk_130 = -1.0f;
            gActors[actor_index].unk_138 = 1.0f;
        }
        else {
            gActors[actor_index + 1].unk_130 = 1.0f;
            gActors[actor_index].unk_138 = 0.0f;
        }
    }
}

void func_8019C778_7334D8(u16 actor_index) {
    if (!func_8019B5A8_732308(actor_index) && !func_8019B764_7324C4(actor_index, 0)) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state = 0x50;
        }
        else {
            func_8019B738_732498(actor_index);
        }
    }
}

void func_8019C80C_73356C(u16 actor_index) {
    s32 var_v0;

    func_8019C544_7332A4(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_8019C23C_732F9C(actor_index);
        gActors[actor_index].state = 0x10;
        break;

    case 0x10:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A5038_73BD98);

        gActors[actor_index + 1].flags |= ACTOR_FLAG_PLATFORM0;

    case 0x11:
        func_8019C778_7334D8(actor_index);
        break;

    case 0x74:
        gActors[actor_index].state += 1;

        func_80081790(actor_index, D_801A5038_73BD98);

    case 0x75:
        gActors[actor_index + 1].var_110 -= 1.0f;
        if (gActors[actor_index + 1].var_110 < 0.0f) {
            gActors[actor_index].state = 0x70;
        }

        func_8019C778_7334D8(actor_index);
        break;

    case 0x70:
        gActors[actor_index].state += 1;

        func_80081790(actor_index, D_801A5054_73BDB4);

    case 0x71:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
        }

        func_8019C778_7334D8(actor_index);
        break;

    case 0x18:
        gActors[actor_index].state += 1;
        gActors[actor_index + 2].unk_190 = (s32)((FIXED_UNIT(1) * gActors[actor_index + 1].unk_12C) * gActors[actor_index + 1].unk_130);
        gActors[actor_index].unk_11C = -1.0f;

    case 0x19:
        if (!func_8019B5A8_732308(actor_index) && !func_8019B764_7324C4(actor_index, 0U)) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x50;
            }
            else {
                if (gActors[actor_index].unk_11C < 0.0f) {
                    gActors[actor_index + 2].unk_180 ^= 1;
                    gActors[actor_index].velocityX.raw = (s32)(gActors[actor_index + 1].unk_130 * FIXED_UNIT(1.25f));
                    if (gActors[actor_index + 2].unk_180 & 1) {
                        func_80081790(actor_index, D_801A5094_73BDF4);
                    }
                    else {
                        func_80081790(actor_index, D_801A506C_73BDCC);
                    }
                }

                if (gActors[actor_index].unk_16C & 1) {
                    gActors[actor_index + 5].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                    gActors[actor_index + 11].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9);
                    gActors[actor_index].velocityX.raw = 0;
                    Sound_PlaySfxAtActor2(SFX_0128, actor_index);
                }
            }
        }
        break;

    case 0x50:
        gActors[actor_index].state += 1;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        func_80081790(actor_index, D_801A50E0_73BE40);

    case 0x51:
        func_8019BAF4_732854(actor_index, 0U);
        break;

    case 0x60:
        gActors[actor_index].state += 1;

        func_80081790(actor_index, D_801A50F4_73BE54);
        Sound_PlaySfxAtActor2(SFX_MECHSTEP_0056, actor_index);

    case 0x61:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
        }

        func_8019C778_7334D8(actor_index);
        break;

    case 0x58:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A50BC_73BE1C);

    case 0x59:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;

            gActors[actor_index].velocityX.raw = gActors[actor_index + 2].unk_190;
            gActors[actor_index].velocityY.raw = gActors[actor_index + 4].unk_180;
        }

        func_8019C778_7334D8(actor_index);
        break;

    case 0x5A:
        if (!func_8019B5A8_732308(actor_index) && !func_8019B764_7324C4(actor_index, 0U)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25f);
            if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].velocityY.raw = 0;
            }

            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1)) {
                gActors[actor_index].state = 0x50;
            }
        }
        break;

    case 0x400:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A5110_73BE70);

    case 0x401:
        if (((s32)gActiveFrames % 50) == 0) {
            func_80074938(actor_index + 15, 0U);
        }

        if (gActors[actor_index + 15].posY.whole - gActors[D_800E3580].posY.whole >= 0x21) {
            gActors[actor_index].unk_174 = (s32)D_801A5130_73BE90;
        }
        else if (gActors[actor_index + 15].posY.whole - gActors[D_800E3580].posY.whole < -0x20) {
            gActors[actor_index].unk_174 = (s32)D_801A5120_73BE80;
        }
        else {
            gActors[actor_index].unk_174 = (s32)D_801A5110_73BE70;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }

        func_8019C778_7334D8(actor_index);
        break;

    case 0x1000:
        gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK8;
        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK10;

        var_v0 = func_800291AC(actor_index, 0x40U, 0x21023, 0x50U, 0x21023);
        switch (var_v0) {
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK8;
            gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_PLATFORM0;
            func_8019C0A0_732E00(actor_index);
            break;

        case 2:
            gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK8;
            gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_PLATFORM0;
            func_8019C0A0_732E00(actor_index);
            break;

        default:
            if ((gActors[actor_index + 2].unk_190 == 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE)) {
                gActors[actor_index + 2].unk_190++;

                func_80081790(actor_index, D_801A515C_73BEBC);
                Sound_PlaySfxAtActor2(SFX_0129, actor_index);
                gActors[actor_index + 1].var_110 -= 1.0f;
                if (gActors[actor_index + 1].var_110 < 0.0f) {
                    func_8019B360_7320C0(actor_index);
                }
            }

            if (gActors[actor_index].unk_11C < 0.0f) {
                func_80081790(actor_index, D_801A5140_73BEA0);
                gActors[actor_index + 2].unk_190 = 0;
            }
            break;
        }
        break;

    case 0x40:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A5178_73BED8);

    case 0x41:
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A518C_73BEEC);
        }

    case 0x42:
        func_8019BAF4_732854(actor_index, 2U);
        break;

    case 0x2000:
        gActors[actor_index].state += 1;

    case 0x2001:
        Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.125f));
        if (!func_8019B68C_7323EC(actor_index) &&
            !func_8019B930_732690(actor_index) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6)) {
            gActors[actor_index].state = 0x2010;
            break;
        }
        break;

    case 0x2010:
        gActors[actor_index].state += 1;

    case 0x2011:
        func_8019BDF4_732B54(actor_index);
        break;

    case 0x3000:
        gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK8;
        gActors[actor_index + 1].flags &= ~ACTOR_FLAG_UNK10;

        var_v0 = func_800291AC(actor_index, 0x2010U, 0x21023, 0x2010U, 0x21023);
        switch (var_v0) {
        case 3:
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9);
            gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_PLATFORM0;
            func_8019B21C_731F7C(actor_index);
            break;

        case 2:
            gActors[actor_index + 1].flags &= ~(ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9);
            gActors[actor_index + 1].flags |= ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_PLATFORM0;
            func_8019B21C_731F7C(actor_index);
            break;
        }
        break;

    case 0x800:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A519C_73BEFC);

    case 0x801:
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A51B0_73BF10);
        }

    case 0x802:
        func_8019BAF4_732854(actor_index, 0U);
        break;

    case 0x810:
        gActors[actor_index].state += 1;
        func_80081790(actor_index, D_801A519C_73BEFC);

    case 0x811:
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state += 1;
            func_80081790(actor_index, D_801A51B0_73BF10);
        }

    case 0x812:
        if (func_8019BAF4_732854(actor_index, 1U) == 2) {
            gActors[actor_index].state = 0x100;
        }
        break;

    case 0x100:
        gActors[actor_index].state += 1;
        gActors[actor_index + 1].var_110 = 30.0f;
        func_80081790(actor_index, D_801A51C4_73BF24);
        func_8019C0F4_732E54(actor_index);

    case 0x101:
        if (!func_8019B5A8_732308(actor_index) && !func_8019B764_7324C4(actor_index, 1U)) {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.125f));
            gActors[actor_index + 1].var_110 -= 1.0f;
            if (gActors[actor_index + 1].var_110 < 0.0f) {
                gActors[actor_index].state = 0x108;
                break;
            }
        }
        break;

    case 0x108:
        gActors[actor_index].state += 1;
        gActors[actor_index + 1].var_110 = 30.0f;
        func_80081790(actor_index, D_801A5038_73BD98);

    case 0x109:
        if (!func_8019B5A8_732308(actor_index) && !func_8019B764_7324C4(actor_index, 0U)) {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.125f));
            gActors[actor_index + 1].var_110 -= 1.0f;
            if (gActors[actor_index + 1].var_110 < 0.0f) {
                gActors[actor_index].state = 0x10;
                break;
            }
        }
        break;

    case 0x8000:
        gActors[actor_index].state += 1;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index + 1].var_110 = 1.0f;

    case 0x8001:
        gActors[actor_index + 1].var_110 -= 1.0f;
        if (gActors[actor_index + 1].var_110 < 0.0f) {
            func_80081720(actor_index, D_801A4958_73B6B8, -1U);
            func_80073EF4(actor_index);
            return;
        }
        break;
    }

    func_8019C6B4_733414(actor_index);
}

s32 func_8019D6D0_734430(u16 actor_index) {
    u16 temp_t6 = actor_index + 15;
    if (func_80042290(temp_t6)) {
        if (!gActors[temp_t6].unk_180 && (gActiveFrames + 10) % 180 < 60) {
            gActors[actor_index].state = 0x400;
        }

        return 1;
    }

    return 0;
}

void func_8019D77C_7344DC(u16 actor_index) {
    u16 temp_a1;
    s16 var_v0;
    u16 sp24;

    func_8019C80C_73356C(actor_index);
    var_v0 = (s16)(gActors[actor_index].var_0D8 & 0xF0);
    temp_a1 = func_80029FB8(actor_index,
        (s16)(s32)(gActors[actor_index + 2].unk_11C - var_v0),
        (s16)(s32)(gActors[actor_index + 2].unk_11C + var_v0),
        (s16)(s32)(gActors[actor_index + 2].unk_120 + 128.0f),
        (s16)(s32)(gActors[actor_index + 2].unk_120 - 128.0f)
    );

    switch (gActors[actor_index].state) {
    case 0x11:
        if (func_80029B74(160)) {
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
                break;
            }
            else {
                gActors[actor_index].state = 0x18;
            }
        }
        else if (((temp_a1 & 1) && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) || (!(temp_a1 & 1) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED))) {
            gActors[actor_index].state = 0x74;
            gActors[actor_index + 1].var_110 = 60.0f;
        }
        else {
            gActors[actor_index].state = 0x18;
        }
        break;

    case 0x19:
        sp24 = actor_index + 15;
        if (func_80042290(sp24) && gActiveFrames % 50 == 0) {
            func_80074938(sp24, 0);
        }

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
                gActors[actor_index].state = 0x58;
                gActors[actor_index + 2].unk_190 = FIXED_UNIT(-2);
                gActors[actor_index + 4].unk_180 = FIXED_UNIT(3.5);
                break;
            }
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            gActors[actor_index].state = 0x58;
            gActors[actor_index + 2].unk_190 = FIXED_UNIT(2);
            gActors[actor_index + 4].unk_180 = FIXED_UNIT(3.5);
            break;
        }

        if (gActors[actor_index].unk_16C & 1) {
            if (func_80029B74(192)) {
                if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                    break;
                }
            }
            else {
                gActors[actor_index].state = 0x10;
            }
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DB10_734870(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DB58_7348B8(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DBA0_734900(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DBE8_734948(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DC30_734990(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DC78_7349D8(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DCC0_734A20(u16 actor_index) {
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_8019DD08_734A68(u16 actor_index) {
    Rocketeer_Update(actor_index);
}

void func_8019DD30_734A90(u16 actor_index) {
    if (gActors[actor_index].var_150 & 0x10000000) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(0.375), FIXED_UNIT(0.046875));
        if (gActors[actor_index].unk_170 + 1 < gActors[actor_index].unk_178) {
            gActors[actor_index].var_150 &= ~0x10000000;
        }
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, FIXED_UNIT(-0.375), FIXED_UNIT(0.046875));
        if (gActors[actor_index].unk_178 < gActors[actor_index].unk_170 - 1) {
            gActors[actor_index].var_150 |= 0x10000000;
        }
    }

    if (gActors[actor_index].var_150 & 0x20000000) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(0.53125), FIXED_UNIT(0.0546875));
        if (gActors[actor_index].unk_174 + 2 < gActors[actor_index].unk_17C) {
            gActors[actor_index].var_150 &= ~0x20000000;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-0.53125), FIXED_UNIT(0.0546875));
        if (gActors[actor_index].unk_17C < gActors[actor_index].unk_174 - 2) {
            gActors[actor_index].var_150 |= 0x20000000;
        }
    }
}

void func_8019DE88_734BE8(u16 actor_index) {
    u16 new_actor_index;
    u16 var_v0;

    var_v0 = gActors[actor_index].var_110;
    if (var_v0 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }

    gActors[actor_index].flags |= ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = GINDEX_3050;
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    new_actor_index = Actor_RangeFindInactive(0xA0, 0xC0);
    if (new_actor_index) {
        gActors[actor_index].unk_16C = new_actor_index;
        gActors[new_actor_index].actorType = ACTORTYPE_PARTICLE;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = gActors[actor_index].graphicFlags;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].graphicList = D_801A47C8_73B528;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].unk_130 = (f32)actor_index;
        gActors[new_actor_index].unk_14C = (f32)gActors[actor_index].actorType;
        gActors[new_actor_index].unk_13C_f32 = 1.0f;
        gActors[new_actor_index].unk_148 = 10.0f;
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw;
    }
}

void func_8019E094_734DF4(u16 actor_index, s32 arg1) {
    u16 var_s0;
    s16 var_s1;
    u16 var_s4;

    var_s4 = actor_index + 4;

    gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_PLATFORM0;
    gActors[actor_index].grabType = GRABTYPE_6;\
    gActors[actor_index].unk_0DF = ACTOR0DF_0_2;
    gActors[actor_index].hitboxBY0 = 20;\
    gActors[actor_index].hitboxBY1 = -2;\
    gActors[actor_index].hitboxBX0 = -24;\
    gActors[actor_index].hitboxBX1 = 16;

    for (var_s0 = 0, var_s1 = -20; var_s0 < 3; var_s0++) {
        if (func_800327B4(actor_index + 1, var_s4, actor_index, 6, 0x1000, GRABTYPE_4, 0, var_s1, -14, -2, 2, 2, -2, 0)) {
            var_s1 += 18;
        }
    }

    func_800327B4(var_s4, actor_index + 5, actor_index, 6, 0x20000, GRABTYPE_0, 0, 0, -96, -24, 24, 8, -8, 0);
}

void func_8019E240_734FA0(u16 actor_index) {
    u16 var_v0;
    f32 var_f0;

    var_v0 = gActors[actor_index].unk_16C_u16[1];
    if (var_v0 != 0) {
        if (gActors[var_v0].flags && gActors[var_v0].unk_130 == (f32)actor_index) {
            gActors[var_v0].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[var_v0].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
            gActors[var_v0].unk_148 = 1.0f;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].hitboxBX0 = -16;\
                gActors[actor_index].hitboxBX1 = 24;
                var_f0 = 6.0f;
            }
            else {
                gActors[actor_index].hitboxBX0 = -24;
                gActors[actor_index].hitboxBX1 = 16;
                var_f0 = -6.0f;
            }

            gActors[var_v0].unk_134 = gActors[actor_index].scaleX * var_f0;
            gActors[var_v0].unk_138 = gActors[actor_index].scaleY * 25.0f;
            gActors[var_v0].scaleX = gActors[actor_index].scaleX;
            gActors[var_v0].scaleY = gActors[actor_index].scaleY;
        }
    }
}

void func_8019E364_7350C4(u16 actor_index) {
    u16 sp26;

    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK15;
    gActors[actor_index].unk_178 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_17C = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (gActors[actor_index].state) {
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && !(gActors[actor_index].state & 0x1000)
            && !(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
            switch (gActors[actor_index].hitByType) {
            case HITTYPE_20:
            case HITTYPE_23:
                break;

            case HITTYPE_2:
            case HITTYPE_19:
            case HITTYPE_21:
            case HITTYPE_22:
            default:
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                Actor_ClampVelocityX(actor_index, FIXED_UNIT(2.5));
                Actor_ClampVelocityY(actor_index, FIXED_UNIT(2.5));
                break;
            }
        }

        sp26 = gActors[actor_index].unk_16C_u16[1];
    }

    switch (gActors[actor_index].state) {
    case 0:
        switch ((u16)((u32)gActors[actor_index].var_110 & 0x3F)) {
        case 0:
            gActors[actor_index].state = 0x10;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].scaleX = (f32)gActors[actor_index].var_0D8 / 100.0f;
            gActors[actor_index].posZ.raw = actor_index * 10 + FIXED_UNIT(-8);
            break;

        case 1:
            gActors[actor_index].state = 0x100;
            gActors[actor_index].health = 100;
            func_8019E094_734DF4(actor_index, 0);
            break;
        }

        func_8019DE88_734BE8(actor_index);
        break;

    case 0x20:
        gActors[actor_index].state++;
        gActors[actor_index].var_15C = gActors[actor_index].velocityX.raw / 12;
        gActors[actor_index].var_160 = gActors[actor_index].velocityY.raw / 12;
        gActors[actor_index].unk_164 = 10;
        // fallthrough

    case 0x21:
        gActors[actor_index].velocityX.raw -= gActors[actor_index].var_15C;
        gActors[actor_index].velocityY.raw -= gActors[actor_index].var_160;
        if (--gActors[actor_index].unk_164 <= 0) {
            gActors[actor_index].state = gActors[actor_index].var_154;
            gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
            gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        }
        break;

    case 0x100:
        gActors[actor_index].state++;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-3);
        // fallthrough

    case 0x101:
        gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
        }

        if ((gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))
            || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        }

        if (gActors[actor_index].unk_168 & 0x80) {
            gActors[actor_index].state = 0x20;
            gActors[actor_index].var_154 = 0x108;
        }
        break;

    case 0x108:
        gActors[actor_index].state++;
        gActors[actor_index].var_158 = 80;
        // fallthrough

    case 0x109:
        func_8019DD30_734A90(actor_index);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
        gActors[actor_index].var_158--;
        gActors[(u16)(actor_index + 1)].health = 1;
        if (gActors[actor_index].var_158 == 50) {
            gActors[(u16)(actor_index + 1)].health = 0;
        }

        gActors[(u16)(actor_index + 2)].health = 1;
        if (gActors[actor_index].var_158 == 30) {
            gActors[(u16)(actor_index + 2)].health = 0;
        }

        gActors[(u16)(actor_index + 3)].health = 1;
        if (gActors[actor_index].var_158 == 10) {
            gActors[(u16)(actor_index + 3)].health = 0;
        }

        if (gActors[actor_index].var_158 < 0) {
            gActors[actor_index].state = 0x110;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2.25);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2.25);
            }

            gActors[actor_index].velocityY.raw -= FIXED_UNIT(1);
        }
        break;

    case 0x110:
        gActors[actor_index].state++;
        // fallthrough

    case 0x111:
        gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
        Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.046875));
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(3)) {
            gActors[actor_index].velocityY.raw += FIXED_UNIT(0.1875);
        }

        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) && gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
        }

        if ((gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        }

        if (gActors[actor_index].posY.whole >= 513) {
            gActors[actor_index].flags = 0;
            gActors[actor_index].unk_168 = 1;
            return;
        }
        break;

    case 0x10:
        gActors[actor_index].state++;
        if (actor_index == 100) {
            gActors[sp26].graphicList = D_801A4824_73B584;
            gActors[sp26].graphicTimer = 1;
        }

        if (actor_index == 99) {
            gActors[sp26].graphicList = D_801A482C_73B58C;
            gActors[sp26].graphicTimer = 1;
        }

        // fallthrough

    case 0x11:
        gActors[actor_index].velocityX.raw = gActors[actor_index].scaleX * FIXED_UNIT(1.5);
        gActors[actor_index].velocityY.raw = 224.0f * gActors[actor_index].scaleX + (f32)gActors[actor_index].velocityY.raw;
        if (gActors[actor_index].posX.whole >= 193) {
            gActors[actor_index].flags = 0;
        }

        gActors[actor_index].scaleX -= 0.001;
        break;
    }

    func_8019E240_734FA0(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_8019EB14_735874(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
    func_8008105C(actor_index, D_801A5280_73BFE0, D_801A5200_73BF60);
    gActors[actor_index].unk_178 = (intptr_t)D_801A54C4_73C224;
    func_80081790(actor_index, D_801A54B4_73C214);
}

void func_8019EBA8_735908(u16 actor_index) {
    func_800819A8(actor_index, D_801A5280_73BFE0);
}

void func_8019EBD8_735938(u16 actor_index) {
    Actor* actor;

    actor = &gActors[actor_index];
    switch (actor->state) {
    case 0:
        func_8019EB14_735874(actor_index);
        actor->state = 1;
        // fallthrough

    case 1:
        func_8019EBA8_735908(actor_index);
        break;
    }

    actor->flags_098 = 0;
}

void func_8019EC6C_7359CC(u16 actor_index, u16 arg1) {
    func_8002CCD0(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 3);
    gActors[arg1].velocityX.raw += gActors[actor_index].velocityX.raw / 2;
    gActors[arg1].velocityY.raw += gActors[actor_index].velocityY.raw / 2;
}

void func_8019ED3C_735A9C(u16 actor_index) {
    Sound_PlaySfxAtActor2(SFX_0037, actor_index);
    if ((u16)(u32)gActors[actor_index].var_110 & 0xF0) {
        gActors[actor_index + 2].velocityX.raw = 0;
        gActors[actor_index + 2].velocityY.raw = FIXED_UNIT(4);
        func_80073E50(actor_index + 2, D_801A551C_73C27C[((u16)(u32)gActors[actor_index].var_110 & 0xF0) / 16]);
    }

    func_80081720(actor_index, D_801A5558_73C2B8, ~ACTOR_FLAG_ACTIVE);
    switch (gActors[actor_index].var_0D8 & 0xF000) {
    case 0x1000:
    case 0x2000:
    default:
        gActors[actor_index + 5].unk_18C = 0;
        func_8019EC6C_7359CC(actor_index, actor_index + 5);
        break;

    case 0x3000:
        break;
    }

    gActors[actor_index + 6].unk_18C = 0;
    func_8019EC6C_7359CC(actor_index, actor_index + 6);
    gActors[actor_index].flags = 0;
}

void func_8019EFBC_735D1C(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -24;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

s32 func_8019F00C_735D6C(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && !(gActors[actor_index].state & 0x9800) && gActors[actor_index].hitByType != HITTYPE_23) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        if ((gActors[actor_index].hitByFlags & HITFLAG_0) || gActors[actor_index].hitByType == HITTYPE_6 || gActors[actor_index].hitByType == HITTYPE_7 || gActors[actor_index].hitByType == HITTYPE_8) {
            gActors[actor_index].state = 0x804;
            gActors[actor_index].velocityX.raw = (s32)((f32)gActors[actor_index].unk_0F8.raw * 0.7);
            gActors[actor_index].velocityY.raw = (s32)((f32)gActors[actor_index].unk_0FC.raw * 0.7);
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
        }
        else {
            gActors[actor_index].state = 0x800;
            gActors[actor_index].velocityX.raw = (s32)((f32)gActors[actor_index].unk_0F8.raw * 0.3);
            gActors[actor_index].velocityY.raw = (s32)((f32)gActors[actor_index].unk_0FC.raw * 0.3);
        }

        return 1;
    }

    return 0;
}

s32 func_8019F204_735F64(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && !(gActors[actor_index].state & 0x1000)) {
        gActors[actor_index].state = 0x1000;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        func_80029134(actor_index);
        func_80081790(actor_index, D_801A58F0_73C650);
        return 1;
    }

    return 0;
}

void func_8019F2A4_736004(u16 actor_index) {
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.1875));
}

s32 func_8019F2D0_736030(u16 actor_index) {
    if (func_8019F204_735F64(actor_index) || func_8019F00C_735D6C(actor_index)) {
        return 1;
    }

    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x40;
        return 1;
    }

    func_8019F2A4_736004(actor_index);
    return 0;
}

void func_8019F370_7360D0(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
        gActors[actor_index].health -= 100;
        if (gActors[actor_index].health & 0x8000) {
            gActors[actor_index].health = 0;
        }

        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        func_80081790(actor_index, D_801A5868_73C5C8);
    }
}

s32 func_8019F404_736164(u16 actor_index) {
    if (func_8019F204_735F64(actor_index)) {
        return 1;
    }

    func_8019F00C_735D6C(actor_index);
    Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.03125));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)
        || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))
        || (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.8;
        gActors[actor_index].velocityY.raw /= 2;
        func_8019F370_7360D0(actor_index);
    }

    if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = 0;
        func_8019F370_7360D0(actor_index);
    }

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && gActors[actor_index].velocityY.raw < 0) {
        func_8019F370_7360D0(actor_index);
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.7;
        if (gActors[actor_index].state == 0x41 || gActors[actor_index].state == 0x801) {
            func_80081790(actor_index, D_801A58D4_73C634);
            gActors[actor_index].state = 0x50;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = 0;
            return 2;
        }

        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.5)) {
            gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.4;
            func_80081790(actor_index, D_801A5868_73C5C8);
            return 3;
        }
        else {
            gActors[actor_index].state = 0x90;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = 0;
            return 2;
        }
    }

    return 0;
}

void func_8019F6FC_73645C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    u16 var_a3 = actor->var_110;
    s32 var_v1;

    var_v1 = var_a3 & 0x700;
    if (var_v1) {
        actor->graphicFlags |= ACTOR_GFLAG_PALETTE;
        actor->palette_18C = D_801A54FC_73C25C[var_v1 / 256];
    }

    func_8008105C(actor_index, D_801A5558_73C2B8, D_801A5534_73C294);
    actor->unk_178 = (s32)D_801A577C_73C4DC;
    func_80081790(actor_index, D_801A57CC_73C52C);
    func_800819A8(actor_index, D_801A5558_73C2B8);
    actor->flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16;
    if (var_a3 & 1) {
        actor->flags |= ACTOR_FLAG_FLIPPED;
    }

    actor->health = 200;
    actor->damage = 100;
    actor->unk_0CE = 10;
    actor->grabType = GRABTYPE_1;\
    actor->unk_0DF = ACTOR0DF_6;
    actor->hitType = HITTYPE_6;
    func_8019EFBC_735D1C(actor_index);
    actor->hitboxAY0 = actor->hitboxBY0 + 4;\
    actor->hitboxAY1 = actor->hitboxBY1 - 4;
    actor->hitboxAX0 = actor->hitboxBX0 - 4;\
    actor->hitboxAX1 = actor->hitboxBX1 + 4;
    gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 2].unk_11C = gScreenPosCurrentX.whole + actor->posX.whole;
    gActors[actor_index + 2].unk_120 = gScreenPosCurrentY.whole + actor->posY.whole;

    switch (actor->var_0D8 & 0xF000) {
    default:
        gActors[actor_index + 3].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 5].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        break;

    case 0x1000:
        gActors[actor_index + 3].graphicIndex = 0x305C;
        gActors[actor_index + 5].graphicIndex = 0x305C;
        gActors[actor_index + 3].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 5].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        break;

    case 0x2000:
        gActors[actor_index + 3].graphicIndex = 0x29A;
        gActors[actor_index + 5].graphicIndex = 0x306E;
        gActors[actor_index + 5].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        break;

    case 0x3000:
        gActors[actor_index + 3].graphicIndex = 0x29E;
        gActors[actor_index + 5].graphicIndex = 0x2B2;
        break;
    }
}

void func_8019F9EC_73674C(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        gActors[actor_index + 2].unk_114 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index + 2].unk_118 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        func_8002877C(actor_index);
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        gActors[actor_index].posZ.raw = (actor_index << 4) - FIXED_UNIT(2);
        func_800819A8(actor_index, D_801A5558_73C2B8);
    }
}

void func_8019FAE4_736844(u16 actor_index) {
    switch ((u16)gActors[actor_index].var_110 & 7) {
    case 0:
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].unk_174 = (s32)D_801A57CC_73C52C;
            break;
        }

        switch (Math_Plane16Way(gActors[0].posX.raw - gActors[actor_index].posX.raw, gActors[0].posY.raw - gActors[actor_index].posY.raw)) {
        case 0:
        default:
            gActors[actor_index].unk_174 = (s32)D_801A57CC_73C52C;
            break;

        case 0x40:
        case 0x1C0:
            gActors[actor_index].unk_174 = (s32)D_801A57E8_73C548;
            break;

        case 0x80:
        case 0x180:
            gActors[actor_index].unk_174 = (s32)D_801A5804_73C564;
            break;

        case 0xC0:
        case 0x140:
            gActors[actor_index].unk_174 = (s32)D_801A5820_73C580;
            break;

        case 0x100:
            gActors[actor_index].unk_174 = (s32)D_801A583C_73C59C;
            break;
        }
        break;

    case 1:
        gActors[actor_index].unk_174 = (s32)D_801A583C_73C59C;
        break;

    case 2:
        gActors[actor_index].unk_174 = (s32)D_801A5820_73C580;
        break;

    case 3:
        gActors[actor_index].unk_174 = (s32)D_801A5804_73C564;
        break;

    case 4:
        gActors[actor_index].unk_174 = (s32)D_801A57E8_73C548;
        break;

    case 5:
        gActors[actor_index].unk_174 = (s32)D_801A57CC_73C52C;
        break;
    }
}

void func_8019FCF0_736A50(u16 actor_index) {
    func_8019F9EC_73674C(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_8019F6FC_73645C(actor_index);
        gActors[actor_index].state = 0x10;
        break;

    case 0x10:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A57CC_73C52C);
        // fallthrough

    case 0x11:
        gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        func_8019F2D0_736030(actor_index);
        break;

    case 0x70:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A57CC_73C52C);
        // fallthrough

    case 0x71:
        gActors[actor_index + 1].var_110 -= 1;
        gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index + 1].var_110 < 0.0f) {
            gActors[actor_index].state = 0x60;
        }

        func_8019F2D0_736030(actor_index);
        break;

    case 0x60:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A5858_73C5B8);
        // fallthrough

    case 0x61:
        gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        func_8019F2D0_736030(actor_index);
        break;

    case 0x20:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A57CC_73C52C);
        gActors[actor_index + 1].unk_190 = gActors[actor_index + 1].unk_130 * (f32)FIXED_UNIT(0.75);
        // fallthrough

    case 0x21:
        gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        if (!func_8019F204_735F64(actor_index) && !func_8019F00C_735D6C(actor_index)) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x40;
            }
            else {
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index + 1].unk_190, 0x1000);
                if (gActors[actor_index].velocityX.raw < FIXED_UNIT(2) && gActors[actor_index].velocityX.raw > FIXED_UNIT(-2)) {
                    if ((u16)(u32)gActors[actor_index + 2].unk_114 & 2) {
                        gActors[actor_index + 6].graphicIndex = 0x304C;
                        gActors[actor_index + 1].posY.whole++;
                        gActors[actor_index + 3].posY.whole--;
                        gActors[actor_index + 5].posY.whole--;
                    }
                    else {
                        gActors[actor_index + 6].graphicIndex = 0x304E;
                    }
                }
                else if (gActiveFrames & 1) {
                    gActors[actor_index + 6].graphicIndex = 0x304C;
                    gActors[actor_index + 6].posX.whole -= 1 * gActors[actor_index + 1].unk_130;
                }
                else {
                    gActors[actor_index + 6].graphicIndex = 0x304E;
                }

                if ((s32)gActiveFrames % 9 == 0) {
                    Sound_PlaySfxAtActor3(SFX_00A5, actor_index);
                }
            }
        }
        break;

    case 0x40:
        gActors[actor_index].state++;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        func_80081790(actor_index, D_801A58C4_73C624);
        // fallthrough

    case 0x41:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        func_8019F404_736164(actor_index);
        break;

    case 0x50:
        gActors[actor_index].state++;
        // fallthrough

    case 0x51:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x10;
        }

        func_8019F2D0_736030(actor_index);
        break;

    case 0x80:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A58A0_73C600);
        // fallthrough

    case 0x81:
        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityX.raw = gActors[actor_index + 1].unk_190;
            gActors[actor_index].velocityY.raw = gActors[actor_index + 2].unk_180;
        }

        func_8019F2D0_736030(actor_index);
        break;

    case 0x82:
        if (!func_8019F204_735F64(actor_index) && !func_8019F00C_735D6C(actor_index)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].velocityY.raw = 0;
            }

            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1)) {
                gActors[actor_index].state = 0x40;
            }
        }
        break;

    case 0x1000:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        switch (func_800291AC(actor_index, 0x30, 0x214A3, 0x40, 0x21523)) {
        case 3:
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK8;
            gActors[actor_index].velocityX.raw = TO_FIXED(gActors[actor_index + 1].unk_130);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
            func_8019EFBC_735D1C(actor_index);
            break;

        case 2:
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK8;
            func_8019EFBC_735D1C(actor_index);
            break;
        }

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE) {
            func_80081790(actor_index, D_801A590C_73C66C);
        }

        if (gActors[actor_index].unk_11C < 0.0f) {
            func_80081790(actor_index, D_801A58F0_73C650);
        }
        break;

    case 0x30:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A5820_73C580);
        // fallthrough

    case 0x31:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        func_8019F404_736164(actor_index);
        break;

    case 0x800:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A5868_73C5C8);
        // fallthrough

    case 0x801:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        func_8019F404_736164(actor_index);
        break;

    case 0x804:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A5868_73C5C8);
        // fallthrough

    case 0x805:
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801A57CC_73C52C);
        }

        // fallthrough

    case 0x806:
        if (func_8019F404_736164(actor_index) == 2) {
            gActors[actor_index].state = 0x90;
        }
        break;

    case 0x90:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_801A5884_73C5E4);
        gActors[actor_index + 1].var_110 = 30.0f;
        // fallthrough

    case 0x91:
        if (!func_8019F204_735F64(actor_index) && !func_8019F00C_735D6C(actor_index)) {
            func_8019F2A4_736004(actor_index);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x40;
            }
        }
        break;

    case 0x8000:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index + 1].var_110 = 1;
        // fallthrough

    case 0x8001:
        gActors[actor_index + 1].var_110 -= 1;
        if (gActors[actor_index + 1].var_110 < 0.0f) {
            func_8019ED3C_735A9C(actor_index);
            return;
        }
        break;
    }

    if (gActors[actor_index].health == 0) {
        func_8019ED3C_735A9C(actor_index);
        return;
    }

    if (!(gActors[actor_index].state & 0x8000)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index + 1].unk_130 = -1;
            gActors[actor_index].unk_138 = 1.0f;
        }
        else {
            gActors[actor_index + 1].unk_130 = 1;
            gActors[actor_index].unk_138 = 0;
        }

        if ((u16)(u32)gActors[actor_index].var_110 & 0xF0) {
            func_80032E60(actor_index + 1, D_801A551C_73C27C[((u16)(u32)gActors[actor_index].var_110 & 0xF0) / 16], 0x120, 11.0f, 1, 1.0f, 1.0f);
        }
    }
}

DEFAULT_INT func_801A08E8_737648(u16 actor_index, u32 arg1) {
    u16 var_a2;

    if (arg1 & 0x80000000) {
        if (arg1 & 0x10000) {
            var_a2 = actor_index + 5;
        }
        else {
            var_a2 = actor_index + 3;
        }

        switch (gActors[actor_index].var_0D8 & 0xF000) {
        case 0:
            func_80075324(var_a2, 0);
            break;

        case 0x1000:
            func_80074D28(var_a2, 0x1000);
            break;
        }
    }
}

s32 func_801A099C_7376FC(u16 actor_index) {
    u16 var_a0;
    u16 var_a1;
    u16 var_a2;
    u16 var_a3;

    var_a0 = gActors[actor_index + 2].unk_124;\
    var_a1 = gActors[actor_index].var_0D8;\
    var_a2 = gActors[actor_index].var_0D8;\
    var_a3 = gActors[actor_index].var_0D8;\
    return func_80029678(var_a0, var_a1 & 0xF, var_a2 & 0x30, var_a3 & 0xC0);
}

s32 func_801A0AB4_737814(u16 actor_index, u16 arg1) {
    u32 var_v0 = gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
    if (var_v0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            gActors[actor_index].state = 0x80;
            gActors[actor_index + 1].unk_190 = FIXED_UNIT(-2);
            gActors[actor_index + 2].unk_180 = FIXED_UNIT(3.5);
            return 1;
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
        gActors[actor_index].state = 0x80;
        gActors[actor_index + 1].unk_190 = FIXED_UNIT(2);
        gActors[actor_index + 2].unk_180 = FIXED_UNIT(3.5);
        return 1;
    }

    if (!(arg1 & 0x8000)) {
        if (!(gActors[actor_index].var_0D8 & 0xF00)) {
            gActors[actor_index].state = 0x10;
        }
    }
    else if (((arg1 & 1) && !var_v0) || (!(arg1 & 1) && var_v0)) {
        gActors[actor_index].state = 0x60;
        return 1;
    }

    return 0;
}

void func_801A0C0C_73796C(u16 actor_index) {
    s32 var_v0;
    u16 temp_a1;
    u32 sp34;

    func_8019FCF0_736A50(actor_index);
    if (gActors[actor_index + 2].unk_124 < 1800.0f) {
        gActors[actor_index + 2].unk_124 += 1.0f;
    }

    if (func_80029B00(192, 192, -192)) {
        sp34 = func_801A099C_7376FC(actor_index);
        gActors[actor_index + 2].unk_124 = (u16)sp34;
    }
    else {
        sp34 = 0;
    }

    var_v0 = (s16)(((gActors[actor_index].var_0D8 & 0xF00) / 16) + 8);
    temp_a1 = func_80029FB8(actor_index,
        (s16)(s32)(gActors[actor_index + 2].unk_11C - var_v0),
        (s16)(s32)(gActors[actor_index + 2].unk_11C + var_v0),
        (s16)(s32)(gActors[actor_index + 2].unk_120 + 128.0f),
        (s16)(s32)(gActors[actor_index + 2].unk_120 - 128.0f)
    );
    var_v0 = temp_a1 & 0x8000;

    switch (gActors[actor_index].state) {
    case 0x11:
        if (var_v0 || (gActors[actor_index].var_0D8 & 0xF00)) {
            gActors[actor_index].state = 0x20;
        }
        else if (((u16)(u32)gActors[actor_index].var_110 & 8) && (D_800E3584 & 0xC0000)) {
            gActors[actor_index].state = 0x60;
        }
        else {
            func_8019FAE4_736844(actor_index);
            func_801A08E8_737648(actor_index, sp34);
        }
        break;

    case 0x21:
        if (!func_801A0AB4_737814(actor_index, temp_a1)) {
            func_8019FAE4_736844(actor_index);
            func_801A08E8_737648(actor_index, sp34);
        }
        break;
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A0F5C_737CBC(u16 actor_index) {
    func_8019FCF0_736A50(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A0FC0_737D20(u16 actor_index) {
    func_8019FCF0_736A50(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A1024_737D84(u16 actor_index) {
    func_8019FCF0_736A50(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A1088_737DE8(u16 actor_index, u16 arg1) {
    func_8002CCD0(arg1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 3);
    gActors[arg1].velocityX.raw += gActors[actor_index].velocityX.raw / 2;
    gActors[arg1].velocityY.raw += gActors[actor_index].velocityY.raw / 2;
}

void func_801A1158_737EB8(u16 actor_index) {
    Sound_PlaySfxAtActor2(SFX_0037, actor_index);

    if ((u16)(u32)gActors[actor_index].var_110 & 0xF0) {
        gActors[actor_index + 2].velocityX.raw = 0;
        gActors[actor_index + 2].velocityY.raw = FIXED_UNIT(4);
        func_80073E50(actor_index + 2, D_801A551C_73C27C[((u16)(u32)gActors[actor_index].var_110 & 0xF0) / 16]);
    }

    func_80081720(actor_index, D_801A5948_73C6A8, ~ACTOR_FLAG_ACTIVE);
    if (((u16)(u32)gActors[actor_index].var_110 & 3) == 1) {
        gActors[actor_index + 7].unk_18C = 0;
        func_801A1088_737DE8(actor_index, actor_index + 7);
    }

    gActors[actor_index + 6].unk_18C = 0;
    func_801A1088_737DE8(actor_index, actor_index + 6);
    gActors[actor_index].flags = 0;
}

void func_801A1440_7381A0(u16 actor_index) {
    if (!((u16)gActors[actor_index].var_110 & 2)) {
        Sound_PlaySfxAtActor2(SFX_BOING_0082, actor_index);
    }

    gActors[actor_index + 7].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index + 7].flags &= ~ACTOR_FLAG_UNK16;
}

void func_801A1560_7382C0(u16 actor_index) {
    gActors[actor_index].state = 0x20;
    gActors[actor_index + 7].velocityY.raw = FIXED_UNIT(4.5);
    func_801A1440_7381A0(actor_index);
    if (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gButtonHold & gButton_DUp) {
            gActors[actor_index + 7].velocityY.raw = FIXED_UNIT(7.5);
        }

        if (gButtonHold & gButton_DDown) {
            gActors[actor_index + 7].velocityY.raw = FIXED_UNIT(1);
        }
    }
    else {
        gActors[actor_index + 2].unk_180 = 1;
    }
}

void func_801A1644_7383A4(u16 actor_index) {
    u16 other_actor_index = actor_index + 7;
    if (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        func_801A1560_7382C0(actor_index);
        func_80081790(actor_index, D_801A5AEC_73C84C);
    }
    else if (gActors[other_actor_index].velocityY.raw < 0 && (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].state = 0x10;
        gActors[other_actor_index].velocityY.raw = 0;
        gActors[other_actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[other_actor_index].flags &= ~ACTOR_FLAG_UNK17;
        func_80081790(actor_index, D_801A5AAC_73C80C);
    }
}

void func_801A1718_738478(u16 actor_index) {
    u16 other_actor_index;

    other_actor_index = actor_index + 7;
    if ((gActors[other_actor_index].velocityX.raw > 0 && (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
        (gActors[other_actor_index].velocityX.raw < 0 && (gActors[other_actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        (gActors[other_actor_index].velocityX.raw > 0 && (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK3)) ||
        (gActors[other_actor_index].velocityX.raw < 0 && (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK2))) {
        gActors[other_actor_index].velocityX.raw = 0;
    }

    if (gActors[other_actor_index].velocityY.raw > 0 && (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[other_actor_index].velocityY.raw = 0;
    }
}

void func_801A1848_7385A8(u16 actor_index) {
    u32 sp2C;
    u16 temp_t0;

    temp_t0 = (u16)(u32)(gActors + actor_index)->var_110;
    if (temp_t0 & 0x700) {
        (gActors + actor_index)->graphicFlags |= ACTOR_GFLAG_PALETTE;
        (gActors + actor_index)->palette_18C = D_801A54FC_73C25C[(temp_t0 & 0x700) / 256];
    }

    sp2C = (u32)(gActors + actor_index)->var_110;
    (gActors + actor_index)->graphicFlags |= ACTOR_GFLAG_SCALE;
    func_8008105C(actor_index, D_801A5948_73C6A8, D_801A591C_73C67C);
    (gActors + actor_index)->unk_178 = (s32)D_801A5A70_73C7D0;
    func_80081790(actor_index, D_801A5AAC_73C80C);
    gActors[(u16)(actor_index + 1)].grabType = GRABTYPE_6;
    (gActors + actor_index)->unk_0DF = ACTOR0DF_6;
    gActors[(u16)(actor_index + 1)].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
    gActors[(u16)(actor_index + 1)].health = 20;
    gActors[(u16)(actor_index + 1)].hitboxBY0 = 8;
    gActors[(u16)(actor_index + 1)].hitboxBY1 = -8;
    gActors[(u16)(actor_index + 1)].hitboxBX0 = -10;
    gActors[(u16)(actor_index + 1)].hitboxBX1 = 10;
    temp_t0 = (u16)(actor_index + 7);
    (gActors + actor_index)->unk_128 = temp_t0;
    (gActors + actor_index)->unk_12C = temp_t0;
    gActors[temp_t0].health = 10;
    gActors[temp_t0].flags &= ~ACTOR_FLAG_FREEZE_POS;
    gActors[temp_t0].flags |= ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK15;
    gActors[temp_t0].posX.whole = (gActors + actor_index)->posX.whole;
    gActors[temp_t0].posY.whole = (gActors + actor_index)->posY.whole;
    gActors[temp_t0].hitboxBY0 = 18;
    gActors[temp_t0].hitboxBY1 = 2;
    gActors[temp_t0].hitboxBX0 = -10;
    gActors[temp_t0].hitboxBX1 = 10;
    gActors[(u16)(actor_index + 6)].graphicFlags |= ACTOR_GFLAG_SCALE;

    if (((u16)(u32)(gActors + actor_index)->var_110 & 3) == 1) {
        gActors[temp_t0].graphicIndex = 0x246;
        gActors[temp_t0].flags |= ACTOR_FLAG_UNK9;
        gActors[temp_t0].hitFlags = HITFLAG_2 | HITFLAG_7;
        gActors[temp_t0].hitType = HITTYPE_8;
        gActors[temp_t0].unk_0F8.raw = FIXED_UNIT(3);\
        gActors[temp_t0].unk_0FC.raw = FIXED_UNIT(4);
        gActors[temp_t0].damage = 30;
        Actor_SetHitboxA(temp_t0, 3);
    }

    gActors[actor_index + 6].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 7].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    gActors[actor_index + 2].unk_11C = gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole;
    gActors[actor_index + 2].unk_120 = gScreenPosCurrentY.whole + (gActors + actor_index)->posY.whole;
    (gActors + actor_index)->var_110 = sp2C;
    (gActors + actor_index)->unk_168 = 0x251C;
}

void func_801A1C9C_7389FC(u16 actor_index) {
    Actor* actor;
    s32 var_v1;
    s32 var_a1;
    u16 index;

    actor = &gActors[actor_index];
    var_v1 = actor->var_154;
    actor->unk_138 = -var_v1 / FIXED_UNIT(1);
    var_a1 = 0;
    actor->graphicIndex = 0x2B4;

    for (index = 0; index < 5; index++) {
        if (var_v1 < var_a1) {
            actor->graphicIndex = D_801A5B5C_73C8BC[index];
            return;
        }

        var_a1 += FIXED_UNIT(3);
    }
}

void func_801A1D4C_738AAC(u16 actor_index) {
    f32 var_f0 = (f32)gActors[actor_index].unk_168 / 10000.0f;
    gActors[actor_index + 6].scaleY = (f32)((gActors[actor_index + 6].var_154 + gActors[actor_index + 7].var_154) / FIXED_UNIT(1) + 30) * (var_f0 / 30.0f);
    if (gActors[actor_index + 6].scaleY > var_f0) {
        gActors[actor_index + 6].scaleX = var_f0 - (gActors[actor_index + 6].scaleY - var_f0) / 2;
    }
    else {
        gActors[actor_index + 6].scaleX = var_f0;
    }

    func_801A1C9C_7389FC(actor_index + 3);
    func_801A1C9C_7389FC(actor_index + 5);
}

void func_801A1E74_738BD4(u16 actor_index) {
    if (gActors[actor_index].state) {
        gActors[actor_index + 2].unk_114 = (f32)(gActors[actor_index].posX.whole + gScreenPosCurrentX.whole);
        gActors[actor_index + 2].unk_118 = (f32)(gActors[actor_index].posY.whole + gScreenPosCurrentY.whole);
        func_8002877C(actor_index + 7);
        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        gActors[actor_index].posZ.raw = (actor_index << 4) - FIXED_UNIT(1);
        if (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK1) {
            switch (gActors[actor_index + 1].hitByType) {
            case HITTYPE_2:
            case HITTYPE_BOOM_11:
            case HITTYPE_SHOCK_12:
            case HITTYPE_SHOCK_13:
            case HITTYPE_SHOCK_14:
            case HITTYPE_15:
            case HITTYPE_16:
            case HITTYPE_17:
            case HITTYPE_18:
            case HITTYPE_19:
            case HITTYPE_20:
            case HITTYPE_21:
            case HITTYPE_22:
            default:
                gActors[actor_index].state = 0x30;
                func_80081790(actor_index, D_801A5B00_73C860);
                gActors[actor_index + 7].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index + 7].flags &= ~ACTOR_FLAG_UNK16;
                gActors[actor_index + 7].velocityY.raw = gActors[actor_index + 1].unk_0FC.raw;
                gActors[actor_index + 7].velocityX.raw = gActors[actor_index + 1].unk_0F8.raw;
                if (gActors[actor_index + 7].velocityY.raw < FIXED_UNIT(3)) {
                    gActors[actor_index + 7].velocityY.raw = FIXED_UNIT(3);
                }

                gActors[actor_index + 1].iFrames = 6;
                Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
                break;

            case HITTYPE_23:
                break;
            }
        }

        func_800819A8(actor_index, D_801A5948_73C6A8);
        func_801A1D4C_738AAC(actor_index);
        if ((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) && func_80029044(actor_index + 1)) {
            gActors[actor_index + 1].flags_098 &= ~ACTOR_FLAG3_GRAB;
        }
    }
}

void func_801A206C_738DCC(u16 arg0) {
    gPlayerActor.flags_098 |= ACTOR_FLAG3_UNK16;
    gPlayerActor.unk_0F8.raw = 0;
    gPlayerActor.unk_0FC.raw = FIXED_UNIT(-1.0);
}

void func_801A2098_738DF8(u16 actor_index) {
    if (gActors[actor_index + 7].velocityY.raw > FIXED_UNIT(-4)) {
        gActors[actor_index + 7].velocityY.raw -= FIXED_UNIT(0.1875);
    }
}

void func_801A20EC_738E4C(u16 actor_index) {
    if (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) {
        if (gPlayerData.marina_Flags_098 & ACTOR_FLAG3_UNK4) {
            func_801A206C_738DCC(actor_index);
            func_801A2098_738DF8(actor_index);
        }
        else {
            gPlayerActor.iFrames = 60;
            if (gButtonHold & gButton_DLeft) {
                gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 7].velocityX.raw = Math_ApproachS32(gActors[actor_index + 7].velocityX.raw, FIXED_UNIT(-3.25), FIXED_UNIT(0.125));
            }
            else if (gButtonHold & gButton_DRight) {
                gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index + 7].velocityX.raw = Math_ApproachS32(gActors[actor_index + 7].velocityX.raw, FIXED_UNIT(3.25), FIXED_UNIT(0.125));
            }
            else {
                Actor_UpdateVelocityX(actor_index + 7, FIXED_UNIT(0.125));
            }

            if (gActors[actor_index + 7].velocityY.raw > FIXED_UNIT(-7.5)) {
                if (gButtonHold & gButton_DUp) {
                    gActors[actor_index + 7].velocityY.raw -= FIXED_UNIT(0.25);
                }
                else if (gButtonHold & gButton_DDown) {
                    gActors[actor_index + 7].velocityY.raw -= FIXED_UNIT(0.375);
                }
                else {
                    gActors[actor_index + 7].velocityY.raw -= FIXED_UNIT(0.3125);
                }
            }
        }
    }
    else {
        func_801A2098_738DF8(actor_index);
    }
}

void func_801A2290_738FF0(u16 actor_index) {
    func_801A1E74_738BD4(actor_index);
    gActors[actor_index + 2].unk_180 = 0;
    switch (gActors[actor_index].state) {
    case 0:
        func_801A1848_7385A8(actor_index);
        gActors[actor_index].state = 0x10;
        break;

    case 0x10:
        Actor_UpdateVelocityX(actor_index + 7, FIXED_UNIT(0.25));
        func_801A1718_738478(actor_index);
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801A5AC0_73C820);
        }
        else if (gActors[actor_index + 7].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state = 0x21;
            func_80081790(actor_index, D_801A5AD8_73C838);
            gActors[actor_index + 7].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index + 7].flags &= ~ACTOR_FLAG_UNK16;
        }
        break;

    case 0x11:
        if (gActors[actor_index + 7].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state = 0x21;
            func_80081790(actor_index, D_801A5AD8_73C838);
            gActors[actor_index + 7].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index + 7].flags &= ~ACTOR_FLAG_UNK16;
        }

        Actor_UpdateVelocityX(actor_index + 7, FIXED_UNIT(0.25));
        if (gActors[actor_index].unk_16C & 1) {
            func_801A1560_7382C0(actor_index);
        }

        func_801A1718_738478(actor_index);
        break;

    case 0x20:
        if (gActors[actor_index + 7].velocityY.raw < 0) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801A5AD8_73C838);
        }

        // fallthrough

    case 0x21:
    case 0x30:
        if (gActors[actor_index].state == 0x30) {
            func_80033E7C(
                actor_index,
                gActors[actor_index + 1].posX.whole,
                gActors[actor_index + 1].posY.whole + 12,
                gActors[actor_index].posZ.whole - 1,
                FIXED_UNIT(1),
                FIXED_UNIT(8),
                8
            );
        }

        func_801A20EC_738E4C(actor_index);
        func_801A1718_738478(actor_index);
        func_801A1644_7383A4(actor_index);
        break;
    }

    if (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index + 2].unk_180 = FIXED_UNIT(0.5);
    }

    if (gActors[actor_index + 1].health == 0) {
        func_801A1158_737EB8(actor_index);
        return;
    }

    if (gActors[actor_index + 7].velocityX.raw < 0) {
        gActors[actor_index].unk_138 = 1.0f;
    }

    if (gActors[actor_index + 7].velocityX.raw > 0) {
        gActors[actor_index].unk_138 = 0;
    }

    if (gActors[actor_index + 1].iFrames > 0) {
        gActors[actor_index + 1].iFrames--;
    }

    if ((u16)(u32)gActors[actor_index].var_110 & 0xF0) {
        func_80032E60(actor_index + 1, D_801A551C_73C27C[((u16)(u32)gActors[actor_index].var_110 & 0xF0) / 16], 0x100, 11.0f, 1, 1.0f, 1.0f);
    }
}

void func_801A2664_7393C4(u16 actor_index) {
    func_801A2290_738FF0(actor_index);
    if (gActors[actor_index + 2].unk_180 == 1) {
        if (gActors[actor_index + 2].unk_114 < gActors[actor_index + 2].unk_11C) {
            gActors[actor_index + 7].velocityX.raw = FIXED_UNIT(1);
        }
        else {
            gActors[actor_index + 7].velocityX.raw = FIXED_UNIT(-1);
        }
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A2720_739480(u16 actor_index) {
    func_801A2290_738FF0(actor_index);
    if (gActors[actor_index + 2].unk_180 == 1) {
        if (gActors[0].posX.whole < gActors[actor_index + 7].posX.whole) {
            gActors[actor_index + 7].velocityX.raw = FIXED_UNIT(-1);
        }
        else {
            gActors[actor_index + 7].velocityX.raw = FIXED_UNIT(1);
        }
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A27D8_739538(u16 actor_index) {
    func_801A2290_738FF0(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A283C_73959C(u16 actor_index) {
    func_801A2290_738FF0(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

s32 func_801A28A0_739600(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 1;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        Sound_PlaySfxAtActor2(SFX_GRAB_0030, actor_index);
        return 1;
    }

    return 0;
}

void func_801A2920_739680(u16 actor_index) {
    u16 temp_a2;
    u16 temp_v0;
    s32 var_a3;
    f32 temp_f0;
    f32 temp_f2;

    gActors[actor_index].unk_114 -= 1.0f;
    gActors[actor_index].posZ.raw = FIXED_UNIT(6);
    switch (gActors[actor_index].state) {
    case 0:
        if (gActors[actor_index].unk_118 > 0.0f) {
            if ((gActors[actor_index].var_0D8 & 0x1F) == 1) {
                gActors[actor_index].unk_118 -= 3.0f;
            }
            else {
                gActors[actor_index].unk_118 -= 1.0f;
            }

            gActors[actor_index].velocityX.raw += gActors[actor_index].var_158;
            gActors[actor_index].velocityY.raw += gActors[actor_index].var_15C;
        }
        else if ((gActors[actor_index].var_0D8 & 0x1F) == 1) {
            if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
                temp_a2 = func_8002C140(0x8000);
            }
            else {
                temp_a2 = 0;
            }

            var_a3 = Math_Atan2(gActors[temp_a2].posX.raw - gActors[actor_index].posX.raw, gActors[temp_a2].posY.raw - gActors[actor_index].posY.raw);
            gActors[actor_index].unk_170 = func_800298D0(TO_FIXED(var_a3), gActors[actor_index].unk_170, FIXED_UNIT(24));
            temp_f0 = COS(var_a3);
            gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw + temp_f0 * FIXED_UNIT(0.25);
            temp_f2 = SIN(var_a3);
            gActors[actor_index].velocityY.raw = (f32)gActors[actor_index].velocityY.raw + temp_f2 * FIXED_UNIT(0.25);
            var_a3 = gActors[actor_index].unk_170;
            if ((s32)(temp_f0 * FIXED_UNIT(7.5)) > 0) {
                if (gActors[actor_index].velocityX.raw > (s32)(temp_f0 * FIXED_UNIT(7.5))) {
                    gActors[actor_index].velocityX.raw = (s32)(temp_f0 * FIXED_UNIT(7.5));
                }
            }
            else if (gActors[actor_index].velocityX.raw < (s32)(temp_f0 * FIXED_UNIT(7.5))) {
                gActors[actor_index].velocityX.raw = (s32)(temp_f0 * FIXED_UNIT(7.5));
            }

            if ((s32)(temp_f2 * FIXED_UNIT(6)) > var_a3 * 0) {
                if (gActors[actor_index].velocityY.raw > (s32)(temp_f2 * FIXED_UNIT(6))) {
                    gActors[actor_index].velocityY.raw = (s32)(temp_f2 * FIXED_UNIT(6));
                }
            }
            else if (gActors[actor_index].velocityY.raw < (s32)(temp_f2 * FIXED_UNIT(6))) {
                gActors[actor_index].velocityY.raw = (s32)(temp_f2 * FIXED_UNIT(6));
            }

            if (gActors[actor_index].unk_170 < TO_FIXED(COS_DEG_90) || gActors[actor_index].unk_170 > TO_FIXED(COS_DEG_90 * 3)) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].unk_16C = gActors[actor_index].unk_170;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].unk_16C = TO_FIXED(COS_DEG_180) - gActors[actor_index].unk_170;
            }
        }

        func_801A28A0_739600(actor_index);
        break;

    case 1:
        gActors[actor_index].unk_114 = 180.0f;
        gActors[actor_index].unk_118 = -1.0f;
        switch (func_800291AC(actor_index, 0, 0x11A3, 0, 0x11A3)) {
        case 1:
            break;

        case 0:
            if (gActors[0].unk_140_u8[0] == 0) {
                var_a3 = FIXED_UNIT(255);
            }
            else {
                var_a3 = FIXED_UNIT(1);
            }

            gActors[actor_index].unk_16C = func_800298D0(var_a3, gActors[actor_index].unk_16C, FIXED_UNIT(40));
            break;

        case 2:
            var_a3 = Math_Atan2(gActors[actor_index].unk_0F8.raw, gActors[actor_index].unk_0FC.raw);
            gActors[actor_index].unk_170 = TO_FIXED(var_a3);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                var_a3 = COS_DEG_180 - var_a3;
            }

            gActors[actor_index].unk_16C = TO_FIXED(var_a3);
            Sound_PlaySfxAtActor2(SFX_002B, actor_index);
            break;

        case 3:
            gActors[actor_index].state = 0;
            var_a3 = FROM_FIXED(gActors[actor_index].unk_16C);
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                var_a3 += COS_DEG_180;
            }

            gActors[actor_index].velocityX.raw = COS(var_a3) * FIXED_UNIT(6.5);
            gActors[actor_index].velocityY.raw = SIN(var_a3) * FIXED_UNIT(6.5);
            gActors[actor_index].unk_170 = TO_FIXED(var_a3);
            Sound_PlaySfxAtActor2(SFX_002B, actor_index);
            break;
        }
        break;
    }

    if (gActors[actor_index].unk_114 < 0.0f) {
        gActors[actor_index].flags = 0;
        func_8003F7A0(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
        return;
    }

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB)) {
        gActors[actor_index].flags_098 |= func_8002BB04(actor_index);
    }

    temp_a2 = (u16)gActors[actor_index].unk_184_s16[1];
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)
        || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)
        || ((gActors[actor_index].var_0D8 & 1) && !(gActors[temp_a2].flags & ACTOR_FLAG_ACTIVE))
        || ((gActors[temp_a2].flags & ACTOR_FLAG_ACTIVE) && gActors[temp_a2].actorType != gActors[actor_index].unk_188)) {

        Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);

        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].var_110 = 0.5f;
        }
        else {
            gActors[actor_index].var_110 = 0.3f;
        }

        gActors[actor_index].flags = 0;
        if (!(gActors[actor_index].var_0D8 & 1)) {
            func_8003EEC0(gActors[actor_index].var_110, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
            temp_v0 = func_8003EEC0(gActors[actor_index].var_110 * 1.4, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 2);
            if (temp_v0) {
                gActors[temp_v0].var_154 /= 2;
            }

            SpawnParticle_RingWaveRed(gActors[actor_index].var_110 * 1.2, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 2);
            return;
        }

        func_8003F138(gActors[actor_index].var_110, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        return;
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a3 = -FROM_FIXED(gActors[actor_index].unk_16C);
    }
    else {
        var_a3 = FROM_FIXED(gActors[actor_index].unk_16C);
    }

    gActors[actor_index].rotateZ = INDEX_TO_DEG(var_a3);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a3 += COS_DEG_180;
    }

    if ((s32)gActiveFrames % 5 == 0) {
        temp_v0 = func_8003EEC0(0.3f, (s16)(s32)((f32)gActors[actor_index].posX.whole + COS(var_a3) * -8.0f),
            (s16)(s32)((f32)gActors[actor_index].posY.whole + SIN(var_a3) * -8.0f), gActors[actor_index].posZ.whole - 1);
        if (temp_v0) {
            gActors[temp_v0].velocityX.raw = COS(var_a3) * -FIXED_UNIT(1);
            gActors[temp_v0].velocityY.raw = SIN(var_a3) * -FIXED_UNIT(1);
        }
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A3290_739FF0(u16 actor_index) {
    Actor* actor;
    s32 temp_v0_2;
    u16 sp26;

    actor = &gActors[actor_index];
    if (--actor->var_150 < 0) {
        if (actor->flags & (ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9)) {
            func_8003F7A0(0.5f, actor->posX.whole, actor->posY.whole, 0);
        }

        actor->flags = 0;
        return;
    }

    actor->posZ.raw = FIXED_UNIT(6);
    switch (actor->state) {
    case 0:
        if (actor->unk_114 > 0.0f) {
            actor->unk_114 -= 1.0f;
            actor->velocityX.raw += actor->var_158;
            actor->velocityY.raw += actor->var_15C;
            actor->scaleY = Math_ApproachF32(actor->scaleY, 1.0f, 0.05f);
        }

        if ((actor->flags_098 & ACTOR_FLAG3_UNK0) || (actor->flags_098 & ACTOR_FLAG3_UNK1) || func_8002BB04(actor_index)) {
            actor->state++;
            actor->flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_FREEZE_POS);
            actor->var_150 = 20;
            sp26 = Rand();
            actor->velocityX.raw = (f64)((-(Rand() & 15) * FIXED_UNIT(0.375)) + FIXED_UNIT(3)) + (f64)(f32)-actor->velocityX.raw * (0.3 + (f64)((f32)(sp26 & 3) / 10.0f));
            sp26 = Rand();
            actor->velocityY.raw = (f64)((Rand() & 3) << 15) + ((f64)(f32)-actor->velocityY.raw * (0.3 + (f64)((f32)(sp26 & 3) / 10.0f)) + (f64)FIXED_UNIT(1));
            actor->scaleY = 1.0f;
            if ((actor->flags_098 & ACTOR_FLAG3_UNK1) && !(actor_index & 7)) {
                temp_v0_2 = SpawnGemActor61(actor_index, 0x31, 0);
                if (temp_v0_2) {
                    gActors[temp_v0_2].var_150 = 180;
                    gActors[temp_v0_2].velocityY.raw = FIXED_UNIT(5.5);
                }
            }
            else if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
                Sound_PlaySfxAtActor3(SFX_009A, actor_index);
            }
        }
        break;

    case 1:
        actor->velocityY.raw -= FIXED_UNIT(0.375);
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.0625));
        if (actor->flags & ACTOR_FLAG_FLIPPED) {
            actor->rotateZ += 30.0f;
        }
        else {
            actor->rotateZ -= 30.0f;
        }

        actor->scaleX -= 0.015;
        actor->colorA -= 10;
        break;
    }

    actor->flags_098 &= ACTOR_FLAG3_MASK_A;
}

// change gun's effect (and in japan, describe it)
void func_801A3664_73A3C4(u16 actor_index) {
    Actor* actor;
    u16* var_a1;

    actor = &gActors[actor_index];
    if (actor->unk_130 > 0.0f) {
        actor->unk_130 -= 1.0f;
    }
    else if (actor->flags_098 & ACTOR_FLAG3_SHAKE) {
        actor->unk_130 = 30.0f;
        var_a1 = NULL;
        switch (actor->unk_180) {
        case 2:
            var_a1 = D_801A5B78_73C8D8;
            actor->unk_180 = 3;
            break;

        case 3:
            var_a1 = D_801A5B68_73C8C8;
            actor->unk_180 = 2;
            break;

        case 0:
        case 1:
            var_a1 = D_801A5B9C_73C8FC;
            actor->unk_180 = 5;
            break;

        case 5:
            var_a1 = D_801A5B88_73C8E8;
            actor->unk_180 = 1;
            break;
        }

        actor->var_150 = 30;
        if (var_a1) {
            SpawnTextBubble(0, var_a1, 0, 40, 28);
            Sound_PlaySfxAtActor3(SFX_BLING, actor_index);
            SpawnParticle_RingWaveBlue(1.0f, actor->posX.whole, actor->posY.whole, actor->posZ.whole);
        }
    }
}

void func_801A37C0_73A520(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12;
    gActors[actor_index].graphicIndex = 0x3062;
    gActors[actor_index].unk_0CE = 10;
    gActors[actor_index].grabType = GRABTYPE_1;
    gActors[actor_index].unk_0DF = ACTOR0DF_0_2 | ACTOR0DF_6;
    gActors[actor_index].hitFlags = HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_2;
    gActors[actor_index].health = 500;
    gActors[actor_index].damage = 50;
    gActors[actor_index].unk_17C = 960;
    Actor_SetHitboxA(actor_index, 10);
    Actor_SetHitboxB(actor_index, 8);
}

void func_801A3874_73A5D4(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12;
    gActors[actor_index].graphicIndex = 0x305A;
    gActors[actor_index].unk_0CE = 10;
    gActors[actor_index].grabType = GRABTYPE_1;
    gActors[actor_index].unk_0DF = ACTOR0DF_6;
    gActors[actor_index].hitFlags = HITFLAG_2;
    gActors[actor_index].hitType = HITTYPE_2;
    gActors[actor_index].health = 500;
    gActors[actor_index].damage = 20;
    gActors[actor_index].unk_17C = 960;
    Actor_SetHitboxA(actor_index, 10);
    Actor_SetHitboxB(actor_index, 8);
}

void func_801A3928_73A688(u16 actor_index) {
    u16 var_a3;

    var_a3 = (u16)gActors[actor_index].var_110;
    gActors[actor_index].posZ.raw = gActors[var_a3].posZ.raw + gActors[actor_index].var_158;
    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= gActors[var_a3].flags & ACTOR_FLAG_FLIPPED;
    gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 1);
    gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, 0, 2);
    func_800330A4(
        actor_index,
        var_a3,
        gActors[actor_index].var_150 + gActors[actor_index].var_160,
        (f32)(gActors[actor_index].var_154 + gActors[actor_index].var_15C + (gActiveFrames & 8) / 8)
    );
}

s32 func_801A3AC4_73A824(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
        gActors[actor_index].state = 3;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK17;
        gActors[actor_index].var_150 = 20;
        gActors[actor_index].unk_188 |= 0x8000;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_130 = 0.0f;
        Sound_PlaySfxAtActor2(SFX_MECHSTEP_0059, actor_index);
        return 1;
    }

    return 0;
}

void func_801A3B64_73A8C4(u16 actor_index) {
    gActors[actor_index].state = 4;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
    gActors[actor_index].grabType = GRABTYPE_1;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
    Actor_SetHitboxB(actor_index, 8);
    gActors[actor_index].unk_130 = 0.0f;
}

s32 func_801A3BF0_73A950(u16 actor_index) {
    gActors[actor_index].unk_16C = 0;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 5;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;\
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        return 1;
    }

    return 0;
}

s32 func_801A3C6C_73A9CC(u16 actor_index) {
    s32 var_a0;
    s32 var_v0;

    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.078125));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.625)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
    }

    if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
        var_a0 = 16;
    }
    else {
        var_a0 = 8;
    }

    var_v0 = gActors[actor_index].velocityX.raw * var_a0;
    if (var_v0 > 0) {
        var_v0 = -var_v0;
    }

    var_a0 = FIXED_UNIT(var_a0);
    if (-var_a0 < var_v0) {
        gActors[actor_index].unk_16C += var_a0;
    }
    else {
        gActors[actor_index].unk_16C += var_v0;
    }

    gActors[actor_index].unk_16C &= 0x3FFFFFF;
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)
        || (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))
        || (gActors[actor_index].velocityX.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 0.7;
    }

    if (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw;
    }

    if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].velocityX.raw = (f32)gActors[actor_index].velocityX.raw * 0.7;
        gActors[actor_index].unk_16C = 0;
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2)) {
            gActors[actor_index].velocityY.raw = (f32)-gActors[actor_index].velocityY.raw * 0.7;
        }
        else {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        }
    }

    return 0;
}

// fire from gun?
void func_801A3EE8_73AC48(u16 actor_index) {
    func_801A3664_73A3C4(actor_index);
    if (gActors[actor_index].var_150 >= 0) {
        --gActors[actor_index].var_150;
    }

    switch (gActors[actor_index].unk_180) {
    case 0:
    case 1:
        if (gActors[actor_index].var_150 < 0 && func_80074938(actor_index, 1)) {
            gActors[actor_index].var_150 = 14;
        }
        break;

    case 2:
        if (gActors[actor_index].var_150 < 0 && func_80074D28(actor_index, 1)) {
            gActors[actor_index].var_150 = 4;
        }
        break;

    case 3:
        if (gActors[actor_index].var_150 < 0 && func_8007502C(actor_index, 1)) {
            gActors[actor_index].var_150 = 7;
        }
        break;

    case 4:
        if (gActors[actor_index].var_150 < 0 && func_8007502C(actor_index, 3)) {
            gActors[actor_index].var_150 = 10;
        }
        break;

    case 5:
        func_8002C044();
        if (gActors[actor_index].var_150 < 0 && func_80074938(actor_index, 0x101)) {
            gActors[actor_index].var_150 = 14;
        }
        break;
    }
}

// behavior of rifles and missle launchers
void func_801A406C_73ADCC(u16 actor_index) {
    s32 var_a0;
    u16 temp_a0;

    if (gActors[actor_index].state == 4 &&
        Clanpot_AddItemCheck3(actor_index, 0, 0, 0, gActors[actor_index].graphicIndex) >= 0) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].state = 7;
    }

    if (gActors[actor_index].state != 0) {
        if (gActors[actor_index].state != 7) {
            func_8002877C(actor_index);
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 18);
            if (gActors[actor_index].grabType == 1 && (gActors[actor_index].unk_188 & 0x8000)) {
                if (--gActors[actor_index].unk_17C < 0) {
                    gActors[actor_index].flags = 0;
                    func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
                    Sound_PlaySfxAtActor2(SFX_BOOM_0055, actor_index);
                    return;
                }

                if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && (gActors[actor_index].unk_17C == 120 || gActors[actor_index].unk_17C == 90 || gActors[actor_index].unk_17C == 60)) {
                    Sound_PlaySfxAtActor2(SFX_WARN_0106, actor_index);
                }

                if (gActors[actor_index].unk_17C < 120 && gActors[actor_index].colorR == 0) {
                    gActors[actor_index].colorR = 127;
                }
            }
        }
    }
    else {
        gActors[actor_index].state = 1;
        gActors[actor_index].unk_180 = gActors[actor_index].var_0D8 & 0x1F;
        gActors[actor_index].unk_114 = 3.0f;
        switch (gActors[actor_index].unk_180) {
        case 0:
            func_801A37C0_73A520(actor_index);
            gActors[actor_index].var_150 = 240;
            gActors[actor_index].var_154 = 36;
            gActors[actor_index].var_158 = -2;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
            break;

        case 1:
            func_801A37C0_73A520(actor_index);
            gActors[actor_index].var_150 = 256;
            gActors[actor_index].var_154 = 24;
            gActors[actor_index].var_158 = 1;
            break;

        case 2:
            func_801A3874_73A5D4(actor_index);
            gActors[actor_index].var_150 = 256;
            gActors[actor_index].var_154 = 11;
            gActors[actor_index].var_158 = -1;
            break;
        }

        if (gActors[actor_index].var_0D8 & 0x100) {
            func_801A3B64_73A8C4(actor_index);
            gActors[actor_index].state = 4;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;
            gActors[actor_index].grabType = 1;
        }
    }

    switch (gActors[actor_index].state) {
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state = 3;
            gActors[actor_index].colorR = 127;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK15;
            gActors[actor_index].unk_188 |= 0x8000;
            gActors[actor_index].var_150 = 35;
            gActors[actor_index].unk_16C = 0;
            Sound_PlaySfxAtActor2(SFX_MECHSTEP_0059, actor_index);
        }
        else {
            temp_a0 = (u16)(u32)gActors[actor_index].var_110;
            if (!(gActors[temp_a0].flags & ACTOR_FLAG_ACTIVE)) {
                func_801A3B64_73A8C4(actor_index);
                gActors[actor_index].unk_188 |= 0x8000;
            }
            else {
                func_801A3928_73A688(actor_index);
            }
        }
        break;

    case 2:
    case 3:
        switch (func_800291AC(actor_index, 4, 0x210A3, 4, 0x21023)) {
        case 1:
        case 2:
        case 3:
            break;

        case 0:
            if ((gButtonHold & gButton_DUp) && ((gButtonHold & gButton_DLeft) || (gButtonHold & gButton_DRight))) {
                var_a0 = FIXED_UNIT(128);
            }
            else if (gButtonHold & gButton_DUp) {
                var_a0 = FIXED_UNIT(255);
            }
            else if (gButtonHold & gButton_DDown) {
                var_a0 = FIXED_UNIT(896);
            }
            else {
                var_a0 = FIXED_UNIT(1);
            }

            gActors[actor_index].unk_16C = func_800298D0(var_a0, gActors[actor_index].unk_16C, FIXED_UNIT(14));
            func_801A3EE8_73AC48(actor_index);
            break;
        }
        break;

    case 4:
        gActors[actor_index].posZ.raw = FIXED_UNIT(6);
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
            func_801A3EE8_73AC48(actor_index);
        }

        func_801A3C6C_73A9CC(actor_index);
        func_801A3AC4_73A824(actor_index);
        break;

    case 7:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state = 3;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].var_150 = 20;
            gActors[actor_index].unk_188 |= 0x8000;
            gActors[actor_index].unk_17C = 1800;
            gActors[actor_index].unk_130 = 0;
        }
        break;
    }

    if (gActors[actor_index].iFrames > 0) {
        gActors[actor_index].iFrames--;
    }

    if (gActors[actor_index].state >= 3 && (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].rotateZ = INDEX_TO_DEG(-(gActors[actor_index].unk_16C / FIXED_UNIT(1)));
        }
        else {
            gActors[actor_index].rotateZ = INDEX_TO_DEG(gActors[actor_index].unk_16C / FIXED_UNIT(1));
        }
    }

    temp_a0 = gActors[actor_index].colorR;
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
    gActors[actor_index].colorG = temp_a0;
    gActors[actor_index].colorB = temp_a0;
}

void func_801A4730_73B490(u16 arg0) {
    func_801A1D4C_738AAC(arg0);
}

void func_801A4758_73B4B8(u16 arg0) {
}

void func_801A4760_73B4C0(u16 arg0) {
}
