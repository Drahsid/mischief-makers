#define Actor_Initialize_RET void
#include "common.h"
#include "actor.h"
#include "boot.h"
#include "data_symbols.h"
#include "input.h"
#include "dma.h"
#include "linker.h"
#include "rle.h"
#include "stage.h"
#include "1F1E0.h"

#define DEBUG_STAGE_SELECT_ROW_COUNT 22
#define DEBUG_STAGE_SELECT_COLUMN_ROWS 11
#define DEBUG_STAGE_SELECT_OPTION_TEXT_LENGTH 24
#define DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX 7
#define DEBUG_STAGE_SELECT_REPEAT_UP_ACTOR_INDEX 8
#define DEBUG_STAGE_SELECT_REPEAT_DOWN_ACTOR_INDEX 9
#define DEBUG_STAGE_SELECT_REPEAT_LEFT_ACTOR_INDEX 10
#define DEBUG_STAGE_SELECT_REPEAT_RIGHT_ACTOR_INDEX 11

// .data
extern u16 D_800C4F28[]; // list of stage times
extern u8 D_800C5008;

extern u16 D_80171AD0[];
extern u16 D_80171AD4[];
extern u64 D_80171AD8[];
extern u64 D_80171B10; // bitfield of yellow gem collection
extern u8 D_80171B18; // related to gCurrentStage
extern u16 D_80178152;
extern u16 D_80178154;
extern u16 D_80178156;
extern u16 D_80178158;
extern u16 D_8017815A;
extern u16 D_8017815C;
extern u16 D_8017815E;
extern u16 D_80178160;
extern u16 D_80178164;
extern u16 D_80178166;
extern u32 D_80178168;
extern u8 D_801781A1;

extern u8 D_801376A9;
extern u8 D_801376AD;
extern u8 D_801376B1;
extern u8 D_801376B5;
extern u8 D_801376B9;
extern u8 D_801376BD;

s16 func_8001A758(u16 time, u16 stage);

void func_80005770(void);
void func_8008379C(s16 arg0, s16 arg1, s16 arg2, s16 arg3);
void func_80083810(s16 arg0, s16 arg1, u16* arg2, s16 arg3);
void func_8008391C(char* text, s32 x, s32 y, s32 red, s32 green, s32 blue, s32 alpha, f32 scale_x, f32 scale_y);
void func_8001A254(void);

// Stage transition focus actor indices?
u16 D_800C81E0[] = {
    0x0000, 0x0000,
};

const char* gDebugStageSelectRowPrefixes[] = {
    "opn", "1-d", "1-0", "1-1", "1-2", "2-d", "2-0", "2-1",
    "2-2", "3-d", "3-0", "3-1", "3-2", "4-d", "4-0", "4-1",
    "4-2", "5-d", "5-0", "end", "e-0", "---",
};

u16 gStageRowCounts[] = {
    0x0001, 0x0001, 0x000A, 0x000A, 0x0001, 0x0001, 0x0009, 0x0002, 0x0001, 0x0001, 0x0005,
    0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0001, 0x0001, 0x0002, 0x0002, 0x0003, 0x0000,
};

u16 gStageGroupOptionOffsets[] = {
    0x0002, 0x000C, 0x0018, 0x0025,
};

u16 gStageGroupOptionOffsetsTail[] = {
    0x0031, 0x003A, 0x0000, 0x0000,
};

const char* gDebugStageSelectOptionSuffixes[] = {
    "0", "0", "0", "1", "2", "3", "4", "5",
    "6", "7", "8", "9", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", "0", "0",
    "0", "1", "2", "3", "4", "5", "6", "7",
    "8", "0", "1", "0", "0", "0", "1", "2",
    "3", "4", "0", "1", "2", "3", "4", "0",
    "0", "0", "1", "2", "0", "1", "0", "0",
    "0", "1", "0", "1", "0", "1", "2", "0",
};

// list of scene indecies in order of game progress.
u16 gStageScenes[] = {
    0x000B, 0x000E, 0x0000, 0x0044, 0x0035, 0x0037, 0x0034, 0x0043, 0x0038, 0x003A, 0x0036,
    0x0039, 0x0001, 0x0045, 0x0025, 0x003C, 0x0026, 0x003B, 0x003D, 0x0046, 0x003E, 0x000D,
    0x0005, 0x001C, 0x0048, 0x000C, 0x0023, 0x0047, 0x0020, 0x001F, 0x0024, 0x0009, 0x0021,
    0x0012, 0x001D, 0x0013, 0x0040, 0x002A, 0x0027, 0x0028, 0x0017, 0x0029, 0x000A, 0x0030,
    0x0018, 0x002E, 0x002F, 0x0019, 0x0041, 0x004D, 0x0014, 0x004E, 0x0055, 0x0016, 0x001A,
    0x0042, 0x004F, 0x001B, 0x0006, 0x0006, 0x0003, 0x0002, 0x0004, 0x0000,
};

u16 gDebugStageSelectStageIds[] = {
    0x0059, 0x005A, 0x0000, 0x0009, 0x0002, 0x0004, 0x0001, 0x0008, 0x0005, 0x0007, 0x0003,
    0x0006, 0x000A, 0x0011, 0x000B, 0x000E, 0x000C, 0x000D, 0x000F, 0x0012, 0x0010, 0x0013,
    0x0014, 0x005B, 0x001E, 0x0015, 0x0019, 0x001D, 0x0016, 0x001A, 0x001B, 0x001C, 0x0017,
    0x001F, 0x0018, 0x0033, 0x005C, 0x0038, 0x0035, 0x0036, 0x0034, 0x0037, 0x0042, 0x0041,
    0x003E, 0x003F, 0x0040, 0x0048, 0x005D, 0x004A, 0x0049, 0x004B, 0x0054, 0x0053, 0x0057,
    0x005E, 0x0056, 0x0058, 0x005F, 0x0060, 0x0066, 0x0067, 0x0066, 0x0000,
};

// times to beat per stage to get S-rank.
u16 gStageTimesToBeat[] = {
    0x0000, 0x0000, 0x0438, 0x03FC, 0x05DC, 0x01E0, 0x07BC, 0x0870, 0x0528, 0x0A14, 0x06CC,
    0x02D0, 0x0870, 0x0618, 0x0294, 0x08E8, 0x02D0, 0x0654, 0x0690, 0x0528, 0x05DC, 0x05DC,
    0x1A04, 0x0000, 0x0780, 0x0708, 0x0BB8, 0x0528, 0x10E0, 0x0528, 0x0E10, 0x0438, 0x08AC,
    0x2490, 0x0294, 0x0E88, 0x0000, 0x0654, 0x0690, 0x4B00, 0x0A14, 0x0708, 0x03C0, 0x1338,
    0x0924, 0x08AC, 0x07F8, 0x0D98, 0x0000, 0x14A0, 0x0690, 0x0F21, 0x03FC, 0x12C0, 0x0CE4,
    0x0000, 0x1194, 0x1428,
};

char D_800C84EC[] = "1-1";
char D_800C84F0[] = "1-2";
char D_800C84F4[] = "1-3";
char D_800C84F8[] = "1-4";
char D_800C84FC[] = "1-5";
char D_800C8500[] = "1-6";
char D_800C8504[] = "1-7";
char D_800C8508[] = "1-8";
char D_800C850C[] = "1-9";
char D_800C8510[] = "1-10";

char D_800C8518[] = "2-1";
char D_800C851C[] = "2-2";
char D_800C8520[] = "2-3";
char D_800C8524[] = "2-4";
char D_800C8528[] = "2-5";
char D_800C852C[] = "2-6";
char D_800C8530[] = "2-7";
char D_800C8534[] = "2-8";
char D_800C8538[] = "2-9";
char D_800C853C[] = "2-10";
char D_800C8544[] = "2-11";

char D_800C854C[] = "3-1";
char D_800C8550[] = "3-2";
char D_800C8554[] = "3-3";
char D_800C8558[] = "3-4";
char D_800C855C[] = "3-5";
char D_800C8560[] = "3-6";
char D_800C8564[] = "3-7";
char D_800C8568[] = "3-8";
char D_800C856C[] = "3-9";
char D_800C8570[] = "3-10";
char D_800C8578[] = "3-11";
char D_800C8580[] = "3-12";

char D_800C8588[] = "4-1";
char D_800C858C[] = "4-2";
char D_800C8590[] = "4-3";
char D_800C8594[] = "4-4";
char D_800C8598[] = "4-5";
char D_800C859C[] = "4-6";
char D_800C85A0[] = "4-7";
char D_800C85A4[] = "4-8";
char D_800C85A8[] = "4-9";
char D_800C85AC[] = "4-10";
char D_800C85B4[] = "4-11";

char D_800C85BC[] = "5-1";
char D_800C85C0[] = "5-2";
char D_800C85C4[] = "5-3";
char D_800C85C8[] = "5-4";
char D_800C85CC[] = "5-5";
char D_800C85D0[] = "5-6";
char D_800C85D4[] = "5-7";
char D_800C85D8[] = "5-8";
char D_800C85DC[] = "5-9";
char D_800C85E0[] = "5-10";

u16 D_800C85E8[] = {
    0x0147, 0x0129, 0x011E, 0x012B, 0x0122, 0x0131, 0x0000, 0x013A,
    0x0129, 0x011E, 0x012B, 0x0120, 0x0122, 0x012F, 0x8FFF, 0x0000
};

u16 D_800C8608[] = {
    0x0144, 0x0126, 0x0124, 0x0122, 0x012B, 0x00D1, 0x000, 0x0014A,
    0x0125, 0x012F, 0x0126, 0x012B, 0x0122, 0x8FFF
};

u16 D_800C8624[] = {
    0x0144, 0x0131, 0x00BE, 0x0000, 0x014A, 0x012B, 0x012C, 0x0134,
    0x8FFF, 0x0000
};

u16 D_800C8638[] = {
    0x0138, 0x0130, 0x0131, 0x0122, 0x012F, 0x00D1, 0x0000, 0x0143,
    0x011E, 0x0126, 0x012F, 0x8FFF
};

u16 D_800C8650[] = {
    0x0140, 0x012A, 0x012D, 0x0122, 0x012F, 0x0126, 0x011E, 0x0129,
    0x0000, 0x013F, 0x0148, 0x8FFF
};

u16 D_800C8668[] = {
    0x0144, 0x0122, 0x0122, 0x0131, 0x0000, 0x0144, 0x011E, 0x012F,
    0x0126, 0x012B, 0x011E, 0x00B2, 0x8FFF, 0x0000
};

