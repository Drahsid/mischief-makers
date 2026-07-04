#define FUNC_8001E2D0_RET void
#include "common.h"
#include "stage.h"

typedef struct {
    u8 unk0[0x20];
} Unk_Struct_u8_20;

#define D_803402D0 ((Unk_Struct_u8_20*)0x803402D0)
#define D_803406D0 ((Unk_Struct_u8_20*)0x803406D0)
#define D_80340DE0 ((Unk_Struct_u8_20*)0x80340DE0)
#define D_803409E0 ((Unk_Struct_u8_20*)0x803409E0)

extern s32 D_800D74A0[];
extern u16 D_800D7508[];
extern u16* D_800D7560[];
extern s16 D_800E1450;

extern u16 D_80178450;
extern u16 D_80178452;
extern u16 D_80178454;

void func_80060F80(u16 arg0) {
}

void func_80060F88(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = 0;
        gActors[actor_index].scaleX = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        gActors[actor_index].unk_12C = 1.0f;
        gActors[actor_index].posZ.whole = gActors[actor_index].timer_110;
        gActors[actor_index].unk_17C = D_800D74A0[gActors[actor_index].unk_0D8];
        gActors[actor_index].state++;
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].state = gActors[actor_index].var_154;
            gActors[actor_index].scaleX = 0.35f;
            gActors[actor_index].scaleY = 0.35f;
            gActors[actor_index].unk_12C = 0.35f;
        }
        break;
    case 1:
        if (gGameState == 6) {
            if (gButtonPress & gButton_CDown) {
                if (gActors[actor_index].unk_0D8 > 0) {
                    gActors[actor_index].unk_0D8--;
                    gActors[actor_index].unk_17C = D_800D74A0[gActors[actor_index].unk_0D8];
                }
            }
            if (gButtonPress & gButton_CUp) {
                if (gActors[actor_index].unk_0D8 < 0x19) {
                    gActors[actor_index].unk_0D8++;
                    gActors[actor_index].unk_17C = D_800D74A0[gActors[actor_index].unk_0D8];
                }
            }
        }
        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].rotateY += 4.0;
        }
        if (gButtonHold & gButton_DRight) {
            gActors[actor_index].rotateY -= 4.0;
        }
        if (gButtonHold & gButton_DDown) {
            gActors[actor_index].rotateX += 4.0;
        }
        if (gButtonHold & gButton_DUp) {
            gActors[actor_index].rotateX -= 4.0;
        }
        if (gButtonHold & gButton_LTrig) {
            gActors[actor_index].rotateZ += 4.0;
        }
        if (gButtonHold & gButton_RTrig) {
            gActors[actor_index].rotateZ -= 4.0;
        }
        break;
    case 2:
        gActors[actor_index].rotateX += 4.0;
        gActors[actor_index].rotateY -= 4.0;
        gActors[actor_index].rotateZ -= 4.0;
        return;
    case 3:
        gActors[actor_index].rotateX += 4.0;
        gActors[actor_index].rotateY -= 4.0;
        gActors[actor_index].rotateZ += 4.0;
        break;
    }
}

void func_800612D8(u16 actor_index) {
    gActors[actor_index].posX.raw -= D_800BE73C;
    if (gActors[actor_index].posX.whole < -0x600) {
        gActors[actor_index].posX.whole += 0xC00;
    }
    else if (gActors[actor_index].posX.whole > 0x600) {
        gActors[actor_index].posX.whole -= 0xC00;
    }
}

void func_80061350(u16 actor_index) {
    if (actor_index != 0x90) {
        gActors[actor_index].colorR = gActors[0x90].colorR;
        gActors[actor_index].colorG = gActors[0x90].colorG;
        gActors[actor_index].colorB = gActors[0x90].colorB;
        gActors[actor_index].colorA = gActors[0x90].colorA;
    }
    else {
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
        gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 4);
        gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 4);
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x60, 4);
    }
}

void func_80061450(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK4 | ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].graphicIndex = D_800D7508[gActors[actor_index].unk_0D8];
    gActors[actor_index].colorA = 0x80;
    if (actor_index >= 0x92) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
}

void func_800614D4(u16 actor_index) {
    if (gActors[0x90].var_15C != 0) {
        if ((gActors[actor_index].flags & ACTOR_FLAG_DRAW) == 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].colorA = 0;
            gActors[actor_index].state += 1;
        }
        else {
            gActors[actor_index].state += 2;
        }
    }
}

void func_80061554(u16 actor_index) {
    gActors[actor_index].colorA++;
    if (gActors[actor_index].colorA== 0x80) {
        gActors[0x90].var_15C = 0;
        gActors[actor_index].state--;
    }
}

void func_800615BC(u16 actor_index) {
    gActors[actor_index].colorA--;
    if (gActors[actor_index].colorA == 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        gActors[actor_index].state -= 2;
    }
}

