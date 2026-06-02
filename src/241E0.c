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

extern s16 D_800BE57C;
extern s16 D_800BE584;
extern u16 D_800BE588;
extern s16 D_800BE58C;
extern f32 D_800BE5C0;
extern f32 D_800BE5C4;
extern s32 D_800BE61C;
extern s32 D_800BE620;
extern s16 D_800BE62C;
extern s16 D_800BE630;
extern s16 D_800BE644;
extern u16 D_800BE64C;
extern u16 D_800BE650;
extern u16 D_800BE654;
extern s16 D_800BE664;
extern s32 D_800BE6C0;
extern s32 D_800BE6DC;
extern s32 D_800BE6E0;
extern u16 D_800BE634;
extern u16 D_800BE638;
extern s16 D_800BE6FC;
extern s8 D_800BE70C;
extern s32 D_800BE71C;
extern s32 D_800BE720;
extern s32 D_800BE724;
extern s32 D_800BE728;
extern s32 D_800BE72C;
extern s32 D_800BE730;
extern s32 D_800BE734;
extern s32 D_800BE738;

extern s32 D_800C71A0; // guess
extern u16 D_800CBF5C[];
extern u8 D_800CBFFC[];
extern u16 D_800CC228[];
extern Unk800CC58CFunc D_800CC42C[];
extern Unk800CC58CFunc D_800CC58C[];
extern Unk800CC6EC D_800CC6EC[];
extern Unk800CCC6C D_800CCC6C[];
extern u8 D_800CCFDC[];
extern u8 D_800CD034[];
extern u8 D_800E3BC8[];
extern s8 D_800E3C48[];

extern Unk80104098 D_80104098[];
extern s16 D_8011D3B0[];
extern s16 D_801373DC;
extern s16 D_801373DE;
extern s32* D_8013746C; // guess, related to type of D_800C71A0
extern s32 D_8013769C;
extern s32 D_801376A0;
extern s32 D_801376A4;

#define D_80201B48 ((Unk80201B48*)0x80201B48)
#define D_80380000 ((s32*)0x80380000)
#define D_80380400 ((u16*)0x80380400)
#define D_803DA200 ((s32*)0x803DA200)

void func_800235E0(void) {
    D_800BE72C = 0;
    D_800BE730 = 0;
}

void func_800235F4(void) {
    s32 angle;

    D_800BE72C += D_800BE730;
    angle = D_800BE72C / 0x10000;
    D_800BE5C0 = SIN(angle);
    D_800BE5C4 = COS(angle);
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
    D_800BE580 = (D_800BE55C.whole / 6) + 0x1AE;
    D_800BE578 = D_800BE558.whole / 4;
    D_8011D3B0[0] = (D_800BE4E0 / 6) & 0x7FFF;
    D_8011D3B0[2] = (D_800BE4E0 / 16) & 0x7FFF;
    D_8011D3B0[4] = (D_800BE4E0 / 32) & 0x7FFF;
    D_8011D3B0[8] = 0;
    D_8011D3B0[6] = D_8011D3B0[8];
    D_8011D3B0[10] = D_8011D3B0[12] = -1;
}

