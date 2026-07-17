#define Actor_Initialize_RET void
#define func_80012AB4_ARGS s32 arg0, s32 arg1
#include "common.h"
#include "7D8E0.h"
#include "actor.h"
#include "input.h"
#include "globalData.h"
#include "music.h"
#include "stage.h"

typedef void (*FuncVoidVoid)(void);

extern u16 D_800D28E4;
extern u16 D_800D28F0;
extern u32 D_800D28FC;
extern u8 D_800D28D0[];
extern s32 D_800D28EC;
extern s16 D_800D28F4;
extern u16 D_800D2900;
extern s32 D_800D2944;
extern u16 D_800D2910;
extern s16 D_800D2914;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s32 D_800D2928;
extern s32 D_800D2938;
extern s32 D_800D293C;
extern s32 D_800D2940;
extern u16 D_800D2950;
extern u16 D_800D2964;
extern u16 D_800D2968;
extern u16 D_800D296C;
extern s16 D_800D2970;
extern u16 D_800D2974;
extern u16 D_800D2978[];
extern void* D_800D1968[];
extern void* D_800D19A8[];
extern void* D_800D19B8[];

extern u16 D_800CBF50;
extern u16 D_800CBF54;

extern u16 D_800D357C[];
extern u16 D_800D361C[];
extern u16 D_800D36DC[];
extern u16 D_800D36FC[];
extern u16 D_800D3730[];
extern u16 D_800D3740[];
extern u16 D_800D3748[];
extern u16 D_800D3750[];
extern u16 D_800D3758[];
extern u16 D_800D3760[];
extern u16 D_800D3768[];
extern u16 D_800D3770[];
extern u16 D_800D3778[];
extern u16 D_800D3780[];
extern u16 D_800D3788[];
extern u16 D_800D3790[];
extern u16 D_800D3798[];
extern u16 D_800D37A0;
extern u16 D_800D37A4;
extern u16 D_800D37A8;
extern s32 D_800D37AC[];
extern void (*D_800D37BC[])(void);
extern u16 D_800D3888[];
extern s16 D_800D38B8[];
extern s16 D_800D3AE8[];
extern FuncVoidVoid D_800D3B78[];

extern u16 D_800D82DC[];
extern u16 D_800D84E8[];
extern u16 D_800D86D8[];
extern u16 D_800D8750[];
extern u16 D_800D87C8[];
extern u16 D_800D8840[];
extern u16 D_800D88B8[];
extern u16 D_800D8930[];
extern u16 D_800D89A8[];
extern u16 D_800D8A20[];
extern u16 D_800D8A98[];
extern u16 D_800D8B10[];
extern u16 D_800D8B88[];
extern u16 D_800D8C00[];
extern u16 D_800D8C78[];
extern u16 D_800D8CF0[];
extern u16 D_800D8D68[];
extern u16 D_800D8DE0[];
extern u16 D_800D9B7C[];
extern u16 D_800D9C7C[];
extern u16 D_800D9D7C[];
extern u16 D_800D9E7C[];
extern u16 D_800D9F7C[];
extern u16 D_800DB07C[];
extern u16 D_800DB27C[];
extern u16 D_800DB47C[];
extern u16 D_800DB67C[];
extern u16 D_800DB87C[];
extern u16 D_800DBA7C[];
extern u16 D_800DBE7C[0xFF]; // unused
extern u16 D_800DBC7C[];
extern u16 D_800DC07C[];
extern u16 D_800DC27C[];
extern u16 D_800DC47C[];
extern u16 D_800DC67C[];
extern u16 D_800DC87C[];
extern u16 D_800DCA7C[];
extern u16 D_800DCC7C[];
extern u16 D_800DD47C[];
extern u16 D_800DD67C[];
extern u16 D_800DD87C[];
extern u16 D_800DDA88[];
extern u16 D_800DDC48[];
extern u16 D_800DDE08[];
extern u16 D_800DDFC8[];
extern u16 D_800DE188[];
extern u16 D_800DE1C0[];
extern u16 D_800DE1F8[];
extern u16 D_800DE230[];
extern u16 D_800DE268[];
extern u16 D_800DE2A0[];
extern u16 D_800DE2D8[];
extern u16 D_800DE310[];
extern u16 D_800DE348[];
extern u16 D_800DE508[];
extern u16 D_800DE508[];
extern u16 D_800DE540[];
extern u16 D_800DE578[];
extern u16 D_800DE5B0[];
extern u16 D_800DE5E8[];
extern u16 D_800DE620[];
extern u16 D_800DE658[];
extern u16 D_800DE690[];
extern u16 D_800DE6C8[];
extern u16 D_800DE888[];
extern u16 D_800DEA48[];
extern u16 D_800DEC08[];
extern u16 D_800DEDC8[];
extern u16 D_800DEF88[];
extern u16 D_800DF148[];
extern u16 D_800DF308[];
extern u16 D_800DF4C8[];
extern u16 D_800DF688[];
extern u16 D_800DF848[];
extern u16 D_800DFA48[];
extern u16 D_800DFC48[];
extern u16 D_800DFE48[];
extern u16 D_800E0048[];
extern u16 D_800E0248[];
extern u16 D_800E0448[];

extern s32 D_801782B0;
extern s32 D_801782B4;
extern u16* D_801782BC;
extern u16 D_801782C0;
extern u16 D_801782C2;

#define D_80202E90 ((u16*)0x80202E90)
#define D_80202C90 ((u16*)0x80202C90)
#define D_802119B8 ((u16*)0x802119B8)
#define D_8024506A ((u16*)0x8024506A)
#define D_80245E48 ((u16*)0x80245E48)
#define D_80246C48 ((u16*)0x80246C48)
#define D_80247A70 ((u16*)0x80247A70)
#define D_80250FD2 ((u16*)0x80250FD2)
#define D_80362700 ((u16*)0x80362700)
#define D_80372500 ((u16*)0x80372500)
#define D_803023B4 ((u16*)0x803023B4)

void func_80043D04(u16* spawn);
void func_80042D84(u16 arg0);

void func_80042CE0(void) {
}

void func_80042CE8(u32 arg0) {
}

void func_80042CF0(u32 arg0) {
}

void func_80042CF8(u16* arg0) {
    u16 index;
    u16* var_v1; // BUG: UB, var_v1 is never set!

    index = 0;
    if (var_v1 != NULL) {
        while (var_v1[0] != 0) {
            D_800D2978[0 + index] = var_v1[0];
            D_800D2978[1 + index] = var_v1[1];
            D_800D2978[2 + index] = var_v1[2];
            index += 3;
            var_v1 += 3;
        }
    }
    for (; index != 0x600; index += 3) {
        D_800D2978[0 + index] = 0;
    }
}

void func_80042D84(u16 arg0) {
    u16 base = 0;
    for (; arg0 != 0x600; arg0 += 3) {
        D_800D2978[base + arg0] = 0;
    }
}

void func_80042DBC(u16* vals) {
    u16 index;

    index = 0;
    if (vals != NULL) {
        while (vals[0] != 0) {
            D_800D2978[index + 0] = vals[0];
            D_800D2978[index + 1] = vals[1];
            D_800D2978[index + 2] = vals[2];
            index += 3;
            vals += 3;
        }
    }
    func_80042D84(index);
}

void func_80042E28(u16 bit_mask) {
    u16 index;

    // fakematch: (s32) casts
    for (index = 0; D_800D2978[(s32)index] != 0; index += 3) {
        D_800D2978[(s32)index] &= bit_mask;
    }
}

