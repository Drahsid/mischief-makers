#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

#ifdef NON_MATCHING
uint16_t func_80048600(uint16_t index) {
    uint16_t ret;

    if ((D_801370CC & gButton_DLeft) == 0) {
        ret = 0;
        if ((D_801370CC & gButton_DRight) && (ret = 2, gActors[index].flag & 0x20)) {
            ret = 0x82;
        }
    }
    else {
        ret = 1;
        if (gActors[index].flag & 0x20) {
            ret = 0x81;
        }
    }

    if (D_801370CC & gButton_DDown) {
        ret |= 0x10;
    }

    if (D_801370CC & gButton_DUp) {
        ret |= 0x20;
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048600.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_800486F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048C28.s")

int32_t D_800D5794[19] = {
    0x4000,  0x20000, 0x20000, 0x10000, 0x8000,  0x38000, 0x38000, 0x38000, 0x28000, 0x2666,
    0x50000, 0x50000, 0x50000, 0x50000, 0x50000, 0x30000, 0x30000, 0x30000, 0x28000
};

int32_t func_80048C94(int32_t arg0) {
    return D_800D5794[arg0] * gPlayerActor.unk_0x120;
}

int32_t func_80048CE4() {
    if (gPlayerActor.unk_0xD1 == 1) {
        return 1;
    }

    if (gPlayerActor.unk_0xD1 < 46) {
        return 0;
    }

    if (gPlayerActor.unk_0xD1 < 55) {
        return 2;
    }

    return 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048F70.s")

int32_t func_80049040(uint16_t index) {
    if ((gActors[index].unk_0x98 & 0x40) == 0) {
        return 0;
    }

    gActors[index].flag &= ~(ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK14);
    gActors[index].flag &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23),
        gActors[index].flag |= ACTOR_FLAG_UNK17; // whitespace memes

    return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_800490BC.s")

#ifdef NON_MATCHING
// Needs reordering
int32_t func_800491B8(uint16_t index, uint32_t arg1, int16_t arg2) {
    Actor* actor = &gActors[index];

    if (actor->unk_0xF0 > 0) {
        return 0;
    }

    if ((actor->unk_0x98 & 0x20) == 0) {
        return 0;
    }

    actor->flag &=
        ~(ACTOR_FLAG_UNK6 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK17 |
          ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK23); // 0xFF3CB53F;
    actor->flag |= ACTOR_FLAG_UNK16;
    arg2 = ((float)arg2 * gActors->unk_0x120);

    actor->unk_0x150 = func_8005C6D0(actor->unk_0xF0) - 4;
    if (actor->unk_0x150 <= 0) {
        actor->unk_0x150 = 1;
    }

    actor->unk_0xF0 = 0;
    actor->unk_0x150 *= 3;
    if (arg1 >= 0) {
        actor->unk_0x17C = arg1;
        if (arg2 < actor->unk_0xB0) {
            actor->pos.y = (actor->pos.y + actor->unk_0xB0) - arg2;
        }
    }

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_800491B8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80049300.s")

#ifdef NON_MATCHING
// reordering is done, differences are regalloc and some issues related to the masked index in t6
uint32_t func_80049460(uint32_t index) {
    uint8_t temp_v0;

    temp_v0 = func_80049300(index);

    if (temp_v0 != 1) {
        if (temp_v0 != 2) {
            if (temp_v0 != 3) {
                return 0;
            }
            goto block3;
        }
        goto block2;
    }
    goto block1;

block1:
    if ((gActors[index].unk_0x98 & 0x80) != 0) {
        gActors[index].unk_0x140 = 0;
    }

    if ((D_801373D8 & 2) != 0) {
        gActors[index].flag &= ~ACTOR_FLAG_FLIPPED;
    }

    if ((D_801373D8 & 1) != 0) {
        gActors[index].flag |= ACTOR_FLAG_FLIPPED;
    }

    if (gActors[index].unk_0xD1 != 0x16) {
        gActors[index].unk_0x150 = 0;
    }

    gActors[index].unk_0xD0_h = 0x1F;

    return 1;

block2:
    if ((gActors[index].unk_0x98 & 0x80) != 0) {
        gActors[index].unk_0x140 = 0;
    }

    if ((D_801373D8 & 2) != 0) {
        gActors[index].flag &= ~ACTOR_FLAG_FLIPPED;
    }

    if ((D_801373D8 & 1) != 0) {
        gActors[index].flag |= ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK2 | ACTOR_FLAG_UNK3 | ACTOR_FLAG_UNK4;
    }

    if (gActors[index].unk_0xD1 != 0x16) {
        gActors[index].unk_0x150 = 0;
    }

    gActors[index].unk_0xD0_h = 0x1F;
    return 2;

block3:
    if ((D_801373D8 & 0x20) != 0) {
        gActors[index].unk_0xD0_h = 0x2D;
        return 3;
    }

    gActors[index].unk_0xD0_h = 0x2C;
    return 3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80049460.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80049660.s")

int32_t func_80049A04(uint16_t index) {
    short new_var;
    uint32_t temp_a0;

    temp_a0 = D_800D4184[func_8005D338(index)];
    if (temp_a0 == 0) {
        return 0;
    }

    new_var = *((int8_t*)(temp_a0 + gActors[index].unk_0x171));
    return (float)(new_var << 0x10) * gActors->unk_0x120;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80049AC0.s")

void func_8004A8E0(uint16_t index) {
    gActors[index].unk_0x12E = 0xFF;
}

void func_8004A918(uint16_t index) {
    Actor* actor;

    actor = &gActors[index];

    actor->unk_0x12E |= 0x41;
    actor->flag = actor->unk_0x150;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004A960.s")

void func_8004AA64(uint16_t index) {
    gActors[index].unk_0x12E |= 0x41;
    if (gActors[index].unk_0xD0 == 0) {
        gActors[index].unk_0x142 = 0;
        gActors[index].unk_0x141 = 0;
        gActors[index].unk_0x180_w = 0;
        *(((uint8_t*)(&D_801373E0)) + 0x13) = 0;
        *(((uint8_t*)(&D_801373E0)) + 0x12) = 0x64;
        gActors[index].unk_0x12F = 0;
        gActors[index].unk_0xF0 = 0;
        gActors[index].unk_0xEC = 0;
        gActors[index].flag &= ACTOR_FLAG_FLIPPED;
        gActors[index].flag |= ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK27;
        gActors[index].unk_0xD0 = 1;
        gActors[index].unk_0x128 = 1.0f;
        gActors[index].unk_0x124 = 1.0f;
    }

    gActors[index].unk_0x17C = 0;
    func_8005D370(index, 1);
    gActors[index].unk_0xD0_h = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004AB3C.s")

void func_8004B0A0(uint16_t index) {
    int32_t temp_v0;
    Actor* actor;

    actor = &gActors[index];
    actor->unk_0x12C = 7;
    actor->unk_0xEC = func_8002981C(actor->unk_0xEC, 0, func_80048C94(0));

    if (actor->unk_0xD0 == 0) {
        func_8005A4B0(index, 1.0f);
        SFX_Play_1(0x25U);
        actor->unk_0x170_w = 0x2A;
        actor->unk_0xD0++;
    }

    if (actor->unk_0x171 == 1) {
        temp_v0 = actor->unk_0x150;
        actor->unk_0x170 = 0;

        if (temp_v0 == 0) {
            actor->unk_0x171 = 2;
        }
        else {
            actor->unk_0x150 = temp_v0 - 1;
        }
    }

    if (func_8005D418(index) != 0) {
        actor->unk_0xD0_h = (uint16_t)3;
    }
}

void func_8004B18C(uint16_t index) {
    int32_t phi_a1;
    Actor* actor;

    actor = &gActors[index];
    actor->unk_0x12C = 7;

    phi_a1 = func_80048C94(1);
    if ((actor->flag & ACTOR_FLAG_FLIPPED) != 0) {
        phi_a1 = -phi_a1;
    }

    actor->unk_0xEC = func_8002981C(actor->unk_0xEC, phi_a1, func_8005C6D0(phi_a1) / 8);
    func_8005D370(index, 0x1D);

    if (actor->unk_0x170 == 0 && (actor->unk_0x171 == 2 || actor->unk_0x171 == 8)) {
        SFX_Play_1(0x53U);
    }

    if (((D_801373D8 & 3) == 0) || ((D_801373D8 & 0x80) != 0)) {
        actor->unk_0xD0_h = 3;
    }
}

void func_8004B290(uint16_t index) {
    int32_t v0;

    gActors[index].unk_0x12C = 7;
    if (gActors[index].unk_0xD0 == 0) {
        gActors[index].unk_0x170_w = 0x2D;
        gActors[index].unk_0xD0 = 1;
    }

    v0 = func_80048C94(0);
    v0 = func_8002981C(gActors[index].unk_0xEC, 0, v0 * 2);

    gActors[index].unk_0xEC = v0;
    if (v0 != 0) {
        gActors[index].unk_0x183 = 4;
        return;
    }

    gActors[index].flag |= ACTOR_FLAG_UNK14;
    gActors[index].unk_0xD0_h = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004B344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004B878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004BB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004BEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004C5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004CE1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004D140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004D6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004D7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004DA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004DC44.s")

void func_8004E1D4(int32_t arg0) {}

void func_8004E1DC(int32_t arg0) {}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004E1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004E6FC.s")

#ifdef NON_MATCHING
// Needs reordering
void func_8004EAE4(uint16_t index) {
    int16_t phi_a3;

    gActors[index].unk_0x12E |= 0x40;

    if (gActors[index].unk_0xD0 == 0) {
        gActors[index].unk_0x170_w = 0;
        gActors[index].unk_0xD0++;
        gActors[index].unk_0x84 = (uint16_t)gActors[index].unk_0x158;
    }

    func_80083A04(
        gActors[index].unk_0x84 - gActors[index].unk_0x158, (int16_t)gActors[index].pos.x - 0x20, (int16_t)gActors[index].pos.y + 0x30, 0);

    phi_a3 = 0;
    if (((gButtonHold & gButton_DRight) != 0) &&
        (((gActors[index].unk_0x150 == 0)) || (phi_a3 = 1, ((gActors[index].unk_0x150 < 9) == 0)))) {
        gActors[index].unk_0x84++;
        phi_a3 = 1;
        if (gActors[index].unk_0x15C < (gActors[index].unk_0x84 & 0xFFFF)) {
            gActors[index].unk_0x84 = (uint16_t)gActors[index].unk_0x158;
            phi_a3 = 1;
        }
    }

    phi_a3++;
    if (((gButtonHold & gButton_DLeft) != 0) && (((gActors[index].unk_0x150 == 0)) || (((gActors[index].unk_0x150 < 9) == 0)))) {
        gActors[index].unk_0x84--;
        if ((gActors[index].unk_0x84 & 0xFFFF) < gActors[index].unk_0x158) {
            gActors[index].unk_0x84 = (uint16_t)gActors[index].unk_0x15C;
        }
    }

    if (phi_a3 == 0) {
        gActors[index].unk_0x150 = 0;
        return;
    }

    gActors[index].unk_0x150 += 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004EAE4.s")
#endif

void func_8004EC60(uint16_t index) {
    Actor* actor;
    uint32_t temp_v1;

    actor = &gActors[index];
    gActors[index].unk_0xEC = 0;
    gActors[index].unk_0x12E |= 0xC1;
    gActors[index].unk_0xF0 = 0;

    temp_v1 = D_801373D8;
    if ((temp_v1 & 2) != 0) {
        gActors[index].unk_0xEC = 0x80000;
    }

    if ((temp_v1 & 1) != 0) {
        gActors[index].unk_0xEC = 0xFFF80000;
    }

    if ((temp_v1 & 0x20) != 0) {
        gActors[index].unk_0xF0 = 0x80000;
    }

    if ((temp_v1 & 0x10) != 0) {
        gActors[index].unk_0xF0 = 0xFFF80000;
    }

    D_801373E0.unk_0x50 = gPlayerPosXMirror._w;
    D_801373E0.unk_0x54 = gPlayerPosYMirror._w;
}

#ifdef NON_MATCHING
// ActorFunc for Marina
void func_8004ED10(uint16_t index) {
    int16_t* phi_v0;
    int16_t* phi_v1;

    if ((D_801373E0.unk_0x78 & 8) == 0) {
        if (gActors[index].unk_0xD0_h == 0) {
            func_8004A960(index);
        }

        D_800BE5E4 = 0;
        gActors[index].unk_0x94 &= 0xF781;
        gActors[index].rgba.r = gActors[index].rgba.g = gActors[index].rgba.b = 0; // whitespace memes
        D_800BE5E0 = D_800BE5E4;
        D_801373E0.unk_0x70 = 0;
        gActors[index].pos.z_w = 0;

        D_800D57E0 = func_8002981C(D_800D57E0, 0x6000, 0x400);

        if (gActors[index].unk_0x12F < 4) {
            gActors[index].unk_0x12F++;
        }

        D_801370CC = gButtonHold;
        D_801370CE = gButtonPress;

        if (D_800BE5F4 != 0) {
            if ((uint8_t)D_800BE5F4 == 2) {
                func_800485AC(index, &D_801370CE, &D_801370CC);
            }
            else {
                phi_v0 = gInputHistoryHold;
                phi_v1 = gInputHistoryPress;
                do {
                    phi_v0[1] = 0;
                    phi_v1[-3] = 0;
                    phi_v0[2] = 0;
                    phi_v1[-2] = 0;
                    phi_v0[3] = 0;
                    phi_v1[-1] = 0;
                    phi_v0[0] = 0;
                    phi_v1[0] = 0;

                    phi_v0 += 4;
                    phi_v1 += 4;
                } while (((uint32_t)&phi_v1[3]) != (uint32_t)&gInputHistoryPress[64]);

                D_801370CE = 0;
                D_801370CC = 0;

                gActors[index].unk_0x12F = 0;

                D_801373E0.unk_0x12 = 0x64;
                D_801373E0.unk_0x13 = 0;

                func_800485AC(index, &D_801370CE, &D_801370CC);
            }
        }

        D_801373D8 = func_80048600(index);

        if (D_801373E0.unk_0x50 != 0) {
            func_80083A04(D_801373E0.unk_0x50, -0x20, 0x40);
            if ((D_800BE4E0 & 0x7F) == 0) {
                D_801373E0.unk_0x50 = 0;
            }
        }

        if (D_801373E0.unk_0x54 != 0) {
            func_80083A04(D_801373E0.unk_0x54, -0x20, 0x30);
            if ((D_800BE4E0 & 0x7F) == 0) {
                D_801373E0.unk_0x54 = 0;
            }
        }

        if (D_801373E0.unk_0x58 != 0) {
            func_80083A04(D_801373E0.unk_0x58, -0x20, 0x20);
            if ((D_800BE4E0 & 0x7F) == 0) {
                D_801373E0.unk_0x58 = 0;
            }
        }

        if (D_801373E0.unk_0x5C != 0) {
            func_80083A04(D_801373E0.unk_0x5C, -0x20, 0x10);
            if ((D_800BE4E0 & 0x7F) == 0) {
                D_801373E0.unk_0x5C = 0;
            }
        }

        // when these two flags are set, marina looks like she's holding blockman,
        // however, blockman himself doesn't effect these
        // maybe it's the tricycle?
        gActors[index].flag &= ~ACTOR_FLAG_UNK3;
        if (D_801373E0.unk_0x78 & 0x10000) {
            gActors[index].flag |= ACTOR_FLAG_UNK3;
            gActors[index].unk_0x12C &= 0xFFF8;
            gActors[index].unk_0xDC &= 0xFFFE;
            gActors[index].pos.x_w += D_801373E0.unk_0x60;
        }

        func_80048740(index);

        if (func_80058F9C(index) == 0) {
            func_80049AC0(index);
        }

        gActors[index].flag &= ~(ACTOR_FLAG_UNK7 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK11); //~0xA80;
        gActors[index].unk_0x12C = 0;
        gActors[index].unk_0x12E = 0;

        //(((gActors[index].unkD0 & 0xFF) * 4) + 0x800D0000)->unk3DB0(index);
        gActorFuncTable_800D3DB0[gActors[index].unk_0xD0_h](index);

        func_80048BB0(index);

        if (gActors[index].flag & ACTOR_FLAG_ATTACHED) {
            D_801373E0.unk_0x70 = gActors[index].unk_0xD6;

            if (func_8005D338(index) < 0x66) {
                gActors[gActors[index].unk_0xD6].unk_0x108 += func_80049A04(index); // return size
            }

            // ((((((d6 * 4) - d6) * 4) + d6) * 4) - d6) * 8
            /* ((((((1 * 4) - 1) * 4) + 1) * 4) - 1) * 8
             * (((((4 - 1) * 4) + 1) * 4) - 1) * 8
             * ((((3 * 4) + 1) * 4) - 1) * 8
             * (((12 + 1) * 4) - 1) * 8
             * ((13 * 4) - 1) * 8
             * (52 - 1) * 8
             * 51 * 8
             * = 408 == 0x198
             * bruh
             */
            // held = (((((((gActors[index].unk_0xD6 * 4) - gActors[index].unk_0xD6) * 4) + gActors[index].unk_0xD6) * 4) -
            // gActors[index].unk_0xD6) * 8) + gActors;
            gActors[gActors[index].unk_0xD6].unk_0x104 += gActors[index].unk_0xEC;
            gActors[gActors[index].unk_0xD6].unk_0x108 += gActors[index].unk_0xF0;
        }

        func_8005D450(index);
        func_8005CAA8(index, &D_800D4000);
        func_8005BFA4(index);

        if (func_8005C5E0(index) == 1 && gActors[index].unk_0x13C >= 0x1F) {
            gActors[index].unk_0x183 = 6;
        }

        if ((gActors[index].unk_0x98 & 2) != 0) {
            D_801373E0.unk_0x68 = gActors[index].unk_0xF8;
            D_801373E0.unk_0x6C = gActors[index].unk_0xFC;
        }

        D_801373E0.unk_0x64 = gActors[index].unk_0x98;
        gActors[index].unk_0x98 &= 0xFFDFF9FF;
        D_801373E0.unk_0x7C++;

        gActors[index].unk_0xB4 = D_800EF630 * gActors[index].unk_0x124;
        gActors[index].unk_0xB8 = (&D_800EF630)[-0x274] * gActors[index].unk_0x128; // -0x9D0 (I don't know how this is produced?)

        D_800BE5D8 = gActors[index].pos.x_w + D_800BE558;
        D_800BE5DC = gActors[index].pos.y_w + D_800BE55C;
        D_800BE5E8 = gActors[index].unk_0xEC;
        D_800BE5EC = gActors[index].unk_0xF0;

        if (D_800BE5D0 == 0x46) {
            if (gActors[index].unk_0xF0 <= -294912.0) {
                if (D_801373E0.unk_0x44 == 0) {
                    if (func_8000334C(0x3E) >= 0) {
                        D_801373E0.unk_0x44 = 1;
                    }

                    return;
                }
            }
            else if (D_801373E0.unk_0x44 != 0) {
                SFX_Stop(0x3E);
                D_801373E0.unk_0x44 = 0;

                return;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004ED10.s")
#endif
