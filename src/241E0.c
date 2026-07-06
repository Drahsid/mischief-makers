#include "common.h"
#include "actor.h"
#include "input.h"

typedef struct {
    s16 unk0;
    s16 unk2;
} Unk80201B48;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
} Unk800CC6EC; // size = 0x10

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
} Unk800CCC6C; // size = 0xA

typedef void (*Unk800CC58CFunc)(void);

extern s32 D_800C71A0; // guess
extern u16 D_800CBF5C[];
extern u8 D_800CBFFC[];
extern u16 D_800CC228[];
extern Unk800CC58CFunc D_800CC42C[];
extern Unk800CC58CFunc D_800CC58C[];
extern s16 D_800CC6EC[];
extern s16 D_800CCC6C[];
extern u8 gSceneBgm[]; // music for start os scene (0xff if none)
extern u8 D_800CD034[]; // scene properties of BG layers?
extern u8 D_800E3BC8[];
extern s8 D_800E3C48[];

extern s16 D_801373DC;
extern s16 D_801373DE;
extern s32* D_8013746C; // guess, related to type of D_800C71A0

#define D_80201B48 ((Unk80201B48*)0x80201B48)

void func_800235E0(void) {
    gCameraRot = 0;
    gCameraRotDelta = 0;
}

void func_800235F4(void) {
    s32 angle;

    gCameraRot += gCameraRotDelta;
    angle = gCameraRot / 0x10000;
    gLookatUpX = SIN(angle);
    gLookatUpY = COS(angle);
}

void func_80023668(void) {
}

void func_80023670(void) {
}

void func_80023678(void) {
    D_800BE578 = 2;
    D_800BE6FC = 1;
    D_800BE584 = -12;
}

void func_800236A0(void) {
    D_800BE580 = (gScreenPosCurrentY.whole / 6) + 0x1AE;
    D_800BE578 = gScreenPosCurrentX.whole / 4;
    D_8011D3B0[0][0] = (gActiveFrames / 6) & 0x7FFF;
    D_8011D3B0[1][0] = (gActiveFrames / 16) & 0x7FFF;
    D_8011D3B0[2][0] = (gActiveFrames / 32) & 0x7FFF;
    D_8011D3B0[4][0] = 0;
    D_8011D3B0[3][0] = D_8011D3B0[4][0];
    D_8011D3B0[5][0] = D_8011D3B0[6][0] = -1;
}

void func_80023798(void) {
    D_800BE578 = gScreenPosCurrentX.whole / 2;
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

void func_800237F0(void) {
    u16 var_a0;

    gActors[0x31].posY.whole = 320 - gScreenPosCurrentY.whole;
    if (gActiveFrames & 0x20) {
        var_a0 = (248 - (gActiveFrames & 0x1F) * 8);
    }
    else {
        var_a0 = (gActiveFrames & 0x1F) * 8;
    }
    D_800E3BC8[24] = D_800E3BC8[28] = var_a0;
    D_800BE578 = gScreenPosCurrentX.whole / 2;
    D_800BE580 = (gScreenPosCurrentY.whole / 2) - 212;
}


void func_80023894(void) {
    func_800237F0();
    D_800BE544 = 0x8000;
    D_800BE548.raw = 0x80000;
    if (D_800BE634 != 0) {
        gScreenPosTargetX.raw = gPlayerPosX.raw - 0x600000;
        if (gPlayerPosX.whole < 0xB98) {
            D_800BE634 = 0;
        }
    }
    else {
        gScreenPosTargetX.raw = gPlayerPosX.raw + 0x600000;
        if (gPlayerPosX.whole >= 0xF89) {
            D_800BE634 = 1;
        }
    }
}

void func_80023948(void) {
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
}

void func_80023968(void) {
    gActors[0x31].posY.whole = 320 - gScreenPosCurrentY.whole;
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw + 0x400000;
        gScreenPosTargetY.raw = gPlayerPosY.raw;
        D_800BE578 = gScreenPosCurrentX.whole / 2;
        D_800BE580 = (gScreenPosCurrentY.whole / 2) - 212;
    }
}

