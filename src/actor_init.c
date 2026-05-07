#include "common.h"
#include "actor.h"

extern s16 D_800C9700[];
extern s32 D_800C9DD8[];
extern void* D_800C9FCC[];
extern u8 D_800E1380[];

#pragma GLOBAL_ASM("asm/nonmatchings/actor_init/func_8001DBA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/actor_init/func_8001DC60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/actor_init/func_8001DE30.s")

// Thanks to inspectredc for helping with this one!
DEFAULT_INT func_8001E2D0(u16 actor_index) {
    u16 type_table_index;

    type_table_index = gActors[actor_index].actorType * 7;

    if (gActors[actor_index].actorType < 0x100) {
        gActors[actor_index].unk_0A2 = -D_800C9700[type_table_index + 0];
        gActors[actor_index].unk_0A8 = -D_800C9700[type_table_index + 1];
        gActors[actor_index].unk_0AA = -D_800C9700[type_table_index + 2];
        gActors[actor_index].unk_0B0 = -D_800C9700[type_table_index + 3];

        gActors[actor_index].unk_0A4 = D_800C9700[type_table_index + 0];
        gActors[actor_index].unk_0A6 = D_800C9700[type_table_index + 1];
        gActors[actor_index].unk_0AC = D_800C9700[type_table_index + 2];
        gActors[actor_index].unk_0AE = D_800C9700[type_table_index + 3];

        gActors[actor_index].health = D_800C9700[type_table_index + 4];
        gActors[actor_index].unk_0E4 = D_800C9700[type_table_index + 5];

        gActors[actor_index].flags = D_800C9DD8[gActors[actor_index].actorType];
        gActors[actor_index].unk_0E8 = D_800C9FCC[gActors[actor_index].actorType];
    }
    else {
        gActors[actor_index].unk_0A2 = -16;
        gActors[actor_index].unk_0A4 = 16;
        gActors[actor_index].unk_0A6 = 16;
        gActors[actor_index].unk_0A8 = -16;
        gActors[actor_index].unk_0AA = -16;
        gActors[actor_index].unk_0AC = 16;
        gActors[actor_index].unk_0AE = 16;
        gActors[actor_index].unk_0B0 = -16;
        gActors[actor_index].health = 10;
        gActors[actor_index].unk_0E4 = 10;
        gActors[actor_index].flags = 3;
        gActors[actor_index].unk_0E8 = D_800E1380;
    }

    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].scaleY = gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].unk_0E6 = 1;
    gActors[actor_index].unk_0DE = 1;

    gActors[actor_index].unk_084 =
    gActors[actor_index].posX.frac =
    gActors[actor_index].posY.frac =
    gActors[actor_index].posZ.raw =
    gActors[actor_index].unk_094 =
    gActors[actor_index].unk_098 =
    gActors[actor_index].colorR =
    gActors[actor_index].colorG =
    gActors[actor_index].colorB =
    gActors[actor_index].unk_0A0 =
    gActors[actor_index].unk_0BC =
    gActors[actor_index].unk_0C0 =
    gActors[actor_index].unk_0C4 =
    gActors[actor_index].unk_0C8 =
    gActors[actor_index].unk_0CA =
    gActors[actor_index].unk_0CC =
    gActors[actor_index].unk_0CE =
    gActors[actor_index].state =
    gActors[actor_index].unk_0D4 =
    gActors[actor_index].unk_0D6 =
    gActors[actor_index].unk_0DA =
    gActors[actor_index].unk_0DB =
    gActors[actor_index].unk_0DC =
    gActors[actor_index].unk_0DD =
    gActors[actor_index].unk_0DF =
    gActors[actor_index].unk_0E2 =
    gActors[actor_index].velocityX =
    gActors[actor_index].velocityY =
    gActors[actor_index].unk_0F4 =
    gActors[actor_index].unk_0F8 =
    gActors[actor_index].unk_0FC =
    gActors[actor_index].unk_100 =
    gActors[actor_index].unk_104 =
    gActors[actor_index].unk_108 =
    gActors[actor_index].unk_10C =
    gActors[actor_index].unk_110 =
    gActors[actor_index].unk_114 =
    gActors[actor_index].unk_118 =
    gActors[actor_index].unk_11C =
    gActors[actor_index].unk_120 =
    gActors[actor_index].unk_124 =
    gActors[actor_index].unk_128 =
    gActors[actor_index].unk_12C =
    gActors[actor_index].unk_130 =
    gActors[actor_index].unk_134 =
    gActors[actor_index].unk_138 =
    gActors[actor_index].unk_13C =
    gActors[actor_index].unk_140 =
    gActors[actor_index].unk_144 =
    gActors[actor_index].unk_148 =
    gActors[actor_index].unk_14C =
    gActors[actor_index].unk_150 =
    gActors[actor_index].unk_154 =
    gActors[actor_index].unk_158 =
    gActors[actor_index].unk_15C =
    gActors[actor_index].unk_160 =
    gActors[actor_index].unk_164 =
    gActors[actor_index].unk_168 =
    gActors[actor_index].unk_16C =
    gActors[actor_index].unk_170 =
    gActors[actor_index].unk_174 =
    gActors[actor_index].unk_178 =
    gActors[actor_index].unk_17C =
    gActors[actor_index].unk_180 =
    gActors[actor_index].unk_184 =
    gActors[actor_index].unk_188 =
    gActors[actor_index].unk_18C =
    gActors[actor_index].unk_190 = 0;
}
