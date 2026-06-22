#include "common.h"
#include "actor.h"
#include "SFX.h"

// "overlay 0" code for intro scene

typedef struct {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ s32 unk_04;
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
} UnkStruct_func_801960BC_6D673C;

typedef struct {
    /* 0x00 */ u16 graphic_index;
    /* 0x02 */ u16 child_graphic_index;
    /* 0x04 */ s16 pos_x;
    /* 0x06 */ s16 pos_y;
    /* 0x08 */ s16 target_x;
    /* 0x0A */ s16 target_y;
} IntroActorMotion;


// struct to initalize boulders, 
// used in func_8019293C_6D2FBC
typedef struct {
    /* 0x00 */ s16 pos_x;
    /* 0x02 */ s16 pos_y;
    /* 0x04 */ s32 vel_x;
    /* 0x08 */ s32 vel_y;
    /* 0x0C */ s32 vel_z;
    /* 0x10 */ f32 scale;
} IntroBoulderInit;


extern u8 D_800BE70C;
extern s16 D_800E1604[];
extern s16 D_800E5D30[];
extern s16 D_800E5E48[];
extern s16 D_800E8820[];
extern s16 D_800E8EAC[];
extern u16 D_800D85A8[];
extern IntroBoulderInit D_80198DE0_6D9460[];
extern s16 D_80199B30_6DA1B0;
extern UnkStruct_func_801960BC_6D673C D_80199070_6D96F0[];
extern UnkStruct_func_801960BC_6D673C D_80199090_6D9710[];
extern UnkStruct_func_801960BC_6D673C D_801990B0_6D9730[];
extern UnkStruct_func_801960BC_6D673C D_801990D0_6D9750[];
extern UnkStruct_func_801960BC_6D673C D_80199100_6D9780[];
extern IntroActorMotion D_801993C0_6D9A40[];
extern s16 D_801993F0_6D9A70[];
extern s16 D_80199438_6D9AB8[];
extern void func_80027018(u16 arg0);
extern s32 func_8008412C(u16 arg0, f32 arg1, f32 arg2, u16 arg3);
extern void func_8007325C(u16 actor_index);
extern void func_80096AC4(u16 actor_index);

void func_80192100_6D2780(u16 arg0, u16 arg1, u16 arg2, u16 arg3, s16 arg4, s16 arg5, s16 arg6);
void func_80192224_6D28A4(u16 arg0, u16 arg1, u16 arg2, s16 arg3, s16 arg4, s16 arg5);
f32 func_801927F8_6D2E78(u16 arg0, f32 arg1, u16 arg2);
void func_80194334_6D49B4(u16 actor_index, s16 pos_y);

// Intro actor setup helpers
// The controller uses fixed actor slots for the main portraits, attached sprite parts, screen fades, particles, and effects
void func_80192100_6D2780(u16 parent_actor, u16 actor_index, u16 actor_type, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    gActors[actor_index].actorType = actor_type;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].graphicIndex = graphic_index;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].posZ.whole = pos_z;
    gActors[actor_index].stateLower = gActors[parent_actor].stateLower;
}

void func_801921C8_6D2848(u16 arg0, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, 0x2B02, graphic_index, pos_x, pos_y, pos_z);
}

void func_80192224_6D28A4(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(parent_index, actor_index, 0x2B03, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].posX.whole = gActors[parent_index].posX.whole + pos_x;
    gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + pos_y;
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + pos_z;
    gActors[actor_index].var_158 = pos_x << 0x10;
    gActors[actor_index].var_15C = pos_y << 0x10;
    gActors[actor_index].var_154 = parent_index;
    gActors[actor_index].var_160 = pos_z;
}

void func_801922F4_6D2974(u16 arg0, u16 arg1, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, arg1, 0x2B04, graphic_index, pos_x, pos_y, pos_z);
}

void func_80192350_6D29D0(u16 arg0, u16 arg1, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, arg1, 0x2B01, graphic_index, pos_x, pos_y, pos_z);
}

void func_801923AC_6D2A2C(u16 arg0, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, 0x2B06, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
}

void func_80192438_6D2AB8(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192224_6D28A4(parent_index, actor_index, graphic_index, pos_x, pos_y, pos_z);
    gActors[actor_index].actorType = 0x2B07;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
}

void func_801924CC_6D2B4C(u16 arg0, u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_80192100_6D2780(arg0, actor_index, 0x2B08, 0, pos_x, pos_y, pos_z);
}

// Particles used during the orange-gradient clancer-rise scene?
void func_80192528_6D2BA8(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x51, 0x59);

    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x2B09;
        func_8001E2D0(new_actor_index);
        gActors[new_actor_index].posX.whole = Rand() - 0x80;
        gActors[new_actor_index].posY.whole = (s32)((Rand() * 0.125) + 16.0);
        gActors[new_actor_index].posZ.whole = -gActors[new_actor_index].posY.whole;
        if (Rand() & 1) {
            gActors[new_actor_index].timer_110 = 256.0f;
        }
        else {
            gActors[new_actor_index].timer_110 = 0.0f;
        }
        gActors[new_actor_index].unk_0D8 = 0;
        gActors[new_actor_index].var_154 = gActors[new_actor_index].posZ.whole;
        gActors[new_actor_index].unk_170 = gActors[new_actor_index].posY.whole;
    }
}

// linear interpolate (lerp) float values
f32 Intro_LerpF32(f32 arg0, f32 arg1, f32* arg2) {
    f32 temp_f2 = arg2[0];
    if (temp_f2 == 0.0f) {
        return arg1;
    }
    return ((arg1 - arg0) / temp_f2) + arg0;
}

// linear interpolate (lerp) integer values
s32 Intro_LerpS32(s32 arg0, s32 arg1, f32* arg2) {
    return Intro_LerpF32(arg0, arg1, arg2);
}

f32 func_801926E0_6D2D60(f32 arg0, f32 arg1, f32 arg2, u16 arg3) {
    f32 temp_f2 = (arg1 - arg0) / arg3;

    if (temp_f2 < 0.0f) {
        if (temp_f2 < -arg2) {
            return arg0 - arg2;
        }
        return arg0 + temp_f2;
    }
    if (arg2 < temp_f2) {
        return arg0 + arg2;
    }
    return arg0 - temp_f2;
}

s32 func_80192778_6D2DF8(s32 arg0, s32 arg1, s32 arg2, u16 arg3) {
    s32 temp_v1 = (arg1 - arg0) / arg3;

    if (temp_v1 < 0) {
        if (temp_v1 < -arg2) {
            return arg0 - arg2;
        }
        return arg0 + temp_v1;
    }
    if (arg2 < temp_v1) {
        return arg0 + arg2;
    }
    return arg0 - temp_v1;
}