u16 D_800C8684[] = {
    0x0144, 0x0122, 0x0122, 0x0131, 0x0000, 0x013A, 0x011E, 0x0129,
    0x0126, 0x012B, 0x011E, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C86A0[] = {
    0x013A, 0x0129, 0x011E, 0x012B, 0x011F, 0x011E, 0x0129, 0x0129,
    0x0000, 0x0143, 0x011E, 0x012B, 0x0121, 0x8FFF,
};

u16 D_800C86BC[] = {
    0x014A, 0x012D, 0x0126, 0x0128, 0x0122, 0x0000, 0x0143, 0x011E,
    0x012B, 0x0121, 0x8FFF, 0x0000,
};

u16 D_800C86D4[] = {
    0x00A4, 0x0000, 0x013A, 0x0129, 0x011E, 0x012B, 0x0120, 0x0122,
    0x012F, 0x0000, 0x0128, 0x0126, 0x0121, 0x0130, 0x8FFF, 0x0000,
};

u16 D_800C86F4[] = {
    0x0139, 0x0129, 0x012C, 0x0120, 0x0128, 0x012A, 0x011E, 0x012B,
    0x0000, 0x0149, 0x0126, 0x0130, 0x0122, 0x0130, 0x8FFF, 0x0000,
};

u16 D_800C8714[] = {
    0x014E, 0x012C, 0x012F, 0x012A, 0x0126, 0x012B, 0x00BD, 0x0000,
    0x014C, 0x012D, 0x00B2, 0x8FFF,
};

u16 D_800C872C[] = {
    0x013A, 0x012F, 0x0126, 0x0130, 0x0126, 0x0130, 0x00BB, 0x0000,
    0x0145, 0x0122, 0x012D, 0x0131, 0x012C, 0x012B, 0x8FFF, 0x0000,
};

u16 D_800C874C[] = {
    0x014E, 0x0122, 0x0130, 0x0131, 0x0122, 0x012F, 0x012B, 0x0000,
    0x014E, 0x012C, 0x012F, 0x0129, 0x0121, 0x8FFF,
};

u16 D_800C8768[] = {
    0x014D, 0x012C, 0x0129, 0x0120, 0x011E, 0x012B, 0x012C, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C877C[] = {
    0x014A, 0x0122, 0x011E, 0x0000, 0x012C, 0x0123, 0x0000, 0x0143,
    0x011E, 0x0133, 0x011E, 0x8FFF,
};

u16 D_800C8794[] = {
    0x014D, 0x0122, 0x012F, 0x0131, 0x0126, 0x0124, 0x012C, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C87A8[] = {
    0x014A, 0x0126, 0x012B, 0x0128, 0x0000, 0x012C, 0x012F, 0x0000,
    0x013D, 0x0129, 0x012C, 0x011E, 0x0131, 0x00B1, 0x8FFF, 0x0000,
};

u16 D_800C87C8[] = {
    0x013F, 0x012C, 0x0131, 0x0000, 0x0149, 0x0132, 0x0130, 0x0125, 0x8FFF, 0x0000,
};

u16 D_800C87DC[] = {
    0x014A, 0x0122, 0x011E, 0x012F, 0x0126, 0x012B, 0x00BD, 0x0000,
    0x014A, 0x0134, 0x0126, 0x012B, 0x0124, 0x00B1, 0x8FFF, 0x0000,
};

u16 D_800C87FC[] = {
    0x013D, 0x0129, 0x011E, 0x012A, 0x011F, 0x00D2, 0x00D2, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C8810[] = {
    0x014B, 0x0126, 0x0124, 0x0125, 0x0131, 0x012F, 0x012C, 0x012D,
    0x0122, 0x0000, 0x0149, 0x0126, 0x0121, 0x0122, 0x8FFF, 0x0000,
};

u16 D_800C8830[] = {
    0x013D, 0x012F, 0x0122, 0x0122, 0x0123, 0x011E, 0x0129, 0x0129, 0x00B2, 0x8FFF,
};

u16 D_800C8844[] = {
    0x0144, 0x011E, 0x0124, 0x012A, 0x011E, 0x0000, 0x0149, 0x011E,
    0x0123, 0x0131, 0x0130, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C8860[] = {
    0x014A, 0x0122, 0x011E, 0x0130, 0x0126, 0x0120, 0x0128, 0x0000,
    0x013A, 0x0129, 0x0126, 0x012A, 0x011F, 0x8FFF,
};

u16 D_800C887C[] = {
    0x0144, 0x0126, 0x0124, 0x0122, 0x012B, 0x0000, 0x0139, 0x012F,
    0x011E, 0x0134, 0x0129, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C8898[] = {
    0x013A, 0x0129, 0x011E, 0x012B, 0x012D, 0x012C, 0x0131, 0x0000,
    0x014A, 0x0125, 0x011E, 0x0128, 0x0122, 0x8FFF,
};

u16 D_800C88B4[] = {
    0x013A, 0x0129, 0x011E, 0x012B, 0x0120, 0x0122, 0x0000, 0x014E,
    0x011E, 0x012F, 0x8FFF, 0x0000,
};

u16 D_800C88CC[] = {
    0x0144, 0x0126, 0x0130, 0x0130, 0x0126, 0x0129, 0x0122, 0x0000,
    0x014A, 0x0132, 0x012F, 0x0123, 0x00B2, 0x8FFF,
};

u16 D_800C88E8[] = {
    0x013A, 0x0129, 0x011E, 0x012B, 0x011F, 0x011E, 0x0129, 0x0129,
    0x0000, 0x0143, 0x0126, 0x0123, 0x0131, 0x00B1, 0x8FFF, 0x0000,
};

u16 D_800C8908[] = {
    0x013E, 0x012C, 0x0000, 0x0144, 0x011E, 0x012F, 0x0137, 0x0122,
    0x012B, 0x0000, 0x00A7, 0x00A5, 0x8FFF, 0x0000,
};

u16 D_800C8924[] = {
    0x013A, 0x0125, 0x0126, 0x0129, 0x0129, 0x0136, 0x0000, 0x013B,
    0x012C, 0x0124, 0x00B2, 0x8FFF,
};

u16 D_800C893C[] = {
    0x014A, 0x012B, 0x012C, 0x0134, 0x0130, 0x0131, 0x012C, 0x012F,
    0x012A, 0x0000, 0x0144, 0x011E, 0x0137, 0x0122, 0x8FFF, 0x0000,
};

u16 D_800C895C[] = {
    0x0143, 0x014C, 0x0145, 0x0138, 0x0149, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C896C[] = {
    0x014B, 0x0125, 0x0122, 0x0000, 0x013B, 0x011E, 0x0136, 0x0000,
    0x0139, 0x0122, 0x0123, 0x012C, 0x012F, 0x0122, 0x8FFF, 0x0000,
};

u16 D_800C898C[] = {
    0x014B, 0x0125, 0x0122, 0x0000, 0x013B, 0x011E, 0x0136, 0x0000,
    0x0146, 0x0123, 0x8FFF, 0x0000,
};

u16 D_800C89A4[] = {
    0x013A, 0x011E, 0x0131, 0x00C0, 0x011E, 0x0130, 0x0131, 0x012F,
    0x012C, 0x012D, 0x0125, 0x0122, 0x00B2, 0x8FFF,
};

u16 D_800C89C0[] = {
    0x013A, 0x013C, 0x0149, 0x0139, 0x013C, 0x0149, 0x014C, 0x014A,
    0x0000, 0x00CE, 0x8FFF, 0x0000,
};

u16 D_800C89D8[] = {
    0x0149, 0x012C, 0x0129, 0x0129, 0x0126, 0x012B, 0x0124, 0x0000,
    0x0149, 0x012C, 0x0120, 0x0128, 0x00B2, 0x8FFF,
};

u16 D_800C89F4[] = {
    0x014B, 0x012C, 0x011E, 0x0121, 0x0129, 0x0136, 0x0000, 0x0149,
    0x011E, 0x0134, 0x00B2, 0x8FFF,
};

u16 D_800C8A0C[] = {
    0x00A8, 0x0000, 0x013A, 0x0129, 0x011E, 0x012B, 0x0120, 0x0122,
    0x012F, 0x0000, 0x0142, 0x0126, 0x0121, 0x0130, 0x8FFF, 0x0000,
};

u16 D_800C8A2C[] = {
    0x0149, 0x0122, 0x0130, 0x0120, 0x0132, 0x0122, 0x00B1, 0x0000,
    0x0138, 0x0120, 0x0131, 0x0000, 0x00A2, 0x8FFF,
};

u16 D_800C8A48[] = {
    0x0149, 0x0122, 0x0130, 0x0120, 0x0132, 0x0122, 0x00B1, 0x0000,
    0x0138, 0x0120, 0x0131, 0x0000, 0x00A3, 0x8FFF,
};

u16 D_800C8A64[] = {
    0x014B, 0x0138, 0x0149, 0x014C, 0x014A, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C8A74[] = {
    0x013E, 0x0125, 0x012C, 0x0130, 0x0131, 0x0000, 0x013A, 0x011E,
    0x0131, 0x0120, 0x0125, 0x0122, 0x012F, 0x00B1, 0x8FFF, 0x0000,
};

u16 D_800C8A94[] = {
    0x0138, 0x0130, 0x0131, 0x0122, 0x012F, 0x00D1, 0x0000, 0x014B,
    0x012F, 0x0136, 0x0128, 0x0122, 0x00B1, 0x8FFF,
};

u16 D_800C8AB0[] = {
    0x0144, 0x012C, 0x0129, 0x0122, 0x0136, 0x0000, 0x013A, 0x012C,
    0x0134, 0x00B2, 0x8FFF, 0x0000,
};

u16 D_800C8AC8[] = {
    0x0138, 0x0130, 0x0131, 0x0122, 0x012F, 0x00D1, 0x0000, 0x0144,
    0x011E, 0x0137, 0x0122, 0x00B1, 0x8FFF, 0x0000,
};

u16 D_800C8AE4[] = {
    0x014A, 0x0138, 0x014A, 0x0148, 0x014C, 0x0138, 0x014B, 0x013A,
    0x013F, 0x0000, 0x00CF, 0x8FFF,
};

u16 D_800C8AFC[] = {
    0x013A, 0x0129, 0x011E, 0x012B, 0x0120, 0x0122, 0x0000, 0x014E,
    0x011E, 0x012F, 0x0000, 0x00CD, 0x8FFF, 0x0000,
};

u16 D_800C8B18[] = {
    0x013A, 0x012C, 0x0132, 0x012B, 0x0131, 0x0122, 0x012F, 0x011E,
    0x0131, 0x0131, 0x011E, 0x0120, 0x0128, 0x8FFF,
};

u16 D_800C8B34[] = {
    0x0139, 0x0122, 0x0122, 0x00D1, 0x0000, 0x0131, 0x0125, 0x0122,
    0x0000, 0x012C, 0x012B, 0x0122, 0x00B1, 0x8FFF,
};

u16 D_800C8B50[] = {
    0x0144, 0x013C, 0x0149, 0x013A, 0x0146, 0x00B2, 0x8FFF, 0x0000
};

u16 D_800C8B60[] = {
    0x014B, 0x012F, 0x011E, 0x012D, 0x012D, 0x0122, 0x0121, 0x00B5, 0x8FFF, 0x0000
};

u16 D_800C8B74[] = {
    0x0147, 0x013F, 0x0146, 0x013C, 0x0145, 0x0140, 0x014F, 0x0000, 0x00D0, 0x8FFF
};

u16 D_800C8B88[] = {
    0x0140, 0x012B, 0x012B, 0x0122, 0x012F, 0x0000, 0x014A, 0x0131,
    0x012F, 0x0132, 0x0124, 0x0124, 0x0129, 0x0122, 0x8FFF, 0x0000
};

u16 D_800C8BA8[] = {
    0x013D, 0x0126, 0x012B, 0x011E, 0x0129, 0x0000, 0x0139, 0x011E,
    0x0131, 0x0131, 0x0129, 0x0122, 0x8FFF, 0x0000,
};

u16 D_800C8BC4[] = {
    0x013C, 0x012B, 0x0121, 0x0126, 0x012B, 0x0124,0x8FFF, 0x0000
};

u16 D_800C8BD4[] = {
    0x013A, 0x012F, 0x0122, 0x0121, 0x0126, 0x0131, 0x0130, 0x8FFF
};

u16* D_800C8BE4[] = {
    D_800C85E8, D_800C8608, D_800C8624, D_800C8638, D_800C8650
};

u16 D_800C8BF8[] = {
    0xFFC6, 0xFFC6, 0xFFD8, 0xFFCE, 0xFFCC, 0x0000
};

u16 D_800C8C04[] = {
    0x000A, 0x000B, 0x000C, 0x000B, 0x000A, 0x0000
};

u16* D_800C8C10[] = {
    D_800C8668, D_800C8684, D_800C86A0, D_800C86BC,
    D_800C86D4, D_800C86F4, D_800C8714, D_800C872C,
    D_800C874C, D_800C8768
};

u16* D_800C8C38[] = {
    D_800C877C, D_800C8794, D_800C87A8, D_800C87C8,
    D_800C87DC, D_800C87FC, D_800C8810, D_800C8830,
    D_800C8844, D_800C8860, D_800C887C
};

u16* D_800C8C64[] = {
    D_800C8898, D_800C88B4, D_800C88CC, D_800C88E8,
    D_800C8908, D_800C8924, D_800C893C, D_800C895C,
    D_800C896C, D_800C898C, D_800C89A4, D_800C89C0
};

u16* D_800C8C94[] = {
    D_800C89D8, D_800C89F4, D_800C8A0C, D_800C8A2C,
    D_800C8A48, D_800C8A64, D_800C8A74, D_800C8A94,
    D_800C8AB0, D_800C8AC8, D_800C8AE4
};

u16* D_800C8CC0[] = {
    D_800C8AFC, D_800C8B18, D_800C8B34, D_800C8B50,
    D_800C8B60, D_800C8B74, D_800C8B88, D_800C8BA8,
    D_800C8BC4, D_800C8BD4
};

u16** D_800C8CE8[] = {
    D_800C8C10, D_800C8C38, D_800C8C64, D_800C8C94, D_800C8CC0
};

u16 D_800C8CFC[] = {
    0xFFD0, 0xFFD4, 0xFFD4, 0xFFDC, 0xFFC8, 0xFFC8, 0xFFD0, 0xFFC8, 0xFFC8, 0xFFE4
};

u16 D_800C8D10[] = {
    0xFFD0, 0xFFE4, 0xFFC4, 0xFFE4, 0xFFC4, 0xFFE0, 0xFFC8, 0xFFE4,
    0xFFC8, 0xFFD0, 0xFFD0, 0x0000
};

u16 D_800C8D28[] = {
    0xFFCC, 0xFFDC, 0xFFD4, 0xFFD4, 0xFFC8, 0xFFE0, 0xFFC0, 0xFFE4,
    0xFFC4, 0xFFD8, 0xFFC8, 0xFFD0
};

u16 D_800C8D40[] = {
    0xFFD0, 0xFFD8, 0xFFC8, 0xFFC4, 0xFFC4, 0xFFE4, 0xFFC4, 0xFFC8,
    0xFFDC, 0xFFC8, 0xFFC8, 0x0000
};

u16 D_800C8D58[] = {
    0xFFCC, 0xFFCA, 0xFFC4, 0xFFE8, 0xFFE0, 0xFFDC, 0xFFC4, 0xFFD8, 0xFFEC, 0xFFE8
};

u16* D_800C8D6C[] = {
    D_800C8CFC, D_800C8D10, D_800C8D28, D_800C8D40, D_800C8D58
};

char* D_800C8D80[] = {
    D_800C84EC, D_800C84F0, D_800C84F4, D_800C84F8,
    D_800C84FC, D_800C8500, D_800C8504, D_800C8508,
    D_800C850C, D_800C8510
};

char* D_800C8DA8[] = {
    D_800C8518, D_800C851C, D_800C8520, D_800C8524,
    D_800C8528, D_800C852C, D_800C8530, D_800C8534,
    D_800C8538, D_800C853C, D_800C8544
};

char* D_800C8DD4[] = {
    D_800C854C, D_800C8550, D_800C8554, D_800C8558,
    D_800C855C, D_800C8560, D_800C8564, D_800C8568,
    D_800C856C, D_800C8570, D_800C8578, D_800C8580
};

char* D_800C8E04[] = {
    D_800C8588, D_800C858C, D_800C8590, D_800C8594,
    D_800C8598, D_800C859C, D_800C85A0, D_800C85A4,
    D_800C85A8, D_800C85AC, D_800C85B4
};

char* D_800C8E30[] = {
    D_800C85BC, D_800C85C0, D_800C85C4, D_800C85C8,
    D_800C85CC, D_800C85D0, D_800C85D4, D_800C85D8,
    D_800C85DC, D_800C85E0
};

// array of array of string stage IDs
char** D_800C8E58[] = {
    D_800C8D80, D_800C8DA8, D_800C8DD4, D_800C8E04, D_800C8E30
};


u16 D_800C8E6C[] = {
    0x3038, 0x3038, 0x3038, 0x3038, 0x3038, 0x301E, 0x301E, 0x3038, 0x301E, 0x301E
};

u16 D_800C8E80[] = {
    0x3020, 0x303C, 0x3020, 0x3020, 0x3020, 0x3020, 0x3020, 0x303C,
    0x3020, 0x303C, 0x3022, 0x0000
};


u16 D_800C8E98[] = {
    0x3028, 0x3028, 0x3028, 0x3028, 0x3028, 0x3028, 0x3028, 0x3026,
    0x3028, 0x3024, 0x3024, 0x3026
};

u16 D_800C8EB0[] = {
    0x302A, 0x302A, 0x302A, 0x302A, 0x302A, 0x302E, 0x302C, 0x302C, 0x302C, 0x302C, 0x302E, 0x0000
};

u16 D_800C8EC8[] = {
    0x3030, 0x3030, 0x3030, 0x3034, 0x3032, 0x3034, 0x3032, 0x3036, 0x303A, 0x303A
};

u16* D_800C8EDC[] = {
    D_800C8E6C, D_800C8E80, D_800C8E98, D_800C8EB0, D_800C8EC8
};

Gfx D_800C8EF0[] = {
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
    gsDPLoadBlock(G_TX_LOADTILE, 0, 0, 1372, 0),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0x0100, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x003C),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 2, 0x0140, 2, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, 1, G_TX_NOMIRROR | G_TX_WRAP, 4, 1),
    gsDPSetTileSize(2, 0, 0, 0x001C, 0x001C),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0150, 3, 0, G_TX_NOMIRROR | G_TX_WRAP, 3, 2, G_TX_NOMIRROR | G_TX_WRAP, 3, 2),
    gsDPSetTileSize(3, 0, 0, 0x000C, 0x000C),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0154, 4, 0, G_TX_NOMIRROR | G_TX_WRAP, 2, 3, G_TX_NOMIRROR | G_TX_WRAP, 2, 3),
    gsDPSetTileSize(4, 0, 0, 0x0004, 0x0004),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0156, 5, 0, G_TX_NOMIRROR | G_TX_WRAP, 1, 4, G_TX_NOMIRROR | G_TX_WRAP, 1, 4),
    gsDPSetTileSize(5, 0, 0, 0, 0),
    gsSPEndDisplayList(),
};

char D_800C8F68[] = "PRESS START";
char D_800C8F74[] = "@1997 TREASURE/ENIX";
char D_800C8F88[] = "LICENSED TO NINTENDO";

u16 D_800C8FA0[] = {
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001
};

u16 D_800C8FC0[] = {
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
};

u16 D_800C9080[] = {
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
    0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001
};

// "Sound test" SFX indecies.
u16 D_800C9280[] = {
    0x0021, 0x00B4, 0x00CB, 0x00CA, 0x00B9, 0x00B5, 0x00CC, 0x00B2,
    0x00D0, 0x00B3, 0x00CE, 0x00D1, 0x00B7, 0x00CD, 0x00C9, 0x00D3,
    0x00C8, 0x00D4, 0x00D8, 0x00D9, 0x00DA, 0x00DB, 0x00DC, 0x00DD,
    0x00DE, 0x00DF, 0x00E0, 0x00E4, 0x00E5, 0x00E6, 0x00E7, 0x00E8,
    0x00E9, 0x00EA, 0x00EB, 0x00EC, 0x00ED, 0x00EF, 0x00F0, 0x00F1,
    0x00F2, 0x00F3, 0x00F5, 0x00F6, 0x00F7, 0x00F8, 0x00F9, 0x00FA,
    0x00FB, 0x00FF, 0x0100, 0x0102, 0x0103, 0x0104, 0x0105, 0x0107,
    0x0108, 0x0109, 0x010B, 0x007D, 0x007E, 0x0142, 0x0143, 0x0022,
    0x0023, 0x00D2, 0x0024, 0x0025, 0x00AE, 0x0116, 0x0034, 0x008A,
    0x005F, 0x0060, 0x00AB, 0x00A6, 0x00B6, 0x0056, 0x0059, 0x0076,
    0x0074, 0x00FE, 0x0037, 0x006F, 0x0041, 0x0051, 0x0057, 0x0095,
    0x0125, 0x003B, 0x007C, 0x0078, 0x005B, 0x007A, 0x003F, 0x0066,
    0x00C7, 0x0145, 0x00B0, 0x0136, 0x0123, 0x00B8, 0x0140, 0x0144,
    0x0130, 0x00BD, 0x00BF, 0x00BA, 0x00BE, 0x013C, 0x013D, 0x0026,
    0x0027, 0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E,
    0x002F, 0x0030, 0x0031, 0x0032, 0x0033, 0x0035, 0x0036, 0x0038,
    0x0039, 0x003C, 0x003D, 0x003E, 0x0040, 0x0042, 0x0043, 0x0045,
    0x0046, 0x0048, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
    0x0050, 0x0052, 0x0053, 0x0054, 0x0055, 0x0058, 0x005A, 0x005C,
    0x005D, 0x005E, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0068,
    0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x0070, 0x0071,
    0x0072, 0x0073, 0x0075, 0x0077, 0x0079, 0x007B, 0x0080, 0x0081,
    0x0082, 0x0083, 0x0084, 0x0085, 0x0086, 0x0087, 0x0088, 0x0089,
    0x008B, 0x008C, 0x008D, 0x008E, 0x008F, 0x0090, 0x0091, 0x0092,
    0x0093, 0x0094, 0x0096, 0x0097, 0x0098, 0x0099, 0x009A, 0x009B,
    0x00A3, 0x00A5, 0x00A9, 0x00AA, 0x00AC, 0x00AD, 0x00AF, 0x00B1,
    0x00BB, 0x00BC, 0x00C0, 0x00C1, 0x00C2, 0x00C3, 0x00C5, 0x00C6,
    0x00CF, 0x00D5, 0x00D6, 0x00E1, 0x00E2, 0x00E3, 0x00EE, 0x00FC,
    0x00FD, 0x0101, 0x0106, 0x010D, 0x010E, 0x010F, 0x0110, 0x0111,
    0x0112, 0x0113, 0x0114, 0x0115, 0x0117, 0x0118, 0x0119, 0x011B,
    0x011C, 0x011D, 0x011E, 0x011F, 0x0120, 0x0121, 0x0122, 0x0124,
    0x0126, 0x0127, 0x0128, 0x0129, 0x012A, 0x012B, 0x012C, 0x0131,
    0x0132, 0x0133, 0x0134, 0x0135, 0x0137, 0x0139, 0x013E, 0x013F,
    0x0141, 0x013B, 0x0047, 0x00F4, 0x00C4, 0x010A, 0x010C, 0x0138,
    0x013A, 0x00D7, 0x003A, 0x009E, 0x00A2, 0x009F, 0x009D, 0x00A1,
    0x0067, 0x0044, 0x007F, 0x011A, 0x0049, 0x00A4, 0x00A7, 0x00A8,
    0x009C, 0x00A0, 0x012D, 0x012E, 0x012F, 0x0000
};

char D_800C94CC[] = "BGM";
char D_800C94D0[] = "S.E.";

// positions of Sound Test icons
s32 D_800C94D8[] = {
    0x30, 0x20
};

u16 D_800C94E0[] = {
    0x0000, 0x0000, 0x0000, 0x005D, 0x0089, 0x0086, 0x0086, 0x0079,
    0x0082, 0x0088, 0x0000, 0x006E, 0x007D, 0x0081, 0x0079, 0x8FFF
};

u16 D_800C9500[] = {
    0x0000, 0x0000, 0x006A, 0x0086, 0x0079, 0x008A, 0x007D, 0x0083,
    0x0089, 0x0087, 0x0000, 0x006E, 0x007D, 0x0081, 0x0079, 0x8FFF
};

u16 D_800C9520[] = {
    0x012A, 0x0000, 0x0000, 0x0130, 0x8FFF, 0x0000
};

u16 D_800C952C[] = {
    0x0000, 0x0063, 0x0092, 0x0081, 0x0000, 0x005E, 0x0083, 0x0082, 0x0079, 0x8FFF
};

u16 D_800C9540[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x006C, 0x0075, 0x0082, 0x007F, 0x8FFF
};

u16 D_800C9554[] = {
    0x00C0, 0x012A, 0x00C0, 0x00C0, 0x0130, 0x00C0, 0x00C0, 0x8FFF
};

u16 D_800C9564[] = {
    0x006A, 0x0079, 0x0086, 0x007A, 0x0079, 0x0077, 0x0088, 0x0093,
    0x0093, 0x0093, 0x8FFF, 0x0000,
};

u16 D_800C957C[] = {
    0x005F, 0x008C, 0x0077, 0x0079, 0x0080, 0x0080, 0x0079, 0x0082,
    0x0088, 0x0093, 0x8FFF, 0x0000,
};

u16 D_800C9594[] = {
    0x0070, 0x0079, 0x0086, 0x008D, 0x0000, 0x0061, 0x0083, 0x0083,
    0x0078, 0x0093, 0x8FFF, 0x0000,
};

u16 D_800C95AC[] = {
    0x0000, 0x0000, 0x0000, 0x0061, 0x0083, 0x0083, 0x0078, 0x0000,
    0x0000, 0x0000, 0x8FFF, 0x0000,
};

u16 D_800C95C4[] = {
    0x006E, 0x0086, 0x008D, 0x0000, 0x0062, 0x0075, 0x0086, 0x0078,
    0x0079, 0x0086, 0x8FFF, 0x0000,
};

// array of actor indexes
u16 D_800C95DC[] = {
    0x51, 0x54, 0x57, 0x5A, 0x5D, 0x60, 0x63, 0x66, 0x69, 0x6C, 0x70, 0x74
};

s16 D_800C95F4[] = {
    -129, -106, -83, -60, -37, -14, 9, 32, 55, 78, 101, 124, 124, 0x0000
};

s16 D_800C9610[] = { // y-coord
    26, -22, 26, -22, 26, -22, 26, -22, 26, -22, 26, -22, -18, 0x0000
};

s16 D_800C962C[] = {
    0x3008, 0x0006, 0x300A, 0x0006, 0x300C, 0x0006, 0x300E, 0x0006,
    0x300C, 0x0006, 0x300A, 0x0006,   -0xC, 0x0000
};

s16 D_800C9648[] = {
    0x3016, 0x0005, 0x3018, 0x0005, 0x301A, 0x0005, 0x301C, 0x0005,
    0x301A, 0x0005, 0x3018, 0x0005,   -0xC, 0x0000
};

u16 D_800C9664[] = { // palette
    0x0000, 0xFFC1, 0xC601, 0x8401
};

char D_800C966C[] = "S";
char D_800C9670[] = "A";
char D_800C9674[] = "B";
char D_800C9678[] = "C";
char D_800C967C[] = "D";

char* D_800C9680[] = {
    D_800C966C, D_800C9670, D_800C9674, D_800C9678, D_800C967C
};

s16 D_800C9694[] = {
    0x00FA, 0x00E8, 0x00E9, 0x00EA, 0x00EB
};

u16* D_800C96A0[] = {
    D_800C9564, D_800C957C, D_800C9594, D_800C95AC, D_800C95C4
};

// "Record"
u16 D_800C96B4[] = {
    0x0149, 0x0122, 0x0120, 0x012C, 0x012F, 0x0121, 0x8FFF
};

// " h  m  s"
u16 D_800C96C4[] = {
    0x0000, 0x0125, 0x0000, 0x0000, 0x012A, 0x0000, 0x0000, 0x0130,
    0x8FFF
};

u16 D_800C96D8[] = {
    0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
    0x0058, 0x0059, 0x005A, 0x0083, 0x0084, 0x0085, 
};

s32 Input_CheckButtonRepeat(u16 button, u8* repeat_timer) {
    if (!(gButtonHold & button)) {
        *repeat_timer = 0;
    }
    else if (*repeat_timer == 0x21) {
        *repeat_timer = 0x20;
    }
    else {
        (*repeat_timer)++;
    }

    if ((gButtonPress & button) || (*repeat_timer == 0x21)) {
        return TRUE;
    }

    return FALSE;
}

s32 func_800176F8(u16 button, u8* repeat_timer) {
    if (!(gButtonHold & button)) {
        *repeat_timer = 0;
    }
    else if (*repeat_timer == 0x14) {
        *repeat_timer = 0x10;
    }
    else {
        (*repeat_timer)++;
    }

    if ((gButtonPress & button) || (*repeat_timer == 0x14)) {
        return TRUE;
    }

    return FALSE;
}

void DebugMenu_UpdateCursorFlash(void) {
    u16 cursor_index;
    s32 cursor_color;
    s32 next_color;
    u8* cursor_colors;
    u8* cursor_color_ptr;
    u16 index;

    cursor_colors = gDebugMenuCursorFlash;
    cursor_index = gActors[7].colorB;
    cursor_color_ptr = cursor_colors;
    cursor_color_ptr += cursor_index;
    cursor_color = *cursor_color_ptr;
    next_color = cursor_color + 4;

    if (cursor_color & 1) {
        *cursor_color_ptr = cursor_color - 4;
        if (*cursor_color_ptr == 0xFF) {
            *cursor_color_ptr = 0;
        }
    }
    else {
        *cursor_color_ptr = next_color;
        if (*cursor_color_ptr == 0x40) {
            *cursor_color_ptr = 0x3F;
        }
    }

    for (index = 0; index < 8; index++) {
        if (cursor_index != index) {
            cursor_colors[index] = 0x3F;
        }
    }
}

void GameState_Intro(void) {
    u16 actor_index_30 = 0x30;
    u16 actor_index_31 = 0x31;
    u16* palette = PALETTE_80380200;
    s32 color;

    switch (gGameStateSubState) {
    case 0:
        Sound_StopMusic();
        gCurrentScene = SCENE_SPLASHSCREEN;
        func_80025C38();
        func_80010C20(gCurrentScene);
        palette[1] = palette[2] = 1;
        Text_InitActorGraphic(actor_index_30, 0x2000, 0, 4, 0);
        gActors[actor_index_30].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_index_30].flags |= ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
        gActors[actor_index_30].hitboxBX0 = 0x80;
        gActors[actor_index_30].hitboxBX1 = 1;
        gActors[actor_index_30].hitboxBY0 = 0x10;
        gActors[actor_index_30].hitboxBY1 = 8;
        gActors[actor_index_30].unk_17C = 0x8034E4C8;
        gActors[actor_index_30].unk_180 = (intptr_t) D_800C9080;
        gActors[actor_index_30].var_154 = -0x1F;
        color = gActors[actor_index_30].var_154;
        Palette_AdjustRgb5551Array((u16* )0x803524C8, D_800C9080, 0xFF, color, color, color);
        gGameStateSubState++;
        break;
    case 1:
        color = gActors[actor_index_30].var_154;
        Palette_AdjustRgb5551Array((u16* )0x803524C8, D_800C9080, 0xFF, color, color, color);
        if (gFramesInScene & 1) {
            if (gActors[actor_index_30].var_154++ == 0) {
                gGameStateSubState++;
                gActors[actor_index_30].var_158 = 0x80;
            }
        }
        break;
    case 2:
        if (gActors[actor_index_30].var_158-- == 0) {
            gGameStateSubState++;
        }
        break;
    case 3:
        color = gActors[actor_index_30].var_154;
        Palette_AdjustRgb5551Array((u16* )0x803524C8, D_800C9080, 0xFF, color, color, color);
        if (gFramesInScene & 1) {
            if ((gActors[actor_index_30].var_154-- + 0x1F) == 0) {
                Text_InitActorGraphic(0x30, 0x2000, 0, 4, 0);
                gActors[actor_index_30].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index_30].flags |= ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
                gActors[actor_index_30].hitboxBX0 = 0x50;
                gActors[actor_index_30].hitboxBX1 = 1;
                gActors[actor_index_30].hitboxBY0 = 0x18;
                gActors[actor_index_30].hitboxBY1 = 4;
                gActors[actor_index_30].unk_17C = 0x80340240;
                gActors[actor_index_30].unk_180 = (intptr_t) D_800C8FA0;
                gActors[actor_index_30].var_154 = -0x1F;
                color = gActors[actor_index_30].var_154;
                Palette_AdjustRgb5551Array((u16* )0x80342040, D_800C8FA0, 0xF, color, color, color);
                gGameStateSubState = 10;
            }
        }
        break;
    case 10:
        color = gActors[actor_index_30].var_154;
        Palette_AdjustRgb5551Array((u16* )0x80342040, D_800C8FA0, 0xF, color, color, color);
        if (gFramesInScene & 1) {
            if (gActors[actor_index_30].var_154++ == 0) {
                gGameStateSubState++;
                gActors[actor_index_30].var_158 = 0x80;
            }
        }
        break;
    case 11:
        if (gActors[actor_index_30].var_158-- == 0) {
            gGameStateSubState++;
        }
        break;
    case 12:
        color = gActors[actor_index_30].var_154;
        Palette_AdjustRgb5551Array((u16* )0x80342040, D_800C8FA0, 0xF, color, color, color);
        if (gFramesInScene & 1) {
            if ((gActors[actor_index_30].var_154-- + 0x1F) == 0) {
                gActors[actor_index_30].flags = 0;
                Text_InitActorGraphic(actor_index_31, 0x2002, 0, 8, 0);
                gActors[actor_index_31].graphicFlags |= ACTOR_GFLAG_PALETTE;
                gActors[actor_index_31].flags |= ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
                gActors[actor_index_31].hitboxBX0 = 0x48;
                gActors[actor_index_31].hitboxBX1 = 1;
                gActors[actor_index_31].hitboxBY0 = 0x18;
                gActors[actor_index_31].hitboxBY1 = 4;
                gActors[actor_index_31].unk_17C = 0x80342068;
                gActors[actor_index_31].unk_180 = (s32) D_800C8FC0;
                gActors[actor_index_31].var_154 = -0x1F;
                color = gActors[actor_index_31].var_154;
                Palette_AdjustRgb5551Array((u16* )0x80343B68, D_800C8FC0, 0x5F, color, color, color);
                gGameStateSubState += 1;
            }
        }
        break;
    case 13:
        color = gActors[actor_index_31].var_154;
        Palette_AdjustRgb5551Array((u16* )0x80343B68, D_800C8FC0, 0x5F, color, color, color);
        if (gFramesInScene & 1) {
            if (gActors[actor_index_31].var_154++ == 0) {
                gGameStateSubState++;
                gActors[actor_index_31].var_158 = 0x80;
            }
        }
        break;
    case 14:
        if (gActors[actor_index_31].var_158-- == 0) {
            gGameStateSubState++;
        }
        break;
    case 15:
        color = gActors[actor_index_31].var_154;
        Palette_AdjustRgb5551Array((u16* )0x80343B68, D_800C8FC0, 0x5F, color, color, color);
        if (gFramesInScene & 1) {
            if ((gActors[actor_index_31].var_154-- + 0x1F) == 0) {
                gActors[actor_index_31].flags = 0;
                gGameStateSubState++;
            }
        }
        break;
    case 16:
        gSPDisplayList(gDisplayListHead++, D_800C8EF0);
        gActors[actor_index_30].flags = 0;
        gActors[actor_index_31].flags = 0;
        D_80171B18 = gCurrentStage = 0;
        gCurrentScene = SCENE_INTRO;
        D_800D28E4 = 0x59;
        D_800C5008 = 0;
        gGameState = GAMESTATE_TRANSITION;
        gGameStateSubState = 0x41;
        break;
    }
    if (gButtonPress & gButton_Start) {
        if (gGameStateSubState > 0) {
            gGameState = GAMESTATE_TITLESCREEN;
            gGameStateSubState = 0;
        }
    }
}

void func_80017F08(void) {
    u16* palette;

    DebugMenu_UpdateCursorFlash();
    palette = Text_SetColor(0,(0x1F - (gDebugMenuCursorFlash[0] / 4)),(0x1F - (gDebugMenuCursorFlash[0] / 4)),0x1f);
    Text_PrintASCII(0x39, D_800C8F68, -0x36, -0x1C, 0, palette);
    palette = Text_SetColor(2, 0x1F, 0x1F, 0x18);
    Text_PrintASCII(0x49, D_800C8F74, -0x56, -0x40, 0, palette);
    // last 2 lines ommited in Japanese version.
    palette = Text_SetColor(2, 0x1F, 0x1F, 0x18);
    Text_PrintASCII(0x60, D_800C8F88, -0x5A, -0x52, 0, palette);
}

void func_80017FE8(u16 actor_index) {
    gActors[actor_index].actorType = ACTORTYPE_ZERO;
    Actor_Initialize(actor_index);

    gActors[actor_index].posX.whole = -2;
    gActors[actor_index].posY.whole = 4;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQARE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].posZ.whole = 0x100;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleX = 18.0f;
    gActors[actor_index].scaleY = 12.0f;
    gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = gActors[actor_index].colorA = 0xFF;
}

