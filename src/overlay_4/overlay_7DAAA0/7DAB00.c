#include "common.h"
#include "actor.h"

// "overlay 4" code for the festival games and "Cerberus Alpha"

extern u16* D_80178288;

u16 D_801BB030_7DC230[] = {
//  flags   index   posX    posY    0x110   0xD8    type    
    0x0000, 0x0090, 0x00D0, 0x015E, 0x0000, 0x0002, 0x1A10,
    0x0000, 0x0091, 0x00D0, 0x015E, 0x0200, 0x0002, 0x1A10,
    0x0000, 0x0092, 0x00D0, 0x015E, 0x0400, 0x0002, 0x1A10,
    0x0000, 0x007E, 0x0100, 0x015E, 0x0000, 0x0000, 0x1A0F,
    0x0000, 0x007F, 0x0100, 0x015E, 0x0200, 0x0001, 0x1A0F,
    0x0000, 0x0080, 0x0100, 0x015E, 0x0400, 0x0000, 0x1A0F,
    0x0000, 0x0081, 0x0100, 0x015E, 0x0000, 0x0002, 0x1A0F,
    0x0000, 0x0082, 0x0100, 0x015E, 0x0200, 0x0003, 0x1A0F,
    0x0000, 0x0083, 0x0100, 0x015E, 0x0400, 0x0002, 0x1A0F,
    0x0000, 0x0084, 0x0100, 0x015E, 0x0000, 0x0004, 0x1A0F,
    0x0000, 0x0085, 0x0100, 0x015E, 0x0200, 0x0005, 0x1A0F,
    0x0000, 0x0086, 0x0100, 0x015E, 0x0400, 0x0004, 0x1A0F,
    0x0000, 0x0087, 0x0100, 0x015E, 0x0000, 0x000B, 0x1A0F,
    0x0000, 0x0088, 0x0100, 0x015E, 0x0200, 0x000B, 0x1A0F,
    0x0000, 0x0089, 0x0100, 0x015E, 0x0400, 0x000B, 0x1A0F,
    0x0000, 0x008A, 0x0100, 0x015E, 0x0000, 0x0007, 0x1A0F,
    0x0000, 0x008B, 0x0100, 0x015E, 0x0100, 0x0008, 0x1A0F,
    0x0000, 0x008C, 0x0100, 0x015E, 0x0200, 0x0009, 0x1A0F,
    0x0000, 0x008D, 0x0100, 0x015E, 0x0300, 0x000A, 0x1A0F,
    0x0000, 0x008E, 0x0100, 0x015E, 0x0400, 0x0007, 0x1A0F,
    0x0000, 0x008F, 0x0100, 0x015E, 0x0500, 0x0008, 0x1A0F, 
    SPAWNRECORD_END
};

