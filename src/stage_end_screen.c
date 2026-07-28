#include "common.h"
#include "26A00.h"
#include "28EF0.h"

// indexes for actors associated with "Level Clear" animation

#define MAIN_INDEX 0x30 // index used in spawn table

#define THEO_INDEX 0x32

#define GRAPHIC_ACTOR_INDEX_40 0x40
#define GRAPHIC_ACTOR_INDEX_41 0x41
#define GRAPHIC_ACTOR_INDEX_42 0x42
#define GRAPHIC_ACTOR_INDEX_43 0x43
#define GRAPHIC_ACTOR_INDEX_44 0x44
#define GRAPHIC_ACTOR_INDEX_45 0x45

#define BACKGROUND_INDEX 0x50

// actors associated with "Level Clear" animation

#define sMainActor gActors[MAIN_INDEX]
#define sTheoActor gActors[THEO_INDEX]

#define sGraphicActor40 gActors[GRAPHIC_ACTOR_INDEX_40]
#define sGraphicActor41 gActors[GRAPHIC_ACTOR_INDEX_41]
#define sGraphicActor42 gActors[GRAPHIC_ACTOR_INDEX_42]
#define sGraphicActor43 gActors[GRAPHIC_ACTOR_INDEX_43]
#define sGraphicActor44 gActors[GRAPHIC_ACTOR_INDEX_44]
#define sGraphicActor45 gActors[GRAPHIC_ACTOR_INDEX_45]

#define sBackgroundActor gActors[BACKGROUND_INDEX]

u16 D_800E9740[] = {0x000C, 0x0001, 0x0001, 0x0004, 0x0001, 0x0000};
u16 D_800E974C[] = {0x000D, 0x0002, 0x0002, 0x0005, 0x0002, 0x0000};
u16 D_800E9758[] = {0x000E, 0x0003, 0x0003, 0x0006, 0x0003, 0x0000};
s16 D_800E9764[4] = {0x0082, 0x008B, 0x0082, 0x007B};
s16 D_800E976C[2] = {0x0012, 0x0024}; // x-offset for heart eyes.

void func_80096B70(void) {
    sGraphicActor40.actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_40);
    sGraphicActor40.graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    sGraphicActor40.flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor40.graphicIndex = 0x1820;
    sGraphicActor40.colorA = 0x80;
    sGraphicActor40.colorB = 0x9C;
    sGraphicActor40.posX.whole = 0;
    sGraphicActor40.posY.whole = 32;
    sGraphicActor40.posZ.whole = 0;
    sGraphicActor41.actorType = ACTORTYPE_GRAPHIC_29;
    sGraphicActor40.scaleY = 0.75f;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_41);
    sGraphicActor41.graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    sGraphicActor41.flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor41.graphicIndex = 0xEA;
    sGraphicActor41.colorA = 0xC0;
    sGraphicActor41.posX.whole = 0;
    sGraphicActor41.posY.whole = -80;
    sGraphicActor41.posZ.whole = 8;
    sGraphicActor41.unk_188 = -64;
    sGraphicActor41.colorR = 0x3A;
    sGraphicActor41.colorG = 0x82;
    sGraphicActor41.colorB = 0xAD;
    sGraphicActor41.palette_18C = D_800D9284;
    sGraphicActor42.actorType = ACTORTYPE_GRAPHIC_29;
    sGraphicActor41.scaleX = 17.0f;
    sGraphicActor41.scaleY = 4.0f;
    sGraphicActor41.rotateX = 120.0f;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_42);
    sGraphicActor42.graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
    sGraphicActor42.flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor42.graphicIndex = 0x168;
    sGraphicActor42.colorA = 0x50;
    sGraphicActor42.colorB = 0x7F;
    sGraphicActor42.posX.whole = 0;
    sGraphicActor42.posY.whole = -40;
    sGraphicActor42.posZ.whole = 9;
    sGraphicActor42.unk_188 = -64;
    sGraphicActor43.actorType = ACTORTYPE_GRAPHIC_29;
    sGraphicActor42.scaleX = 15.0f;
    sGraphicActor42.scaleY = 2.0f;
    sGraphicActor42.rotateX = 120.0f;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_43);
    sGraphicActor43.graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    sGraphicActor43.flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor43.graphicIndex = 0xE6;
    sGraphicActor43.colorA = 0x60;
    sGraphicActor43.posX.whole = 0;
    sGraphicActor43.posY.whole = 32;
    sGraphicActor43.posZ.whole = -0x800;
    sGraphicActor43.colorR = 0x7F;
    sGraphicActor43.colorG = 0x4F;
    sGraphicActor43.colorB = 0xF;
    sGraphicActor43.unk_188 = -128;
    sGraphicActor43.palette_18C = D_800D9474;
    sGraphicActor44.actorType = ACTORTYPE_GRAPHIC_29;
    sGraphicActor43.scaleX = 8.0f;
    sGraphicActor43.scaleY = 8.0f;
    sGraphicActor43.rotateX = 120.0f;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_44);
    sGraphicActor44.graphicFlags = ACTOR_GFLAG_UNK11;
    sGraphicActor44.flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor44.graphicIndex = 0x2000;
    sGraphicActor44.colorA = 0xA6;
    sGraphicActor44.posX.whole = 0;
    sGraphicActor44.posY.whole = 0;
    sGraphicActor44.posZ.whole = 48;
    sGraphicActor44.unk_188 = -160;
    sGraphicActor45.actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(GRAPHIC_ACTOR_INDEX_45);
    sGraphicActor45.graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    sGraphicActor45.flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sGraphicActor45.graphicIndex = 0x2004;
    sGraphicActor45.colorA = 0x70;
    Actor_SetColorRgb(GRAPHIC_ACTOR_INDEX_45, 0xFF);
    sGraphicActor45.posX.whole = 0;
    sGraphicActor45.posY.whole = -24;
    sGraphicActor45.posZ.whole = 48;
    sGraphicActor45.unk_188 = -160;
}

