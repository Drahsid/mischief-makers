#define func_80012AB4_ARGS
#define func_8001FCA0_ARGS u16 actor_index, s32 x, s32 y
#include "common.h"
#include "actor.h"
#include "music.h"
#include "28EF0.h"
#include "1F1E0.h"

// forward declarations
void func_80067E50(u16 actor_index, s16* graphic_list);
void func_8006C6F0(u16 actor_index);
void func_8006CE74(u16 actor_index);

// data of this TU
extern u16* D_800D18A4[];
extern u16* D_800D18C4[];
extern s16 D_800D75A0[];
extern s16 D_800D75D8[];
extern s8 D_800D76D8[];
extern s16 D_800D7AF8[];
extern s16 D_800D7C30[];
extern s16 D_800D7C40[];
extern s16 D_800D7C50[];
extern s16 D_800D7C78[];
extern s16 D_800D7C80[];
extern s16 D_800D7C88[];
extern s16 D_800D7C90[];
extern s16 D_800D7C98[];
extern s16 D_800D7CA0[];
extern s16 D_800D7CA8[];
extern s16 D_800D7CB0[];
extern s16 D_800D7CB8[];
extern s16 D_800D7CC0[];
extern s16 D_800D7CD4[];
extern s16 D_800D7D04[];
extern s16 D_800D7D34[];
extern s16 D_800D7D64[];
extern s16 D_800D7D94[];
extern s16 D_800D7DC4[];
extern s16 D_800D7DD8[];
extern s16 D_800D7E48[];
extern s16 D_800D7E68[];
extern s16 D_800D7E88[];
extern s16 D_800D7E90[];
extern s16 D_800D7ED8[];
extern u16 D_800D7EB0[];
extern u16 D_800D7EBC[];
extern ActorFunc D_800D7F00[];
extern u16* D_800D8088[];
extern u16 D_800D80A8[]; // list of SFX IDs
extern s16 D_800E156C[];
extern s16 D_800E1574[];
extern s16 D_800E1604[];
extern u8 D_800E1750[];
extern s16 D_800E1728[];
extern s16 D_800E176C[];
extern s16 D_800E1788[];
extern s16 D_800E17A4[];
extern s16 D_800E17DC[];
extern s16 D_800E17F8[];
extern s16 D_800E1888[];
extern s16 D_800E1898[];
extern s16 D_800E18B4[];
extern s16 D_800E18DC[];
extern s16 D_800E18F0[];
extern s16 D_800E1900[];
extern s16 D_800E1924[];
extern s16 D_800E1934[];
extern s16 D_800E1950[];
extern s16 D_800E1978[];
extern s16 D_800E198C[];
extern s16 D_800E199C[];
extern s16 D_800E19C0[];
extern s16 D_800E19E8[];
extern s16 D_800E1A8C[];
extern s16 D_800E1BF4[];
extern s16 D_800E1C00[];
extern s16 D_800E1C1C[];
extern s16 D_800E1C2C[];
extern s16 D_800E1C78[];
extern s16 D_800E1C84[];
extern s16 D_800E1C9C[];
extern s16 D_800E1CC4[];
extern s16 D_800E1CE8[];
extern s16 D_800E1D0C[];
extern s16 D_800E1D30[];
extern s16 D_800E1D54[];
extern s16 D_800E1D84[];
extern s16 D_800E1D8C[];
extern s16 D_800E1DA4[];
extern s16 D_800E1DB8[]; // graphic list
extern s16 D_800E1DCC[];
extern s16 D_800E1E00[];
extern s16 D_800E1E10[]; // graphic list
extern s16 D_800E1E24[];
extern s16 D_800E1E38[];
extern s16 D_800E1E48[]; // graphic list
extern s16 D_800E1E5C[];
extern s16 D_800E1E70[];
extern s16 D_800E1E80[];
extern s16 D_800E1EAC[];
extern s16 D_800E1EB8[];
extern s16 D_800E1EC8[];
extern s16 D_800E1EF8[];
extern s16 D_800E1F08[];
extern s16 D_800E1F24[];
extern s16 D_800E1F34[];
extern s16 D_800E1F44[];
extern s16 D_800E1F58[];
extern s16 D_800E1F64[];
extern s16 D_800E1F88[];
extern s16 D_800E1FB4[];
extern s16 D_800E2024[];
extern s16 D_800E2034[];
extern s16 D_800E2044[];
extern s16 D_800E205C[];
extern s16 D_800E206C[];
extern s16 D_800E209C[];
extern s16 D_800E20C4[];
extern s16 D_800E20FC[];
extern s16 D_800E2150[];
extern s16 D_800E216C[];
extern u8 D_800E223C[];
extern u8 D_800E2250[];
extern s16 D_800E2268[];
extern s16 D_800E2274[];
extern s16 D_800E22A8[];
extern s16 D_800E22B4[];
extern s16 D_800E22CC[];
extern s16 D_800E22F8[];
extern s16 D_800E2314[];
extern s16 D_800E2330[];
extern s16 D_800E2374[];
extern s16 D_800E23A4[];
extern s16 D_800E2450[];
extern s16 D_800E2464[];
extern s16 D_800E24A0[];
extern u16 D_800E3570; // = 0; // actor flag storage?
extern u16 D_800E3574; // = 0; // actor flag storage?
extern u16 D_800E3580; // = 0;
extern u32 D_800E3584; // = 0;

void func_80065650(u16 actor_index) {
    u16 rand_x[2];
    u16 rand_y;

    func_80067E50(actor_index, D_800E1788);
    if ((gActiveFrames % 17) == 0) {
        rand_x[0] = Rand();
        rand_y = Rand();
        func_800339BC(
            (gActors[actor_index].posX.raw - ((rand_x[0] & 0x1F) * FIXED_UNIT(5.0/8))) + FIXED_UNIT(10.0),
            (gActors[actor_index].posY.raw - ((rand_y & 0x1F) * FIXED_UNIT(0.75))) + FIXED_UNIT(18.0),
            gActors[actor_index].posZ.raw,
            0
        );
    }
}

void func_80065724(u16 actor_index) {
    func_80033E7C(
        actor_index,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + 6,
        gActors[actor_index].posZ.whole + 1,
        FIXED_UNIT(0.375),
        FIXED_UNIT(8.0),
        3);
}

void func_800657B0(u16 actor_index) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(D_800E1574, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1, gActors[actor_index].posZ.whole - 1);
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[particle_index].flags |= ACTOR_FLAG_UNK15;
        gActors[particle_index].colorA = 0xC0;
        gActors[particle_index].scaleX = 0.6f;
        gActors[particle_index].scaleY = 0.1f;
        gActors[particle_index].unk_184 = gActors[actor_index].posX.raw;
        gActors[particle_index].unk_188 = gActors[actor_index].posY.raw + (gActors[actor_index].hitboxBY1 << 0x10);
        gActors[particle_index].var_154 = -12;
        gActors[particle_index].unk_144 = 23.0f;
        gActors[particle_index].unk_118 = -0.01f;
        gActors[particle_index].unk_11C = 0.01f;
        gActors[particle_index].unk_148 = 7.0f;
    }
}

void func_800658D8(u16 actor_index) {
    u16 index;
    u16 particle_index;

    for (index = 0; index < 2; index++) {
        particle_index = SpawnParticle_List_90C0_16(D_800E1604, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1, gActors[actor_index].posZ.whole + 1);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[particle_index].colorA = 0x80;
            gActors[particle_index].scaleX = 0.5f;
            gActors[particle_index].scaleY = 0.5f;
            if (index != 0) {
                gActors[particle_index].velocityX.raw = FIXED_UNIT(-1.375);
            }
            else {
                gActors[particle_index].velocityX.raw = FIXED_UNIT(1.375);
            }
            gActors[particle_index].var_154 = -8;
            gActors[particle_index].unk_11C = -0.004f;
        }
    }
}

void func_80065A38(u16 actor_index, s16 pos_x, s16 pos_y) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(D_800E156C, pos_x, pos_y, gActors[actor_index].posZ.whole + 1);
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[particle_index].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        gActors[particle_index].colorA = 0xFF;
        gActors[particle_index].colorR = 0x7F;
        gActors[particle_index].scaleX = 0.5f;
        gActors[particle_index].scaleY = 0.6f;
        gActors[particle_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(3.5);
        gActors[particle_index].var_154 = -0x18;
        gActors[particle_index].unk_11C = -0.01f;
        gActors[particle_index].palette_18C = D_800D8508;
    }
}

void func_80065B78(u16 actor_index) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(D_800E156C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[particle_index].colorA = 0xC0;
        gActors[particle_index].scaleX = 0.8f;
        gActors[particle_index].scaleY = 1.0f;
        gActors[particle_index].colorR = 0x7F;
        gActors[particle_index].palette_18C = D_800D8508;
        switch ((u8)(gActors[actor_index].unk_178 & 6)) {
        case 0:
            gActors[particle_index].unk_148 = 18.0f;
            break;
        case 2:
            gActors[particle_index].unk_148 = 8.0f;
            break;
        case 4:
            gActors[particle_index].unk_148 = 28.0f;
            break;
        }
        gActors[particle_index].var_110 = -(gActors[particle_index].scaleX / gActors[particle_index].unk_148);
        gActors[particle_index].unk_114 = -(gActors[particle_index].scaleY / gActors[particle_index].unk_148);
        gActors[particle_index].unk_130 = actor_index;
        gActors[particle_index].unk_14C = gActors[actor_index].actorType;
        gActors[particle_index].unk_138 = -10.0f;
        gActors[particle_index].unk_13C_f32 = 1.0f;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[particle_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[particle_index].unk_134 = -22.0f;
        }
        else {
            gActors[particle_index].unk_134 = 22.0f;
        }
    }
}

void func_80065D60(u16 actor_index) {
    u16 particle_index;
    s32 rand_vel_x;
    s32 rand_15C;

    particle_index = SpawnParticle_List_90C0_16(
        D_800E1604,
        gActors[actor_index].posX.whole + (gActors[actor_index].unk_148 * 18.0f),
        gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1,
        gActors[actor_index].posZ.whole + 1
    );
    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[particle_index].scaleX = 0.45f;
        gActors[particle_index].scaleY = 0.45f;
        rand_vel_x = ((Rand() & 3) << 0xF);
        rand_15C = ((Rand() & 3) * 0x1200);
        gActors[particle_index].velocityX.raw = (-gActors[actor_index].velocityX.raw - (gActors[actor_index].unk_148 * rand_vel_x));
        gActors[particle_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[particle_index].var_110 = 0.04f;
        gActors[particle_index].unk_114 = 0.04f;
        gActors[particle_index].var_154 = -0x10;
        gActors[particle_index].var_158 = -gActors[particle_index].velocityX.raw / 12;
        gActors[particle_index].var_15C = -rand_15C;
    }
}

void func_80065F14(u16 actor_index) {
    u16 particle_index;

    if (gActiveFrames & 1) {
        particle_index = SpawnParticle_List_90C0_16(
            D_800E1604,
            gActors[actor_index].posX.whole + (8 - (Rand() & 0xF)),
            gActors[actor_index].posY.whole + (8 - (Rand() & 0xF)),
            gActors[actor_index].posZ.whole
        );
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[particle_index].scaleX = 0.45f;
            gActors[particle_index].scaleY = 0.45f;
            gActors[particle_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
            gActors[particle_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
            gActors[particle_index].var_154 = -0x10;
            gActors[particle_index].posZ.raw--;
            gActors[particle_index].var_110 = 0.04f;
            gActors[particle_index].unk_114 = 0.04f;
        }
    }
}

void func_8006605C(u16 actor_index) {
    u16 particle_index;

    if (!(gActiveFrames & 3)) {
        particle_index = SpawnParticle_Image_90C0_16(0x168, 0, 0, 0);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            gActors[particle_index].scaleX = gActors[actor_index].scaleX * 1.35;
            gActors[particle_index].scaleY = gActors[particle_index].scaleX;
            gActors[particle_index].unk_130 = actor_index;
            gActors[particle_index].unk_14C = gActors[actor_index].actorType;
            gActors[particle_index].colorA = 0x40;
            gActors[particle_index].palette_18C = D_800D84E8;
            gActors[particle_index].var_110 = 0.1f;
            gActors[particle_index].unk_114 = 0.1f;
            gActors[particle_index].unk_13C_f32 = 1.0f;
            gActors[particle_index].unk_148 = 7.0f;
        }
        particle_index = SpawnParticle_Image_90C0_16(0x18A, 0, 0, 0);
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[particle_index].scaleX = gActors[actor_index].scaleX * 1.35;
            gActors[particle_index].scaleY = gActors[particle_index].scaleX;
            gActors[particle_index].unk_130 = actor_index;
            gActors[particle_index].unk_14C = gActors[actor_index].actorType;
            gActors[particle_index].palette_18C = D_800D8508;
            gActors[particle_index].pfn_17C = func_80030A24;
            gActors[particle_index].unk_104 = -0x10;
            gActors[particle_index].unk_13C_f32 = -1.0f;
            gActors[particle_index].unk_148 = 7.0f;
            if (gActors[actor_index].flags & 0x20) {
                gActors[particle_index].var_160 = (gActiveFrames & 0xC) << 0x16;
                gActors[particle_index].var_150 = FIXED_UNIT(32.0);
            }
            else {
                gActors[particle_index].flags |= 0x20;
                gActors[particle_index].var_160 = (-gActiveFrames & 0xC) << 0x16;
                gActors[particle_index].var_150 = FIXED_UNIT(-32.0);
            }
        }
    }
}

