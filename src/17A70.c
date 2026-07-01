#define FUNC_8001E2D0_RET void
#include "common.h"
#include "17A70.h"
#include "actor.h"
#include "data_symbols.h"
#include "input.h"


extern ActorFunc D_80192000[];
extern ActorFunc D_8019B000[];
extern ActorFunc D_801A6800[];
extern ActorFunc D_801B0800[];
extern ActorFunc D_800C7FE0[];

extern u8 D_801781A1;
extern u16 D_80171AD0[];
extern u16 D_80171AD4[];
extern u64 D_80171AD8[];
extern u8 D_80171B18;
extern u16 D_80178156;
extern u16 D_8017815A;
extern u16 D_8017815C;
extern u16 D_80178160;
extern u16 D_80178166;

extern u8 D_801376A9;
extern u8 D_801376AD;
extern u8 D_801376B1;
extern u8 D_801376B5;
extern u8 D_801376B9;
extern u8 D_801376BD;

extern u8 D_800E9634[];
extern u8 D_800E9654[];
extern u8 D_800E9720[];

//.data

extern u8 D_800C5008;
extern Gfx D_800c8EC8[];
extern char D_800C8F68[]; // "PRESS START"
extern char D_800C8F74[]; // "@1997 TREASURE/ENIX"
extern char D_800C8F88[]; // "LICENCED TO NINTENDO" (not in Japanese version)
extern u16 D_800C8FA0[];
extern u16 D_800C8FC0[];
extern u16 D_800C9080[];
extern u16 D_800C9280[]; // "Sound test" SFX indecies.
extern char D_800C94CC[]; // "BGM"
extern char D_800C94D0[]; // "S.E"
extern s32 D_800C94D8[]; // positions of Sound Test icons
extern s16 D_800C9694[];
extern u16* D_800C96A0[];

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
void func_80017F08(void);
void func_8001809C(void);
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

void func_8001751C(void) {
    u16 actor_index;

    if (gActorStall) {
        for (actor_index = 1; actor_index < 0xD0; actor_index++) {
            if ((gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) && (gActors[actor_index].flags & ACTOR_FLAG_ALWAYS_UPDATE)) {
                if (gActors[actor_index].actorType < 0x100) {
                    D_800C7FE0[gActors[actor_index].actorType](actor_index);
                }
                else {
                    func_80016E70(actor_index);
                }
            }
        }
    }
    else {
        for (actor_index = 1; actor_index < 0xD0; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if (gActors[actor_index].actorType < 0x100) {
                    D_800C7FE0[gActors[actor_index].actorType](actor_index);
                }
                else {
                    func_80016E70(actor_index);
                }
            }
        }
    }
}

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

s32 func_800176F8(u16 button, u8* repeat_timer) {
    if (!(gButtonHold & button)) {
        *repeat_timer = 0;
    }
    else if (*repeat_timer == 0x14) {
        *repeat_timer = 0x10;
    }
    else {
        (*repeat_timer)++;
    }

    if ((gButtonPress & button) || (*repeat_timer == 0x14)) {
        return TRUE;
    }

    return FALSE;
}

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

// 
void func_80017F08(void) {
    u16* palette;

    DebugMenu_UpdateCursorFlash();
    palette = Text_SetColor(0,(0x1F - (gDebugMenuCursorFlash[0] / 4)),(0x1F - (gDebugMenuCursorFlash[0] / 4)),0x1f);
    Text_PrintASCII(0x39, D_800C8F68, -0x36, -0x1C, 0, palette);
    palette = Text_SetColor(2, 0x1F, 0x1F, 0x18);
    Text_PrintASCII(0x49, D_800C8F74, -0x56, -0x40, 0, palette);
    // last 2 lines ommited in Japanese version.
    palette = Text_SetColor(2, 0x1F, 0x1F, 0x18);
    Text_PrintASCII(0x60, D_800C8F88, -0x5A, -0x52, 0, palette);
}

void func_80017FE8(u16 actor_index) {
    gActors[actor_index].actorType = 0;
    func_8001E2D0(actor_index);

    gActors[actor_index].posX.whole = -2;
    gActors[actor_index].posY.whole = 4;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQARE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].posZ.whole = 0x100;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].scaleX = 18.0f;
    gActors[actor_index].scaleY = 12.0f;
    gActors[actor_index].colorR = gActors[actor_index].colorG = gActors[actor_index].colorB = gActors[actor_index].colorA = 0xFF;
}

// move subtitle graphic (visible only in Japanese version.)
void func_8001809C(void) {
    if (gActors[0x34].posX.whole == -0x18) {
        return;
    }

    gActors[0x34].velocityX.raw = (FIXED_UNIT(-24.0) - gActors[0x34].posX.raw) / 4;
    if (gActors[0x34].velocityX.raw < FIXED_UNIT(-32.0)) {
        gActors[0x34].posX.raw += FIXED_UNIT(-32.0);
        return;
    }
    gActors[0x34].posX.raw += gActors[0x34].velocityX.raw;
}

