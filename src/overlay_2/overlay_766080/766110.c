#include "common.h"
#include "actor.h"
#include "28EF0.h"
#include "74A50.h"
#include "66250.h"
#define func_80094CF8_RET DEFAULT_INT
#include "8F080.h"
#include "80D90.h"
#include "asset_loader.h"
#include "stage_tilemap.h"

extern s16 D_800D2920;
extern s16 D_800D2924;
extern u16 D_800DE348[];
extern u16 D_800DE6C8[];
extern u16 D_800DE888[];
extern u16 D_800DFA48[];
extern u16 D_800DFC48[];
extern s16 D_800E1700[];
extern s16 D_800E1728[];
extern s16 D_800E1750[];
extern s16 D_800E19D4[];
extern s16 D_800E1C00[];
extern s16 D_800E21D4[];
extern s16 D_800E223C[];
extern s16 D_800E2250[];
extern s16 D_800E2268[];
extern s16 D_800E2274[];
extern s16 D_800E2450[];
extern s16 D_800E24EC[];
extern s16 D_800E2528[];
extern s16 D_800E5E48[];
extern u16 D_800E9034[];

s16 D_801AFB80_76F390;

s16 D_801AF420_76EC30[] = {
    0x0BFE, 0x0B30, 0x0BFE, 0x0ABA,
};

s16 D_801AF428_76EC38[] = {
    0x012E, 0x017E, 0x01CE, 0x021E,
};

u16 D_801AF430_76EC40[] = {
    0x005A, 0x005A, 0x006F, 0x008C,
    0x0055, 0x0052, 0x008C,
    0x8FFF,
};

s16 D_801AF440_76EC50[] = {
    0x0540, 0x0580,
};

s16 D_801AF444_76EC54[] = {
    0x024E, 0x024E,
};

u16 D_801AF448_76EC58[] = {
    0x028A, 0x0077, 0x0065, 0x0052,
    0x0076,
    0x8FFF,
};

u16 D_801AF454_76EC64[] = {
    0x028A, 0x0079, 0x0076,
    0x8FFF,
};

u16 D_801AF45C_76EC6C[] = {
    0x06B0, 0x0700, 0x0750, 0x07A0,
    0x0765, 0x0000,
};

u16 D_801AF468_76EC78[] = {
    0x008E, 0x00BA, 0x0056,
    0x8FFF,
};

u16 D_801AF470_76EC80[] = {
    0x0800, 0x0802, 0x0804, 0x2012,
    0x2014, 0x2016, 0x2018, 0x201A,
    0x201C, 0x2008, 0x200A, 0x200C,
    0x200E, 0x201E, 0x2012, 0x2014,
    0x2008, 0x200A, 0x200C, 0x200E,
    0x2020, 0x2010, 0x01F6, 0x006A,
    0xC004, 0x0074, 0x0079, 0x0087,
    0x00B2,
    0x8FFF,
};

u16 D_801AF4AC_76ECBC[] = {
    0x0060, 0x0089, 0x0052, 0x006F,
    0x0098,
    0x8FFF,
    0x0061, 0x009E, 0x0094, 0x005A,
    0xC004, 0x010E, 0x00BA, 0x00F5,
    0x00B2,
    0x8FFF,
};

u16 D_801AF4CC_76ECDC[] = {
    0x00D6, 0x0119, 0x00DD, 0x0089,
    0x0076,
    0x8FFF,
};

u16 D_801AF4D8_76ECE8[] = {
    0x00CD, 0x0119,
};

u16 D_801AF4DC_76ECEC[] = {
    0x00DD, 0x0089, 0x0076,
    0x8FFF,
    0x005A, 0x0065, 0x0052, 0x008C,
    0x0054, 0x009B, 0x00B2,
    0x8FFF,
    0x006B, 0x0052, 0x0052, 0x0099,
    0x0099, 0x00C0,
    0x8FFF,
    0x0000, 0x0074, 0x00BA, 0x007E,
    0x8FFF,
    0x0083, 0x0072, 0x007E, 0x0068,
    0x00B0,
    0x8FFF,
    0x00EB, 0x00F4, 0x00E1, 0x00E5,
    0x00B0,
    0x8FFF,
    0x0074, 0x00BA, 0x0068,
    0x8FFF,
};

u16 D_801AF52C_76ED3C[] = {
    0x000E,
    0x8001,
};

u16 D_801AF530_76ED40[] = {
    0x000F,
    0x8001,
};

u16 D_801AF534_76ED44[] = {
    0x0007,
    0x8001,
};

u16 D_801AF538_76ED48[] = {
    0x0008,
    0x8002,
};

u16 D_801AF53C_76ED4C[] = {
    0x0011,
    0x8001,
};

u16 D_801AF540_76ED50[] = {
    0x0010,
    0x8001,
};

u16 D_801AF544_76ED54[] = {
    0x0014,
    0x8001,
};

u16 D_801AF548_76ED58[] = {
    0x000A,
    0x8001,
};

u16 D_801AF54C_76ED5C[] = {
    0x000B,
    0x8002,
};

u16 D_801AF550_76ED60[] = {
    0x000C,
    0x8003,
};

u16 D_801AF554_76ED64[] = {
    0x000D,
    0x8000,
    0x0008,
    0x8002,
    0x0494, 0x04A0, 0x04AC, 0x0498,
};

u16 D_801AF564_76ED74[] = {
    0x0055, 0x003C, 0x0053, 0x003B,
    0x0000, 0x0055, 0x003B, 0x003D,
    0x003B, 0x0000, 0x003F, 0x0047,
    0x003F, 0x0047, 0x0000, 0x0053,
    0x0040, 0x003D, 0x003B, 0x0000,
};

u16 D_801AF58C_76ED9C[] = {
    0x0048, 0x0049, 0x004A, 0x004B,
    0x004C, 0x004D, 0x004E, 0x0000,
};

u16 D_801AF59C_76EDAC[] = {
    0x0036, 0x0036,
};

u16 D_801AF5A0_76EDB0[] = {
    0x0040, 0x0041, 0x0042, 0x0000,
};

u16 D_801AF5A8_76EDB8[] = {
    0x003A, 0x003C, 0x003E, 0x0000,
};

u16 D_801AF5B0_76EDC0[] = {
    0x0007,
    0x8001,
};

u16 D_801AF5B4_76EDC4[] = {
    0x0008,
    0x8002,
};

u16 D_801AF5B8_76EDC8[] = {
    0x0009,
    0x8001,
};

u16 D_801AF5BC_76EDCC[] = {
    0x000A,
    0x8002,
};

u16 D_801AF5C0_76EDD0[] = {
    0x000B,
    0x8001,
};

u16 D_801AF5C4_76EDD4[] = {
    0x000C,
    0x8002,
};

u16 D_801AF5C8_76EDD8[] = {
    0x000D,
    0x8001,
};

u16 D_801AF5CC_76EDDC[] = {
    0x000E,
    0x8002,
};

u16 D_801AF5D0_76EDE0[] = {
    0x0011,
    0x8001,
};

u16 D_801AF5D4_76EDE4[] = {
    0x000F,
    0x8001,
};

u16 D_801AF5D8_76EDE8[] = {
    0x0010,
    0x8002,
};

u16 D_801AF5DC_76EDEC[] = {
    0x0014,
    0x8001,
};

u16 D_801AF5E0_76EDF0[] = {
    0x0015,
    0x8002,
};

u16 D_801AF5E4_76EDF4[] = {
    0x0012,
    0x8001,
};

u16 D_801AF5E8_76EDF8[] = {
    0x0013,
    0x8002,
};

u16 D_801AF5EC_76EDFC[] = {
    0x0018,
    0x8001,
    0x0019,
    0x8002,
};

u16 D_801AF5F4_76EE04[] = {
    0x0016,
    0x8002,
};

u16 D_801AF5F8_76EE08[] = {
    0x0017,
    0x8002,
};

u16 D_801AF5FC_76EE0C[] = {
    0x0009,
    0x8001,
};

u16 D_801AF600_76EE10[] = {
//  graphic angleFlags posZ
    0x0046, 0x0400,    0x0010,
    0x0046, 0x0400,    0x0011,
    0x0046, 0x0400,    0x0011,
    0x0000, 0x0000,    0x0012,
    0x0046, 0x0400,    0x0014,
    0x0270, 0x0400,    0x0013,
    0x0046, 0x0400,    0x0014,
    0x0270, 0x0400,    0x0013,
    0x0046, 0x0400,    0x000F,
    0x0046, 0x0400,    0x000E,
    0x0046, 0x0400,    0x000F,
    0x0046, 0x0400,    0x000E,
};

u16 D_801AF648_76EE58[] = {
//  graphic angleFlags posZ
    0x0270, 0x0400,    0x0010,
    0x0270, 0x0400,    0x0012,
    0x0270, 0x0400,    0x0011,
    0x0270, 0x0400,    0x0012,
    0x0270, 0x0400,    0x0014,
    0x0270, 0x0400,    0x0013,
    0x0270, 0x0400,    0x000F,
    0x0270, 0x0400,    0x000E,
    0x0270, 0x0400,    0x000F,
    0x0046, 0x0400,    0x000E,
    0x0270, 0x0400,    0x000D,
    0x0046, 0x0400,    0x000C,
};

