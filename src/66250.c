#define func_80012AB4_ARGS
#include "common.h"
#include "actor.h"
#include "28EF0.h"

// forward declarations
void func_80067E50(u16 actor_index, void* arg1);
void func_80066964(u16 actor_index, u16 arg1);
void func_80066A10(u16 actor_index);
void func_8006C1AC(u16 actor_index);
u16 func_80069C54(u16 actor_index);
void func_80078F54(u16 actor_index);
u16 func_80072CC4(u16 actor_index);
void func_80073EF4(u16 actor_index);
u16 func_8006C7B8(u16 actor_index);
u16 func_80069884(u16 actor_index);
void func_800742FC(u16, u16);
void func_80078CC8(u16 actor_index, s32 arg1);
void func_800789C4(u16 actor_index);
void func_80078FF0(u16 actor_index, s32 arg1, s32 arg2);
void func_80079378(u16 actor_index);
void func_8007951C(u16 actor_index);

// TODO: Move to .h file(s)
extern void func_800339BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern void func_80033E7C(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5, s32 arg6);
extern void func_80028C00(u16 actor_index);
extern void func_80072628(u16 actor_index);
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

extern u16 gGuestActorIndex;

// data of this TU
extern s32 D_800D1938[];
extern s16 D_800D2918; // = 0;
extern s16 D_800D291C; // = 0;
extern s16 D_800D2920; // = 0;
extern u16 D_800D2950; // = 0;
extern ActorFunc D_800D7F00[];
extern u16 D_800D80C0[]; // = { 0x0000, 0x0010, 0x0030, 0x0000, };
extern s16 D_800D8190[]; /* = {
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D8198[]; /* = {
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D81A0[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ1, 2,
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    0, 0
}; */
extern s16 D_800D81AC[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    GINDEX_WM_STAGEICONIMPHQ1, 2,
    0, 0
}; */
extern s16 D_800D81B8[]; /* = {
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    GINDEX_WM_STAGEICONMERCO, 4,
    GINDEX_WM_STAGEICONFINAL, 2,
    0, 0
}; */
extern s16 D_800D81C8[]; /* = {
    GINDEX_WM_STAGEICONFINAL, 2,
    GINDEX_WM_STAGEICONMERCO, 4,
    GINDEX_WM_STAGEICONIMPHQ2, 2,
    0, 0
}; */
extern s16 D_800D81D8[]; /* = {
    GINDEX_WM_STAGEICONPLAINS, 4,
    GINDEX_WM_STAGEICONENDING, 4,
    GINDEX_WM_STAGEICONVERTICAL, 4,
    GINDEX_303E, 4,
    GINDEX_3040, 8,
    GINDEX_3042, 4 | 2,
    GINDEX_WM_STAGEICONMERCO, 3,
    0, 0
}; */
extern s16 D_800D81F8[]; /* = {
    GINDEX_3044, 4,
    GINDEX_3046, 4,
    GINDEX_3048, 4,
    GINDEX_304A, 3,
    GINDEX_WM_STAGEICONMERCO, 2,
    0, 0
}; */
extern s16 D_800D8210[]; /* = {
    GINDEX_304A, 8,
    GINDEX_3044, 8,
    0xFFFC, 0
}; */
extern s16 D_800D8210[]; /* = {
    GINDEX_304A, 8,
    GINDEX_3044, 8,
    0xFFFC, 0
}; */
extern s16 D_800D821C[]; /* = {
    GINDEX_3046, 3,
    GINDEX_3048, 3,
    GINDEX_3046, 3,
    GINDEX_3048, 5,
    GINDEX_3046, 5,
    GINDEX_3048, 5,
    GINDEX_3046, 8,
    GINDEX_3048, 8,
    0, 0
}; */
extern s16 D_800D8240[]; /* = {
    GINDEX_3046, 5,
    GINDEX_3048, 5,
    GINDEX_3046, 8,
    GINDEX_3048, 8,
    GINDEX_WM_STAGEICONFINAL, 2,
    0, 0
}; */
extern u16 D_800D8258[]; // = { 0x0005, 0x0014, 0x0032, 0x0064, 0x0166, 0x01B2, 0x01B4, 0x01B2 };
extern s16 D_800D82BC[]; /* = {
    0x0008, 0x000E,
    0x0008, 0x000E,
    0x0000, 0x0011,
    0x0013, 0x0008,
    0xFFFD, 0xFFEE,
    0x0022, 0xD801,
    0x0026, 0xD001,
    0x0100, 0x0000
};*/
extern u8 D_800E1750[];
extern u8 D_800E223C[];
extern u8 D_800E2250[];
extern u8 D_800E2274[];
extern u8 D_800E2564[];
extern u8 D_800E1788[];
extern u16 D_800E3570; // = 0; // actor flag storage?
extern u16 D_800E3574; // = 0; // actor flag storage?
extern u16 D_800E3580; // = 0;
extern u32 D_800E3584; // = 0;

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
        FIXED_UNIT(0.375),
        FIXED_UNIT(8.0),
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

void func_80073FD8(u16 actor_index, u16 arg1, s32 arg2) {
    func_80073EF4(actor_index);
    gActors[actor_index].var_0D8 = (arg1 & 0x700) * 0x10;
    gActors[actor_index].var_0D8 |= D_800D80C0[(arg1 & 0x3000) / 4096];
}

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

void func_80078F54(u16 actor_index) {
    s32 var_v1;

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    var_v1 = gActors[actor_index].unk_168 / FIXED_UNIT(1);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v1 = (var_v1 + (ARRAYLENGTH(gCosineLookup) / 2)) & COS_MASK;
    }
    gActors[actor_index].rotateZ = INDEX_TO_DEG(var_v1);
}