void func_80023A08(void) {
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
    D_800BE70C = 2;
}

void func_80023A34(void) {
    func_800237F0();
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw + 0x200000;
        gScreenPosTargetY.raw = gPlayerPosY.raw;
        D_800BE704 = 1;
    }
}

void func_80023AA4(void) {
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    D_800CA230 = 1;
}

void func_80023AC4(void) {
}

void func_80023ACC(void) {
    D_800BE57C = 0;
    D_800BE584 = 0;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    D_800CA230 = 1;
}

void func_80023AFC(void) {
    if (gButtonHold & gButton_DLeft) {
        D_80201B48->unk0--;
    }
    if (gButtonHold & gButton_DRight) {
        D_80201B48->unk0++;
    }
    if (gButtonHold & gButton_DDown) {
        D_80201B48->unk2--;
    }
    if (gButtonHold & gButton_DUp) {
        D_80201B48->unk2++;
    }
}

void func_80023BC0(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    D_800CA230 = 1;
}

void func_80023BF8(void) {
}

void func_80023C00(void) {
    D_800BE578 = 2;
    D_800BE57C = 2;
}

void func_80023C18(void) {
    u16 index;

    D_800BE580 = ((gScreenPosCurrentY.whole * 5) / 4) + D_800D2934;
    D_800BE584 = gScreenPosCurrentY.whole - 104;
    gScreenPosCurrentX.whole = 402;
    gScreenPosTargetX.whole = 402;
    D_800BE568.whole = 0x102;
    D_800BE56C.whole = 0x222;
    if (gActiveFrames & 1) {
        for (index = 0; index < 0x2C; index++) {
            PALETTE_80380400[D_800CBFFC[index]] = D_800CBF5C[D_800CBFFC[index] - 0x90];
        }
    }
    else {
        for (index = 0; index < 0x2C; index++) {
            PALETTE_80380400[D_800CBFFC[index]] = (D_800CBF5C[D_800CBFFC[index] - 0x90] & 0xFFFF) | 0xFFC1;
        }
    }
}


void func_80023D48(void) {
    D_800BE544 = 48;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80023D70(void) {
    D_800BE578 = gScreenPosCurrentX.whole;
    D_800BE580 = gScreenPosCurrentY.whole + 96;
}

void func_80023D98(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
}

void func_80023DB4(void) {
}

void func_80023DBC(void) {
    D_800BE544 = 48;
    D_800BE57C = 2;
    D_800BE584 = -12;
    D_800BE674 = 1;
}

void func_80023DF0(void) {
}

void func_80023DF8(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
}

void func_80023E14(void) {
}

void func_80023E1C(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80023E38(void) {
}

void func_80023E40(void) {
}

void func_80023E48(void) {
    D_800BE73C = (gScreenPosCurrentX.whole - gScreenPosNextX.whole) << 0x10;
}

void func_80023E6C(void) {
}

void func_80023E74(void) {
    D_800BE73C = (gScreenPosCurrentX.whole - gScreenPosNextX.whole) << 0x10;
}

void func_80023E98(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80023EB4(void) {
    func_80023E98();
    D_800BE674 = 1;
}

void func_80023EDC(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
            gScreenPosTargetX.raw = gPlayerPosX.raw - 0x300000;
        }
        else {
            gScreenPosTargetX.raw = gPlayerPosX.raw + 0x300000;
        }
        gScreenPosTargetY.raw = gPlayerPosY.raw + 0x280000;
    }
}

void func_80023F5C(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw;
        if ((gPlayerActor.parentIndex == 0x31) && (gActors[0x30].actorType == 0x907) && (gActors[0x32].unk_180 & 0x8000)) {
            gScreenPosTargetY.raw = gActors[0x30].posY.raw + gScreenPosCurrentY.raw + 0x180000;
        }
        else {
            gScreenPosTargetY.raw = gPlayerPosY.raw + 0x280000;
        }
    }
}

