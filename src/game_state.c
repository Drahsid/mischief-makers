#include "common.h"
#include "actor.h"
#include "boot.h"
#include "input.h"
#include "game_state.h"
#include "frontend.h"
#include "1F1E0.h"
#include "debug.h"
#include "marina_graphics.h"

s16 D_801370D0;
s16 D_801370D2;
u16 D_801370D4;
u16 D_801370D8[128]; // Marina graphic history. used for unused after-image state
s16 D_801371D8[128]; // Marina X-position history. used for unused after-image state
s16 D_801372D8[128]; // Marina Y-position history. used for unused after-image state
u16 D_801373D8;
u16 D_801373DA;
s16 D_801373DC;
u16 D_801373DE;
PlayerData gPlayerData;
s32 D_80137460[2]; // unused
s32* D_80137468;
u8* D_8013746C; // related to type of D_800C71A0
u8* D_80137470;
u16 D_80137474;
u16 D_80137476;
u16 D_80137478;
u16 D_8013747A;
u16 D_8013747C; // determines if "top" group of actors are drawn before or after portraits (i.e during world map)
u16 D_80137480[46];
u32 gUpdateColorTime; // delta time for updating colors for gems and other actors
u32 D_801374E0[4]; // unused
u16 D_801374F0[72]; // source of texture images
u16 D_80137580[72]; // source of texture images
u16 D_80137610[70]; // source of texture images
u16* D_8013769C; // palette
u16* D_801376A0; // palette
u16* D_801376A4; // palette
u8 D_801376A8[4];
u8 D_801376AC[4];
u8 D_801376B0[4];
u8 D_801376B4[4];
u8 D_801376B8[4];
u8 D_801376BC[4];
u16** D_801376C0;
u16** D_801376C4;
u16** D_801376C8;
u16** D_801376CC;
u16** D_801376D0;
u16** D_801376D4;
u16** D_801376D8;
Gfx** D_801376DC;
u32 D_801376E0;
s32 D_801376E4;
u32 D_801376E8;
Gfx** D_801376EC;
u32 D_801376F0;
Gfx** D_801376F4;
u32 D_801376F8;
Gfx** D_801376FC;
u32 D_80137700;
Gfx** D_80137704;
u32 D_80137708;
Gfx** D_8013770C;
u32 D_80137710;
Gfx** D_80137714;
u32 D_80137718;
Gfx** D_8013771C;
u32 D_80137720;
u8* D_80137724;
u32 D_80137728;
u32 D_8013772C;
u32 D_80137730;
u32 D_80137734;
u32 D_80137738;
u32 D_8013773C;
u32 D_80137740;
u32 D_80137744;
u32 D_80137748;
u32 D_8013774C;
u32 D_80137750;
u32 D_80137754; // unused
u32 D_80137758; // unused
u32 D_8013775C; // unused
u32 D_80137760; // unused
u32 D_80137764; // unused
u32 D_80137768; // unused
u16* D_8013776C;
u32 D_80137770;
u8* D_80137774;
u8* D_80137778;
u8* D_8013777C;
u32 D_80137780;
u8* D_80137784;
u32 D_80137788;
u8* D_8013778C;
u32 D_80137790;
s32 D_80137794;
u8 gAudioInitialized;

void GameState_Update(void);

void func_800012F0(void) {
    if (gGameState == GAMESTATE_GAMEPLAY) {
        if ((gDebugBitfield & DEBUGFLAG_FORCEPAUSE) && (gGamePaused == 0)) {
            gGamePaused = TRUE;
        }

        if (gGamePaused != 0 && gGameStateSubState == 0x10) {
            if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
                // if this is true, you can pause while not drawing the pause screen (it still processes though?)
                if (gDebugBitfield & DEBUGFLAG_BLANKPAUSE) {
                    func_80020844(); // PauseGame_RestoreVolume ?
                    func_800208D4(); // PauseGame_Unpause ?
                }
                else {
                    gGameStateSubState = 0x20;
                }
            }
        }
        else if ((gButtonPress & gButton_Start) && (gCannotPause == 0) && (gGameStateSubState == 0)) {
            // player->health >= 0
            if (gPlayerActor.health >= 0) {
                gGamePaused = TRUE;
                gDebugBitfield &= ~DEBUGFLAG_UNK4;
                if (gDebugBitfield & DEBUGFLAG_BLANKPAUSE) {
                    gGameStateSubState = 0x10;
                }
                else {
                    gGameStateSubState = 0;
                }
            }
        }
        if (gGamePaused == FALSE) {
            OSD_Reset();
        }
    }
    else {
        OSD_Reset();
    }
}

