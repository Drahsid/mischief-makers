#ifndef DATA_SYMBOLS_H
#define DATA_SYMBOLS_H

#include "actor.h"
#include "inttypes.h"
#include "unknown_structs.h"
#include <ultra64.h>

typedef uint32_t UNK_TYPE;
typedef uint32_t UNK_POINTER;

extern float D_800BCCD0[1024]; // looks to be a lookup table of values from 1.0 to -1.0. decends and ascends several times
extern float D_800BDCD0[512];  // second lookup table, 1.0 to -0.99998. unused?
extern UNK_TYPE D_0040AC80;
extern UNK_TYPE D_05095C98;
extern uint16_t gGamePaused;
extern uint16_t gGameState;
extern uint16_t gGameSubState;
extern float gAtX;
extern float gAtY;
extern float gAtZ;
extern float gUpX;
extern float gUpY;
extern float gUpZ;
extern float gEyeX;
extern float gEyeY;
extern float gEyeZ;
extern UNK_TYPE D_800BA9E0;
extern UNK_TYPE D_800BAAB0;
extern uint16_t D_800BE4D0;
extern uint16_t D_800BE4D4;
extern uint16_t D_800BE4D8;
extern uint16_t D_800BE4E0;
extern uint16_t D_800BE4E4;
extern int16_t D_800BE4EC;
extern uint16_t gButtonHold;
extern uint16_t gButtonPress;
extern uint16_t gButton_Start;
extern uint16_t gButton_DUp;
extern uint16_t gButton_DDown;
extern uint16_t gButton_DLeft;
extern uint16_t gButton_DRight;
extern uint16_t gButton_B;
extern uint16_t gButton_A;
extern uint16_t gButton_CLeft;
extern uint16_t gButton_CDown;
extern uint16_t gButton_CUp;
extern uint16_t gButton_CRight;
extern uint16_t gButton_ZTrig;
extern uint16_t gButton_LTrig;
extern uint16_t gButton_RTrig;
extern int8_t gJoyX;
extern int8_t gJoyY;
extern s2_w gPlayerPosXMirror;
extern s2_w gPlayerPosYMirror;
extern int32_t gPlayerVelXMirror;
extern int32_t gPlayerVelYMirror;
extern uint16_t gCurrentFramebufferIndex;
extern uint8_t gSpriteColR;
extern uint8_t gSpriteColG;
extern uint8_t gSpriteColB;
extern uint8_t gSpriteColA;
extern int32_t D_800C4EBC;
extern uint32_t D_800C4EC0;
extern int32_t D_800C4EC4;
extern uint32_t D_800C4EC8;
extern double gSpriteScaleX;
extern double gSpriteScaleY;
extern uint16_t gTimeRecords[64]; // records for stage times.
extern uint16_t gNameEntrySpace[11];
extern uint8_t gSaveSlotIndex;
extern ActorInit gActorInit[];
extern int32_t gActorInitFlags[];
extern uint16_t gAttractModeIndex;
extern uint16_t Alpha_NotYet[];              //"Not Yet"
extern uint16_t Alpha_GotIt[];               //"Got it"
extern ActorFunc gActorFuncTable_800D3DB0[]; // TODO: Investigate
extern ActorFunc gActorFuncTable_800D7F00[]; // TODO: Investigate
extern ActorFunc gActorFuncTable_800E5AC0[];
extern uint8_t bssStart; // also deals with sound state.
extern int16_t gBgmVolume;
extern uint8_t gSFX_ChannelStates[];
extern int16_t gSFX_Volumes[];
extern uint16_t gInputHistoryPress[64]; // buffer of controller inputs
extern Gfx* gDListHead;
extern OSContStatus gOSContStatArray[4];
extern OSContPad gConpadArrayA[4];
extern OSContPad gConpadArrayB[4];
extern Gfx_Data gDListTail[2];
extern uint32_t gPlayerControllerIndex;
extern uint16_t gButtonCur;
extern UNK_TYPE gTickDelta;
extern ALCSPlayer* gBGM_pALCPlayer;
extern uint64_t gYellowGemBitfeild;
extern uint8_t gWorldProgress;
extern uint16_t gContinueChoice;
extern uint16_t gRedGems;
extern uint16_t gCurrentStage;
extern uint16_t gStageTime; // pauses for cutscene, loading
extern uint16_t gStageTimeReal;
extern ActorFunc gActorFuncTable_80192000[];
extern ActorFunc gActorFuncTable_8019B000[];
extern ActorFunc gActorFuncTable_801A6800[];
extern ActorFunc gActorFuncTable_801B0800[];
extern uint8_t gNameEntryLanguage;
extern uint8_t gNameEntrySelectedColumn;
extern uint8_t gNameEntrySelectedRow;
extern uint8_t gNameEntryCurrentChar;
extern uint8_t gSpriteData_YellowGem[];
extern uint8_t gSpriteData_RedGem[];
extern uint8_t gSpriteData_BlueGem[];
extern ActorFunc gActorFuncTable_801B0800[];
extern uint8_t gNameEntryLanguage;
extern uint8_t gNameEntrySelectedColumn;
extern uint8_t gNameEntrySelectedRow;
extern uint8_t gNameEntryCurrentChar;
extern uint32_t gPlayTime;
extern UNK_TYPE D_800BA9E0;
extern UNK_TYPE D_800BAAB0;
extern uint16_t D_800BE4D0;
extern uint16_t D_800BE4D4;
extern uint16_t D_800BE4E0;
extern uint16_t D_800BE4E4;
extern int16_t D_800BE4EC;
extern uint16_t D_800BE538;
extern uint16_t D_800BE544;
extern s2_w gScreenPosTargetX; // these few seem to be screen position related
extern s2_w gScreenPosTargetY;
extern s2_w D_800BE558;
extern s2_w D_800BE55C;
extern s2_w D_800BE560;
extern s2_w D_800BE564;
extern int16_t D_800BE568;
extern int16_t D_800BE578;
extern int16_t D_800BE57C;
extern int16_t D_800BE580;
extern int16_t D_800BE584;
extern int16_t D_800BE588;
extern int16_t D_800BE58C;
extern uint16_t D_800BE590;
extern uint16_t D_800BE594;
extern uint16_t gRNGSeed;
extern uint16_t D_800BE5D0;
extern uint16_t D_800BE5D4;
extern int16_t D_800BE5E0;
extern int16_t D_800BE5E4;
extern int16_t D_800BE5F0;
extern int32_t D_800BE5F4;
extern int16_t D_800BE5F8;
extern uint16_t D_800BE5FC;
extern UNK_TYPE D_800BE610;
extern UNK_TYPE D_800BE614;
extern UNK_TYPE D_800BE618;
extern uint16_t D_800BE62C;
extern uint16_t D_800BE630;
extern int16_t D_800BE638;
extern int16_t D_800BE63C;
extern int16_t D_800BE668;
extern uint16_t D_800BE66C;
extern uint16_t D_800BE670;
extern uint16_t D_800BE674;
extern uint16_t D_800BE6A4;
extern int16_t D_800BE6A8;
/* a set of flags with the following properties for each bit (hi-to-lo):
 * 0 unknown (func_8001FF28 is just jr ra)
 * 1 Draw SFX Channel data
 * 2
 * 3 unknown (func_80021660 is just jr ra)
 * 4 unknown
 * 5 unknown
 * 6 Force pause (see func_800012F0)
 * 7 pause does not open menu.
 * 8 Draw some debug info
 * 9 unknown (func_80021658 is just jr ra)
 * A unknown
 * B unknown
 * C unknown
 * D Ortho / perspective view
 * E L and R change gameplay speed (60 / D_800BE6B4 fps)
 * F unknown (func_8002167C is just jr ra)
 */
