#include "common.h"
#include "actor.h"

extern s16 D_800D2924;
extern u16 D_800D28F8;
extern u32 D_80178288;

u32 D_801BB030_7DC230[] = {
    0x00000090, 0x00D0015E, 0x00000002, 0x1A100000,
    0x009100D0, 0x015E0200, 0x00021A10, 0x00000092,
    0x00D0015E, 0x04000002, 0x1A100000, 0x007E0100,
    0x015E0000, 0x00001A0F, 0x0000007F, 0x0100015E,
    0x02000001, 0x1A0F0000, 0x00800100, 0x015E0400,
    0x00001A0F, 0x00000081, 0x0100015E, 0x00000002,
    0x1A0F0000, 0x00820100, 0x015E0200, 0x00031A0F,
    0x00000083, 0x0100015E, 0x04000002, 0x1A0F0000,
    0x00840100, 0x015E0000, 0x00041A0F, 0x00000085,
    0x0100015E, 0x02000005, 0x1A0F0000, 0x00860100,
    0x015E0400, 0x00041A0F, 0x00000087, 0x0100015E,
    0x0000000B, 0x1A0F0000, 0x00880100, 0x015E0200,
    0x000B1A0F, 0x00000089, 0x0100015E, 0x0400000B,
    0x1A0F0000, 0x008A0100, 0x015E0000, 0x00071A0F,
    0x0000008B, 0x0100015E, 0x01000008, 0x1A0F0000,
    0x008C0100, 0x015E0200, 0x00091A0F, 0x0000008D,
    0x0100015E, 0x0300000A, 0x1A0F0000, 0x008E0100,
    0x015E0400, 0x00071A0F, 0x0000008F, 0x0100015E,
    0x05000008, 0x1A0FFF00,
};