void func_800662F0(u16 actor_index) {
    s32 invert_flipped;
    u16 particle_index;

    particle_index = SpawnParticle_Image_90C0_16(0x1EC, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
    if (particle_index != 0) {
        invert_flipped = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ^ ACTOR_FLAG_FLIPPED;
        gActors[particle_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[particle_index].flags |= invert_flipped + ACTOR_FLAG_UNK15;
        gActors[particle_index].palette_18C = PALETTE_8022D4E8;
        gActors[particle_index].colorA = 0xE0;
        gActors[particle_index].var_150 = FIXED_UNIT(20.0);
        gActors[particle_index].var_154 = 0x10;
        gActors[particle_index].unk_164 = -6;
        gActors[particle_index].scaleX = 1.0f;
        gActors[particle_index].scaleY = 1.0f;
        gActors[particle_index].unk_140_f32 = -13.0f;
        gActors[particle_index].unk_144 = 18.0f;
        if (invert_flipped) {
            gActors[particle_index].unk_140_f32 = -gActors[particle_index].unk_140_f32;
            gActors[particle_index].var_150 = -gActors[particle_index].var_150;
        }
    }
}

void func_8006641C(u16 actor_index) {
    s32 pos_x;
    s32 pos_y;
    u16 particle_index;

    if (!(gActiveFrames & 0x1F)) {
        if (gActors[actor_index].unk_178 & 1) {
            pos_x = gActors[actor_index].posX.whole + (gActors[actor_index].unk_148 * -18.0f);
            pos_y = gActors[actor_index].posY.whole * gActors[actor_index].scaleX;
        }
        else {
            pos_x = gActors[actor_index].posX.whole + (gActors[actor_index].unk_148 * -18.0f);
            pos_y = gActors[actor_index].posY.whole * gActors[actor_index].scaleX;
        }
        particle_index = SpawnParticle_List_90C0_16(gGraphicListBlank, pos_x, pos_y, gActors[actor_index].posZ.whole + 1);
        if (particle_index != 0) {
            gActors[particle_index].scaleX = 0.2f;
            gActors[particle_index].scaleY = 0.2f;
            gActors[particle_index].unk_148 = 30.0f;
            gActors[particle_index].graphicFlags = 1;
            gActors[particle_index].graphicIndex = GINDEX_016A;
            gActors[particle_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(-0.15625);
            gActors[particle_index].velocityY.raw = FIXED_UNIT(1);
            gActors[particle_index].var_15C = -0x800;
        }
    }
}

// func_80066644 is unused
void func_80066644(u16 actor_index, s32 arg1_unused) {
    SpawnParticle_List_90C0_16(
        D_800E154C,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0 + 0x10,
        gActors[actor_index].posZ.whole
    );
}

void func_800666B4(u16 actor_index, f32 pos_x, f32 pos_y, u16 arg3) {
    func_800339BC(
        gActors[actor_index].posX.raw + (pos_x * FIXED_UNIT(1.0)),
        gActors[actor_index].posY.raw + (pos_y * FIXED_UNIT(1.0)),
        gActors[actor_index].posZ.raw,
        arg3
    );
}

void func_8006678C(u16 actor_index, f32 pos_x_0, f32 pos_y_0, f32 pos_x_1, f32 pos_y_1) {
    u16 rand_bool;

    pos_x_0 *= gActors[actor_index].unk_148;
    pos_y_0 *= gActors[actor_index].scaleY;
    pos_x_1 *= gActors[actor_index].unk_148;
    pos_y_1 *= gActors[actor_index].scaleY;
    if (Actor_IsOutsideRegion(actor_index, 0x20) == 0) {
        rand_bool = Rand() & 1;
        if (rand_bool && !(gActiveFrames & 0xF)) {
            func_800666B4(actor_index, pos_x_0, pos_y_0, 0);
        }
        else if (rand_bool && ((gActiveFrames & 0xF) == 7)) {
            func_800666B4(actor_index, pos_x_1, pos_y_1, 0);
        }
        else {
            func_800666B4(actor_index, pos_x_0, pos_y_0, 1);
            func_800666B4(actor_index, pos_x_1, pos_y_1, 1);
        }
    }
}

void func_800668E0(u16 actor_index, u16 arg1_unused, u16 palette_index) {
    if (gActors[actor_index].var_150 & 0x08000000) {
        gActors[actor_index].palette_18C = D_800D18C4[palette_index];
    }
    else {
        gActors[actor_index].palette_18C = D_800D18A4[palette_index];
    }
}

void func_80066964(u16 actor_index, u16 palette_index) {
    s16* graphic_list;

    graphic_list = gActors[actor_index].graphicList;
    if ((gActors[actor_index].graphicTimer == 1) && (graphic_list != NULL) && (graphic_list[0] != 0)) {
        if (graphic_list[0] < 0) {
            graphic_list += graphic_list[0];
        }
        func_800668E0(actor_index, graphic_list[0], palette_index);
    }
    else {
        func_800668E0(actor_index, gActors[actor_index].graphicIndex, palette_index);
    }
}

void func_80066A10(u16 actor_index) {
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9)) {
        gActors[actor_index].hitboxBY0 = (D_800D75A0[(u16)gActors[actor_index].unk_144 + 0] * gActors[actor_index].scaleX);
        gActors[actor_index].hitboxBY1 = (D_800D75A0[(u16)gActors[actor_index].unk_144 + 1] * gActors[actor_index].scaleX);
        gActors[actor_index].hitboxBX0 = (D_800D75A0[(u16)gActors[actor_index].unk_144 + 2] * gActors[actor_index].scaleX);
        gActors[actor_index].hitboxBX1 = (D_800D75A0[(u16)gActors[actor_index].unk_144 + 3] * gActors[actor_index].scaleX);
    }
}

void func_80066BCC(u16 actor_index) {
    f32 x_offset;
    s32 rotation;
    s16* graphic_list;
    u16 index_1;
    u16 actor_1;
    u16 index_0;

    actor_1 = gActors[actor_index].unk_140_f32;
    if (actor_1 == 0) {
        return;
    }

    if ((gActors[actor_1].flags & ACTOR_FLAG_ACTIVE) && (gActors[actor_1].actorType == 0x34)) {
        index_1 = (((gActors[actor_index].var_0D8 & 0xF00) / 256));
        index_1 *= 8;
        gActors[actor_1].unk_148 = 1.0f;
        gActors[actor_1].graphicFlags &= ~(ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4);
        gActors[actor_1].graphicFlags = (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4)) + ACTOR_GFLAG_ROTZ;
        gActors[actor_1].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_1].flags = (gActors[actor_index].flags & ACTOR_FLAG_DRAW) + ACTOR_FLAG_ACTIVE;
        if (gActors[actor_1].flags & ACTOR_FLAG_UNK11) {
            gActors[actor_1].unk_188 = gActors[actor_index].unk_188;
        }
        gActors[actor_1].colorA = gActors[actor_index].colorA;
        gActors[actor_1].colorR = gActors[actor_index].colorR;
        gActors[actor_1].colorG = gActors[actor_index].colorG;
        gActors[actor_1].colorB = gActors[actor_index].colorB;
        graphic_list = gActors[actor_index].graphicList;
        if ((gActors[actor_index].graphicTimer == 1) && (graphic_list != NULL) && (graphic_list[0] != 0)) {
            if (graphic_list[0] < 0) {
                graphic_list += graphic_list[0];
            }
            if (graphic_list[0] >= 0x6800) {
                index_0 = ((graphic_list[0] * 3) - 0x13800);
            }
            else {
                index_0 = ((((graphic_list[0] - 0x1026) / 2) * 3) + 0x3E7);
            }
        }
        else {
            if (gActors[actor_index].graphicIndex >= 0x6800) {
                index_0 = (gActors[actor_index].graphicIndex * 3) - 0x13800;
            }
            else if (gActors[actor_index].var_150 & 0x08000000) {
                index_0 = (((gActors[actor_index].graphicIndex - 0x1090) / 2) * 3) + 0x390;
            }
            else {
                index_0 = (((gActors[actor_index].graphicIndex - 0x1026) / 2) * 3) + 0x3E7;
            }
        }
        rotation = D_800D76D8[index_0 + 2];
        if (rotation & 1) {
            gActors[actor_1].posZ.raw = gActors[actor_index].posZ.raw - 1;
            gActors[actor_1].graphicIndex = D_800D75D8[index_1 + 1];
            rotation += D_800D75D8[index_1 + 7];
            index_1 += 2;
        }
        else {
            gActors[actor_1].posZ.raw = gActors[actor_index].posZ.raw;
            gActors[actor_1].graphicIndex = D_800D75D8[index_1 + 0];
            rotation += D_800D75D8[index_1 + 6];
        }
        rotation = (rotation & 0xFE) * 4;
        x_offset = (D_800D75D8[index_1 + 2] * gActors[actor_index].scaleX) + (D_800D76D8[index_0 + 0] * gActors[actor_index].scaleX);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_1].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_1].posX.whole = gActors[actor_index].posX.whole - x_offset;
            rotation = -rotation;
        }
        else {
            gActors[actor_1].posX.whole = gActors[actor_index].posX.whole + x_offset;
        }
        gActors[actor_1].posY.whole = (gActors[actor_index].posY.whole + ((D_800D75D8[index_1 + 3] * gActors[actor_index].scaleY) + (D_800D76D8[index_0 + 1] * gActors[actor_index].scaleY)));
        gActors[actor_1].rotateZ = INDEX_TO_DEG((f32) rotation);
    }
}

void func_80067068(u16 actor_0, u16 actor_1) {
    switch ((u16)gActors[actor_0].unk_124) {
    case 0x3F0:
        gActors[actor_1].graphicIndex = GINDEX_101E;
        gActors[actor_0].unk_11C = 8.0f;
        break;
    case 1:
        gActors[actor_1].graphicIndex = GINDEX_1014;
        gActors[actor_0].unk_11C = 9.0f;
        break;
    case 2:
        gActors[actor_1].graphicIndex = GINDEX_101C;
        gActors[actor_0].unk_11C = 4.0f;
        break;
    case 3:
        gActors[actor_1].graphicIndex = GINDEX_1016;
        gActors[actor_0].unk_11C = 7.0f;
        break;
    case 4:
        gActors[actor_1].graphicIndex = GINDEX_1020;
        gActors[actor_0].unk_11C = 6.0f;
        break;
    }
    gActors[actor_0].unk_11C *= gActors[actor_0].scaleX;
}

void func_80067214(u16 actor_0, u16 actor_1, u16 arg2) {
    gActors[actor_1].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_1].flags |= ACTOR_FLAG_UNK15 | (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED);
    gActors[actor_1].unk_130 = actor_0;
    gActors[actor_1].unk_14C = gActors[actor_0].actorType;
    gActors[actor_1].unk_13C_f32 = -1.0f;
    gActors[actor_1].unk_148 = 1.0f;
    if (arg2 == 0) {
        gActors[actor_1].colorA = 0;
        gActors[actor_1].scaleX = gActors[actor_0].scaleX * 0.5;
        gActors[actor_1].scaleY = gActors[actor_1].scaleX;
        gActors[actor_1].var_154 = 0x10;
        gActors[actor_1].unk_114 = gActors[actor_0].scaleX * 0.03125;
        gActors[actor_1].var_110 = gActors[actor_1].unk_114;
    }
    else {
        gActors[actor_1].scaleX = gActors[actor_0].scaleX;
        gActors[actor_1].scaleY = gActors[actor_1].scaleX;
        gActors[actor_1].var_154 = -0x11;
        gActors[actor_1].unk_114 = gActors[actor_0].scaleX * -0.03125;
        gActors[actor_1].var_110 = gActors[actor_1].unk_114;
    }
}

s32 func_80067394(u16 actor_index, u16 arg1) {
    u16 particle_0;
    u16 particle_1;

    particle_0 = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, 0);
    if (particle_0 == 0) {
        gActors[particle_0].flags = 0;
        return FALSE;
    }
    particle_1 = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, 0);
    if (particle_1 == 0) {
        gActors[particle_1].flags = 0;
        return FALSE;
    }

    gActors[actor_index].var_158 = particle_0;
    gActors[actor_index].var_15C = particle_1;
    func_80067068(actor_index, particle_0);
    gActors[particle_1].graphicFlags |= gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE;
    if (arg1) {
        gActors[particle_1].graphicList = D_800D7DC4;
    }
    else {
        gActors[particle_1].graphicList = D_800D7DD8;
    }
    gActors[particle_1].graphicTimer = 1;
    gActors[particle_1].unk_18C = gActors[actor_index].unk_18C;
    gActors[particle_1].unk_140_f32 = 4.0f;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[particle_1].unk_140_f32 = -gActors[particle_1].unk_140_f32;
    }
    func_80067214(actor_index, particle_0, arg1);
    func_80067214(actor_index, particle_1, (arg1 ^ 1));
    return TRUE;
}

void func_8006756C(u16 actor_index) {
    s16* graphic_list;
    u16 particle_index;
    u16 actor_1;
    s32 x;
    s32 y;
    s32 pad0;
    s32 pad1;
    s32 x_offset;
    s32 y_offset;
    s32 angle;
    s16* vals;

    graphic_list = gActors[actor_index].graphicList_160;
    if (graphic_list[2] != 0) {
        if (gActors[actor_index].unk_120 < graphic_list[1]) {
            gActors[actor_index].unk_120 += 1.0f;
        }
        else {
            graphic_list += 2;
            if (graphic_list[0] < 0) {
                graphic_list += graphic_list[0];
            }
            gActors[actor_index].graphicList_160 = graphic_list;
            gActors[actor_index].unk_120 = 1.0f;
        }
    }
    else {
        gActors[actor_index].unk_120 = 0.0f;
    }
    vals = &D_800D7AF8[graphic_list[0]];
    gActors[actor_index].graphicIndex = vals[0];
    switch (gActors[actor_index].graphicIndex) {
    case GINDEX_1026:
        x_offset = FIXED_UNIT(16);
        y_offset = FIXED_UNIT(9);
        break;
    case GINDEX_1028:
        x_offset = FIXED_UNIT(14);
        y_offset = FIXED_UNIT(10);
        break;
    case GINDEX_102A:
        x_offset = FIXED_UNIT(12);
        y_offset = FIXED_UNIT(11);
        break;
    case GINDEX_6837:
        x_offset = FIXED_UNIT(12);
        y_offset = FIXED_UNIT(4);
        break;
    case GINDEX_6838:
        x_offset = FIXED_UNIT(12);
        y_offset = FIXED_UNIT(3);
        break;
    }

    x_offset *= gActors[actor_index].scaleX;
    y_offset *= gActors[actor_index].scaleX;
    actor_1 = gActors[actor_index].unk_158_u16[1];
    gActors[actor_1].unk_148 = 1.0f;

    angle = vals[1];
    x = COS(angle) * (gActors[actor_index].scaleX * FIXED_UNIT(9));
    y = SIN(angle) * (gActors[actor_index].scaleX * FIXED_UNIT(9));
    gActors[actor_1].unk_140_f32 = vals[3] + gActors[actor_index].unk_11C;
    angle = TO_FIXED((vals[2] + vals[1]) & 0x3FF);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_1].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        x_offset = -x_offset;
        x = -x;
        gActors[actor_1].var_160 = FIXED_UNIT(COS_DEG_360) - angle;
        gActors[actor_1].unk_140_f32 = -gActors[actor_1].unk_140_f32;
    }
    else {
        gActors[actor_1].var_160 = angle;
        gActors[actor_1].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    gActors[actor_1].unk_134 = FROM_FIXED(x + x_offset);
    gActors[actor_1].unk_138 = FROM_FIXED(y + y_offset);
    particle_index = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, 0);
    if (particle_index != 0) {
        gActors[particle_index].graphicIndex = GINDEX_0290;
        gActors[particle_index].graphicFlags = 9;
        gActors[particle_index].flags |= gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
        gActors[particle_index].scaleX = gActors[actor_index].scaleX * 0.8;
        gActors[particle_index].scaleY = gActors[actor_index].scaleX * 0.8;
        gActors[particle_index].unk_148 = 0.0f;
        gActors[particle_index].var_160 = TO_FIXED(vals[1]);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[particle_index].var_160 = FIXED_UNIT(COS_DEG_360) - gActors[particle_index].var_160;
        }
        gActors[particle_index].posX.raw = gActors[actor_index].posX.raw + (x / 2) + x_offset;
        gActors[particle_index].posY.raw = gActors[actor_index].posY.raw + (y / 2) + y_offset;
        gActors[particle_index].posZ.raw = gActors[actor_index].posZ.raw - 2;
    }
}

s32 func_800679DC(u16 actor_index, u16 arg1) {
    u16 actor_0;
    u16 actor_1;

    func_8006756C(actor_index);
    actor_0 = gActors[actor_index].unk_158_u16[1];
    actor_1 = gActors[actor_index].var_15C;
    if (arg1 != 0) {
        if ((f64) gActors[actor_index].scaleX <= (f64) gActors[actor_1].scaleY) {
            return FALSE;
        }
    }
    else {
        if ((f64) gActors[actor_index].scaleX <= (f64) gActors[actor_0].scaleY) {
            gActors[actor_0].scaleX = gActors[actor_index].scaleX;
            gActors[actor_0].var_110 = 0.0f;
            gActors[actor_0].unk_114 = 0.0f;
            gActors[actor_0].scaleY = gActors[actor_0].scaleX;
            return FALSE;
        }
    }
    gActors[actor_1].unk_134 = gActors[actor_0].unk_134;
    gActors[actor_1].unk_138 = gActors[actor_0].unk_138;
    gActors[actor_1].var_160 = gActors[actor_0].var_160;
    gActors[actor_1].unk_148 = 1.0f;
    return TRUE;
}

u16 func_80067B18(u16 actor_index, s32 arg1) {
    switch (arg1) {
    case 0x1000000:
        gActors[actor_index].graphicList_160 = D_800D7C78;
        arg1 = 0x100;
        break;
    case 0xC00000:
    case 0x1400000:
        gActors[actor_index].graphicList_160 = D_800D7C80;
        arg1 = 0x100;
        break;
    case 0x800000:
    case 0x1800000:
        gActors[actor_index].graphicList_160 = D_800D7C88;
        arg1 = 0x80;
        break;
    case 0x400000:
    case 0x1C00000:
        gActors[actor_index].graphicList_160 = D_800D7C90;
        arg1 = 0;
        break;
    case 0x0:
    case 0x2000000:
        gActors[actor_index].graphicList_160 = D_800D7C98;
        arg1 = 0;
        break;
    case 0x2400000:
    case 0x3C00000:
        gActors[actor_index].graphicList_160 = D_800D7CA0;
        arg1 = 0;
        break;
    case 0x2800000:
    case 0x3800000:
        gActors[actor_index].graphicList_160 = D_800D7CA8;
        arg1 = 0x380;
        break;
    case 0x2C00000:
    case 0x3400000:
        gActors[actor_index].graphicList_160 = D_800D7CB0;
        arg1 = 0x300;
        break;
    case 0x3000000:
        gActors[actor_index].graphicList_160 = D_800D7CB8;
        arg1 = 0x300;
        break;
    }
    gActors[actor_index].unk_120 = 1.0f;
    func_8006756C(actor_index);
    return arg1;
}

void func_80067E50(u16 actor_index, s16* graphic_list) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, graphic_list);
    }
}

void func_80067E9C(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E1700);
    }
}

void func_80067EF0(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E1750);
    }
}

// func_80067F44 is unused
void func_80067F44(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E223C);
    }
}

void func_80067F98(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E2274);
    }
}

void func_80067FEC(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E2250);
    }
}

