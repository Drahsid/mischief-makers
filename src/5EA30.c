#include "common.h"

// script releated to dialouge code.

extern u16* D_800D1958[]; // gem palettes
extern s16 D_800E1474[]; // graphic list for "press L/R prompt"

extern s8* D_801782D8; // dialog data stream?
extern s8 D_801782DC;
extern s16 D_801782DE; // index of portrait for current speaker.
extern s16 D_801782E0;
extern s16 D_801782E2;
extern s16 D_801782E8[];

extern s16 D_801783E8;
extern s16 D_801783EA;
extern s16 D_801783EC;
extern s16 D_801783EE;
extern s16 D_801783F0;
extern s16 D_801783F2;
extern s16 D_801783F4; // set, but not read
extern s16 D_801783F6; // y-position for textbox
extern s16 D_801783F8[];
extern s16 D_80178418[16];
extern u16 D_80178438; // index for actor of text grapphic
extern u16 D_8017843A; // index for actor of text background
extern u16 D_8017843C; // index for actor of speaker portrait.
extern u16 D_8017843E; // index for actor of "press L/R" prompt.
extern s16 D_80178440; // x-position of player during dialouge start
extern s16 D_80178442; // y-position of player during dialouge start

extern s16 D_800D5838[];
extern s8* D_800D73C0[];

#define D_801C1000 ((s32*)0x801C1000)

// forward declarations
u16 func_8005EC20(s16, s16, s32);

void func_8005DE30(void) {
    for (D_801783F0 = 0; D_801783F0 < 0x10; D_801783F0++) {
        D_801783F8[D_801783F0] = D_80178418[D_801783F0] = 0;
    }
    D_801783F0 = D_801783F2 = 0;
    D_801782DC = 0;
    D_801783EE = 2;
    D_80178438 = D_8017843A = D_8017843C = D_8017843E = 0;
    D_801783F4 = -3;
    D_801783F6 = 0xC;
}

s16 func_8005DEFC(void) {
    s16 var_v1;

    var_v1 = D_80178418[0];
    if (var_v1 != 0) {
        var_v1 |= D_801783F8[0] & 0x8000;
    }
    return var_v1;
}

s16 func_8005DF30(void) {
    return D_801783F8[0];
}

void func_8005DF40(s16 arg0, s16 arg1) {
    D_801783F4 = arg0;
    D_801783F6 = arg1;
}

s32 func_8005DF5C(s32 arg0) {
   s32 var_v1;

    D_800D5820 = 0;
    D_800D5830 = 0;
    D_800D5834 = 0x46;
    for (var_v1 = 0; var_v1 < 0x10; var_v1++) {
        if (D_80178418[var_v1] == 0) {
            D_801783F8[var_v1] = 0;
            D_80178418[var_v1] = arg0;
            break;
        }
    }
    return var_v1;
}