// move subtitle graphic (visible only in Japanese version.)
void func_8001809C(void) {
    if (gActors[0x34].posX.whole == -0x18) {
        return;
    }

    gActors[0x34].velocityX.raw = (FIXED_UNIT(-24.0) - gActors[0x34].posX.raw) / 4;
    if (gActors[0x34].velocityX.raw < FIXED_UNIT(-32.0)) {
        gActors[0x34].posX.raw += FIXED_UNIT(-32.0);
        return;
    }
    gActors[0x34].posX.raw += gActors[0x34].velocityX.raw;
}

void func_800180FC(void) {
    u16 index;

    func_8001809C();
    func_80017F08();

    // blink "press start" text
    if ((D_80178166++ & 4) == 0) {
        for (index = 0x39; index < 0x43; index++) {
            gActors[index].flags = 0;
        }
    }
}

void GameState_TitleScreen(void) {
    s32 pad0;
    s32 pad1;
    u16 actor_index;

    switch (gGameStateSubState) {
    case 0:
        Sound_PlayMusic(BGM_OPENING_TITLE);
        gGameStateSubState = 16;
        /* fallthrough */
    case 16:
        gSPDisplayList(gDisplayListHead++, D_800C8EF0);
        func_800230B8();
        func_80017FE8(0x33);
        gCurrentScene = SCENE_TITLE;
        gGameStateSubState++;
        break;
    case 17:
        func_80026E60(0x50);
        gGameStateSubState++;
        break;
    case 18:
        func_80026F2C(0x50);
        gGameStateSubState++;
        break;
    case 19:
        func_800270E4(0x15);
        gGameStateSubState++;
        break;
    case 20:
        func_8002670C(gCurrentScene);
        gGameStateSubState++;
        break;
    case 21:
        func_80026784(gCurrentScene);
        gGameStateSubState++;
        break;
    case 22:
        func_80026428(gCurrentScene);
        gGameStateSubState++;
        break;
    case 23:
        func_80025BFC();
        Palette_AdjustRgb5551Array((u16* )0x803DA400, (u16* )0x80380200, 0xFF, 2, 0, 0);
        D_800BE578 = 2;
        D_800BE580 = -0xC;
        D_801376A0 = (u16* )0x80380200;
        gDrawMidground = 0;
        gDrawEnvLayer = 1;
        gDrawBackground = 0;
        D_800BE70C = 1;
        func_80010C20(gCurrentScene);
        gGameStateSubState++;
        break;
    case 24:
        gActors[7].colorB = 0;
        gDebugMenuCursorFlash[0] = 0;

        actor_index = 0x10;
        Text_InitActorGraphic(actor_index, 0x800, 0x70, 0xFF68, 0);
        gActors[actor_index].graphicFlags |= 0x100;
        gActors[actor_index].colorA = 0x80;

        actor_index++;
        Text_InitActorGraphic(actor_index, 0x1000, 0xFF88, 0xFF68, 0);
        gActors[actor_index].graphicFlags |= 0x100;
        gActors[actor_index].colorA = 0x80;

        actor_index = 0x30;
        gActors[actor_index].actorType = 0;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags |= 0x30000000;
        gActors[actor_index].unk_17C = (s32)0x80343C28;
        gActors[actor_index].unk_180 = (s32)0x80349728;
        gActors[actor_index].posX.whole = 14;
        gActors[actor_index].posY.whole = 42;
        gActors[actor_index].hitboxBX0 = 224;
        gActors[actor_index].hitboxBX1 = 1;
        gActors[actor_index].hitboxBY0 = 8;
        gActors[actor_index].hitboxBY1 = 13;
        gActors[++actor_index].flags = 0;
        gActors[++actor_index].flags = 0;
        gGameStateSubState++;
        break;
    case 25:
        func_80017F08();
        if (gActors[0x33].colorA == 7) {
            gActors[0x33].flags = 0;
            gActors[0x33].var_154 = 0x10040;
            gGameStateSubState++;
        }
        else {
            gActors[0x33].colorA -= 8;
        }
        break;
    case 26:
        gActors[0x33].var_154--;
        func_8001809C();
        if (gActors[0x33].var_154 == 0x10000) {
            Sound_PlaySfx(SFX_MARINA_TITLE);
        }
        if ((gButtonHold & gButton_A) && (gButtonHold & gButton_CLeft) && (gButtonHold & gButton_CRight) && (gButtonHold & gButton_LTrig) && 
            !(gButtonHold & gButton_B) && !(gButtonHold & gButton_CDown) && !(gButtonHold & gButton_CUp) && !(gButtonHold & gButton_RTrig)) {
            gActors[7].colorB = 1;
        }
        else {
            gActors[7].colorB = 0;
        }
        func_80017F08();
        if (gButtonPress & gButton_Start) {
            Sound_PlaySfx(0x23);
            Sound_StartFade(1, 0x40);
            D_80178166 = 0;
            if (gActors[7].colorB != 0) {
                gGameStateSubState = 0x30;
            }
            else {
                gGameStateSubState = 0x20;
            }
        }
        if (((gAudioUpdateCounter > 0x1140) || (gButtonPress & gButton_B)) && !(gButtonPress & gButton_Start)) {
            Sound_StartFade(1, 0x20);
            actor_index = 0x33;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = 0x7F;
            gActors[actor_index].colorA = 7;
            gGameStateSubState++;
        }
        break;
    case 27:
        func_8001809C();
        func_80017F08();
        if (gActors[0x33].colorA == 0xFF) {
            gAudioFadeMode = 0;
            gGameState = GAMESTATE_ATTRACT;
            gGameStateSubState = 0;
        }
        else {
            gActors[0x33].colorA += 8;
        }
        break;
    case 32:
        func_800180FC();
        if (gAudioFadeMode == 3) {
            gAudioFadeMode = 0;
            D_80178164 = 0x20;
            gGameStateSubState++;
        }
        break;
    case 33:
        func_800180FC();
        if (D_80178164-- == 0) {
            gGameState = GAMESTATE_FILESELECT;
            gGameStateSubState = 0;
        }
        break;
    case 48:
        func_800180FC();
        if (gAudioFadeMode == 3) {
            gAudioFadeMode = 0;
            D_80178164 = 0x20;
            gGameStateSubState++;
        }
        break;
    case 49:
        func_800180FC();
        if (D_80178164-- == 0) {
            func_800230B8();
            gActors[0x10].flags = ACTOR_FLAG_ENABLED;
            gActors[0x11].flags = ACTOR_FLAG_ENABLED;
            gGameState = GAMESTATE_DEBUG_SOUNDTEST;
            gGameStateSubState = 0;
        }
        break;
    }
}

