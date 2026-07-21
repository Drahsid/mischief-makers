#include "common.h"
#include "26A00.h"
#include "28EF0.h"

u16 D_800E9740[] = {0x000C, 0x0001, 0x0001, 0x0004, 0x0001, 0x0000};
u16 D_800E974C[] = {0x000D, 0x0002, 0x0002, 0x0005, 0x0002, 0x0000};
u16 D_800E9758[] = {0x000E, 0x0003, 0x0003, 0x0006, 0x0003, 0x0000};
s16 D_800E9764[4] = {0x0082, 0x008B, 0x0082, 0x007B};
s16 D_800E976C[2] = {0x0012, 0x0024}; // x-offset for heart eyes.

void func_80096B70(void) {
    gActors[0x40].actorType = 0x1D;
    Actor_Initialize(0x40);
    gActors[0x40].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x40].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x40].graphicIndex = 0x1820;
    gActors[0x40].colorA = 0x80;
    gActors[0x40].colorB = 0x9C;
    gActors[0x40].posX.whole = 0;
    gActors[0x40].posY.whole = 32;
    gActors[0x40].posZ.whole = 0;
    gActors[0x41].actorType = 0x1D;
    gActors[0x40].scaleY = 0.75f;
    Actor_Initialize(0x41);
    gActors[0x41].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[0x41].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x41].graphicIndex = 0xEA;
    gActors[0x41].colorA = 0xC0;
    gActors[0x41].posX.whole = 0;
    gActors[0x41].posY.whole = -80;
    gActors[0x41].posZ.whole = 8;
    gActors[0x41].unk_188 = -64;
    gActors[0x41].colorR = 0x3A;
    gActors[0x41].colorG = 0x82;
    gActors[0x41].colorB = 0xAD;
    gActors[0x41].palette_18C = D_800D9284;
    gActors[0x42].actorType = 0x1D;
    gActors[0x41].scaleX = 17.0f;
    gActors[0x41].scaleY = 4.0f;
    gActors[0x41].rotateX = 120.0f;
    Actor_Initialize(0x42);
    gActors[0x42].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[0x42].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x42].graphicIndex = 0x168;
    gActors[0x42].colorA = 0x50;
    gActors[0x42].colorB = 0x7F;
    gActors[0x42].posX.whole = 0;
    gActors[0x42].posY.whole = -40;
    gActors[0x42].posZ.whole = 9;
    gActors[0x42].unk_188 = -64;
    gActors[0x43].actorType = 0x1D;
    gActors[0x42].scaleX = 15.0f;
    gActors[0x42].scaleY = 2.0f;
    gActors[0x42].rotateX = 120.0f;
    Actor_Initialize(0x43);
    gActors[0x43].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[0x43].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x43].graphicIndex = 0xE6;
    gActors[0x43].colorA = 0x60;
    gActors[0x43].posX.whole = 0;
    gActors[0x43].posY.whole = 32;
    gActors[0x43].posZ.whole = -0x800;
    gActors[0x43].colorR = 0x7F;
    gActors[0x43].colorG = 0x4F;
    gActors[0x43].colorB = 0xF;
    gActors[0x43].unk_188 = -128;
    gActors[0x43].palette_18C = D_800D9474;
    gActors[0x44].actorType = 0x1D;
    gActors[0x43].scaleX = 8.0f;
    gActors[0x43].scaleY = 8.0f;
    gActors[0x43].rotateX = 120.0f;
    Actor_Initialize(0x44);
    gActors[0x44].graphicFlags = ACTOR_GFLAG_UNK11;
    gActors[0x44].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x44].graphicIndex = 0x2000;
    gActors[0x44].colorA = 0xA6;
    gActors[0x44].posX.whole = 0;
    gActors[0x44].posY.whole = 0;
    gActors[0x44].posZ.whole = 48;
    gActors[0x44].unk_188 = -160;
    gActors[0x45].actorType = 0x1D;
    Actor_Initialize(0x45);
    gActors[0x45].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    gActors[0x45].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x45].graphicIndex = 0x2004;
    gActors[0x45].colorA = 0x70;
    Actor_SetColorRgb(0x45, 0xFF);
    gActors[0x45].posX.whole = 0;
    gActors[0x45].posY.whole = -24;
    gActors[0x45].posZ.whole = 48;
    gActors[0x45].unk_188 = -160;
}

