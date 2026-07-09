#include "common.h"
#include "actor.h"
#include "function_symbols.h"

// "overlay 4" code for "Trapped", "Phoenix Gamma", "Inner Struggle", "Merco", and several unused scenes.

extern s16 D_800D2920;
extern s32 D_800D2928;
extern u32 D_80137458;

extern void func_80011F44(s16 arg0, s16 arg1, s32 arg2, s32 arg3);
void func_801B9A3C_7E800C(u16 actor_index);

// blank spawn table
u16 D_801BAFD0_7E95A0[] = {
    SPAWNRECORD_END
};

u16 D_801BAFD4_7E95A4[] = {
    0x01E0, 0x019C, 0x0108, 0x0748, 0x0280, 0x00EE,
    0xFFD0, 0xFFEB,
};

u16 D_801BAFE4_7E95B4[] = {
    0x0091, 0x0093, 0x0095, 0x0097, 0x0099, 0x009B, 0x009D, 0x009F,
    0x0000, 0x0000,
};

u16 D_801BAFF8_7E95C8[] = {
    0x1AF8, 0x01D0, 0x1A68, 0x1DD8, 0x0240, 0x0160, 0xFF8A, 0xFFCE,
    0x0081, 0x0083, 0x0085, 0x0087, 0x0000, 0x0000,
};

u16 D_801BB014_7E95E4[] = {
    0x0E00, 0x01A0, 0x0D70, 0x12A0, 0x0210, 0x0090, 0xFF7A, 0x002E,
};

u16 D_801BB024_7E95F4[] = {
    0x0074, 0x0076, 0x0078, 0x007A, 0x007C, 0x007E, 0x0080, 0x0000,
};

u16 D_801BB034_7E9604[] = {
    0x0B08, 0x02E0, 0x0A78, 0x0DC0, 0x03A8, 0x0270, 0xFF8A, 0xFFDE,
};

u16 D_801BB044_7E9614[] = {
    0x005C, 0x005E, 0x0060, 0x0062, 0x0000, 0x0000,
};

u16 D_801BB050_7E9620[] = {
    0x0780, 0x02E0, 0x06F0, 0x2090, 0x2070, 0x0110,
    0x0000, 0x0000, 0x005C, 0x005E, 0x0060, 0x0062,
    0x0000, 0x0000,
};

u16 D_801BB06C_7E963C[] = {
    0x0AF8, 0x01D0, 0x0A68, 0x0D18, 0x0240, 0x0160, 0xFF8A, 0xFFCE,
};

u16 D_801BB07C_7E964C[] = {
    0x0081, 0x0083, 0x0085, 0x0087, 0x0000, 0x0000,
};

// actors in first section on "Trapped"
u16 D_801BB088_7E9658[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0090, 0x0178, 0x018C, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0091, 0x0178, 0x018C, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0094, 0x0238, 0x018C, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0095, 0x0238, 0x018C, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0092, 0x02F8, 0x018C, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0093, 0x02F8, 0x018C, 0x000A, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0096, 0x03B8, 0x015C, 0x0018, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0097, 0x03B8, 0x015C, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0098, 0x0478, 0x015C, 0x0018, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0099, 0x0478, 0x015C, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009A, 0x0538, 0x018C, 0x0002, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009B, 0x0538, 0x018C, 0x000B, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009C, 0x05F8, 0x01BC, 0x0002, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009D, 0x05F8, 0x01BC, 0x000B, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009E, 0x06B8, 0x01BC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x009F, 0x06B8, 0x01BC, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A0, 0x0718, 0x021C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A1, 0x0718, 0x021C, 0x0011, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A2, 0x0718, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A4, 0x0718, 0x02AC, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A5, 0x0718, 0x02AC, 0x0012, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A6, 0x0718, 0x02AC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0046, 0x0408, 0x01BC, 0x7100, 0x0002, ACTORTYPE_MSHINT,
    0x0000, 0x0030, 0x06B8, 0x01E8, 0x3200, 0x0060, ACTORTYPE_OVL1_GEN_WALKER,
    0x0000, 0x003F, 0x06B8, 0x01EC, 0x0031, 0x0000, ACTORTYPE_OVL1_GEN_GUN,
    SPAWNRECORD_END
};

u16 D_801BB1E8_7E97B8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x00A7, 0x0748, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A8, 0x0748, 0x024C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x00A9, 0x0748, 0x01BC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    SPAWNRECORD_END
};

