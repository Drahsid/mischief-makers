#include "common.h"
#include "28EF0.h"
#include "7D8E0.h"

typedef struct {
    /* 0x00 */ u16 positionX;
    /* 0x02 */ u16 positionY;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 unk_06;
} UnkStruct_7B3FE0__Spawn_Record; /* sizeof = 0x08 */

typedef struct {
    /* 0x00 */ u16 randomValue;
    /* 0x02 */ u8 unk_02[2];
    /* 0x04 */ s16 positionZ;
    /* 0x06 */ u8 unk_06[4];
    /* 0x0A */ u16 randomBase;
} UnkStruct_7B3FE0__func_801B2530_7B5C10; /* sizeof = 0x0C */


#define OVERLAY0_DISPATCH_ACTOR ((ActorFunc*)OVERLAY0_DISPATCH_TABLE_VRAM) // TODO: move?

#define FESTIVAL_ADVANCE_MOTION(actor_index_, record_table_, current_index_) \
    do { \
        gActors[actor_index_].unk_180++; \
        if (gActors[actor_index_].unk_180 >= record_table_[current_index_].duration) { \
            gActors[actor_index_].unk_17C = current_index_ + 1; \
            gActors[actor_index_].unk_180 = 0; \
        } \
    } while (0)


extern u8 D_800D9B04[];
extern s16 D_800E1604[];
extern s16 D_800E1750[];
extern s16 D_800E17A4[];
extern s16 D_800E17DC[];
extern s16 D_800E17F8[];
extern s16 D_800E1840[];
extern s16 D_800E19C0[];
extern s16 D_800E19E8[];
extern s16 D_800E1BF4[];
extern s16 D_800E1C00[];
extern s16 D_800E1C9C[];
extern s16 D_800E1CB4[];
extern s16 D_800E1D0C[];
extern s16 D_800E2274[];
extern s16 D_800E22A8[];
extern s16 D_800E22B4[];
extern s16 D_800E2514[];


f32 D_801B4310_7B79F0[10] = {
    1.0f, 1.2f, 1.4f, 1.6f, 1.8f, 1.9f, 2.0f, 2.1f, 2.2f, 2.3f,
};

u8 D_801B4338_7B7A18[12] = {
    0x78, 0x6E, 0x6E, 0x6E, 0x6E, 0x69, 0x69, 0x64, 0x5F, 0x5A, 0x00, 0x00,
};

s32 D_801B4344_7B7A24[10] = {
    FIXED_UNIT(2.0), FIXED_UNIT(2.125), FIXED_UNIT(2.25), FIXED_UNIT(2.375), FIXED_UNIT(2.5),
    FIXED_UNIT(2.625), FIXED_UNIT(2.75), FIXED_UNIT(2.875), FIXED_UNIT(3.0), FIXED_UNIT(3.125),
};

s32 D_801B436C_7B7A4C[10] = {
    FIXED_UNIT(0.9921875), FIXED_UNIT(1.0078125), FIXED_UNIT(1.015625), FIXED_UNIT(1.0234375),
    FIXED_UNIT(1.03125), FIXED_UNIT(1.0390625), FIXED_UNIT(1.046875), FIXED_UNIT(1.0546875),
    FIXED_UNIT(1.0625), FIXED_UNIT(1.0703125),
};

u16 D_801B4394_7B7A74[8] = {
    0x0E03, 0x0001, 0x0E03, 0x0001, 0x0E03, 0x0001, 0x0E03, 0x0001,
};

u16 D_801B43A4_7B7A84[8] = {
    0x0002, 0x0001, 0x0002, 0x0001, 0x0002, 0x0001, 0x0002, 0x0001,
};

s16 D_801B43B4_7B7A94[12] = {
    0x01F8, 0x016E, 0x0060,
    0x0278, 0x016E, 0x0000,
    0x0258, 0x016E, -0x0060,
    0x0278, 0x016E, -0x00C0,
};

f32 D_801B43CC_7B7AAC[32] = {
    2.0f, 2.0f, 1000.0f, 448.0f, 1.0f, 1.0f, 1.0f, 3.0f,
    2.0f, 2.0f, 448.0f, 1.0f, 1.0f, 1.0f, 50.0f, 3.0f,
    2.0f, 10.0f, 448.0f, 1.0f, 1.0f, 1.0f, 5.0f, 3.0f,
    2.0f, 2.0f, 448.0f, 1.0f, 1.0f, 1.0f, 5.0f, 0.0f,
};

s16 D_801B444C_7B7B2C[4] = { 0x0003, 0x0096, 0x0009, 0x0000 };
s16 D_801B4454_7B7B34[2] = { 0x0000, 0x0000 };
s16 D_801B4458_7B7B38[6] = { 0x0001, -0x002C, 0x0048, 0x0000, 0x0000, 0x0000 };
s16 D_801B4464_7B7B44[4] = { 0x0001, 0x0040, 0x0048, 0x0000 };
s16 D_801B446C_7B7B4C[2] = { 0x0000, 0x0000 };

UnkStruct_7B3FE0__Spawn_Record D_801B4470_7B7B50[5] = {
    { 0x01D8, 0x0180, 0xFF01, 0x1D03 },
    { 0x00B0, 0x019C, 0xFF01, 0x1D06 },
    { 0x033A, 0x019C, 0xFF01, 0x1D06 },
    { 0x0170, 0x0185, 0xFF04, 0x1202 },
    { 0x02F0, 0x0185, 0xFF04, 0x1202 },
};

Festival_UnkInit D_801B4498_7B7B78[16] = {
    { 0x0000, 0x0000, 0x0000, 0x1000, 0x0000, 0x0E03 },
    { 0x0001, 0x0000, 0x0000, 0x1000, 0x1110, 0x0E03 },
    { 0x0002, 0x0000, 0x0000, 0x1000, 0x2220, 0x0E03 },
    { 0x0003, 0x0100, 0x0000, 0x1000, 0x3330, 0x0E03 },
    { 0x0004, 0x0200, 0x0000, 0x1000, 0x4400, 0x0E03 },
    { 0x0005, 0x0301, 0x0000, 0x1000, 0x5500, 0x0E03 },
    { 0x0006, 0x0402, 0x0000, 0x1000, 0x6600, 0x0E03 },
    { 0x0007, 0x0503, 0x0100, 0x1000, 0x7700, 0x0E03 },
    { 0x0008, 0x0604, 0x0200, 0x1000, 0x0800, 0x0E03 },
    { 0x0009, 0x0705, 0x0300, 0x1000, 0x0900, 0x0E03 },
    { 0x0000, 0x0806, 0x0400, 0x1000, 0x0A00, 0x0E03 },
    { 0x0000, 0x0907, 0x0500, 0x1000, 0x0B00, 0x0E03 },
    { 0x0000, 0x0008, 0x0600, 0x1000, 0x0C00, 0x0E03 },
    { 0x0000, 0x0009, 0x0700, 0x1000, 0x0F00, 0x0E03 },
    { 0x0000, 0x0000, 0x0800, 0x1000, 0x0D00, 0x0E03 },
    { 0x0000, 0x0000, 0x0800, 0x1000, 0x2D30, 0x0E03 },
};

u16 D_801B4558_7B7C38[8] = {
    0x0000, 0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x7000,
};