void func_80096E14(s32 unused_arg0) {
    u16 actor_index;

    gActors[0x41].colorG = D_800E9764[(gActiveFrames / 32) & 0x3] + 0xBD;
    gActors[0x42].colorG = (gActiveFrames & 1) << 5;
    if ((gActiveFrames & 1) == 0) {
        actor_index = SpawnParticle_Image_90C0_16(0x1AE, 0x80 - (Rand()), ((f32) (64.0 - ((Rand() & 0x7F) * 0.75)) + 42.0f), -256 - (Rand() * 2));
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(16.0);
            gActors[actor_index].var_154 = 8;
            gActors[actor_index].unk_164 = -1;
            gActors[actor_index].var_15C = -0x600;
            gActors[actor_index].scaleX = 0.5f;
            gActors[actor_index].scaleY = 0.5f;
            switch (Rand() & 3) {
            case 0:
                gActors[actor_index].palette_18C = PALETTE_8022D4E8;
                gActors[actor_index].colorR = Rand() & 0x7F;
                break;
            case 1:
                gActors[actor_index].palette_18C = PALETTE_8022D548;
                gActors[actor_index].colorG = Rand() & 0x7F;
                break;
            case 2:
                gActors[actor_index].palette_18C = PALETTE_8022D568;
                gActors[actor_index].colorB = Rand() & 0x7F;
                break;
            case 3:
                gActors[actor_index].palette_18C = PALETTE_8022D528;
                gActors[actor_index].colorR = Rand() & 0x7F;
                break;
            }
        }
    }
    gActors[0x45].scaleY = ((gActiveFrames & 1) / 20.0f) + 0.4;
}

void func_8009705C(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0x1000;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x800;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].posX.whole = -33;
    gActors[actor_index].posY.whole = -4;
    gActors[actor_index].posZ.whole = 128;
    gActors[actor_index].unk_114 = 0.8f;
    gActors[actor_index].var_154 = FIXED_UNIT(6.0);
}

void func_80097108(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0x2000;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x1000;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].posX.whole = 30;
    gActors[actor_index].posY.whole = -40;
    gActors[actor_index].posZ.whole = -0x380;
}

void func_800971A0(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0x100;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x2800;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posZ.whole = 128;
    gActors[actor_index].colorG = 0x50;
    gActors[actor_index].colorB = 0x70;
}

void func_8009723C(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0x110;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x280C;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -0x180;
    gActors[actor_index].scaleX = 1.4f;
    gActors[actor_index].scaleY = 1.4f;
}

void func_800972DC(void) {
    u16 index;
    gActors[0x50].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(0x50);
    gActors[0x50].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[0x50].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[0x50].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[0x50].scaleX = 20.0f;
    gActors[0x50].scaleY = 20.0f;
    gActors[0x50].base_0F8_s32[0x25] = (s32)D_800D8588;
    gActors[0x50].pos[0].whole = 0;
    gActors[0x50].pos[1].whole = 0;
    gActors[0x50].pos[2].whole = 0x90;
    Actor_SetColorRgb(0x50, 0);
}

void func_80097384(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(actor_index);
    gActors[actor_index].state = 0xC000;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = GINDEX_PARTICLERING;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 64;
    Actor_SetColorRgb(actor_index, 0x7F);
}

void func_80097428(void) {
    u16 free_actor;
    u16 index;

    for (index = 0; index < 9; index++) {
        free_actor = Actor_RangeFindInactive_90ToC0();
        if (free_actor != 0) {
            func_80097384(free_actor);
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY;
            gActors[free_actor].rotateY = index * 20;
            gActors[free_actor].colorR = index * 8;
            gActors[free_actor].rotateZ = 45.0f;
        }
    }
    for (index = 0; index < 9; index++) {
        free_actor = Actor_RangeFindInactive_90ToC0();
        if (free_actor != 0) {
            func_80097384(free_actor);
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTX;
            gActors[free_actor].rotateX = index * 20;
            gActors[free_actor].rotateZ = 45.0f;
            gActors[free_actor].colorG = index * 8;
        }
    }
}

