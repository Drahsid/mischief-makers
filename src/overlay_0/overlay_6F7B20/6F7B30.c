#include "common.h"
#include "actor.h"
#include "5D120.h"
#include "dialog.h"
#include "marina_anim.h"
#include "marina_effect.h"

u16 D_80193900_6F9330[16];

s16 D_801937C0_6F91F0[] = {
//  graphic timer
    0x5005, 8,
    0x5007, 40,
    0x5006, 24,
    -3,     0,
};

s16 D_801937D0_6F9200[] = {
//  graphic timer
    0x280C, 8,
    0x280E, 8,
    -2,     0,
};

s16 D_801937DC_6F920C[] = {
//  graphic timer
    0x2804, 16,
    0x2808, 16,
    0x2808, 16,
    0x2808, 16,
    0x2808, 16,
    0x2808, 16,
    0x2804, 16,
    0x280C, 16,
    0x2805, 16,
    0x2809, 16,
    0x2809, 16,
    0x2809, 16,
    0x2809, 16,
    0x2809, 16,
    0x2805, 16,
    0x280D, 16,
    -16,    0,
};

s16 D_80193820_6F9250[] = {
//  graphic timer
    0x7006, 1,
    0x7005, 4,
    0x7001, 4,
    0x7000, 4,
    0,      0,
};

s16 D_80193834_6F9264[] = {
//  graphic timer
    0x7000, 8,
    0x7001, 8,
    0x7005, 8,
    0x7006, 4,
    0,      0,
};


void func_80192100_6F7B30(u16 actor_index) {
    s32 sp24[5];
    u16 index = gActors[actor_index].unk_14C;

    if (gActors[actor_index].stateLower >= 8) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= gActors[index].flags & ACTOR_FLAG_FLIPPED;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.raw = gActors[index].posX.raw + gActors[actor_index].var_158 * gActors[actor_index].scaleX;
        }
        else {
            gActors[actor_index].posX.raw = gActors[index].posX.raw - gActors[actor_index].var_158 * gActors[actor_index].scaleX;
        }

        gActors[actor_index].posY.raw = gActors[index].posY.raw + gActors[actor_index].var_15C * gActors[actor_index].scaleY;
        gActors[actor_index].posZ.whole = gActors[index].posZ.whole + 1;
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, gActors[actor_index].unk_11C, gActors[actor_index].unk_118);
        if (gActors[actor_index].unk_11C == gActors[actor_index].rotateZ) {
            gActors[actor_index].unk_118 = 2.0f;
        }
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].unk_14C = 50.0f;
        index = gActors[actor_index].unk_14C;
        gActors[index].actorType = 0x2401;
        Actor_Initialize(index);
        gActors[index].state = 7;
        gActors[index].var_158 = FIXED_UNIT(2);
        gActors[index].var_15C = FIXED_UNIT(11);
        gActors[index].unk_11C = -60.0f;
        gActors[index].rotateZ = -60.0f;
        gActors[index].unk_118 = 2.0f;
        gActors[index].unk_14C = actor_index;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 1.5f;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].graphicIndex = 0x5005;
        gActors[actor_index].hitboxBY1 = -28;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -80 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].posZ.whole = 0;
        gActors[actor_index].state = 1;
        break;

    case 2:
        if (!gActors[actor_index].stateUpper) {
            gActors[index].state = 9;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[index].stateLower == 8) {
            gActors[actor_index].state = 1;
        }
        break;

    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[index].state = 10;
            gActors[actor_index].stateUpper = 1;
        }
        break;

    case 4:
        if (!gActors[actor_index].stateUpper) {
            gActors[index].state = 11;
            gActors[actor_index].unk_170 = 0x1000;
            gActors[actor_index].graphicList = D_801937C0_6F91F0;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].posY.whole < -80 - gActors[actor_index].hitboxBY1) {
            gActors[actor_index].posY.whole = -80 - gActors[actor_index].hitboxBY1;
            gActors[actor_index].velocityY.raw = 0;
            func_8005A4B0(actor_index, 1.0f);
            if (gActors[actor_index].stateUpper == 2) {
                gActors[actor_index].unk_170 = 0;
                gActors[actor_index].graphicIndex = 0x5005;
                gActors[index].state = 12;
                gActors[actor_index].state = 1;
            }
        }

        if (gActors[actor_index].posY.whole > -80 - gActors[actor_index].hitboxBY1) {
            gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-8), FIXED_UNIT(0.0625));
        }

        if (gActors[actor_index].unk_170_s8[0] == 0 && gActors[actor_index].unk_170_s8[1] == 1) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
            Sound_PlaySfx(SFX_BOING_0082);
        }
        break;

    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[index].state = 11;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 2) {
            gActors[index].state = 12;
            gActors[actor_index].state = 1;
        }
        break;

    case 7:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].graphicIndex = 0x2804;
        gActors[actor_index].state = 8;
        gActors[actor_index].scaleY = 1.5f;
        gActors[actor_index].scaleX = 1.5f;
        break;

    case 9:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].unk_11C = 0.0f;
            gActors[actor_index].stateUpper = 1;
        }
        else if (gActors[actor_index].stateUpper == 1) {
            if (gActors[actor_index].rotateZ > -40.0f) {
                gActors[actor_index].var_158 = 1;
                gActors[actor_index].stateUpper = 2;
            }
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (gActors[actor_index].rotateZ > -20.0f) {
                gActors[actor_index].var_158 = 0;
                gActors[actor_index].graphicIndex = 0x280C;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3 && gActors[actor_index].rotateZ == gActors[actor_index].unk_11C) {
            gActors[actor_index].state = 8;
        }
        break;

    case 10:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicList = D_801937DC_6F920C;
            gActors[actor_index].unk_170 = 0x1000;
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].unk_118 = 10.0f;
        gActors[actor_index].unk_11C = SIN(gActors[actor_index].var_150) * 40.0f;
        gActors[actor_index].var_150 += 8;
        gActors[actor_index].var_150 &= COS_MASK;
        gActors[actor_index].unk_170_s8[1] = gActors[actor_index].var_150 / 64;
        break;

    case 11:
        gActors[actor_index].graphicList = D_801937D0_6F9200;
        gActors[actor_index].unk_170 = 0x1000;
        gActors[actor_index].state = 8;
        gActors[actor_index].unk_118 = 4.0f;
        gActors[actor_index].unk_11C = 0.0f;
        break;

    case 12:
        gActors[actor_index].graphicIndex = 0x280C;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].state = 8;
        gActors[actor_index].unk_118 = 4.0f;
        gActors[actor_index].unk_11C = 0.0f;
        break;

    case 13:
        break;
    }

    func_8005D450(actor_index);
}