// unused?
u16 D_801BB214_7E97E4[]={
    0x0249, 0x01E8, 0x01F0, 0x0245, 0x01E8, 0x0210,
    0x0249, 0x01E8, 0x0230, 0x0245, 0x01E8, 0x0250,
    0x0259, 0x01E8, 0x0270, 0x006A, 0x0210, 0x019D,
    0x006A, 0x01D0, 0x019D, 0x001A, 0x0230, 0x019E,
    0x001A, 0x0210, 0x01BE, 0x001A, 0x01D0, 0x01BE,
    0x02CA, 0x0230, 0x01BF, 0x002A, 0x01F0, 0x01C5, 0x0014, 0x01F0,
    0x01DE, 0x0000,
};

// spawn actors in maze in "Trapped"
u16 D_801BB264_7E9834[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0080, 0x1AA0, 0x018C, 0x0006, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0081, 0x1B60, 0x018C, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0082, 0x1C20, 0x018C, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0083, 0x1CE0, 0x018C, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0084, 0x1DA0, 0x018C, 0x0008, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008C, 0x1A60, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008D, 0x1A60, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008E, 0x1A60, 0x018C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0090, 0x1A90, 0x01EC, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0092, 0x1A90, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0093, 0x1DB0, 0x01EC, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0094, 0x1DB0, 0x01EC, 0x0011, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0095, 0x1DB0, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0030, 0x1AC0, 0x01C0, 0x6000, 0x140F, ACTORTYPE_CLANBALL_28,
    0x0000, 0x0032, 0x1B78, 0x0200, 0x6100, 0x1410, ACTORTYPE_CLANBALL_28,
    0x0000, 0x0034, 0x1C48, 0x01C0, 0x6300, 0x1411, ACTORTYPE_CLANBALL_28,
    0x0000, 0x0036, 0x1C78, 0x01C0, 0x6200, 0x1412, ACTORTYPE_CLANBALL_28,
    0x0000, 0x0039, 0x1CF0, 0x01B0, 0x6300, 0x1413, ACTORTYPE_CLANBALL_28,
    0x0000, 0x0040, 0x1AC0, 0x0200, 0x0002, 0x0018, ACTORTYPE_WARPGATE,
    0x0000, 0x0041, 0x1B28, 0x01B0, 0x0002, 0x001B, ACTORTYPE_WARPGATE,
    0x0000, 0x0042, 0x1B78, 0x01B0, 0x0003, 0x0200, ACTORTYPE_WARPGATE,
    0x0000, 0x0043, 0x1D20, 0x01B0, 0x0002, 0x0024, ACTORTYPE_WARPGATE,
    SPAWNRECORD_END
};

u16 D_801BB39C_7E996C[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0097, 0x1DE0, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0098, 0x1DE0, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0099, 0x1DE0, 0x018C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    SPAWNRECORD_END
};

u16 D_801BB3C8_7E9998[] = {
    0x0021, 0x1B50, 0x0195, 0x0021, 0x1B30, 0x0195,
    0x0021, 0x1B10, 0x0195, 0x0071, 0x1C08, 0x0196,
    0x0035, 0x1D88, 0x019E, 0x0035, 0x1CB8, 0x019E,
    0x0031, 0x1AF8, 0x019E, 0x01EE, 0x1D60, 0x01A0,
    0x01FE, 0x1D40, 0x01A0, 0x0041, 0x1B58, 0x01A5,
    0x0071, 0x1C08, 0x01A6, 0x0061, 0x1B40, 0x01AD,
    0x0061, 0x1B10, 0x01AD, 0x0031, 0x1B28, 0x01AE,
    0x0041, 0x1AF8, 0x01B5, 0x0071, 0x1C08, 0x01B6,
    0x0031, 0x1B58, 0x01BE, 0x0035, 0x1CB8, 0x01BE,
    0x0035, 0x1D88, 0x01BE, 0x020E, 0x1D40, 0x01C0,
    0x01DE, 0x1D60, 0x01C0, 0x0021, 0x1B00, 0x01C5,
    0x0021, 0x1B40, 0x01C5, 0x0021, 0x1B20, 0x01C5,
    0x0071, 0x1C08, 0x01C6, 0x0022, 0x1CE0, 0x01D5,
    0x0022, 0x1CC0, 0x01D5, 0x0024, 0x1B10, 0x01D5,
    0x0022, 0x1D60, 0x01D5, 0x0022, 0x1D40, 0x01D5,
    0x0022, 0x1D80, 0x01D5, 0x0024, 0x1D20, 0x01D5,
    0x0022, 0x1D00, 0x01D5, 0x0071, 0x1C08, 0x01D6,
    0x0035, 0x1AF8, 0x01DE, 0x0021, 0x1CC0, 0x01E5,
    0x0042, 0x1B08, 0x01E5, 0x0021, 0x1CF0, 0x01E5,
    0x0071, 0x1C08, 0x01E6, 0x0031, 0x1CD8, 0x01EE,
    0x0035, 0x1B18, 0x01EE, 0x01FE, 0x1BA0, 0x01F0,
    0x01EE, 0x1C70, 0x01F0, 0x01FE, 0x1C50, 0x01F0,
    0x01EE, 0x1B50, 0x01F0, 0x01EE, 0x1D30, 0x01F0,
    0x01FE, 0x1D10, 0x01F0, 0x01EE, 0x1BF0, 0x01F0,
    0x01FE, 0x1B30, 0x01F0, 0x01FE, 0x1BD0, 0x01F0,
    0x01EE, 0x1BC0, 0x01F0, 0x0042, 0x1B08, 0x01F5,
    0x0071, 0x1C08, 0x01F6, 0x0061, 0x1CC0, 0x01FD,
    0x0061, 0x1CF0, 0x01FD, 0x0035, 0x1AF8, 0x01FE,
    0x0042, 0x1B08, 0x0205, 0x0071, 0x1C08, 0x0206,
    0x0035, 0x1B18, 0x020E, 0x0031, 0x1CD8, 0x020E,
    0x01DE, 0x1C70, 0x0210, 0x020E, 0x1C50, 0x0210,
    0x01DE, 0x1BF0, 0x0210, 0x020E, 0x1BD0, 0x0210,
    0x01DE, 0x1BC0, 0x0210, 0x020E, 0x1B30, 0x0210,
    0x01DE, 0x1B50, 0x0210, 0x020E, 0x1BA0, 0x0210,
    0x01DE, 0x1D30, 0x0210, 0x020E, 0x1D10, 0x0210,
    0x0021, 0x1CF0, 0x0215, 0x0021, 0x1CC0, 0x0215,
    0x0024, 0x1B00, 0x0215, 0x0071, 0x1C08, 0x0216,
    0x0000, 0x0000,
};

