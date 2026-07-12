#ifndef FILE_GAME_STATE_H
#define FILE_GAME_STATE_H

#include <PR/ultratypes.h>

void GameState_Loading(void);
void GameState_SoftReset(void);
void GameState_Intro(void);
void GameState_TitleScreen(void);
void GameState_DebugSoundTest(void);
void GameState_DebugStageSelect(void);
void GameState_Gameplay(void);
void GameState_ContinueScreen(void);
void GameState_Attract(void);
void GameState_FileSelect(void);
void GameState_Transition(void);
void GameState_Records(void);

#endif