void GameState_DebugSoundTest(void) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    u16 pad4;
    u16 actor_index;
    void* palette;

    actor_index = 0x30;
    switch (gGameStateSubState) {
    case 0:
        gActors[actor_index].actorType = ACTORTYPE_3DICON;
        Actor_Initialize(actor_index);
        gActors[actor_index].var_0D8 = 0xB;
        gActors[actor_index].posX.whole = -0x38;
        gActors[actor_index].posY.whole = 0x30;
        gActors[actor_index].var_110 = 0.0f;
        gActors[actor_index].var_154 = 2;

        actor_index++;
        gActors[actor_index].actorType = ACTORTYPE_3DICON;
        Actor_Initialize(actor_index);
        gActors[actor_index].var_0D8 = 0xB;
        gActors[actor_index].posX.whole = 0x38;
        gActors[actor_index].posY.whole = 0x30;
        gActors[actor_index].var_154 = 3;
        gActors[actor_index].var_110 = 0.0f;

        gActors[0xD].colorB = 0;
        gActors[7].colorB = 0;
        gActors[2].velocityX.raw = 0;
        gActors[3].velocityX.raw = 0;
        gActors[1].velocityX.raw = 0;
        gGameStateSubState += 1;
        /* fallthrough */
    case 1:
        if ((gButtonPress & gButton_DDown) || (gButtonPress & gButton_DUp)) {
            gActors[7].colorB ^= 1;
            Sound_PlaySfx(SFX_MENU_BLIP);
        }
        switch (gActors[7].colorB) {
        case 0:
            if ((Input_CheckButtonRepeat(gButton_DLeft, &gActors[8].colorB)) && (gActors[2].velocityX.raw > 0)) {
                gActors[2].velocityX.raw -= 1;
                Sound_StopMusic();
            }
            if ((Input_CheckButtonRepeat(gButton_DRight, &gActors[9].colorB)) && (gActors[2].velocityX.raw < 0x20)) {
                gActors[2].velocityX.raw += 1;
                Sound_StopMusic();
            }
            if (gButtonPress & A_BUTTON) {
                Sound_PlayMusic(gActors[2].velocityX.raw);
                gActors[0xC].colorB = 8;
                gActors[1].velocityX.raw = 0;
            }
            if (gButtonPress & B_BUTTON) {
                Sound_StopMusic();
            }
            break;
        case 1:
            if ((Input_CheckButtonRepeat(gButton_DLeft, &gActors[8].colorB) != 0) && (gActors[3].velocityX.raw > 0)) {
                gActors[3].velocityX.raw--;
            }
            if ((Input_CheckButtonRepeat(gButton_DRight, &gActors[9].colorB) != 0) && (gActors[3].velocityX.raw < 0x124)) {
                gActors[3].velocityX.raw++;
            }
            if (gButtonPress & A_BUTTON) {
                Sound_PlaySfx(D_800C9280[gActors[3].velocityX.raw]);
            }
            if (gButtonPress & B_BUTTON) {
                Sound_StopAllSfx();
            }
            break;
        }
        DebugMenu_UpdateCursorFlash();
        func_80060F88(0x30);
        func_80060F88(0x31);
        gActors[0x30].posY.whole = gActors[0x31].posY.whole = D_800C94D8[gActors[7].colorB];
        palette = Text_SetColor(4, 0x1F, 0x1F - (gDebugMenuCursorFlash[0] / 4), (0x1F - (gDebugMenuCursorFlash[0] / 4)));
        Text_PrintASCII(actor_index + 0x1A, D_800C94CC, 0xFFD8, 0x30, 0, palette);
        Text_Print2Digits(actor_index + 0x1D, (gActors[2].velocityX.raw + 1), 0x20, 0x30, 0, palette);
        palette = Text_SetColor(5, 0x1F, 0x1F - (D_801781A1 / 4), 0x1F - (D_801781A1 / 4));
        Text_PrintASCII(actor_index + 0x1F, D_800C94D0, 0xFFD8, 0x20, 0, palette);
        Text_Print3Digits(actor_index + 0x23, gActors[3].velocityX.raw + 1, 0x18, 0x20, 0, palette);
        gActors[actor_index + 0x26].flags = 0;
        if (gButtonPress & gButton_Start) {
            actor_index = 0x33;
            func_80017FE8(actor_index);
            gActors[actor_index].colorA = 7;
            Sound_PlaySfx(0x23);
            Sound_StartFade(0x81, 0x20);
            gGameStateSubState++;
        }
        break;
    case 2:
        if (gActors[0x33].colorA != 0xFF) {
            gActors[0x33].colorA += 8;
        }
        if (gAudioFadeMode == 0x83) {
            gAudioFadeMode = 0;
            gGameState = GAMESTATE_TITLESCREEN;
            gGameStateSubState = 0;
        }
        break;
    }
}