u16 D_801AF690_76EEA0[] = {
//  actor   parent  length  angle   pose
    0x0001, 0x0000, 0x0000, 0x0200, 0x0000,
    0x0002, 0x0001, 0x0000, 0x0380, 0x0000,
    0x0003, 0x0001, 0x0000, 0x0280, 0x0000,
    0x0004, 0x0001, 0x0000, 0x0300, 0x0000,
    0x0005, 0x0002, 0x0000, 0x0380, 0x0000,
    0x0006, 0x0005, 0x0000, 0x0200, 0x0000,
    0x0007, 0x0003, 0x0000, 0x0280, 0x0000,
    0x0008, 0x0007, 0x0000, 0x0200, 0x0000,
    0x0009, 0x0001, 0x0000, 0x0080, 0x0000,
    0x000A, 0x0009, 0x0000, 0x0200, 0x0000,
    0x000B, 0x0001, 0x0000, 0x0180, 0x0000,
    0x000C, 0x000B, 0x0000, 0x0200, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801AF70C_76EF1C[] = {
//  rootX   rootY
    0x0000, 0xFFFC,
//  angle   offset
    0x0000, 0x0000,
    0x0148, 0x0023,
    0x00B8, 0x0023,
    0x0100, 0x0041,
    0x0080, 0x0022,
    0x00F0, 0x0024,
    0x0380, 0x0022,
    0x0310, 0x0024,
    0x0240, 0x0020,
    0x0080, 0x0024,
    0x03C0, 0x0022,
    0x0380, 0x0024,
};

u16 D_801AF740_76EF50[] = {
//  rootX   rootY
    0x0000, 0x0002,
//  angle   offset
    0x0000, 0x0000,
    0x0148, 0x0023,
    0x00B8, 0x0023,
    0x0100, 0x0040,
    0x0080, 0x0022,
    0x0038, 0x0020,
    0x0380, 0x0022,
    0x03C8, 0x0021,
    0x0280, 0x0018,
    0x0080, 0x0024,
    0x0380, 0x0018,
    0x0380, 0x0024,
};

u16 D_801AF774_76EF84[] = {
//  rootX   rootY
    0x0000, 0xFFD1,
//  angle   offset
    0x0000, 0x0000,
    0x0150, 0x001F,
    0x00B0, 0x001F,
    0x0100, 0x0034,
    0x0060, 0x0023,
    0x0050, 0x0020,
    0x03A0, 0x0023,
    0x03B0, 0x0020,
    0x0200, 0x0020,
    0x0000, 0x0020,
    0x0000, 0x0022,
    0x0000, 0x001E,
};

u16 D_801AF7A8_76EFB8[] = {
//  rootX   rootY
    0x0000, 0xFFD1,
//  angle   offset
    0x0000, 0x0000,
    0x0160, 0x001C,
    0x00A0, 0x001C,
    0x0100, 0x0028,
    0x0060, 0x0033,
    0x0058, 0x0040,
    0x03A0, 0x0033,
    0x03A8, 0x0040,
    0x0200, 0x0030,
    0x0000, 0x0040,
    0x0000, 0x0032,
    0x0000, 0x003E,
};

u16 D_801AF7DC_76EFEC[] = {
//  rootX   rootY
    0x0000, 0xFFFC,
//  angle   offset
    0x0000, 0x0000,
    0x0128, 0x0034,
    0x00D8, 0x0034,
    0x0100, 0x0064,
    0x0040, 0x0022,
    0x03B0, 0x0020,
    0x03C0, 0x0022,
    0x0050, 0x0021,
    0x0240, 0x0020,
    0x0080, 0x0024,
    0x03C0, 0x0022,
    0x0380, 0x0024,
};

u16 D_801AF810_76F020[] = {
//  rootX   rootY
    0x0000, 0x0002,
//  angle   offset
    0x0000, 0x0000,
    0x0128, 0x0034,
    0x00D8, 0x0034,
    0x0100, 0x0064,
    0x0040, 0x0022,
    0x03B0, 0x0020,
    0x03C0, 0x0022,
    0x0050, 0x0021,
    0x0280, 0x0018,
    0x0080, 0x0024,
    0x0380, 0x0018,
    0x0380, 0x0024,
};

u16* D_801AF844_76F054[] = {
    D_801AF70C_76EF1C,
    D_801AF740_76EF50,
    D_801AF774_76EF84,
    D_801AF7A8_76EFB8,
    D_801AF7DC_76EFEC,
    D_801AF810_76F020,
    NULL,
};

u16 D_801AF860_76F070[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0000, 0x0009, 0x0000,
    0x7FFD, 0x0001,
    0x0000, 0x0001, 0x0000,
    0x7FFF,
};

u16 D_801AF878_76F088[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0001, 0x0009, 0x0000,
    0x7FFD, 0x0001,
    0x0001, 0x0001, 0x0000,
    0x7FFF,
};

u16 D_801AF890_76F0A0[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0004, 0x0005, 0x0000,
    0x0001, 0x0007, 0x0000,
    0x7FFD, 0x0001,
    0x0001, 0x0001, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801AF8B0_76F0C0[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0005, 0x0005, 0x0000,
    0x0000, 0x0007, 0x0000,
    0x7FFD, 0x0001,
    0x0000, 0x0005, 0x0000,
    0x7FFF,
    0x0000,
};

u16 D_801AF8D0_76F0E0[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0002, 0x0009, 0x0000,
    0x7FFD, 0x0001,
    0x0002, 0x0001, 0x0000,
    0x7FFF,
};

u16 D_801AF8E8_76F0F8[] = {
//  pose    time    hold
    0x0000, 0x0000, 0x0000,
    0x0003, 0x0005, 0x0000,
    0x0002, 0x0005, 0x0000,
    0x7FFD, 0x0001,
    0x0002, 0x0001, 0x0000,
    0x7FFF,
    0x0000,
};

s16 D_801AF908_76F118[] = {
//  hitboxBY0 hitboxBX0 hitboxBX1 var150
    0x00B0,   0xFFD0,   0x0030,   0x0000,
    0x0050,   0xFFD0,   0x0030,   0x0000,
    0x0090,   0xFFE0,   0x0020,   0x0000,
    0x00B0,   0xFFF0,   0x0010,   0x0000,
    0x0040,   0xFFF0,   0x0010,   0x0000,
};

u16 D_801AF930_76F140[] = {
//  graphic time
    0x0284, 0x0001,
    0x0286, 0x0001,
    0x0288, 0x0001,
    0xFFFA,
    0x0000,
};

s16* func_8002A018(s16* arg0, s16 arg1);
u16 func_80031CAC(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z);
void func_80065724(u16 actor_index);
u16 func_8006930C(u16 actor_index, u16 actor_state_1, u16 actor_state_2, u16 actor_state_3, u16 actor_state_4, s16 arg5, s16 arg6, s16 arg7, s16 arg8);
void func_8006B9EC(u16 actor_index, u16 arg1);
void func_8006D3E4(u16 actor_index, u16 actor_state);
u16 func_80073438(u16 actor_index);
u16 func_8008E790(u16 actor_index, u16 state_1, u16 state_2, s16 arg3, s16 arg4, s16 arg5, s16 arg6);
void func_80094E10(u16* arg0, u16 arg1);
void func_80094EB8(u16 actor_index);

void func_801A695C_76616C(u16 actor_index);
void func_801A6F98_7667A8(u16 actor_index);
void func_801A848C_767C9C(u16 actor_index);
void func_801A9728_768F38(u16 actor_index);
void func_801ABFAC_76B7BC(u16 actor_index);
void func_801ADE18_76D628(u16 actor_index, u16 sound_id);

void func_801A6900_766110(u16 actor_index) {
    gActors[actor_index].unk_184_s16[0] = D_801AF420_76EC30[gActors[actor_index].unk_16C];
    gActors[actor_index].unk_184_s16[1] = D_801AF428_76EC38[gActors[actor_index].unk_16C];
}


void func_801A695C_76616C(u16 actor_index) {
    if (!(gActiveFrames & 0x7F)) {
        if (func_80029B00(0x100, 0x40, -0x40) && SpawnTextBubble(actor_index, D_801AF430_76EC40, 0, 0x20, 30)) {
            Sound_PlaySfxAtActor2(SFX_CLANCER_TALK_00A2, actor_index);
            gActors[actor_index].graphicList = D_800E2274;
            gActors[actor_index].graphicTimer = 1;
        }
    }
    else {
        func_80067E50(actor_index, D_800E1700);
    }

    switch (gActors[actor_index].unk_174) {
    case 0:
        if (func_80029B00(0x80, 0x40, -0x40)) {
            gActors[actor_index].unk_16C = 0;
            func_801A6900_766110(actor_index);
            gActors[actor_index].unk_174++;
        }
        else if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        break;

    case 1:
        if (!(func_800734C4(actor_index, 8) & 0x8000)) {
            if (gActors[actor_index].unk_16C == 3) {
                gActors[actor_index].unk_174 = 0x10;
            }
            else {
                if (gActors[actor_index].unk_16C % 2) {
                    gActors[actor_index].unk_120 = FIXED_UNIT(-3);
                }
                else {
                    gActors[actor_index].unk_120 = FIXED_UNIT(3);
                }
                gActors[actor_index].state = 0x130;
                gActors[actor_index].unk_174++;
                gActors[actor_index].unk_11C = FIXED_UNIT(5);
            }
        }
        break;

    case 2:
        gActors[actor_index].state = 0x70;
        gActors[actor_index].unk_174++;
        break;

    case 3:
        if (func_80029B00(0x80, 0x30, -0x30)) {
            if (gActors[actor_index].unk_16C % 2) {
                gActors[actor_index].unk_120 = FIXED_UNIT(3);
            }
            else {
                gActors[actor_index].unk_120 = FIXED_UNIT(-3);
            }

            gActors[actor_index].unk_11C = FIXED_UNIT(5);
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
            gActors[actor_index].state = 0x130;
            gActors[actor_index].unk_174++;
        }
        else if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        break;

    case 4:
        gActors[actor_index].unk_16C++;
        func_801A6900_766110(actor_index);
        gActors[actor_index].unk_174 = 1;
        break;

    case 0x10:
        if (func_80029B00(0x80, 0x30, -0x10)) {
            gActors[actor_index].unk_120 = FIXED_UNIT(-1.5);
            gActors[actor_index].unk_11C = FIXED_UNIT(4);
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
            gActors[actor_index].state = 0x130;
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_124 = 1.0f;
        }
        else if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        break;

    case 0x11:
        gActors[actor_index].unk_16C = 0;
        func_801A6900_766110(actor_index);
        gActors[actor_index].unk_174 = 1;
        break;

    case 0x20:
        if (gActors[actor_index].unk_180 < 0x160) {
            gActors[actor_index].unk_16C = 0;
        }
        else if (gActors[actor_index].unk_180 < 0x1B0) {
            gActors[actor_index].unk_16C = 1;
        }
        else if (gActors[actor_index].unk_180 < 0x200) {
            gActors[actor_index].unk_16C = 2;
        }
        else {
            gActors[actor_index].unk_16C = 3;
        }

        func_801A6900_766110(actor_index);
        gActors[actor_index].unk_174 = 1;
        break;
    }
}


void func_801A6D60_766570(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        func_801A695C_76616C(actor_index);
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = 2.0f;
        func_800734C4(actor_index, 8);
        break;

    case 0x161:
    case 0x181:
        gActors[actor_index].unk_174 = 0x20;
        break;
    }
}


void func_801A6E2C_76663C(u16 actor_index) {
    gActors[actor_index].unk_184_s16[0] = D_801AF440_76EC50[gActors[actor_index].unk_16C];
    gActors[actor_index].unk_184_s16[1] = D_801AF444_76EC54[gActors[actor_index].unk_16C];
    gActors[actor_index].unk_16C ^= 1;
    gActors[actor_index].unk_174++;
}


void func_801A6E9C_7666AC(u16 actor_index, s32 velocity_x, s32 velocity_y) {
    gActors[actor_index].unk_120 = velocity_x;
    gActors[actor_index].unk_11C = velocity_y;
    gActors[actor_index].unk_124 = 1.0f;
    Sound_PlaySfxAtActor2(0x118, actor_index);
    gActors[actor_index].state = 0x130;
    gActors[actor_index].unk_174++;
}


void func_801A6F2C_76673C(u16 actor_index) {
    if (!(func_800734C4(actor_index, 8) & 0x8000)) {
        gActors[actor_index].unk_174++;
    }
}


void func_801A6F98_7667A8(u16 actor_index) {
    u16* var_a1;

    if ((gActiveFrames & 0x7F) == 0) {
        if (func_80029B00(0x100, 0x40, -0x40)) {
            if (gActors[actor_index].unk_174 == 0x20) {
                var_a1 = D_801AF454_76EC64;
            }
            else {
                var_a1 = D_801AF448_76EC58;
            }
            if (SpawnTextBubble(actor_index, var_a1, 0, 0x20, 0x1E)) {
                Sound_PlaySfxAtActor2(SFX_CLANCER_TALK_00A2, actor_index);
                gActors[actor_index].graphicList = D_800E2274;
                gActors[actor_index].graphicTimer = 1;
            }
        }
    }
    else {
        func_80067E50(actor_index, D_800E1700);
    }

    switch (gActors[actor_index].unk_174) {
    case 0:
        gActors[actor_index].unk_174++;
        gActors[actor_index].unk_16C = 0;
        break;

    case 2:
        func_801A6E9C_7666AC(actor_index, FIXED_UNIT(-5), FIXED_UNIT(3.5));
        break;

    case 4:
        func_801A6E2C_76663C(actor_index);
        break;

    case 5:
        func_801A6F2C_76673C(actor_index);
        break;

    case 6:
        func_801A6E9C_7666AC(actor_index, FIXED_UNIT(-5), FIXED_UNIT(3.5));
        break;

    case 8:
        func_801A6E9C_7666AC(actor_index, FIXED_UNIT(5), FIXED_UNIT(3.5));
        break;

    case 10:
        func_801A6E2C_76663C(actor_index);
        break;

    case 11:
        func_801A6F2C_76673C(actor_index);
        break;

    case 12:
        func_801A6E9C_7666AC(actor_index, FIXED_UNIT(5), FIXED_UNIT(3.5));
        break;

    case 13:
        gActors[actor_index].unk_174 = 0;
        break;

    default:
        if (func_80029B00(0x70, 0x40, -0x10)) {
            (&gActors[actor_index] + actor_index * 0)->unk_174++;
        }
        else if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        break;

    case 0x20:
        break;
    }
}


void func_801A721C_766A2C(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        func_801A6F98_7667A8(actor_index);
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = 2.0f;
        func_800734C4(actor_index, 8);
        break;

    case 0x161:
    case 0x181:
        gActors[actor_index].unk_174 = 0x20;
        break;
    }
}


void func_801A72E8_766AF8(u16 actor_index) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x70;
    }
    else if (!(gActiveFrames & 0x7F)) {
        if (func_80029B00(0x100, 0x40, -0x40)) {
            if (SpawnTextBubble(actor_index, D_801AF468_76EC78, 0, 32, 30)) {
                Sound_PlaySfxAtActor2(SFX_CLANCER_TALK_00A2, actor_index);
                gActors[actor_index].graphicList = D_800E2274;
                gActors[actor_index].graphicTimer = 1;
            }
            else {
                func_80067E50(actor_index, D_800E1700);
            }
        }
        else {
            func_80067E50(actor_index, D_800E1700);
        }
    }
    else {
        func_80067E50(actor_index, D_800E1700);
    }
}


void func_801A7424_766C34(u16 actor_index) {
    s32 unused[4];
    s16 position_x;

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        switch (gActors[actor_index].unk_174) {
        case 0:
            if (func_80029B74(0x50)) {
                gActors[actor_index].unk_174++;
            }
            else if (!Actor_IsOutsideRegion(actor_index, 0x10)) {
                func_801A72E8_766AF8(actor_index);
            }
            else if (gActors[actor_index].graphicTimer == 0) {
                ACTOR_GFX_INIT(actor_index, D_800E1700);
            }
            break;

        case 1:
            if (!(func_80029FB8(actor_index, 0x6AA, 0x6B6, 0x176, 0x146) & 0x8000)) {
                if (func_80029B74(0x50)) {
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_124 = 1.0f;
                    if (gActors[0].posY.whole < gActors[actor_index].posY.whole - 26) {
                        gActors[actor_index].unk_120 = FIXED_UNIT(4.4375);
                        gActors[actor_index].unk_11C = FIXED_UNIT(4.75);
                    }
                    else {
                        gActors[actor_index].unk_120 = FIXED_UNIT(4);
                        gActors[actor_index].unk_11C = FIXED_UNIT(1.125);
                    }
                }
                else {
                    func_801A72E8_766AF8(actor_index);
                }
            }
            else if (!(func_80029FB8(actor_index, 0x6FA, 0x706, 0x156, 0x126) & 0x8000)) {
                if (func_80029B74(0x48)) {
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_124 = 1.0f;
                    if (gActors[0].posX.whole < gActors[actor_index].posX.whole) {
                        gActors[actor_index].unk_120 = FIXED_UNIT(4.125);
                        gActors[actor_index].unk_11C = FIXED_UNIT(2.4375);
                    }
                    else {
                        gActors[actor_index].unk_120 = FIXED_UNIT(-3.5);
                        gActors[actor_index].unk_11C = FIXED_UNIT(4.5);
                    }
                }
                else {
                    func_801A72E8_766AF8(actor_index);
                }
            }
            else if (!(func_80029FB8(actor_index, 0x74A, 0x756, 0x156, 0x126) & 0x8000)) {
                if (func_80029B74(0x48)) {
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_124 = 1.0f;
                    if (gActors[0].posX.whole < gActors[actor_index].posX.whole) {
                        gActors[actor_index].unk_120 = FIXED_UNIT(3.5);
                        gActors[actor_index].unk_11C = FIXED_UNIT(4.5);
                    }
                    else {
                        gActors[actor_index].unk_120 = FIXED_UNIT(-4.125);
                        gActors[actor_index].unk_11C = FIXED_UNIT(2.4375);
                    }
                }
                else {
                    func_801A72E8_766AF8(actor_index);
                }
            }
            else if (!(func_80029FB8(actor_index, 0x79A, 0x7A6, 0x176, 0x146) & 0x8000)) {
                if (func_80029B74(0x50)) {
                    gActors[actor_index].state = 0x120;
                    gActors[actor_index].unk_124 = 1.0f;
                    if (gActors[0].posY.whole < gActors[actor_index].posY.whole - 26) {
                        gActors[actor_index].unk_120 = FIXED_UNIT(-4.4375);
                        gActors[actor_index].unk_11C = FIXED_UNIT(4.75);
                    }
                    else {
                        gActors[actor_index].unk_120 = FIXED_UNIT(-4);
                        gActors[actor_index].unk_11C = FIXED_UNIT(1.125);
                    }
                }
                else {
                    func_801A72E8_766AF8(actor_index);
                }
            }
            else {
                position_x = *func_8002A018((s16*)D_801AF45C_76EC6C, gActors[actor_index].unk_17C_s16[1]);
                func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, position_x - 6, position_x + 6, 0x1AE, 0x12E);
            }
            break;
        }
        break;

    case 0xA1:
        position_x = *func_8002A018((s16*)D_801AF45C_76EC6C, gActors[actor_index].unk_17C_s16[1]);
        func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, position_x - 8, position_x + 8, 0x1AE, 0x12E);
        break;

    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        break;
    }
}