s32 func_8005DFC8(s32 arg0) {
    s32 index;

    if (func_8005DEFC() == 0) {
        return func_8005DF5C(arg0);
    }
    index = 1;
    if (D_801783F0 == 0) {
        index = 0;
    }
    if (D_801783F0 == 1) {
        D_801783F0 = 2;
    }
    if (D_801783F0 == 2) {
        D_801783F2 = -1;
    }
    for (; index < 0x10; index++) {
        D_801783F8[index] = 0;
        D_80178418[index] = arg0;
        arg0 = 0;
    }
    if (D_801783F0 == 0) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void func_8005E09C(s32 arg0, s32 arg1) {
    D_801783F8[arg0] = arg1;
}

void func_8005E0B0(s16 arg0, s16 arg1, s32 arg2) {
    if (arg2 == 2) {
        func_8005EC20(arg0, arg1, arg2);
    }
    else if (arg0 > 0) {
        if (arg0 < 0x81) {
            switch (D_801782E0) {
            case 1:
                break;
            case 2:
                arg0 += 0x7C;
                break;
            case 3:
                arg0 += 0xCD;
                break;
            }
        }
        if (arg2 != 0) {
            func_8005EC20(arg0, arg1, arg2);
        }
        else {
            func_800831D0(arg1 % 32, arg1 / 32, arg0, D_801782E2);
        }
    }
}

void func_8005E1CC(u16 actor_index, f32 arg1) {
    f32 temp_f0;

    temp_f0 = arg1 / 5.0f;
    gActors[actor_index].scaleX = arg1 + (temp_f0 * COS(gActiveFrames * 0x20));
    gActors[actor_index].scaleY = arg1 + (temp_f0 * SIN(gActiveFrames * 0x20));
}

typedef struct {
    s16 unk0;
    s16 unk2;
} UnkActor_150; // TODO: could be FixedCoord if `s16 frac;`

void func_8005E260(u16 actor_index) {
    s16 index;
    u16 actor_1;

    actor_1 = gActors[actor_index].parentIndex;
    if ((gActors[actor_index].stateLower < 2) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9)) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index].state = 2;
    }
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = GINDEX_SPEECHBUBBLE;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].unk_0DE = 0xD;
        gActors[actor_index].var_110 = 0.0f;
        if (gActors[actor_index].unk_104 < 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].state = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw;
        gActors[actor_index].posZ.raw = gActors[actor_1].posZ.raw;
        gActors[actor_index].posX.raw += gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw += gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw += gActors[actor_index].unk_10C;
        gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxBX1 = gActors[actor_1].posX.whole - gActors[actor_index].posX.whole;
        gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxBY1 = gActors[actor_1].posY.whole - gActors[actor_index].posY.whole;
        gActors[actor_index].hitboxBX0 += gActors[actor_1].hitboxBX0;
        gActors[actor_index].hitboxBX1 += gActors[actor_1].hitboxBX1;
        gActors[actor_index].hitboxBY0 += gActors[actor_1].hitboxBY0;
        gActors[actor_index].hitboxBY1 += gActors[actor_1].hitboxBY1;
        gActors[actor_index].var_110 += 0.05;
        if (gActors[actor_index].var_110 >= 1.0) {
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
        }
        func_8005E1CC(actor_index, gActors[actor_index].var_110);
        if (!(gActors[actor_1].flags_098 & ACTOR_FLAG3_UNK18)) {
            gActors[actor_index].state = 3;
        }
        break;
    case 2:
        index = 0;
        func_8005DFC8(((UnkActor_150*)(&gActors[actor_index].var_150))[index].unk2);
        index++;
        while (index < 0x10) {
            func_8005DF5C(((UnkActor_150*)(&gActors[actor_index].var_150))[index].unk2);
            index++;
        }
        gActors[actor_index].state = 3;
        break;
    case 3:
        func_8005E1CC(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_index].var_110 > 0.0f) {
            gActors[actor_index].var_110 -= 0.05;
        }
        else {
            gActors[actor_index].flags = 0;
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8005E56C(u16 actor_index) {
    s16 index;
    u16 actor_1;

    actor_1 = gActors[actor_index].parentIndex;
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = GINDEX_SPEECHBUBBLE;
        gActors[actor_index].colorA = 0xD8;
        gActors[actor_index].unk_0DB = 0x17;
        gActors[actor_index].health = 1;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitboxAY0 = 0xC; \
        gActors[actor_index].hitboxAY1 = -0xC;
        gActors[actor_index].unk_0DF = 0;
        gActors[actor_index].var_110 = 0.0f;
        if (gActors[actor_index].unk_104 < 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].hitboxAX0 = -0x14; \
            gActors[actor_index].hitboxAX1 = 8;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].hitboxAX0 = -8; \
            gActors[actor_index].hitboxAX1 = 0x14;
        }
        gActors[actor_index].state = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].posX.raw = gActors[actor_1].posX.raw;
        gActors[actor_index].posY.raw = gActors[actor_1].posY.raw;
        gActors[actor_index].posZ.raw = gActors[actor_1].posZ.raw;
        gActors[actor_index].posX.raw += gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw += gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw += gActors[actor_index].unk_10C;
        gActors[actor_index].var_110 += 0.1;
        if (gActors[actor_index].var_110 >= 1.0) {
            gActors[actor_index].var_110 = 1.0f;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
        }
        func_8005E1CC(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_1].flags_098 & ACTOR_FLAG3_UNK18) {
            gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK20;
            if ((gActors[actor_index].stateLower < 2) && (D_800D5820 == 0)) {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    if ((gButtonPress & gButton_LTrig) || (gButtonPress & gButton_RTrig)) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK9;
                        gActors[actor_index].state = 2;
                        Sound_PlaySfx(0x10D);
                        D_80178440 = gPlayerPosX.whole;
                        D_80178442 = gPlayerPosY.whole;
                        gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK20;
                    }
                }
            }
        }
        else {
            gActors[actor_1].flags_098 &= ~ACTOR_FLAG3_UNK20;
            gActors[actor_index].state = 3;
        }
        break;
    case 2:
        index = 0;
        func_8005DFC8(((UnkActor_150*)(&gActors[actor_index].var_150))[index].unk2);
        index++;
        while (index < 0x10) {
            func_8005DF5C(((UnkActor_150*)(&gActors[actor_index].var_150))[index].unk2);
            index++;
        }
        D_800D5820 = actor_1;
        gActors[actor_index].state = 3;
        break;
    case 3:
        func_8005E1CC(actor_index, gActors[actor_index].var_110);
        if (gActors[actor_index].var_110 > 0.0f) {
            gActors[actor_index].var_110 -= 0.1;
        }
        else {
            gActors[actor_index].flags = 0;
            gActors[actor_index].state = 4;
        }
        break;
    }
}

