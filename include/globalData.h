#ifndef GLOBAL_DATA_H
#define GLOBAL_DATA_H

#include "common_structs.h"
#include "common_enums.h"
#include "actor.h"
#include "thread.h"
#include "Scene.h"
#include <PR/ultratypes.h>


// used by gGameState
enum GameState {
    GAMESTATE_SOFTRESET,
    GAMESTATE_INTRO,
    GAMESTATE_TITLESCREEN,
    GAMESTATE_DEBUG_SOUNDTEST,
    GAMESTATE_DEBUG_STAGESELECT,
    GAMESTATE_LOADING,
    GAMESTATE_GAMEPLAY,
    GAMESTATE_CONTINUE, // game over
    GAMESTATE_UNKNOWN0,
    GAMESTATE_UNKNOWN1,
    GAMESTATE_ATTRACT,
    GAMESTATE_FILESELECT,
    GAMESTATE_TRANSITION,
    GAMESTATE_NONE,
    GAMESTATE_RECORDS
};


// used by gDebugBitfield
enum DebugFlags {
    DEBUGFLAG_STUB1 = (1U << 0), //runs a stubbed function on game tick.
    
    // control gDebugThrottle value with L and R buttons
    // input between slowed ticks stored in D_801781DC
    DEBUGFLAG_THROTTLE = (1U << 1U), 
    
    // game runs with perspective view when set, orthographic when unset
    // set during initalization.
    DEBUGFLAG_PERSPECTIVE = (1U << 2U), 
    DEBUGFLAG_UNK3 = (1U << 3U), // unknown/unused
    DEBUGFLAG_UNK4 = (1U << 4U), // unset in func_800012F0
    DEBUGFLAG_UNK5 = (1U << 5U), // used for mask in func_8000147C
    DEBUGFLAG_STUB6 = (1U << 6U), // runs a stubbed function on game tick.
    DEBUGFLAG_ACTORSTATS = (1U << 7U), // display stats on actor(s) in "front layer"
    DEBUGFLAG_BLANKPAUSE = (1U << 8U), // changes pause state behavior.
    DEBUGFLAG_FORCEPAUSE = (1U << 9U), // force the game into a pause state
    DEBUGFLAG_UNK10 = (1U << 10U), // used in "camera Lock" mask
    DEBUGFLAG_UNK11 = (1U << 11U), // unknown/unused
    DEBUGFLAG_STUB12 = (1U << 12U), //runs a stubbed function on game tick.
    DEBUGFLAG_UNK13 = (1U << 13U), // used in "camera Lock" mask
    DEBUGFLAG_SFXDATA = (1U << 14U), // display data on SFX channel states.
    DEBUGFLAG_STUB15 = (1U << 15U), //runs a stubbed function on game tick.
    DEBUGFLAG_CAMERALOCK = (DEBUGFLAG_STUB15 | DEBUGFLAG_UNK13 | DEBUGFLAG_UNK10) // checked for in some scenes' camera logic.
};

// global values near start of .bss
// has mix of types of data (sound, collision, etc.), for some reason.


extern Gfx* gCurrentDisplayListBase;
extern u32 D_800EF500; // unknown/unused
extern u32 D_800EF504; // unknown/unused
extern u8 D_80104090[4];
extern u32 D_80104094;
// first 64 are used for portrait transition effect. the last two are the life bar
// and bust on the edge respectively.
extern PortraitStruct gPortraits[66]; 
extern u32 D_801069DC; // unused
extern UnkStruct_801069E0 D_801069E0[64]; // clanblocks/"static gems" on screen / loaded?
extern u8 D_80108DE8[512][32]; // see func_80011A18, func_80010C20, func__800119AC.
extern u8 D_8010CDF0[0x10000];
extern u16 gPlatform0Actors[144]; // indecies of ACTOR_FLAG_PLATFORM0-flagged Actors
extern u16 gPlatform1Actors[144]; // indecies of ACTOR_FLAG_PLATFORM1-flagged Actors
extern u32 D_8011D040[2]; // blank space between
extern s16 gPlatforms0X1[144]; // posX + hitboxBX1 of ACTOR_FLAG_PLATFORM0-flagged Actors
extern u32 D_8011D068[2]; // blank space between
extern s16 gPlatforms1X1[144]; // posX + hitboxBX1 of ACTOR_FLAG_PLATFORM1-flagged Actors
extern s16 gPlatforms0X0[144]; // posX + hitboxBX0 of ACTOR_FLAG_PLATFORM0-flagged Actors
extern s16 D_8011D3B0[8][2]; // initial stage properties (actualy FixedCoord[8]?)
extern s16 gPlatforms1X0[144]; // posY + hitboxBX0 of ACTOR_FLAG_PLATFORM1-flagged Actors
extern s16 gPlatforms0Y0[144]; // posY + hitboxBY0 of ACTOR_FLAG_PLATFORM0-flagged Actors
extern s16 gPlatforms1Y0[144]; // posY + hitboxBY0 of ACTOR_FLAG_PLATFORM1-flagged Actors
extern s16 gPlatforms0Y1[144]; // posY + hitboxBY0 of ACTOR_FLAG_PLATFORM0-flagged Actors - 8
extern s16 gPlatforms1Y1[144]; // posY + hitboxBY1 of ACTOR_FLAG_PLATFORM1-flagged Actors