void func_80061624(u16 actor_index) {
    s32 temp_f6;
    s16 temp_v0;
    s16 index;
    s16 jndex;
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;

    switch (gActors[actor_index].state) {
        case 0x0:
            gActors[actor_index].graphicTimer = 0;
            temp_f6 = (s32) gActors[actor_index].timer_110;
            gActors[actor_index].var_150 = temp_f6 & 0xFF00;
            gActors[actor_index].var_154 = temp_f6 & 0xFF;
            switch (gActors[actor_index].var_154) {
                case 0:
                default:
                    goto sw_1_case_0;
                case 1:
                    goto sw_1_case_1;
                case 3:
                    goto sw_1_case_3;
                case 4:
                    goto sw_1_case_4;
                case 5:
                    goto sw_1_case_5;
                case 6:
                    goto sw_1_case_6;
                case 7:
                    goto sw_1_case_7;
                case 8:
                    goto sw_1_case_8;
            }
            break;

        sw_1_case_8:
            gActors[actor_index].graphicIndex = ((gActors[actor_index].var_150 / 128) % 8) + 0x2000;
            goto dummy_case_5;
        sw_1_case_0:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK4 | ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -0x200;
            gActors[actor_index].graphicIndex = 0x2002;
            gActors[actor_index].state = 0x10;
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentX.whole) & 0x3FF) - 0x1E0;
        case 0x10:
            gActors[actor_index].posX.raw -= D_800BE73C;
            gActors[actor_index].posX.whole = ((gActors[actor_index].posX.whole + 0x1E0) & 0x3FF) - 0x1E0;
            gActors[actor_index].posY.whole = 0x253 - gScreenPosCurrentY.whole;
            break;

        sw_1_case_1:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -0x100;
            gActors[actor_index].graphicIndex = 0x2000;
            gActors[actor_index].state = 0x20;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].colorA = 0x80;
            D_80178450 = 2;
            D_80178452 = 0xA5;
            D_80178454 = 0xD;
        case 0x20:
            gActors[actor_index].posY.whole = 0x116 - ((gScreenPosCurrentY.whole * 7) / 8);
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentX.whole) & 0x3FF) - 0x200;
            if (actor_index != 0x90) {
                gActors[actor_index].var_158 += D_80178450;
                for (index = 0; index < 0x20; index++) {
                    temp_v0 = (SIN(gActors[actor_index].var_158 + (index * D_80178452)) * D_80178454) + index;
                    if (index && index) {
                    }
                    temp_v0 &= 0x1F;
                    for (jndex = 0; jndex < 0x20; jndex++) {
                        D_803402D0[index].unk0[jndex] = D_803406D0[temp_v0].unk0[jndex];
                    }
                }
            }
            break;

        sw_1_case_3:
            func_80061450(actor_index);
            gActors[actor_index].posX.whole = gActors[actor_index].var_150;
            gActors[actor_index].posZ.whole = -0x100;
            gActors[actor_index].state = 0x30;
        case 0x30:
            func_800612D8(actor_index);
            func_800614D4(actor_index);
            break;

        case 0x31:
            func_800612D8(actor_index);
            func_80061554(actor_index);
            break;

        case 0x32:
            func_800612D8(actor_index);
            func_800615BC(actor_index);
            break;

        sw_1_case_4:
            func_80061450(actor_index);
            gActors[actor_index].posZ.whole = -0xC0;
            gActors[actor_index].state = 0x40;
        case 0x40:
            gActors[actor_index].posY.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentY.whole) & 0x7FF) - 0x400;
            func_800614D4(actor_index);
            break;

        case 0x41:
            gActors[actor_index].posY.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentY.whole) & 0x7FF) - 0x400;
            func_80061554(actor_index);
            break;

        case 0x42:
            gActors[actor_index].posY.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentY.whole) & 0x7FF) - 0x400;
            func_800615BC(actor_index);
            break;

        sw_1_case_5:
            gActors[actor_index].graphicIndex = (gActors[actor_index].var_150 / 128) + 0x200A;
        dummy_case_5:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -0x1F0;
            gActors[actor_index].var_150 = gActors[actor_index].var_150 / 2;
            gActors[actor_index].state = 0x50;
        case 0x50:
            gActors[actor_index].posY.whole = 0x120 - gScreenPosCurrentY.whole;
            if (gCurrentScene == 6) {
                gActors[actor_index].posX.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentX.whole) & 0x3FF) - 0x200;
                if (gLookatEyeZ == 448.0f) {
                    if ((gActors[actor_index].posX.whole < -0x100) || (gActors[actor_index].posX.whole >= 0x101)) {
                        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
                    }
                    else {
                        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                    }
                }
                else {
                    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                }
            }
            else {
                gActors[actor_index].posX.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentX.whole) & 0x1FF) - 0x100;
            }
            break;

        sw_1_case_6:
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].posZ.whole = -0x120;
            gActors[actor_index].graphicIndex = 0x2002;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].colorA = 0xC0;
            gActors[actor_index].colorR = 0x80;
            gActors[actor_index].colorG = 0x80;
            D_80178450 = 2;
            D_80178452 = 0xA5;
            D_80178454 = 0xD;
            gActors[actor_index].state = 0x60;
        case 0x60:
            gActors[actor_index].posY.whole = 0x116 - ((s32) (gScreenPosCurrentY.whole * 7) / 8);
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_150 - gScreenPosCurrentX.whole) & 0x3FF) - 0x200;
            if (actor_index != 0x92) {
                gActors[actor_index].var_158 += D_80178450;
                for (index = 0; index < 0x20; index++) {
                    temp_v0 = (SIN(gActors[actor_index].var_158 + (index * D_80178452)) * D_80178454) + index;
                    if (index && index) { // fakematch
                    }
                    temp_v0 &= 0x1F;
                    for (jndex = 0; jndex < 0x20; jndex++) {
                        D_80340DE0[index].unk0[jndex] = D_803409E0[temp_v0].unk0[jndex];
                    }
                }
            }
            break;

        sw_1_case_7:
            gActors[actor_index].unk_164 = 1;
            func_80061450(actor_index);
            gActors[actor_index].posX.whole = gActors[actor_index].var_150;
            gActors[actor_index].posZ.whole = -0x100;
            gActors[actor_index].state = 0x70;
        case 0x70:
            func_800612D8(actor_index);
            func_80061350(actor_index);
            break;

        case 0x71:
            func_800612D8(actor_index);
            if (gActors[actor_index].var_15C != 0) {
                func_80061350(actor_index);
            }
            func_80061554(actor_index);
            break;

        case 0x72:
            func_800612D8(actor_index);
            if (gActors[actor_index].var_15C != 0) {
                func_80061350(actor_index);
            }
            func_800615BC(actor_index);
            break;
        default:
            break;
    }
}