// spawn actors in start in "Trapped"
u16 D_801BB588_7E9B58[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0070, 0x0D90, 0x021C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0071, 0x0D90, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0075, 0x0DF0, 0x01BC, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0076, 0x0DF0, 0x01BC, 0x000A, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0073, 0x0EB0, 0x018C, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0074, 0x0EB0, 0x018C, 0x000A, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0077, 0x0F70, 0x015C, 0x0018, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0078, 0x0F70, 0x015C, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0081, 0x0D60, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0082, 0x0D60, 0x024C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0083, 0x0D60, 0x01BC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0079, 0x1030, 0x015C, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007A, 0x1030, 0x015C, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007B, 0x10F0, 0x015C, 0x0003, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007C, 0x10F0, 0x015C, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007D, 0x11B0, 0x015C, 0x0004, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007E, 0x11B0, 0x015C, 0x000C, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x007F, 0x1270, 0x015C, 0x0005, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0080, 0x1270, 0x015C, 0x000D, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0046, 0x0F70, 0x01AC, 0x7100, 0x0001, ACTORTYPE_MSHINT,
    0x0000, 0x0040, 0x1114, 0x0168, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_19,
    0x0000, 0x0041, 0x1114, 0x0168, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_20,
    0x0000, 0x0042, 0x1114, 0x0168, 0x0000, 0x0001, ACTORTYPE_OVL3_W5_20,
    0x0000, 0x008F, 0x1270, 0x01CC, 0x0001, 0x0000, ACTORTYPE_WARPGATE,
    SPAWNRECORD_END
};

// spawn turrets in "Trapped"
u16 D_801BB6DC_7E9CAC[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0050, 0x0A68, 0x030C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0051, 0x0A68, 0x033C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0052, 0x0A68, 0x02AC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0053, 0x0A98, 0x030C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0054, 0x0A98, 0x030C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0058, 0x0DC8, 0x030C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0059, 0x0DC8, 0x033C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005A, 0x0DC8, 0x02AC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0055, 0x0D98, 0x030C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0057, 0x0D98, 0x030C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005B, 0x0AF8, 0x02AC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005C, 0x0AF8, 0x02AC, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005D, 0x0BB8, 0x02AC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005E, 0x0BB8, 0x02AC, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005F, 0x0C78, 0x02AC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0060, 0x0C78, 0x02AC, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0061, 0x0D38, 0x02AC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0062, 0x0D38, 0x02AC, 0x0019, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0063, 0x0A98, 0x039C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0064, 0x0A98, 0x039C, 0x0012, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0065, 0x0A98, 0x039C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0066, 0x0D98, 0x039C, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0067, 0x0D98, 0x039C, 0x0012, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0068, 0x0D98, 0x039C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0030, 0x0AB8, 0x02B4, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_25,
    0x0000, 0x0031, 0x0AB8, 0x02B4, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_25,
    0x0000, 0x0032, 0x0B38, 0x02BC, 0x0051, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0033, 0x0B38, 0x02BC, 0x00B1, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0034, 0x0BB8, 0x02BC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0035, 0x0C38, 0x02BC, 0x0051, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0036, 0x0C38, 0x02BC, 0x00B1, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0037, 0x0CB8, 0x02BC, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0038, 0x0D38, 0x02BC, 0x0051, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x0039, 0x0D38, 0x02BC, 0x00B1, 0x0001, ACTORTYPE_OVL3_W5_TURRET,
    0x0000, 0x003A, 0x0D78, 0x02B4, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_25,
    0x0000, 0x003B, 0x0D78, 0x02B4, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_25,
    SPAWNRECORD_END
};

