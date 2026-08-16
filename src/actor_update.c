#include "common.h"
#include "actor_update.h"
#include "actor.h"
#include "28EF0.h"
#include "42E90.h"
#include "stage_runtime.h"
#include "marina.h"
#include "particles.h"
#include "dialog.h"
#include "60CF0.h"
#include "61B80.h"
#include "66250.h"
#include "74A50.h"
#include "7D8E0.h"
#include "80D90.h"
#include "82920.h"
#include "84BB0.h"
#include "8D0A0.h"
#include "8F080.h"
#include "stage_end_screen.h"
#include "rle.h"

extern ActorFunc D_800E5AC0[];

// .data
// BUG: `gActors[actor_index].actorType < 0x100` but only 0x80 entries
ActorFunc gMainActorTable[] = {
    func_80060F80, ActorUpdate_Type1, ActorUpdate_Type2, ActorUpdate_Type3,
    ActorUpdate_Type4, ActorUpdate_Type5, ActorUpdate_DizzyStar, ActorUpdate_AfterImage,
    ActorUpdate_Gem, ActorUpdate_Particle, ActorUpdate_Type10, ActorUpdate_Type11,
    ActorUpdate_Type12, func_80061624, func_800309C0, ActorUpdate_Type15,
    ActorUpdate_Type16,
    (ActorFunc)(MAP_BANK_DATA_DEST + 0x28), (ActorFunc)(MAP_BANK_DATA_DEST + 0x10), // ???
    (ActorFunc)(MAP_BANK_DATA_DEST + 0x18), (ActorFunc)(MAP_BANK_DATA_DEST + 0x20), // ???
    ActorUpdate_3DIcon, ActorUpdate_Marina, ActorUpdate_Type23,
    ActorUpdate_Clanpot, ActorUpdate_Type25, ActorUpdate_Type26, (ActorFunc)ActorUpdate_Type27,
    ActorUpdate_Clanball_28, (ActorFunc)ActorUpdate_GraphicOnly, ActorUpdate_Type30, func_8005E260,
    (ActorFunc)func_80047CCC, func_80080190, func_8002DC74, ActorUpdate_Landmine,
    ActorUpdate_EnergyShot, ActorUpdate_Type37, ActorUpdate_Type38, ActorUpdate_Type39,
    ActorUpdate_Type40, ActorUpdate_Type41, func_80082088, ActorUpdate_Type43,
    func_80033B54, func_800348E4, func_8005C3C8, func_80060DB8,
    func_80061E98, ActorUpdate_SpiralClouds, ActorUpdate_WarpGate, func_8006098C,
    func_80031DDC, func_8007F560, func_800320F8, func_80032900,
    func_8003F360, func_8005E8F8, func_8005EE24, func_80040564,
    func_800601FC, ActorUpdate_Gem61, func_8003AC30, func_8003B8CC,
    func_8003BE3C, ActorUpdate_Type65, ActorUpdate_ClanballSpring, ActorUpdate_Flower,
    ActorUpdate_Hat, ActorUpdate_Clanbomb, ActorUpdate_ClanbombTimer, ActorUpdate_Type71,
    ActorUpdate_CatTank, ActorUpdate_Spikeball_Static, ActorUpdate_Spikeball_Hori, ActorUpdate_Spikeball_Vert,
    ActorUpdate_Spikeball_OrbitXY, ActorUpdate_Spikeball_77, ActorUpdate_Spikeball_78, ActorUpdate_Spikeball_OrbitYZ,
    ActorUpdate_Spikeball_80, ActorUpdate_Spikeball_81, ActorUpdate_Spikeball_82, ActorUpdate_Type83,
    func_80073970, func_80073CE8, func_80073A60, ActorUpdate_DiggingSpot,
    func_8008AD3C, func_80089418, func_8008C304, func_800737C4,
    func_8008BC5C, func_8005E56C, ActorUpdate_WhiteFade, ActorUpdate_Clanblob,
    func_800740C8, ActorUpdate_ClanballRail, ActorUpdate_HovercraftShot, func_80064528,
    func_800648C4, func_8006CF20, ActorUpdate_GemIcon, func_8006D0EC,
    func_8003667C, func_8007B60C, func_80076BF4, ActorUpdate_AreaClear,
    func_80094FE4, func_80095A8C, func_80095928, func_8009351C,
    ActorUpdate_MarinaOhNo, func_8003E854, func_8008E1A0, func_8003E230,
    ActorUpdate_StageClear, ActorUpdate_LevelClear, func_80064CB4, func_80065178,
    ActorUpdate_ClanpotMixSequence, ActorUpdate_ClanpotMenu, ActorUpdate_MsHint, ActorUpdate_GemRing,
    ActorUpdate_Gem124, NULL, NULL, NULL,
};

void ActorsUpdate_Overlay(u16 actor_index) {
    u8 index = gActors[actor_index].actorType & 0xFFFF;

    switch (gActors[actor_index].actorType >> 8) {
        case ACTOR_OVL3_1:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_WORM:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_DOG:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD1:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD2:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_MIGEN:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_7:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_MAIN_8:
            D_800E5AC0[index](actor_index);
            break;

        case ACTOR_OVL1_GEN:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_MERCO:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_LUNAR:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_BEE:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_TARUS:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_14:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_CALPHA:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_WORLD1:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_MOLE:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_18:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL1_TOAD:
            OVERLAY1_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_SBETA:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_PGAMMA:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_FINALBAT:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_23:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD1:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_25:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_FESTIVAL:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD3:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD3:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD4:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_LITH:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD5A:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_STAGE_5_5:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_33:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_34:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_35:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_36:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL2_STAGE_2_1:
            OVERLAY2_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_GEN:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD4:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_40:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD5B:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL3_42:
            OVERLAY3_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_INTRO:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;

        case ACTOR_OVL0_ENDING:
            OVERLAY0_DISPATCH_ACTOR[index](actor_index);
            break;
    }
}

void ActorsUpdate(void) {
    u16 actor_index;

    if (gActorStall) {
        for (actor_index = 1; actor_index < 0xD0; actor_index++) {
            if ((gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) && (gActors[actor_index].flags & ACTOR_FLAG_ALWAYS_UPDATE)) {
                if (gActors[actor_index].actorType < 0x100) {
                    gMainActorTable[gActors[actor_index].actorType](actor_index);
                }
                else {
                    ActorsUpdate_Overlay(actor_index);
                }
            }
        }
    }
    else {
        for (actor_index = 1; actor_index < 0xD0; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if (gActors[actor_index].actorType < 0x100) {
                    gMainActorTable[gActors[actor_index].actorType](actor_index);
                }
                else {
                    ActorsUpdate_Overlay(actor_index);
                }
            }
        }
    }
}