void func_80061E98(u16 actor_index) {
    u16 index;
    s16 temp_limit;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_PLATFORM0;
        gActors[actor_index].posZ.whole = -8;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].scaleX = gActors[actor_index].timer_110 / 64;
        gActors[actor_index].hitboxBX0 = gActors[actor_index].scaleX * -32.0f;
        gActors[actor_index].hitboxBX1 = gActors[actor_index].scaleX * 32.0f;
        gActors[actor_index].hitboxBY0 = 8;
        gActors[actor_index].hitboxBY1 = 0;
        gActors[actor_index].state++;
        switch (gActors[actor_index].unk_0D8 & 0x30) {
        case 0: 
            gActors[actor_index].graphicIndex = 0x380C;
            break;
        case 16:
            gActors[actor_index].graphicIndex = 0x380E;
            break;
        case 32:
            gActors[actor_index].graphicIndex = 0x3810;
            break;
        }
        switch (gActors[actor_index].unk_0D8 & 0xF) {
        case 1:
        case 5:
            gActors[actor_index].colorB = 0x7F; \
            gActors[actor_index].colorR = 0; \
            gActors[actor_index].colorG = 0; \
            break;
        case 2:
        case 6:
            gActors[actor_index].colorR = 0x7F; \
            gActors[actor_index].colorG = 0; \
            gActors[actor_index].colorB = 0; \
            break;
        case 3:
        case 7:
            gActors[actor_index].colorR = 0x7F; \
            gActors[actor_index].colorB = 0x7F; \
            gActors[actor_index].colorG = 0; \
            break; \
        case 4:
        case 8:
            gActors[actor_index].colorG = 0x7F; \
            gActors[actor_index].colorR = 0; \
            gActors[actor_index].colorB = 0; \
            break;
        }
        if ((gActors[actor_index].unk_0D8 & 0xF) >= 5) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        }
        break;
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK7) {
            gActors[actor_index].var_158 = 1;
        }
        // fakematch: temp_limit = 0x148
        if ((D_800D28E4 >= 0xA) && (D_800D28E4 < 0x14) && ((gScreenPosCurrentY.whole + gActors[actor_index].posY.whole) < (temp_limit = 0x148))) {
            gActors[actor_index + 1].flags = 0;
            gActors[actor_index + 0].flags = 0;
            index = func_8003FF68(actor_index, 1.0f);
            gActors[index].unk_188 = gActors[actor_index].posY.raw + FIXED_UNIT(-8.0);
        }
        break;
    }
}

void func_80062174(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x262;
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0x30;
        gActors[actor_index].posZ.whole = -0x212;
        gActors[actor_index].unk_188 = -0x22;
        gActors[actor_index].scaleX = 9.0f;
        gActors[actor_index].unk_12C = 9.0f;
        gActors[actor_index].rotateX = -8.0f;
        Sound_PlaySfx(0xBF);
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].colorA = 3;
        gActors[actor_index].state += 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].rotateY += 2.0f;
        if (gActiveFrames & 1) {
            gActors[actor_index].colorA += 4;
            if (gActors[actor_index].colorA == 0xFF) {
                gDrawBackground = 0;
                gActors[0x8C].unk_18C = 1;
                gActors[actor_index].state++;
            }
        }
        break;
    case 2:
        gActors[actor_index].rotateY += 2.0f;
        break;
    }
    gActors[actor_index].posY.whole = 0x230 - D_800BE580;
}

void func_80062300(u16 actor_index) {
    gActors[actor_index].posX.raw = (((gActors[actor_index].posX.raw + gScreenPosCurrentX.raw) & 0xFFF00000) - gScreenPosCurrentX.raw) + FIXED_UNIT(8.0);
    gActors[actor_index].velocityX.raw = 0;
}

void func_80062360(u16 actor_index) {
    gActors[actor_index].posY.raw = (((gActors[actor_index].posY.raw + gScreenPosCurrentY.raw) & 0xFFF00000) - gScreenPosCurrentY.raw) + FIXED_UNIT(8.0);
    gActors[actor_index].velocityY.raw = 0;
}

void func_800623C0(u16 actor_index) {
    if (gActors[actor_index].state <= 0x64) {
        func_80062360(actor_index);
    }
    else {
        func_80062300(actor_index);
    }
}

void func_8006242C(u16 actor_index) {
    gActors[actor_index].unk_17C += gActors[actor_index].unk_178;
    gActors[actor_index].velocityX.raw = SIN(gActors[actor_index].unk_17C) * gActors[actor_index].var_15C;
    gActors[actor_index].velocityY.raw = COS(gActors[actor_index].unk_17C) * gActors[actor_index].var_15C;
    if (gActors[actor_index].unk_17C == gActors[actor_index].unk_174) {
        gActors[actor_index].state = gActors[actor_index].unk_16C;
        func_800623C0(actor_index);
    }
}

void func_80062524(u16 actor_index) {
    gActors[actor_index].unk_17C -= gActors[actor_index].unk_178;
    gActors[actor_index].velocityX.raw = -SIN(gActors[actor_index].unk_17C) * gActors[actor_index].var_15C;
    gActors[actor_index].velocityY.raw = -COS(gActors[actor_index].unk_17C) * gActors[actor_index].var_15C;
    if (gActors[actor_index].unk_17C == gActors[actor_index].unk_170) {
        gActors[actor_index].state = gActors[actor_index].unk_168;
        func_800623C0(actor_index);
    }
}

void func_80062624(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) && (gActors[actor_index].state >= 0x68)) {
        if (((gActors[actor_index].velocityX.raw < 0) && (func_800486F4() == 4)) || 
            ((gActors[actor_index].velocityX.raw > 0) && (func_800486F4() == 12)) ||
            ((gActors[actor_index].velocityY.raw < 0) && (func_800486F4() == 0)) || 
            ((gActors[actor_index].velocityY.raw > 0) && (func_800486F4() == 8))) {
            gActors[actor_index].state = 0x23;
            gActors[actor_index].unk_180 = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_184 = gActors[actor_index].velocityY.raw;
        }
    }
}

void func_8006275C(u16 actor_index) {
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
        switch (func_800486F4()) {
        case 4:
            if (gActors[actor_index].unk_180 > 0) {
                gActors[actor_index].state = 0x68;
            }
            else {
                gActors[actor_index].state = 0x69;
            }
            break;
        case 12:
            if (gActors[actor_index].unk_180 > 0) {
                gActors[actor_index].state = 0x69;
            }
            else {
                gActors[actor_index].state = 0x68;
            }
            break;
        case 0:
            if (gActors[actor_index].unk_184 > 0) {
                gActors[actor_index].state = 0x68;
            }
            else {
                gActors[actor_index].state = 0x69;
            }
            break;
        case 8:
            if (gActors[actor_index].unk_184 > 0) {
                gActors[actor_index].state = 0x69;
            }
            else {
                gActors[actor_index].state = 0x68;
            }
            break;
        }
    }
}

