#include "common.h"

typedef struct {
    u8 unk0;
    u8 red;
    u8 green;
    u8 blue;
    u16 unk4;
    u8 pad6[2];
    s32 unk8[3];
    u8 pad14[4];
    s32 unk18;
    s32 unk1C;
    f32 unk20;
} Unk_func_8005A930_Arg0;

extern ActorFunc D_800D3FD0[];
extern u16 D_800D82EA;
extern u16 D_800D84C8[];

extern s32 D_8013745C;
extern u16 D_80137480[];

u16 func_800592A0(u16 actor_index, s32* arg1) {
    u16 free_actor;

    if (actor_index < 0x10) {
        free_actor = Actor_RangeFindInactive(0x10, 0x2D);
    }
    else {
        free_actor = Actor_RangeFindInactive(0x90, 0xC0);
    }
    if (free_actor == 0) {
        return free_actor;
    }
    gActors[free_actor].actorType = 9;
    Actor_Initialize(free_actor);
    gActors[free_actor].graphicFlags |= gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5);
    gActors[free_actor].flags |= (gActors[actor_index].flags & (ACTOR_FLAG_FLIPPED | ACTOR_FLAG_FREEZE_POS)) | ACTOR_FLAG_UNK19;
    gActors[free_actor].colorA = 0xFE;
    gActors[free_actor].posX.raw = arg1[0] << 0x10;
    gActors[free_actor].posY.raw = arg1[1] << 0x10;
    gActors[free_actor].posZ.raw = arg1[2] << 0x10;
    gActors[free_actor].unk_130 = -1.0f;
    return free_actor;
}

void func_800593DC(u16 actor_index) {
    s16 index;
    u16 actor_1;
    s32 pad;
    s32 sp4C[5];

    sp4C[0] = -0x10;
    sp4C[1] = -0x40;
    sp4C[2] = 10;
    actor_1 = func_800592A0(actor_index, sp4C);
    if (actor_1 == 0) {
        return;
    }

    gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_1].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_1].graphicIndex = 0x128;
    gActors[actor_1].unk_148 = 0.0f;
    if (!(D_801373E0.unk_7C & 0x2)) {
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_ROTZ;
        gActors[actor_1].var_160 = 0x01000000;
    }
    sp4C[0] += 0x10;
    actor_1 = func_800592A0(actor_index, sp4C);
    if (actor_1 == 0) {
        return;
    }

    gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_1].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_1].graphicIndex = 0x110;
    gActors[actor_1].unk_148 = 0.0f;
    sp4C[0] += 0x10;
    actor_1 = func_800592A0(actor_index, sp4C);
    if (actor_1 == 0) {
        return;
    }

    gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_1].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_1].graphicIndex = 0x10E;
    gActors[actor_1].unk_148 = 0.0f;
    sp4C[0] = 0;
    sp4C[1] = -0x28;
    for (index = D_801373E0.unk_0A; index > 0; index--) {
        actor_1 = func_800592A0(actor_index, sp4C);
        if (actor_1 == 0) {
            return;
        }
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_1].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_1].graphicIndex = 0x12E;
        gActors[actor_1].unk_148 = 0.0f;
        gActors[actor_1].scaleX = 0.75f;
        gActors[actor_1].scaleY = 0.75f;
        gActors[actor_1].var_160 = 0x03000000;
        sp4C[1] += 8;
        sp4C[2] -= 1;
    }
}