u16 D_801B4568_7B7C48[16] = {
    0x0000, 0x0000, 0x0100, 0x0000, 0x0000, 0x0000, 0x0500, 0x0600,
    0x0000, 0x0800, 0x0000, 0x0000, 0x0B00, 0x0C00, 0x0000, 0x0D00,
};


extern s16 Clanpot_AddItemCheck1(u16 actor_index, u16 flags, u16 var_110, u16 var_0D8);
extern void OverlayABI_Slot2_fn28_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn29_u16(u16 actor_index);
extern void OverlayABI_Slot2_fn30_u16(u16 actor_index);
extern void func_80067E50(u16 actor_index, void* data);
extern s32 func_800734C4(u16 actor_index, s32 arg1);
extern void func_8007B73C(u16 actor_index);


void func_801B0900_7B3FE0(u16 actor_index) {
    u16 position_x_copy;
    u16 index;

    if (gActors[actor_index].state == 0) {
        s32 position_multiplier = 100;

        for (index = 0; index < 4; index++) {
            u16 new_actor_index = index + 0x72;
            u16 position_x;

            ACTOR_INIT(new_actor_index, 0x1A03);

            *(&gActors[new_actor_index].posY.whole + ((position_x = index * position_multiplier) * 0)) = 0x54; // FAKEMATCH

            position_x_copy = position_x;
            position_x = position_x_copy - 0x6E;
            gActors[new_actor_index].var_110 = -8.0f;
            gActors[new_actor_index].var_0D8 = 0x1004;
            gActors[new_actor_index].posX.whole = position_x;
        }
        return;
    }

    for (index = 0; index < 4; index++) {
        if (gActors[(u16)(index + 0x72)].posX.whole < -0xD1) {
            gActors[(u16)(index + 0x72)].unk_17C += 0x190;
        }
        else if (gActors[(u16)(index + 0x72)].posX.whole >= 0xD2) {
            gActors[(u16)(index + 0x72)].unk_17C -= 0x190;
        }
    }
}

void func_801B0A8C_7B416C(u16 arg0) {
    u16 index;

    for (index = 0; index < 5; index++) {
        u16 new_actor_index = Actor_RangeFindInactive(0x40, 0x50);

        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = 0x1A03;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].posX.whole = D_801B4470_7B7B50[index].positionX - gScreenPosCurrentX.whole;
            gActors[new_actor_index].posY.whole = D_801B4470_7B7B50[index].positionY - gScreenPosCurrentY.whole;
            gActors[new_actor_index].var_110 = (f32)D_801B4470_7B7B50[index].unk_04;
            gActors[new_actor_index].var_0D8 = D_801B4470_7B7B50[index].unk_06;
        }
    }
}

void func_801B0BA0_7B4280(u16 arg0) {
    Actor* actor = &gActors[0x32];

    actor->actorType = 0x1A08;
    Actor_Initialize(0x32);
    actor->flags |= ACTOR_FLAG_FREEZE_POS;
    actor->posX.whole = 0;
    actor->posY.whole = 0;
    actor->unk_178 = (s32)D_801B43CC_7B7AAC;
}

void func_801B0C00_7B42E0(u16 actor_index, s16 position_x, s16 position_y, s32 velocity_x, s32 velocity_y) {
    gActors[actor_index].actorType = 0xE01;
    Actor_Initialize(actor_index);

    if (Rand() >= 0x56) {
        gActors[actor_index].var_110 = 1.0f;
    }
    else {
        gActors[actor_index].var_110 = 0.0f;
    }

    gActors[actor_index].posX.whole = position_x;
    gActors[actor_index].posY.whole = position_y;
    gActors[actor_index].velocityX.raw = velocity_x;
    gActors[actor_index].velocityY.raw = velocity_y;
}

void func_801B0CB4_7B4394(u16 actor_index, u16 new_actor_index) {
    func_801B0C00_7B42E0(new_actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0, FIXED_UNIT(6.0));
    func_8002A57C(new_actor_index, FIXED_UNIT(0.1875), gActors[0x3F].posX.raw, FIXED_UNIT(6.0));

    if (gActors[new_actor_index].var_110 == 0.0f) {
        gActors[new_actor_index].velocityX.raw += Rand() - 0x80;
    }
}

void func_801B0DA0_7B4480(u16 actor_index) {
    if (Clanpot_AddItemCheck3(actor_index, 0xA00, 0, 0, 0) == -1) {
        OVERLAY0_DISPATCH_ACTOR[1](actor_index);
        gActors[actor_index].damage = 0;
        gActors[actor_index].unk_0DA = 0;
    }
}

void func_801B0E24_7B4504(u16 actor_index, s16 position_x, s16 position_y, s32 velocity_x, s32 velocity_y) {
    gActors[actor_index].actorType = 0x1A09;
    Actor_Initialize(actor_index);
    gActors[actor_index].pfn_190 = func_801B0DA0_7B4480;
    gActors[actor_index].posX.whole = position_x;
    gActors[actor_index].posY.whole = position_y;
    gActors[actor_index].velocityX.raw = velocity_x;
    gActors[actor_index].velocityY.raw = velocity_y;
}

void func_801B0EB8_7B4598(u16 actor_index, u16 new_actor_index) {
    func_801B0E24_7B4504(new_actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0, FIXED_UNIT(6.0));
    func_8002A57C(new_actor_index, FIXED_UNIT(0.1875), gPlayerActor.posX.raw, FIXED_UNIT(6.0));
}

void func_801B0F38_7B4618(u16 actor_index, u16 new_actor_index) {
    gActors[new_actor_index].actorType = 0x1A09;
    Actor_Initialize(new_actor_index);
    gActors[new_actor_index].pfn_190 = func_801B0DA0_7B4480;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[new_actor_index].velocityX.raw = FIXED_UNIT(-1.75);
    }
    else {
        gActors[new_actor_index].velocityX.raw = FIXED_UNIT(1.75);
    }

    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(-2.0);
}

void func_801B0FFC_7B46DC(u16 arg0) {
    Actor* actor = &gActors[0x3F];

    actor->actorType = 0x18;
    Actor_Initialize(0x3F);
    actor->posX.whole = 0x258 - gScreenPosCurrentX.whole;
    actor->posY.whole = 0x60;
    actor->posZ.whole = 0;
}

u16 func_801B1054_7B4734(u16 arg0) {
    u16 new_actor_index;
    u16 record_index;
    u16 temp;

    new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
    if (new_actor_index != 0) {
        record_index = Rand() & 0xF;
        temp = Rand() & 1;
        gActors[new_actor_index].actorType = D_801B4498_7B7B78[record_index].actorType;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].var_0D8 = D_801B4498_7B7B78[record_index].unk_08 + temp;

        if ((D_801B4498_7B7B78[record_index].unk_06 + temp) != 0) {
            gActors[new_actor_index].var_110 = 256.0f;
        }
        else {
            gActors[new_actor_index].var_110 = 0.0f;
        }

        if (temp) {
            gActors[new_actor_index].posX.whole = 0x350 - gScreenPosCurrentX.whole;
        }
        else {
            gActors[new_actor_index].posX.whole = 0x100 - gScreenPosCurrentX.whole;
        }

        gActors[new_actor_index].posY.whole = 0x170 - gScreenPosCurrentY.whole;
    }

    return new_actor_index;
}

