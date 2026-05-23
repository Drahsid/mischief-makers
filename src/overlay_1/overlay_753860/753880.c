#include "common.h"
#include "actor.h"



extern void func_8002AC30(u16 actor_index, s32 arg1);
void func_8019B100_753880(u16 actor_index);
void func_8019B208_753988(u16 actor_index);
void func_8019B230_7539B0(u16 actor_index);
void func_8019B314_753A94(u16 actor_index);
void func_8019B468_753BE8(u16 actor_index);
void func_8019B60C_753D8C(u16 actor_index);
void func_8019B6A8_753E28(u16 actor_index);
void func_8019B730_753EB0(u16 actor_index);
void func_8019B848_753FC8(u16 actor_index);

u32 D_8019B850_753FD0[] = {
    0x08060400, 0x00130000, 0x00000020, 0x08048770,
    0x00130000, 0x00000020, 0x081287B0, 0x00130000,
    0x00000020, 0x08088440, 0x00140000, 0x00000020,
    0x08088440, 0x00000000, 0x00000020, 0x080A8490,
    0x00120000, 0x00000020, 0x080C8400, 0x00050000,
    0x00000020, 0x08008400, 0x00040000, 0x00000020,
    0x08028400, 0x00030000, 0x00000020, 0x080C8400,
    0x00020000, 0x00000020, 0x08008400, 0x00010000,
    0x00000020, 0x08028400, 0x00000000,
};

u32 D_8019B8DC_75405C[] = {
    0x00010000, 0x00000200, 0x00000002, 0x00010009,
    0x02000000, 0x00030002, 0x000A0200, 0x00000004,
    0x0003000C, 0x02000000, 0x00050004, 0x00080200,
    0x00000006, 0x0001FFF8, 0x02000000, 0x00070006,
    0xFFF90200, 0x00000008, 0x00010007, 0x02000000,
    0x00090008, 0xFFF20200, 0x0000000A, 0x0001FFF2,
    0x02000000, 0x000B000A, 0xFFF60200, 0x0000000C,
    0x00010009, 0x02000000, 0x000D000C, 0xFFFB0068,
    0x0000000E, 0x000DFFF9, 0x02000000, 0x000F000E,
    0xFFF60200, 0x00000010, 0x000FFFF7, 0x02000000,
    0x00110010, 0x00050000, 0x00000012, 0x00010008,
    0x02000000, 0x00130012, 0xFFFB0000, 0x00000014,
    0x0013FFF9, 0x02000000, 0x00150014, 0xFFF60200,
    0x00000016, 0x0015FFF7, 0x02000000, 0x00170016,
    0x00050000, 0x00007FFF,
};

u32 D_8019B9C4_754144[] = {
    0x00000000, 0x00000000, 0x00600000, 0x00800000,
    0x00000000, 0x0378FFFE, 0x00080000, 0x03200000,
    0x0318FFFA, 0x00080006, 0x00000000, 0x00480000,
    0x02880000, 0x01F80000, 0x03B00000, 0x01000000,
    0x00000000, 0x02D80000, 0x03280000, 0x01500000,
    0x03B00000, 0x01300000, 0x00000000, 0x02A80000,
};

u32 D_8019BA24_7541A4[] = {
    0x00000005, 0x00000000, 0x00600000, 0x00300000,
    0x00000000, 0x03E00000, 0x00080000, 0x03C00000,
    0x0318FFFA, 0x00800006, 0x00000000, 0x02F00000,
    0x02880000, 0x02400000, 0x03B00000, 0x00980000,
    0x00000000, 0x02D80000, 0x03280000, 0x01A80000,
    0x03B00000, 0x00A80003, 0x00000000, 0x02C00001,
};

u32 D_8019BA84_754204[] = {
    0x00010005, 0x00000000, 0x00600000, 0x00600000,
    0x00180000, 0x0380FFFE, 0x03E00000, 0x03700000,
    0x0318FFFA, 0x00200004, 0x00000000, 0x03480000,
    0x02880000, 0x02680000, 0x03B00000, 0x00300000,
    0x00000000, 0x03380000, 0x03500000, 0x01F80002,
    0x03D00000, 0x00000003, 0x00000000, 0x02E00001,
};

