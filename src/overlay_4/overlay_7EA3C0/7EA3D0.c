#include "common.h"
#include "letterbox.h"

// "overlay 4" code for Title Screen and "Final Battle"

extern u8 D_8010692C;

u16 D_801B9BC0_7EA690[] = {
//  GlobalX GlobalY D_800D2920 D_800D2924 D_800D2918 D_800D291C PlayerX PlayerY
    0x0580, 0x0198, 0xFFF0,    0x2090,    0x0208,    0x0128,    0x0000, 0xFFEB
};

// actor spawn table for "Final Battle"
u16 sActorSpawn_5_8A[] = {
//  flags  index posX    posY    0x110   0xD8    type    
    0,     0x31, 0x0580, 0x0184, 0x0000, 0,      ACTORTYPE_OVL0_FINAL_MAIN,
    0,     0x90, 0x0390, 0x0166, 0xFE07, 6,      ACTORTYPE_13,
    0,     0x91, 0x0390, 0x0166, 0x0407, 6,      ACTORTYPE_13,
    0,     0x92, 0x0390, 0x0166, 0xFE07, 10,     ACTORTYPE_13,
    0,     0x93, 0x0390, 0x0166, 0x0407, 10,     ACTORTYPE_13,
    SPAWNRECORD_END
};

// actor spawn table for "Final Battle"'s intro.
u16 sActorSpawn_5_8B[] = {
//  flags  index posX    posY    0x110   0xD8    type        
    0,     0x11, 0,      0,      0,      0,      ACTORTYPE_OVL0_FINAL_INTRO_9,
    SPAWNRECORD_END
};

// spawn "Final Battle"'s outro
u16 sActorSpawn_5_8Exit[] = {
//  flags  index posX    posY    0x110   0xD8    type        
    0,     0x30,  0,      0,     0,      3,      ACTORTYPE_LEVELCLEAR,
    SPAWNRECORD_END
};

// stage state machine for "Final Battle!!"
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
                gStageState++;
                func_80046148(D_801B9BC0_7EA690, NULL);
                Actor_LoadSpawnTable(sActorSpawn_5_8B);
                gLetterboxMode = LETTERBOX_DEFAULT;
            }
            gCannotPause = TRUE;
            break;

        case 1:
            if (Transition_FadeOut()) {
                gStageState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 0x100:
            gStageState++;
            D_800D28FC &= ~4;
            D_800D28FC |= 8;
            gLetterboxMode = LETTERBOX_HORIZONTAL;
            break;

        case 0x101:
            break;

        case 0x1000:
            Actor_ClearSceneActors();
            gStageState++;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(sActorSpawn_5_8A);
            D_800BE5F4.unk_00_u32 = MARINAANIM_7;
            gPlayerData.flags |= PLAYERDATA_UNK0;
            gCannotPause = TRUE;
            break;

        case 0x1001:
            if (Transition_FadeOut()) {
                gStageState = 0x100;
                gCannotPause = TRUE;
            }
            break;

        case 0x2000:
            gStageState = 0x1001;
            func_80045FA4(D_801B9BC0_7EA690, 0);
            Actor_LoadSpawnTable(sActorSpawn_5_8A);
            D_800BE5F4.unk_00_u32 = MARINAANIM_7;
            gPlayerData.flags |= PLAYERDATA_UNK0;
            break;

        case 0x8000:
            func_80046188(D_801B9BC0_7EA690, sActorSpawn_5_8Exit);

        case 0x8001:
            if (Transition_FadeOut()) {
                gStageState++;
            }
            break;

        case 0x8002:
            break;
    }
}
