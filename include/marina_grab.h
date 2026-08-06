#ifndef MARINA_GRAB_H
#define MARINA_GRAB_H

#include <PR/ultratypes.h>
#include "actor.h"

extern ActorFunc D_800D3FD0[];

extern s8 D_800D4000[][4];
extern s8* D_800D4094[];
extern s8* D_800D4184[];
extern u16 D_800D431C[];
extern u16* D_800D54EC[];
extern s32 gMarinaActionVelocities[]; // velocities for Marina's various actions. multiplied by gPlayerActor.unk_120

s32 func_8004F2B0(u16 actor_index);
void Marina_DropActor(u16 actor0, u16 actor1);
s32 func_8004F7D8(u16 actor_index);
s32 func_800528F4(u16 actor_0, u16 actor_1);

#endif
