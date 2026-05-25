#include "common.h"
#include "actor.h"

extern s16 D_800D2924;
extern s16 D_80104098[];
extern void func_80064AA0(s32 arg0, void* arg1);
extern s32 D_800BE5F4;

extern s16 D_801BA636_7E7786;
extern u32 D_801BA540_7E7690[];
extern u32 D_801BA56C_7E76BC[];
extern u32 D_801BA63C_7E778C[];
extern u32 D_801BA65C_7E77AC[];
extern u32 D_801BA66C_7E77BC[];
extern u32 D_801BA6A0_7E77F0[];
extern u32 D_801BA700_7E7850[];
extern u32 D_801BA704_7E7854[];
extern u32 D_801BA714_7E7864[];
extern u32 D_801BA724_7E7874[];
extern u32 D_801BA734_7E7884[];
extern u32 D_801BA744_7E7894[];
extern u32 D_801BA754_7E78A4[];
extern u32 D_801BA764_7E78B4[];
extern u32 D_801BA774_7E78C4[];
extern u16 D_801BA7A4_7E78F4[];
extern u32 D_801BA794_7E78E4[];
extern u32 D_801BA9A4_7E7AF4[];
extern u32 D_801BAA08_7E7B58[];
extern u32 D_801BAB78_7E7CC8[];
extern u32 D_801BA784_7E78D4[];
extern u32 D_801BACCC_7E7E1C[];
extern u32 D_801BACDC_7E7E2C[];
extern u32 D_801BACE0_7E7E30[];
extern u32 D_801BACF0_7E7E40[];
extern u32 D_801BAD00_7E7E50[];
extern u32 D_801BAD04_7E7E54[];


typedef struct {
    /* 0x00 */ u16 unk_00;
    /* 0x02 */ u8 unk_02[0x2];
    /* 0x04 */ void* unk_04;
    /* 0x08 */ void* unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
} UnkStruct_801BA6B0; /* size = 0x14 */

extern UnkStruct_801BA6B0 D_801BA6B0_7E7800[];

u32 D_801BA540_7E7690[] = {
    0x00000090, 0x09900253, 0x00000000, 0x000D0000,
    0x00910990, 0x02530200, 0x0000000D, 0x00000092,
    0x00000000, 0x00000000, 0x005EFF00,
};

u32 D_801BA56C_7E76BC[] = {
    0x084D088F, 0x08CF088D, 0x111108D1, 0x11511953,
    0x10CF1995, 0x19930911, 0x09D31215, 0x0A151A15,
    0x11931213, 0x1A190993, 0x11D30A13, 0x11D50191,
    0x0A5309D1, 0x19D509D5, 0x12551253, 0x09910193,
    0x0A551153, 0x0151014F, 0x0A19125B, 0x1A9F129F,
    0x1AA11B25, 0x1B211B69, 0x236923ED, 0x242D0A1B,
    0x1A5B1B65, 0x34B734BB, 0x2CBB2C37, 0x243123E9,
    0x0A5B1259, 0x231F2CB7, 0x2CB12C31, 0x3D373537,
    0x1A592BE9, 0x3D3B45BB, 0x463B23F1, 0x125F2365,
    0x353F3DB7, 0x4637353B, 0x3DBF45B7, 0x4E3B1BE9,
    0x4E37563B, 0x121956FB, 0x129B3DBB, 0x4EFF46FF,
    0x4EFB463F, 0x232112A1, 0x2D3B0887, 0x0889110B,
    0x29D1214D, 0x298F3A13,
};

u32 D_801BA634_7E7784 = 0x10C9FFFF;

u32 D_801BA638_7E7788 = 0x00000000;

u32 D_801BA63C_7E778C[] = {
    0x1000027F, 0x00007FFF, 0x0574020F, 0xFFE0FFEB,
    0x00000048, 0x100001B0, 0x00000000, 0x1F01FF00,
};

u32 D_801BA65C_7E77AC[] = {
    0x00000030, 0x00000000, 0x00000002, 0x006EFF00,
};

u32 D_801BA66C_7E77BC[] = {
    0x00000030, 0x10000290, 0x00000000, 0x1F010000,
    0x00501100, 0x02900000, 0x00001F03, 0xFF000000,
    0x00000000, 0x00000030, 0x10000290, 0x00000000,
    0x1F01FF00,
};

