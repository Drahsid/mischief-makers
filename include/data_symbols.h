#ifndef DATA_SYMBOLS_H
#define DATA_SYMBOLS_H

#include "actor.h"
#include "inttypes.h"
#include "unknown_structs.h"
#include <ultra64.h>

typedef uint32_t UNK_TYPE;
typedef uint32_t UNK_POINTER;

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
extern uint16_t D_800BE538;
extern int8_t gJoyX;
extern int8_t gJoyY;
extern uint16_t D_800BE544;
extern uint32_t D_800BE550;
extern uint32_t D_800BE554;
extern int16_t D_800BE558;
extern int16_t D_800BE55C;
extern UNK_TYPE D_800BE560;
extern int32_t D_800BE564;
extern int16_t D_800BE568;
extern int16_t D_800BE578;
extern int16_t D_800BE57C;
extern int16_t D_800BE580;
extern int16_t D_800BE584;
extern int16_t D_800BE588;
extern int16_t D_800BE58C;
extern uint16_t D_800BE590;
extern uint16_t D_800BE594;
extern uint16_t D_800BE5A4;
extern uint16_t D_800BE5D0;
extern uint16_t D_800BE5D4;
extern int32_t gPlayerPosXMirror; // likely {s16[2];s32;} unions
extern int32_t gPlayerPosYMirror;
extern int16_t D_800BE5E0;
extern int16_t D_800BE5E4;
extern int32_t gPlayerVelXMirror;
extern int32_t gPlayerVelYMirror;
extern int16_t D_800BE5F0;
extern int32_t D_800BE5F4;
extern int16_t D_800BE5F8;
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
extern uint16_t D_800BE6AC;
extern uint16_t D_800BE6B4;
extern uint16_t D_800BE6B8;
extern int32_t D_800BE6C0;
extern uint8_t D_800BE6E4;
extern uint8_t D_800BE6E8;
extern uint8_t D_800BE6EC;
extern int8_t D_800BE6F0;
extern int16_t D_800BE6FC;
extern uint16_t D_800BE700;
extern uint16_t D_800BE704;
extern uint16_t D_800BE708;
extern int8_t D_800BE70C;
extern int8_t D_800BE710;
extern uint16_t D_800BE714;
extern int32_t D_800BE71C;
extern int32_t D_800BE720;
extern int32_t D_800BE724;
extern int32_t D_800BE728;
extern int32_t D_800BE72C;
extern int32_t D_800BE730;
extern UNK_TYPE D_800BE73C;
extern UNK_TYPE D_800C3830;
extern UNK_TYPE D_800C3834;
extern UNK_TYPE D_800C3838;
extern Sprite D_800C4E5C;
extern uint64_t gSpriteColR;
extern int8_t gSpriteColG;
extern int8_t gSpriteColB;
extern int8_t gSpriteColA;
extern int32_t D_800C4EBC;
extern uint32_t D_800C4EC0;
extern int32_t D_800C4EC4;
extern uint32_t D_800C4EC8;
extern double gSpriteScaleX;
extern double gSpriteScaleY;
extern uint16_t gTimeRecords[64]; // records for stage times.
extern uint16_t D_800C4FA8[11];   // contains default "Start" filename
extern uint16_t nameEntrySpace[11];
extern uint8_t gSaveSlotIndex;
extern UNK_TYPE D_800C71A0;
extern UNK_TYPE D_800C823C;
extern uint16_t D_800C8378[64];
extern uint16_t D_800C83F8[64];
extern UNK_TYPE D_800C8EF0;
extern uint32_t D_800C8FA0;
extern uint32_t D_800C8FC0;
extern UNK_TYPE D_800C9080;
extern UNK_TYPE D_800C94CC;
extern UNK_TYPE D_800C94D0;
extern UNK_TYPE D_800C94DA;
extern uint16_t D_800CA230;
extern uint16_t D_800CA234;
extern uint16_t AttractModeIndex;
extern uint16_t D_800CA23C;
extern uint16_t D_800CA240;
extern uint16_t D_800CA244;
extern uint16_t D_800CA248;
extern uint16_t D_800CA24C;
extern uint16_t D_800CA250;
extern uint16_t Alpha_NotYet[]; //"Not Yet"
extern uint16_t Alpha_GotIt[];  //"Got it"
extern UNK_TYPE D_800CA2B0;
extern uint16_t* D_800CBDFC;
extern uint16_t* D_800CBE0C;
extern int16_t D_800CBF40;
extern uint16_t D_800CBF44;
extern uint16_t D_800CBF58;
extern int8_t D_800CC428;
extern uint8_t D_800CCFDC; // does not like being declared an array. Which it is.
extern int32_t D_800CEC0C;
extern uint8_t D_800D28D0;
extern uint16_t D_800D28E4;
extern uint16_t D_800D28E8;
extern int32_t D_800D28EC;
extern uint16_t D_800D28F0;
extern int16_t D_800D28F4;
extern int16_t D_800D28F8;
extern int32_t D_800D28FC;
extern int16_t D_800D2900;
extern uint16_t D_800D2908;
extern int16_t D_800D2914;
extern uint16_t D_800D2918;
extern uint16_t D_800D291C;
extern uint16_t D_800D2920;
extern uint16_t D_800D2924;
extern int32_t D_800D2928;
extern int32_t D_800D2928;
extern int32_t D_800D2938;
extern uint16_t D_800D294C;
extern uint16_t D_800D2968;
extern int16_t D_800D296C;
extern int16_t D_800D2970;
extern int16_t D_800D2974;
extern uint16_t D_800D2978;
extern uint16_t D_800D3770[];
extern uint16_t D_800D37A4;
extern ActorFunc gActorFuncTable_800D3DB0[]; // TODO: Investigate
extern UNK_TYPE D_800D4000;
extern uint32_t D_800D4184;
extern int32_t D_800D5794[19];
extern int32_t D_800D57E0;
extern uint16_t D_800D5820;
extern UNK_TYPE D_800D9B7C;
extern UNK_TYPE D_800D9C7C;
extern UNK_TYPE D_800D9D7C;
extern UNK_TYPE D_800D9E7C;
extern UNK_TYPE D_800D9F7C;
extern UNK_TYPE D_800DB07C;
extern UNK_TYPE D_800DB27C;
extern UNK_TYPE D_800DB47C;
extern UNK_TYPE D_800DB67C;
extern UNK_TYPE D_800DB87C;
extern UNK_TYPE D_800DBA7C;
extern UNK_TYPE D_800DBC7C;
extern UNK_TYPE D_800DC07C;
extern UNK_TYPE D_800DC27C;
extern UNK_TYPE D_800DC47C;
extern UNK_TYPE D_800DC67C;
extern UNK_TYPE D_800DC87C;
extern UNK_TYPE D_800DCA7C;
extern UNK_TYPE D_800DCC7C;
extern UNK_TYPE D_800DD47C;
extern UNK_TYPE D_800DD67C;
extern UNK_TYPE D_800DD87C;
extern UNK_TYPE D_800DDA88;
extern UNK_TYPE D_800DDC48;
extern UNK_TYPE D_800DDE08;
extern UNK_TYPE D_800DDFC8;
extern UNK_TYPE D_800DE348;
extern UNK_TYPE D_800DE508;
extern UNK_TYPE D_800DE6C8;
extern UNK_TYPE D_800DE888;
extern UNK_TYPE D_800DEA48;
extern UNK_TYPE D_800DEC08;
extern UNK_TYPE D_800DEDC8;
extern UNK_TYPE D_800DEF88;
extern UNK_TYPE D_800DF148;
extern UNK_TYPE D_800DF308;
extern UNK_TYPE D_800DF4C8;
extern UNK_TYPE D_800DF688;
extern UNK_TYPE D_800DF848;
extern UNK_TYPE D_800DFA48;
extern UNK_TYPE D_800DFC48;
extern UNK_TYPE D_800DFE48;
extern UNK_TYPE D_800E0048;
extern UNK_TYPE D_800E0248;
extern UNK_TYPE D_800E0448;
extern ActorFunc gActorFuncTable_800E5AC0[];
extern UNK_TYPE D_800E9850;
extern UNK_TYPE D_800EA110;
extern UNK_TYPE D_800EA500;
extern UNK_TYPE D_800EEA10;
extern uint8_t bssStart; // also deals with sound state.
extern int16_t Bgm_vol;
extern int16_t D_800EF4D4;
extern uint8_t SFX_ChannelStates[];
extern int16_t SFX_Volumes[];
extern int16_t D_800EF500[];
extern uint16_t D_800EF508;
extern int16_t D_800EF598;
extern uint16_t D_800EF794;
extern uint16_t D_800EF92C;
extern uint16_t D_800EFAC4;
extern uint16_t D_800F00D6;
extern UNK_TYPE D_800F026E;
extern UNK_TYPE D_800F0406;
extern UNK_TYPE D_800F059E;
extern UNK_TYPE D_800F0736;
extern uint8_t D_800F08CE;
extern uint16_t D_800F0A66;
extern uint32_t D_800F4210;
extern uint16_t D_800F4218;
extern uint16_t D_800F421C;
extern uint16_t D_800F4224;
extern uint16_t D_800F423A;
extern uint16_t D_800F423C;
extern uint16_t D_800F423E;
extern uint16_t D_800F4240;
extern uint16_t D_800F4262;
extern uint16_t D_800F4268;
extern UNK_TYPE D_800F42A0;
extern int32_t D_800F42E4;
extern int32_t D_800F42E8;
extern UNK_POINTER D_800F430C;
extern UNK_POINTER D_800F4310;
extern int32_t D_800F43A8;
extern uint16_t D_800F43B0;
extern uint16_t D_800F43B4;
extern uint16_t D_800F43BC;
extern int16_t D_800F43D2;
extern int16_t D_800F43D4;
extern int16_t D_800F43D6;
extern int16_t D_800F43D8;
extern uint16_t D_800F43FA;
extern uint16_t D_800F4400;
extern uint16_t D_800F4438;
extern uint16_t D_800F447C;
extern int32_t D_800F4480;
extern UNK_POINTER D_800F44A4;
extern UNK_POINTER D_800F44A8;
extern uint8_t D_800F46F7;
extern UNK_TYPE D_80103450;
extern int16_t D_80103480;
extern UNK_TYPE D_801035E8;
extern int16_t D_80103616;
extern UNK_TYPE D_80103780;
extern int16_t D_801037AA;
extern UNK_TYPE D_80103918;
extern int16_t D_80103944;
extern struct_func_80021270_D_80104098 D_80104098;
extern uint16_t D_80106918;
extern uint16_t D_801069B8;
extern struct_func_80044360_D_801069E0 D_801069E0[];
extern UNK_TYPE D_8011D970;
extern int16_t gInputBuffer[64]; // buffer of controller inputs
extern UNK_TYPE D_8011DDF0;
extern int16_t D_801225F0;
extern uint32_t D_80126670; // initial thread stack head
extern UNK_TYPE D_80128670;
extern UNK_TYPE D_80129670;
extern uint32_t* D_8012A670;
extern UNK_TYPE D_8012A678;
extern OSThread D_8012A698; // idle
extern OSThread D_8012A848; // video, controller
extern OSThread D_8012A9F8; // rmon
extern OSMesgQueue D_8012ABA8;
extern OSMesgQueue D_8012ABC0;
extern UNK_TYPE D_8012ABD8;
extern UNK_TYPE D_8012ABF0;
extern UNK_TYPE D_8012AC08;
extern UNK_TYPE D_8012AC38;
extern UNK_TYPE D_8012AC68;
extern UNK_TYPE D_8012AC6C;
extern UNK_TYPE D_8012AC70;
extern UNK_TYPE D_8012AC74;
extern UNK_TYPE D_8012AC80;
extern OSTask* D_8012AC84;
extern OSTask D_8012AC88[2];
extern OSViMode* D_8012AD08;
extern OSViMode D_8012AD10;
extern OSContStatus OSContStatArray[4];
extern OSContPad gConpadArrayA[4];
extern OSContPad gConpadArrayB[4];
extern OSMesgQueue D_8012ADA0;
extern Mtx D_8012ADC0[390]; // room for 390 Mtx...
extern Mtx D_80130F40[390];
extern UNK_TYPE gPlayerControllerIndex;
extern uint16_t gButtonCur;
extern uint16_t D_801370CC;
extern uint16_t D_801370CE;
extern uint16_t D_801373D8;
extern struct_D_801373E0 D_801373E0;
extern UNK_TYPE D_80137458;
extern UNK_POINTER D_8013746C;
extern uint16_t D_8013747C;
extern uint16_t D_80137480;
extern UNK_TYPE gTickDelta;
extern uint8_t D_801376A8;
extern uint8_t D_801376A9;
extern uint8_t D_801376AD;
extern uint8_t D_801376B1;
extern uint8_t D_801376B5;
extern uint8_t D_801376B8;
extern uint8_t D_801376B9;
extern uint8_t D_801376BC;
extern uint8_t D_801376BD;
extern int32_t D_801376E4;
extern int32_t D_801376E8;
extern OSMesgQueue D_801377B8;
extern OSMesgQueue D_801377D0;
extern OSMesg D_801378C0;
extern OSIoMesg D_801378C8;
extern uint16_t D_80137D90;
extern UNK_TYPE D_8016DEB8;
extern ALCSPlayer* BGM_pALCPlayer;
extern OSTask* D_8016E6F0;
extern UNK_TYPE D_8016E718;
extern int64_t gYellowGemBitfeild;
extern int8_t gWorldProgress;
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
extern uint16_t gRedGems;
extern int16_t gCurrentStage;
extern UNK_TYPE D_80178170;
extern UNK_TYPE D_80178188;
extern int32_t D_801781A0;
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
extern uint16_t gStageTime; // pauses for cutscene, loading
extern int64_t YelloGemBitfeildTemp;
extern uint16_t D_801781F8;
extern uint16_t gStageTimeReal;
extern uint16_t D_801782C0;
extern uint16_t D_80178460;
extern uint8_t D_80171B19;
extern UNK_TYPE D_801850B0;
extern UNK_TYPE D_801850B8;
extern uint8_t D_80185518;
extern uint8_t D_80185519;
extern UNK_TYPE D_8018551C;
extern UNK_POINTER D_80185520;
extern UNK_TYPE D_80189A58;
extern ActorFunc gActorFuncTable_80192000[];
extern ActorFunc gActorFuncTable_8019B000[];
extern ActorFunc gActorFuncTable_801A6800[];
extern ActorFunc gActorFuncTable_801B0800[];
extern uint8_t nameEntryLanguage;
extern uint8_t nameEntrySelectedColumn;
extern uint8_t nameEntrySelectedRow;
extern uint8_t NameEntryCurrentChar;
extern UNK_TYPE D_802C9F70;
extern volatile uint16_t D_80380200; // probably a volatile struct (see usage in Intro_Tick)
extern CFB D_803DA800[2];

#endif