f32 func_801927F8_6D2E78(u16 actor_index, f32 arg1, u16 arg2) {
    s32 velocity_x = gActors[actor_index].velocityX.raw;
    s32 velocity_y = gActors[actor_index].velocityY.raw;
    s32 temp_v0 = func_8008412C(actor_index, 1.0f, arg1, arg2);

    gActors[actor_index].unk_11C = gActors[actor_index].velocityY.raw / 65536.0;
    gActors[actor_index].velocityX.raw = velocity_x;
    gActors[actor_index].velocityY.raw = velocity_y;
    return (f32)temp_v0 / 65536.0;
}

f32 func_801928B8_6D2F38(u16 arg0, f32 arg1, u16 arg2) {
    f32 ret = func_801927F8_6D2E78(arg0, arg1, arg2);

    gActors[arg0].unk_11C = 0.0f;
    return -ret;
}

// Advance the shared intro timeline actors together.
void func_80192920_6D2FA0(u16 actor_state) {
    gActors[0x30].state = actor_state;
    gActors[0x31].state = actor_state;
    gActors[0x32].state = actor_state;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6D2750/6D2780/func_8019293C_6D2FBC.s")

void func_80192A98_6D3118(u16 actor_index) {
    Actor_ClearRange(0x31, 0x8F);
    D_800CA230 = 0;
    D_800BE5F4.unk_00_s32 = 4;
}

// Main opening cinematic timeline, stateLower advances through the visible beats
void func_80192AD0_6D3150(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
        // Bootstrap the intro overlay after the logo fades
        case 0:
            func_80192350_6D29D0(actor_index, 0x8F, GINDEX_SOLIDSQARE, 0, 0, 0x10);
            func_80192920_6D2FA0(3);
            D_80199B30_6DA1B0 = 0x30;
            break;

        // Blue gradient opens with Marina running in from the right
        case 3:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x800, 0xD0, 0, 0xA);
                    break;

                case 1:
                    break;
            }

            if (gActors[0x33].stateUpper >= 6) {
                func_80192920_6D2FA0(4);
            }
            break;

        // Marina lands as a larger portrait with separate hand/wrist parts
        case 4:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].var_150 = 0xA;
                    // fallthrough

                case 1:
                    gActors[actor_index].var_150--;
                    if (gActors[actor_index].var_150 <= 0) {
                        gActors[actor_index].stateUpper++;
                        func_801921C8_6D2848(actor_index, 0x33, 0x1800, 0, 0xE8, 0xA);
                        func_80192224_6D28A4(0x33, 0x34, 0x1802, 0x10, 0x76, 1);
                        func_80192224_6D28A4(0x33, 0x35, 0x1804, -0x52, 0x3B, 2);
                        func_80192224_6D28A4(0x33, 0x36, 0x1806, 0x51, 0x3B, 2);
                    }
                    break;

                case 2:
                    if (gActors[0x33].stateUpper >= 3) {
                        func_80192920_6D2FA0(5);
                    }
                    break;
            }
            break;

        // Theo appearing
        case 5:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].var_150 = 8;
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                        func_801921C8_6D2848(actor_index, 0x33, 0x1808, 0x20, -0x40, 0xA);
                        gActors[0x34].flags = 0;
                        gActors[0x35].flags = 0;
                        gActors[0x36].flags = 0;
                        gActors[actor_index].var_150 = 4;
                    }
                    break;

                case 2:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                        func_801921C8_6D2848(actor_index, 0x33, 0x800, 0x20, -0x57, 0xA);
                        Sound_PlaySfx(0x3D); // shock/sparkle
                        gActors[actor_index].var_150 = 0x28;
                    }
                    break;

                case 3:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 4:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 4) {
                func_80192920_6D2FA0(6);
            }
            break;

        // Theo fingers and shocked expression
        case 6:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQARE, 0, 0, 0x10);
                    gActors[0x33].stateLower = gActors[actor_index].stateLower;
                    gActors[0x33].stateUpper = 0;
                    func_80192224_6D28A4(0x33, 0x34, 0x180A, -0x1F, 0x69, 1);
                    func_80192224_6D28A4(0x33, 0x35, 0x180C, -0x5A, 0x8F, 1);
                    func_801922F4_6D2974(actor_index, 0x37, 0x1000, -0x18, -0x36, -2);
                    func_80192438_6D2AB8(0x37, 0x38, 0x180E, -0x1A, 0x28, 1);
                    func_80192438_6D2AB8(0x37, 0x39, 0x1810, -0x1A, 0x46, 1);
                    func_80192438_6D2AB8(0x37, 0x3A, 0x1812, -0x29, 0x4C, 1);
                    func_80192438_6D2AB8(0x37, 0x3B, 0x1814, -0x38, 0x3F, 1);
                    func_80192438_6D2AB8(0x37, 0x3C, 0x1816, -0x41, 0x2E, 1);
                    func_80192438_6D2AB8(0x37, 0x3D, 0x1818, 0x37, 0x20, 1);
                    func_80192438_6D2AB8(0x37, 0x3E, 0x181A, 0x4A, 0x2F, 1);
                    func_80192438_6D2AB8(0x37, 0x3F, 0x181C, 0x59, 0x32, 1);
                    func_80192438_6D2AB8(0x37, 0x40, 0x181E, 0x61, 0x29, 1);
                    func_80192438_6D2AB8(0x37, 0x41, 0x1820, 0x6B, 0x14, 1);
                    break;

                case 1:
                    break;
            }

            if (gActors[0x32].stateUpper >= 3) {
                func_80192920_6D2FA0(7);
            }
            break;

        // Punching pose and Theo gag transition into the villain impact cut-ins
        case 7:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x1822, 0, 0xC8, 0xA);
                    func_80192224_6D28A4(0x33, 0x34, 0x1824, -0xC, 0xA, 1);
                    func_80192224_6D28A4(0x33, 0x35, 0x1826, 2, 0x12, 2);
                    func_801922F4_6D2974(actor_index, 0x37, 0x182A, 0x60, 0x90, 0);
                    gActors[0x38].flags = 0;
                    gActors[0x39].flags = 0;
                    gActors[0x3A].flags = 0;
                    gActors[0x3B].flags = 0;
                    gActors[0x3C].flags = 0;
                    gActors[0x3D].flags = 0;
                    gActors[0x3E].flags = 0;
                    gActors[0x3F].flags = 0;
                    gActors[0x40].flags = 0;
                    gActors[0x41].flags = 0;
                    // fallthrough

                case 1:
                    if (gActors[0x37].stateUpper >= 7) {
                        gActors[actor_index].stateUpper++;
                        gActors[0x33].flags = 0;
                        gActors[0x34].flags = 0;
                        gActors[0x35].flags = 0;
                        gActors[0x37].flags = 0;
                        func_80026E60(0x51);
                    }
                    break;

                case 2:
                    gActors[actor_index].stateUpper++;
                    func_80026F2C(0x51);
                    break;

                case 3:
                    func_80192920_6D2FA0(8);
                    func_801921C8_6D2848(actor_index, 0x33, 0x800, 0, 0, 0);
                    func_801922F4_6D2974(actor_index, 0x37, 0x1000, 0x1F, -0x1D, 2);
                    func_80192350_6D29D0(actor_index, 0x32, 0x802, -3, 3, 1);
                    gActors[0x34].flags = 0;
                    gActors[0x35].flags = 0;
                    gActors[0x51].flags = 0;
                    gActors[0x52].flags = 0;
                    func_80027018(0x51);
                    break;
            }
            break;

        // Lunar cut-in after the rotating oval impact
        case 8:
            if (gActors[0x33].stateUpper >= 3) {
                func_80192920_6D2FA0(9);
                func_801921C8_6D2848(actor_index, 0x33, 0x1002, 0, 0, 0);
                gActors[0x37].flags = 0;
                func_80192350_6D29D0(actor_index, 0x32, 0x1806, -3, 3, 1);
            }
            break;

        // Merco slash cut-in
        case 9:
            if (gActors[0x33].stateUpper >= 3) {
                func_80192920_6D2FA0(0xA);
                func_801921C8_6D2848(actor_index, 0x33, 0x1004, 0, 0, 0);
                func_801922F4_6D2974(actor_index, 0x37, 0, 0, 0, 2);
                func_80192350_6D29D0(actor_index, 0x32, 0x1800, -3, 3, 1);
            }
            break;

        // Tarus red impact cut-in, then spawn the Beastector group card and the red gradient background
        case 10:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    if (gActors[0x33].stateUpper >= 3) {
                        gActors[actor_index].stateUpper++;
                        gActors[0x33].flags = 0;
                        gActors[0x37].flags = 0;
                        gActors[0x32].flags = 0;
                        func_80027018(0x54);
                    }
                    break;

                case 1:
                    func_80192920_6D2FA0(0xB);
                    func_801921C8_6D2848(actor_index, 0x33, 0x1800, 0, 0, 0);
                    gActors[0x37].flags = 0;
                    func_80026F2C(0);
                    break;
            }
            break;

        // Hold while the Beastector group scales down after the cut-ins
        case 11:
            if (gActors[0x33].stateUpper >= 2) {
                func_80192920_6D2FA0(0xC);
            }
            break;

        // Leo and the clancer commander appear on the settled group card, with the twinkle, hand parts, and laugh
        case 12:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801922F4_6D2974(actor_index, 0x37, 0x1802, 0x10, -0x16, 8);
                    // fallthrough

                case 1:
                    if (gActors[0x37].stateUpper >= 2) {
                        gActors[actor_index].stateUpper++;
                        func_801923AC_6D2A2C(actor_index, 0x50, 0x1802, 0, 0, -8);
                        func_80192438_6D2AB8(0x37, 0x51, 0x1D6, 0xD, 0x10, 1);
                        gActors[actor_index].var_150 = 0x3C;
                    }
                    break;

                case 2:
                    if (gActors[actor_index].var_150-- <= 0) {
                        ++gActors[actor_index].stateUpper;
                        gActors[actor_index].var_150 = 0x78;
                        Sound_PlaySfx(SFX_LEO_LAUGH);
                    }
                    break;

                case 3:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                        gActors[0x32].stateUpper++;
                    }
                    break;

                case 4:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 4) {
                func_80192920_6D2FA0(0xD);
            }
            break;

        // Calina/smoke transition clears the villain portrait scene into white
        case 13:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801924CC_6D2B4C(actor_index, 0x60, 0, -0x20, 0x10);
                    ((u8*)gActors)[0x8051] = 0xD; // FAKEMATCH: gActors[0x50].stateLower = 0xD;
                    gActors[0x37].stateLower = gActors[actor_index].stateLower;
                    gActors[0x37].stateUpper = 0;
                    gActors[0x33].stateLower = gActors[actor_index].stateLower;
                    gActors[0x33].stateUpper = 0;
                    func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQARE, 0, 0, 0x11);
                    break;

                case 1:
                    if (gActors[0x32].stateUpper >= 3) {
                        gActors[actor_index].stateUpper++;
                        gActors[0x60].flags = 0;
                        func_80081720(0x60, D_800E5E48, 3);
                        gActors[0x50].flags = 0;
                        gActors[0x37].flags = 0;
                        gActors[0x33].flags = 0;
                        func_80026E60(0x52);
                    }
                    break;

                case 2:
                    gActors[actor_index].stateUpper++;
                    func_80026F2C(0x52);
                    break;

                case 3:
                    func_80192920_6D2FA0(0xE);
                    func_80027018(0x52);
                    break;
            }
            break;

        // Orange gradient with clancers rising
        case 14:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].var_158 = 0xF0;
                    // fallthrough

                case 1:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].var_150 = Rand() & 0x1F;
                    break;

                case 2:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper--;
                        func_80192528_6D2BA8(actor_index);
                        Sound_PlaySfxAtActor2(0x3C, actor_index);
                    }
                    break;
            }

            if (gActors[actor_index].var_158-- <= 0) {
                func_80192920_6D2FA0(0xF);
            }
            break;

        // Marina and Theo portraits slide in
        case 15:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x800, 0xCC, -0x1C, 0xA);
                    func_801922F4_6D2974(actor_index, 0x37, 0x804, -0xDD, -4, 8);
                    func_80192224_6D28A4(0x33, 0x34, 0x802, 0, 0, 1);
                    func_80192224_6D28A4(0x37, 0x35, 0x806, 0, 0, 1);
                    func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQARE, 0, 0, 0);
                    break;

                case 1:
                    break;
            }

            if (gActors[0x32].stateUpper >= 3) {
                gActors[0x37].flags = 0;
                gActors[0x34].flags = 0;
                gActors[0x35].flags = 0;
                Actor_ClearRange(0x51, 0x59);
                func_80192920_6D2FA0(0x10);
            }
            break;

        // Marina holds the clancer toward the camera
        case 16:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x1000, 0x18, 0, 0x10);
                    func_80192224_6D28A4(0x33, 0x34, 0x1002, -8, 6, -0x10);
                    func_80192224_6D28A4(0x33, 0x50, 0x180C, -0x19, -3, -8);
                    func_80192438_6D2AB8(0x50, 0x51, 0x180E, -0x17, -0x16, 2);
                    func_80192438_6D2AB8(0x50, 0x52, 0x1810, 0xF, 0x14, -2);
                    func_80192438_6D2AB8(0x50, 0x53, 0x1812, -0x1D, 7, -2);
                    func_80192438_6D2AB8(0x50, 0x54, 0x1814, -1, -0x17, -2);
                    Sound_PlaySfx(0x9D); // clancer throw?
                    gActors[actor_index].var_150 = 0x1E;
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 2) {
                func_80192920_6D2FA0(0x11);
            }
            break;

        // Hold the throw frame and pass the state to the separated throw pieces
        case 17:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x1004, 0x18, 0, 0x10);
                    func_80192224_6D28A4(0x33, 0x34, 0x1006, 0xA, -6, -0x10);
                    gActors[0x34].stateLower = gActors[actor_index].stateLower;
                    ((u8*)gActors)[0x8051] = gActors[actor_index].stateLower; // FAKEMATCH
                    ((u8*)gActors)[0x81E9] = gActors[actor_index].stateLower; // FAKEMATCH
                    ((u8*)gActors)[0x8381] = gActors[actor_index].stateLower; // FAKEMATCH
                    ((u8*)gActors)[0x8519] = gActors[actor_index].stateLower; // FAKEMATCH
                    ((u8*)gActors)[0x86B1] = gActors[actor_index].stateLower; // FAKEMATCH
                    gActors[actor_index].var_150 = 0xA;
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 2) {
                func_80192920_6D2FA0(0x12);
            }
            break;

        // Rear-view clancer throw
        case 18:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    func_801921C8_6D2848(actor_index, 0x33, 0x1008, 0x18, 0, 0x10);
                    gActors[0x34].flags = 0;
                    func_80192350_6D29D0(actor_index, 0x32, GINDEX_SOLIDSQARE, 0, 0, 0x100);
                    func_801923AC_6D2A2C(actor_index, 0x50, 0x1800, 0, 0, 0x20);
                    func_80192438_6D2AB8(0x50, 0x51, 0x1802, -0x15, 0x22, -4);
                    func_80192438_6D2AB8(0x50, 0x52, 0x1804, -0x4D, 0xA, -2);
                    func_80192438_6D2AB8(0x50, 0x53, 0x1806, 0x52, 7, -2);
                    func_80192438_6D2AB8(0x50, 0x54, 0x1808, 0xA, -0x44, -6);
                    func_80192438_6D2AB8(0x50, 0x55, 0x180A, -0x1F, 0x36, -6);
                    Sound_PlaySfx(SFX_MARINA_YELL4);
                    Sound_PlaySfx(0x13C);
                    gActors[actor_index].var_150 = 0x3C;
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;

                default:
                    break;
            }

            if (gActors[0x32].stateUpper >= 3) {
                func_80192920_6D2FA0(0x13);
            }
            break;

        // Rear-view clancer throw 2
        case 19:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[0x33].flags = 0;
                    func_801923AC_6D2A2C(actor_index, 0x50, 0x1816, 0, 0, 0x20);
                    func_801922F4_6D2974(actor_index, 0x51, 0x1818, -0x94, 0x7C, 0x10);
                    func_801922F4_6D2974(actor_index, 0x52, 0x181A, 0x77, -0x82, 0x10);
                    func_801922F4_6D2974(actor_index, 0x53, 0x100A, -0x23, -0x80, 0x10);
                    func_801922F4_6D2974(actor_index, 0x54, 0x100C, 0x25, 0x93, 0x10);
                    gActors[0x55].flags = 0;
                    gActors[actor_index].var_150 = 180;
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 2) {
                func_80192920_6D2FA0(0x14);
                func_800270E4(0x15);
            }
            break;

        // Clancer impact
        case 20:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[0x50].flags = 0;
                    gActors[0x51].flags = 0;
                    gActors[0x52].flags = 0;
                    gActors[0x53].flags = 0;
                    gActors[0x54].flags = 0;
                    func_801921C8_6D2848(actor_index, 0x33, 0xD8, 0, 0, 0x28);
                    gActors[0x33].flags = ACTOR_FLAG_ACTIVE;
                    gActors[actor_index].var_150 = 0xA;
                    Sound_PlaySfx(0x26);
                    // fallthrough

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;

                default:
                    break;
            }

            if (gActors[actor_index].stateUpper >= 2) {
                func_80192920_6D2FA0(0x15);
            }
            break;

        // boulder actors
        case 21:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[0x38].graphicFlags = 0;
                    gActors[actor_index].var_150 = 0x96;
                    D_800BE70C = 5;
                    func_801922F4_6D2974(actor_index, 0x60, 0, 0x63, 0x2B, -0x18);
                    func_801922F4_6D2974(actor_index, 0x61, 0, 0x4E, 0x29, -0x17);
                    func_801922F4_6D2974(actor_index, 0x62, 0, 0x36, 0x27, -0x16);
                    func_801922F4_6D2974(actor_index, 0x63, 0, 0x1F, 0x24, -0x15);
                    func_801922F4_6D2974(actor_index, 0x64, 0, 0xA, 0x25, -0x14);
                    func_801922F4_6D2974(actor_index, 0x65, 0, -0x65, 0x20, -0x10);
                    func_801922F4_6D2974(actor_index, 0x66, 0, -0x49, 0x27, -0x11);
                    func_801922F4_6D2974(actor_index, 0x67, 0, -0x28, 0x29, -0x12);
                    func_801922F4_6D2974(actor_index, 0x68, 0, -0x10, 0x25, -0x13);
                    gActors[0x60].var_158 = 8;
                    gActors[0x61].var_158 = 7;
                    gActors[0x62].var_158 = 6;
                    gActors[0x63].var_158 = 5;
                    gActors[0x64].var_158 = 4;
                    gActors[0x66].var_158 = 1;
                    gActors[0x67].var_158 = 2;
                    gActors[0x68].var_158 = 3;
                    gActors[0x65].var_150 = 0x2E;
                    gActors[0x66].var_150 = 0x36;
                    gActors[0x65].var_158 = 0;
                    gActors[0x67].var_150 = 0x3E;
                    gActors[0x68].var_150 = 0x46;
                    gActors[0x64].var_150 = 0x4E;
                    gActors[0x63].var_150 = 0x56;
                    gActors[0x62].var_150 = 0x5E;
                    gActors[0x61].var_150 = 0x66;
                    gActors[0x60].var_150 = 0x6E;
                    break;

                case 1:
                    if (gActors[actor_index].var_150-- <= 0) {
                        gActors[actor_index].stateUpper++;
                        gActors[0x8F].stateUpper++;
                    }
                    break;

                case 2:
                    if (gActors[0x8F].stateUpper >= 3) {
                        gActors[0x60].flags = 0;
                        gActors[0x61].flags = 0;
                        gActors[0x62].flags = 0;
                        gActors[0x63].flags = 0;
                        gActors[0x64].flags = 0;
                        gActors[0x65].flags = 0;
                        gActors[0x66].flags = 0;
                        gActors[0x67].flags = 0;
                        gActors[0x68].flags = 0;
                        gActors[0x32].flags = 0;
                        func_80192920_6D2FA0(0x16);
                        func_80192A98_6D3118(actor_index);
                    }
                    break;
            }
            break;

        // Hand off to the title-screen game state
        case 22:
            gGameState = GAMESTATE_TITLESCREEN;
            gGameStateSubState = 0x10;
            break;
    }

    if ((gButtonPress & gButton_Start) && (gActors[0x8F].stateUpper == 1)) {
        gActors[0x8F].stateUpper = 2;
    }
}

