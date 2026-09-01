#define Actor_Initialize_RET void
#include "common.h"
#include "17A70.h"
#include "actor.h"


extern ActorFunc gMainActorTable[];

extern u8 D_800E9634[];
extern u8 D_800E9654[];
extern u8 D_800E9720[];

void func_800955F4(u16 actor_index);
void func_80096104(u16 actor_index);
void func_8009672C(u16 actor_index);
void func_8009691C(u16 actor_index);
void func_800969F4(u16 actor_index);
void func_800969FC(u16 actor_index);
void func_80096A04(u16 actor_index);
void func_80096A0C(u16 actor_index);
void func_80096A14(u16 actor_index);

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

void ActorsUpdate_Overlay(u16 actor_index) {
    u8 index = gActors[actor_index].actorType & 0xFFFF;

    switch (gActors[actor_index].actorType >> 8) {
        case ACTOR_OVL3_1:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL1_WORM:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_DOG:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD1:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD2:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL0_MIGEN:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL3_7:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_MAIN_8:
            D_800E5AC0[index](actor_index);
            break;

        case ACTOR_OVL1_GEN:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_MERCO:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_LUNAR:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_BEE:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_TARUS:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL3_14:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL0_CALPHA:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_WORLD1:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL1_MOLE:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_18:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL1_TOAD:
            D_8019B000[index](actor_index);
            break;

        case ACTOR_OVL0_SBETA:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_PGAMMA:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_FINALBAT:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL2_23:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD1:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL0_25:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL2_FESTIVAL:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD3:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD3:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD4:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL2_LITH:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL2_WORLD5A:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL2_STAGE_5_5:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL0_33:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_34:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_35:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_36:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL2_STAGE_2_1:
            D_801A6800[index](actor_index);
            break;

        case ACTOR_OVL0_GEN:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD4:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL3_CAT:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL3_WORLD5B:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL3_42:
            D_801B0800[index](actor_index);
            break;

        case ACTOR_OVL0_INTRO:
            D_80192000[index](actor_index);
            break;

        case ACTOR_OVL0_ENDING:
            D_80192000[index](actor_index);
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