u16 func_80059624(u16 actor_index, f32 scale, u16* arg2) {
    s32 sp9C[5];
    s32 pad;
    s32 index;
    u16 actor_1;
    u16 actor_2;

    sp9C[0] = gActors[actor_index].posX.whole + ((gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1) / 2);
    sp9C[1] = gActors[actor_index].posY.whole + ((gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1) / 2);
    sp9C[2] = gActors[actor_index].posZ.whole + 1;
    actor_1 = gActors[actor_index].parentIndex;
    if (actor_1 != 0xFFFF) {
        if (func_8005C6D0(gActors[actor_1].hitboxBX1 - gActors[actor_1].hitboxBX0) < 0x30) {
            sp9C[0] = (gActors[actor_1].posX.whole + sp9C[0] + ((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2)) / 2;
        }
        if (func_8005C6D0(gActors[actor_1].hitboxBY0 - gActors[actor_1].hitboxBY1) < 0x30) {
            sp9C[1] = (gActors[actor_1].posY.whole + sp9C[1] + ((gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1) / 2)) / 2;
        }
        if (gActors[actor_index].posZ.whole > gActors[actor_1].posZ.whole) {
            sp9C[2] = gActors[actor_index].posZ.whole + 1;
        }
        else {
            sp9C[2] = gActors[actor_1].posZ.whole + 1;
        }
    }
    actor_2 = func_800592A0(actor_index, sp9C);
    if (actor_2 == 0) {
        return actor_2;
    }

    gActors[actor_2].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_2].graphicIndex = 0x168;
    gActors[actor_2].scaleX = 0.5 * scale;
    gActors[actor_2].scaleY = 0.5 * scale;
    gActors[actor_2].var_110 = -gActors[actor_2].scaleX / 30.0;
    gActors[actor_2].unk_114 = -gActors[actor_2].scaleY / 30.0;
    gActors[actor_2].colorA = 0xC0;
    gActors[actor_2].var_154 = -0xA;
    gActors[actor_2].unk_148 = 20.0f;
    gActors[actor_2].palette_18C = arg2;

    for (index = 0; index < 5; index++) {
        actor_1 = func_800592A0(actor_index, sp9C);
        if (actor_1 == 0) {
            break;
        }
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_1].posZ.raw -= 1;
        if (!(Rand() & 1)) {
            gActors[actor_1].graphicIndex = GINDEX_STAREFFECT;
        }
        else {
            gActors[actor_1].graphicIndex = GINDEX_CONE;
        }
        gActors[actor_1].unk_148 = 20.0f;
        gActors[actor_1].scaleX = 2.0 * scale;
        gActors[actor_1].scaleY = 0.1 * scale;
        gActors[actor_1].var_110 = -gActors[actor_1].scaleX / 30.0;
        gActors[actor_1].unk_114 = -gActors[actor_1].scaleY / 30.0;
        gActors[actor_1].var_154 = -0xF;
        gActors[actor_1].var_160 = Rand() << 0x12;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_1].var_150 = -0x100000;
        }
        else {
            gActors[actor_1].var_150 = 0x100000;
        }
        gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
        gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
        gActors[actor_1].unk_140_f32 = func_8005C708(10);
        gActors[actor_1].unk_144 = 0.0f;
        gActors[actor_1].palette_18C = arg2;
    }
    return actor_2;
}

u16 func_80059ABC(u16 actor_index, f32 scale) {
    s32 sp34[5];
    s32 pad;
    u16 actor_1;

    actor_1 = gActors[actor_index].parentIndex;
    sp34[0] = gActors[actor_index].posX.whole + ((gActors[actor_index].hitboxAX0 + gActors[actor_index].hitboxAX1) / 2);
    sp34[1] = gActors[actor_index].posY.whole + ((gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1) / 2);
    sp34[2] = gActors[actor_index].posZ.whole + 1;
    if (actor_1 != 0xFFFF) {
        if (func_8005C6D0(gActors[actor_1].hitboxBX1 - gActors[actor_1].hitboxBX0) < 0x30) {
            sp34[0] = (gActors[actor_1].posX.whole + sp34[0] + ((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2)) / 2;
        }
        if (func_8005C6D0(gActors[actor_1].hitboxBY0 - gActors[actor_1].hitboxBY1) < 0x30) {
            sp34[1] = (gActors[actor_1].posY.whole + sp34[1] + ((gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1) / 2)) / 2;
        }
        if (gActors[actor_1].posZ.whole < gActors[actor_index].posZ.whole) {
            sp34[2] = gActors[actor_index].posZ.whole + 1;
        }
        else {
            sp34[2] = gActors[actor_1].posZ.whole + 1;
        }
    }
    actor_1 = func_800592A0(actor_index, sp34);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = 0x19A;
    gActors[actor_1].colorA = 0xE0;
    gActors[actor_1].var_154 = -5;
    gActors[actor_1].unk_148 = 60.0f;
    gActors[actor_1].scaleX = scale;
    gActors[actor_1].scaleY = scale;
    gActors[actor_1].unk_114 = -gActors[actor_1].scaleY / 30.0f;
    gActors[actor_1].var_110 = -gActors[actor_1].scaleX / 30.0f;
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_1].var_150 = 0x220000;
    }
    else {
        gActors[actor_1].var_150 = -0x220000;
    }
    gActors[actor_1].palette_18C = PALETTE_8022D568;
    return actor_1;
}

u16 func_80059D88(u16 actor_index, s32* arg1, s32 unused_arg2, f32 scale) {
    s32 pad;
    u16 actor_1;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        arg1[0] = -arg1[0];
    }
    arg1[0] += gActors[actor_index].posX.whole;
    arg1[1] += gActors[actor_index].posY.whole;
    arg1[2] += gActors[actor_index].posZ.whole;
    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = 0x194;
    gActors[actor_1].colorA = 0xE0;
    gActors[actor_1].var_154 = -7;
    gActors[actor_1].unk_148 = 60.0f;
    gActors[actor_1].scaleX = scale / 2;
    gActors[actor_1].scaleY = scale / 2;
    gActors[actor_1].unk_114 = (scale / 30.0f) / 2;
    gActors[actor_1].var_110 = (scale / 30.0f) / 2;
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_1].var_150 = 0x220000;
    }
    else {
        gActors[actor_1].var_150 = -0x220000;
    }
    if (arg1[4] == 0) {
        gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
    else {
        gActors[actor_1].unk_18C = arg1[4];
    }
    return actor_1;
}

