#ifndef DATA_SYMBOLS_H
#define DATA_SYMBOLS_H

#include <PR/ultratypes.h>
#include "common_structs.h"
#include "inttypes.h"

extern u16 D_800D28E4;
extern u16 gStageState; // state for stages, determining cinematics, actor spawns, level logic, etc.
extern u16 gStageTime; // time in current stage. does not count time during cutscenes.
extern u16 gStageTimeBest;
extern u16 D_800D28F0;
extern s16 D_800D28F8;
extern u32 D_800D28FC;
extern u16 gSkipStageIntro; // skip stage intros. set during "continue" and "attract" states.
extern s32 gStageTimer;
extern s32 gTransitionState;
extern u16 D_800D294C;
extern u16 gGuestActorIndex;
extern s16 gNoHit; // set to current HP at start of stage. set to -1 when hit
extern u16 D_800D84E8[]; // palette
extern u16 D_800D8508[]; // palette
extern u16 D_800D8528[]; // palette
extern u16 D_800D8548[]; // palette
extern u16 D_800D8588[]; // all-white palette
extern u16 D_800D8608[]; // palette
extern u16 D_800D8628[]; // palette
extern u16 D_800D86A0[]; // palette
extern u16 D_800D9284[]; // palette
extern u16 D_800D9474[]; // palette
extern u16 D_800D9AE4[];
extern s16 D_800E13FC[]; // icon for head menus
extern u16 D_800E3580;
extern u32 D_800E3584; // nearest actor facing
extern s32 D_800E3630[]; // could be array of structs of length 0x28
extern s16 D_801370D0; //index for position/graphic arrays in unused after-image state
extern s16 D_801370D2;
extern u16 D_801370D4;
extern u16 D_801370D8[]; // Marina graphic history. used for unused after-image state
extern s16 D_801371D8[]; // Marina X-position history. used for unused after-image state
extern s16 D_801372D8[]; // Marina Y-position history. used for unused after-image state
extern s16 D_801373EC;
extern u16 D_80137480[];
extern u16 D_801374F0[]; // source of texture images
extern u16 D_80137580[]; // source of texture images
extern u16 D_80137610[]; // source of texture images
extern u16* D_8013769C; // palette
extern u16* D_801376A0; // palette
extern u16* D_801376A4; // palette
extern u8 D_801376A8[4];
extern u8 D_801376AC[4];
extern u8 D_801376B0[4];
extern u8 D_801376B4[4];
extern u8 D_801376B8[4];
extern u8 D_801376BC[4];
extern u16** D_801376C0;
extern u16** D_801376C4;
extern u16** D_801376C8;
extern u16** D_801376CC;
extern u16** D_801376D0;
extern u16** D_801376D4;
extern u16** D_801376D8;
extern Gfx** D_801376DC;
extern Gfx** D_801376EC;
extern Gfx** D_801376F4;
extern Gfx** D_801376FC;
extern Gfx** D_80137704;
extern Gfx** D_8013770C;
extern Gfx** D_80137714;
extern Gfx** D_8013771C;
extern u32 D_80137718;

extern u64 gYellowGemBitfield;
extern u64 gYellowGemTemp; // state for yellow gem bitfield on entering stage.
extern u16 D_801782B8;
extern u16 gAudioFadeMode;
extern s32 D_800BE73C;
extern u16 D_800CBF50;
extern u16 D_800D16C4[];
extern u16* gGemPalettes[]; // palettes of gems
extern u16 D_800D1A04[];
extern u16 gClanballDrops[]; // LUT of Clanball items. {0x110, 0xD8, type}
extern s16 D_800D26F4[];
extern u16 D_800D2714[];
extern s16 D_800D271C[];
extern u16 gClanpotItems[0xa0]; // clanpot storage. written backwards, starting from last 5 spaces. {index+flags, var_110, var_0D8, type, icon}

// counts for items in clanpot. checked for mixing.
// indices of items counted:
// 0x00: rocketeers needed for rideable rocketeer.
// 0x10: round bomb
// 0x11: elliptical bomb
// 0x12: flower
// 0x13: hat
// 0x14: shuriken
// 0x15: red gem
// 0x16: blue gem
// 0x17: yellow gem
// 0x18: green gem
extern u8 gClanpotItemCount[26];
extern f32 D_800D2904;
extern s16 D_800D2924;
extern s32 gTransitionPortraitIndex;
extern s32 D_800D2930;
extern s32 D_800D2934;
extern u16 D_800D2954;
extern u16 D_800D2960;
extern u16 D_800D3B74;
extern u16 D_800D5820;
extern u16 D_800D5824;
extern u16 D_800D5828;
extern u16 D_800D582C;
extern s16 D_800D5830;
extern s16 D_800D5834;
extern u16 gPaletteGemRed[];
extern u16 gPaletteGemGreen[];
extern u16 gPaletteGemYellow[];
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
extern s16 D_800E25B0[];
extern s16 D_800E2600[];
extern u16 D_800E31EC[];
extern u16 D_800E334C[];
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
extern u16 gRedGems;

// func_8000147C
extern u16 D_8013747C; // determines if "top" group of actors are drawn before or after portraits (i.e during world map)
extern s16 gActorsBack[128]; // indices of actors to draw in the "back" 
extern s16 gActorsMiddle[128]; // indices of actors to draw in middle (not drawn if D_800be674 is set)
extern s16 gActorsFront[240]; // indices of actors to draw in "front"
extern s16 gActorsTop[240]; // indices of actors to draw at the "top" (either before or after "portraits", depending on D_8013747c)

extern PlayerData gPlayerData;

// soft_reset.c bss
extern u16 D_801781F8; // some control lock? read in func_80048740. always 0.
extern u8 D_801781FA[2];
extern u8 D_801781FC[4];
extern u8 D_80178200[8];
extern u8 D_80178208[8];
extern u8 D_80178210[8];
extern u8 D_80178218[8];
extern u16 D_80178222;
extern u8 D_8017822A[2];
extern u8 D_8017822C[4];
extern u16* D_80178288;
extern u8 D_8017828D; // align byte?
extern u8 D_80178292;
extern u8 D_8017829C[4]; // unused?

#endif
