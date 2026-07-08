#include "common.h"
#include "actor.h"
#include "common_structs.h"
#include "music.h"


extern s32 D_80137420;
extern u16 D_800D28E4;
extern u32 D_800D28FC;

extern u16 D_800D431C[];
extern u16 D_800D44A8[];
extern u16 D_800D44F4[];
extern u16 D_800D4518[];
extern u16 D_800D46A8[];
extern u16 D_800D47B4[];
extern u16 D_800D4958[];
extern u16 D_800D4AA4[];
extern u16 D_800D4F90[];
extern u16 D_800D5348[];
extern s16 D_800E4560[];
extern s16 D_800E457C[];
extern u16 D_800E4594[];
extern u16 D_800E5A3C[];
extern u16 D_800E5A44[];
extern ActorFunc D_800E5A80[];

#define D_80335D58 ((u16*)0x80335D58)

// forward declarations
extern void func_8008DF20(u16 actor_index);
extern void func_8008CF60(u16 actor_index);
extern void func_8008D1E8(u16 actor_index);
extern void func_8008D2B0(u16 actor_index);
extern void func_8008D320(u16 actor_index);
extern void func_8008D510(u16 actor_index);

void ActorUpdate_Type15(u16 arg0) {
}

void ActorUpdate_Type16(u16 arg0) {
}

// unknown/unused
void func_8008C4B0(u32 arg0, u32 arg1, u32 arg2) {
}

void ActorUpdate_Type37(u16 arg0) {
}

void ActorUpdate_Type43(u16 arg0) {
}

void ActorUpdate_Type65(u16 arg0) {
}

void ActorUpdate_Type83(u16 arg0) {
}

void func_8008C4E0(u16 actor_index) {
    gActors[actor_index].colorB = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorR = 0;
    D_80137420 = 0;
}

void func_8008C528(u16 arg0) {
    s16* graphic_index_list;
    s16 blue;
    s16 red;
    s16 green;
    u16 actor_index;

    actor_index = 0;
    if (D_801373E0.marina_Flags_098 & 2) {
        if ((gActors[actor_index].stateLower >= 0x30) && (gActors[actor_index].stateLower < 0x37)) {
            D_801373E0.unk_43 = 1;
        }
    }
    switch (D_801373E0.unk_43) {
    case 0:
        graphic_index_list = D_800E4560;
        break;
    case 1:
        graphic_index_list = D_800E457C;
        break;
    }
    red = gActors[actor_index].colorR;
    green = gActors[actor_index].colorG;
    blue = gActors[actor_index].colorB;
    if (gActors[actor_index].graphicFlags & 0x10) {
        red = -red;
        green = -green;
        blue = -blue;
    }
    Palette_AdjustRgb5551Array(D_800E4594, (u16* )0x80222220, 0x1A, blue / 8, green / 8, red / 8);
    gPortraits[arg0].graphicIndex = graphic_index_list[D_801373E0.unk_42 * 2];
    D_801373E0.unk_40_s16++;
    if (D_801373E0.unk_40_s16 >= graphic_index_list[D_801373E0.unk_42 * 2 + 1]) {
        if (graphic_index_list[D_801373E0.unk_42 * 2 + 2] == 0) {
            D_801373E0.unk_40 = 0;
        }
        else {
            D_801373E0.unk_42++;
            D_801373E0.unk_40_s16 = 0;
        }
        if (graphic_index_list[D_801373E0.unk_42 * 2] < 0) {
            D_801373E0.unk_42 += graphic_index_list[D_801373E0.unk_42 * 2];
            D_801373E0.unk_40_s16 = Rand() * 2;
        }
    }
}

