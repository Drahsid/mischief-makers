#include "common.h"
#include "actor.h"

extern u16 SpawnParticle_RingWaveBlue(f32 arg0, s16 x, s16 y, s16 z);

// "overlay 2" code for "Trapped", "Merco!!" and 2 unused scenes.

u16 D_801A7EA0_78C9E0[]={
    0, 0, 0, 10, 4, 0, 88, 6, 0, 89, 6, 0, 0x7ffd, 1, 90, 6, 0, 91, 9, 0, 0x7fff, 0
};

u16 D_801A7ECC_78CA0C[]={
    0, 0, 0, 0x25, 2, 1, 0x25, 2, 0, 10, 4, 2, 0x7FFF, 0
};

u16 D_801A7EE8_78CA28[]={
    0, 0, 0, 0x25, 2, 1, 0x25, 0xC, 0, 10, 4, 2, 0x7FFF, 0
};

u16 D_801A7F04_78CA44[]={
    0, 0, 0, 0x67, 8, 3, 0x67, 6, 0, 0x68, 0x20, 0x1c, 0x68, 8, 4, 0x7FFD, 1, 0x68, 8, 0, 0x7FFF, 0
};

u16 D_801A7F30_78CA70[]={
    0, 0, 0, 0x69, 0x8, 0x3, 0x69, 0x10, 0, 0x6A, 0x18, 0, 0x7fff
};

u16 D_801A7F4C_78CA8C[]={
    0, 0, 0, 0x6b, 8, 0, 11, 8, 2, 12, 16, 0, 0x7FFF
};

// .bss

u8 D_801A8020;
s16 D_801A8022;
s16 D_801A8024;

void func_801A6900_78B440(s32 actor_index) {
}

void func_801A6908_78B448(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, 0x2000);
}

// init chain link for grappling hook hand for pirate mini-boss in "Trapped!"
void func_801A6968_78B4A8(u16 actor_index, u16 new_actor_index, u16 graphic_index) {
    f32 scale;

    gActors[new_actor_index].actorType = ACTORTYPE_GRAPHICONLY;
    Actor_Initialize(new_actor_index);

    scale = 0.7;
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
    gActors[new_actor_index].graphicIndex = graphic_index;
    gActors[new_actor_index].posX.whole = gActors[(u16)(actor_index + 0xB)].posX.whole;
    gActors[new_actor_index].posY.whole = gActors[(u16)(actor_index + 0xB)].posY.whole;
    gActors[new_actor_index].posZ.raw = gActors[(u16)(actor_index + 0xB)].posZ.raw;
    gActors[new_actor_index].scaleX = scale;
    gActors[new_actor_index].scaleY = scale;
}

// init grappling hook hand for pirate mini-boss in "Trapped!"
void func_801A6A44_78B584(u16 x){
    u16 index;
    
    for (index = 0x4d; index < 0x55; index++){
        func_801A6968_78B4A8(x,index,0x28e);
    }
    gActors[index-1].graphicFlags = ACTOR_GFLAG_ROTZ;
    gActors[index-1].graphicIndex = GINDEX_HANDHOOK;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6AD0_78B610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A6CA8_78B7E8.s")

void func_801A6D4C_78B88C(u16 actor_index){
    s16 x;
    s16 y;
    u16 index;
    
    x = (D_801A8022 - gActors[0x54].posX.whole) - gScreenPosCurrentX.whole;
    y = (D_801A8024 - gActors[0x54].posY.whole) - gScreenPosCurrentY.whole;
    for(index = actor_index; index < 0x48; index++){
        gActors[index].posX.whole += x;
        gActors[index].posY.whole += y;
    }
    for (index = 0x4d; index < 0x55; index++){
        gActors[index].posX.whole += x;
        gActors[index].posY.whole += y;
    }
}

// pirate spawns a bouncing spikeball based on health and/or chance.
void func_801A6E48_78B988(u16 arg0) {
    u16 actor_index;
    
    actor_index = Actor_RangeFindInactive(0x49, 0x4C);
    if (actor_index != 0) {
        gActors[actor_index].actorType = ACTORTYPE_OVL2_W5B_SPIKEBALL;
        Actor_Initialize(actor_index);
        gActors[actor_index].var_110 = (Rand() & 19) << 8;
        gActors[actor_index].var_0D8 = 0;
        gActors[actor_index].posX.whole = gActors[arg0].posX.whole;
        gActors[actor_index].posY.whole = gActors[arg0].posY.whole + 0x10;
        switch (gActors[arg0].health & 0x300) {
            case 0x200:
            gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(1);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-1.0);
            gActors[actor_index].unk_12C = 2.0f;
            break;
            case 0x100:
            gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(0.75);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(-5.0);
            gActors[actor_index].unk_12C = 1.0f;
            break;
            default:
              if (Rand() & 1) {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-2.0);
                gActors[actor_index].velocityX.raw =  gActors[arg0+1].unk_130 * FIXED_UNIT(1.375);
                gActors[actor_index].unk_12C = 2.0f;
              }
              else {
                gActors[actor_index].velocityY.raw = FIXED_UNIT(-5.0);
                gActors[actor_index].velocityX.raw = gActors[arg0+1].unk_130 * FIXED_UNIT(0.75);
                gActors[actor_index].unk_12C = 1.0f;
              }    
            break;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78B430/78B440/func_801A7100_78BC40.s")

// behavior of pirate's spike balls.
// 0x12C: number of bounces.
void func_801A7C78_78C7B8(u16 actor_index) {
    Spikeball_Update(actor_index);
    if (gActors[actor_index].state == 0) {
        Spikeball_State0(actor_index);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    }
    else {
      gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
      if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].rotateZ -= 10.0f;
      }
      else {
        gActors[actor_index].rotateZ += 10.0f;
      }
    
      gActors[actor_index].velocityY.raw-= 0x2000;
      if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        // bounce ball if it hits the floor and has more "bounces" left.
        if (gActors[actor_index].unk_12C >= 0.0f) {
            Sound_PlaySfxAtActor2(0x9B, actor_index);
        }
        // 25% less bounce.
        gActors[actor_index].velocityY.raw = (s32) ((f64) -(f32) gActors[actor_index].velocityY.raw * 0.75);
        gActors[actor_index].unk_12C -= 1.0f;
      }
      Spikeball_State1End(actor_index, 0);
      if ((gActors[actor_index].unk_190 & 1) || (gActors[actor_index].unk_12C < 0.0f)) {
        // ball is done bouncing, pops.
        gActors[actor_index].flags = 0;
        SpawnParticle_RingWaveBlue(0.5, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        Sound_PlaySfxAtActor2(SFX_POP, actor_index);
        return;
      }
    }
    Spikeball_UpdateHitbox(actor_index);
    Actor_SetHitboxA(actor_index, 2);
    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
}