void func_800180FC(void) {
    u16 index;

    func_8001809C();
    func_80017F08();

    // blink "press start" text
    if ((D_80178166++ & 4) == 0) {
        for (index = 0x39; index < 0x43; index++) {
            gActors[index].flags = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/17A70/GameState_TitleScreen.s")

void GameState_DebugSoundTest(void) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    u16 pad4;
    u16 actor_index;
    void* palette;

    actor_index = 0x30;
    switch (gGameStateSubState) {
    case 0:
        gActors[actor_index].actorType = 0x15;
        func_8001E2D0(actor_index);
        gActors[actor_index].unk_0D8 = 0xB;
        gActors[actor_index].posX.whole = -0x38;
        gActors[actor_index].posY.whole = 0x30;
        gActors[actor_index].timer_110 = 0.0f;
        gActors[actor_index].var_154 = 2;

        actor_index++;
        gActors[actor_index].actorType = 0x15;
        func_8001E2D0(actor_index);
        gActors[actor_index].unk_0D8 = 0xB;
        gActors[actor_index].posX.whole = 0x38;
        gActors[actor_index].posY.whole = 0x30;
        gActors[actor_index].var_154 = 3;
        gActors[actor_index].timer_110 = 0.0f;

        gActors[0xD].colorB = 0;
        gActors[7].colorB = 0;
        gActors[2].velocityX.raw = 0;
        gActors[3].velocityX.raw = 0;
        gActors[1].velocityX.raw = 0;
        gGameStateSubState += 1;
        /* fallthrough */
    case 1:
        if ((gButtonPress & gButton_DDown) || (gButtonPress & gButton_DUp)) {
            gActors[7].colorB ^= 1;
            Sound_PlaySfx(0x22);
        }
        switch (gActors[7].colorB) {
        case 0:
            if ((Input_CheckButtonRepeat(gButton_DLeft, &gActors[8].colorB)) && (gActors[2].velocityX.raw > 0)) {
                gActors[2].velocityX.raw -= 1;
                Sound_StopMusic();
            }
            if ((Input_CheckButtonRepeat(gButton_DRight, &gActors[9].colorB)) && (gActors[2].velocityX.raw < 0x20)) {
                gActors[2].velocityX.raw += 1;
                Sound_StopMusic();
            }
            if (gButtonPress & 0x8000) {
                Sound_PlayMusic(gActors[2].velocityX.raw);
                gActors[0xC].colorB = 8;
                gActors[1].velocityX.raw = 0;
            }
            if (gButtonPress & 0x4000) {
                Sound_StopMusic();
            }
            break;
        case 1:
            if ((Input_CheckButtonRepeat(gButton_DLeft, &gActors[8].colorB) != 0) && (gActors[3].velocityX.raw > 0)) {
                gActors[3].velocityX.raw--;
            }
            if ((Input_CheckButtonRepeat(gButton_DRight, &gActors[9].colorB) != 0) && (gActors[3].velocityX.raw < 0x124)) {
                gActors[3].velocityX.raw++;
            }
            if (gButtonPress & 0x8000) {
                Sound_PlaySfx(D_800C9280[gActors[3].velocityX.raw]);
            }
            if ((gButtonPress & 0x4000) != 0) {
                Sound_StopAllSfx();
            }
            break;
        }
        DebugMenu_UpdateCursorFlash();
        func_80060F88(0x30);
        func_80060F88(0x31);
        gActors[0x30].posY.whole = gActors[0x31].posY.whole = D_800C94D8[gActors[7].colorB];
        palette = Text_SetColor(4, 0x1F, 0x1F - (gDebugMenuCursorFlash[0] / 4), (0x1F - (gDebugMenuCursorFlash[0] / 4)));
        Text_PrintASCII(actor_index + 0x1A, D_800C94CC, 0xFFD8, 0x30, 0, palette);
        Text_Print2Digits(actor_index + 0x1D, (gActors[2].velocityX.raw + 1), 0x20, 0x30, 0, palette);
        palette = Text_SetColor(5, 0x1F, 0x1F - (D_801781A1 / 4), 0x1F - (D_801781A1 / 4));
        Text_PrintASCII(actor_index + 0x1F, D_800C94D0, 0xFFD8, 0x20, 0, palette);
        Text_Print3Digits(actor_index + 0x23, gActors[3].velocityX.raw + 1, 0x18, 0x20, 0, palette);
        gActors[actor_index + 0x26].flags = 0;
        if (gButtonPress & gButton_Start) {
            actor_index = 0x33;
            func_80017FE8(actor_index);
            gActors[actor_index].colorA = 7;
            Sound_PlaySfx(0x23);
            Sound_StartFade(0x81, 0x20);
            gGameStateSubState++;
        }
        break;
    case 2:
        if (gActors[0x33].colorA != 0xFF) {
            gActors[0x33].colorA += 8;
        }
        if (gAudioFadeMode == 0x83) {
            gAudioFadeMode = 0;
            gGameState = 2;
            gGameStateSubState = 0;
        }
        break;
    }
}
