#include "common.h"

// start of .bss

u8 gMusicPlayerFlags;
s16 gMusicVolume;
s16 D_800EF4D4;
s32 gMusicSequenceId;
s32 D_800EF4DC; // unused.
u8 gMusicChannelFxMixes[16];
u8 gSfxPlayerFlags[4];
GfxData* gCurrentGfxData;
s16 gSfxPlayerVolumes[4];
u32 D_800EF500; // unknown/unused
u32 D_800EF504; // unknown/unused
u16 gSfxSequenceIds[4];
Actor gActors[208];
u8 D_80104090[4];
u32 D_80104094;
PortraitStruct gPortraits[66]; 
s8 gSfxPanOverrides[4];
u32 D_801069DC;
UnkStruct_801069E0 D_801069E0[64];
u16 gSfxActorIndices[4];
u8 D_80108DE8[512][32];
u16 gSfxStopTimers[4];
u8 D_8010CDF0[0x10000];
u8 gSfxChannelVolumes[8];
u16 gPlatform0Actors[144];
u8 gSfxChannelPans[8];
u16 gPlatform1Actors[144]; 
u32 D_8011D040[2];
s16 gPlatforms0X1[144];
u32 D_8011D068[2];
s16 gPlatforms1X1[144];
s16 gPlatforms0X0[144];
s16 D_8011D3B0[8][2];
s16 gPlatforms1X0[144];
s16 gPlatforms0Y0[144];
s16 gPlatforms1Y0[144];
s16 gPlatforms0Y1[144];
s16 gPlatforms1Y1[144];
u64 gDramStack[DRAM_STACK_SIZE / sizeof(u64)];
u16 gButtonPressHistory[64];
u64 gYieldData[0x900];
u16 gButtonHoldHistory[64];

// initial values of global data near start of .data

u16 gPlatform1ActorCount = 0;
u16 gPlatform0ActorCount = 0;
u16 gPlatformHit = FALSE;
u16 gPlatformHitActor = 0;
u16 gActiveFrames = 0;
u16 gFramesInScene = 0;
u16 gGamePaused = FALSE;
u16 gCannotPause = FALSE;
u16 gGameState = GAMESTATE_SOFTRESET;
u16 gGameStateSubState = 0;
u16 gButtonHold = 0;
u16 gButtonPress = 0;

// the following are set values for the different button enums,
// used to compare inputs.

u16 gButton_Start = START_BUTTON;
u16 gButton_DUp = CONT_UP;
u16 gButton_DDown = CONT_DOWN;
u16 gButton_DLeft = CONT_LEFT;
u16 gButton_DRight = CONT_RIGHT;
u16 gButton_B = B_BUTTON;
u16 gButton_A = A_BUTTON;
u16 gButton_CLeft = L_CBUTTONS;
u16 gButton_CDown = D_CBUTTONS;
u16 gButton_CUp = U_CBUTTONS;
u16 gButton_CRight = R_CBUTTONS;
u16 gButton_ZTrig = Z_TRIG;
u16 gButton_LTrig = L_TRIG;
u16 gButton_RTrig = R_TRIG;

u16 gButtonLast = 0;
s8 gJoyX = 0;
s8 gJoyY = 0;

u16 D_800BE544 = 0;
FixedCoord D_800BE548 = {FIXED_UNIT(16)};
FixedCoord D_800BE54C = {FIXED_UNIT(16)};
FixedCoord gScreenPosTargetX = {0};
FixedCoord gScreenPosTargetY = {0};
FixedCoord gScreenPosCurrentX = {0};
FixedCoord gScreenPosCurrentY = {0};
FixedCoord gScreenPosNextX = {0};
FixedCoord gScreenPosNextY = {0};
FixedCoord D_800BE568 = {0}; 
FixedCoord D_800BE56C = {0}; 
FixedCoord D_800BE570 = {0};
FixedCoord D_800BE574 = {0};
s16 D_800BE578 = 0;
s16 D_800BE57C = 0;
s16 D_800BE580 = 0;
s16 D_800BE584 = 0;
u16 D_800BE588 = 0;
u16 D_800BE58C = 0;

s16 gCamShakeTime = 0;
s16 gCamShakeV = 0;
s16 gCamShakeType = 0;
s32 gCamShakeMag = 0;
s32 gCamShakeMagDelta = 0;

u16 gRngSeed = 0;

