#ifndef MARINA_GRAB_H
#define MARINA_GRAB_H

#include <PR/ultratypes.h>
#include "actor.h"

extern ActorFunc gMarinaEffectTable[];

extern s8 D_800D4000[][4];
extern s8* D_800D4094[];
extern s8* D_800D4184[];
extern u16 D_800D431C[];
extern u16* D_800D54EC[];
extern s32 gMarinaActionSpeeds[]; // velocities for Marina's various actions. multiplied by gPlayerActor.unk_120

s32 func_8004F2B0(u16 actor_index);
s32 func_8004F35C(u16 actor_index, u32* arg1);
void func_8004F5B0(u16 actor_index);
void Marina_DropActor(u16 actor0, u16 actor1);
s32 func_8004F7D8(u16 actor_index);
s32 func_800528F4(u16 actor_0, u16 actor_1);
s32 func_80052A6C(u16 actor_0, u16 actor_1);
void func_80052CD0(u16 actor_0, u16 actor_1);
s32 func_80053210(u16 actor_0, u16 actor_1);

extern Actor2Func gMarinaHitTable[];
void Marina_ShakeShake(u16 actor_index);
void Marina_IdleHoldingState(u16 actor_index);
void Marina_LandHoldingState(u16 actor_index);
void Marina_WalkHoldingState(u16 actor_index);
void func_800508F4(u16 actor_index);
void Marina_GroundDashHoldingState(u16 actor_index);
void Marina_SlideDashHoldingState(u16 actor_index);
void func_80051324(u16 actor_index);
void func_80051C48(u16 actor_index);
void func_80052004(u16 actor_index);
void func_80055188(u16 actor_index);
void func_800551F8(u16 actor_index);
void func_800553EC(u16 actor_index);
void func_8005544C(u16 actor_index);
void Marina_ThrowState(u16 actor_index);
void func_8005701C(u16 actor_index);
void Marina_DropState(u16 actor_index);

#endif
