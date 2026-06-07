#include "common.h"
#include "actor.h"
#include "function_symbols.h"

extern void func_8002AC30(u16 actor_index, s16 val);
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
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = 0x69503;
            gActors[actor_index].graphicIndex = GINDEX_MINEROUND;
            func_8002AC30(actor_index, 8);
            gActors[actor_index].unk_0CE = 0;
            gActors[actor_index].unk_0DF = 1;\
            gActors[actor_index].unk_0DB = 0x17;
            gActors[actor_index].health = 100;
            gActors[actor_index].damage = 0;
            gActors[actor_index].var_150 = 0x10;

        case 1:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].state++;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 |ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].iFrames = 10;
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
            }
            else {
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                    gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 4;
                }

                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                    gActors[actor_index].unk_114 = 5.0f;
                }

                if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4.0)) {
                    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
                }

                if (gActors[actor_index].velocityX.raw != 0) {
                    if (((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & 8)) ||
                        ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & 4))) {
                        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                    }
                }

                if (gActors[actor_index].velocityY.raw < 0) {
                    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                        gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 4;
                        gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
                    }
                }
            }
            break;

        case 2:
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].iFrames = 10;
                gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
                gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
                gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
            }
            else {
                gActors[actor_index].state--;
                gActors[actor_index].iFrames = 0;
                gActors[actor_index].var_150 = 0x10;
                gActors[actor_index].unk_114 = 5.0f;

                if (gActors[actor_index].unk_0D6 == 0) {
                    gActors[actor_index].flags |= 0x21080;
                }
                else {
                    gActors[actor_index].flags |= 0x21200;
                }

                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                    gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                }
                else {
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                }
            }
            break;
    }

    gActors[actor_index].flags_098 = (s32)gActors[actor_index].flags_098 & 
         ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}