void func_801B1180_7B4860(u16 actor_index) {
    func_801B0FFC_7B46DC(actor_index);
}

void func_801B11A8_7B4888(u16 arg0) {
    Actor* actor = &gActors[0x6A];

    func_8007CD68(0x6A, 0, 0, 0x48, 0, 2, 0x63);
    actor->posZ.whole = 8;
    actor->var_158 = 0x3B;
}

void func_801B1200_7B48E0(u16 arg0) {
    u16 actor_index;

    actor_index = 0x6B;
    gActors[actor_index].actorType = 0x1A09;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = 0x11;
    gActors[actor_index].flags |= 8;
    gActors[actor_index].graphicIndex = 0x2D0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0x48;
    gActors[actor_index].posZ.whole = 4;
    gActors[actor_index].scaleX = 10.0f;
    gActors[actor_index].scaleY = 1.2f;
    gActors[actor_index].colorA = 0xB2;
    gActors[actor_index].colorB = 0xBA;

    actor_index = 0x6D;
    gActors[actor_index].actorType = 0x1A07;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = 0x801;
    gActors[actor_index].flags = 0xA;
    gActors[actor_index].posX.whole = 0x28;
    gActors[actor_index].posY.whole = 0x48;
    gActors[actor_index].posZ.whole = 5;
    gActors[actor_index].var_150 = 1;
    gActors[actor_index].unk_174 = (s32)D_801B4454_7B7B34;
    gActors[actor_index].unk_164 = 0x40;

    actor_index = 0x6C;
    gActors[actor_index].actorType = 0x1A07;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = 0x801;
    gActors[actor_index].flags = 0xA;
    gActors[actor_index].posX.whole = -0x44;
    gActors[actor_index].posY.whole = 0x48;
    gActors[actor_index].posZ.whole = 5;
    gActors[actor_index].var_150 = 0;
    gActors[actor_index].unk_174 = (s32)D_801B446C_7B7B4C;
    gActors[actor_index].unk_164 = 0x40;

    actor_index = 0x6E;
    func_8007CD68(actor_index, 0, 0, 0x60, 0, 3, 0x3E7);
    gActors[actor_index].posZ.whole = 8;
    gActors[actor_index].actorType = 0x1A08;
    gActors[actor_index].unk_16C = (s32)D_801B4458_7B7B38;
    gActors[actor_index].pfn_190 = func_8007DB84;
    gActors[actor_index].unk_18C = (s32)D_800D9AE4;

    actor_index = 0x6F;
    func_8007CD68(actor_index, 0, 0, 0x60, 0, 3, 0x3E7);
    gActors[actor_index].posZ.whole = 8;
    gActors[actor_index].actorType = 0x1A08;
    gActors[actor_index].unk_16C = (s32)D_801B4464_7B7B44;
    gActors[actor_index].pfn_190 = func_8007DB84;
    gActors[actor_index].unk_18C = (s32)D_800D9AE4;
}

void func_801B147C_7B4B5C(u16 arg0) {
    u16 actor_index = Actor_RangeFindInactive(0x50, 0x60);

    if (actor_index != 0) {
        gActors[actor_index].actorType = 0xE04;
        Actor_Initialize(actor_index);
        gActors[actor_index].posY.whole = 0x220 - gScreenPosCurrentY.whole;
        gActors[actor_index].posZ.whole = 0;

        if (Rand() & 1) {
            gActors[actor_index].var_110 = 8.0f;
            gActors[actor_index].posX.whole = 0x310 - gScreenPosCurrentX.whole;
        }
        else {
            gActors[actor_index].posX.whole = 0x140 - gScreenPosCurrentX.whole;
        }
    }
}

void func_801B1548_7B4C28(u16 arg0) {
    u16 actor_index = Actor_RangeFindInactive(0x50, 0x60);

    if (actor_index != 0) {
        u16 random_value = Rand();

        gActors[actor_index].actorType = 0x50;
        Actor_Initialize(actor_index);

        if (random_value & 1) {
            gActors[actor_index].var_110 = 3.0f;
        }
        else {
            gActors[actor_index].var_110 = 4099.0f;
        }

        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].var_110 += (f32)((random_value % 3) << 8);

        if (random_value & 2) {
            gActors[actor_index].posX.whole = 0x330 - gScreenPosCurrentX.whole;
            gActors[actor_index].velocityX.raw = -D_801B436C_7B7A4C[D_80178292];
        }
        else {
            gActors[actor_index].posX.whole = 0x120 - gScreenPosCurrentX.whole;
            gActors[actor_index].velocityX.raw = D_801B436C_7B7A4C[D_80178292];
        }
    }
}

void func_801B1694_7B4D74(u16 actor_index) {
    if (gActors[actor_index].var_154 < gActors[0x6E].var_158) {
        gActors[actor_index].var_154 = gActors[0x6E].var_158;
    }
}

void func_801B16E8_7B4DC8(u16 arg0) {
    gStageState = 0;
    D_800D28F0 = 0x32;
    D_800D28E4 = 0x62;
}

void func_801B1710_7B4DF0(u16 actor_index) {
    gActors[actor_index].var_15C = gActors[actor_index].var_158 / 10;

    switch (gActors[actor_index].var_15C) {
        case 5:
            if (!(gActiveFrames & 0x7F)) {
                func_801B1054_7B4734(actor_index);
            }

            break;

        case 4:
            if (!(gActiveFrames & 0x7F)) {
                func_801B1054_7B4734(actor_index);
            }

            if (!(gActiveFrames & 0x1FF)) {
                func_801B147C_7B4B5C(actor_index);
            }

            break;

        case 3:
            if (!(gActiveFrames & 0x7F)) {
                func_801B1054_7B4734(actor_index);
            }

            if (!(gActiveFrames & 0x3FF)) {
                func_801B1548_7B4C28(actor_index);
            }

            break;

        case 2:
            if (!(gActiveFrames & 0x3F)) {
                func_801B1054_7B4734(actor_index);
            }

            if (!(gActiveFrames & 0x3FF)) {
                func_801B147C_7B4B5C(actor_index);
            }

            if (!(gActiveFrames & 0x3FF)) {
                func_801B1548_7B4C28(actor_index);
            }

            break;

        case 1:
            if (!(gActiveFrames & 0x3F)) {
                func_801B1054_7B4734(actor_index);
            }

            if (!(gActiveFrames & 0x3FF)) {
                func_801B147C_7B4B5C(actor_index);
            }

            if (!(gActiveFrames & 0x1FF)) {
                func_801B1548_7B4C28(actor_index);
            }

            break;

        case 0:
            if (!(gActiveFrames & 0x3F)) {
                func_801B1054_7B4734(actor_index);
            }

            if (!(gActiveFrames & 0x1FF)) {
                func_801B147C_7B4B5C(actor_index);
            }

            if (!(gActiveFrames & 0xFF)) {
                func_801B1548_7B4C28(actor_index);
            }

            break;
    }
}

void func_801B1980_7B5060(u16 arg0) {
    u16 actor_index = Actor_RangeFindInactive(0x60, 0x70);

    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x1A07;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = 0x801;
        gActors[actor_index].flags = 0xA;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].palette_18C = (u16*)D_800D9B04;
        gActors[actor_index].var_150 = 0x21;
        gActors[actor_index].unk_174 = (s32)D_801B444C_7B7B2C;
        gActors[actor_index].unk_164 = 4;
    }
}

