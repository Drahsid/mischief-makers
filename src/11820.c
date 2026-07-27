#include "common.h"
#include "11820.h"

// from A540 .data?
extern u8 D_800C6020[];
extern u8 D_800C60A0[];
extern u8 D_800C61A0[];
extern u8 D_800C62A0[];
extern u8 D_800C63A0[];
extern u8 D_800C64A0[];
extern u8 D_800C65A0[];
extern u8 D_800C66A0[];
extern u8 D_800C67A0[];
extern u8 D_800C68A0[];
extern u8 D_800C69A0[];
extern u8 D_800C6AA0[];
extern u8 D_800C6BA0[];
extern u8 D_800C6CA0[];
extern u8 D_800C6DA0[];
extern u8 D_800C6EA0[];
extern u8 D_800C6FA0[];
extern u8 D_800C70A0[];
extern u8 D_800C75A0[];
extern u8 D_800C76A0[];

// .data
u16 D_800C78A0[] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00B6, 0x0067,
    0x0036, 0x003C, 0x0036, 0x003C, 0x003C, 0x0000, 0x00B6, 0x0040,
    0x0040, 0x0040, 0x0040, 0x0040, 0x006C, 0x0000, 0x006C, 0x0036,
    0x0036, 0x0040, 0x0040, 0x0040, 0x0036, 0x0040, 0x0040, 0x003C,
    0x003C, 0x003C, 0x003C, 0x003C, 0x003C, 0x0000, 0x0000, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0000, 0x0000, 0x004D, 0x0000,
    0x004D, 0x004D, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0040,
    0x0036, 0x00B6, 0x0036, 0x004D, 0x0000, 0x0000, 0x0000, 0x003C,
    0x003C, 0x0036, 0x0036, 0x0036, 0x0036, 0x006C, 0x006C, 0x0036,
    0x006C, 0x006C, 0x006C, 0x006C, 0x006C, 0x006C, 0x006C, 0x006C
};

u8* D_800C7950[] = {
    D_800C61A0, D_800C66A0, D_800C60A0, D_800C60A0,
    D_800C60A0, D_800C69A0, D_800C6020, D_800C63A0,
    D_800C6020, D_800C6BA0, D_800C6DA0, D_800C6020,
    D_800C6020, D_800C68A0, D_800C6020, D_800C60A0,
    D_800C60A0, D_800C60A0, D_800C60A0, D_800C60A0,
    D_800C70A0, D_800C60A0, D_800C70A0, D_800C6DA0,
    D_800C6EA0, D_800C6CA0, D_800C6CA0, D_800C6CA0,
    D_800C6020, D_800C60A0, D_800C60A0, D_800C6020,
    D_800C6020, D_800C6020, D_800C6020, D_800C6020,
    D_800C6BA0, D_800C66A0, D_800C66A0, D_800C6DA0,
    D_800C6EA0, D_800C6EA0, D_800C6EA0, D_800C6DA0,
    D_800C6DA0, D_800C6DA0, D_800C6DA0, D_800C6EA0,
    D_800C6EA0, D_800C6DA0, D_800C6DA0, D_800C6DA0,
    D_800C61A0, D_800C61A0, D_800C63A0, D_800C61A0,
    D_800C63A0, D_800C63A0, D_800C61A0, D_800C66A0,
    D_800C67A0, D_800C66A0, D_800C66A0, D_800C60A0,
    D_800C6020, D_800C6020, D_800C6020, D_800C63A0,
    D_800C61A0, D_800C66A0, D_800C66A0, D_800C6020,
    D_800C6020, D_800C6DA0, D_800C6DA0, D_800C6DA0,
    D_800C6DA0, D_800C70A0, D_800C70A0, D_800C6020,
    D_800C70A0, D_800C70A0, D_800C70A0, D_800C70A0,
    D_800C70A0, D_800C70A0, D_800C70A0, D_800C70A0
};

u16 D_800C7AB0[] = {
    0x0040, 0x0000, 0x0001, 0x0001, 0x0001, 0x0000, 0x0080, 0x0036,
    0x0000, 0x0036, 0x0036, 0x0036, 0x0036, 0x0000, 0x0080, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0052, 0x0001, 0x0052, 0x0036,
    0x0036, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0000, 0x0000, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0040, 0x0040, 0x0022, 0x0040,
    0x0022, 0x0022, 0x0040, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0080, 0x0000, 0x0022, 0x0040, 0x0000, 0x0000, 0x0036,
    0x0036, 0x0036, 0x0036, 0x0036, 0x0036, 0x0052, 0x0052, 0x0000,
    0x0052, 0x0052, 0x0052, 0x0052, 0x0052, 0x0052, 0x0052, 0x0052
};

