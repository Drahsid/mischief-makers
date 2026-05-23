#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern void func_8002AC30(u16 actor_index, s16 val);
extern s32 D_800BE5D8;
extern s32 D_80102928;
extern s16 D_8010345C;
extern f32 D_80103504;
extern f32 D_80103508;
extern f32 D_8010350C;
extern f32 D_80103510;
extern f32 D_80103514;
extern f32 D_80103518;
extern f32 D_8010351C;
extern s32 D_80103520;

void func_801A6900_774DB0(u16 actor_index);
void func_801A6C80_775130(u16 actor_index);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_774DA0/774DB0/func_801A6900_774DB0.s")

void func_801A6C80_775130(u16 actor_index) {
    s32 unused[1]; // removing this and using Actor* also works

    switch (gActors[actor_index].state) {
        case 0:
            func_8001E2D0(actor_index);
            gActors[actor_index].state++;
            gActors[actor_index].unk_094 = 1;
            gActors[actor_index].flags = 0x69503;
            gActors[actor_index].unk_084 = 0xC6;
            func_8002AC30(actor_index, 8);
            gActors[actor_index].unk_0CE = 0;
            gActors[actor_index].unk_0DF = 1;\
            gActors[actor_index].unk_0DB = 0x17;
            gActors[actor_index].health = 0x64;
            gActors[actor_index].unk_0E4 = 0;
            gActors[actor_index].unk_150 = 0x10;

        case 1:
            if (gActors[actor_index].unk_098 & 0x200) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= 0xFFFDED7F;
                gActors[actor_index].unk_0D4 = 0xA;
                gActors[actor_index].velocityX = 0;
                gActors[actor_index].velocityY = 0;
            }
            else {
                if (gActors[actor_index].unk_098 & 1) {
                    gActors[actor_index].flags &= -0x281;
                    gActors[actor_index].velocityX = -gActors[actor_index].velocityX / 4;
                }

                if (gActors[actor_index].unk_098 & 2) {
                    gActors[actor_index].velocityX = gActors[actor_index].unk_0F8;
                    gActors[actor_index].velocityY = 0x20000;
                    gActors[actor_index].unk_114 = 5.0f;
                }

                if (gActors[actor_index].velocityY >= -0x3FFFF) {
                    gActors[actor_index].velocityY -= 0x3000;
                }

                if (gActors[actor_index].velocityX != 0) {
                    if (((gActors[actor_index].velocityX > 0) && (gActors[actor_index].unk_098 & 8)) ||
                        ((gActors[actor_index].velocityX < 0) && (gActors[actor_index].unk_098 & 4))) {
                        gActors[actor_index].velocityX = -gActors[actor_index].velocityX / 2;
                    }
                }

                if (gActors[actor_index].velocityY < 0) {
                    if (gActors[actor_index].unk_098 & 0x20) {
                        gActors[actor_index].velocityX = gActors[actor_index].velocityX / 4;
                        gActors[actor_index].velocityY = -gActors[actor_index].velocityY / 2;
                    }
                }
            }
            break;

        case 2:
            if (gActors[actor_index].unk_098 & 0x200) {
                gActors[actor_index].unk_0D4 = 0xA;
                gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
                gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
                gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
            }
            else {
                gActors[actor_index].state--;
                gActors[actor_index].unk_0D4 = 0;
                gActors[actor_index].unk_150 = 0x10;
                gActors[actor_index].unk_114 = 5.0f;

                if (gActors[actor_index].unk_0D6 == 0) {
                    gActors[actor_index].flags |= 0x21080;
                }
                else {
                    gActors[actor_index].flags |= 0x21200;
                }

                if (gActors[actor_index].unk_098 & 0x400) {
                    gActors[actor_index].velocityX = gActors[actor_index].unk_0F8;
                    gActors[actor_index].velocityY = gActors[actor_index].unk_0FC;
                }
                else {
                    gActors[actor_index].velocityY = 0x20000;
                }
            }
            break;
    }

    gActors[actor_index].unk_098 = (s32)gActors[actor_index].unk_098 & 0xFFDFF9FF;
}
