#include "common.h"

// "overlay 4" code for Title Screen and "Final Battle"

extern u8 D_8010692C;

u16 D_801B9BC0_7EA690[] = {
//  GlobalX GlobalY D_800D2920 D_800D2924 D_800D2918 D_800D291C PlayerX PlayerY
    0x0580, 0x0198, 0xFFF0,    0x2090,    0x0208,    0x0128,    0x0000, 0xFFEB
};

// an actor spawn table.
u16 D_801B9BD0_7EA6A0[] = {
//  flags  index posX    posY    0x110   0xD8    type    
    0,     0x31, 0x0580, 0x0184, 0x0000, 0,      0x1600,
    0,     0x90, 0x0390, 0x0166, 0xFE07, 6,      0x000D,
    0,     0x91, 0x0390, 0x0166, 0x0407, 6,      0x000D,
    0,     0x92, 0x0390, 0x0166, 0xFE07, 10,     0x000D,
    0,     0x93, 0x0390, 0x0166, 0x0407, 10,     0x000D,
    SPAWNRECORD_END
};

// an actor spawn entry.
u16 D_801B9C18_7EA6E8[] = {
//  flags  index posX    posY    0x110   0xD8    type        
    0,     0x11, 0,      0,      0,      0,      0x1609,
    SPAWNRECORD_END
};

// an actor spawn entry.
u16 D_801B9C28_7EA6F8[] = {
//  flags  index posX    posY    0x110   0xD8    type        
    0,     0x30,  0,      0,     0,      3,      0x75,
    SPAWNRECORD_END
};

// cinematic "state machine" for "Final Battle!!"
void func_801B9900_7EA3D0(void) {
    switch (gStageState) {
        case 0:
            D_800D28FC |= 4;
            D_8010692C = 0x40;
            D_800BE544 = 0x8000;
            if (gSkipStageIntro) {
                gStageState = 0x2000;
                gLetterboxMode = LETTERBOX_HORIZONTAL;
            }
            else {
                gStageState = gStageState + 1;
                func_80046148(D_801B9BC0_7EA690, (u16*)NULL);
                Actor_LoadSpawnTable(D_801B9C18_7EA6E8);
                gLetterboxMode = LETTERBOX_DEFAULT;
            }
            gCannotPause = TRUE;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageState = gStageState + 1;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 0x100:
            gStageState = gStageState + 1;
            D_800D28FC &= ~4;
            D_800D28FC |= 8;
            gLetterboxMode = LETTERBOX_HORIZONTAL;
            break;

        case 0x101:
            break;

        case 0x1000:
            Actor_ClearSceneActors();
            gStageState = gStageState + 1;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(D_801B9BD0_7EA6A0);
            D_800BE5F4.unk_00_u32 = 7;
            D_801373E0.unk_78 |= 1;
            gCannotPause = TRUE;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gStageState = 0x100;
                gCannotPause = TRUE;
            }
            break;

        case 0x2000:
            gStageState = 0x1001;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(D_801B9BD0_7EA6A0);
            D_800BE5F4.unk_00_u32 = 7;
            D_801373E0.unk_78 |= 1;
            break;

        case 0x8000:
            func_80046188(D_801B9BC0_7EA690, D_801B9C28_7EA6F8);

        case 0x8001:
            if (func_80046D5C() != 0) {
                gStageState = gStageState + 1;
            }
            break;

        case 0x8002:
            break;
    }
}
