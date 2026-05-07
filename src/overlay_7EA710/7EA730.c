#include "common.h"
#include "actor.h"

extern u16 D_800CA230;
extern u16 D_800BE4EC;
extern u16 D_800BE544;
extern s16 D_800BE550;
extern s16 D_800BE554;
extern s16 D_800BE558;
extern s16 D_800BE55C;
extern s16 D_800BE560;
extern s16 D_800BE564;
extern s16 D_800BE568;
extern s16 D_800BE56C;
extern s16 D_800BE570;
extern s16 D_800BE574;
extern s16 D_800BE578;
extern s16 D_800BE580;
extern s32 D_800BE5F4;
extern s16 D_800BE704;
extern s16 D_800BE708;
extern u16 D_800D28E8;
extern u32 D_800D28FC;
extern f32 D_800D2904;
extern u16 D_800D2914;
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern s16 D_800D294C;
extern s16 D_800D2950;
extern u16 D_80104098[];
extern u8 D_801376BC[];

typedef struct {
    /* 0x00 */ u8 unk_00[0x78];
    /* 0x78 */ u32 unk_78;
} UnkStruct_D_801373E0;

extern UnkStruct_D_801373E0 D_801373E0;

extern void func_80010C20(u16 arg0);
extern void func_800255B4(u16 arg0);
extern void func_80025BFC(void);
extern void func_80025E00(void);
extern void func_80026220(u16 arg0);
extern void func_8002653C(void);
extern void func_800265FC(u16 arg0);
extern void func_80026694(u16 arg0);
extern void func_8002670C(u16 arg0);
extern void func_80026784(u16 arg0);
extern void func_80026D88(u16 arg0);
extern void func_80026F2C(u16 arg0);
extern void func_800270E4(u16 arg0);
extern void func_800271B0(u16 arg0);
extern void func_80042DBC(void* arg0);
extern void func_80045500(void);
extern void func_80045D84(s32 arg0, s32 arg1);
extern void* func_80045F14(void* arg0);

void func_801B9A78_7EA8A8(s16* arg0);
void func_801B9B2C_7EA95C(void);

u32 D_801B9FB0_7EADE0[] = {
    0x02000100, 0x01700290, 0x01700090, 0x00000000,
};

u32 D_801B9FC0_7EADF0[] = {
    0x00000030, 0x02000100, 0x00000000, 0x2B050000,
    0x003101FE, 0x01040000, 0x00002B00, 0xFF000000,
};

u32 D_801B9FE0_7EAE10[] = {
    0x000200F4, 0xFF700F90, 0x0F70FF90, 0x00000000,
};

u32 D_801B9FF0_7EAE20[] = {
    0x0800015C, 0x0000FFFF, 0xFFFF0000, 0x00000000,
};

u32 D_801BA000_7EAE30[] = {
    0x0004FFFE, 0x00040000, 0x00080008, 0x00050002,
    0x0005001F, 0x00000002, 0x0003FFF3, 0xFFF3FFF3,
    0xFFEDFFED, 0x0002FFF5, 0xFFF50005, 0xFFEFFFF1,
};

u32 D_801BA030_7EAE60[] = {
    0x002A08D0, 0x01250042, 0x073801E5, 0x00420708,
    0x01E50042, 0x075801F5, 0x004206E8, 0x01F50013,
    0x072001FE, 0x00130700, 0x020E0013, 0x0740020E,
    0x001506D0, 0x021E0015, 0x0770021E, 0x002506B0,
    0x02250025, 0x07900225, 0x001306F0, 0x022E0013,
    0x0750022E, 0x00500720, 0x02300025, 0x06900235,
    0x002507B0, 0x02350013, 0x06B0023E, 0x00130790,
    0x023E0013, 0x0770023E, 0x001306D0, 0x023E0023,
    0x06900245, 0x002507D0, 0x02450025, 0x06700245,
    0x002307B0, 0x02450013, 0x0700024E, 0x00130740,
    0x024E0013, 0x0720025E, 0x00000000,
};

u32 D_801BA0DC_7EAF0C[] = {
    0x00000030, 0x01FE0104, 0x00000000, 0x2C02FF00,
};

u32 D_801BA0EC_7EAF1C[] = {
    0x00000080, 0x0100014A, 0x00080000, 0x000D0000,
    0x00810100, 0x014A0108, 0x0000000D, 0x00000082,
    0x0100014A, 0x02080000, 0x000D0000, 0x00830100,
    0x014A0308, 0x0000000D, 0x00000084, 0x0100014A,
    0x04080000, 0x000D0000, 0x00850100, 0x014A0508,
    0x0000000D, 0x00000086, 0x0100014A, 0x06080000,
    0x000D0000, 0x00870100, 0x014A0708, 0x0000000D,
    0xFF000000,
};

u32 D_801BA160_7EAF90[] = {
    0x00000030, 0x01FE0104, 0x00000001, 0x2C03FF00,
};