void func_8005E8F8(u16 actor_index) {
    switch (gActors[actor_index].stateLower) {
    case 0:
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_114, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == gActors[actor_index].unk_114) {
            if (gActors[actor_index].graphicIndex == GINDEX_TEXTBOX) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;
            }
            gActors[actor_index].state = 1;
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, gActors[actor_index].var_110, gActors[actor_index].var_110 / 20.0f);
        if (gActors[actor_index].scaleX == gActors[actor_index].var_110) {
            gActors[actor_index].stateUpper = 1;
        }
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, gActors[actor_index].unk_114, gActors[actor_index].unk_114 / 20.0f);
        if ((gActors[actor_index].scaleY == gActors[actor_index].unk_114) && (gActors[actor_index].stateUpper == 1)) {
            gActors[actor_index].stateUpper = 2;
        }
        if (gActors[actor_index].colorR >= 9) {
            gActors[actor_index].colorR -= 6;
        }
        else {
            gActors[actor_index].colorR = 0;
            if (gActors[actor_index].stateUpper == 2) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
                gActors[actor_index].hitboxBX0 = 0x30;
                gActors[actor_index].hitboxBX1 = 1;
                gActors[actor_index].hitboxBY0 = 0x18;
                gActors[actor_index].hitboxBY1 = 2;
                gActors[actor_index].unk_17C = (gActors[actor_index].graphicIndex * 0x480) + 0x801A0BA8;
                gActors[actor_index].state = 4;
            }
        }
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        break;
    case 2:
        if (gActors[actor_index].graphicIndex == GINDEX_TEXTBOX) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28);
        }
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.0f, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == 0.0f) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 5:
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28);
        if (gActors[actor_index].colorR < 0x78) {
            gActors[actor_index].colorR += 6;
        }
        else {
            gActors[actor_index].colorR = 0x7F;
        }
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].scaleX += gActors[actor_index].var_110 / 20.0f;
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.0f, gActors[actor_index].unk_114 / 20.0f);
        if (gActors[actor_index].scaleY == 0.0f) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 6:
        gActors[actor_index].posY.whole = (D_801783F6 - (gActiveFrames & 0xF) / 4) - 0x26;
        break;
    default:
        break;
    }
}