// Start fadeout/flash
void func_8019429C_6D491C(u16 actor_index) {
    gActors[actor_index].graphicFlags =  ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_DRAW;
    gActors[actor_index].flags = ACTOR_GFLAG_ROTZ| ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQARE;
    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].colorR = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorB = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -0x100;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].palette_18C = D_800D85A8;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

// Start one half of the vertically scrolling blue background
void func_80194334_6D49B4(u16 actor_index, s16 pos_y) {
    u16 temp_actor_index;

    gActors[actor_index].actorType = 0x2B06;
    temp_actor_index = actor_index;
    func_8001E2D0(actor_index);
    if (temp_actor_index) {} // FAKEMATCH
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].graphicIndex = 0x2800;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].posZ.whole = -0xFF;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleX = 2.0f;
    gActors[actor_index].scaleY = 2.0f;
    gActors[actor_index].stateLower = gActors[0x31].stateLower;
}

void func_801943E4_6D4A64(u16 arg0) {
    gActors[arg0].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4;
    gActors[arg0].flags = ACTOR_FLAG_FREEZE_POS |ACTOR_FLAG_ENABLED;
    gActors[arg0].colorA = 0xFF;
    gActors[arg0].posX.whole = -2;
    gActors[arg0].posY.whole = 3;
    gActors[arg0].posZ.whole = -0xFF;
    gActors[arg0].unk_188 = 0;
}

