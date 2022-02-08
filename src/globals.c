#include "common.h"


#ifdef NON_MATCHING
//inital values for common game globals.
D_800BE4D0=0;
D_800BE4D4=0;
D_800BE4D8=0;
D_800BE4DC=0;
gSceneFrames=0;
gSceneFramesReal=0;
gGamePaused=0;
D_800BE4EC=0;
gGameState=0;
gGameSubState=0;
//input related
gButtonHold=0;
gButtonPress=0;
//yeah, rather than refence the #define'd values, they cross with these vars.
//maybe they planned controller config?
gButton_Start= START_BUTTON;
gButton_DUp=CONT_UP;
gButton_DDown=CONT_DOWN;
gButton_DLeft=CONT_LEFT;
gButton_DRight=CONT_RIGHT;
gButton_B=B_BUTTON;
gButton_A=A_BUTTON;
gButton_CLeft=L_CBUTTONS;
gButton_CDown=D_CBUTTONS;
gButton_CUp=U_CBUTTONS;
gButton_CRight=R_CBUTTONS;
gButton_ZTrig=Z_TRIG;
gButton_LTrig=L_TRIG;
gButton_RTrig=R_TRIG;
D_800BE538=0;
//It does WRITE the joysick input, but never reads it.
gJoyX=0;
gJoyY=0;
D_800BE544=0;
D_800BE548=0x1000000;
D_800BE54C=0x1000000;
//probably the wrong descriptor for these vals, but good enough for now.
gScreenPosTargetX._w=0;
gScreenPosTargetY._w=0;
gScreenPosCurrentX._w=0;
gScreenPosCurrentY._w=0;
gScreenPosNextX._w=0;
gScreenPosNextY._w=0;
D_800BE59C=0;
D_800BE5A0=0;
gRNGseed=0;
//feed into guLookAt
gEyeX=0.0;
gEyeY=0.0;
gEyeZ=0.0;
gAtX=0.0;
gAtY=0.0;
gAtZ=0.0;
gUpX=0.0;
gUpY=1.0;
gUpZ=0.0;
gCurrentScene=0;
D_800BE5D4=0;
gPlayerPosXMirror._w=0;
gPlayerPosYMirror._w=0;
D_800BE5E0=0;
D_800BE5E4=0;
gPlayerVelXMirror._w=0;
gPlayerVelYMirror._w=0;
D_800BE5F0=0;
D_800BE5F4._w=0;
D_800BE5F8=0;
D_800BE5FC=0;
D_800BE610=0;
D_800BE614=0;
D_800BE618=0;
D_800BE61C=0;
D_800BE620=0;
//can lock camera to either axis. But the game keeps them at 0.
gScreenXLock=0;
gScreenYLock=0;
D_800BE634=0;
D_800BE638=0;
gHPdisplayed=0;
D_800BE644=0;
D_800BE648=0;
D_800BE64C=0;
D_800BE650=0;
D_800BE654=0;
D_800BE658=0;
D_800BE65C=0;
D_800BE660=0;
D_800BE664=0;
D_800BE668=0;
D_800BE66C=0;
D_800BE670=0;
D_800BE674=0;
//unused, written by one of the worm's funcs, never read.
D_800BE678=0;
D_800BE67C=0;
uint16_t D_800BE680=0;
uint16_t D_800BE684=0;
uint16_t D_800BE688=0;
//big gap
D_800BE6A4=0;
D_800BE6A8=0;
gDebugBitfeild=0;
D_800BE6B0=90.0;
gDebugThrottle=1;
gDebugBorW._s=0;

D_800BE6C0=0;
D_800BE6C4=0;
D_800BE6C8=0;
D_800BE6CC=0;
D_800BE6D0=0;
D_800BE6D4=0;
D_800BE6D8=0;
D_800BE6DC=0;
D_800BE6E0=0;
D_800BE6E4=0;
D_800BE6E8=0;
D_800BE6EC=0;
D_800BE6F0=255;
D_800BE6F8=0;
D_800BE6FC=0;
gCurrentFramebufferIndex=0;
D_800BE704=16; //used for camera x scroll somehow.
D_800BE708=4; //above, but Y axis
D_800BE70C=0; //switch for ucode in Gfx_DrawActors
D_800BE710=0; //bool for Static gem render func.
D_800BE714=0; //flag for loading marina's graphics?
//Seasick Climb uses these to calculate the camera effect.
D_800BE71C=0;
D_800BE720=0;
D_800BE724=0;
D_800BE728=0; //probably the camera zoom level
gCameraRot=0;
gCameraRotDelta=0;
D_800BE734=0;
D_800BE738=0;
D_800BE73C._w=0;
#endif