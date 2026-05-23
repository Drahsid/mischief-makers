#include "common.h"
#include "actor.h"

extern u8 D_800E8BEC[];
extern u8 D_800E9654[];
extern u8 D_800E9634[];
extern u8 D_800E9700[];
extern u8 D_800E9720[];
extern u8 D_800E9414[];
extern u8 D_800E93C4[];
extern u8 D_800E95E8[];
extern u8 D_800E961C[];
extern u8 D_800E8C08[];

extern void func_8008105C(u16 actor_index, void* arg1, void* arg2);
extern void func_80091BDC(u16 actor_index);

extern s32 func_8008EDB0(u16 actor_index);
extern s32 func_8008EEF8(u16 actor_index);
extern s32 func_8008EFA8(u16 actor_index);
extern s32 func_8008F168(u16 actor_index);
extern void func_8008FB20(u16 actor_index);
extern void func_8008FD08(u16 actor_index);
extern void func_80090064(u16 actor_index);
extern void func_800902B0(u16 actor_index);
extern void func_80090558(u16 actor_index);
extern void func_80003380(s32 arg0);
extern s32 func_80092FD4(u16);
extern void func_80003380(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008E480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008E790.s")

void func_8008E918(u16 actor_index) {
    func_80081790(actor_index, D_800E8BEC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008E948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008ECDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008EFA8.s")

s32 func_8008F094(u16 actor_index, u16 arg1) {
    gActors[actor_index].health -= arg1;
    if (gActors[actor_index].health & 0x8000) {
        gActors[actor_index].health = 0;
    }

    return func_8008EFA8(actor_index);
}

void func_8008F108(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(1.0));
}

s32 func_8008F168(u16 actor_index) {
    if (func_8008EFA8(actor_index)) {
        return 4;
    }
    if (func_8008EEF8(actor_index)) {
        return 1;
    }
    if (func_8008EDB0(actor_index)) {
        return 2;
    }
    if (gActors[actor_index].flags_098 & 0x40) {
        gActors[actor_index].state = 0x150;
        return 3;
    }
    return 0;
}

s32 func_8008F220(u16 actor_index) {
    if (func_8008EFA8(actor_index)) {
        return 4;
    }
    if (func_8008EEF8(actor_index)) {
        return 1;
    }
    if (func_8008EDB0(actor_index)) {
        return 2;
    }
    return 0;
}

void func_8008F294(u16 actor_index) {
    if (gActors[actor_index].unk_11C < 0.0f) {
        gActors[actor_index].state = 0x110;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008F2E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008F498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008F734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008F7E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008FA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8008FD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090064.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800902B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800907E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090A88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090BFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80090F48.s")

void func_80091158(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x800);
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-6.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.265625);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800911D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80091300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800913C0.s")

void func_80091524(u16 actor_index) {
    if (!func_8008F168(actor_index)) {
        if (gActors[actor_index].unk_11C < 0.0f) {
            gActors[actor_index].state = 0x110;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009159C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80091664.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800918D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800919C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80091BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80091C90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80091D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800922D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800923C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800924F8.s")

void func_800925D8(u16 actor_index) {
    if (!func_8008F168(actor_index)) {
        if (gActors[actor_index].state == 0x220) {
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].state = 0x110;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800929B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092E30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80092FD4.s")

void func_800930AC(u16 arg0) {
    if (func_80092FD4(arg0)) {
        func_8005DFC8(0);
    }
}

void func_800930E4(u32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800930EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800931CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009333C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093410.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009349C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009351C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800935B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80093D38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094E10.s")

void func_80094EB8(u16 actor_index) {
    if (func_80029B00(0x50, 0x40, -0x40)) {
        gActors[actor_index].flags_098 |= 0x40000;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80094FE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800955F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80095928.s")

void func_80095A10(u16 actor_index) {
    gActors[actor_index].unk_118 += gActors[actor_index].unk_114;
    if (gActors[actor_index].unk_118 > 360.0f) {
        gActors[actor_index].unk_118 -= 360.0f;
        func_80003380(0x116);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80095A8C.s")

void func_80095FC8(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    func_8008105C(actor_index, D_800E9414, D_800E93C4);
    gActors[actor_index].unk_178 = (s32)D_800E961C;
    func_80081790(actor_index, D_800E95E8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80096058.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80096104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_800962C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_80096478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009672C.s")

void func_8009685C(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    func_8008105C(actor_index, D_800E9654, D_800E9634);
    gActors[actor_index].unk_178 = (s32)D_800E9720;
    func_80081790(actor_index, D_800E9700);
}

void func_800968EC(u16 actor_index) {
    func_800819A8(actor_index, D_800E9654);
}

#pragma GLOBAL_ASM("asm/nonmatchings/8F080/func_8009691C.s")

void func_800969CC(u16 actor_index) {
    func_80090558(actor_index);
}

void func_800969F4(u16 arg0) {
}

void func_800969FC(u16 arg0) {
}

void func_80096A04(u16 arg0) {
}

void func_80096A0C(u16 arg0) {
}

void func_80096A14(u16 arg0) {
}

void func_80096A1C(u16 actor_index) {
    gActors[actor_index + 1].unk_0D8 = 1;
    func_8008FB20(actor_index);
}

void func_80096A70(u16 actor_index) {
    gActors[actor_index + 1].unk_0D8 = 2;
    func_8008FD08(actor_index);
}

void func_80096AC4(u16 actor_index) {
    gActors[actor_index + 1].unk_0D8 = 3;
    func_80090064(actor_index);
}

void func_80096B18(u16 actor_index) {
    gActors[actor_index + 1].unk_0D8 = 5;
    func_800902B0(actor_index);
}