f32 gLookatEyeX = 0;
f32 gLookatEyeY = 0;
f32 gLookatEyeZ = 448.0;
f32 gLookatAtX = 0;
f32 gLookatAtY = 0;
f32 gLookatAtZ = 0;
f32 gLookatUpX = 0;
f32 gLookatUpY = 1.0;
f32 gLookatUpZ = 0;

u32 D_800BE5CC = 0; // unused. file break?

u16 gCurrentScene = 0;

u16 D_800BE5D4 = 0; 

FixedCoord gPlayerPosX = {0};
FixedCoord gPlayerPosY = {0};

s16 D_800BE5E0 = 0; 
s16 D_800BE5E4 = 0; 

FixedCoord gPlayerVelXMirror = {0};
FixedCoord gPlayerVelYMirror = {0};

s16 D_800BE5F0 = 0; 
UnkStruct_D_800BE5F4 D_800BE5F4 = {0};
u16 D_800BE5F8 = 0;
u16 D_800BE5FC = 0; 

// several bytes of unused/unread data ahead

u32 D_800BE600 = 0;
u32 D_800BE604 = 0;
u32 D_800BE608 = 0;
u32 D_800BE60C = 0;
u32 D_800BE610 = 0;
u32 D_800BE614 = 0;
u32 D_800BE618 = 0;
s32 D_800BE61C = 0;
s32 D_800BE620 = 0;
u32 D_800BE624 = 0;
u32 D_800BE628 = 0;

u16 gScreenXLock = FALSE;
u16 gScreenYLock = FALSE;

u16 D_800BE634 = 0;
u16 D_800BE638 = 0;
u16 gHealthDisplayed = 0;
u32 D_800BE640 = 0;
u16 D_800BE644 = 0;
u16 D_800BE648 = 0;
u16 D_800BE64C = 0;
u16 D_800BE650 = 0;
u16 D_800BE654 = 0;
u16 D_800BE658 = 0;
u16 D_800BE65C = 0;
u16 D_800BE660 = 0;
u16 D_800BE664 = FALSE;
u16 D_800BE668 = 0;
u16 D_800BE66C = 0;
u16 gActorStall = FALSE;
u16 D_800BE674 = FALSE;

// several bytes of unused/unread data ahead

u16 D_800BE678 = 0;
u16 D_800BE67C = 0;
u16 D_800BE680 = 0;
u16 D_800BE684 = 0;
u16 D_800BE688 = 0;
u32 D_800BE68C = 0;
u32 D_800BE690 = 0;
u32 D_800BE694 = 0;
u32 D_800BE698 = 0;
u32 D_800BE69C = 0;
u32 D_800BE6A0 = 0;

u16 D_800BE6A4 = 0;
u16 D_800BE6A8 = 0;

u16 gDebugBitfield = 0;
f32 D_800BE6B0 = 90.0;
u16 gDebugThrottle = 1;
u16 gDebugOSDTint = 0;

u32 D_800BE6BC = 0;

s32 gActorDepthFront = 0;
s32 D_800BE6C4 = 0;
s32 D_800BE6C8 = 0;
s32 gActorDepthMiddle = 0;
s32 D_800BE6D0 = 0;
s32 D_800BE6D4 = 0;
s32 gActorDepthBack = 0;
s32 D_800BE6DC = 0;
s32 D_800BE6E0 = 0;
u8 gDrawMidground = FALSE;
u8 gDrawEnvLayer = FALSE;
u8 gDrawBackground = FALSE;

u8 gPortraitTint = 0xFF;
u32 D_800BE6F4 = 0;
u16 D_800BE6F8 = 0;
u16 D_800BE6FC = 0;
u16 gCurrentFramebufferIndex = 0;
u16 D_800BE704 = 16;
u16 D_800BE708 = 4;
u8 D_800BE70C = 0;
u8 D_800BE710 = FALSE;
u16 D_800BE714 = FALSE;

u32 D_800BE718 = 0;

s32 D_800BE71C = 0;
s32 D_800BE720 = 0;
s32 D_800BE724 = 0;
s32 D_800BE728 = 0;
s32 gCameraRot = 0;
s32 gCameraRotDelta = 0;
s32 D_800BE734 = 0;
s32 D_800BE738 = 0;
s32 D_800BE73C = 0;

s32 D_800BE740 = 2;
s32 D_800BE744 = 0;
s32 D_800BE748 = 0;
s32 D_800BE74C = 0;