void func_8008C710(u16 actor_index) {
    s16 temp_s2;
    u16 index_0;
    u16 index_1;
    s32 var_v1;
    u16* var_s4;

    gActors[actor_index + 1].unk_138 = -gActors[actor_index + 1].var_154 / FIXED_UNIT(1.0); // 2D0: 0x13
    var_v1 = FIXED_UNIT(1.0);
    gActors[actor_index + 1].graphicIndex = 0x1864;
    for (index_0 = 0; index_0 < 4; index_0++, var_v1 += FIXED_UNIT(3.0)) {
        if (var_v1 >= gActors[actor_index + 1].var_154) {
            gActors[actor_index + 1].graphicIndex = D_800E5A3C[index_0];
            break;
        }
    }
    if (gActors[actor_index + 1].graphicIndex == 0x1810) {
        gActors[actor_index + 2].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 3].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 0xB].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index + 0x21].flags |= ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index + 1].posY.whole += 4;
        gActors[actor_index + 2].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 3].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 0xB].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index + 0x21].flags &= ~ACTOR_FLAG_DRAW;
    }
    if (gActors[actor_index + 1].graphicIndex == 0x1864) {
        gActors[actor_index + 0xD].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0x11].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0x12].unk_13C_f32 = 14.0f;
        gActors[actor_index + 0xF].unk_13C_f32 = 15.0f;
    }
    else {
        gActors[actor_index + 0xD].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0x11].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0x12].unk_13C_f32 = 0.0f;
        gActors[actor_index + 0xF].unk_13C_f32 = 1.0f;
    }
    gActors[actor_index + 1].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 1, 0x20);
    gActors[actor_index + 0x21].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x21, 0x18);
    gActors[actor_index + 0xB].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xB, 0x20);
    gActors[actor_index + 0xF].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0xF, 0x20);
    gActors[actor_index + 0x11].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x11, 0x30);
    gActors[actor_index + 0x12].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x12, 0x20);
    gActors[actor_index + 0x9].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 9, 0x20);
    gActors[actor_index + 0x1C].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x1C, 0x30);
    gActors[actor_index + 0x1E].graphicFlags |= ACTOR_GFLAG_UNK4;
    Actor_SetColorRgb(actor_index + 0x1E, 0x30);
    
    temp_s2 = func_800456DC() / 2;
    var_s4 = D_80335D58;
    for (index_1 = 0; D_800E5A44[index_1 + 0] != 0; index_1 += 2) {
        var_s4[D_800E5A44[index_1 + 0]] = Palette_AdjustRgb5551(D_800E5A44[index_1 + 1], temp_s2, temp_s2, 0);
    }
    var_s4[0xBE] = func_8004571C();
}

void func_8008CA90(void) {
    u16 actor_index;
    u16 temp_val;

    if ((D_800D294C == 0) || (D_800D294C & 0x8000)) {
        return;
    }

    actor_index = 0x10;
    gActors[actor_index].actorType = 0x72;
    Actor_Initialize(actor_index);
    temp_val = 0x8030;
    gActors[actor_index].var_110 = (f32) temp_val;
    gActors[actor_index].var_0D8 = 0;
    D_800BE5F4.unk_00_u32 = 4;
    gActors[actor_index].posX.whole = gPlayerActor.posX.whole;
    gActors[actor_index].posY.whole = gPlayerActor.posY.whole;
    gActors[actor_index].health = gPlayerActor.health;
    gActors[actor_index].state = 0;
    func_8008DF20(actor_index);
    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index].flags |= (gPlayerActor.flags & ACTOR_FLAG_FLIPPED);
    switch ((u32)D_800D294C) { // fakematch: (u32) cast
    case 1:
        func_8008CF60(0x10);
        break;
    case 2:
        func_8008D1E8(0x10);
        break;
    case 3:
        func_8008D2B0(0x10);
        break;
    case 4:
        func_8008D320(0x10);
        break;
    }
    D_800D294C |= 0x8000;
}

