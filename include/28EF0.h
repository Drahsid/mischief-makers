#ifndef FILE_28EF0_H
#define FILE_28EF0_H

#include <PR/ultratypes.h>

void ActorUpdate_GraphicOnly(s32 actor_index);
void Actor_ClearRange(u16 start, u16 end);
void Actor_ClearRange_10To20(void);
void Actor_ClearRange_30To90(void);
void Actor_ClearRange_C0ToC7(void);
u16 func_8002884C(u16 actor_index);
void Actor_UpdateNearest(u16 actor_index);
void Actor_UpdateNearestTo0(u16 actor_index);
void func_80028B90(u16 actor_index);
void func_80028C00(u16 actor_index);
void func_80028CE8(u16 actor_index);
s32 func_80029044(u16 actor_index);
u16 func_800291AC(u16 actor_index, u16 state1, s32 flags1, u16 state2, s32 flags2);

s32 Math_Atan2(s32 x, s32 y);
s32 Math_PlaneHalf(s32 x, s32 y);
s32 Math_PlaneQuadrant(s32 x, s32 y);
s32 func_8002995C(s32 arg0, s32 arg1);
s32 func_80029A7C(s16 arg0, s16 arg1, s16 arg2);
s32 func_80029CC0(s16 arg0, s16 arg1, s16 arg2, s16 arg3);
s32 func_80029D58(s16 arg0, s16 arg1, s16 arg2, s16 arg3);
s32 func_80029DEC(u16 arg0, u16 arg1);
void Actor_SetVelocityXAbs(u16 actor_index, s32 velocity_x);
void Actor_ClampVelocityX(u16 actor_index, s32 max_velocity);
void Actor_ClampVelocityY(u16 actor_index, s32 max_velocity);
void Actor_ClampVelocity(u16 actor_index, s32 max_velocity);
void Actor_Clamp_0F8(u16 actor_index, s32 max_val);
void Actor_Clamp_0F8_0FC(u16 actor_index, s32 max_val);
void Actor_UpdateVelocityX(u16 actor_index, s32 dvx);
void Actor_UpdateVelocityY(u16 actor_index, s32 dvy);
void Actor_UpdateVelocity(u16 actor_index, s32 dvx, s32 dvy);
void func_8002A57C(u16 actor_index, s32 arg1, s32 arg2, s32 max_vx);
void Actor_SetHitboxB(u16 actor_index, s16 val);
void Actor_SetHitboxAX(u16 actor_index, s16 arg1, s16 arg2);
void func_8002B140(u16 actor_index, s16 arg1);
void Actor_ApproachRgb(u16 actor_index, s16 arg1);
void func_8002B400(u16 actor_index);
s32 Actor_ReduceHealth(u16 actor_index, u16 health_diff);
void ActorUpdate_Type27(s32 actor_index);
void func_8002C5C4(u16 actor_index, u16 arg1, s16 arg2, f32 scale, s32 arg4, s16 arg5);
void ActorUpdate_Type30(u16 actor_index);
void func_8002C6E4(u16 actor_index);
void ActorUpdate_Type1(u16 actor_index);
void ActorUpdate_WhiteFade(u16 actor_index);
void ActorUpdate_Landmine(u16 actor_index);
void func_8002DC74(u16 actor_index);
void SpawnEnergyShot(u16 actor_index, u16 flag, s32 angle, s32 pos_x, s32 pos_y, s32 pos_z);
void ActorUpdate_EnergyShot(u16 actor_index);
void SpawnHovercraftShot(u16 actor_index, u16 flag, s32 angle, s32 pos_x, s32 pos_y, s32 pos_z);
void ActorUpdate_HovercraftShot(u16 actor_index);
void SpawnRoundBomb(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y);
void func_8002ECAC(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y);
void SpawnBoomerang(u16 actor_index, s16 pos_x, s16 pos_y, s16 vel_x_unused, s16 vel_y_unused);
void ActorUpdate_GemRing(u16 actor_index);
void ActorUpdate_GemIcon(u16 actor_index);
void ActorUpdate_Gem124(u16 actor_index);
void ActorUpdate_Gem(u16 actor_index);
void ActorUpdate_Gem61(u16 actor_index);
void func_800309C0(u16 actor_index);
u16 SpawnParticle_Image_90C0_16(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z);
void ActorUpdate_Particle(u16 actor_index);
void func_80031DDC(u16 actor_index);

