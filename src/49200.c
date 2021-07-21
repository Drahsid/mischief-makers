#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_800486F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048BB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048C28.s")

int32_t func_80048C94(int32_t arg0) {
    float* new_var = &D_800EF630;
    return (int32_t)((&D_800D5794)[arg0] * (*new_var));
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_80048F70.s")

int32_t func_80049040(uint16_t index) {
    if ((gActors[index].unk_0x98 & 0x40) == 0) {
        return 0;
    }

    gActors[index].flag &= ~0x4040;
    gActors[index].flag &= 0xFF3CFFFF, gActors[index].flag |= 0x20000; // whitespace memes
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

    actor->flag &= 0xFF3CB53F;
    actor->flag |= 0x10000;
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
        gActors[index].flag &= -0x21;
    }

    if ((D_801373D8 & 1) != 0) {
        gActors[index].flag |= 0x20;
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
        gActors[index].flag &= -0x21;
    }

    if ((D_801373D8 & 1) != 0) {
        gActors[index].flag |= 0x20;
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

    temp_a0 = (&D_800D4184)[func_8005D338(index)];
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
        gActors[index].flag &= 0x20;
        gActors[index].flag |= 0x8011103;
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
        func_8000334C(0x25U);
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
    if ((actor->flag & 0x20) != 0) {
        phi_a1 = -phi_a1;
    }

    actor->unk_0xEC = func_8002981C(actor->unk_0xEC, phi_a1, func_8005C6D0(phi_a1) / 8);
    func_8005D370(index, 0x1D);

    if (actor->unk_0x170 == 0 && (actor->unk_0x171 == 2 || actor->unk_0x171 == 8)) {
        func_8000334C(0x53U);
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

    gActors[index].flag |= 0x4000;
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

    func_80083A04(gActors[index].unk_0x84 - gActors[index].unk_0x158, (int16_t)gActors[index].pos.x - 0x20, (int16_t)gActors[index].pos.y + 0x30, 0);

    phi_a3 = 0;
    if (((D_800BE4F8 & D_800BE510) != 0) && (((gActors[index].unk_0x150 == 0)) || (phi_a3 = 1, ((gActors[index].unk_0x150 < 9) == 0)))) {
        gActors[index].unk_0x84++;
        phi_a3 = 1;
        if (gActors[index].unk_0x15C < (gActors[index].unk_0x84 & 0xFFFF)) {
            gActors[index].unk_0x84 = (uint16_t)gActors[index].unk_0x158;
            phi_a3 = 1;
        }
    }

    phi_a3++;
    if (((D_800BE4F8 & D_800BE50C) != 0) && (((gActors[index].unk_0x150 == 0)) || (((gActors[index].unk_0x150 < 9) == 0)))) {
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
    actor->unk_0xEC = 0;
    actor->unk_0x12E |= 0xC1;
    actor->unk_0xF0 = 0;

    temp_v1 = D_801373D8;
    if ((temp_v1 & 2) != 0) {
        actor->unk_0xEC = 0x80000;
    }

    if ((temp_v1 & 1) != 0) {
        actor->unk_0xEC = 0xFFF80000;
    }

    if ((temp_v1 & 0x20) != 0) {
        actor->unk_0xF0 = 0x80000;
    }

    if ((temp_v1 & 0x10) != 0) {
        actor->unk_0xF0 = 0xFFF80000;
    }

    *((uint32_t*)(((uint8_t*)(&D_801373E0)) + 0x50)) = D_800BE5D8;
    *((uint32_t*)(((uint8_t*)(&D_801373E0)) + 0x54)) = D_800BE5DC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/49200/func_8004ED10.s")
