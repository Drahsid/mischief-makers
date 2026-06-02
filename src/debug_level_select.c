#include "common.h"
#include "17A70.h"
#include "actor.h"
#include "data_symbols.h"
#include "debug_level_select.h"
#include "input.h"

#define DEBUG_STAGE_SELECT_ROW_COUNT 22
#define DEBUG_STAGE_SELECT_COLUMN_ROWS 11
#define DEBUG_STAGE_SELECT_OPTION_TEXT_LENGTH 24
#define DEBUG_STAGE_SELECT_CURSOR_ACTOR_INDEX 7
#define DEBUG_STAGE_SELECT_REPEAT_UP_ACTOR_INDEX 8
#define DEBUG_STAGE_SELECT_REPEAT_DOWN_ACTOR_INDEX 9
#define DEBUG_STAGE_SELECT_REPEAT_LEFT_ACTOR_INDEX 10
#define DEBUG_STAGE_SELECT_REPEAT_RIGHT_ACTOR_INDEX 11

extern u8 D_800C5008;
extern u8 D_80171B18;
extern u8 D_801376A9;
extern u8 D_801376AD;
extern u8 D_801376B1;
extern u8 D_801376B5;
extern u8 D_801376B9;
extern u8 D_801376BD;

void Sound_StopMusic(void);
s32 Sound_PlaySfx2(u32 arg0);
void func_80043918(void);
void func_8008391C(char* text, s32 x, s32 y, s32 red, s32 green, s32 blue, s32 alpha, f32 scale_x, f32 scale_y);

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

// referenced in char*[] at 0x800c8d80. incomplete split?
char D_800C84EC[] = "1-1";

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