// Background and gradient controller
void func_8019444C_6D4ACC(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
        case 0:
        case 1:
        case 2:
            break;
        case 3:
        case 23:
            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].stateUpper += 1;
                func_801943E4_6D4A64(actor_index);
                gActors[actor_index].graphicIndex = 0x2802;
            }
            break;
        case 7:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper += 1;
                    func_80194334_6D49B4(0x51, 0xC0);
                    func_80194334_6D49B4(0x52, 0);
                    break;
                case 1:
                    break;
            }
            break;
        case 8:
        case 9:
        case 10:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper += 1;
                    func_8019429C_6D491C(actor_index);
                    break;
                case 1:
                    break;
            }
            break;
        case 11:
            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].stateUpper += 1;
                func_801943E4_6D4A64(actor_index);
                gActors[actor_index].graphicIndex = 0x2804;
            }
            break;
        case 19:
            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].stateUpper += 1;
                func_801943E4_6D4A64(actor_index);
                gActors[actor_index].graphicIndex = 0x280C;
            }
            break;
        case 14:
            if (gActors[actor_index].stateUpper == 0) {
                gActors[actor_index].stateUpper += 1;
                func_801943E4_6D4A64(actor_index);
                gActors[actor_index].graphicIndex = 0x2806;
            }
            break;
    }
}