u16 func_80059F30(u16 actor_index, s32* arg1, f32 scale, s32 arg3) {
    u16 actor_1;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = arg1[3];
    if (arg1[4] == 0) {
        gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
    else {
        gActors[actor_1].unk_18C = arg1[4];
    }
    gActors[actor_1].scaleX = scale;
    gActors[actor_1].scaleY = scale;
    gActors[actor_1].unk_148 = arg3;
    if (arg3 == 0) {
        return actor_1;
    }
    gActors[actor_1].var_154 = -(200 / arg3);
    gActors[actor_1].var_110 = scale / arg3;
    gActors[actor_1].unk_114 = scale / arg3;
    gActors[actor_1].unk_118 = -gActors[actor_1].var_110 / arg3;
    gActors[actor_1].unk_11C = -gActors[actor_1].unk_114 / arg3;
    return actor_1;
}

u16 func_8005A068(u16 actor_index, s32* arg1, s32 angle, f32 scale, s32 arg4) {
    u16 actor_1;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = arg1[3];
    if (arg1[4] == 0) {
        gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
    else {
        gActors[actor_1].unk_18C = arg1[4];
    }
    gActors[actor_1].scaleX = scale;
    gActors[actor_1].scaleY = scale;
    gActors[actor_1].var_160 = angle;
    gActors[actor_1].unk_148 = arg4;
    if (arg4 == 0) {
        return actor_1;
    }
    gActors[actor_1].var_154 = -(200 / arg4);
    gActors[actor_1].var_110 = scale / arg4;
    gActors[actor_1].unk_114 = scale / arg4;
    gActors[actor_1].unk_118 = -gActors[actor_1].var_110 / arg4;
    gActors[actor_1].unk_11C = -gActors[actor_1].unk_114 / arg4;
    return actor_1;
}

u16 func_8005A1A4(u16 actor_index, s32* arg1, f32 scale) {
    u16 actor_1;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = 0x16A;
    gActors[actor_1].unk_148 = 20.0f;
    gActors[actor_1].var_154 = -0xA;
    gActors[actor_1].scaleY = scale * 0.8;
    gActors[actor_1].scaleX = scale * 0.8;
    gActors[actor_1].var_110 = -0.05f;
    gActors[actor_1].unk_114 = -0.05f;
    gActors[actor_1].palette_18C = PALETTE_8022D568;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = GINDEX_STAREFFECT;
    gActors[actor_1].unk_148 = 20.0f;
    gActors[actor_1].var_154 = -0xA;
    gActors[actor_1].var_150 = 0x100000;
    gActors[actor_1].scaleY = scale * 1.0;
    gActors[actor_1].scaleX = scale * 1.0;
    gActors[actor_1].unk_114 = -0.05f;
    gActors[actor_1].var_110 = -0.05f;
    gActors[actor_1].palette_18C = PALETTE_8022D4E8;
    return actor_1;
}

u16 func_8005A320(u16 actor_index, s32* arg1, s32 angle, f32 scale) {
    u16 actor_1;

    arg1[2]--;
    if (arg1[3] == 0) {
        arg1[3] = 0x18E;
    }
    if (angle == 0) {
        actor_1 = func_80059F30(actor_index, arg1, scale, 0x14);
    }
    else {
        actor_1 = func_8005A068(actor_index, arg1, angle, scale, 0x14);
    }
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].velocityX.raw = SIN(FROM_FIXED(angle)) * (0 * scale);
    gActors[actor_1].velocityY.raw = COS(FROM_FIXED(angle)) * -(0 * scale);
    gActors[actor_1].scaleX = scale / 2;
    gActors[actor_1].scaleY = scale / 4;
    gActors[actor_1].unk_11C *= 2;
    return actor_1;
}

u16 func_8005A4B0(u16 actor_index, f32 scale) {
    s32 sp2C[5];
    u16 actor_1;

    sp2C[0] = gActors[actor_index].posX.whole;
    sp2C[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
    sp2C[2] = gActors[actor_index].posZ.whole + 1;
    sp2C[3] = 0x1AC;
    sp2C[4] = 0;
    actor_1 = func_80059F30(actor_index, sp2C, (f64)scale, 0x14);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_1].velocityX.raw = 65536.0f * scale;
    gActors[actor_1].var_158 = -gActors[actor_1].velocityX.raw / 20;
    gActors[actor_1].var_15C = 1024.0f * scale;
    actor_1 = func_80059F30(actor_index, sp2C, (f64)scale, 0x14);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].flags |= ACTOR_FLAG_FLIPPED;
    gActors[actor_1].velocityX.raw = -65536.0f * scale;
    gActors[actor_1].var_15C = 1024.0f * scale;
    gActors[actor_1].var_158 = -gActors[actor_1].velocityX.raw / 20;
    return actor_1;
}