void func_801928E4_6F8314(u16 actor_index) {
    s32 sp24[7];

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_3DOBJ;
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = 0;
        gActors[actor_index].dlist_17C = (Gfx*)0x8037D700;
        gActors[actor_index].posX.raw = 0;
        gActors[actor_index].posY.raw = FIXED_UNIT(64);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-192);
        gActors[actor_index].state = 1;
        gActors[actor_index].unk_12C = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].scaleX = 1.0f;
        break;

    case 2:
    case 3:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTY;
            gActors[actor_index].rotateY = 0.0f;
            gActors[actor_index].var_110 = 0.1f;
            gActors[actor_index].stateUpper = 1;
        }

        gActors[actor_index].var_110 = Math_ApproachF32(gActors[actor_index].var_110, 5.0f, 0.01f);
        if (gActors[actor_index].stateLower == 2) {
            if (gActors[actor_index].stateUpper == 1 && gActors[actor_index].rotateY < 80.0f) {
                gActors[actor_index].stateUpper = 2;
            }

            if (gActors[actor_index].stateUpper == 3 && gActors[actor_index].rotateY < 260.0f) {
                gActors[actor_index].stateUpper = 4;
            }

            gActors[actor_index].rotateY += gActors[actor_index].var_110;
            if (gActors[actor_index].stateUpper == 2 && gActors[actor_index].rotateY >= 80.0f) {
                Sound_PlaySfx(SFX_0078);
                gActors[actor_index].stateUpper = 3;
            }

            if (gActors[actor_index].stateUpper == 4 && gActors[actor_index].rotateY >= 260.0f) {
                Sound_PlaySfx(SFX_0078);
                gActors[actor_index].stateUpper = 1;
                gActors[actor_index].rotateY -= 360.0f;
            }
        }

        if (gActors[actor_index].stateLower == 3) {
            if (gActors[actor_index].stateUpper == 1 && gActors[actor_index].rotateY > -70.0f) {
                gActors[actor_index].stateUpper = 2;
            }

            if (gActors[actor_index].stateUpper == 3 && gActors[actor_index].rotateY > -260.0f) {
                gActors[actor_index].stateUpper = 4;
            }

            gActors[actor_index].rotateY -= gActors[actor_index].var_110;
            if (gActors[actor_index].stateUpper == 2 && gActors[actor_index].rotateY <= -70.0f) {
                Sound_PlaySfx(SFX_0078);
                gActors[actor_index].stateUpper = 3;
            }

            if (gActors[actor_index].stateUpper == 4 && gActors[actor_index].rotateY <= -260.0f) {
                Sound_PlaySfx(SFX_0078);
                gActors[actor_index].stateUpper = 1;
                gActors[actor_index].rotateY += 360.0f;
            }
        }
        break;

    case 4:
        gActors[actor_index].rotateY += gActors[actor_index].var_110;
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_110 = Math_ApproachF32(gActors[actor_index].var_110, 1.0f, 0.05f);
            if (gActors[actor_index].var_110 == 1.0) {
                do {
                    gActors[actor_index].rotateY -= 360.0;
                } while (gActors[actor_index].rotateY > 0.0f);
                gActors[actor_index].stateUpper = 1;
            }
        }

        if (gActors[actor_index].stateUpper == 1 && gActors[actor_index].rotateY >= 0.0f) {
            gActors[actor_index].rotateY = 0.0f;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTY;
            gActors[actor_index].state = 1;
        }
        break;
    }
}