void func_801A78DC_7670EC(u16 actor_index) {
    s32 var_v1;

    switch (gActors[actor_index].state) {
    case 0:
        var_v1 = (u16)(u32)gActors[actor_index].var_110;
        gActors[actor_index].var_150 = var_v1 & 0x7FFF;
        gActors[actor_index].var_154 = var_v1 & 0x8000;
        gActors[actor_index].graphicIndex = D_801AF470_76EC80[gActors[actor_index].var_150];

        if (gActors[actor_index].graphicIndex == 0x200E) {
            gActors[actor_index].colorA = 0xC0;
        }

        if (gActors[actor_index].var_150 == 0x15) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;

            if (gActors[actor_index].var_154) {
                gActors[actor_index].var_158 = 0x200;
            }
            else {
                gActors[actor_index].var_158 = 0;
            }

            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[actor_index].posZ.whole = -520;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].state = 4;
            break;
        }

        if (gActors[actor_index].var_150 == 0x14) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;

            if (gActors[actor_index].var_154) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].var_158 = 0x100;
            }
            else {
                gActors[actor_index].var_158 = 0;
            }

            if ((gCurrentScene == 0x39) || (gCurrentScene == 0x43) || (gCurrentScene == 0x38) || (gCurrentScene == 0x36)) {
                gActors[actor_index].var_158 += 0x80;
            }

            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[actor_index].posZ.whole = -520;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].state = 3;
            break;
        }

        if (gActors[actor_index].var_150 >= 13) {
            if (gActors[actor_index].var_154) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
            gActors[actor_index].posZ.whole = gActors[actor_index].var_0D8;
            gActors[actor_index].posY.whole -= gActors[actor_index].posZ.whole / 2;

            while (gActors[actor_index].posX.whole < -256) {
                gActors[actor_index].posX.whole += 512;
            }

            while (gActors[actor_index].posX.whole > 256) {
                gActors[actor_index].posX.whole -= 512;
            }

            gActors[actor_index].state = 2;
            break;
        }

        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].posZ.whole = gActors[actor_index].var_0D8;
        gActors[actor_index].state++;
        break;

    case 1:
        if ((gActors[actor_index].posX.whole >= -191) && (gActors[actor_index].posX.whole < 192)) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
        break;

    case 2:
        if (gActors[actor_index].posX.whole < -256) {
            gActors[actor_index].posX.whole += 512;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].posX.whole > 256) {
            gActors[actor_index].posX.whole -= 512;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        break;

    case 3:
        if (gActors[actor_index].var_154) {
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x1FF) - 0x100;
            gActors[actor_index].posY.whole = 0x218 - D_800BE580;
        }
        else {
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x1FF) - 0x100;
            gActors[actor_index].posY.whole = 0x210 - D_800BE580;
        }
        break;

    case 4:
        gActors[actor_index].posY.whole = 0x220 - D_800BE580;
        if (gActors[actor_index].var_154) {
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x3FF) - 0x200;
        }
        else {
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x3FF) - 0x200;
        }
        break;
    }
}


void func_801A7D54_767564(u16 parent_index, u16 new_actor_index) {
    gActors[new_actor_index].actorType = ACTORTYPE_OVL0_GEN_BOMB1;
    gActors[new_actor_index].velocityX.raw = (s32)(gActors[parent_index].unk_148 * FIXED_UNIT(1.5));
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(5);
}


void func_801A7DD4_7675E4(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        func_80067E50(actor_index, D_800E1700);
        if (func_800734C4(actor_index, 8) & 0x8000) {
            return;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
        else if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            if (func_80029B00(0xE0, 0x60, -0x60)) {
                gActors[actor_index].state = 0x3A0;
                gActors[actor_index].pfn_158 = func_801A7D54_767564;
            }
        }
        break;

    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 1.2f;
        break;
    }
}


void func_801A7F08_767718(u16 actor_index) {
}


void func_801A7F10_767720(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        switch (func_800407D4(actor_index)) {
        default:
            func_80067E50(actor_index, D_800E1700);
            if (func_80073438(actor_index) & 0x8000) {
                return;
            }

            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                func_80073680(D_801AF52C_76ED3C, actor_index, 0x1C);
            }
            break;

        case 0x1000:
            func_80067E50(actor_index, D_800E2274);
            break;

        case 0x800:
            gActors[actor_index].unk_12C += 1.0f;
            break;

        case 0x8000:
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = FIXED_UNIT(2);
            gActors[actor_index].unk_120 = 0.0f;
            break;

        case 0x2000:
        case 0x4000:
            func_80067E50(actor_index, D_800E1700);
            break;
        }
        break;

    case 0xA1:
        func_80073438(actor_index);
        gActors[actor_index].unk_118 = 1.2f;
        break;
    }
}


void func_801A80FC_76790C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if ((u16)(u32)gActors[actor_index].unk_12C) {
            func_80067E50(actor_index, D_800E1700);
            if (gActors[actor_index].var_158 >= 16) {
                gActors[actor_index].unk_184_s16[0] = gActors[0x32].unk_17C - 12;
                gActors[actor_index].unk_184_s16[1] = gActors[0x32].unk_180;
                if (!(func_80073438(actor_index) & 0x8000) && (D_800E3584 & 0xC0000)) {
                    gActors[actor_index].state = 0x70;
                }
            }
        }
        else {
            switch (func_800407D4(actor_index)) {
            default:
                func_80067E50(actor_index, D_800E1700);
                if (func_80073438(actor_index) & 0x8000) {
                    return;
                }

                if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                }
                else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    func_80073680(D_801AF530_76ED40, actor_index, 0x1C);
                }
                break;

            case 0x1000:
                func_80067E50(actor_index, D_800E2274);
                break;

            case 0x800:
                gActors[actor_index].unk_12C += 1.0f;
                break;

            case 0x8000:
                gActors[actor_index].state = 0xC0;
                break;

            case 0x2000:
            case 0x4000:
                func_80067E50(actor_index, D_800E1700);
                break;
            }
        }
        break;

    case 0xA1:
        func_80073438(actor_index);
        gActors[actor_index].unk_118 = 1.0f;
        break;
    }
}


u16 func_801A83CC_767BDC(u16 actor_index) {
    s16 position_x = (s32)(gActors[actor_index].unk_12C * 32.0f + 1440.0f);
    return func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, (s16)(position_x - 4), (s16)(position_x + 4), 0x188, 0x168);
}


void func_801A848C_767C9C(u16 actor_index) {
    u16* var_t4 = NULL;

    switch (gActors[actor_index].var_0D8 & 0xF) {
    case 2:
        func_80067E50(actor_index, D_800E1700);
        if (!(func_80073320(actor_index) & 0x8000)) {
            if (!func_80029B00(0x60, 0x30, -0x30)) {
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    gActors[actor_index].state = 0x80;
                }
                else {
                    gActors[actor_index].state = 0x70;
                }
            }
            else if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                var_t4 = D_801AF534_76ED44;
            }
            else {
                var_t4 = D_801AF538_76ED48;
            }
        }
        break;

    case 0:
        if (!(func_80073438(actor_index) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                var_t4 = D_801AF53C_76ED4C;
            }
        }
        break;

    case 1:
        if ((gActors[actor_index].unk_174 == 0) && (gActors[actor_index].unk_17C >= 0x701) && (gActors[actor_index].unk_17C < 0x740) && (gActors[actor_index].unk_180 < 0x140)) {
            gActors[actor_index].unk_184_s16[0] = 0x740;
            gActors[actor_index].unk_184_s16[1] = 0x12E;
            gActors[actor_index].unk_174 = 1;
        }

        if (!(func_80073438(actor_index) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else if (gActors[actor_index].unk_174 == 0) {
                var_t4 = D_801AF540_76ED50;
            }
            else {
                var_t4 = D_801AF544_76ED54;
            }
        }
        break;

    case 3:
        gActors[actor_index].unk_12C = (s32)(u16)(u32)gActors[actor_index].unk_12C & 3;
        if (!(func_801A83CC_767BDC(actor_index) & 0x8000)) {
            func_80067E50(actor_index, D_800E2274);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 12, gActors[actor_index].posZ.whole + 1);
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    switch ((u16)(u32)gActors[actor_index].unk_12C) {
                    case 0:
                        var_t4 = D_801AF548_76ED58;
                        break;

                    case 1:
                        var_t4 = D_801AF54C_76ED5C;
                        break;

                    case 2:
                        var_t4 = D_801AF550_76ED60;
                        break;

                    case 3:
                        var_t4 = D_801AF554_76ED64;
                        break;
                    }
                }
            }
        }
        break;
    }

    if (var_t4 != NULL) {
        func_80073680(var_t4, actor_index, 0x1C);
    }
}


void func_801A89F0_768200(u16 actor_index) {
    if ((gActors[actor_index].var_0D8 & 0xF) != 3) {
        func_80067E50(actor_index, D_800E2274);
    }
    else {
        SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 12, gActors[actor_index].posZ.whole + 1);
        func_80067E50(actor_index, D_800E21D4);
    }
}


void func_801A8A9C_7682AC(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        switch (func_800407D4(actor_index)) {
        default:
            func_801A848C_767C9C(actor_index);
            break;

        case 0x1000:
            func_801A89F0_768200(actor_index);
            break;

        case 0x800:
            gActors[actor_index].unk_12C += 1.0f;
            break;

        case 0x8000:
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = FIXED_UNIT(3);
            gActors[actor_index].unk_120 = 0.0f;
            break;

        case 0x2000:
        case 0x4000:
            func_80067E50(actor_index, D_800E1700);
            break;
        }
        break;

    case 0x91:
        func_80073320(actor_index);
        gActors[actor_index].unk_118 = 1.2f;
        break;

    case 0xA1:
        if ((gActors[actor_index].var_0D8 & 0xF) == 3) {
            func_801A83CC_767BDC(actor_index);
        }
        else {
            func_80073320(actor_index);
        }
        gActors[actor_index].unk_118 = 0.9f;
        break;

    case 0x81:
        if (func_80029B00(0x60, 0x30, -0x30) == 0) {
            gActors[actor_index].unk_118 = 1.0f;
        }
        break;
    }
}


u16 func_801A8C7C_76848C(u16 actor_index) {
    return func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, 0x1D2, 0x1DE, 0x140, 0x120);
}


s32 func_801A8CD8_7684E8(u16 actor_index) {
    if (!(func_80029FB8(actor_index, 0x416, 0x422, 0x138, 0x128) & 0x8000)) {
        gActors[actor_index].state = 0x120;
        gActors[actor_index].unk_174 = 0x1004;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].unk_118 = 1.0f;
        gActors[actor_index].unk_11C = FIXED_UNIT(3.25);
        gActors[actor_index].unk_120 = FIXED_UNIT(3.5);
        return 1;
    }

    return 0;
}


void func_801A8D88_768598(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        if (gActors[actor_index].unk_174) {
            gActors[actor_index].posX.whole = 0xC0;
        }
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        switch (gActors[actor_index].unk_174) {
        case 0x1000:
            func_80067E50(actor_index, D_800E1700);
            break;

        case 0x1001:
            gActors[actor_index].state = 0xA0;
            break;

        case 0x1002:
            gActors[actor_index].unk_184_s16[0] = gPlayerPosX.whole + 0x60;
            func_801A8C7C_76848C(actor_index);
            func_80067E50(actor_index, D_800E2274);
            break;

        case 0x1003:
            if (gActors[actor_index].unk_17C >= 0x461) {
                gActors[actor_index].unk_174 = 0x1004;
            }
            else {
                gActors[actor_index].unk_184_s16[0] = gPlayerPosX.whole + 0x60;
                gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
                if (!(func_800734C4(actor_index, 8) & 0x8000)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x70;
                    }
                    else {
                        SpawnTextBubble(actor_index, D_801AF4CC_76ECDC, 0, 0x20, 25);
                        gActors[actor_index].state = 0x120;
                        gActors[actor_index].unk_118 = 0.0f;
                        gActors[actor_index].unk_120 = 0.0f;
                        gActors[actor_index].unk_11C = FIXED_UNIT(2);
                    }
                }
                func_80067E50(actor_index, D_800E2274);
            }
            break;

        case 0x1004:
            gActors[actor_index].unk_184_s16[0] = 0x460;
            gActors[actor_index].unk_184_s16[1] = gActors[actor_index].unk_180;
            if (!(func_80073438(actor_index) & 0x8000)) {
                if (func_80029B00(0x80, 0x40, -0x40)) {
                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        gActors[actor_index].state = 0x70;
                    }
                    else {
                        if (gActors[actor_index].graphicTimer == 0) {
                            SpawnTextBubble(actor_index, D_801AF4D8_76ECE8, 0, 0x20, 25);
                        }
                        func_80067E50(actor_index, D_800E2250);
                    }
                }
                else if (D_800E3584 & 0xC0000) {
                    gActors[actor_index].state = 0x70;
                }
                else {
                    func_80067E50(actor_index, D_800E1750);
                }
            }
            break;
        }
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 1.4f, 0.05f);
        switch (gActors[actor_index].unk_174) {
        case 0x1001:
        case 0x1002:
            if (!(func_801A8C7C_76848C(actor_index) & 0x8000)) {
                gActors[actor_index].unk_174 = 0x1002;
            }
            break;

        case 0x1003:
            gActors[actor_index].unk_184_s16[0] = gPlayerPosX.whole + 0x60;
            if (gActors[actor_index].unk_17C >= 0x461) {
                gActors[actor_index].unk_174 = 0x1004;
            }

        case 0x1004:
            if (func_801A8CD8_7684E8(actor_index) == 0) {
                func_800734C4(actor_index, 2);
            }
            break;
        }
        break;
    }
}