//  one caller passes arg but it is unused
void DebugStageSelect_DrawMenu() {
    char selected_stage_text[4];
    char stage_text[DEBUG_STAGE_SELECT_ROW_COUNT][DEBUG_STAGE_SELECT_OPTION_TEXT_LENGTH];
    u16 index;
    f32 scale;

    for (index = 0; index < DEBUG_STAGE_SELECT_ROW_COUNT; index++) {
        sprintf(stage_text[index], "%s%s", gDebugStageSelectRowPrefixes[index],
                *(gDebugStageSelectOptionSuffixes + gDebugStageSelectSelectedOptions[index] +
                  gDebugStageSelectOptionBaseOffsets[index]));
    }

    scale = 1.0f;
    for (index = 0; index < DEBUG_STAGE_SELECT_ROW_COUNT; index++) {
        if (index != gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB) {
            func_8008391C(stage_text[index], ((index / DEBUG_STAGE_SELECT_COLUMN_ROWS) << 7) - 0x70,
                          0x58 - ((index % DEBUG_STAGE_SELECT_COLUMN_ROWS) << 4), 0x60, 0x40,
                          0x20, 0xFF, scale, scale);
        }
        else {
            func_8008391C(stage_text[index], ((index / DEBUG_STAGE_SELECT_COLUMN_ROWS) << 7) - 0x70,
                          0x58 - ((index % DEBUG_STAGE_SELECT_COLUMN_ROWS) << 4),
                          ((gDebugMenuCursorFlash[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB] * 2) + 0x80) & 0xFF,
                          ((gDebugMenuCursorFlash[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB] * 2) + 0x80) & 0xFF,
                          0x20, 0xFF, scale, scale);
        }
    }

    sprintf((char*)stage_text - 4, "%02x", gCurrentScene + 0x11);
    func_8008391C((char*)stage_text - 4, -0x8C, 0x10, 0x60, 0x40, 0x20, 0xFF, scale, scale);

    if (D_800D28E4 < 0x15) {
        sprintf((char*)stage_text - 4, "1-%02d", D_800D28E4);
    }
    else if (D_800D28E4 < 0x34) {
        sprintf((char*)stage_text - 4, "2-%02d", D_800D28E4 - 0x15);
    }
    else if (D_800D28E4 < 0x49) {
        sprintf((char*)stage_text - 4, "3-%02d", D_800D28E4 - 0x34);
    }
    else if (D_800D28E4 < 0x58) {
        sprintf((char*)stage_text - 4, "4-%02d", D_800D28E4 - 0x49);
    }
    else if (D_800D28E4 < 0x59) {
        sprintf((char*)stage_text - 4, "5-00");
    }
    else if (D_800D28E4 >= 0x61) {
        sprintf((char*)stage_text - 4, "N_PR");
    }
    else {
        sprintf((char*)stage_text - 4, "DEMO");
    }

    func_8008391C((char*)stage_text - 4, -0x94, 0, 0x60, 0x40, 0x20, 0xFF, scale, scale);
}

void GameState_DebugStageSelect(void) {
    u16 index;
    u16 jndex;
    s32 new_var;
    s32 selected_value;
    u16 cursor_index;
    u16 selected_index;
    u8* selected_entry;

    switch (gGameStateSubState) {
        case 0:
            for (index = 0; index < DEBUG_STAGE_SELECT_ROW_COUNT; index++) {
                gDebugStageSelectSelectedOptions[index] = 0;
            }

            // Build prefix sums into the flattened suffix pool
            for (index = 0; index < DEBUG_STAGE_SELECT_ROW_COUNT; index++) {
                gDebugStageSelectOptionBaseOffsets[index] = 0;

                for (jndex = 0; jndex < index; jndex++) {
                    gDebugStageSelectOptionBaseOffsets[index] += gStageRowCounts[jndex];
                }
            }

            gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB = 0;
            gCurrentScene = 0;
            DebugStageSelect_DrawMenu();
            D_801376BD = 0;
            D_801376B9 = 1;
            D_801376A9 = 0xC0;
            D_801376AD = 0xC0;
            D_801376B1 = 0xC0;
            D_801376B5 = 0xFF;
            gGameStateSubState++;
            break;

        case 1:
            DebugMenu_UpdateCursorFlash();

            if (Input_CheckButtonRepeat(gButton_DUp, &gActors[DEBUG_STAGE_SELECT_REPEAT_UP_ACTOR_INDEX].colorB) != 0) {
                gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB--;
                if (gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB == 0xFF) {
                    gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB = DEBUG_STAGE_SELECT_ROW_COUNT - 1;
                }
                Sound_PlaySfx2(SFX_MENU_BLIP);
            }

            if (Input_CheckButtonRepeat(gButton_DDown, &gActors[DEBUG_STAGE_SELECT_REPEAT_DOWN_ACTOR_INDEX].colorB) != 0) {
                gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB++;
                if (gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB == DEBUG_STAGE_SELECT_ROW_COUNT) {
                    gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB = 0;
                }
                Sound_PlaySfx2(SFX_MENU_BLIP);
            }

            if (Input_CheckButtonRepeat(gButton_DLeft, &gActors[DEBUG_STAGE_SELECT_REPEAT_LEFT_ACTOR_INDEX].colorB) != 0) {
                selected_entry = &gDebugStageSelectSelectedOptions[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB];
                selected_value = *selected_entry;
                if (selected_value > 0) {
                    *selected_entry = selected_value - 1;
                    Sound_PlaySfx2(SFX_MENU_BLIP);
                }
            }

            if (Input_CheckButtonRepeat(gButton_DRight, &gActors[DEBUG_STAGE_SELECT_REPEAT_RIGHT_ACTOR_INDEX].colorB) != 0) {
                selected_entry = &gDebugStageSelectSelectedOptions[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB];
                selected_value = *selected_entry;
                if (selected_value <
                    (gStageRowCounts[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB] - 1)) {
                    *selected_entry = selected_value + 1;
                    Sound_PlaySfx2(SFX_MENU_BLIP);
                }
            }

            index = gDebugStageSelectOptionBaseOffsets[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB] +
                    gDebugStageSelectSelectedOptions[gActors[DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX].colorB];
            selected_index = index + 0;
            gCurrentStage = index;
            gCurrentScene = gStageScenes[selected_index];
            D_800D28E4 = gDebugStageSelectStageIds[selected_index];
            DebugStageSelect_DrawMenu(&gCurrentStage);

            if (gButtonPress & gButton_Start) {
                Sound_StopMusic();
                func_80043918();
                gGameStateSubState++;
            }
            break;

        case 2:
            D_800C5008 = 0;
            D_80171B18 = gCurrentStage;
            gGameState = GAMESTATE_TRANSITION;
            gGameStateSubState = 0x41;
            break;
    }
}

// convert from nibble-encoded time to counter 0x000MSSTt
s32 func_80019520(s32 time) {
    s32 temp_t0;
    s32 var_v1;
    s32 seconds_ones;
    s32 seconds_tens;
    s32 minutes;

    temp_t0 = ((((time & 0xF0) / 16) * 10) + (time & 0xF)) * 3;
    if ((temp_t0 % 5) < 2) {
        var_v1 = temp_t0 / 5;
    }
    else {
        var_v1 = (temp_t0 / 5) + 1;
    }
    seconds_ones = (((time & 0xF00) / 0x100) * 60);
    seconds_tens = (((time & 0xF000) / 0x1000) * 600);
    minutes = ((time & 0xF0000) / 0x10000 * 3600);

    return var_v1 + minutes + seconds_tens + seconds_ones;
}

void func_80019688(void) {
    s32 time_0;
    s32 time_1;
    s32 time_2;

    if (gCurrentStage == 0x21) {
        time_2 = func_80019520(gFestivalRecords[2]);
        time_1 = func_80019520(gFestivalRecords[1]);
        time_0 = func_80019520(gFestivalRecords[0]);
        gStageTime = func_80019520(gFestivalRecords[5]) + time_0 + time_1 + time_2;
        if (gFestivalRecords[3] < 1800) {
            gStageTime = (gStageTime - gFestivalRecords[3]) + 1800;
        }
        if (gFestivalRecords[4] < 1800) {
            gStageTime = (gStageTime - (gFestivalRecords[4] * 10)) + 1800;
        }
        if (gFestivalRecords[6] < 1800) {
            gStageTime = (gStageTime - (gFestivalRecords[6] * 10)) + 1800;
        }
    }
    gGamePaused = FALSE;
    gGameState = GAMESTATE_TRANSITION;
    gGameStateSubState = 8;
}

void func_800197A0(void) {
    D_80137714 = D_80137718 = (uintptr_t)ASSET_DEST5;
    D_800CBF50 = 0;
    DMA_ReadSync(
        (void*)((uintptr_t)rle_0047_3FAB30_011B1BF0 + (uintptr_t)Segment_01_ROM_START - (uintptr_t)Segment_01_DATA_START),
        RLE_SCRATCH_LOW,
        (uintptr_t)rle_0049_406880_011BD940_end - (uintptr_t)rle_0047_3FAB30_011B1BF0
    );
    
    D_80137718 = Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST5) + (uintptr_t)ASSET_DEST5;
    D_801376D4 = (uintptr_t)ASSET_DEST5_TABLE;
}

void func_8001983C(void) {
    gDrawMidground = 0;
    gDrawEnvLayer = 0;
    gDrawBackground = 0;
    func_800230B8();
    gActorDepthMiddle = -0x100;
    gActorDepthBack = -0x200;
    func_800197A0();
    D_8013747C = 1;
    D_800BE6A8 = 0;
    gCamShakeV = 0;
    gCamShakeTime = 0;
    func_800109B0();
}

