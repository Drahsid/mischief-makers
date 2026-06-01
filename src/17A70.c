#include "common.h"
#include "17A70.h"
#include "actor.h"
#include "data_symbols.h"
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
extern u8 D_80171B18;
extern u16 D_80178136;
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
void func_80003A38(void);
s32 func_80003380(u32 arg0);
void func_80043918(void);
void func_8008310C(void);
void func_80083454(void);
void func_8008379C(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
void func_80083810(s32 arg0, s32 arg1, u16* arg2, s32 arg3);
void func_8008391C(char* text, s32 x, s32 y, s32 red, s32 green, s32 blue, s32 alpha, f32 scale_x, f32 scale_y);

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

s32 Input_CheckButtonRepeat(u16 button, u8* repeat_timer) {
    if (!(gButtonHold & button)) {
        *repeat_timer = 0;
    }
    else if (*repeat_timer == 0x21) {
        *repeat_timer = 0x20;
    }
    else {
        (*repeat_timer)++;
    }

    if ((gButtonPress & button) || (*repeat_timer == 0x21)) {
        return TRUE;
    }

    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800176F8.s")

void DebugMenu_UpdateCursorFlash(void) {
    u16 cursor_index;
    s32 cursor_color;
    s32 next_color;
    u8* cursor_colors;
    u8* cursor_color_ptr;
    u16 index;

    cursor_colors = gDebugMenuCursorFlash;
    cursor_index = gActors[7].colorB;
    cursor_color_ptr = cursor_colors;
    cursor_color_ptr += cursor_index;
    cursor_color = *cursor_color_ptr;
    next_color = cursor_color + 4;

    if (cursor_color & 1) {
        *cursor_color_ptr = cursor_color - 4;
        if (*cursor_color_ptr == 0xFF) {
            *cursor_color_ptr = 0;
        }
    }
    else {
        *cursor_color_ptr = next_color;
        if (*cursor_color_ptr == 0x40) {
            *cursor_color_ptr = 0x3F;
        }
    }

    index = 0;
    do {
        if (cursor_index != index) {
            cursor_colors[index] = 0x3F;
        }
        index++;
    } while (index < 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_Intro.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_80017FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_8001809C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/func_800180FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_TitleScreen.s")

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_DebugSoundTest.s")