void func_80023798(void) {
    D_800BE578 = D_800BE558.whole / 2;
    D_800BE580 = -12;
    D_800BE5AC = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

void func_800237F0(void) {
    u16 var_a0;

    gActors[0x31].posY.whole = 320 - D_800BE55C.whole;
    if (D_800BE4E0 & 0x20) {
        var_a0 = (248 - (D_800BE4E0 & 0x1F) * 8);
    }
    else {
        var_a0 = (D_800BE4E0 & 0x1F) * 8;
    }
    D_800E3BC8[24] = D_800E3BC8[28] = var_a0;
    D_800BE578 = D_800BE558.whole / 2;
    D_800BE580 = (D_800BE55C.whole / 2) - 212;
}


void func_80023894(void) {
    func_800237F0();
    D_800BE544 = 0x8000;
    D_800BE548 = 0x80000;
    if (D_800BE634 != 0) {
        D_800BE550.raw = D_800BE5D8.raw - 0x600000;
        if (D_800BE5D8.whole < 0xB98) {
            D_800BE634 = 0;
        }
    }
    else {
        D_800BE550.raw = D_800BE5D8.raw + 0x600000;
        if (D_800BE5D8.whole >= 0xF89) {
            D_800BE634 = 1;
        }
    }
}

void func_80023948(void) {
    D_800BE580 = -12;
    D_800BE5AC = 32.0f;
}

void func_80023968(void) {
    gActors[0x31].posY.whole = 320 - D_800BE55C.whole;
    if (!(gDebugBitfield & 0xA400)) {
        D_800BE544 = 0x8000;
        D_800BE550.raw = D_800BE5D8.raw + 0x400000;
        D_800BE554.raw = D_800BE5DC.raw;
        D_800BE578 = D_800BE558.whole / 2;
        D_800BE580 = (D_800BE55C.whole / 2) - 212;
    }
}

void func_80023A08(void) {
    D_800BE580 = -12;
    D_800BE5AC = 32.0f;
    D_800BE70C = 2;
}

void func_80023A34(void) {
    func_800237F0();
    if (!(gDebugBitfield & 0xA400)) {
        D_800BE544 = 0x8000;
        D_800BE550.raw = D_800BE5D8.raw + 0x200000;
        D_800BE554.raw = D_800BE5DC.raw;
        D_800BE704 = 1;
    }
}

void func_80023AA4(void) {
    D_80104098[0x40].unk_80 = 0;
    D_80104098[0x41].unk_80 = 0;
    D_800CA230 = 1;
}

void func_80023AC4(void) {
}

void func_80023ACC(void) {
    D_800BE57C = 0;
    D_800BE584 = 0;
    D_80104098[0x40].unk_80 = 0;
    D_80104098[0x41].unk_80 = 0;
    D_800CA230 = 1;
}

void func_80023AFC(void) {
    if (gButtonHold & D_800BE50C) {
        D_80201B48->unk0--;
    }
    if (gButtonHold & D_800BE510) {
        D_80201B48->unk0++;
    }
    if (gButtonHold & D_800BE508) {
        D_80201B48->unk2--;
    }
    if (gButtonHold & D_800BE504) {
        D_80201B48->unk2++;
    }
}

void func_80023BC0(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
    D_80104098[0x40].unk_80 = 0;
    D_80104098[0x41].unk_80 = 0;
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

    D_800BE580 = ((D_800BE55C.whole * 5) / 4) + D_800D2934;
    D_800BE584 = D_800BE55C.whole - 104;
    D_800BE558.whole = 402;
    D_800BE550.whole = 402;
    D_800BE568 = 0x102;
    D_800BE56C = 0x222;
    if (D_800BE4E0 & 1) {
        for (index = 0; index < 0x2C; index++) {
            D_80380400[D_800CBFFC[index]] = D_800CBF5C[D_800CBFFC[index] - 0x90];
        }
    }
    else {
        for (index = 0; index < 0x2C; index++) {
            D_80380400[D_800CBFFC[index]] = (D_800CBF5C[D_800CBFFC[index] - 0x90] & 0xFFFF) | 0xFFC1;
        }
    }
}


void func_80023D48(void) {
    D_800BE544 = 48;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80023D70(void) {
    D_800BE578 = D_800BE558.whole;
    D_800BE580 = D_800BE55C.whole + 96;
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
    D_800BE73C = (D_800BE558.whole - D_800BE560.whole) << 0x10;
}

void func_80023E6C(void) {
}

void func_80023E74(void) {
    D_800BE73C = (D_800BE558.whole - D_800BE560.whole) << 0x10;
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
    if (!(gDebugBitfield & 0xA400)) {
        D_800BE544 = 0x8000;
        if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
            D_800BE550.raw = D_800BE5D8.raw - 0x300000;
        }
        else {
            D_800BE550.raw = D_800BE5D8.raw + 0x300000;
        }
        D_800BE554.raw = D_800BE5DC.raw + 0x280000;
    }
}

void func_80023F5C(void) {
    if (!(gDebugBitfield & 0xA400)) {
        D_800BE544 = 0x8000;
        D_800BE550.raw = D_800BE5D8.raw;
        if ((gActors[0].unk_0D6 == 0x31) && (gActors[0x30].actorType == 0x907) && (gActors[0x32].unk_180 & 0x8000)) {
            D_800BE554.raw = gActors[0x30].posY.raw + D_800BE55C.raw + 0x180000;
        }
        else {
            D_800BE554.raw = D_800BE5DC.raw + 0x280000;
        }
    }
}

void func_80024004(void) {
    if (!(gDebugBitfield & 0xA400)) {
        D_800BE544 = 0x8000;
        if (D_800D28E8 < 3) {
            D_800BE554.raw = D_800BE5DC.raw + 0x280000;
        }
        else {
            D_800BE554.raw = D_800BE5DC.raw;
        }
        D_800BE550.raw = D_800BE5D8.raw;
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
    D_800BE72C = 0;
    D_800BE730 = 0;
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
            D_800BE730 = 0xC000;
            D_800BE634 += 1;
        }
        break;
    case 2:
        D_800BE730 -= 0x200;
        if (D_800BE730 == 0) {
            Sound_PlaySfx(0x122);
        }
        else if (D_800BE730 == -0xC000) {
            D_800BE634 += 1;
        }
        break;
    case 3:
        D_800BE730 += 0x200;
        if (D_800BE730 == 0) {
            Sound_PlaySfx(0x122);
        }
        else if (D_800BE730 == 0xC000) {
            D_800BE634 -= 1;
        }
        break;
    default:
        break;
    }
    D_800BE71C += D_800BE720;
    D_800BE5AC = (f32) (D_800BE71C / 0x10000);
    D_800BE724 += D_800BE728;
    D_800BE5B0 = (f32) (D_800BE724 / 0x10000);
}