void func_801945EC_6D4C6C(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[actor_index].colorR = 0xFF;
    gActors[actor_index].colorG = 0xFF;
    gActors[actor_index].colorB = 0xFF;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x7F;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

// Copy one palette row into the active palette for the slash/impact flash
void func_8019466C_6D4CEC(u16 arg0) {
    u16 jndex;
    u32 index = arg0;
    u16* src;
    u16* dst;

    if (index != 0) {
        src = &((u16*)0x8033B808)[index * 0x10];
        dst = (u16*)0x8033B808;
        for (jndex = 0; jndex < 0x10; jndex++) {
            *dst++ = *src++;
        }
    }
}

// fade/flash controller
// These states line up with logo fade-outs, Theo/Calina whiteouts, villain impact flashes, and the final title fade.
void func_801946BC_6D4D3C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    switch (actor->stateLower) {
        case 0:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    func_801945EC_6D4C6C(actor_index);
                    actor->posZ.whole = 0x80;
                    actor->colorA = 0;
                    actor->unk_114 = 10.0f;
                    break;

                case 1:
                    break;

                case 2:
                    actor->colorA = Intro_LerpS32(gActors[actor_index].colorA, 0xFF, &gActors[actor_index].unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->stateUpper++;
                        actor->colorA = 0xFF;
                        gActors[0x30].stateLower = 0x16;
                        func_80192A98_6D3118(actor_index);
                        return;
                    }
                    break;

                case 3:
                    return;
            }
            break;

        case 6:
        case 15:
        case 21:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    func_801945EC_6D4C6C(actor_index);
                    actor->colorA = 0;
                    actor->unk_114 = 20.0f;
                    break;

                case 1:
                    break;

                case 2:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->stateUpper++;
                        actor->colorA = 0xFF;
                    }
                    break;

                case 3:
                    return;
            }
            break;

        case 13:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    func_801945EC_6D4C6C(actor_index);
                    actor->colorA = 0;
                    actor->unk_114 = 60.0f;
                    break;

                case 1:
                    break;

                case 2:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->stateUpper++;
                        actor->colorA = 0xFF;
                    }
                    break;

                case 3:
                    return;
            }
            break;

        case 7:
        case 14:
        case 16:
        case 22:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    func_801945EC_6D4C6C(actor_index);
                    actor->colorA = 0xFF;
                    actor->unk_114 = 30.0f;
                    // fallthrough

                case 1:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->flags = 0;
                        actor->stateUpper++;
                    }
                    break;

                case 2:
                    return;
            }
            break;

        case 8:
        case 10:
            switch (actor->stateUpper) {
                case 0:
                    actor->unk_114 = 20.0f;
                    actor->stateUpper++;
                    if (actor->stateLower == 8) {
                        Sound_PlaySfx(0x7A); // lunar impact?
                    }
                    else {
                        Sound_PlaySfx(0x5B); // tarus impact?
                    }
                    // fallthrough

                case 1:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->flags = 0;
                        actor->stateUpper++;
                    }
                    break;

                case 2:
                    return;
            }
            break;

        case 9:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    actor->unk_114 = 20.0f;
                    actor->var_150 = 2;
                    actor->flags |= 0x200;
                    actor->unk_18C = 0x8033B808;
                    Sound_PlaySfx(0x39); // merco slash?
                    // fallthrough

                case 1:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->unk_114 = 0.0f;
                    }
                    func_8019466C_6D4CEC(actor->var_150 >> 1);
                    if (actor->var_150++ >= 0x2D) {
                        actor->flags = 0;
                        actor->stateUpper++;
                    }
                    break;

                case 2:
                    return;
            }
            break;

        case 18:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    func_8019429C_6D491C(actor_index);
                    actor->posZ.whole = 0x100;
                    actor->colorA = 0;
                    actor->unk_114 = 40.0f;
                    // fallthrough

                case 1:
                    if (actor->unk_114-- <= 0.0f) {
                        actor->stateUpper++;
                        actor->unk_114 = 20.0f;
                    }
                    break;

                case 2:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0xFF, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->stateUpper++;
                        actor->colorA = 0xFF;
                    }
                    break;

                case 3:
                    return;
            }
            break;

        case 19:
            switch (actor->stateUpper) {
                case 0:
                    actor->stateUpper++;
                    actor->unk_114 = 20.0f;
                    break;

                case 1:
                    actor->colorA = Intro_LerpS32(actor->colorA, 0, &actor->unk_114);
                    if (actor->unk_114-- <= 0.0f) {
                        actor->flags = 0;
                        actor->stateUpper++;
                    }
                    break;

                case 2:
                    return;
            }
            break;
    }
}