void func_801B1A30_7B5110(u16 arg0) {
    s32 player_time = gActors[0x6E].unk_158_u16[1];
    u16 opponent_time_copy;
    u16 opponent_time = gActors[0x6F].unk_158_u16[1];
    s32 rank;
    u16 player_rank;
    u16 opponent_rank;
    u32* record;
    u32 time;
    s32 current_time_copy;

    gFestivalEventsPlayed[gFestivalCurrentEvent] = 1;
    record = &gFestivalRecords[gFestivalCurrentEvent];
    time = (gFestivalTimeToBeat = *record);
    opponent_time_copy = opponent_time;
    gFestivalTimeCurrent = player_time;
    current_time_copy = gFestivalTimeCurrent;
    gFestivalIsTimeBeat = 0;

    if (time < player_time) {
        gFestivalIsTimeBeat = 1;
        gFestivalTimeToBeat = current_time_copy;
        time = current_time_copy;
    }

    *record = time;

    if (opponent_time_copy < player_time) {
        player_rank = 1;
        opponent_rank = 2;
    }
    else {
        rank = 2;
        player_rank = rank;
        opponent_rank = 1;
    }

    gFestivalCompetitors[0].rank = player_rank;
    gFestivalCompetitors[1].rank = opponent_rank;
    gFestivalEventClearCount++;
}

