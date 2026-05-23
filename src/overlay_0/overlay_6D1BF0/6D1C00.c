#include "common.h"
#include "actor.h"


extern s16 func_8005DEFC(void);
extern u16 func_80028528(void);
extern s32 func_800036C8(s32 arg0, u16 arg1);

void func_80192C00_6D2700(u16 actor_index);
void ClancerCommanderMech_Init(u16 actor_index);
void ClancerCommanderMech_UpdateParts(u16 actor_index);
void ClancerCommanderMech_ClearFlags(u16 actor_index);
void ClancerCommanderMech_UpdateAttachedActorPosition(u16 actor_index, u16 other_actor_index);
void ClancerCommanderMech_Update(u16 actor_index);

void ClancerCommanderMech_Init(u16 actor_index) {
    gActors[actor_index].unk_094 |= 0x11;
    gActors[actor_index].flags = 3;
    func_8008105C(actor_index, D_800E4698, D_800E45D0);
    gActors[actor_index].unk_178 = (s32)D_800E574C;
    func_80081478(actor_index, D_800E4698, 0);
    func_80081790(actor_index, D_800E57D4);
    func_800819A8(actor_index, D_800E4698);
    gActors[actor_index].colorA = 0xFE;
    Actor_SetColorRgb(actor_index, 4);
}

void ClancerCommanderMech_UpdateParts(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        if (gActors[actor_index + 1].unk_180 & 0x8000) {
            func_800819A8(actor_index, D_800E4698);
            func_8008C710(actor_index);
            Actor_SetColorRgb(actor_index + 0xB, 0x18);
            Actor_SetColorRgb(actor_index + 0xF, 0x18);
            Actor_SetColorRgb(actor_index + 0x11, 0x30);
            Actor_SetColorRgb(actor_index + 0x12, 0x18);
            Actor_SetColorRgb(actor_index + 9, 0x18);
            Actor_SetColorRgb(actor_index + 0x1C, 0x18);
            Actor_SetColorRgb(actor_index + 0x1E, 0x18);
            gActors[actor_index + 18].scaleY = (f32)((f64)gActors[actor_index + 18].scaleY * 1.25);
            gActors[actor_index + 10].scaleY = (f32)((f64)gActors[actor_index + 10].scaleY * 1.25);
            gActors[actor_index + 28].scaleX = (f32)((f64)gActors[actor_index + 28].scaleX * 0.95);
            gActors[actor_index + 28].scaleY = (f32)((f64)gActors[actor_index + 28].scaleY * 0.95);
            gActors[actor_index + 30].scaleX = (f32)((f64)gActors[actor_index + 30].scaleX * 0.95);
            gActors[actor_index + 30].scaleY = (f32)((f64)gActors[actor_index + 30].scaleY * 0.95);
            gActors[actor_index + 15].scaleX = (f32)((f64)gActors[actor_index + 15].scaleX * 0.95);
            gActors[actor_index + 15].scaleY = (f32)((f64)gActors[actor_index + 15].scaleY * 0.95);
            gActors[actor_index + 17].scaleX = (f32)((f64)gActors[actor_index + 17].scaleX * 0.95);
            gActors[actor_index + 17].scaleY = (f32)((f64)gActors[actor_index + 17].scaleY * 0.95);
            gActors[actor_index + 18].scaleX = (f32)((f64)gActors[actor_index + 18].scaleX * 0.95);
            gActors[actor_index + 18].scaleY = (f32)((f64)gActors[actor_index + 18].scaleY * 0.95);
        }
    }
}

void ClancerCommanderMech_ClearFlags(u16 actor_index) {
    gActors[actor_index].unk_098 &= 0xFFDFF9FF;
}

void ClancerCommanderMech_UpdateAttachedActorPosition(u16 actor_index, u16 other_actor_index) {
    gActors[other_actor_index].posX.whole = gActors[actor_index + 1].posX.whole;
    gActors[other_actor_index].posY.whole = gActors[actor_index + 1].posY.whole + 0x24;
    gActors[other_actor_index].posZ.raw = gActors[actor_index + 1].posZ.raw;
    func_8007F9E0(other_actor_index);
}