void func_800198B4(void) {
    u16 end;
    u16 index;

    func_8001983C();
    Text_InitActorGraphic(0x30, 0x3002, 0, 0x50, 0);
    index = 0x31;
    Text_InitActorGraphic(index, 0x3000, 0, 0xFFB5, 0);
    gActors[index].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[index].colorR = 0x40;
    gActors[index].colorG = 0x40;
    gActors[index].colorB = 0x40;
    Text_InitActorGList(0x79, D_800C9648, 0xFF88, 0xFFB4, 0);
    end = Text_PrintStringGray(0x7C, D_800C8BE4[D_8017815C], D_800C8BF8[D_8017815C], 0x4E, 0);
    for (index = 0x7C; index < end; index++) {
        gActors[index].unk_18C = (s32)D_800C9664; // palette_18C doesn't match instruction ordering
    }
}

void func_800199DC(u16 arg0) {
    u16 index;

    for (index = 0x8C; index < 0x9C; index++) {
        gActors[index].flags = 0;
    }
    Text_PrintStringGray(0x8C, D_800C8CE8[D_8017815C][arg0], D_800C8D6C[D_8017815C][arg0], 0xFFB4, 0);
}

void func_80019A80(void) {
    u16 actor_index;
    u16 index;
    u16 temp_s1;

    func_800198B4();
    actor_index = 0xB5;
    Text_InitActorGraphic(actor_index++, 0x3010, 0xFF7B, 0xFFF2, 0xFFFF);
    for (index = 0; index < 5; index++) {
        Text_InitActorGraphic(actor_index++, 0x3012, ((index * 46) - 100), 2, 0xFFFF);
    }
    if (D_8017815C != 4) {
        Text_InitActorGraphic(actor_index, 0x3014, 0x80, 0x12, 0xFFFF);
    }
    if (D_8017815C != 0) {
        Text_InitActorGraphic(0xB4, 0x110, 0xFF78, 0xFFD0, 0);
        Text_InitActorGraphic(0x7A, 0x11A, 0xFF78, 0xFFDC, 0);
    }
    else {
        Text_InitActorGraphic(0xB4, 0x110, 0xFF78, 0xFFDC, 0);
    }
    if (D_8017815C < D_8017815E) {
        Text_InitActorGraphic(0x7B, 0x11E, 0x82, 0x30, 0);
    }

    actor_index = 0x39;
    for (index = 0; index < D_800C8C04[D_8017815C]; index++) {
        temp_s1 = D_800C8EDC[D_8017815C][index];
        Text_InitActorGraphic(actor_index, temp_s1, D_800C95F4[index], D_800C9610[index], 0);
        actor_index++;
        if ((temp_s1 == 0x3022) || (temp_s1 == 0x3026) || (temp_s1 == 0x302E) || (temp_s1 == 0x3034) || ((temp_s1 == 0x3036))) {
            Text_InitActorGraphic(actor_index++, 0x3006, D_800C95F4[index], D_800C9610[index], 0);
        }
        else {
            Text_InitActorGraphic(actor_index++, 0x3004, D_800C95F4[index], D_800C9610[index], 0);
        }
        if ((D_8017815C == 4) && (index == 9)) {
            gActors[actor_index - 1].posX.whole = 0x6E;
            gActors[actor_index - 2].posX.whole = gActors[actor_index - 1].posX.whole;
            gActors[actor_index - 1].posY.whole = 2;
            gActors[actor_index - 2].posY.whole = gActors[actor_index - 1].posY.whole;
        }
    }
    Text_InitActorGList(0x78, D_800C962C, 0xFF78, 2, 1);
    func_8001A584();
    if (D_80178152 != 0) {
        if (D_80178156 == 0) {
            func_800199DC(D_80178156);
            gActors[0x78].posX.whole = D_800C95F4[D_80178156] - 8;
        }
        else {
            func_800199DC(D_80178156 - 1);
            gActors[0x78].posX.whole = D_800C95F4[D_80178156 - 1];
        }
    }
    else {
        func_800199DC(D_80178156);
        gActors[0x78].posX.whole = D_800C95F4[D_80178156];
    }
}