u32 D_8019BAE4_754264[] = {
    0x00020005, 0x00000000, 0x00500000, 0x00300000,
    0x00180000, 0x03E00000, 0x00080000, 0x00080000,
    0x0318FFFA, 0x00C00006, 0x00000000, 0x02F00000,
    0x0240FFFD, 0x02400000, 0x03B0FFFF, 0x01A00000,
    0x03D80000, 0x01880000, 0x03280000, 0x01980000,
    0x03B00000, 0x00A80003, 0x00000000, 0x02E00001,
};

u32 D_8019BB44_7542C4[] = {
    0x00010009, 0x00000000, 0x00780000, 0x00500000,
    0x00100000, 0x0340FFFD, 0x00080000, 0x03C00000,
    0x0318FFFA, 0x00800006, 0x00000000, 0x03400000,
    0x02F0FFFE, 0x02700000, 0x03B00000, 0x01100000,
    0x03C00000, 0x01A00000, 0x02C80000, 0x0238FFFE,
    0x03A80000, 0x00400003, 0x00000000, 0x03180001,
};

u32 D_8019BBA4_754324[] = {
    0x00010006, 0x00000000, 0x00600000, 0x00600000,
    0x00000000, 0x03B0FFFE, 0x03E00000, 0x03700000,
    0x0318FFFA, 0x00200004, 0x00000000, 0x03480000,
    0x0328FFFF, 0x02400000, 0x03C80000, 0x03F00000,
    0x00000000, 0x02F00000, 0x02C00000, 0x02300001,
    0x03B0FFFF, 0x00380003, 0x00000000, 0x03280001,
};

u32 D_8019BC04_754384[] = {
    0x00010002, 0x00000000, 0x00500000, 0x00300000,
    0x00180000, 0x03E00000, 0x00080000, 0x00080000,
    0x0318FFFA, 0x00C00006, 0x00000000, 0x02F00000,
    0x02F0FFFF, 0x01B80000, 0x0390FFFF, 0x00F00000,
    0x03E80000, 0x02F00000, 0x02E80000, 0x01400000,
    0x03B0FFFF, 0x02000003, 0x00000000, 0x01900001,
};

u32 D_8019BC64_7543E4[] = {
    0x00000005, 0x00000000, 0x00780000, 0x00500000,
    0x00100000, 0x0340FFFD, 0x00080000, 0x03C00000,
    0x0318FFFA, 0x00800006, 0x00000000, 0x03400000,
    0x02900000, 0x02880000, 0x03A00001, 0x00380000,
    0x03F80000, 0x03100000, 0x0328FFFD, 0x0238FFFE,
    0x03D00001, 0x01080003, 0x03D80001, 0x01600001,
};

u32* D_8019BCC4_754444[] = {
    D_8019B9C4_754144, D_8019BA24_7541A4, D_8019BA84_754204, D_8019BAE4_754264,
    D_8019BB44_7542C4, D_8019BBA4_754324, D_8019BC04_754384, D_8019BC64_7543E4,
    D_8019B9C4_754144, D_8019B9C4_754144, D_8019B9C4_754144, D_8019B9C4_754144,
    D_8019B9C4_754144, D_8019B9C4_754144,
};

u32 D_8019BCFC_75447C[] = {
    0x00000020, 0x001C0000, 0x00100004, 0x0000000A,
    0x00000001, 0x0020001C, 0x00010018, 0x00040001,
    0x000A0000, 0x7FFE0000,
};

u32 D_8019BD24_7544A4[] = {
    0x00030008, 0x00000004, 0x00080000, 0x00050008,
    0x00007FFD, 0x00010006, 0x00080000, 0x00070008,
    0x00000002, 0x00080000, 0x7FFD0001, 0x7FFE0000,
    0x00000000, 0x00000000, 0x00000000,
};

void func_8019B100_753880(u16 actor_index) {
    gActors[actor_index].velocityX = Math_ApproachS32(gActors[actor_index].velocityX, 0, gActors[actor_index + 1].unk_12C * 2048.0f);

    if (gActors[actor_index].unk_16C & 1) {
        gActors[actor_index].velocityX = 81920.0f * gActors[actor_index + 1].unk_12C * gActors[actor_index + 1].unk_130;
    }
}

void func_8019B208_753988(u16 actor_index) {
    func_8019B100_753880(actor_index);
}