void func_80062874(u16 actor_index, u16 arg1, u16 arg2, s32 arg3, s32 arg4) {
    gActors[actor_index].state = 0x68;
    gActors[actor_index].unk_168 = arg1;
    gActors[actor_index].unk_16C = arg2;
    gActors[actor_index].unk_170 = arg3;
    gActors[actor_index].unk_174 = arg4;
    if (arg3 < arg4) {
        gActors[actor_index].unk_178 = gActors[actor_index].var_160;
    }
    else {
        gActors[actor_index].unk_178 = -gActors[actor_index].var_160;
    }
    gActors[actor_index].unk_17C = arg3;
    func_8006242C(actor_index);
}

u8 func_8006291C(u16 actor_index) {
    return ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) &&
            (func_80012AB4(gActors[actor_index].posX.whole + 8, gActors[actor_index].posY.whole) != 0x36));
}

u8 func_800629A8(u16 actor_index) {
    return ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) &&
            (func_80012AB4(gActors[actor_index].posX.whole - 8, gActors[actor_index].posY.whole) != 0x36));
}

u8 func_80062A34(u16 actor_index) {
    return ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) &&
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 8) != 0x36));
}

u8 func_80062AC0(u16 actor_index) {
    return ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) &&
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 8) != 0x36));
}

void func_80062B4C(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
        (func_800486F4() == 0xC)) {
        gActors[actor_index].state = 0x20;
    }
    else {
        if ((func_80012AB4(gActors[actor_index].posX.whole + 0x10, gActors[actor_index].posY.whole) == 0) && 
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36)) {
            if (func_80012AB4(gActors[actor_index].posX.whole + 0x10, gActors[actor_index].posY.whole + 0x10) == 0x32) {
                func_80062874(actor_index, 0x63, 0x65, 0x100, 4);
            }
            else if (func_80012AB4(gActors[actor_index].posX.whole + 0x10, gActors[actor_index].posY.whole - 0x10) == 0x32) {
                func_80062874(actor_index, 0x63, 0x67, 0x100, 0x1FC);
            }
        }
    }
}

void func_80062CB4(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
        (func_800486F4() == 4)) {
        gActors[actor_index].state = 0x20;
    }
    else {
        if ((func_80012AB4(gActors[actor_index].posX.whole - 0x10, gActors[actor_index].posY.whole) == 0) && 
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36)) {
            if (func_80012AB4(gActors[actor_index].posX.whole - 0x10, gActors[actor_index].posY.whole + 0x10) == 0x32) {
                func_80062874(actor_index, 0x61, 0x65, 0x300, 0x3FC);
            }
            else if (func_80012AB4(gActors[actor_index].posX.whole - 0x10, gActors[actor_index].posY.whole - 0x10) == 0x32) {
                func_80062874(actor_index, 0x61, 0x67, 0x300, 0x204);
            }
        }
    }
}

void func_80062E1C(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
        (func_800486F4() == 8)) {
        gActors[actor_index].state = 0x21;
    }
    else {
        if ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 0x10) == 0) && 
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36)) {
            if (func_80012AB4(gActors[actor_index].posX.whole + 0x10, gActors[actor_index].posY.whole + 0x10) == 0x32) {
                func_80062874(actor_index, 0x67, 0x61, 4, 0x100);
            }
            else if (func_80012AB4(gActors[actor_index].posX.whole - 0x10, gActors[actor_index].posY.whole + 0x10) == 0x32) {
                func_80062874(actor_index, 0x67, 0x63, 0x3FC, 0x300);
            }
        }
    }
}

void func_80062F84(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
        (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
        (func_800486F4() == 0)) {
        gActors[actor_index].state = 0x21;
    }
    else {
        if ((func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 0x10) == 0) &&
            (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36)) {
            if (func_80012AB4(gActors[actor_index].posX.whole + 0x10, gActors[actor_index].posY.whole - 0x10) == 0x32) {
                func_80062874(actor_index, 0x65, 0x61, 0x1FC, 0x100);
            }
            else if (func_80012AB4(gActors[actor_index].posX.whole - 0x10, gActors[actor_index].posY.whole - 0x10) == 0x32) {
                func_80062874(actor_index, 0x65, 0x63, 0x204, 0x300);
            }
        }
    }
}

void func_800630E8(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) && (func_800486F4() == 4) && (func_80012AB4(gActors[actor_index].posX.whole + 9, gActors[actor_index].posY.whole) != 0)) {
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            gActors[actor_index].state = 0x60;
        }
        else {
            gActors[actor_index].state = 0x61;
        }
    }
}

void func_800631A0(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) && (func_800486F4() == 0xC) && (func_80012AB4(gActors[actor_index].posX.whole - 9, gActors[actor_index].posY.whole) != 0)) {
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            gActors[actor_index].state = 0x62;
        }
        else {
            gActors[actor_index].state = 0x63;
        }
    }
}

void func_80063258(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) && (func_800486F4() == 0) && (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 9) != 0)) {
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            gActors[actor_index].state = 0x64;
        }
        else {
            gActors[actor_index].state = 0x65;
        }
    }
}

void func_8006330C(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 < 0x30) && (func_800486F4() == 8) && (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 9) != 0)) {
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            gActors[actor_index].state = 0x66;
        }
        else {
            gActors[actor_index].state = 0x67;
        }
    }
}

void func_800633C4(u16 actor_index) {
    if ((gActors[actor_index].posY.whole + 0xC0) < gActors[0].posY.whole) {
        gActors[actor_index].state = 0x7C;
    }
}

void func_80063418(u16 actor_index) {
    if ((gActors[actor_index].posY.whole - 0xC0) > gActors[0].posY.whole) {
        gActors[actor_index].state = 0x7E;
    }
}