u16 func_8005A6D0(u16 actor_index, s32* arg1, s32 arg2) {
    u16 actor_1;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_1].graphicIndex = 0x166;
    gActors[actor_1].colorA = 0xA0;
    gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
    gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_148 = 1.0f;
    gActors[actor_1].unk_140_f32 = -20.0f;
    gActors[actor_1].unk_144 = 0.0f;
    gActors[actor_1].var_160 = arg2;
    if (arg1[4] == 0) {
        gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
    else {
        gActors[actor_1].unk_18C = arg1[4];
    }
    return actor_1;
}



u16 func_8005A7D0(u16 actor_index, s32* arg1, f32 arg2, f32 arg3) {
    u16 actor_1;

    actor_1 = func_800592A0(actor_index, arg1);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_1].graphicIndex = GINDEX_GROUNDFLAME;
    gActors[actor_1].unk_148 = 60.0f;
    gActors[actor_1].var_154 = -3;
    if (arg1[4] == 0) {
        gActors[actor_1].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
    }
    else {
        gActors[actor_1].unk_18C = arg1[4];
    }
    gActors[actor_1].unk_144 = 23.0f;
    gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
    gActors[actor_1].unk_140_f32 = 0.0f;
    gActors[actor_1].scaleX = gActors[actor_1].scaleY = 0.0f;
    gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
    arg2 *= 3.0;
    arg3 *= 3.0;
    gActors[actor_1].var_110 = arg2 / 120.0f;
    gActors[actor_1].unk_114 = arg3 / 30.0f;
    gActors[actor_1].unk_118 = -gActors[actor_1].unk_114 / 180;
    gActors[actor_1].unk_11C = -gActors[actor_1].unk_114 / 32;
    return actor_1;
}

s32 func_8005A930(Unk_func_8005A930_Arg0* arg0) {
    f32 temp_f20;
    s32 temp_f4;
    s32 temp_v1_2;
    s32 angle;
    u16 index;
    s32 var_s3;
    u16 actor_index;

    var_s3 = arg0->unk20;
    Palette_AdjustRgb5551Array(&D_800D82EA, &D_800D84C8[1], 0xF, arg0->blue / 8, arg0->green / 8, arg0->red / 8);
    for (index = 0; index < 8; index++) {
        actor_index = func_800592A0(arg0->unk4, arg0->unk8);
        if (actor_index == 0) {
            return 0;
        }
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_index].unk_148 = 0.0f;
        gActors[actor_index].unk_184 = gActors[actor_index].posX.raw;
        gActors[actor_index].unk_188 = gActors[actor_index].posY.raw;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_140_f32 = 8.0f;
        }
        else {
            gActors[actor_index].unk_140_f32 = -8.0f;
        }
        gActors[actor_index].unk_144 = 0.0f;
        if (arg0->unk18 == 0) {
            gActors[actor_index].graphicIndex = 0x162;
        }
        else {
            gActors[actor_index].graphicIndex = arg0->unk18;
        }
        gActors[actor_index].unk_18C = (s32)D_800D84C8; // palette_18C doesn't match instruction ordering
        temp_f20 = arg0->unk20 / (((Rand() % arg0->unk0) * 16) + 32);
        gActors[actor_index].scaleX = temp_f20;
        temp_v1_2 = (Rand() << 0x10) + arg0->unk1C - 0x800000;
        gActors[actor_index].var_160 = temp_v1_2;
        temp_f4 = (16 * temp_f20);
        angle = FROM_FIXED(temp_v1_2);
        arg0->unk8[0] += (temp_f4 * COS(angle));
        arg0->unk8[1] += (temp_f4 * SIN(angle));
        var_s3 -= temp_f4;
        if (var_s3 < 0) {
            break;
        }
    }
    return 1;
}

void func_8005ACA8(s32 arg0) {
}