void Palette_AdjustScenePalettes(
    s16 blue_offset_0, s16 green_offset_0, s16 red_offset_0,
    s16 blue_offset_1, s16 green_offset_1, s16 red_offset_1,
    s16 blue_offset_2, s16 green_offset_2, s16 red_offset_2
)
{
    Palette_AdjustRgb5551Array(PALETTE_803DA200, PALETTE_80380000, 0xFF, blue_offset_0, green_offset_0, red_offset_0);
    Palette_AdjustRgb5551Array(PALETTE_803DA400, PALETTE_80380200, 0xFF, blue_offset_1, green_offset_1, red_offset_1);
    Palette_AdjustRgb5551Array(PALETTE_803DA600, PALETTE_80380400, 0xFF, blue_offset_2, green_offset_2, red_offset_2);
}

void func_80042F2C(s16 blue_offset, s16 green_offset, s16 red_offset) {
    func_80043234();
    Palette_AdjustRgb5551Array(D_800DE348, D_800DE348, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DE508, D_800DE508, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DE6C8, D_800DE6C8, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DE888, D_800DE888, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DEA48, D_800DEA48, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DEF88, D_800DEF88, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DEC08, D_800DEC08, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DEDC8, D_800DEDC8, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DF308, D_800DF308, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DF4C8, D_800DF4C8, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DF688, D_800DF688, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DF148, D_800DF148, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DDA88, D_800DDA88, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DDE08, D_800DDE08, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DDC48, D_800DDC48, 0xDF, blue_offset, green_offset, red_offset);
    Palette_AdjustRgb5551Array(D_800DDFC8, D_800DDFC8, 0xDF, blue_offset, green_offset, red_offset);
}

void func_8004320C(void) {
    D_800D2968 = 0xFFFF;
    D_800D296C = 0;
    D_800D2974 = 0;
    D_800D2970 = 0;
}

void func_80043234(void) {
    Palette_AdjustRgb5551Array(D_800DE348, D_800DDA88, 0xDF, -10, -10, -10);
    Palette_AdjustRgb5551Array(D_800DEF88, D_800DDE08, 0xDF, -10, -10, -10);
    Palette_AdjustRgb5551Array(D_800DE6C8, D_800DDC48, 0xDF, -10, -10, -10);
    Palette_AdjustRgb5551Array(D_800DE888, D_800DDFC8, 0xDF, -10, -10, -10);
    Palette_AdjustRgb5551Array(D_800DE348, D_800DE348, 0xDF, 3, 0, 0);
    Palette_AdjustRgb5551Array(D_800DE888, D_800DE888, 0xDF, -2, 3, 3);
    Palette_AdjustRgb5551Array(D_800DEF88, D_800DEF88, 0xDF, -1, 1, 3);
    Palette_AdjustRgb5551Array(D_800DEC08, D_800DEC08, 0xDF, 6, 2, 0);
    Palette_AdjustRgb5551Array(D_800DE6C8, D_800DE6C8, 0xDF, -1, 2, 0);
    Palette_AdjustRgb5551Array(D_800DF308, D_800DF308, 0xDF, 0, -1, 2);
    Palette_AdjustRgb5551Array(D_800DF4C8, D_800DF4C8, 0xDF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DEDC8, D_800DEDC8, 0xDF, 0, -1, 2);
    Palette_AdjustRgb5551Array(D_800DF148, D_800DF148, 0xDF, 2, -2, 0);
    Palette_AdjustRgb5551Array(D_800DEA48, D_800DEA48, 0xDF, -1, -1, -1);
}

void func_80043478(void) {
    Palette_AdjustRgb5551Array(D_800DD47C, D_800DD47C, 0xFF, 4, 2, 2);
    Palette_AdjustRgb5551Array(D_800DD67C, D_800DD67C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DD87C, D_800DD87C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DCC7C, D_800DCC7C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DC67C, D_800DC67C, 0xFF, 2, 4, 2);
    Palette_AdjustRgb5551Array(D_800DC27C, D_800DC27C, 0xFF, 2, 2, 4);
    Palette_AdjustRgb5551Array(D_800DC47C, D_800DC47C, 0xFF, 4, 2, 2);
    Palette_AdjustRgb5551Array(D_800DC87C, D_800DC87C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DCA7C, D_800DCA7C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DC07C, D_800DC07C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DB07C, D_800DB07C, 0xFF, 7, 2, 2);
    Palette_AdjustRgb5551Array(D_800DB27C, D_800DB27C, 0xFF, 7, 2, 2);
    Palette_AdjustRgb5551Array(D_800DB47C, D_800DB47C, 0xFF, 1, 1, 1);
    Palette_AdjustRgb5551Array(D_800DB67C, D_800DB67C, 0xFF, 2, 2, 2);
    Palette_AdjustRgb5551Array(D_800DB87C, D_800DB87C, 0xFF, 1, 2, 5);
    Palette_AdjustRgb5551Array(D_800DBA7C, D_800DBA7C, 0xFF, 3, 2, 3);
    Palette_AdjustRgb5551Array(D_800DBC7C, D_800DBC7C, 0xFF, 4, 3, 2);
    Palette_AdjustRgb5551Array(D_800DFE48, D_800DFE48, 0xFF, 2, 6, 2);
    Palette_AdjustRgb5551Array(D_800E0248, D_800E0248, 0xFF, 8, 2, 2);
    Palette_AdjustRgb5551Array(D_800E0448, D_800E0448, 0xFF, 3, 3, 7);
    Palette_AdjustRgb5551Array(D_800E0048, D_800E0048, 0xFF, 3, 3, 3);
    Palette_AdjustRgb5551Array(D_800DFA48, D_800DFA48, 0xE0, 2, 6, 2);
    Palette_AdjustRgb5551Array(D_800DFC48, D_800DFC48, 0xE0, 8, 2, 2);
    Palette_AdjustRgb5551Array(D_800DF848, D_800DF848, 0xE0, 4, 2, 4);
    Palette_AdjustRgb5551Array(D_800D9B7C, D_800D9B7C, 0x7A, 1, 4, 1);
    Palette_AdjustRgb5551Array(D_800D9E7C, D_800D9E7C, 0x7A, 4, -1, 1);
    Palette_AdjustRgb5551Array(D_800D9C7C, D_800D9C7C, 0x7A, 1, 1, 3);
    Palette_AdjustRgb5551Array(D_800D9F7C, D_800D9F7C, 0x7A, 1, 1, 1);
    Palette_AdjustRgb5551Array(D_800D9D7C, D_800D9D7C, 0x7A, 1, 2, 3);
}

void func_80043918(void) {
    D_800D28EC = 0;
    D_800D28F0 = 0;
    D_800D28F8 = 0;
    D_800D28FC = 0;
    D_800D28F4 = 1;
    gStageState = 0;
    D_800D2938 = 0;
    D_800BE668 = 0x32;
    func_8002653C();
    func_80043234();
    func_8004320C();
}

s32 func_8004398C(u16* spawn);
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004398C.s")