void func_80024004(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        if (gStageState < 3) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + 0x280000;
        }
        else {
            gScreenPosTargetY.raw = gPlayerPosY.raw;
        }
        gScreenPosTargetX.raw = gPlayerPosX.raw;
    }
}

void func_80024074(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE708 = 1;
    D_800BE710 = 1;
    D_800BE71C = 0x01000000;
    D_800BE720 = 0;
    D_800BE724 = 0x01C00000;
    D_800BE728 = 0xFFFF0000;
    gCameraRot = 0;
    gCameraRotDelta = 0;
    D_800BE638 = 0;
}

void func_800240E8(void) {
    switch (D_800BE638) {
    case 0:
        D_800BE728 += 0x400;
        if (D_800BE728 == 0x18000) {
            D_800BE638++;
        }
        break;
    case 1:
        D_800BE728 -= 0x400;
        if (D_800BE728 == -0x18000) {
            D_800BE638--;
        }
        break;
    }

    switch (D_800BE634) {
    case 0:
        D_800BE720 = (0x100000 - D_800BE71C) / 16;
        if (D_800BE720 > 0x80000) {
            D_800BE720 = 0x20000;
        }
        if (D_800BE71C < 0x600000) {
            Sound_PlaySfx(0x122);
            D_800BE634 += 1;
        }
        break;
    case 1:
        D_800BE720 = (0x100000 - D_800BE71C) / 16;
        if (D_800BE720 > 0x80000) {
            D_800BE720 = 0x20000;
        }
        if (D_800BE71C < 0x120000) {
            D_800BE720 = 0;
            D_800BE71C = 0x100000;
            gCameraRotDelta = 0xC000;
            D_800BE634 += 1;
        }
        break;
    case 2:
        gCameraRotDelta -= 0x200;
        if (gCameraRotDelta == 0) {
            Sound_PlaySfx(0x122);
        }
        else if (gCameraRotDelta == -0xC000) {
            D_800BE634 += 1;
        }
        break;
    case 3:
        gCameraRotDelta += 0x200;
        if (gCameraRotDelta == 0) {
            Sound_PlaySfx(0x122);
        }
        else if (gCameraRotDelta == 0xC000) {
            D_800BE634 -= 1;
        }
        break;
    default:
        break;
    }
    D_800BE71C += D_800BE720;
    gLookatEyeY = (f32) (D_800BE71C / 0x10000);
    D_800BE724 += D_800BE728;
    gLookatEyeZ = (f32) (D_800BE724 / 0x10000);
}

void func_80024428(void) {
    s32 angle;

    func_800240E8();
    func_800235F4();
    angle = gCameraRot / 0x10000;
    D_800E3C48[0x10] = SIN(angle + COSPiOver4) * 128.0f;
    D_800E3C48[0x11] = COS(angle + COSPiOver4) * 128.0f;
}

void func_800244F8(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    gCameraRot = 0;
}

void func_80024528(void) {
    s32 angle;

    angle = gCameraRot / 0x10000;
    gLookatUpX = SIN(angle);
    gLookatUpY = COS(angle);
}

void func_80024584(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
}

void func_800245AC(void) {
}

void func_800245B4(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
    D_800BE57C = 2;
    D_800BE584 = -12;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
}

void func_800245F0(void) {
}

void func_800245F8(void) {
}

void func_80024600(void) {
    D_800BE73C = (gScreenPosCurrentX.whole - gScreenPosNextX.whole) << 0x10;
}

void func_80024624(void) {
    D_800BE588 = 2;
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = 1;
    func_800235E0();
}

