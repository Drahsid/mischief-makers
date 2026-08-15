#ifndef STAGE_TILEMAP_H
#define STAGE_TILEMAP_H

#include <PR/ultratypes.h>

void func_8001107C(void);

// BUG: inconsistent prototype!
#ifndef func_80011F44_ARGS
#define func_80011F44_ARGS s16 arg0, s16 arg1, s8 arg2, s8 arg3
#endif
void func_80011F44(func_80011F44_ARGS);

void func_80012044(s16, s16, s16);

#endif
