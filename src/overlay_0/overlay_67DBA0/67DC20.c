#include "common.h"
#include "actor.h"
#include "function_symbols.h"

typedef union {
    u32 dirty;
    struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02;
        u8 unk_03;
    };
} UnkStruct_D_800BE5F4;

extern u8 D_801376B4[];
extern u8 D_801376A8[];
extern u8 D_801376AC[];
extern u8 D_801376B0[];
extern UnkStruct_D_800BE5F4 D_800BE5F4;
extern s32 D_800BE554;
extern u16 D_801370CC;
extern u16 D_801370CE;
extern u32 D_8019B200_686D20[];
extern u32 D_8019C054_687B74[];
extern u32 D_8019C8D8_6883F8[];
extern u32 D_8019D784_6892A4[];
extern u32 D_8019DB80_6896A0[];
extern u32 D_8019DC14_689734[];
extern f32 D_8019DD98_6898B8;
extern f32 D_8019DD9C_6898BC;
extern f64 D_8019E378_689E98;
extern f32 D_8019E4C8_689FE8;
extern s16 D_8019E570_68A090;
extern s32 D_8019E578_68A098;
extern s32 D_8019E57C_68A09C;
extern s16 D_8019DB1C_68963C[];
extern s16 D_8019DB30_689650[];
extern s16 D_8019DB44_689664[];
extern s16 D_8019DB58_689678[];
extern s16 D_8019DB64_689684[];
extern s16 D_8019DD38_689858[];

void func_801939CC_67F4EC(u16 actor_index);
void func_80193A4C_67F56C(u16 actor_index);
void func_80193ACC_67F5EC(u16 actor_index);
void func_80193B4C_67F66C(u16 actor_index);
void func_80193C14_67F734(u16 actor_index);
void func_800816AC(u16 actor_index, void* arg1, s32 arg2);
void func_80081720(u16 actor_index, void* arg1, s32 arg2);
void func_8002ACFC(u16 actor_index, s16 arg1, s16 arg2);
void func_8002AC7C(u16 actor_index, s16 arg1, s16 arg2);
void func_8002AC30(u16 actor_index, s16 val);
s32 func_800036C8(u32 arg0, u16 actor_index);
s32 func_800294E0(s32 arg0, s32 arg1);
u16 func_8003123C(void* arg0, s32 arg1, s32 arg2, s32 arg3);
u16 func_80031284(s32 arg0, s16 arg1, s16 arg2, s32 arg3);
s32 func_80048C94(s32 arg0);

void func_80192100_67DC20(s32 arg0) {
}