u16 D_801BB8D8_7E9EA8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0050, 0x07A0, 0x030C, 0x001B, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0051, 0x07A0, 0x033C, 0x001B, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0052, 0x07A0, 0x02AC, 0x001B, 0x0000, ACTORTYPE_OVL3_W5_26,
    SPAWNRECORD_END
};

// spawn table for pirate miniboss in "Trapped"
u16 D_801BB904_7E9ED4[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0080, 0x0AA0, 0x018C, 0x0006, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0081, 0x0AA0, 0x018C, 0x000E, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0082, 0x0B60, 0x018C, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0083, 0x0B60, 0x018C, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0084, 0x0C20, 0x018C, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0085, 0x0C20, 0x018C, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0086, 0x0CE0, 0x018C, 0x0008, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0087, 0x0CE0, 0x018C, 0x0010, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008C, 0x0A60, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008D, 0x0A60, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x008E, 0x0A60, 0x018C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0090, 0x0A90, 0x01EC, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0092, 0x0A90, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0093, 0x0CF0, 0x01EC, 0x0012, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0094, 0x0CF0, 0x01EC, 0x0011, 0x0001, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0095, 0x0CF0, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0030, 0x0C20, 0x01B8, 0x3200, 0x0050, ACTORTYPE_OVL2_W5B_PIRATE,
    SPAWNRECORD_END
};

u16 D_801BB9F4_7E9FC4[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0097, 0x0D20, 0x01EC, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0098, 0x0D20, 0x021C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0099, 0x0D20, 0x018C, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26, 
    SPAWNRECORD_END
};

u16 D_801BBA20_7E9FF0[] = {
    0x3000, 0x019C, 0x2F00, 0x310A, 0x02CE, 0x00EE, 0xFFA0, 0xFFEB,
};

u16 D_801BBA30_7EA000[] = {
    0, 0
};

u16 D_801BBA34_7EA004[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0070, 0x2910, 0x0160, 0x0014, 0x0003, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0071, 0x2910, 0x0160, 0x0015, 0x0004, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0072, 0x2910, 0x0160, 0x0014, 0x0005, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0060, 0x2970, 0x0190, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0061, 0x2970, 0x0190, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0062, 0x2A30, 0x0190, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0063, 0x2A30, 0x0190, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0050, 0x2AF0, 0x0190, 0x0001, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0051, 0x2AF0, 0x0190, 0x000A, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0073, 0x2BA0, 0x01C0, 0x0013, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0075, 0x2BA0, 0x01C0, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0052, 0x2BB0, 0x0160, 0x0006, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0053, 0x2BB0, 0x0160, 0x000E, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0054, 0x2C70, 0x0160, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0055, 0x2C70, 0x0160, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0056, 0x2D30, 0x0160, 0x0007, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0057, 0x2D30, 0x0160, 0x000F, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0058, 0x2DF0, 0x0160, 0x0008, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0059, 0x2DF0, 0x0160, 0x0010, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0076, 0x2E00, 0x01C0, 0x0013, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0078, 0x2E00, 0x01C0, 0x0012, 0x0002, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005A, 0x2EB0, 0x0190, 0x0002, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x005B, 0x2EB0, 0x0190, 0x000B, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0064, 0x2F70, 0x0190, 0x0000, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0065, 0x2F70, 0x0190, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0066, 0x3030, 0x0190, 0x0003, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0067, 0x3030, 0x0190, 0x0009, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0068, 0x30F0, 0x0190, 0x0004, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0069, 0x30F0, 0x0190, 0x000C, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x006A, 0x31B0, 0x0190, 0x0005, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x006B, 0x31B0, 0x0190, 0x000D, 0x0000, ACTORTYPE_OVL3_W5_26,
    0x0000, 0x0030, 0x3000, 0x01A0, 0x0050, 0x0011, 0x0A00,
    SPAWNRECORD_END, 0,
    0x0000, 0x008F, 0x3000, 0x01D0, 0x0001, 0x0000, ACTORTYPE_WARPGATE,
    SPAWNRECORD_END
};