void func_80024668(void) {
    s16 var_v0;
    s16 var_v1;

    func_800235F4();
    D_800BE73C = (gScreenPosCurrentX.whole - gScreenPosNextX.whole) << 0x10;
    var_v0 = gScreenPosCurrentX.whole / 1.55;
    var_v1 = gScreenPosTargetX.whole / 1.55;
    if (var_v0 < 0x200) {
        var_v0 += 0x200;
        gScreenPosCurrentX.whole = (var_v0 * 1.55);
        var_v1 += 0x200;
        gScreenPosTargetX.whole = (var_v1 * 1.55);
    }
    if (var_v0 > 0x400) {
        var_v0 -= 0x200;
        gScreenPosCurrentX.whole = (var_v0 * 1.55);
        var_v1 -= 0x200;
        gScreenPosTargetX.whole = (var_v1 * 1.55);
    }
}

void func_80024854(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = FALSE;
}

void func_8002488C(void) {
    D_800BE734 += D_800BE73C / 4;
    D_800BE578 = D_800BE734 / 0x10000;
    D_800BE580 = (gScreenPosCurrentY.whole / 1.55) - 422.0;
    D_800BE738 += D_800BE73C / 8;
    D_800BE57C = D_800BE738 / 0x10000;
    D_800BE584 = (gScreenPosCurrentY.whole / 1.55) - 326.0;
}

void func_800249B8(void) {
    s32 temp_f10;

    switch (D_800BE634) {
    case 0:
        temp_f10 = gScreenPosCurrentX.raw / 1.55;
        if ((D_800CC428) && (temp_f10 > 0x06000000)) {
            D_800CC428 = FALSE;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x12000000;
            gScreenPosCurrentX.whole = (temp_f10 * 1.55) / 65536.0;
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
            D_800BE634 += 1;
        }
        else if (temp_f10 > 0x10000000) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x08000000;
            gScreenPosCurrentX.whole = (temp_f10 * 1.55) / 65536.0;
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
        }
        else {
            gScreenPosTargetX.raw += D_800BE73C;
        }
        break;
    case 1:
        temp_f10 = gScreenPosCurrentX.raw / 1.55;
        if ((D_800CC428) && (temp_f10 > 0x16000000)) {
            gDrawEnvLayer = TRUE;
            gDrawBackground = TRUE;
            D_800CC428 = FALSE;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x02000000;
            gScreenPosCurrentX.whole = (temp_f10 * 1.55) / 65536.0;
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
            D_800BE634 -= 1;
        }
        else if (temp_f10 >= 0x20000001) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x18000000;
            gScreenPosCurrentX.whole = (temp_f10 * 1.55) / 65536.0;
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
        }
        else {
            gScreenPosTargetX.raw += D_800BE73C;
        }

        if (gScreenPosCurrentX.whole > 0x20C0) {
            gDrawEnvLayer = FALSE;
            gDrawBackground = FALSE;
        }
        break;
    }
    func_8002488C();
}

void func_80024D5C(void) {
    D_800BE588 = 3;
}

void func_80024D6C(void) {
    D_800BE73C = (gScreenPosCurrentX.whole - gScreenPosNextX.whole) << 0x10;
    func_8002488C();
}

void func_80024DA8(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

void func_80024DD8(void) {
    u16 index;
    u16* src;
    u16* dest;

    dest = PALETTE_80380400;
    src = D_800CC228;
    for (index = 0; index < 0x100; index++) {
        *dest++ = *src++;
    }
}

void func_80024E18(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = (s32*)PALETTE_80380400, dest = (s32*)PALETTE_803DA600; index < 0x80; index++) {
        *dest++ = *src++;
    }
    Palette_AdjustScenePalettes(1, 2, 0, 0, 1, 2, 2, 1, 0);
}