void func_8008CC00(void) {
    u16 index;
    index = 0x10;
    D_800BE5F4.unk_00_u32 = 5;
    gPlayerActor.posX.whole = gActors[index].posX.whole;
    gPlayerActor.posY.whole = gActors[index].posY.whole;
    gPlayerPosX.whole = gActors[index].posX.whole + (0, gScreenPosCurrentX.whole); // fakematch
    gPlayerPosY.whole = gActors[index].posY.whole + (0, gScreenPosCurrentY.whole); // fakematch
    gPlayerActor.flags &= ~0x20;
    gPlayerActor.flags |= (gActors[index].flags & 0x20);
    D_800D294C = 0;
    gActors[index].flags = 0;
    gActors[index].state = 0;
}

void func_8008CC90(u16 actor_index) {
    s16* palette;

    if (gActors[actor_index].state < 0x21) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        return;
    }

    if (gActors[actor_index].unk_118 != 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 == 0.0f) {
            palette = (s16*)gActors[actor_index].palette_18C;
            gActors[actor_index].graphicIndex = palette[0];
            gActors[actor_index].unk_118 = palette[1];
            palette += 2;
            if (palette[0] == 0) {
                gActors[actor_index].unk_118 = 0.0f;
            }
            else {
                if (palette[0] < 0) {
                    palette += palette[0] * 2;
                }
                gActors[actor_index].palette_18C = (u16*)palette;
            }
        }
    }
    func_8008D510(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK27 | ACTOR_FLAG_DRAW;
    D_800BE714 = 1;
    gActors->graphicIndex = gActors[actor_index].graphicIndex;
}

void func_8008CDC4(u16 actor_index, u16 arg1) {
    switch (arg1) {
    default:
    case 0: 
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D431C;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D4F90;
            break;
        }
        break;
    case 1: 
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D5348;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D4F90;
            break;
        }
        break;
    case 18:
        switch (gActors[actor_index].unk_190) {
        case 0:
            gActors[actor_index].palette_18C = D_800D47B4;
            break;
        case 1:
            gActors[actor_index].palette_18C = D_800D47B4;
            break;
        }
        break;
    }
    gActors[actor_index].unk_118 = 1.0f;
}

void func_8008CF10(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0xE;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

void func_8008CF60(u16 actor_index) {
    gActors[actor_index].state = 0x70;
    func_8008CDC4(actor_index, 0);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
}

void func_8008CFE4(u16 actor_index) {
    gActors[actor_index].state = 0x90;
    func_8008CDC4(actor_index, 0x12);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].unk_184 = (f32)gActors[actor_index].unk_184 * 0.75;
}

void func_8008D0A8(u16 actor_index) {
    gActors[actor_index].state = 0x80;
    func_8008CDC4(actor_index, 0x11);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
}

void func_8008D128(u16 actor_index) {
    Actor_SetColorRgb(actor_index, 0x7F);
    gActors[actor_index].iFrames = 60;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16| ACTOR_FLAG_UNK8);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gPlayerActor.unk_0F8.raw;
    gActors[actor_index].unk_188 = gPlayerActor.unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
}

void func_8008D1E8(u16 actor_index) {
    gActors[actor_index].state = 0xA0;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].palette_18C = D_800D4958;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gPlayerActor.unk_0F8.raw;
    gActors[actor_index].unk_188 = gPlayerActor.unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }

    Sound_PlaySfx(0x63);
}

void func_8008D2B0(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].palette_18C = D_800D44F4;
    gActors[actor_index].unk_120 = 8.0f;
    func_8008D128(actor_index);
}

void func_8008D320(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_index].palette_18C = D_800D4518;
    gActors[actor_index].unk_120 = 20.0f;
    func_8008D128(actor_index);
}

void func_8008D39C(u16 actor_index) {
    gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, 0, FIXED_UNIT(0.0625));
    gActors[actor_index].unk_188 = Math_ApproachS32(gActors[actor_index].unk_188, FIXED_UNIT(-6.5), FIXED_UNIT(0.21875));
}