// Sparkle/smoke/impact particle spawners used by the portrait actors
void func_80194D2C_6D53AC(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 0x10, 1);

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = 1;
        gActors[new_actor_index].flags = 0x23;
        gActors[new_actor_index].graphicIndex = GINDEX_IMPACTEFFECTA;
        gActors[new_actor_index].scaleX = 0.5f;
        gActors[new_actor_index].scaleY = 0.5f;
        gActors[new_actor_index].unk_114 = -0.01f;
        gActors[new_actor_index].unk_11C = -0.002f;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -1;
    }
}

void func_80194E0C_6D548C(u16 actor_index) {
    u16 new_actor_index;

    if ((gActiveFrames & 3) == 0) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            GINDEX_IMPACTEFFECTA,
            gActors[actor_index].posX.whole - 8,
            gActors[actor_index].posY.whole - 0x10,
            gActors[actor_index].posZ.whole + 1
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = 1;
            gActors[new_actor_index].flags = 0x23;
            gActors[new_actor_index].var_154 = -0xA;
            gActors[new_actor_index].unk_140_f32 = 0.0f;
            gActors[new_actor_index].unk_144 = 4.0f;
            gActors[new_actor_index].unk_148 = 20.0f;
            gActors[new_actor_index].timer_110 = 0.06f;
            gActors[new_actor_index].unk_118 = -0.008f;
            gActors[new_actor_index].unk_114 = 0.1f;
            gActors[new_actor_index].unk_11C = -0.01f;
        }
    }
}

void func_80194F1C_6D559C(u16 actor_index) {
    u16 new_actor_index;
    f32 temp_f0;
    f32 temp_f6;
    f32 temp_f10;

    new_actor_index = SpawnParticle_Image_90C0_16(
        0x1AA,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole - 0x10,
        gActors[actor_index].posZ.whole + 1
    );
    if (new_actor_index != 0) {
        const f32 temp_f2 = 0.05f; // FAKEMATCH

        gActors[new_actor_index].graphicFlags = 1;
        gActors[new_actor_index].flags = 0x23;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0;
        gActors[new_actor_index].posZ.whole = 0;
        gActors[new_actor_index].colorA = 0xFE;
        gActors[new_actor_index].var_154 = -0xA;
        temp_f0 = gActors[new_actor_index].unk_148 = 20.0f; // FAKEMATCH
        gActors[new_actor_index].timer_110 = temp_f2;
        gActors[new_actor_index].unk_114 = temp_f2;
        gActors[new_actor_index].scaleX = 1.0f;
        temp_f6 = -0.05f; // FAKEMATCH
        temp_f10 = -temp_f2; // FAKEMATCH
        gActors[new_actor_index].unk_118 = temp_f6 / temp_f0;
        gActors[new_actor_index].unk_11C = temp_f10 / temp_f0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6D2750/6D2780/func_80195024_6D56A4.s")

// Follow another actor with integer offsets
void func_80195EA0_6D6520(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[gActors[actor_index].var_154].posX.whole + gActors[actor_index].var_158;
    gActors[actor_index].posY.whole = gActors[gActors[actor_index].var_154].posY.whole + gActors[actor_index].var_15C;
    gActors[actor_index].posZ.whole = gActors[gActors[actor_index].var_154].posZ.whole + gActors[actor_index].var_160;
}

// Follow a parent portrait part while inheriting alpha
void func_80195F28_6D65A8(u16 actor_index) {
    u16 parent_index = ((u16*)&gActors[actor_index].var_154)[1];

    gActors[actor_index].posX.whole = gActors[parent_index].posX.whole + (gActors[actor_index].var_158 / 0x10000);
    gActors[actor_index].posY.whole = gActors[parent_index].posY.whole + (gActors[actor_index].var_15C / 0x10000);
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + gActors[actor_index].var_160;
    gActors[actor_index].colorA = gActors[parent_index].colorA;
}

// Follow a parent portrait part while inheriting scale
void func_80195FC4_6D6644(u16 actor_index) {
    u16 parent_index = ((u16*)&gActors[actor_index].var_154)[1];

    gActors[actor_index].scaleX = gActors[parent_index].scaleX;
    gActors[actor_index].scaleY = gActors[parent_index].scaleY;
    gActors[actor_index].posX.raw = (s32)(gActors[parent_index].posX.raw + (gActors[actor_index].var_158 * gActors[actor_index].scaleX));
    gActors[actor_index].posY.raw = (s32)(gActors[parent_index].posY.raw + (gActors[actor_index].var_15C * gActors[actor_index].scaleY));
    gActors[actor_index].posZ.whole = gActors[parent_index].posZ.whole + gActors[actor_index].var_160;
}

void func_801960BC_6D673C(u16 actor_index, UnkStruct_func_801960BC_6D673C* arg1, u16 arg2) {
    Actor* actor = &gActors[actor_index];
    UnkStruct_func_801960BC_6D673C* temp_v1 = &arg1[arg2];

    actor->var_158 = temp_v1->unk_04;
    actor->var_15C = temp_v1->unk_08;
    actor->rotateZ = temp_v1->unk_00;
}

void func_8019611C_6D679C(u16 actor_index, UnkStruct_func_801960BC_6D673C* arg1, u16 arg2, f32* arg3) {
    UnkStruct_func_801960BC_6D673C* temp_v0 = &arg1[arg2];

    gActors[actor_index].var_158 = Intro_LerpS32(gActors[actor_index].var_158, temp_v0->unk_04, arg3);
    gActors[actor_index].var_15C = Intro_LerpS32(gActors[actor_index].var_15C, temp_v0->unk_08, arg3);
    gActors[actor_index].rotateZ = Intro_LerpF32(gActors[actor_index].rotateZ, temp_v0->unk_00, arg3);
}

// Attached portrait-part animation controller
void func_801961D0_6D6850(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
        case 4:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    break;

                case 1:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
                    switch (gActors[actor_index].graphicIndex) {
                        case 0x1802:
                            gActors[actor_index].unk_164 = (s32)D_80199070_6D96F0;
                            break;

                        case 0x1804:
                            gActors[actor_index].unk_164 = (s32)D_80199090_6D9710;
                            break;

                        case 0x1806:
                            gActors[actor_index].unk_164 = (s32)D_801990B0_6D9730;
                            break;
                    }
                    func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
                    gActors[actor_index].unk_114 = 5.0f;
                    // fallthrough

                case 2:
                    func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                        gActors[actor_index].unk_114 = 20.0f;
                    }
                    break;

                case 3:
                    func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0, &gActors[actor_index].unk_114);
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                        if (gActors[actor_index].graphicIndex == 0x1802) {
                            gActors[0x33].stateUpper++;
                        }
                    }
                    break;

                case 4:
                    break;
            }
            func_80195F28_6D65A8(actor_index);
            break;

        case 6:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
                    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                    // fallthrough

                case 1:
                case 3:
                    break;

                case 2:
                    if (gActiveFrames & 2) {
                        gActors[actor_index].flags |= 1;
                    }
                    else {
                        gActors[actor_index].flags &= ~1;
                    }
                    if (gActors[actor_index].var_150++ >= 0x1E) {
                        gActors[actor_index].stateUpper++;
                        gActors[actor_index].flags |= 1;
                    }
                    break;
            }
            func_80195FC4_6D6644(actor_index);
            break;

        case 7:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
                    break;

                case 1:
                case 4:
                    break;

                case 2:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].unk_114 = 30.0f;
                    gActors[actor_index].unk_16C = (s32)(func_801927F8_6D2E78(actor_index, -16.0f, 0x3C) * 65536.0f);
                    gActors[actor_index].unk_168 = (s32)(gActors[actor_index].unk_11C * 65536.0f);
                    break;

                case 3:
                    gActors[actor_index].var_15C += gActors[actor_index].unk_168;
                    gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;
            }
            func_80195FC4_6D6644(actor_index);
            break;

        case 12:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].graphicFlags |= 1;
                    // fallthrough

                case 1:
                    if (gActiveFrames & 0x10) {
                        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.5f, 0.1f);
                    }
                    else {
                        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0, 0.1f);
                    }
                    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
                    break;
            }
            func_80195F28_6D65A8(actor_index);
            break;

        case 15:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ;
                    if (gActors[actor_index].graphicIndex == 0x802) {
                        gActors[actor_index].unk_164 = (s32)D_801990D0_6D9750;
                    }
                    else {
                        gActors[actor_index].unk_164 = (s32)D_80199100_6D9780;
                    }
                    func_801960BC_6D673C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 0);
                    gActors[actor_index].unk_114 = 8.0f;
                    break;

                case 1:
                case 5:
                    break;

                case 2:
                    func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 1, &gActors[actor_index].unk_114);
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].unk_114 = 1;
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 3:
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].unk_114 = 1;
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 4:
                    func_8019611C_6D679C(actor_index, (UnkStruct_func_801960BC_6D673C*)gActors[actor_index].unk_164, 2, &gActors[actor_index].unk_114);
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;
            }
            func_80195F28_6D65A8(actor_index);
            break;

        case 16:
        case 17:
        case 18:
            func_80195F28_6D65A8(actor_index);
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6D2750/6D2780/func_80196848_6D6EC8.s")

