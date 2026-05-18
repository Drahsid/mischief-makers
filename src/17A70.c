#include "common.h"
#include "actor.h"

extern ActorFunc D_80192000[];
extern ActorFunc D_8019B000[];
extern ActorFunc D_801A6800[];
extern ActorFunc D_801B0800[];

extern s16 D_800C9694[];
extern u16* D_800C96A0[];
extern u16 D_800C8478[];
extern u8 D_800C5008;
extern u16 D_80171AD0[];
extern u16 D_80171AD4[];
extern u64 D_80171AD8[];
extern u64 D_80171B10;
extern u8 D_80171B18;
extern u16 D_80178136;
extern u16 D_80178156;
extern u16 D_8017815A;
extern u16 D_8017815C;
extern u16 D_80178160;
extern u16 D_80178162;

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
void func_8008310C(void);
void func_80083454(void);
void func_8008379C(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
void func_80083810(s32 arg0, s32 arg1, u16* arg2, s32 arg3);

ActorFunc D_800E5AC0[] = {
    func_800955F4,
    func_800969FC,
    func_800969F4,
    func_80096A04,
    func_80096104,
    func_8009672C,
    func_8009691C,
};

void* D_800E5ADC[] = {
    D_800E9634,
    D_800E9654,
    D_800E9720,
    D_800E9634,
    D_800E9654,
    D_800E9720,
};

ActorFunc D_800E5AF4[] = {
    func_80096A0C,
    func_80096A14,
    NULL,
};

void func_80016E70(u16 actor_index) {
    u8 index = gActors[actor_index].actorType & 0xFFFF;

    switch (gActors[actor_index].actorType >> 8) {
        case 1:
            D_801B0800[index](actor_index);
            break;

        case 2:
            D_8019B000[index](actor_index);
            break;

        case 3:
            D_8019B000[index](actor_index);
            break;

        case 4:
            D_801B0800[index](actor_index);
            break;

        case 5:
            D_801B0800[index](actor_index);
            break;

        case 6:
            D_80192000[index](actor_index);
            break;

        case 7:
            D_801B0800[index](actor_index);
            break;

        case 8:
            D_800E5AC0[index](actor_index);
            break;

        case 9:
            D_8019B000[index](actor_index);
            break;

        case 10:
            D_8019B000[index](actor_index);
            break;

        case 11:
            D_8019B000[index](actor_index);
            break;

        case 12:
            D_8019B000[index](actor_index);
            break;

        case 13:
            D_8019B000[index](actor_index);
            break;

        case 14:
            D_801B0800[index](actor_index);
            break;

        case 15:
            D_80192000[index](actor_index);
            break;

        case 16:
            D_80192000[index](actor_index);
            break;

        case 17:
            D_8019B000[index](actor_index);
            break;

        case 18:
            D_8019B000[index](actor_index);
            break;

        case 19:
            D_8019B000[index](actor_index);
            break;

        case 20:
            D_80192000[index](actor_index);
            break;

        case 21:
            D_80192000[index](actor_index);
            break;

        case 22:
            D_80192000[index](actor_index);
            break;

        case 23:
            D_801A6800[index](actor_index);
            break;

        case 24:
            D_801A6800[index](actor_index);
            break;

        case 25:
            D_80192000[index](actor_index);
            break;

        case 26:
            D_801A6800[index](actor_index);
            break;

        case 27:
            D_801B0800[index](actor_index);
            break;

        case 28:
            D_801A6800[index](actor_index);
            break;

        case 29:
            D_801A6800[index](actor_index);
            break;

        case 30:
            D_801A6800[index](actor_index);
            break;

        case 31:
            D_801A6800[index](actor_index);
            break;

        case 32:
            D_801A6800[index](actor_index);
            break;

        case 33:
            D_80192000[index](actor_index);
            break;

        case 34:
            D_80192000[index](actor_index);
            break;

        case 35:
            D_80192000[index](actor_index);
            break;

        case 36:
            D_80192000[index](actor_index);
            break;

        case 37:
            D_801A6800[index](actor_index);
            break;

        case 38:
            D_80192000[index](actor_index);
            break;

        case 39:
            D_801B0800[index](actor_index);
            break;

        case 40:
            D_801B0800[index](actor_index);
            break;

        case 41:
            D_801B0800[index](actor_index);
            break;

        case 42:
            D_801B0800[index](actor_index);
            break;

        case 43:
            D_80192000[index](actor_index);
            break;

        case 44:
            D_80192000[index](actor_index);
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001751C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800176F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_Intro.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800180FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_TitleScreen.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_DebugSoundTest.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80018E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_DebugStageSelect.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800197A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001983C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800198B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800199DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019E48.s")

void func_80019EC4(void) {
    func_8008310C();
    func_80083454();
    func_80019A80();
    func_80019E48();
    func_8001A254();
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019F04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80019FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A15C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A584.s")

s16 func_8001A758(u16 arg0, u16 arg1) {
    if (arg0 < D_800C8478[arg1]) {
        return 0;
    }

    if (arg0 < D_800C8478[arg1] + 1800) {
        return 1;
    }

    if (arg0 < D_800C8478[arg1] + 7200) {
        return 2;
    }

    if (arg0 < D_800C8478[arg1] + 18000 && arg0 < 36000) {
        return 3;
    }

    return 4;
}

void func_8001A7E0(s16 arg0, s16 arg1, u16 arg2, u16 arg3, s16 arg4) {
    func_8008379C(arg0, arg1, D_800C9694[func_8001A758(arg2, arg3)], arg4);
}

void func_8001A838(s16 arg0, s16 arg1, u16 arg2, u16 arg3, s16 arg4) {
    func_80083810(arg0, arg1, D_800C96A0[func_8001A758(arg2, arg3)], arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001A96C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001ACA8.s")

void func_8001B004(void) {
    func_8001ACA8(9, 6, 0xFFFF);
}

void func_8001B02C(void) {
    if ((s32)D_80178162 >= (s32)D_80171B18 && D_80171B18 < 0x3B) {
        D_80178162 = D_80178162 + 1;
        D_80171B18 = D_80178162;
        D_80178152 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B1A0.s")

void func_8001B1F8(void) {
    func_8001B02C();
    func_8001B1A0();
    D_80178160 = D_8017815C;
    D_8017815A = D_80178156;
}

void func_8001B23C(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001B2F4.s")

void func_8001B3D0(void) {
    u16 yellow_gem_count;
    u32 save_slot_index;

    D_80171B18 = D_80178162;
    D_80171AD0[D_800C5008] = D_80178136;
    yellow_gem_count = func_8001B244();
    save_slot_index = D_800C5008;
    D_80171AD4[save_slot_index] = yellow_gem_count;
    D_80171AD8[save_slot_index] = (u64)gFramesInPlayTime;
    func_80005770();
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_Transition.s")

void func_8001C7A4(void) {
    D_80171B10 |= (u64)1 << D_80178162;
}

u64 func_8001C7F0(u16 arg0) {
    u64 mask = (u64)1 << arg0;

    return D_80171B10 & mask;
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C8B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001C97C.s")

void func_8001CA68(void) {
    u16 index;

    for (index = 0; index < 7; index++) {
        gActors[index + 72].flags = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CC8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D0A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001D240.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_Records.s")