u16 D_801BBC08_7EA1D8[] = {
    0x0200, 0x01E0, 0x00F0, 0x0310, 0x02F0, 0x0170, 0x0000, 0xFFBE,
};

u16 D_801BBC18_7EA1E8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x2A60, 0x01E0, 0x0000, 0x0000, 0x1E01,
    SPAWNRECORD_END
};

u16 D_801BBC28_7EA1F8[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0032, 0x0000, 0x0000, 0x0000, 0x0000, 0x1E01,
    0x0000, 0x0033, 0x0000, 0x0000, 0x0000, 0x0000, 0x1E01,
    0x0000, 0x0034, 0x0000, 0x0000, 0x0000, 0x0000, 0x1E01,
    SPAWNRECORD_END
};

u16 D_801BBC54_7EA224[] = {
    0x0400, 0x0198, 0xFF70, 0x1700, 0x0208, 0x0128, 0xFFE0, 0xFFEB,
};

u16 D_801BBC64_7EA234[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0090, 0x0390, 0x01A6, 0xFE04, 0x0005, ACTORTYPE_13,
    0x0000, 0x0091, 0x0390, 0x01A6, 0x0204, 0x0005, ACTORTYPE_13,
    0x0000, 0x0092, 0x0390, 0x01A6, 0xFE04, 0x0009, ACTORTYPE_13,
    0x0000, 0x0093, 0x0390, 0x01A6, 0x0204, 0x0009, ACTORTYPE_13,
    SPAWNRECORD_END
};

u16 D_801BBCA0_7EA270[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0088, 0x0400, 0x0184, 0x0000, 0x0000, 0x1502,
    SPAWNRECORD_END,
};

u16 D_801BBCB0_7EA280[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0400, 0x0198, 0x0000, 0x0000, ACTORTYPE_GRAPHICONLY,
    SPAWNRECORD_END
};

u16 D_801BBCC0_7EA290[] = {
//  flags   index   posX    posY    0x110   0xD8    type
    0x0000, 0x0030, 0x0000, 0x0000, 0x0001, 0x0004, ACTORTYPE_LEVELCLEAR,
    SPAWNRECORD_END
};


s32 func_801B9900_7E7ED0(u16 arg0, s16 arg1, s16 arg2) {
    if (Math_AbsS32(arg1 - gPlayerPosX.whole) < 0x12) {
        if (Math_AbsS32(arg2 - gPlayerPosY.whole) < 0x80) {
            if (gPlayerActor.health >= 0) {
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                gStageState = arg0;
                func_80028380();
                return TRUE;
            }
        }
    }

    return FALSE;
}

void func_801B99A4_7E7F74(u16* actor_indices, u16 arg1) {
    u16 actor_index = actor_indices[0];

    if (arg1 == gActors[actor_index].colorA) {
        return;
    }

    arg1 = gActors[actor_index].colorA - 1;

    if (actor_index != 0) {
        do {
            if (arg1) {
                gActors[actor_index].colorA = arg1;
            }
            else {
                gActors[actor_index].flags = 0;
            }

            actor_indices++;
            actor_index = actor_indices[0];
        } while (actor_index != 0);
    }
}

void func_801B9A3C_7E800C(u16 actor_index) {
    gActors[actor_index + 0].state = 1;
    gActors[actor_index + 0].graphicFlags = 0x914;
    gActors[actor_index + 0].flags = 3;
    gActors[actor_index + 0].posZ.whole = -0x45;
    gActors[actor_index + 0].unk_188 = -0x30;
    gActors[actor_index + 0].graphicIndex = 0x830;
    gActors[actor_index + 0].rotateY = 270.0f;
    Actor_SetColorRgb(actor_index + 0, 0x3F);

    gActors[actor_index + 1].state = 1;
    gActors[actor_index + 1].graphicFlags = 0x912;
    gActors[actor_index + 1].flags = 3;
    gActors[actor_index + 1].posZ.whole = -0x71;
    gActors[actor_index + 1].unk_188 = -1;
    gActors[actor_index + 1].graphicIndex = 0x838;
    gActors[actor_index + 1].rotateX = 90.0f;
    Actor_SetColorRgb(actor_index + 1, 0x18);

    gActors[actor_index + 2].state = 1;
    gActors[actor_index + 2].graphicFlags = 0x912;
    gActors[actor_index + 2].flags = 3;
    gActors[actor_index + 2].posZ.whole = -0x71;
    gActors[actor_index + 2].unk_188 = 0;
    gActors[actor_index + 2].graphicIndex = 0x838;
    gActors[actor_index + 2].rotateX = 90.0f;
}