u32 D_801BB158_7DC358[] = {
    0x01A00196, 0x01100230, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB168_7DC368[] = {
    0x00000030, 0x020001C0, 0x00000000, 0x1A04FF00,
};

u32 D_801BB178_7DC378[] = {
    0x02740196, 0x0150E090, 0x02060126, 0xFF4CFFD8,
};

u32 D_801BB188_7DC388[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB198_7DC398[] = {
    0x00000030, 0x00000000, 0x00000001, 0x0100FF00,
};

u32 D_801BB1A8_7DC3A8[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB1B8_7DC3B8[] = {
    0x02740196, 0x01501700, 0x02060126, 0xFF4CFFD8,
};

u32 D_801BB1C8_7DC3C8[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB1D8_7DC3D8[] = {
    0x00000030, 0x00000000, 0x00000000, 0x0100FF00,
};

u32 D_801BB1E8_7DC3E8[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB1F8_7DC3F8[] = {
    0x01900196, 0x00501700, 0x02060126, 0xFF50FFD8,
};

u32 D_801BB208_7DC408[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB218_7DC418[] = {
    0x00000030, 0x020001C0, 0x00000000, 0x0700FF00,
};

u32 D_801BB228_7DC428[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB238_7DC438[] = {
    0x02300196, 0x01000360, 0x02060126, 0x00000060,
};

u32 D_801BB248_7DC448[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB258_7DC458[] = {
    0x00000030, 0x020001C0, 0x00000000, 0x0E00FF00,
};

u32 D_801BB268_7DC468[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB278_7DC478[] = {
    0x02740196, 0x0150E090, 0x02060126, 0xFF4CFFD8,
};

u32 D_801BB288_7DC488[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB298_7DC498[] = {
    0x00000030, 0x00000000, 0x00000002, 0x0100FF00,
};

u32 D_801BB2A8_7DC4A8[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB2B8_7DC4B8[] = {
    0x02740196, 0x01501700, 0x02060126, 0xFF4CFFD8,
};

u32 D_801BB2C8_7DC4C8[] = {
    0x00000030, 0x00000000, 0x00000003, 0x01000000,
    0x004B0785, 0x0180FF01, 0x1E031A03, 0x0000004D,
    0x0B8901A3, 0xFF012006, 0x1A03FF00,
};

u32 D_801BB2F4_7DC4F4[] = {
    0x02740196, 0x01501700, 0x02060126, 0xFF4CFFD8,
};

u32 D_801BB304_7DC504[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB314_7DC514[] = {
    0x00110330, 0x016E0014, 0x03B0016E, 0x00110430,
    0x016E0014, 0x04B0016E, 0x00130780, 0x016E0013,
    0x0800016E, 0x00130700, 0x016E0013, 0x0990016E,
    0x00130610, 0x016E0013, 0x0550016E, 0x001608B0,
    0x016E0016, 0x08F0016E, 0x001309D0, 0x016E0016,
    0x0600018E, 0x00160560, 0x018E0013, 0x08C0018E,
    0x001308E0, 0x018E0016, 0x09A0018E, 0x001609C0,
    0x018E0013, 0x05B001AE, 0x001608D0, 0x01AE0016,
    0x05D001AE, 0x001305F0, 0x01AE0014, 0x07C001AE,
    0x001309B0, 0x01AE0013, 0x057001AE, 0x00140740,
    0x01AE0016, 0x059001AE, 0x00110780, 0x01BE0011,
    0x070001BE, 0x00110800, 0x01BE0000,
};

u32 D_801BB3D0_7DC5D0[] = {
    0x00000030, 0x00000000, 0x00000004, 0x0100FF00,
};

u32 D_801BB3E0_7DC5E0[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB3F0_7DC5F0[] = {
    0x02380196, 0x00C003B0, 0x02060126, 0x0000FFD8,
};

u32 D_801BB400_7DC600[] = {
    0x00000030, 0x020001C0, 0x00000000, 0x0703FF00,
};

u32 D_801BB410_7DC610[] = {
    0x02380196, 0x018002E0, 0x02060126, 0xFF50FFD8,
};

u32 D_801BB420_7DC620[] = {
    0x02300196, 0x00701090, 0x02060126, 0xFFD0FFD8,
};

u32 D_801BB430_7DC630[] = {
    0x00000030, 0x020001C0, 0x00000000, 0x0707FF00,
};

u32 D_801BB440_7DC640[] = {
    0x00000030, 0x0260016E, 0x01002130, 0x1A0EFF00,
};

u32 D_801BB450_7DC650[] = {
    0x01A00196, 0x01100230, 0x02060126, 0xFFE0FFEB,
};

u32 D_801BB460_7DC660[] = {
    0x00000030, 0x00000000, 0x00000000, 0x1A05FF00,
};

u32 D_801BB470_7DC670[] = {
    0x04000198, 0xFF701700, 0x02080128, 0xFFE0FFEB,
};

u32 D_801BB480_7DC680[] = {
    0x00000090, 0x039001A6, 0xFE030003, 0x000D0000,
    0x00910390, 0x01A60403, 0x0003000D, 0x00000092,
    0x039001A6, 0xFE030007, 0x000D0000, 0x00930390,
    0x01A60403, 0x0007000D, 0xFF000000,
};

u32 D_801BB4BC_7DC6BC[] = {
    0x0000008F, 0x04400184, 0x00010000, 0x0F03FF00,
};

u32 D_801BB4CC_7DC6CC[] = {
    0x00000030, 0x00000000, 0x00000001, 0x0075FF00,
    0x00000000,
};

void func_801B9900_7DAB00(void) {
}

void func_801B9908_7DAB08(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BB158_7DC358, 0);
            D_800D2928 = 1;
            D_800BE5F4.unk_00_u32 = 4;
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB168_7DC368);
            *(s16*)&D_801781F8[0x2C] = 9;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 2:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801B99D4_7DABD4(void) {
    func_80045FA4(D_801BB188_7DC388, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1A8_7DC3A8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9A28_7DAC28(void) {
    func_80045FA4(D_801BB178_7DC378, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB198_7DC398);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801B9A8C_7DAC8C(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801B99D4_7DABD4();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(2, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 99;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
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
                        *(s16*)&D_800D28E8 = temp;
                    }
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801B9C58_7DAE58(void) {
    func_80045FA4(D_801BB1C8_7DC3C8, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1E8_7DC3E8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9CAC_7DAEAC(void) {
    func_80045FA4(D_801BB1B8_7DC3B8, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB1D8_7DC3D8);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801B9D10_7DAF10(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801B9C58_7DAE58();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(1, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_s32 = 3;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 99;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
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
                *(s16*)&D_800D28E8 = temp;
            }
            break;

        case 4:
            break;
    }
}

void func_801B9EDC_7DB0DC(void) {
    func_80045FA4(D_801BB208_7DC408, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB228_7DC428);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9F30_7DB130(void) {
    func_80045FA4(D_801BB1F8_7DC3F8, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB218_7DC418);
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801B9F78_7DB178(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801B9EDC_7DB0DC();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(5, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801B9F30_7DB130();
                    D_800D28E8 = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA144_7DB344(void) {
    func_80045FA4(D_801BB248_7DC448, 0);
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
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801BA144_7DB344();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(6, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801BA198_7DB398();
                    D_800D28E8 = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA3A4_7DB5A4(void) {
    func_80045FA4(D_801BB288_7DC488, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB2A8_7DC4A8);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BA3F8_7DB5F8(void) {
    func_80045FA4(D_801BB278_7DC478, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB298_7DC498);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
}

void func_801BA45C_7DB65C(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801BA3A4_7DB5A4();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(3, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
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
                    *(s16*)&D_800D28E8 = temp;
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801BA628_7DB828(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BB2B8_7DC4B8, 0);
            D_800BE5F4.unk_00_u32 = 3;
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            Actor_LoadSpawnTable(D_801BB2C8_7DC4C8);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
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
    func_80045FA4(D_801BB304_7DC504, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB3E0_7DC5E0);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BA740_7DB940(void) {
    func_80045FA4(D_801BB2F4_7DC4F4, (s32)D_801BB314_7DC514);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB3D0_7DC5D0);
    D_800BE544 = 0x8000;
    D_800D2924 = 0x7FFF;
    D_800BE56C.whole  = D_800D2924;
    D_800BE710 = TRUE;
    D_80178288 = (u32)D_801BB314_7DC514;
}

void func_801BA7C4_7DB9C4(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801BA6EC_7DB8EC();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            func_80047714(4, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
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
                    *(s16*)&D_800D28E8 = temp;
                }
            }
            break;

        case 4:
            break;
    }
}

void func_801BA990_7DBB90(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BB3F0_7DC5F0, 0);
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB400_7DC600);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
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
    func_80045FA4(D_801BB420_7DC620, 0);
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB440_7DC640);
    D_800BE544 = 0x8000;
    D_800BE5F4.unk_00_u32 = 3;
}

void func_801BAAA4_7DBCA4(void) {
    func_80045FA4(D_801BB410_7DC610, 0);
    D_800BE5F4.unk_00_u32 = 3;
    D_800D28FC |= 0x80;
    Actor_LoadSpawnTable(D_801BB030_7DC230);
    Actor_LoadSpawnTable(D_801BB430_7DC630);
}

void func_801BAB04_7DBD04(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_801BAA50_7DBC50();
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_WOODS);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28F8 = 4;
            }
            break;

        case 2:
            func_80047714(7, 1, 1, 3);
            if ((D_800D28E8 - 3) == 0) {
                D_800BE5F4.unk_00_u32 = 5;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x63;
                gCannotPause = TRUE;
            }
            Cutscene_CheckSkipInput();
            break;

        case 3:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 4;
                gCannotPause = FALSE;
            }
            break;

        case 0x1000:
            D_800D28E8++;
            D_800D2928 = 0xA;
            Sound_StartFade(1, 0xA);

        case 0x1001:
            D_800D2928--;
            if (D_800D2928 <= 0) {
                if (gAudioFadeMode != 1) {
                    Actor_ClearRange(0x30, 0xC0);
                    func_801BAAA4_7DBCA4();
                    D_800D28E8 = 3;
                }
            }
            break;

        case 4:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BACD0_7DBED0(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BB450_7DC650, 0);
            Actor_LoadSpawnTable(D_801BB030_7DC230);
            func_80043D30(D_801BB460_7DC660);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
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
    switch (D_800D28E8) {
        case 0:
            if (D_800D2908 != 0) {
                D_800D28E8 = 0x1000;
            }
            else {
                D_800D28E8++;
                func_80046148(D_801BB470_7DC670, 0);
                Actor_LoadSpawnTable(D_801BB480_7DC680);
                Actor_LoadSpawnTable(D_801BB4BC_7DC6BC);
                D_800BE544 = 0x8000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            break;

        case 3:
            D_800D28E8++;
            D_800D28FC |= 8;
            gLifebar.posY.whole = -0x58;
            gLifebarHead.posY.whole = -0x55;
            D_800BE5F4.unk_00_u32 = 5;
            gCannotPause = FALSE;
            break;

        case 5:
            D_800D28E8++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            D_800D28E8++;
            Actor_LoadSpawnTable(D_801BB480_7DC680);
            break;

        case 9:
            D_800D28E8 = 0xC000;
            break;

        case 0x1000:
            D_800D28E8++;
            func_80045FA4(D_801BB470_7DC670, 0);
            Actor_LoadSpawnTable(D_801BB480_7DC680);
            Actor_LoadSpawnTable(D_801BB4BC_7DC6BC);
            gActors[0x8F].state = 0x10;
            D_800BE5F4.unk_00_u32 = 5;

        case 0x1001:
            if (func_80046D5C() != 0) {
                D_800D28E8 = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BB470_7DC670, D_801BB4CC_7DC6CC);

        case 0xC001:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 4:
        case 6:
        case 8:
        case 0xC002:
            break;
    }
}