// global values near start of .data

extern u16 gPlatform1ActorCount; // count of ACTOR_FLAG_PLATFORM1-flagged Actors
extern u16 gPlatform0ActorCount; // count of ACTOR_FLAG_PLATFORM0-flagged Actors
extern u16 gPlatformHit; // set if an actor contacts either group of platform hitboxes
extern u16 gPlatformHitActor; // index of actor contacting either group of platform hitboxes
extern u16 gActiveFrames; // count of frames/ticks in current scene. does not count during pause. often AND'd and modulo'd.
extern u16 gFramesInScene; // a second count of frames/ticks in current scene. not effect by pausing.
extern u16 gGamePaused; // set when game is paused.
extern u16 gCannotPause; // if set, prevents pausing game.
extern u16 gGameState; // main state of game. uses GameState enum
extern u16 gGameStateSubState; // sub state of game state.
extern u16 D_800BE544; // bitfeild determining camera scroll?
extern FixedCoord D_800BE548; // max horizonal camera scroll speed?
extern FixedCoord D_800BE54C; // max vertical camera scroll speed?
extern FixedCoord gScreenPosTargetX; // target x-position of camera in stage
extern FixedCoord gScreenPosTargetY; // target y-position of camera in stage
extern FixedCoord gScreenPosCurrentX; // current x-position of camera in stage
extern FixedCoord gScreenPosCurrentY; // current y-position of camera in stage
extern FixedCoord gScreenPosNextX; // next x-position of camera
extern FixedCoord gScreenPosNextY; // next y-position of camera
extern FixedCoord D_800BE568; 
extern FixedCoord D_800BE56C; 
extern FixedCoord D_800BE570;
extern FixedCoord D_800BE574;
extern s16 D_800BE578;
extern s16 D_800BE57C;
extern s16 D_800BE580;
extern s16 D_800BE584;
extern u16 D_800BE588;
extern s16 D_800BE58C;
extern s16 gCamShakeTime; // time shaking camera.
extern s16 gCamShakeV; // vertical offset of camera shake.
extern s16 gCamShakeType; // type of camera shake. ranges from 0-2.
extern s32 gCamShakeMag; // magnitude of camera shake
extern s32 gCamShakeMagDelta; // magnitude of tick's camera shake
extern u16 gRngSeed; // RNG seed. game init's to 0x1234
extern f32 gLookatEyeX; // LookAt Eye X
extern f32 gLookatEyeY; // LookAt Eye Y
extern f32 gLookatEyeZ; // LookAt Eye Z
extern f32 gLookatAtX; // LookAt At X
extern f32 gLookatAtY; // LookAt At Y
extern f32 gLookatAtZ; // LookAt At Z
extern f32 gLookatUpX; // LookAt Up X
extern f32 gLookatUpY; // LookAt Up Y
extern f32 gLookatUpZ; // LookAt Up Z
extern u16 gCurrentScene; // current "scene" of game. uses SCENE_* #define
extern u16 D_800BE5D4; 
extern FixedCoord gPlayerPosX; // player's global x-position
extern FixedCoord gPlayerPosY; // player's global y-position
extern s16 D_800BE5E0; 
extern s16 D_800BE5E4; 
extern FixedCoord gPlayerVelXMirror; // copy of player's x-velocity
extern FixedCoord gPlayerVelYMirror; // copy of player's y-velocity
extern s16 D_800BE5F0; 
extern UnkStruct_D_800BE5F4 D_800BE5F4; // sometimes treated as a u32, s32, or u8[4]
extern u16 D_800BE5F8; // zero'd in func_800121D0, otherwise unused.
extern u16 D_800BE5FC; 
extern u32 D_800BE600; // unused
extern u32 D_800BE604; // unused
extern u32 D_800BE608; // unused
extern u32 D_800BE60C; // unused
extern u32 D_800BE610; // zero'd during GameState_Loading, otherwise unused.
extern u32 D_800BE614; // zero'd during GameState_Loading, otherwise unused.
extern u32 D_800BE618; // zero'd during GameState_Loading, otherwise unused.
extern u32 D_800BE61C; // zero'd during 2 functions, otherwise unused.
extern u32 D_800BE620; // zero'd during 2 functions, otherwise unused.
extern u32 D_800BE624; // unused.
extern u32 D_800BE628; // unused.
extern u16 gScreenXLock; // locks X-axis screen scrolling. always false
extern u16 gScreenYLock; // locks Y-axis screen scrolling. always false
extern u16 D_800BE634;
extern u16 D_800BE638;
extern u16 gHealthDisplayed; // value used by lifebar to display Marina's hitpoints.
extern u32 D_800BE640; // unused
extern u16 D_800BE644;
extern u16 D_800BE648;
extern u16 D_800BE64C;
extern u16 D_800BE650;
extern u16 D_800BE654;
extern u16 D_800BE658;
extern u16 D_800BE65C;
extern u16 D_800BE660;
extern u16 D_800BE664; // determies part of the behaviour when init'ing scene actors.
extern u16 D_800BE668; // always set to 50.
extern u16 D_800BE66C; // zero'd during 2 functions, otherwise unused.
extern u16 gActorStall; // stalls actor logic, unless ACTOR_FLAG_ALWAYS_UPDATE is set. always false.
extern u16 D_800BE674; // changes draw order for "EnvLayer". set during "Snowstorm Maze" and "Lunar".
extern u16 D_800BE678; // zero'd in func_80022D88, set during "Wormin' Up!", otherwise unused.
extern u16 D_800BE67C; // set during "Wormin' Up!", otherwise unused.
extern u16 D_800BE680; // set during "Wormin' Up!", otherwise unused.
extern u16 D_800BE684; // set during "Wormin' Up!", otherwise unused.
extern u16 D_800BE688; // set during "Wormin' Up!", otherwise unused.
extern u32 D_800BE68C; // unused
extern u32 D_800BE690; // unused
extern u32 D_800BE694; // unused
extern u32 D_800BE698; // unused
extern u32 D_800BE69C; // unused
extern u32 D_800BE6A0; // unused
extern u16 D_800BE6A4;
extern u16 D_800BE6A8;
extern u16 gDebugBitfield; // bitfield that can trigger leftover debug features. Init'd to active perpective camera.
extern f32 D_800BE6B0; // unused.
extern u16 gDebugThrottle; // can be used to slow game logic to (x/60) seconds per tick, where 1=<x=<50
extern u16 gDebugOSDTint; // turns debug text black or white. also treated as u8[2]
extern u32 D_800BE6BC; // unused. file break?
extern s32 gActorDepthFront; // compared to actors' z-pos to determine actors should be drawn in the "front" or "top". set to -8.
extern s32 D_800BE6C4; // read during "Midground" drawing
extern s32 D_800BE6C8; // read during "Midground" drawing
extern s32 gActorDepthMiddle; // compared to actors' z-pos to determine actors should be drawn in the "middle".
extern s32 D_800BE6D0; // read during "EnvLayer" drawing
extern s32 D_800BE6D4; // read during "EnvLayer" drawing
extern s32 gActorDepthBack; // compared to actors' z-pos to determine actors should be drawn in the "back".
extern s32 D_800BE6DC;
extern s32 D_800BE6E0;
extern u8 gDrawMidground; // draws "Midground" if set.
extern u8 gDrawEnvLayer; // draws "EnvLayer" if set.
extern u8 gDrawBackground; // draws "Background" if set.
extern u8 gPortraitTint; // determines brightness of portrait transition.
extern u32 D_800BE6F4; // unused.
extern u16 D_800BE6F8; // "timer" in func_80014AF0. decremented, but never set or triggering anything.
extern u16 D_800BE6FC;
extern u16 gCurrentFramebufferIndex; // index of current frame buffer.
extern u16 D_800BE704; // seems to detrmine camera x-speed.
extern u16 D_800BE708; // seems to detrmine camera y-speed.
extern u8 D_800BE70C; // changes some parameter of actor rendering.
extern u8 D_800BE710; // changes some parameter of rendering.
extern u16 D_800BE714; // boolean related to loading Marina's graphics
extern u32 D_800BE718; // unused.
extern s32 D_800BE71C; // used for "Seasick Climb"'s camera movement calculation.
extern s32 D_800BE720; // used for "Seasick Climb"'s camera movement calculation.
extern s32 D_800BE724; // used for "Seasick Climb"'s camera movement calculation.
extern s32 D_800BE728; // used for "Seasick Climb"'s camera movement calculation.
extern s32 gCameraRot; // used for camera rotation
extern s32 gCameraRotDelta; // increment of camera rotation
extern s32 D_800BE734; // used for camera calulation
extern s32 D_800BE738; // used for camera calulation
extern s32 D_800BE73C; // used for camera calulation
extern s32 D_800BE740; // unused
extern s32 D_800BE744; // unused
extern s32 D_800BE748; // unused
extern s32 D_800BE74C; // unused

#endif