u16 func_8005EC20(s16 arg0, s16 arg1, s32 arg2) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x30, 0xD0);
    if (actor_index == 0) {
        return actor_index;
    }
    gActors[actor_index].actorType = ACTORTYPE_58;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_DRAW;
    // TODO: add #define for hard-coded address for less clumsy casting.
    gActors[actor_index].palette_18C = (u16*)((D_801782E2 * 8) + 0x802651F8);
    if (arg2 == 2) { // arg0 treated as graphic.
        if (arg0 < 0) { // negative index treated as gem graphic. invert for color index.
            // macro mismatches.
            gActors[actor_index].graphicList = gGraphicListGem;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].palette_18C = D_800D1958[func_8005C6D0(arg0) - 1];
        }
        else {
            gActors[actor_index].graphicIndex = arg0;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        }
        gActors[actor_index].state = 0xA;
    }
    else { // arg0 treated as (ALPHA_* - 0x50)
        gActors[actor_index].graphicIndex = (arg0 * 2) + ALPHA_GLYPH_INDEX(ALPHA_EN_BRACKETRIGHT);
    }
    gActors[actor_index].scaleY = 1.0f;
    gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].posX.whole = -0x7B;
    gActors[actor_index].posY.whole = D_801783F6 + 0x13;
    gActors[actor_index].posX.whole += (arg1 % 32) * 8;
    gActors[actor_index].posY.whole -= (arg1 / 32) * 20;
    gActors[actor_index].posZ.whole = 0x400;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].var_110 = 0.5f;
    gActors[actor_index].unk_114 = -0.025f;
    gActors[actor_index].var_154 = D_801782E2;
    gActors[actor_index].var_158 = arg0;
    gActors[actor_index].var_15C = arg1;
    gActors[actor_index].unk_14C = D_80178418[0];
}