s32 func_8008D418(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
        func_8008D0A8(actor_index);
        return TRUE;
    }

    return FALSE;
}

s32 func_8008D480(u16 actor_index) {
    func_8008D39C(actor_index);

    if (gActors[actor_index].unk_188 < 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            func_8008CFE4(actor_index);
            return TRUE;
        }
    }

    return FALSE;
}

void func_8008D510(u16 actor_index) {
    if ((u16)gActors[actor_index].var_110 & 0x10) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    if ((u16)gActors[actor_index].var_110 & 0x20) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8;
    }
    if ((u16)gActors[actor_index].var_110 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    }
}

void func_8008D728(u16 arg0) {
}

void func_8008D730(u16 actor_index) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK15;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    if ((u16)gActors[actor_index].var_110 & 0x10) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    if ((u16)gActors[actor_index].var_110 & 0x20) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8;
    }
    if ((u16)gActors[actor_index].var_110 & 0x40) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10;
    }
}

void func_8008D958(u16 arg0) {
}

void func_8008D960(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
    }
}

void func_8008D99C(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
        if (gActors[actor_index].unk_118 == 0.0f) {
            func_8008CF60(actor_index);
        }
    }
}

s32 func_8008DA24(u16 actor_index) {
    return func_8008D480(actor_index);
}

void func_8008DA4C(u16 actor_index) {
    func_8008D39C(actor_index);
    if ((gButtonHold & gButton_DRight) && (gActors[actor_index].velocityX.raw < 0)) {
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, FIXED_UNIT(1.0), FIXED_UNIT(0.125));
    }
    else if ((gButtonHold & gButton_DLeft) && (gActors[actor_index].velocityX.raw > 0)) {
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, FIXED_UNIT(-1.0), FIXED_UNIT(0.125));
    }

    if ((gActors[actor_index].unk_188 < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK17) {
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
        }
    }

    switch (gActors[actor_index].state) {
    case 0xA0:
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].palette_18C = D_800D4AA4;
            gActors[actor_index].unk_118 = 1.0f;
        }
        break;
    case 0xA1:
        if (gActors[actor_index].unk_118 == 0.0f) {
            if (gActors[actor_index].flags & 0x10000) {
                func_8008CC00();
            }
            else {
                gActors[actor_index].state++;
                gActors[actor_index].palette_18C = D_800D44A8;
                gActors[actor_index].unk_118 = 1.0f;
            }
        }
        break;
    case 0xA2:
        if (gActors[actor_index].flags & 0x10000) {
            func_8008CC00();
        }
        break;
    }
}

void func_8008DC70(u16 actor_index) {
    if (gGameState == GAMESTATE_GAMEPLAY) {
        gActors[actor_index].flags = 0;
        gActors[actor_index].state = 0;
        gGameState = GAMESTATE_CONTINUE;
        gGameStateSubState = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityZ.raw = 0;
    }
}

void func_8008DCE0(u16 actor_index) {
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 4);
    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 4);
    func_8008D39C(actor_index);

    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) {
        gActors[actor_index].rotateZ += 20.0f;
    }

    gActors[actor_index].unk_120 -= 1.0f;
    if ((gActors[actor_index].unk_120 < 0.0f) || ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[actor_index].flags & ACTOR_FLAG_UNK17))) {
        if ((gPlayerActor.health == 0) || (gPlayerActor.health & 0x8000)) {
            func_8008DC70(actor_index);
        }
        else {
            func_8008CC00();
        }
    }
}

void func_8008DE20(u16 arg0) {
}

void func_8008DE28(u16 arg0) {
}

void func_8008DE30(u16 actor_index) {
    Sound_StopSfx(SFX_MARINA_OW1);
    Sound_StopSfx(SFX_MARINA_YELL1);

    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1953125);
    }

    if (gActors[actor_index].posY.whole < -0x100) {
        gActors[actor_index].state = 0x40;
    }
}

