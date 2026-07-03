#define FUNC_8001E2D0_RET void
#include "common.h"
#include "17A70.h"
#include "actor.h"


extern ActorFunc D_80192000[];
extern ActorFunc D_8019B000[];
extern ActorFunc D_801A6800[];
extern ActorFunc D_801B0800[];
extern ActorFunc D_800C7FE0[];

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