void func_80024EA0(void) {
    switch (D_800BE634) {
    case 0:
        gScreenPosTargetY.raw += 0x319A;
        if (gScreenPosCurrentY.whole > 0x2E0) {
            gActors[0x91].flags = 0;
            gActors[0x90].flags = 0;
            D_800BE634 += 1;
        }
        break;
    case 1:
        gScreenPosTargetY.raw += 0x319A;
        if (gScreenPosCurrentY.whole > 0x3A8) {
            func_80024DD8();
            func_80024E18();
            gDrawMidground = FALSE;
            D_800BE634 += 1;
        }
        break;
    case 2:
        gScreenPosTargetY.raw += 0x319A;
        D_800BE738 += 0x20000;
        if (gScreenPosCurrentY.whole > 0x4B0) {
            gDrawEnvLayer = FALSE;
            D_800BE634 += 1;
        }
        break;
    case 3:
        D_800BE738 += 0x20000;
        break;
    }
    if (gScreenPosCurrentX.whole < 0x1900) {
        D_800BE73C = 0x18CCD;
        gScreenPosTargetX.raw += D_800BE73C;
    }
    else {
        D_800BE73C = (-gScreenPosCurrentX.whole * 0x27A) + 0x3F7640;
        gScreenPosTargetX.raw += D_800BE73C;
    }
    func_8002488C();
}

void func_80025084(void) {
}

void func_8002508C(void) {
}

void func_80025094(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -76;
    D_8013746C = &D_800C71A0;
    if (gCurrentScene != SCENE_TRAPPED) {
        gLookatEyeX = -128.0f;
        gLookatEyeY = 128.0f;
    }
    func_800235E0();
}

void func_80025114(void) {
    func_800235F4();
    if (gActiveFrames & 1) {
        D_800BE57C += 1;
    }
}