s32 func_80068040(u16 actor_index, u16 arg1) {
    s32 y;
    u8 temp_s2;
    u8 temp_t1;
    u16 remaining;
    f32 var_f0;

    if (arg1) {
        y = gActors[actor_index].hitboxBY0 + 8;
        remaining = 6;
    }
    else {
        y = gActors[actor_index].hitboxBY0 + 8;
        remaining = 6;
    }
    for (; remaining > 0; remaining--, y += 16) {
        if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + y) & 0x80) {
            break;
        }
        temp_s2 = func_8001FCA0(actor_index, (gActors[actor_index].posX.whole + (gActors[actor_index].unk_148 * 30.0f)), gActors[actor_index].posY.whole + y) & 0x80;
        temp_t1 = func_8001FCA0(actor_index, (gActors[actor_index].posX.whole + (gActors[actor_index].unk_148 * 16.0f)), gActors[actor_index].posY.whole + y) & 0x80;
        if (!temp_s2 && !temp_t1) {
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_178 = 5;
            gActors[actor_index].unk_118 = 32.0f;
            y += 20;
            var_f0 = y * 16;
            gActors[actor_index].unk_11C = ((sqrtf((32.0f * var_f0) + 16.0f) - 4.0f) / 8) * 17408.0f;
            gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * 98304.0f;
            gActors[actor_index].unk_124 = 0.0f;
            return FALSE;
        }
    }
    return TRUE;
}

u16 func_800682AC(u16 actor_index, s16 x, s16 y) {
    if (func_8001FCA0(actor_index, x, y) & 0x80) {
        if (gPlatformHit != 0 && gActors[gPlatformHitActor].actorType == 2) {
            if (gActors[actor_index].unk_148 != gActors[gPlatformHitActor].unk_148) {
                return 2;
            }
            return 3;
        }
        return 1;
    }
    return 0;
}

u16 func_80068378(u16 actor_index) {
    s16 x;
    s16 y;
    u16 temp_v0;
    u16 index;
    u16 bits;
    s32 temp;

    x = (30.0f * gActors[actor_index].unk_148) + gActors[actor_index].posX.whole;
    y = gActors[actor_index].hitboxBY1 + gActors[actor_index].posY.whole + 1;
    for (index = 0; index < 3; index++) {
        temp_v0 = func_800682AC(actor_index, x, y);
        if (temp_v0) {
            return temp_v0;
        }
        y += 0xF;
    }
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        bits = gActors[actor_index].flags_098 & 8;
    }
    else {
        temp = gActors[actor_index].flags_098 & 4;
        bits = temp; // fakematch
    }
    if (bits) {
        return 4;
    }
    return 0;
}

// func_800684D0 is unused
s32 func_800684D0(u16 actor_index) {
    s32 x;

    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
    }
    else {
        x = gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
    }
    if (func_8001FCA0(actor_index, x, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 16) & 0x80) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

// func_80068570 is unused
s32 func_80068570(u16 actor_index) {
    s32 y;
    u16 var_s1;

    y = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 32;
    var_s1 = 0;
    if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1, y) & 0x80) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 - 1, y) & 0x80) {
                var_s1 = 34;
            }
        }
        else {
            var_s1 = 2;
        }
    }
    if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0, y) & 0x80) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 + 1, y) & 0x80) {
                var_s1 += 17;
            }
        }
        else {
            var_s1 += 1;
        }
    }
    return var_s1;
}

// func_800686CC is unused
u32 func_800686CC(u32 arg0) {
    return 0;
}

s32 func_800686D8(u16 actor_index) {
    if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 8) & 0xC0) {
        return 0;
    }
    if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole - (gActors[actor_index].scaleX * 13.0f), gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 8) & 0xC0) {
        if (func_8001FCA0(actor_index, gActors[actor_index].posX.whole + (gActors[actor_index].scaleX * 13.0f), gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 - 8) & 0xC0) {
            return 0;
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            return 1;
        }
        else {
            return 3;
        }
    }
    else {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            return 2;
        }
        else {
            return 4;
        }
    }
}

u32 func_80068870(void) {
    return 0;
}

u32 func_80068878(u32 arg0, u32 arg1) {
    return 0;
}

u32 func_80068888(u32 arg0, u32 arg1) {
    return 0;
}

u32 func_80068898(void) {
    return func_80029A7C(32, 16, -16);
}

u32 func_800688C0(void) {
    return func_80029A7C(0x38, 0x18, -0x18);
}

u32 func_800688E8(void) {
    return func_80029DEC(63, 1);
}

u32 func_8006890C(void) {
    return func_80029A7C(0x50, 0x20, -0x18);
}

u32 func_80068934(void) {
    if ((gActors[D_800E3580].flags & (ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7)) && func_80029A7C(0x68, 0x20, -0x20)) {
        return TRUE;
    }

    return FALSE;
}

u32 func_800689A8(void) {
    if (D_800E3584 & 0x30000) {
        if (func_80029B00(0x24, 8, -8)) {
            return TRUE;
        }
    }

    return FALSE;
}

u32 func_800689F8(void) {
    if (func_80029B00(12, 0, -48)) {
        return 2;
    }

    return 0;
}

u32 func_80068A30(void) {
    if (func_80029B00(12, 48, 0)) {
        return 3;
    }

    return 0;
}

s32 func_80068A68(void) {
    if (func_800689A8()) {
        return 1;
    }
    if (func_800689F8()) {
        return 2;
    }
    if (func_80068A30()) {
        return 3;
    }
    return 0;
}

u32 func_80068ACC(void) {
    return 1;
}

u32 func_80068AD4(void) {
    return func_80029D58(0x40, 0x80, 0x40, -0x40);
}

u32 func_80068B00(void) {
    return func_80029A7C(0xA0, 0x60, -0x60);
}

u32 func_80068B28(void) {
    return func_80029D58(0x40, 0x80, 0x40, -0x40);
}

u32 func_80068B54(void) {
    return func_80029CC0(0x40, 0x80, 0x80, -0x80);
}

u32 func_80068B80(u32 arg0) {
    return 0;
}

s32 func_80068B8C(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0x10000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068BE8(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0x30000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068C48(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068CA8(u16 actor_index, u16 actor_state) {
    if ((gActors[actor_index].var_150 & 0x20000) && (D_800E3584 & 0x10000)) {
        gActors[actor_index].state = actor_state;
        return TRUE;
    }
    else {
        return FALSE;
    }
}

s32 func_80068D18(u16 actor_index, u16 arg1) {
    if ((((s32)gActors[actor_index].var_150 << 0xE) < 0) && (D_800E3584 & 0x30000)) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068D88(u16 actor_index, u16 arg1) {
    if ((((s32)gActors[actor_index].var_150 << 0xE) < 0) && (D_800E3584 & 0xC0000)) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

u16 func_80068DF8(u16 arg0) {
}

u16 func_80068E00(u16 arg0) {
}

// func_80068E08 is unused
u16 func_80068E08(u16 arg0) {
    return func_80068DF8(arg0) | func_80068E00(arg0);
}

// func_80068E48 is unused
void func_80068E48(u16 actor_index, u16 actor_state_1, u16 actor_state_2) {
    s32 temp_v0;

    temp_v0 = func_80068DF8(actor_index);
    switch (temp_v0) {
    case 0x81:
    case 0x83:
        gActors[actor_index].state = actor_state_2;
        return;
    case 0x82:
    case 0x84:
        gActors[actor_index].state = actor_state_1;
        break;
    }
}

u16 func_80068F08(u16 actor_index) {
    s16 diff;

    diff = gActors[actor_index].unk_17C - gActors[actor_index].unk_184_s16[0];
    if ((diff < 11) && (diff > -11)) {
        return 0;
    }
    if (diff >= 0) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            return 0x81;
        }
        else {
            return 0x82;
        }
    }
    else {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            return 0x83;
        }
        else {
            return 0x84;
        }
    }
}

// func_80068FBC is unused
void func_80068FBC(u16 actor_index, u16 actor_state_1, u16 actor_state_2) {
    u16 temp_v0;

    temp_v0 = func_80068F08(actor_index);
    switch (temp_v0) {
    case 0x81:
    case 0x83:
        gActors[actor_index].state = actor_state_2;
        break;;
    case 0x82:
    case 0x84:
        gActors[actor_index].state = actor_state_1;
    }
}

// func_8006907C is unused
void func_8006907C(u16 actor_index, u16 actor_state_1, u16 actor_state_2) {
    u16 temp_v0;

    temp_v0 = func_80068F08(actor_index);
    switch (temp_v0) {
    case 0:
        gActors[actor_index].state = actor_state_1;
        break;
    case 0x81:
    case 0x83:
        gActors[actor_index].state = actor_state_2;
        break;
    }
}

void func_80069130(u16 arg0) {
}

// func_80069138 is unused
s32 func_80069138(u16 actor_index, u16 actor_state_1, s32 arg2, u16 actor_state_2, s32 arg4) {
    s32 temp_v0;

    temp_v0 = func_800686D8(actor_index);
    if (temp_v0 != 0) {
        if (temp_v0 & 2) {
            gActors[actor_index].state = actor_state_1;
            gActors[actor_index].unk_178 = arg2;
        }
        else {
            gActors[actor_index].state = actor_state_2;
            gActors[actor_index].unk_178 = arg4;
        }
        return TRUE;
    }
    else {
        return FALSE;
    }
}

s32 func_80069204(u16 actor_index) {
    u16 temp_a2;

    temp_a2 = func_80068378(actor_index);
    if (temp_a2 & 3) {
        func_80068040(actor_index, 0);
        if ((temp_a2 == 2) || (temp_a2 == 3)) {
            gActors[actor_index].unk_11C /= ((Rand() & 1) + 1);
        }
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_800692C0(u16 arg0) {
}

void func_800692C8(u16 arg0) {
}

void func_800692D0(u16 arg0) {
}

void func_800692D8(u16 arg0) {
}

void func_800692E0(u16 arg0) {
}

void func_800692E8(u16 arg0) {
}

void func_800692F0(u16 arg0) {
}

void func_800692F8(u16 arg0, u16 arg1) {
}

void func_80069304(u16 arg0) {
}

u16 func_8006930C(u16 actor_index, u16 actor_state_1, u16 actor_state_2, u16 actor_state_3, u16 actor_state_4, s16 arg5, s16 arg6, s16 arg7, s16 arg8) {
    u16 sp36;

    sp36 = func_80029FB8(actor_index, arg5, arg6, arg7, arg8);
    if (sp36 & 0x8000) {
        if ((!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (sp36 & 1)) ||
            ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && !(sp36 & 1))) {
            actor_state_1 = actor_state_2;
            actor_state_3 = actor_state_4;
        }
        switch (gActors[actor_index].state) {
        case 0x61:
        case 0x91:
        case 0xA1:
        case 0xB1:
            if (actor_state_1 != actor_state_2) {
                if ((func_80069204(actor_index) == 0) && (gActors[actor_index].state != (actor_state_1 + 1))) {
                    gActors[actor_index].state = actor_state_1;
                }
            }
            else if (gActors[actor_index].state != (actor_state_1 + 1)) {
                gActors[actor_index].state = actor_state_1;
            }
            break;
        case 0x201:
        case 0x241:
            if (actor_state_3 != actor_state_4) {
                if ((func_80069204(actor_index) == 0) && ((actor_state_3 + 1) != gActors[actor_index].state)) {
                    gActors[actor_index].state = actor_state_3;
                }
            }
            else if ((actor_state_3 + 1) != gActors[actor_index].state) {
                gActors[actor_index].state = actor_state_3;
            }
            break;
        }
    }
    else {
        switch (gActors[actor_index].state) {
        case 0x91:
        case 0xA1:
        case 0xB1:
            gActors[actor_index].state = 0x60;
            break;
        case 0x241:
            gActors[actor_index].state = 0x200;
            break;
        }
    }
    return sp36;
}

u16 func_80069538(u16 actor_index) {
    s16 y;
    y = gActors[actor_index].posY.whole + (gActors[actor_index].scaleX * 30.0f);
    if (func_80012AB4(gActors[actor_index].posX.whole, y) & 0x80) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_800695E4(u16 actor_index) {
    s16 y = gActors[actor_index].posY.whole + (gActors[actor_index].scaleX * 30.0f);
    if (func_80012AB4(gActors[actor_index].posX.whole, y - 3) & 0x80) {
        gActors[actor_index].posY.whole -= 1;
    }
}

void func_800696A8(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
    gActors[actor_index].state = 0x1C0;
    func_8006C6F0(actor_index);
}

void func_80069714(u16 actor_index) {
    func_80040858(actor_index);
    gActors[actor_index].state = 0x180;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].unk_144 = 8.0f;
    gActors[actor_index].iFrames = 5;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index].var_150 |= 0x80000;
    gActors[actor_index].var_150 &= ~0x40000;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    if (gActors[actor_index].unk_0F8.raw != 0) {
        if ((!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].unk_0F8.raw > 0)) ||
             ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].unk_0F8.raw < 0))) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
    }
}

void func_80069814(u16 actor_index) {
    func_8006C6F0(actor_index);
    func_80069714(actor_index);
    gActors[actor_index].graphicList = D_800E2024;
    gActors[actor_index].graphicTimer = 1;
}

u16 func_80069884(u16 actor_index) {
    s32 pad;
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && !(gActors[actor_index].var_150 & 0x40000) &&
        !(gActors[actor_index].var_150 & 0x80000) && !(gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        switch (gActors[actor_index].unk_0DD) {
        case 2:
        case 3:
        case 4:
        case 5:
        default:
            gActors[actor_index].unk_118 = 0.0f;
            func_80069814(actor_index);
            func_8002B140(actor_index, 0x40);
            return TRUE;
        case 6:
        case 7:
        case 8:
            gActors[actor_index].unk_118 = 1.0f;
            func_80069814(actor_index);
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            func_8002B140(actor_index, 0x80);
            return TRUE;
        case 9:
        case 10:
        case 11:
            gActors[actor_index].unk_118 = 3.0f;
            func_80069814(actor_index);
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            return TRUE;
        case 12:
        case 13:
        case 14:
            gActors[actor_index].unk_118 = 1.0f;
            func_80069814(actor_index);
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            return TRUE;
        case 19:
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            gActors[actor_index].flags = 0;
            gActors[actor_index].health = 0;
            /* fallthrough */
        case 20:
        case 23:
            return TRUE;
        }
    }
    else {
        return FALSE;
    }
}

void func_80069A18(u16 actor_index) {
    u16 particle_index;

    func_8002B400(actor_index);
    if (!(gActiveFrames & 3)) {
        particle_index = SpawnParticle_List_90C0_16(
            D_800E1540,
            gActors[actor_index].posX.whole + (0x10 - (Rand() & 0x1F)),
            gActors[actor_index].posY.whole + (0x10 - (Rand() & 0x1F)),
            gActors[actor_index].posZ.whole - 1
        );
        if (particle_index != 0) {
            gActors[particle_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[particle_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[particle_index].var_110 = -0.06f;
            gActors[particle_index].unk_114 = -0.06f;
            gActors[particle_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
            gActors[particle_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
            gActors[particle_index].var_15C = 0x1000;
            gActors[particle_index].var_154 = -0x12;
            Actor_SetColorRgb(particle_index, 0x7F);
            gActors[particle_index].unk_104 = -0x20;
            gActors[particle_index].pfn_17C = func_80030A24;
        }
    }
}

void func_80069B94(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(1.0/4));
}

void func_80069BF4(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(4.0/256));
}

s32 func_80069C54(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        if (gActors[actor_index].var_150 & 0x08000000) {
            gActors[actor_index].state = 0xF0;
        }
        else {
            gActors[actor_index].state = 0x100;
        }
        return TRUE;
    }
    else {
        return FALSE;
    }
}

// func_80069CDC is unused
s32 func_80069CDC(u16 actor_index) {
    return func_80069C54(actor_index);
}

// func_80069D04 is unused
s32 func_80069D04(u16 actor_index) {
    func_80069B94(actor_index);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state += 1;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_80069DA8(u16 actor_index) {
    func_80069BF4(actor_index);
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }
}

void func_80069E18(u16 actor_index) {
    gActors[actor_index].unk_118 -= 1.0f;
    if (gActors[actor_index].unk_118 == 0.0f) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_148 = -1.0f;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_148 = 1.0f;
        }
    }
    func_80069B94(actor_index);
}

// func_80069EC4 is unused
void func_80069EC4(u16 actor_index, f32 arg1) {
    gActors[actor_index].state = 0x90;
    gActors[actor_index].unk_118 = arg1;
    gActors[actor_index].unk_11C = 0.0f;
}

void func_80069F10(u16 actor_index) {
    gActors[actor_index].velocityX.raw = (FIXED_UNIT(0.9375) * gActors[actor_index].unk_118) * gActors[actor_index].unk_148;
    gActors[actor_index].graphicIndex = D_800D7E48[(u16)gActors[actor_index].unk_11C / 2];
    gActors[actor_index].unk_11C += gActors[actor_index].unk_118;
    if (gActors[actor_index].unk_11C > 32.0) {
        gActors[actor_index].unk_11C -= 32.0;
    }
}

// func_8006A06C is unused
void func_8006A06C(u16 actor_index, f32 arg1) {
    gActors[actor_index].state = 0xA0;
    gActors[actor_index].unk_118 = arg1;
    gActors[actor_index].unk_11C = 0.0f;
}

