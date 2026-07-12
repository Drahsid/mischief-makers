#include "common.h"
#include "actor.h"

extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern u16 D_800D2914;

// "overlay 4" code for demo and intro scenes

void func_801B9A78_7EA8A8(s16* arg0);
void func_801B9B2C_7EA95C(void);

u16 D_801B9FB0_7EADE0[] = {
    0x0200, 0x0100, 0x0170, 0x0290, 0x0170, 0x0090, 0x0000, 0x0000,
};

u16 D_801B9FC0_7EADF0[] = {
//  flags   index   posX    posY    0x110   0xD8   type
    0x0000, 0x0030, 0x0200, 0x0100, 0x0000, 0x0000, 0x2B05,
    0x0000, 0x0031, 0x01FE, 0x0104, 0x0000, 0x0000, 0x2B00,
    SPAWNRECORD_END
};

u16 D_801B9FE0_7EAE10[] = {
    0x0002, 0x00F4, 0xFF70, 0x0F90, 0x0F70, 0xFF90, 0x0000, 0x0000,
};

u16 D_801B9FF0_7EAE20[] = {
    0x0800, 0x015C, 0, 0xFFFF, 0xFFFF, 0, 0, 0,
};

s16 D_801BA000_7EAE30[] = {
    4, -2, 4, 0, 8, 8,
    5,  2, 5,
    31, 0, 2,
    // unused data?
    3, -13, -13, -13, -19, -19, 2, -11, -11, 5, -17, -15,
};

u16 D_801BA030_7EAE60[] = {
    0x002A, 0x08D0, 0x0125, 0x0042, 0x0738, 0x01E5, 0x0042, 0x0708,
    0x01E5, 0x0042, 0x0758, 0x01F5, 0x0042, 0x06E8, 0x01F5, 0x0013,
    0x0720, 0x01FE, 0x0013, 0x0700, 0x020E, 0x0013, 0x0740, 0x020E,
    0x0015, 0x06D0, 0x021E, 0x0015, 0x0770, 0x021E, 0x0025, 0x06B0,
    0x0225, 0x0025, 0x0790, 0x0225, 0x0013, 0x06F0, 0x022E, 0x0013,
    0x0750, 0x022E, 0x0050, 0x0720, 0x0230, 0x0025, 0x0690, 0x0235,
    0x0025, 0x07B0, 0x0235, 0x0013, 0x06B0, 0x023E, 0x0013, 0x0790,
    0x023E, 0x0013, 0x0770, 0x023E, 0x0013, 0x06D0, 0x023E, 0x0023,
    0x0690, 0x0245, 0x0025, 0x07D0, 0x0245, 0x0025, 0x0670, 0x0245,
    0x0023, 0x07B0, 0x0245, 0x0013, 0x0700, 0x024E, 0x0013, 0x0740,
    0x024E, 0x0013, 0x0720, 0x025E, 0x0000, 0x0000,
};

u16 D_801BA0DC_7EAF0C[] = {
//  flags   index   posX    posY    0x110   0xD8   type
    0x0000, 0x0030, 0x01FE, 0x0104, 0x0000, 0x0000, 0x2C02,
    SPAWNRECORD_END
};

u16 D_801BA0EC_7EAF1C[] = {
//  flags   index   posX    posY    0x110   0xD8   type
    0x0000, 0x0080, 0x0100, 0x014A, 0x0008, 0x0000, ACTORTYPE_13,
    0x0000, 0x0081, 0x0100, 0x014A, 0x0108, 0x0000, ACTORTYPE_13,
    0x0000, 0x0082, 0x0100, 0x014A, 0x0208, 0x0000, ACTORTYPE_13,
    0x0000, 0x0083, 0x0100, 0x014A, 0x0308, 0x0000, ACTORTYPE_13,
    0x0000, 0x0084, 0x0100, 0x014A, 0x0408, 0x0000, ACTORTYPE_13,
    0x0000, 0x0085, 0x0100, 0x014A, 0x0508, 0x0000, ACTORTYPE_13,
    0x0000, 0x0086, 0x0100, 0x014A, 0x0608, 0x0000, ACTORTYPE_13,
    0x0000, 0x0087, 0x0100, 0x014A, 0x0708, 0x0000, ACTORTYPE_13,
    SPAWNRECORD_END
};