// Lunar cut in?
void func_80196FC8_6D7648(u16 actor_index) {
    s32 angle;
    u16 new_actor_index;

    new_actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, 0, 0, gActors[actor_index].posZ.whole);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
        if (Rand() & 1) {
            gActors[new_actor_index].graphicIndex = 0x1802;
        }
        else {
            gActors[new_actor_index].graphicIndex = 0x1804;
        }

        gActors[new_actor_index].posX.whole = (s32)((Rand() - 0x80) * 0.3);
        gActors[new_actor_index].posY.whole = (s32)(((Rand() - 0x80) * 0.3) + 48.0);
        angle = Math_Atan2(-gActors[actor_index].posX.whole, 0x30 - gActors[actor_index].posY.whole);
        gActors[new_actor_index].velocityX.raw = FIXED_UNIT(COS(angle));
        gActors[new_actor_index].velocityY.raw = FIXED_UNIT(SIN(angle));
        gActors[new_actor_index].var_158 = 0;
        gActors[new_actor_index].var_15C = 0;
        gActors[new_actor_index].unk_168 = 0;
        gActors[new_actor_index].unk_16C = 0;
        gActors[new_actor_index].timer_110 = -0.03f;
        gActors[new_actor_index].unk_114 = -0.03f;
        gActors[new_actor_index].unk_118 = 0.0f;
        gActors[new_actor_index].unk_148 = 10.0f;
        gActors[new_actor_index].var_160 = Rand() << 0x10;
        gActors[new_actor_index].var_150 = Rand() << 0x10;
        gActors[new_actor_index].var_154 = -4;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_6D2750/6D2780/func_80197224_6D78A4.s")

// Scrolling impact background, random portrait extras?
void func_80198274_6D88F4(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
        case 7:
            gActors[actor_index].posY.whole -= 8;
            if (gActors[actor_index].posY.whole < -0xBF) {
                gActors[actor_index].posY.whole = 0xC0;
            }
            break;

        case 12:
        case 13:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].stateUpper++;
                    // fallthrough
                case 1: {
                    u16 table_index;

                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].unk_114 = 40.0f;
                    table_index = Rand() & 3;
                    gActors[actor_index].graphicIndex = D_801993C0_6D9A40[table_index].graphic_index;
                    if (D_801993C0_6D9A40[table_index].child_graphic_index != 0) {
                        func_80192224_6D28A4(actor_index, 0x34, D_801993C0_6D9A40[table_index].child_graphic_index, 0x12, 0x12, 1);
                    }
                    else {
                        gActors[0x34].flags = 0;
                    }
                    gActors[actor_index].posX.whole = D_801993C0_6D9A40[table_index].pos_x;
                    gActors[actor_index].posY.whole = D_801993C0_6D9A40[table_index].pos_y;
                    gActors[actor_index].unk_16C =
                        (s32)(func_801927F8_6D2E78(
                            actor_index,
                            D_801993C0_6D9A40[table_index].target_x - gActors[actor_index].posX.whole,
                            0x28
                        ) * 65536.0f);
                    gActors[actor_index].unk_168 = (s32)(gActors[actor_index].unk_11C * 65536.0f);
                    gActors[actor_index].unk_174 =
                        (s32)(func_801927F8_6D2E78(
                            actor_index,
                            D_801993C0_6D9A40[table_index].target_y - gActors[actor_index].posY.whole,
                            0x28
                        ) * 65536.0f);
                    gActors[actor_index].unk_170 = (s32)(gActors[actor_index].unk_11C * 65536.0f);
                    break;
                }

                case 2:
                    gActors[actor_index].posX.raw += gActors[actor_index].unk_168;
                    gActors[actor_index].posY.raw += gActors[actor_index].unk_170;
                    gActors[actor_index].unk_168 -= gActors[actor_index].unk_16C;
                    gActors[actor_index].unk_170 -= gActors[actor_index].unk_174;
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                        gActors[actor_index].unk_114 = Rand() & 0x1F;
                    }
                    break;

                case 3:
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        if (gActors[actor_index].stateLower == 13) {
                            gActors[actor_index].flags = 0;
                            gActors[actor_index].stateUpper++;
                            gActors[0x34].flags = 0;
                        }
                        else {
                            gActors[actor_index].stateUpper = 1;
                        }
                    }
                    break;

                case 4:
                    break;
            }
            break;

        case 18: {
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].unk_114 = 60.0f;
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].unk_118 = 200000.0f;
                    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                    // fallthrough
                case 1:
                    gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 1000.0f, &gActors[actor_index].unk_114);
                    gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
                    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
                    gActors[actor_index].rotateZ = Intro_LerpF32(gActors[actor_index].rotateZ, 10.0f, &gActors[actor_index].unk_114);
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].state++;
                    }
                    break;

                case 2:
                    break;
            }
            break;
        }

        case 19:
            switch (gActors[actor_index].stateUpper) {
                case 0:
                    gActors[actor_index].unk_114 = 180.0f;
                    gActors[actor_index].stateUpper++;
                    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                    gActors[actor_index].unk_118 = 1000.0f;
                    // fallthrough
                case 1:
                    gActors[actor_index].unk_118 = Intro_LerpF32(gActors[actor_index].unk_118, 400000.0f, &gActors[actor_index].unk_114);
                    gActors[actor_index].scaleX = 100.0 / (gActors[actor_index].unk_118 / 1000.0);
                    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
                    if (gActors[actor_index].unk_114-- <= 0.0f) {
                        gActors[actor_index].stateUpper++;
                    }
                    break;

                case 2:
                    break;
            }
            break;
    }
}