void func_80024428(void) {
    s32 angle;

    func_800240E8();
    func_800235F4();
    angle = D_800BE72C / 0x10000;
    D_800E3C48[0x10] = SIN(angle + COSPiOver4) * 128.0f;
    D_800E3C48[0x11] = COS(angle + COSPiOver4) * 128.0f;
}

void func_800244F8(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    D_800BE72C = 0;
}

void func_80024528(void) {
    s32 angle;

    angle = D_800BE72C / 0x10000;
    D_800BE5C0 = SIN(angle);
    D_800BE5C4 = COS(angle);
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
    D_80104098[0x40].unk_80 = 0;
    D_80104098[0x41].unk_80 = 0;
}

void func_800245F0(void) {
}

void func_800245F8(void) {
}

void func_80024600(void) {
    D_800BE73C = (D_800BE558.whole - D_800BE560.whole) << 0x10;
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
    D_800BE73C = (D_800BE558.whole - D_800BE560.whole) << 0x10;
    var_v0 = D_800BE558.whole / 1.55;
    var_v1 = D_800BE550.whole / 1.55;
    if (var_v0 < 0x200) {
        var_v0 += 0x200;
        D_800BE558.whole = (var_v0 * 1.55);
        var_v1 += 0x200;
        D_800BE550.whole = (var_v1 * 1.55);
    }
    if (var_v0 > 0x400) {
        var_v0 -= 0x200;
        D_800BE558.whole = (var_v0 * 1.55);
        var_v1 -= 0x200;
        D_800BE550.whole = (var_v1 * 1.55);
    }
}

void func_80024854(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = 0;
}