void func_80192D08_6F8738(u16 actor_index) {
    s32 sp24[5];
    u16 index = gActors[actor_index].unk_14C;

    if (gActors[actor_index].stateLower >= 7) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].flags |= gActors[index].flags & ACTOR_FLAG_FLIPPED;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].posX.raw = gActors[index].posX.raw + gActors[actor_index].var_158;
        }
        else {
            gActors[actor_index].posX.raw = gActors[index].posX.raw - gActors[actor_index].var_158;
        }

        gActors[actor_index].posY.raw = gActors[index].posY.raw + gActors[actor_index].var_15C;
        gActors[actor_index].posZ.whole = gActors[index].posZ.whole + 1;
        gActors[actor_index].rotateZ = Math_ApproachF32(gActors[actor_index].rotateZ, gActors[actor_index].unk_11C, gActors[actor_index].unk_118);
        if (gActors[actor_index].rotateZ == gActors[actor_index].unk_11C) {
            gActors[actor_index].unk_118 = 2.0f;
        }
    }

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].graphicIndex = 0x7003;
        gActors[actor_index].hitboxBY1 = -38;
        gActors[actor_index].posY.whole = -80 - gActors[actor_index].hitboxBY1;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole += 48;
        gActors[actor_index].posZ.whole = -160;
        gActors[actor_index].colorA = 0;
        gActors[actor_index].var_150 = 300;
        gActors[actor_index].state = 2;
        break;

    case 2:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
        }
        else if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].colorA++;
            if (gActors[actor_index].colorA == 255) {
                gActors[actor_index].stateUpper = 1;
            }
        }
        else if (gActors[actor_index].stateUpper == 1) {
            gActors[actor_index].graphicIndex = 0x7004;
            gActors[actor_index].var_150 = 10;
            gActors[actor_index].stateUpper = 2;
        }
        else if (gActors[actor_index].stateUpper == 2) {
            if (gActors[actor_index].var_150 != 0) {
                gActors[actor_index].var_150--;
            }
            else {
                gActors[actor_index].graphicIndex = 0x7005;
                gActors[actor_index].var_150 = 10;
                gActors[actor_index].stateUpper = 3;
            }
        }
        else if (gActors[actor_index].stateUpper == 3) {
            if (gActors[actor_index].var_150 != 0) {
                gActors[actor_index].var_150--;
            }
            else {
                gActors[actor_index].unk_14C = 52.0f;
                index = gActors[actor_index].unk_14C;
                gActors[index].actorType = 0x2402;
                Actor_Initialize(index);
                gActors[index].state = 7;
                gActors[index].var_158 = 0;
                gActors[index].var_15C = FIXED_UNIT(13);
                gActors[index].unk_14C = actor_index;
                gActors[actor_index].graphicIndex = 0x7006;
                gActors[actor_index].state = 1;
            }
        }
        break;

    case 3:
        gActors[actor_index].unk_170 = 0x1000;
        gActors[actor_index].graphicList = D_80193820_6F9250;
        gActors[actor_index].state = 1;
        break;

    case 4:
        gActors[actor_index].unk_170 = 0x1000;
        gActors[actor_index].graphicList = D_80193834_6F9264;
        gActors[actor_index].state = 1;
        break;

    case 5:
        if (!gActors[actor_index].stateUpper) {
            gActors[actor_index].var_150 = 60;
            gActors[actor_index].stateUpper = 1;
        }

        if (gActors[actor_index].stateUpper == 1) {
            if (gActors[actor_index].var_150 != 0) {
                gActors[actor_index].var_150--;
                break;
            }

            Sound_PlaySfx(SFX_013D);
            gActors[actor_index].stateUpper = 2;
        }
        else if (gActors[actor_index].stateUpper == 2) {
            gActors[actor_index].colorA -= 2;
            if (gActors[actor_index].colorA < 2) {
                gActors[actor_index].colorA = 0;
                gActors[actor_index].flags = ACTOR_FLAG_NONE;
                gActors[actor_index].state = 6;
            }
        }
        MarinaEffect_Teleport(actor_index);
        break;

    case 7:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_NOANIMATE;
        gActors[actor_index].unk_170 = 0;
        gActors[actor_index].graphicIndex = GINDEX_FEST_WARITAMA;
        gActors[actor_index].state = 8;
        break;

    case 8:
        if (gActors[index].graphicIndex == 0x7006) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }

        gActors[actor_index].colorA = gActors[index].colorA;
        if (gActors[index].flags == ACTOR_FLAG_NONE) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }

    func_8005D450(actor_index);
}