void func_8019B230_7539B0(u16 actor_index) {
    func_80026E60(0x14);
    func_8001E2D0(actor_index);
    gActors[actor_index].unk_094 |= 1;
    gActors[actor_index].flags = 0x3403;
    func_8002AC30(actor_index, 4);
    func_8008105C(actor_index, D_8019B8DC_75405C, D_8019B850_753FD0);
    gActors[actor_index].unk_178 = (s32)D_8019BCC4_754444;
    func_80081478(actor_index, D_8019B8DC_75405C, 0);
    func_80081790(actor_index, D_8019BCFC_75447C);
    func_800819A8(actor_index, (s16*)D_8019B8DC_75405C);
    gActors[actor_index].colorA = 0xFE;
}

void func_8019B314_753A94(u16 actor_index) {
    if (gActors[actor_index].state != 0) {
        gActors[actor_index + 1].unk_180 &= 0xFF7FFCFF;
        gActors[actor_index + 6].unk_180 = gActors[actor_index].posX.whole + D_800BE558;
        gActors[actor_index + 7].unk_180 = gActors[actor_index].posY.whole + D_800BE55C;

        if (gActors[actor_index + 6].unk_180 < D_800BE568) {
            gActors[actor_index + 1].unk_180 |= 0x100;
            gActors[actor_index].posX.whole = -0x8F;
        }

        if (D_800BE56C < gActors[actor_index + 6].unk_180) {
            gActors[actor_index + 1].unk_180 |= 0x200;
            gActors[actor_index].posX.whole = 0x8F;
        }

        D_800E3580 = 0;
        func_8002AA20(actor_index, 0);
        func_800819A8(actor_index, (s16*)D_8019B8DC_75405C);
        gActors[actor_index + 1].unk_12C = ((f32)gActors[actor_index].unk_168) / 10000.0f;
    }
}

void func_8019B468_753BE8(u16 actor_index) {
    if (gActors[actor_index].flags & 0x20) {
        gActors[actor_index + 1].unk_130 = -1.0f;
        gActors[actor_index].unk_138 = 1.0f;
    }
    else {
        gActors[actor_index + 1].unk_130 = 1.0f;
        gActors[actor_index].unk_138 = 0.0f;
    }

    gActors[actor_index].unk_0AE = (s16)(gActors[actor_index + 1].unk_12C * 28.0f);
    gActors[actor_index].unk_0B0 = (s16)(gActors[actor_index + 1].unk_12C * -34.0f);
    gActors[actor_index].unk_0AA = (s16)(gActors[actor_index + 1].unk_12C * -12.0f);
    gActors[actor_index].unk_0AC = (s16)(gActors[actor_index + 1].unk_12C * 12.0f);
    gActors[actor_index].unk_098 &= 0xFFDFF9FF;
}

void func_8019B60C_753D8C(u16 actor_index) {
    func_80083BD8(D_800E3584 >> 16, gActors[actor_index].posX.whole, 0);
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].flags ^= 0x20;
    }
    else {
        gActors[actor_index].state = 0x20;
    }
}

void func_8019B6A8_753E28(u16 actor_index) {
    func_80083BD8(D_800E3584 >> 16, gActors[actor_index].posX.whole, 0);
    if (D_800E3584 & 0xC0000) {
        gActors[actor_index].state = 0x10;
    }
}

void func_8019B730_753EB0(u16 actor_index) {
    s32 unused[2];

    func_8019B314_753A94(actor_index);

    switch (gActors[actor_index].state) {
        case 0:
            func_8019B230_7539B0(actor_index);
            gActors[actor_index].state = 0x10;
            break;

        case 0x10:
            gActors[actor_index].state++;
            gActors[actor_index].flags &= 0xFFFDFFFF;\
            gActors[actor_index].flags |= 0x10000;
            gActors[actor_index].velocityY = 0;
            func_80081790(actor_index, D_8019BCFC_75447C);

        case 0x11:
            func_8019B60C_753D8C(actor_index);
            break;

        case 0x20:
            gActors[actor_index].state++;
            func_80081790(actor_index, D_8019BD24_7544A4);

        case 0x21:
            func_8019B208_753988(actor_index);
            func_8019B6A8_753E28(actor_index);
            break;
    }

    func_8019B468_753BE8(actor_index);
}

void func_8019B848_753FC8(u16 actor_index) {
}