u32 D_801BA6A0_7E77F0[] = {
    0x0200027F, 0x00003100, 0x02EF020F, 0xFFE0FFEB,
};

UnkStruct_801BA6B0 D_801BA6B0_7E7800[] = {
    { 0x0600, { 0 }, D_801BA704_7E7854, D_801BA714_7E7864, (s32)D_801BA700_7E7850, 0x0200, 0x0800 },
    { 0x1100, { 0 }, D_801BA724_7E7874, D_801BA734_7E7884, (s32)D_801BA700_7E7850, 0x0800, 0x1300 },
    { 0x1E00, { 0 }, D_801BA744_7E7894, D_801BA754_7E78A4, (s32)D_801BA700_7E7850, 0x1300, 0x2000 },
    { 0x2C00, { 0 }, D_801BA764_7E78B4, D_801BA774_7E78C4, (s32)D_801BA700_7E7850, 0x2000, 0x2E00 },
};

u32 D_801BA700_7E7850[] = {
    0x00000000,
};

u32 D_801BA704_7E7854[] = {
    0x00000031, 0x00000000, 0x00000000, 0x2900FF00,
};

u32 D_801BA714_7E7864[] = {
    0x00000080, 0x07C00260, 0x00010060, 0x2906FF00,
};

u32 D_801BA724_7E7874[] = {
    0x00000031, 0x00000000, 0x00000001, 0x2900FF00,
};

u32 D_801BA734_7E7884[] = {
    0x00000080, 0x12C00260, 0x21010060, 0x2906FF00,
};

u32 D_801BA744_7E7894[] = {
    0x00000031, 0x00000000, 0x00000002, 0x2900FF00,
};

u32 D_801BA754_7E78A4[] = {
    0x00000080, 0x1FC00260, 0x22010060, 0x2906FF00,
};

u32 D_801BA764_7E78B4[] = {
    0x00000031, 0x00000000, 0x00000003, 0x2900FF00,
};

u32 D_801BA774_7E78C4[] = {
    0x00000080, 0x2DC00260, 0x23010060, 0x2906FF00,
};

u32 D_801BA784_7E78D4[] = {
    0x00000030, 0x2DC002A0, 0x00810000, 0x0032FF00,
};

u32 D_801BA794_7E78E4[] = {
    0x01A0027F, 0x010019A0, 0x0574020F, 0xFFE0FFEB,
};