void func_80078FF0(u16 actor_index, s32 arg1, s32 arg2) {
    Actor* temp_s0;

    temp_s0 = &gActors[actor_index];
    if (temp_s0->var_150 & 1) {
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, arg1, arg2);
        if (((Rand() & 3) + temp_s0->unk_180) < temp_s0->unk_178) {
            temp_s0->var_150 &= ~1;
        }
    }
    else {
        temp_s0->velocityX.raw = Math_ApproachS32(temp_s0->velocityX.raw, -arg1, arg2);
        if (temp_s0->unk_178 < (temp_s0->unk_180 - (Rand() & 3))) {
            temp_s0->var_150 |= 1;
        }
    }
    if (temp_s0->var_150 & 2) {
        temp_s0->velocityY.raw = Math_ApproachS32(temp_s0->velocityY.raw, arg1, arg2);
        if (((Rand() & 3) + temp_s0->unk_184) < temp_s0->unk_17C) {
            temp_s0->var_150 &= ~2;
        }
    }
    else {
        temp_s0->velocityY.raw = Math_ApproachS32(temp_s0->velocityY.raw, -arg1, arg2 * 2);
        if (temp_s0->unk_17C < (temp_s0->unk_184 - (Rand() & 3))) {
            temp_s0->var_150 |= 2;
        }
    }
    if (temp_s0->graphicTimer == 0) {
        if (temp_s0->velocityY.raw > FIXED_UNIT(1.125)) {
            temp_s0->graphicList = D_800D8198;
        }
        if (temp_s0->velocityY.raw < -FIXED_UNIT(1.125)) {
            temp_s0->graphicList = D_800D8190;
        }
        temp_s0->graphicTimer = 1;
    }
}

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

s16 func_80079270(s16 actor_index) {
    actor_index *= 2;
    return ((actor_index + 1) / 2) - ((Rand() * 4) & actor_index);
}

s32 func_800792C0(u16 actor_index) {
    s16 temp_a1;
    s16 temp_v0;

    temp_v0 = gActors[actor_index].unk_180 - gActors[actor_index].unk_178;
    temp_a1 = gActors[actor_index].unk_184 - gActors[actor_index].unk_17C;
    if (temp_v0 > 7 && temp_v0 < -7 && temp_a1 > 7 && temp_a1 < -7) {
        return 1;
    }

    if ((gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        return 1;
    }

    return 0;
}

void func_80079378(u16 actor_index) {
    s32 var_t9;

    gActors[actor_index].unk_168 = func_800298D0(gActors[actor_index].var_158, gActors[actor_index].unk_168, FIXED_UNIT(16));
    func_80078F54(actor_index);
    var_t9 = gActors[actor_index].unk_168 / FIXED_UNIT(1);
    gActors[actor_index].velocityX.raw = COS(var_t9) * gActors[actor_index].var_160;
    gActors[actor_index].velocityY.raw = SIN(var_t9) * gActors[actor_index].var_160;
    Actor_ClampVelocityX(actor_index, FIXED_UNIT(8));
    gActors[actor_index].var_160 = Math_ApproachS32(gActors[actor_index].var_160, gActors[actor_index].var_15C, gActors[actor_index].unk_114 * 16384.0f);
    gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, 0, gActors[actor_index].unk_114 * 12288.0f);
}

void func_8007951C(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -gActors[actor_index].var_160, gActors[actor_index].var_160 / 32);
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_160, gActors[actor_index].var_160 / 32);
    }

    if (gActors[actor_index].var_150 & 2) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1), FIXED_UNIT(0.0625));
        if (gActors[actor_index].unk_184 < gActors[actor_index].unk_17C) {
            gActors[actor_index].var_150 &= ~2;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -FIXED_UNIT(1), FIXED_UNIT(0.0625));
        if (gActors[actor_index].unk_17C < (gActors[actor_index].unk_184 - 1)) {
            gActors[actor_index].var_150 |= 2;
        }
    }

    if ((gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) || (gActors[actor_index].velocityY.raw > 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4))) {
        gActors[actor_index].var_150 ^= 2;
        gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 1.2;
    }
    if (gActors[actor_index].velocityX.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) || (gActors[actor_index].velocityX.raw > 0 && gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 1.2;
    }
}

void func_80079760(u16 actor_index) {
    s32 arg0;

    func_80078F54(actor_index);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        arg0 = FIXED_UNIT(512.0);
    }
    else {
        arg0 = 0;
    }

    gActors[actor_index].unk_168 = func_800298D0(arg0, gActors[actor_index].unk_168, FIXED_UNIT(24));
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, gActors[actor_index].var_158 + FIXED_UNIT(0.001953125));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, gActors[actor_index].var_15C + FIXED_UNIT(0.001953125));
}

void func_80079810(u16 actor_index) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK5;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
    gActors[actor_index].flags |= (D_800E3574 + ACTOR_FLAG_UNK12);
    gActors[actor_index].var_150 &= ~(ACTOR_FLAG_UNK21 | ACTOR_FLAG_UNK20);
    ACTOR_GFX_INIT(actor_index, D_800D8190; gActors[actor_index].graphicTimer = 1);
    func_800791D4(actor_index);
    gActors[actor_index].var_154 = 0;
}

void func_800798EC(u16 actor_index) {
    gActors[actor_index].state = 0x30;
    ACTOR_GFX_INIT(actor_index, D_800D81AC; gActors[actor_index].graphicTimer = 1);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
    gActors[actor_index].velocityX.raw /= 2;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_154 = 0;
}

void func_80079984(u16 actor_index) {
    u16 var_t3;

    gActors[actor_index].state = 0x20;
    gActors[actor_index].var_154 = 0x1E;
    ACTOR_GFX_INIT(actor_index, D_800D81B8; gActors[actor_index].graphicTimer = 1);
    var_t3 = gActors[actor_index].var_158 / FIXED_UNIT(1);
    gActors[actor_index].var_15C = gActors[actor_index].unk_114 * 393216.0f;
    gActors[actor_index].var_160 = gActors[actor_index].unk_114 * -65536.0f;
    if (COS(var_t3) < 0.0f) {
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 0x02000000;
    }
    else {
        gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        gActors[actor_index].unk_168 = 0;
    }
}