void func_8005ACB0(u16 actor_index, u8 arg1, u8 arg2) {
    s32 sp54[5];
    s32 var_s0;
    s32 var_t2;
    s32 var_v0;
    s32 var_v1;
    u16 actor_1;

    sp54[0] = gActors[actor_index].posX.whole;
    sp54[1] = gActors[actor_index].posY.whole;
    sp54[2] = gActors[actor_index].posZ.whole - 1;
    sp54[4] = (intptr_t)PALETTE_8022D528;
    var_t2 = 0;
    var_s0 = 0x01000000;
    var_v0 = 0;
    switch (arg1) {
    case 0:
        var_v1 = -10;
        var_v0 = 0x400000;
        break;
    case 8:
        var_v1 = -10;
        var_s0 = -0x1000000;
        var_v0 = -0x400000;
        break;
    default:
        var_v1 = -12;
        var_t2 = 4;
        var_v0 = 0x01000000;
        break;
    }
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        if (arg1 >= 9) {
            sp54[0] += var_v1;
            var_s0 += var_v0 * 0.7;
        }
        else {
            sp54[0] += var_v1;
            sp54[1] += var_t2;
            var_s0 -= var_v0;
        }
    }
    else {
        if (arg1 && (arg1 < 8)) {
            sp54[0] -= var_v1;
            var_s0 -= var_v0 * 0.7;
        }
        else {
            sp54[0] -= var_v1;
            sp54[1] += var_t2;
            var_s0 += var_v0;
        }
    }
    actor_1 = func_8005A6D0(actor_index, sp54, var_s0);
    if (actor_1 == 0) {
        return;
    }
    gActors[actor_1].unk_130 = actor_index;
    gActors[actor_1].unk_14C = gActors[actor_index].actorType;
    gActors[actor_1].unk_134 = gActors[actor_1].posX.whole - gActors[actor_index].posX.whole;
    gActors[actor_1].unk_138 = gActors[actor_1].posY.whole - gActors[actor_index].posY.whole;
    gActors[actor_1].unk_13C_f32 = gActors[actor_1].posZ.raw - gActors[actor_index].posZ.raw;
    gActors[actor_1].posZ.raw++;
    if (arg2 & 1) {
        gActors[actor_1].graphicIndex = 0x1B2;
        gActors[actor_1].scaleX = 0.5f;
        gActors[actor_1].scaleY = 1.0 - (arg2 * 0.05);
    }
    else {
        gActors[actor_1].graphicIndex = 0x1B4;
        gActors[actor_1].scaleX = 1.0 - (arg2 * 0.04);
        gActors[actor_1].scaleY = 0.3f;
    }
    if (!arg2) {
        sp54[3] = 0x182;
        sp54[4] = (intptr_t)PALETTE_8022D568;
        actor_1 = func_8005A068(actor_index, sp54, var_s0, 0.7f, 8);
        if (actor_1 == 0) {
            return;
        }
        gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_1].unk_130 = actor_index;
        gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
        gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
        gActors[actor_1].unk_140_f32 = -4.0f;
        gActors[actor_1].unk_144 = 0.0f;
        gActors[actor_1].unk_134 = gActors[actor_1].posX.whole - gActors[actor_index].posX.whole;
        gActors[actor_1].unk_138 = gActors[actor_1].posY.whole - gActors[actor_index].posY.whole;
        gActors[actor_1].unk_13C_f32 = gActors[actor_1].posZ.raw - gActors[actor_index].posZ.raw;
        gActors[actor_1].unk_14C = gActors[actor_index].actorType;
    }
}

void func_8005B164(u16 actor_index) {
    func_8005ACB0(actor_index, gActors[actor_index].unk_180_u8[2], gActors[actor_index].unk_180_u8[0]);
    gActors[actor_index].unk_180_u8[0]++;
    if (gActors[actor_index].unk_180_u8[0] >= 0x10) {
        gActors[actor_index].unk_180_u16[0] = 0;
    }
}