void func_80097574(void) {
    u16 actor_index;

    if (gActors[0x30].state < 3) {
        if ((gActiveFrames % 3) == 0) {
            actor_index = SpawnParticle_RingWaveBlue(0.3f, 0, 0, gActors[0x30].posZ.whole);
            if (actor_index != 0) {
                gActors[actor_index].colorA = 0x40;
                gActors[actor_index].colorB = 0x7F;
                gActors[actor_index].velocityZ.raw = FIXED_UNIT(-8.0);
                gActors[actor_index].scaleX = 0.8f;
                gActors[actor_index].scaleY = 0.8f;
                gActors[actor_index].var_110 = 0.02f;
                gActors[actor_index].unk_114 = 0.02f;
            }
        }
    }
    actor_index = SpawnParticle_Image_90C0_16(0x1EE, 0, 0, 0);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= (Rand() & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_UNK15;
        gActors[actor_index].scaleX = 2.0f;
        gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].colorA = gActors[0x30].var_15C * 4;
        gActors[actor_index].var_160 = (((Rand() * 4) & 0x3C0) << 12) << 4; // two operations needed to match
        gActors[actor_index].var_150 = (-(Rand() & 0x70) << 12) + 0x38000;
        gActors[actor_index].unk_130 = 48.0f;
        gActors[actor_index].unk_138_arr[5] = gActors[0x30].actorType;
        gActors[actor_index].unk_134 = 0.0f;
        gActors[actor_index].unk_138_arr[0] = 0.0f;
        gActors[actor_index].palette_18C = PALETTE_8022D568;
        gActors[actor_index].var_154 = -10;
        gActors[actor_index].unk_138_arr[1] = 1.0f;
        gActors[actor_index].var_110 = -0.05f;
        gActors[actor_index].unk_118 = 0.02f;
        if (gActiveFrames & 1) {
            gActors[actor_index].unk_11C = -0.04f;
        }
        else {
            gActors[actor_index].unk_11C = -0.09f;
        }
        gActors[actor_index].unk_138_arr[2] = -20.0f;
    }
}

// Theo's heart eyes.
void LevelClear_HeartEyes(void) {
    u16 index;
    u16 actor_index;

    for (index = 0; index < 2; index++) {
        actor_index = SpawnParticle_Image_90C0_16(GINDEX_HEARTBUBBLE, 0, 0, 0);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].colorG = 0x20;
            gActors[actor_index].colorB = 0x40;
            gActors[actor_index].unk_130 = 50.0f;
            gActors[actor_index].unk_138_arr[5] = gActors[0x32].actorType;
            gActors[actor_index].unk_138_arr[0] = 121.0f;
            gActors[actor_index].unk_138_arr[1] = 1.0f;
            gActors[actor_index].var_110 = 0.04f;
            gActors[actor_index].unk_134 = D_800E976C[index];
            gActors[actor_index].unk_118 = -0.002f;
            gActors[actor_index].unk_114 = 0.04f;
            gActors[actor_index].unk_11C = -0.002f;
            gActors[actor_index].var_154 = -2;
            gActors[actor_index].unk_138_arr[4] = 60.0f;
        }
    }
}

