#ifndef FUNCTION_SYMBOLS_H
#define FUNCTION_SYMBOLS_H

#include "common.h"

extern void Sound_InitPlayers(void);
extern void Sound_SetEventMesg(void);
extern void Sound_Update(void);
extern void Sound_NextBuffer(void);
extern void Sound_StartTask(void);
extern void Sound_PlayMusic(u32 sequence_id);
extern s32 Sound_PlaySfx(u32 sound_id);
extern void Sound_StartFade(u16 mode, u16 duration);

extern u16 func_8000178C(void);

extern void func_80022D10(void);
extern DEFAULT_INT func_8001E2D0(u16 actor_index);
extern void func_80026E60(u16 arg0);
extern u16 func_800284B8(u16 arg0, u16 arg1);
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
extern void func_800821B0(void);
extern void func_800822B8(void);
extern void func_80082CFC(void);
extern void func_80082E04(void);
extern void func_80082F10(void);
extern void func_80083E74(void);

#endif