void func_8006346C(u16 actor_index) {
    gActors[actor_index - 1].posX.raw = gActors[actor_index].posX.raw + gActors[actor_index - 1].var_154;
    gActors[actor_index - 1].posY.raw = gActors[actor_index].posY.raw + gActors[actor_index - 1].var_158;
    if (!(gActiveFrames & 0xF)) {
        if ((gActors[actor_index - 1].actorType == 0x3E) || (gActors[actor_index - 1].actorType == 0x42)) {
            if ((gActors[actor_index].state >= 0x60) && (gActors[actor_index - 1].var_158 != 0)) {
                Sound_PlaySfxAtActor2(0x120, actor_index);
            }
        }
        else if (gActors[actor_index - 1].actorType == 0x500) {
            if (((s32) gActors[actor_index - 1].timer_110 & 0xF) == 1) {
                if ((gActors[0].flags & ACTOR_FLAG_ATTACHED) && ((actor_index + 1) == gActors[0].unk_0D6)) {
                    Sound_PlaySfxAtActor2(0x120, actor_index);
                }
            }
            else if ((gActors[0].flags & ACTOR_FLAG_ATTACHED) && (((actor_index + 1) == gActors[0].unk_0D6) || ((actor_index + 2) == gActors[0].unk_0D6) || ((actor_index + 3) == gActors[0].unk_0D6) || ((actor_index + 4) == gActors[0].unk_0D6))) {
                Sound_PlaySfxAtActor2(0x120, actor_index);
            }
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            if (gActors[actor_index].unk_0D8 < 0x60) {
                if (gActors[actor_index].state >= 0x60) {
                    Sound_PlaySfxAtActor2(0x120, actor_index);
                }
            }
            else if (gActors[actor_index].unk_0D8 < 0x70) {
                Sound_PlaySfxAtActor2(0x120, actor_index);
            }
            else if (gActors[actor_index].state >= 0x78) {
                Sound_PlaySfxAtActor2(0x120, actor_index);
            }
        }
    }
    if (gActors[actor_index].unk_188 == 2) {
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            Sound_PlaySfxAtActor2(0x115, actor_index);
        }
    }
    gActors[actor_index].unk_188 = gActors[actor_index - 1].state;
    switch (gActors[actor_index].state) {                        /* switch 1 */
    case 0:
        gActors[actor_index].unk_164 = (s32) gActors[actor_index].timer_110 & 0x3FFF;
        gActors[actor_index].var_15C = gActors[actor_index].unk_164 << 0x10;
        gActors[actor_index].var_160 = gActors[actor_index].unk_164 * 7;
        if ((s32) gActors[actor_index].timer_110 & 0x8000) {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = 0x2C8;
            gActors[actor_index].colorR = 0x7F;
        }
        gActors[actor_index].state = gActors[actor_index].unk_0D8;
        break;
    case 0x20:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            func_800630E8(actor_index);
            func_800631A0(actor_index);
        }
        break;
    case 0x21:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            func_80063258(actor_index);
            func_8006330C(actor_index);
        }
        break;
    case 0x22:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            func_800630E8(actor_index);
            func_800631A0(actor_index);
            func_80063258(actor_index);
            func_8006330C(actor_index);
        }
        break;
    case 0x30:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 != 0) {
            if (func_8006291C(actor_index) != 0) {
                gActors[actor_index].state = 0x60;
            }
            else {
                gActors[actor_index].state = 0x61;
            }
        }
        break;
    case 0x31:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 != 0) {
            if (func_800629A8(actor_index) != 0) {
                gActors[actor_index].state = 0x62;
            }
            else {
                gActors[actor_index].state = 0x63;
            }
        }
        break;
    case 0x32:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 != 0) {
            if (func_80062A34(actor_index) != 0) {
                gActors[actor_index].state = 0x64;
            }
            else {
                gActors[actor_index].state = 0x65;
            }
        }
        break;
    case 0x33:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 != 0) {
            if (func_80062AC0(actor_index) != 0) {
                gActors[actor_index].state = 0x66;
            }
            else {
                gActors[actor_index].state = 0x67;
            }
        }
        break;
    case 0x40:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index - 1].var_158 != 0) {
            if (func_8006291C(actor_index) != 0) {
                gActors[actor_index].state = 0x60;
            }
            else {
                gActors[actor_index].state = 0x61;
            }
        }
        break;
    case 0x41:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index - 1].var_158 != 0) {
            if (func_800629A8(actor_index) != 0) {
                gActors[actor_index].state = 0x62;
            }
            else {
                gActors[actor_index].state = 0x63;
            }
        }
        break;
    case 0x42:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index - 1].var_158 != 0) {
            if (func_80062A34(actor_index) != 0) {
                gActors[actor_index].state = 0x64;
            }
            else {
                gActors[actor_index].state = 0x65;
            }
        }
        break;
    case 0x43:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index - 1].var_158 != 0) {
            if (func_80062AC0(actor_index) != 0) {
                gActors[actor_index].state = 0x66;
            }
            else {
                gActors[actor_index].state = 0x67;
            }
        }
        break;
    case 0x60:
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = gActors[actor_index].var_15C;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            func_80062B4C(actor_index);
        }
        else {
            gActors[actor_index].state = 0x61;
        }
        break;
    case 0x61:
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = gActors[actor_index].var_15C;
        if (func_8006291C(actor_index) != 0) {
            if (gActors[actor_index].unk_0D8 < 0x60) {
                func_80062300(actor_index);
                gActors[actor_index].state = 0x22;
            }
            else {
                gActors[actor_index].state = 0x62;
            }
        }
        else {
            func_80062B4C(actor_index);
        }
        break;
    case 0x62:
        gActors[actor_index].velocityX.raw = -gActors[actor_index].var_15C;
        gActors[actor_index].velocityY.raw = 0;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            func_80062CB4(actor_index);
        }
        else {
            gActors[actor_index].state = 0x63;
        }
        break;
    case 0x63:
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityX.raw = -gActors[actor_index].var_15C;
        if (func_800629A8(actor_index) != 0) {
            if (gActors[actor_index].unk_0D8 < 0x60) {
                func_80062300(actor_index);
                gActors[actor_index].state = 0x22;
            }
            else {
                gActors[actor_index].state = 0x60;
            }
        }
        else {
            func_80062CB4(actor_index);
        }
        break;
    case 0x64:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            func_80062E1C(actor_index);
        }
        else {
            gActors[actor_index].state = 0x65;
        }
        break;
    case 0x65:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
        if (func_80062A34(actor_index) != 0) {
            if (gActors[actor_index].unk_0D8 < 0x60) {
                func_80062360(actor_index);
                gActors[actor_index].state = 0x22;
            }
            else {
                gActors[actor_index].state = 0x66;
            }
        }
        else {
            func_80062E1C(actor_index);
        }
        break;
    case 0x66:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].var_15C;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) == 0x36) {
            func_80062F84(actor_index);
        }
        else {
            gActors[actor_index].state = 0x67;
        }
        break;
    case 0x67:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].var_15C;
        if (func_80062AC0(actor_index) != 0) {
            if (gActors[actor_index].unk_0D8 < 0x60) {
                func_80062360(actor_index);
                gActors[actor_index].state = 0x22;
            }
            else {
                gActors[actor_index].state = 0x64;
            }
        }
        else {
            func_80062F84(actor_index);
        }
        break;
    case 0x23:
        func_8006275C(actor_index);
        break;
    case 0x68:
        func_8006242C(actor_index);
        func_80062624(actor_index);
        break;
    case 0x69:
        func_80062524(actor_index);
        func_80062624(actor_index);
        break;
    case 0x7C:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36) {
            gActors[actor_index].state = 0x7D;
        }
        break;
    case 0x7D:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = gActors[actor_index].var_15C;
        if (func_80062A34(actor_index) != 0) {
            func_80062360(actor_index);
            gActors[actor_index].state = 0x76;
        }
        else {
            func_80063418(actor_index);
        }
        break;
    case 0x7E:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].var_15C;
        if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) != 0x36) {
            gActors[actor_index].state = 0x7F;
        }
        break;
    case 0x7F:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = -gActors[actor_index].var_15C;
        if (func_80062AC0(actor_index) != 0) {
            func_80062360(actor_index);
            gActors[actor_index].state = 0x74;
        }
        else {
            func_800633C4(actor_index);
        }
        break;
    case 0x74:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].state = 0x75;
        }
        else {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
                (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
                (func_800486F4() == 0)) {
                gActors[actor_index].state = 0x7C;
            }
        }
        break;
    case 0x75:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if ((gActors[actor_index].var_158 != 0) &&
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
            (func_800486F4() == 0)) {
            gActors[actor_index].state = 0x7C;
        }
        else {
            func_800633C4(actor_index);
        }
        break;
    case 0x76:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (gActors[actor_index].var_158 == 0) {
            gActors[actor_index].state = 0x77;
        }
        else {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
                (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
                (func_800486F4() == 8)) {
                gActors[actor_index].state = 0x7E;
            }
        }
        break;
    case 0x77:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if ((gActors[actor_index].var_158 != 0) &&
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) &&
            (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) &&
            (func_800486F4() == 8)) {
            gActors[actor_index].state = 0x7E;
        }
        else {
            func_80063418(actor_index);
        }
        break;
    }
    gActors[actor_index].var_158 = 0;
    gActors[actor_index].flags_098 = 0;
}