void func_8005EE24(u16 actor_index) {
    if (gActors[actor_index].unk_14C != D_80178418[0]) {
        gActors[actor_index].flags = 0;
        return;
    }
    switch (gActors[actor_index].stateLower) {
    case 0:
        if (D_801783F0 == 2) {
            gActors[actor_index].stateLower = 1;
        }
        break;
    case 1:
        if (D_801783F0 == 3) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].scaleX = 1.0f;
        }
        if (D_801783F0 == 1) {
            gActors[actor_index].flags = 0;
        }
        break;
    case 10:
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].stateUpper = 0xA;
        }
        if (D_801783F0 >= 2) {
            gActors[actor_index].stateLower = 0xB;
        }
        break;
    case 11:
        if (D_801783F0 != 2) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].scaleX += gActors[actor_index].var_110;
        if (gActors[actor_index].scaleX >= 1.5) {
            gActors[actor_index].scaleX = 1.5f;
            gActors[actor_index].var_150 = 0xF;
            gActors[actor_index].stateUpper = 1;
        }
        break;
    case 1:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
        }
        else {
            gActors[actor_index].scaleX += gActors[actor_index].unk_114;
            if (gActors[actor_index].scaleX <= 1.0) {
                gActors[actor_index].scaleX = 1.0f;
                gActors[actor_index].var_150 = D_801782E2;
                D_801782E2 = gActors[actor_index].var_154;
                func_8005E0B0(gActors[actor_index].var_158, gActors[actor_index].var_15C, 0);
                D_801782E2 = gActors[actor_index].var_150;
                gActors[actor_index].flags = 0;
            }
        }
        break;
    default:
        break;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_8005F088(void) {
    u16 actor_index;

    if (D_8017843A == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].colorG = 0x7F;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].graphicIndex = GINDEX_SOLIDSQARE;
                gActors[actor_index].colorA = 0xA0;
                gActors[actor_index].scaleX = 16.5f;
                gActors[actor_index].scaleY = 0.0f;
                gActors[actor_index].var_110 = 16.5f;
                gActors[actor_index].unk_114 = 4.0f;
                gActors[actor_index].posX.whole = -3;
                gActors[actor_index].posY.whole = D_801783F6;
                gActors[actor_index].posZ.whole = 0x3FF;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 0;
                D_8017843A = actor_index;
            }
        }
    }
    else {
        actor_index = D_8017843A;
        if (gActors[actor_index].flags == 0) {
            D_8017843A = 0;
        }
        else if ((D_80178418[0] == 0) && (gActors[actor_index].stateLower < 2)) {
            gActors[actor_index].state = 2;
        }
    }

    if (D_80178438 == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
                gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                gActors[actor_index].graphicIndex = GINDEX_TEXTBOX;
                gActors[actor_index].scaleX = 1.0f;
                gActors[actor_index].scaleY = 0.0f;
                gActors[actor_index].var_110 = 1.0f;
                gActors[actor_index].unk_114 = 1.0f;
                gActors[actor_index].posX.whole = -3;
                gActors[actor_index].posY.whole = D_801783F6;
                gActors[actor_index].posZ.whole = 0x400;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 0;
                D_80178438 = actor_index;
            }
        }
    }
    else {
        actor_index = D_80178438;
        if (gActors[actor_index].flags == 0) {
            D_80178438 = 0;
        }
        else if ((D_80178418[0] == 0) && (gActors[actor_index].stateLower < 2)) {
            gActors[actor_index].state = 2;
        }
    }

    if (D_8017843C == 0) {
        if ((D_801783F0 != 3) && (D_80178418[0] != 0) && (D_801782DE != 0)) {
            actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
            if (actor_index != 0) {
                gActors[actor_index].actorType = ACTORTYPE_57;
                Actor_Initialize(actor_index);
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
                if (D_800D5820 != 0) {
                    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
                }
                gActors[actor_index].colorR = 0x7F;
                gActors[actor_index].colorG = 0x7F;
                gActors[actor_index].colorB = 0x7F;
                gActors[actor_index].graphicIndex = D_801782DE;
                gActors[actor_index].scaleX = 0.0f;
                gActors[actor_index].scaleY = 1.5f;
                gActors[actor_index].var_110 = 1.0f;
                gActors[actor_index].unk_114 = 1.0f;
                gActors[actor_index].posX.whole = D_800D5830;
                gActors[actor_index].posY.whole = D_800D5834;
                gActors[actor_index].posZ.whole = 0x400;
                gActors[actor_index].unk_188 = 0;
                gActors[actor_index].state = 3;
                D_8017843C = actor_index;
            }
        }
    }
    else {
        actor_index = D_8017843C;
        if (gActors[actor_index].flags == 0) {
            D_8017843C = 0;
        }
        else if ((D_80178418[0] == 0) || (D_801782DE == 0)) {
            if (gActors[actor_index].stateLower < 5) {
                gActors[actor_index].state = 5;
            }
        }
        else {
            gActors[actor_index].unk_17C = (D_801782DE * 0x480) + 0x801A0BA8;
            gActors[actor_index].graphicIndex = D_801782DE;
        }
    }
    
    if (D_8017843E == 0) {
        if (!(D_801782DC & 0xF)) {
            if (D_801783F0 == 2) {
                actor_index = Actor_RangeFindInactive(0xC0, 0xC7);
                if (actor_index != 0) {
                    gActors[actor_index].actorType = ACTORTYPE_57;
                    Actor_Initialize(actor_index);
                    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK6;
                    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                    ACTOR_GFX_INIT(actor_index, D_800E1474);
                    gActors[actor_index].posX.whole = -3;
                    gActors[actor_index].posY.whole = (D_801783F6 - (gActiveFrames & 0xF) / 4) - 0x26;
                    gActors[actor_index].posZ.whole = 0x400;
                    gActors[actor_index].unk_188 = 0;
                    gActors[actor_index].state = 6;
                    D_8017843E = actor_index;
                }
            }
        }
    }
    else if (D_801783F0 != 2) {
        actor_index = D_8017843E;
        gActors[actor_index].flags = 0;
        D_8017843E = 0;
    }
}