u8* D_800C7B60[] = {
    D_800C62A0, D_800C60A0, D_800C60A0, D_800C60A0,
    D_800C60A0, D_800C6AA0, D_800C65A0, D_800C6020,
    D_800C6020, D_800C6020, D_800C6FA0, D_800C6020,
    D_800C6020, D_800C60A0, D_800C64A0, D_800C6CA0,
    D_800C6CA0, D_800C6CA0, D_800C6CA0, D_800C6CA0,
    D_800C75A0, D_800C60A0, D_800C76A0, D_800C6FA0,
    D_800C6FA0, D_800C6CA0, D_800C6CA0, D_800C6CA0,
    D_800C6020, D_800C6CA0, D_800C6CA0, D_800C6020,
    D_800C6020, D_800C6020, D_800C6020, D_800C6020,
    D_800C6020, D_800C60A0, D_800C60A0, D_800C6FA0,
    D_800C6FA0, D_800C6FA0, D_800C6FA0, D_800C6FA0,
    D_800C6FA0, D_800C6FA0, D_800C6FA0, D_800C6FA0,
    D_800C6FA0, D_800C6FA0, D_800C6FA0, D_800C6FA0,
    D_800C62A0, D_800C62A0, D_800C64A0, D_800C62A0,
    D_800C64A0, D_800C64A0, D_800C62A0, D_800C60A0,
    D_800C60A0, D_800C60A0, D_800C60A0, D_800C6CA0,
    D_800C6020, D_800C64A0, D_800C6020, D_800C64A0,
    D_800C62A0, D_800C60A0, D_800C60A0, D_800C6020,
    D_800C6020, D_800C6FA0, D_800C6FA0, D_800C6FA0,
    D_800C6FA0, D_800C75A0, D_800C76A0, D_800C6020,
    D_800C76A0, D_800C76A0, D_800C76A0, D_800C76A0,
    D_800C76A0, D_800C76A0, D_800C76A0, D_800C76A0,
};

u32 D_800C7CC0[4] = {0x0, 0x0, 0x0, 0x0}; // unused

// .bss
// extern s32 D_80137460[2]; // unused
extern s32* D_80137468;
extern u8* D_8013746C; // related to type of D_800C71A0
extern u8* D_80137470;
extern u16 D_80137474;
extern u16 D_80137476;
extern u16 D_80137478;
extern u16 D_8013747C;
extern u16 D_80137580[70];
extern u16 D_80137610[70];

extern u8* D_80137774;
extern u8* D_8013777C;
extern u8* D_80137784;

// Builds the runtime 16x16 collision byte map in D_8010CDF0 from the stage lookup/tile pages loaded by func_80026694
void func_80010C20(u16 arg0) {
    u16 jndex;
    u16 index;
    u8 temp_v0;
    u8* temp_a3;
    u64* temp_t6;
    u64* temp_v1;
    u8* var_s0;
    u8* var_t3;
    u8* var_t4;
    u16 temp;
    u16 temp2;

    func_80026694(arg0);
    D_80137468 = (s32*)0x801C4400;
    D_8013746C = D_800C7950[arg0];
    D_80137470 = D_800C7B60[arg0];
    D_80137474 = D_800C78A0[arg0];
    D_80137476 = D_800C7AB0[arg0];
    D_80137478 = 0;

    var_s0 = D_80137774;
    var_t3 = D_8013777C;
    var_t4 = D_80137784;

    for (index = 0; index < D_800BE648 / 32; index++) {
        temp = ((index * D_800BE644) * 8);
        temp2 = ((index * D_800BE644) / 8) & (0x100 - D_800BE644);
        temp_a3 = &D_80108DE8[temp];
        for (jndex = 0; jndex < D_800BE644 * 8; jndex += 8) {
            temp_v0 = var_t4[((jndex / 8) & (D_800BE644 - 1)) + temp2];
            if (temp_v0 == 0) {
                ((u64*)(temp_a3 + (s32)jndex))[0] = 0;
            }
            else {
                temp_t6 = (u64*)((u8*)var_t3 + (((index & 0xFF) * 8) & 0x38) + (temp_v0 << 6));
                ((u64*)(temp_a3 + (s32)jndex))[0] = temp_t6[0];
            }
        }
    }
    
    for (index = 0; index < D_800BE648 / 16; index++) {
        temp = ((index * D_800BE644) * 0x10);
        temp2 = (((index * D_800BE644) / 16) & (0x100 - D_800BE644));
        temp_a3 = &D_8010CDF0[temp];
        for (jndex = 0; jndex < D_800BE644 * 16; jndex += 16) {
            temp_v0 = var_s0[((jndex / 16) & (D_800BE644 - 1)) + temp2];
            if (temp_v0 == 0) {
                ((u64*)(temp_a3 + (s32)jndex))[1] = 0; \
                ((u64*)(temp_a3 + (s32)jndex))[0] = 0;
            }
            else {
                temp_v1 = (u64*)((u8*)D_80137468 + (((index & 0xFF) * 16) & 0xF0) + (temp_v0 << 8));
                ((u64*)(temp_a3 + (s32)jndex))[0] = temp_v1[0];
                ((u64*)(temp_a3 + (s32)jndex))[1] = temp_v1[1];
            }
        }
    }
    
    for (jndex = 0; jndex < 7; jndex++) {
        for (index = 0; index < 10; index++) {
            D_80137580[(jndex * 10) + index] = D_8013746C[(jndex * 0x10) + index] + D_80137476;
        }
    }
    
    for (jndex = 0; jndex < 7; jndex++) {
        for (index = 0; index < 10; index++) {
            D_80137610[(jndex * 10) + index] = D_80137470[(jndex * 0x10) + index] + D_80137478;
        }
    }
    func_8001107C();
}

