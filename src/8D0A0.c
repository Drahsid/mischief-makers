#include "common.h"
#include "actor.h"
#include "music.h"

extern s32 D_80137420;
extern s32 D_800BE5F4;
extern u16 D_800D28E4;
extern u32 D_800D28FC;

extern u8 D_800D44F4[];
extern u8 D_800D4518[];
extern u8 D_800D46A8[];
extern u8 D_800D4958[];

extern s32 func_8008CC00(void);
extern void func_8008CDC4(u16 actor_index, u16 arg1);
extern void func_8008CFE4(u16 actor_index);
extern void func_8008D0A8(u16 actor_index);
extern void func_8008D128(u16 actor_index);
extern void func_8008D39C(u16 actor_index);
extern void func_8008DF20(u16 actor_index);
extern s32 func_8008D418(u16 actor_index);
extern s32 func_8008D480(u16 actor_index);
extern void func_8008CF60(u16 actor_index);

void func_8008C4A0(u32 arg0) {
}

void func_8008C4A8(u32 arg0) {
}

void func_8008C4B0(u32 arg0, u32 arg1, u32 arg2) {
}

void func_8008C4C0(u32 arg0) {
}

void func_8008C4C8(u32 arg0) {
}

void func_8008C4D0(u32 arg0) {
}

void func_8008C4D8(u32 arg0) {
}

void func_8008C4E0(u16 actor_index) {
    gActors[actor_index].colorB = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorR = 0;
    D_80137420 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008C710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CA90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008CDC4.s")

void func_8008CF10(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0xE;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

void func_8008CF60(u16 actor_index) {
    gActors[actor_index].state = 0x70;
    func_8008CDC4(actor_index, 0);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
}

void func_8008CFE4(u16 actor_index) {
    gActors[actor_index].state = 0x90;
    func_8008CDC4(actor_index, 0x12);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].unk_184 = (f32)gActors[actor_index].unk_184 * 0.75;
}

void func_8008D0A8(u16 actor_index) {
    gActors[actor_index].state = 0x80;
    func_8008CDC4(actor_index, 0x11);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
}

void func_8008D128(u16 actor_index) {
    Actor_SetColorRgb(actor_index, 0x7F);
    gActors[actor_index].unk_0D4 = 0x3C;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16| ACTOR_FLAG_UNK8);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gActors[0].unk_0F8.raw;
    gActors[actor_index].unk_188 = gActors[0].unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }
}

void func_8008D1E8(u16 actor_index) {
    gActors[actor_index].state = 0xA0;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].unk_18C = (s32)D_800D4958;
    gActors[actor_index].unk_118 = 1.0f;
    gActors[actor_index].unk_184 = gActors[0].unk_0F8.raw;
    gActors[actor_index].unk_188 = gActors[0].unk_0FC.raw;

    if (gActors[actor_index].unk_184 > 0) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
    }
    else if (gActors[actor_index].unk_184 < 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
    }

    Sound_PlaySfx(0x63);
}

void func_8008D2B0(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].unk_18C = (s32)D_800D44F4;
    gActors[actor_index].unk_120 = 8.0f;
    func_8008D128(actor_index);
}

void func_8008D320(u16 actor_index) {
    gActors[actor_index].state = 0xB0;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_index].unk_18C = (s32)D_800D4518;
    gActors[actor_index].unk_120 = 20.0f;
    func_8008D128(actor_index);
}

void func_8008D39C(u16 actor_index) {
    gActors[actor_index].unk_184 = Math_ApproachS32(gActors[actor_index].unk_184, 0, 0x1000);
    gActors[actor_index].unk_188 = Math_ApproachS32(gActors[actor_index].unk_188, 0xFFF98000, 0x3800);
}

s32 func_8008D418(u16 actor_index) {
    if (gActors[actor_index].flags_098 & 0x40) {
        func_8008D0A8(actor_index);
        return TRUE;
    }

    return FALSE;
}

s32 func_8008D480(u16 actor_index) {
    func_8008D39C(actor_index);

    if (gActors[actor_index].unk_188 < 0) {
        if (gActors[actor_index].flags_098 & 0x20) {
            func_8008CFE4(actor_index);
            return TRUE;
        }
    }

    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D510.s")

void func_8008D728(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008D730.s")

void func_8008D958(u16 arg0) {
}

void func_8008D960(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
    }
}

void func_8008D99C(u16 actor_index) {
    if (func_8008D418(actor_index) == 0) {
        func_8008CF10(actor_index);
        if (gActors[actor_index].unk_118 == 0.0f) {
            func_8008CF60(actor_index);
        }
    }
}

s32 func_8008DA24(u16 actor_index) {
    return func_8008D480(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DA4C.s")

void func_8008DC70(u16 actor_index) {
    if (gGameState == GAMESTATE_GAMEPLAY) {
        gActors[actor_index].flags = 0;
        gActors[actor_index].state = 0;
        gGameState = GAMESTATE_CONTINUE;
        gGameStateSubState = 0;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityZ.raw = 0;
    }
}

void func_8008DCE0(u16 actor_index) {
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
    gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 4);
    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 4);
    func_8008D39C(actor_index);

    if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) {
        gActors[actor_index].rotateZ += 20.0f;
    }

    gActors[actor_index].unk_120 -= 1.0f;
    if ((gActors[actor_index].unk_120 < 0.0f) || ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[actor_index].flags & ACTOR_FLAG_UNK17))) {
        if ((gActors[0].health == 0) || (gActors[0].health & 0x8000)) {
            func_8008DC70(actor_index);
        }
        else {
            func_8008CC00();
        }
    }
}

void func_8008DE20(u16 arg0) {
}

void func_8008DE28(u16 arg0) {
}

void func_8008DE30(u16 actor_index) {
    func_800032C4(0xB5);
    func_800032C4(0xB4);

    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1953125);
    }

    if (gActors[actor_index].posY.whole < -0x100) {
        gActors[actor_index].state = 0x40;
    }
}

void func_8008DEBC(u16 actor_index) {
    if (D_800D28E4 > 0x60) {
        gActors[actor_index].flags = 0;
    }
    else {
        D_800D28FC |= 0x200;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008DF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E1A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8D0A0/func_8008E310.s")

void func_8008E3C0(u16 actor_index) {
    D_800BE5F4 = 4;
    func_8008DF20(actor_index);
    if (gActors[actor_index].state == 0x10) {
        D_800BE5F4 = 4;
        gActors[actor_index].state = 0x30;
        gActors[actor_index].unk_18C = (s32)D_800D46A8;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[actor_index].unk_118 = 1.0f;
        func_800032C4(0xB5);
        func_800032C4(0xB4);
        Sound_PlaySfx(0xCD);
    }
}
