#include "common.h"
#include "actor.h"

// "Overlay 1" code used in "Wormin' Up!!"

u32 D_801A08E0_742870=0;

u32 D_801A08E4_742874[31]={0}; // unused?

// graphic indecies of worm segments.
u16 sWormSegGraphics[]={
    0x0804, 0x0814, 0x080A, 0x0814, 0x080C, 0x0816, 
    0x080E, 0x0818, 0x0810, 0x081A, 0x0812, 0x0000
};

// unused?
u16 D_801A0978_742908[]={
    1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

// actor flags for worm segments.
u16 sWormSegFlags[]={
    ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, 
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, 
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, 
    ACTOR_FLAG_UNK10 | ACTOR_FLAG_ENABLED, ACTOR_FLAG_ENABLED, 0
};

f32 D_801A09A8_742938[]={
    -0.1, -0.05, -0.0f, 0.05, 0.1, 0.15, 0.2, 0.2, 0.15, 0.1, 
    0.05, 0, -0.05, -0.1, -0.05, -0.05
};

// size of worm segments.
f32 sWormSegSizes[]={
    1, 1, 1, 1, 0.95, 0.9, 0.85, 0.8, 0.75, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1
};

// unused?
s16 D_801A0A28_7429B8[]={
    0, 0x50, 0xFFB0, 0x100,
    0, 0xFFB0, 0x50, 0x0100, 
    0x60, 0x20, 0xFFE0, 0xFFA0, 
    0x0100, 0, 0xFFA0, 0xFFE0,
    0x20, 0x60, 0x0100, 0
};

// a graphic list.
s16 D_801A0A50_7429E0[]={
    0x804, 4, 
    0, 0
};
s16 D_801A0A58_7429E8[]={
    8, 0, -8, 0
};

s32 D_801A0A60_7429F0[]={
    FIXED_UNIT(1.5), 0, FIXED_UNIT(-1.5)
};

s32 D_801A0A6C_7429FC[]={
    FIXED_UNIT(-(3.0/16)), FIXED_UNIT(-(1.0/16)), FIXED_UNIT(-(3.0/16))
};

// .bss

u16 D_801A0D10;
s16 D_801A0D12;

void func_8019BEDC_73DE6C(u16 actor_index);
void func_8019C244_73E1D4(u16 actor_index);
void func_8019C9A4_73E934(u16 actor_index);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B100_73D090.s")

void func_8019B1F0_73D180(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

void func_8019B204_73D194(s32 arg0) {
}

void func_8019B20C_73D19C(s32 arg0) {
}

void func_8019B214_73D1A4(s32 arg0) {
}

void func_8019B21C_73D1AC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B224_73D1B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019B660_73D5F0.s")

void func_8019BAC0_73DA50(s32 arg0, s32 arg1) {
}

void func_8019BACC_73DA5C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BAD4_73DA64.s")

// initalize head and body segments of worm.
void func_8019BC64_73DBF4(u16 actor_index) {
    u16 index;
    u16 var_s2;
    u16 index2;
    u16 index3;
    s32 pad[5];

    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].hitboxBY0 = 0x16;
    gActors[actor_index].hitboxBY1 = -8;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
    gActors[actor_index].var_15C = actor_index + 2;
    gActors[actor_index].var_160 = actor_index + 2;
    gActors[actor_index].unk_164 = actor_index + 1;
    gActors[actor_index].health = 150;

    index2 = actor_index + 1;
    for (index = actor_index + 1, var_s2 = 0; var_s2 < 11; index++, var_s2++) {
        gActors[index].actorType = 0x21;
        Actor_Initialize(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].flags = sWormSegFlags[var_s2];
        gActors[index].graphicIndex = sWormSegGraphics[var_s2];
        gActors[index].scaleX = sWormSegSizes[var_s2];
        gActors[index].posX.whole = -0x1000;
        gActors[index].posY.whole = -0x1000;
        gActors[index].health = 1000;
        gActors[index].colorA = 0xFE;
        gActors[actor_index].unk_18C |= 0x200;
        gActors[index].unk_0CE = 8;
        Actor_SetHitboxB(index, 6);
    }
    
    gActors[index2].graphicFlags |= 4;
    gActors[index2].hitboxBY0 = 0x14;
    gActors[index2].hitboxBY1 = -8;
    gActors[index2].hitboxBX0 = -0xC;
    gActors[index2].hitboxBX1 = 0xC;

    index3 = actor_index + 2;
    Actor_SetHitboxB(index3, 0x10);
    D_800BE678 = 0x68;
    D_800BE67C = 0xB8;
    D_800BE680 = 0xB8;
    D_800BE684 = 0xD0;
    D_800BE688 = 0xD3;
}


// copy of Math_ApproachS32.
s32 Worm_ApproachS32(s32 current, s32 target, s32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }
    return current;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019BEDC_73DE6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C060_73DFF0.s")

void func_8019C120_73E0B0(u16 actor_index) {
    s32 temp_t0;

    temp_t0 = (gActors[actor_index].unk_168/0x10000) & (s32)(COSLEN);
    if ((temp_t0 > (s32)(COSPiOver2)) && (temp_t0 < (s32)(COSPiOver2*3))) {
        gActors[actor_index+1].rotateY=0.0;
        gActors[actor_index+1].rotateZ= (f32) ((f64) ((s32)(COSPiOver2*4) - ((temp_t0 + (s32)(COSPiOver2*2)) & (s32)(COSLEN))) *  RadStep);
    }
    else{
      gActors[actor_index+1].rotateY = 180.0f;
      gActors[actor_index+1].rotateZ = (f32) ((f64) ((s32)(COSPiOver2*4) - temp_t0) *  RadStep);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C244_73E1D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C49C_73E42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C710_73E6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C7CC_73E75C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019C9A4_73E934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CDB8_73ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CE34_73EDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CF04_73EE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019CFFC_73EF8C.s")

void func_8019D0B0_73F040(u16 actor_index) {
    gActors[actor_index].unk_16C = (gActors[actor_index].unk_16C + gActors[actor_index].unk_174) & 0x3FFFFFF;
    gActors[actor_index].unk_170 = (gActors[actor_index].unk_170 + gActors[actor_index].unk_178) & 0x3FFFFFF;
    func_8019C9A4_73E934(actor_index);
    func_8019BEDC_73DE6C(actor_index);
    func_8019C244_73E1D4(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D14C_73F0DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D254_73F1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D3B0_73F340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D4A8_73F438.s")


// step worm's x-velocity based on facing(?)
void func_8019D5E4_73F574(u16 actor_index, s32 target, s32 step) {
    s32 x;
    if (gActors[actor_index].unk_18C & 0x10) {
        target = -target;
    }
    x = target; // needed to match, issue with stack.
    gActors[actor_index].velocityX.raw = Worm_ApproachS32(gActors[actor_index].velocityX.raw, target, step);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D64C_73F5DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019D780_73F710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E654_7405E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E738_7406C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E7A4_740734.s")

void func_8019E918_7408A8(s32 arg0) {
}

// set flags for worm segments.
void Worm_SetSegmentFlags(u16 actor_index){
    u16 index;
    u16 jndex;
    for (jndex = actor_index + 1, index = 0; index < 11; jndex++, index++){
        gActors[jndex].flags = sWormSegFlags[index];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019E990_740920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EA00_740990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EA6C_7409FC.s")

void func_8019EB10_740AA0(s32 arg0) {
    Sound_PlaySfx(0xC0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EB34_740AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EC28_740BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EC80_740C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019EEA0_740E30.s")

void func_8019F27C_74120C(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F284_741214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F2E0_741270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F3F8_741388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_1/overlay_73D070/73D090/func_8019F538_7414C8.s")

void func_801A08D0_742860(s32 arg0) {
}

void func_801A08D8_742868(s32 arg0) {
}