void func_801A90F4_768904(u16 temp_s1) {
    u16 var_s2;
    u16 index;
    s16 position_x;
    s16 position_y;
    s16 actor_x;
    s16 actor_y;

    switch (gActors[temp_s1].state) {
    case 0:
        gActors[temp_s1].state++;
        gActors[temp_s1].graphicFlags = ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
        gActors[temp_s1].flags = ACTOR_FLAG_ACTIVE;
        gActors[temp_s1].graphicIndex = GINDEX_SPIRAL;
        gActors[temp_s1].posZ.raw = FIXED_UNIT(-17);
        gActors[temp_s1].colorA = 0x40;
        gActors[temp_s1].unk_188 = 0;
        gActors[temp_s1].scaleX = 1.3f;
        gActors[temp_s1].unk_12C = 1.3f;
        gActors[temp_s1].rotateX = 90.0f;
        Actor_SetColorRgb(temp_s1, 0x4F);

    case 1:
        gActors[temp_s1].rotateY += 4.0f;
        for (var_s2 = 0; var_s2 != 2; var_s2++) {
            index = func_80031CAC(GINDEX_CLANBLOCKSQAURE, gActors[temp_s1].posX.raw, gActors[temp_s1].posY.raw + FIXED_UNIT(5), FIXED_UNIT(-17) + 1);
            if (index) {
                gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
                gActors[index].scaleX = 0.8f;
                gActors[index].scaleY = 1.4f;
                Actor_SetColorRgb(index, 0x2F);
                if (var_s2) {
                    gActors[index].posX.whole -= 48;
                }
                else {
                    gActors[index].posX.whole += 48;
                }
            }
        }

        index = func_80031CAC(GINDEX_SOLIDSQUARE, gActors[temp_s1].posX.raw, gActors[temp_s1].posY.raw, gActors[temp_s1].posZ.raw - 1);
        if (index) {
            gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
            gActors[index].colorA = 0x80;
            gActors[index].scaleX = 6.0f;
            gActors[index].scaleY = 6.0f;
        }

        position_x = gActors[temp_s1].posX.whole + gScreenPosCurrentX.whole;
        position_y = gActors[temp_s1].posY.whole + gScreenPosCurrentY.whole;
        for (index = 0x40; index != 0x44; index++) {
            actor_x = gActors[index].posX.whole + gScreenPosCurrentX.whole;
            actor_y = gActors[index].posY.whole + gScreenPosCurrentY.whole;
            if ((position_x + 24 < actor_x) && (actor_x < position_x + 56) && (position_y - 20 < actor_y) && (actor_y < position_y + 20) && gActors[index].flags && (gActors[index].actorType != ACTORTYPE_OVL2_W1_8)) {
                Sound_PlaySfx(SFX_POP);
                SpawnTextBubble(index, D_801AF4AC_76ECBC, 0, 0x20, 50);
                gActors[index].actorType = ACTORTYPE_OVL2_W1_8;
                gActors[index].state = 0x130;
                gActors[index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[index].unk_120 = FIXED_UNIT(-1.5);
                gActors[index].unk_11C = FIXED_UNIT(2.75);
                if (D_800D28E4 == 1) {
                    if (index == 0x40) {
                        gStageState++;
                    }

                    if (index == 0x41) {
                        gStageState++;
                    }

                    if (index == 0x42) {
                        gStageState++;
                    }

                    if (index == 0x43) {
                        gStageState = 12;
                    }
                }
            }
        }
        break;
    }
}


u16 func_801A94C0_768CD0(u16 actor_index) {
    s32 position_x = D_801AF4DC_76ECEC[actor_index];
    return func_8006930C(actor_index, 0x90, 0x70, 0x210, 0x210, (s16)(position_x - 3), (s16)(position_x + 3), 0x156, 0x126);
}


void func_801A952C_768D3C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0x61:
        if (!(func_801A94C0_768CD0(actor_index) & 0x8000)) {
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].state = 0x70;
            }

            switch (actor_index) {
            case 0x40:
                func_80067E50(actor_index, D_800E1700);
                break;

            case 0x41:
                func_80067E50(actor_index, D_800E1700);
                break;

            case 0x42:
                func_80067E50(actor_index, D_800E1700);
                break;

            case 0x43:
                func_80067E50(actor_index, D_800E1700);
                break;
            }
        }
        break;

    case 0x91:
        func_801A94C0_768CD0(actor_index);
        break;
    }

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].health = 0;
}


void func_801A96A0_768EB0(u16 actor_index) {
    func_80073970(actor_index);
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10);
}


void func_801A9700_768F10(u16 actor_index) {
    func_80073970(actor_index);
}


void func_801A9728_768F38(u16 actor_index) {
    s32 unused[1];

    switch (gActors[actor_index].unk_174) {
    case 0:
        gActors[actor_index].unk_174++;
        gActors[actor_index].unk_184_s16[0] = 0x826;
        gActors[actor_index].unk_184_s16[1] = 0x15E;
        gActors[(u16)(actor_index + 1)].unk_184_s16[0] = 0x810;
        gActors[(u16)(actor_index + 1)].unk_184_s16[1] = 0x15E;
        break;

    case 1:
        gActors[actor_index].unk_174++;
        func_8005DF5C(1);
        func_8005DF40(0, 60);
        D_800D5830 = 0x200;
        D_800D5834 = 0x200;
        break;

    case 2:
        if (!func_8005DEFC()) {
            gActors[actor_index].unk_174++;
            gActors[actor_index].unk_184_s16[0] = 0x8D0;
            gActors[actor_index].unk_184_s16[1] = 0x12E;
            gActors[(u16)(actor_index + 1)].unk_184_s16[0] = 0x8D0;
            gActors[(u16)(actor_index + 2)].unk_184_s16[0] = 0x8D0;
        }
        break;

    case 3:
        gActors[actor_index].flags = 0;
        gActors[(u16)(actor_index + 1)].flags = 0;
        gActors[(u16)(actor_index + 2)].flags = 0;
        break;
    }
}


void func_801A98B0_7690C0(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        func_80067E50(actor_index, D_800E1700);
        if (!(func_800734C4(actor_index, 8) & 0x8000) && !(gActors[actor_index].var_0D8 & 1)) {
            func_801A9728_768F38(actor_index);
        }
        break;

    case 0xA1:
        func_800734C4(actor_index, 8);
        break;

    case 0x130:
        Sound_PlaySfxAtActor2(0x121, actor_index);
        break;

    case 0x150:
        Sound_PlaySfxAtActor2(0xAC, actor_index);
        break;
    }
}


void func_801A99CC_7691DC(u16 actor_index) {
}


void func_801A99D4_7691E4(u16 actor_index, u16 arg1) {
    gActors[actor_index].var_158 = arg1;
    gActors[actor_index].posX.whole = gActors[arg1].posX.whole;
    gActors[actor_index].posY.whole = gActors[arg1].posY.whole + 0x14;
}


void func_801A9A2C_76923C(u16 actor_index) {
    u16 sp1E;
    u16 index;

    switch (gActors[actor_index].var_0D8 & 7) {
    case 0:
        gActors[actor_index].state = 1;
        index = (u16)(actor_index * 5 - 0x1B8);
        sp1E = D_801AF564_76ED74[index];
        gActors[actor_index].var_15C = index;
        gActors[actor_index].unk_164 = index * 20 + 30;
        break;

    case 1:
        gActors[actor_index].state = 1;
        index = (u16)(actor_index * 2 - 0xB0);
        sp1E = D_801AF58C_76ED9C[index];
        gActors[actor_index].var_15C = index;
        gActors[actor_index].unk_164 = 30;
        break;

    case 4:
        gActors[actor_index].state = 0x10;
        sp1E = D_801AF59C_76EDAC[(u16)(actor_index - 0x60)];
        break;

    case 5:
        gActors[actor_index].state = 0x30;
        sp1E = D_801AF5A0_76EDB0[(u16)(actor_index - 0x62)];
        break;

    case 6:
        gActors[actor_index].state = 0x30;
        sp1E = D_801AF5A8_76EDB8[(u16)(actor_index - 0x5C)];
        break;
    }

    func_801A99D4_7691E4(actor_index, sp1E);
}


void func_801A9BA4_7693B4(u16 actor_index, u16 arg1) {
    gActors[actor_index].var_158 = arg1;
    gActors[actor_index].unk_164 = 30;
    if (gActors[actor_index].posX.whole < gActors[arg1].posX.whole) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(3.875);
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].velocityX.raw = -FIXED_UNIT(3.875);
    }

    if (gActors[actor_index].posY.whole < gActors[arg1].posY.whole) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(5.375);
    }
    else {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1.375);
    }

    gActors[actor_index].graphicList = D_800E1D0C;\
    gActors[actor_index].graphicTimer = 1;
    Sound_PlaySfxAtActor2(SFX_0118, actor_index);
}


void func_801A9C94_7694A4(u16 actor_index) {
    u16 var_a2;

    switch (gActors[actor_index].var_0D8 & 7) {
    case 0:
        gActors[actor_index].state = 2;
        gActors[actor_index].var_15C++;
        var_a2 = D_801AF564_76ED74[gActors[actor_index].var_15C];
        if (!var_a2) {
            var_a2 = D_801AF564_76ED74[(u16)(actor_index * 5 - 0x1B8)];
            gActors[actor_index].var_15C -= 4;
        }

        func_801A9BA4_7693B4(actor_index, var_a2);
        break;

    case 1:
        gActors[actor_index].state = 2;
        gActors[actor_index].var_15C++;
        var_a2 = D_801AF58C_76ED9C[gActors[actor_index].var_15C];
        if (!var_a2) {
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].velocityY.raw = FIXED_UNIT(1.375);
            gActors[actor_index].unk_164 = 0x41;
            gActors[actor_index].graphicList = D_800E1D0C;
            gActors[actor_index].graphicTimer = 1;
            var_a2 = D_801AF58C_76ED9C[0];
            gActors[actor_index].var_158 = var_a2;
            Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        }
        else {
            func_801A9BA4_7693B4(actor_index, var_a2);
        }
        break;
    }
}


void func_801A9DD8_7695E8(u16 actor_index) {
    u16 temp_a3 = gActors[actor_index].unk_158_u16[1];
    gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[temp_a3].posX.raw, FIXED_UNIT(3.5));
    gActors[actor_index].posY.raw = Math_ApproachS32(gActors[actor_index].posY.raw, gActors[temp_a3].posY.raw + FIXED_UNIT(20), FIXED_UNIT(3.5));
}


void func_801A9E68_769678(u16 actor_index) {
    u16 temp_a1 = gActors[actor_index].unk_158_u16[1];
    gActors[actor_index].posX.raw = gActors[temp_a1].posX.raw;
    gActors[actor_index].posY.raw = gActors[temp_a1].posY.raw + FIXED_UNIT(20);
}


s32 func_801A9EC0_7696D0(u16 actor_index) {
    if (gActors[gActors[actor_index].unk_158_u16[1]].state == 1) {
        func_8006D3E4(actor_index, 0x100);
        gActors[actor_index].velocityX.raw = (s32)(gActors[actor_index].unk_148 * FIXED_UNIT(1));
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].var_0D8 |= 8;
        Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
        return 1;
    }

    return 0;
}


void func_801A9F94_7697A4(u16 actor_index) {
    Clancer_Update(actor_index);
    if (gActors[actor_index].state == 0x61) {
        gActors[actor_index].state = 0x430;
    }
}


s32 func_801A9FFC_76980C(u16 actor_index) {
    u16 temp_a1 = gActors[actor_index].unk_158_u16[1];
    if (gActors[actor_index].velocityY.raw < 0) {
        if (Math_AbsS32(gActors[actor_index].posX.whole - gActors[temp_a1].posX.whole) < 12 && Math_AbsS32(gActors[actor_index].posY.whole - gActors[temp_a1].posY.whole - 14) < 12) {
            return 1;
        }
    }

    return 0;
}


