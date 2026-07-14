#ifndef FUNCTION_SYMBOLS_H
#define FUNCTION_SYMBOLS_H

#include "common.h"

extern int sprintf(char* str, const char* fmt, ...);

extern u16 Rand(void);
extern void func_80012288(void);

// hacky workaround as we need the default proto of a func for func_80012AB4 in 66250.c
#ifndef func_80012AB4_ARGS
#define func_80012AB4_ARGS s16 arg0, s16 arg1
#endif
extern u8 func_80012AB4(func_80012AB4_ARGS);
extern u8 func_80012C04(s16, s16);
extern u8 func_8001FA78(u16 actor_index, s16 x, s16 y);

extern void func_80004FFC(s32);
extern void func_800050B4(void);
extern void func_800109B0(void);
extern void func_80010A10(void);
extern void func_80010C20(u16 arg0);
extern void func_80019688(void);
extern void func_8001A584(void);
extern void func_8001DC60(void);
extern void func_800230B8(void);
extern void func_80025B7C(void);
extern void func_80025E6C(void);
extern void func_800282F0(s16 arg0, s16 arg1);
extern void func_800286C8(void);
extern u16 func_8002877C(u16 actor_index);
extern s32 Math_AbsS32(s32 val);
extern s32 Math_Atan2(s32 x, s32 y);
extern s32 Math_PlaneOctant(s32 x, s32 y);
extern void func_8002AA20(u16 actor_index, s32 unused);
extern void Actor_SetHitboxB(u16 actor_index, s16 val);
extern u16 SpawnParticle_List_90C0_16(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z);
extern u16 SpawnParticle_Image_90C0_16(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z);
extern u16 SpawnParticle_RingWaveRed(f32 arg0, s16 x, s16 y, s16 z);
extern void SpawnParticle_SineUpHeart(s16 arg0, s16 arg1, s16 arg2);
extern void Actor_ClearRange_30To90(void);
extern u16 SpawnAreaClear(u16);
extern void func_80042D84(u16 arg0);
extern void func_80042DBC(u16* vals);
extern u8 func_80048C28(s32);
extern u16 func_8004571C(void);
extern void func_80045D84(u32 arg0, u32 arg1);
extern void func_80052C4C(u16 actor_0, u16 actor_1);
extern s32 func_80057320(u16, s16);
extern s32 func_8005739C(u16 arg0, s16 arg1);
extern s32 func_800575C0(u16 actor_index);
extern void func_80058924(u16);
extern u16 func_800592A0(u16 actor_index, s32* arg1);
extern u16 func_80059D88(u16 actor_index, s32* arg1, s32 unused_arg2, f32 scale);
extern u16 func_80059F30(u16 actor_index, s32* arg1, f32 scale, s32 arg3);
extern u16 func_8005A068(u16 actor_index, s32* arg1, s32 angle, f32 scale, s32 arg4);
extern u16 func_8005A4B0(u16 actor_index, f32 scale);
extern void func_8005C098(u16, s32);
extern u16 func_8005C250(u16 actor_index);
extern void func_8005C520(s8, s8);
extern s32 func_8005C550(u16 actor_index, s16 arg1);
extern s32 func_8005C6D0(s32);
extern s32 func_8005C708(s32);
extern u16 func_8005C774(s32);
extern void CameraShake(s32 mag, s32 time); // shake camera vertically.
extern u8 func_8005C870(u8);
extern s32 func_8005D1E8(u16);
extern u16 func_8005D338(u16 actor_index);
extern s32 func_8005D370(u16 actor_index, u16 arg1);
extern void func_8005D3D8(u16 actor_index);
extern u16 func_8005D418(u16 actor_index);
extern void func_8005D450(u16 actor_index);
extern void func_8005DE30(void);
extern s16 func_8005DEFC(void);
extern s32 func_8005DF5C(s32 arg0);
extern void func_80060F88(u16 actor_index);
extern void func_80066BCC(u16 actor_index);
extern void func_80067EF0(u16);
extern void func_8006CB88(u16);
extern void func_8006CC70(u16);
extern void func_8006CD5C(u16);

