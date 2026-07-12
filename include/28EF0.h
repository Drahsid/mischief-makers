#ifndef FILE_28EF0_H
#define FILE_28EF0_H

#include "common.h"

s32 Actor_ReduceHealth(u16 actor_index, u16 health_diff);

void Actor_SetVelocityXAbs(u16 actor_index, s32 velocity_x);

void Actor_UpdateVelocityX(u16 actor_index, s32 dvx);
void Actor_UpdateVelocityY(u16 actor_index, s32 dvy);
void Actor_UpdateVelocity(u16 actor_index, s32 dvx, s32 dvy);

void Actor_ClampVelocityX(u16 actor_index, s32 max_velocity);
void Actor_ClampVelocityY(u16 actor_index, s32 max_velocity);
void Actor_ClampVelocity(u16 actor_index, s32 max_velocity);

void Actor_Clamp_0F8_0FC(u16 actor_index, s32 max_val);
void Actor_Clamp_0F8(u16 actor_index, s32 max_val);

u16 func_800291AC(u16 actor_index, u16 state1, s32 flags1, u16 state2, s32 flags2);
void func_8002ECAC(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y);
s16 func_8003526C(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4);
void func_80034644(u16 actor_index);
void func_800333A0(s16 x, s16 y, s16 z, f32 arg3);

s16 Clanpot_AddItemCheck3(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4);
void ClanpotIcon_State1(u16 actor_index);

#endif