void func_801AA0AC_7698BC(u16 actor_index) {
    u16 temp_a3;

    if (gActors[actor_index].var_0D8 & 8) {
        func_801A9F94_7697A4(actor_index);
        return;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        ACTOR_GFX_INIT(actor_index, D_800E223C);
        gActors[actor_index].posZ.whole = -8;
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
        Actor_SetHitboxB(actor_index, 8);
        func_801A9A2C_76923C(actor_index);
        break;

    case 1:
        if (func_801A9EC0_7696D0(actor_index)) {
            return;
        }

        func_801A9DD8_7695E8(actor_index);

        if (--gActors[actor_index].unk_164 < 0) {
            func_801A9C94_7694A4(actor_index);
        }
        break;

    case 2:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.21875);

        if (--gActors[actor_index].unk_164 < 0) {
            gActors[actor_index].state = 1;
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            ACTOR_GFX_INIT(actor_index, D_800E223C);
            gActors[actor_index].unk_164 = actor_index * 25 - 0x85C;
        }
        else if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E2450);
        }
        break;

    case 0x10:
        temp_a3 = gActors[actor_index].unk_158_u16[1];
        if (actor_index == 0x60) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[temp_a3].posX.raw - FIXED_UNIT(8), FIXED_UNIT(3.5));
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].posX.raw = Math_ApproachS32(gActors[actor_index].posX.raw, gActors[temp_a3].posX.raw + FIXED_UNIT(8), FIXED_UNIT(3.5));
        }

        gActors[actor_index].posY.raw = gActors[temp_a3].posY.raw + FIXED_UNIT(20);
        if (gActors[gActors[actor_index].unk_158_u16[1] + 1].var_150 & 0x80000000) {
            gActors[actor_index].state++;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].velocityY.raw = (s32)(gActors[0].unk_0FC.raw * 0.6);
            ACTOR_GFX_INIT(actor_index, D_800E1C00);
            if (actor_index == 0x60) {
                Sound_PlaySfx(SFX_CLANCER_YELL_011A);
            }
        }
        break;

    case 0x11:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-7.5), (s32)(gActors[actor_index].scaleX * FIXED_UNIT(0.25)));
        if (func_801A9FFC_76980C(actor_index)) {
            gActors[actor_index].state--;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
            ACTOR_GFX_INIT(actor_index, D_800E223C);
            gActors[actor_index].velocityY.raw = 0;
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            func_8006D3E4(actor_index, 0x100);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].var_0D8 |= 8;
        }
        break;

    case 0x30:
        func_801A9E68_769678(actor_index);
        temp_a3 = gActors[actor_index].var_158 + 1;
        if ((!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && ((gActors[temp_a3].state == 0x62) || (gActors[temp_a3].state == 0x63))) || ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && ((gActors[temp_a3].state == 0x60) || (gActors[temp_a3].state == 0x61)))) {
            gActors[actor_index].state++;
            ACTOR_GFX_INIT(actor_index, D_800E19D4);
        }
        break;

    case 0x31:
        func_801A9E68_769678(actor_index);
        if (gActors[actor_index].graphicTimer == 0) {
            gActors[actor_index].state--;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            ACTOR_GFX_INIT(actor_index, D_800E223C);
        }
        break;
    }
    func_80066BCC(actor_index);
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AA624_769E34(u16 actor_index) {
    s32 unused[2];

    Clancer_Update(actor_index);

    if ((u16)(u32)gActors[actor_index].unk_13C_f32 == 0xB) {
        gActors[actor_index].state = 0x3C0;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        if (func_80029B00(0x40, 0x40, -0x40)) {
            if (D_800E3584 & 0x10000) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 30.0f;
                gActors[actor_index].unk_11C = 1.0f;
            }
            else if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * FIXED_UNIT(3);
                gActors[actor_index].unk_11C = FIXED_UNIT(7);
            }
        }
        else {
            func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        }
        break;

    case 0xA1:
        func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    }
}


void func_801AA88C_76A09C(u16 parent_index, u16 new_actor_index) {
    gActors[new_actor_index].actorType = ACTORTYPE_OVL0_GEN_BOMB1;
    gActors[new_actor_index].velocityX.raw = (s32)(gActors[parent_index].unk_148 * FIXED_UNIT(1.5));
    gActors[new_actor_index].velocityY.raw = FIXED_UNIT(5);
}


void func_801AA90C_76A11C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        func_80067E50(actor_index, D_800E1700);
        if (!(func_800734C4(actor_index, 8) & 0x8000)) {
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
                return;
            }

            if (func_80029B00(0x30, 0x40, -0x40)) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 50.0f;
                gActors[actor_index].unk_11C = 0.0f;
                return;
            }

            switch (gActors[actor_index].var_0D8 & 0xF) {
            case 0:
                if (func_80029B00(0xC8, 0x60, -0x60)) {
                    gActors[actor_index].state = 0x3A0;
                    gActors[actor_index].pfn_158 = func_8006B9EC;
                }
                break;

            case 1:
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    if (func_80029B00(0xC8, 0x60, -0x60)) {
                        gActors[actor_index].state = 0x3A0;
                        gActors[actor_index].pfn_158 = func_801AA88C_76A09C;
                    }
                }
                break;
            }
        }
        break;

    case 0xA1:
        func_800734C4(actor_index, 8);
        gActors[actor_index].unk_118 = 1.2f;
        break;
    }
}


void func_801AAAD0_76A2E0(u16 actor_index) {
    s32 unused[2];

    Clancer_Update(actor_index);

    if ((u16)(u32)gActors[actor_index].unk_13C_f32 == 0xB) {
        gActors[actor_index].state = 0x3C0;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        if (func_80029B00(0x40, 0x40, -0x40)) {
            if (D_800E3584 & 0x10000) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 30.0f;
                gActors[actor_index].unk_11C = 1.0f;
            }
            else if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * FIXED_UNIT(3);
                gActors[actor_index].unk_11C = FIXED_UNIT(7);
            }
        }
        else {
            func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        }
        break;

    case 0xA1:
        func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    }
}


void func_801AAD38_76A548(u16 actor_index) {
    s32 unused[2];

    Clancer_Update(actor_index);

    if ((u16)(u32)gActors[actor_index].unk_13C_f32 == 0xB) {
        gActors[actor_index].state = 0x3C0;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        if (func_80029B00(0x40, 0x40, -0x40)) {
            if (D_800E3584 & 0x10000) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 30.0f;
                gActors[actor_index].unk_11C = 1.0f;
            }
            else if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_120 = gActors[actor_index].unk_148 * FIXED_UNIT(3);
                gActors[actor_index].unk_11C = FIXED_UNIT(7);
            }
        }
        else {
            func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        }
        break;

    case 0xA1:
        func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, gPlayerPosX.whole - 0x28, gPlayerPosX.whole + 0x28, gPlayerPosY.whole + 0x40, gPlayerPosY.whole - 0x40);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    }
}


u16 func_801AAFA0_76A7B0(u16 actor_index) {
    return func_8006930C(actor_index, 0x90U, 0x70U, 0x210U, 0x210U, 0xB39, 0xB51, 0x140, 0x120);
}


u16 func_801AAFFC_76A80C(u16 actor_index) {
    return func_8006930C(actor_index, 0xA0U, 0x70U, 0x210U, 0x210U, 0xC5C, 0xC74, 0x140, 0x120);
}


void func_801AB058_76A868(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        switch (gActors[actor_index].unk_174) {
        case 0:
            if (!(func_801AAFA0_76A7B0(actor_index) & 0x8000)) {
                gActors[actor_index].unk_174++;
            }
            break;

        case 1:
            func_80067E50(actor_index, D_800E1750);
            break;

        case 0x1000:
            if (!(func_801AAFFC_76A80C(actor_index) & 0x8000)) {
                gActors[actor_index].flags = 0;
            }
            break;
        }
        break;

    case 0x91:
        if (!(func_801AAFA0_76A7B0(actor_index) & 0x8000)) {
            gActors[actor_index].state = 0x60;
            gStageState++;
        }
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = 1.1f;
        func_801AAFFC_76A80C(actor_index);
        break;

    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0118, actor_index);
        break;

    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
}


u16 func_801AB1F4_76AA04(u16 actor_index) {
    return func_8006930C(actor_index, 0x90U, 0x70U, 0x210U, 0x210U, 0xB0C, 0xB14, 0x140, 0x120);
}


u16 func_801AB250_76AA60(u16 actor_index) {
    return func_8006930C(actor_index, 0xA0U, 0x70U, 0x210U, 0x210U, 0xB39, 0xB41, 0x140, 0x120);
}


void func_801AB2AC_76AABC(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        switch (gActors[actor_index].unk_174) {
        case 0:
            if (!(func_801AB1F4_76AA04(actor_index) & 0x8000)) {
                func_80067E50(actor_index, D_800E223C);
            }
            break;

        case 0x1000:
            if (!(func_801AB250_76AA60(actor_index) & 0x8000)) {
                func_80067E50(actor_index, D_800E223C);
            }
            break;
        }
        break;

    case 0x91:
        func_801AB1F4_76AA04(actor_index);
        break;

    case 0xA1:
        func_801AB250_76AA60(actor_index);
        break;
    }
}


void func_801AB3C4_76ABD4(u16 actor_index) {
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    if (func_80029B74(0x30)) {
        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
        }
    }
    else if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x70;
    }
    else {
        gActors[actor_index].state = 0xA0;
    }
}


void func_801AB4C0_76ACD0(u16 actor_index) {
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    if (func_80029B74(0x28)) {
        gActors[actor_index].state = 0x60;
    }
    else if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x70;
    }
}


void func_801AB574_76AD84(u16 actor_index) {
    s32 unused[2];

    Clancer_Update(actor_index);

    switch (gActors[actor_index].unk_174) {
    case 0:
    case 0x1000:
    case 0x1001:
    case 0x1002:
        switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x90;
            Sound_PlaySfx(SFX_CLANCER_SING_007F);
            break;

        case 0x61:
            func_80067E50(actor_index, D_800E1700);
            if (gActors[actor_index].unk_174 == 0x1001) {
                gActors[actor_index].state = 0xC0;
                gActors[actor_index].unk_174 = 0x1000;
            }

            if (gActors[actor_index].unk_174 == 0x1002) {
                gActors[actor_index].state = 0x120;
                gActors[actor_index].unk_174 = 0x1000;
                gActors[actor_index].unk_120 = 0.0f;
                gActors[actor_index].unk_124 = 0.0f;
                gActors[actor_index].unk_11C = FIXED_UNIT(3);
                Sound_PlaySfxAtActor2(SFX_CLANCER_OW_009D, actor_index);
            }
            break;

        case 0x91:
            SpawnParticle_SineUpNotes(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 8, gActors[actor_index].posZ.whole + 1);
            if (gActors[actor_index].posX.whole >= -47) {
                gActors[actor_index].state = 0x60;
                gStageState++;
            }
            break;
        }

        if (gActors[actor_index].unk_174 & 0x1000) {
            func_80065724(actor_index);
        }
        break;

    case 2:
        break;

    case 0x1100:
        switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state = 0x60;
            gActors[actor_index].posX.whole += 64;
            break;

        case 0x61:
            if (gActors[0x31].flags & ACTOR_FLAG_ACTIVE) {
                func_80067E50(actor_index, D_800E223C);
                func_80065724(actor_index);
                D_800E3580 = 0x31;
                func_8002AA20(actor_index, 0);
                
                if (gActors[actor_index].posY.whole >= -23) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x70;
                    }
                }
                else {
                    if (func_80029B74(0x80)) {
                        if (D_800E3584 & 0xC0000) {
                            gActors[actor_index].state = 0xA0;
                        }
                        else {
                            gActors[actor_index].state = 0x70;
                        }
                    }
                    else {
                        func_801AB3C4_76ABD4(actor_index);
                    }
                }
            }
            else {
                func_80067E50(actor_index, D_800E1700);
                func_801AB3C4_76ABD4(actor_index);
            }
            break;

        case 0xA1:
            gActors[actor_index].unk_118 = 0.9f;
            if (gActors[0x31].flags & ACTOR_FLAG_ACTIVE) {
                func_80065724(actor_index);
                if (gActors[actor_index].posY.whole >= -23) {
                    gActors[actor_index].state = 0x60;
                }
                else {
                    D_800E3580 = 0x31;
                    func_8002AA20(actor_index, 0);
                    if (func_80029B74(0xA0)) {
                        if (D_800E3584 & 0x30000) {
                            gActors[actor_index].state = 0x70;
                        }
                        else if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK3)) {
                            gActors[actor_index].state = 0x120;
                            gActors[actor_index].unk_118 = 0.0f;
                            gActors[actor_index].unk_11C = FIXED_UNIT(5.25);
                            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
                                gActors[actor_index].unk_120 = FIXED_UNIT(2);
                            }
                            else {
                                gActors[actor_index].unk_120 = FIXED_UNIT(-2);
                            }
                        }
                    }
                    else {
                        func_801AB4C0_76ACD0(actor_index);
                    }
                }
            }
            else {
                func_801AB4C0_76ACD0(actor_index);
            }
            break;
        }
        break;
    }
}


u16 func_801AB990_76B1A0(u16 actor_index, s16 radius) {
    s32 position_x = gScreenPosCurrentX.whole - (radius * 0 - gActors[D_800E3580].posX.whole);
    s32 position_y = gScreenPosCurrentY.whole - ((position_x) * 0 - gActors[D_800E3580].posY.whole);
    return func_8006930C(actor_index, 0xA0, 0x70, 0x210, 0x210, (s16)(position_x - radius), (s16)(position_x + radius), (s16)(position_y + 16), (s16)(position_y - 16));
}