void func_801B9900_7EA730(void) {
    switch (D_800D28E8) {
        case 0:
            func_80045FA4(D_801B9FB0_7EADE0, 0);
            Actor_LoadSpawnTable(D_801B9FC0_7EADF0);
            D_800BE5F4 = 4;
            gActors[0].flags = 0;
            D_800CA230 = 1;
            D_800D28E8++;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28E8++;
            }
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801B99D0_7EA800(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28E8++;
            }
            break;

        case 3:
            D_800D28FC |= 1;
            func_80045D84(1, 0x5A);
            break;

        case 2:
            break;
    }
}

void func_801B9A78_7EA8A8(s16* arg0) {
    Palette_AdjustScenePalettes(0, 0, 0, arg0[0], arg0[1], arg0[2], arg0[3], arg0[4], arg0[5]);
    Palette_AdjustRgb5551Array((void*)0x80352B90, (void*)0x80352990, 0xFF, arg0[6], arg0[7], arg0[8]);
    Palette_AdjustRgb5551Array((void*)0x80355F90, (void*)0x80355D90, 0xFF, arg0[9], arg0[10], arg0[11]);
}

void func_801B9B2C_7EA95C(void) {
    D_800D2920 = 0;
    D_800D2924 = 0x7FFF;
    D_800D2918 = 0x7FFF;
    D_800D291C = 0;
    D_800BE568 = D_800D2920;
    D_800BE56C = D_800D2924;
    D_800BE570 = D_800D2918;
    D_800BE574 = D_800D291C;
    D_800BE544 = 0x8000;
    D_800BE704 = 2;
    D_800BE708 = 2;
}

void func_801B9BB4_7EA9E4(void) {
    s32 temp = 2;
    switch (D_800D28E8) {
        case 0:
            func_80045FA4(D_801B9FE0_7EAE10, 0);
            Actor_LoadSpawnTable(D_801BA0DC_7EAF0C);
            D_800BE5F4 = 4;
            gActors[0].flags = 0;
            D_800CA230 = 1;
            D_800D28E8++;
            D_800BE578 = temp;
            D_800BE580 = -0xC;
            D_800D2920 = -0xF00;
            D_800D2924 = 0xF00;
            D_800D2918 = 0xF00;
            D_800D291C = -0xF00;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28E8++;
            }
            break;

        case 3:
            D_800D28E8++;
            func_8002670C(0);
            func_80026784(0);
            func_800265FC(0);
            func_80026694(0);
            func_800255B4(0);
            func_80010C20(0);
            func_80026220(0);
            func_80025E00();
            func_80026D88(0);
            func_80026F2C(0);
            func_80026E60(0xF);
            func_800270E4(0x35);
            func_800271B0(0);
            func_80025BFC();
            func_801B9A78_7EA8A8((s16*)D_801BA000_7EAE30);
            D_800D2904 = 0.0f;
            func_80045F14(D_801B9FF0_7EAE20);
            D_800D294C = 0;
            D_800D2950 = 0;
            D_801373E0.unk_78 &= 0xFFFEFFFA;
            D_801373E0.unk_78 |= 2;
            func_80045500();
            D_800D28FC &= -0x58B;
            D_800D28FC |= 4;
            D_800D2914 = 0;
            D_80104098[5188] = 0x50;
            D_80104098[5268] = 0x53;
            D_801376BC[0] = 1;
            D_801376BC[1] = 1;
            D_801376BC[2] = 1;
            func_8002653C();
            func_80042DBC(D_801BA030_7EAE60);
            Actor_LoadSpawnTable(D_801BA0EC_7EAF1C);
            func_801B9B2C_7EA95C();
            return;

        case 5:
            D_800D28E8++;
            D_800BE550 = 0x720;
            D_800BE554 = 0x4A0;
            D_800BE558 = D_800BE550;
            D_800BE55C = D_800BE554;
            D_800BE560 = D_800BE558;
            D_800BE564 = D_800BE55C;
            func_801B9B2C_7EA95C();
            D_800BE704 = 2;
            D_800BE708 = 2;
            break;

        case 7:
            D_800D28E8++;
            func_80042DBC((void*)0);
            break;

        case 2:
        case 4:
        case 6:
        case 8:
            break;
    }
}

void func_801B9EA4_7EACD4(void) {
    switch (D_800D28E8) {
        case 0:
            func_80045FA4(D_801B9FE0_7EAE10, 0);
            Actor_LoadSpawnTable(D_801BA160_7EAF90);
            D_800BE5F4 = 4;
            gActors[0].flags = 0;
            D_800CA230 = 1;
            D_800D28E8++;
            D_800BE578 = 2;
            D_800BE580 = -0xC;
            D_800D2920 = -0xF00;
            D_800D2924 = 0xF00;
            D_800D2918 = 0xF00;
            D_800D291C = -0xF00;

        case 1:
            if (func_80046D5C() != 0) {
                D_800BE4EC = 1;
                D_800D28E8++;
            }
            break;

        case 2:
            break;
    }
}
