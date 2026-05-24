#include "common.h"

extern s32 D_800BE5F4;
extern u8 D_8010692C;

u32 D_801B9BC0_7EA690[] = {
    0x05800198,
    0xFFF02090,
    0x02080128,
    0x0000FFEB,
};

u32 D_801B9BD0_7EA6A0[] = {
    0x00000031,
    0x05800184,
    0x00000000,
    0x16000000,
    0x00900390,
    0x0166FE07,
    0x0006000D,
    0x00000091,
    0x03900166,
    0x04070006,
    0x000D0000,
    0x00920390,
    0x0166FE07,
    0x000A000D,
    0x00000093,
    0x03900166,
    0x0407000A,
    0x000DFF00,
};

u32 D_801B9C18_7EA6E8[] = {
    0x00000011,
    0x00000000,
    0x00000000,
    0x1609FF00,
};

u32 D_801B9C28_7EA6F8[] = {
    0x00000030,
    0x00000000,
    0x00000003,
    0x0075FF00,
    0x00000000,
    0x00000000,
};
// function appears to be related to "Searin' Swing!"
void func_801B9900_7EA3D0(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28FC |= 4;
            D_8010692C = 0x40;
            D_800BE544 = 0x8000;
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x2000;
                gLetterboxMode = LETTERBOX_HORIZONTAL;
            }
            else {
                D_800D28E8 = D_800D28E8 + 1;
                func_80046148(D_801B9BC0_7EA690, 0);
                Actor_LoadSpawnTable(D_801B9C18_7EA6E8);
                gLetterboxMode = LETTERBOX_DEFAULT;
            }
            D_800BE4EC = 1;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8 = D_800D28E8 + 1;
                D_800BE4EC = 1;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 0x100:
            D_800D28E8 = D_800D28E8 + 1;
            D_800D28FC &= ~4;
            D_800D28FC |= 8;
            gLetterboxMode = LETTERBOX_HORIZONTAL;
            break;

        case 0x101:
            break;

        case 0x1000:
            Actor_ClearSceneActors();
            D_800D28E8 = D_800D28E8 + 1;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(D_801B9BD0_7EA6A0);
            D_800BE5F4 = 7;
            D_801373E0.unk_78 |= 1;
            D_800BE4EC = 1;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 0x100;
                D_800BE4EC = 1;
            }
            break;

        case 0x2000:
            D_800D28E8 = 0x1001;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(D_801B9BD0_7EA6A0);
            D_800BE5F4 = 7;
            D_801373E0.unk_78 |= 1;
            break;

        case 0x8000:
            func_80046188(D_801B9BC0_7EA690, D_801B9C28_7EA6F8);

        case 0x8001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = D_800D28E8 + 1;
            }
            break;

        case 0x8002:
            break;
    }
}