void func_8001107C(void) {
    u16 x_begin;
    u16 x;
    u16 y;
    u16 y_index;
    u16 x_index;
    s32 pad;

    switch (D_800BE588) {
    default:
        x = gScreenPosCurrentX.whole - 0x92;
        break;
    case 1:
        x = (gScreenPosCurrentX.whole / 1.55) - 2.0;
        break;
    case 2:
        x = gScreenPosCurrentX.whole / 1.55;
        break;
    case 3:
        x = gScreenPosCurrentX.whole / 1.55;
        break;
    }

    x_begin = x;
    if (D_800BE588 == 3) {
        y = D_800BE648 - ((((gScreenPosCurrentY.whole / 1.55) + gCamShakeV) - 80.0) + -12.0);
    }
    else {
        y = ((D_800BE648 - gScreenPosCurrentY.whole) - gCamShakeV) + 0x5C;
    }
    D_800BE6C4 = 0xE + -(x & 0x1F);
    D_800BE6C8 = 0x14 + -(y & 0x1F);

    for (y_index = 0; y_index < 7; y_index++, y -= 0x20) {
        for (x_index = 0, x = x_begin; x_index < 10; x_index++, x += 0x20) {
            D_801374F0[(60 - y_index * 10) + x_index] =
                D_80108DE8[((x >> 5) & D_800BE64C) + ((y << D_800BE654) & D_800BE650)] + D_80137474;
        }
    }

    if (D_800BE58C == 1) {
        x_begin = x = (D_800BE578 - 2) & 0xFFF;
        y = (-D_800BE580 - 0xC) & 0xFF;
        D_800BE6D0 = 0xE + -(x & 0x1F);
        D_800BE6D4 = 0x14 + -(y & 0x1F);

        for (y_index = 0; y_index < 7; y_index++, y += 0x20) {
            for (x_index = 0, x = x_begin; x_index < 10; x_index++, x += 0x20) {
                D_80137580[(y_index * 10) + x_index] = D_8013746C[((x >> 5) & 0x7F) + ((y * 4) & 0x380)] + D_80137476;
            }
        }
    }
    else {
        x_begin = x = (D_800BE578 - 2) & 0x1FF;
        y = (-D_800BE580 - 0xC) & 0x1FF;
        D_800BE6D0 = 0xE + -(x & 0x1F);
        D_800BE6D4 = 0x14 + -(y & 0x1F);

        for (y_index = 0; y_index < 7; y_index++, y += 0x20) {
            for (x_index = 0, x = x_begin; x_index < 10; x_index++, x += 0x20) {
                D_80137580[(y_index * 10) + x_index] = D_8013746C[((x >> 5) & 0xF) + ((y >> 1) & 0xF0)] + D_80137476;
            }
        }
    }

    if (D_800BE6FC != 0) {
        y = (-D_800BE584 - 0xC) & 0x1FF;
        D_800BE6E0 = 0x14 + -(y & 0x1F);

        for (y_index = 0; y_index < 7; y_index++, y += 0x20) {
            x = (D_8011D3B0[y_index][0] - 2) & 0x1FF;
            for (x_index = 0; x_index < 10; x_index++, x += 0x20) {
                D_80137610[(y_index * 10) + x_index] = D_80137470[((x >> 5) & 0xF) + ((y >> 1) & 0xF0)] + D_80137478;
            }
        }
    }
    else {
        x_begin = x = (D_800BE57C - 2) & 0x1FF;
        y = (-D_800BE584 - 0xC) & 0x1FF;
        D_800BE6DC = 0xE + -(x & 0x1F);
        D_800BE6E0 = 0x14 + -(y & 0x1F);

        for (y_index = 0; y_index < 7; y_index++, y += 0x20) {
            for (x_index = 0, x = x_begin; x_index < 10; x_index++, x += 0x20) {
                D_80137610[(y_index * 10) + x_index] = D_80137470[((x >> 5) & 0xF) + ((y >> 1) & 0xF0)] + D_80137478;
            }
        }
    }
}