void func_8005F6D4(void) {
    s16 index;
    s16 var_s2;
    s32 var_s6;
    s16 var_s1;

    if ((D_800D5820 != 0) && (D_800D5824 & 0x7000) && 
        (((D_80178440 + 0x20) < gPlayerPosX.whole) || (gPlayerPosX.whole < (D_80178440 - 0x20)) || 
         ((D_80178442 + 0x20) < gPlayerPosY.whole) || (gPlayerPosY.whole < (D_80178442 - 0x20)) || func_80040A64())) {
        func_8005DFC8(0);
    }

    D_800D5824 = 0;
    switch (D_801783F0) {
    case 0:
        if (D_80178418[0] == 0) {
            break;
        }

        if (D_800D5820 != 0) {
            if (gActors->posY.whole >= 9) {
                D_801783F6 = -0x30;
            }
            else {
                D_801783F6 = 0x34;
            }
        }
        D_800D582C = 0;
        D_800D5828 = 0;
        D_800D5824 = 0x4000;
        D_801783EA = 0;
        D_801783E8 = 0;
        D_801783EC = 0;
        D_801783EE = 2;
        if (D_801783F8[0] & 0x2000) {
            D_801782D8 = D_800D73C0[D_80178418[0]];
        }
        else {
            D_801782D8 = (s8*)(D_801C1000[D_80178418[0]] - D_801C1000[0] + 0x801C1000);
        }
        var_s2 = D_801782D8[D_801783E8];
        D_801783E8++;
        // fakematch: & 0xFFFF & 0xFFFF
        D_801782DC = var_s2 & 0xF & 0xFFFF & 0xFFFF;
        D_801782DE = 0;
        D_801782E0 = 1;
        D_801782E2 = 0;
        func_8008310C();
        D_801783F0 = 1;
        D_801783F2 = 0;
        break;
    case 1:
        D_800D5824 = 0x1000;
        if (!(D_801782DC & 0x40)) {
            if ((D_80178438 == 0) || (gActors[D_80178438].stateLower != 1)) {
                break;
            }
        }
        else {
            D_801783EC = 0;
        }
        var_s2 = 0;
        if (D_800D5828 >= 2) {
            if (D_801783F2 != 0) {
                var_s2 = gButtonHold & (gButton_LTrig | gButton_RTrig);
            }
            else if (gButtonHold & (gButton_LTrig | gButton_RTrig)) {
                D_801783F2 = 1;
            }
        }
        if ((D_801782DC & 0xF) == 1) {
            var_s2 = 0;
        }
        if (var_s2 != 0) {
            D_801783EC = 0;
        }
        if (D_801783EC != 0) {
            D_801783EC--;
        }
        else {
            D_801783EC = D_801783EE;
            var_s6 = 0;
            do
            {
                var_s2 = 0;
                var_s1 = D_801782D8[D_801783E8++];
                if (var_s1 < 0) {
                    var_s2 = 1;
                    switch (var_s1) {
                    case -1:
                        if ((D_801782DC & 0xF) == 1) {
                            D_801783EC = 0x78;
                        }
                        D_801783F8[0] |= 0x4000;
                        if (D_801782D8[D_801783E8] == -1) {
                            D_801783F8[0] |= 0x8000;
                            D_800D5824 = 0x800;
                        }
                        D_801783F0 = 2;
                        var_s2 = 0;
                        break;
                    case -2:
                        D_801783EA /= 32;
                        D_801783EA++;
                        D_801783EA *= 32;
                        break;
                    case -3:
                        D_801783EC = D_801783EE = D_801782D8[D_801783E8++];
                        break;
                    case -4:
                        D_801782DE = GINDEX_PORTRAIT_MARINAA;
                        D_801782DE += D_801782D8[D_801783E8++];
                        if (D_801782DE < GINDEX_PORTRAIT_MARINAA) {
                            D_801782DE = 0;
                        }
                        break;
                    case -5:
                        D_801782E0 = D_801782D8[D_801783E8++];
                        break;
                    case -6:
                        D_801782E2 = D_801782D8[D_801783E8++];
                        break;
                    case -7:
                        var_s6 = 1;
                        break;
                    case -8:
                        D_801783F8[0] = D_801782D8[D_801783E8++];
                        break;
                    case -9:
                        var_s2 = D_801782D8[D_801783E8++];
                        var_s1 = D_800D5838[var_s2];
                        var_s6 = 2;
                        var_s2 = 0;
                        break;
                    default:
                        // fakematch: & 0xFF & 0xFF
                        var_s1 = ((var_s1 & 0x7F & 0xFF & 0xFF) << 8);
                        var_s1 += ((u8)D_801782D8[D_801783E8++]);
                        var_s1 = var_s1 + 0x102;
                        var_s2 = 0;
                        break;
                    }
                }
                if (var_s2 == 0) {
                    if (var_s1 != 0) {
                        D_800D5828++;
                        if (D_8017843C != 0) {
                            if ((D_801783F2 != 1) ||
                                !((gButtonHold & gButton_LTrig) || (gButtonHold & gButton_RTrig)) ||
                                !(D_800D5828 & 3)) {
                                // change "voice grunt" based on portrait.
                                switch (gActors[D_8017843C].graphicIndex) {
                                default:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_DEFAULT);
                                    break;
                                case GINDEX_PORTRAIT_CAT:
                                case GINDEX_PORTRAIT_ASTER:
                                case GINDEX_PORTRAIT_TERAN:
                                case GINDEX_PORTRAIT_CELES:
                                case GINDEX_PORTRAIT_CMDR:
                                case GINDEX_PORTRAIT_CALINA:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_CLANCER);
                                    break;
                                case GINDEX_PORTRAIT_MARINAA:
                                case GINDEX_PORTRAIT_MARINAB:
                                case GINDEX_PORTRAIT_MARINAC:
                                case GINDEX_PORTRAIT_MARINAD:
                                case 0x232:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_MARINA);
                                    break;
                                case GINDEX_PORTRAIT_THEOA:
                                case GINDEX_PORTRAIT_THEOB:
                                case GINDEX_PORTRAIT_THEOC:
                                case GINDEX_PORTRAIT_LEOA:
                                case GINDEX_PORTRAIT_LEOB:
                                case GINDEX_PORTRAIT_LITH:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_THEOLEO);
                                    break;
                                case GINDEX_PORTRAIT_LUNARA:
                                case GINDEX_PORTRAIT_LUNARB:
                                case GINDEX_PORTRAIT_LUNARC:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_LUNAR);
                                    break;
                                case GINDEX_PORTRAIT_MERCOA:
                                case GINDEX_PORTRAIT_MERCOB:
                                case GINDEX_PORTRAIT_MERCOC:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_MERCO);
                                    break;
                                case GINDEX_PORTRAIT_TAURUSA:
                                case GINDEX_PORTRAIT_TAURUSB:
                                case GINDEX_PORTRAIT_TAURUSC:
                                case GINDEX_PORTRAIT_TAURUSD:
                                    Sound_PlaySfx2(SFX_TXTGRUNT_TAURUS);
                                    break;
                                }
                            }
                        }
                    }
                    func_8005E0B0(var_s1, D_801783EA, var_s6);
                    D_801782E8[D_801783EA++] = var_s1;
                    var_s6 = 0;
                }
            } while (var_s2 || ((D_801782DC & 0x40) && (D_801783F0 != 2)));
        }
        break;
    case 2:
        if (!(D_801782DC & 0xF)) {
            if (!(gButtonPress & (gButton_LTrig | gButton_RTrig)) && (D_801783F2 != -1)) {
                D_800D5824 = 0x2000;
                D_801783F2 = 0;
                break;
            }
        }
        else {
            D_801783EC--;
            if (D_801783EC > 0) {
                break;
            }
        }
        var_s1 = D_801782D8[D_801783E8];
        D_801783EC = 0;
        if ((var_s1 == -1) || (D_801783F2 == -1)) {
            D_800D5824 = 0x8000;
            Sound_PlaySfx(0x10E);
            if (D_80178438 != 0) {
                gActors[D_80178438].state = 2;
            }
            if (D_8017843A != 0) {
                gActors[D_8017843A].state = 2;
            }
            if (D_8017843C != 0) {
                gActors[D_8017843C].state = 5;
            }
            D_801783F0 = 3;
        }
        else {
            func_8008310C();
            D_800D582C++;
            D_800D5828 = 0;
            D_800D5824 = 0x4000;
            D_801783F8[0] &= ~0x4000;
            D_801783F0 = 1;
            D_801783EA = 0;
        }
        break;
    case 3:
        if ((D_80178438 == 0) && (D_8017843A == 0) && (D_8017843C == 0)) {
            index = 0;
            if (D_80178418[1] != 0) {
                for (; index < 0xF; index++) {
                    D_801783F8[index] = D_801783F8[index + 1];
                    D_80178418[index] = D_80178418[index + 1];
                }
            }
            D_801783F8[index] = 0;
            D_80178418[index] = 0;
            D_801783F0 = 0;
            D_801783EA = 0;
            D_800D5820 = 0;
        }
        break;
    }
    if (D_801783F0 > 0) {
        func_8005F088();
    }
}