void func_80193274_6F8CA4(u16 actor_index) {
    u16 index;

    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0;
        gActors[actor_index].posX.raw = FIXED_UNIT(-3);
        gActors[actor_index].posY.raw = FIXED_UNIT(3);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-1);
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = D_80193900_6F9330;
        gActors[actor_index].colorA = 255;
        gActors[actor_index].scaleX = 22.0f;
        gActors[actor_index].scaleY = 14.0f;

        for (index = 0; index < ARRAYLENGTH(D_80193900_6F9330); index++) {
            D_80193900_6F9330[index] = GPACK_RGBA5551(0, 0, 0, 1);
        }

        gActorDepthMiddle = -384;
        gActorDepthBack = -512;
        gMarinaAnim.anim_u32 = MARINAANIM_4;
        gPlayerData.flags |= PLAYERDATA_NOCOLLIDE;
        gActors[49].actorType = 0x2401;
        Actor_Initialize(49);
        gActors[53].actorType = 0x2403;
        Actor_Initialize(53);
        gActors[actor_index].var_150 = 90;
        gActors[actor_index].state = 2;
        break;

    case 2:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            break;
        }

        func_8005DF5C(1);
        gActors[actor_index].state = 3;
        break;

    case 3:
        if (func_8005DEFC()) {
            break;
        }

        gActors[49].state = 2;
        gActors[actor_index].var_150 = 40;
        gActors[actor_index].state = 4;
        break;

    case 4:
        if (gActors[49].stateLower != 1) {
            break;
        }

        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            break;
        }

        gActors[49].state = 3;
        func_8005DF5C(2);
        func_8005DF5C(3);
        gActors[actor_index].state = 5;
        break;

    case 5:
        if (func_8005DEFC()) {
            break;
        }

        gActors[49].state = 4;
        func_8005DF5C(4);
        gActors[actor_index].state = 6;
        break;

    case 6:
        if (func_8005DEFC()) {
            break;
        }

        if (gActors[actor_index].colorA == 255) {
            Sound_StartFade(1, 250);
        }

        if (--gActors[actor_index].colorA == 0) {
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_POSITION);
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].state = 7;
        }
        break;

    case 7:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            break;
        }

        func_8005DF5C(5);
        gActors[actor_index].state = 8;
        break;

    case 8:
        if (func_8005DEFC()) {
            break;
        }

        func_8005DF5C(6);
        func_8005DF5C(7);
        gActors[49].stateUpper = 2;
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].state = 9;
        break;

    case 9:
        if (func_8005DEFC()) {
            break;
        }

        if (gActors[actor_index].var_150 == 60) {
            Sound_StartFade(1, 60);
        }

        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            break;
        }

        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_YUJYA);
        gActors[51].actorType = 0x2402;
        Actor_Initialize(51);
        gActors[53].state = 2;
        gActors[actor_index].state = 10;
        break;

    case 10:
        if (gActors[51].stateLower != 1) {
            break;
        }

        func_8005DF5C(8);
        gActors[49].state = 5;
        gActors[53].state = 4;
        gActors[actor_index].state = 11;
        break;

    case 11:
        if (func_8005DEFC()) {
            break;
        }

        func_8005DF5C(9);
        func_8005DF5C(10);
        gActors[49].stateUpper = 2;
        gActors[51].state = 3;
        gActors[actor_index].state = 12;
        break;

    case 12:
        if (func_8005DEFC()) {
            break;
        }

        gActors[51].state = 4;
        func_8005DF5C(11);
        func_8005DF5C(12);
        func_8005DF5C(13);
        gActors[actor_index].state = 13;
        break;

    case 13:
        if (func_8005DEFC()) {
            break;
        }

        gActors[53].state = 3;
        func_8005DF5C(14);
        gActors[49].state = 4;
        gActors[actor_index].state = 14;
        break;

    case 14:
        if (func_8005DEFC()) {
            break;
        }

        gActors[51].state = 5;
        gActors[actor_index].var_150 = 60;
        gActors[actor_index].state = 15;
        break;

    case 15:
        if (gActors[51].stateLower != 6) {
            break;
        }

        if (gActors[actor_index].var_150 == 60) {
            Sound_StartFade(1, 60);
        }

        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            break;
        }

        gAudioFadeMode = 0;
        gStageState++;
        gPlayerData.flags &= ~(PLAYERDATA_PAUSEACTOR | PLAYERDATA_NOCOLLIDE);
        gActors[actor_index].state = 16;
        break;
    }
}