void func_8005B1E8(u16 actor_index) {
    s32 sp2C[5];
    u16 actor_1;
    u8 temp_v0;

    if ((((s32)D_8013745C + actor_index) % 5) == 0) {
        if ((actor_index >= 0x10) || gActors[actor_index].unk_0A0) {
            sp2C[0] = gActors[actor_index].posX.whole;
            sp2C[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
            sp2C[2] = gActors[actor_index].posZ.whole + 1;
            actor_1 = func_800592A0(actor_index, sp2C);
            if (!actor_1) {
                return;
            }
            gActors[actor_1].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
            gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
            gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
            gActors[actor_1].graphicIndex = 0x1D8;
            gActors[actor_1].var_154 = -10;
            gActors[actor_1].unk_140_f32 = 0.0f;
            gActors[actor_1].unk_144 = 4.0f;
            gActors[actor_1].unk_148 = 20.0f;
            gActors[actor_1].var_110 = 0.06f;
            gActors[actor_1].unk_118 = -0.008f;
            gActors[actor_1].unk_114 = 0.1f;
            gActors[actor_1].unk_11C = -0.01f;
            temp_v0 = func_8005D1B0(actor_index);
            switch (temp_v0) {
            default:
                gActors[actor_1].scaleX = 1.0f;
                gActors[actor_1].scaleY = 1.0f;
                break;
            case 0:
                gActors[actor_1].scaleX = 0.7f;
                gActors[actor_1].scaleY = 0.7f;
                break;
            case 1:
                gActors[actor_1].scaleX = 1.0f;
                gActors[actor_1].scaleY = 1.0f;
                break;
            case 2:
                gActors[actor_1].scaleX = 1.5f;
                gActors[actor_1].scaleY = 1.5f;
                break;
            }
        }
    }
}

void func_8005B3F4(u16 actor_index) {
    s32 sp2C[5];
    u16 actor_1;
    u8 temp_v0_2;

    if (((s32)D_8013745C + actor_index) % 4) {
        return;
    }
    if ((actor_index >= 0x10) || gActors[actor_index].unk_0A0) {
        sp2C[0] = gActors[actor_index].posX.whole + func_8005C708(gButton_RTrig / 2);
        sp2C[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1;
        sp2C[2] = gActors[actor_index].posZ.whole + 1;
        actor_1 = func_800592A0(actor_index, sp2C);
        if (!actor_1) {
            return;
        }
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_1].graphicIndex = 0x1C6;
        gActors[actor_1].var_154 = -0xA;
        gActors[actor_1].unk_148 = 20.0f;
        gActors[actor_1].var_110 = 0.06f;
        gActors[actor_1].unk_118 = -0.008f;
        gActors[actor_1].unk_114 = 0.1f;
        gActors[actor_1].unk_11C = -0.01f;
        temp_v0_2 = func_8005D1B0(actor_index);
        switch (temp_v0_2) {
        default:
            gActors[actor_1].scaleX = 0.1f;
            gActors[actor_1].scaleY = 0.1f;
            break;
        case 0:
            gActors[actor_1].scaleX = 0.05f;
            gActors[actor_1].scaleY = 0.05f;
            break;
        case 1:
            gActors[actor_1].scaleX = 0.1f;
            gActors[actor_1].scaleY = 0.1f;
            break;
        case 2:
            gActors[actor_1].scaleX = 0.2f;
            gActors[actor_1].scaleY = 0.2f;
            break;
        }
    }
}

void func_8005B5FC(u16 actor_index) {
    s32 sp24[5];
    u16 actor_1;
    u16 actor_2;

    if (gActors[actor_index].unk_180_u8[0] == 0) {
        sp24[0] = gActors[actor_index].posX.whole;
        sp24[1] = gActors[actor_index].posY.whole;
        sp24[2] = gActors[actor_index].posZ.whole;
        actor_1 = func_800592A0(actor_index, sp24);
        if (!actor_1) {
            return;
        }
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_1].graphicIndex = 0xCA;
        gActors[actor_1].unk_148 = 99.0f;
        gActors[actor_index].unk_180_u8[0] = gActors[actor_1].unk_148;
        if (gActors[actor_index].unk_180_u8[2] == 0) {
            gActors[actor_1].scaleX = 0.0f;
            gActors[actor_1].var_110 = 0.1f;
            gActors[actor_1].unk_118 = -0.002f;
            gActors[actor_1].scaleY = 0.0f;
            gActors[actor_1].unk_114 = 0.0f;
            gActors[actor_1].unk_11C = 0.0f;
            gActors[actor_index].unk_184 = 0;
        }
        else {
            gActors[actor_1].scaleX = 0.0f;
            gActors[actor_1].var_110 = 0.0f;
            gActors[actor_1].unk_118 = 0.0f;
            gActors[actor_1].scaleY = 0.0f;
            gActors[actor_1].unk_114 = 0.1f;
            gActors[actor_1].unk_11C = -0.002f;
            gActors[actor_index].unk_184 = 1;
        }
        gActors[actor_index].unk_144 = 0.0f;
        gActors[actor_index].unk_180_u8[2] = actor_1;
    }

    actor_2 = gActors[actor_index].unk_180_u8[2];
    if (gActors[actor_index].unk_184 == 0) {
        gActors[actor_2].unk_11C += gActors[actor_index].unk_144;
    }
    else {
        gActors[actor_2].unk_118 += gActors[actor_index].unk_144;
    }
    gActors[actor_index].unk_144 += 2.5e-06;
    gActors[actor_index].unk_180_u8[0]--;
    if (!(gActors[actor_index].unk_180_u8[0])) {
        gActors[actor_index].unk_180_u16[0] = 0;
    }
}

void func_8005B82C(u16 actor_index) {
    s32 sp34[5];
    f32 scale;
    u16 actor_1;

    if (gActors[actor_index].unk_180_u8[0] == 0) {
        gActors[actor_index].unk_184 = 0;
        gActors[actor_index].unk_180_u8[0] = 1;
    }
    gActors[actor_index].unk_184++;
    gActors[actor_index].colorR = ((gActors[actor_index].unk_184 & 0xC) * 7) + 0x1C;
    gActors[actor_index].colorG = gActors[actor_index].colorR / 2;
    if (gActors[actor_index].unk_184 >= 0x4C) {
        gActors[actor_index].unk_180_u16[0] = 0;
    }
    if (!(gActors[actor_index].unk_184 & 0xF)) {
        sp34[4] = (intptr_t)PALETTE_8022D4E8;
        scale = gActors[actor_index].unk_144;
        scale -= (gActors[actor_index].unk_144 / 100.0f) * gActors[actor_index].unk_184;
        actor_1 = func_80059F30(actor_index, sp34, scale, 0x1E);
        gActors[actor_1].graphicIndex = GINDEX_GROUNDFLAME;
        gActors[actor_1].scaleX /= 4;
        gActors[actor_1].unk_144 = 15.0f;
        if (actor_1 != 0) {
            gActors[actor_1].unk_130 = actor_index;
            gActors[actor_1].unk_14C = gActors[actor_index].actorType;
            gActors[actor_1].unk_134 = func_8005C708(0xA) * 0.75;
            gActors[actor_1].unk_138 = func_8005C708(0x12) * 0.75;
            gActors[actor_1].unk_13C_f32 = func_8005C708(4);
        }
    }
}