extern void Actor_ClearRange_10To20(void);
extern void func_80025578(void);
extern void func_800255B4(u16 arg0);
extern void func_80025BFC(void);
extern void func_80025C38(void);
extern void func_80025E00(void);
extern void func_80025EC4(u16 index);
extern void func_80025F70(u16 index);
extern void func_8002601C(u16 index);
extern void func_800260C8(u16 index);
extern void func_80026174(u16 index);
extern void func_80026220(u16 index);
extern void func_80026428(u16 index);
extern void func_80026494(u16 index, u16 offset);
extern void func_8002653C(void);
extern void func_80026584(u16 index);
extern void func_800265FC(u16 index);
extern void func_80026694(u16 index);
extern void func_8002670C(u16 index);
extern void func_80026784(u16 index);
extern void func_800267FC(u16 index);
extern void func_80026874(u16 index);
extern void func_8002694C(u16 index);
extern void func_80026A18(u16 index);
extern void func_80026B04(u16 index);
extern void func_80026BD0(u16 index);
extern void func_80026C9C(u16 index);
extern void func_80026D88(u16 index);
extern void func_80026F2C(u16 index);
extern void func_800270E4(u16 index);
extern void func_800271B0(u16 index);
extern void func_8002729C(u16 index);
extern void func_80028380(void);
extern u16 Actor_IsOutsideRegion(u16 actor_index, s16 arg1);
extern s32 func_80028C08(u16 actor_index);
extern void func_80029134(u16 actor_index);
extern u32 func_80029B00(s16 arg0, s16 arg1, s16 arg2);
extern u32 func_80029B74(s16 arg0);
extern s32 func_800298D0(s32 arg0, s32 arg1, s32 arg2);
extern u16 func_80029FB8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s16 arg4);
extern void Actor_SetHitboxA(u16 actor_index, s16 val);
extern void func_8002DB0C(u16 actor_index, u16 arg1, s32 arg2, s32 pos_x, s32 pos_y, s32 pos_z);
extern void func_8002EBB8(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y);
extern void func_8002ED34(u16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4);
extern s32 func_8002F154(u16 arg0, u16 arg1, u16 arg2);
extern s32 GemCollect_Static(u16 actor_index);
extern void SpawnGemRing(u16 arg0);
extern void func_80030A24(u16 actor_index);
extern void func_80030B0C(u16);
extern void func_80030B84(u16);
extern void func_80031D58(u16 actor_0, u16 actor_1);
extern u16 func_80032E60(u16 actor_index0, u16 arg1, u16 arg2, f32 arg3, s16 pos_z, f32 scale_x, f32 scale_y);
extern void func_800330A4(u16 actor_index0, u16 actor_index1, u16 arg2, f32 arg3);
extern void func_80033204(u16 arg0, u16 arg1, u16 arg2, f32 arg3, u16 arg4);
extern void func_800340CC(u16 actor_index, s16 arg1, u16 arg2);
extern s32 func_800358CC(u16 arg0, u16 arg1);
extern void Clanpot_SetMixedItem(u16 actor_index, u16 arg1, u16* arg2);
extern void ActorUpdate_Spikeball_Static(u16 actor_index);
extern void Spikeball_MoveX(u16 actor_index, s32 vel_target, s32 vel_step, s16 arg3, s16 arg4);
extern void Spikeball_MoveY(u16 actor_index, s32 vel_target, s32 vel_step, s16 arg3, s16 arg4);
extern void Spikeball_Jitter(u16 actor_index);
extern void Spikeball_State1End(u16 actor_index, u16 arg1);
extern void Spikeball_Update(u16 actor_index);
extern void Spikeball_UpdateHitbox(u16 actor_index);
extern void Spikeball_State0(u16 actor_index);
extern void SpawnCrosshair(u16 arg0, u16 actor_index);
extern void BossDeathExplode(s32 arg0, u16 actor_index, f32 scale_x, f32 scale_y);
extern void SpawnParticle_RingSparkle(u16 unused_arg0, s32 unused_arg1, f32 scale, s16 pos_x, s16 pos_y, s16 pos_z);
extern u16 SpawnParticle_HeartBubble(f32 scale, s16 pos_x, s16 pos_y, s16 pos_z);
extern u16 func_8003D68C(s32 graphic_flag, s16 by0, s16 by1, s16 bx0, s16 bx1, s32 pos_x, s32 pos_y, s32 pos_z, u16 red, u16 green, u16 blue);
extern u16 func_8003EEC0(f32, s16 x, s16 y, s16 z);
extern void func_8003F138(f32 arg0, s16 arg1, s16 arg2, s16 arg3);
extern u16 func_8003FF68(u16 actor_index, f32 scale);
extern s32 func_800406A4(u16* arg0, u16 arg1, s32 x, s32 y, s32 z);
extern void func_80040858(u16 actor_index);
extern u16 func_8004089C(u16 actor_index, u16* arg1);
extern s32 func_80040A64(void);
extern void func_80042E28(u16 arg0);
extern void func_80042F2C(s16 arg0, s16 arg1, s16 arg2);
extern void func_80043234(void);
extern void func_80043478(void);
extern void func_80043918(void);
extern void func_80043D04(u16* spawn);
extern s32 func_80043D6C(u16* spawn);
extern void func_80045500(void);
extern s16 func_800456DC(void);
extern void func_80045E58(u16* arg0);
extern s32 func_80045F08(u32 arg0);
extern u16* func_80045F14(u16* arg0);
extern void func_80046498(void);
extern void func_8004667C(void);
extern void func_80046A9C(void);
extern s32 func_80046EBC(void);
extern void func_800472D4(void);
extern s32 func_8004735C(u16 stage_state, u32 actor_flags);
extern void func_80047C98(void);
extern void func_80047CCC(void);
extern s32 func_800486F4(void);
extern s32 func_80048CE4(void);
extern s32 func_80048C94(s32);
extern s32 func_80048F70(u16, u16);
extern s32 func_800490BC(u16, s32, s32);
extern s32 func_800491B8(u16, s32, s32);
extern void func_8004A960(u16 actor_index);
extern u16 func_8004F614(u16 actor_index, s32 arg1, s32 arg2, s16 arg3);
extern u8 func_8005D1B0(u16 actor_index);
extern void func_8005DF40(s16 arg0, s16 arg1);
extern void func_8005E09C(s32 arg0, s32 arg1);
extern void func_80067E9C(u16 actor_index);
extern void func_8007325C(u16 actor_index);
extern s32 func_80073320(u16 actor_index); // return could be u16