// Smoke puffs in front of Leo before Calina appears?
void func_801987F0_6D8E70(u16 actor_index) {
    u16 new_actor_index = SpawnParticle_List_90C0_16(D_800E1604, 0, 0, 0);

    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[new_actor_index].colorA = 0xFF;
        gActors[new_actor_index].scaleX = 1.5f;
        gActors[new_actor_index].scaleY = 1.5f;
        gActors[new_actor_index].posX.whole = (s32)(((Rand() - 0x80) * 0.2) + gActors[actor_index].posX.whole);
        gActors[new_actor_index].posY.whole = (s32)(((Rand() - 0x80) * 0.2) + gActors[actor_index].posY.whole);
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
    }
}

// Calina/smoke sprite animation during the fade out?
void func_8019897C_6D8FFC(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s32 state_upper;
    s32 timer;

    if (actor->stateLower == 0xD) {
        state_upper = actor->stateUpper;
        if (state_upper >= 2) {
            func_800819A8(actor_index, D_800E5E48);
            state_upper = actor->stateUpper;
        }

        switch (state_upper) {
            case 0:
                actor->stateUpper++;
                actor->unk_190 = 0x1E;
                // fallthrough

            case 1:
                func_801987F0_6D8E70(actor_index);
                timer = actor->unk_190;
                actor->unk_190--;
                if (timer <= 0) {
                    actor->stateUpper++;
                    func_8008105C(actor_index, D_800E5E48, D_800E5D30);
                    actor->unk_178 = (s32)D_800E8820;
                    func_80081478(actor_index, D_800E5E48, 1);
                    func_80081790(actor_index, D_800E8EAC);
                    func_800819A8(actor_index, D_800E5E48);
                    actor->unk_190 = 0x3C;
                }
                break;

            case 2:
                timer = actor->unk_190;
                actor->unk_190--;
                if (timer <= 0) {
                    actor->stateUpper++;
                    actor->unk_190 = 0x1E;
                }
                break;

            case 3:
                timer = actor->unk_190;
                actor->unk_190--;
                if (timer <= 0) {
                    actor->stateUpper++;
                }
                break;

            case 4:
                break;
        }

        func_80096AC4(actor_index);
    }
}

// each clancer picks a short animation, then walks or jumps offscreen
void func_80198B18_6D9198(u16 actor_index) {
    gActors[actor_index].flags_098 &= ~0x40;
    if (gActors[actor_index].state == 0x101) {
        if (gActors[actor_index].unk_170 >= gActors[actor_index].posY.whole) {
            gActors[actor_index].flags_098 |= 0x20;
            gActors[actor_index].posY.whole = gActors[actor_index].unk_170;
        }
    }

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].posZ.raw = gActors[actor_index].var_154;
    }

    func_8007325C(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            if (Rand() & 1) {
                gActors[actor_index].graphicList = D_801993F0_6D9A70;
            }
            else {
                gActors[actor_index].graphicList = D_80199438_6D9AB8;
            }
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].var_150 |= 0x1000;
            break;
        case 0x61:
            switch (gActors[actor_index].unk_174) {
                case 0:
                    gActors[actor_index].unk_174 += 1;
                    gActors[actor_index].unk_16C = Rand() & 7;
                    // fallthrough
                case 1:
                    if (gActors[actor_index].graphicTimer == 0) {
                        switch (Rand() & 7) {
                            case 0:
                                gActors[actor_index].state = 0x3B0;
                                gActors[actor_index].unk_118 = Rand() & 0x1F;
                                gActors[actor_index].unk_11C = Rand() & 3;
                                break;
                            case 1:
                                gActors[actor_index].state = 0x3D0;
                                gActors[actor_index].unk_164 = 1;
                                break;
                            case 2:
                                gActors[actor_index].state = 0x80;
                                break;
                            case 3:
                                gActors[actor_index].state = 0x120;
                                gActors[actor_index].unk_11C = 360448.0f;
                                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                                    gActors[actor_index].unk_120 = -131072.0f;
                                }
                                else {
                                    gActors[actor_index].unk_120 = 131072.0f;
                                }
                                break;
                            case 4:
                                gActors[actor_index].state = 0x70;
                                break;
                            case 5:
                                gActors[actor_index].state = 0x90;
                                break;
                            case 6:
                                gActors[actor_index].state = 0xB0;
                                break;
                            case 7:
                                gActors[actor_index].state = 0xC0;
                                break;
                        }

                        if (gActors[actor_index].unk_16C-- <= 0) {
                            gActors[actor_index].unk_174 += 1;
                        }
                    }
                    break;
                case 2:
                    if (gActors[actor_index].graphicTimer == 0) {
                        gActors[actor_index].state = 0xA0;
                    }
                    break;
            }
            break;
    }

    if ((gActors[actor_index].posX.whole < -0xB0) || (gActors[actor_index].posX.whole >= 0xB1)) {
        gActors[actor_index].flags = 0;
    }
}