void func_80063FF4(u16 actor_index) {
    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (gActors[actor_index].state != 0) {
        if (func_8003526C(actor_index, 0x8400, 0, 0, 0x67) >= 0) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
    }
}

void func_800640A0(u16 actor_index) {
    func_8002AC30(actor_index, 8);
    gActors[actor_index].graphicList = &D_800E1450;
    gActors[actor_index].graphicTimer = 1;
    func_8006CD5C(actor_index);
    gActors[actor_index].colorA = 0x50;
    gActors[actor_index].unk_114 = gActors[actor_index].scaleX / 160.0f;
    gActors[actor_index].scaleX = 0.0f;
    gActors[actor_index].scaleY = 0.0f;
    gActors[actor_index].var_150 = gActors[actor_index].timer_110;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    if (gActors[actor_index].unk_0D8 & 1) {
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index].flags = ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    }
    gActors[actor_index].posZ.whole = 8;
    gActors[actor_index].unk_178 = gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_17C = gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].state = 0x10;
}

void func_800641CC(u16 actor_index) {
    if (gActors[actor_index].var_154 != 0) {
        if (gActors[actor_index].colorA == 0xA0) {
            gActors[actor_index].var_154 = 0;
        }
        else {
            gActors[actor_index].colorA++;
        }
    }
    else {
        if (gActors[actor_index].colorA == 0x40) {
            gActors[actor_index].var_154 = 1;
        }
        else {
            gActors[actor_index].colorA--;
        }
    }
    if (gActors[actor_index].var_158 != 0) {
        if ((gActors[actor_index].unk_118 + 0.08) < gActors[actor_index].scaleY) {
            gActors[actor_index].var_158 = 0;
        }
        else {
            gActors[actor_index].scaleX -= 0.008;
            gActors[actor_index].scaleY += 0.008;
        }
    }
    else {
        if (gActors[actor_index].scaleY < (gActors[actor_index].unk_118 - 0.08)) {
            gActors[actor_index].var_158 = 1;
        }
        else {
            gActors[actor_index].scaleX += 0.008;
            gActors[actor_index].scaleY -= 0.008;
        }
    }
}

s32 func_80064328(u16 actor_index) {
    gActors[actor_index].scaleX += gActors[actor_index].unk_114 * 8.0f;
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    gActors[actor_index].unk_174 += 1;
    gActors[actor_index].colorA += 4;
    if (gActors[actor_index].colorA == 0xA0) {
        gActors[actor_index].unk_114 = gActors[actor_index].scaleX / 320.0f;
        gActors[actor_index].unk_118 = gActors[actor_index].scaleY;
        return 1;
    }
    else {
        return 0;
    }
}