void func_801B9B64_7E8134(u16 actor_index, s16 arg1, s16 arg2) {
    gStageState++;
    Sound_PlaySfx(0x93);
    gActors[actor_index].flags = 0;
    func_80011F44(arg1, arg2, 2, 8);
}

void func_801B9BE4_7E81B4(void) {
    D_800D2928 = 0;
}

void func_801B9BF0_7E81C0(s16 arg0, s16 arg1, void* arg2) {
    switch (D_800D2928) {
        case 0:
            break;

        case 1:
            D_800D2924 = arg1;
            D_800D2928++;
            break;

        case 2:
            if (arg0 < gPlayerPosX.whole) {
                D_800D2920 = arg0;
                D_800D2928++;
            }
            break;

        case 3:
            if ((arg0 - 0x100) < gScreenPosCurrentX.whole) {
                Actor_ClearRange(0x30, 0x90);
                Actor_LoadSpawnTable(arg2);
                gStageState++;
            }
            break;
    }
}

void func_801B9CD4_7E82A4(s16 arg0) {
    if (gScreenPosCurrentX.whole < arg0) {
        D_800D2920 = arg0;
    }
}

// Stage state machine for "Trapped"
void func_801B9D00_7E82D0(void) {
    switch (gStageState) {
        case 0:
            Palette_AdjustRgb5551Array((u16*)0x802E5ED8, (u16*)0x802E5D48, 0xC3, 1, 1, -1);
            Palette_AdjustRgb5551Array(PALETTE_803DA600, PALETTE_80380400, 0xFF, 1, 0, 1);
            gStageState = 0x100;
            D_800BE710 = TRUE;
            break;

        case 0x100:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -4, -1);
            func_80045FA4(D_801BAFD4_7E95A4, NULL);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB088_7E9658);
            gLookatEyeY = 44.0f;
            gLookatAtY = 44.0f;
            gLookatEyeZ = 432.0f;
            D_800BE544 = 0x8000;
            break;

        case 0x101:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
                D_800BE544 = 0;
            }
            break;

        case 0x102:
            func_801B99A4_7E7F74(D_801BAFE4_7E95B4, 0xE0);
            if (gActors[0x30].flags == 0) {
                SpawnAreaClear(0x8000);
                func_801B9B64_7E8134(0xA1, 0x718, 0x238);
                Actor_LoadSpawnTable(D_801BB1E8_7E97B8);
                func_801B9A3C_7E800C(0xA7);
            }
            break;

        case 0x103:
            break;

        case 0x104:
            func_801B9900_7E7ED0(0x200, 0x73C, 0x1CE);
            break;

        case 0x200:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -4, 0);
            func_80045FA4(D_801BAFF8_7E95C8, D_801BB3C8_7E9998);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB264_7E9834);
            func_801B9A3C_7E800C(0x8C);
            Actor_LoadSpawnTable(D_801BB39C_7E996C);
            func_801B9A3C_7E800C(0x97);
            func_800282F0(gPlayerActor.posX.whole, gPlayerActor.posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x201:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
            }
            break;

        case 0x202:
            gActors[0x94].flags = 0;
            func_80011F44(0xDB8, 0x208, 2, 8);
            gStageState++;
            break;

        case 0x203:
            gStageState++;
            break;

        case 0x204:
            D_800BE710 = FALSE;
            func_801B9900_7E7ED0(0x400, 0x1DC3, 0x19E);
            break;

        case 0x600:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -4, 0);
            func_80045FA4(D_801BB06C_7E963C, NULL);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB904_7E9ED4);
            func_801B9A3C_7E800C(0x8C);
            func_800282F0(gPlayerActor.posX.whole, gPlayerActor.posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x601:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
            }
            break;

        case 0x602:
            func_801B99A4_7E7F74(D_801BB07C_7E964C, 0);
            if (gActors[0x30].flags == 0) {
                SpawnAreaClear(0x8000);
                func_801B9B64_7E8134(0x94, 0xCF8, 0x208);
                Actor_LoadSpawnTable(D_801BB9F4_7E9FC4);
                func_801B9A3C_7E800C(0x97);
                D_800BE544 = 0;
            }
            break;

        case 0x603:
            break;

        case 0x604:
            func_801B9900_7E7ED0(0x300, 0xD03, 0x19E);
            break;

        case 0x300:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -3, -4);
            func_80045FA4(D_801BB014_7E95E4, NULL);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB588_7E9B58);
            func_801B9A3C_7E800C(0x81);
            func_800282F0(gPlayerActor.posX.whole, gPlayerActor.posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 44.0f;
            gLookatAtY = 44.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x301:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
            }
            break;

        case 0x302:
            func_801B99A4_7E7F74(D_801BB024_7E95F4, 0xE0);
            break;

        case 0x400:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -8, 0);
            func_80045FA4(D_801BB034_7E9604, NULL);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB6DC_7E9CAC);
            func_801B9A3C_7E800C(0x50);
            func_801B9A3C_7E800C(0x58);
            func_800282F0(gPlayerActor.posX.whole, gPlayerActor.posY.whole);
            D_800BE5F4.unk_00_s32 = 8;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x401:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
            }
            break;

        case 0x402:
            func_801B99A4_7E7F74(D_801BB044_7E9614, 0x80);
            func_801B9900_7E7ED0(0x600, 0xDA8, 0x2BE);
            break;

        case 0x500:
            gStageState++;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -8, -8, 0);
            func_80045FA4(D_801BB050_7E9620, NULL);
            D_800D28FC |= 0x2000;
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BB8D8_7E9EA8);
            gDrawBackground = FALSE;
            func_800282F0(gPlayerActor.posX.whole, gPlayerActor.posY.whole);
            D_800BE5F4.unk_00_s32 = 0xA;
            gLookatEyeY = 0.0f;
            gLookatAtY = 0.0f;
            gLookatEyeZ = 448.0f;
            break;

        case 0x501:
            if (func_80046D5C() != 0) {
                gStageState++;
                D_800D28FC |= 8;
            }
            break;

        case 0x502:
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA634_7E8C04(void) {
    switch (gStageState) {
        case 0:
            gCannotPause = TRUE;
            Palette_AdjustRgb5551Array((u16*)0x802F8068, (u16*)0x802F7E68, 0xFF, -2, -3, -4);
            func_80045FA4(D_801BBA20_7E9FF0, D_801BBA30_7EA000);
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BBA34_7EA004);
            D_800BE5F4.unk_00_s32 = 7;
            if (!gSkipStageIntro) {
                gStageState = 1;
            }
            else {
                gStageState = 0x1000;
            }
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                gStageState = 2;
            }
            Cutscene_CheckSkipInput();
            break;

        case 2:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                Sound_PlaySfx(0xAF);
                gStageState = 3;
            }
            break;

        case 3:
            Cutscene_CheckSkipInput();
            break;

        case 4:
            func_8005DF5C(1);
            func_8005DF5C(2);
            func_8005DF5C(3);
            func_8005DF5C(4);
            func_8005DF5C(5);
            Cutscene_CheckSkipInput();
            gStageState = 5;
            break;

        case 5:
            Cutscene_CheckSkipInput();
            if (func_8005DEFC() == 0) {
                gStageState = 0xA;
            }
            break;

        case 0xA:
            D_800BE5F4.unk_00_s32 = 5;
            gStageState = 0x14;
            D_800D28FC |= 8;

        case 0x14:
            gCannotPause = FALSE;
            break;

        case 0x15:
            if (gAudioFadeMode != 0x81) {
                D_800BE5F4.unk_00_s32 = 0x20;
                Sound_PlayMusic(BGM_GET);
                gStageState = 0x16;
            }
            break;

        case 0x17:
            func_8005DF5C(6);
            func_8005DF5C(7);
            gStageState = 0x18;
            break;

        case 0x18:
            if (func_8005DEFC() == 0) {
                gStageState = 0x19;
            }
            break;

        case 0x19:
            if (!(D_80137458 & 2)) {
                D_800D28FC |= 1;
                func_80045D84(1, 0x5B);
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BBA20_7E9FF0, D_801BBA30_7EA000);
            Actor_LoadSpawnTable(D_801BAFD0_7E95A0);
            Actor_LoadSpawnTable(D_801BBA34_7EA004);
            D_800BE5F4.unk_00_s32 = 7;
            gStageState = 0x1001;
            break;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gCannotPause = TRUE;
                func_800472D4();
            }
            break;

        case 0x1002:
            func_8004735C(0x14, 0);
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BA984_7E8F54(void) {
    switch (gStageState) {
        case 0:
            if (gSkipStageIntro) {
                gStageState = 0x1000;
                break;
            }

            gStageState++;
            func_80046148(D_801BBC08_7EA1D8, NULL);
            gDrawMidground = FALSE;
            gDrawEnvLayer = FALSE;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            Actor_LoadSpawnTable(D_801BBC28_7EA1F8);
            gActors[0x30].state = 0x9000;
            gActors[0x32].state = 0x9100;
            gActors[0x33].state = 0x9200;
            gActors[0x34].state = 0x9300;
            D_800BE544 = 0x8000;
            Sound_PlayMusic(BGM_DETERMINATION);
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            gCannotPause = TRUE;
            break;

        case 2:
            gCannotPause = TRUE;
            if (gActors[0x30].state < 0x900D) {
                if (Cutscene_CheckSkipInput() != 0) {
                    Sound_StartFade(0x81, 0x1E);
                }
            }
            break;

        case 0x10:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 0x11:
            gStageState++;
            D_800BE544 = 0;
            D_800D28FC |= 8;
            gLifebar.posY.whole = -0x60;
            gLifebarHead.posY.whole = -0x5D;
            D_800BE5F4.unk_00_s32 = 5;
            gCannotPause = FALSE;
            // FAKEMATCH ???
            if (0) {
            }
            break;

        case 0x13:
            gCannotPause = TRUE;
            if (gActors[0x30].flags == 0) {
                D_800D28E4 = 0x64;
            }
            break;

        case 0x1000:
            func_80045FA4(D_801BBC08_7EA1D8, NULL);
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            gStageState = 0x10;
            D_800BE5F4.unk_00_s32 = 7;
            Sound_PlayMusic(BGM_POSITION);
            break;

        case 0x1001:
            func_80045FA4(D_801BBC08_7EA1D8, NULL);
            gDrawMidground = 0;
            gDrawEnvLayer = 0;
            gDrawBackground = FALSE;
            Actor_LoadSpawnTable(D_801BBC18_7EA1E8);
            gStageState = 0x11;
            D_800BE5F4.unk_00_s32 = 7;
            gLookatEyeX = 0.0f;
            gLookatAtX = 0.0f;
            gLookatEyeY = 0.0f;
            gLookatAtY = 4.0f;
            gLookatEyeZ = 448.0f;
            break;
    }

    Camera_UpdateViewBounds();
}

