#include "common.h"
#include "actor.h"
#include "data_symbols.h"
#include "debug_level_select.h"
#include "input.h"

extern ActorFunc D_80192000[];
extern ActorFunc D_8019B000[];
extern ActorFunc D_801A6800[];
extern ActorFunc D_801B0800[];

extern s16 D_800C9694[];
extern u16* D_800C96A0[];
extern u8 D_800C5008;
extern u16 D_80171AD0[];
extern u16 D_80171AD4[];
extern u64 D_80171AD8[];
extern u64 D_80171B10; // bitfeild of yellow gem collection.
extern u8 D_80171B18;
extern u16 gRedGems;
extern u16 D_80178156;
extern u16 D_8017815A;
extern u16 D_8017815C;
extern u16 D_80178160;

extern u8 D_801376A9;
extern u8 D_801376AD;
extern u8 D_801376B1;
extern u8 D_801376B5;
extern u8 D_801376B9;
extern u8 D_801376BD;

extern u8 D_800E9634[];
extern u8 D_800E9654[];
extern u8 D_800E9720[];

extern u16 D_80178152;

void func_800955F4(u16 actor_index);
void func_80096104(u16 actor_index);
void func_8009672C(u16 actor_index);
void func_8009691C(u16 actor_index);
void func_800969F4(u16 actor_index);
void func_800969FC(u16 actor_index);
void func_80096A04(u16 actor_index);
void func_80096A0C(u16 actor_index);
void func_80096A14(u16 actor_index);
void func_80005770(void);
void func_80019A80(void);
void func_80019E48(void);
void func_8001A254(void);
void func_8001ACA8(s32 arg0, s32 arg1, s32 arg2);
void func_8001B02C(void);
void func_8001B1A0(void);
u16 func_8001B244(void);
void Sound_StopMusic(void);
s32 Sound_PlaySfx2(u32 arg0);
void func_80043918(void);
void func_80083454(void);
void func_8008379C(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
void func_80083810(s32 arg0, s32 arg1, u16* arg2, s32 arg3);
void func_8008391C(char* text, s32 x, s32 y, s32 red, s32 green, s32 blue, s32 alpha, f32 scale_x, f32 scale_y);

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019E48.s")

void func_80019EC4(void) {
    func_8008310C();
    func_80083454();
    func_80019A80();
    func_80019E48();
    func_8001A254();
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A584.s")

// returns the time rank of (stage) compared to (time)
// 0=S Rank, 1=A, 2=B, 3=C, 4=D
s16 func_8001A758(u16 time, u16 stage) {
    if (time < gStageTimesToBeat[stage]) {
        return 0;
    }

    if (time < gStageTimesToBeat[stage] + 1800) {
        return 1;
    }

    if (time < gStageTimesToBeat[stage] + 7200) {
        return 2;
    }

    if (time < gStageTimesToBeat[stage] + 18000 && time < 36000) {
        return 3;
    }

    return 4;
}

// print the Rank letter for (stage) based on (time)
void func_8001A7E0(s16 arg0, s16 arg1, u16 time, u16 stage, s16 arg4) {
    func_8008379C(arg0, arg1, D_800C9694[func_8001A758(time, stage)], arg4);
}

// print the Rank review for (stage) based on (time)
void func_8001A838(s16 arg0, s16 arg1, u16 arg2, u16 arg3, s16 arg4) {
    func_80083810(arg0, arg1, D_800C96A0[func_8001A758(arg2, arg3)], arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001ACA8.s")

void func_8001B004(void) {
    func_8001ACA8(9, 6, 0xFFFF);
}

void func_8001B02C(void) {
    if ((s32)gCurrentStage >= (s32)D_80171B18 && D_80171B18 < 0x3B) {
        gCurrentStage = gCurrentStage + 1;
        D_80171B18 = gCurrentStage;
        D_80178152 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001B1A0.s")

void func_8001B1F8(void) {
    func_8001B02C();
    func_8001B1A0();
    D_80178160 = D_8017815C;
    D_8017815A = D_80178156;
}

void func_8001B23C(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001B244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001B2F4.s")

void func_8001B3D0(void) {
    u16 yellow_gem_count;
    u32 save_slot_index;

    D_80171B18 = gCurrentStage;
    D_80171AD0[D_800C5008] = gRedGems;
    yellow_gem_count = func_8001B244();
    save_slot_index = D_800C5008;
    D_80171AD4[save_slot_index] = yellow_gem_count;
    D_80171AD8[save_slot_index] = (u64)gFramesInPlayTime;
    func_80005770();
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/GameState_Transition.s")

// sets bit if yellow gem was collected in this stage
void YellowGem_SetFlag(void) {
    D_80171B10 |= (u64)1 << gCurrentStage;
}

// returns bit if yellow gem was collected in this stage
u64 YellowGem_GetFlag(u16 stage) {
    u64 mask = (u64)1 << stage;

    return D_80171B10 & mask;
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001C8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001C97C.s")

void func_8001CA68(void) {
    u16 index;

    for (index = 0; index < 7; index++) {
        gActors[index + 72].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CC8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001D0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/func_8001D240.s")

void func_8001D5B8(s16 arg0) {
    u16 index;

    for (index = 0x48; index < 0x4F; index++) {
        gActors[index].posY.whole += arg0;
    }
}

void func_8001D60C(s16 arg0) {
    gActors[50].posY.whole += arg0;
    gActors[51].posY.whole += arg0;
    func_8001D5B8(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1A120/GameState_Records.s")