void func_801B1AF4_7B51D4(u16 actor_index) {
    Festival_UnkMotion table[9] = {
        { 1, 0, 0x80, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 7, 0, 0, 0, 0 },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { -8, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B1C0C_7B52EC(u16 actor_index) {
    Festival_UnkMotion table[9] = {
        { 1, 0, 0x80, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 7, 0, 0, 0, 0 },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { -8, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;
        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B1D24_7B5404(u16 actor_index) {
    Festival_UnkMotion table[8] = {
        { 1, 0, 0x80, FIXED_UNIT(-1.0), 0 },
        { 4, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { 3, 0, 0, 0, 0 },
        { 3, 0, 0x90, 0, 0 },
        { 7, 0, 0, 0, 0 },
        { 2, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { 1, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { -7, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B1E3C_7B551C(u16 actor_index) {
    Festival_UnkMotion table[8] = {
        { 1, 0, 0x80, FIXED_UNIT(1.0), 0 },
        { 4, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 8, 0, 0, 0, 0 },
        { 7, 0, 0, 0, 0 },
        { 4, 0, 0x150, FIXED_UNIT(1.0), 0 },
        { 2, 0, 0, 0, 0 },
        { 4, 0, 0x150, FIXED_UNIT(1.0), 0 },
        { -7, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;
        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B1F54_7B5634(u16 actor_index) {
    Festival_UnkMotion table[7] = {
        { 1, 0, 0x80, FIXED_UNIT(-1.0), 0 },
        { 4, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { 3, 0, 0x30, 0, 0 },
        { 4, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { 3, 0, 0x120, 0, 0 },
        { 4, 0, 0x70, FIXED_UNIT(-1.0), FIXED_UNIT(4.0) },
        { -6, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B206C_7B574C(u16 actor_index) {
    Festival_UnkMotion table[8] = {
        { 1, 0, 0x80, FIXED_UNIT(1.0), 0 },
        { 4, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0) },
        { 8, 0, 0x130, 0, 0 },
        { 7, 0, 0x140, 0, 0 },
        { 4, 0, 0x150, FIXED_UNIT(1.0), 0 },
        { 2, 0, 0, 0, 0 },
        { 4, 0, 0x150, FIXED_UNIT(1.0), 0 },
        { -7, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B2184_7B5864(u16 actor_index) {
    Festival_UnkMotion table[5] = {
        { 7, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { 1, 0, 0x100, FIXED_UNIT(-1.0), FIXED_UNIT(2.0) },
        { 1, 0, 0xF0, 0, 0 },
        { 7, 0, 0x70, FIXED_UNIT(-2.0), 0 },
        { -4, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

void func_801B229C_7B597C(u16 actor_index) {
    Festival_UnkMotion table[5] = {
        { 7, 0, 0x70, FIXED_UNIT(2.0), 0 },
        { 1, 0, 0x100, FIXED_UNIT(2.0), FIXED_UNIT(2.0) },
        { 1, 0, 0xF0, 0, 0 },
        { 7, 0, 0x70, FIXED_UNIT(2.0), 0 },
        { -4, 0, 0, 0, 0 },
    };

    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        current_index = gActors[actor_index].unk_17C;

        if (table[current_index].duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if (table[current_index].duration < 0) {
            gActors[actor_index].unk_17C = table[current_index].duration + current_index;
            if (!table[current_index].duration) {
            }
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = table[current_index].motionState;
        gActors[actor_index].unk_16C = table[current_index].velocityX;
        gActors[actor_index].unk_170 = table[current_index].velocityY;

        FESTIVAL_ADVANCE_MOTION(actor_index, table, current_index);
    }
}

u16 func_801B23B4_7B5A94(u16 position_x, s16 position_z, u16 timer, u16 random_base, u16 motion_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x38, 0x40);

    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index, 0xE05);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
        gActors[new_actor_index].posZ.whole = position_z;
        gActors[new_actor_index].var_110 = (f32)timer;
        gActors[new_actor_index].var_0D8 = random_base;

        switch (motion_index) {
            case 0:
                gActors[new_actor_index].pfn_190 = func_801B1AF4_7B51D4;
                break;

            case 1:
                gActors[new_actor_index].pfn_190 = func_801B1C0C_7B52EC;
                break;

            case 2:
                gActors[new_actor_index].pfn_190 = func_801B1D24_7B5404;
                break;

            case 3:
                gActors[new_actor_index].pfn_190 = func_801B1E3C_7B551C;
                break;

            case 4:
                gActors[new_actor_index].pfn_190 = func_801B1F54_7B5634;
                break;

            case 5:
                gActors[new_actor_index].pfn_190 = func_801B206C_7B574C;
                break;

            case 6:
                gActors[new_actor_index].pfn_190 = func_801B2184_7B5864;
                break;

            case 7:
                gActors[new_actor_index].pfn_190 = func_801B229C_7B597C;
                break;
        }
    }
    return new_actor_index;
}

void func_801B2530_7B5C10(u16 arg0) {
    UnkStruct_7B3FE0__func_801B2530_7B5C10 spawn_values;
    s16 position_x;
    u16 motion_index;

    if (!(gActiveFrames & 0x1FF)) {
        if (!(Rand() & 7)) {
            spawn_values.positionZ = 0xA0;
        }
        else {
            spawn_values.positionZ = -0xFA;
        }

        spawn_values.randomValue = Rand();
        spawn_values.randomBase = D_801B4558_7B7C38[spawn_values.randomValue & 7] + D_801B4568_7B7C48[Rand() & 0xF];

        motion_index = Rand() & 7;
        if (motion_index & 1) {
            position_x = gScreenPosCurrentX.whole - 0xE0;
        }
        else {
            position_x = gScreenPosCurrentX.whole + 0xE0;
        }

        func_801B23B4_7B5A94(position_x, spawn_values.positionZ, 0, spawn_values.randomBase, motion_index);
    }
}

void func_801B2628_7B5D08(u16 actor_index) {
    func_801B2530_7B5C10(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gFestivalCompetitorCount = 2;
            gFestivalEventState = 0;
            func_801B0BA0_7B4280(actor_index);
            func_801B0A8C_7B416C(actor_index);
            D_800BE544 = 0x8000;
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_BROKEN);
            gActors[actor_index].posZ.whole = 8;
            gActors[0].posY.whole = -0x500;
            Sound_PlaySfx(SFX_CROUD_CHATTER);
            gActors[actor_index].var_150 = 0x3C;
            // fallthrough

        case 1:
            if (--gActors[actor_index].var_150 < 0) {
                func_801B1180_7B4860(actor_index);
                gActors[0].posX.whole = 0x218 - gScreenPosCurrentX.whole;
                gActors[0].posY.whole = 0x80;
                D_800BE5F4.unk_00_u32 = 2;
                gPlayerData.unk_20 = 0;
                gPlayerData.unk_24 = 0;
                gActors[actor_index].state++;
            }
            break;

        case 2:
            if (--gActors[actor_index].var_150 < 0) {
                OverlayABI_Slot2_fn30_u16(actor_index);
                gActors[actor_index].var_150 = 0xB4;
                gActors[actor_index].state++;
            }
            break;

        case 3:
            if (--gActors[actor_index].var_150 < 0) {
                OverlayABI_Slot2_fn28_u16(actor_index);
                func_801B11A8_7B4888(actor_index);
                func_801B1200_7B48E0(actor_index);
                gActors[actor_index].var_150 = 0x78;
                gActors[actor_index].state++;
            }
            break;

        case 4:
            if (--gActors[actor_index].var_150 < 0) {
                OverlayABI_Slot2_fn29_u16(actor_index);
                gActors[actor_index].var_150 = 0;
                gActors[actor_index].var_158 = 0x3B;
                D_800BE5F4.unk_00_u32 = 5;
                D_800BE544 = 0;
                gActors[actor_index].state++;
            }
            break;

        case 5:
            if (++gActors[actor_index].var_150 >= 0x3D) {
                gActors[actor_index].var_150 = 0;
                if (--gActors[actor_index].var_158 == 0) {
                    gActors[actor_index].var_150 = 0xF0;
                    gActors[actor_index].state++;
                    func_801B1980_7B5060(actor_index);
                }
            }
            
            gActors[0x6A].var_158 = gActors[actor_index].var_158;
            func_801B1710_7B4DF0(actor_index);
            return;

        case 6:
            if (--gActors[actor_index].var_150 < 0) {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 = 0x1E;
                Sound_StartFade(1, 0x3C);
                return;
            }
            break;

        case 7:
            if ((--gActors[actor_index].var_150 < 0) || (gAudioFadeMode != 1)) {
                func_801B1694_7B4D74(actor_index);
                func_801B16E8_7B4DC8(actor_index);
                func_801B1A30_7B5110(actor_index);
                gActors[actor_index].state++;
            }
            break;

        case 8:
            break;
    }
}

void func_801B2938_7B6018(u16 actor_index) {
    u16 particle_index;

    particle_index = SpawnParticle_List_90C0_16(
        D_800E1604,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole,
        gActors[actor_index].posZ.whole + 2
    );

    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = 0x13;
        gActors[particle_index].var_15C = 0;
        gActors[particle_index].unk_16C = 0;
        gActors[particle_index].var_154 = -6;
        gActors[particle_index].unk_164 = 0;
        gActors[particle_index].var_110 = 0.01f;
        gActors[particle_index].unk_114 = 0.01f;
        gActors[particle_index].rotateX = 60.0f;
        gActors[particle_index].unk_118 = 0.0f;
        gActors[particle_index].unk_11C = 0.0f;
    }

    particle_index = SpawnParticle_List_90C0_16(
        gGraphicListBlank,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + 8,
        gActors[actor_index].posZ.whole + 2
    );

    if (particle_index != 0) {
        gActors[particle_index].graphicFlags = 0x11;
        gActors[particle_index].graphicIndex = 0x170;
        gActors[particle_index].velocityY.raw = FIXED_UNIT(1.0);
        gActors[particle_index].var_15C = FIXED_UNIT(-0.00390625);
        gActors[particle_index].unk_16C = 0;
        gActors[particle_index].unk_118 = 0.0f;
        gActors[particle_index].unk_11C = 0.0f;
        gActors[particle_index].var_154 = -0x10;
        gActors[particle_index].unk_164 = 0;
        gActors[particle_index].scaleX = 0.5f;
        gActors[particle_index].scaleY = 0.5f;
        gActors[particle_index].var_110 = 0.05f;
        gActors[particle_index].unk_114 = 0.05f;
    }
}

void func_801B2AC0_7B61A0(u16 actor_index, u16 state) {
    u16 masked_collided_actor_index;
    s32 position_x_delta;
    s16 collided_position_z;
    u16 collision_flags_16;
    u16 collided_position_z_16;
    s32 position_x_distance;
    u16 collided_actor_index;
    u32 collision_flags;

    collision_flags = gActors[(s32)actor_index].flags_098;
    collided_actor_index = gActors[(s32)actor_index].unk_0CC;
    masked_collided_actor_index = (collided_actor_index &= 0xFF);
    collision_flags_16 = collision_flags;
    if ((collision_flags_16 & ACTOR_FLAG3_UNK5) && (masked_collided_actor_index == 0x3F)) {
        position_x_delta = gActors[(s32)actor_index].posX.whole - gActors[(s32)collided_actor_index].posX.whole;
        position_x_distance = ABS(position_x_delta);
        if (position_x_distance < 8) {
            gActors[(s32)actor_index].state = state;
            gActors[(s32)actor_index].flags = 3;
            gActors[(s32)actor_index].posX.whole = gActors[(s32)collided_actor_index].posX.whole;
            collided_position_z = gActors[(s32)collided_actor_index].posZ.whole;
            collided_position_z_16 = collided_position_z;
            gActors[(s32)actor_index].health = 0;
            gActors[(s32)actor_index].posZ.whole = collided_position_z_16 - 1;
            gActors[(s32)actor_index].velocityX.raw = 0;
            gActors[(s32)actor_index].velocityY.raw = 0;
            gActors[(s32)actor_index].var_158 = collided_actor_index;
            gActors[(s32)actor_index].var_15C = gActors[(s32)actor_index].posY.whole - gActors[(s32)collided_actor_index].posY.whole;
            func_801B2938_7B6018(actor_index);
        }
    }
}

void func_801B2BA0_7B6280(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 6;
    gActors[actor_index].hitboxBY1 = -6;
    gActors[actor_index].hitboxBX0 = -6;
    gActors[actor_index].hitboxBX1 = 6;
}

void func_801B2BEC_7B62CC(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8.0)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
    }
}

s32 func_801B2C40_7B6320(u16 actor_index) {
    s32 velocity_y = gActors[actor_index].velocityY.raw;

    if ((velocity_y < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw * 0.9;
        gActors[actor_index].velocityY.raw = -velocity_y * 0.9;
        gActors[actor_index].scaleX = 1.2f;
        gActors[actor_index].scaleY = 0.7f;
        if (++gActors[actor_index].var_154 >= 0x10) {
            gActors[actor_index].flags = 0;
            return 1;
        }
    }

    return 0;
}

void func_801B2D44_7B6424(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw;
        return;
    }

    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
    }
}

s32 func_801B2DF8_7B64D8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & 0x200) {
        gActors[actor_index].state = 2;
        gActors[actor_index].flags = 0x20003;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_154 = 0;
        return 1;
    }

    return 0;
}

s16 func_801B2E68_7B6548(u16 actor_index) {
    s16 position_x;
    u16 new_actor_index;

    new_actor_index = actor_index;
    position_x = gScreenPosCurrentX.whole + (gActors + actor_index)->posX.whole;

    if ((position_x < 0x100) || (position_x >= 0x351)) {
        (gActors + new_actor_index)->flags = 0;
    }

    // BUG: UB, missing return
}

void func_801B2ED4_7B65B4(u16 actor_index) {
    gActors[actor_index].posZ.raw = FIXED_UNIT(-4.0);

    if ((gActors[0x30].state < 6) && (Clanpot_AddItemCheck1(actor_index, 0xA00, 0, 0) >= 0)) {
        if (gActors[actor_index].var_110 == 0.0f) {
            gActors[0x6E].var_158++;
        }
        else {
            gActors[0x6F].var_158++;
        }
    }
    else {
        switch (gActors[actor_index].state) {
            case 0: {
                s32 graphic_index;

                gActors[actor_index].state++;
                gActors[actor_index].graphicFlags = 0x11;
                gActors[actor_index].graphicIndex = 0x836;
                gActors[actor_index].health = 1;
                graphic_index = (u32)gActors[actor_index].var_110;

                if ((graphic_index & 1) & 0xFF) {
                    gActors[actor_index].graphicIndex = 0x838;
                }

                func_801B2BA0_7B6280(actor_index);
            }
            // fallthrough

            case 1:
                func_801B2BEC_7B62CC(actor_index);
                if (func_801B2C40_7B6320(actor_index) == 0) {
                    func_801B2D44_7B6424(actor_index);
                    func_801B2DF8_7B64D8(actor_index);
                    func_801B2E68_7B6548(actor_index);
                }
                break;

            case 2: {
                s32 result = func_800291AC(actor_index, 1, 0x21003, 1, 0x21003);

                if ((result != 0) && (result != 1) && ((result == 2) || (result == 3))) {
                    func_801B2BA0_7B6280(actor_index);
                }
                break;
            }
        }

        gActors[actor_index].flags_098 &= 0xFFDFF9FF;
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.05f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
    }
}

void func_801B3158_7B6838(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0xA;
    gActors[actor_index].hitboxBY1 = -0xE;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

void func_801B31AC_7B688C(u16 actor_index) {
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-8.0)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
    }
}

void func_801B3200_7B68E0(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].var_154--;
            if (gActors[actor_index].var_154 <= 0) {
                gActors[actor_index].flags &= 0xFFFDFFFF;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].flags |= 0x10000;
            }
        }

        gActors[actor_index].velocityX.raw /= 2;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
    }
}

void func_801B32CC_7B69AC(u16 actor_index) {
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw;
    }

    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) ||
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
    }
}

s32 func_801B337C_7B6A5C(u16 actor_index) {
    if (gActors[actor_index].flags_098 & 0x200) {
        gActors[actor_index].state = 2;
        gActors[actor_index].flags = 0x22003;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].var_154 = 2;
        return 1;
    }

    return 0;
}

void func_801B33F0_7B6AD0(u16 actor_index) {
    s32 actor_flags = 0x23003;
    s32 result;

    gActors[actor_index].posZ.raw = FIXED_UNIT(-4.0);
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].flags = actor_flags;
            gActors[actor_index].graphicIndex = 0x264;
            gActors[actor_index].graphicList = D_800E2514;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].health = 1;
            gActors[actor_index].var_154 = 2;
            func_801B3158_7B6838(actor_index);
            gActors[actor_index].state++;
            // fallthrough

        case 1:
            func_801B31AC_7B688C(actor_index);
            func_801B3200_7B68E0(actor_index);
            func_801B32CC_7B69AC(actor_index);
            func_801B337C_7B6A5C(actor_index);
            break;

        case 2:
            result = func_800291AC(actor_index, 1, actor_flags, 1, actor_flags);
            if ((result != 0) && (result != 1) && ((result == 2) || (result == 3))) {
                func_801B3158_7B6838(actor_index);
            }
            break;
    }
    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
}

void func_801B3538_7B6C18(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        s32 position_z = TO_FIXED(Rand()) + FIXED_UNIT(-96.0);

        gActors[actor_index].var_154 = position_z;
        gActors[actor_index].posZ.raw = position_z;
    }

    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            switch (gActors[actor_index].unk_174) {
                case 0:
                    gActors[actor_index].unk_174++;

                    if (gActors[actor_index].var_0D8 & 1) {
                        gActors[actor_index].unk_184_s16[0] = 0x290;
                    }
                    else {
                        gActors[actor_index].unk_184_s16[0] = 0x1C0;
                    }

                    func_800734C4(actor_index, 0x20);
                    break;

                case 1:
                    if (!(func_800734C4(actor_index, 0x20) & 0x8000)) {
                        gActors[actor_index].unk_174++;
                        gActors[actor_index].state = 0x3A0;

                        if (Rand() & 1) {
                            gActors[actor_index].var_158 = (s32)func_801B0CB4_7B4394;
                        }
                        else {
                            gActors[actor_index].var_158 = (s32)func_801B0EB8_7B4598;
                        }
                    }
                    break;

                case 2:
                    gActors[actor_index].unk_174++;

                    if (gActors[actor_index].var_0D8 & 1) {
                        gActors[actor_index].unk_184_s16[0] = 0x360;
                    }
                    else {
                        gActors[actor_index].unk_184_s16[0] = 0xF0;
                    }

                    func_800734C4(actor_index, 0x20);
                    break;

                case 3:
                    if (!(func_800734C4(actor_index, 0x20) & 0x8000)) {
                        gActors[actor_index].flags = 0;
                    }
                    break;
            }
            break;

        case 0xA1:
            gActors[actor_index].unk_118 = D_801B4310_7B79F0[D_80178292];
            func_800734C4(actor_index, 0x20);
            break;
    }

    gActors[actor_index].flags &= ~0x1780;
}

void func_801B373C_7B6E1C(u16 actor_index) {
    u8 frame_divisor = D_801B4338_7B7A18[D_80178292];

    if ((gActiveFrames % frame_divisor) == 0) {
        if (func_80029B00(0x70, -0x60, -0xE0) != 0) {
            gActors[actor_index].state = 0x54;
            gActors[actor_index].var_154 = (s32)func_801B0F38_7B4618;
        }
    }
}

void func_801B37FC_7B6EDC(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~2;
    func_8007B73C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x10;
            gActors[actor_index].unk_128 = 0.0f;
            break;

        case 0x10:
            if (gActors[actor_index].unk_188 == 0) {
                gActors[actor_index].state = 0x24;
                gActors[actor_index].var_160 = FIXED_UNIT(1.0);
                gActors[actor_index].unk_184 = 0x1D0;
            }
            else {
                gActors[actor_index].state = 0x24;
            }
            break;

        case 0x25: {
            u16 position_x;
            u16 position_y;

            position_x = (u32)gScreenPosCurrentX.whole - (0U - (u32)gActors[actor_index].posX.whole);
            position_y = (u32)gScreenPosCurrentY.whole - (0U - (u32)gActors[actor_index].posY.whole);
            if (gActors[actor_index].var_150 & 8) {
                gActors[actor_index].flags |= 0x20;
            }

            switch (gActors[actor_index].unk_188) {
                case 0:
                    if (position_y < 0x1D1) {
                        gActors[actor_index].unk_188++;
                        if (gActors[actor_index].flags & 0x20) {
                            gActors[actor_index].unk_180 = 0x120;
                        }
                        else {
                            gActors[actor_index].unk_180 = 0x330;
                        }
                        gActors[actor_index].var_160 = FIXED_UNIT(2.0);
                    }
                    break;

                case 1:
                    func_801B373C_7B6E1C(actor_index);
                    if (gActors[actor_index].flags & 0x20) {
                        if ((gActors[actor_index].unk_180 + 0x60) >= position_x) {
                            gActors[actor_index].unk_188++;
                            gActors[actor_index].unk_184 = 0x220;
                            gActors[actor_index].var_160 = D_801B4344_7B7A24[D_80178292];
                        }
                    }
                    else if (position_x >= (gActors[actor_index].unk_180 - 0x60)) {
                        gActors[actor_index].unk_188++;
                        gActors[actor_index].unk_184 = 0x220;
                        gActors[actor_index].var_160 = D_801B4344_7B7A24[D_80178292];
                    }
                    break;

                case 2:
                    if (position_y >= 0x210) {
                        gActors[actor_index].flags = 0;
                    }
                    break;
            }
            break;
        }

        case 0x30:
            if (gActors[actor_index].var_154 >= 0x15) {
                gActors[actor_index].state = 0x70;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
            }
            break;

        case 0x72:
            gActors[actor_index].state = 0xF;
            break;
    }

    gActors[actor_index].flags_098 &= 0xFFDFF9FF;
    gActors[actor_index].flags &= ~0x1780;
}

void func_801B3AD8_7B71B8(u16 actor_index, s16* graphic_list) {
    if (gActors[actor_index].graphicTimer == 0) {
        gActors[actor_index].graphicList = graphic_list;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].velocityX.raw = 0;
    }
}

s32 func_801B3B2C_7B720C(u16 actor_index) {
    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
    if (gActors[actor_index].velocityX.raw < 0) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].var_154 = 0x10;
            return 1;
        }
    }

    if (gActors[actor_index].velocityX.raw > 0) {
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_154 = 0x10;
            return 1;
        }
    }

    return 0;
}

