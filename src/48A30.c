#include "common.h"
#include "actor.h"

typedef union {
    u32 dirty;
    struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02;
        u8 unk_03;
    };
} UnkStruct_D_800BE5F4;

extern UnkStruct_D_800BE5F4 D_800BE5F4;
extern ActorFunc D_800D3D20[];
extern void func_8004F514(u16 actor_index, u16 arg1);
extern void func_8005C550(u16 actor_index, s32 arg1);
extern s32 func_8005D338(u16 actor_index);
extern s32 func_8005D418(u16 actor_index);

extern u16 D_800BE504;
extern u16 D_800BE508;
extern u16 D_800BE50C;
extern u16 D_800BE510;
extern u16 D_800BE514;
extern s16 D_8011DD70;
extern s16 D_801225F0;
extern u16 D_801370CC;
extern u16 D_801370CE;

void func_80047E30(u16 arg0) {
}

void func_80047E38(s32 arg0) {
    s32 temp_v0;

    D_801370CC = (u16)D_801373E0.unk_20;
    D_801370CE = (u16)D_801373E0.unk_24;
    temp_v0 = D_800BE50C + D_800BE510 + D_800BE504 + D_800BE508 + D_800BE514 + D_800BE518;
    D_801225F0 = D_801370CC & temp_v0;
    D_8011DD70 = D_801370CE & temp_v0;
    D_801373E0.unk_20 = 0;
    D_801373E0.unk_24 = 0;
}

void func_80047ED4(u16 _actor_index) {
    u16 actor_index;
    Actor* actor;

    if (D_800BE5F4.unk_02 != 0) {
        return;
    }
    actor_index = _actor_index;
    actor = &gActors[actor_index];
    actor->unk_150 = actor->flags & ~0x1B80;

    if ((D_800BE5F4.dirty & 0xFF) == 4) {
        actor->unk_150 &= ~1;
    }

    actor->velocityX = actor->velocityY = 0;
    actor->unk_12E_u8 |= 0x41;
    actor->stateUpper = D_800BE5F4.unk_01;
    actor->stateLower = 1;
    actor->unk_128 = 1.0f;
    actor->unk_124 = 1.0f;
    D_800BE5F4.dirty = 0;
}

void func_80047F80(u16 actor_index) {
    if (D_800BE5F4.unk_02 == 0) {
        gActors[actor_index].unk_12E_u8 |= 0x41;
        gActors[actor_index].state = 2;

        if ((D_800BE5F4.dirty & 0xFF) == 6) {
            gActors[actor_index].stateUpper = 1;
        }

        D_800BE5F4.dirty = 0;
    }
}

void func_80047FF8(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x41;

    switch (D_800BE5F4.unk_02) {
        case 0:
            gActors[actor_index].state = 2;
            D_800BE5F4.unk_01 = 4;
            D_800BE5F4.unk_02 = 10;
            break;

        case 10:
            if (D_800BE5F4.unk_01 != 0) {
                D_800BE5F4.unk_01 = D_800BE5F4.unk_01 - 1;
            }
            else if (gActors[actor_index].stateLower == 3) {
                D_800BE5F4.unk_02 = 11;
            }
            break;

        case 11:
            D_800BE5F4.dirty = 1;
            break;
    }
}

void func_800480B8(u16 actor_index) {
    switch (D_800BE5F4.unk_02) {
        case 0:
            gActors[actor_index].state = 2;
            D_800BE5F4.unk_01 += 4;
            D_800BE5F4.unk_02 = 0xB;
            break;

        case 0xB:
            if (D_800BE5F4.unk_01 != 0) {
                D_800BE5F4.unk_01--;
            }
            else if (gActors[actor_index].stateLower == 3) {
                D_801370CC = D_800BE508;
                D_801370CE = D_800BE518;
                D_800BE5F4.unk_02 = 0xC;
            }
            break;

        case 0xC:
            if (gActors[actor_index].stateLower == 3) {
                if (func_8005D338(actor_index) == 1) {
                    if ((D_800BE5F4.dirty & 0xFF) == 8) {
                        D_800BE5F4.dirty = 0;
                    }
                    else if ((D_800BE5F4.dirty & 0xFF) == 9) {
                        D_800BE5F4.dirty = 3;
                        D_800BE5F4.unk_01 = 1;
                    }
                }
            }
            break;
    }
}

void func_80048238(u16 actor_index) {
    switch (D_800BE5F4.unk_02) {
        case 0:
            if (D_800BE5F4.unk_01 != 0) {
                D_800BE5F4.unk_01--;
            }
            else {
                gActors[actor_index].state = 0x37;
                D_800BE5F4.unk_02 = 1;
            }
            break;

        case 1:
            if (gActors[actor_index].stateLower == 3) {
                if ((D_800BE5F4.dirty & 0xFF) == 0xA) {
                    D_800BE5F4.dirty = 0;
                }
                else if ((D_800BE5F4.dirty & 0xFF) == 0xB) {
                    D_800BE5F4.dirty = 3;
                    D_800BE5F4.unk_01 = 2;
                }
            }
            break;
    }
}

void func_80048320(u16 actor_index) {
    if (D_800BE5F4.unk_02 == 0) {
        func_8005C550(actor_index, 0x1E);
        gActors[actor_index].flags |= 0x8000;
        gActors[actor_index].state = 0x38;
        gActors[actor_index].unk_12E_u8 |= 0x41;
        D_800BE5F4.unk_02 = 1;
    }

    D_800BE5F4.dirty = 0;
}

void func_800483B4(u16 actor_index) {
    if (gActors[actor_index].stateLower == 3) {
        gActors[actor_index].unk_150 = 0x258;
    }

    D_800BE5F4.dirty = 1;
}

void func_80048408(u16 actor_index) {
    switch (D_800BE5F4.unk_02) {
        case 0:
            if (gActors[actor_index].flags & 0x2000000) {
                func_8004F514(actor_index, gActors[actor_index].unk_0D6);

                if (gActors[actor_index].flags & 0x810000) {
                    gActors[actor_index].state = 3;
                }
                else {
                    gActors[actor_index].state = 0x16;
                }
            }

            if (func_8005D338(actor_index) == 1) {
                if (gActors[actor_index].velocityX == 0) {
                    if (gActors[actor_index].velocityY == 0) {
                        gActors[actor_index].unk_170 = 0xA1;
                        gActors[actor_index].state = 1;
                        gActors[actor_index].unk_150 = gActors[actor_index].flags;
                        D_800BE5F4.unk_02 = 1;
                    }
                }
            }
            break;

        case 1:
            if (((s8*)&gActors[actor_index].unk_170)[0] == 0) {
                if (((s8*)&gActors[actor_index].unk_170)[1] == 5) {
                    Sound_PlaySfx(0xCE);
                }
            }

            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].unk_170 = 0xA3;
                gActors[actor_index].flags |= 0x40;
                gActors[actor_index].state = 3;
                D_800BE5F4.dirty = 0;
            }
            break;
    }
}

void func_800485AC(u16 actor_index) {
    D_800D3D20[D_800BE5F4.dirty & 0xFF](actor_index);
    D_800BE5F4.unk_00 = 0;
}