void func_80192108_67DC28(s32 arg0) {
    u16 actor_index;

    actor_index = func_8003123C(D_800E154C, gActors[0x4F].posX.whole, gActors[0x4F].posY.whole + 0x20,
                                gActors[0x4F].posZ.whole + 5);

    if (actor_index != 0) {
        gActors[actor_index].unk_094 = 1;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 1.5f;
        gActors[actor_index].unk_148 = 60.0f;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019219C_67DCBC.s")

void func_8019237C_67DE9C(s32 arg0) {
    // wtf? FAKEMATCH?
    *(s32*)&gActors[0x4E].unk_180 = 0x3C;
    *(s32*)&gActors[0x4F].unk_180 = 8;
    *(s32*)&gActors[0x50].unk_180 = 0xFE;
    *(f32*)&gActors[0x4E].unk_140 = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801923B0_67DED0.s")

void func_801926CC_67E1EC(s32 arg0, s32 arg1) {
    u16 actor_index;

    gActors[0x46].unk_180 = 0;
    actor_index = func_8003123C(D_800E156C, 0, 0, 0);

    if (actor_index != 0) {
        gActors[0x46].unk_180 = actor_index;
        gActors[actor_index].unk_094 = 0x209;
        gActors[actor_index].flags |= (gActors[0x37].flags & 0x20) + 0x8000;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].unk_18C = 0x8022D4E8;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 2.0f;
        gActors[actor_index].unk_130 = 55.0f;
        gActors[actor_index].unk_14C = (f32)(u16)gActors[0x37].actorType;
        gActors[actor_index].unk_134 = 0.0f;
        gActors[actor_index].unk_138 = 0.0f;
        gActors[actor_index].unk_13C = 1.0f;
    }
}

void func_801927DC_67E2FC(s32 arg0) {
    s32 actor_index = gActors[0x46].unk_180;

    if (actor_index != 0) {
        actor_index = (u16)actor_index;
        gActors[actor_index].flags = 0;
    }
    gActors[0x46].unk_180 = 0;
}

void func_80192820_67E340(s32 arg0) {
    s32 actor_index = gActors[0x46].unk_180;

    if (actor_index != 0) {
        actor_index = (u16)actor_index;
        if (gActors[actor_index].flags & 0x20) {
            gActors[actor_index].unk_160 = (-(gActors[0x37].unk_150) << 0x10) + 0x2000000;
            return;
        }
        gActors[actor_index].unk_160 = (gActors[0x37].unk_150 << 0x10) + 0x2000000;
    }
}

void func_801928A8_67E3C8(s32 arg0) {
    u16 actor_index;

    gActors[0x4E].unk_180 = 0xA;
    gActors[0x4F].unk_180 = 0x90;
    gActors[0x4E].unk_140 = 0.5f;
    gActors[0x4E].unk_148 = 1.0f;
    gActors[0x4E].unk_14C = D_8019DD98_6898B8;
    D_8019E578_68A098 = 0xFFEC0000;
    D_8019E57C_68A09C = 0;
    actor_index = func_8003123C(D_800E1380, gActors[0x50].posX.whole, gActors[0x50].posY.whole, gActors[0x50].posZ.whole + 1);

    if (actor_index != 0) {
        gActors[actor_index].unk_094 = 1;
        gActors[actor_index].flags = 3;
        gActors[actor_index].unk_084 = 0xDE;
        gActors[actor_index].colorA = 0xC0;
        gActors[actor_index].colorR = 0x40;
        gActors[actor_index].unk_0F4 = 0x20000;
        gActors[actor_index].velocityY = 0xFFFC0000;
        gActors[actor_index].unk_154 = -0xE;
        gActors[actor_index].unk_110 = 1.0f;
        gActors[actor_index].unk_114 = D_8019DD9C_6898BC;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801929C0_67E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80192C4C_67E76C.s")

void func_80192E68_67E988(u16 actor_index, u16 arg1) {
    u16 new_actor_index;

    new_actor_index = func_800284B8(0x68, 0x70);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x609;
        func_8001E2D0(new_actor_index);
        gActors[new_actor_index].unk_094 = 1;
        gActors[new_actor_index].flags = 0x8403;
        gActors[new_actor_index].unk_0E8 = D_800E1540;
        gActors[new_actor_index].unk_0E6 = 1;
        gActors[new_actor_index].posX.whole = gActors[0x50].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[0x50].posY.whole - 0x10;
        gActors[new_actor_index].posZ.whole = gActors[0x50].posZ.whole;
        gActors[new_actor_index].colorA = 0x80;
        Actor_SetColorRgb(actor_index, 0x7F);
        gActors[new_actor_index].velocityX = 0x18000 - ((func_8000178C() & 7) << 0xF);
        gActors[new_actor_index].unk_0F8 = 0x10000;
        gActors[new_actor_index].unk_0FC = 0x40000;
        gActors[new_actor_index].health = 0;
        gActors[new_actor_index].unk_0E4 = 0x50;
        gActors[new_actor_index].unk_0DF = 0x20;
        gActors[new_actor_index].unk_0DA = 0x80;\
        gActors[new_actor_index].unk_0DB = 8;
        gActors[new_actor_index].scaleX = 1.0f;
        gActors[new_actor_index].scaleY = 1.0f;

        if (arg1 != 0) {
            gActors[new_actor_index].velocityY = 0x34000;
        }
        else {
            gActors[new_actor_index].velocityY = 0x50000;
        }

        if (gActors[0].posY.whole >= 9) {
            gActors[new_actor_index].velocityY += 0x14000;
        }

        gActors[new_actor_index].unk_188 = arg1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80192FE4_67EB04.s")

void func_801934F0_67F010(void) {
    gActors[0x5E].actorType = 0x2F;
    func_8001E2D0(0x5E);
    gActors[0x5E].flags = 0xA302;
    gActors[0x5E].health = 1;
    gActors[0x5E].unk_0AE = -0xC;
    gActors[0x5E].unk_0B0 = -0x20;
    gActors[0x5E].unk_0AA = -0x50;
    gActors[0x5E].unk_0AC = 0x50;
    gActors[0x5E].unk_0A6 = -0x20;
    gActors[0x5E].unk_0A8 = -0x80;
    gActors[0x5E].unk_0A2 = -0x100;
    gActors[0x5E].unk_0A4 = 0x100;
    gActors[0x5E].unk_0DB = 0x13;
    gActors[0x5E].unk_0DA = 0;
    gActors[0x5E].posX.whole = 0;
    gActors[0x5E].posY.whole = 0x16A - D_800BE55C;
}

void func_80193594_67F0B4(void) {
}

void func_8019359C_67F0BC(void) {
}

void func_801935A4_67F0C4(void) {
    gActors[0x61].actorType = 0x607;
    func_8001E2D0(0x61);
    gActors[0x61].flags = 0x2002;
    gActors[0x61].unk_0AE = 0x10;
    gActors[0x61].unk_0B0 = -0x10;
    gActors[0x61].unk_0AA = -0x100;
    gActors[0x61].unk_0AC = 0x100;
}

void func_80193600_67F120(u16 actor_index) {
    gActors[actor_index].unk_0AE = 8;
    gActors[actor_index].unk_0B0 = -0x18;
    func_8002ACFC(actor_index, -0xE, 0x14);
    gActors[actor_index].unk_0A6 = 0x12;
    gActors[actor_index].unk_0A8 = -8;
    func_8002AC7C(actor_index, -0xC, 0xA);
}

void func_80193694_67F1B4(u16 actor_index) {
    gActors[actor_index].unk_0AE = 0x10;
    gActors[actor_index].unk_0B0 = -0xC;
    func_8002ACFC(actor_index, -4, 0x1A);
    gActors[actor_index].unk_0A6 = 0xC;
    gActors[actor_index].unk_0A8 = -0xC;
    func_8002AC7C(actor_index, -0x10, 6);
}

void func_80193728_67F248(u16 actor_index) {
    gActors[actor_index].actorType = 0x1D;
    func_8001E2D0(actor_index);
    gActors[actor_index].unk_094 |= 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80193790_67F2B0.s")

void func_801939CC_67F4EC(u16 actor_index) {
    u16 index;
    s32 threshold;

    threshold = 0x120000;
    for (index = 0; index < 9; index++) {
        if (threshold < gActors[actor_index].unk_154) {
            gActors[actor_index].unk_084 = D_8019DB1C_68963C[index];
            return;
        }
        threshold += -0x60000;
    }
}

void func_80193A4C_67F56C(u16 actor_index) {
    u16 index;
    s32 threshold;

    threshold = 0x120000;
    for (index = 0; index < 9; index++) {
        if (threshold < gActors[actor_index].unk_154) {
            gActors[actor_index].unk_084 = D_8019DB30_689650[index];
            return;
        }
        threshold += -0x60000;
    }
}

void func_80193ACC_67F5EC(u16 actor_index) {
    u16 index;
    s32 threshold;

    threshold = -0x20000;
    for (index = 0; index < 9; index++) {
        if (threshold >= gActors[actor_index].unk_154) {
            gActors[actor_index].unk_084 = D_8019DB44_689664[index];
            return;
        }
        threshold += 0x8000;
    }
}

void func_80193B4C_67F66C(u16 actor_index) {
    Actor* actor;
    u16 index;
    s32 threshold;
    s32 value;

    actor = &gActors[actor_index];
    value = actor[0x20].unk_154;
    actor[0x20].unk_138 = (f32)(-value / 0x10000);

    threshold = 0x8000;
    for (index = 0; index < 6; index++) {
        if (value < threshold) {
            actor[0x20].unk_084 = D_8019DB58_689678[index];
            actor[0x20].unk_13C = 11.0f;
            return;
        }
        threshold += 0x8000;
    }

    actor[0x20].unk_084 = 0x80C;
    actor[0x20].unk_13C = 10.0f;
}

void func_80193C14_67F734(u16 actor_index) {
    Actor* actor;
    u16 index;
    s32 threshold;
    s32 value;

    actor = &gActors[actor_index];
    value = actor[0x21].unk_154;
    actor[0x21].unk_138 = (f32)(-value / 0x10000);

    threshold = 0x8000;
    for (index = 0; index < 7; index++) {
        if (value < threshold) {
            actor[0x21].unk_084 = D_8019DB64_689684[index];
            return;
        }
        threshold += 0x8000;
    }

    actor[0x21].unk_084 = 0x81A;
}

void func_80193CC4_67F7E4(s32 arg0, u16 index) {
    if (gActors[0x4D].unk_11C < 0.0f) {
        func_80081790(0x4D, (void*)D_8019D784_6892A4[index * 5 + 0]);
    }

    if (gActors[0x3F].unk_11C < 0.0f) {
        func_80081790(0x3F, (void*)D_8019D784_6892A4[index * 5 + 1]);
    }

    if (gActors[0x31].unk_11C < 0.0f) {
        func_80081790(0x31, (void*)D_8019D784_6892A4[index * 5 + 2]);
    }

    if (gActors[0x38].unk_11C < 0.0f) {
        func_80081790(0x38, (void*)D_8019D784_6892A4[index * 5 + 3]);
    }

    if (gActors[0x5C].unk_11C < 0.0f) {
        func_80081790(0x5C, (void*)D_8019D784_6892A4[index * 5 + 4]);
    }
}

void func_80193DF0_67F910(s32 arg0, u16 index) {
    u32* ptr = &D_8019D784_6892A4[index * 5];

    func_80081790(0x4D, (void*)ptr[0]);
    func_80081790(0x3F, (void*)ptr[1]);
    func_80081790(0x31, (void*)ptr[2]);
    func_80081790(0x38, (void*)ptr[3]);
    func_80081790(0x5C, (void*)ptr[4]);
}

void func_80193E6C_67F98C(s32 arg0) {
    func_800816AC(0x31, D_8019B200_686D20, arg0);
    func_800816AC(0x38, D_8019B200_686D20, arg0);
    func_800816AC(0x3F, D_8019C054_687B74, arg0);
    func_800816AC(0x4D, D_8019C8D8_6883F8, arg0);
}

void func_80193ED8_67F9F8(s32 arg0) {
    func_80081720(0x31, D_8019B200_686D20, arg0);
    func_80081720(0x38, D_8019B200_686D20, arg0);
    func_80081720(0x3F, D_8019C054_687B74, arg0);
    func_80081720(0x4D, D_8019C8D8_6883F8, arg0);
}

void func_80193F44_67FA64(s32 arg0, u8 arg1) {
    gActors[0x3F].unk_094 |= 0x10;
    gActors[0x3F].colorR = arg1;
    gActors[0x3F].colorG = arg1;
    gActors[0x3F].colorB = arg1;
}

void func_80193F70_67FA90(s32 arg0, u8 arg1) {
    gActors[0x3F].unk_094 &= 0xFFEF;
    gActors[0x3F].colorR = arg1;
    gActors[0x3F].colorG = arg1;
    gActors[0x3F].colorB = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80193F9C_67FABC.s")

void func_80194818_680338(void) {
    s32 step;

    step = 0xC000;
    if (D_800BE4E0 & 0x20) {
        step = 0x2000;
    }

    gActors[0x45].unk_180 = Math_ApproachS32(gActors[0x45].unk_180, step, 0x800);
    gActors[0x40].unk_180 = Math_ApproachS32(gActors[0x40].unk_180, 0, gActors[0x45].unk_180);
}

void func_8019487C_68039C(s32 arg0) {
    s32 target;

    if (gActors[0x42].unk_180 != 0) {
        arg0 = -arg0;
    }

    target = 0x10000;
    if (D_800BE4E0 & 0x20) {
        target = 0x4000;
    }

    gActors[0x45].unk_180 = Math_ApproachS32(gActors[0x45].unk_180, target, 0x1000);
    gActors[0x40].unk_180 = Math_ApproachS32(gActors[0x40].unk_180, gActors[0].posX.raw + arg0, gActors[0x45].unk_180);

    if (gActors[0x40].unk_180 >= 0x700001) {
        gActors[0x40].unk_180 = 0x700000;
    }

    if (gActors[0x40].unk_180 < -0x700000) {
        gActors[0x40].unk_180 = -0x700000;
    }
}

void func_80194934_680454(s32 arg0) {
    if (gActors[0x3F].posZ.raw >= -0x27FFFF) {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0, 0x6000);
    }
    else {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0x2C000, 0x6000);
    }
    gActors[0x3F].posZ.raw += gActors[0x47].unk_180;
}

void func_801949B8_6804D8(s32 arg0) {
    if (gActors[0x3F].posZ.raw < -0x780000) {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0, 0x6000);
    }
    else {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, -0x2A000, 0x6000);
    }
    gActors[0x3F].posZ.raw += gActors[0x47].unk_180;
}

void func_80194A38_680558(void) {
    gActors[0x60].actorType = 0x1D;
    func_8001E2D0(0x60);
    gActors[0x60].flags = 0xB;
    gActors[0x60].colorR = 0x4F;
    gActors[0x60].colorG = 0x7F;
    gActors[0x60].colorB = 0x7F;
    gActors[0x60].unk_094 = 0x1817;
    gActors[0x60].unk_084 = 0x262;
    gActors[0x60].colorA = 0;
    gActors[0x60].posX.whole = 0;
    gActors[0x60].posY.whole = 0;
    gActors[0x60].posZ.whole = -0x90;
    gActors[0x60].scaleX = 8.0f;
    gActors[0x60].unk_12C = 8.0f;
    gActors[0x60].unk_0BC = 90.0f;
}

void func_80194AC8_6805E8(void) {
    gActors[0x60].colorA = Math_ApproachS32(gActors[0x60].colorA, 0, 8);
    if (gActors[0x60].colorA == 0) {
        gActors[0x60].flags = 0;
    }
}

void func_80194B10_680630(void) {
    D_801376BC[0] = 0;
    D_801376B4[0] = 0x80;
    D_801376A8[0] = 0;
    D_801376AC[0] = 0;
    D_801376B0[0] = 0;
    D_801376BC[2] = 0;
    D_801376B4[2] = 0x80;
    D_801376A8[2] = 0;
    D_801376AC[2] = 0;
    D_801376B0[2] = 0;
}

void func_80194B68_680688(void) {
    D_801376BC[0] = 1;
    D_801376BC[2] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80194B80_6806A0.s")

s32 func_80194D3C_68085C(u16 actor_index) {
    u32 index;

    index = actor_index;

    if (gActors[0x37].unk_098 & 0x200) {
        gActors[0x37].flags &= -0x1201;
        if (((u8*)&gActors[0].unk_140)[0] == 0) {
            gActors[index].state = 0x400;
            func_80193DF0_67F910(index, 0x10);
            return 1;
        }
        gActors[index].state = 0x30;
        gActors[index].unk_110 = 50.0f;
        func_80193DF0_67F910(index, 0);
        gActors[0].unk_098 |= 0x10000;
        gActors[0].unk_0FC = 0xFFFE0000;
        if (gActors[0x37].posX.whole < gActors[0].posX.whole) {
            gActors[0].unk_0F8 = 0x18000;
        }
        else {
            gActors[0].unk_0F8 = 0xFFFE8000;
        }
        D_800D294C = 2;
        return 2;
    }
    return 0;
}

void func_80194E64_680984(u16 actor_index, u16 arg1) {
    gActors[actor_index].unk_110 =
        (f32)(arg1 + (gActors[actor_index].health / 0x1E) - (func_8000178C() & 0x2F) + 0x14);
}

void func_80194EE4_680A04(void) {
    if (D_800BE4E0 & 0x80) {
        D_800BE554 = Math_ApproachS32(D_800BE554, 0x19C0000, 0x1000);
    }
    else {
        D_800BE554 = Math_ApproachS32(D_800BE554, 0x1A20000, 0x1000);
    }
}

void func_80194F48_680A68(void) {
    if (gActors[0x37].flags & 0x200) {
        gActors[0x37].unk_094 &= 0xFFEF;
        Actor_SetColorRgb(0x37, 0x2F);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80194F8C_680AAC.s")

void func_80197EFC_683A1C(s32 actor_index) {
    func_801939CC_67F4EC(actor_index + 2);
    func_80193A4C_67F56C(actor_index + 4);
    func_80193ACC_67F5EC(actor_index + 6);
}

void func_80197F58_683A78(s32 actor_index) {
    func_80193B4C_67F66C(actor_index - 0x1D);
    func_80193C14_67F734(actor_index - 0x1D);
}

void func_80197F90_683AB0(s32 arg0) {
}

void func_80197F98_683AB8(s32 arg0) {
}

void func_80197FA0_683AC0(u16 actor_index) {
    if (gActors[actor_index].unk_188 & 0x20000000) {
        gActors[actor_index].velocityY = Math_ApproachS32(gActors[actor_index].velocityY, 0x2000, 0x800);

        if (gActors[actor_index].unk_17C < gActors[actor_index].unk_184) {
            gActors[actor_index].unk_188 &= 0xDFFFFFFF;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 - (func_8000178C() & 7) - 3;
        }
    }
    else {
        gActors[actor_index].velocityY = Math_ApproachS32(gActors[actor_index].velocityY, -0x3000, 0xC00);

        if (gActors[actor_index].unk_184 < gActors[actor_index].unk_17C) {
            gActors[actor_index].unk_188 |= 0x20000000;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 + (func_8000178C() & 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019809C_683BBC.s")

void func_80198708_684228(u16 actor_index) {
    u16 new_actor_index;

    gActors[actor_index].unk_118 = (f64)gActors[actor_index].unk_118 + D_8019E378_689E98;
    new_actor_index = func_80031284(0x168, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].unk_094 = 0x201;
        gActors[new_actor_index].unk_0F4 = 0x10000;
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_118;
        gActors[new_actor_index].colorA = 0x80;
        gActors[new_actor_index].unk_154 = -0x21;
        gActors[new_actor_index].unk_178 = (s32)D_800E0648;
        gActors[new_actor_index].unk_110 = 0.5f;
        gActors[new_actor_index].unk_114 = 0.5f;
        gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX;
        if (func_8000178C() & 1) {
            Actor_SetColorRgb(new_actor_index, 0x20);
        }
    }
}

u16 func_8019882C_68434C(void) {
    return func_800284B8(0x67, 0x68);
}

void func_80198850_684370(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = func_8019882C_68434C();
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0x606;
        func_8001E2D0(new_actor_index);
        gActors[new_actor_index].unk_094 = 2;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[new_actor_index].unk_16C = func_800294E0(gActors[0].posX.raw - gActors[new_actor_index].posX.raw,
                          gActors[0].posY.raw - gActors[new_actor_index].posY.raw) << 16;
        gActors[new_actor_index].unk_154 = 0x1FFFCC;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019893C_68445C.s")

void func_80198ED8_6849F8(s32 arg0) {
}

void func_80198EE0_684A00(s32 arg0) {
}

void func_80198EE8_684A08(u16 actor_index) {
    gActors[actor_index].posX.whole = D_8019DD38_689858[gActors[actor_index].unk_154 * 2];
    gActors[actor_index].posY.whole = D_8019DD38_689858[gActors[actor_index].unk_154 * 2 + 1];
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + D_800BE55C;
    gActors[actor_index].unk_178 = gActors[actor_index].unk_170;
    gActors[actor_index].unk_17C = gActors[actor_index].unk_174;
}

void func_80198F70_684A90(u16 actor_index) {
    u16 next_actor_index;

    gActors[actor_index].unk_0E8 = D_8019DB80_6896A0;
    gActors[actor_index].unk_0E6 = 1;
    gActors[actor_index].unk_094 = 1;
    gActors[actor_index].flags = 0x1403;
    func_8002AC30(actor_index, 0xC);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + D_800BE55C;
    gActors[actor_index].unk_178 = gActors[actor_index].unk_170;
    gActors[actor_index].unk_17C = gActors[actor_index].unk_174;

    next_actor_index = actor_index + 1;
    gActors[next_actor_index].actorType = 0x1D;
    func_8001E2D0(next_actor_index);
    gActors[next_actor_index].unk_094 = 1;
    gActors[next_actor_index].flags = 3;
    gActors[next_actor_index].unk_0E8 = D_8019DC14_689734;
    gActors[next_actor_index].unk_0E6 = 1;
}

void func_80199094_684BB4(u16 actor_index) {
    u16 next_actor_index = actor_index + 1;

    gActors[next_actor_index].colorA = gActors[actor_index].colorA;
    gActors[next_actor_index].scaleX = gActors[actor_index].scaleX;
    gActors[next_actor_index].scaleY = gActors[actor_index].scaleY;
    gActors[next_actor_index].posX.whole = gActors[actor_index].posX.whole;
    gActors[next_actor_index].posY.whole = gActors[actor_index].posY.whole;
    gActors[next_actor_index].posZ.raw = gActors[actor_index].posZ.raw - 1;
}

void func_8019911C_684C3C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];

    if ((actor->unk_150 << 3) < 0) {
        actor->velocityX = Math_ApproachS32(actor->velocityX, 0x4000, 0x400);

        if (actor->unk_178 < actor->unk_180) {
            actor->unk_150 &= 0xEFFFFFFF;
            actor->unk_178 = actor->unk_170;
        }
    }
    else {
        actor->velocityX = Math_ApproachS32(actor->velocityX, -0x4000, 0x400);

        if (actor->unk_180 < actor->unk_178) {
            actor->unk_150 |= 0x10000000;
            actor->unk_178 = actor->unk_170;
        }
    }

    if ((actor->unk_150 << 2) < 0) {
        actor->velocityY = Math_ApproachS32(actor->velocityY, 0x2000, 0x800);

        if (actor->unk_17C < actor->unk_184) {
            actor->unk_150 &= 0xDFFFFFFF;
            actor->unk_17C = actor->unk_174 - (func_8000178C() & 7) - 3;
        }
    }
    else {
        actor->velocityY = Math_ApproachS32(actor->velocityY, -0x3000, 0xC00);

        if (actor->unk_184 < actor->unk_17C) {
            actor->unk_150 |= 0x20000000;
            actor->unk_17C = actor->unk_174 + (func_8000178C() & 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801992AC_684DCC.s")

void func_80199DA8_6858C8(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].unk_094 = 0x201;
            gActors[actor_index].flags = 3;
            gActors[actor_index].unk_0E8 = D_800E164C;\
            gActors[actor_index].unk_0E6 = 1;
            gActors[actor_index].unk_18C = (s32)D_800D8A98;
            gActors[actor_index].scaleX = 4.0f;
            Actor_SetColorRgb(actor_index, 0x7F);
            func_800036C8(0x51, actor_index);

        case 1:
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 4);
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, D_8019E4C8_689FE8, 0.06f);
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 4);
            gActors[actor_index].colorG = gActors[actor_index].colorR;
            gActors[actor_index].colorB = gActors[actor_index].colorR;
            gActors[actor_index].posX.whole = gActors[0x62].posX.whole;
            gActors[actor_index].posY.whole = gActors[0x62].posY.whole;
            gActors[actor_index].posZ.raw = gActors[0x62].posZ.raw + 0xA;
            break;

        case 2:
            gActors[actor_index].unk_0F4 = 0x80000;
            gActors[actor_index].velocityY -= 0x3000;
            if (gActors[actor_index].posY.whole < gActors[0x4F].posY.whole - 0x14) {
                gActors[actor_index].flags = 0;
                gActors[0x30].state = 0xB0;
                func_800036C8(0x95, actor_index);
                D_8019E570_68A090 = 2;
            }
            break;
    }

    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_80199F54_685A74(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80199F5C_685A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019A3B8_685ED8.s")

void func_8019A604_686124(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            func_801935A4_67F0C4();
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].state++;

        case 1:
            gActors[actor_index].posY.whole = 0x240 - D_800BE580;
            break;
    }

    gActors[actor_index].unk_098 &= 0xFFDFF9FF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019A6AC_6861CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019A888_6863A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019AB04_686624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019AD40_686860.s")

void func_8019AEE4_686A04(u16 actor_index, s32 arg1) {
    switch (D_800BE5F4.unk_02) {
        case 0:
            if (gActors[actor_index].stateLower == 0x39) {
                gActors[actor_index].state = 2;
            }
            D_800BE5F4.unk_01 = 0;
            D_800BE5F4.unk_02 = 0xA;
            break;

        case 0xA:
            if (gActors[actor_index].stateLower != 3) {
                if (*(s32*)&D_800BE55C + gActors[actor_index].posY.raw < 0x16D0000) {
                    return;
                }

                if (gActors[actor_index].posY.whole >= -0x7F) {
                    return;
                }

                gActors[actor_index].velocityY = func_80048C94(0xF);
                gActors[actor_index].state = 0x16;
            }

            D_801370CE = D_800BE518;
            D_800BE5F4.unk_02 = 0xB;

        case 0xB:
            D_801370CC = D_800BE518;
            gActors[actor_index].unk_150 = 0x14;
            if (D_800BE5DC >= 0x220) {
                D_800BE5F4.unk_02 = 0xC;
            }
            break;

        case 0xC:
            break;
    }
}