void func_80079AB4(u16 actor_index) {
    gActors[actor_index].state = 0x200;
    ACTOR_GFX_INIT(actor_index, D_800D8210; gActors[actor_index].graphicTimer = 1);
    gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].var_150 |= 0x300000;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
}

void func_80079B28(u16 actor_index) {
    s16 var_s0;
    s16 var_s2;

    gActors[actor_index].state = 0x60;
    gActors[actor_index].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
    gActors[actor_index].var_150 |= 0x300040;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].var_160 = 0x01000000;
    gActors[actor_index].unk_118 = 0.0f;
    var_s2 = 3;
    var_s0 = (gActors[actor_index].hitboxBY0 + gActors->posY.whole) - 1;
    while (var_s2 > 0) {
        if ((func_80012AB4(gActors->posX.whole - 0x10, var_s0) & 0x80) || (func_80012AB4(gActors->posX.whole + 0x10, var_s0) & 0x80)) {
            gActors[actor_index].posY.whole -= 8;
            gActors->posY.whole -= 8;
        }
        var_s0 -= 8; var_s2--;
    }
    // Can't use ACTOR_INIT here
    gActors[actor_index + 1].actorType = 0x1D;
    Actor_Initialize((actor_index + 1));
    gActors[actor_index + 1].flags = (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE);
    gActors[actor_index + 1].posX.whole = gActors[actor_index].posX.whole;
    gActors[actor_index + 1].posY.whole = gActors[actor_index].posY.whole;
    gActors[actor_index + 1].health = 0x64;
    gActors[actor_index + 1].hitboxBY0 = 0x30; gActors[actor_index + 1].hitboxBY1 = 8;
    gActors[actor_index + 1].hitboxBX0 = -0x18; gActors[actor_index + 1].hitboxBX1 = 0x18;
    gActors[actor_index + 1].flags_098 = 0;
}

void func_80079CE8(u16 arg0) {
    u16 sp1E;

    sp1E = Actor_RangeFindInactive_90ToC0();
    if (sp1E != 0) {
        func_800333A0(gActors[arg0].posX.whole, gActors[arg0].posY.whole, gActors[arg0].posZ.whole, 1.5f);
        Sound_PlaySfx(0x93);
        func_80073FD8(sp1E, gActors[arg0].var_110, gActors[arg0].var_0D8);
    }
}

void func_80079DF8(u16 actor_index) {
    func_80034644(actor_index);
    Sound_PlaySfx(0x2D);
    gActors[actor_index].unk_118 = 4.0f;
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    gActors[actor_index].unk_114 += 5.0f;
    gActors[actor_index].var_154 = gActors[actor_index].velocityX.raw;
    gActors[actor_index].var_158 = gActors[actor_index].velocityY.raw;
    gActors[actor_index].velocityX.raw = gActors[actor_index].var_154 / 16;
    gActors[actor_index].velocityY.raw = gActors[actor_index].var_158 / 16;
}

void func_80079EB8(u16 actor_index) {
    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 == 0.0f) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].var_154;
            gActors[actor_index].velocityY.raw = gActors[actor_index].var_158;
            gActors[actor_index].flags |= gActors[actor_index].var_15C;
        }
    }
}

void func_80079F50(u16 actor_index, u16 other_actor_index) {
    s16 temp_f10;
    s16 temp;
    u16 var_v1;

    gActors[other_actor_index].parentIndex = actor_index;
    gActors[other_actor_index].flags_098 |= ACTOR_FLAG3_UNK9;
    var_v1 = (gActors[actor_index].graphicIndex - 0x3036) / 2 * 2;
    // + 0 required to match
    temp_f10 = D_800D82BC[var_v1 + 0] * gActors[actor_index].scaleX;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        temp_f10 = -temp_f10;
    }
    temp = D_800D82BC[var_v1 + 1] * gActors[actor_index].scaleX;
    gActors[other_actor_index].unk_104 = gActors[actor_index].posX.raw + (temp_f10 << 0x10);
    gActors[other_actor_index].unk_108 = gActors[actor_index].posY.raw + (temp << 0x10);
    gActors[other_actor_index].unk_10C = gActors[actor_index].posZ.raw - 8;
}

void func_8007A090(u16 actor_index, u16 other_actor_index) {
    s32 var_a3;

    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a3 = -FIXED_UNIT(1.75);
    }
    else {
        var_a3 = FIXED_UNIT(1.75);
    }

    func_8002ECAC(other_actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, var_a3, -FIXED_UNIT(2.5));
}

void func_8007A118(u16 actor_index, u16 other_actor_index) {
    gActors[other_actor_index].actorType = 0x2601;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[other_actor_index].velocityX.raw = -FIXED_UNIT(1.75);
    }
    else {
        gActors[other_actor_index].velocityX.raw = FIXED_UNIT(1.75);
    }
    gActors[other_actor_index].velocityY.raw = -FIXED_UNIT(2);
}