void func_80019E48(void) {
    u16 index;

    index = 0x32;
    Text_InitActorGraphic(index, 0, 0, 0x3A, 1);
    gActors[index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;

    index = 0x33;
    Text_InitActorGraphic(index, 0, 0, 0xFFDA, 1);
    gActors[index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;
}

void func_80019EC4(void) {
    func_8008310C();
    func_80083454();
    func_80019A80();
    func_80019E48();
    func_8001A254();
}

void func_80019F04(u16 actor_index) {
    s32 index;
    if (D_800C81E0[0] == 0xFFFF) {
        Sound_PlaySfx2(0xA9);
        index = D_800C81E0[0] = (2 * actor_index + 0x39);
        gActors[index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX;
        gActors[index + 1].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX;
        gActors[index].rotateX = 0.0f;
        gActors[index].rotateZ = 0.0f;
        gActors[index + 1].rotateX = 0.0f;
        gActors[index + 1].rotateY = 0.0f;
        gActors[index + 1].rotateZ = 0.0f;
        gActors[index].rotateY = 180.0f;
    }
}

void func_80019FB4(u16 actor_index, u16 stage_index) {
    Text_PrintASCII(actor_index, D_800C8E58[D_8017815C][stage_index], D_800C95F4[stage_index] - 9, D_800C9610[stage_index] - 7, 1, gTextPalettes[0]);
    if (D_800C85E0 == D_800C8E58[D_8017815C][stage_index]) {
        gActors[actor_index + 0].posX.whole += 0x1F;
        gActors[actor_index + 1].posX.whole += 0x1D;
        gActors[actor_index + 2].posX.whole += 0x1A;
        gActors[actor_index + 3].posX.whole += 0x18;
        gActors[actor_index + 0].posY.whole = gActors[actor_index + 1].posY.whole = gActors[actor_index + 2].posY.whole = gActors[actor_index + 3].posY.whole = -1;
    }
    else if (stage_index >= 9) {
        gActors[actor_index + 1].posX.whole -= 2;
        gActors[actor_index + 2].posX.whole -= 6;
        gActors[actor_index + 3].posX.whole -= 8;
    }
}

void func_8001A15C(u16 index) {
    u16 actor_index;

    actor_index = D_800C81E0[0];
    if (actor_index == 0xFFFF) {
        return;
    }

    if (gActors[actor_index + 1].rotateX == 180.0f) {
        gActors[actor_index + 0].graphicFlags &= ~(ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX);
        gActors[actor_index + 1].flags = 0;
        D_800C81E0[0] = 0xFFFF;
        actor_index = D_800C95DC[index];
        func_80019FB4(actor_index, index);
    }
    else {
        gActors[actor_index + 0].rotateX += 9.0f;
        gActors[actor_index + 0].rotateZ += 9.0f;
        gActors[actor_index+ 1].rotateX += 9.0f;
        gActors[actor_index+ 1].rotateZ += 9.0f;
        if (gActors[actor_index + 1].rotateX == 90.0f) {
            gActors[actor_index + 0].posZ.whole = 1;
        }
    }
}

void func_8001A254(void) {
    u16 stage;
    u16 index;
    u16 y_offset;
    s16 string_index;
    u16 count;

    if (D_8017815E < D_8017815C) {
        count = 0;
    }
    else if (D_8017815C == D_8017815E) {
        if (D_80171B18 >= 0x3B) {
            count = 9;
        }
        else {
            count = D_80178158;
            if ((D_80178152 != 0) && (D_80171B18 != 0x38)) {
                if (D_80178156 == 0) {
                    count = 0;
                }
                else if (count != D_800C8C04[D_8017815C]) {
                    count++;
                }
            }
        }
    }
    else {
        count = D_800C8C04[D_8017815C];
        if (D_8017815C == 4) {
            count = 9;
        }
    }

    for (index = 0; index < count; index++) {
        stage = D_80178154 + index;
        if (stage >= 0x37) {
            stage++;
        }
        if (YellowGem_GetFlag(stage) != 0) {
            y_offset = (((index % 2) * 0x36) - 0x1B);
            Text_InitActorGList(index + 0x9C, gGraphicListGemIcon, D_800C95F4[index] + 6, D_800C9610[index] - y_offset, 0);
            gActors[index + 0x9C].scaleY = 0.75f;
            gActors[index + 0x9C].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_SCALE;
            gActors[index + 0x9C].scaleX = 0.75f;
            gActors[index + 0x9C].unk_18C = (s32)D_800D8C78; // palette_18C doesn't match instruction ordering
        }
        if (stage == 0x3A) {
            gActors[index + 0x9C].posX.whole = 0x37;
        }
        else {
            y_offset = (((index % 2) * 0x36) - 0x1B);
            string_index = func_8001A758(D_800C4F28[stage], stage);
            Text_PrintASCII(index + 0xA8, D_800C9680[string_index], D_800C95F4[index] - 4, D_800C9610[index] - y_offset, 0, gTextPalettes[1]);
        }
    }
}

void func_8001A584(void) {
    u16 stage_index;
    u16 stage_count;
    u16 actor_index;

    if (D_8017815E < D_8017815C) {
        stage_count = 0;
    }
    else if (D_8017815C == D_8017815E) {
        stage_count = D_80178158 + 1;
        if (D_80178152 != 0) {
            if (D_80178156 == 0) {
                stage_count = 0;
            }
            else if (D_80171B18 == 0x38) {
                stage_count--;
            }
        }
    }
    else {
        stage_count = D_800C8C04[D_8017815C];
    }

    for (stage_index = 0; stage_index < stage_count; stage_index++) {
        actor_index = (stage_index * 2) + 0x39;
        gActors[actor_index + 0].posZ.whole = 1;
        gActors[actor_index + 0].graphicFlags &= ~(ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX);
        gActors[actor_index + 1].flags = 0;

        actor_index = D_800C95DC[stage_index];
        func_80019FB4(actor_index, stage_index);
    }

    D_800C81E0[0] = 0xFFFF;
    gActors[0x78].posX.whole = D_800C95F4[D_80178156];
    for (actor_index = 0x8C; actor_index < 0x9B; actor_index++) {
        gActors[actor_index].flags = 0;
    }
    func_800199DC(D_80178156);
}

// returns the time rank of (stage) compared to (time)
// 0=S Rank, 1=A, 2=B, 3=C, 4=D
s16 func_8001A758(u16 time, u16 stage) {
    if (time < gStageTimesToBeat[stage]) {
        return 0;
    }

    if (time < gStageTimesToBeat[stage] + 1800) {
        return 1;
    }

    if (time < gStageTimesToBeat[stage] + 7200) {
        return 2;
    }

    if (time < gStageTimesToBeat[stage] + 18000 && time < 36000) {
        return 3;
    }

    return 4;
}

// print the Rank letter for (stage) based on (time)
void func_8001A7E0(s16 arg0, u16 arg1, u16 time, u16 stage, u16 arg4) {
    s16 index = func_8001A758(time, stage);
    func_8008379C(arg0, arg1, D_800C9694[index], arg4);
}

// print the Rank review for (stage) based on (time)
void func_8001A838(s16 arg0, u16 arg1, u16 time, u16 stage, u16 arg4) {
    s16 index = func_8001A758(time, stage);
    func_80083810(arg0, arg1, D_800C96A0[index], arg4);
}

void func_8001A890(void) {
    u16 var_v0;

    if (gStageTime < gStageTimeBest) {
        var_v0 = ((gFramesInScene / 4) % 4);
    }
    else {
        var_v0 = 1;
    }
    func_80083810(1, 4, D_800C9540, var_v0);
    func_8001A7E0(6, 4, gStageTime, gCurrentStage, var_v0);
    func_8001A838(9, 4, gStageTime, gCurrentStage, var_v0);
}

void func_8001A96C(void) {
    u16 stage_time;
    u16 value;
    s16 var_s0;

    if (gStageTime < gStageTimeBest) {
        var_s0 = (gFramesInScene / 4) % 4;
    }
    else {
        var_s0 = 1;
    }

    stage_time = gStageTime;
    if (((((stage_time % 60) * 0x1F4) / 3) % 100) < 0x32) {
        value = ((stage_time % 60) * 5) / 3;
    }
    else {
        value = (((stage_time % 60) * 5) / 3) + 1;
    }
    if (stage_time == 36000) {
        func_80083810(9, 5, D_800C9554, 0);
    }
    else {
        func_80083810(0xA, 5, D_800C9520, var_s0);

        func_8008379C(0xE, 5, (value / 10) + 0x51, var_s0);
        func_8008379C(0xF, 5, (value % 10) + 0x51, var_s0);
        stage_time /= 60;
        value = stage_time % 60;
        func_8008379C(0xB, 5, (value / 10) + 0x51, var_s0);
        func_8008379C(0xC, 5, (value % 10) + 0x51, var_s0);
        value = stage_time / 60;
        func_8008379C(9, 5, value + 0x51, var_s0);
    }
}

void func_8001ACA8(u16 arg0, u16 arg1, u16 arg2) {
    u16 stage_time;
    u16 value;

    if (arg2 == 0xFFFF) {
        stage_time = gStageTimeBest;
    }
    else {
        stage_time = D_800C4F28[arg2];
    }
    if (((((stage_time % 60) * 500) / 3) % 100) < 50) {
        value = ((stage_time % 60) * 5) / 3;
    }
    else {
        value = (((stage_time % 60) * 5) / 3) + 1;
    }
    if (stage_time == 0x8CA0) {
        func_80083810(arg0, arg1, D_800C9554, 0);
    }
    else {
        func_80083810(arg0 + 1, arg1, D_800C9520, 0);
        func_8008379C(arg0 + 5, arg1, (value / 10) + 0x51, 0);
        func_8008379C(arg0 + 6, arg1, (value % 10) + 0x51, 0);
        stage_time /= 60;
        value = stage_time % 60;
        func_8008379C(arg0 + 2, arg1, (value / 10) + 0x51, 0);
        func_8008379C(arg0 + 3, arg1, (value % 10) + 0x51, 0);
        stage_time /= 60;
        func_8008379C(arg0, arg1, stage_time + 0x51, 0);
    }
}

void func_8001B004(void) {
    func_8001ACA8(9, 6, 0xFFFF);
}

void func_8001B02C(void) {
    if ((gCurrentStage >= D_80171B18) && (D_80171B18 < 0x3B)) {
        gCurrentStage = gCurrentStage + 1;
        D_80171B18 = gCurrentStage;
        D_80178152 = 1;
    }
}

void func_8001B078(u16 arg0, u16* arg1, u16* arg2, u16* arg3) {
    u16 count;
    u16 index;

    for (index = 0, count = 0; index < 0x16; index++) {
        count += gStageRowCounts[index];
        if (arg0 < count) {
            break;
        }
    }

    switch (index) {
    case 2:
        *arg1 = 0;
        break;
    case 3:
    case 4:
        *arg1 = 1;
        break;
    case 6:
    case 7:
    case 8:
        *arg1 = 2;
        break;
    case 10:
    case 11:
    case 12:
        *arg1 = 3;
        break;
    case 14:
    case 15:
    case 16:
        *arg1 = 4;
        break;
    case 18:
    case 19:
        *arg1 = 5;
        break;
    default:
        *arg1 = 6;
        break;
    }

    if (*arg1 == 5) {
        *arg1 = 4;
        *arg3 = gStageGroupOptionOffsetsTail[0];
        *arg2 = (arg0 - *arg3) - 1;
    }
    else {
        *arg3 = gStageGroupOptionOffsets[*arg1];
        *arg2 = arg0 - *arg3;
    }
}

void func_8001B1A0(void) {
    func_8001B078(gCurrentStage, &D_8017815C, &D_80178156, &D_80178154);
    if (D_8017815C == 6) {
        gGameStateSubState = 0x41;
    }
}

void func_8001B1F8(void) {
    func_8001B02C();
    func_8001B1A0();
    D_80178160 = D_8017815C;
    D_8017815A = D_80178156;
}

void func_8001B23C(void) {
}

// count bits set in D_80171B10
u16 func_8001B244(void) {
    u64 bit_mask;
    u16 index;
    u16 count;

    bit_mask = 0x1;
    count = 0;
    for (index = 0; index < 63; index++) {
        if (D_80171B10 & bit_mask) {
            count++;
        }
        bit_mask <<= 1;
    }
    return count;
}

void func_8001B2F4(void) {
    s16 sp1E;

    sp1E = D_80171B18;
    gStageTimeBest = D_800C4F28[gCurrentStage];
    if (gStageTime < D_800C4F28[gCurrentStage]) {
        D_800C4F28[gCurrentStage] = gStageTime;
    }
    if (gCurrentStage == D_80171B18) {
        D_80171B18 = gCurrentStage + 1;
    }
    D_80171AD0[D_800C5008] = gRedGems;
    D_80171AD4[D_800C5008] = func_8001B244();
    D_80171AD8[D_800C5008] = gFramesInPlayTime;
    func_80005770();
    D_80171B18 = sp1E;
}

void func_8001B3D0(void) {
    u16 yellow_gem_count;
    u32 save_slot_index;

    D_80171B18 = gCurrentStage;
    D_80171AD0[D_800C5008] = gRedGems;
    yellow_gem_count = func_8001B244();
    save_slot_index = D_800C5008;
    D_80171AD4[save_slot_index] = yellow_gem_count;
    D_80171AD8[save_slot_index] = (u64)gFramesInPlayTime;
    func_80005770();
}

void GameState_Transition(void) {
    u16 temp;
    u16 index;

    func_8001B23C();
    Text_SetColor(0, 0x1F, 0x1F, 0x1F);
    Text_SetColor(1, 0x10, 0x1F, 0x1F);
    switch (gGameStateSubState) {
    case 0x0:
        if (func_80046EBC()) {
            gCurrentStage = D_80171B18;
            gGameStateSubState = 7;
        }
        break;
    case 0x7:
    case 0x8:
        temp = gGameStateSubState;
        func_8001B078(D_80171B18, &D_8017815C, &D_80178156, &D_80178154);
        if (D_8017815C == 6) {
            func_8001B078(D_80171B18 + 1, &D_8017815C, &D_80178156, &D_80178154);
        }
        D_8017815E = D_8017815C;
        D_80178158 = D_80178156;
        func_8001B1A0();
        D_80178152 = 0;
        if ((gGameStateSubState == 8) && (D_8017815C == 4) && (D_80178156 >= 8)) {
            gGameStateSubState = 0x41;
        }
        if (gGameStateSubState == 0x41) {
            if (gCurrentStage == 0) {
                func_8001B1F8();
                gGameStateSubState = 0x41;
            }
            else if (temp == 7) {
                Sound_StartFade(1, 0x18);
                gGameStateSubState = 0x42;
            }
            else {
                func_8001B2F4();
                func_8001B1F8();
                gGameStateSubState = 0x1E;
            }
        }
        else if (D_800CBF40 != 0) {
            gGameStateSubState = 0x1E;
        }
        else {
            gGameStateSubState = 9;
        }
        D_800CBF40 = 0;
        break;
    case 0x9:
        /* fallthrough */
    case 0x89:
        if (gGameStateSubState == 9) {
            func_8001B2F4();
        }
        func_8008310C();
        func_80083454();
        func_800198B4();
        D_80178154 = gStageGroupOptionOffsets[D_8017815C];
        if (gCurrentStage >= 0x38) {
            D_80178156 = (gCurrentStage - D_80178154) - 1;
        }
        else {
            D_80178156 = gCurrentStage - D_80178154;
        }
        func_800199DC(D_80178156);
        func_80019E48();
        func_80083810(0, 5, D_800C94E0, 0);
        func_80083810(0, 6, D_800C9500, 0);
        func_8001A890();
        func_8001A96C();
        func_8001B004();
        func_80083810(5, 0, D_800CA26C, 0);
        func_80083810(5, 1, D_800C952C, 0);
        Text_InitActorGList(0x78, D_800C962C, 0xFFC8, 0xFFEF, 1);
        if (YellowGem_GetFlag(gCurrentStage) != 0) {
            Text_InitActorGList(0x51, gGraphicListGemIcon, 0xFFA8, 0x3A, 0xFFFF);
            gActors[0x51].graphicFlags |= 0x240;
            gActors[0x51].unk_18C = (s32) D_800D8C78;
        }
        for (index = 0x30; index < 0x90; index++) {
            gActors[index].colorA = 0x4F;
        }
        for (index = 0; index < 0x40; index++) {
            gPortraits[index].alpha = 0xFE;
        }
        gPortraitTint = 0xFF;
        if (gGameStateSubState != 9) {
            Sound_StartFade(1, 0x28);
        }
        gGameStateSubState++;
        break;
    case 0xB:
    case 0x8B:
        func_8001A890();
        func_8001A96C();
        if ((gButtonPress & gButton_DUp) && (gActors[0x78].posY.whole != -0x11)) {
            Sound_PlaySfx(SFX_MENU_BLIP);
            gActors[0x78].posY.whole += 0x14;
        }
        if ((gButtonPress & gButton_DDown) && (gActors[0x78].posY.whole != -0x25)) {
            Sound_PlaySfx(SFX_MENU_BLIP);
            gActors[0x78].posY.whole -= 0x14;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            if (gActors[0x78].posY.whole == -0x11) { // unk3FCC: BFCC [0x78].0x8C
                Sound_PlaySfx(0x48);
                gGameStateSubState = 0xD;
            }
            else {
                gActors[0x78].var_154 = 0x30; // unk4094 = C094 [0x78].0x154
                Sound_StartFade(1, 0x30);
                Sound_PlaySfx(0x23);
                gGameStateSubState = 0xC;
            }
        }
        break;
    case 0xC:
        if (gActors[0x78].var_154-- == 0) {
            gGameState = GAMESTATE_SOFTRESET;
            gGameStateSubState = 0;
        }
        break;
    case 0xD:
        func_8001A890();
        func_8001A96C();
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x32].posX.whole == -0x120) {
            func_8001B1F8();
            if (gGameStateSubState == 0xD) {
                func_80019EC4();
                for (index = 0x30; index < 0xBC; index++) {
                    gActors[index].posX.whole += 0x100;
                }
                gGameStateSubState = 0xE;
            }
            else if (gGameStateSubState == 0x41) {
                Sound_StartFade(1, 0x18);
                gGameStateSubState = 0x42;
            }
        }
        break;
    case 0xE:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x32].posX.whole <= 0) {
            gGameStateSubState = 0x20;
        }
        break;
    case 0x1E:
        func_80019EC4();
        for (index = 0x30; index < 0x90; index++) {
            gActors[index].colorA = 0x4F;
        }
        for (index = 0; index < 0x40; index++) {
            gPortraits[index].alpha = 0xFE;
        }
        gPortraitTint = 0xFF;
        gGameStateSubState = 0x1F;
        break;
    case 0xA:
    case 0x8A:
        func_8001A890();
        func_8001A96C();
        /* fallthrough */
    case 0x1F:
        gPortraitTint -= 4;
        for (index = 0x30; index < 0x90; index++) {
            gActors[index].colorA += 4;
        }
        if (gPortraitTint == 0x4F) {
            gAudioFadeMode = 0;
            Sound_PlayMusic(BGM_STEPPIN);
            *D_800C81E0 = 0xFFFF;
            gGameStateSubState++;
        }
        break;
    case 0x20:
        if (D_80178152 != 0) {
            if (gActors[0x78].posX.whole < D_800C95F4[D_80178156]) {
                gActors[0x78].posX.whole++;
            }
            temp = ((gActors[0x78].posX.whole + 0x81) / 23);
            func_8001A15C(temp);
            if (((gActors[0x78].posX.whole + 0xE) % 23) == 0) {
                func_80019F04(temp);
                for (index = 0x8C; index < 0x9B; index++) {
                    gActors[index].flags = 0;
                }
                func_800199DC(temp);
            }
            if ((gActors[0x78].posX.whole >= D_800C95F4[D_80178156]) && (gActors[*D_800C81E0 + 1].rotateX == 180.0f)) {
                D_80178152 = 0;
                D_80178158 = D_8017815A;
                D_8017815E = D_80178160;
                gGameStateSubState++;
            }
        }
        else {
            gGameStateSubState++;
        }
        break;
    case 0x21:
        temp = ((gActors[0x78].posX.whole + 0x81) / 23);
        func_8001A15C(temp);
        temp = D_80178156;
        if (Input_CheckButtonRepeat(gButton_DLeft, &gActors[0xA].colorB) != 0) {
            temp--;
        }
        else if (Input_CheckButtonRepeat(gButton_DRight, &gActors[0xB].colorB) != 0) {
            temp++;
        }
        if (temp == 0xFFFF) {
            temp = 0;
        }
        if (temp >= D_800C8C04[D_8017815C]) {
            temp = (D_800C8C04[D_8017815C] - 1);
        }
        if (D_80171B18 >= 0x38) {
            index = ((D_80171B18 - D_80178154) - 1);
        }
        else {
            index = (D_80171B18 - D_80178154);
        }

        if ((index >= temp) && (temp != D_80178156)) {
            D_80178156 = temp;
            gActors[0x78].posX.whole = D_800C95F4[D_80178156]; // 0xBFC8 = [0x78].0x88
            Sound_PlaySfx2(SFX_MENU_BLIP);
            for (index = 0x8C; index < 0x9B; index++) {
                gActors[index].flags = 0;
            }
            func_800199DC(D_80178156);
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_StartFade(0x81, 0x50);
            Sound_PlaySfx(0xD2);
            gGameStateSubState = 0x30;
        }
        else if (gButtonPress & gButton_B) {
            Sound_PlaySfx(0x48);
            gGameStateSubState = 0x22;
        }
        else if ((gButtonPress & gButton_LTrig) && (D_8017815C != 0)) {
            Sound_PlaySfx(0x48);
            gGameStateSubState = 0x25;
        }
        else if ((gButtonPress & gButton_RTrig) && (D_8017815C < D_8017815E)) {
            Sound_PlaySfx(0x48);
            gGameStateSubState = 0x27;
        }
        break;
    case 0x22:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole += 0x20;
        }
        if (gActors[0x30].posX.whole >= 0x121) {
            gGameState = GAMESTATE_RECORDS;
            gGameStateSubState = 0;
        }
        break;
    case 0x23:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].flags = 0;
        }
        func_80019EC4();
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole += 0x120;
        }
        gGameStateSubState++;
        break;
    case 0x24:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x30].posX.whole == 0) {
            *D_800C81E0 = 0xFFFF;
            gGameStateSubState = 0x21;
        }
        break;
    case 0x25:
        for (index = 0x30; index < 0xBC; index++) {
             gActors[index].posX.whole += 0x20;
        }
        if (gActors[0x30].posX.whole >= 0x121) {
            D_8017815C--;
            D_80178154 = gStageGroupOptionOffsets[D_8017815C];
            D_80178156 = D_800C8C04[D_8017815C] - 1;
            for (index = 0x30; index < 0xBC; index++) {
                gActors[index].flags = 0;
            }
            func_80019EC4();
            for (index = 0x30; index < 0xBC; index++) {
                gActors[index].posX.whole -= 0x120;
            }
            gGameStateSubState++;
        }
        break;
    case 0x26:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole += 0x20;
        }
        if (gActors[0x30].posX.whole == 0) {
            *D_800C81E0 = 0xFFFF;
            gGameStateSubState = 0x21;
        }
        break;
    case 0x27:
        for (index = 0x30; index < 0xBC; index++) {
             gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x30].posX.whole < -0x120) {
            D_8017815C++;
            if (D_8017815C < D_8017815E) {
                D_80178154 = gStageGroupOptionOffsets[D_8017815C];
                D_80178156 = D_800C8C04[D_8017815C] - 1;
            }
            else {
                func_8001B078((u16) D_80171B18, &D_8017815C, &D_80178156, &D_80178154);
            }
            for (index = 0x30; index < 0xBC; index++) {
                gActors[index].flags = 0;
            }
            func_80019EC4();
            for (index = 0x30; index < 0xBC; index++) {
                gActors[index].posX.whole += 0x120;
            }
            gGameStateSubState++;
        }
        break;
    case 0x28:
        for (index = 0x30; index < 0xBC; index++) {
            gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x30].posX.whole == 0) {
            *D_800C81E0 = 0xFFFF;
            gGameStateSubState = 0x21;
        }
        break;
    case 0x30:
        gPortraitTint += 2;
        for (index = 0x30; index < 0x90; index++) {
            gActors[index].colorA -= 2;
        }
        if (gPortraitTint == 0xFF) {
            for (index = 0; index < 0x40; index++) {
                gPortraits[index].alpha = 0xFF;
            }
            func_800230B8();
            gGameStateSubState = 0x40;
        }
        break;
    case 0x40:
        func_800271B0(0);
        gCurrentStage = D_80178154 + D_80178156;
        if (gCurrentStage >= 0x37) {
            gCurrentStage++;
        }
        gGameStateSubState++;
        break;
    case 0x41:
        D_8013747C = 0;
        gAudioFadeMode = 0;
        gCurrentScene = gStageScenes[gCurrentStage];
        D_800D28E4 = gDebugStageSelectStageIds[gCurrentStage];
        func_80025578();
        if (gCurrentStage == 0x21) {
            func_8002601C(0x10);
            OverlayABI_Slot2_fn32_void();
        }
        gGameState = GAMESTATE_LOADING;
        gGameStateSubState = 0;
        D_800CBF40 = 0;
        break;
    case 0x42:
        if (gAudioFadeMode == 3) {
            gGameStateSubState = 0x41;
        }
        break;
    }
}