// Thanks to LLONSIT for helping with this one!
void ClancerCommanderMech_Update(u16 actor_index) {
    u16 temp;
    u16 temp_index_22;
    u16 temp_index_21;

    temp_index_21 = actor_index + 0x21;
    temp_index_22 = actor_index + 0x22;
    ClancerCommanderMech_UpdateParts(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index + 1].unk_180 = 0;
            if (((u16)gActors[actor_index].unk_110) == 0) {
                gActors[actor_index].state = 0x4000;
            }
            break;

        case 0x4000:
            gActors[actor_index].state++;
            gActors[actor_index].posX.whole = -0x100;
            gActors[actor_index].posY.whole = -0x30;
            gActors[actor_index].posZ.whole = 0;
            gActors[actor_index + 2].unk_180 = 0x9E;

        case 0x4001:
            gActors[actor_index + 2].unk_180--;
            if (gActors[actor_index + 2].unk_180 < 0) {
                ClancerCommanderMech_Init(actor_index);
                gActors[actor_index].state++;
                gActors[actor_index + 1].unk_180 |= 0x8000;
                gActors[actor_index].velocityX = FIXED_UNIT(4.5);
                gActors[actor_index].velocityY = FIXED_UNIT(0.75);
                func_80081790(actor_index, D_800E58D4);
                gActors[temp_index_22].actorType = 0x1D;
                func_8001E2D0(temp_index_22);
                gActors[temp_index_22].unk_150 = (s32)D_800E1180;
                gActors[temp_index_22].unk_154 = 1;
                gActors[temp_index_22].flags = 3;
            }
            break;

        case 0x4002:
            if (gActors[actor_index].posX.whole >= -0x3F) {
                gActors[actor_index].state++;
                func_80081790(actor_index, D_800E58F0);
            }
            ClancerCommanderMech_UpdateAttachedActorPosition(actor_index, temp_index_22);
            break;

        case 0x4003:
            gActors[actor_index].velocityX -= FIXED_UNIT(0.125);
            if (gActors[actor_index].velocityX < FIXED_UNIT(-1.75)) {
                gActors[actor_index].state++;
            }
            ClancerCommanderMech_UpdateAttachedActorPosition(actor_index, temp_index_22);
            break;

        case 0x4004:
            gActors[actor_index].velocityX += FIXED_UNIT(0.09375);
            gActors[actor_index].velocityY -= FIXED_UNIT(0.0625);
            if (gActors[actor_index].velocityY < FIXED_UNIT(-1.0)) {
                gActors[actor_index].state++;
                gActors[actor_index + 2].unk_180 = 0x14;
                gActors[actor_index + 3].unk_180 = 0;
                func_80081790(actor_index, D_800E5910);
            }
            ClancerCommanderMech_UpdateAttachedActorPosition(actor_index, temp_index_22);
            break;

        case 0x4005:
            gActors[actor_index + 2].unk_180--;
            if (gActors[actor_index + 2].unk_180 < 0) {
                if (func_8005DEFC() == 0) {
                    switch (gActors[actor_index + 3].unk_180) {
                        case 0:
                            func_800036C8(0x44, actor_index);
                            gActors[temp_index_21].unk_0E8 = D_800E59E0;
                            gActors[temp_index_21].unk_0E6 = 1;
                            func_8005DF5C(1);
                            D_800D5830 = -0x68;
                            D_800D5834 = 0x26;
                            func_8005DF40(0, -0x30);
                            break;

                        case 1:
                            func_8005DF5C(2);
                            D_800D5830 = 0x40;
                            gActors[actor_index + 2].unk_180 = 0x1E;
                            break;

                        case 2:
                            func_8005DF5C(3);
                            D_800D5830 = -0x68;
                            D_800D5834 = 0x26;
                            gActors[actor_index + 2].unk_180 = 0x1E;
                            break;

                        case 3:
                            func_8005DF5C(4);
                            D_800D5830 = 0x40;
                            gActors[actor_index + 2].unk_180 = 0x3C;
                            break;

                        case 4:
                            gActors[actor_index].state++;
                            gActors[temp_index_21].unk_0E8 = D_800E5970;
                            gActors[temp_index_21].unk_0E6 = 1;
                            gActors[actor_index].velocityX = FIXED_UNIT(-1.625);
                            gActors[actor_index].velocityY = FIXED_UNIT(-1.5);
                            func_80081790(actor_index, D_800E5938);
                            temp = func_80028528();
                            if (temp != 0) {
                                gActors[temp].actorType = 0x34;
                                func_8001E2D0(temp);
                                gActors[temp].posX.whole = 0;
                                gActors[temp].velocityX = FIXED_UNIT(1.0);
                                gActors[temp].unk_148 = 300.0f;
                                func_80003980(0xDD, temp);
                                func_800036C8(0xB0, actor_index);
                            }
                    }
                    gActors[actor_index + 3].unk_180++;
                }
            }
            gActors[actor_index].velocityX = Math_ApproachS32(gActors[actor_index].velocityX, 0, FIXED_UNIT(0.0625));
            gActors[actor_index].velocityY = Math_ApproachS32(gActors[actor_index].velocityY, 0, FIXED_UNIT(0.0625));
            ClancerCommanderMech_UpdateAttachedActorPosition(actor_index, temp_index_22);
            break;

        case 0x4006:
            if (gActors[actor_index].posX.whole >= 0x241) {
                gActors[actor_index].flags = 0;
                func_80081720(actor_index, D_800E4698, 0);
                gActors[actor_index + 0x22].flags = 0;
                return;
            }
            gActors[actor_index].velocityX += FIXED_UNIT(0.15625);
            gActors[actor_index].velocityY += FIXED_UNIT(0.0703125);
            ClancerCommanderMech_UpdateAttachedActorPosition(actor_index, temp_index_22);
            break;
    }

    ClancerCommanderMech_ClearFlags(actor_index);
}

void func_80192C00_6D2700(u16 actor_index) {
}