u16 D_801BA7A4_7E78F4[] = {
    0x0005, 0xF7BD, 0x6319, 0x5AD7, 0x4A53, 0x4211, 0x39CF, 0x318D,
    0x294B, 0x2109, 0x18C7, 0x1085, 0x0843, 0xFFBD, 0xF77B, 0xDEB5,
    0xCE31, 0xC5EF, 0xD631, 0xCDEF, 0xC5AD, 0xBD6B, 0xB529, 0x5A95,
    0xA4A5, 0xE673, 0x9421, 0x7B5B, 0x41CF, 0xB4E7, 0xA463, 0x9C21,
    0x314B, 0x93DF, 0x8B9D, 0x5A53, 0x835B, 0x7B19, 0x5211, 0x2909,
    0x72D7, 0x49CF, 0x6A95, 0x6253, 0x418D, 0x9B9D, 0x5A11, 0x20C7,
    0x8B19, 0x51CF, 0x3109, 0x1885, 0x498D, 0x59CF, 0x414B, 0x8A95,
    0x3909, 0x61CF, 0x7211, 0x9295, 0x494B, 0x598D, 0x4109, 0x1043,
    0x71CF, 0x30C7, 0x2085, 0x38C7, 0x2885, 0x40C7, 0x1843, 0x48C7,
    0x50C7, 0x4085, 0x2043, 0x68C7, 0x4885, 0x78C7, 0x80C7, 0x90C7,
    0x6085, 0xA0C7, 0x7085, 0x7885, 0x8085, 0x4043, 0x9085, 0x5843,
    0x7043, 0x2801, 0x2001, 0x1801, 0x1001, 0x58C5, 0x5083, 0x5883,
    0x3841, 0x3041, 0x4907, 0x2841, 0x30C5, 0x2883, 0x28C5, 0x2083,
    0x3949, 0x3107, 0x4189, 0x20C5, 0x30C1, 0x398B, 0x3947, 0x1883,
    0x3903, 0x628F, 0x3103, 0x20C3, 0x5A91, 0x3989, 0xB567, 0x62D1,
    0xBDA7, 0x9C9F, 0x5A8F, 0x5A8D, 0xEF79, 0xB5AB, 0x7BDD, 0xDEF3,
    0xD6B1, 0xC62D, 0x5293, 0xA525, 0x9CE3, 0x7BDB, 0x420F, 0x949F,
    0x6315, 0x8C5D, 0xAD63, 0xA521, 0x7397, 0x949D, 0x8419, 0x6313,
    0x420D, 0x7BD7, 0x7395, 0x6B53, 0x528F, 0x18C5, 0x4A4D, 0x5ACF,
    0x420B, 0x4A4B, 0x6B4F, 0x528B, 0x1083, 0x630D, 0x3187, 0x2105,
    0x424D, 0x10C5, 0x10C7, 0x0043, 0x110B, 0x110D, 0x10C9, 0x10CB,
    0x2993, 0x8423, 0x6B5D, 0x4213, 0x294D, 0x4A57, 0x4215, 0x39D3,
    0x3191, 0x4217, 0x294F, 0x4A5B, 0x39D5, 0x210D, 0x529F, 0x4219,
    0x2951, 0x18CB, 0x18CD, 0x1089, 0x108B, 0x0849, 0x0007, 0x0005,
    0x0003, 0x188D, 0x290F, 0x188B, 0x1049, 0x41D5, 0x20CB, 0x1849,
    0x28CD, 0x208B, 0x1007, 0x20C9, 0x310D, 0x2089, 0x288B, 0x1847,
    0x2049, 0x1005, 0x30CB, 0x5A15, 0x390D, 0x414F, 0x2047, 0xD633,
    0x5213, 0x394D, 0x38CB, 0x1845, 0x3089, 0x1003, 0xC5AF, 0x6215,
    0x3007, 0x2005, 0x40CB, 0x72D9, 0x51D1, 0x30C9, 0x7B1B, 0x5A13,
    0x390B, 0x835D, 0x6A97, 0x6255, 0x2887, 0x2045, 0x3847, 0x3005,
    0x4889, 0x59D1, 0x939F, 0x831B, 0x7297, 0x2845, 0x4005, 0x2003,
    0x48C9, 0x6889, 0x4845, 0x5845, 0x6887, 0x8045, 0x0001, 0xF800,
};

u32 D_801BA9A4_7E7AF4[] = {
    0x00500300, 0x02B00050, 0x03300290, 0x00500360,
    0x02B00051, 0x03C002E0, 0x005103F0, 0x03000051,
    0x042002E0, 0x005116C0, 0x04B00051, 0x16F00480,
    0x005116F0, 0x04B00051, 0x16F004E0, 0x00511720,
    0x04B00050, 0x17E004B0, 0x00501810, 0x04800050,
    0x181004B0, 0x00501810, 0x04E00050, 0x184004B0,
    0x00000000,
};

u32 D_801BAA08_7E7B58[] = {
    0x00000030, 0x01A00290, 0x00000000, 0x1F020000,
    0x00700200, 0x02A00000, 0x0000290F, 0x00000092,
    0x020002A0, 0x00000000, 0x29120000, 0x00930200,
    0x02A00000, 0x00012912, 0x0000004A, 0x05C00300,
    0x02110000, 0x29110000, 0x004B0680, 0x03180311,
    0x00002911, 0x0000004C, 0x07400330, 0x04110000,
    0x29110000, 0x004D0800, 0x03480511, 0x00002911,
    0x0000004E, 0x08C00360, 0x06110000, 0x29110000,
    0x004F0980, 0x03780711, 0x00002911, 0x00000050,
    0x0A400390, 0x00110000, 0x29110000, 0x00510B00,
    0x03A80111, 0x00002911, 0x00000052, 0x0BC003C0,
    0x02110000, 0x29110000, 0x00530C80, 0x03D80311,
    0x00002911, 0x00000054, 0x0D4003F0, 0x04110000,
    0x29110000, 0x00550E00, 0x04080511, 0x00002911,
    0x00000056, 0x0EC00420, 0x06110000, 0x29110000,
    0x00570F80, 0x04380711, 0x00002911, 0x00000058,
    0x10400450, 0x00110000, 0x29110000, 0x00591100,
    0x04680111, 0x00002911, 0x0000005A, 0x11C00480,
    0x02110000, 0x29110000, 0x005B1280, 0x04980311,
    0x00002911, 0x0000005C, 0x134004B0, 0x04110000,
    0x29110000, 0x005D1400, 0x04C80511, 0x00002911,
    0x0000005E, 0x14C004E0, 0x06110000, 0x29110000,
    0x005F1580, 0x04C80711, 0x00002911, 0xFF000000,
};

