#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern s16 D_800D2918;
extern s16 D_800D2924;
extern s32 D_800BE5F4;

extern u32 D_801BC620_7C9800[];
extern s16 D_801BC7A8_7C9988[];
extern u32 D_801BE3EC_7CB5CC[];
extern u32 D_801BE3FC_7CB5DC[];
extern u32 D_801BE98C_7CBB6C[];
extern u32 D_801BEB24_7CBD04[];
extern u32 D_801BEB34_7CBD14[];
extern u32 D_801BEB54_7CBD34[];

extern s32 func_800475EC(void);
extern void func_80047648(s32 arg0);
extern void func_8004400C(void* arg0, s32 arg1, s32 arg2);

void func_801B9900_7C6AE0(s16* arg0) {
    Palette_AdjustScenePalettes(0, 0, 0, arg0[0], arg0[1], arg0[2], arg0[3], arg0[4], arg0[5]);
    Palette_AdjustRgb5551Array((u16*)0x80352B90, (u16*)0x80352990, 0xFF, arg0[6], arg0[7], arg0[8]);
    Palette_AdjustRgb5551Array((u16*)0x80355F90, (u16*)0x80355D90, 0xFF, arg0[9], arg0[10], arg0[11]);
}

void func_801B99B4_7C6B94(s16* arg0) {
    Palette_AdjustScenePalettes(0, 0, 0, arg0[0], arg0[1], arg0[2], arg0[3], arg0[4], arg0[5]);
    Palette_AdjustRgb5551Array((u16*)0x80343820, (u16*)0x80343750, 0x67, arg0[6], arg0[7], arg0[8]);
    Palette_AdjustRgb5551Array((u16*)0x80353000, (u16*)0x80352EF0, 0x87, arg0[9], arg0[10], arg0[11]);
    Palette_AdjustRgb5551Array((u16*)0x80358E20, (u16*)0x80358C40, 0xEF, arg0[12], arg0[13], arg0[14]);
    Palette_AdjustRgb5551Array((u16*)0x8035AD40, (u16*)0x8035AC00, 0x98, arg0[15], arg0[16], arg0[17]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801B9AC0_7C6CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BA008_7C71E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BA38C_7C756C.s")

void func_801BA694_7C7874(void) {
    gActors[0x8C].graphicFlags |= 0x10;
    gActors[0x8C].colorB = 0x58;\
    gActors[0x8C].colorG = 0x70;\
    gActors[0x8C].colorR = 0x30;
}

void func_801BA6C4_7C78A4(void) {
    switch (D_800D28E8) {
        case 0:
            func_801B99B4_7C6B94(D_801BC7A8_7C9988);
            D_800D28E8++;
            func_80045FA4(D_801BE3EC_7CB5CC, (s32)D_801BE3FC_7CB5DC);
            D_800BE5F4 = 8;
            Actor_LoadSpawnTable(D_801BC620_7C9800);
            Actor_LoadSpawnTable(D_801BE98C_7CBB6C);
            func_801BA694_7C7874();

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
            }

            Camera_UpdateViewBounds();
            break;

        case 2:
            Camera_UpdateViewBounds();

            if (D_800BE558 >= 0x711) {
                D_800D28E8++;
                D_800BE544 = 0x50;
                D_800BE568 = 0x680;
                Actor_LoadSpawnTable(D_801BEB24_7CBD04);
            }
            break;

        case 3:
            if (func_800475EC() < 0) {
                func_80047648(0x40);
                func_8004400C(D_801BEB34_7CBD14, -0xA0, 0x130);
            }

            if (*(s32*)((u8*)gActors + 0x8000) == 0) {
                D_800D28E8++;
                D_800BE544 = 0;
                D_800D2924 = 0xF50;
                D_800D2918 = 0x2D0;
                Actor_LoadSpawnTable(D_801BEB54_7CBD34);
            }
            break;

        case 4:
            D_800D28E8++;
            Camera_UpdateViewBounds();
            break;

        case 5:
            Camera_UpdateViewBounds();
            break;
    }

    func_80045E58(D_801BE98C_7CBB6C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BA89C_7C7A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BAB34_7C7D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BB310_7C84F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BB6AC_7C888C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BB6D0_7C88B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BBEF0_7C90D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_4/overlay_7C6AB0/7C6AE0/func_801BC2B0_7C9490.s")
