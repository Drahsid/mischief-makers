#define func_80012AB4_ARGS
#include "common.h"
#include "actor.h"

extern void func_800339BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern void func_80033E7C(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5, s32 arg6);
extern void func_80028C00(u16 actor_index);
extern void func_80067E50(u16 actor_index, void* arg1);
extern void func_80066964(u16 actor_index, u16 arg1);
extern void func_80066A10(u16 actor_index);
extern void func_8006C1AC(u16 actor_index);
extern void func_8006C5A4(u16 actor_index);
extern u16 func_80069C54(u16 actor_index);
extern void func_80072628(u16 actor_index);
extern void func_80078F54(u16 actor_index);
extern u32 func_80029A7C(s32 arg0, s32 arg1, s32 arg2);
extern u32 func_80029CC0(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern u32 func_80029D58(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern u32 func_80029DEC(s32 arg0, s32 arg1);
extern u16 func_80072CC4(u16 actor_index);
extern void func_80073EF4(u16 actor_index);
extern u16 func_8006C7B8(u16 actor_index);
extern u16 func_80069884(u16 actor_index);
extern void func_800742FC(u16, u16);
extern void func_80078CC8(u16 actor_index, s32 arg1);
extern void func_800358DC(u16 actor_index);
extern void func_80035A20(u16 actor_index);
extern s32 func_80029044(u16 actor_index);
extern void func_80028B90(u16 actor_index);
extern void func_80079810(u16, u16);
extern void func_80079F50(u16, u16);
extern void ClanpotIcon_State1(u16 actor_index);

// data of this TU
extern s32 D_800D1938[];
extern s16 D_800D2918; // = 0;
extern s16 D_800D291C; // = 0;
extern s16 D_800D2920; // = 0;
extern u16 gGuestActorIndex; // = 0;
extern ActorFunc D_800D7F00[];
extern s16 D_800D81F8[]; /* = {
GINDEX_3044, 4,
GINDEX_3046, 4,
GINDEX_3048, 4,
GINDEX_304A, 3,
GINDEX_WM_STAGEICONMERCO, 2,
0, 0
}; */
extern u8 D_800E1750[];
extern u8 D_800E223C[];
extern u8 D_800E2250[];
extern u8 D_800E2274[];
extern u8 D_800E2564[];
extern ActorFunc D_800D7F00[];
extern u8 D_800E1788[];
extern u16 D_800E3580;
extern u32 D_800E3584;

void func_80065650(u16 actor_index) {
    u16 rand_x[2];
    u16 rand_y;

    func_80067E50(actor_index, D_800E1788);
    if ((gActiveFrames % 17) == 0) {
        rand_x[0] = Rand();
        rand_y = Rand();
        func_800339BC(
            (gActors[actor_index].posX.raw - ((rand_x[0] & 0x1F) * FIXED_UNIT(0.625))) + FIXED_UNIT(10.0),
            (gActors[actor_index].posY.raw - ((rand_y & 0x1F) * FIXED_UNIT(0.75))) + FIXED_UNIT(18.0),
            gActors[actor_index].posZ.raw, 0
        );
    }
}

void func_80065724(u16 actor_index) {
    func_80033E7C(
        actor_index,
        gActors[actor_index].posX.whole,
        gActors[actor_index].posY.whole + 6,
        gActors[actor_index].posZ.whole + 1,
        0x6000,
        0x80000,
        3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800657B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800658D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80065F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006605C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800662F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006641C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800666B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006678C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800668E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80066BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067068.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006756C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800679DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80067B18.s")

void func_80067E50(u16 actor_index, void* arg1) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,arg1);
    }
}

void func_80067E9C(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,D_800E1700);
    }
}

void func_80067EF0(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,D_800E1750);
    }
}

void func_80067F44(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,D_800E223C);
    }
}

void func_80067F98(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,D_800E2274);
    }
}

