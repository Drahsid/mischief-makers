#ifndef ACTOR_PHYSICS_H
#define ACTOR_PHYSICS_H

#include <PR/ultratypes.h>

void func_80014F14(u16 actor_index, s32 arg1);

void ActorsUpdate_Velocity(void);
void ActorsUpdate_Position(void);
void ActorsUpdate_Physics(void);
void ActorsUpdate_Screenspace(void);

#endif