void func_8002488C(void) {
    D_800BE734 += D_800BE73C / 4;
    D_800BE578 = D_800BE734 / 0x10000;
    D_800BE580 = (D_800BE55C.whole / 1.55) - 422.0;
    D_800BE738 += D_800BE73C / 8;
    D_800BE57C = D_800BE738 / 0x10000;
    D_800BE584 = (D_800BE55C.whole / 1.55) - 326.0;
}

void func_800249B8(void) {
    s32 temp_f10;

    switch (D_800BE634) {
    case 0:
        temp_f10 = D_800BE558.raw / 1.55;
        if ((D_800CC428 != 0) && (temp_f10 > 0x06000000)) {
            D_800CC428 = 0;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x12000000;
            D_800BE558.whole = (temp_f10 * 1.55) / 65536.0;
            D_800BE550.raw = D_800BE558.raw + D_800BE73C;
            D_800BE634 += 1;
        }
        else if (temp_f10 > 0x10000000) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x08000000;
            D_800BE558.whole = (temp_f10 * 1.55) / 65536.0;
            D_800BE550.raw = D_800BE558.raw + D_800BE73C;
        }
        else {
            D_800BE550.raw += D_800BE73C;
        }
        break;
    case 1:
        temp_f10 = D_800BE558.raw / 1.55;
        if ((D_800CC428 != 0) && (temp_f10 > 0x16000000)) {
            D_800BE6E8 = 1;
            D_800BE6EC = 1;
            D_800CC428 = 0;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x02000000;
            D_800BE558.whole = (temp_f10 * 1.55) / 65536.0;
            D_800BE550.raw = D_800BE558.raw + D_800BE73C;
            D_800BE634 -= 1;
        }
        else if (temp_f10 >= 0x20000001) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x18000000;
            D_800BE558.whole = (temp_f10 * 1.55) / 65536.0;
            D_800BE550.raw = D_800BE558.raw + D_800BE73C;
        }
        else {
            D_800BE550.raw += D_800BE73C;
        }

        if (D_800BE558.whole > 0x20C0) {
            D_800BE6E8 = 0;
            D_800BE6EC = 0;
        }
        break;
    }
    func_8002488C();
}

void func_80024D5C(void) {
    D_800BE588 = 3;
}

void func_80024D6C(void) {
    D_800BE73C = (D_800BE558.whole - D_800BE560.whole) << 0x10;
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

    dest = D_80380400;
    src = D_800CC228;
    for (index = 0; index < 0x100; index++) {
        *dest++ = *src++;
    }
}

void func_80024E18(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = (s32*)0x80380400, dest = (s32*)0x803DA600; index < 0x80; index++) {
        *dest++ = *src++;
    }
    Palette_AdjustScenePalettes(1, 2, 0, 0, 1, 2, 2, 1, 0);
}