void func_80067FEC(u16 actor_index) {
    if (gActors[actor_index].graphicTimer == 0) {
        ACTOR_GFX_INIT(actor_index,D_800E2250);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800682AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800684D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068570.s")

u32 func_800686CC(u32 arg0) {
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800686D8.s")

u32 func_80068870(void) {
    return 0;
}

u32 func_80068878(u32 arg0, u32 arg1) {
    return 0;
}

u32 func_80068888(u32 arg0, u32 arg1) {
    return 0;
}

u32 func_80068898(void) {
    return func_80029A7C(32, 16, -16);
}

u32 func_800688C0(void) {
    return func_80029A7C(0x38, 0x18, -0x18);
}

u32 func_800688E8(void) {
    return func_80029DEC(63, 1);
}

u32 func_8006890C(void) {
    return func_80029A7C(0x50, 0x20, -0x18);
}

u32 func_80068934(void) {
    if ((gActors[D_800E3580].flags & (ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7)) && func_80029A7C(0x68, 0x20, -0x20)) {
        return TRUE;
    }

    return FALSE;
}

u32 func_800689A8(void) {
    if (D_800E3584 & 0x30000) {
        if (func_80029B00(0x24, 8, -8)) {
            return TRUE;
        }
    }

    return FALSE;
}

u32 func_800689F8(void) {
    if (func_80029B00(12, 0, -48)) {
        return 2;
    }

    return 0;
}

u32 func_80068A30(void) {
    if (func_80029B00(12, 48, 0)) {
        return 3;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068A68.s")

u32 func_80068ACC(void) {
    return 1;
}

u32 func_80068AD4(void) {
    return func_80029D58(0x40, 0x80, 0x40, -0x40);
}

u32 func_80068B00(void) {
    return func_80029A7C(0xA0, 0x60, -0x60);
}

u32 func_80068B28(void) {
    return func_80029D58(0x40, 0x80, 0x40, -0x40);
}

u32 func_80068B54(void) {
    return func_80029CC0(0x40, 0x80, 0x80, -0x80);
}

u32 func_80068B80(u32 arg0) {
    return 0;
}

s32 func_80068B8C(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0x10000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068BE8(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0x30000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068C48(u16 actor_index, u16 arg1) {
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068CA8.s")

s32 func_80068D18(u16 actor_index, u16 arg1) {
    if ((((s32)gActors[actor_index].var_150 << 0xE) < 0) && (D_800E3584 & 0x30000)) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

s32 func_80068D88(u16 actor_index, u16 arg1) {
    if ((((s32)gActors[actor_index].var_150 << 0xE) < 0) && (D_800E3584 & 0xC0000)) {
        gActors[actor_index].state = arg1;
        return TRUE;
    }

    return FALSE;
}

u16 func_80068DF8(u16 arg0) {
}

u16 func_80068E00(u16 arg0) {
}

u16 func_80068E08(u16 arg0) {
    return func_80068DF8(arg0) | func_80068E00(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80068FBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006907C.s")

void func_80069130(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069204.s")

void func_800692C0(u16 arg0) {
}

void func_800692C8(u16 arg0) {
}

void func_800692D0(u16 arg0) {
}

void func_800692D8(u16 arg0) {
}

void func_800692E0(u16 arg0) {
}

void func_800692E8(u16 arg0) {
}

void func_800692F0(u16 arg0) {
}

void func_800692F8(u16 arg0, u16 arg1) {
}

void func_80069304(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006930C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800695E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800696A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069A18.s")

void func_80069B94(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
}

void func_80069BF4(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.015625));
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069C54.s")

void func_80069CDC(u16 actor_index) {
    func_80069C54(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069D04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069DA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069E18.s")

void func_80069EC4(u16 actor_index, f32 arg1) {
    gActors[actor_index].state = 0x90;
    gActors[actor_index].unk_118 = arg1;
    gActors[actor_index].unk_11C = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80069F10.s")

void func_8006A06C(u16 actor_index, f32 arg1) {
    gActors[actor_index].state = 0xA0;
    gActors[actor_index].unk_118 = arg1;
    gActors[actor_index].unk_11C = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A0B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A4DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A64C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A7B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006A924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006ABEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AD50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006ADF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AE84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006AF30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006B9EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BA80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BAFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BB8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006BEF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C0F4.s")

void ActorType2_Noop(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C1AC.s")

void func_8006C5A4(u16 actor_index) {
    u16 state;

    state = gActors[actor_index].state;
    if ((state >= 0x51) && (state != 0xFFFF)) {
        if (gActors[actor_index].health == 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK10;
        }

        if (gActors[actor_index].iFrames != 0) {
            gActors[actor_index].iFrames--;
        }

        func_80066964(actor_index, (gActors[actor_index].var_0D8 & 0x7000) / 0x1000);
        func_80066A10(actor_index);

        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_148 = -gActors[actor_index].scaleX;
        }
        else {
            gActors[actor_index].unk_148 = gActors[actor_index].scaleX;
        }

        if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) && (gGuestActorIndex != actor_index)) {
            func_80028C00(actor_index);
        }
    }

    func_80066BCC(actor_index);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006C7B8.s")

u16 func_8006C8B8(u16 actor_index){
    u16 result = func_80069C54(actor_index);
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C908(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C944(u16 actor_index){
    u16 result = func_80069C54(actor_index);
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C994(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006C9D0(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CA0C(u16 actor_index){
    u16 result = FALSE;
    if(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6){
        gActors[actor_index].state = 0x250;
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED){
            gActors[actor_index].unk_118 = (f32)FIXED_UNIT(-0.5);
        }
        else{
            gActors[actor_index].unk_118 = (f32)FIXED_UNIT(0.5);
        }
        gActors[actor_index].unk_11C = (f32)FIXED_UNIT((1.0/8));
        result = TRUE;
    }
    result |= func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CAD4(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CB10(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

u16 func_8006CB4C(u16 actor_index) {
    u16 result = func_8006C7B8(actor_index);
    result |= func_80069884(actor_index);
    return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CB88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006CFDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D0EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D7F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D884.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006D9A4.s")

void func_8006DB10(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DB18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DBE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DCB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006DF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E1F8.s")

void func_8006E3DC(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006E9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006EA3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006EAC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F1FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F730.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006F90C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FAC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FB48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FCC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FD74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FE28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8006FF70.s")

void func_80070000(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007095C.s")

void func_80070A14(u16 arg0) {
}

void func_80070A1C(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070BEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80070F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800715DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800717E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80071CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800721C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800722F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072400.s")

void func_80072620(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072628.s")

void func_800728E8(u16 actor_index) {
    func_80072628(actor_index);
}

void func_80072910(u16 actor_index) {
    func_80072628(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072A28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072CC4.s")

void func_80072D9C(u16 actor_index) {
    if (func_80072CC4(actor_index)) {
        func_8005DFC8(0);
    }
}

void func_80072DD4(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80072FE4.s")

void func_8007325C(u16 actor_index) {
    func_8006C1AC(actor_index);
    if (gActors[actor_index].state < 0x4000) {
        D_800D7F00[gActors[actor_index].state / 16](actor_index);
    }

    func_8006C5A4(actor_index);
}


void ActorUpdate_Type2(u16 arg0) {
    ActorType2_Noop(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800733AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800734C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800735EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800737C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073EF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80073FD8.s")

void func_8007406C(u16 actor_index, u16 arg1, s32 arg2) {
    func_80073EF4(actor_index);
    gActors[actor_index].var_0D8 = arg1 & 0x7000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800740C8.s")

u16 func_800742B8(u16 arg0) {
    if (arg0 & 1) {
        return Actor_RangeFindInactive(1, 0x10);
    }
    else {
        return Actor_RangeFindInactive(0x70, 0x7A);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800742FC.s")

void func_800744AC(u16 arg0, u16 arg1) {
    func_800742FC(arg0, arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800744E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074C30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80074D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007502C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800753C4.s")

void func_80075418(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(1.0 / 16.0));
    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.375);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800755F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075670.s")

void func_800756FC(u16 actor_index){
    gActors[actor_index].state = 0x20;
    ACTOR_GFX_INIT(actor_index,D_800E2564);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007574C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80075D50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/ActorUpdate_CatTank.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076228.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800764B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800768D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800769AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076A38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80076BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/Clanblob_Update.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/ActorUpdate_Clanblob.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80077D24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80077F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800789C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078CC8.s")

void func_80078F14(u16 actor_index, s32 arg1) {
    if (!(gActiveFrames & 1)) {
        func_80078CC8(actor_index, 0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80078FF0.s")

void func_800791D4(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].var_150 &= ~1;
    }
    else {
        gActors[actor_index].var_150 |= 1;
    }
    if (gActors[actor_index].velocityY.raw > 0) {
        gActors[actor_index].var_150 &= ~2;
    }
    else {
        gActors[actor_index].var_150 |= 2;
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800792C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007951C.s")

void func_80079760(u16 actor_index) {
    s32 arg0;

    func_80078F54(actor_index);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        arg0 = 0x2000000;
    }
    else {
        arg0 = 0;
    }

    gActors[actor_index].unk_168 = func_800298D0(arg0, gActors[actor_index].unk_168, FIXED_UNIT(24));
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, gActors[actor_index].var_158 + 0x80);
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, gActors[actor_index].var_15C + 0x80);
}

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_800798EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_80079F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A090.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007A190.s")

u16 func_8007A3CC(u16 actor_index) {
    u16 sp26;

    gActors[actor_index].unk_128 -= 1.0f;
    sp26 = Actor_RangeFindInactive(0x70, 0x7A);
    if (sp26 != 0) {
        ACTOR_INIT(sp26, 0);
        gActors[sp26].posX.whole = gActors[actor_index].posX.whole;
        gActors[sp26].posY.whole = gActors[actor_index].posY.whole;
        gActors[sp26].posZ.whole = gActors[actor_index].posZ.whole - 1;
    }

    return sp26;
}

s32 func_8007A4B0(u16 actor_index) {
    Actor* temp_v0;
    Actor* temp_v1;

    temp_v0 = &gActors[actor_index];
    temp_v1 = &gActors[(u16)gActors[actor_index].unk_118];
    if (!(temp_v1->flags & ACTOR_FLAG_ACTIVE) || (u16)(gActors[actor_index].unk_11C) != temp_v1->actorType) {
        func_80079810(actor_index, gActors[actor_index].unk_118);
        return 1;
    }

    if ((gActors[actor_index].graphicIndex == GINDEX_303E) && (gActors[actor_index].graphicTimer == 1)) {
        gActors[actor_index].state += 1;
        temp_v1->flags_098 |= ACTOR_FLAG3_UNK10;
        temp_v1->unk_0F8.raw = gActors[actor_index].var_154;
        temp_v1->unk_0FC.raw = gActors[actor_index].var_158;
        Sound_PlaySfxAtActor2(0x2AU, actor_index);
        return 1;
    }

    func_80079F50(actor_index, gActors[actor_index].unk_118);
    return 0;
}

void func_8007A6A8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.25));
}

void func_8007A720(u16 actor_index) {
    gActors[actor_index].iFrames = 5;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
    gActors[actor_index].var_150 |= 0x200000;\
    gActors[actor_index].var_150 &= ~0x100000;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    if (
        gActors[actor_index].unk_0F8.raw != 0 &&
        ((!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && gActors[actor_index].unk_0F8.raw > 0) || ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && gActors[actor_index].unk_0F8.raw < 0))
    ) {
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
    }
}

void func_8007A7C4(u16 actor_index) {
    func_8007A720(actor_index);
    gActors[actor_index].state = ACTOR_FLAG_UNK10;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;\
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
}

void func_8007A84C(u16 actor_index) {
    func_8007A7C4(actor_index);
    gActors[actor_index].graphicList = D_800D81F8;
    gActors[actor_index].graphicTimer = 1;
}

void func_8007A8B0(u16 actor_index) {
    u16 sp1E;

    if (!(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[actor_index].var_150 & 0x100000)) {
        return;
    }

    if ((gActors[actor_index].var_150 & 0x200000) || (gActors[actor_index].flags & ACTOR_FLAG_UNK15)) {
        return;
    }

    sp1E = gActors[actor_index].parentIndex;
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
    switch (gActors[actor_index].unk_0DD) {
    case 23:
    case 20:
        break;
    case 4:
        func_80028B90(actor_index);
        /* fallthrough */
    case 3:
        gActors[actor_index].unk_0FC.raw = gActors[sp1E].unk_0FC.raw;
        /* fallthrough */
    case 2:
    default:
        gActors[actor_index].unk_114 = 0.0f;
        func_8007A84C(actor_index);
        break;
    case 8:
        func_80028B90(actor_index);
        /* fallthrough */
    case 7:
        gActors[actor_index].unk_0FC.raw = gActors[sp1E].unk_0FC.raw;
        /* fallthrough */
    case 6:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(0x9DU);
        break;
    case 11:
        func_80028B90(actor_index);
        /* fallthrough */
    case 10:
        gActors[actor_index].unk_0FC.raw = gActors[sp1E].unk_0FC.raw;
        /* fallthrough */
    case 9:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(0x9DU);
        break;
    case 14:
        func_80028B90(actor_index);
        /* fallthrough */
    case 13:
        gActors[actor_index].unk_0FC.raw = gActors[sp1E].unk_0FC.raw;
        /* fallthrough */
    case 12:
        gActors[actor_index].unk_114 = 1.0f;
        func_8007A84C(actor_index);
        Sound_PlaySfx(0x9DU);
        break;
    case 19:
        Sound_PlaySfx(0x9DU);
        gActors[actor_index].flags = 0;
        gActors[actor_index].health = 0;
        break;
    }
}

s32 func_8007AB44(u16 arg0) {
    f32 var_f0;
    u16 angle;
    s32 var_a3;
    u16 var_v0_2;

    if ((gActors[arg0].flags_098 & ACTOR_FLAG3_UNK9) && (func_80029044(arg0) == 0)) {
        var_a3 = FIXED_UNIT(16) - Math_AbsS32(gActors[arg0].velocityX.raw * 2);
        var_a3 /= FIXED_UNIT(1);
        if (var_a3 < 2) {
            var_a3 = 2;
        }
        D_800BE704 = Math_ApproachS32(D_800BE704, var_a3, 1);
    }
    else {
        gActors[arg0].state = 0x10;
        gActors[arg0].flags |= ACTOR_FLAG_UNK12;
        gActors[arg0].var_150 &= ~0x300000;
        D_800BE704 = 0x10;
        gActors[arg0 + 1].flags = ACTOR_FLAG_ACTIVE;
        return 1;
    }

    gActors[arg0].graphicTimer = 0;
    gActors[arg0].hitboxBY1 = gActors[arg0].scaleX * -8.0f;
    var_a3 = gActors[arg0].velocityX.raw;
    if (var_a3 < 0) {
        var_a3 = -var_a3;
    }
    if (var_a3 > FIXED_UNIT(6.0)) {
        gActors[arg0].graphicIndex = GINDEX_WM_STAGEICONFINAL;
    }
    else {
        if ((var_a3 > FIXED_UNIT(3)) || (gActors[arg0].velocityY.raw < FIXED_UNIT(-0.75))) {
            gActors[arg0].graphicIndex = GINDEX_WM_STAGEICONMERCO;
        }
        else {
            gActors[arg0].graphicIndex = GINDEX_WM_STAGEICONIMPHQ2;
        }
        if ((gActors[arg0].velocityY.raw > FIXED_UNIT(3)) || (gActors[arg0].velocityY.raw < FIXED_UNIT(-3))) {
            if ((u16)gActors[arg0].unk_134) {
                gActors[arg0].unk_134 = 0.0f;
                Sound_PlaySfxAtActor3(0xFD, arg0);
            }
        }
        else if (!(gActiveFrames & 0xF)) {
            gActors[arg0].unk_134 = 93.0f;
            Sound_PlaySfxAtActor3(0xFD, arg0);
        }
    }
    gActors[arg0].graphicFlags |= ACTOR_GFLAG_ROTZ;
    var_f0 = gActors[arg0].velocityY.raw / 8192;
    if (gActors[arg0].flags & ACTOR_FLAG_FLIPPED) {
        var_f0 = -var_f0;
    }
    gActors[arg0].rotateZ = var_f0;
    if (gActors[arg0].flags & ACTOR_FLAG_FLIPPED) {
        var_v0_2 = (s32) (var_f0 / 0.3515625) + 0xD0;
    }
    else {
        var_v0_2 = (s32) (var_f0 / 0.3515625) + 0x130;
    }
    gActors[arg0].var_160 = func_800298D0(var_v0_2 << 0x10, gActors[arg0].var_160, FIXED_UNIT(8));
    angle = (gActors[arg0].var_160 / FIXED_UNIT(1));
    var_f0 = COS(angle) * 32.0f * 65536.0f;
    gPlayerActor.posX.raw = gActors[arg0].posX.raw + (s32) var_f0;
    var_f0 = SIN(angle) * 32.0f * 65536.0f;
    gPlayerActor.posY.raw = gActors[arg0].posY.raw + (s32) var_f0;
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    gPlayerActor.posZ.raw = gActors[arg0].posZ.raw - 0x1000;
    var_a3 = gActors[arg0].posY.whole + gScreenPosCurrentY.whole + 0x10;
    if (D_800D2918 < var_a3) {
        gActors[arg0].posY.whole += D_800D2918 - var_a3;
    }
    var_a3 = gActors[arg0].posY.whole + gScreenPosCurrentY.whole;
    if (var_a3 < D_800D291C) {
        gActors[arg0].posY.whole += D_800D291C - var_a3;
    }
    var_a3 = gActors[arg0].var_15C;
    var_a3 /= 16;
    if (var_a3 <0) {
        var_a3 = -var_a3;
    }
    gActors[arg0].velocityX.raw = Math_ApproachS32(gActors[arg0].velocityX.raw, gActors[arg0].var_15C, var_a3);
    var_a3 = gButtonHold & gButton_LTrig;
    if (!var_a3 && !(gButtonHold & gButton_RTrig)) {
        if (gActors[arg0].velocityX.raw > FIXED_UNIT(1.5)) {
            gActors[arg0].flags &= ~ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[arg0].velocityX.raw < FIXED_UNIT(-1.5)) {
            gActors[arg0].flags |= ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (((gButtonPress & gButton_LTrig) || (gButtonPress & gButton_RTrig)) && (gActors[arg0].unk_118 < 0.0f)) {
        gActors[arg0].unk_118 = 16.0f;
        Sound_PlaySfxAtActor2(0x43, arg0);
        gActors[arg0].velocityX.raw -= ((f32) gActors[arg0].velocityX.raw * 0.8);
        gActors[arg0].var_15C -= ((f32) gActors[arg0].var_15C * 1.5);
        gActors[arg0].velocityY.raw -= ((f32) gActors[arg0].velocityY.raw * 1.4);
    }
    else {
        if (gButtonHold & gButton_DLeft) {
            gActors[arg0].var_15C -= FIXED_UNIT(0.25);
        }
        else if (gButtonHold & gButton_DRight) {
            gActors[arg0].var_15C += FIXED_UNIT(0.25);
        }
        else if (gActors[arg0].flags & ACTOR_FLAG_FLIPPED) {
            gActors[arg0].var_15C = Math_ApproachS32(gActors[arg0].var_15C, FIXED_UNIT(-0.5), FIXED_UNIT(0.0625));
        }
        else {
            gActors[arg0].var_15C = Math_ApproachS32(gActors[arg0].var_15C, FIXED_UNIT(0.5), FIXED_UNIT(0.0625));
        }
    }
    var_a3 = gButtonHold & gButton_LTrig;
    if (var_a3 || (gButtonHold & gButton_RTrig)) {
        gActors[arg0].var_15C = Math_ClampLimit(gActors[arg0].var_15C, 0x28000);
        var_a3 = 0x40000;
        var_a3 |= 0x8000;
    }
    else {
        gActors[arg0].var_15C = Math_ClampLimit(gActors[arg0].var_15C, FIXED_UNIT(8));
        var_a3 = 0x30000;
        var_a3 |= 0x8000;
    }
    
    if (gActors[arg0].unk_118 >= 0.0f) {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, 0, FIXED_UNIT(0.0625));
    }
    else if (gButtonHold & gButton_DUp) {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, var_a3, FIXED_UNIT(0.25));
    }
    else if (gButtonHold & gButton_DDown) {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, -var_a3, FIXED_UNIT(0.25));
    }
    else if ((gActors[arg0].velocityX.raw > FIXED_UNIT(2)) || (gActors[arg0].velocityX.raw < FIXED_UNIT(-2))) {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, 0, FIXED_UNIT(0.25));
    }
    else if (gActiveFrames & 0x10) {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, FIXED_UNIT(1.5), FIXED_UNIT(0.25));
    }
    else {
        gActors[arg0].velocityY.raw = Math_ApproachS32(gActors[arg0].velocityY.raw, FIXED_UNIT(-1.5), FIXED_UNIT(0.25));
    }
    if (gActors[arg0].unk_118 >= 0.0f) {
        gActors[arg0].unk_118 -= 1.0f;
    }
    gActors[arg0].flags_098 |= gActors[arg0 + 1].flags_098;
    if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK4) {
        gActors[arg0].velocityY.raw = -FIXED_UNIT(2);
        gActors[arg0].posY.whole = gActors[arg0 + 1].posY.whole;
    }
    if (gActors[arg0].flags_098 & ACTOR_FLAG3_UNK5) {
        gActors[arg0].velocityY.raw = FIXED_UNIT(2);
        gActors[arg0].posY.whole = gActors[arg0 + 1].posY.whole;
    }
    if ((gActors[arg0].flags_098 & ACTOR_FLAG3_UNK2) || (func_80012AB4(gActors[arg0 + 1].posX.whole + gActors[arg0 + 1].hitboxBX0, (gActors[arg0 + 1].posY.whole + gActors[arg0 + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[arg0].velocityX.raw = FIXED_UNIT(2);
        gActors[arg0].posX.whole = gActors[arg0 + 1].posX.whole;
        gActors[arg0].var_15C = 0;
    }
    if ((gActors[arg0].flags_098 & ACTOR_FLAG3_UNK3) || (func_80012AB4(gActors[arg0 + 1].posX.whole + gActors[arg0 + 1].hitboxBX1, (gActors[arg0 + 1].posY.whole + gActors[arg0 + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[arg0].velocityX.raw = -FIXED_UNIT(2);
        gActors[arg0].posX.whole = gActors[arg0 + 1].posX.whole;
        gActors[arg0].var_15C = 0;
    }
    gActors[arg0 + 1].posX.whole = gActors[arg0].posX.whole;
    gActors[arg0 + 1].posY.whole = gActors[arg0].posY.whole;
    gActors[arg0 + 1].velocityX.raw = gActors[arg0].velocityX.raw;
    gActors[arg0 + 1].velocityY.raw = gActors[arg0].velocityY.raw;
    gActors[arg0 + 1].flags_098 = 0;

    // BUG: UB, missing return value
    return;
}

void func_8007B60C(u16 arg0) {
    s32 var_v1;

    if (gActors[arg0].state == 0) {
        gActors[arg0].graphicIndex = GINDEX_WM_STAGEICONIMPHQ1;
        gActors[arg0].scaleX = 0.75f;
        var_v1 = (u16)gActors[arg0].var_110 & 0xF00;
        if (var_v1) {
            gActors[arg0].unk_18C = D_800D1938[var_v1 / 256];
        }
        func_800358DC(arg0);
    }
    else {
        ClanpotIcon_State1(arg0);
    }
}

// update function of Rocketeer Clancers.
#pragma GLOBAL_ASM("asm/nonmatchings/66250/func_8007B73C.s")


// update for actor type 3
void ActorUpdate_Type3(u16 arg0) {
}
