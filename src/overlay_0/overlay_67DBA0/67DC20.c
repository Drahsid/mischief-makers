#include "common.h"
#include "actor.h"
#include "function_symbols.h"

// "Overlay 0" code for "Migen Brawl"

extern u8 D_801376B4[];
extern u8 D_801376A8[];
extern u8 D_801376AC[];
extern u8 D_801376B0[];
extern u16 D_801370CC;
extern u16 D_801370CE;
extern u32 D_8019B200_686D20[];
extern u8 D_8019B18C_686CAC[];
extern u8 D_8019B194_686CB4[];
extern u8 D_8019B1D4_686CF4[];
extern u8 D_8019B1DC_686CFC[];
extern u8 D_8019BF20_687A40[];
extern u8 D_8019C010_687B30[];
extern u32 D_8019C054_687B74[];
extern u8 D_8019C830_688350[];
extern u8 D_8019C884_6883A4[];
extern u32 D_8019C8D8_6883F8[];
extern u8 D_8019D6E0_689200[];
extern u32 D_8019D784_6892A4[];
extern s16 D_8019DB80_6896A0[];
extern s16 D_8019DC14_689734[];
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
s32 func_80048C94(s32 arg0);

void func_80192100_67DC20(s32 arg0) {
}

// Spawn a "!" bubble over Migen Jr.'s head when his fist gets caught.
void func_80192108_67DC28(s32 arg0) {
    u16 actor_index;

    actor_index = SpawnParticle_List_90C0_16(D_800E154C, gActors[0x4F].posX.whole, gActors[0x4F].posY.whole + 0x20,
                                gActors[0x4F].posZ.whole + 5);

    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
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
    *(f32*)&gActors[0x4E].unk_140_f32 = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801923B0_67DED0.s")

void func_801926CC_67E1EC(s32 arg0, s32 arg1) {
    u16 actor_index;

    gActors[0x46].unk_180 = 0;
    actor_index = SpawnParticle_List_90C0_16(D_800E156C, 0, 0, 0);

    if (actor_index != 0) {
        gActors[0x46].unk_180 = actor_index;
        gActors[actor_index].graphicFlags = (ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE);
        gActors[actor_index].flags |= (gActors[0x37].flags & ACTOR_FLAG_FLIPPED) + ACTOR_FLAG_UNK15;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 2.0f;
        gActors[actor_index].unk_130 = 55.0f;
        gActors[actor_index].unk_14C = (f32)(u16)gActors[0x37].actorType;
        gActors[actor_index].unk_134 = 0.0f;
        gActors[actor_index].unk_138 = 0.0f;
        gActors[actor_index].unk_13C_f32 = 1.0f;
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
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].var_160 = (-(gActors[0x37].var_150) << 0x10) + 0x2000000;
            return;
        }
        gActors[actor_index].var_160 = (gActors[0x37].var_150 << 0x10) + 0x2000000;
    }
}

void func_801928A8_67E3C8(s32 arg0) {
    u16 actor_index;

    gActors[0x4E].unk_180 = 0xA;
    gActors[0x4F].unk_180 = 0x90;
    gActors[0x4E].unk_140_f32 = 0.5f;
    gActors[0x4E].unk_148 = 1.0f;
    gActors[0x4E].unk_14C = D_8019DD98_6898B8;
    D_8019E578_68A098 = 0xFFEC0000;
    D_8019E57C_68A09C = 0;
    actor_index = SpawnParticle_List_90C0_16(gGraphicListBlank, gActors[0x50].posX.whole, gActors[0x50].posY.whole, gActors[0x50].posZ.whole + 1);

    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GRAPHIC_FRAME(BOOM1,3);
        gActors[actor_index].colorA = 0xC0;
        gActors[actor_index].colorR = 0x40;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(2);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(-4.0);
        gActors[actor_index].var_154 = -0xE;
        gActors[actor_index].timer_110 = 1.0f;
        gActors[actor_index].unk_114 = D_8019DD9C_6898BC;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801929C0_67E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80192C4C_67E76C.s")

void func_80192E68_67E988(u16 actor_index, u16 arg1) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x68, 0x70);
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index,0x609);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = 0x8403;
        gActors[new_actor_index].graphicList = D_800E1540;
        gActors[new_actor_index].graphicTimer = 1;
        gActors[new_actor_index].posX.whole = gActors[0x50].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[0x50].posY.whole - 0x10;
        gActors[new_actor_index].posZ.whole = gActors[0x50].posZ.whole;
        gActors[new_actor_index].colorA = 0x80;
        Actor_SetColorRgb(actor_index, 0x7F);
        gActors[new_actor_index].velocityX.raw = FIXED_UNIT(1.5) - ((Rand() & 7) << 0xF);
        gActors[new_actor_index].unk_0F8.raw = FIXED_UNIT(1.0);
        gActors[new_actor_index].unk_0FC.raw = FIXED_UNIT(4.0);
        gActors[new_actor_index].health = 0;
        gActors[new_actor_index].damage = 0x50;
        gActors[new_actor_index].unk_0DF = 0x20;
        gActors[new_actor_index].unk_0DA = 0x80;\
        gActors[new_actor_index].unk_0DB = 8;
        gActors[new_actor_index].scaleX = 1.0f;
        gActors[new_actor_index].scaleY = 1.0f;

        if (arg1 != 0) {
            gActors[new_actor_index].velocityY.raw = FIXED_UNIT(3.25);
        }
        else {
            gActors[new_actor_index].velocityY.raw = FIXED_UNIT(5.0);
        }

        if (gActors[0].posY.whole >= 9) {
            gActors[new_actor_index].velocityY.raw += FIXED_UNIT(1.25);
        }

        gActors[new_actor_index].unk_188 = arg1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80192FE4_67EB04.s")