extern uint16_t gDebugBitfeild;
extern float D_800BE6B0;    // 90.0f, never used, AFAIK
extern uint16_t D_800BE6B4; // seems to be the update rate (not framerate,) 1 is every frame, 2 is every other frame, etc. doesn't effect Marina unless the bit in gDebugBitfeild is set
extern b2_s D_800BE6B8;
extern int32_t D_800BE6C0;
extern uint8_t D_800BE6E4;
extern uint8_t D_800BE6E8;
extern uint8_t D_800BE6EC;
extern int8_t D_800BE6F0;
extern int16_t D_800BE6FC;
extern uint16_t D_800BE704;
extern uint16_t D_800BE708;
extern uint8_t D_800BE70C;
extern int8_t D_800BE710;
extern uint16_t D_800BE714;
extern int32_t D_800BE71C;
extern int32_t D_800BE720;
extern int32_t D_800BE724;
extern int32_t D_800BE728;
extern int32_t D_800BE72C;
extern int32_t D_800BE730;
extern UNK_TYPE D_800BE73C;
extern char* D_800BE84C[33];    // BGM titles left in data.
extern char** D_800BEA4C[32];   // instrument names, and variations.
extern char* D_800C1694[294];   // could help add to SFX.h
extern uint8_t D_800C2280[223]; // looks like it's ID's for ALInstrument
extern char* gSFX_Labels[224];    // may be wrong.
extern uint16_t D_800C26DC[293];
extern uint8_t gSFX_2ByteArray[294][2]; // table of volume and length(?) of SFX.
extern UNK_TYPE D_800C3830;
extern UNK_TYPE D_800C3834;
extern UNK_TYPE D_800C3838;
extern int16_t D_800C383C[];
extern int32_t gALFX_Params[44];
extern UNK_TYPE D_800C3908;
extern Sprite gSprite;
extern double gSpriteScaleX;
extern double gSpriteScaleY;
extern uint16_t gNameEntrySpace[11];
extern uint8_t gSaveSlotIndex;
extern uint32_t D_800C4FC0[];
extern uint8_t D_800C5010[];
extern uint16_t gNameEntryRow0ENG[18]; // arrays with the english name entry characters
extern uint16_t gNameEntryRow1ENG[18]; // there are 2 more like this for other languages
extern uint16_t gNameEntryRow2ENG[18]; // Japan version had 3 character sets to select with L/R
extern uint16_t gNameEntryRow3ENG[18]; // one is still readable, but the other seems lost.
extern uint16_t gNameEntryRow4ENG[18];
extern UNK_TYPE D_800C71A0;
extern UNK_TYPE D_800C7E14;
extern UNK_TYPE D_800C823C;
extern uint16_t D_800C8378[64];
extern uint16_t D_800C83F8[64];
extern uint16_t gTimesToBeat[64];
extern UNK_TYPE D_800C8EF0;
extern char D_800C8F68[]; // PRESS START
extern char D_800C8F74[]; // @1997 TREASURE/ENIX
extern char D_800C8F88[]; // LICENCED TO NINTENDO
extern uint32_t D_800C8FA0;
extern uint32_t D_800C8FC0;
extern UNK_TYPE D_800C9080;
extern UNK_TYPE D_800C94CC;
extern UNK_TYPE D_800C94D0;
extern UNK_TYPE D_800C94DA;
extern int16_t D_800C9694[5];
extern ActorInit gActorInit[];
extern int32_t gActorInitFlags[125];
extern uint32_t D_800C9FCC[];
extern uint16_t D_800CA230;
extern uint16_t D_800CA234;
extern uint16_t D_800CA23C;
extern uint16_t D_800CA240;
extern uint16_t D_800CA244;
extern uint16_t D_800CA248;
extern uint16_t D_800CA24C;
extern uint16_t D_800CA250;
extern UNK_TYPE D_800CA2B0;
extern uint16_t* D_800C96A0[5]; // "perfect","excellent","very good","   good   ","try harder"
extern uint16_t* D_800CBDFC;
extern uint16_t* D_800CBE0C;
extern int16_t D_800CBF40;
extern uint16_t D_800CBF44;
extern int16_t D_800CBF50;
extern uint16_t D_800CBF54;
extern uint16_t D_800CBF58;
extern int16_t D_800CC228[256];
extern int8_t D_800CC428;
extern uint16_t D_800CC6EC[88][8];
extern uint8_t D_800CCFDC[88]; // Stage BGM indices
extern int32_t D_800CEC0C;
extern uint8_t D_800D16AA[]; // right in the middle of a pointer array?
extern int16_t D_800D16C4;
extern uint8_t D_800D28D0;
extern uint16_t D_800D28E4;
extern uint16_t D_800D28E8;
extern int32_t D_800D28EC;
extern uint16_t D_800D28F0;
extern int16_t D_800D28F4;
extern int16_t D_800D28F8;
extern uint32_t D_800D28FC;
extern int16_t D_800D2900;
extern uint16_t D_800D2908;
extern uint16_t D_800D2914;
extern uint16_t D_800D2918;
extern uint16_t D_800D291C;
extern uint16_t D_800D2920;
extern uint16_t D_800D2924;
extern int32_t D_800D2928;
extern int32_t D_800D2928;
extern int32_t D_800D2938;
extern uint16_t D_800D294C;
extern uint16_t gPlayerActorIndex;
extern uint16_t D_800D2954;
extern uint16_t D_800D2968;
extern int16_t D_800D296C;
extern int16_t D_800D2970;
extern int16_t D_800D2974;
extern uint16_t D_800D2978[];
extern int16_t D_800D36DC[16];
extern int16_t D_800D36FC[16];
extern uint16_t D_800D3770[];
extern uint16_t D_800D3888[];
extern int16_t D_800D84E8[];
extern UNK_TYPE D_800D8588;
extern uint16_t D_800D37A4;
extern UNK_TYPE D_800D4000;
extern uint32_t D_800D4184[82]; // pointer array?
extern int32_t D_800D5794[19];
extern int32_t D_800D57E0;
extern uint16_t D_800D5820;
extern uint16_t D_800D5824;
extern ActorFunc gActorFuncTable_800D7F00[]; // TODO: Investigate
extern UNK_TYPE gData_RedGem;                // sprite data for red gem?
extern UNK_TYPE D_800D8668;
extern UNK_TYPE D_800D8750;
extern UNK_TYPE D_800D87C8;
extern UNK_TYPE D_800D8840;
extern UNK_TYPE D_800D8930;
extern UNK_TYPE D_800D89A8;
extern UNK_TYPE D_800D8A20;
extern UNK_TYPE D_800D8A98;
extern UNK_TYPE D_800D8B10;
extern UNK_TYPE D_800D8B88;
extern UNK_TYPE D_800D8C00;
extern UNK_TYPE D_800D8CF0;
extern UNK_TYPE D_800D8D68;
extern UNK_TYPE D_800D8DE0;
extern UNK_TYPE D_800D9B7C;
extern int16_t D_800D9BC4;
extern UNK_TYPE D_800D9C7C;
extern int16_t D_800D9CC4;
extern UNK_TYPE D_800D9D7C;
extern int16_t D_800D9DC4;
extern UNK_TYPE D_800D9E7C;
extern int16_t D_800D9EC4;
extern UNK_TYPE D_800D9F7C;
extern int16_t D_800D9FC4;
extern UNK_TYPE D_800DB07C;
extern int16_t D_800DB0BA;
extern UNK_TYPE D_800DB27C;
extern int16_t D_800DB2BA;
extern UNK_TYPE D_800DB47C;
extern int16_t D_800DB4BA;
extern UNK_TYPE D_800DB67C;
extern int16_t D_800DB6BA;
extern UNK_TYPE D_800DB87C;
extern int16_t D_800DB8BA;
extern UNK_TYPE D_800DBA7C;
extern int16_t D_800DBABA;
extern UNK_TYPE D_800DBC7C;
extern int16_t D_800DBCBA;
extern int16_t D_800DBEBA;
extern UNK_TYPE D_800DC07C;
extern int16_t D_800DC0DE;
extern UNK_TYPE D_800DC27C;
extern int16_t D_800DC2DE;
extern UNK_TYPE D_800DC47C;
extern int16_t D_800DC4DE;
extern UNK_TYPE D_800DC67C;
extern int16_t D_800DC6DE;
extern UNK_TYPE D_800DC87C;
extern int16_t D_800DC8DE;
extern UNK_TYPE D_800DCA7C;
extern int16_t D_800DCADE;
extern UNK_TYPE D_800DCC7C;
extern int16_t D_800DCCDE;
extern int16_t D_800DD47C[];
extern int16_t D_800DD4DC;
extern int16_t D_800DD67C[];
extern int16_t D_800DD6DC;
extern int16_t D_800DD87C[];
extern int16_t D_800DD8DC;
extern int16_t D_800DDA88[];
extern int16_t D_800DDAD6;
extern int16_t D_800DDC48[];
extern int16_t D_800DDC96;
extern UNK_TYPE D_800DDE08;
extern int16_t D_800DDE56;
extern UNK_TYPE D_800DDFC8;
extern int16_t D_800DE016;
extern UNK_TYPE D_800DE188;
extern UNK_TYPE D_800DE1C0;
extern int16_t D_800DE1D6;
extern UNK_TYPE D_800DE1F8;
extern UNK_TYPE D_800DE230;
extern UNK_TYPE D_800DE268;
extern UNK_TYPE D_800DE2A0;
extern UNK_TYPE D_800DE2D8;
extern UNK_TYPE D_800DE310;
extern UNK_TYPE D_800DE348;
extern int16_t D_800DE396;
extern UNK_TYPE D_800DE508;
extern UNK_TYPE D_800DE540;
extern UNK_TYPE D_800DE578;
extern UNK_TYPE D_800DE5B0;
extern UNK_TYPE D_800DE5E8;
extern UNK_TYPE D_800DE620;
extern UNK_TYPE D_800DE658;
extern UNK_TYPE D_800DE690;
extern UNK_TYPE D_800DE6C8;
extern int16_t D_800DE716;
extern UNK_TYPE D_800DE888;
extern int16_t D_800DE8D6;
extern UNK_TYPE D_800DEA48;
extern int16_t D_800DEA96;
extern UNK_TYPE D_800DEC08;
extern int16_t D_800DEC56;
extern UNK_TYPE D_800DEDC8;
extern int16_t D_800DEE16;
extern UNK_TYPE D_800DEF88;
extern int16_t D_800DEFD6;
extern UNK_TYPE D_800DF148;
extern int16_t D_800DF196;
extern UNK_TYPE D_800DF308;
extern int16_t D_800DF356;
extern UNK_TYPE D_800DF4C8;
extern int16_t D_800DF516;
extern UNK_TYPE D_800DF688;
extern int16_t D_800DF6D6;
extern UNK_TYPE D_800DF848;
extern int16_t D_800DF8DE;
extern UNK_TYPE D_800DFA48;
extern int16_t D_800DFADE;
extern UNK_TYPE D_800DFC48;
extern int16_t D_800DFCDE;
extern UNK_TYPE D_800DFE48;
extern int16_t D_800DFEA2;
extern UNK_TYPE D_800E0048;
extern int16_t D_800E00A2;
extern int16_t D_800E0248[];
extern int16_t D_800E02A2;
extern UNK_TYPE D_800E0448;
extern int16_t D_800E04A2;
extern UNK_TYPE D_800E1380;
extern UNK_TYPE D_800E13DC;
extern UNK_TYPE D_800E1C00;
extern UNK_TYPE D_800E1C2C;
extern UNK_TYPE D_800E1F64;
extern UNK_TYPE D_800E3584;
extern Gfx D_800E38B0[];
extern Gfx D_800E3930[];
extern UNK_TYPE D_800E9850;
extern UNK_TYPE D_800EA110;
extern UNK_TYPE D_800EA500;
extern int16_t D_800EF4D4;
extern Gfx* D_800EF4F4; // I don't think this is actually a Gfx*
extern int16_t D_800EF500[];
extern uint16_t gSFX_CurrentIndex[4]; // holds current SFX indicies per channel
extern int32_t D_800F4540;
extern int32_t D_800F46D8;
extern uint8_t D_80104090[];
extern uint16_t D_80106918;
extern uint16_t D_801069B8;
extern ALPan D_801069D8[];
extern int16_t D_80108DE0[];
extern uint32_t D_80103480;
extern uint32_t D_80103616;
extern uint32_t D_801037AA;
extern uint32_t D_80103944;
extern uint16_t D_8010CDE8[];
extern uint8_t D_8011CDF0[];
extern uint8_t D_8011CF18[];
extern struct_func_80021270_D_80104098 D_80104098;
extern uint16_t D_80106918;
extern uint16_t D_801069B8;
extern struct_D_801069E0 D_801069E0[]; // seems to be the sprite objects (not the collision,) of level objects
extern UNK_TYPE D_8011D970;
extern UNK_TYPE D_8011DDF0;
extern uint16_t gInputHistoryHold[];
extern uint32_t D_80126670; // initial thread stack head
extern UNK_TYPE D_80128670;
extern UNK_TYPE D_80129670;
extern OSMesg D_8012A678[8];
extern OSThread idleThread;
extern OSThread mainThread;
extern OSThread rmonThread;
extern OSMesgQueue D_8012ABA8;
extern OSMesgQueue D_8012ABC0;
extern OSMesgQueue D_8012ABD8;
extern OSMesgQueue D_8012ABF0;
extern OSMesgQueue D_8012AC08;
extern OSMesgQueue D_8012AC38;
extern OSMesg D_8012AC68;
extern OSMesg D_8012AC6C;
extern OSMesg D_8012AC70;
extern OSMesg D_8012AC74;
extern OSMesg D_8012AC80;
extern OSTask* D_8012AC84;
extern OSTask D_8012AC88[2];
extern OSViMode* D_8012AD08;
extern OSViMode D_8012AD10;
extern OSContStatus gOSContStatArray[4];
extern OSContPad gConpadArrayA[4];
extern OSContPad gConpadArrayB[4];
extern OSMesgQueue gContMesgq;
extern uint32_t gPlayerControllerIndex;
extern uint16_t gButtonCur;
extern uint32_t gPlayTime;
extern uint16_t D_801370CC;
extern uint16_t D_801370CE;
extern uint16_t D_801373D8;
extern struct_D_801373E0 D_801373E0;
extern UNK_TYPE D_80137458;
extern UNK_POINTER D_8013746C;
extern uint16_t D_8013747C;
extern uint32_t D_80137420;
extern uint16_t D_80137480;
extern uint32_t D_801376A0;
extern uint8_t D_801376A8;
extern uint8_t D_801376A9;
extern uint8_t D_801376AD;
extern uint8_t D_801376B1;
extern uint8_t D_801376B5;
extern uint8_t D_801376B8;
extern uint8_t D_801376B9;
extern uint8_t D_801376BC;
extern uint8_t D_801376BD;
extern UNK_POINTER D_801376DC;
extern int32_t D_801376E0;
extern int32_t D_801376E4;
extern int32_t D_801376E8;
extern OSMesgQueue D_801377B8;
extern OSMesgQueue D_801377D0;
extern OSMesg D_80137800[48];
extern OSMesg D_801378C0;
extern OSIoMesg D_801378C8;
extern OSIoMesg D_801378E0[48];
extern OSTask* D_80137D60[2];
extern Acmd* D_80137D68[2];
extern uint16_t D_80137D90;
extern uint32_t D_80137DA0;
extern uint8_t D_80137DA8[220160]; // ALHeap base
extern ALLink D_8016D9CC;
extern ALLink D_8016D9B8;
extern UNK_TYPE D_8016DEB8;
extern ALBankFile* D_8016DF34;
extern ALBank* D_8016DF38;
extern ALBank* D_8016DF3C;
extern ALCSeq* D_8016E2E0;
extern ALCSeq D_8016E2E8[4];
extern ALCSeq* D_8016E6C8[4];
extern OSTask* D_8016E6F0;
extern uint32_t D_8016E718;
extern Bitmap gSpriteBitmaps[2][56];
extern UNK_TYPE D_8016EF20;
extern uint32_t D_80171ADC[2][2];
extern UNK_TYPE D_80171D30;
extern uint8_t D_80171B19;
extern UNK_TYPE D_80171B30;
extern UNK_TYPE D_80171C30;
extern UNK_TYPE D_80171F10;
extern Mtx* D_801780F0;
extern Mtx* D_801780F4;
extern UNK_POINTER D_80178104;
extern UNK_POINTER D_80178108;
extern UNK_POINTER D_8017810C;
extern UNK_POINTER D_80178110;
extern UNK_POINTER D_80178114;
extern UNK_POINTER D_80178118;
extern UNK_POINTER D_8017811C;
extern UNK_POINTER D_80178120;
extern UNK_POINTER D_80178124;
extern UNK_POINTER D_80178128;
extern uint16_t D_80178130; // continue timer?
extern uint8_t D_80178132;
extern uint8_t D_80178133;
extern uint8_t D_80178134;
extern uint16_t gContinueChoice;
extern uint16_t gRedGems;
extern uint16_t gCurrentStage;
extern uint16_t D_80178150;
extern uint16_t D_80178152;
extern uint16_t D_80178154;
extern uint16_t D_80178156;
extern uint16_t D_80178158;
extern uint16_t D_8017815A;
extern uint16_t D_8017815C;
extern uint16_t D_80178164;
extern uint16_t D_80178160;
extern uint16_t D_80178162;
extern uint16_t D_80178164;
extern uint16_t D_80178166;
extern UNK_TYPE D_80178170;
extern UNK_TYPE D_80178188;
extern uint8_t D_801781A0;
extern int32_t D_801781A1;
extern int16_t D_801781C0[];
extern uint16_t D_801781C8;
extern uint16_t D_801781CA;
extern uint16_t D_801781CC;
extern uint16_t D_801781CE;
extern uint16_t D_801781D0;
extern uint16_t D_801781D2;
extern uint16_t D_801781D4;
extern uint16_t D_801781DC;
extern uint16_t gStageTime; // pauses for cutscene, loading capped at 36000
extern uint64_t gYellowGemBitfeildTemp;
extern uint16_t D_801781F8;
extern uint16_t gStageTimeReal;
extern int32_t D_801782B0;
extern uint16_t D_801782C0;
extern uint16_t D_80178460;
extern UNK_TYPE D_801850B0;
extern UNK_TYPE D_801850B8;
extern uint8_t D_80185518;
extern uint8_t D_80185519;
extern UNK_TYPE D_8018551C;
extern UNK_POINTER D_80185520;
extern UNK_TYPE D_80189A58;
extern int32_t D_801AA120;
extern int16_t D_801AFE90[];
extern float D_801B0080;
extern float D_801B0088;
extern float D_801B00A0;
extern float D_801B01C0;
extern float D_801B01C8;
extern ActorFunc gActorFuncTable_801B0800[];
extern uint8_t gNameEntryLanguage;
extern uint8_t gNameEntrySelectedColumn;
extern uint8_t gNameEntrySelectedRow;
extern uint8_t gNameEntryCurrentChar;
extern uint16_t gFramebuffer0[320][240]; // framebuffer
extern UNK_TYPE D_802C9F70;
extern volatile uint16_t D_80380200; // probably a volatile struct (see usage in Intro_Tick)
extern volatile uint16_t D_80380400[256];
extern uint16_t gFramebuffer1[320][240]; // framebuffer

#endif