u16 func_8007A190(u16 actor_index) {
    u16 temp_v0;

    gActors[actor_index].unk_128 -= 1.0f;
    temp_v0 = Actor_RangeFindInactive(0x70, 0x7A);
    if (temp_v0 != 0) {
        ACTOR_INIT(temp_v0, 0);
        gActors[temp_v0].posX.whole = gActors[actor_index].posX.whole;
        gActors[temp_v0].posY.whole = gActors[actor_index].posY.whole;
        gActors[temp_v0].posZ.whole = gActors[actor_index].posZ.whole - 1;
        ((Actor2Func) gActors[actor_index].var_154)(actor_index, temp_v0);
        gActors[actor_index].unk_118 = temp_v0;
        gActors[actor_index].unk_11C = gActors[temp_v0].actorType;
        gActors[temp_v0].parentIndex = actor_index;
        gActors[temp_v0].flags_098 = ACTOR_FLAG3_UNK9;
        gActors[actor_index].var_154 = gActors[temp_v0].velocityX.raw * gActors[actor_index].scaleX;
        gActors[actor_index].var_158 = gActors[temp_v0].velocityY.raw * gActors[actor_index].scaleX;
        gActors[actor_index].velocityX.raw /= 2;
        gActors[actor_index].velocityY.raw /= 2;
        if ((((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) != 0) && gActors[actor_index].var_154 > 0) || (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) == 0) && gActors[actor_index].var_154 < 0)) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONFINAL;
        func_80079F50(actor_index, temp_v0);
    }

    return temp_v0;
}

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
    temp_v1 = &gActors[(u16)temp_v0->unk_118];
    if (!(temp_v1->flags & ACTOR_FLAG_ACTIVE) || (u16)(temp_v0->unk_11C) != temp_v1->actorType) {
        func_80079810(actor_index);
        return 1;
    }

    if ((temp_v0->graphicIndex == GINDEX_303E) && (temp_v0->graphicTimer == 1)) {
        temp_v0->state += 1;
        temp_v1->flags_098 |= ACTOR_FLAG3_UNK10;
        temp_v1->unk_0F8.raw = temp_v0->var_154;
        temp_v1->unk_0FC.raw = temp_v0->var_158;
        Sound_PlaySfxAtActor2(0x2A, actor_index);
        return 1;
    }

    func_80079F50(actor_index, temp_v0->unk_118);
    return 0;
}

void func_8007A6A8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.25));
}