void func_801B3BBC_7B729C(u16 actor_index) {
    static s16 D_801B484C_7B7F2C[10] = {
        0x6829, 0x000A, 0x682A, 0x0007, 0x682B, 0x000A, 0x682A, 0x0007, 0x0000, 0x0000,
    };
    static s16 D_801B4860_7B7F40[34] = {
        0x6885, 0x0002, 0x6886, 0x0002, 0x6887, 0x0002, 0x6888, 0x0002, 0x6889, 0x0002, 0x688A, 0x0002,
        0x688B, 0x0002, 0x688C, 0x0002, 0x688D, 0x0002, 0x688E, 0x0002, 0x688F, 0x0002, 0x6890, 0x0002,
        0x6881, 0x0002, 0x6882, 0x0002, 0x6883, 0x0002, 0x6884, 0x0002, 0x0000, 0x0000,
    };
    static s16 D_801B48A4_7B7F84[34] = {
        0x6806, 0x0002, 0x6807, 0x0002, 0x6808, 0x0002, 0x6809, 0x0002, 0x680A, 0x0002, 0x680B, 0x0002,
        0x680C, 0x0002, 0x680D, 0x0002, 0x680E, 0x0002, 0x680F, 0x0002, 0x6810, 0x0002, 0x6811, 0x0002,
        0x6812, 0x0002, 0x6803, 0x0002, 0x6804, 0x0002, 0x6805, 0x0002, 0x0000, 0x0000,
    };
    static s16 D_801B48E8_7B7FC8[34] = {
        0x6819, 0x0002, 0x681A, 0x0002, 0x681B, 0x0002, 0x681C, 0x0002, 0x681D, 0x0002, 0x681E, 0x0002,
        0x681F, 0x0002, 0x6820, 0x0002, 0x6821, 0x0002, 0x6822, 0x0002, 0x6823, 0x0002, 0x6824, 0x0002,
        0x6825, 0x0002, 0x6826, 0x0002, 0x6827, 0x0002, 0x6828, 0x0002, 0x0000, 0x0000,
    };
    static s16 D_801B492C_7B800C[34] = {
        0x689C, 0x0003, 0x689D, 0x0003, 0x689E, 0x0003, 0x689F, 0x0003, 0x68A0, 0x0003, 0x68A1, 0x0003,
        0x68A2, 0x0003, 0x68A3, 0x0003, 0x68A4, 0x0003, 0x68A5, 0x0003, 0x68A6, 0x0003, 0x68A7, 0x0003,
        0x68A8, 0x0003, 0x68A9, 0x0003, 0x689A, 0x0003, 0x689B, 0x0003, 0x0000, 0x0000,
    };
    static s16 D_801B4970_7B8050[34] = {
        0x6907, 0x0004, 0x6908, 0x0004, 0x6909, 0x0004, 0x690A, 0x0005, 0x690B, 0x0006, 0x690A, 0x0005,
        0x6909, 0x0004, 0x6908, 0x0004, 0x6907, 0x0004, 0x6906, 0x0004, 0x6905, 0x0004, 0x6904, 0x0005,
        0x6903, 0x0006, 0x6904, 0x0005, 0x6905, 0x0004, 0x6906, 0x0004, 0x0000, 0x0000,
    };
    static s16 D_801B49B4_7B8094[14] = {
        0x6845, 0x001E, 0x6846, 0x0008, 0x6845, 0x001E, 0x6846, 0x0008,
        0x6845, 0x0008, 0x6846, 0x0008, 0x0000, 0x0000,
    };
    static s16 D_801B49D0_7B80B0[36] = {
        0x6842, 0x0005, 0x6841, 0x0005, 0x6854, 0x0005, 0x6841, 0x0005, 0x6852, 0x0005, 0x6853, 0x0004,
        0x6852, 0x0003, 0x6853, 0x0003, 0x6854, 0x0003, 0x6855, 0x0003, 0x6856, 0x0003, 0x6857, 0x0003,
        0x6858, 0x0003, 0x6859, 0x0003, 0x685A, 0x0003, 0x685B, 0x0003, 0x685C, 0x0003, 0x0000, 0x0000,
    };
    static s16 D_801B4A18_7B80F8[10] = {
        0x691F, 0x0004, 0x6920, 0x0004, 0x6921, 0x0004, 0x6800, 0x0004, 0x0000, 0x0000,
    };
    static s16 D_801B4A2C_7B810C[8] = {
        0x6921, 0x0004, 0x6920, 0x0004, 0x691F, 0x0004, 0x0000, 0x0000,
    };
    static s16 D_801B4A3C_7B811C[16] = {
        0x690F, 0x0004, 0x6910, 0x0004, 0x6911, 0x0006, 0x6912, 0x0008,
        0x6911, 0x0006, 0x6910, 0x0004, 0x690F, 0x0004, 0x0000, 0x0000,
    };
    static s16 D_801B4A5C_7B813C[10] = {
        0x690C, 0x0005, 0x690D, 0x0007, 0x690E, 0x000A, 0x690D, 0x0007, 0x0000, 0x0000,
    };

    switch (gActors[actor_index].var_154) {
        case 0:
        case 0x160:
            if (gActors[actor_index].pfn_190 != NULL) {
                gActors[actor_index].pfn_190(actor_index);
            }

            if (gActors[actor_index].graphicTimer != 0) {
                return;
            }

            if (gActors[actor_index].var_154 != 0) {
                return;
            }

            gActors[actor_index].graphicTimer = 1;

            if (gActors[actor_index].unk_174 != 0) {
                gActors[actor_index].graphicList = D_801B484C_7B7F2C;
            }
            else {
                gActors[actor_index].graphicList = D_800E1700;
            }

            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
            break;

        case 0x10:
            gActors[actor_index].graphicTimer = 1;

            if (gActors[actor_index].unk_174 != 0) {
                gActors[actor_index].graphicList = D_800E19E8;
            }
            else {
                gActors[actor_index].graphicList = D_800E19C0;
            }

            gActors[actor_index].var_158 = 6;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_154++;
            // fallthrough

        case 0x11:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].var_154 = 0;
            }

            gActors[actor_index].var_158--;
            if (gActors[actor_index].var_158 == 0) {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
            }
            break;

        case 0x20:
            ACTOR_GFX_INIT(actor_index, D_800E1BF4);
            gActors[actor_index].var_154++;
            // fallthrough

        case 0x21:
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E1C00);
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_170;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                gActors[actor_index].var_154++;
            }
            break;

        case 0x22:
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
            }

            if (gActors[actor_index].velocityY.raw >= 0) {
                break;
            }

            if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < gActors[actor_index].var_160) {
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].velocityX.raw = 0;
            }
            break;

        case 0x30:
            func_801B3AD8_7B71B8(actor_index, D_800E2274);
            break;

        case 0x40:
            func_801B3AD8_7B71B8(actor_index, D_801B49B4_7B8094);
            break;

        case 0x50:
            func_801B3AD8_7B71B8(actor_index, D_801B4A5C_7B813C);
            gActors[actor_index].var_154 = 0x160;
            break;

        case 0x60:
            func_801B3AD8_7B71B8(actor_index, D_801B4A3C_7B811C);
            break;

        case 0x90:
            func_801B3AD8_7B71B8(actor_index, D_801B4970_7B8050);
            break;

        case 0xB0:
            func_801B3AD8_7B71B8(actor_index, D_801B4A2C_7B810C);
            gActors[actor_index].var_154 = 0x160;
            break;

        case 0xC0:
            func_801B3AD8_7B71B8(actor_index, D_801B4A18_7B80F8);
            break;

        case 0xA0:
            func_801B3AD8_7B71B8(actor_index, D_801B49D0_7B80B0);
            break;

        case 0xE0:
            func_801B3AD8_7B71B8(actor_index, D_800E17A4);
            gActors[actor_index].unk_174 = 1;
            break;

        case 0xF0:
            func_801B3AD8_7B71B8(actor_index, D_800E17DC);
            gActors[actor_index].unk_174 = 0;
            break;

        case 0x120:
            func_801B3AD8_7B71B8(actor_index, D_800E1750);
            break;

        case 0x130:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicTimer = 1;

                if (gActors[actor_index].unk_174 != 0) {
                    gActors[actor_index].graphicList = D_800E1840;
                }
                else {
                    gActors[actor_index].graphicList = D_800E17F8;
                }

                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].var_154 = 0;
            }
            break;

        case 0x140:
            if (gActors[actor_index].graphicTimer == 0) {
                gActors[actor_index].graphicTimer = 1;

                if (gActors[actor_index].unk_174 != 0) {
                    gActors[actor_index].graphicList = D_800E1CB4;
                }
                else {
                    gActors[actor_index].graphicList = D_800E1C9C;
                }

                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].var_154 = 0;
            }
            break;

        case 0x70:
            if (gActors[actor_index].graphicTimer == 0) {
                if (func_801B3B2C_7B720C(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;

                    if (gActors[actor_index].unk_174 != 0) {
                        gActors[actor_index].graphicList = D_801B48E8_7B7FC8;
                    }
                    else {
                        gActors[actor_index].graphicList = D_801B4860_7B7F40;
                    }

                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].unk_114 += 1.0f;
                }
            }
            break;

        case 0x80:
            if (gActors[actor_index].graphicTimer == 0) {
                if (func_801B3B2C_7B720C(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;

                    if (gActors[actor_index].unk_174 != 0) {
                        gActors[actor_index].graphicList = D_801B48E8_7B7FC8;
                    }
                    else {
                        gActors[actor_index].graphicList = D_801B48A4_7B7F84;
                    }

                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].unk_114 += 1.0f;
                }
            }
            break;

        case 0xD0:
            gActors[actor_index].velocityX.raw = 0;
            break;

        case 0x100:
            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E22A8);
                gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                gActors[actor_index].var_154++;
            }
            break;

        case 0x101:
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
            }

            if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E22B4);
                gActors[actor_index].var_154++;
            }
            break;

        case 0x102:
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
            }

            if (gActors[actor_index].velocityY.raw < 0) {
                if ((gActors[actor_index].posY.whole + gScreenPosCurrentY.whole) < gActors[actor_index].var_160) {
                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].posY.whole = gActors[actor_index].var_160 - gScreenPosCurrentY.whole;
                    gActors[actor_index].velocityY.raw = 0;
                    gActors[actor_index].velocityX.raw = 0;
                    gActors[actor_index].unk_174 = 1;
                }
            }
            break;

        case 0x110:
            if (gActors[actor_index].graphicTimer == 0) {
                if (func_801B3B2C_7B720C(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;
                    gActors[actor_index].graphicList = D_800E1D0C;
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                    gActors[actor_index].posY.whole = (gActors[actor_index].var_160 - gScreenPosCurrentY.whole) - 8;
                    gActors[actor_index].var_154 = 0;
                }
            }
            break;

        case 0x150:
            if (gActors[actor_index].graphicTimer == 0) {
                if (func_801B3B2C_7B720C(actor_index) == 0) {
                    gActors[actor_index].graphicTimer = 1;
                    gActors[actor_index].graphicList = D_801B492C_7B800C;
                    gActors[actor_index].var_154 = 0;
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_16C;
                }
            }
            break;
    }
}

void func_801B41F8_7B78D8(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = 0x6800;
        gActors[actor_index].posY.whole = -40;
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
        gActors[actor_index].var_15C = gScreenPosCurrentX.whole;
        gActors[actor_index].var_15C += gActors[actor_index].posX.whole;
        gActors[actor_index].var_160 = gScreenPosCurrentY.whole;
        gActors[actor_index].var_160 += gActors[actor_index].posY.whole;
        gActors[actor_index].state++;
    }
    else {
        func_801B3BBC_7B729C(actor_index);
        if ((gActors[actor_index].posX.whole < -0x190) || (gActors[actor_index].posX.whole >= 0x191)) {
            gActors[actor_index].flags = 0;
        }
    }

    if (gActors[actor_index].flags != 0) {
        func_80066BCC(actor_index);
    }
    else {
        func_8006CB88(actor_index);
    }
}