u32 D_801BAB78_7E7CC8[] = {
    0x00000060, 0x16F004B0, 0x01000004, 0x004C0000,
    0x006116F0, 0x04B00200, 0x0005004C, 0x00000062,
    0x16F004B0, 0x00000006, 0x004C0000, 0x006316F0,
    0x04B00100, 0x0007004C, 0x00000064, 0x16F004B0,
    0x02000008, 0x004C0000, 0x006516F0, 0x04B00000,
    0x0009004C, 0x00000066, 0x16F004B0, 0x0100000A,
    0x004C0000, 0x006716F0, 0x04B00200, 0x000B004C,
    0x00000068, 0x181004B0, 0x0100000C, 0x004C0000,
    0x00691810, 0x04B00200, 0x000D004C, 0x0000006A,
    0x181004B0, 0x0000000E, 0x004C0000, 0x006B1810,
    0x04B00100, 0x000F004C, 0x0000006C, 0x181004B0,
    0x02000010, 0x004C0000, 0x006D1810, 0x04B00000,
    0x0011004C, 0x0000006E, 0x181004B0, 0x01000012,
    0x004C0000, 0x006F1810, 0x04B00200, 0x0013004C,
    0x00000088, 0x19100428, 0x00140003, 0x291A0000,
    0x00891910, 0x04280015, 0x0004291A, 0x0000008A,
    0x19100428, 0x00140005, 0x291A0000, 0x008B1970,
    0x04580000, 0x0000291A, 0x0000008C, 0x19700458,
    0x00090000, 0x291A0000, 0x008D1A30, 0x04580000,
    0x0000291A, 0x0000008E, 0x1A300458, 0x00090000,
    0x291A0000, 0x008F19A0, 0x04D00081, 0x00000032,
    0xFF000000,
};

u32 D_801BACCC_7E7E1C[] = {
    0x1000019C, 0x00007FFF, 0x020C012C, 0xFFE0FFEB,
};

u32 D_801BACDC_7E7E2C[] = {
    0x00000000,
};

u32 D_801BACE0_7E7E30[] = {
    0x0000008F, 0x100001B0, 0x00010000, 0x0032FF00,
};

u32 D_801BACF0_7E7E40[] = {
    0x1000019C, 0x00007FFF, 0x020C012C, 0xFFE0FFEB,
};

u32 D_801BAD00_7E7E50[] = {
    0x00000000,
};

u32 D_801BAD04_7E7E54[] = {
    0x0000008F, 0x100001B0, 0x00010000, 0x0032FF00,
    0x00000000, 0x00000000, 0x00000000,
};

void func_801B9900_7E6A50(u16 actor_index);
void func_801B996C_7E6ABC(void);
void func_801B99F4_7E6B44(u16 arg0);
void func_801B9A08_7E6B58(void);
s32 func_801B9DAC_7E6EFC(void);
void func_801B9E7C_7E6FCC(void);
void func_801B9F50_7E70A0(void);
void func_801B9FB4_7E7104(void);
void func_801B9FC8_7E7118(void);
void func_801BA1DC_7E732C(void);
void func_801BA3C4_7E7514(void);
void func_801BA480_7E75D0(void);

void func_801B9900_7E6A50(u16 actor_index) {
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].unk_18C = (s32)D_801BA56C_7E76BC;
    Actor_SetColorRgb(actor_index, 8);
}

void func_801B996C_7E6ABC(void) {
    s32 temp;

    if ((gActors[0x90].actorType == 0xD) && ((gActors[0x90].flags & ACTOR_FLAG_ACTIVE) != 0)) {
        func_801B9900_7E6A50(0x90);
        func_801B9900_7E6A50(0x91);
    }

    temp = (s16)func_800456DC();
    D_801BA636_7E7786 = Palette_AdjustRgb5551(0x47DF, temp, temp, temp);
}

