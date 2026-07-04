#ifndef DATA_SYMBOLS_H
#define DATA_SYMBOLS_H

#include "common.h"
#include "inttypes.h"

extern u16 D_800D28E4;
extern u16 gStageCinemaState; // state for cinematics (intro/dialog/outro) for stages.
extern u16 gStageTime; // time in current stage. does not count time during cutscenes.
extern u16 gStageTimeBest;
extern u16 D_800D28F0;
extern u32 D_800D28FC;
extern u16 gSkipStageIntro; // skip stage intros. set during "continue" and "attract" states.
extern s32 D_800D2928;
extern s32 D_800D2938;
extern s16 D_800D294C;
extern u16 D_800D8588[];
extern u16 D_800E3580;
extern u32 D_800E3584; // nearest actor facing
extern s16 D_801370D0;
extern s16 D_801370D2;
extern u16 D_801370D4;
extern u16 D_801370D8[];
extern s16 D_801371D8[];
extern s16 D_801372D8[];
extern u16* D_801376A0;
extern u8 D_801376BC[];
extern u32 D_801376D4;
extern u32 D_80137714;
extern u32 D_80137718;
extern u64 D_80171B10;
extern u64 D_801781F0;
extern FestivalStruct gFestivalData; // data related mostly to Festival Games.
extern u16 gAudioFadeMode;
extern s32 D_800BE73C;
extern u16 D_800CA230;
extern u16 D_800CA26C[];
extern u16 D_800CBF40;
extern u16 D_800CBF50;
extern u8 D_800CC428;
extern u16 D_800D16C4[];
extern u16 D_800D1A04[];
extern u16 D_800D22BC[];
extern u8 D_800D24D8[];
extern u8 D_800D24F0;
extern s32 D_800D2504[];
extern u16 D_800D2690[]; // grouped by step count 3 (0x6 bytes)
extern s16 D_800D26F4[];
extern f32 D_800D2904;
extern s16 D_800D2924;
extern s32 D_800D292C;
extern s32 D_800D2930;
extern s32 D_800D2934;
extern u16 D_800D2954;
extern u16 D_800D2960;
extern u16 D_800D5820;
extern u16 D_800D5824;
extern u16 D_800D5828;
extern u16 D_800D582C;
extern s16 D_800D5830;
extern s16 D_800D5834;
extern u16 D_800D88B8[]; // guess
extern u16 D_800D8A98[];
extern u16 D_800D8C78[]; // guess
extern u32 D_800E0648[];
extern u8 D_800E1180[];
extern s16 gGraphicListBlank[]; // default graphics list. contains {0,0}
extern s16 gGraphicListGemIcon[];
extern s16 D_800E1540[];
extern s16 D_800E154C[]; // graphic index for "!" bubble
extern s16 D_800E156C[];
extern s16 D_800E158C[];
extern s16 gGraphicListGem[]; // gem graphics list
extern s16 D_800E1700[];
extern u8 D_800E19FC[];
extern u8 D_800E1A20[];
extern s16 D_800E3488[];
extern u16 D_800E3518[];
extern u32 D_800E352C[];
extern s16 D_800E45D0[];
extern s16 D_800E4698[];
extern s16 D_800E574C[];
extern s16 D_800E57D4[];
extern u32 D_800E58D4[];
extern u16 D_800E58F0[];
extern s16 D_800E5910[];
extern s16 D_800E5938[];
extern s16 D_800E5970[];
extern s16 D_800E59E0[];
extern s16 D_800F4268;
extern s32 D_800F43A8;
extern s16 D_800F43B0;
extern s32 D_800F7510;
extern u16 gLetterboxMode;
extern u16 gRedGems;

// func_8000147C
extern s8 D_801373F0;
extern u16 D_8013747C; // determines if "top" group of actors are drawn before or after portraits (i.e during world map)
extern u16 gActorsBack[128]; // indecies of actors to draw in the "back" 
extern u16 gActorsMiddle[128]; // indecies of actors to draw in middle (not drawn if D_800be674 is set)
extern u16 gActorsFront[240]; // indecies of actors to draw in "front"
extern u16 gActorsTop[240]; // indecies of actors to draw at the "top" (either before or after "portraits", depending on D_8013747c)

extern UnkStruct_D_801373E0 D_801373E0;
extern s8 D_801373F2;
extern u32 D_80137458;

#endif
