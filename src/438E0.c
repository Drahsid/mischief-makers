#include "common.h"
#include "actor.h"
#include "input.h"
#include "globalData.h"
#include "music.h"

extern u16 D_800D28E4;
extern u16 D_800D28F0;
extern u32 D_800D28FC;
extern u8 D_800D28D0[];
extern u16 D_800D2900;
extern s16 D_800D2914;
extern s32 D_800D2928;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s32 D_800D2938;
extern u16 D_800D2968;
extern s16 D_800D296C;
extern s16 D_800D2970;
extern s16 D_800D2974;
extern u16 D_800D2978[];
extern void* D_800D1968[];
extern void* D_800D19A8[];
extern void* D_800D19B8[];
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
extern u16 D_800D37A4;
extern u16 D_800D37A8;
extern u16 D_800D36DC[];
extern u16 D_800D36FC[];
extern u16 D_800D357C[];
extern u16 D_800D361C[];
extern s32 D_801782B4;
extern u16* D_801782BC;
extern u16 D_801782C0;
extern u16 D_801782C2;

extern u8 func_80012AB4(s16 arg0, s16 arg1);
extern void func_800472D4(void);
extern void func_80047994(void);

void func_80043D04(u16* spawn);
void func_80042D84(u16 arg0);
void func_800451E4(void* arg0);

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

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042E28.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042F2C.s")

void func_8004320C(void) {
    D_800D2968 = 0xFFFF;
    D_800D296C = 0;
    D_800D2974 = 0;
    D_800D2970 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004398C.s")

#ifdef NON_MATCHING
extern u16 func_8004398C(u16* spawn);

// https://decomp.me/scratch/oqVJs
void Actor_LoadSpawnTable(void* spawn_table) {
    ActorSpawnRecord* spawn;
    u16 flags;
    u16 actor_index;
    u16 jndex;
    u16 index;
    u16 counter;
    u16* entry;

    index = 0;
    counter = 0;
    jndex = 0;
    spawn = spawn_table;
    flags = spawn->flags;
    while (flags != SPAWNRECORD_END) {
        if (!(flags & 0x2000)) {
            actor_index = func_8004398C(spawn);
            flags = spawn->flags;

            if (flags & 0x8000) {
                entry = &D_800D357C[index];
                entry[0] = actor_index;
                entry[1] = gActors[actor_index].actorType;
                flags = spawn->flags;
                index += 2;
            }

            if (flags & 0x1000) {
                entry = &D_800D361C[jndex];
                entry[0] = actor_index;
                entry[1] = gActors[actor_index].actorType;
                entry[2] = counter;
                jndex += 3;
            }
        }

        flags = spawn[1].flags;
        counter += 7;
        spawn++;
    }

    while (index < 0x40) {
        D_800D357C[index] = 0;\
        index += 2;
    }
    while (jndex < 0x60) {
        D_800D361C[jndex] = 0;\
        jndex += 3;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/Actor_LoadSpawnTable.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D04.s")

void func_80043D30(void* spawn) {
    if (!gSkipStageIntro) {
        func_80043D04(spawn);
    }

    Actor_LoadSpawnTable(spawn);
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004400C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800441F4.s")

void func_80044360(void) {
    D_801069E0[D_801782C0].graphicIndex = 0xA;
    D_801069E0[D_801782C0].palette = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800446F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800447AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004495C.s")

void func_800449A8(void) {
    D_801069E0[D_801782C0].graphicIndex = 0x20;
    D_801069E0[D_801782C0].palette = D_800D19A8[D_801782C2 & 3];

    if ((func_80012AB4(D_801069E0[D_801782C0].posX.whole, D_801069E0[D_801782C0].posY.whole) & 0xC0) == 0) {
        *D_801782BC |= 0x8000;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044A38.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800451E4.s")

void func_80045500(void) {
    u16 index;

    for (index = 0; index < 0x10; index++) {
        D_800D36DC[index] = 0;
        D_800D36FC[index] = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045610.s")

s16 func_800456DC(void) {
    if (D_801782B8 & 0x20) {
        return 0xF - (D_801782B8 & 0x1F);
    }

    return (D_801782B8 & 0x1F) - 0xF;
}

u16 func_8004571C(void) {
    return Palette_AdjustRgb5551(0x8001, 0, 0, func_800456DC());
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800457C8.s")

void func_80045D84(u32 arg0, u32 arg1) {
    D_800D28E4 = 100;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045E58.s")

s32 func_80045F08(u32 arg0) {
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045FA4.s")

void func_80046148(void* arg0, u16* arg1){
    func_80045FA4(arg0,arg1);
    gPlayerActor.flags &= ~ACTOR_FLAG_DRAW;
    D_800BE5F4.unk_00_s32 = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046218.s")

void func_80046274(u32 arg0, u32 arg1) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046280.s")

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
    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800465F4.s")

void func_8004664C(void) {
    D_801782B4 = Math_ApproachS32(D_801782B4, 0, 0x10000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046D5C.s")

s32 Cutscene_CheckSkipInput(void) {
    if (gButtonPress & gButton_ZTrig) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 99;
        D_800D2938 = 0;
        return TRUE;
    }

    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800472D4.s")

void func_8004732C(void) {
    if (func_80046D5C() != 0) {
        func_800472D4();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004735C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800475EC.s")

void func_80047648(s16 arg0){
    D_800D2914 = (arg0 - gPlayerActor.health / 10) + 100;
}

void func_80047674(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047714.s")

void func_80047958(void) {
    u16 index = D_800D28F0 - 0x1F;

    gCurrentScene = D_800D28D0[index];
    gGameState = GAMESTATE_LOADING;
    gGameStateSubState = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047C28.s")

void func_80047C98(void) {
    if (!(D_800D28FC & 0x80)) {
        func_800451E4(D_800D2978);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047CCC.s")