void func_801934F0_67F010(void) {
    ACTOR_INIT(0x5E,0x2F);
    gActors[0x5E].flags = (ACTOR_FLAG_UNK15 | ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_ACTIVE);
    gActors[0x5E].health = 1;
    gActors[0x5E].hitboxBY0 = -0xC;
    gActors[0x5E].hitboxBY1 = -0x20;
    gActors[0x5E].hitboxBX0 = -0x50;
    gActors[0x5E].hitboxBX1 = 0x50;
    gActors[0x5E].hitboxAY0 = -0x20;
    gActors[0x5E].hitboxAY1 = -0x80;
    gActors[0x5E].hitboxAX0 = -0x100;
    gActors[0x5E].hitboxAX1 = 0x100;
    gActors[0x5E].unk_0DB = 0x13;
    gActors[0x5E].unk_0DA = 0;
    gActors[0x5E].posX.whole = 0;
    gActors[0x5E].posY.whole = 0x16A - gScreenPosCurrentY.whole;
}

void func_80193594_67F0B4(void) {
}

void func_8019359C_67F0BC(void) {
}

void func_801935A4_67F0C4(void) {
    ACTOR_INIT(0x61,0x607);
    gActors[0x61].flags = (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_PLATFORM0);
    gActors[0x61].hitboxBY0 = 0x10;
    gActors[0x61].hitboxBY1 = -0x10;
    gActors[0x61].hitboxBX0 = -0x100;
    gActors[0x61].hitboxBX1 = 0x100;
}

void func_80193600_67F120(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 8;
    gActors[actor_index].hitboxBY1 = -0x18;
    func_8002ACFC(actor_index, -0xE, 0x14);
    gActors[actor_index].hitboxAY0 = 0x12;
    gActors[actor_index].hitboxAY1 = -8;
    func_8002AC7C(actor_index, -0xC, 0xA);
}

void func_80193694_67F1B4(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 0x10;
    gActors[actor_index].hitboxBY1 = -0xC;
    func_8002ACFC(actor_index, -4, 0x1A);
    gActors[actor_index].hitboxAY0 = 0xC;
    gActors[actor_index].hitboxAY1 = -0xC;
    func_8002AC7C(actor_index, -0x10, 6);
}

void func_80193728_67F248(u16 actor_index) {
    ACTOR_INIT(actor_index,0x1D);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
}