void func_8006A0B8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = (FIXED_UNIT(2.0) * gActors[actor_index].unk_118) * gActors[actor_index].unk_148;
    gActors[actor_index].graphicIndex = D_800D7E68[(u16)gActors[actor_index].unk_11C / 2];
    gActors[actor_index].unk_11C += gActors[actor_index].unk_118;
    if (gActors[actor_index].unk_11C >= 32.0) {
        gActors[actor_index].unk_11C -= 32.0;
    }
}

void func_8006A214(u16 actor_index) {
    gActors[actor_index].velocityX.raw = (FIXED_UNIT(1.5) * gActors[actor_index].unk_118) * gActors[actor_index].unk_148;
    gActors[actor_index].graphicIndex = D_800D7E88[(u16)gActors[actor_index].unk_11C / 4];
    gActors[actor_index].unk_11C += gActors[actor_index].unk_118;
    if (gActors[actor_index].unk_11C >= 16.0) {
        gActors[actor_index].unk_11C -= 16.0;
        Sound_PlaySfxAtActor2(SFX_CHIRP_012C, actor_index);
    }
}

void func_8006A384(u16 actor_index) {
    gActors[actor_index].velocityX.raw = (FIXED_UNIT(0.5) * gActors[actor_index].unk_118) * gActors[actor_index].unk_148;
    gActors[actor_index].graphicIndex = D_800D7E90[(u16)(gActors[actor_index].unk_11C / 2)];
    gActors[actor_index].unk_11C += gActors[actor_index].unk_118;
    if (gActors[actor_index].unk_11C > 30.0) {
        gActors[actor_index].unk_11C -= 30.0;
    }
}

void func_8006A4DC(u16 actor_index, s16 vel_y_scale) {
    gActors[actor_index].velocityY.raw = ((f32)vel_y_scale * FIXED_UNIT(0.375) * gActors[actor_index].unk_118) * gActors[actor_index].unk_148;
    gActors[actor_index].graphicIndex = D_800D7E90[(u16)(gActors[actor_index].unk_11C / 2)];
    gActors[actor_index].unk_11C += gActors[actor_index].unk_118;
    if (gActors[actor_index].unk_11C > 30.0) {
        gActors[actor_index].unk_11C -= 30.0;
    }
}

void func_8006A64C(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(2.1875);
        if (gActors[actor_index].graphicIndex == GINDEX_68A3) {
            gActors[actor_index].graphicList = D_800E1CE8;
        }
        if (gActors[actor_index].graphicIndex == GINDEX_689B) {
            gActors[actor_index].graphicList = D_800E1CC4;
        }
        gActors[actor_index].graphicTimer = 1;
    }
}

void func_8006A724(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].var_158 = 0;
    gActors[actor_index].var_15C = FIXED_UNIT(16.0);
    gActors[actor_index].var_160 = 1;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].graphicIndex = GINDEX_1034;
    gActors[actor_index].graphicTimer = 0;
}

void func_8006A7B0(u16 actor_index) {
    if (!func_80069538(actor_index)) {
        gActors[actor_index].state = 0x100;
        return;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
        gActors[actor_index].state = 0x150;
        gActors[actor_index].graphicList = D_800E1C2C;
        gActors[actor_index].graphicTimer = 1;
        return;
    }

    func_800695E4(actor_index);
    if (gActors[actor_index].var_160 != 0) {
        gActors[actor_index].var_15C -= FIXED_UNIT(1.5);
    }
    else {
        gActors[actor_index].var_15C += FIXED_UNIT(1.5);
    }

    if (gActors[actor_index].var_15C < 0) {
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].graphicIndex = GINDEX_1038;
    }
    else if (gActors[actor_index].var_15C > FIXED_UNIT(47.0)) {
        gActors[actor_index].var_15C = FIXED_UNIT(47.0);
        gActors[actor_index].var_160 = 1;
        gActors[actor_index].graphicIndex = GINDEX_1030;
    }
    else {
        gActors[actor_index].graphicIndex = D_800D7EB0[gActors[actor_index].var_15C / FIXED_UNIT(8.0)];
    }
}

void func_8006A924(u16 actor_index) {
    s32 vel_x;
    s32 var_v1;
    u16 parent_index;

    parent_index = gActors[actor_index].parentIndex;
    if ((gActors[parent_index].health == 0) || !(gActors[parent_index].flags & ACTOR_FLAG_ACTIVE) ||
        ((gActors[parent_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[parent_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].state = 0x100;
        return;
    }
    if ((gActors[parent_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].state = 0x150;
        gActors[actor_index].graphicList = D_800E1C2C;
        gActors[actor_index].graphicTimer = 1;
        return;
    }
    gActors[parent_index].parentIndex = actor_index;
    gActors[parent_index].flags_098 |= ACTOR_FLAG3_UNK9;
    gActors[actor_index].posX.whole = gActors[parent_index].posX.whole + gActors[actor_index].var_158;
    var_v1 = FALSE;
    gActors[actor_index].posY.whole = (gActors[parent_index].posY.whole + gActors[parent_index].hitboxBY1 - gActors[actor_index].hitboxBY0) - (gActors[actor_index].scaleX * 8.0f);
    gActors[actor_index].posZ.raw = gActors[parent_index].posZ.raw + 1;
    vel_x = gActors[parent_index].velocityX.raw;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        vel_x = -vel_x;
    }

    if (vel_x <= FIXED_UNIT(-1.0)) {
        var_v1 = TRUE;
        gActors[actor_index].var_15C += FIXED_UNIT(2.0);
        gActors[actor_index].var_160 = 0;
    }
    else if (vel_x >= FIXED_UNIT(1.0)) {
        var_v1 = TRUE;
        gActors[actor_index].var_15C -= FIXED_UNIT(2.0);
        gActors[actor_index].var_160 = 1;
    }
    else if (gActors[actor_index].var_160 != 0) {
        gActors[actor_index].var_15C -= FIXED_UNIT(1.5);
    }
    else {
        gActors[actor_index].var_15C += FIXED_UNIT(1.5);
    }

    if (gActors[actor_index].var_15C < 0) {
        gActors[actor_index].var_15C = 0;
        gActors[actor_index].var_160 = 0;
        if (var_v1 && (gActiveFrames & 4)) {
            gActors[actor_index].graphicIndex = GINDEX_103A;
            return;
        }
    }
    else if (gActors[actor_index].var_15C > FIXED_UNIT(47.0)) {
        gActors[actor_index].var_15C = FIXED_UNIT(47.0);
        gActors[actor_index].var_160 = 1;
        if (var_v1 && (gActiveFrames & 4)) {
            gActors[actor_index].graphicIndex = GINDEX_1032;
            return;
        }
    }
    gActors[actor_index].graphicIndex = D_800D7EB0[gActors[actor_index].var_15C / FIXED_UNIT(8.0)];
}

void func_8006ABEC(u16 actor_index, s16* arg1) {
    func_80069DA8(actor_index);
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        if (gActors[actor_index].var_150 & 0x08000000) {
            Sound_PlaySfxAtActor2(SFX_008B, actor_index);
            gActors[actor_index].state = 0xD0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        }
        else {
            gActors[actor_index].state = 0x150;
            gActors[actor_index].graphicList = arg1;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.5;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        }
    }
}

s32 func_8006AD50(u16 actor_index) {
    if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        return 2;
    }
    else if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
        return 3;
    }
    return 0;
}

void func_8006ADF8(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].graphicList = D_800E1D84;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].var_15C = 0;
    gActors[actor_index].var_160 = 0;
    gActors[actor_index].unk_118 = 0.0f;
    gActors[actor_index].unk_11C = 3.0f;
    func_80065B78(actor_index);
}

void func_8006AE84(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    if (gActors[actor_index].var_160 != 0) {
        gActors[actor_index].graphicList = D_800E1DA4;
    }
    else {
        gActors[actor_index].graphicList = D_800E1D8C;
    }
    gActors[actor_index].state++;
    gActors[actor_index].graphicTimer = 1;
}

void func_8006AF30(u16 actor_index) {
    switch ((u16)gActors[actor_index].unk_118) {
    case 0:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(
            gActors[actor_index].velocityX.raw,
            gActors[actor_index].unk_148 * FIXED_UNIT(4.5),
            FIXED_UNIT(1.75)
        );
        break;
    case 1:
        gActors[actor_index].unk_118 += 1.0f;
        gActors[actor_index].unk_11C = 14.0f;
        gActors[actor_index].unk_0DA = 4;
        gActors[actor_index].unk_0DB = 8;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(0.75); \
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4.5);
        gActors[actor_index].flags |= D_800E3570;
        gActors[actor_index].damage = 50;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].scaleX * -2.0f;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].scaleY * -16.0f;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].hitboxAX0 = -4;
            gActors[actor_index].hitboxAX1 = 23;
        }
        else {
            gActors[actor_index].hitboxAX1 = 4;
            gActors[actor_index].hitboxAX0 = -23;
        }
        gActors[actor_index].hitboxAX0 *= gActors[actor_index].scaleX;
        gActors[actor_index].hitboxAX1 *= gActors[actor_index].scaleX;
        /* fallthrough */
    case 2:
        gActors[actor_index].var_15C += 0x780;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, gActors[actor_index].var_15C);
        if (gActiveFrames & 1) {
            func_80065D60(actor_index);
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) ||
            ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
            ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_index].var_150 |= 0x10000;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(-2.25);
            func_8006AE84(actor_index);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                func_800340CC(actor_index, 12, 0);
            }
        }
        break;
    case 3:
        func_8006AE84(actor_index);
        break;
    }
    gActors[actor_index].unk_11C -= 1.0f;
    if (gActors[actor_index].unk_11C == 0.0f) {
        gActors[actor_index].unk_118 += 1.0f;
    }
}

// func_8006B310 is unused
void func_8006B310(u16 actor_index) {
    func_80028CE8(actor_index);
    gActors[actor_index].unk_0DA = 0;
    gActors[actor_index].hitboxAY0 = gActors[actor_index].scaleX * 5.0f;
    gActors[actor_index].hitboxAX1 = gActors[actor_index].scaleX * 5.0f;
    gActors[actor_index].hitboxAY1 = gActors[actor_index].scaleX * -5.0f;
    gActors[actor_index].hitboxAX0 = gActors[actor_index].scaleX * -5.0f;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8);
    gActors[actor_index].flags |= D_800E3574;
    gActors[actor_index].flags |= (D_800E3574 + ACTOR_FLAG_UNK12);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].var_160 = gActors[actor_index].flags & (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].unk_118 = 12.0f;
    gActors[actor_index].unk_11C = -1.0f;
}

void func_8006B448(u16 actor_index) {
    if (gActors[actor_index].damage > 10) {
        Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
    }
    else {
        Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
    }
    gActors[actor_index].unk_11C = 6.0f;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].var_158 = gActors[actor_index].velocityX.raw;
    gActors[actor_index].var_15C = gActors[actor_index].velocityY.raw;
    gActors[actor_index].velocityX.raw /= 4;
    gActors[actor_index].velocityY.raw /= 4;
}

void func_8006B518(u16 actor_index) {
    if (gActors[actor_index].unk_11C >= 0.0f) {
        gActors[actor_index].unk_11C -= 1.0f;
        if (gActors[actor_index].unk_11C == 0.0f) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].var_158;
            gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
            gActors[actor_index].flags |= gActors[actor_index].var_160;
        }
    }
}

void func_8006B5B0(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_158 = gActors[actor_index].flags & ACTOR_FLAG_FLIPPED;
    gActors[actor_index].var_15C = gActors[actor_index].var_158 ^ ACTOR_FLAG_FLIPPED;
    gActors[actor_index].var_160 = 0;
    gActors[actor_index].unk_118 = 0.0f;
}

void func_8006B648(u16 actor_index, u16 arg1) {
    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    switch (gActors[actor_index].var_160) {
    case 0:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].var_160++;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
            if (arg1) {
                gActors[actor_index].graphicList = D_800E1934;
            }
            else {
                gActors[actor_index].graphicList = D_800E1898;
            }
        }
        else {
            gActors[actor_index].flags |= gActors[actor_index].var_158;
        }
        break;
    case 1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].var_160++;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].flags |= gActors[actor_index].var_158;
            if (arg1) {
                gActors[actor_index].graphicList = D_800E1950;
            }
            else {
                gActors[actor_index].graphicList = D_800E18B4;
            }
        }
        else {
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
        }
        break;
    case 2:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].var_160++;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
            if (arg1) {
                gActors[actor_index].graphicList = D_800E1978;
            }
            else {
                gActors[actor_index].graphicList = D_800E18DC;
            }
        }
        else {
            gActors[actor_index].flags |= gActors[actor_index].var_158;
        }
        break;
    case 3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].var_160++;
            gActors[actor_index].graphicTimer = 1;
            if (arg1 != 0) {
                gActors[actor_index].graphicList = D_800E198C;
            }
            else {
                gActors[actor_index].graphicList = D_800E18F0;
            }
        }
        gActors[actor_index].flags |= gActors[actor_index].var_15C;
        break;
    case 4:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].unk_118 -= 1.0f;
            gActors[actor_index].flags |= gActors[actor_index].var_158;
            if (gActors[actor_index].unk_118 > 0.0f) {
                gActors[actor_index].var_160 = 2;
                if (arg1) {
                    gActors[actor_index].graphicList = D_800E1950;
                }
                else {
                    gActors[actor_index].graphicList = D_800E18B4;
                }
            }
            else {
                gActors[actor_index].var_160++;
                if (arg1) {
                    gActors[actor_index].graphicList = D_800E199C;
                }
                else {
                    gActors[actor_index].graphicList = D_800E1900;
                }
            }
        }
        else {
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
        }
        break;
    case 5:
        if (gActors[actor_index].graphicTimer == 0) {
            if (arg1) {
                gActors[actor_index].state = 0x200;
            }
            else {
                gActors[actor_index].state = 0x60;
                gActors[actor_index].unk_13C_f32 = 2.0f;
            }
        }
        gActors[actor_index].flags |= gActors[actor_index].var_158;
        break;
    default:
        break;
    }
}

void func_8006B940(u16 actor_index, u16 actor_1) {
    SpawnRoundBomb(actor_1, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0, FIXED_UNIT(2.5));
    func_8002A57C(actor_1, 0x3000, gActors[D_800E3580].posX.raw, FIXED_UNIT(4.0));
}

void func_8006B9EC(u16 actor_index, u16 actor_1) {
    SpawnRoundBomb(
        actor_1,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].unk_148 * FIXED_UNIT(2.5),
        FIXED_UNIT(3.0)
    );
}

void func_8006BA80(u16 arg0_unused, u16 actor_index) {
    gActors[actor_index].actorType = 0x2601;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
    func_8002A57C(actor_index, 0x2000, gActors[D_800E3580].posX.raw, FIXED_UNIT(3.0));
}

// func_8006BAFC is unused
void func_8006BAFC(u16 actor_0, u16 actor_1) {
    SpawnBoomerang(actor_1, gActors[actor_0].posX.whole, gActors[actor_0].posY.whole, 0, 0);
    gActors[actor_1].unk_0F8.raw = -3;
}

void func_8006BB8C(u16 actor_0, u16 actor_1) {
    s32 angle;

    angle = Math_PlaneQuadrant(
        gActors[D_800E3580].posX.whole - gActors[actor_0].posX.whole,
        gActors[D_800E3580].posY.whole - gActors[actor_0].posY.whole
    );
    SpawnShuriken(actor_1, gActors[actor_0].posX.whole, gActors[actor_0].posY.whole, COS(angle) * FIXED_UNIT(2.875), SIN(angle) * FIXED_UNIT(2.875));
}

void func_8006BC90(u16 actor_0, u16 actor_1) {
    gActors[actor_1].parentIndex = actor_0;
    gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK9;
    gActors[actor_1].unk_104 = gActors[actor_0].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_0].posY.raw + FIXED_UNIT(6.0);
    gActors[actor_1].unk_10C = gActors[actor_0].posZ.raw - 8;
}

u16 func_8006BD08(u16 actor_index) {
    u16 free_actor;

    free_actor = Actor_RangeFindInactive(0x70, 0x7A);
    if (free_actor != 0) {
        gActors[free_actor].actorType = 0;
        Actor_Initialize(free_actor);
        gActors[free_actor].posX.whole = gActors[actor_index].posX.whole;
        gActors[free_actor].posY.whole = gActors[actor_index].posY.whole;
        gActors[free_actor].posZ.whole = gActors[actor_index].posZ.whole - 1;
        gActors[actor_index].pfn_158(actor_index, free_actor);
        if (1) {} // fakematch
        gActors[actor_index].unk_11C = free_actor;
        gActors[actor_index].unk_120 = gActors[free_actor].actorType;
        gActors[actor_index].var_158 = gActors[free_actor].velocityX.raw * gActors[actor_index].scaleX;
        gActors[actor_index].var_15C = gActors[free_actor].velocityY.raw * gActors[actor_index].scaleX;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].var_158 > 0)) ||
            (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].var_158 < 0))) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].unk_134 -= 1.0f;
        func_8006BC90(actor_index, free_actor);
    }
    return free_actor;
}

