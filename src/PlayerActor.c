

#include "common.h"

void ActorSpawn_Player(void) {
    uint16_t index = gPlayerActorp->healthu;
    Actor* player = gPlayerActorp; // required to match

    Actor_Spawn(0);

    player->health = index;
    gPlayerActorp->pos.z = 1;
    gPlayerVelXMirror = 0;
    gPlayerVelYMirror = 0;
    gPlayerActorp->unk_0xCC = 0;
    D_800BE5D4 = 0;
    D_800BE5F0 = 0;
    D_800BE5F8 = 0;

    for (index = 0; index < 64; index++) {
        gInputHistoryPress[index] = 0;
        gInputHistoryHold[index] = 0;
    }

    func_8004A960(0);
}

void ActorSpawn_Marina(void) {
    gPlayerActor.actorType = ACTORTYPE_MARINA;
    ActorSpawn_Player();
}

void func_800122B0(void) {
    int32_t temp_a0;
    uint16_t phi_a0;

    if (D_800BE5D4 != 0) {
        gButtonHold &= gButton_Start;
        gButtonPress &= gButton_Start;
    }

    for (phi_a0 = 0x3F; phi_a0 > 0; phi_a0--) {
        gInputHistoryHold[phi_a0] = gInputHistoryHold[phi_a0 - 1];
        gInputHistoryPress[phi_a0] = gInputHistoryPress[phi_a0 - 1];
    }

    gInputHistoryHold[0] = gButtonHold & (gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A);
    gInputHistoryPress[0] = gButtonPress & (gButton_DLeft + gButton_DRight + gButton_DUp + gButton_DDown + gButton_B + gButton_A);
}
//lock player and camera in x.
void ActorMarina_ScreenXLock(void) {
    int32_t temp = gPlayerPosXMirror._hi - gScreenPosCurrentX._hi;
    if (temp < -0x90) {
        gPlayerPosXMirror._hi = gScreenPosCurrentX._hi - 0x90;
        gPlayerActorp->pos.x = -0x90;
    }
    else if (temp >= 0x91) {
        gPlayerPosXMirror._hi = gScreenPosCurrentX._hi + 0x90;
        gPlayerActorp->pos.x = 0x90;
    }
    else {
        gPlayerActorp->pos.x = gPlayerPosXMirror._hi - gScreenPosCurrentX._hi;
    }
}

void ActorMarina_ScreenYLock(void) {
    gPlayerActor.pos.y = gPlayerPosYMirror._hi - gScreenPosCurrentY._hi;
}
#ifdef NON_MATCHING
void ActorMarina_ScreenXScroll(void){ //~90% matching
  s32 cap; //s2_w
  
  if (D_800BE544 == 0) func_80046498();
  else if (D_800BE544 != 0x8000) {
    gScreenPosTargetX._w = (gActors[D_800BE544].pos.x_w+gScreenPosCurrentX._w+ gPlayerPosXMirror._w)/2;
    if (gScreenPosTargetX._w > gPlayerPosXMirror._w + 0x300000) gScreenPosTargetX._w = gPlayerPosXMirror._w + 0x300000;
    if (gScreenPosTargetX._w < gPlayerPosXMirror._w - 0x300000) gScreenPosTargetX._w = gPlayerPosXMirror._w - 0x300000;
  }
  D_800BE61C = 0;
  cap = ABS((gScreenPosTargetX._w - gScreenPosCurrentX._w) / D_800BE704);
  if (cap < 0x10000) cap = 0x10000;
  if (D_800BE548 < cap) cap = D_800BE548;
  gScreenPosCurrentX._hi = ModInRange_i(gScreenPosCurrentX._hi,gScreenPosTargetX._hi,cap);//half of cap should be loaded here.
  if (gScreenPosCurrentX._hi < D_800BE568._hi + 0x90) gScreenPosCurrentX._hi = D_800BE568._hi + 0x90;
  if (gScreenPosCurrentX._hi < D_800BE56C._hi - 0x90) gScreenPosCurrentX._hi = D_800BE56C._hi - 0x90;
  gActors[0].pos.x = gPlayerPosXMirror._hi - gScreenPosCurrentX._hi;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/PlayerActor/ActorMarina_ScreenXScroll.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/PlayerActor/ActorMarina_ScreenYScroll.s")

void ActorMarina_ScreenScroll(void) {
    gScreenPosNextX._hi = gScreenPosCurrentX._hi;
    gScreenPosNextX._w = gScreenPosCurrentX._w;
    if (gScreenXLock) {
        ActorMarina_ScreenXLock();
    }
    else {
        ActorMarina_ScreenXScroll();
    }

    gScreenPosNextY._hi = gScreenPosCurrentY._hi;
    gScreenPosNextY._w = gScreenPosCurrentY._w;
    if (gScreenYLock) {
        ActorMarina_ScreenYLock();
    }
    else {
        ActorMarina_ScreenYScroll();
    }
}