void func_800643CC(u16 actor_index) {
    func_800384FC(actor_index, 0x8000, 0x800, -(Rand() & 3), (Rand() & 3));
    func_80038600(actor_index, 0x8000, 0x400, -(Rand() & 1), (Rand() & 1));
    switch (gActors[actor_index].var_15C) {
    case 0:
        if (func_80064328(actor_index) != 0) {
            gActors[actor_index].var_15C++;
        }
        break;
    case 1:
        if (gActiveFrames & 1) {
            gActors[actor_index].unk_174++;
        }
        gActors[actor_index].colorA--;
        gActors[actor_index].scaleX -= gActors[actor_index].unk_114;
        gActors[actor_index].scaleY -= gActors[actor_index].unk_114;
        if (gActors[actor_index].colorA == 0x00) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

void func_80064528(u16 actor_index) {
    func_80063FF4(actor_index);
    switch (gActors[actor_index].state) {
    case 0xFFFF:
        gActors[actor_index].colorA = 0;
        gActors[actor_index].state++;
        break;
    case 2:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].state = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_DRAW;
        }
        break;
    case 0:
        func_800640A0(actor_index);
        break;
    case 0x10:
        func_800643CC(actor_index);
        break;
    }
}

void func_800645F4(u16 actor_index) {
    func_80038C94(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80038E1C(actor_index);
        gActors[actor_index].unk_114 = D_800D2504[gActors[actor_index].unk_0D8 * 2];
        gActors[actor_index].unk_140_f32 = D_800D2504[gActors[actor_index].unk_0D8 * 2 + 1];
        /* fallthrough */
    case 1:
        func_80038704(actor_index);
        func_80038868(actor_index, gActors[actor_index].unk_114);
        break;
    }
    func_80038D1C(actor_index);
    gActors[actor_index].flags |= ACTOR_FLAG_ONSCREEN_ONLY;
}

void func_8006475C(u16 actor_index) {
    u16 index;

    func_80038C94(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80038E1C(actor_index);
        index = gActors[actor_index].unk_0D8 * 2;
        gActors[actor_index].unk_114 = D_800D2504[index + 0];
        gActors[actor_index].unk_140_f32 = D_800D2504[index + 1];
        // fallthrough
    case 1:
        func_80038704(actor_index);
        func_80038868(actor_index, gActors[actor_index].unk_114);
        break;
    }
    func_80038D1C(actor_index);
}

void func_800648C4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        if (((s32)gActors[actor_index].timer_110) & 0x8000) {
            gActors[actor_index].state = 0x10;
        }
        else {
            gActors[actor_index].var_150 = gActors[actor_index].var_154 = ((s32)gActors[actor_index].timer_110) & 0x7FFF;
            gActors[actor_index].state = 0x20;
        }
        break;
    case 16:
        if ((gActors[actor_index].posX.whole >= -0x17F) && (gActors[actor_index].posX.whole <= 0x17F) &&
            (gActors[actor_index].posY.whole >= -0xDF) && (gActors[actor_index].posY.whole <= 0xDF)) {
            Sound_PlaySfxAtActorPanning(gActors[actor_index].unk_0D8, actor_index);
            gActors[actor_index].state++;
        }
        break;
    case 17:
        if ((gActors[actor_index].posX.whole <= -0x191) || (gActors[actor_index].posX.whole >= 0x191) ||
            (gActors[actor_index].posY.whole <= -0xF1) || (gActors[actor_index].posY.whole >= 0xF1)) {
            Sound_StopSfx(gActors[actor_index].unk_0D8);
            gActors[actor_index].state--;
        }
        break;
    case 32:
        if ((gActors[actor_index].posX.whole >= -0x17F) && (gActors[actor_index].posX.whole <= 0x17F) &&
            (gActors[actor_index].posY.whole >= -0xDF) && (gActors[actor_index].posY.whole <= 0xDF)) {
            gActors[actor_index].var_154--;
            if (gActors[actor_index].var_154 == 0) {
                gActors[actor_index].var_154 = gActors[actor_index].var_150;
                Sound_PlaySfxAtActorPanning(gActors[actor_index].unk_0D8, actor_index);
            }
        }
        break;
    }
}

void func_80064AA0(u16 duration, void* arg1) {
    u16 actor_index = 0xC0;

    gActors[actor_index].actorType = 0x74;
    func_8001E2D0(actor_index);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    if (duration == 1) {
        gActors[actor_index].var_154 = 1;
    }
    else if (duration & 0x8000) {
        gActors[actor_index].var_154 = (duration & 0x7FFF) + 2;
        Sound_StartFade(0x81, duration & 0x7FFF);
        gActors[actor_index].var_15C = gMusicSequenceId;
    }
    else {
        gActors[actor_index].var_154 = duration + 2;
        Sound_StartFade(0x81, duration);
        gActors[actor_index].var_15C = 0;
    }
    gActors[actor_index].var_158 = (s32)arg1;
}

void func_80064B60(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        if (gActors[actor_index].var_154-- == 0) {
            Actor_LoadSpawnTable((void* ) gActors[actor_index].var_158);
            Sound_PlayMusic(0x1E);
            D_800BE5F4.unk_00_u32 = 0xE;
            gActors[actor_index].var_154 = 0x168;
            gActors[actor_index].state += 1;
        }
        break;
    case 1:
        if (gActors[actor_index].var_154-- == 0) {
            if (gActors[actor_index].var_15C != 0) {
                if (gCurrentScene == 0x34) {
                    if (D_800D28E4 == 1) {
                        Sound_PlayMusic(gActors[actor_index].var_15C);
                    }
                }
                else {
                    Sound_PlayMusic(gActors[actor_index].var_15C);
                }
            }
            gActors[actor_index].flags = 0;
            gStageCinemaState++;
        }
        if (gActors[actor_index].var_154 == 0x15E) {
            Sound_PlaySfx(0x136);
        }
        break;
    }
}

void func_80064CB4(u16 actor_index) {
    s32 pad0;
    u16* vals;
    u16 pad1;

    gActors[actor_index].posX.raw = gActors[actor_index + 1].posX.raw;
    gActors[actor_index].posY.raw = gActors[actor_index + 1].posY.raw;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        if (((gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index + 1].flags_098 & ACTOR_FLAG3_UNK17) && (gActors[actor_index].unk_0D8 & 0x100)) ||
            ((gActors[actor_index + 1].flags == 0) && !(gActors[actor_index].unk_0D8 & 0x100))) {
            vals = &D_800D2690[(gActors[actor_index].unk_0D8 & 0xFF) * 3];
            if ((vals[2] == 8) && (vals[0] == 0x32) && YellowGem_GetFlag(gCurrentStage)) {
                gActors[actor_index].flags = 0;
            }
            else {
                gActors[actor_index].actorType = vals[2];
                func_8001E2D0(actor_index);
                gActors[actor_index].timer_110 = vals[0];
                gActors[actor_index].unk_0D8 = vals[1];
                gActors[actor_index].posZ.whole = gActors[actor_index + 1].posZ.whole - 1;
                if (gActors[actor_index].actorType == 8) {
                    gActors[actor_index].var_150 = 0x78;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(4.0);
                    Sound_PlaySfxAtActor2(0x51, actor_index);
                }
                else {
                    Sound_PlaySfxAtActor2(0x116, actor_index);
                }
            }
        }
        break;
    }
}