extern u16 SpawnTextBubble(u16, u16*, s16, s16, s32);
extern void func_8008310C(void);
extern void func_800831D0(s16, s16, s16, s16);
extern void func_80083454(void);
extern void func_800836A0(s16 arg0, s16 arg1, u16* arg2, s16 arg3);
extern void func_80083BD8(s32 arg0, s16 arg1, s32 arg2);
extern void func_8008C4E0(u16 actor_index);
extern void func_8008C710(u16 arg0);
extern void func_8002092C(void);
extern void func_80020A54(void);
extern void func_80022D10(void);
#ifndef Actor_Initialize_RET
  #define Actor_Initialize_RET DEFAULT_INT
#endif
extern Actor_Initialize_RET Actor_Initialize(u16 actor_index);
extern void func_80026E60(u16 arg0);
extern u16 Actor_RangeFindInactive(u16 actor_index, u16 end);
extern u16 Actor_RangeFindInactive_90ToC0(void);
extern void Actor_ClearRange(u16 start, u16 end);
extern void Actor_ClearSceneActors(void);
extern s32 Math_ApproachS32(s32 current, s32 target, s32 step);
extern f32 Math_ApproachF32(f32 current, f32 target, f32 step);
extern s32 Math_ClampLimit(s32 val, s32 limit);
extern void Actor_SetColorRgb(u16 actor_index, u16 color);
extern u16 Palette_AdjustRgb5551(u16 color, s16 blue_offset, s16 green_offset, s16 red_offset);
extern void Palette_AdjustRgb5551Array(u16* src, u16* dst, s16 count, s16 blue_offset, s16 green_offset, s16 red_offset);
extern void Palette_AdjustScenePalettes(
    s16 blue_offset_0, s16 green_offset_0, s16 red_offset_0,
    s16 blue_offset_1, s16 green_offset_1, s16 red_offset_1,
    s16 blue_offset_2, s16 green_offset_2, s16 red_offset_2
);
extern void Actor_LoadSpawnTable(u16* spawn_table);
extern void func_80043D30(u16* spawn);
extern void func_80045FA4(u16* arg0, u16* arg1);
extern void func_80046148(u16* arg0, u16* arg1);
extern void func_80046188(u16* arg0, void* arg1);
extern void func_80046218(u16 arg0, u16 arg1);
extern void Camera_UpdateViewBounds(void);
extern s32 func_80046D5C(void); // fade portraits out after stage loads. return true when complete.
extern s32 Cutscene_CheckSkipInput(void);
extern void func_80047714(u16 arg0, u16 arg1, u16 arg2, u16 stage_state);
extern s32 func_8005DFC8(s32 arg0);

extern void LookAt_Update(void);

// func_800012F0
extern void func_800838E0(void);

// func_8000147C
extern void func_80009940(void);
extern void func_80009BE0(void);
extern void func_80009BE8(u16*);
extern void func_8000DD6C(void);
extern void func_8000EA88(void);
extern void func_8000F290(void);
extern void func_8001FF28(void);
extern void func_80021658(void);
extern void func_80021660(void);
extern void func_8002167C(void);
extern void func_800218FC(void);
u16 SpawnGemActor(u16 actor_index, u16 flags, u16 unused_arg2);
extern void func_800821B0(void);
extern void func_800822B8(void);
extern void func_80082CFC(void);
extern void func_80082E04(void);
extern void func_80082F10(void);
extern void func_80083E74(void);

void YellowGem_SetFlag(void);
u64 YellowGem_GetFlag(u16 stage);

void OverlayABI_Slot2_fn32_void(void);


#endif