void Actor_LoadSpawnTable(u16* spawn) {
    s32 actor_index;
    u16 jndex;
    u16 index;
    u16 counter;

    index = 0;
    jndex = 0;
    counter = 0;
    while (spawn[0] != SPAWNRECORD_END) {
        if (!(spawn[0] & 0x2000)) {
            actor_index = func_8004398C(spawn);

            if (spawn[0] & 0x8000) {
                D_800D357C[index + 0] = actor_index;
                D_800D357C[index + 1] = gActors[actor_index].actorType;
                index += 2;
            }

            if (spawn[0] & 0x1000) {
                D_800D361C[jndex + 0] = actor_index;
                D_800D361C[jndex + 1] = gActors[actor_index].actorType;
                D_800D361C[jndex + 2] = counter;
                jndex += 3;
            }
        }

        counter += 7;
        spawn += 0xE / sizeof(u16);
    }

    for (; index < 0x40; index = actor_index + 2) {
        actor_index = index;
        D_800D357C[actor_index] = 0;
    }
    for (; jndex < 0x60; jndex = actor_index + 3) {
        actor_index = jndex;
        D_800D361C[actor_index] = 0;
    }
}

void func_80043C10(u16* spawn) {
    s16 x_min;
    s16 x_max;
    s16 y_max;
    s16 y_min;

    x_min = gScreenPosCurrentX.whole - 176;
    x_max = gScreenPosCurrentX.whole + 176;
    y_max = gScreenPosCurrentY.whole + 144;
    y_min = gScreenPosCurrentY.whole - 144;
    for (; spawn[0] != SPAWNRECORD_END; spawn += 7) {
        if ((spawn[0] & 0x800)) {
            continue;
        }
        if ((x_min < spawn[2]) && (spawn[2] < x_max) && (spawn[3] < y_max) && (y_min < spawn[3])) {
            spawn[0] |= 0x800;
            func_8004398C(spawn);
        }
    }
}

void func_80043D04(u16* spawn) {
    for (; spawn[0] != SPAWNRECORD_END; spawn += 7) {
        spawn[0] &= ~0x2800;
    }
}

void func_80043D30(u16* spawn) {
    if (!gSkipStageIntro) {
        func_80043D04(spawn);
    }

    Actor_LoadSpawnTable(spawn);
}

s32 func_80043D6C(u16* spawn) {
    s32 var_s3;

    var_s3 = FALSE;
    for (; spawn[0] != SPAWNRECORD_END; spawn += 7) {
        if ((spawn[0] & 0x2000) == 0) {
            if (!(gActors[spawn[1]].flags & ACTOR_FLAG_ACTIVE)) {
                var_s3 = TRUE;
                func_8004398C(spawn);
                spawn[0] |= 0x2000;
            }
        }
        else if (gActors[spawn[1]].flags & ACTOR_FLAG_ACTIVE) {
            var_s3 = TRUE;
        }
    }
    if (var_s3) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void func_80043E64(u16* arg0, s16 pos_x, s16 pos_y) {
    u16 index;
    u16 actor_index;
    s32 end;

    actor_index = arg0[1];
    gActors[actor_index].actorType = arg0[4];
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].var_110 = arg0[2];
    gActors[actor_index].var_0D8 = arg0[3];
    index = actor_index + 1;
    end = actor_index + 4;
    arg0 += 5;
    if (1) {} // fakematch
    for (; index != end; index++) {
        if (arg0[0] != 0xFE00) {
            actor_index = arg0[1];
            gActors[actor_index].actorType = arg0[4];
            Actor_Initialize(actor_index);
            gActors[actor_index].posX.whole = pos_x;
            gActors[actor_index].posY.whole = pos_y;
            gActors[actor_index].var_110 = arg0[2];
            gActors[actor_index].var_0D8 = arg0[3];
            gActors[actor_index].parentIndex = index;
            gActors[index].parentIndex = actor_index;
            gActors[index].flags_098 |= ACTOR_FLAG3_UNK9;
            D_800D28EC |= 0x20;
            arg0 += 5;
        }
        else {
            arg0 += 1;
        }
    }
}

void func_8004400C(u16* arg0, s16 pos_x, s16 pos_y) {
    u16 actor_index; // BUG: UB, actor_index may be used uninitialized
    u16 index;

    for (; arg0[0] != SPAWNRECORD_END; arg0 += 5) {
        actor_index = arg0[1];
        if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
            actor_index = 0;
        }
        else {
            break;
        }
    }

    if (actor_index != 0) {
        pos_y -= gScreenPosCurrentY.whole;
        for (index = 0; index < 0x10; index++) {
            if (func_80012AB4(pos_x, pos_y - 0x13) & 0xC0) {
                if ((func_80012AB4(pos_x, pos_y) & 0xC0) || (func_80012AB4(pos_x, pos_y - 8) & 0xC0)) {
                    pos_y += 0x10;
                }
                else {
                    break;
                }
            }
        }

        if (index != 0x10) {
            gActors[actor_index].actorType = arg0[4];
            Actor_Initialize(actor_index);
            gActors[actor_index].posX.whole = pos_x;
            gActors[actor_index].posY.whole = pos_y;
            gActors[actor_index].var_110 = arg0[2];
            gActors[actor_index].var_0D8 = arg0[3];
            D_800D28EC |= arg0[0] & 0x1F0;
        }
    }
}

void func_800441F4(u16 graphic_index, s16 pos_x, s16 pos_y, void* palette) {
    s32 y_min;
    s32 y_max;
    s32 x_min;
    s32 x_max;
    u16 actor_index;

    if (D_800BE710 != 0) {
        x_min = -238;
        x_max = 238;
        y_min = -190;
        y_max = 190;
    }
    else {
        x_min = -150;
        x_max = 150;
        y_min = -114;
        y_max = 114;
    }
    if ((x_min < pos_x) && (pos_x < x_max) && (y_min < pos_y) && (pos_y < y_max)) {
        actor_index = SpawnParticle_Image_90C0_16(graphic_index, pos_x, pos_y, 1);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3.0) + (-Rand() * FIXED_UNIT(0.0234375));
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4.75) - (Rand() * FIXED_UNIT(0.015625));
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(8.0);
            gActors[actor_index].var_154 = 0x10;
            gActors[actor_index].unk_164 = -2;
            gActors[actor_index].palette_18C = palette;
            gActors[actor_index].var_150 = D_800D37AC[Rand() & 3];
            if (gActors[actor_index].velocityX.raw > 0) {
                gActors[actor_index].var_150 = -gActors[actor_index].var_150;
            }
            gActors[actor_index].var_15C = -FIXED_UNIT(0.25);
        }
    }
}

void func_80044360(void) {
    D_801069E0[D_801782C0].graphicIndex = 0xA;
    D_801069E0[D_801782C0].palette = 0;
}