void func_8002515C(void) {
    D_800BE580 = -24;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80025184(void) {
    D_800BE578 = (gScreenPosCurrentX.whole / 4) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void func_800251CC(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_800251E8(void) {
    D_800BE578 = ((gScreenPosCurrentX.whole / 4) & 0x1FF) + 0x80;
    D_800BE580 = (gScreenPosCurrentY.whole / 4) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void func_80025254(void) {
    D_800BE578 = (gScreenPosCurrentX.whole / 2) & 0x1FF;
    D_800BE580 = (gScreenPosCurrentY.whole / 2) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void func_800252BC(void) {
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = 2;
    func_800235E0();
}

void func_800252F8(void) {
    func_800235F4();
    if (gLetterboxMode == 2) {
        if (gScreenPosCurrentY.whole < 0x100) {
            gScreenPosCurrentY.whole += 0x400;
            gScreenPosTargetY.whole += 0x400;
        }
        if (gScreenPosCurrentY.whole > 0x500) {
            gScreenPosCurrentY.whole -= 0x400;
            gScreenPosTargetY.whole -= 0x400;
        }
    }
}

void func_80025380(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
    D_800BE70C = 4;
}

void func_800253A8(void) {
}

void func_800253B0(void) {
    if (D_800D28E4 < 0x59) {
        switch (D_800D16C4[0]) {
        case 1:
            if (gLifebar.posY.whole > 0) {
                if (gLifebar.posY.whole >= 0xA0) {
                    gLifebarHead.posY.whole = 0xA0;
                    gLifebar.posY.whole = gLifebarHead.posY.whole;
                    D_800D16C4[0] = 2;
                }
                else {
                    gLifebar.posY.whole = gLifebar.posY.whole + 8;
                    gLifebarHead.posY.whole = gLifebarHead.posY.whole + 8;
                }
            }
            else if (gLifebar.posY.whole < -0x9F) {
                gLifebarHead.posY.whole = -0xA0;
                gLifebar.posY.whole = gLifebarHead.posY.whole;
                D_800D16C4[0] = 2;
            }
            else {
                gLifebar.posY.whole = gLifebar.posY.whole - 8;
                gLifebarHead.posY.whole = gLifebarHead.posY.whole - 8;
            }
            /* fallthrough */
        case 2:
            if (func_8005DEFC() == 0) {
                D_800D16C4[0] = 3;
            }
            break;
        case 3:
            if (gLifebar.posY.whole > 0) {
                if (gLifebar.posY.whole < 0x51) {
                    gLifebarHead.posY.whole = 0x50;
                    gLifebar.posY.whole = gLifebarHead.posY.whole;
                    D_800D16C4[0] = 0;
                }
                else {
                    gLifebar.posY.whole = gLifebar.posY.whole - 8;
                    gLifebarHead.posY.whole = gLifebarHead.posY.whole - 8;
                }
            }
            else if (gLifebar.posY.whole >= -0x58) {
                gLifebarHead.posY.whole = -0x58;
                gLifebar.posY.whole = gLifebarHead.posY.whole;
                D_800D16C4[0] = 0;
            }
            else {
                gLifebar.posY.whole = gLifebar.posY.whole + 8;
                gLifebarHead.posY.whole = gLifebarHead.posY.whole + 8;
            }
            /* fallthrough */
        case 0:
            if (func_8005DEFC() != 0) {
                D_800D16C4[0] = 1;
            }
            break;
        }
    }
    D_800CC58C[gCurrentScene]();
}

void func_80025578(void) {
    if (gSceneBgm[gCurrentScene] != 0xff) {
        Sound_PlayMusic(gSceneBgm[gCurrentScene]);
    }
}

void func_800255B4(u16 scene) {
    D_800D16C4[0] = 0;
    D_800BE6A8 = 0;
    D_800BE710 = 0;
    gScreenPosTargetX.raw = 0;
    gScreenPosCurrentX.raw = 0;
    D_800BE568.whole = D_800CC6EC[scene * 8];
    D_800BE56C.whole = D_800CC6EC[scene * 8 + 1];
    D_800BE574.whole = D_800CC6EC[scene * 8 + 2];
    D_800BE570.whole = D_800CC6EC[scene * 8 + 3];
    gScreenPosCurrentX.whole = D_800CC6EC[scene * 8 + 4];
    gActors->posX.whole = D_800CC6EC[scene * 8 + 5];
    gScreenPosNextX.whole = gScreenPosCurrentX.whole;
    gScreenPosTargetX.whole = gScreenPosCurrentX.whole;
    gPlayerPosX.whole = gScreenPosCurrentX.whole + gActors->posX.whole;
    gScreenPosCurrentY.whole = D_800CC6EC[scene * 8 + 6];
    gActors->posY.whole = D_800CC6EC[scene * 8 + 7];
    gScreenPosNextY.whole = gScreenPosCurrentY.whole;
    gScreenPosTargetY.whole = gScreenPosCurrentY.whole;
    gPlayerPosY.whole = gScreenPosCurrentY.whole + gActors->posY.whole;
    D_800BE61C = 0;
    D_800BE620 = 0;
    gScreenXLock = 0;
    gScreenYLock = 0;
    D_800BE704 = 0x10;
    D_800BE708 = 4;
    D_800BE588 = 0;
    D_800BE58C = 0;
    D_800BE544 = 0;
    D_800BE548.raw = FIXED_UNIT(16.0);
    D_800BE54C.raw = FIXED_UNIT(16.0);
    D_800BE734 = 0;
    D_800BE738 = 0;
    D_800BE73C = 0;
    D_800BE654 = D_800CCC6C[scene * 5 + 0];
    D_800BE644 = 4 << D_800BE654;
    D_800BE648 = 0x4000 >> D_800BE654;
    D_800BE64C = 0x7FF >> (6 - D_800BE654);
    D_800BE650 = 0x3FFF - D_800BE64C;
    D_800BE660 = D_800BE654 + 2;
    D_800BE658 = 0xFFF >> (6 - D_800BE654);
    D_800BE65C = 0xFFFF - D_800BE658;
    D_800BE6DC = 0;
    D_800BE6E0 = 0;
    D_800BE664 = D_800CCC6C[scene * 5 + 1];
    gActorDepthFront = -8;
    gActorDepthMiddle = D_800CCC6C[scene * 5 + 2];
    gActorDepthBack = D_800CCC6C[scene * 5 + 3];
    D_801373DC = 0x10;
    D_801373DE = 0;
    func_8008BFB0();
    gLifebar.flags = PORTRAIT_GFLAG_UNK1;
    gLifebar.graphicIndex = GINDEX_LIFEBAR;
    gLifebar.posX.whole = -0x4C;
    gLifebar.posY.whole = 0xA0;
    gLifebar.alpha = 0xFF;
    gLifebarHead.flags = PORTRAIT_GFLAG_UNK1;
    gLifebarHead.graphicIndex = GINDEX_LIFEHEADBLINK;
    gLifebarHead.posX.whole = -0x7C;
    gLifebarHead.posY.whole = 0x80;
    D_800CA230 = 0;
    gLetterboxMode = LETTERBOX_DEFAULT;
    D_800BE70C = 0;

    switch (D_800CD034[scene]) {
    case 0:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380200;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 1:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 2:
        D_8013769C = PALETTE_80380400;
        D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 3:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380000;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 4:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380200;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 5:
        D_801376A0 = PALETTE_80380200;
        gDrawMidground = FALSE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 6:
        D_8013769C = PALETTE_80380200;
        gDrawMidground = TRUE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        break;
    case 7:
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        break;
    case 8:
        D_8013769C = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = TRUE;
        break;
    case 9:
        D_801376A0 = PALETTE_80380200;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = FALSE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 10:
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = TRUE;
        break;
    }
    D_800BE634 = 0;
    D_800CC42C[scene]();
    D_800CC58C[scene]();
}

void func_80025B7C(void) {
    func_8002694C(gCurrentScene);
    func_80026A18(gCurrentScene);
    func_80026B04(gCurrentScene);
    func_80026BD0(gCurrentScene);
    func_80026874(gCurrentScene);
    func_80026C9C(gCurrentScene);
    func_8002729C(gCurrentScene);
    func_80025E00();
}

void func_80025BFC(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = (s32*)PALETTE_80380000, dest = (s32*)PALETTE_803DA200; index < 0x180; index++) {
        *dest++ = *src++;
    }
}

void func_80025C38(void) {
    func_800255B4(gCurrentScene);
    func_80025EC4(gCurrentScene);
    func_80025F70(gCurrentScene);
    func_8002601C(gCurrentScene);
    func_800260C8(gCurrentScene);
    func_80026174(gCurrentScene);
    func_80026584(gCurrentScene);
    func_800265FC(gCurrentScene);
    func_8002670C(gCurrentScene);
    func_80026784(gCurrentScene);
    func_800267FC(gCurrentScene);
    func_8005DE30();
    func_8002653C();

    if (gCurrentScene == SCENE_ASTERSTRYKE || gCurrentScene == SCENE_TAURUS || ((gCurrentScene >= 0x2E) && (gCurrentScene < 0x34))) {
        func_80026220(0x17);
        func_80026428(0x18);
    }
    else if ((gCurrentScene == SCENE_DEMOWORLD1) || (gCurrentScene == SCENE_DEMOWORLD5) || (gCurrentScene == SCENE_ENDING)) {
        func_80026220(0x43);
        func_80026494(0xE, 0);
        D_801376A4 = PALETTE_80380400;
    }
    else {
        func_80026220(gCurrentScene);
    }

    if ((gCurrentScene == SCENE_TRAPPED) || (gCurrentScene == SCENE_MERCO) || (gCurrentScene == SCENE_UNK86)) {
        func_80024DD8();
    }
    func_80025BFC();
    func_80025B7C();
    D_800CC42C[gCurrentScene]();
    D_800CC58C[gCurrentScene]();
    func_80025578();
}