s32 func_8006BEF4(u16 actor_index) {
    u16 actor_0;

    actor_0 = gActors[actor_index].unk_11C;
    if (!(gActors[actor_0].flags & ACTOR_FLAG_ACTIVE) || (gActors[actor_0].actorType != (u16)gActors[actor_index].unk_120)) {
        gActors[actor_index].state = 0x60;
        return TRUE;
    }
    else {
        if (gActors[actor_index].graphicTimer == 0) {
            func_800662F0(actor_index);
            gActors[actor_index].state++;
            gActors[actor_0].flags_098 |= ACTOR_FLAG3_UNK10;
            gActors[actor_0].unk_0F8.raw = gActors[actor_index].var_158;
            gActors[actor_0].unk_0FC.raw = gActors[actor_index].var_15C;
            Sound_PlaySfxAtActor2(0x2A, actor_index);
            return TRUE;
        }
        else {
            func_8006BC90(actor_index, actor_0);
            return FALSE;
        }
    }
}

// func_8006C0F4 is unused
void func_8006C0F4(u16 actor_index) {
    gActors[actor_index].state = 0x470;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    ACTOR_GFX_INIT(actor_index, D_800E2268);
    gActors[actor_index].unk_144 = 4.0f;
    gActors[actor_index].velocityX.raw /= 2;
    gActors[actor_index].velocityY.raw = 0;
}

void ActorType2_Noop(u16 arg0) {
}

void func_8006C1AC(u16 actor_index) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    u16 temp_v0_3;

    gActors[actor_index].unk_13C_f32 = 0.0f;
    if (gActors[actor_index].var_150 & 0x800) {
        if ((gActors[actor_index].posX.whole > 384) || (gActors[actor_index].posX.whole < -384) ||
            (gActors[actor_index].posY.whole > 384) || (gActors[actor_index].posY.whole < -384)) {
            gActors[actor_index].flags = 0;
            return;
        }
    }

    gActors[actor_index].var_150 &= ~0x82C000;
    if (gActors[actor_index].var_150 & 0x2000) {
        D_800E3570 = 0x80;
        D_800E3574 = 0x100;
    }
    else {
        D_800E3570 = 0x200;
        D_800E3574 = 0x400;
    }
    Actor_ApproachRgb(actor_index, 8);
    if ((gActors[actor_index].posX.whole > 152) || (gActors[actor_index].posX.whole < -152) ||
        (gActors[actor_index].posY.whole > 104) || (gActors[actor_index].posY.whole < -104)) {
        gActors[actor_index].var_150 |= 0x800000;
    }
    gActors[actor_index].unk_17C = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_180 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (gActors[actor_index].state >= 0x51) {
        if (gActors[actor_index].health <= 0) {
            if (gActors[actor_index].var_150 & 0x80) {
                gActors[actor_index].var_150 |= 0x80000000;
                gActors[actor_index].health = 0x4000;
            }
        }
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
        gActors[actor_index].flags &= ~ACTOR_FLAG_PLATFORM0;
        if (gActors[actor_index].var_150 & 0x1000) {
            if (gActors[actor_index].var_150 & 0x02000000) {
                if (func_8002884C(actor_index)) {
                    gActors[actor_index].var_150 &= ~0x02000000;
                }
            }
        }
        else if (gActors[actor_index].var_150 & 0x02000000) {
            if (func_8002884C(actor_index)) {
                gActors[actor_index].var_150 &= ~0x02000000;
            }
            else {
                gActors[actor_index].iFrames = 8;
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK1;
            }
        }
        else {
            temp_v0_3 = func_8002877C(actor_index);
            if (temp_v0_3 != 0) {
                if (temp_v0_3 & 1) {
                    gActors[actor_index].var_150 |= 0x4000;
                }
                else {
                    gActors[actor_index].var_150 |= 0x8000;
                }
            }
        }
        if ((gActors[actor_index].var_0D8 & 0x30) == 0x20) {
            if (Clanpot_AddItemCheck3(actor_index, 0x400, 0, 0, 0x65) >= 0) {
                gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[actor_index].state = 0x20;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].rotateZ = 0.0f;
            }
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK21) {
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].state = 0x30;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].rotateZ = 0.0f;
        }
    }
    if ((u16)gActors[actor_index].var_110 & 0x4000) {
        if ((u16)gActors[actor_index].var_110 & 0x2000) {
            Actor_UpdateNearest(actor_index);
        }
        else {
            Actor_UpdateNearestTo0(actor_index);
        }
    }
    else {
        D_800E3580 = 0;
    }
    func_8002AA20(actor_index, 0);
}

void func_8006C5A4(u16 actor_index) {
    u16 state;

    state = gActors[actor_index].state;
    if ((state >= 0x51) && (state != 0xFFFF)) {
        if (gActors[actor_index].health == 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK10;
        }

        if (gActors[actor_index].iFrames != 0) {
            gActors[actor_index].iFrames--;
        }

        func_80066964(actor_index, (gActors[actor_index].var_0D8 & 0x7000) / 0x1000);
        func_80066A10(actor_index);

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_148 = -gActors[actor_index].scaleX;
        }
        else {
            gActors[actor_index].unk_148 = gActors[actor_index].scaleX;
        }

        if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) && (gGuestActorIndex != actor_index)) {
            func_80028C00(actor_index);
        }
    }

    func_80066BCC(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8006C6F0(u16 actor_index) {
    if (gActors[actor_index].var_150 & 0x08000000) {
        gActors[actor_index].var_150 &= ~0x08000000;
        func_8006CE74(actor_index);
        gActors[actor_index].posY.whole += 3.0f * gActors[actor_index].scaleX;
        gActors[actor_index].graphicIndex = GINDEX_6800;
    }
}

u16 func_8006C7B8(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && !(gActors[actor_index].var_150 & 0x40000)) {
        func_80040858(actor_index);
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].scaleX == 0.7) {
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_00A4, actor_index);
        }
        else {
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_0067, actor_index);
        }
        func_80029134(actor_index);
        gActors[actor_index].state = 0x160;
        func_8006C6F0(actor_index);
        return TRUE;
    }
    else {
        return FALSE;
    }
}

u16 func_8006C8B8(u16 actor_index) {
    u16 result = func_80069C54(actor_index);
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C908(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C944(u16 actor_index) {
    u16 result = func_80069C54(actor_index);
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C994(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C9D0(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CA0C(u16 actor_index) {
    u16 result = FALSE;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        gActors[actor_index].state = 0x250;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_118 = (f32)FIXED_UNIT(-0.5);
        }
        else{
            gActors[actor_index].unk_118 = (f32)FIXED_UNIT(0.5);
        }
        gActors[actor_index].unk_11C = (f32)FIXED_UNIT((1.0/8));
        result = TRUE;
    }
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CAD4(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CB10(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CB4C(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

void func_8006CB88(u16 actor_index) {
    u16 actor_1;

    actor_1 = gActors[actor_index].unk_140_f32;
    if (actor_1 != 0) {
        if (gActors[actor_1].actorType == ACTORTYPE_GRAPHIC_52) {
            gActors[actor_1].flags = 0;
             gActors[actor_index].unk_140_f32 = 0.0f;
        }
    }
}

u16 func_8006CC70(u16 actor_index) {
    u16 free_actor;

    if (gActors[actor_index].var_0D8 & 0xF00) {
        free_actor = Actor_RangeFindInactive_90ToC0();
        if (free_actor != 0) {
            gActors[actor_index].unk_140_f32 = free_actor;
            gActors[free_actor].actorType = 0x34;
            Actor_Initialize(free_actor);
            gActors[free_actor].flags = 2;
            gActors[free_actor].unk_148 = 1.0f;
        }
        return free_actor;
    }
    return 0;
}

void func_8006CD5C(u16 actor_index) {
    s32 temp_v0;

    temp_v0 = gActors[actor_index].var_0D8 & 0x30;
    switch (temp_v0) {
    case 0x00:
        gActors[actor_index].unk_0DF = 1;
        break;
    case 0x10:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = 0.85f;
        gActors[actor_index].unk_0DF = 0;
        break;
    case 0x20:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = 0.7f;
        gActors[actor_index].unk_0DF = 0;
        break;
    case 0x30:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = 1.2f;
        gActors[actor_index].unk_0DF = 2;
        break;
    }
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    gActors[actor_index].palette_18C = D_800D18A4[(gActors[actor_index].var_0D8 & 0x7000) / 4096];
}

void func_8006CE74(u16 actor_index) {
    s32 temp_t9;

    temp_t9 = gActors[actor_index].var_0D8 & 0x30;
    switch (temp_t9) {
    case 0x00:
        gActors[actor_index].scaleX = 1.0f;
        break;
    case 0x10:
        gActors[actor_index].scaleX = 0.85f;
        break;
    case 0x20:
        gActors[actor_index].scaleX = 0.7f;
        break;
    case 0x30:
        gActors[actor_index].scaleX = 1.2f;
        break;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_8006CF20(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_6800;
        func_8006CD5C(actor_index);
        func_800358DC(actor_index);
        func_8006CC70(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
    if (gActors[actor_index].flags != 0) {
        func_80066BCC(actor_index);
    }
    else {
        func_8006CB88(actor_index);
    }
}

void func_8006CFDC(u16 actor_index) {
    u16 cur_110;
    u16 cur_0D8;

    cur_110 = gActors[actor_index].var_110;
    cur_0D8 = gActors[actor_index].var_0D8;
    gActors[actor_index].actorType = ACTORTYPE_CLANCERGHOST;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0xFFFF;
    gActors[actor_index].var_110 = cur_110 + 0x8000;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].var_0D8 = cur_0D8;
}

void func_8006D0EC(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        func_8006CD5C(actor_index);
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

void func_8006D160(u16 actor_index) {
    u32 temp_t1;
    s32 temp_t5;

    if (gActors[actor_index].state == 0) {
        temp_t1 = (u16)gActors[actor_index].var_110;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK20 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicList = D_800E1700;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_150 = temp_t1;
        if (temp_t1 & 0x100) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_148 = -1.0f;
        }
        if (temp_t1 & 0x2000) {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK8;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK10;
        }
        if (temp_t1 & 0x200) {
            gActors[actor_index].state = 0x1D0;
        }
        if (temp_t1 & 0x1000) {
            gActors[actor_index].var_150 |= 0x1000;
        }
        gActors[actor_index].unk_188_s16 = D_800D7EBC[temp_t1 & 3];
        gActors[actor_index].unk_190_s16[0] = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index].unk_190_s16[1] = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        gActors[actor_index].unk_184_s16[0] = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
        gActors[actor_index].unk_184_s16[1] = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        temp_t5 = gActors[actor_index].var_0D8 & 0xC0;
        switch (temp_t5) {
        case 0x0:
            gActors[actor_index].health = 1;
            break;
        case 0x40:
            gActors[actor_index].health = 50;
            break;
        case 0x80:
            gActors[actor_index].health = 100;
            break;
        case 0xC0:
            gActors[actor_index].health = 255;
            break;
        }
        gActors[actor_index].unk_0DE = 1;
        func_8006CD5C(actor_index);
        gActors[actor_index].unk_144 = 0.0f;
        func_80066A10(actor_index);
        if (func_8002884C(actor_index) == 0) {
            gActors[actor_index].var_150 |= 0x02000000;
        }
        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].posZ.raw = FIXED_UNIT(-0.98828125) - (actor_index * 16);
            gActors[actor_index].var_154 = gActors[actor_index].posZ.raw;
        }
        func_8006CC70(actor_index);
    }
}

void func_8006D3E4(u16 actor_index, u16 actor_state) {
    u16 cur_110;
    u16 cur_0D8;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].var_110 = ((u16)gActors[actor_index].var_110 | 0x100);
    }
    else {
        gActors[actor_index].var_110 = ((u16)gActors[actor_index].var_110 & ~0x100);
    }
    cur_110 = gActors[actor_index].var_110;
    cur_0D8 = gActors[actor_index].var_0D8;
    Actor_Initialize(actor_index);
    gActors[actor_index].var_110 = cur_110;
    gActors[actor_index].var_0D8 = cur_0D8;
    func_8006D160(actor_index);
    gActors[actor_index].state = actor_state;
}

void func_8006D65C(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x60) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].unk_144 = 0.0f;
            func_8006C6F0(actor_index);
        }
        gActors[actor_index].unk_144 = 0.0f;
        if (gActors[actor_index].var_158 & 0x8000) {
            gActors[actor_index].var_158 = 0;
        }
        else {
            gActors[actor_index].var_158++;
        }
        func_80069B94(actor_index);
    }
}

void func_8006D744(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x70) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E19C0);
            gActors[actor_index].unk_118 = 6.0f;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 1.0f;
        }
        func_80069E18(actor_index);
    }
}

void func_8006D7F8(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x80) {
            gActors[actor_index].graphicList = D_800E1888;
            func_8006B5B0(actor_index);
        }
        func_80069B94(actor_index);
        func_8006B648(actor_index, 0);
    }
}

void func_8006D884(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x90) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicTimer = 0;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = 0.0f;
        }
        func_80069F10(actor_index);
    }
}

void func_8006D914(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0xA0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicTimer = 0;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = 0.0f;
        }
        func_8006A0B8(actor_index);
    }
}

void func_8006D9A4(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0xD0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            if (!(gActors[actor_index].var_150 & 0x08000000)) {
                gActors[actor_index].var_150 |= 0x08000000;
                func_8006CE74(actor_index);
                gActors[actor_index].scaleX *= 1.15;
                gActors[actor_index].unk_118 = 1.0f;
                gActors[actor_index].unk_11C = 0.0f;
                gActors[actor_index].unk_144 = 24.0f;
                gActors[actor_index].graphicList = gGraphicListBlank;
                gActors[actor_index].graphicTimer = 0;
                gActors[actor_index].graphicIndex = GINDEX_1090;
                gActors[actor_index].posY.whole -= (3.0f * gActors[actor_index].scaleX);
            }
        }
        func_8006A214(actor_index);
    }
}

void func_8006DB10(u16 arg0) {
}

void func_8006DB18(u16 actor_index) {
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0xF0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        func_8006A214(actor_index);
        func_8006ABEC(actor_index, NULL);
    }
}

void func_8006DBE4(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0xB0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].graphicIndex = GINDEX_689B;
            gActors[actor_index].graphicTimer = 0;
            gActors[actor_index].var_150 |= 0x1800;
            gActors[actor_index].unk_144 = 0.0f;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_ONSCREEN_ONLY;
        func_8006A64C(actor_index);
    }
}

void func_8006DCB8(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0xC0) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E1A8C);
            gActors[actor_index].var_158 = 0x16;
            gActors[actor_index].unk_118 = 0.0f;
        }
        gActors[actor_index].var_158--;
        if (gActors[actor_index].var_158 > 0) {
            func_80069B94(actor_index);
        }
        else if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(-0.8125);
        }
        if ((gActors[actor_index].graphicTimer == 0) && (gActors[actor_index].unk_118 == 0.0f)) {
            gActors[actor_index].unk_13C_f32 = 3.0f;
            gActors[actor_index].state = 0x60;
        }
    }
}

void func_8006DDF0(u16 actor_index) {
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0x100) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            ACTOR_GFX_INIT(actor_index, D_800E1C1C);
            gActors[actor_index].unk_144 = 8.0f;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E1C1C);
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-3.0)) {
            func_8006ABEC(actor_index, D_800E1C2C);
        }
        else {
            func_8006ABEC(actor_index, D_800E1C78);
        }
    }
}

void func_8006DF28(u16 actor_index) {
    if (func_8006C8B8(actor_index) == 0) {
        if (gActors[actor_index].state == 0x120) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            ACTOR_GFX_INIT(actor_index, D_800E1BF4);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_144 = 0.0f;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x130;
            func_800657B0(actor_index);
        }
    }
}

void func_8006E000(u16 actor_index) {
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0x130) {
            gActors[actor_index].state++;
            func_8006C6F0(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            ACTOR_GFX_INIT(actor_index, D_800E1C00);
            gActors[actor_index].unk_144 = 8.0f;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_11C;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_120;
        }
        if ((gActors[actor_index].unk_124 != 0.0f) && (gActors[actor_index].velocityY.raw < FIXED_UNIT(2.5))) {
            gActors[actor_index].unk_124 = 0.0f;
            if ((gActors[actor_index].velocityX.raw == 0) ||
                (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].velocityX.raw > 0)) ||
                 ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].velocityX.raw < 0))) {
                gActors[actor_index].graphicList = D_800E1D0C;
            }
            else {
                gActors[actor_index].graphicList = D_800E1D30;
            }
            gActors[actor_index].graphicTimer = 1;
        }
        if (gActors[actor_index].velocityY.raw < 0) {
            gActors[actor_index].state = 0x101;
        }
        else {
            if (func_80069538(actor_index) != 0) {
                gActors[actor_index].unk_13C_f32 = 28.0f;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
                gActors[actor_index].velocityY.raw = 0;
            }
        }
        func_8006ABEC(actor_index, D_800E1C78);
    }
}