void func_8000147C(void) {
    gFramesInScene++;
    if (gFramesInPlayTime < FILE_PLAY_TIME_MAX - 1) {
        gFramesInPlayTime++;
    }

    func_800012F0(); // PauseGame_Check
    GameState_Update();
    MarinaGraphics_Copy();
    func_80009940();
    func_80082F10();
    func_80009BE8(gActorsBack); // DrawActors

    // "Snowstorm Maze" and "Lunar"
    if (D_800BE674) {
        func_80082CFC(); // DrawMidground
        func_8000DD6C(); // DrawClanBlocks
        func_80009BE8(gActorsFront); // DrawActors
        func_80082E04(); // DrawEnvLayer
    }
    else {
        func_80082E04(); // DrawEnvLayer
        func_80009BE8(gActorsMiddle); // DrawActors
        func_80082CFC(); // DrawMidground
        func_80009BE8(gActorsFront); // DrawActors
        func_8000DD6C(); // DrawClanBlocks
    }

    if (D_8013747C != 0) {
        func_8000EA88(); // DrawPortraits
        func_80009BE8(gActorsTop); // DrawActors
    }
    else {
        func_80009BE8(gActorsTop); // DrawActors
        func_8000EA88(); // DrawPortraits
    }

    Rand(); // update rng
    MarinaGraphics_Decompress();
    Gfx_DrawLetterbox();
    func_8000F290(); // DrawLifeBar
    func_80009BE0();

    if (gDebugBitfield & DEBUGFLAG_STUB1) {
        func_8002167C();
    }

    if (gDebugBitfield & DEBUGFLAG_STUB15) {
        func_8001FF28();
    }

    if (gDebugBitfield & DEBUGFLAG_STUB6) {
        func_80021658();
    }

    if ((gDebugBitfield & (DEBUGFLAG_STUB12 | DEBUGFLAG_UNK5)) == DEBUGFLAG_STUB12) {
        func_80021660();
    }

    func_80021620();
    OSD_Tick();
}

void GameState_Update(void) {
    switch (gGameState) {
        case GAMESTATE_SOFTRESET: {
            GameState_SoftReset(); // soft reset
            break;
        }
        case GAMESTATE_INTRO: {
            GameState_Intro(); // game intro
            break;
        }
        case GAMESTATE_TITLESCREEN: {
            GameState_TitleScreen(); // titlescreen
            break;
        }
        case GAMESTATE_DEBUG_SOUNDTEST: {
            GameState_DebugSoundTest(); // debug sound test
            break;
        }
        case GAMESTATE_DEBUG_STAGESELECT: {
            GameState_DebugStageSelect(); // debug level select
            break;
        }
        case GAMESTATE_LOADING: {
            GameState_Loading(); // loading stage
            break;
        }
        case GAMESTATE_GAMEPLAY: {
            GameState_Gameplay(); // in stage
            break;
        }
        case GAMESTATE_CONTINUE: {
            GameState_ContinueScreen(); // game over screen
            break;
        }
        case GAMESTATE_UNKNOWN0: {
            GameState_State8Overlay(); // dma'd in from rom
            break;
        }
        case GAMESTATE_UNKNOWN1: {
            GameState_State9Overlay(); // dma'd in from rom
            break;
        }
        case GAMESTATE_ATTRACT: {
            GameState_Attract(); // attract demo mode
            break;
        }
        case GAMESTATE_FILESELECT: {
            GameState_FileSelect(); // file select
            break;
        }
        case GAMESTATE_TRANSITION: {
            GameState_Transition(); // transition
            break;
        }
        case GAMESTATE_RECORDS: {
            GameState_Records(); // level select (best times)
            break;
        }
        default: {
            break; // applies for case 13?
        }
    }
}

// LCG rng
u16 Rand(void) {
    gRngSeed = (gRngSeed * 0x85) + 1;
    return gRngSeed / 0x100;
}