// spawn a star every other frame with a random twinkle
// @param unused_arg0 unused
void LevelClear_Starscape(s32 unused_arg0) {
    u16 actor_index;

    sGraphicActor41.colorG = D_800E9764[(gActiveFrames / 32) & 0x3] + 0xBD;
    sGraphicActor42.colorG = (gActiveFrames & 1) << 5;
    if ((gActiveFrames & 1) == 0) {
        actor_index = SpawnParticle_Image_90C0_16(GINDEX_SPARKLESMALL, 0x80 - (Rand()), ((f32) (64.0 - ((Rand() & 0x7F) * 0.75)) + 42.0f), -256 - (Rand() * 2));
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
    sGraphicActor45.scaleY = ((gActiveFrames & 1) / 20.0f) + 0.4;
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

void LevelClear_SpawnTheo(u16 actor_index) {
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

void LevelClear_SpawnBackground(void) {
    u16 index;
    sBackgroundActor.actorType = ACTORTYPE_LEVELCLEAR;
    Actor_Initialize(BACKGROUND_INDEX);
    sBackgroundActor.graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    sBackgroundActor.flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    sBackgroundActor.graphicIndex = GINDEX_SOLIDSQUARE;
    sBackgroundActor.scaleX = 20.0f;
    sBackgroundActor.scaleY = 20.0f;
    sBackgroundActor.base_0F8_s32[0x25] = (s32)D_800D8588;
    sBackgroundActor.pos[0].whole = 0;
    sBackgroundActor.pos[1].whole = 0;
    sBackgroundActor.pos[2].whole = 0x90;
    Actor_SetColorRgb(BACKGROUND_INDEX, 0);
}

void LevelClear_SphereRing(u16 actor_index) {
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

// use 18 interleaved rings to create a sphere shape.
void LevelClear_SpawnSphere(void) {
    u16 free_actor;
    u16 index;

    for (index = 0; index < 9; index++) {
        free_actor = Actor_RangeFindInactive_90ToC0();
        if (free_actor != 0) {
            LevelClear_SphereRing(free_actor);
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY;
            gActors[free_actor].rotateY = index * 20;
            gActors[free_actor].colorR = index * 8;
            gActors[free_actor].rotateZ = 45.0f;
        }
    }
    for (index = 0; index < 9; index++) {
        free_actor = Actor_RangeFindInactive_90ToC0();
        if (free_actor != 0) {
            LevelClear_SphereRing(free_actor);
            gActors[free_actor].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTX;
            gActors[free_actor].rotateX = index * 20;
            gActors[free_actor].rotateZ = 45.0f;
            gActors[free_actor].colorG = index * 8;
        }
    }
}

void func_80097574(void) {
    u16 actor_index;

    if (sMainActor.state < 3) {
        if ((gActiveFrames % 3) == 0) {
            actor_index = SpawnParticle_RingWaveBlue(0.3f, 0, 0, sMainActor.posZ.whole);
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
        gActors[actor_index].colorA = sMainActor.var_15C * 4;
        gActors[actor_index].var_160 = (((Rand() * 4) & 0x3C0) << 12) << 4; // two operations needed to match
        gActors[actor_index].var_150 = (-(Rand() & 0x70) << 12) + 0x38000;
        gActors[actor_index].unk_130 = 48.0f;
        gActors[actor_index].unk_138_arr[5] = sMainActor.actorType;
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
            gActors[actor_index].unk_138_arr[5] = sTheoActor.actorType;
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

        // black out screen
        actor_index = 0xC1;
        gActors[actor_index].actorType = ACTORTYPE_GRAPHIC_52;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].colorB = 0x40;
        gActors[actor_index].unk_138_arr[4] = 30.0f;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 192;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
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

    gCannotPause = TRUE;
    switch (gActors[actor_index].state) {
    case 0x0:
        gActiveFrames = 0;
        gRngSeed = 0;
        LevelClear_SpawnBackground();
        sBackgroundActor.graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        sBackgroundActor.state = 0x201;
        sBackgroundActor.pos[2].whole = 0;
        sBackgroundActor.colorA = 0xFF;
        sBackgroundActor.colorB = 0x40;
        sBackgroundActor.VAR_154 = 8;
        sBackgroundActor.VAR_158 = 0x80;
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatAtX = 0.0f;
        gLookatAtY = 0.0f;
        gLookatEyeZ = 256.0f;
        gLookatAtZ = 0.0f;
        gCameraRot = 0;
        // no Theo, skip to planet shot
        if ((u16)gActors[actor_index].var_110 & 1) {
            gActors[actor_index].state = 0xF;
            sBackgroundActor.VAR_154 = 4;
            break;
        }
        gActors[actor_index].state++;
        func_80026D88(SCENE_UNK80);
        func_80027018(SCENE_UNK80);
        func_80026E60(SCENE_UNK80);
        func_80026F2C(SCENE_UNK80);
        Sound_PlayMusic(BGM_STCLR);
        gActors[actor_index].posZ.whole = 0x40;
        gActors[actor_index].var_150 = 0xA;
    case 0x1:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            LevelClear_SpawnSphere();
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
            sBackgroundActor.state = 0x200;
            sBackgroundActor.VAR_154 = 1;
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
            LevelClear_SpawnTheo(THEO_INDEX);
            gActors[actor_index].var_150 = 0xC3;
            func_800971A0(GRAPHIC_ACTOR_INDEX_40);
            sGraphicActor40.posY.raw = FIXED_UNIT(48.0);
            func_800971A0(GRAPHIC_ACTOR_INDEX_41);
            sGraphicActor41.posY.raw = FIXED_UNIT(-48.0);
            func_800971A0(GRAPHIC_ACTOR_INDEX_42);
            sGraphicActor42.posY.raw = FIXED_UNIT(-144.0);
            Sound_PlaySfx(SFX_THEO_YAY2);
        }
        LevelClear_ZToSkip();
        break;
    case 0x4:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0x46) {
            gActors[0x31].state++;
            sTheoActor.state++;
        }
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            LevelClear_SpawnBackground();
            sBackgroundActor.state = 0x201;
            sBackgroundActor.colorA = 0;
            sBackgroundActor.VAR_154 = 0x10;
            sBackgroundActor.VAR_158 = 0xFF;
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
            sTheoActor.flags = ACTOR_FLAG_ACTIVE;
            sTheoActor.state = 0x2003;
            sGraphicActor40.flags = 0;
            sGraphicActor41.flags = 0;
            sGraphicActor42.flags = 0;
        }
        LevelClear_ZToSkip();
        break;
    case 0x6:
        gActors[actor_index].state++;
        func_80026F2C(SCENE_UNK82);
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
            func_8009723C(GRAPHIC_ACTOR_INDEX_40);
            break;
        case 9:
            gActors[actor_index].graphicIndex = 0x1004;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = -4;
            gActors[actor_index].posZ.whole = 192;
            Sound_PlaySfx(SFX_MARINA_YELL3);
            func_8009723C(GRAPHIC_ACTOR_INDEX_40);
            break;
        case 11:
            gActors[actor_index].graphicIndex = 0x1008;
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = 0;
            gActors[actor_index].posZ.whole = 192;
            Sound_PlaySfx(SFX_MARINA_YELL4);
            func_8009723C(GRAPHIC_ACTOR_INDEX_40);
            break;
        }
        gActors[actor_index].state++;
        sTheoActor.state++;
        gActors[actor_index].colorA = 0x20;
        gActors[actor_index].VAR_150 = 0x32;
        sBackgroundActor.colorA = 8;
        sBackgroundActor.VAR_154 = 1;
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
        sBackgroundActor.VAR_154 = 4;
        if (sBackgroundActor.colorA == 0xFF) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = 2;
            sGraphicActor40.flags = 0;
        }
        LevelClear_ZToSkip();
        break;
    case 0xE:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            sTheoActor.graphicFlags = 0;
            sTheoActor.flags = 0;
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
        sBackgroundActor.state = 0x200;
        sBackgroundActor.VAR_154 = 2;
        LevelClear_ZToSkip();
        break;
    case 0x11:
        gActors[actor_index].var_150--;
        if ((gActors[actor_index].var_150 == 0x8C) && (gActors[actor_index].var_0D8 != 4)) {
            sTheoActor.flags = ACTOR_FLAG_ACTIVE;
            sTheoActor.state = 0x3000;
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
        LevelClear_Starscape(0);
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
        LevelClear_Starscape(0);
        LevelClear_ZToSkip();
        break;
    case 0x13:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(D_800E974C[gActors[actor_index].var_0D8]);
            D_800D5834 = -0x100;
        }
        LevelClear_Starscape(0);
        LevelClear_ZToSkip();
        break;
    case 0x14:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
        }
        LevelClear_Starscape(0);
        LevelClear_ZToSkip();
        break;
    case 0x15:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
            func_8005DF5C(D_800E9758[gActors[actor_index].var_0D8]);
            D_800D5834 = -0x100;
        }
        LevelClear_Starscape(0);
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
        LevelClear_Starscape(0);
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
        LevelClear_Starscape(0);
        break;
    case 0x100:
        gActors[actor_index].posY.raw += sMainActor.var_160;
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
        gActors[actor_index].posY.raw -= FIXED_UNIT(16.0/256);
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
        gActors[actor_index].posX.raw += FIXED_UNIT(1.0/4);
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
    case 0x2000: // 0x20XX, 0x30XX - Theo's states
        gActors[actor_index].posY.raw += FIXED_UNIT(48.0/256);
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
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(16.0/256);
        gActors[actor_index].posX.raw -= FIXED_UNIT(1.0/4);
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
        gActors[actor_index].colorA = sMainActor.colorA;
        break;
    case 0x3000: // Theo flying through atmosphere.
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = GINDEX_SPARKLESMALL;
        gActors[actor_index].posX.whole = -80;
        gActors[actor_index].posY.whole = -16;
        gActors[actor_index].posZ.whole = -64;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(15.0/32);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(71.0/128);
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].var_150 = 100;
        gActors[actor_index].scaleX = 0.3f;
        gActors[actor_index].scaleY = 0.3f;
        Sound_PlaySfxAtActorPanning(SFX_FALLWHISTLE, actor_index);
        /* fallthrough */
    case 0x3001:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 == 0) {
            Sound_PlaySfxAtVol(SFX_THEO_HELP2, 0x50);
        }
        // gravity
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(7.0 / 2048.0);
        // Theo hits ground
        if (gActors[actor_index].posY.whole < -256) {
            gActors[actor_index].flags = 0;
            Sound_StopSfx(SFX_FALLWHISTLE);
            Sound_PlaySfxAtVol(SFX_THEO_GRUNT2, 0x50);
        }
        break;
    case 0xC000: // shpere ring
        gActors[actor_index].colorA = sMainActor.var_15C;
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