void func_8008DEBC(u16 actor_index) {
    if (D_800D28E4 > 0x60) {
        gActors[actor_index].flags = 0;
    }
    else {
        D_800D28FC |= 0x200;
    }
}

void func_8008DF20(u16 actor_index) {
    if ((gActors[actor_index].state >= 0x61) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
        gPlayerActor.health = gActors[actor_index].health;
        func_8008CC00();
        return;
    }

    D_800E5A80[gActors[actor_index].state / 16](actor_index);
    if (gActors[actor_index].state >= 0x61) {
        if (gActors[actor_index].unk_184 >= FIXED_UNIT(8.0)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(7.9999847412109375);
        }
        else if (gActors[actor_index].unk_184 <= FIXED_UNIT(-8.0)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-7.9999847412109375);
        }
        else {
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_184;
        }
        if (gActors[actor_index].unk_188 >= FIXED_UNIT(8.0)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(7.9999847412109375);
        }
        else if (gActors[actor_index].unk_188 <= FIXED_UNIT(-8.0)) {
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-7.9999847412109375);
        }
        else {
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_188;
        }
        if (gActors[actor_index].iFrames > 0) {
            gActors[actor_index].iFrames--;
        }
    }

    if (gActors[actor_index].state >= 0x21) {
        if ((u16)gActors[actor_index].var_110 & 0x8000) {
            gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags |= (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED);
            gPlayerActor.posX.raw = gActors[actor_index].posX.raw;
            gPlayerActor.posY.raw = gActors[actor_index].posY.raw;
            gPlayerPosX.whole = gActors[actor_index].posX.whole + (0, gScreenPosCurrentX.whole); // fakematch
            gPlayerPosY.whole = gActors[actor_index].posY.whole + (0, gScreenPosCurrentY.whole);
        }
    }
    func_8008CC90(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8008E1A0(u16 actor_index) {
    func_8008DF20(actor_index);
    switch (gActors[actor_index].state) {
    case 0x10:
        switch (gActors[actor_index].state) { // BUG: inner switch on same state?
        case 1:
            func_8008CF60(actor_index);
            break;
        case 2:
            func_8008D1E8(actor_index);
            break;
        case 3:
            func_8008D2B0(actor_index);
            break;
        case 4:
            func_8008D320(actor_index);
            break;
        }
        break;
    case 0x70:
        gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, 0, FIXED_UNIT(0.125));
        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].unk_184 = FIXED_UNIT(-2.0);
        }
        if (gButtonHold & gButton_DRight) {
            gActors[actor_index].unk_184 = FIXED_UNIT(2.0);
        }
        if (gButtonPress & gButton_A) {
            func_8008D0A8(actor_index);
            gActors[actor_index].unk_188 = FIXED_UNIT(4.0);
        }
        break;
    }
}

void SpawnMarinaOhNo(u16 actor_index, u16 arg1_unused) {
    D_800BE5F4.unk_00_u32 = 4;
    if (actor_index == 0) {
        actor_index = 0x10;
    }
    gActors[actor_index].actorType = 0x70;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.whole = gPlayerActor.posX.whole;
    gActors[actor_index].posY.whole = gPlayerActor.posY.whole;
    gActors[actor_index].velocityX.raw = gPlayerActor.velocityX.raw / 2;
}

void ActorUpdate_MarinaOhNo(u16 actor_index) {
    D_800BE5F4.unk_00_u32 = 4;
    func_8008DF20(actor_index);
    if (gActors[actor_index].state == 0x10) {
        D_800BE5F4.unk_00_u32 = 4;
        gActors[actor_index].state = 0x30;
        gActors[actor_index].palette_18C = D_800D46A8; // Marina rolling
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[actor_index].unk_118 = 1.0f;
        Sound_StopSfx(SFX_MARINA_OW1);
        Sound_StopSfx(SFX_MARINA_YELL1);
        Sound_PlaySfx(SFX_MARINA_OHNO);
    }
}