u16 D_801BB158_7DC358[] = {
    0x01A0, 0x0196, 0x0110, 0x0230, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB168_7DC368[] = {
//  flags   index posX    posY    0x110  0xD8  type
    0x0000, 0x30, 0x0200, 0x01C0, 0,     0,    0x1A04,
    SPAWNRECORD_END
};

u16 D_801BB178_7DC378[] = {
    0x0274, 0x0196, 0x0150, 0xE090, 0x0206, 0x0126, 0xFF4C, 0xFFD8,
};

u16 D_801BB188_7DC388[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB198_7DC398[] = {
//  flags index posX posY 0x110 0xD8 type
    0,    0x30, 0,   0,   0,    1,   0x0100,
    SPAWNRECORD_END
};

u16 D_801BB1A8_7DC3A8[] = {
//  flags index   posX    posY    0x110   0xD8    type
    0,    0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB1B8_7DC3B8[] = {
    0x0274, 0x0196, 0x0150, 0x1700, 0x0206, 0x0126, 0xFF4C, 0xFFD8,
};

u16 D_801BB1C8_7DC3C8[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB1D8_7DC3D8[] = {
//  flags index posX posY 0x110  0xD8  type
    0,    0x30, 0,   0,   0,     0,    0x0100,
    SPAWNRECORD_END
};

u16 D_801BB1E8_7DC3E8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB1F8_7DC3F8[] = {
    0x0190, 0x0196, 0x0050, 0x1700, 0x0206, 0x0126, 0xFF50, 0xFFD8,
};

u16 D_801BB208_7DC408[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB218_7DC418[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0200, 0x01C0, 0x0000, 0x0000, 0x0700,
    SPAWNRECORD_END
};

u16 D_801BB228_7DC428[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB238_7DC438[] = {
    0x0230, 0x0196, 0x0100, 0x0360, 0x0206, 0x0126, 0x0000, 0x0060,
};

u16 D_801BB248_7DC448[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB258_7DC458[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0200, 0x01C0, 0x0000, 0x0000, 0x0E00,
    SPAWNRECORD_END
};

u16 D_801BB268_7DC468[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB278_7DC478[] = {
    0x0274, 0x0196, 0x0150, 0xE090, 0x0206, 0x0126, 0xFF4C, 0xFFD8,
};

u16 D_801BB288_7DC488[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB298_7DC498[] = {
//  flags index posX posY 0x110 0xD8 type
    0,    0x30, 0,   0,   0,    2,   0x0100,
    SPAWNRECORD_END
};

u16 D_801BB2A8_7DC4A8[] = {
//  flags index posX    posY    0x110   0xD8    type
    0,    0x30, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB2B8_7DC4B8[] = {
    0x0274, 0x0196, 0x0150, 0x1700, 0x0206, 0x0126, 0xFF4C, 0xFFD8,
};

u16 D_801BB2C8_7DC4C8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0000, 0x0000, 0x0000, 0x0003, 0x0100,
    0x0000, 0x004B, 0x0785, 0x0180, 0xFF01, 0x1E03, 0x1A03,
    0x0000, 0x004D, 0x0B89, 0x01A3, 0xFF01, 0x2006, 0x1A03,
    SPAWNRECORD_END
};

u16 D_801BB2F4_7DC4F4[] = {
    0x0274, 0x0196, 0x0150, 0x1700, 0x0206, 0x0126, 0xFF4C, 0xFFD8,
};

u16 D_801BB304_7DC504[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB314_7DC514[] = {
    0x0011, 0x0330, 0x016E, 0x0014, 0x03B0, 0x016E, 0x0011, 0x0430,
    0x016E, 0x0014, 0x04B0, 0x016E, 0x0013, 0x0780, 0x016E, 0x0013,
    0x0800, 0x016E, 0x0013, 0x0700, 0x016E, 0x0013, 0x0990, 0x016E,
    0x0013, 0x0610, 0x016E, 0x0013, 0x0550, 0x016E, 0x0016, 0x08B0,
    0x016E, 0x0016, 0x08F0, 0x016E, 0x0013, 0x09D0, 0x016E, 0x0016,
    0x0600, 0x018E, 0x0016, 0x0560, 0x018E, 0x0013, 0x08C0, 0x018E,
    0x0013, 0x08E0, 0x018E, 0x0016, 0x09A0, 0x018E, 0x0016, 0x09C0,
    0x018E, 0x0013, 0x05B0, 0x01AE, 0x0016, 0x08D0, 0x01AE, 0x0016,
    0x05D0, 0x01AE, 0x0013, 0x05F0, 0x01AE, 0x0014, 0x07C0, 0x01AE,
    0x0013, 0x09B0, 0x01AE, 0x0013, 0x0570, 0x01AE, 0x0014, 0x0740,
    0x01AE, 0x0016, 0x0590, 0x01AE, 0x0011, 0x0780, 0x01BE, 0x0011,
    0x0700, 0x01BE, 0x0011, 0x0800, 0x01BE, 0x0000,
};

u16 D_801BB3D0_7DC5D0[] = {
//  flags index posX posY 0x110 0xD8 type
    0,    0x30, 0,   0,   0,    4,   0x0100,
    SPAWNRECORD_END
};

u16 D_801BB3E0_7DC5E0[] = {
    0x0000, 0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E, 
    SPAWNRECORD_END
};

u16 D_801BB3F0_7DC5F0[] = {
    0x0238, 0x0196, 0x00C0, 0x03B0, 0x0206, 0x0126, 0x0000, 0xFFD8,
};

u16 D_801BB400_7DC600[] = {
    0x0000, 0x0030, 0x0200, 0x01C0, 0x0000, 0x0000, 0x0703,
    SPAWNRECORD_END,
};

u16 D_801BB410_7DC610[] = {
    0x0238, 0x0196, 0x0180, 0x02E0, 0x0206, 0x0126, 0xFF50, 0xFFD8,
};

u16 D_801BB420_7DC620[] = {
    0x0230, 0x0196, 0x0070, 0x1090, 0x0206, 0x0126, 0xFFD0, 0xFFD8,
};

u16 D_801BB430_7DC630[] = {
    0x0000, 0x0030, 0x0200, 0x01C0, 0x0000, 0x0000, 0x0707,
    SPAWNRECORD_END
};

u16 D_801BB440_7DC640[] = {
    0x0000, 0x0030, 0x0260, 0x016E, 0x0100, 0x2130, 0x1A0E,
    SPAWNRECORD_END
};

u16 D_801BB450_7DC650[] = {
    0x01A0, 0x0196, 0x0110, 0x0230, 0x0206, 0x0126, 0xFFE0, 0xFFEB,
};

u16 D_801BB460_7DC660[] = {
    0x0000, 0x0030, 0x0000, 0x0000, 0x0000, 0x0000, 0x1A05,
    SPAWNRECORD_END
};

u16 D_801BB470_7DC670[] = {
    0x0400, 0x0198, 0xFF70, 0x1700, 0x0208, 0x0128, 0xFFE0, 0xFFEB,
};

u16 D_801BB480_7DC680[] = {
    0x0000, 0x0090, 0x0390, 0x01A6, 0xFE03, 0x0003, ACTORTYPE_13,
    0x0000, 0x0091, 0x0390, 0x01A6, 0x0403, 0x0003, ACTORTYPE_13,
    0x0000, 0x0092, 0x0390, 0x01A6, 0xFE03, 0x0007, ACTORTYPE_13,
    0x0000, 0x0093, 0x0390, 0x01A6, 0x0403, 0x0007, ACTORTYPE_13,
    SPAWNRECORD_END
};

u16 D_801BB4BC_7DC6BC[] = {
    0x0000, 0x008F, 0x0440, 0x0184, 0x0001, 0x0000, 0x0F03,
    SPAWNRECORD_END
};

u16 D_801BB4CC_7DC6CC[] = {
    0x0000, 0x0030, 0x0000, 0x0000, 0x0000, 0x0001, 0x0075,
    SPAWNRECORD_END,
};

void func_801B9900_7DAB00(void) {
}

void func_801B9908_7DAB08(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_80045FA4(D_801BB158_7DC358, NULL);
            D_800D2928 = 1;
            D_800BE5F4.unk_00_u32 = 4;
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB168_7DC368);
            gFestivalCurrentEvent = FESTGAME_SELECT;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801B99D4_7DABD4(void) {
    func_80045FA4(D_801BB188_7DC388, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1A8_7DC3A8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9A28_7DAC28(void) {
    func_80045FA4(D_801BB178_7DC378, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB198_7DC398);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801B9A8C_7DAC8C(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801B99D4_7DABD4();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(2, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 99;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801B9A28_7DAC28();
                    {
                        s32 temp;

                        temp = 3;
                        D_800BE5F4.unk_00_s32 = temp;
                        *(s16*)&gStageState = temp;
                    }
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801B9C58_7DAE58(void) {
    func_80045FA4(D_801BB1C8_7DC3C8, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1E8_7DC3E8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9CAC_7DAEAC(void) {
    func_80045FA4(D_801BB1B8_7DC3B8, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1D8_7DC3D8);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801B9D10_7DAF10(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801B9C58_7DAE58();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_s32 = 3;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 99;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if ((D_800D2928 <= 0) && (gAudioFadeMode != 1)) {
                s32 temp;

                Actor_ClearRange(0x30, 0xC0);
                func_801B9CAC_7DAEAC();
                temp = 3;
                D_800BE5F4.unk_00_s32 = temp;
                *(s16*)&gStageState = temp;
            }
            break;

        case 4:
            break;
    }
}

void func_801B9EDC_7DB0DC(void) {
    func_80045FA4(D_801BB208_7DC408, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB228_7DC428);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9F30_7DB130(void) {
    func_80045FA4(D_801BB1F8_7DC3F8, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB218_7DC418);
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9F78_7DB178(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801B9EDC_7DB0DC();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(5, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801B9F30_7DB130();
                    gStageState = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA144_7DB344(void) {
    func_80045FA4(D_801BB248_7DC448, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB268_7DC468);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BA198_7DB398(void) {
    func_80045FA4(D_801BB238_7DC438, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB258_7DC458);
}

void func_801BA1D8_7DB3D8(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801BA144_7DB344();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(6, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801BA198_7DB398();
                    gStageState = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA3A4_7DB5A4(void) {
    func_80045FA4(D_801BB288_7DC488, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB2A8_7DC4A8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BA3F8_7DB5F8(void) {
    func_80045FA4(D_801BB278_7DC478, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB298_7DC498);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801BA45C_7DB65C(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801BA3A4_7DB5A4();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(3, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    s32 temp;

                    Actor_ClearRange(0x30, 0xC0);
                    func_801BA3F8_7DB5F8();
                    temp = 3;
                    D_800BE5F4.unk_00_s32 = temp;
                    *(s16*)&gStageState = temp;
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801BA628_7DB828(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_80045FA4(D_801BB2B8_7DC4B8, NULL);
            D_800BE5F4.unk_00_u32 = 3;
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            Actor_LoadSpawnTable(D_801BB2C8_7DC4C8);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 2:
            break;

        case 4:
            func_80046218(D_800D28E4, 0);
            break;
    }

    func_801B9900_7DAB00();
}

void func_801BA6EC_7DB8EC(void) {
    func_80045FA4(D_801BB304_7DC504, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB3E0_7DC5E0);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BA740_7DB940(void) {
    func_80045FA4(D_801BB2F4_7DC4F4, D_801BB314_7DC514);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB3D0_7DC5D0);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
    D_800BE710 = TRUE;
    D_80178288 = (u16*)D_801BB314_7DC514;
}

void func_801BA7C4_7DB9C4(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801BA6EC_7DB8EC();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(4, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    s32 temp;

                    Actor_ClearRange(0x30, 0xC0);
                    func_801BA740_7DB940();
                    temp = 3;
                    D_800BE5F4.unk_00_s32 = temp;
                    *(s16*)&gStageState = temp;
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801BA990_7DBB90(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_80045FA4(D_801BB3F0_7DC5F0, NULL);
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB400_7DC600);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 2:
            break;

        case 4:
            func_80046218(D_800D28E4, 0);
            break;
    }

    Camera_UpdateViewBounds();
    func_801B9900_7DAB00();
}

void func_801BAA50_7DBC50(void) {
    func_80045FA4(D_801BB420_7DC620, NULL);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB440_7DC640);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BAAA4_7DBCA4(void) {
    func_80045FA4(D_801BB410_7DC610, NULL);
    D_800BE5F4.unk_00_u32 = 3;
    D_800D28FC |= 0x80;
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB430_7DC630);
}

void func_801BAB04_7DBD04(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_801BAA50_7DBC50();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28F8 = 4;
            }
            break;

        case 2:
            func_80047714(7, 1, 1, 3);
            if ((gStageState - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
                gCannotPause = TRUE;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                gStageState = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            gStageState++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801BAAA4_7DBCA4();
                    gStageState = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BACD0_7DBED0(void) {
    switch (gStageState) {
        case 0:
            gStageState++;
            func_80045FA4(D_801BB450_7DC650, NULL);
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB460_7DC660);

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            break;

        case 4:
            func_80046218(D_800D28E4, 0);
            break;
    }

    Camera_UpdateViewBounds();
    func_801B9900_7DAB00();
}

void func_801BAD9C_7DBF9C(void) {
    switch (gStageState) {
        case 0:
            if (gSkipStageIntro) {
                gStageState = 0x1000;
            }
            else {
                gStageState++;
                func_80046148(D_801BB470_7DC670, NULL);
                Actor_LoadSpawnTable(D_801BB480_7DC680);
                Actor_LoadSpawnTable(D_801BB4BC_7DC6BC);
                D_800BE544 = 0x8000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 3:
            gStageState++;
            D_800D28FC |= 8;
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;
            D_800BE5F4.unk_00_u32 = 5;
            gCannotPause = FALSE;
            break;

        case 5:
            gStageState++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            gStageState++;
            Actor_LoadSpawnTable(D_801BB480_7DC680);
            break;

        case 9:
            gStageState = 0xC000;
            break;

        case 0x1000:
            gStageState++;
            func_80045FA4(D_801BB470_7DC670, NULL);
            Actor_LoadSpawnTable(D_801BB480_7DC680);
            Actor_LoadSpawnTable(D_801BB4BC_7DC6BC);
            gActors[0x8F].state = 0x10;
            D_800BE5F4.unk_00_u32 = 5;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gStageState = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BB470_7DC670, D_801BB4CC_7DC6CC);

        case 0xC001:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 4:
        case 6:
        case 8:
        case 0xC002:
            break;
    }
}