void func_80024EA0(void) {
    switch (D_800BE634) {
    case 0:
        D_800BE554.raw += 0x319A;
        if (D_800BE55C.whole > 0x2E0) {
            gActors[0x91].flags = 0;
            gActors[0x90].flags = 0;
            D_800BE634 += 1;
        }
        break;
    case 1:
        D_800BE554.raw += 0x319A;
        if (D_800BE55C.whole > 0x3A8) {
            func_80024DD8();
            func_80024E18();
            D_800BE6E4 = 0;
            D_800BE634 += 1;
        }
        break;
    case 2:
        D_800BE554.raw += 0x319A;
        D_800BE738 += 0x20000;
        if (D_800BE55C.whole > 0x4B0) {
            D_800BE6E8 = 0;
            D_800BE634 += 1;
        }
        break;
    case 3:
        D_800BE738 += 0x20000;
        break;
    }
    if (D_800BE558.whole < 0x1900) {
        D_800BE73C = 0x18CCD;
        D_800BE550.raw += D_800BE73C;
    }
    else {
        D_800BE73C = (-D_800BE558.whole * 0x27A) + 0x3F7640;
        D_800BE550.raw += D_800BE73C;
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
    if (D_800BE5D0 != 0x16) {
        D_800BE5A8 = -128.0f;
        D_800BE5AC = 128.0f;
    }
    func_800235E0();
}

void func_80025114(void) {
    func_800235F4();
    if (D_800BE4E0 & 1) {
        D_800BE57C += 1;
    }
}

void func_8002515C(void) {
    D_800BE580 = -24;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_80025184(void) {
    D_800BE578 = (D_800BE558.whole / 4) & 0x1FF;
    D_800BE57C = (D_800BE558.whole / 8) & 0x1FF;
}

void func_800251CC(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void func_800251E8(void) {
    D_800BE578 = ((D_800BE558.whole / 4) & 0x1FF) + 0x80;
    D_800BE580 = (D_800BE55C.whole / 4) & 0x1FF;
    D_800BE57C = (D_800BE558.whole / 8) & 0x1FF;
}

void func_80025254(void) {
    D_800BE578 = (D_800BE558.whole / 2) & 0x1FF;
    D_800BE580 = (D_800BE55C.whole / 2) & 0x1FF;
    D_800BE57C = (D_800BE558.whole / 8) & 0x1FF;
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
        if (D_800BE55C.whole < 0x100) {
            D_800BE55C.whole += 0x400;
            D_800BE554.whole += 0x400;
        }
        if (D_800BE55C.whole > 0x500) {
            D_800BE55C.whole -= 0x400;
            D_800BE554.whole -= 0x400;
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
            if (D_80104098[0x40].unk_88 > 0) {
                if (D_80104098[0x40].unk_88 >= 0xA0) {
                    D_80104098[0x41].unk_88 = 0xA0;
                    D_80104098[0x40].unk_88 = D_80104098[0x41].unk_88;
                    D_800D16C4[0] = 2;
                }
                else {
                    D_80104098[0x40].unk_88 = D_80104098[0x40].unk_88 + 8;
                    D_80104098[0x41].unk_88 = D_80104098[0x41].unk_88 + 8;
                }
            }
            else if (D_80104098[0x40].unk_88 < -0x9F) {
                D_80104098[0x41].unk_88 = -0xA0;
                D_80104098[0x40].unk_88 = D_80104098[0x41].unk_88;
                D_800D16C4[0] = 2;
            }
            else {
                D_80104098[0x40].unk_88 = D_80104098[0x40].unk_88 - 8;
                D_80104098[0x41].unk_88 = D_80104098[0x41].unk_88 - 8;
            }
            /* fallthrough */
        case 2:
            if (func_8005DEFC() == 0) {
                D_800D16C4[0] = 3;
            }
            break;
        case 3:
            if (D_80104098[0x40].unk_88 > 0) {
                if (D_80104098[0x40].unk_88 < 0x51) {
                    D_80104098[0x41].unk_88 = 0x50;
                    D_80104098[0x40].unk_88 = D_80104098[0x41].unk_88;
                    D_800D16C4[0] = 0;
                }
                else {
                    D_80104098[0x40].unk_88 = D_80104098[0x40].unk_88 - 8;
                    D_80104098[0x41].unk_88 = D_80104098[0x41].unk_88 - 8;
                }
            }
            else if (D_80104098[0x40].unk_88 >= -0x58) {
                D_80104098[0x41].unk_88 = -0x58;
                D_80104098[0x40].unk_88 = D_80104098[0x41].unk_88;
                D_800D16C4[0] = 0;
            }
            else {
                D_80104098[0x40].unk_88 = D_80104098[0x40].unk_88 + 8;
                D_80104098[0x41].unk_88 = D_80104098[0x41].unk_88 + 8;
            }
            /* fallthrough */
        case 0:
            if (func_8005DEFC() != 0) {
                D_800D16C4[0] = 1;
            }
            break;
        }
    }
    D_800CC58C[D_800BE5D0]();
}

void func_80025578(void) {
    if (D_800CCFDC[D_800BE5D0] != 0xFF) {
        Sound_PlayMusic(D_800CCFDC[D_800BE5D0]);
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/d9Bku
void func_800255B4(u16 index) {
    D_800D16C4[0] = 0;
    D_800BE6A8 = 0;
    D_800BE710 = 0;
    D_800BE550.raw = D_800BE558.raw = 0;
    D_800BE568 = D_800CC6EC[index].unk0;
    D_800BE56C = D_800CC6EC[index].unk2;
    D_800BE574 = D_800CC6EC[index].unk4;
    D_800BE570 = D_800CC6EC[index].unk6;
    gActors->posX.whole = D_800CC6EC[index].unkA;
    D_800BE558.whole = D_800CC6EC[index].unk8;
    D_800BE560.whole = D_800BE558.whole;
    D_800BE550.whole = D_800BE558.whole;
    D_800BE5D8.whole = D_800BE558.whole + gActors->posX.whole;
    gActors->posY.whole = D_800CC6EC[index].unkE;
    D_800BE55C.whole = D_800CC6EC[index].unkC;
    D_800BE564.whole = D_800BE554.whole = D_800CC6EC[index].unkC;
    D_800BE5DC.whole = D_800BE55C.whole + gActors->posY.whole;
    D_800BE61C = 0;
    D_800BE620 = 0;
    D_800BE62C = 0;
    D_800BE630 = 0;
    D_800BE704 = 0x10;
    D_800BE708 = 4;
    D_800BE588 = 0;
    D_800BE58C = 0;
    D_800BE544 = 0;
    D_800BE548 = 0x100000;
    D_800BE54C = 0x100000;
    D_800BE734 = 0;
    D_800BE738 = 0;
    D_800BE73C = 0;
    D_800BE654 = D_800CCC6C[index].unk0;
    D_800BE644 = 4 << D_800BE654;
    D_800BE648 = 0x4000 >> D_800BE654;
    D_800BE64C = 0x7FF >> (6 - D_800BE654);
    D_800BE650 = 0x3FFF - D_800BE64C;
    D_800BE660 = D_800BE654 + 2;
    D_800BE658 = 0xFFF >> (6 - D_800BE654);
    D_800BE65C = 0xFFFF - D_800BE658;
    D_800BE6DC = 0;
    D_800BE6E0 = 0;
    D_800BE664 = D_800CCC6C[index].unk2;
    D_800BE6C0 = -8;
    D_800BE6CC = D_800CCC6C[index].unk4;
    D_800BE6D8 = D_800CCC6C[index].unk6;
    D_801373DC = 0x10;
    D_801373DE = 0;
    func_8008BFB0();
    D_80104098[0x40].unk_80 = 2;
    D_80104098[0x40].unk_82 = 0xF0;
    D_80104098[0x40].unk_84 = -0x4C;
    D_80104098[0x40].unk_88 = 0xA0;
    D_80104098[0x40].unk_94 = 0xFF;
    D_80104098[0x41].unk_80 = 2;
    D_80104098[0x41].unk_82 = 0xF4;
    D_80104098[0x41].unk_84 = -0x7C;
    D_80104098[0x41].unk_88 = 0x80;
    D_800CA230 = 0;
    gLetterboxMode = 0;
    D_800BE70C = 0;

    switch (D_800CD034[index]) {
    case 0:
        D_8013769C = 0x80380000;
        D_801376A0 = 0x80380200;
        D_801376A4 = 0x80380400;
        D_800BE6E4 = 1;
        D_800BE6E8 = 1;
        D_800BE6EC = 1;
        break;
    case 1:
        D_8013769C = 0x80380000;
        D_801376A0 = 0x80380400;
        D_800BE6E4 = 1;
        D_800BE6E8 = 1;
        D_800BE6EC = 0;
        break;
    case 2:
        D_8013769C = 0x80380400;
        D_801376A0 = 0x80380000;
        D_801376A4 = 0x80380400;
        D_800BE6E4 = 1;
        D_800BE6E8 = 1;
        D_800BE6EC = 1;
        break;
    case 3:
        D_8013769C = 0x80380000;
        D_801376A0 = 0x80380000;
        D_801376A4 = 0x80380000;
        D_800BE6E4 = 1;
        D_800BE6E8 = 1;
        D_800BE6EC = 1;
        break;
    case 4:
        D_8013769C = 0x80380000;
        D_801376A0 = 0x80380200;
        D_800BE6E4 = 1;
        D_800BE6E8 = 1;
        D_800BE6EC = 0;
        break;
    case 5:
        D_801376A0 = 0x80380200;
        D_800BE6E4 = 0;
        D_800BE6E8 = 1;
        D_800BE6EC = 0;
        break;
    case 6:
        D_8013769C = 0x80380200;
        D_800BE6E4 = 1;
        D_800BE6E8 = 0;
        D_800BE6EC = 0;
        break;
    case 7:
        D_800BE6E4 = 0;
        D_800BE6E8 = 0;
        D_800BE6EC = 0;
        break;
    case 8:
        D_8013769C = 0x80380000;
        D_801376A4 = 0x80380400;
        D_800BE6E4 = 1;
        D_800BE6E8 = 0;
        D_800BE6EC = 1;
        break;
    case 9:
        D_801376A0 = 0x80380200;
        D_801376A4 = 0x80380400;
        D_800BE6E4 = 0;
        D_800BE6E8 = 1;
        D_800BE6EC = 1;
        break;
    case 10:
        D_801376A4 = 0x80380400;
        D_800BE6E4 = 0;
        D_800BE6E8 = 0;
        D_800BE6EC = 1;
        break;
    }
    D_800BE634 = 0;
    D_800CC42C[index]();
    D_800CC58C[index]();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800255B4.s")
#endif

void func_80025B7C(void) {
    func_8002694C(D_800BE5D0);
    func_80026A18(D_800BE5D0);
    func_80026B04(D_800BE5D0);
    func_80026BD0(D_800BE5D0);
    func_80026874(D_800BE5D0);
    func_80026C9C(D_800BE5D0);
    func_8002729C(D_800BE5D0);
    func_80025E00();
}

void func_80025BFC(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = D_80380000, dest = D_803DA200; index < 0x180; index++) {
        *dest++ = *src++;
    }
}

void func_80025C38(void) {
    func_800255B4(D_800BE5D0);
    func_80025EC4(D_800BE5D0);
    func_80025F70(D_800BE5D0);
    func_8002601C(D_800BE5D0);
    func_800260C8(D_800BE5D0);
    func_80026174(D_800BE5D0);
    func_80026584(D_800BE5D0);
    func_800265FC(D_800BE5D0);
    func_8002670C(D_800BE5D0);
    func_80026784(D_800BE5D0);
    func_800267FC(D_800BE5D0);
    func_8005DE30();
    func_8002653C();

    if (D_800BE5D0 == 0x18 || D_800BE5D0 == 0xA || ((D_800BE5D0 >= 0x2E) && (D_800BE5D0 < 0x34))) {
        func_80026220(0x17);
        func_80026428(0x18);
    }
    else if ((D_800BE5D0 == 0xE) || (D_800BE5D0 == 0x41) || (D_800BE5D0 == 6)) {
        func_80026220(0x43);
        func_80026494(0xE, 0);
        D_801376A4 = 0x80380400;
    }
    else {
        func_80026220(D_800BE5D0);
    }

    if ((D_800BE5D0 == 0x16) || (D_800BE5D0 == 0x55) || (D_800BE5D0 == 0x56)) {
        func_80024DD8();
    }
    func_80025BFC();
    func_80025B7C();
    D_800CC42C[D_800BE5D0]();
    D_800CC58C[D_800BE5D0]();
    func_80025578();
}