void func_801ABA44_76B254(u16 actor_index) {
    Clancer_Update(actor_index);

    if ((u16)(u32)gActors[actor_index].unk_13C_f32 == 11) {
        gActors[actor_index].state = 0x3C0;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        if (!(gActors[actor_index].var_0D8 & 0xF)) {
            gActors[actor_index].unk_138 = 1.0f;
        }
        else {
            gActors[actor_index].unk_138 = 2.0f;
        }
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        if (gActors[actor_index].var_150 & 0x80000000) {
            gActors[actor_index].unk_138 = 0.0f;
            if (!(gActors[actor_index].var_0D8 & 0xF)) {
                gActors[actor_index].state = 0x480;
            }
            else {
                gActors[actor_index].state = 0x430;
            }
            break;
        }

        if ((D_800E3580 == 0) || (gStageState == 3)) {
            D_800E3580 = 0;
            func_80067E50(actor_index, D_800E1700);
            func_801AB990_76B1A0(actor_index, 0x58);
            break;
        }

        if (D_800E3584 & 0xC0000) {
            gActors[actor_index].state = 0x70;
            break;
        }

        if (!(gActors[actor_index].var_0D8 & 0xF)) {
            if (func_80029B00(0x28, 0x40, -0x40)) {
                if (func_80029B74(0x14)) {
                    gActors[actor_index].state = 0x3C0;
                }
                else {
                    gActors[actor_index].state = 0x2A0;
                    gActors[actor_index].unk_11C = 1.0f;
                }
            }
            else {
                func_801AB990_76B1A0(actor_index, 0x20);
            }
        }
        else {
            if (func_80029B00(0x18, 0x40, -0x40)) {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = 4.0f;
                gActors[actor_index].unk_11C = 2.0f;
            }
            else {
                func_801AB990_76B1A0(actor_index, 0xC);
            }
        }
        break;

    case 0xA1:
        gActors[actor_index].unk_118 = 0.85f;
        if ((D_800E3580 == 0) || (gStageState == 3)) {
            D_800E3580 = 0;
            func_801AB990_76B1A0(actor_index, 0x50);
        }
        else if (!(gActors[actor_index].var_0D8 & 0xF)) {
            func_801AB990_76B1A0(actor_index, 0x2C);
        }
        else {
            func_801AB990_76B1A0(actor_index, 0x10);
        }
        break;

    case 0x2B1:
        if (gActors[actor_index].parentIndex == 0) {
            gActors[actor_index].state = 0x60;
        }
        else {
            gActors[actor_index].state = 0x330;
        }
        break;
    }
}


void func_801ABDB4_76B5C4(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].var_154 = FIXED_UNIT(416);
        gActors[actor_index].posZ.raw = FIXED_UNIT(416);
    }

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x130;
        gActors[actor_index].unk_11C = FIXED_UNIT(7);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_120 = FIXED_UNIT(-3);
        }
        else {
            gActors[actor_index].unk_120 = FIXED_UNIT(3);
        }
        break;

    case 0x61:
        if (func_80029B00(0x50, 0x40, -0x40)) {
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                gActors[actor_index].state = 0x3B0;
                gActors[actor_index].unk_118 = (Rand() & 0xF) + 10;
                gActors[actor_index].unk_11C = 1.0f;
            }
        }
        else {
            func_801AB990_76B1A0(actor_index, 10);
        }
        break;

    case 0xA1:
        func_801AB990_76B1A0(actor_index, 10);
        gActors[actor_index].unk_118 = 0.9f;
        break;
    }

    if (gActors[actor_index].health > 0 && gActors[actor_index].state != 0xFFFF && gActors[actor_index].state != 0x20) {
        if (gActors[actor_index].var_154 > 0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
            gActors[actor_index].var_154 -= FIXED_UNIT(10);
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12;
        }
    }
}


void func_801ABFAC_76B7BC(u16 actor_index) {
    u16* sp24 = NULL;
    u16 sp22;

    switch (gActors[actor_index].var_0D8 & 0xF) {
    case 0:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            gActors[actor_index].state = 0x450;
        }
    default:
        break;

    case 0xA:
        gActors[actor_index].state = 0x290;
        break;

    case 1:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                    sp24 = D_801AF5B8_76EDC8;
                }
                else {
                    sp24 = D_801AF5BC_76EDCC;
                }
                sp22 = 0x20;
            }
        }
        break;

    case 2:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                    sp24 = D_801AF5C0_76EDD0;
                }
                else {
                    sp24 = D_801AF5C4_76EDD4;
                }
                sp22 = 0x20;
            }
        }
        break;

    case 3:
        if (!(func_80073558(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E2450);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                    sp24 = D_801AF5C8_76EDD8;
                }
                else {
                    sp24 = D_801AF5CC_76EDDC;
                }
            }
            sp22 = 0x1A;
        }
        break;

    case 4:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                sp24 = D_801AF5D0_76EDE0;
            }
            sp22 = 0x20;
        }
        break;

    case 5:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                        sp24 = D_801AF5D4_76EDE4;
                    }
                    else {
                        sp24 = D_801AF5D8_76EDE8;
                    }
                }
                sp22 = 0x1A;
            }
        }
        break;

    case 6:
        if (!(func_800734C4(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                        sp24 = D_801AF5DC_76EDEC;
                    }
                    else {
                        sp24 = D_801AF5E0_76EDF0;
                    }
                }
                sp22 = 0x1A;
            }
        }
        break;

    case 7:
        if (!(func_80073558(actor_index, 4) & 0x8000)) {
            func_80065650(actor_index);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    if ((u16)(u32)gActors[actor_index].unk_12C == 0) {
                        sp24 = D_801AF5E4_76EDF4;
                    }
                    else {
                        sp24 = D_801AF5E8_76EDF8;
                    }
                }
                sp22 = 0x1A;
            }
        }
        break;

    case 0xB:
        if (!(func_800734C4(actor_index, 0xC) & 0x8000)) {
            func_80067E50(actor_index, D_800E1750);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else if (gActors[actor_index].var_158 >= 0x1F) {
                if (func_80029B00(0xC8, 0x80, -0x80)) {
                    gActors[actor_index].state = 0x3E0;
                    gActors[actor_index].unk_124 = 1008.0f;
                }
            }
        }
        break;

    case 8:
        if (!(func_80073558(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E1700);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    sp24 = D_801AF5EC_76EDFC;
                }
                sp22 = 0x1A;
            }
        }
        break;

    case 9:
        if (!(func_80073558(actor_index, 4) & 0x8000)) {
            func_80067E50(actor_index, D_800E21D4);
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x70;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                    func_80073744(actor_index);
                }
                else {
                    sp24 = D_801AF5F4_76EE04;
                }
                sp22 = 0x1A;
            }
        }
        break;
    }

    if ((sp24 != NULL) && (D_800E3584 & 0x30000)) {
        func_80073680(sp24, actor_index, sp22);
    }
}


void func_801AC91C_76C12C(u16 actor_index) {
    u16* var_a3 = NULL;

    if ((gActors[actor_index].var_0D8 & 0xF) == 0xA) {
        if (!(func_800735EC(actor_index, 3) & 0x8000)) {
            func_80067E50(actor_index, D_800E2268);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                func_80073744(actor_index);
            }
            else {
                var_a3 = D_801AF5F8_76EE08;
            }
        }
    }

    if (var_a3 != NULL && (D_800E3584 & 0x30000)) {
        func_80073680(var_a3, actor_index, 0x1C);
    }
}


void func_801ACA18_76C228(u16 actor_index) {
    u16* var_a3 = NULL;

    if (!(gActors[actor_index].var_0D8 & 0xF)) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
            func_80073744(actor_index);
        }
        else {
            if (!(u16)(u32)gActors[actor_index].unk_12C) {
                var_a3 = D_801AF5B0_76EDC0;
            }
            else {
                var_a3 = D_801AF5B4_76EDC4;
            }
        }
    }

    if (var_a3 != NULL && (D_800E3584 & 0x30000)) {
        func_80073680(var_a3, actor_index, 0x1C);
    }
}


void func_801ACB60_76C370(u16 actor_index) {
    if ((gActors[actor_index].var_0D8 & 0xF) != 7) {
        func_80067E50(actor_index, D_800E2274);
    }
    else {
        func_80065650(actor_index);
    }
}


void func_801ACBD4_76C3E4(u16 actor_index) {
    if ((gActors[actor_index].var_0D8 & 0xF) != 0xA) {
        func_80067E50(actor_index, D_800E1728);
    }
}


void func_801ACC38_76C448(u16 actor_index) {
    s32 temp_t2;

    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;

    case 0x61:
        gActors[actor_index].velocityX.raw = 0;
        switch (func_800407D4(actor_index)) {
        default:
            func_801ABFAC_76B7BC(actor_index);
            break;

        case 0x1000:
            func_801ACB60_76C370(actor_index);
            break;

        case 0x800:
            gActors[actor_index].unk_12C += 1.0f;
            break;

        case 0x8000:
            gActors[actor_index].state = 0x120;
            gActors[actor_index].unk_118 = 1.0f;
            gActors[actor_index].unk_11C = FIXED_UNIT(3);
            gActors[actor_index].unk_120 = 0.0f;
            break;

        case 0x2000:
        case 0x4000:
            func_80067E50(actor_index, D_800E1700);
            break;
        }
        break;

    case 0x201:
        gActors[actor_index].velocityX.raw = 0;
        switch (func_800407D4(actor_index)) {
        default:
            func_801AC91C_76C12C(actor_index);
            break;

        case 0x1000:
            func_801ACBD4_76C3E4(actor_index);
            break;

        case 0x800:
            gActors[actor_index].unk_12C += 1.0f;
            break;

        case 0x2000:
        case 0x4000:
            func_80067E50(actor_index, D_800E1728);
            break;
        }
        break;

    case 0x91:
        func_80073558(actor_index, 4);
        gActors[actor_index].unk_118 = 1.2f;
        break;

    case 0xA1:
        func_800734C4(actor_index, 4);
        gActors[actor_index].unk_118 = 1.1f;
        break;

    case 0x241:
        func_800735EC(actor_index, 2);
        gActors[actor_index].unk_118 = 1.2f;
        break;

    case 0x3F5:
        if (gActors[actor_index].unk_124 < 8.0f) {
            gActors[actor_index].state = 0x3F1;
        }
        break;

    case 0x452:
        if (func_800407D4(actor_index) == 0x800) {
            gActors[actor_index].unk_12C += 1.0f;
        }
        else {
            func_801ACA18_76C228(actor_index);
        }
        break;
    }

    temp_t2 = gActors[actor_index].var_0D8 & 0xF;
    if ((temp_t2 == 1) || (temp_t2 == 2) || (temp_t2 == 4)) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK12);
        gActors[actor_index].health = 0;
    }
}


s32 func_801ACF58_76C768(u16 actor_index) {
    s16 position_x = gScreenPosCurrentX.whole - (actor_index * 0 - gActors[actor_index].posX.whole);
    s16 position_y = gScreenPosCurrentY.whole - ((position_x) * 0 - gActors[actor_index].posY.whole);

    if (position_y >= 0x161 && position_x >= 0x901 && position_x < 0x9B0) {
        return 1;
    }

    return 0;
}


s32 func_801ACFE8_76C7F8(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    s16 position_x = gScreenPosCurrentX.whole + actor->posX.whole;

    if (position_x >= 0x405 && position_x < 0x41A) {
        actor->state = 0x170;
        gActors[actor_index + 2].unk_180 = FIXED_UNIT(3);
        gActors[actor_index + 3].unk_180 = FIXED_UNIT(6.5);
        return 1;
    }

    return 0;
}


void func_801AD090_76C8A0(u16 actor_index) {
    s32 index;
    f32 scale;
    s16 position_x;

    gActors[0x3F].state = 3;
    gActors[actor_index].health = 10000;
    index = actor_index;
    gActors[actor_index + 1].var_0D8 = 0;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 0x30);
    scale = (f32)gActors[actor_index].unk_168 / 10000.0f;
    func_80032E60(index + 3, 0x103E, 0x360, 10.0f * scale, 0, scale, scale);
    func_80032E60(index + 11, 0x1040, 0, 4.0f * scale, -1, scale, scale);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x110;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 8000;
        break;

    case 0x111:
        if (index != 0x40) {
            switch (gActors[actor_index + 2].var_0D8) {
            case 1:
                gActors[actor_index + 2].var_0D8 = 0;
                gActors[actor_index].state = 0x120;
                break;

            case 2:
                gActors[actor_index].state = 0x4080;
                Sound_PlaySfx(SFX_HIT_002D);
                break;
            }
        }
        else {
            gActors[actor_index + 10].unk_180 = 0x970;
            gActors[actor_index + 11].unk_180 = 0x140;
            switch (func_800407D4(actor_index)) {
            case 0x1000:
            case 0x2000:
            case 0x4000:
            case 0x8000:
                break;

            default:
                position_x = gScreenPosCurrentX.whole - (index * 0 - gActors[actor_index].posX.whole);
                if (func_801ACF58_76C768(actor_index)) {
                    if (((position_x < 0x978) && !(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) || ((position_x >= 0x978) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED))) {
                        gActors[actor_index].state = 0x120;
                    }
                    else {
                        gActors[actor_index].state = 0x130;
                    }
                }
                else if (!(func_80094CF8(actor_index, 3) & 0x8000)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x120;
                    }
                    else if (gActors[actor_index + 3].var_0D8 == 0) {
                        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK20) {
                            func_80094EB8(actor_index);
                        }
                        else {
                            func_80094E10(D_801AF5FC_76EE0C, actor_index);
                        }
                    }
                    else if (gActors[0x5F].flags == 0) {
                        gActors[0x5F].actorType = 0x45;
                        Actor_Initialize(0x5F);
                        gActors[0x5F].posX.whole = gActors[actor_index].posX.whole + 28;
                        gActors[0x5F].posY.whole = gActors[actor_index].posY.whole;
                        gActors[0x5F].var_0D8 = 4;
                        gActors[0x5F].var_110 = 50.0f;
                    }
                }
                break;

            case 0x800:
                gActors[actor_index + 3].var_0D8++;
                break;
            }
        }
        break;

    case 0x131:
        if (!func_801ACF58_76C768(actor_index) && !func_801ACFE8_76C7F8(actor_index)) {
            gActors[actor_index + 3].unk_180 = 1;
            func_80094CF8(actor_index, 3);
        }
        break;

    case 0x4080:
        gActors[actor_index].state++;
        func_80081790(actor_index, D_800E9034);
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(3.5);
        CameraShake(-6, 8);

    case 0x4081:
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
        gActors[actor_index].posX.whole -= 5;
        gActors[actor_index].unk_170 -= FIXED_UNIT(48);
        if (gActors[actor_index].posX.whole < -160) {
            gActors[actor_index].flags = 0;
            func_80081720(actor_index, D_800E5E48, 3);
        }
        break;
    }
}


