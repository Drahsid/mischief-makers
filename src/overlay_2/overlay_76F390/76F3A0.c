#include "common.h"
#include "actor.h"

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s16 unk_08;
} UnkStruct_801A7250; /* size = 0x0A */

extern u16 D_800BE4E0;

extern s32 func_80003778(u32 arg0, u16 actor_index);
extern s32 func_800288EC(u16 actor_index, s16 arg1);
extern void func_8002ABE4(u16 actor_index, s32 arg1);
extern u16 func_80031284(s32 arg0, s16 arg1, s16 arg2, s32 arg3);
extern void func_80039134(u16 actor_index);
extern void func_8005CA34(s32 arg0, s32 arg1);

UnkStruct_801A7250 D_801A7250_76FCF0[] = {
    { 0, 0x11, 0xC, -0x40, -0xC0 },
    { 0, 0xE, 6, -0x40, -0x60 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x11, -0xE, -0x60, 0x100 },
    { 0, 0x10, -0xC, -0x60, 0xC0 },
    { 0, 0x11, 0xF, -0x50, -0xC0 },
    { 0, 0, 0, 0, 0 },
};

void func_801A6900_76F3A0(u16 actor_index);
void func_801A694C_76F3EC(u16 actor_index);
void func_801A6980_76F420(u16 actor_index);
void func_801A6B28_76F5C8(u16 actor_index);
void func_801A6CAC_76F74C(u16 actor_index);
void func_801A6E4C_76F8EC(u16 actor_index);
void func_801A7180_76FC20(u16 actor_index);

void func_801A6900_76F3A0(u16 actor_index) {
    if (gActors[actor_index].posY.whole >= 0x101) {
        gActors[actor_index].flags = 0;
    }
}

void func_801A694C_76F3EC(u16 actor_index) {
    func_80039134(actor_index);
    func_801A6900_76F3A0(actor_index);
}

void func_801A6980_76F420(u16 actor_index) {
    u16 temp_v0;
    u16 temp_index;
    UnkStruct_801A7250* temp_v1;

    if ((D_800BE4E0 & 3) == 0) {
        temp_v0 = func_800284B8(0x30, 0x90);
        if (temp_v0 != 0) {
            temp_index = gActors[actor_index].unk_0D8 * 5;
            temp_v1 = (UnkStruct_801A7250*)&((s16*)D_801A7250_76FCF0)[temp_index];
            gActors[actor_index].posY.whole = temp_v1->unk_06;
            gActors[actor_index].posZ.whole = temp_v1->unk_08;
            gActors[temp_v0].actorType = 0x2502;
            func_8001E2D0(temp_v0);
            gActors[temp_v0].unk_094 = 1;
            gActors[temp_v0].flags = (func_8000178C() & 0x20) + 3;
            gActors[temp_v0].unk_0E4 = 0x64;
            gActors[temp_v0].unk_0DA = 0x84;
            gActors[temp_v0].unk_0DB = 0xB;
            gActors[temp_v0].unk_0F8 = FIXED_UNIT(4.0);
            gActors[temp_v0].unk_0FC = FIXED_UNIT(4.0);
            gActors[temp_v0].scaleX = gActors[actor_index].unk_114;
            gActors[temp_v0].scaleY = gActors[temp_v0].scaleX;

            if (D_800BE4E0 & 4) {
                gActors[temp_v0].unk_084 = 0xD4;
            }
            else {
                gActors[temp_v0].unk_084 = 0xD6;
            }

            func_8002ABE4(temp_v0, 0x10);
            Actor_SetColorRgb(temp_v0, ((u16*)&gActors[actor_index].unk_158)[1]);
            gActors[temp_v0].colorA = gActors[actor_index].unk_154;
            ((s16*)&gActors[temp_v0].velocityX)[0] = temp_v1->unk_00;
            ((s16*)&gActors[temp_v0].velocityY)[0] = temp_v1->unk_02;
            ((s16*)&gActors[temp_v0].unk_0F4)[0] = temp_v1->unk_04;
            gActors[temp_v0].posX.whole = gActors[actor_index].posX.whole - (func_8000178C() & 0xF) + 8;
            gActors[temp_v0].posY.whole = gActors[actor_index].posY.whole - (func_8000178C() & 0xF) + 8;
            gActors[temp_v0].posZ.whole = gActors[actor_index].posZ.whole;
        }
    }
}

