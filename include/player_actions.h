#ifndef PLAYER_ACTIONS_H
#define PLAYER_ACTIONS_H

#include <PR/ultratypes.h>
#include "actor.h"

extern Actor2Func D_800D3F70[];
extern ActorFunc D_800D3FD0[];

extern s8 D_800D4000[][4];
extern s8* D_800D4094[];
extern s8* D_800D4184[];
extern u16 D_800D431C[];
extern u16* D_800D54EC[];
extern s32 gMarinaActionVelocities[];

s32 func_8004F2B0(u16 actor_index);
void func_8004F514(u16 actor0, u16 actor1);
s32 func_8004F7D8(u16 actor_index);
void func_8004FDF8(u16 actor_index);
void func_800500B0(u16 actor_index);
void func_8005060C(u16 actor_index);
void func_8005074C(u16 actor_index);
void func_800508F4(u16 actor_index);
void func_800509C0(u16 actor_index);
void func_80050F3C(u16 actor_index);
void func_80051324(u16 actor_index);
void func_80051C48(u16 actor_index);
void func_80052004(u16 actor_index);
s32 func_800528F4(u16 actor_0, u16 actor_1);
void func_80055188(u16 actor_index);
void func_800551F8(u16 actor_index);
void func_800553EC(u16 actor_index);
void func_8005544C(u16 actor_index);
void func_80056F54(u16 actor_index);
void func_8005701C(u16 actor_index);
void func_80057268(u16 actor_index);

#endif