void func_8006E1F8(u16 actor_index) {
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0x250) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].unk_144 = 8.0f;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_11C;
        }
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_118;
        if (((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) ||
            ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_index].velocityX.raw = 0;
        }
        func_80069DA8(actor_index);
        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].state = 0x200;
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                gActors[actor_index].velocityX.raw /= 2;
                gActors[actor_index].velocityY.raw = 0;
                func_800658D8(actor_index);
            }
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
            gActors[actor_index].velocityY.raw = 0;
        }
        gActors[actor_index].var_158 = func_800298D0(0, gActors[actor_index].var_158, FIXED_UNIT(32.0));
    }
}

void func_8006E3DC(u16 arg0) {
}

void func_8006E3E4(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x150) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].unk_144 = 0.0f;
            func_800658D8(actor_index);
        }
        if (gActors[actor_index].health != 0) {
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0x60;
                gActors[actor_index].unk_13C_f32 = 4.0f;
            }
            func_80069B94(actor_index);
        }
        else {
            func_800696A8(actor_index);
        }
    }
}

void func_8006E4EC(u16 actor_index) {
    func_80040858(actor_index);
    if (gActors[actor_index].state == 0x160) {
        gActors[actor_index].state++;
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_144 = 20.0f;
        if (gActors[gActors[actor_index].parentIndex].flags & ACTOR_FLAG_UNK8) {
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        gActors[actor_index].var_150 |= 0x40000;
        gActors[actor_index].var_150 &= ~0x80000;
        Actor_SetHitboxA(actor_index, gActors[actor_index].scaleX * 5.0f);
    }
    if (gActors[actor_index].health == 0) {
        gActors[actor_index].unk_118 = 1.0f;
        func_80069814(actor_index);
        return;
    }

    switch ((u16)gActors[actor_index].unk_114) {
    default:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1F88;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].damage = gActors[actor_index].scaleX * 30.0f;
            gActors[actor_index].unk_0DB = 2; \
            gActors[actor_index].unk_0DA = 0x85;
        }
        break;
    case 1:
    case 2:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1D0C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].damage = gActors[actor_index].scaleX * 70.0f;
            gActors[actor_index].unk_0DB = 2; \
            gActors[actor_index].unk_0DA = 0x85;
        }
        break;
    }

    switch (func_800291AC(actor_index,
        0x170,
        D_800E3574 + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW),
        0x100,
        D_800E3574 + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW))) {
    case 0:
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
            func_80040858(actor_index);
            Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            gActors[actor_index].graphicList = D_800E1FB4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].unk_13C_f32 = 19.0f;
            return;
        }
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 18,
            gActors[actor_index].posZ.whole - 1,
            FIXED_UNIT(1),
            FIXED_UNIT(8),
            5);
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) {
            gActors[actor_index].graphicList = D_800E1FB4;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].unk_13C_f32 = 20.0f;
            if (gActors[actor_index].unk_188_s16 > 0) {
                if (gActors[actor_index].var_150 & 0x40) {
                    gActors[actor_index].unk_188_s16--;
                    SpawnGemActor(actor_index, 0x30, 0);
                }
                else if (gActors[actor_index].var_150 & 0x20) {
                    gActors[actor_index].unk_188_s16--;
                    SpawnGemActor(actor_index, 0x31, 0);
                }
                else if (gActors[actor_index].var_150 & 8) {
                    gActors[actor_index].unk_188_s16--;
                    SpawnGemActor(actor_index, 0x33, 0);
                }
                else if (gActors[actor_index].var_150 & 0x10) {
                    gActors[actor_index].unk_188_s16--;
                    SpawnGemActor(actor_index, 0x32, 0);
                }
            }
        }
        else {
            func_80067E50(actor_index, D_800E1F64);
        }
        break;
    case 2:
        gActors[actor_index].var_150 &= ~0x40000;
        gActors[actor_index].unk_13C_f32 = 21.0f;
        break;
    case 3:
        gActors[actor_index].var_150 &= ~0x40000;
        gActors[actor_index].unk_13C_f32 = 22.0f;
        break;
    }
}

s32 func_8006E9B4(u16 actor_index) {
    if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        return 2;
    }
    else if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
        return 3;
    }
    return 0;
}

s32 func_8006EA3C(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
        return 1;
    }
    else if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        return 2;
    }
    else if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
        return 3;
    }
    return 0;
}

void func_8006EAC8(u16 actor_index) {
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0x170) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1D0C;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_160 = gActors[actor_index].flags & (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_144 = 8.0f;
            gActors[actor_index].unk_118 = 12.0f;
            gActors[actor_index].unk_11C = -1.0f;
            gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
            gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
            gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 - 4;
        }
        if (gActors[actor_index].scaleX == 0.70) { // different literal than below
            gActors[actor_index].unk_0DB = 3;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.5);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.5);
            gActors[actor_index].damage = 0xE;
        }
        else {
            gActors[actor_index].unk_0DB = 7;
            gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4.5);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4.5);
            gActors[actor_index].damage = 0x23;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].graphicList = D_800E1D0C;
            gActors[actor_index].graphicTimer = 1;
        }
        func_80065F14(actor_index);

        // sameline to match
        if (gActors[actor_index].unk_118 > 0.0f) { gActors[actor_index].unk_118 -= 1.0f; } \
        else { func_80069DA8(actor_index); }

        switch ((u16)gActors[actor_index].unk_138) {
        default:
            if (((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) ||
                ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5))) {
                gActors[actor_index].unk_0F8.raw = (f32) gActors[actor_index].velocityX.raw * 0.7;
                gActors[actor_index].unk_0FC.raw = (f32) -gActors[actor_index].velocityY.raw * 0.7;
                if ((gActors[actor_index].var_150 & 0x80) || ((Actor_ReduceHealth(actor_index, 45) != 0))) {
                    gActors[actor_index].graphicList = D_800E1D30;
                    gActors[actor_index].graphicTimer = 1;
                    gActors[actor_index].unk_118 = 1.0f;
                    func_80069714(actor_index);
                }
                else {
                    gActors[actor_index].unk_118 = 1.0f;
                    func_80069814(actor_index);
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                }
                Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
                Sound_PlaySfxAtActor2(SFX_0036, actor_index);
            }
            else {
                if (func_8006EA3C(actor_index) != 0) {
                    if (!(gActors[actor_index].var_150 & 0x80)) {
                        Actor_ReduceHealth(actor_index, 0x2D);
                    }
                    gActors[actor_index].unk_0F8.raw = (f32) gActors[actor_index].velocityX.raw * 0.6;
                    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(1.5);
                    gActors[actor_index].unk_118 = 1.0f;
                    func_80069814(actor_index);
                    Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                    func_80034644(actor_index);
                }
            }
            break;
        case 2:
            if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & 0x10) && (gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & 0x20)) {
                    gActors[actor_index].state = 0x150;
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].flags |= D_800E3574;
                    gActors[actor_index].graphicList = D_800E1C2C;
                    gActors[actor_index].graphicTimer = 1;
                    gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.7;
                    gActors[actor_index].velocityY.raw = 0;
                    Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
            }
            else {
                if (func_8006EA3C(actor_index) != 0) {
                    gActors[actor_index].state = 0x100;
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].flags |= D_800E3574;
                    gActors[actor_index].velocityX.raw = (s32) -gActors[actor_index].velocityX.raw / 2;
                    Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                    func_80034644(actor_index);
                }
            }
            break;
        case 1:
            if (((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & 0x10)) ||
                ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & 0x20))) {
                gActors[actor_index].state = 0x150;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
                gActors[actor_index].flags |= D_800E3574;
                gActors[actor_index].graphicList = D_800E1C2C;
                gActors[actor_index].graphicTimer = 1;
                gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.4;
                gActors[actor_index].velocityY.raw = 0;
                Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
            }
            else {
                if (gActors[actor_index].flags_098 & 1) {
                    func_80034644(actor_index);
                    func_8006B448(actor_index);
                }
                else {
                    func_8006B518(actor_index);
                }
                if (func_8006E9B4(actor_index) != 0) {
                    gActors[actor_index].state = 0x100;
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].flags |= D_800E3574;
                    gActors[actor_index].velocityX.raw = (f32)-gActors[actor_index].velocityX.raw * 1.4;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
                    Sound_PlaySfxAtActor2(SFX_HIT_002D, actor_index);
                    func_80034644(actor_index);
                }
                else {
                    func_8006605C(actor_index);
                }
            }
            break;
        }
    }
}

void func_8006F1FC(u16 actor_index) {
    func_80040858(actor_index);
    if (!func_8006C908(actor_index)) {
        if (gActors[actor_index].state == 0x180) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            if (gActors[actor_index].iFrames <= 0) {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 &= ~0x80000;
                gActors[actor_index].var_160 = 1;
                gActors[actor_index].unk_164 = 1;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
        }
        else {
            Actor_UpdateVelocityX(actor_index, 0x400);
            func_80069DA8(actor_index);
            func_8006AD50(actor_index);
            if ((gActors[actor_index].unk_164 != 0) && (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2.5))) {
                gActors[actor_index].unk_164 = 0;
                ACTOR_GFX_INIT(actor_index, D_800E2034);
            }
            if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-4.5)) {
                gActors[actor_index].unk_118 = ((u16)gActors[actor_index].unk_118 | 1);
            }
            if ((u16)gActors[actor_index].unk_118 & 2) {
                func_80069A18(actor_index);
            }
            else {
                func_80033E7C(
                    actor_index,
                    gActors[actor_index].posX.whole,
                    gActors[actor_index].posY.whole,
                    gActors[actor_index].posZ.whole - 1,
                    FIXED_UNIT(1.5),
                    FIXED_UNIT(8.0),
                    5);
            }
            if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].velocityX.raw /= 2;
                if (gActors[actor_index].health != 0) {
                    if ((u16)gActors[actor_index].unk_118 & 1) {
                        gActors[actor_index].state = 0x190;
                    }
                    else {
                        gActors[actor_index].state = 0x150;
                        gActors[actor_index].graphicList = D_800E205C;
                        gActors[actor_index].graphicTimer = 1;
                    }
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].flags |= D_800E3574;
                    gActors[actor_index].velocityY.raw = 0;
                }
                else {
                    func_800696A8(actor_index);
                }
            }
        }
    }
}

void func_8006F5D4(u16 actor_index) {
    if (!func_8006C944(actor_index)) {
        if (gActors[actor_index].state == 0x190) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            ACTOR_GFX_INIT(actor_index, D_800E2044);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_158 = 0x41;
            gActors[actor_index].unk_144 = 4.0f;
            Sound_PlaySfxAtActor2(SFX_0094, actor_index);
            func_800658D8(actor_index);
            SpawnDizzyStar(actor_index, gActors[actor_index].unk_148 * -8.0f, 8, gActors[actor_index].posZ.raw, 64);
        }
        func_80069B94(actor_index);
        gActors[actor_index].var_158--;
        if (gActors[actor_index].var_158 < 0) {
            gActors[actor_index].state = 0x1B0;
        }
    }
}

void func_8006F730(u16 actor_index) {
    if (!func_8006C994(actor_index)) {
        if (gActors[actor_index].state == 0x1A0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        }
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x1000);
        if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state = 0x191;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_158 = 0x14;
        }
    }
}

void func_8006F850(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x1B0) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E20FC);
        }
        func_80069B94(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
            gActors[actor_index].unk_13C_f32 = 24.0f;
        }
    }
}

void func_8006F90C(u16 actor_index) {
    func_80040858(actor_index);
    if (gActors[actor_index].state == 0x1C0) {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        ACTOR_GFX_INIT(actor_index, D_800E20C4);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        func_8006CB88(actor_index);
        Sound_PlaySfxAtActor2(0x3C, actor_index);
    }
    gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 4);
    if ((gActors[actor_index].colorA == 0) || (gActors[actor_index].graphicTimer == 0)) {
        gActors[actor_index].flags = 0;
        gActors[actor_index].unk_13C_f32 = 25.0f;
        func_8006CFDC(actor_index);
    }
}

void func_8006FA38(u16 actor_index) {
    if (!func_8006C9D0(actor_index)) {
        if (gActors[actor_index].state == 0x1D0) {
            func_8006A724(actor_index);
            gActors[actor_index].state = 0x1D1;
        }
        func_8006A924(actor_index);
    }
}

void func_8006FAC0(u16 actor_index) {
    if (!func_8006C9D0(actor_index)) {
        if (gActors[actor_index].state == 0x1E0) {
            func_8006A724(actor_index);
            gActors[actor_index].state = 0x1E1;
        }
        func_8006A7B0(actor_index);
    }
}

void func_8006FB48(u16 actor_index) {
    if (!func_8006C9D0(actor_index)) {
        if (gActors[actor_index].state == 0x1F0) {
            func_8006A724(actor_index);
            gActors[actor_index].state = 0x1F1;
        }
        func_8006A924(actor_index);
    }
}

void func_8006FBD0(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x200) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
            ACTOR_GFX_INIT(actor_index, D_800E1728);
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].unk_144 = 4.0f;
        }
        gActors[actor_index].var_158++;
        func_80069B94(actor_index);
        gActors[actor_index].unk_13C_f32 = 5.0f;
    }
}

void func_8006FCC0(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x220) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E19E8);
            gActors[actor_index].unk_118 = 6.0f;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x200;
            gActors[actor_index].unk_13C_f32 = 10.0f;
        }
        func_80069E18(actor_index);
    }
}

void func_8006FD74(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x210) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E17DC);
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 6.0f;
            gActors[actor_index].unk_144 = 0.0f;
        }
        else {
            func_80069B94(actor_index);
        }
    }
}

void func_8006FE28(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x290) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E17A4);
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x200;
            gActors[actor_index].unk_13C_f32 = 7.0f;
        }
        func_80069B94(actor_index);
    }
}

void func_8006FED0(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        if (gActors[actor_index].state == 0x230) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList = D_800E1924;
            gActors[actor_index].unk_144 = 4.0f;
            func_8006B5B0(actor_index);
        }
        func_80069B94(actor_index);
        func_8006B648(actor_index, 1);
    }
}

void func_8006FF70(u16 actor_index) {
    if (!func_8006CA0C(actor_index)) {
        if (gActors[actor_index].state == 0x240) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicTimer = 0;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = 0.0f;
        }
        func_8006A384(actor_index);
    }
}

void func_80070000(u16 arg0) {
}

void func_80070008(u16 actor_index) {
    s32 var_a0;

    if (!func_8006CAD4(actor_index)) {
        switch (gActors[actor_index].state) {
        case 0x280:
            func_8006A4DC(actor_index, 1);
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(2.0);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                var_a0 = 0x03000000;
                gActors[actor_index].unk_144 = 12.0f;
            }
            else {
                var_a0 = 0x01000000;
                gActors[actor_index].unk_144 = 16.0f;
            }
            gActors[actor_index].var_158 = func_800298D0(var_a0, gActors[actor_index].var_158, FIXED_UNIT(32.0));
            if (gActors[actor_index].var_158 == var_a0) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].velocityX.raw = 0;
            }
            break;
        case 0x281:
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(0.5);
            if (gActors[actor_index].var_158 == 0x03000000) {
                if (!(func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 - 3, gActors[actor_index].posY.whole) & 0x80)) {
                    gActors[actor_index].state = 0x250;
                    gActors[actor_index].unk_118 = FIXED_UNIT(-1.0);
                    gActors[actor_index].unk_11C = FIXED_UNIT(3.125);
                }
                func_8006A4DC(actor_index, -1);
                return;
            }
            if (!(func_8001FCA0(actor_index, gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 + 3, gActors[actor_index].posY.whole) & 0x80)) {
                gActors[actor_index].state = 0x250;
                gActors[actor_index].unk_118 = FIXED_UNIT(1.0);
                gActors[actor_index].unk_11C = FIXED_UNIT(3.125);
            }
            func_8006A4DC(actor_index, 1);
            break;
        }
    }
}

void func_80070234(u16 actor_index) {
    if (!func_8006C8B8(actor_index)) {
        switch (gActors[actor_index].state) {
        case 0x260:
            if (func_8006BD08(actor_index) == 0) {
                gActors[actor_index].state = 0x200;
                return;
            }
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E1EAC);
            // fallthrough
        case 0x261:
            if (func_8006BEF4(actor_index)) {
                gActors[actor_index].graphicList = D_800E1E80;
                gActors[actor_index].graphicTimer = 1;
            }
            break;
        case 0x262:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].state = 0x200;
                gActors[actor_index].unk_13C_f32 = 9.0f;
            }
            break;
        }
    }
}