void func_801A6B28_76F5C8(u16 actor_index) {
    u16 temp_v0;
    u16 temp_index;
    UnkStruct_801A7250* temp_v1;

    if ((D_800BE4E0 & 3) == 0) {
        func_8005CA34(4, 5);
        temp_index = gActors[actor_index].unk_0D8 * 5;
        temp_v1 = (UnkStruct_801A7250*)&((s16*)D_801A7250_76FCF0)[temp_index];
        temp_v0 = func_80031284(0x1B4, gActors[actor_index].posX.whole, temp_v1->unk_06, temp_v1->unk_08 + 1);

        if (temp_v0 != 0) {
            gActors[temp_v0].unk_094 = 0x209;
            gActors[temp_v0].scaleX = (1.0 - ((func_8000178C() & 0xF) / 28.0f));
            gActors[temp_v0].scaleY = (((func_8000178C() & 0xF) / 18.0f) + 2.5);
            gActors[temp_v0].unk_110 = 0.2f;
            gActors[temp_v0].unk_160 = ((func_8000178C() & 0x1F) << 0x10) + 0x2F00000;
            gActors[temp_v0].unk_18C = 0x8022D4E8;
            gActors[temp_v0].unk_148 = 3.0f;
        }
    }
}

void func_801A6CAC_76F74C(u16 actor_index) {
    u16 temp_v0;

    if ((D_800BE4E0 % 5) == 0) {
        temp_v0 = func_80031284(0x1B4, 0, 0, 0);
        if (temp_v0 != 0) {
            u16 temp_v1;

            gActors[temp_v0].unk_094 = 0x209;
            gActors[temp_v0].flags |= 0x8000;
            gActors[temp_v0].scaleX = 0.3f;
            gActors[temp_v0].scaleY = 2.0f;
            gActors[temp_v0].colorR = 0x7F;
            temp_v1 = func_8000178C();
            gActors[temp_v0].unk_18C = 0x8022D4E8;
            gActors[temp_v0].unk_160 = ((((temp_v1 * 4) & 0x1F0) + 0x200) << 2) << 14;
            gActors[temp_v0].unk_130 = actor_index;
            gActors[temp_v0].unk_14C = gActors[actor_index].actorType;
            gActors[temp_v0].unk_134 = 0.0f;
            gActors[temp_v0].unk_0F4 = FIXED_UNIT(1.0);
            gActors[temp_v0].unk_154 = -0x10;
            gActors[temp_v0].unk_138 = -16.0f;
            gActors[temp_v0].unk_13C = 16.0f;
            gActors[temp_v0].unk_110 = 0.55f;
            gActors[temp_v0].unk_118 = -0.02f;
            gActors[temp_v0].unk_11C = -0.02f;
            gActors[temp_v0].unk_140 = -20.0f;
        }
    }
}

void func_801A6E4C_76F8EC(u16 actor_index) {
    u16 temp_v1;

    gActors[actor_index].unk_110 += 1.0f;
    temp_v1 = (u16)gActors[actor_index].unk_110 % 0xF0;

    if ((temp_v1 >= 0x1E) && (temp_v1 < 0xD3)) {
        if (func_800288EC(actor_index, 0x40) == 0) {
            if ((D_800BE4E0 & 7) == 0) {
                func_80003778(0x4B, actor_index);
            }
        }
    }

    if (temp_v1 >= 0x3C) {
        if (temp_v1 < 0xD3) {
            if ((gActors[actor_index].posX.whole < 0xE0) && (gActors[actor_index].posX.whole >= -0xDF)) {
                func_801A6B28_76F5C8(actor_index);
                func_801A6CAC_76F74C(actor_index);
                func_801A6980_76F420(actor_index);
            }

            if (temp_v1 >= 0xB4) {
                gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 0.1f, 0.05f);
                gActors[actor_index].unk_154 = Math_ApproachF32(gActors[actor_index].unk_154, 0.0f, 8.0f);
                return;
            }

            gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 2.3f, 0.05f);
            gActors[actor_index].unk_154 = Math_ApproachF32(gActors[actor_index].unk_154, 192.0f, 4.0f);
            gActors[actor_index].unk_158 = Math_ApproachF32(gActors[actor_index].unk_158, 0.0f, 1.0f);
            return;
        }
    }
    if ((temp_v1 >= 0x1E) && (temp_v1 < 0x3D)
        && (gActors[actor_index].posX.whole < 0xE0) && (gActors[actor_index].posX.whole >= -0xDF)) {
        func_801A6B28_76F5C8(actor_index);
        func_801A6CAC_76F74C(actor_index);
        return;
    }

    if ((D_800BE4E0 & 3) == 0) {
        func_8005CA34(2, 4);
    }

    gActors[actor_index].unk_114 = 0.1f;
    gActors[actor_index].unk_154 = 0;
    gActors[actor_index].unk_158 = 0x7F;
}

void func_801A7180_76FC20(u16 actor_index) {
    if ((gActors[actor_index].posZ.whole < 0x10) && (gActors[actor_index].posZ.whole >= -0xB) && (gActors[actor_index].colorA >= 0x81)) {
        gActors[actor_index].flags |= 0x280;
    }
    else {
        gActors[actor_index].flags &= ~0x280;
    }

    if ((gActors[actor_index].velocityY < 0) && (gActors[actor_index].posY.whole < -0x40)) {
        gActors[actor_index].flags = 0;
        return;
    }

    if (gActors[actor_index].velocityY >= -0x7FFFF) {
        gActors[actor_index].velocityY -= FIXED_UNIT(1.0);
    }
}