void func_800119AC(s16 arg0, s16 arg1, s16 arg2) {
    D_80108DE8[(((arg0 >> 5)) & D_800BE64C) + (((D_800BE648 - arg1) << D_800BE654) & D_800BE650)] = arg2;
}

void func_80011A18(s16 arg0, s16 arg1, s16 arg2) {
    D_80108DE8[(((arg0 + gScreenPosCurrentX.whole) >> 5) & D_800BE64C) +
        ((((D_800BE648 - arg1) - gScreenPosCurrentY.whole) << D_800BE654) & D_800BE650)] = arg2;
}

void func_80011A9C(s16 arg0, s16 arg1, s16 arg2) {
    D_80108DE8[(((((arg0 << 5) + gScreenPosCurrentX.whole) - 0x80) >> 5) & D_800BE64C) +
        (((((D_800BE648 + (arg1 << 5)) - gScreenPosCurrentY.whole) - 0x50) << D_800BE654) & D_800BE650)] = arg2;
}

void func_80011B30(s16 arg0, s16 arg1, s8 arg2, s8 arg3, s8 arg4) {
    s16 index;
    s16 jndex;

    for (index = arg1; index < arg1 + arg3; index++) {
        for (jndex = arg0; jndex < arg0 + arg2; jndex++) {
            D_80108DE8[
                (((((jndex << 5) + gScreenPosCurrentX.whole) - 0x80) >> 5) & D_800BE64C) + 
                (((((D_800BE648 + (index << 5)) - gScreenPosCurrentY.whole) - 0x50) << D_800BE654) & D_800BE650)] = arg4;
            arg4 += 1;
        }
    }
}

void func_80011C58(s16 arg0, s16 arg1, s8 arg2, s8 arg3) {
    s16 index;
    s16 jndex;

    for (index = arg1; index < arg1 + arg3; index++) {
        for (jndex = arg0; jndex < arg0 + arg2; jndex++) {
            D_80108DE8[
                (((((jndex << 5) + gScreenPosCurrentX.whole) - 0x80) >> 5) & D_800BE64C) + 
                (((((D_800BE648 + (index << 5)) - gScreenPosCurrentY.whole) - 0x50) << D_800BE654) & D_800BE650)] = 0;
        }
    }
}

void func_80011D6C(s8 arg0, s8 arg1, s8 arg2) {
    D_8013746C[(arg0 * 0x10) + arg1] = arg2;
}

void func_80011DA4(s8 arg0, s8 arg1, s8 arg2) {
    D_80137470[(arg0 * 0x10) + arg1] = arg2;
}

void func_80011DDC(s16 arg0, s16 arg1, s16 arg2) {
    D_8010CDF0[((arg0 >> 4) & D_800BE658) + (((D_800BE648 - arg1) << D_800BE660) & D_800BE65C)] = arg2;
}

void func_80011E48(s16 arg0, s16 arg1, s8* arg2) {
    s16 jndex;
    s16 index;
    s8 temp_s3;
    s8 temp_s6;

    temp_s3 = *arg2++;
    temp_s6 = *arg2++;
    for (index = 0; index < temp_s6; index++) {
        for (jndex = 0; jndex < temp_s3; jndex++) {
            func_80011DDC(arg0 + jndex * 0x10, arg1 - (index * 0x10), *arg2++);
        }
    }
}

void func_80011F44(s16 arg0, s16 arg1, s8 arg2, s8 arg3) {
    s16 jndex;
    s16 index;

    for (index = 0; index < arg3; index++) {
        for (jndex = 0; jndex < arg2; jndex++) {
            func_80011DDC(arg0 + jndex * 0x10, arg1 - (index * 0x10), 0);
        }
    }
}

void func_80012044(s16 arg0, s16 arg1, s16 arg2) {
    D_8010CDF0[(((arg0 + gScreenPosCurrentX.whole) >> 4) & D_800BE658) + 
        ((((D_800BE648 - arg1) - gScreenPosCurrentY.whole) << D_800BE660) & D_800BE65C)] = arg2;
}

void func_800120C8(s16 arg0, s16 arg1, s8* arg2) {
    s16 jndex;
    s16 index;
    s8 temp_s3;
    s8 temp_s6;

    temp_s3 = *arg2++;
    temp_s6 = *arg2++;
    for (index = 0; index < temp_s6; index++) {
        for (jndex = 0; jndex < temp_s3; jndex++) {
            func_80012044(arg0 + jndex * 0x10, arg1 - (index * 0x10), *arg2++);
        }
    }
}
