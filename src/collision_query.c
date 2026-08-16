#include "common.h"

typedef u8 (*UnkFuncType_D_800C7CD0)(s16 arg0, s16 arg1);

u8 func_800128E0(s16 arg0, s16 arg1) {
    return 0xFF;
}

// Thanks to LLONSIT for finding this cursed match
u8 func_800128F0(s16 arg0, s16 arg1) {\
    if ((arg1 & 0xF) < (arg0 & 0xF) / 2) {
        return 0xFF;
    }

    return 0;
}

u8 func_80012944(s16 arg0, s16 arg1) {
    if ((arg0 & 0xF) > (arg1 & 0xF)) {
        return 0xFF;
    }

    return 0;
}

u8 func_80012970(s16 arg0, s16 arg1) {
    if ((arg1 & 0xF) < (((arg0 & 0xF) / 2) + 8)) {
        return 0xFF;
    }

    return 0;
}

u8 func_800129C8(s16 arg0, s16 arg1) {
    if ((arg1 & 0xF) < ((-(arg0 & 0xF) / 2) + 7)) {
        return 0xFF;
    }

    return 0;
}

u8 func_80012A24(s16 arg0, s16 arg1) {
    if ((arg1 & 0xF) < (0xF - (arg0 & 0xF))) {
        return 0xFF;
    }

    return 0;
}

u8 func_80012A58(s16 arg0, s16 arg1) {
    if ((arg1 & 0xF) < ((-(arg0 & 0xF) / 2) + 0xF)) {
        return 0xFF;
    }

    return 0;
}

u8 func_80012AB4(s16 arg0, s16 arg1) {
    u16 x = gScreenPosCurrentX.whole + arg0;
    u16 y = D_800BE648 + -(gScreenPosCurrentY.whole + arg1) - 1;

    return D_8010CDF0[((x >> 4) & D_800BE658) + ((y << D_800BE660) & D_800BE65C)];
}

u8 func_80012B28(s16 arg0, s16 arg1) {
    u16 y = D_800BE648 - arg1 - 1;

    return D_8010CDF0[((arg0 >> 4) & D_800BE658) + ((y << D_800BE660) & D_800BE65C)];
}


UnkFuncType_D_800C7CD0 D_800C7CD0[] = {
    func_800128E0,
    func_800128F0,
    func_80012944,
    func_800128E0,
    func_800128E0,
    func_80012970,
    func_800128E0,
    func_800128E0,
    func_800128E0,
    func_800129C8,
    func_80012A24,
    func_800128E0,
    func_800128E0,
    func_80012A58,
    func_800128E0,
    func_800128E0,
};

u8 func_80012B88(u8 arg0, s16 arg1, s16 arg2) {
    return D_800C7CD0[arg0 & 0xF](gScreenPosCurrentX.whole + arg1, gScreenPosCurrentY.whole + arg2) & arg0; // low nibble selects the 16x16 shape test; high bits carry collision type/flags
}

u8 func_80012C04(s16 arg0, s16 arg1) {
    return func_80012B88(func_80012AB4(arg0, arg1), arg0, arg1);
}