void func_8005BA38(u16 actor_index) {
    s32 sp2C[5];
    u16 actor_1;

    gActors[actor_index].colorR = ((D_8013745C & 0xC) * 3) + 0xC;
    gActors[actor_index].colorG = ((D_8013745C & 0xC) * 3) + 0xC;
    gActors[actor_index].colorB = ((D_8013745C & 0xC) * 7) + 0x1C;
    if ((((s32)D_8013745C + actor_index) % 5) == 0) {
        sp2C[0] = gActors[actor_index].posX.whole + func_8005C708(0xA);
        sp2C[1] = gActors[actor_index].posY.whole + func_8005C708(0x12);
        sp2C[2] = gActors[actor_index].posZ.whole + 1;
        actor_1 = func_800592A0(actor_index, sp2C);
        if (actor_1 != 0) {
            gActors[actor_1].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_1].graphicIndex = GINDEX_STAREFFECT;
            gActors[actor_1].colorA = 0xC0;
            gActors[actor_1].var_150 = 0xC0000;
            gActors[actor_1].scaleX = gActors[actor_1].scaleY = 0.5f;
            gActors[actor_1].var_110 = gActors[actor_1].unk_114 = 0.05f;
            gActors[actor_1].unk_118 = gActors[actor_1].unk_11C = -0.005f;
            gActors[actor_1].unk_148 = 20.0f;
            gActors[actor_1].var_15C = Rand() * 8;
        }
    }
}

void func_8005BBC0(u16 actor_index) {
    Unk_func_8005A930_Arg0 sp1C;

    gActors[actor_index].colorB = 0x7F;
    gActors[actor_index].colorB = (Rand() & 0x3F) + 0x40;
    sp1C.unk4 = actor_index;
    sp1C.unk8[0] = gActors[actor_index].posX.whole;
    sp1C.unk8[1] = gActors[actor_index].posY.whole;
    sp1C.unk8[2] = gActors[actor_index].posZ.whole + 1;
    sp1C.unk18 = 0x1EE;
    sp1C.unk20 = gActors[actor_index].hitboxBY0 + func_8005C708(9);
    sp1C.unk1C = func_8005C708(0) << 0x12;
    sp1C.blue = Rand();
    if (sp1C.blue < 0x80) {
        sp1C.blue += 0x80;
    }
    sp1C.red = sp1C.green = Rand() % sp1C.blue;
    sp1C.unk0 = 8;
    func_8005A930(&sp1C);
}

void func_8005BCF8(u16 actor_index) {
    s32 sp2C[5];
    u16 actor_1;

    sp2C[0] = gActors[actor_index].posX.whole;
    sp2C[1] = gActors[actor_index].posY.whole;
    sp2C[2] = gActors[actor_index].posZ.whole + func_8005C708(3);
    actor_1 = func_800592A0(actor_index, sp2C);
    if (actor_1 != 0) {
        gActors[actor_1].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_1].graphicIndex = 0xD0;
        gActors[actor_1].colorA = 0xFE;
        gActors[actor_1].var_154 = 4;
        gActors[actor_1].unk_164 = -4;
        gActors[actor_1].unk_148 = 8.0f;
        gActors[actor_1].var_160 = Rand() << 0x12;        // 1/128
        gActors[actor_1].scaleX = ((f32) func_8005C708(0) * 0.0078125 * 0.3) + 0.5;
        gActors[actor_1].scaleY = ((f32) func_8005C708(0) * 0.0078125 * 0.1) + 0.2;
        gActors[actor_1].var_110 =  (f32) func_8005C708(0) * 0.0078125;
        gActors[actor_1].unk_118 = -(gActors[actor_1].var_110 / gActors[actor_1].unk_148);
        gActors[actor_1].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_1].unk_184 = gActors[actor_1].posX.raw;
        gActors[actor_1].unk_188 = gActors[actor_1].posY.raw;
        gActors[actor_1].unk_140_f32 = -16.0f;
        gActors[actor_1].unk_144 = 0.0f;
        gActors[actor_1].unk_130 = actor_index;
        gActors[actor_1].unk_134 = gActors[actor_1].posX.whole - gActors[actor_index].posX.whole;
        gActors[actor_1].unk_138 = gActors[actor_1].posY.whole - gActors[actor_index].posY.whole;
        gActors[actor_1].unk_13C_f32 = gActors[actor_1].posZ.raw - gActors[actor_index].posZ.raw;
        gActors[actor_1].unk_14C = gActors[actor_index].actorType;
    }
}