// BUG: inconsistent prototype!
#ifndef func_80031E38_ARGS
#define func_80031E38_ARGS \
    u16 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, u16 arg5, u16 arg6, \
    s32 arg7, s32 arg8, s16 arg9, s16 arg10, s16 arg11, s16 arg12, s16 arg13, \
    s16 arg14, s16 arg15, s16 arg16, s16 arg17, s16 arg18, s16 arg19, s16 arg20, \
    s16 arg21, s16 arg22, u16 arg23, u16 arg24, u16 arg25, u16 arg26, s16 arg27, \
    s16 arg28
#endif
u16 func_80031E38(func_80031E38_ARGS);

void func_800320F8(u16 actor_index);
void func_80032900(u16 actor_index);
void func_800333A0(s16 x, s16 y, s16 z, f32 arg3);
void ActorUpdate_AfterImage(u16 actor_index);
void SpawnDizzyStar(u16 parent, s32 scale_x, s32 scale_y, s32 pos_z, s32 duration);
void ActorUpdate_DizzyStar(u16 actor_index);
void SpawnParticle_SineUpNotes(s16 pos_x, s16 pos_y, s16 pos_z);
void func_800339BC(s32 pos_x, s32 pos_y, s32 pos_z, u16 arg3);
void func_80033B54(u16 actor_index);
void ActorUpdate_Type5(u16 actor_index);
void func_80033E7C(u16 actor_unused, s16 x, s16 y, s16 z, s32 velocity, u32 pos_scale, u16 arg6);
void func_800340CC(u16 actor_index, s16 arg1, u16 arg2);
void func_80034644(u16 actor_index);
void func_800348E4(u16 actor_index);

// BUG: inconsistent prototype!
#ifndef Clanpot_InitItems_ARGS
#define Clanpot_InitItems_ARGS u16 actor_index, u16* vals, u16 unused_a2
#endif
void Clanpot_InitItems(Clanpot_InitItems_ARGS);

s16 Clanpot_AddItem(u16 item_index, u16 flags, u16 var_110, u16 var_0D8, u16 icon, u16 pot_index);
s16 Clanpot_AddItemCheck1(u16 item_index, u16 flags, u16 var_110, u16 var_0D8);
s16 func_8003526C(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4);
s16 Clanpot_AddItemCheck3(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4);
void func_800358DC(u16 actor_index);
void ClanpotIcon_State1(u16 actor_index);
void ActorUpdate_ClanpotMenu(u16 actor_index);
void func_8003667C(u16 actor_index);
void ActorUpdate_ClanpotMixSequence(u16 actor_index);
void ActorUpdate_Clanpot(u16 actor_index);
void func_800390BC(u16 actor_index);
void ActorUpdate_Spikeball_Static(u16 actor_index);
void ActorUpdate_Spikeball_Hori(u16 actor_index);
void ActorUpdate_Spikeball_Vert(u16 actor_index);
void ActorUpdate_Clanball_28(u16 actor_index);
void func_8003AC30(u16 actor_index);
void func_8003B8CC(u16 actor_index);
void func_8003BE3C(u16 actor_index);
void ActorUpdate_ClanballSpring(u16 actor_index);
void ActorUpdate_AreaClear(u16 actor_index);
void func_8003E230(u16 actor_index);
void func_8003E854(u16 actor_index);
void func_8003ED48(u16 actor_index, s32 arg1, s16 position_x, s16 position_y, s16 position_z);
u16 func_8003F05C(f32 arg0, s16 x, s16 y, s16 z);
void func_8003F360(u16 actor_index);
u16 SpawnParticle_Exclamation(f32 scale, s16 pos_x, s16 pos_y, s16 pos_z);
u16 func_8003F7A0(f32 scale, s16 position_x, s16 position_y, s16 position_z);
u16 func_8003F9E0(f32 arg0, s16 arg1, s16 arg2, s16 arg3);
u16 SpawnParticle_RingWaveBlue(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z);
void func_80040564(u16 actor_index);
s32 func_800407D4(u16 actor_index);
s32 WarpGate_IsGrabbed(u16 actor_index);
void ActorUpdate_WarpGate(u16 actor_index);

#endif