void func_801B99F4_7E6B44(u16 arg0) {
    D_800BE73C = 0x60000;
}

void func_801B9A08_7E6B58(void) {
    if ((gButtonPress & D_800BE530) != 0) {
        D_800CC428 = 1;
    }

    switch (D_800D28E8) {
        case 0:
            D_800D28E8 = 0x100;
            break;

        case 0x100:
            D_800D28E8 = 0x300;
            break;

        case 0x101:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE5F4 = 5;
                D_800D2928 = 0x3C;
                Sound_StartFade(0x81, 0x37);
            }
            break;

        case 0x102:
            func_801B99F4_7E6B44(0x30);
            D_800D2928--;
            if (D_800D2928 < 0) {
                D_800D28E8 = 0x200;
            }
            break;

        case 0x200:
            D_800D28E8++;
            Actor_ClearSceneActors();
            func_80045FA4(D_801BA63C_7E778C, 0);
            D_800BE5F4 = 4;
            D_800BE544 = 0x8000;
            D_800BE6E4 = 0;
            D_800BE6E8 = 0;
            D_800BE6EC = 0;
            Actor_LoadSpawnTable(D_801BA65C_7E77AC);
            func_80046A9C();
            Sound_PlayMusic(3);

        case 0x201:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
            }
            break;

        case 0x202:
            if (((gButtonPress & D_800BE52C) != 0) || (gActors[0x30].flags == 0)) {
                D_800D2938 = 0;
                D_800D28E8 = 0x300;
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800D2928 = 1;
            }
            D_800BE73C = 0;
            break;

        case 0x300:
            D_800D28E8++;
            func_80045FA4(D_801BA63C_7E778C, 0);
            Actor_LoadSpawnTable(D_801BA540_7E7690);
            Actor_LoadSpawnTable(D_801BA66C_7E77BC);
            D_80104098[0x1444] = -0x58;
            D_80104098[0x1494] = -0x55;
            D_800BE6E4 = 1;
            D_800BE6EC = 1;
            func_801B99F4_7E6B44(0x30);

        case 0x301:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE5F4 = 5;
            }
            break;

        case 0x302:
            if (gActors[0x50].flags == 0) {
                D_800D28E8++;
            }
            func_801B99F4_7E6B44(0x30);
            break;

        case 0x303:
            D_800D28E8++;
            D_800D2928 = 0x78;

        case 0x304:
            D_800D2928--;
            if (D_800D2928 < 0) {
                D_800D28E4 = 0x64;
            }
            func_801B99F4_7E6B44(0x30);
            break;
    }

    func_801B996C_7E6ABC();
}

s32 func_801B9DAC_7E6EFC(void) {
    if (D_801BA6B0_7E7800[D_800D2928].unk_10 < D_800BE558) {
        gActors[0x31].var_15C |= 2;
    }

    if (D_801BA6B0_7E7800[D_800D2928].unk_00 < D_800BE558) {
        Actor_LoadSpawnTable(D_801BA6B0_7E7800[D_800D2928].unk_08);
        D_800BE568 = D_801BA6B0_7E7800[D_800D2928].unk_00 - 0x90;
        gActors[0x31].var_15C |= 1;
        return TRUE;
    }

    return FALSE;
}

void func_801B9E7C_7E6FCC(void) {
    UnkStruct_801BA6B0* entry;
    s32 temp;

    if (D_800D2928 < 4) {
        func_80045FA4(D_801BA6A0_7E77F0, D_801BA6B0_7E7800[D_800D2928].unk_0C);

        entry = &D_801BA6B0_7E7800[D_800D2928];
        temp = entry->unk_10;
        D_800BE568 = temp - 0x90;
        D_800BE56C = entry->unk_12 + 0x90;
        D_800BE570 = 0x2EF;
        D_800BE574 = 0x20F;
        D_800BE558 = temp + 0x90;
        D_800BE55C = 0x27F;
        gActors[0].posX.whole = -0x90;
        gActors[0].posY.whole = -0x15;
    }
}