void func_80193790_67F2B0(u16 actor_index) {
    s32 temp[1];

    func_80193728_67F248(0x31);
    func_8008105C(0x31, D_8019B200_686D20, D_8019B1DC_686CFC);
    gActors[0x31].unk_178 = (s32)D_8019BF20_687A40;
    temp[0] = (s32)D_8019BF20_687A40;

    func_80193728_67F248(0x38);
    func_8008105C(0x38, D_8019B200_686D20, D_8019B1DC_686CFC);
    gActors[0x38].unk_178 = temp[0];
    gActors[0x38].unk_138 = 1.0f;

    func_80193728_67F248(0x3F);
    func_8008105C(0x3F, D_8019C054_687B74, D_8019C010_687B30);
    gActors[0x3F].unk_178 = (s32)D_8019C830_688350;
    gActors[0x3F].unk_168 = 0x2980;
    gActors[0x3F].unk_128 = 67.0f;
    gActors[0x3F].unk_12C = 66.0f;

    func_80193728_67F248(0x4D);
    func_8008105C(0x4D, D_8019C8D8_6883F8, D_8019C884_6883A4);
    gActors[0x4D].unk_178 = (s32)D_8019D6E0_689200;
    gActors[0x52].graphicFlags |= ACTOR_GFLAG_ROTY;
    gActors[0x53].graphicFlags |= ACTOR_GFLAG_ROTY;
    gActors[0x5B].flags |= ACTOR_FLAG_FLIPPED;

    func_80193728_67F248(0x5C);
    func_8008105C(0x5C, D_8019B194_686CB4, D_8019B18C_686CAC);
    gActors[0x5C].unk_178 = (s32)D_8019B1D4_686CF4;

    func_80081478(0x31, D_8019B200_686D20, 0);
    func_80081478(0x38, D_8019B200_686D20, 0);
    func_80081478(0x3F, D_8019C054_687B74, 0);
    func_80081478(0x4D, D_8019C8D8_6883F8, 0);
    func_80081478(0x5C, D_8019B194_686CB4, 0);

    func_80193600_67F120(0x4E);
    func_80193600_67F120(0x37);
    func_80193600_67F120(0x3E);

    gActors[0x4E].unk_0DE = 9;
    gActors[0x37].unk_0DE = 10;
    gActors[0x37].unk_0CE = 2;
    gActors[0x3E].unk_0DE = 10;
    gActors[0x3E].unk_0CE = 2;
    gActors[actor_index].health = 1000;
    gActors[0x42].posY.raw = gActors[0x43].unk_180;
    gActors[0x40].unk_14C = 0.0f;
}

