#ifndef FUNCTION_SYMBOLS_H
#define FUNCTION_SYMBOLS_H

#include "common.h"

extern int sprintf(char* str, const char* fmt, ...);

extern u16 Rand(void);
extern void func_80012288(void);
extern u8 func_80012AB4(s16 arg0, s16 arg1);
extern u8 func_80012C04(s16, s16);

extern void func_80010C20(u16 arg0);
extern void func_800282F0(s16 arg0, s16 arg1);
extern s32 Math_AbsS32(s32 val);
extern s32 Math_Atan2(s32 x, s32 y);
extern void func_8002AA20(u16 actor_index, s32 unused);
extern void func_8002AC30(u16 actor_index, s16 val);
extern u16 SpawnParticle_List_90C0_16(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z);
extern u16 SpawnParticle_Image_90C0_16(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z);
extern void Actor_ClearRange_30To90(void);
extern u16 func_8003D628(u16);
extern void func_80042DBC(void* arg0);
extern void func_80045D84(u32 arg0, u32 arg1);
extern void func_80057320(s32, s32);
extern void func_8005739C(s32 arg0, s32 arg1);
extern void func_8005CA34(s32 mag, s32 time); // shake camera vertically.
extern s32 func_8005D1E8(u16);
extern void func_8005DE30(void);
extern s16 func_8005DEFC(void);
extern s32 func_8005DF5C(s32 arg0);
extern void func_80066BCC(u16 actor_index);
extern void func_80067EF0(u16);
extern void func_8006CC70(u16);
extern void func_8006CD5C(u16);
extern void func_8008BFB0(void);

extern void Actor_ClearRange_10To20(void);
extern void func_800255B4(u16 arg0);
extern void func_80025BFC(void);
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
extern void func_800273FC(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z);
extern void func_80027510(u16 actor_index, s16* graphic_list, u16 x, u16 y, u16 z);
extern void func_80028380(void);
extern u16 Actor_IsOutsideRegion(u16 actor_index, s16 arg1);
extern s32 func_80028C08(u16 actor_index);
extern void func_80029134(u16 actor_index);
extern u32 func_80029B00(s16 arg0, s16 arg1, s16 arg2);
extern u32 func_80029B74(s16 arg0);
extern s32 func_800298D0(s32 arg0, s32 arg1, s32 arg2);
extern void Actor_Clamp_0F8_0FC(u16 actor_index, s32 max_val);
extern void func_8002ABE4(u16 actor_index, s16 val);
extern void func_8002EBB8(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y);
extern void func_8002ED34(u16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4);
extern s32 func_8002F154(u16 arg0, u16 arg1, u16 arg2);
extern void SpawnGemRing(u16 arg0);
extern void func_80030A24(u16 actor_index);
extern void func_80033204(u16 arg0, u16 arg1, u16 arg2, f32 arg3, u16 arg4);
extern void func_800369A0(u16 actor_index, u16 arg1, u16* arg2);
extern void func_80039134(u16 actor_index);
extern void SpawnCrosshair(u16 arg0, u16 actor_index);
extern u16 func_8003EEC0(f32, s16 x, s16 y, s16 z);
extern void func_8003F138(f32 arg0, s16 arg1, s16 arg2, s16 arg3);
extern void func_80040858(u16 actor_index);
extern void func_80042E28(s32 arg0);
extern void func_80042F2C(s32 arg0, s32 arg1, s32 arg2);
extern void func_80043D04(ActorSpawnRecord* spawn);
extern s32 func_80043D6C(void* arg0);
extern void func_80045500(void);
extern s16 func_800456DC(void);
extern void func_80045E58(void* arg0);
extern s32 func_80045F08(u32 arg0);
extern void* func_80045F14(void* arg0);
extern void func_80046A9C(void);
extern void func_800472D4(void);
extern s32 func_8004735C(s32 arg0, s32 arg1);
extern s32 func_800486F4(void);
extern s32 func_80048CE4(void);
extern void func_8004F614(u16 actor_index, s32 arg1, s32 arg2, s32 arg3);
extern void func_8005DF40(s32 arg0, s32 arg1);
extern void func_8007CE24(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4);
extern void func_8007CEB8(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8);
extern void func_8007CFE0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5);
extern u16 SpawnTextBubble(u16, u16*, s16, s16, s32);
extern void func_8007EA14(void*, u16, s16, s32, s32, void*, s32, s32, s32, s32, s32, f32);
extern void func_8007F9E0(u16 actor_index);
extern void func_80081720(u16 arg0, void* arg1, s32 arg2);
extern void func_80083454(void);
extern void func_80083BD8(s32 arg0, s16 arg1, s32 arg2);
extern void func_8008C710(u16 arg0);
extern void func_80022D10(void);
#ifndef FUNC_8001E2D0_RET
  #define FUNC_8001E2D0_RET DEFAULT_INT
#endif
extern FUNC_8001E2D0_RET func_8001E2D0(u16 actor_index);
extern void func_80026E60(u16 arg0);
extern u16 Actor_RangeFindInactive(u16 actor_index, u16 end);
extern u16 Actor_RangeFindInactive_90ToC0(void);
extern void Actor_ClearRange(u16 start, u16 end);
extern void Actor_ClearSceneActors(void);
extern s32 Math_ApproachS32(s32 current, s32 target, s32 step);
extern f32 Math_ApproachF32(f32 current, f32 target, f32 step);
extern void Actor_SetColorRgb(u16 actor_index, u16 color);
extern u16 Palette_AdjustRgb5551(u16 color, s16 blue_offset, s16 green_offset, s16 red_offset);
extern void Palette_AdjustRgb5551Array(u16* src, u16* dst, s16 count, s16 blue_offset, s16 green_offset, s16 red_offset);
extern void Palette_AdjustScenePalettes(
    s16 blue_offset_0, s16 green_offset_0, s16 red_offset_0,
    s16 blue_offset_1, s16 green_offset_1, s16 red_offset_1,
    s16 blue_offset_2, s16 green_offset_2, s16 red_offset_2
);
extern void Actor_LoadSpawnTable(void* spawn_table);
extern void func_80043D30(void* spawn);
extern void func_80045FA4(void* arg0, s32 arg1);
extern void func_80046148(void* arg0, s32 arg1);
extern void func_80046188(void* arg0, void* arg1);
extern void func_80046218(u16 arg0, u16 arg1);
extern void Camera_UpdateViewBounds(void);
extern s32 func_80046D5C(void);
extern s32 Cutscene_CheckSkipInput(void);
extern void func_80047714(s32 arg0, u16 arg1, u16 arg2, u16 arg3);
extern void func_8005DFC8(s32 arg0);
extern void func_8008105C(u16 actor_index, void* arg1, void* arg2);
extern void func_80081478(u16 actor_index, void* arg1, s32 arg2);
extern void func_80081790(u16 actor_index, void* arg1);
extern void func_800819A8(u16 actor_index, void* arg1);

extern void LookAt_Update(void);

// func_800012F0
extern void func_80020844(void);
extern void func_800208D4(void);
extern void func_800838E0(void);

// func_8000147C
extern void func_80009940(void);
extern void func_80009BE0(void);
extern void func_80009BE8(u16*);
extern void func_8000DD6C(void);
extern void func_8000EA88(void);
extern void func_8000F290(void);
extern void func_8001FF28(void);
extern void func_80021620(void);
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

#endif