void func_801B9F50_7E70A0(void) {
    u16 temp_s0;
    u16 temp_s1;

    temp_s0 = D_800BE568;
    temp_s1 = D_800BE56C;
    func_801B9E7C_7E6FCC();
    Actor_LoadSpawnTable(D_801BA540_7E7690);
    D_800D292C = D_800BE56C;
    D_800BE568 = temp_s0;
    D_800BE56C = temp_s1;
}

void func_801B9FB4_7E7104(void) {
    D_800BE56C = D_800D292C;
}

void func_801B9FC8_7E7118(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D2928 = 0;
            Palette_AdjustScenePalettes(1, 2, 0, 0, 1, 2, 2, 1, 0);
            func_801B9E7C_7E6FCC();
            Actor_LoadSpawnTable(D_801BA540_7E7690);
            Actor_LoadSpawnTable(D_801BA704_7E7854);
            D_800D28E8++;
            D_800D2930 = 0;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
            }
            break;

        case 2:
            if (func_801B9DAC_7E6EFC() != 0) {
                D_800D28E8++;
            }
            break;

        case 3:
            if (gActors[0x80].flags == 0) {
                D_800D28E8++;
                Actor_ClearSceneActors();
                func_8003D628(0);
                D_800D2928++;
                D_800D2930 = 0xA;
            }
            break;

        case 4:
            D_800D2930--;
            if (D_800D2930 <= 0) {
                D_800D28E8++;
                func_801B9F50_7E70A0();
                return;
            }
            break;

        case 6:
            func_801B9FB4_7E7104();
            if (D_800D2928 >= 4) {
                D_800D28E8++;
                func_80064AA0(1, D_801BA784_7E78D4);
                return;
            }
            D_800D28E8 = 1;
            Actor_LoadSpawnTable(D_801BA6B0_7E7800[D_800D2928].unk_04);
            break;

        case 5:
        case 7:
            break;
    }
}

void func_801BA1DC_7E732C(void) {
    u16 index;
    u16* base;
    u16* src16;
    u16* dst16;
    u32* src;
    u32* dst;

    switch (D_800D28E8) {
        case 0:
            base = (u16*)0x80380400;
            src = (u32*)base;
            dst16 = base;
            src16 = D_801BA7A4_7E78F4;
            for (index = 0; index < 0x100; index++) {
                *dst16++ = *src16++;
            }

            dst = (u32*)0x803DA600;
            index = 0;
            src = (u32*)base;
            for (; index < 0x80; index++) {
                *dst++ = *src++;
            }

            Palette_AdjustScenePalettes(1, 2, 0, 0, 1, 2, 2, 1, 0);
            Palette_AdjustRgb5551Array((void*)0x802F8068, (void*)0x802F7E68, 0xFF, -2, -3, -4);
            func_80045FA4(D_801BA794_7E78E4, (s32)D_801BA9A4_7E7AF4);
            if (!D_801BA7A4_7E78F4) {
            }
            D_800D2924 = 0x2000;
            Actor_LoadSpawnTable(D_801BA540_7E7690);
            Actor_LoadSpawnTable(D_801BAA08_7E7B58);
            D_800D28E8++;

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28FC |= 8;
                D_800BE5F4 = 5;
                D_800D28E8++;
            }
            break;

        case 2:
            if (D_800BE558 >= 0x1601) {
                Actor_LoadSpawnTable(D_801BAB78_7E7CC8);
                D_800D28E8++;
            }
            break;

        case 3:
            break;
    }
}

void func_801BA3C4_7E7514(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BACCC_7E7E1C, (s32)D_801BACDC_7E7E2C);
            Actor_LoadSpawnTable(D_801BA540_7E7690);
            Actor_LoadSpawnTable(D_801BACE0_7E7E30);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE5F4 = 5;
            }
            break;

        case 2:
            break;
    }
}

void func_801BA480_7E75D0(void) {
    switch (D_800D28E8) {
        case 0:
            D_800D28E8++;
            func_80045FA4(D_801BACF0_7E7E40, (s32)D_801BAD00_7E7E50);
            Actor_LoadSpawnTable(D_801BA540_7E7690);
            Actor_LoadSpawnTable(D_801BAD04_7E7E54);

        case 1:
            if (func_80046D5C() != 0) {
                D_800D28E8++;
                D_800D28FC |= 8;
                D_800BE5F4 = 5;
            }
            break;

        case 2:
            break;
    }
}