void func_801AD534_76CD44(u16 actor_index) {
    u16 temp_a0 = actor_index;
    f32 scale;

    if (gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 + gScreenPosCurrentX.parts[0] < 0x684) {
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK2;
    }

    gActors[actor_index + 1].var_0D8 = 0;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 0);
    scale = gActors[actor_index].unk_168 / 10000.0f;
    func_80032E60(temp_a0 + 3, GINDEX_HAT_COWBOY, 0x104, 6.0f * scale, 0, scale, scale);

    switch (gActors[actor_index].state) {
    default:
        break;

    case 0:
        gActors[actor_index].state = 0x110;
        gActors[actor_index + 11].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 11].graphicIndex = GINDEX_101E;
        gActors[actor_index + 11].unk_138 = 6.0f;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 11000;
        gActors[actor_index].health = 500;
        gActors[actor_index + 7].unk_180 = 100;
        break;

    case 0x111:
        if (func_80029B00(0x50, 0x50, -0x50)) {
            if (D_800E3584 & 0xC0000) {
                gActors[actor_index].state = 0x120;
            }
            else {
                gActors[actor_index].state = 0x230;
            }
        }
        else {
            if (!(func_8008E790(actor_index, 0x140, 0x120, 0x7E8, 0x7F8, 0x1A4, 0x17C) & 0x8000)) {
                if (func_80029B00(0xC0, 0x70, -0x70)) {
                    if (D_800E3584 & 0xC0000) {
                        gActors[actor_index].state = 0x120;
                    }
                    else if (gActors[actor_index + 6].unk_180 >= 3) {
                        if (gActors[actor_index + 8].unk_180 < 0) {
                            gActors[actor_index + 6].unk_180 = 0;
                        }
                    }
                    else if (gActors[actor_index + 7].unk_180 < 0) {
                        gActors[actor_index].state = 0x240;
                        gActors[actor_index + 2].unk_180 = 0;
                        gActors[actor_index + 6].unk_180++;
                        gActors[actor_index + 7].unk_180 = 55;
                        gActors[actor_index + 8].unk_180 = 180;
                    }
                }
            }
        }
        break;

    case 0x141:
        gActors[actor_index + 3].unk_180 = 0;
        func_8008E790(actor_index, 0x140, 0x120, 0x7E8, 0x7F8, 0x1A4, 0x17C);
        break;
    }

    if (gActors[actor_index + 7].unk_180 >= 0) {
        gActors[actor_index + 7].unk_180--;
    }

    if (gActors[actor_index + 8].unk_180 >= 0) {
        gActors[actor_index + 8].unk_180--;
    }

    gActors[actor_index + 11].graphicIndex = GINDEX_101E;
}


void func_801AD870_76D080(u16 actor_index) {
    s32 unused;
    u16 state;

    gActors[actor_index + 1].var_0D8 = 2;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 0);
    state = gActors[actor_index].state;
    switch (state) {
    case 0:
        gActors[actor_index].state = 0x110;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 10000;
        gActors[actor_index].health = 10000;
        gActors[actor_index + 2].var_0D8 = 0;
        break;

    case 0x111:
        if (gActors[actor_index + 2].var_0D8 != 0) {
            if (gActors[actor_index + 2].var_0D8 == 1) {
                gActors[actor_index + 2].var_0D8++;
                gActors[actor_index].state = 0x170;
                gActors[actor_index + 2].unk_180 = FIXED_UNIT(5.5);
                gActors[actor_index + 3].unk_180 = FIXED_UNIT(6.5);
            }
            else if (gActors[actor_index].posX.whole >= 177) {
                gStageState = 4;
                gActors[actor_index].flags = 0;
                func_80081720(actor_index, D_800E5E48, 3);
            }
        }
        break;

    case 0x141:
        gActors[actor_index + 3].unk_180 = 0;
        func_8008E790(actor_index, 0x140, 0x120, gPlayerPosX.whole - 40, gPlayerPosX.whole + 40, gPlayerPosY.whole + 64, gPlayerPosY.whole - 64);
        break;

    case 0x172:
        if (gActors[actor_index + 2].var_0D8 == 2) {
            gActors[actor_index + 2].var_0D8++;
            Sound_PlaySfxAtActor2(SFX_DASH_0116, actor_index);
        }
        break;
    }
}


void func_801ADA48_76D258(u16 actor_index) {
    func_80081720(actor_index, (s16*)D_801AF690_76EEA0, -1);
    gActors[actor_index - 1].actorType = ACTORTYPE_63;
    Actor_Initialize(actor_index - 1);
    gActors[actor_index - 1].var_110 = 1027.0f;
    gActors[actor_index - 1].var_0D8 = 0;
    gActors[actor_index - 1].velocityX.raw = 0;
    gActors[actor_index - 1].velocityY.raw = FIXED_UNIT(2);
    func_8003B8CC(actor_index - 1);
}


u16 func_801ADAEC_76D2FC(u16 actor_index) {
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_SHAKE) && (gActors[actor_index].unk_11C < 0.0f) && (gActors[actor_index].unk_168 == 9500)) {
        gActors[actor_index].colorR = 0x40;
        Sound_PlaySfxAtActor2(SFX_MECHSTEP_0059, actor_index - 1);
        switch (func_800486F4()) {
        case 0xC:
            switch (gActors[actor_index].state) {
            case 0x120:
                gActors[actor_index].state = 0x130;
                func_80081790(actor_index, D_801AF878_76F088);
                D_801AFB80_76F390 = 0;
                break;

            case 0x130:
                gActors[actor_index].state = 0x120;
                func_80081790(actor_index, D_801AF860_76F070);
                D_801AFB80_76F390 = 0;
                break;

            case 0x140:
                func_80081790(actor_index, D_801AF8E8_76F0F8);
                D_801AFB80_76F390 = 0;
                break;
            }
            break;

        case 4:
            switch (gActors[actor_index].state) {
            case 0x120:
                gActors[actor_index].state = 0x130;
                func_80081790(actor_index, D_801AF878_76F088);
                D_801AFB80_76F390 = 0x100;
                break;

            case 0x130:
                gActors[actor_index].state = 0x120;
                func_80081790(actor_index, D_801AF860_76F070);
                D_801AFB80_76F390 = 0x100;
                break;

            case 0x140:
                func_80081790(actor_index, D_801AF8E8_76F0F8);
                D_801AFB80_76F390 = 0x100;
                break;
            }
            break;

        case 0:
            switch (gActors[actor_index].state) {
            case 0x120:
                gActors[actor_index].state = 0x130;
                func_80081790(actor_index, D_801AF890_76F0A0);
                break;

            case 0x130:
                gActors[actor_index].state = 0x120;
                func_80081790(actor_index, D_801AF8B0_76F0C0);
                break;

            case 0x140:
                gActors[actor_index].state = 0x120;
                func_80081790(actor_index, D_801AF860_76F070);
                break;
            }
            break;

        case 8:
            switch (gActors[actor_index].state) {
            case 0x120:
                gActors[actor_index].state = 0x140;
                func_80081790(actor_index, D_801AF8D0_76F0E0);
                break;

            case 0x130:
                gActors[actor_index].state = 0x140;
                func_80081790(actor_index, D_801AF8D0_76F0E0);
                break;

            case 0x140:
                func_80081790(actor_index, D_801AF8E8_76F0F8);
                break;
            }
            break;
        }
        return func_800486F4();
    }

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB)) {
        gActors[actor_index].state = 0x10;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        func_801ADA48_76D258(actor_index);
        return 0xFFFF;
    }
    return 0;
}


void func_801ADE18_76D628(u16 actor_index, u16 sound_id) {
    if (gActors[actor_index].flags_098 & 1) {
        Sound_PlaySfxAtActor2(sound_id, actor_index);
        gActors[actor_index].unk_180 = 4;
    }

    if (gActors[actor_index].unk_180) {
        gActors[actor_index].unk_180--;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
    }

    gActors[actor_index].flags_098 = 0;
}


void func_801ADEC4_76D6D4(u16 actor_index) {
    gActors[actor_index].flags |= ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK8;
    gActors[actor_index].health = 0xA;
}


void func_801ADF0C_76D71C(u16 actor_index) {
    gActors[actor_index].hitType = 4;
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(6);\
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(2);
    Actor_SetHitboxA(actor_index, 0x10);
    gActors[actor_index].damage = 0xA;
}


void func_801ADF84_76D794(u16 actor_index) {
    gActors[actor_index + 9].flags &= ~ACTOR_FLAG_UNK7;
    gActors[actor_index + 10].flags &= ~ACTOR_FLAG_UNK7;
    gActors[actor_index + 11].flags &= ~ACTOR_FLAG_UNK7;
    gActors[actor_index + 12].flags &= ~ACTOR_FLAG_UNK7;
}


void func_801ADFEC_76D7FC(u16 actor_index) {
    s32 velocity_x = gActors[actor_index].velocityX.raw;

    if (velocity_x > 0) {
        func_801ADE18_76D628(actor_index + 12, SFX_HIT_002D);
    }
    else if (velocity_x < 0) {
        func_801ADE18_76D628(actor_index + 10, SFX_HIT_002D);
    }
}


void func_801AE06C_76D87C(u16 actor_index) {
    gActors[actor_index].hitType = 8;
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(4);\
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(6);
    Actor_SetHitboxA(actor_index, 8);
    gActors[actor_index].damage = 0xA;
}


void func_801AE0E4_76D8F4(u16 actor_index) {
    func_801ADE18_76D628(actor_index, SFX_STAB_006E);
}


void func_801AE110_76D920(u16 actor_index) {
    gActors[actor_index].posY.whole = (s32)((348 - gScreenPosCurrentY.whole) - ((9500 - gActors[actor_index].unk_168) / 9500.0f) * 64.0f);
}