void func_80070338(u16 actor_index) {
    u16 parent_index;

    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x2A0:
        gActors[actor_index].state++;
        switch((u16)gActors[actor_index].unk_11C) {
        default:
            gActors[actor_index].graphicList = D_800E1DB8;
            gActors[actor_index].graphicList_158 = D_800E1DCC;
            gActors[actor_index].graphicList_15C = D_800E1E00;
            gActors[actor_index].hitboxAY0 = 14;
            gActors[actor_index].hitboxAY1 = -6;
            Actor_SetHitboxAX(actor_index, 8, 34);
            break;
        case 2:
            gActors[actor_index].graphicList = D_800E1E10;
            gActors[actor_index].graphicList_158 = D_800E1E24;
            gActors[actor_index].graphicList_15C = D_800E1E38;
            gActors[actor_index].hitboxAY0 = -14;
            gActors[actor_index].hitboxAY1 = -26;
            Actor_SetHitboxAX(actor_index, 4, 14);
            break;
        case 3:
            gActors[actor_index].graphicList = D_800E1E48;
            gActors[actor_index].graphicList_158 = D_800E1E5C;
            gActors[actor_index].graphicList_15C = D_800E1E70;
            gActors[actor_index].hitboxAY0 = 34;
            gActors[actor_index].hitboxAY1 = 14;
            Actor_SetHitboxAX(actor_index, -14, 4);
            break;
        }
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxAY0 * gActors[actor_index].scaleX;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxAY1 * gActors[actor_index].scaleX;
        gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxAX0 * gActors[actor_index].scaleX;
        gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxAX1 * gActors[actor_index].scaleX;
        /* fallthrough */
    case 0x2A1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK11;
            gActors[actor_index].unk_118 = 8.0f;
        }
        break;
    case 0x2A2:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK8) {
            parent_index = gActors[actor_index].parentIndex;
            if (!(gActors[parent_index].unk_0DF & 0x40)) {
                gActors[actor_index].state = 0x2B0;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
                gActors[actor_index].graphicList = gActors[actor_index].graphicList_15C;
                gActors[actor_index].graphicTimer = 1;
                gActors[parent_index].parentIndex = actor_index;
                gActors[parent_index].flags_098 |= ACTOR_FLAG3_UNK9;
                gActors[actor_index].unk_118 = 10.0f;
                gActors[actor_index].unk_11C = 0.0f;
                gActors[actor_index].var_158 = gActors[parent_index].posX.raw - gActors[actor_index].posX.raw;
                gActors[actor_index].var_15C = (gActors[parent_index].posY.raw - gActors[actor_index].posY.raw) + FIXED_UNIT(8);
                gActors[actor_index].var_160 = gActors[actor_index].var_158 / 10;
                gActors[actor_index].unk_164 = gActors[actor_index].var_15C / 10;
                gActors[parent_index].unk_104 = gActors[parent_index].posX.raw;
                gActors[parent_index].unk_108 = gActors[parent_index].posY.raw + FIXED_UNIT(8);
                gActors[parent_index].unk_10C = gActors[actor_index].posZ.raw - 1;
                break;
            }
        }
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK11;
            gActors[actor_index].graphicList = gActors[actor_index].graphicList_158;
            gActors[actor_index].graphicTimer = 1;
        }
        break;
    case 0x2A3:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 14.0f;
        }
        break;
    }
}

s32 func_80070830(u16 actor_index) {
    u16 parent_index;

    if (func_80028C08(actor_index)) {
        parent_index = gActors[actor_index].parentIndex;
        if (gActors[actor_index].unk_118 > 0.0f) {
            gActors[actor_index].unk_118 -= 1.0f;
            gActors[actor_index].var_158 -= gActors[actor_index].var_160;
            gActors[actor_index].var_15C -= gActors[actor_index].unk_164;
            gActors[parent_index].unk_104 = gActors[actor_index].posX.raw + gActors[actor_index].var_158;
            gActors[parent_index].unk_108 = gActors[actor_index].posY.raw + gActors[actor_index].var_15C + FIXED_UNIT(8);
        }
        else {
            gActors[parent_index].unk_104 = gActors[actor_index].posX.raw;
            gActors[parent_index].unk_108 = gActors[actor_index].posY.raw + FIXED_UNIT(8);
        }
        gActors[parent_index].unk_10C = gActors[actor_index].posZ.raw - 1;
        return TRUE;
    }
    else {
        gActors[actor_index].state = 0x60;
        return FALSE;
    }
}

void func_8007095C(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x2B0:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_124 = 1.0f;
        }
        /* fallthrough */
    case 0x2B1:
        gActors[actor_index].unk_11C += 1.0f;
        func_80070830(actor_index);
        break;
    }
}

void func_80070A14(u16 arg0) {
}

void func_80070A1C(u16 arg0) {
}

void func_80070A24(u16 actor_0, u16 actor_1, u16 index, s32 arg3) {
    if (actor_1 == PLAYER_INDEX) {
        index += 110;
        func_8004F614(actor_0, D_800E3630[index + 0] * gActors[actor_0].unk_124, D_800E3630[index + 1] * gActors[actor_0].unk_124, arg3);
    }
    else {
        index += gActors[actor_1].unk_0CE * 10;
        gActors[actor_1].unk_0F8.raw = D_800E3630[index + 0] * gActors[actor_0].unk_148 * gActors[actor_0].unk_124;
        gActors[actor_1].unk_0FC.raw = D_800E3630[index + 1] * gActors[actor_0].unk_124;
    }
}

void func_80070BEC(u16 actor_index) {
    s32 pad;
    u16 parent_index;

    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state & 0xF) {
    case 0:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800D7ED8);
        /* fallthrough */
    case 1:
        if (!func_80070830(actor_index)) {
            break;
        }
        parent_index = gActors[actor_index].parentIndex;
        if (gActors[actor_index].graphicIndex == GINDEX_68CF) {
            gActors[actor_index].state++;
            gActors[parent_index].flags_098 &= ~ACTOR_FLAG3_UNK9;
            gActors[parent_index].flags_098 |= ACTOR_FLAG3_UNK10;
            switch (gActors[actor_index].state & 0xFFF0) {
            case 0x320:
                func_80070A24(actor_index, parent_index, 0, 100);
                return;
            case 0x330:
                func_80070A24(actor_index, parent_index, 2, 80);
                return;
            case 0x340:
                func_80070A24(actor_index, parent_index, 4, 50);
                return;
            case 0x350:
                func_80070A24(actor_index, parent_index, 6, 30);
                return;
            case 0x360:
                func_80070A24(actor_index, parent_index, 8, 10);
                return;
            case 0x390:
                if (parent_index == 0) {
                    func_8004F614(actor_index, gActors[actor_index].var_158 * gActors[actor_index].unk_124, gActors[actor_index].var_15C * gActors[actor_index].unk_124, gActors[actor_index].unk_11C);
                }
                else {
                    gActors[parent_index].unk_0F8.raw = gActors[actor_index].var_158 * gActors[actor_index].scaleX * gActors[actor_index].unk_124;
                    gActors[parent_index].unk_0FC.raw = gActors[actor_index].var_15C * gActors[actor_index].unk_124;
                }
            }
        }
        break;
    case 2:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 16.0f;
        }
        break;
    }
}

void func_80070F24(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x3A0:
        if (func_8006BD08(actor_index) == 0) {
            gActors[actor_index].state = 0x60;
            return;
        }
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E1EB8);
    case 0x3A1:
        if (func_8006BEF4(actor_index) != 0) {
            ACTOR_GFX_INIT(actor_index, D_800E1EC8);
        }
        break;
    case 0x3A2:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 13.0f;
        }
        break;
    }
}

void func_80071028(u16 actor_index) {
    s32 x;
    s32 y;

    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x3B0:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E176C);
        gActors[actor_index].velocityX.raw /= 2;
        /* fallthrough */
    case 0x3B1:
        func_80069B94(actor_index);
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 &= ~0x10000;
            gActors[actor_index].unk_118 = 0.0f;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(1.5);
            if ((u16)gActors[actor_index].unk_11C & 0x1) {
                gActors[actor_index].graphicList = D_800E1C84;
                x = gActors[actor_index].unk_148 * 12.0f;
                y = gActors[actor_index].scaleX * 6.0f;
            }
            else {
                gActors[actor_index].graphicList = D_800E1C9C;
                x = gActors[actor_index].unk_148 * 6.0f;
                y = gActors[actor_index].scaleX * 4.0f;
            }
            gActors[actor_index].graphicTimer = 1;
            func_80065A38(actor_index, gActors[actor_index].posX.whole + x, gActors[actor_index].posY.whole + y);
        }
        break;
    case 0x3B2:
        func_80069B94(actor_index);
        gActors[actor_index].unk_118 += 1.0f;
        if (gActors[actor_index].unk_118 == 6.0f) {
            gActors[actor_index].flags |= D_800E3570;
            gActors[actor_index].damage = 0x14;
            gActors[actor_index].unk_0DA = 0xC;
            gActors[actor_index].unk_0DB = 4;
            gActors[actor_index].unk_0F8.raw = gActors[actor_index].scaleX * FIXED_UNIT(1.5);
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2.0);
            gActors[actor_index].hitboxAY0 = gActors[actor_index].scaleX * 11;
            gActors[actor_index].hitboxAY1 = gActors[actor_index].scaleX * 2;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 33;
                gActors[actor_index].hitboxAX0 = 4;
            }
            else {
                gActors[actor_index].hitboxAX0 = -33;
                gActors[actor_index].hitboxAX1 = -4;
            }
            gActors[actor_index].hitboxAX0 *= gActors[actor_index].scaleX;
            gActors[actor_index].hitboxAX1 *= gActors[actor_index].scaleX;
        }
        if (gActors[actor_index].unk_118 == 8.0f) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].var_150 |= 0x10000;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * -94208.0f;
            func_800340CC(actor_index, 0xE, 1);
            Sound_PlaySfxAtActor2(SFX_HIT_002C, actor_index);
        }
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_11C -= 1.0f;
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x60;
                gActors[actor_index].unk_13C_f32 = 11.0f;
            }
            else {
                gActors[actor_index].state--;
                gActors[actor_index].unk_118 = -1.0f;
            }
        }
        break;
    }
}

void func_800715DC(u16 actor_index) {
    if (func_8006CB10(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x3C0:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E1D54);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        gActors[actor_index].unk_144 = 4.0f;
        gActors[actor_index].var_150 &= ~0x10000;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        /* fallthrough */
    case 0x3C1:
        if (gActors[actor_index].graphicTimer == 0) {
            func_8006ADF8(actor_index);
            Sound_PlaySfxAtActor2(SFX_0034, actor_index);
        }
        break;
    case 0x3C2:
        func_8006AF30(actor_index);
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK16) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
                gActors[actor_index].flags_098 &= ~0x20;
            }
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK17) {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1328125);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                gActors[actor_index].velocityY.raw = 0;
            }
        }
        break;
    case 0x3C3:
        func_80069B94(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 12.0f;
        }
        break;
    }
}

void func_800717E8(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x3D0:
        gActors[actor_index].state++;
        if (gActors[actor_index].unk_164 == 0) {
            gActors[actor_index].graphicList = D_800E1F34;
        }
        else {
            gActors[actor_index].graphicList = D_800E1EF8;
        }
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        /* fallthrough */
    case 0x3D1:
        func_80069B94(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].unk_120 = 0.0f;
            gActors[actor_index].unk_124 = 0.0f;
            gActors[actor_index].unk_118 = 50.0f;
        }
        break;
    case 0x3D2:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (gActors[actor_index].pendingDamage != 0)) {
            func_80040858(actor_index);
            gActors[actor_index].unk_118 = 50.0f;
            if (gActors[actor_index].unk_164 == 0) {
                gActors[actor_index].graphicList = D_800E1F44;
            }
            else {
                gActors[actor_index].graphicList = D_800E1F08;
            }
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        }
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK15;
            if (gActors[actor_index].unk_164 == 0) {
                gActors[actor_index].graphicList = D_800E1F58;
            }
            else {
                gActors[actor_index].graphicList = D_800E1F24;
            }
            gActors[actor_index].graphicTimer = 1;
        }
        else if (gActors[actor_index].unk_118 != 0.0f) {
            gActors[actor_index].unk_118 -= 1.0f;
        }
        Actor_UpdateVelocityX(actor_index, 0x4000);
        break;
    case 0x3D3:
        func_80069B94(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            if (gActors[actor_index].unk_164 == 0) {
                gActors[actor_index].state = 0x200;
                gActors[actor_index].unk_13C_f32= 8.0f;
            }
            else {
                gActors[actor_index].state = 0x60;
                gActors[actor_index].unk_13C_f32= 18.0f;
            }
        }
        break;
    }
}

void func_80071A64(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x3E0:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E2150);
        /* fallthrough */
    case 0x3E1:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state++;
            if (!func_80067394(actor_index, 0)) {
                gActors[actor_index].state = 0x60;
            }
            else {
                gActors[actor_index].graphicList = gGraphicListBlank;
                gActors[actor_index].graphicTimer = 0;
                gActors[actor_index].graphicList_160 = D_800D7C30;
                gActors[actor_index].unk_120 = 1.0f;
                Sound_PlaySfxAtActor2(SFX_0088, actor_index);
                func_800679DC(actor_index, 0);
            }
        }
        break;
    case 0x3E2:
        if (!func_800679DC(actor_index, 0)) {
            gActors[actor_index].state = gActors[actor_index].unk_124;
            gActors[actor_index].graphicList_160 = D_800D7C50;
            gActors[actor_index].unk_120 = 1.0f;
        }
        break;
    case 0x3E3:
        if (!func_80067394(actor_index, 1)) {
            gActors[actor_index].state = 0x60;
        }
        else {
            gActors[actor_index].state++;
            Sound_PlaySfxAtActor2(SFX_0088, actor_index);
        case 0x3E4:
            if (!func_800679DC(actor_index, 1)) {
                gActors[actor_index].state++;
                ACTOR_GFX_INIT(actor_index, D_800E216C);
            }
        }
        break;
    case 0x3E5:
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state = 0x60;
            gActors[actor_index].unk_13C_f32 = 17.0f;
        }
        break;
    }
    func_80069B94(actor_index);
}

// https://decomp.me/scratch/tkQXI
// several clever fakematches used to overcome some branch-delay slot optimization
void func_80071CE8(u16 actor_index) {
    s32 angle;
    u16 shot_actor_index;
    u16 actor;

    // fakematch: func_8006C8B8 returns boolean so using a switch is not ideal
    switch (func_8006C8B8(actor_index)) {
        case 0:
            switch (gActors[actor_index].state) {
            case 0x3F0:
                gActors[actor_index].state++;
                gActors[actor_index].unk_124 = 0.0f;
                if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_index].var_15C = 0;
                }
                else {
                    gActors[actor_index].var_15C = FIXED_UNIT(COS_DEG_180);
                }
                /* fallthrough */
            case 0x3F1:
                gActors[actor_index].state++;
                gActors[actor_index].unk_164 = gActors[actor_index].var_15C;
                angle = Math_PlaneOctant(gActors[D_800E3580].posX.whole - gActors[actor_index].posX.whole, gActors[D_800E3580].posY.whole - gActors[actor_index].posY.whole);
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    if ((angle <= 0xC0) || (angle >= 0x340)) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                        gActors[actor_index].unk_148 = 1.0f;
                    }
                }
                else if ((angle >= 0x140) && (angle <= 0x2C0)) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                    gActors[actor_index].unk_148 = -1.0f;
                }
                gActors[actor_index].var_15C = TO_FIXED(angle);
                gActors[actor_index].unk_118 = 0.0f;
                /* fallthrough */
            case 0x3F2:
                gActors[actor_index].unk_164 = func_800298D0(gActors[actor_index].var_15C, gActors[actor_index].unk_164, 0xC0000);
                shot_actor_index = func_80067B18(actor_index, gActors[actor_index].unk_164);
                if (gActors[actor_index].unk_118 < 20.0f) {
                    gActors[actor_index].unk_118 += 1.0f;
                }
                if ((gActors[actor_index].var_15C == gActors[actor_index].unk_164) && (gActors[actor_index].unk_118 >= 8.0f)) {
                    gActors[actor_index].state++;
                    gActors[actor_index].unk_118 = shot_actor_index;
                }
                return; // fakematch, breaks should be suitable
            case 0x3F3:
                gActors[actor_index].state++;
                gActors[actor_index].unk_124 += 1.0f;
                shot_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
                if (shot_actor_index != 0) {
                    actor = gActors[actor_index].unk_158_u16[1];
                    SpawnEnergyShot(
                        shot_actor_index, 0, gActors[actor_index].unk_164,
                        (COS(FROM_FIXED(gActors[actor_index].unk_164)) * FIXED_UNIT(8) * gActors[actor].scaleX) + gActors[actor].posX.raw,
                        (SIN(FROM_FIXED(gActors[actor_index].unk_164)) * FIXED_UNIT(8) * gActors[actor].scaleX) + gActors[actor].posY.raw,
                        gActors[actor].posZ.raw
                    );
                    switch ((u16)gActors[actor_index].unk_118) {
                    case 0x100:
                        gActors[actor_index].graphicList_160 = D_800D7D04;
                        break;
                    case 0x80:
                        gActors[actor_index].graphicList_160 = D_800D7D34;
                        break;
                    case 0x0:
                        gActors[actor_index].graphicList_160 = D_800D7CD4;
                        break;
                    case 0x380:
                        gActors[actor_index].graphicList_160 = D_800D7D64;
                        break;
                    case 0x300:
                        gActors[actor_index].graphicList_160 = D_800D7D94;
                        break;
                    }
                    gActors[actor_index].unk_120 = 1.0f;
                }
                func_8006756C(actor_index);
                return;
            case 0x3F4:
                if (gActors[actor_index].unk_120 == 0.0f) {
                    gActors[actor_index].state++;
                }
                func_8006756C(actor_index);
                return;
            case 0x3F5:
                gActors[actor_index].state = 0x3E3;
                gActors[actor_index].graphicList_160 = D_800D7C40;
                gActors[actor_index].unk_120 = 1.0f;
                gActors[actor_index].unk_124 = 1008.0f;
                func_8006756C(actor_index);
                break;
            }
        default:
            if (D_800E3580 && D_800E3580) { } // fakematch
    }
}