void func_801939CC_67F4EC(u16 actor_index) {
    u16 index;
    s32 threshold;

    threshold = 0x120000;
    for (index = 0; index < 9; index++) {
        if (threshold < gActors[actor_index].var_154) {
            gActors[actor_index].graphicIndex = D_8019DB1C_68963C[index];
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
        if (threshold < gActors[actor_index].var_154) {
            gActors[actor_index].graphicIndex = D_8019DB30_689650[index];
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
        if (threshold >= gActors[actor_index].var_154) {
            gActors[actor_index].graphicIndex = D_8019DB44_689664[index];
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
    value = actor[0x20].var_154;
    actor[0x20].unk_138 = (f32)(-value / 0x10000);

    threshold = 0x8000;
    for (index = 0; index < 6; index++) {
        if (value < threshold) {
            actor[0x20].graphicIndex = D_8019DB58_689678[index];
            actor[0x20].unk_13C_f32 = 11.0f;
            return;
        }
        threshold += 0x8000;
    }

    actor[0x20].graphicIndex = 0x80C;
    actor[0x20].unk_13C_f32 = 10.0f;
}

void func_80193C14_67F734(u16 actor_index) {
    Actor* actor;
    u16 index;
    s32 threshold;
    s32 value;

    actor = &gActors[actor_index];
    value = actor[0x21].var_154;
    actor[0x21].unk_138 = (f32)(-value / 0x10000);

    threshold = 0x8000;
    for (index = 0; index < 7; index++) {
        if (value < threshold) {
            actor[0x21].graphicIndex = D_8019DB64_689684[index];
            return;
        }
        threshold += 0x8000;
    }

    actor[0x21].graphicIndex = 0x81A;
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
    gActors[0x3F].graphicFlags |= ACTOR_GFLAG_UNK4;
    gActors[0x3F].colorR = arg1;
    gActors[0x3F].colorG = arg1;
    gActors[0x3F].colorB = arg1;
}

void func_80193F70_67FA90(s32 arg0, u8 arg1) {
    gActors[0x3F].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    gActors[0x3F].colorR = arg1;
    gActors[0x3F].colorG = arg1;
    gActors[0x3F].colorB = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_80193F9C_67FABC.s")

void func_80194818_680338(void) {
    s32 step;

    step = 0xC000;
    if (gActiveFrames & 0x20) {
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
    if (gActiveFrames & 0x20) {
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
    if (gActors[0x3F].posZ.raw > FIXED_UNIT(-40.0)) {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0, 0x6000);
    }
    else {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0x2C000, 0x6000);
    }
    gActors[0x3F].posZ.raw += gActors[0x47].unk_180;
}

void func_801949B8_6804D8(s32 arg0) {
    if (gActors[0x3F].posZ.raw < FIXED_UNIT(-120.0)) {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, 0, 0x6000);
    }
    else {
        gActors[0x47].unk_180 = Math_ApproachS32(gActors[0x47].unk_180, -0x2A000, 0x6000);
    }
    gActors[0x3F].posZ.raw += gActors[0x47].unk_180;
}

void func_80194A38_680558(void) {
    ACTOR_INIT(0x60,0x1D);
    gActors[0x60].flags = (ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ENABLED);
    gActors[0x60].colorR = 0x4F;
    gActors[0x60].colorG = 0x7F;
    gActors[0x60].colorB = 0x7F;
    gActors[0x60].graphicFlags = (ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 |
        ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALE);
    gActors[0x60].graphicIndex = 0x262;
    gActors[0x60].colorA = 0;
    gActors[0x60].posX.whole = 0;
    gActors[0x60].posY.whole = 0;
    gActors[0x60].posZ.whole = -0x90;
    gActors[0x60].scaleX = 8.0f;
    gActors[0x60].unk_12C = 8.0f;
    gActors[0x60].rotateX = 90.0f;
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

    if (gActors[0x37].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[0x37].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9);
        if (gActors[0].unk_140_u8[0] == 0) {
            gActors[index].state = 0x400;
            func_80193DF0_67F910(index, 0x10);
            return 1;
        }
        gActors[index].state = 0x30;
        gActors[index].timer_110 = 50.0f;
        func_80193DF0_67F910(index, 0);
        gActors[0].flags_098 |= ACTOR_FLAG3_UNK16;
        gActors[0].unk_0FC.raw = FIXED_UNIT(-2.0);
        if (gActors[0x37].posX.whole < gActors[0].posX.whole) {
            gActors[0].unk_0F8.raw = FIXED_UNIT(1.5);
        }
        else {
            gActors[0].unk_0F8.raw = FIXED_UNIT(-1.5);
        }
        D_800D294C = 2;
        return 2;
    }
    return 0;
}

void func_80194E64_680984(u16 actor_index, u16 arg1) {
    gActors[actor_index].timer_110 =
        (f32)(arg1 + (gActors[actor_index].health / 30) - (Rand() & 0x2F) + 0x14);
}

void func_80194EE4_680A04(void) {
    if (gActiveFrames & 0x80) {
        gScreenPosTargetY.raw = Math_ApproachS32(gScreenPosTargetY.raw, FIXED_UNIT(412.0), 0x1000);
    }
    else {
        gScreenPosTargetY.raw = Math_ApproachS32(gScreenPosTargetY.raw, FIXED_UNIT(418.0), 0x1000);
    }
}

void func_80194F48_680A68(void) {
    if (gActors[0x37].flags & ACTOR_FLAG_UNK9) {
        gActors[0x37].graphicFlags &= ~ACTOR_GFLAG_UNK4;
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
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0x2000, 0x800);

        if (gActors[actor_index].unk_17C < gActors[actor_index].unk_184) {
            gActors[actor_index].unk_188 &= ~0x20000000;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 - (Rand() & 7) - 3;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -0x3000, 0xC00);

        if (gActors[actor_index].unk_184 < gActors[actor_index].unk_17C) {
            gActors[actor_index].unk_188 |= 0x20000000;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 + (Rand() & 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019809C_683BBC.s")

void func_80198708_684228(u16 actor_index) {
    u16 new_actor_index;

    gActors[actor_index].unk_118 = (f64)gActors[actor_index].unk_118 + D_8019E378_689E98;
    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_BLASTB, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(1.0);
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_118;
        gActors[new_actor_index].colorA = 0x80;
        gActors[new_actor_index].var_154 = -0x21;
        gActors[new_actor_index].unk_178 = (s32)D_800E0648;
        gActors[new_actor_index].timer_110 = 0.5f;
        gActors[new_actor_index].unk_114 = 0.5f;
        gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX;
        if (Rand() & 1) {
            Actor_SetColorRgb(new_actor_index, 0x20);
        }
    }
}

u16 func_8019882C_68434C(void) {
    return Actor_RangeFindInactive(0x67, 0x68);
}

void func_80198850_684370(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = func_8019882C_68434C();
    if (new_actor_index != 0) {
        ACTOR_INIT(new_actor_index,0x606);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_ROTX;
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[new_actor_index].unk_16C = Math_Atan2(gActors[0].posX.raw - gActors[new_actor_index].posX.raw,
                          gActors[0].posY.raw - gActors[new_actor_index].posY.raw) << 16;
        gActors[new_actor_index].var_154 = 0x1FFFCC;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_8019893C_68445C.s")

void func_80198ED8_6849F8(s32 arg0) {
}

void func_80198EE0_684A00(s32 arg0) {
}

void func_80198EE8_684A08(u16 actor_index) {
    gActors[actor_index].posX.whole = D_8019DD38_689858[gActors[actor_index].var_154 * 2];
    gActors[actor_index].posY.whole = D_8019DD38_689858[gActors[actor_index].var_154 * 2 + 1];
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].unk_178 = gActors[actor_index].unk_170;
    gActors[actor_index].unk_17C = gActors[actor_index].unk_174;
}

void func_80198F70_684A90(u16 actor_index) {
    u16 next_actor_index;

    gActors[actor_index].graphicList = D_8019DB80_6896A0;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = (ACTOR_FLAG_UNK12 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG_ENABLED);
    func_8002AC30(actor_index, 0xC);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + gScreenPosCurrentX.whole;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + gScreenPosCurrentY.whole;
    gActors[actor_index].unk_178 = gActors[actor_index].unk_170;
    gActors[actor_index].unk_17C = gActors[actor_index].unk_174;

    next_actor_index = actor_index + 1;
    //ACTOR_INIT macro causes mismatch here.
    gActors[next_actor_index].actorType = 0x1D;
    func_8001E2D0(next_actor_index);
    gActors[next_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[next_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[next_actor_index].graphicList = D_8019DC14_689734;
    gActors[next_actor_index].graphicTimer = 1;
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

    if ((actor->var_150 << 3) < 0) {
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, 0x4000, 0x400);

        if (actor->unk_178 < actor->unk_180) {
            actor->var_150 &= ~0x10000000;
            actor->unk_178 = actor->unk_170;
        }
    }
    else {
        actor->velocityX.raw = Math_ApproachS32(actor->velocityX.raw, -0x4000, 0x400);

        if (actor->unk_180 < actor->unk_178) {
            actor->var_150 |= 0x10000000;
            actor->unk_178 = actor->unk_170;
        }
    }

    if ((actor->var_150 << 2) < 0) {
        actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, 0x2000, 0x800);

        if (actor->unk_17C < actor->unk_184) {
            actor->var_150 &= ~0x20000000;
            actor->unk_17C = actor->unk_174 - (Rand() & 7) - 3;
        }
    }
    else {
        actor->velocityY.raw = Math_ApproachS32(actor->velocityY.raw, -0x3000, 0xC00);

        if (actor->unk_184 < actor->unk_17C) {
            actor->var_150 |= 0x20000000;
            actor->unk_17C = actor->unk_174 + (Rand() & 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_0/overlay_67DBA0/67DC20/func_801992AC_684DCC.s")

// Migen Jr. recovers with gem from father.
void func_80199DA8_6858C8(u16 actor_index) {
    switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = (ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE);
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            ACTOR_GFX_INIT(actor_index, gGraphicListGem);
            gActors[actor_index].palette_18C = D_800D8A98;
            gActors[actor_index].scaleX = 4.0f;
            Actor_SetColorRgb(actor_index, 0x7F);
            Sound_PlaySfxAtActor2(SFX_GEM_APPEAR, actor_index);

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
            gActors[actor_index].velocityZ.raw = FIXED_UNIT(8.0);
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.1875);
            if (gActors[actor_index].posY.whole < gActors[0x4F].posY.whole - 0x14) {
                gActors[actor_index].flags = 0;
                gActors[0x30].state = 0xB0;
                Sound_PlaySfxAtActor2(SFX_GEM_BLUE, actor_index);
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

    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
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
                if (gScreenPosCurrentY.raw + gActors[actor_index].posY.raw < FIXED_UNIT(365.0)) {
                    return;
                }

                if (gActors[actor_index].posY.whole > -0x80) {
                    return;
                }

                gActors[actor_index].velocityY.raw = func_80048C94(0xF);
                gActors[actor_index].state = 0x16;
            }

            D_801370CE = gButton_A;
            D_800BE5F4.unk_02 = 0xB;

        case 0xB:
            D_801370CC = gButton_A;
            gActors[actor_index].var_150 = 0x14;
            if (gPlayerPosY.whole >= 0x220) {
                D_800BE5F4.unk_02 = 0xC;
            }
            break;

        case 0xC:
            break;
    }
}