// sets bit if yellow gem was collected in this stage
void YellowGem_SetFlag(void) {
    D_80171B10 |= (u64)1 << gCurrentStage;
}

// returns bit if yellow gem was collected in this stage
u64 YellowGem_GetFlag(u16 stage) {
    u64 mask = (u64)1 << stage;

    return D_80171B10 & mask;
}

void func_8001C834(void) {
    u16 actor_index;

    actor_index = 0x32;
    Text_InitActorGraphic(actor_index, 0, 0xFFFC, 0x33, 1);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;

    actor_index = 0x33;
    Text_InitActorGraphic(actor_index, 0, 0xFFFC, 0xFFF7, 1);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
}

void func_8001C8B0(u16 arg0, u16 stage) {
    u16 sp2E;
    u16 sp2C;
    u16 sp2A;

    func_8001B078(stage, &sp2E, &sp2C, &sp2A);
    func_8008379C(1, arg0, D_800C96C4[sp2E + 11], 2);
    func_8008379C(2, arg0, 0x70, 2);
    func_8008379C(3, arg0, D_800C96C4[sp2C + 11], 2);
    func_8001ACA8(5, arg0, stage);
    func_8001A7E0(0xD, arg0, D_800C4F28[stage], stage, 1);
}

void func_8001C97C(u16 actor, u16 stage) {
    if (YellowGem_GetFlag(stage) != 0) {
        Text_InitActorGList(actor + 0x48, gGraphicListGemIcon, 108, 52 - (actor * 20), 0xFFFF);
        gActors[actor + 0x48].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK6;
        gActors[actor + 0x48].palette_18C = D_800D8C78;
    }
    else {
        gActors[actor + 0x48].flags = 0;
    }
}

void func_8001CA68(void) {
    u16 index;

    for (index = 0; index < 7; index++) {
        gActors[index + 72].flags = 0;
    }
}

void func_8001CAA8(u16 stage) {
    u16 index;
    u16 sp34;
    u16 sp32;
    u16 sp30;

    for (index = 0; index < 7; index++) {
        func_8001B078(stage, &sp34, &sp32, &sp30);
        if (sp34 >= 6) {
            stage++;
        }
        stage++;
    }
    stage--;
    func_8001C8B0(6, stage);
    func_8001C97C(6, stage);
}

void func_8001CB6C(u16 stage) {
    u16 index;
    u16 sp34;
    u16 sp32;
    u16 sp30;

    for (index = 0; index < 7; index++) {
        func_8001B078(stage, &sp34, &sp32, &sp30);
        if (sp34 >= 6) {
            stage++;
        }
        func_8001C97C(index, stage++);
    }
    func_8001C8B0(6, --stage);
}

u16 func_8001CC34(void) {
    u16 stage;

    stage = D_80171B18;
    if ((stage == 0x18) || (stage == 0x25) || (stage == 0x31) || (stage == 0x38)) {
        stage--;
    }

    if (stage < 0x3A) {
        return stage;
    }
    else {
        return 0x3A;
    }
}

u16 func_8001CC8C(void) {
    u16 stage;
    u16 index;
    u16 sp3A;
    u16 sp38;
    u16 sp36;

    stage = gActors[0x70].var_154;
    for (index = 0; index < 6; index++) {
        func_8001B078(stage, &sp3A, &sp38, &sp36);
        if (sp3A >= 6) {
            stage++;
        }
        stage++;
    }
    return stage;
}

void func_8001CD30(u16 stage) {
    u16 stage_limit;
    u16 sp3C;
    u16 sp3A;
    u16 sp38;
    u16 index;

    stage_limit = func_8001CC34();
    for (index = 0; index < 6; index++) {
        if (stage >= stage_limit) {
            break;
        }
        func_8001B078(stage, &sp3C, &sp3A, &sp38);
        if (sp3C >= 6) {
            stage++;
        }
        func_8001C8B0(index, stage);
        func_8001C97C(index, stage);
        stage++;
    }
}

void func_8001CE04(void) {
    u16 sp26;

    if (gGameStateSubState >= 0x81) {
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A) || (gButtonPress & gButton_B)) {
            func_8001CA68();
            sp26 = func_8001CC34();
            gActors[0x70].var_154 = sp26 - 8;
            while (func_8001CC8C() < sp26) {
                gActors[0x70].var_154++;
            }
            func_8001CD30(gActors[0x70].var_154);
            gActors[0x32].posY.whole = 0x20;
            gActors[0x33].posY.whole = -0x1C;
            Sound_PlaySfx(0x23);
            gGameStateSubState = 0x10;
        }
    }
}

void func_8001CF14(u16 stage) {
    u16 stage_limit;
    u16 sp3C;
    u16 sp3A;
    u16 sp38;
    u16 index;

    stage_limit = func_8001CC34();
    for (index = 0; index < 6; index++) {
        if (stage >= stage_limit) {
            break;
        }
        func_8001B078(stage, &sp3C, &sp3A, &sp38);
        if (sp3C >= 6) {
            stage++;
        }
        func_8001C8B0(index, stage);
        stage++;
    }
}

void func_8001CFDC(void) {
    u16 sp1E;
    u16 sp1C;
    u16 sp1A;

    gActors[0x70].var_154++;
    func_8001B078(gActors[0x70].var_154, &sp1E, &sp1C, &sp1A);
    if (sp1E >= 6) {
        gActors[0x70].var_154++;
    }
}

void func_8001D040(void) {
    u16 sp1E;
    u16 sp1C;
    u16 sp1A;

    gActors[0x70].var_154--;
    func_8001B078(gActors[0x70].var_154, &sp1E, &sp1C, &sp1A);
    if (sp1E >= 6) {
        gActors[0x70].var_154--;
    }
}

u16 func_8001D0A4(void) {
    s32 var_s3;
    s32 times;
    u16 limit;
    u16 sp4C;
    u16 sp4A;
    u16 sp48;
    u16 index;

    limit = func_8001CC34();
    D_80178168 = 0;
    for (index = 2, times = var_s3 = 0; index < limit; index++) {
        func_8001B078(index, &sp4C, &sp4A, &sp48);
        if (sp4C < 6) {
            D_80178168 += D_800C4F28[index];
            times += gStageTimesToBeat[index];
            var_s3++;
        }
    }
    if (D_80178168 < times) {
        return 0x566;
    }
    if (D_80178168 < (var_s3 * 1800) + times) {
        return 0x542;
    }
    if (D_80178168 < (var_s3 * 7200) + times) {
        return 0x544;
    }
    if (D_80178168 < (var_s3 * 18000) + times) {
        return 0x546;
    }
    return 0x548;
}

void func_8001D240(void) {
    u32 time;
    u32 value;
    u16 var_a1;

    var_a1 = func_8001D0A4();
    time = D_80178168;
    Text_InitActorGraphicRGB(0x3C, var_a1, 0x5A, 0xFFB8, 2, 0, 0, 0xC0);
    if (((((time % 60) * 0x1F4) / 3) % 100) < 0x32) {
        value = ((time % 60) * 5) / 3;
    }
    else {
        value = (((time % 60) * 5) / 3) + 1;
    }
    Text_PrintStringRGBScale(0x3D, D_800C96C4, 0xFFAA, 0xFFB8, 2, 0, 0, 0, 1.0f, 1.0f);
    Text_InitActorGraphic(0x41, ((value / 10) * 2) + 0x414, 0x2A, 0xFFB8, 2);
    Text_InitActorGraphic(0x42, ((value % 10) * 2) + 0x414, 0x3A, 0xFFB8, 2);
    time /= 60;
    value = time % 60;
    Text_InitActorGraphic(0x43, ((value / 10) * 2) + 0x414, 0xFFFA, 0xFFB8, 2);
    Text_InitActorGraphic(0x44, ((value % 10) * 2) + 0x414, 0xA, 0xFFB8, 2);
    time /= 60;
    value = time % 60;
    Text_InitActorGraphic(0x45, ((value / 10) * 2) + 0x414, 0xFFCA, 0xFFB8, 2);
    Text_InitActorGraphic(0x46, ((value % 10) * 2) + 0x414, 0xFFDA, 0xFFB8, 2);
    time /= 60;
    Text_InitActorGraphic(0x47, (time * 2) + 0x414, 0xFFAA, 0xFFB8, 2);
}

void func_8001D5B8(s16 arg0) {
    u16 index;

    for (index = 0x48; index < 0x4F; index++) {
        gActors[index].posY.whole += arg0;
    }
}

void func_8001D60C(s16 arg0) {
    gActors[50].posY.whole += arg0;
    gActors[51].posY.whole += arg0;
    func_8001D5B8(arg0);
}

void GameState_Records(void) {
    u16 count;
    u16 temp_a0;
    u16 index;

    temp_a0 = func_8001CC34();
    switch (gGameStateSubState) {
    case 0x0:
        func_8008310C();
        func_80083454();
        func_8001983C();
        Text_InitActorGraphic(0x30, 0x3002, 0, 0x4C, 2);
        Text_InitActorGraphic(0x31, 0x3002, 0, 0xFFB9, 2);
        func_8001C834();
        gActors[0x32].posX.whole = gActors[0x33].posX.whole = 2;
        gActors[0x32].posY.whole = 0x20;
        gActors[0x33].posY.whole = -0x1C;
        count = Text_PrintStringGray(0x34, D_800C96B4, 0xFFE8, 0x4B, 2);
        for (index = 0x34; index < count; index++) {
            gActors[index].unk_18C = (s32)D_800C9664; // palette_18C causes mismatch
        }
        func_8001D240();
        gActors[0x70].var_154 = 2;
        func_8001CD30(2);
        for (index = 0x30; index < 0x4F; index++) {
            gActors[index].posX.whole -= 0x120;
        }
        gGameStateSubState = 8;
        break;
    case 0x8:
        for (index = 0x30; index < 0x4F; index++) {
            gActors[index].posX.whole += 0x20;
        }
        if (gActors[0x30].posX.whole == 0) {
            gGameStateSubState = 0x90;
        }
        break;
    case 0x90:
        if (func_8001CC8C() < temp_a0) {
            func_8001CAA8(gActors[0x70].var_154);
            func_8001D60C(4);
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gGameStateSubState = 0x98;
        }
        else {
            gGameStateSubState = 0x10;
        }
        func_8001CE04();
        break;
    case 0x10:
        if (gButtonHold & gButton_DDown) {
            if (func_8001CC8C() < temp_a0) {
                func_8001CAA8(gActors[0x70].var_154);
                func_8001D60C(4);
                Sound_PlaySfx2(SFX_MENU_BLIP);
                gGameStateSubState = 0x18;
            }
        }
        if ((gButtonHold & gButton_DUp) && (gActors[0x70].var_154 >= 3)) {
            func_8001D040();
            func_8001CB6C(gActors[0x70].var_154);
            func_8001D60C(0x10);
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gGameStateSubState = 0x20;
        }
        if ((gButtonPress & gButton_B) || (gButtonPress & gButton_A) || (gButtonPress & gButton_Start)) {
            Sound_PlaySfx(0x48);
            gGameStateSubState = 0xF0;
        }
        break;
    case 0x18:
    case 0x98:
        func_8001D60C(4);
        if (gActors[0x32].posY.whole == 0x30) {
            func_8001CFDC();
            gActors[0x32].posY.whole = 0x1C;
            gActors[0x33].posY.whole = -0x20;
            gGameStateSubState += 1;
        }
        func_8001CE04();
        break;
    case 0x19:
    case 0x99:
        func_8001D60C(4);
        func_8001CD30(gActors[0x70].var_154);
        gGameStateSubState -= 9;
        func_8001CE04();
        break;
    case 0x20:
        func_8001D60C(-4);
        func_8001CF14(gActors[0x70].var_154);
        gGameStateSubState = 0x21;
        break;
    case 0x21:
        func_8001D60C(-4);
        if (gActors[0x32].posY.whole == 0x20) {
            gActors[0x4E].flags = 0;
            gGameStateSubState = 0x10;
        }
        break;
    case 0xF0:
        for (index = 0x30; index < 0x4F; index++) {
            gActors[index].posX.whole -= 0x20;
        }
        if (gActors[0x30].posX.whole < -0x120) {
            gGameState = GAMESTATE_TRANSITION;
            gGameStateSubState = 0x23;
        }
        break;
    }
}
