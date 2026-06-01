#include "common.h"
#include "actor.h"
#include "boot.h"
#include "input.h"

void func_800012F0(void);
void func_8000147C(void);
void func_80001670(void);
u16 Rand(void);

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
            if (gActors[0].health >= 0) {
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
            func_800838E0(); // DebugText_Reset ?
        }
    }
    else {
        func_800838E0(); // DebugText_Reset ?
    }
}

void func_8000147C(void) {
    gFramesInScene++;
    if (gFramesInPlayTime < 518399999) {
        gFramesInPlayTime++;
    }

    func_800012F0(); // PauseGame_Check
    func_80001670(); // GameState_Tick
    func_800821B0(); // MarinaGraphics_Load
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
    func_800822B8(); // MarinaGraphics_Decrypt
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

    func_80021620(); // DebugText_BorW
    func_80083E74(); // DebugText_Tick
}


extern void GameState_SoftReset(void);
extern void GameState_Intro(void);
extern void GameState_TitleScreen(void);
extern void GameState_DebugSoundTest(void);
extern void GameState_DebugStageSelect(void);
extern void GameState_Loading(void);
extern void GameState_Gameplay(void);
extern void GameState_ContinueScreen(void);
extern void GameState_State8Overlay(void);
extern void GameState_State9Overlay(void);
extern void GameState_Attract(void);
extern void GameState_FileSelect(void);
extern void GameState_Transition(void);
extern void GameState_Records(void);

void func_80001670(void) {
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