u16 D_801BA160_7EAF90[] = {
//  flags   index   posX    posY    0x110   0xD8   type
    0x0000, 0x0030, 0x01FE, 0x0104, 0x0000, 0x0001, 0x2C03,
    SPAWNRECORD_END
};

void func_801B9900_7EA730(void) {
    switch (gStageState) {
        case 0:
            func_80045FA4(D_801B9FB0_7EADE0, NULL);
            Actor_LoadSpawnTable(D_801B9FC0_7EADF0);
            D_800BE5F4.unk_00_u32 = 4;
            gPlayerActor.flags = 0;
            D_800CA230 = 1;
            gStageState++;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                gStageState++;
            }
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801B99D0_7EA800(void) {
    switch (gStageState) {
        case 0:
            gStageState++;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                gStageState++;
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
    D_800BE568.whole = D_800D2920;
    D_800BE56C.whole = D_800D2924;
    D_800BE570.whole = D_800D2918;
    D_800BE574.whole = D_800D291C;
    D_800BE544 = 0x8000;
    D_800BE704 = 2;
    D_800BE708 = 2;
}

void func_801B9BB4_7EA9E4(void) {
    s32 temp = 2;
    switch (gStageState) {
        case 0:
            func_80045FA4(D_801B9FE0_7EAE10, 0);
            Actor_LoadSpawnTable(D_801BA0DC_7EAF0C);
            D_800BE5F4.unk_00_u32 = 4;
            gPlayerActor.flags = 0;
            D_800CA230 = 1;
            gStageState++;
            D_800BE578 = temp;
            D_800BE580 = -12;
            D_800D2920 = -0xF00;
            D_800D2924 = 0xF00;
            D_800D2918 = 0xF00;
            D_800D291C = -0xF00;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                gStageState++;
            }
            break;

        case 3:
            gStageState++;
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
            func_801B9A78_7EA8A8(D_801BA000_7EAE30);
            D_800D2904 = 0.0f;
            func_80045F14(D_801B9FF0_7EAE20);
            D_800D294C = 0;
            gGuestActorIndex = 0;
            D_801373E0.unk_78 &= 0xFFFEFFFA;
            D_801373E0.unk_78 |= 2;
            func_80045500();
            D_800D28FC &= -0x58B;
            D_800D28FC |= 4;
            D_800D2914 = 0;
            gLifebar.posY.whole = 0x50;
            gLifebarHead.posY.whole = 0x53;
            D_801376BC[0] = 1;
            D_801376BC[1] = 1;
            D_801376BC[2] = 1;
            func_8002653C();
            func_80042DBC(D_801BA030_7EAE60);
            Actor_LoadSpawnTable(D_801BA0EC_7EAF1C);
            func_801B9B2C_7EA95C();
            return;

        case 5:
            gStageState++;
            gScreenPosTargetX.whole = 1824;
            gScreenPosTargetY.whole = 1184;
            gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
            gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
            gScreenPosNextX.whole = gScreenPosCurrentX.whole;
            gScreenPosNextY.whole = gScreenPosCurrentY.whole;
            func_801B9B2C_7EA95C();
            D_800BE704 = 2;
            D_800BE708 = 2;
            break;

        case 7:
            gStageState++;
            func_80042DBC(NULL);
            break;

        case 2:
        case 4:
        case 6:
        case 8:
            break;
    }
}

void func_801B9EA4_7EACD4(void) {
    switch (gStageState) {
        case 0:
            func_80045FA4(D_801B9FE0_7EAE10, NULL);
            Actor_LoadSpawnTable(D_801BA160_7EAF90);
            D_800BE5F4.unk_00_u32 = 4;
            gPlayerActor.flags = 0;
            D_800CA230 = 1;
            gStageState++;
            D_800BE578 = 2;
            D_800BE580 = -12;
            D_800D2920 = -0xF00;
            D_800D2924 = 0xF00;
            D_800D2918 = 0xF00;
            D_800D291C = -0xF00;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                gStageState++;
            }
            break;

        case 2:
            break;
    }
}