void LevelClear_ZToSkip(void) {
    u16 actor_index;
    if (gButtonPress & gButton_ZTrig) {
        D_800D28E4 = 100;
        Actor_ClearRange_30To90();
        Actor_ClearRange_10To20();
        Actor_ClearRange(0x10, 0x30);
        Actor_ClearRange(0x90, 0xC0);
        Actor_ClearRange_C0ToC7();
        func_800286C8();

        actor_index = 0xC1;
        gActors[actor_index].actorType = 0x34;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].colorB = 0x40;
        gActors[actor_index].unk_138_arr[4] = 30.0f;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 192;
        gActors[actor_index].graphicIndex = 0x2D0;
        gActors[actor_index].scaleX = 20.0f;
        gActors[actor_index].scaleY = 20.0f;
        func_8005DFC8(0);
        D_800D16C4[0] = 0;
        Sound_StopAllSfx();
    }
}
void ActorUpdate_LevelClear(u16 actor_index) {
    u16 index;
    // use arrays to workaround IDO address alignment for actor index 0x50
    #define VAR_150       base_0F8_s32[(0x150 - 0xF8)/4]
    #define VAR_154       base_0F8_s32[(0x154 - 0xF8)/4]
    #define VAR_158       base_0F8_s32[(0x158 - 0xF8)/4]

    gCannotPause = 1;
    switch (gActors[actor_index].state) {
    case 0x0:
        gActiveFrames = 0;
        gRngSeed = 0;
        func_800972DC();
        gActors[0x50].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[0x50].state = 0x201;
        gActors[0x50].pos[2].whole = 0;
        gActors[0x50].colorA = 0xFF;
        gActors[0x50].colorB = 0x40;
        gActors[0x50].VAR_154 = 8;
        gActors[0x50].VAR_158 = 0x80;
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 0.0f;
        gLookatEyeZ = 256.0f;
        gLookatAtZ = 0.0f;
        gCameraRot = 0;
        if ((u16)gActors[actor_index].var_110 & 1) {
            gActors[actor_index].state = 0xF;
            gActors[0x50].VAR_154 = 4;
            break;
        }
        gActors[actor_index].state++;
        func_80026D88(0x50);
        func_80027018(0x50);
        func_80026E60(0x50);
        func_80026F2C(0x50);
        Sound_PlayMusic(BGM_STCLR);
        gActors[actor_index].posZ.whole = 0x40;
        gActors[actor_index].var_150 = 0xA;
    case 0x1:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_80097428();
            gActors[actor_index].var_150 = 0x32;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 0;
            gActors[actor_index].var_15C = 1;
        }
        func_80097574();
        break;
    case 0x2:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            gActors[0x50].state = 0x200;
            gActors[0x50].VAR_154 = 1;
            func_8009705C(0x31);
            gActors[actor_index].var_160 = 0x80000;
        }
        gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0x20, 1);
        func_80097574();
        LevelClear_ZToSkip();
        break;
    case 0x3:
        gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, 1);
        func_80097574();
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].state++;
            func_80097108(0x32);
            gActors[actor_index].var_150 = 0xC3;
            func_800971A0(0x40);
            gActors[0x40].posY.raw = FIXED_UNIT(48.0);
            func_800971A0(0x41);
            gActors[0x41].posY.raw = FIXED_UNIT(-48.0);
            func_800971A0(0x42);
            gActors[0x42].posY.raw = FIXED_UNIT(-144.0);
            Sound_PlaySfx(SFX_THEO_YAY2);
        }
        LevelClear_ZToSkip();
        break;
    case 0x4:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0x46) {
            gActors[0x31].state++;
            gActors[0x32].state++;
        }
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_800972DC();
            gActors[0x50].state = 0x201;
            gActors[0x50].colorA = 0;
            gActors[0x50].VAR_154 = 0x10;
            gActors[0x50].VAR_158 = 0xFF;
            gActors[actor_index].var_150 = 0xF;
            gActors[0x31].state++;
        }
        LevelClear_ZToSkip();
        break;
    case 0x5:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            gActors[0x31].flags = 0;
            gActors[0x32].flags = ACTOR_FLAG_ACTIVE;
            gActors[0x32].state = 0x2003;
            gActors[0x40].flags = 0;
            gActors[0x41].flags = 0;
            gActors[0x42].flags = 0;
        }
        LevelClear_ZToSkip();
        break;
    case 0x6:
        gActors[actor_index].state++;
        func_80026F2C(0x52);
        Sound_StopSfx(SFX_MARINA_GROWL);
        break;
    case 0x7:
    case 0x9:
    case 0xB:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        switch (gActors[actor_index].state) {
        case 7:
            gActors[actor_index].graphicIndex = 0x1000;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 0;
            gActors[actor_index].posZ.whole = 192;
            Sound_PlaySfx(SFX_MARINA_YELL1);
            func_8009723C(0x40);
            break;
        case 9:
            gActors[actor_index].graphicIndex = 0x1004;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = -4;
            gActors[actor_index].posZ.whole = 192;
            Sound_PlaySfx(SFX_MARINA_YELL3);
            func_8009723C(0x40);
            break;
        case 11:
            gActors[actor_index].graphicIndex = 0x1008;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 0;
            gActors[actor_index].posZ.whole = 192;
            Sound_PlaySfx(SFX_MARINA_YELL4);
            func_8009723C(0x40);
            break;
        }
        gActors[actor_index].state++;
        gActors[0x32].state++;
        gActors[actor_index].colorA = 0x20;
        gActors[actor_index].VAR_150 = 0x32;
        gActors[0x50].colorA = 8;
        gActors[0x50].VAR_154 = 1;
        /* fallthrough */
    case 0x8:
    case 0xA:
    case 0xC:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 8);
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
        }
        gActors[actor_index].posZ.whole -= 8;
        LevelClear_ZToSkip();
        break;
    case 0xD:
        gActors[0x50].VAR_154 = 4;
        if (gActors[0x50].colorA == 0xFF) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = 2;
            gActors[0x40].flags = 0;
        }
        LevelClear_ZToSkip();
        break;
    case 0xE:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            gActors[0x32].graphicFlags = 0;
            gActors[0x32].flags = 0;
        }
        LevelClear_ZToSkip();
        break;
    case 0xF:
        gActors[actor_index].state++;
        func_80027018(0x10);
        func_800270E4(0x17);
        break;
    case 0x10:
        gActors[actor_index].state++;
        gActors[actor_index].var_150 = 0xF0;
        func_80096B70();
        gActors[0x50].state = 0x200;
        gActors[0x50].VAR_154 = 2;
        LevelClear_ZToSkip();
        break;
    case 0x11:
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].var_150 == 0x8C) && (gActors[actor_index].var_0D8 != 4)) {
            gActors[0x32].flags = ACTOR_FLAG_ACTIVE;
            gActors[0x32].state = 0x3000;
        }
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_8005DF40(0, 0x40);
            func_8005DF5C(D_800E9740[gActors[actor_index].var_0D8]);
            D_800D5830 = 0;
            D_800D5834 = -0x100;
            if (gActors[actor_index].var_0D8 == 4) {
                Sound_PlayMusic(BGM_GET);
            }
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x12:
        if (func_8005DEFC() == 0) {
            if (gActors[actor_index].var_0D8 == 3) {
                gActors[actor_index].state = 0x18;
                gActors[actor_index].var_150 = 0x78;
            } else {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 = 0x1E;
            }
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x13:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(D_800E974C[gActors[actor_index].var_0D8]);
            D_800D5834 = -0x100;
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x14:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x15:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(D_800E9758[gActors[actor_index].var_0D8]);
            D_800D5834 = -0x100;
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x16:
        if (D_800D5824 & 0x4000) {
            gActors[actor_index].state++;
            D_800D5824 &= 0xBFFF;
        }
        /* fallthrough */
    case 0x17:
        if ((gActors[actor_index].state == 0x17) && (D_800D5824 & 0x4000)) {
            Sound_PlayMusic(BGM_CLEAR);
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x78;
        }
        func_80096E14(0);
        LevelClear_ZToSkip();
        break;
    case 0x18:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            D_800D28E4 = 0x64;
        }
        /* fallthrough */
    case 0x19:
        func_80096E14(0);
        break;
    case 0x100:
        gActors[actor_index].posY.raw += gActors[0x30].var_160;
        if (gActors[actor_index].posY.raw > FIXED_UNIT(144.0)) {
            gActors[actor_index].posY.raw -= FIXED_UNIT(288.0);
        }
        else if (gActors[actor_index].posY.raw < FIXED_UNIT(-144.0)) {
            gActors[actor_index].posY.raw += FIXED_UNIT(288.0);
        }
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 1);
        break;
    case 0x110:
        gActors[actor_index].scaleX += 0.02;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 2);
        break;
    case 0x200:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_154);
        if (gActors[actor_index].colorA == 0x00) {
            gActors[actor_index].state = 0x208;
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
        break;
    case 0x201:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, gActors[actor_index].var_158, gActors[actor_index].var_154);
        break;
    case 0x1000:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 7);
        gActors[actor_index].var_154 -= 0x500;
        gActors[actor_index].posY.raw -= FIXED_UNIT(1.0/16);
        gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 0.5f, 0.01f);
        if (!(gActiveFrames & 1)) {
            index = func_8003EEC0(gActors[actor_index].unk_114, gActors[actor_index].posX.whole + 0x20, gActors[actor_index].posY.whole + 5, gActors[actor_index].posZ.whole);
            if (index != 0) {
                gActors[index].colorA = 0x40;
                gActors[index].colorR = 0x7F;
                gActors[index].colorG = 0x4F;
            }
        }
        gActors[actor_index].posZ.raw -= gActors[actor_index].var_154;
        break;
    case 0x1001:
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = -32;
        gActors[actor_index].posY.whole = -120;
        gActors[actor_index].posZ.whole = -48;
        /* fallthrough */
    case 0x1002:
        gActors[actor_index].posX.raw += FIXED_UNIT(0.25);
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 7);
        break;
    case 0x1003:
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = 0x180A;
        gActors[actor_index].posX.whole = -16;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 128;
        Sound_PlaySfx(SFX_MARINA_GROWL);
        /* fallthrough */
    case 0x1004:
        gActors[actor_index].posX.whole = Math_ApproachS32(gActors[actor_index].posX.whole, 0, 2);
        break;
    case 0x2000:
        gActors[actor_index].posY.raw += FIXED_UNIT(3.0/16);
        gActors[actor_index].posZ.raw += FIXED_UNIT(2.0);
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 3);
        break;
    case 0x2001:
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = 16;
        gActors[actor_index].posY.whole = -112;
        gActors[actor_index].posZ.whole = gActors[0x31].posZ.whole - 80;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.375);
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].colorR = 0x7F;
        LevelClear_HeartEyes();
        /* fallthrough */
    case 0x2002:
        gActors[actor_index].posZ.raw += FIXED_UNIT(1.0);
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(1.0/16);
        gActors[actor_index].posX.raw -= FIXED_UNIT(0.25);
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 8);
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 2);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        break;
    case 0x2004:
    case 0x2006:
    case 0x2008:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].scaleX = 2.5f;
        gActors[actor_index].scaleY = 2.5f;
        switch (gActors[actor_index].state) {
        case 0x2004:
            Sound_StopSfx(SFX_THEO_YAY2);
            Sound_PlaySfx(SFX_THEO_GRUNT2);
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 16;
            gActors[actor_index].posZ.whole = 176;
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-8.0);
            break;
        case 0x2006:
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 32;
            gActors[actor_index].posZ.whole = 176;
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(-8.0);
            break;
        case 0x2008:
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 32;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
            gActors[actor_index].posZ.whole = 176;
            gActors[actor_index].velocityZ.raw = 0;
            Sound_PlaySfx(SFX_THEO_HELP1);
            break;
        }
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = 0x182A;
        /* fallthrough */
    case 0x2005:
    case 0x2007:
    case 0x2009:
        gActors[actor_index].colorA = gActors[0x30].colorA;
        break;
    case 0x3000: // Theo flying through atmosphere.
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = GINDEX_SPARKLESMALL;
        gActors[actor_index].posX.whole = -80;
        gActors[actor_index].posY.whole = -16;
        gActors[actor_index].posZ.whole = -64;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(0.46875);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.5546875);
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].var_150 = 0x64;
        gActors[actor_index].scaleX = 0.3f;
        gActors[actor_index].scaleY = 0.3f;
        Sound_PlaySfxAtActorPanning(SFX_FALLWHISTLE, actor_index);
        /* fallthrough */
    case 0x3001:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            Sound_PlaySfxAtVol(SFX_THEO_HELP2, 0x50);
        }
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.00341796875);
        // Theo hits ground
        if (gActors[actor_index].posY.whole < -256) {
            gActors[actor_index].flags = 0;
            Sound_StopSfx(SFX_FALLWHISTLE);
            Sound_PlaySfxAtVol(SFX_THEO_GRUNT2, 0x50);
        }
        break;
    case 0xC000:
        gActors[actor_index].colorA = gActors[0x30].var_15C;
        if (gActors[actor_index].colorA == 0x00) {
            gActors[actor_index].flags = 0;
        }
        else if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTY) {
            gActors[actor_index].rotateY -= 21.0f;
            gActors[actor_index].posX.raw = COS((u16)DEG_TO_INDEX((gActors[actor_index].rotateY))) * -65536.0f;
        }
        else {
            gActors[actor_index].rotateX -= 21.0f;
        }
        break;
    }
}
