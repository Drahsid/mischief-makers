#include "common.h"
#include "actor.h"
#include "dma.h"
#include "data_symbols.h"
#include "debug_level_select.h"
#include "input.h"
#include "linker.h"
#include "rle.h"


extern ActorFunc D_80192000[];
extern ActorFunc D_8019B000[];
extern ActorFunc D_801A6800[];
extern ActorFunc D_801B0800[];

extern u16 D_800C4F28[]; // list of stage times
extern u16 D_800C81E0[];
extern char D_800C85E0[]; // "5-10" - last string stage ID
extern u16* D_800C8BE4[];
extern u16 D_800C8BF8[];
extern u16 D_800C8C04[];
extern u16** D_800C8CE8[];
extern u16* D_800C8D6C[];
extern char** D_800C8E58[]; // array of array of string stage IDs
extern u16* D_800C8EDC[];
extern u16 D_800C9520[];
extern u16 D_800C9540[]; // guess
extern u16 D_800C9554[];
extern u16 D_800C95DC[]; /* = { // array of actor indexes 
    0x0051, 0x0054, 0x0057, 0x005A, 0x005D, 0x0060, 0x0063, 0x0066, 0x0069, 0x006C, 0x0070
}; */
extern s16 D_800C95F2[];
extern s16 D_800C95F4[];
extern s16 D_800C9610[];
extern s16 D_800C962C;
extern s16 D_800C9648;
extern u16 D_800C9664[];
extern char* D_800C9680[]; // array of strings
extern s16 D_800C9694[];
extern u16* D_800C96A0[];
extern u16 D_800C96C4;
extern u16 D_800C96DA[];
extern u8 D_800C5008;
extern u16 D_800D1790[]; // palette

extern u16 D_80171AD0[];
extern u16 D_80171AD4[];
extern u64 D_80171AD8[];
extern u64 D_80171B10; // bitfield of yellow gem collection
extern u8 D_80171B18; // related to gCurrentStage
extern u16 D_80178154;
extern u16 D_80178156;
extern u16 D_80178158;
extern u16 D_8017815A;
extern u16 D_8017815C;
extern u16 D_8017815E;
extern u16 D_80178160;
extern u32 D_80178168;

extern u8 D_801376A9;
extern u8 D_801376AD;
extern u8 D_801376B1;
extern u8 D_801376B5;
extern u8 D_801376B9;
extern u8 D_801376BD;

extern u8 D_800E9634[];
extern u8 D_800E9654[];
extern u8 D_800E9720[];

extern u16 D_80178152;

void func_800955F4(u16 actor_index);
void func_80096104(u16 actor_index);
void func_8009672C(u16 actor_index);
void func_8009691C(u16 actor_index);
void func_800969F4(u16 actor_index);
void func_800969FC(u16 actor_index);
void func_80096A04(u16 actor_index);
void func_80096A0C(u16 actor_index);
void func_80096A14(u16 actor_index);
void func_80005770(void);
void func_80019A80(void);
void func_80019E48(void);
void func_8001A254(void);
s16 func_8001A758(u16 time, u16 stage);
void func_8001B02C(void);
void func_8001B1A0(void);
u16 func_8001B244(void);
void Sound_StopMusic(void);
s32 Sound_PlaySfx2(u32 arg0);
void func_80043918(void);
void func_80083454(void);
void func_8008379C(s16 arg0, s16 arg1, s16 arg2, s16 arg3);
void func_80083810(s16 arg0, s16 arg1, u16* arg2, s16 arg3);
void func_8008391C(char* text, s32 x, s32 y, s32 red, s32 green, s32 blue, s32 alpha, f32 scale_x, f32 scale_y);


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
    D_80137714 = D_80137718 = (u32)ASSET_DEST5;
    D_800CBF50 = 0;
    DMA_ReadSync((void*)((u32)rle_0047_3FAB30_011B1BF0 + (u32)Segment_01_ROM_START - (u32)Segment_01_DATA_START),
                 RLE_SCRATCH_LOW, (u32)rle_0049_406880_011BD940_end - (u32)rle_0047_3FAB30_011B1BF0);
    D_80137718 = Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST5) + (u32)ASSET_DEST5;
    D_801376D4 = (u32)ASSET_DEST5_TABLE;
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
    Text_InitActorGList(0x79, &D_800C9648, 0xFF88, 0xFFB4, 0);
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
    Text_InitActorGList(0x78, &D_800C962C, 0xFF78, 2, 1);
    func_8001A584();
    if (D_80178152 != 0) {
        if (D_80178156 == 0) {
            func_800199DC(D_80178156);
            gActors[0x78].posX.whole = D_800C95F4[D_80178156] - 8;
        }
        else {
            func_800199DC(D_80178156 - 1);
            gActors[0x78].posX.whole = D_800C95F2[D_80178156];
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
void func_8001A7E0(s16 arg0, u16 arg1, u16 time, u16 stage, s16 arg4) {
    func_8008379C(arg0, arg1, D_800C9694[func_8001A758(time, stage)], arg4);
}

// print the Rank review for (stage) based on (time)
void func_8001A838(s16 arg0, u16 arg1, u16 arg2, u16 arg3, s16 arg4) {
    func_80083810(arg0, arg1, D_800C96A0[func_8001A758(arg2, arg3)], arg4);
}

#ifdef NON_MATCHING
// need to resolve types of parameters
// func_8001A890 matches if func_8001A7E0/func_8001A838 arg4 are u16
// https://decomp.me/scratch/i3dTx
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A890.s")
#endif

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
    } else {
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

// need to figure out .rodata for jump table
void func_8001B078(u16, u16*, u16*, u16*);
#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001B078.s")

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

// need to figure out .rodata for jump table
#pragma GLOBAL_ASM("asm/nonmatchings/1A120/GameState_Transition.s")

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
    func_8008379C(1, arg0, D_800C96DA[sp2E], 2);
    func_8008379C(2, arg0, 0x70, 2);
    func_8008379C(3, arg0, D_800C96DA[sp2C], 2);
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
    Text_PrintStringRGBScale(0x3D, &D_800C96C4, 0xFFAA, 0xFFB8, 2, 0, 0, 0, 1.0f, 1.0f);
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

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/GameState_Records.s")