void func_80044390(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3740[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x46, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_80044468(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3748[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x52, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_80044540(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3750[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x4C, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_80044618(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3758[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x58, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_800446F0(void) {
    s32 temp_t9;

    D_801069E0[D_801782C0].graphicIndex = D_800D37A0;
    temp_t9 = D_801782C2 & 3;
    D_801069E0[D_801782C0].palette = D_800D1958[temp_t9];
    if (((temp_t9 == 2) && (YellowGem_GetFlag(gCurrentStage) != 0)) || (GemCollect_Static(D_801782C0) != 0)) {
        D_801782BC[0] |= 0x4000;
    }
}

void func_800447AC(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3760[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x5E, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_80044884(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3768[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
    if ((D_801782C2 == 1) && !(func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0)) {
        D_801782BC[0] |= 0x8000;
        func_800441F4(0x64, D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole, D_801069E0[D_801782C0].palette);
    }
}

void func_8004495C(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3770[D_800D37A4];
    D_801069E0[D_801782C0].palette = (u16* )0x80203440;
}

void func_800449A8(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x20;
    D_801069E0[D_801782C0].palette = D_800D19A8[D_801782C2 & 3];

    if ((func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0) == 0) {
        *D_801782BC |= 0x8000;
    }
}

void func_80044A38(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3778[D_800D37A4];
    D_801069E0[D_801782C0].palette = (u16* )0x80203240;
}

void func_80044A84(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x24;
    D_801069E0[D_801782C0].palette = (void*)0x80203050;

    if ((func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0) == 0) {
        *D_801782BC |= 0x8000;
    }
}

void func_80044B00(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x25;
    D_801069E0[D_801782C0].palette = (void*)0x80203050;

    if ((func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0) == 0) {
        *D_801782BC |= 0x8000;
    }
}

void func_80044B7C(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3740[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044BD8(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3748[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044C34(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3750[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044C90(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3758[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044CEC(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3760[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044D48(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3768[D_800D37A8];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80044DA4(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x2F;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044DEC(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x30;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044E34(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x31;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044E7C(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x32;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044EC4(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x33;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044F0C(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x34;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044F54(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x35;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044F9C(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x36;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80044FE4(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x37;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_8004502C(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x38;
    D_801069E0[D_801782C0].palette = D_800D19B8[D_801782C2];
}

void func_80045074(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3780[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_800450D0(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3788[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_8004512C(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3790[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_80045188(void) {
    D_801069E0[D_801782C0].graphicIndex = D_800D3798[D_800D37A4];
    D_801069E0[D_801782C0].palette = D_800D1968[D_801782C2];
}

void func_800451E4(u16* arg0) {
    s32 pad;
    s16 y_min;
    s16 y_max;
    s16 x_max;
    s16 x_min;

    D_801782BC = arg0;
    if (D_800BE710 != 0) {
        x_min = gScreenPosCurrentX.whole - 256;
        x_max = gScreenPosCurrentX.whole + 256;
        y_min = gScreenPosCurrentY.whole - 208;
        y_max = gScreenPosCurrentY.whole + 208;
    }
    else {
        x_min = gScreenPosCurrentX.whole - 168;
        x_max = gScreenPosCurrentX.whole + 168;
        y_min = gScreenPosCurrentY.whole - 132;
        y_max = gScreenPosCurrentY.whole + 132;
    }

    D_800D2910++;
    if (D_800D2910 >= 0xD) {
        D_800D2910 = 0;
    }
    D_800D37A0 = D_800D3730[D_800D2910 / 2];
    if ((gActiveFrames & 0xF) == 0) {
        D_800D37A4++;
        D_800D37A4 &= 3;
    }
    if ((gActiveFrames & 0x1F) == 0) {
        D_800D37A8++;
        D_800D37A8 &= 3;
    }

    for (D_801782C0 = 0; D_801782BC[0] != 0 && D_801782C0 < 0x40; D_801782BC += 3) {
        if ((x_min < D_801782BC[1]) && (D_801782BC[1] < x_max) &&
            (y_min < D_801782BC[2]) && (D_801782BC[2] < y_max)) {
            if ((D_801782BC[0] & 0xC000) == 0) {
                D_801069E0[D_801782C0].posX.whole = D_801782BC[1] - gScreenPosCurrentX.whole;
                D_801069E0[D_801782C0].posY.whole = D_801782BC[2] - gScreenPosCurrentY.whole;
                D_801782C2 = D_801782BC[0] & 0xF;
                D_800D37BC[(D_801782BC[0] & 0xFFF0) / 16]();
                D_801782C0++;
            }
        }
    }

    for (; D_801782C0 < 0x40; D_801782C0++) {
        D_801069E0[D_801782C0].graphicIndex = 0;
    }
}

void func_80045500(void) {
    u16 index;

    for (index = 0; index < 0x10; index++) {
        D_800D36DC[index] = 0;
        D_800D36FC[index] = 0;
    }
}

void func_80045544(u16 actor_index, u16 actor_end) {
    u16 index;

    for (index = 0; actor_index < actor_end; actor_index++) {
        if ((gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) && (gActors[actor_index].health != 0) && (gActors[actor_index].flags & ACTOR_FLAG_UNK8)) {
            D_800D36DC[index] = actor_index;
            index++;
        }
    }

    for (; index < 0x10; index++) {
        D_800D36DC[index] = 0;
    }
}

void func_80045610(u16 actor_index, u16 actor_end) {
    u16 index;

    for (index = 0; actor_index < actor_end; actor_index++) {
        if ((gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) && (gActors[actor_index].health != 0) && (gActors[actor_index].flags & ACTOR_FLAG_UNK10)) {
            D_800D36FC[index] = actor_index;
            index++;
        }
    }

    for (; index < 0x10; index++) {
        D_800D36FC[index] = 0;
    }
}

s16 func_800456DC(void) {
    if (D_801782B8 & 0x20) {
        return 0xF - (D_801782B8 & 0x1F);
    }
    else {
        return (D_801782B8 & 0x1F) - 0xF;
    }
}

u16 func_8004571C(void) {
    return Palette_AdjustRgb5551(0x8001, 0, 0, func_800456DC());
}

void func_80045758(void) {
    u16 dst_index;
    u16 src_index;

    src_index = (D_801782B8 / 8) % 24;
    for (dst_index = 0x71; dst_index < 0x80; dst_index++) {
        D_800D84E8[dst_index] = D_800D3888[src_index];
    }
}

void func_800457C8(void) {
    s16 color;
    s16 color_2;
    s16 color_1;
    s16 color_0;

    color = (D_801782B8 & 0x1F) / 4;
    if (!(D_801782B8 & 0x20)) {
        color = 7 - color;
    }
    func_80045758();
    color *= 2.0;
    switch (D_801782B8 & 7) {
    case 0:
        Palette_AdjustRgb5551Array(D_800D8D68, D_800D8C78, 0x3C, color, color, color);
        Palette_AdjustRgb5551Array(D_800DE508, D_800DE188, 0x1C, 0, 0, color);
        break;
    case 1:
        Palette_AdjustRgb5551Array(D_800D8DE0, D_800D8CF0, 0x3B, color, color, color);
        Palette_AdjustRgb5551Array(D_800DE540, D_800DE1C0, 0x1C, 0, 0, color);
        break;
    case 2:
        Palette_AdjustRgb5551Array(D_800D89A8, D_800D88B8, 0x3C, 0, 0, color);
        Palette_AdjustRgb5551Array(D_800DE578, D_800DE1F8, 0x1C, 0, 0, color);
        break;
    case 3:
        Palette_AdjustRgb5551Array(D_800D8A20, D_800D8930, 0x3B, 0, 0, color);
        Palette_AdjustRgb5551Array(D_800DE5B0, D_800DE230, 0x1C, 0, 0, color);
        break;
    case 4:
        Palette_AdjustRgb5551Array(D_800D8B88, D_800D8A98, 0x3C, 0, color, 0);
        Palette_AdjustRgb5551Array(D_800DE5E8, D_800DE268, 0x1C, 0, 0, color);
        break;
    case 5:
        Palette_AdjustRgb5551Array(D_800D8C00, D_800D8B10, 0x3B, 0, color, 0);
        Palette_AdjustRgb5551Array(D_800DE620, D_800DE2A0, 0x1C, 0, 0, color);
        break;
    case 6:
        Palette_AdjustRgb5551Array(D_800D87C8, D_800D86D8, 0x3C, color, 0, 0);
        Palette_AdjustRgb5551Array(D_800DE658, D_800DE2D8, 0x1C, 0, 0, color);
        break;
    case 7:
        Palette_AdjustRgb5551Array(D_800D8840, D_800D8750, 0x3B, color, 0, 0);
        Palette_AdjustRgb5551Array(D_800DE690, D_800DE310, 0x1C, 0, 0, color);
        break;
    }
    color_0 = func_800456DC();
    color_1 = Palette_AdjustRgb5551(0x6001, 0, color_0, 0);
    color_2 = Palette_AdjustRgb5551(0x6001, 0, 0, color_0 / 2);
    color_0 = Palette_AdjustRgb5551(0x8001, 0, 0, color_0);
    D_800DE1C0[0x0B] = color_0;
    D_800D9F7C[0x24] = color_0;
    D_800D9C7C[0x24] = color_0;
    D_800D9D7C[0x24] = color_0;
    D_800D9E7C[0x24] = color_0;
    D_800D9B7C[0x24] = color_0;
    D_802119B8[0x24] = color_0;
    D_80247A70[0x24] = color_0;
    D_8024506A[0x24] = color_0;
    D_800E0048[0x2D] = color_0;
    D_800E0448[0x2D] = color_0;
    D_800E0248[0x2D] = color_0;
    D_800DFE48[0x2D] = color_0;
    D_80245E48[0x2D] = color_0;
    D_800DFC48[0x4B] = color_0;
    D_800DFA48[0x4B] = color_0;
    D_800DF848[0x4B] = color_0;
    D_80246C48[0x4B] = color_0;
    D_800DF308[0x27] = color_0;
    D_800DF148[0x27] = color_0;
    D_800DF4C8[0x27] = color_0;
    D_800DF688[0x27] = color_0;
    D_800DEDC8[0x27] = color_0;
    D_800DEF88[0x27] = color_0;
    D_800DEC08[0x27] = color_0;
    D_800DEA48[0x27] = color_0;
    D_800DE348[0x27] = color_0;
    D_800DE888[0x27] = color_0;
    D_800DE6C8[0x27] = color_0;
    D_80202E90[0x27] = color_0;
    D_800DBE7C[0x1F] = color_0;
    D_800DBC7C[0x1F] = color_0;
    D_800DBA7C[0x1F] = color_0;
    D_800DB87C[0x1F] = color_0;
    D_800DB67C[0x1F] = color_0;
    D_800DB47C[0x1F] = color_0;
    D_800DB27C[0x1F] = color_0;
    D_800DB07C[0x1F] = color_0;
    D_80202C90[0x1F] = color_0;
    if (D_800CBF50 != 0) {
        D_800DC07C[0x31] = color_0;
        D_800DCC7C[0x31] = color_0;
        D_800DCA7C[0x31] = color_0;
        D_800DC87C[0x31] = color_0;
        D_800DC47C[0x31] = color_0;
        D_800DC27C[0x31] = color_0;
        D_800DC67C[0x31] = color_0;
        D_80362700[0x31] = color_0;
        D_800DD87C[0x30] = color_0;
        D_800DD67C[0x30] = color_0;
        D_800DD47C[0x30] = color_0;
        D_80372500[0x30] = color_0;
    }
    if (D_800CBF54 != 0) {
        D_803023B4[0] = color_0;
    }
    D_800DDE08[0x27] = color_2;
    D_800DDC48[0x27] = color_2;
    D_800DDA88[0x27] = color_2;
    D_800DDFC8[0x27] = color_2;
    D_80250FD2[0x27] = color_1;
}

void func_80045D84(u32 arg0, u32 arg1) {
    D_800D28E4 = 100;
}

s32 func_80045D9C(void) {
    u16 var_v0;
    u16 index;
    u16 actor_index;

    var_v0 = 0;
    for (index = 0; index < 0x40; index += 2) {
        if (D_800D357C[index] != 0) {
            actor_index = D_800D357C[index];
            if ((gActors[actor_index].flags == 0) ||
                (gActors[actor_index].actorType != D_800D357C[index + 1]) ||
                (gActors[actor_index].health == 0)) {
                D_800D357C[index] = 0;
            }
            else {
                var_v0 = 1;
            }
        }
    }

    if (var_v0 == 0) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_80045E58(u16* arg0) {
    u16 index;
    u16 actor_index;
    u16* temp_a0;

    for (index = 0; index < 0x60; index += 3) {
        actor_index = D_800D361C[index + 0];
        temp_a0 = &D_800D361C[index + 0];
        if (temp_a0[0] != 0) {
            if ((gActors[actor_index].flags == 0) ||
                (gActors[actor_index].actorType != temp_a0[1]) ||
                (gActors[actor_index].health == 0)) {
                arg0[temp_a0[2]] |= 0x2000;
            }
        }
    }
}

s32 func_80045F08(u32 arg0) {
    return 0;
}

u16* func_80045F14(u16* arg0) {
    gScreenPosTargetX.whole = arg0[0];
    gScreenPosTargetY.whole = arg0[1];
    gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
    gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
    gScreenPosNextX.whole = gScreenPosCurrentX.whole;
    gScreenPosNextY.whole = gScreenPosCurrentY.whole;
    D_800D2920 = arg0[2];
    D_800D2924 = arg0[3];
    D_800D2918 = arg0[4];
    D_800D291C = arg0[5];
    return &arg0[6];
}

void func_80045FA4(u16* arg0, u16* arg1) {
    u16 bit_mask;
    u16* pos_vals;

    func_80010C20(gCurrentScene);
    D_800D2904 = 0.0f;
    pos_vals = func_80045F14(arg0);
    D_800D294C = 0;
    gGuestActorIndex = 0;
    D_800BE5F4.unk_00_u32 = 5;
    gPlayerActor.posX.whole = pos_vals[0];
    gPlayerActor.posY.whole = pos_vals[1];
    gPlayerPosX.whole = gScreenPosCurrentX.whole + gActors->posX.whole;
    gPlayerPosY.whole = gScreenPosCurrentY.whole + gActors->posY.whole;
    D_801373E0.unk_78 &= ~0x10005;
    D_801373E0.unk_78 |= 2;
    gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
    if (gPlayerActor.health < 0) {
        gPlayerActor.health = 0;
    }
    gNoHit = gPlayerActor.health;
    func_80045500();
    D_800D28FC &= ~0x758A;
    D_800D28FC |= 4;
    D_800D2914 = 0;
    gPortraits[0x40].posY.whole = 0x50;
    gPortraits[0x41].posY.whole = 0x53;
    D_801376BC[0] = 1;
    D_801376BC[1] = 1;
    D_801376BC[2] = 1;
    func_8002653C();
    // if upper bits are set, treat as bitmask, otherwise pointer
    if ((u32)arg1 >= 0xFFFFFFF8) {
        bit_mask = 0;
        if ((u32)arg1 & 2) {
            bit_mask = 0x4000;
        }
        if ((u32)arg1 & 1) {
            bit_mask |= 0x8000;
        }
        func_80042E28((-1 - bit_mask));
    }
    else {
        func_80042DBC(arg1);
    }
}

void func_80046148(u16* arg0, u16* arg1){
    func_80045FA4(arg0, arg1);
    gPlayerActor.flags &= ~ACTOR_FLAG_DRAW;
    D_800BE5F4.unk_00_s32 = 4;
}

void func_80046188(u16* arg0, void* arg1) {
    gStageState++;
    Actor_ClearSceneActors();
    func_80045FA4(arg0, NULL);
    func_80028380();
    D_800BE544 = 0x8000;
    gDrawMidground = 0;
    gDrawEnvLayer = 0;
    gDrawBackground = 0;
    Actor_LoadSpawnTable(arg1);
    func_80046A9C();
    Sound_StopAllSfx();
    Sound_StopMusic();
}

void func_80046218(u16 arg0, u16 arg1) {
    gStageState = 0;
    D_800D28F4 = 0;
    D_800D28F0 = arg0;
    D_800D28E4 = 0x64;
    D_800D28EC = 0;
    if (arg1) {
        D_800D28FC |= 1;
    }
}

void func_80046274(u32 arg0, u32 arg1) {
}

void func_80046280(void) {
    if (D_800D28E4 < 0x68) {
        D_800BE568.whole = MIN(gScreenPosCurrentX.whole - 0x90, D_800D2920);
        D_800BE56C.whole = MAX(gScreenPosCurrentX.whole + 0x90, D_800D2924);
    }
}

void Camera_UpdateViewBounds(void) {
    if (D_800D28E4 < 0x68) {
        if ((D_800D2918 - 0x70) < gScreenPosCurrentY.whole) {
            D_800BE570.whole  = gScreenPosCurrentY.whole + 0x70;
        }
        else {
            D_800BE570.whole  = D_800D2918;
        }

        if (gScreenPosCurrentY.whole < (D_800D291C + 0x70)) {
            D_800BE574.whole = gScreenPosCurrentY.whole - 0x70;
        }
        else {
            D_800BE574.whole = D_800D291C;
        }

        if ((gScreenPosCurrentX.whole - 0x90) < D_800D2920) {
            D_800BE568.whole  = gScreenPosCurrentX.whole - 0x90;
        }
        else {
            D_800BE568.whole  = D_800D2920;
        }

        if (D_800D2924 < (gScreenPosCurrentX.whole + 0x90)) {
            D_800BE56C.whole  = gScreenPosCurrentX.whole + 0x90;
        }
        else {
            D_800BE56C.whole  = D_800D2924;
        }
    }
}

void func_800463C0(void) {
    Camera_UpdateViewBounds();
    D_800BE568.whole  = gScreenPosCurrentX.whole - 0x90;
}

s32 func_800463F0(void) {
    if((D_800D28FC & 0x1000) || (func_8005DEFC())) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_80046434(void) {
    if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(-48.0), FIXED_UNIT(8.0));
    }
    else {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(48.0), FIXED_UNIT(8.0));
    }
}

void func_80046498(void) {
    if (gPlayerActor.velocityX.raw < 0) {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(-64.0), FIXED_UNIT(4.0));
    }
    else if (gPlayerActor.velocityX.raw > 0) {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(64.0), FIXED_UNIT(4.0));
    }
    else if (func_800463F0() != 0) {
        func_80046434();
    }
    else if (gButtonHold & gButton_DRight) {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(64.0), FIXED_UNIT(8.0));
    }
    else if (gButtonHold & gButton_DLeft) {
        D_801782B0 = Math_ApproachS32(D_801782B0, FIXED_UNIT(-64.0), FIXED_UNIT(8.0));
    }
    else {
        func_80046434();
    }
    gScreenPosTargetX.raw = gPlayerPosX.raw + D_801782B0;
    if (gScreenPosTargetX.whole < D_800D2920 + 144) {
        gScreenPosTargetX.whole = D_800D2920 + 144;
    }
    if (gScreenPosTargetX.whole > D_800D2924 - 144) {
        gScreenPosTargetX.whole = D_800D2924 - 144;
    }
}

s32 func_800465F4(void) {
    if ((D_800D28FC & 0x2000) || (gPlayerActor.stateLower == 0x28) || (func_8005DEFC())) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void func_8004664C(void) {
    D_801782B4 = Math_ApproachS32(D_801782B4, 0, FIXED_UNIT(1.0));
}

void func_8004667C(void) {
    if (gPlayerActor.velocityY.raw < FIXED_UNIT(-3.0)) {
        D_801782B4 = Math_ApproachS32(D_801782B4, FIXED_UNIT(-64.0), FIXED_UNIT(2.0));
    }
    else if (gPlayerActor.velocityY.raw > FIXED_UNIT(3.0)) {
        D_801782B4 = Math_ApproachS32(D_801782B4, 0, FIXED_UNIT(2.0));
    }
    else if (func_800465F4()) {
        func_8004664C();
    }
    else if (gButtonHold & gButton_DUp) {
        D_801782B4 = Math_ApproachS32(D_801782B4, FIXED_UNIT(32.0), FIXED_UNIT(2.0));
    }
    else if (gButtonHold & gButton_DDown) {
        D_801782B4 = Math_ApproachS32(D_801782B4, FIXED_UNIT(-32.0), FIXED_UNIT(2.0));
    }
    else {
        func_8004664C();
    }
    gScreenPosTargetY.raw = gPlayerPosY.raw + D_801782B4;
    if (gScreenPosTargetY.whole < D_800D291C + 0x70) {
        gScreenPosTargetY.whole = D_800D291C + 0x70;
    }
    if (D_800D2918 - 0x70 < gScreenPosTargetY.whole) {
        gScreenPosTargetY.whole = D_800D2918 - 0x70;
    }
}

void func_800467EC(u16 actor_index) {
    gScreenPosTargetX.raw = (gActors[actor_index].posX.raw + gScreenPosCurrentX.raw + gPlayerPosX.raw) / 2;
    if (gScreenPosTargetX.raw > gPlayerPosX.raw + FIXED_UNIT(48.0)) {
        gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(48.0);
    }
    if (gScreenPosTargetX.raw < gPlayerPosX.raw - FIXED_UNIT(48.0)) {
        gScreenPosTargetX.raw = gPlayerPosX.raw - FIXED_UNIT(48.0);
    }
}

void func_80046890(u16 actor_index) {
    gScreenPosTargetY.raw = (gActors[actor_index].posY.raw + gScreenPosCurrentY.raw + gPlayerPosY.raw) / 2;
    if (gScreenPosTargetY.raw > gPlayerPosY.raw + FIXED_UNIT(80.0)) {
        gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(80.0);
    }
    if (gScreenPosTargetY.raw < gPlayerPosY.raw - FIXED_UNIT(80.0)) {
        gScreenPosTargetY.raw = gPlayerPosY.raw - FIXED_UNIT(80.0);
    }
}

s32 func_80046934(u16* arg0) {
    s32 temp_a2;
    u16 index;

    D_800D2974 &= 0xFFFE;
    if (gActors[0xC1].flags != 0) {
       return FALSE;
    }

    D_800D2968 = 0xFFFF;
    if (D_800D296C <= 0) {
        D_800D2974 |= 1;
        index = D_800D2964 * 4;
        temp_a2 = arg0[index + 0];
        if (temp_a2 == 0xFFFF) {
            D_800D2974 |= 0x8000;
            D_800D2964 = 0xFFFF;
            return TRUE;
        }
        D_800D2968 = arg0[index + 1];
        D_800D296C = arg0[index + 2];
        D_800D2970 = arg0[index + 3];
        D_800D2964++;
        if (temp_a2 != 0) {
            func_8007D384(temp_a2, 6);
        }
    }
    else {
        D_800D296C--;
    }
    return FALSE;
}

void func_80046A30(void) {
    u16 actor_index;

    func_800286C8();
    for (actor_index = 0xC0; actor_index < 0xC7; actor_index++) {
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK19) {
            gActors[actor_index].flags = 0;
        }
    }
}

void func_80046A9C(void) {
    u16 index;

    D_800D2938 = 0;
    func_80046A30();
    for (index = 0; index != 0x23; index++) {
        gPortraits[index].flags = ACTOR_GFLAG_PALETTE | PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE;
        gPortraits[index].palette = (uintptr_t)D_800D82DC;
        gPortraits[index].graphicIndex = 0x2D0;
        gPortraits[index].alpha = 0xFF;
        gPortraits[index].posX.whole = D_800D38B8[index * 2];
        gPortraits[index].posY.whole = D_800D38B8[index * 2 + 1] + 2;
        gPortraits[index].scaleX = 3.0f;
        gPortraits[index].scaleY = 3.0f;
    }
}

s32 func_80046B4C(void) {
    u16 index;

    switch (D_800D2938) {
    case 0:
        D_800D2938 += 1;
        D_800D293C = 0x14;
        func_80046A30();
        D_800D28FC |= 4;
        D_800D28FC &= ~8;
        /* fallthrough */
    case 1:
        if (!(D_800D28FC & 4)) {
            D_800D2938++;
            for (index = 0; index != 0x23; index++) {
                gPortraits[index].flags = ACTOR_GFLAG_PALETTE | PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE;
                gPortraits[index].palette = (uintptr_t)D_800D82DC;
                gPortraits[index].graphicIndex = 0x2D0;
                gPortraits[index].alpha = 0xFF;
                gPortraits[index].posX.whole = D_800D38B8[index * 2];
                gPortraits[index].posY.whole = D_800D38B8[index * 2 + 1] + 2;
                gPortraits[index].scaleX = 0.0f;
                gPortraits[index].scaleY = 0.0f;
            }
        }
    default:
        break;
    case 2:
        gPortraits[0].scaleX = Math_ApproachF32(gPortraits[0].scaleX, 3.0f, 0.15f);
        for (index = 0; index != 0x23; index++) {
            gPortraits[index].scaleX = gPortraits[0].scaleX;
            gPortraits[index].scaleY = gPortraits[0].scaleX;
        }
        if (gPortraits[0].scaleX >= 3.0) {
            D_800D2938++;
        }
        break;
    case 3:
        D_800D293C--;
        if (D_800D293C < 0) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}

s32 func_80046D5C(void) {
    u16 index;

    switch (D_800D2938) {
    case 0:
        gCannotPause = TRUE;
        gPortraits[0].alpha = Math_ApproachS32(gPortraits[0].alpha, 0, 0x10);
        if (gPortraits[0].alpha == 0) {
            D_800D2938++;
            for (index = 0; index != 0x23; index++) {
                gPortraits[index].flags = 0;
            }
        }
        else {
            for (index = 0; index != 0x23; index++) {
                gPortraits[index].alpha = gPortraits[0].alpha;
            }
        }
    default:
        break;
    case 1:
        gCannotPause = FALSE;
        D_800BE5D4 = 0;
        return TRUE;
    }
    return FALSE;
}

s32 Cutscene_CheckSkipInput(void) {
    if (gButtonPress & gButton_ZTrig) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 99;
        D_800D2938 = 0;
        return TRUE;
    }

    return FALSE;
}

s32 func_80046EBC(void) {
    u16 var_a1;
    u16 var_s1;

    D_800D2944 = 0;
    switch (D_800D2938) {
    case 0:
        D_800D2938++;
        D_800D293C = 0;
        D_800D2940 = 0x12;
        func_80046A30();
        var_a1 = ((Rand() & 3) * 0x23);
        for (var_s1 = 0; var_s1 != 0x23; var_s1++) {
            gPortraits[var_s1].flags = ACTOR_GFLAG_UNK14 | PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE;
            gPortraits[var_s1].palette = NULL;
            gPortraits[var_s1].graphicIndex = D_800D3AE8[(Rand() & 0x3F) + D_800D2944];
            gPortraits[var_s1].alpha = 0;
            gPortraits[var_s1].posX.whole = D_800D38B8[(var_a1 + var_s1) * 2];
            gPortraits[var_s1].posY.whole = D_800D38B8[(var_a1 + var_s1) * 2 + 1] + 2;
            gPortraits[var_s1].scaleX = 0.0f;
            gPortraits[var_s1].scaleY = 1.0f;
        }
        /* fallthrough */
    case 1:
        if (!(D_800D28FC & 4)) {
            Sound_PlaySfx(0xBB);
            if (D_800CBF40 == 0) {
                Sound_PlayMusic(0x19);
            }
            D_800D2938++;
        }
        break;
    case 2:
        gAudioFadeMode = 4;
        if ((D_800D293C == 0x23) && (--D_800D2940 < 0)) {
            Sound_StopAllSfx();
            if (D_800CBF40 != 0) {
                D_800D2940 = 0x14;
                Sound_StartFade(0x41, 0x14);
                D_800D2938 += 2;
            }
            else {
                D_800D2940 = 0x78;
                D_800D2938++;
            }
        }
        else {
            if (!(gFramesInScene & 3)) {
                D_800D293C += 2;
                if (D_800D293C >= 0x23) {
                    D_800D293C = 0x23;
                }
            }
            for (var_s1 = 0; var_s1 != D_800D293C; var_s1++) {
                gPortraits[var_s1].scaleX = Math_ApproachF32(gPortraits[var_s1].scaleX, 1.0f, 0.08f);
                gPortraits[var_s1].alpha = Math_ApproachS32(gPortraits[var_s1].alpha, 0xFF, 0x10);
            }
        }
        break;
    case 3:
        gAudioFadeMode = 4;
        if (((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) && (gAudioUpdateCounter < 248)) {
            Sound_StartFade(1, 0x28);
            D_800D2938++;
        }
        else if (gAudioUpdateCounter >= 0x121) {
            Sound_StopAllSfx();
            return TRUE;
        }
        break;
    case 4:
        if (gAudioFadeMode == 3) {
            Sound_StopAllSfx();
            D_800D2940 = 0x14;
            D_800D2938++;
        }
        break;
    case 5:
        if (D_800D2940-- < 0) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}

void func_800472D4(void) {
    gStageState++;
    D_800D2928 = 0xA0;
    func_8007CFE0(0xC7, 5, -0x28, 0, 0, 0x78);
}

void func_8004732C(void) {
    if (func_80046D5C()) {
        func_800472D4();
    }
}

s32 func_8004735C(u16 stage_stage, u32 actor_flags) {
    D_800D28FC |= 8;
    D_800D2928--;
    if (D_800D2928 < 0) {
        D_800D28FC &= ~6;
        func_8007CFE0(0xC7, 3, -0x28, 0, 0, 0x78);
        gPlayerActor.flags |= actor_flags;
        D_800BE5F4.unk_00_u32 = 5;
        gStageState = stage_stage;
        return TRUE;
    }
    else {
        return FALSE;
    }
}

s32 func_80047410(void) {
    u16 index;

    switch (D_800D2938) {
    case 0:
        D_800D2938++;
        D_800D293C = 0;
        D_800D2940 = 0x19;
        Sound_PlaySfx(0xBC);
        /* fallthrough */
    case 1:
        if ((D_800D293C == 0x23) && (--D_800D2940 < 0)) {
            D_800D2938++;
            for (index = 0; index != 0x23; index++) {
                gPortraits[index].flags = 0;
            }
        } else {
            if (!(gFramesInScene & 3)) {
                D_800D293C += 2;
                if (D_800D293C >= 0x23) {
                    D_800D293C = 0x23;
                }
            }
            for (index = 0; index != D_800D293C; index++) {
                gPortraits[index].scaleX = Math_ApproachF32(gPortraits[index].scaleX, 0.0f, 0.08f);
                gPortraits[index].alpha = Math_ApproachS32(gPortraits[index].alpha, 0, 0x10);
            }
        }
        break;
    case 2:
        gCannotPause = FALSE;
        return TRUE;
    }
    return FALSE;
}

s16 func_800475EC(void) {
    s16 delta_x;

    delta_x = gScreenPosCurrentX.whole - gScreenPosNextX.whole;
    if (delta_x >= 0) {
        D_800D2914 -= delta_x;
    }
    return D_800D2914--;
}

void func_80047648(s16 arg0){
    D_800D2914 = (arg0 - gPlayerActor.health / 10) + 100;
}

void func_80047674(void) {
}

void func_8004767C(u16 pos_x, u16 pos_y, u16 arg2, u16 mask, u16 stage_state) {
    if ((pos_x < gPlayerPosX.whole) && (gPlayerPosX.whole < (pos_x + 0x20)) &&
        (pos_y < gPlayerPosY.whole) && (gPlayerPosY.whole < (pos_y + 0x20)) &&
        (D_800D3B74 & mask) == 0) {
        D_800D28F8 = (arg2 * 2) + 2;
        D_800BE5F4.unk_00_u32 = 7;
        gStageState = stage_state;
    }
}

void func_80047714(u16 arg0, u16 arg1, u16 arg2, u16 stage_state) {
    u16 temp_t6;

    if (D_800D28F8 < 0) {
        D_800D3B74 |= arg2;
        gStageState = stage_state;
        D_800BE5F4.unk_00_u32 = 5;
    }
    else {
        if (func_8005DEFC() == 0) {
            D_800D28F8--;
        }
        if (!(D_800D28F8 & 1)) {
            temp_t6 = ((arg1 * 2) + 2);
            if ((temp_t6 > 2) && (D_800D28F8 == temp_t6 - 2)) {
                func_8005DF5C(arg0);
            }
            else if ((temp_t6 > 4) && (D_800D28F8 == temp_t6 - 4)) {
                func_8005DF5C(arg0 + 1);
            }
            else if ((temp_t6 > 6) && (D_800D28F8 == temp_t6 - 6)) {
                func_8005DF5C(arg0 + 2);
            }
            else if ((temp_t6 > 8) && (D_800D28F8 == temp_t6 - 8)) {
                func_8005DF5C(arg0 + 3);
            }
            else if ((temp_t6 > 10) && (D_800D28F8 == temp_t6 - 10)) {
                func_8005DF5C(arg0 + 4);
            }
            else if ((temp_t6 > 12) && (D_800D28F8 == temp_t6 - 12)) {
                func_8005DF5C(arg0 + 5);
            }
            else if ((temp_t6 > 14) && (D_800D28F8 == temp_t6 - 14)) {
                func_8005DF5C(arg0 + 6);
            }
            else if ((temp_t6 > 16) && (D_800D28F8 == temp_t6 - 16)) {
                func_8005DF5C(arg0 + 7);
            }
            D_800D28F8--;
        }
    }
}

void func_80047958(void) {
    u16 index = D_800D28F0 - 0x1F;

    gCurrentScene = D_800D28D0[index];
    gGameState = GAMESTATE_LOADING;
    gGameStateSubState = 0;
}

void func_80047994(void) {
    gCannotPause = TRUE;
    if (func_80046B4C() != 0) {
        D_800D2938 = 0;
        func_80020A54();
        Actor_ClearSceneActors();
        func_8005DFC8(0);
        D_800D16C4[0] = 0;
        Sound_StopAllSfx();
        if (D_800D28E4 == 0x62) {
            func_80047958();
        }
        D_800D28E4 = D_800D28F0;
    }
}

void func_80047A14(void) {
    func_80047994();
    if (D_800D28E4 == D_800D28F0) {
        gStageState = 0x1000;
    }
}

void func_80047A54(void) {
    gCannotPause = TRUE;
    D_800D28E4++;
    D_800D2928 = 0;
    D_800D28FC |= 4;
    D_800D28FC &= ~8;
    D_800BE544 = 0x8000;
    D_800D2938 = 0;
    gSkipStageIntro = 0;
    D_800D2900 = 0;
}

void func_80047AC4(void) {
    if (func_80046EBC()) {
        if (D_800D2900 == 0) {
            D_800D2900++;
            D_800BE5F4.unk_00_u32 = 4;
        }
        else {
            Actor_ClearSceneActors();
            D_800D2938 = 0;
            gStageState = 0;
            D_800D28F4 = 1;
            D_800D28E4 = D_800D28F0;
            func_80042D84(0);
            D_800D28FC &= ~1;
            func_80019688();
        }
    }
}

void func_80047B68(void) {
    switch (gStageState) {
    case 0:
        gStageState++;
        D_800BE5F4.unk_00_u32 = 4;
        /* fallthrough */
    case 1:
        if (func_80046D5C()) {
            gStageState++;
            Sound_PlayMusic(0x18);
        }
        /* fallthrough */
    case 2:
        D_800D28FC |= 0x80;
        if (gButtonPress & gButton_B) {
            Sound_PlayMusic(0x18);
        }
        break;
    }
}

void func_80047C28(void) {
    switch (gStageState) {
    case 1:
        break;
    case 0:
        if (func_80046D5C()) {
            gStageState++;
            D_800D28FC |= 4;
        }
        break;
    }
}

void func_80047C98(void) {
    if (!(D_800D28FC & 0x80)) {
        func_800451E4(D_800D2978);
    }
}

void func_80047CCC(void) {
    s32 index;
    if (D_800BE544 != 0) {
        D_801782B0 = 0;
        D_801782B4 = 0;
    }
    if (D_800D28E4 <= 0x60) {
        // 0x60 and lower are function ptr ptr
        (*(FuncVoidVoid*)D_800D3B78[D_800D28E4])();
    }
    else {
        // 0x61 and higher are function ptr
        index = D_800D28E4; // fakematch: index intermediate
        D_800D3B78[index]();
    }
    if (D_800D28FC & 4) {
        D_800D28FC &= ~4;
        gPortraits[0x40].flags &= ~(PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE);
        gPortraits[0x41].flags &= ~(PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE);
    }
    else if (D_800D28FC & 8) {
        D_800D28FC &= ~8;
        gPortraits[0x40].flags |= PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE;
        gPortraits[0x41].flags |= PORTRAIT_GFLAG_UNK1 | ACTOR_GFLAG_SCALE;
    }
    D_800D28FC &= ~0x300;
    D_800D2960 = 0;
    if (gNoHit >= 0) {
        if (gPlayerActor.health >= gNoHit) {
            gNoHit = gPlayerActor.health;
        }
        else {
            gNoHit = -1;
        }
    }
}