void func_801BACBC_7E928C(void) {
    switch (gStageState) {
        case 0:
            if (gSkipStageIntro) {
                gStageState = 0x1000;
                break;
            }

            gStageState++;
            func_80046148(D_801BBC54_7EA224, NULL);
            Actor_LoadSpawnTable(D_801BBC64_7EA234);
            Actor_LoadSpawnTable(D_801BBCA0_7EA270);
            D_800BE544 = 0x8000;
            break;

        case 1:
            if (func_80046D5C() != 0) {
                gStageState++;
                gCannotPause = TRUE;
            }
            break;

        case 2:
            Cutscene_CheckSkipInput();
            return;

        case 3:
            gStageState++;
            D_800D28FC |= 8;
            gCannotPause = FALSE;

        case 4:
            if (D_800D2934 != 0) {
                D_800D2934 = 0;
                Actor_LoadSpawnTable(D_801BBC64_7EA234);
                return;
            }
            break;

        case 5:
            gStageState++;
            D_800BE544 = 0x8000;
            D_800D28FC |= 4;
            D_800D28FC &= ~8;
            break;

        case 7:
            gStageState++;
            Actor_LoadSpawnTable(D_801BBCB0_7EA280);
            gActors[0x30].graphicFlags = 9;
            gActors[0x30].flags = 0x4000B;
            gActors[0x30].graphicIndex = 0x100A;
            gActors[0x30].colorA = 0x80;
            gActors[0x30].hitboxBY0 = -0x40;
            gActors[0x30].hitboxBY1 = gActors[0x30].hitboxBY0 - 0x10;
            gActors[0x30].hitboxBX0 = -0x100;
            gActors[0x30].hitboxBX1 = 0x100;
            gActors[0x30].posX.whole = 0;
            gActors[0x30].posY.whole = 0;
            gActors[0x30].posZ.whole = -0x300;
            gActors[0x30].scaleX = 2.0f;
            gActors[0x30].scaleY = 2.0f;
            gActors[0x30].rotateZ = 90.0f;
            break;

        case 9:
            gStageState = 0xC000;
            break;

        case 0x1000:
            gStageState++;
            func_80045FA4(D_801BBC54_7EA224, NULL);
            Actor_LoadSpawnTable(D_801BBC64_7EA234);
            Actor_LoadSpawnTable(D_801BBCA0_7EA270);
            gActors[0x88].state = 0x10;
            D_800BE5F4.unk_00_s32 = 4;
            D_800BE544 = 0x8000;

        case 0x1001:
            if (func_80046D5C() != 0) {
                gStageState = 3;
            }
            break;

        case 0xC000:
            func_80046188(D_801BBC54_7EA224, D_801BBCC0_7EA290);

        case 0xC001:
            if (func_80046D5C() != 0) {
                gStageState++;
            }
            break;

        case 0xC002:
            return;
    }
}