void func_80064EB4(u16 actor_index) {
    if ((func_80073320(actor_index) & 0x8000) == 0) {
        func_80067E9C(actor_index);
        if (func_80029B00(0x80, 0x50, -0x50) && (D_800E3584 & 0xC0000)) {
            gActors[actor_index].state = 0x70;
        }
    }
}

void func_80064F4C(u16 actor_index) {
    s32 index;

    switch (gActors[actor_index].unk_174) {
    case 0:
        if (!(func_80073320(actor_index) & 0x8000)) {
            func_80067E9C(actor_index);
            index = gActors[actor_index].unk_0D8 & 0xF;
            if (index == 9) {
                if (func_8004089C((actor_index + 0x8000), D_800D7560[index]) == 0x800) {
                    Sound_StartFade(0x81, 0x3C);
                    gActors[actor_index].unk_174 += 1;
                    return;
                }
            }
            else if (gCurrentScene == 0x48) {
                if ((func_8004089C((actor_index + 0x8000), D_800D7560[index]) == 0x800) && (gActors[actor_index].unk_16C == 0)) {
                    gActors[actor_index].unk_16C = 1;
                    gActors[actor_index].unk_0D8 += 3;
                }
            }
            else {
                func_8004089C((actor_index + 0x8000), D_800D7560[index]);
            }
            if ((func_80029B00(0x80, 0x50, -0x50) != 0) && (D_800E3584 & 0xC0000)) {
                gActors[actor_index].state = 0x70;
            }
        }
        break;
    case 1:
        func_80064EB4(actor_index);
        if (gAudioFadeMode != 0x81) {
            gAudioFadeMode = 0;
            Sound_PlayMusic(0x1E);
            gActors[actor_index].var_150 |= 0x1000;
            D_800D2924 = D_800BE56C.whole = 0xE12;
            D_800BE5F4.unk_00_u32 = 0xE;
            gActors[actor_index].unk_174 += 1;
        }
        break;
    case 2:
        func_80064EB4(actor_index);
        break;
    }
}

void func_80065178(u16 actor_index) {
    func_8007325C(actor_index);
    switch (gActors[actor_index].state) {
    case 0x0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        func_80064F4C(actor_index);
        break;
    case 0x91:
        func_80073320(actor_index);
        break;
    }
}

void func_80065218(void) {
    D_800D5820 = 0;
    D_800D5834 = 0x100;
    if (gPortraits[0x40].posY.whole > 0) {
        func_8005DF40(-3, 0x3C);
        return;
    }
    else {
        func_8005DF40(-3, -0x2C);
    }
}

void func_80065270(u16 actor_index) {
    u16 actor_prev;

    gActors[actor_index - 1].posX.raw = gActors[actor_index].posX.raw + gActors[actor_index - 1].var_154;
    gActors[actor_index - 1].posY.raw = gActors[actor_index].posY.raw + gActors[actor_index - 1].var_158;
    switch (gActors[actor_index].state) {
    case 0:
        actor_prev = actor_index - 1;
        gActors[actor_prev].actorType = 0x1C;
        func_8001E2D0(actor_prev);
        gActors[actor_prev].timer_110 = (((s32) gActors[actor_index].timer_110 | 0x8000 | actor_index) & ~0x1000);
        gActors[actor_prev].unk_0D8 = 0;
        gActors[actor_prev].posX.whole = gActors[actor_index].posX.whole;
        gActors[actor_prev].posY.whole = gActors[actor_index].posY.whole;
        gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
        gActors[actor_index].state++;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            func_8005E09C(func_8005DF5C(1), 0x2000);
            func_80065218();
            gActors[actor_index].state++;
        }
        break;
    case 2:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) {
            func_8005DFC8(0);
            gActors[actor_index].state = 1;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            if ((gActors[actor_index].unk_0D6 == 0) && (D_801373E0.unk_12 == 0) && (D_801373E0.unk_10 == 8)) {
                SpawnParticle_RingWaveRed(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
                if (gRedGems < 0xA) {
                    Sound_PlaySfxAtActor2(0x134, actor_index);
                    func_8005E09C(func_8005DFC8(2), 0x2000);
                }
                else {
                    Sound_PlaySfxAtActor2(0x51, actor_index);
                    SpawnGemRing(0x800A);
                    func_8005DFC8(gActors[actor_index].unk_0D8 & 0xF);
                }
                func_80065218();
                func_8005C550(0, 1);
                D_800BE5F4.unk_00_u32 = 1;
                gActors[actor_index].state++;
            }
        }
        break;
    case 3:
        func_8005C550(0, 1);
        if (func_8005DEFC() == 0) {
            D_800BE5F4.unk_00_u32 = 0;
            gActors[actor_index].state += 1;
        }
        break;
    case 4:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) {
            gActors[actor_index].state = 1;
        }
        break;
    }
    if ((gActors[actor_index].unk_188 == 2) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
        Sound_PlaySfxAtActor2(0x115, actor_index);
    }
    gActors[actor_index].unk_188 = gActors[actor_index - 1].state;
    gActors[actor_index].posY.whole = (gActors[actor_index].unk_174 + D_800D26F4[(gActiveFrames / 2) & 0xF]) - gScreenPosCurrentY.whole;
    func_80032E60(actor_index - 1, 0x1070, 0x100, gActors[actor_index].scaleY * 12.0f, 1, gActors[actor_index].scaleX, gActors[actor_index].scaleY);
    gActors[actor_index].flags_098 = 0;
}