void func_8005BFA4(u16 actor_index) {
    switch (gActors[actor_index].unk_180_u8[3]) {
    case 4:
        func_8005B1E8(actor_index);
        break;
    case 5:
        func_8005B3F4(actor_index);
        break;
    case 6:
        func_8005BA38(actor_index);
        break;
    case 7:
        func_8005BBC0(actor_index);
        break;
    case 8:
        func_8005BCF8(actor_index);
        break;
    }
    gActors[actor_index].unk_180_u8[3] = 0;
    if (gActors[actor_index].unk_180_u8[1] != 0) {
        D_800D3FD0[gActors[actor_index].unk_180_u8[1]](actor_index);
    }
}

void func_8005C098(u16 actor_index, s32 arg1) {
    gActors[actor_index].unk_180_u16[0] = arg1;
}

// unused variant of after-image. uses arrays to store history.
u16 func_8005C0CC(u16 actor_index) {
    gActors[0x2D].actorType = gActors[0x2E].actorType = gActors[0x2F].actorType = ACTORTYPE_MARINAAFTERIMAGE;
    Actor_Initialize(0x2D);
    Actor_Initialize(0x2E);
    Actor_Initialize(0x2F);
    gActors[0x2D].graphicFlags |= (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5)) | ACTOR_GFLAG_UNK11;
    gActors[0x2E].graphicFlags |= (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5)) | ACTOR_GFLAG_UNK11;
    gActors[0x2F].graphicFlags |= (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5)) | ACTOR_GFLAG_UNK11;
    gActors[0x2D].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS) | ACTOR_FLAG_UNK27;
    gActors[0x2E].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS) | ACTOR_FLAG_UNK27;
    gActors[0x2F].flags |= (gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS) | ACTOR_FLAG_UNK27;
    gActors[0x2D].var_150 = 0x14;
    gActors[0x2E].var_150 = 0x19;
    gActors[0x2F].var_150 = 0x1E;
    gActors[0x2D].var_158 = 0x14;
    gActors[0x2E].var_158 = 0xF;
    gActors[0x2F].var_158 = 0xA;
    gActors[0x2D].colorA = 0x40;
    gActors[0x2E].colorA = 0x80;
    gActors[0x2F].colorA = 0xC0;
    gActors[0x2D].unk_14C = gActors[0x2E].unk_14C = gActors[0x2F].unk_14C = actor_index;
    gActors[0x2D].state = gActors[0x2E].state = gActors[0x2F].state = 0;
    return actor_index;
}

// spawns after-image of Marina while dashing
u16 func_8005C250(u16 actor_index) {
    u16 actor_1;

    actor_1 = Actor_RangeFindInactive(0x10, 0x2D);
    if (actor_1 == 0) {
        return actor_1;
    }
    gActors[actor_1].actorType = 0x2E;
    Actor_Initialize(actor_1);
    gActors[actor_1].graphicFlags |= (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK5)) | ACTOR_GFLAG_UNK11;
    gActors[actor_1].flags |= (gActors[actor_index].flags & (ACTOR_FLAG_FLIPPED | ACTOR_FLAG_FREEZE_POS)) | ACTOR_FLAG_UNK19 | ACTOR_FLAG_UNK27;
    // fakematch: & 0xFFFF
    gActors[actor_1].graphicIndex = (((D_800BE6A4 & 0xFFFF) + gCurrentFramebufferIndex) * 2) + 2;
    gActors[actor_1].posX.raw = gActors[actor_index].posX.raw;
    gActors[actor_1].posY.raw = gActors[actor_index].posY.raw;
    gActors[actor_1].posZ.raw = gActors[actor_index].posZ.raw + FIXED_UNIT(-1.5);
    gActors[actor_1].var_150 = 0xF;
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[actor_1].colorR = 0x7F;
    gActors[actor_1].colorG = 0x7F;
    gActors[actor_1].unk_14C = actor_index;
    gActors[actor_1].state = 1;
    return actor_1;
}

// "tick" of actor for Marina's after-image
void func_8005C3C8(u16 actor_index) {
    s32 temp_v0;
    s32 temp_t1;

    switch (gActors[actor_index].state) {
    case 0: // unused state - after-image uses arrays of position/image history
        temp_v0 = (D_801370D0 - gActors[actor_index].var_158);
        temp_t1 = temp_v0 & 0x7F;
        gActors[actor_index].graphicIndex = D_801370D8[temp_t1];
        if ((D_80137480[(D_800BE6A4 & 0xFFFF7FFF) + gCurrentFramebufferIndex] & 0x8000) == 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].posX.whole = D_801371D8[temp_t1] - gScreenPosCurrentX.whole;
        gActors[actor_index].posY.whole = D_801372D8[temp_t1] - gScreenPosCurrentY.whole;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 1:
        gActors[actor_index].colorA -= gActors[actor_index].var_150;
        if (gActors[actor_index].colorA < gActors[actor_index].var_150) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}