void func_801AE1B4_76D9C4(u16 actor_index) {
    s32 index = actor_index;
    u16 previous_index;

    if (gActors[actor_index].state && (gActors[actor_index].state < 0x800) && (gActors[index + 1].flags & ACTOR_FLAG_DRAW)) {
        func_800819A8(actor_index, (s16*)D_801AF690_76EEA0);
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[actor_index].posZ.raw = FIXED_UNIT(-15);
        gActors[actor_index].unk_18C = (s32)D_800DE348;
        func_8008105C(actor_index, (s16*)D_801AF690_76EEA0, (s16*)D_801AF600_76EE10);
        gActors[actor_index].unk_178 = (s32)D_801AF844_76F054;
        func_80081478(actor_index, (s16*)D_801AF690_76EEA0, 0);
        func_80081790(actor_index, D_801AF860_76F070);
        func_800819A8(actor_index, (s16*)D_801AF690_76EEA0);
        gActors[actor_index].state = 0x10;
        gActors[index + 6].palette_18C = D_800DFA48;
        gActors[index + 8].palette_18C = D_800DFA48;
        gActors[index + 6].graphicList = D_800E2528;
        gActors[index + 8].graphicList = D_800E2528;
        ACTOR_GFX_INIT(index + 1, D_800E24EC);
        gActors[index + 2].palette_18C = D_800DE6C8 + gActors[index + 2].posX.whole * 0;
        ACTOR_GFX_INIT(index + 2, D_800E24EC);
        gActors[index + 3].palette_18C = D_800DE6C8 + gActors[index + 2].posX.whole * 0;
        ACTOR_GFX_INIT(index + 3, D_800E24EC);
        ACTOR_GFX_INIT(index + 5, D_800E24EC);
        gActors[index + 6].graphicTimer = 1;
        ACTOR_GFX_INIT(index + 7, D_800E24EC);
        gActors[index + 8].graphicTimer = 1;
        gActors[index + 9].palette_18C = D_800DE888 + index * 0;
        ACTOR_GFX_INIT(index + 9, D_800E24EC);
        gActors[index + 10].palette_18C = D_800DE6C8 + gActors[index + 2].posX.whole * 0;
        ACTOR_GFX_INIT(index + 10, D_800E24EC);
        gActors[index + 11].palette_18C = D_800DE888 + index * 0;
        ACTOR_GFX_INIT(index + 11, D_800E24EC);
        gActors[index + 12].palette_18C = D_800DE6C8 + gActors[index + 2].posX.whole * 0;
        ACTOR_GFX_INIT(index + 12, D_800E24EC);
        gActors[index + 1].unk_18C = (s32)D_800DE348;
        Actor_SetHitboxB(index + 1, 12);
        Actor_SetHitboxB(index + 2, 12);
        Actor_SetHitboxB(index + 3, 12);
        Actor_SetHitboxB(index + 5, 12);
        Actor_SetHitboxB(index + 7, 12);
        Actor_SetHitboxB(index + 9, 12);
        Actor_SetHitboxB(index + 10, 12);
        Actor_SetHitboxB(index + 11, 12);
        Actor_SetHitboxB(index + 12, 12);
        func_80081720(actor_index, (s16*)D_801AF690_76EEA0, -1);
        gActors[0xC0].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        break;

    case 0x10:
        if (gActors[index - 1].unk_188 && (gActors[index - 1].state == 2) && (gActors[index - 1].unk_114 >= 0.0f)) {
            gActors[actor_index].state++;
            gActors[actor_index].posX.whole = gActors[index - 1].posX.whole;
            gActors[actor_index].posY.whole = gActors[index - 1].posY.whole;
        }
        break;

    case 0x11:
        gActors[actor_index].state = 0x110;
        previous_index = index - 1;
        gActors[index - 1].actorType = 0x1C;
        Actor_Initialize(previous_index);
        gActors[index - 1].var_110 = 58417.0f;
        gActors[index - 1].var_0D8 = 0;
        gActors[index - 1].velocityX.raw = 0;
        gActors[index - 1].velocityY.raw = 0;
        gActors[index - 1].flags_098 = ACTOR_FLAG3_GRAB;
        ActorUpdate_Clanball_28(previous_index);
        gActors[index - 1].grabType = 6;
        gActors[actor_index].state = 0x110;
        gActors[actor_index].posY.whole = gActors[index - 1].posY.whole;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].unk_168 = 1500;
        func_800816AC(actor_index, (s16*)D_801AF690_76EEA0, 3);
        func_80081478(actor_index, (s16*)D_801AF690_76EEA0, 1);
        func_80081790(actor_index, D_801AF878_76F088);
        func_800819A8(actor_index, (s16*)D_801AF690_76EEA0);
        Sound_PlaySfxAtActor2(SFX_WOOSH_0099, previous_index);
        gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
        D_801AFB80_76F390 = 0;

    case 0x110:
        if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB)) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            func_801ADA48_76D258(actor_index);
        }
        else {
            func_801AE110_76D920(actor_index);
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 9500, 400);
            if (gActors[actor_index].unk_168 == 9500) {
                gActors[actor_index].state = 0x120;
                previous_index = index - 1;
                func_80081790(actor_index, D_801AF8B0_76F0C0);
                gActors[actor_index].colorR = 0x40;
                Sound_PlaySfxAtActor2(SFX_MECHSTEP_0059, previous_index);
                func_800816AC(actor_index, (s16*)D_801AF690_76EEA0, 0x48103);
                gActors[index + 4].flags &= ~ACTOR_FLAG_DRAW;
                gActors[index + 4].flags &= 0xFFFBFEFF;
                gActors[index + 6].flags &= 0xFFFBFEFF;
                gActors[index + 8].flags &= 0xFFFBFEFF;
                func_801AE06C_76D87C(index + 6);
                func_801AE06C_76D87C(index + 8);
                func_801ADF0C_76D71C(index + 9);
                func_801ADF0C_76D71C(index + 10);
                func_801ADF0C_76D71C(index + 11);
                func_801ADF0C_76D71C(index + 12);
                func_801ADEC4_76D6D4(index + 5);
                func_801ADEC4_76D6D4(index + 7);
            }
        }
        break;

    case 0x120:
    case 0x130:
        func_801AE0E4_76D8F4(index + 6);
        func_801AE0E4_76D8F4(index + 8);

        if (gActors[actor_index].velocityX.raw) {
            func_801ADFEC_76D7FC(actor_index);
        }

        if (gActors[actor_index].unk_16C & 1) {
            gActors[actor_index].velocityX.raw = 0;
            func_801ADF84_76D794(actor_index);
        }
        index = func_801ADAEC_76D2FC(actor_index);

        if (index != 4) {
            if (index == 0xC) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            }
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
        }
        index = actor_index;
        break;

    case 0x140:
        func_801AE0E4_76D8F4(index + 6);
        func_801AE0E4_76D8F4(index + 8);
        if (func_801ADAEC_76D2FC(actor_index) != 0xFFFF) {
            if (gActors[actor_index].unk_11C < 0.0f) {
                func_801ADF84_76D794(actor_index);
            }
            else {
                func_801ADE18_76D628(index + 10, SFX_HIT_002D);
                func_801ADE18_76D628(index + 12, SFX_HIT_002D);
            }
        }
        break;

    case 0x800:
        D_800BE544 = 0;
        D_800BE704 = 8;
        gActors[actor_index].flags = 0;
        func_801ADA48_76D258(actor_index);
        return;
    }

    if (gActors[actor_index].state < 0x100) {
        if (D_800BE544 != 0x8000) {
            D_800BE544 = 0;
            D_800BE704 = 8;
        }
    }
    else {
        D_800BE704 = 2;
        D_800BE544 = 0xC0;
        previous_index = index - 1;

        if ((gActors[0x70].flags & ACTOR_FLAG_ACTIVE) && (gActors[0x70].actorType == 0x1822)) {
            gActors[0xC0].posX.whole = Math_ApproachS32(gActors[0xC0].posX.whole, 0x1C0, 8);
        }
        else {
            gActors[0xC0].posX.whole = Math_ApproachS32(gActors[0xC0].posX.whole, D_801AFB80_76F390, 8);
        }

        gActors[0xC0].posY.whole = gActors[actor_index + 12].posY.whole + 16;
        if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].posX.whole + gScreenPosCurrentX.whole - 32 < D_800D2920)) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posX.whole = -112;
        }

        if ((gActors[actor_index].velocityX.raw > 0) && (D_800D2924 < gActors[actor_index].posX.whole + gScreenPosCurrentX.whole + 32)) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].posX.whole = 112;
        }

        gActors[previous_index].posX.raw = gActors[index + 4].posX.raw + gActors[previous_index].velocityX.raw;
        gActors[previous_index].posY.raw = gActors[index + 4].posY.raw + gActors[previous_index].velocityY.raw - FIXED_UNIT(6);
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 8);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].colorB = gActors[actor_index].colorR;
        func_80032E60(previous_index, 0x240, 0x100, 12.0f * gActors[actor_index].scaleY, 1, gActors[actor_index].scaleX, gActors[actor_index].scaleY);
    }

    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


s32 func_801AEB78_76E388(u16 actor_index) {
    if (gActors[0x3D].flags & ACTOR_FLAG_UNK7) {
        if (gActors[0x3D].posX.whole + gActors[0x3D].hitboxAX1 >= gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0 &&
            gActors[0x3D].posX.whole + gActors[0x3D].hitboxAX0 < gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1 &&
            gActors[0x3D].posY.whole + gActors[0x3D].hitboxAY0 >= gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 &&
            gActors[0x3D].posY.whole + gActors[0x3D].hitboxAY1 < gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0) {
            return 1;
        }
    }

    return 0;
}


void func_801AEC48_76E458(u16 actor_index) {
    s16 index;

    while (gActors[actor_index].hitboxBY0 >= 0) {
        for (index = gActors[actor_index].hitboxBX0; index <= gActors[actor_index].hitboxBX1; index += 16) {
            func_80012044(gActors[actor_index].posX.whole + index, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0, 0);
        }
        gActors[actor_index].hitboxBY0 -= 16;
    }

    gActors[actor_index].flags = 0;
    Sound_PlaySfxAtActor2(SFX_BOOM_0043, actor_index);
    CameraShake(15, 10);
}


void func_801AED40_76E550(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        u16 index;

        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        index = gActors[actor_index].var_0D8 * 4;
        gActors[actor_index].hitboxBY1 = 0;
        gActors[actor_index].hitboxBY0 = D_801AF908_76F118[index + 0];
        gActors[actor_index].hitboxBX0 = D_801AF908_76F118[index + 1];
        gActors[actor_index].hitboxBX1 = D_801AF908_76F118[index + 2];
        gActors[actor_index].var_150 = D_801AF908_76F118[index + 3];
    }
    else if (func_801AEB78_76E388(actor_index)) {
        func_8003F138(1.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY0 / 2, 8);
        func_801AEC48_76E458(actor_index);
    }
}


void func_801AEE40_76E650(u16 actor_index) {
}


void func_801AEE48_76E658(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_UNK9;
        gActors[actor_index].graphicList = (s16*)D_801AF930_76F140;\
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].hitFlags = HITFLAG_2 | HITFLAG_7;
        gActors[actor_index].hitType = HITTYPE_BOOM_9;
        gActors[actor_index].damage = 50;
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
        Actor_SetColorRgb(actor_index, 0x3F);
        gActors[actor_index].var_150 = 240;
        gActors[actor_index].hitboxAY0 = 6;
        gActors[actor_index].hitboxAY1 = -6;
        gActors[actor_index].hitboxAX0 = -8;
        gActors[actor_index].hitboxAX1 = 8;
        gActors[actor_index].scaleX = 1.5f;
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -FIXED_UNIT(2), FIXED_UNIT(0.0625));
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) && gActors[actor_index].parentIndex == 0) {
            Sound_PlaySfxAtActor2(SFX_0076, actor_index);
        }
    }

    if (--gActors[actor_index].var_150 < 0 || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)) {
        gActors[actor_index].flags = 0;
        func_8003F138(0.4f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0);
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}


void func_801AEFC8_76E7D8(u16 actor_index, s16 position_x) {
    u16 new_actor_index;

    if ((s32)gActiveFrames % 120 == 0) {
        new_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
        if (new_actor_index) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL2_W1_33;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[new_actor_index].posX.whole = position_x;
            gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
            Sound_PlaySfxAtActor2(SFX_0076, actor_index);
        }
    }
}


void func_801AF09C_76E8AC(u16 actor_index) {
    if (gActors[actor_index].state) {
        func_800819A8(actor_index, (s16*)D_801AF690_76EEA0);
        gActors[actor_index + 3].scaleX = 1.5f;
        gActors[actor_index + 3].scaleY = 1.5f;
        gActors[actor_index + 5].scaleX = 1.5f;
        gActors[actor_index + 5].scaleY = 1.5f;
        gActors[actor_index + 7].scaleX = 1.5f;
        gActors[actor_index + 7].scaleY = 1.5f;
        gActors[actor_index + 10].scaleY = 1.5f;
        gActors[actor_index + 12].scaleY = 1.5f;
        gActors[actor_index + 1].scaleX = 1.6f;
        gActors[actor_index + 1].scaleY = 1.6f;
        gActors[actor_index + 2].scaleX = 1.6f;
        gActors[actor_index + 2].scaleY = 1.6f;
        gActors[actor_index + 9].scaleX = 1.4f;
        gActors[actor_index + 9].scaleY = 1.4f;
        gActors[actor_index + 11].scaleX = 1.4f;
        gActors[actor_index + 11].scaleY = 1.4f;
        gActors[actor_index + 4].scaleX = 1.75f;
        gActors[actor_index + 4].scaleY = 1.75f;
        gActors[actor_index + 10].scaleX = 1.8f;
        gActors[actor_index + 12].scaleX = 1.8f;
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        func_8008105C(actor_index, (s16*)D_801AF690_76EEA0, (s16*)D_801AF648_76EE58);
        gActors[actor_index].unk_178 = (uintptr_t)D_801AF844_76F054;
        func_80081478(actor_index, (s16*)D_801AF690_76EEA0, 0U);
        func_80081790(actor_index, D_801AF860_76F070);
        func_800819A8(actor_index, (s16*)D_801AF690_76EEA0);
        gActors[actor_index].posZ.raw = FIXED_UNIT(-15.5);
        gActors[actor_index + 1].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 1].palette_18C = D_800DFA48;
        gActors[actor_index + 2].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 2].palette_18C = D_800DFA48;
        gActors[actor_index + 3].palette_18C = D_800DFA48;
        gActors[actor_index + 3].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 4].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 5].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 6].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 7].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 1].graphicTimer = 1;
        gActors[actor_index + 1].graphicList = D_800E2528;
        gActors[actor_index + 2].graphicTimer = 1;
        gActors[actor_index + 2].graphicList = D_800E2528;
        gActors[actor_index + 3].graphicTimer = 1;
        gActors[actor_index + 3].graphicList = D_800E2528;
        gActors[actor_index + 4].palette_18C = D_800DFC48;
        gActors[actor_index + 4].graphicTimer = 1;
        gActors[actor_index + 4].graphicList = D_800E2528;
        gActors[actor_index + 5].graphicTimer = 1;
        gActors[actor_index + 5].graphicList = D_800E2528;
        gActors[actor_index + 6].palette_18C = D_800DFC48;
        gActors[actor_index + 6].graphicTimer = 1;
        gActors[actor_index + 6].graphicList = D_800E2528;
        gActors[actor_index + 7].graphicTimer = 1;
        gActors[actor_index + 7].graphicList = D_800E2528;
        gActors[actor_index + 8].graphicFlags |= ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index + 8].palette_18C = D_800DFC48;
        gActors[actor_index + 8].graphicTimer = 1;
        gActors[actor_index + 8].graphicList = D_800E2528;
        gActors[actor_index + 9].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 9].graphicTimer = 1;
        gActors[actor_index + 9].graphicList = D_800E2528;
        gActors[actor_index + 10].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 10].graphicTimer = 1;
        gActors[actor_index + 10].graphicList = D_800E2528;
        gActors[actor_index + 11].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 11].graphicTimer = 1;
        gActors[actor_index + 11].graphicList = D_800E2528;
        gActors[actor_index + 12].graphicFlags |= ACTOR_GFLAG_UNK15;
        gActors[actor_index + 12].graphicTimer = 1;
        gActors[actor_index + 12].graphicList = D_800E2528;

    case 1:
        gActors[actor_index].state++;
        return;
    case 2:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state++;
            func_80081790(actor_index, D_801AF878_76F088);
            return;
        }
        return;
    case 3:
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state--;
            func_80081790(actor_index, D_801AF860_76F070);
        }
        break;
    }
}