void func_800721C4(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x400:
        gActors[actor_index].state++;
        gActors[actor_index].graphicList_160 = D_800D7C98;
        gActors[actor_index].unk_120 = 1.0f;
        /* fallthrough */
    case 0x401:
        if (gActors[TERAN_PLAYER_INDEX].unk_18C == 1) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList_160 = D_800D7CC0;
            gActors[actor_index].unk_120 = 1.0f;
        }
        func_8006756C(actor_index);
        break;
    case 0x402:
        if (gActors[TERAN_PLAYER_INDEX].unk_18C == 2) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicList_160 = D_800D7D04;
            gActors[actor_index].unk_120 = 1.0f;
        }
        func_8006756C(actor_index);
        return;
    case 0x403:
        func_8006756C(actor_index);
        break;
    }
}

void func_800722F8(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    if (gActors[actor_index].state == 0x410) {
        gActors[actor_index].state++;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        gActors[actor_index].unk_144 = 4.0f;
        gActors[actor_index].var_150 &= ~0xC0000;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 != 0) {
            gActors[actor_index].graphicList = D_800E209C;
        }
        else {
            gActors[actor_index].graphicList = D_800E206C;
        }
        gActors[actor_index].graphicTimer = 1;
    }
    func_8006641C(actor_index);
}

void func_80072400(u16 actor_index) {
    if (func_8006CB4C(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x420:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
        ACTOR_GFX_INIT(actor_index, D_800E22A8);
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_118;
        /* fallthrough */
    case 0x421:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                gActors[actor_index].state++;
                Sound_PlaySfxAtActor2(SFX_0094, actor_index);
            }
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
            gActors[actor_index].velocityY.raw = 0;
        }
        func_80069DA8(actor_index);
        break;
    case 0x422:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E22B4);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_144 = 4.0f;
        /* fallthrough */
    case 0x423:
        gActors[actor_index].unk_120 -= 1.0f;
        if (gActors[actor_index].unk_120 < 0.0f) {
            gActors[actor_index].state = 0x210;
        }
        func_80069B94(actor_index);
        break;
    }
}

void func_80072620(u16 arg0) {
}

void func_80072628(u16 actor_index) {
    s32 pos_x;

    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x430:
    case 0x440:
    case 0x450:
        gActors[actor_index].var_158 = 0;
        Sound_PlaySfxAtActor2(SFX_CLANCER_CRY_00A1, actor_index);
        switch (gActors[actor_index].state) {
        case 0x430:
        case 0x450:
            gActors[actor_index].graphicList = D_800E22CC;
            break;
        case 0x440:
            gActors[actor_index].graphicList = D_800E2314;
            break;
        }
        gActors[actor_index].state++;
        gActors[actor_index].graphicTimer = 1;
        /* fallthrough */
    case 0x431:
    case 0x441:
    case 0x451:
        if (gActors[actor_index].var_158 == 0xF0) {
            switch (gActors[actor_index].state) {
            case 0x431:
            case 0x441:
                gActors[actor_index].graphicList = D_800E22F8;
                break;
            case 0x451:
                gActors[actor_index].graphicList = D_800E2330;
                break;
            }
            gActors[actor_index].state++;
            gActors[actor_index].graphicTimer = 1;
        }
        if (!Actor_IsOutsideRegion(actor_index, 32)) {
            func_80033E7C(
                actor_index,
                gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + (gActors[actor_index].scaleX * -4.0f),
                gActors[actor_index].posZ.whole - 1,
                FIXED_UNIT(1),
                FIXED_UNIT(8),
                4);
        }
        break;
    case 0x432:
    case 0x442:
        if (gActors[actor_index].graphicIndex == GINDEX_6846) {
            pos_x = -1;
        }
        else {
            pos_x = 0;
        }
        func_8006678C(actor_index, pos_x + 4, -2.0f, pos_x + 10, 0.0f);
        break;
    case 0x452:
        if ((gActors[actor_index].graphicIndex == GINDEX_6819) || (gActors[actor_index].graphicIndex == GINDEX_681A)) {
            func_8006678C(actor_index, 7.0f, -6.0f, 12.0f, -6.0f);
        }
        break;
    }
    if (gActors[actor_index].var_158 < 0x4000) {
        gActors[actor_index].var_158++;
    }
    func_80069B94(actor_index);
}

void func_800728E8(u16 actor_index) {
    func_80072628(actor_index);
}

void func_80072910(u16 actor_index) {
    func_80072628(actor_index);
}

void func_80072938(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x460:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E2450);
        gActors[actor_index].var_158 = 0;
        /* fallthrough */
    case 0x461:
        func_8006678C(actor_index, 0.5f, 0.0f, 7.0f, 1.0f);
        func_80069B94(actor_index);
        break;
    }
    if (gActors[actor_index].var_158 < 0x4000) {
        gActors[actor_index].var_158++;
    }
    func_80069B94(actor_index);
}

void func_80072A28(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x480:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E2464);
        gActors[actor_index].var_158 = 0;
        Sound_PlaySfxAtActor2(SFX_CLANCER_CRY_00A1, actor_index);
        /* fallthrough */
    case 0x481:
        if (gActors[actor_index].var_158 == 0x22C) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E24A0);
        }
        if (!Actor_IsOutsideRegion(actor_index, 32)) {
            func_80033E7C(
                actor_index,
                gActors[actor_index].posX.whole,
                gActors[actor_index].posY.whole + (gActors[actor_index].scaleX * 0),
                gActors[actor_index].posZ.whole - 1,
                FIXED_UNIT(1),
                FIXED_UNIT(8),
                6);
        }
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        break;
    case 0x482:
        func_8006678C(actor_index, 0.5f, 0.0f, 7.0f, 1.0f);
        break;
    }
    if (gActors[actor_index].var_158 < 0x4000) {
        gActors[actor_index].var_158++;
    }
    func_80069B94(actor_index);
}

void func_80072C1C(u16 actor_0, u16 actor_1) {
    u16* val_array;
    u16 index;

    // TODO: add u16* union type to var_158?
    val_array = (u16*)gActors[actor_0].var_158;
    for (index = 0; !(val_array[index] & 0x8000); index++) {
        // copy from actor_0 u16 array ptr to actor_1 s32 0x150
        gActors[actor_1].base_0F8_s32[index + 0x16] = val_array[index];
    }
}

u16 func_80072CC4(u16 actor_index) {
    u16 index;
    u16* val_array;

    val_array = (u16*)gActors[actor_index].var_158;
    for (index = 0; !(val_array[index] & 0x8000); index++) {
        if ((func_8005DEFC() & 0x7FFF) == val_array[index]) {
            if (val_array[index + 1] & 0x8000) {
                return 2;
            }
            else {
                return 1;
            }
        }
    }
    return 0;
}

void func_80072D9C(u16 actor_index) {
    if (func_80072CC4(actor_index)) {
        func_8005DFC8(0);
    }
}

void func_80072DD4(u16 arg0) {
}

void func_80072DDC(u16 actor_index) {
    gActors[actor_index].var_150 &= ~0x8000000;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].state = 0x60;
        gActors[actor_index].flags = D_800E3574 + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    }
}

void func_80072E54(u16 actor_index) {
    gActors[actor_index].state = 0x100;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = FIXED_UNIT(1);
    gActors[actor_index].flags = D_800E3574 + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17); \
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    gActors[actor_index].unk_144 = 0.0f;
}

void func_80072EE0(u16 actor_index) {
    gActors[actor_index].var_150 &= ~0x8000000;
    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK21)) {
        func_80072E54(actor_index);
    }
}

void func_80072F54(u16 actor_index) {
    if (gActors[actor_index].state == 0x40) {
        gActors[actor_index].var_150 &= ~0x8000000;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].rotateZ = 0.0f;
    }
    else {
        func_80072E54(actor_index);
    }
}

void func_80072FE4(u16 actor_index) {
    if (func_8006C8B8(actor_index)) {
        return;
    }

    switch (gActors[actor_index].state) {
    case 0x110:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E2374);
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(-0.09375);
        gActors[actor_index].unk_118 = 30.0f;
        /* fallthrough */
    case 0x111:
        func_80033E7C(
            actor_index,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole + 8,
            gActors[actor_index].posZ.whole - 1,
            FIXED_UNIT(1),
            10,
            5);
        gActors[actor_index].unk_118 -= 1.0f;
        if ((gActors[actor_index].unk_118 < 0.0f) || (gActors[actor_index].flags_098 & 0x40)) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_144 = 8.0f;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_148 * FIXED_UNIT(-1.5);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
        }
        break;
    case 0x112:
        func_80069DA8(actor_index);
        if (gActors[actor_index].velocityY.raw < 0) {
            if (gActors[actor_index].flags_098 & 0x20) {
                gActors[actor_index].state = 0x191;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17; \
                gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
                ACTOR_GFX_INIT(actor_index, D_800E23A4);
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].var_158 = 20;
            }
        }
        break;
    }
}

// update behavior for almost every Clancer
s32 Clancer_Update(u16 actor_index) {
    func_8006C1AC(actor_index);
    if (gActors[actor_index].state < 0x4000) {
        D_800D7F00[gActors[actor_index].state / 16](actor_index);
    }

    func_8006C5A4(actor_index);
}

void ActorUpdate_Type2(u16 arg0) {
    ActorType2_Noop(arg0);
}

u16 func_80073320(u16 actor_index) {
    return func_8006930C(
        actor_index, 0x90, 0x70, 0x210, 0x210,
        gActors[actor_index].unk_184_s16[0] - 4,
        gActors[actor_index].unk_184_s16[0] + 4,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

// func_800733AC is unused
u16 func_800733AC(u16 actor_index) {
    return func_8006930C(
        actor_index, 0x290, 0x290, 0x240, 0x220,
        gActors[actor_index].unk_184_s16[0] - 4,
        gActors[actor_index].unk_184_s16[0] + 4,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

u16 func_80073438(u16 actor_index) {
    return func_8006930C(
        actor_index, 0xA0, 0x70, 0x210, 0x210,
        gActors[actor_index].unk_184_s16[0] - 4,
        gActors[actor_index].unk_184_s16[0] + 4,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

u16 func_800734C4(u16 actor_index, u16 arg1) {
    return func_8006930C(
        actor_index, 0xA0, 0x70, 0x210, 0x210,
        gActors[actor_index].unk_184_s16[0] - arg1,
        gActors[actor_index].unk_184_s16[0] + arg1,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

u16 func_80073558(u16 actor_index, u16 arg1) {
    return func_8006930C(
        actor_index, 0x90, 0x70, 0x210, 0x210,
        gActors[actor_index].unk_184_s16[0] - arg1,
        gActors[actor_index].unk_184_s16[0] + arg1,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

u16 func_800735EC(u16 actor_index, u16 arg1) {
    return func_8006930C(
        actor_index, 0x290, 0x290, 0x240, 0x220,
        gActors[actor_index].unk_184_s16[0] - arg1,
        gActors[actor_index].unk_184_s16[0] + arg1,
        gActors[actor_index].unk_184_s16[1] + 40,
        gActors[actor_index].unk_184_s16[1] - 40);
}

void func_80073680(u16* arg0, u16 actor_index, u16 arg2) {
    if (func_80029B00(0x50, 0x40, -0x40)) {
        func_800406A4(arg0, actor_index, gActors[actor_index].unk_148 * arg2, 16, 10);
    }
}

void func_80073744(u16 actor_index) {
    if ((D_800E3584 & 0x30000) && (func_80029B00(0x50, 0x40, -0x40))) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK18;
    }
}

void func_800737C4(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        switch (gActors[actor_index].unk_174) {
        case 0:
            func_80073320(actor_index);
            func_80067E9C(actor_index);
            break;
        case 1:
            func_80073320(actor_index);
            func_80067F98(actor_index);
            break;
        case 16:
            func_80073438(actor_index);
            func_80067E9C(actor_index);
            break;
        case 17:
            func_80073438(actor_index);
            func_80067F98(actor_index);
            break;
        case 18:
            func_80073438(actor_index);
            func_80067EF0(actor_index);
            break;
        case 32:
            func_80073438(actor_index);
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E17F8);
            }
        }
        break;
    case 0x91:
        func_80073320(actor_index);
        break;
    case 0xA1:
        func_80073438(actor_index);
        break;
    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        break;
    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
}

void func_80073970(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        if (!(func_80073320(actor_index) & 0x8000)) {
            func_80067E9C(actor_index);
            if ((func_80029B00(0x80, 0x50, -0x50)) && (D_800E3584 & 0xC0000)) {
                gActors[actor_index].state = 0x70;
            }
        }
        break;
    case 0x91:
        func_80073320(actor_index);
        break;
    }
}

void func_80073A60(u16 actor_update) {
    Clancer_Update(actor_update);
    switch (gActors[actor_update].state) {
    case 0x0:
        gActors[actor_update].state = 0x60;
        break;
    case 0x61:
        gActors[actor_update].velocityX.raw = 0;
        if (gActors[actor_update].unk_174 == 2) {
            if (gActors[actor_update].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_update].state = 0x70;
            }
            else {
                gActors[actor_update].state = 0xA0;
                gActors[actor_update].unk_184_s16[0] = gActors[actor_update].unk_17C + 0x80;
            }
        } else {
            if (!(func_80073438(actor_update) & 0x8000)) {
                if (gActors[actor_update].unk_174 == 0) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_update].state = 0x70;
                    }
                    else {
                        func_80067EF0(actor_update);
                        if (func_80029B00(0x80, 0x80, -0x50) != 0) {
                            gActors[actor_update].unk_174++;
                            gActors[actor_update].graphicList = D_800E2274; \
                            gActors[actor_update].graphicTimer = 1;
                            Sound_PlaySfxAtActor2(D_800D80A8[gActors[actor_update].var_0D8 & 0xF], actor_update);
                            SpawnTextBubble(actor_update, D_800D8088[gActors[actor_update].var_0D8 & 0xF], 0, 0x20, 0x23);
                        }
                    }
                }
                else {
                    func_80065724(actor_update);
                    if (gActors[actor_update].graphicTimer == 0) {
                        gActors[actor_update].unk_174++;
                    }
                }
            }
        }
        break;
    case 0xA1:
        gActors[actor_update].unk_184_s16[0] = gActors[actor_update].unk_17C + 0x80;
        if (gActors[actor_update].unk_174 == 2) {
            if (gActors[actor_update].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_update].state = 0x60;
            }
        }
        func_80073438(actor_update);
        if (((gActors[actor_update].velocityX.raw > 0) && (gActors[actor_update].flags_098 & ACTOR_FLAG3_UNK3)) ||
            ((gActors[actor_update].velocityX.raw < 0) && (gActors[actor_update].flags_098 & ACTOR_FLAG3_UNK2))) {
            gActors[actor_update].unk_0F8.raw = -gActors[actor_update].velocityX.raw;
            gActors[actor_update].unk_0FC.raw = FIXED_UNIT(2);
            gActors[actor_update].unk_118 = 1.0f;
            func_80069814(actor_update);
        }
        break;
    }
}

void func_80073CE8(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (!(func_80073438(actor_index) & 0x8000)) {
            func_80067E9C(actor_index);
            if (func_80029B00(0x90, 0x70, -0x70)) {
                if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                }
                else if (gActors[actor_index].var_158 > 120) {
                    gActors[actor_index].graphicList = D_800E2274; \
                    gActors[actor_index].graphicTimer = 1;
                    SpawnTextBubble(actor_index, D_800D8088[gActors[actor_index].var_0D8 & 0xF], 0, 32, 35);
                    Sound_PlaySfxAtActor2(D_800D80A8[gActors[actor_index].var_0D8 & 0xF], actor_index);
                    gActors[actor_index].var_158 = 0;
                }
            }
        }
        break;
    case 0xA1:
        gActors[actor_index].unk_118 = 0.8f;
        func_80073438(actor_index);
        break;
    }
}