void func_8007A720(u16 actor_index) {
    Actor *actor = &gActors[actor_index];

    actor->iFrames = 5;
    actor->flags |= ACTOR_FLAG_UNK12;
    actor->var_150 |= 0x200000;\
    actor->var_150 &= ~0x100000;
    actor->velocityX.raw = 0;
    actor->velocityY.raw = 0;
    if (
        actor->unk_0F8.raw != 0 &&
        ((!(actor->flags & ACTOR_FLAG_FLIPPED) && actor->unk_0F8.raw > 0) || ((actor->flags & ACTOR_FLAG_FLIPPED) && actor->unk_0F8.raw < 0))
    ) {
        actor->flags ^= ACTOR_FLAG_FLIPPED;
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

s32 func_8007AB44(u16 actor_index) {
    f32 var_f0;
    u16 angle;
    s32 var_a3;
    u16 var_v0_2;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (func_80029044(actor_index) == 0)) {
        var_a3 = FIXED_UNIT(16) - Math_AbsS32(gActors[actor_index].velocityX.raw * 2);
        var_a3 = FROM_FIXED(var_a3);
        if (var_a3 < 2) {
            var_a3 = 2;
        }
        D_800BE704 = Math_ApproachS32(D_800BE704, var_a3, 1);
    }
    else {
        gActors[actor_index].state = 0x10;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK12;
        gActors[actor_index].var_150 &= ~0x300000;
        D_800BE704 = 0x10;
        gActors[actor_index + 1].flags = ACTOR_FLAG_ACTIVE;
        return 1;
    }

    gActors[actor_index].graphicTimer = 0;
    gActors[actor_index].hitboxBY1 = gActors[actor_index].scaleX * -8.0f;
    var_a3 = gActors[actor_index].velocityX.raw;
    if (var_a3 < 0) {
        var_a3 = -var_a3;
    }
    if (var_a3 > FIXED_UNIT(6.0)) {
        gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONFINAL;
    }
    else {
        if ((var_a3 > FIXED_UNIT(3)) || (gActors[actor_index].velocityY.raw < FIXED_UNIT(-0.75))) {
            gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONMERCO;
        }
        else {
            gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONIMPHQ2;
        }
        if ((gActors[actor_index].velocityY.raw > FIXED_UNIT(3)) || (gActors[actor_index].velocityY.raw < FIXED_UNIT(-3))) {
            if ((u16)gActors[actor_index].unk_134) {
                gActors[actor_index].unk_134 = 0.0f;
                Sound_PlaySfxAtActor3(0xFD, actor_index);
            }
        }
        else if (!(gActiveFrames & 0xF)) {
            gActors[actor_index].unk_134 = 93.0f;
            Sound_PlaySfxAtActor3(0xFD, actor_index);
        }
    }
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    var_f0 = gActors[actor_index].velocityY.raw / 8192;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_f0 = -var_f0;
    }
    gActors[actor_index].rotateZ = var_f0;
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_v0_2 = (s32) DEG_TO_INDEX(var_f0) + 0xD0;
    }
    else {
        var_v0_2 = (s32) DEG_TO_INDEX(var_f0) + 0x130;
    }
    gActors[actor_index].var_160 = func_800298D0(TO_FIXED(var_v0_2), gActors[actor_index].var_160, FIXED_UNIT(8));
    angle = FROM_FIXED(gActors[actor_index].var_160);
    // The two float multiplies are required for matching.
    var_f0 = COS(angle) * 32.0f * (f32)FIXED_UNIT(1.0);
    gPlayerActor.posX.raw = gActors[actor_index].posX.raw + (s32) var_f0;
    var_f0 = SIN(angle) * 32.0f * (f32)FIXED_UNIT(1.0);
    gPlayerActor.posY.raw = gActors[actor_index].posY.raw + (s32) var_f0;
    gPlayerPosX.raw = gPlayerActor.posX.raw + gScreenPosCurrentX.raw;
    gPlayerPosY.raw = gPlayerActor.posY.raw + gScreenPosCurrentY.raw;
    gPlayerActor.posZ.raw = gActors[actor_index].posZ.raw - FIXED_UNIT(0.0625);
    var_a3 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole + 0x10;
    if (D_800D2918 < var_a3) {
        gActors[actor_index].posY.whole += D_800D2918 - var_a3;
    }
    var_a3 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    if (var_a3 < D_800D291C) {
        gActors[actor_index].posY.whole += D_800D291C - var_a3;
    }
    var_a3 = gActors[actor_index].var_15C;
    var_a3 /= 16;
    if (var_a3 <0) {
        var_a3 = -var_a3;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_15C, var_a3);
    var_a3 = gButtonHold & gButton_LTrig;
    if (!var_a3 && !(gButtonHold & gButton_RTrig)) {
        if (gActors[actor_index].velocityX.raw > FIXED_UNIT(1.5)) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_index].velocityX.raw < FIXED_UNIT(-1.5)) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gPlayerActor.flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (((gButtonPress & gButton_LTrig) || (gButtonPress & gButton_RTrig)) && (gActors[actor_index].unk_118 < 0.0f)) {
        gActors[actor_index].unk_118 = 16.0f;
        Sound_PlaySfxAtActor2(0x43, actor_index);
        gActors[actor_index].velocityX.raw -= ((f32) gActors[actor_index].velocityX.raw * 0.8);
        gActors[actor_index].var_15C -= ((f32) gActors[actor_index].var_15C * 1.5);
        gActors[actor_index].velocityY.raw -= ((f32) gActors[actor_index].velocityY.raw * 1.4);
    }
    else {
        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].var_15C -= FIXED_UNIT(0.25);
        }
        else if (gButtonHold & gButton_DRight) {
            gActors[actor_index].var_15C += FIXED_UNIT(0.25);
        }
        else if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, FIXED_UNIT(-0.5), FIXED_UNIT(0.0625));
        }
        else {
            gActors[actor_index].var_15C = Math_ApproachS32(gActors[actor_index].var_15C, FIXED_UNIT(0.5), FIXED_UNIT(0.0625));
        }
    }
    var_a3 = gButtonHold & gButton_LTrig;
    if (var_a3 || (gButtonHold & gButton_RTrig)) {
        gActors[actor_index].var_15C = Math_ClampLimit(gActors[actor_index].var_15C, FIXED_UNIT(2.5));
        var_a3 = FIXED_UNIT(4.0);
        var_a3 |= FIXED_UNIT(0.5);
    }
    else {
        gActors[actor_index].var_15C = Math_ClampLimit(gActors[actor_index].var_15C, FIXED_UNIT(8));
        var_a3 = FIXED_UNIT(3.0);
        var_a3 |= FIXED_UNIT(0.5);
    }

    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.0625));
    }
    else if (gButtonHold & gButton_DUp) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, var_a3, FIXED_UNIT(0.25));
    }
    else if (gButtonHold & gButton_DDown) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -var_a3, FIXED_UNIT(0.25));
    }
    else if ((gActors[actor_index].velocityX.raw > FIXED_UNIT(2)) || (gActors[actor_index].velocityX.raw < FIXED_UNIT(-2))) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.25));
    }
    else if (gActiveFrames & 0x10) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(1.5), FIXED_UNIT(0.25));
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-1.5), FIXED_UNIT(0.25));
    }
    if (gActors[actor_index].unk_118 >= 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
    }
    gActors[actor_index].flags_098 |= gActors[actor_index + 1].flags_098;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4) {
        gActors[actor_index].velocityY.raw = -FIXED_UNIT(2);
        gActors[actor_index].posY.whole = gActors[actor_index + 1].posY.whole;
    }
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2);
        gActors[actor_index].posY.whole = gActors[actor_index + 1].posY.whole;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) || (func_80012AB4(gActors[actor_index + 1].posX.whole + gActors[actor_index + 1].hitboxBX0, (gActors[actor_index + 1].posY.whole + gActors[actor_index + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        gActors[actor_index].posX.whole = gActors[actor_index + 1].posX.whole;
        gActors[actor_index].var_15C = 0;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) || (func_80012AB4(gActors[actor_index + 1].posX.whole + gActors[actor_index + 1].hitboxBX1, (gActors[actor_index + 1].posY.whole + gActors[actor_index + 1].hitboxBY0) - 8) & 0x80)) {
        gActors[actor_index].velocityX.raw = -FIXED_UNIT(2);
        gActors[actor_index].posX.whole = gActors[actor_index + 1].posX.whole;
        gActors[actor_index].var_15C = 0;
    }
    gActors[actor_index + 1].posX.whole = gActors[actor_index].posX.whole;
    gActors[actor_index + 1].posY.whole = gActors[actor_index].posY.whole;
    gActors[actor_index + 1].velocityX.raw = gActors[actor_index].velocityX.raw;
    gActors[actor_index + 1].velocityY.raw = gActors[actor_index].velocityY.raw;
    gActors[actor_index + 1].flags_098 = 0;

    // BUG: UB, missing return value
    return;
}

void func_8007B60C(u16 actor_index) {
    s32 var_v1;

    if (gActors[actor_index].state == 0) {
        gActors[actor_index].graphicIndex = GINDEX_WM_STAGEICONIMPHQ1;
        gActors[actor_index].scaleX = 0.75f;
        var_v1 = (u16)gActors[actor_index].var_110 & 0xF00;
        if (var_v1) {
            gActors[actor_index].unk_18C = D_800D1938[var_v1 / 256];
        }
        func_800358DC(actor_index);
    }
    else {
        ClanpotIcon_State1(actor_index);
    }
}

void func_8007B73C(u16 actor_index) {
    Actor* actor; // needs temp var to match
    s32 var_v1;
    s32 var_v0;

    actor = &gActors[actor_index];
    actor->unk_178 = actor->posX.whole + gScreenPosCurrentX.whole;
    actor->unk_17C = actor->posY.whole + gScreenPosCurrentY.whole;
    if ((actor->scaleX == 0.75) && (Clanpot_AddItemCheck3(actor_index, 0x400, 0, 0, 0x69) >= 0)) {
        actor->flags = ACTOR_FLAG_ACTIVE;
        actor->state = 1;
    }
    if (actor->state >= 3) {
        if (actor->unk_124 < 32752.0f) {
            actor->unk_124 += 1.0f;
        }
        actor->posZ.raw = (actor_index * 16) + FIXED_UNIT(-2.0);
        if (actor->var_150 & 0x40) {
            D_800E3570 = ACTOR_FLAG_UNK7;
            D_800E3574 = ACTOR_FLAG_UNK8;
        }
        else {
            D_800E3570 = ACTOR_FLAG_UNK9;
            D_800E3574 = ACTOR_FLAG_UNK10;
        }
        actor->graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        func_8002877C(actor_index);
        if (actor->health <= 0 || (((u16)actor->var_110 & 0x4000) && (Actor_IsOutsideRegion(actor_index, 0x80) != 0))) {
                if (actor->health <= 0) {
                    func_80079CE8(actor_index);
                }
                if ((u16)actor->var_110 & 0x8000) {
                    actor->state = 2;
                    actor->flags = ACTOR_FLAG_ACTIVE;
                    actor->flags_098 = 0;
                    actor->velocityX.raw = 0;
                    actor->velocityY.raw = 0;
                    actor->velocityZ.raw = 0;
                    actor->posX.whole = actor->unk_170 - gScreenPosCurrentX.whole;
                    actor->posY.whole = actor->unk_174 - gScreenPosCurrentY.whole;
                }
                else {
                    actor->flags = 0;
                    return;
                }
        }
        else {
            if ((actor->flags_098 & ACTOR_FLAG3_UNK9) && !(actor->var_150 & 0x100000)) {
                if (actor->unk_0DE == 1) {
                    actor->graphicFlags &= ~ACTOR_GFLAG_ROTZ;
                    Sound_PlaySfx(0x67);
                    func_80079AB4(actor_index);
                }
                else {
                    Sound_PlaySfx(0x2F);
                    func_80079B28(actor_index);
                }
            }
            else {
                func_8007A8B0(actor_index);
            }
        }
    }
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    switch (actor->state) {
    case 0x1:
        if (actor->flags_098 & ACTOR_FLAG3_UNK9) {
            actor->state = 0x200;
            actor->flags = ACTOR_FLAG_ENABLED;
        }
        break;
    case 0x2:
        if (Actor_IsOutsideRegion(actor_index, 0x70) != 0) {
            actor->state = 0;
        }
        else {
            break;
        }
    case 0x0:
        actor->flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        ACTOR_GFX_INIT(actor_index, D_800D8190);
        actor->unk_0CE = 1;
        actor->unk_0DE = 1;
        actor->unk_0DF = 1;
        actor->var_150 = (u16)actor->var_110;
        if (actor->var_150 & 0x40) {
            D_800E3570 = ACTOR_FLAG_UNK7;
            D_800E3574 = ACTOR_FLAG_UNK8;
        }
        else {
            D_800E3570 = ACTOR_FLAG_UNK9;
            D_800E3574 = ACTOR_FLAG_UNK10;
        }
        actor->health = D_800D8258[(actor->var_150 & 0x30) / 16];
        if ((actor->var_150 & 0x3000) != 0) {
            actor->graphicFlags |= ACTOR_GFLAG_SCALE;
            switch ((actor->var_150 & 0x3000)) {
            case 0x1000:
                actor->unk_0DF = 0;
                actor->scaleX = 0.75f;
                break;
            case 0x2000:
                actor->unk_0DE = 6;
                actor->unk_0DF = 0x40;
                actor->scaleX = 1.25f;
                break;
            }
        }
        if (actor->var_150 & 8) {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }
        if ((actor->var_150 & 0xF00) != 0) {
            actor->graphicFlags |= ACTOR_GFLAG_PALETTE;
            actor->unk_18C = D_800D1938[(actor->var_150 & 0xF00) / 256];
        }
        var_v0 = gScreenPosCurrentX.whole + actor->posX.whole;
        actor->unk_170 = var_v0;
        var_v1 = gScreenPosCurrentY.whole + actor->posY.whole;
        actor->unk_174 = var_v1;
        actor->unk_180 = actor->unk_170;
        actor->unk_184 = actor->unk_174;
        func_80079810(actor_index);
        actor->state = 0;
        break;
    case 0xF:
        func_80079810(actor_index);
        /* fallthrough */
    case 0x10:
        actor->var_154++;
        func_80078FF0(actor_index, 0x18000, 0x2C00);
        if (D_800E3584 & 0xC0000) {
            actor->flags ^= ACTOR_FLAG_FLIPPED;
        }
        if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            func_800798EC(actor_index);
        }
        break;
    case 0x2F:
        func_800798EC(actor_index);
        /* fallthrough */
    case 0x30:
        if (actor->var_154 < 0x258) {
            actor->var_154++;
        }
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.25));
        if (D_800E3584 & 0xC0000) {
            actor->flags ^= ACTOR_FLAG_FLIPPED;
        }
        if (actor->flags_098 & ACTOR_FLAG3_UNK6) {
            actor->state = 0x80;
        }
        break;
    case 0x80:
        actor->state++;
        actor->flags &= ~ACTOR_FLAG_UNK16; actor->flags |= ACTOR_FLAG_UNK17;
        ACTOR_GFX_INIT(actor_index, D_800D81A0);
        /* fallthrough */
    case 0x81:
        if (actor->velocityY.raw > -FIXED_UNIT(7.5)) {
            actor->velocityY.raw -= FIXED_UNIT(0.25);
        }
        actor->velocityX.raw = 0;
        if (actor->flags_098 & ACTOR_FLAG3_UNK5) {
            func_800798EC(actor_index);
        }
        break;
    case 0x70:
    case 0x74:
    case 0x78:
        actor->state++;
        actor->flags &= ~ACTOR_FLAG_UNK16; actor->flags |= ACTOR_FLAG_UNK17;
        ACTOR_GFX_INIT(actor_index, D_800D81B8);
        /* fallthrough */
    case 0x71:
    case 0x75:
    case 0x79:
        if ((actor->velocityX.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK3)) || (actor->velocityX.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK2))) {
            actor->velocityX.raw = -actor->velocityX.raw / 2;
        }
        if (actor->velocityY.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK4)) {
            actor->velocityY.raw = 0;
        }
        if (actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            func_800798EC(actor_index);
        }
        else {
            actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0, FIXED_UNIT(0.0625));
            actor->velocityY.raw -= FIXED_UNIT(0.21875);
            if (actor->velocityY.raw < -FIXED_UNIT(2)) {
                actor->state++;
            }
        }
        break;
    case 0x20:
        func_80079984(actor_index);
        actor->state++;
        func_8003F138(actor->unk_114 / 4/*.0f*/, actor->posX.whole, actor->posY.whole, actor->posZ.whole - 8);
        /* fallthrough */
    case 0x21:
        func_80079378(actor_index);
        if (actor->var_154 < 0) {
            func_80079810(actor_index);
        }
        else {
            actor->var_154--;
            if ((actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) || (actor->velocityY.raw > 0 && (actor->flags_098 & ACTOR_FLAG3_UNK4))) {
                actor->velocityY.raw = 0;
                actor->velocityX.raw /= 2;
            }
            if ((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2) || (actor->velocityX.raw > 0 && actor->flags_098 & ACTOR_FLAG3_UNK3)) {
                actor->velocityX.raw = 0;
                actor->velocityY.raw /= 2;
            }
            if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
                if (actor->unk_114 > 2.5) {
                    Sound_PlaySfxAtActor2(0x2D, actor_index);
                }
                actor->var_154 = 8;
                actor->var_160 = -actor->var_160;
                actor->posY.whole += 3;
            }
            if (actor->var_154 == 0x18) {
                if (actor->unk_114 > 2.5) {
                    actor->flags |= D_800E3570;
                    actor->unk_0DA = 0x84;
                    actor->unk_0DB = 7;
                    actor->damage = actor->unk_114 * 20.0f;
                    actor->unk_0F8.raw = actor->scaleX * 327680.0f;
                    actor->unk_0FC.raw = FIXED_UNIT(4);
                }
            }
            if (actor->var_154 == 8) {
                actor->flags &= (-ACTOR_FLAG_DRAW - D_800E3570);
                ACTOR_GFX_INIT(actor_index, D_800D81C8);
                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    actor->var_158 = 0x2000000;
                }
                else {
                    actor->var_158 = 0;
                }
            }
        }
        break;
    case 0x60:
        actor->state++;
        /* fallthrough */
    case 0x61:
        func_80078CC8(actor_index, 0);
        func_8007AB44(actor_index);
        if (actor->var_154 < 0) {
        }
        break;
    case 0x24:
        actor->state++;
        ACTOR_GFX_INIT(actor_index, D_800D81B8);
        actor->unk_114 = 0.0f;
        if (actor->unk_180 < actor->unk_178) {
            actor->flags |= ACTOR_FLAG_FLIPPED;
        }
        /* fallthrough */
    case 0x25:
        actor->unk_114 += 1.0f;
        func_8007951C(actor_index);
        break;
    case 0x50:
        if (func_8007A190(actor_index) == 0) {
            func_80079810(actor_index);
        }
        else {
            actor->state++;
            ACTOR_GFX_INIT(actor_index, D_800D81D8);
        case 0x51:
            func_8007A6A8(actor_index);
            func_8007A4B0(actor_index);
        }
        break;
    case 0x52:
        func_8007A6A8(actor_index);
        if (actor->graphicTimer == 0) {
            func_80079810(actor_index);
        }
        break;
    case 0x54:
        if (func_8007A190(actor_index) == 0) {
            func_80079810(actor_index);
            break;
        }

        actor->state++;
        ACTOR_GFX_INIT(actor_index, D_800D81D8);
        /* fallthrough */
    case 0x55:
        func_8007951C(actor_index);
        func_8007A4B0(actor_index);
        break;
    case 0x56:
        func_8007951C(actor_index);
        if (actor->graphicTimer == 0) {
            actor->state = 0x24;
        }
        break;
    case 0x200:
        var_v0 = func_800291AC(actor_index, 0x40, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ENABLED, 0x10, ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ENABLED);
        if (var_v0 != 2) {
            if (var_v0 != 3) {
                if (actor->flags & ACTOR_FLAG_FLIPPED) {
                    var_v0 = -5;
                }
                else {
                    var_v0 = 5;
                }
                func_80033E7C(actor_index, actor->posX.whole + var_v0, actor->posY.whole + 8, actor->posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 3);
                if (actor->flags_098 & ACTOR_FLAG3_UNK1) {
                    Sound_PlaySfx(0x9D);
                    ACTOR_GFX_INIT(actor_index, D_800D821C);
                }
                else if (actor->flags_098 & ACTOR_FLAG3_UNK17) {
                    ACTOR_GFX_INIT(actor_index, D_800D821C);
                    actor->velocityY.raw = FIXED_UNIT(1);
                    func_80078CC8(actor_index, 0);
                    actor->velocityY.raw = 0;
                }
                else if (actor->graphicTimer == 0) {
                    ACTOR_GFX_INIT(actor_index, D_800D8210);
                }
            }
            else {
                actor->velocityX.raw = 0;
                actor->velocityY.raw = FIXED_UNIT(1);
                func_80079810(actor_index);
            }
        }
        else {
            ACTOR_GFX_INIT(actor_index, D_800D81B8);
            actor->flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8);
            actor->flags |= (D_800E3574 + ACTOR_FLAG_UNK12);
            actor->var_150 &= ~0x100000;
            actor->unk_0DA = 0;
            actor->hitboxAY0 = (actor->scaleX * 7.0f);
            actor->hitboxAY1 = (actor->scaleX * -7.0f);
            actor->hitboxAX1 = (actor->scaleX * 7.0f);
            actor->hitboxAX0 = (actor->scaleX * -7.0f);
            actor->var_15C = actor->flags & (ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            actor->unk_114 = 30.0f;
            actor->unk_118 = -1.0f;
            Sound_PlaySfx(0x45);
            actor->unk_168 = Math_Atan2(actor->velocityX.raw, actor->velocityY.raw) << 0x10;
        }
        break;
    case 0x40:
        func_80078F54(actor_index);
        func_80078F14(actor_index, 0);
        actor->unk_0DB = 10;
        actor->unk_0F8.raw = -FIXED_UNIT(2.125);
        actor->unk_0FC.raw = FIXED_UNIT(5.25);
        actor->damage = 10;
        if ((actor->velocityY.raw < 0 && (actor->flags_098 & ACTOR_FLAG3_UNK5)) || (actor->velocityY.raw > 0 && actor->flags_098 & ACTOR_FLAG3_UNK4)) {
            Actor_ReduceHealth(actor_index, 0x32);
            Sound_PlaySfx(0xAC);
            func_80079810(actor_index);
            actor->velocityX.raw /= 4;
            break;
        }

        if (actor->flags_098 & ACTOR_FLAG3_UNK0) {
            ACTOR_GFX_INIT(actor_index, D_800D8240);
            Actor_ReduceHealth(actor_index, 2);
            func_80079DF8(actor_index);
        }
        else {
            func_80079EB8(actor_index);
        }

        if ((actor->velocityX.raw > 0 && ((actor->flags_098 & ACTOR_FLAG3_UNK3) || (actor->var_150 & 8)))
           || (actor->velocityX.raw < 0 && ((actor->flags_098 & ACTOR_FLAG3_UNK2) || (actor->var_150 & 4)))) {
            Actor_ReduceHealth(actor_index, 0x32);
            Sound_PlaySfx(0xAC);
            func_80079810(actor_index);
            actor->velocityX.raw = (s32) -actor->velocityX.raw / 2;
            break;
        }

        if (actor->unk_114 > 0.0f) {
            actor->unk_114 -= 1.0f;
            break;
        }
        if (actor->posX.whole > 0x100 || actor->posX.whole < -0x100 || actor->posY.whole >= 0xC1 || actor->posY.whole < -0xC0) {
            func_80079CE8(actor_index);
            actor->flags = 0;
            return;
        }
        break;
    case 0x400:
        actor->flags &= ~(ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        if (actor->iFrames <= 0) {
            actor->state++;
            actor->var_150 &= ~0x200000;
            actor->unk_114 = 20.0f;
            actor->velocityX.raw = actor->unk_0F8.raw;
            actor->velocityY.raw = actor->unk_0FC.raw;
        }
        break;
    case 0x401:
        actor->unk_114 -= 1.0f;
        if (actor->unk_114 < 10.0f) {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.25));
            Actor_UpdateVelocityY(actor_index, FIXED_UNIT(0.25));
        }
        else {
            Actor_UpdateVelocityX(actor_index, FIXED_UNIT(0.03125));
            if (actor->velocityY.raw > 0) {
                actor->velocityY.raw -= FIXED_UNIT(0.21875);
            }
        }
        if (actor->unk_114 < 0.0f) {
            func_80079810(actor_index);
        }
        if ((actor->velocityY.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK5)) {
            Sound_PlaySfx(0x36);
            ACTOR_GFX_INIT(actor_index, D_800D81F8);
            actor->velocityY.raw = -actor->velocityY.raw;
        }
        if (((actor->velocityX.raw < 0) && (actor->flags_098 & ACTOR_FLAG3_UNK2)) || ((actor->velocityX.raw > 0) && (actor->flags_098 & ACTOR_FLAG3_UNK3))) {
            Sound_PlaySfx(0x36);
            ACTOR_GFX_INIT(actor_index, D_800D81F8);
            actor->velocityX.raw = -actor->velocityX.raw;
        }
        break;
    case 0x4010:
        actor->state++;
        actor->flags = ACTOR_FLAG_ENABLED;
        actor->graphicIndex = GINDEX_3044;
        actor->graphicTimer = 0;
        actor->rotateZ = 0.0f;
        /* fallthrough */
    case 0x4011:
        actor->graphicFlags |= ACTOR_GFLAG_ROTZ;
        actor->var_154 += actor->var_158;
        actor->posZ.raw = actor->var_154;
        func_80078F14(actor_index, 0);
        if ((actor->posZ.whole < 0x20) && (actor->posZ.whole >= -0x1F)) {
            actor->flags |= D_800E3574 + ACTOR_FLAG_UNK12;
        }
        else {
            actor->flags &= -(ACTOR_FLAG_UNK12 | ACTOR_FLAG_DRAW) - D_800E3574;
        }
        break;
    case 0x4012:
        actor->flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ENABLED;
        func_80079810(actor_index);
        break;
    case 0x4000:
        if (actor->posX.whole >= 0xC1) {
            actor->flags = 0;
        }
        break;
    case 0x800:
        break;
    }

    if ((actor->var_150 & 0x3000) == 0x2000) {
        actor->flags |= ACTOR_FLAG_UNK15;
    }

    if (actor->state >= 3) {
        actor->scaleY = actor->scaleX;
        if ((actor->state != 0x200) && (actor->state != 0x61)) {
            actor->hitboxBY0 = actor->scaleX * 12.0f;
            actor->hitboxBY1 = actor->scaleX * -17.0f;
            actor->hitboxBX0 = actor->scaleX * -10.0f;
            actor->hitboxBX1 = actor->scaleX * 10.0f;
        }
        if (!(actor->graphicFlags & ACTOR_GFLAG_ROTZ)) {
            actor->rotateZ = 0.0f;
        }
        func_800789C4(actor_index);
        if (actor->iFrames != 0) {
            actor->iFrames--;
        }
    }
}

// update for actor type 3
void ActorUpdate_Type3(u16 arg0) {
}
