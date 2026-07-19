#ifndef SAVE_FILE_H
#define SAVE_FILE_H

#include <PR/ultratypes.h>

extern u16 gTimeRecords[]; // list of stage times
extern u8 gCurrentSaveSlot; // related to save slot index
extern u16 gFileRedGems[];
extern u16 gFileYellowGems[];
extern u64 gFilePlayTimes[];
extern u8 gWorldProgress; // max available stages
extern u8 D_80171B19; // set when festival games are won.

void func_80004FFC(u8 save_slot);
void func_800050B4(void);
void func_80005770(void);

#endif
