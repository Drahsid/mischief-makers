#include "common.h"
#include "actor.h"
#include "input.h"

extern u16 D_800BE52C;
extern s16 D_800BE568;
extern s16 D_800BE56C;
extern s16 D_800BE570;
extern s16 D_800BE574;
extern u16 D_800D28E4;
extern u16 D_800D28F0;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s32 D_800D2938;
extern u16 D_800D357C[];
extern u16 D_800D361C[];

typedef struct {
    /* 0x00 */ u16 flags;
    /* 0x02 */ u8 unk_02[0xC];
} ActorSpawnRecord; /* size = 0xE */

void func_80042CE0(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042E28.s")

void Palette_AdjustScenePalettes(
    s16 blue_offset_0, s16 green_offset_0, s16 red_offset_0,
    s16 blue_offset_1, s16 green_offset_1, s16 red_offset_1,
    s16 blue_offset_2, s16 green_offset_2, s16 red_offset_2
)
{
    Palette_AdjustRgb5551Array((u16*)0x803DA200, (u16*)0x80380000, 0xFF, blue_offset_0, green_offset_0, red_offset_0);
    Palette_AdjustRgb5551Array((u16*)0x803DA400, (u16*)0x80380200, 0xFF, blue_offset_1, green_offset_1, red_offset_1);
    Palette_AdjustRgb5551Array((u16*)0x803DA600, (u16*)0x80380400, 0xFF, blue_offset_2, green_offset_2, red_offset_2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80042F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004320C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004398C.s")

#ifdef NON_MATCHING
extern u16 func_8004398C(ActorSpawnRecord* spawn);

void Actor_LoadSpawnTable(void* spawn_table) {
    ActorSpawnRecord* spawn;
    u16 flags;
    u16 actor_index;
    u16 pair_index;
    u16 group_index;
    u16 record_offset;
    u16* entry;

    spawn = spawn_table;
    pair_index = 0;
    record_offset = 0;
    group_index = 0;

    flags = spawn->flags;
    while (flags != 0xFF00) {
        if (!(flags & 0x2000)) {
            actor_index = func_8004398C(spawn);
            flags = spawn->flags;

            if (flags & 0x8000) {
                entry = &D_800D357C[pair_index];
                entry[0] = actor_index;
                pair_index += 2;
                entry[1] = gActors[actor_index].actorType;
                flags = spawn->flags;
            }

            if (flags & 0x1000) {
                entry = &D_800D361C[group_index];
                entry[0] = actor_index;
                group_index += 3;
                entry[1] = gActors[actor_index].actorType;
                entry[2] = record_offset;
            }
        }

        spawn++;
        record_offset += 7;
        flags = spawn->flags;
    }

    while (pair_index < 0x40) {
        D_800D357C[pair_index] = 0;
        pair_index += 2;
    }

    while (group_index < 0x60) {
        D_800D361C[group_index] = 0;
        group_index += 3;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/438E0/Actor_LoadSpawnTable.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80043E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004400C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800441F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800446F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800447AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004495C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800449A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044A84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044C90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044CEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80044FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800450D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004512C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800451E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045544.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800456DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004571C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800457C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80045FA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046280.s")

void Camera_UpdateViewBounds(void) {
    if (D_800D28E4 < 0x68) {
        if ((D_800D2918 - 0x70) < D_800BE55C) {
            D_800BE570 = D_800BE55C + 0x70;
        }
        else {
            D_800BE570 = D_800D2918;
        }

        if (D_800BE55C < (D_800D291C + 0x70)) {
            D_800BE574 = D_800BE55C - 0x70;
        }
        else {
            D_800BE574 = D_800D291C;
        }

        if ((D_800BE558 - 0x90) < D_800D2920) {
            D_800BE568 = D_800BE558 - 0x90;
        }
        else {
            D_800BE568 = D_800D2920;
        }

        if (D_800D2924 < (D_800BE558 + 0x90)) {
            D_800BE56C = D_800BE558 + 0x90;
        }
        else {
            D_800BE56C = D_800D2924;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800463C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800463F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800465F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004664C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800467EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046A9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046D5C.s")

s32 Cutscene_CheckSkipInput(void) {
    if (gButtonPress & D_800BE52C) {
        D_800D28F0 = D_800D28E4;
        D_800D28E4 = 0x63;
        D_800D2938 = 0;
        return 1;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80046EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800472D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004732C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004735C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_800475EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047648.s")

void func_80047674(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_8004767C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047C28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047C98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/438E0/func_80047CCC.s")
