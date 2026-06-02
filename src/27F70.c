#define FUNC_8001E2D0_RET void
#include "common.h"
#include "actor.h"
#include "Alphabet.h"
#include "debug_level_select.h"
#include "input.h"
#include "music.h"

typedef struct {
    u8 pad0[2];
    s16 unk2;
    s16 unk4;
    u8 pad6[2];
} Unk800D1788;

typedef struct {
    u8 unk0[0x80];
    u16 unk80;
    u8 unk82[0xA0 - 0x82];
} Unk80104098; // size = 0xA0

extern u16 D_800BE4D8;
extern u16 D_800BE4E0;
extern u16 D_800BE504;
extern u16 D_800BE508;
extern u16 D_800BE50C;
extern u16 D_800BE510;
extern u16 D_800BE514;
extern u16 D_800BE530;
extern u16 D_800BE534;
extern s16 D_800BE558;
extern s16 D_800BE55C;
extern s16 D_800BE560;
extern s16 D_800BE564;
extern f32 D_800BE5A8;
extern f32 D_800BE5AC;
extern f32 D_800BE5B0;
extern f32 D_800BE5B4;
extern f32 D_800BE5B8;
extern s16 D_800BE5D8;
extern s16 D_800BE5DC;
extern s32 D_800BE5F4;
extern u16 D_800BE5FC;
extern u16 D_800CA230;
extern u16 D_800D16D0[]; // LUT (ASCII - 0x20)->index
extern u8 D_800D17B8[]; // LUT of (Alphbet-0x10E)->width
extern s32 D_800D1810[];
extern u16 D_800D1898[];
extern s32 D_800D1958[];
extern s32 D_800D19F4[];
extern u32 D_800D1A04[];
extern u16 D_800D2294[];
extern s32 D_800D229C[];
extern s32 D_800D22AC[];
extern u16 D_800D22BC[];
extern s16 D_800D2284[];
extern u16 D_800D23FC[];
extern u16 D_800D24A8[];
extern u16 D_800D24B4[];
extern u16 D_800D24C0[];
extern u16 D_800D24CC[];
extern u8 D_800D24EA;
extern u8 D_800D24EC;
extern u8 D_800D24EE;
extern s32 D_800D24F4[];
extern s32 D_800D2504[];
extern s32 D_800D2514[];
extern s32 D_800D258C[];
extern u16 D_800D25BC[]; // grouped by step count 5 (0xA bytes)
extern u16 D_800D2690[]; // grouped by step count 3 (0x6 bytes)
extern s32 D_800D26E0[];
extern s16 D_800D26F4[];
extern u16 D_800D2714[];
extern s16 D_800D271C[];
extern u8 D_800D2750[];
extern u8 D_800D27B0[];
extern u16 D_800D27F8[];
extern u16 D_800D2814[];
extern f32 D_800D281C[];
extern u16 D_800D282C[];
extern u16 D_800D2854[];
extern u16 D_800D2860[];
extern u16 D_800D28E4;
extern u16 D_800D28E8;
extern u16 D_800D28F0;
extern u32 D_800D28FC;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D2924;
extern u16 D_800D2950;
extern u16 D_800D2954;
extern s16 D_800D2958;
extern u16 D_800D295C;
extern u16 D_800D5820;
extern u16 D_800D5824;
extern u16 D_800D84E8[];
extern u8 D_800D8508[];
extern u8 D_800D8528[];
extern u8 D_800D8548[];
extern u16 D_800D8608[];
extern u16 D_800D8628[];
extern u16 D_800D86A0[];
extern u16 D_800D86D8[]; // guess
extern u8 D_800D9AE4[];
extern u8 D_800D9AF4[];
extern u16 D_800D9B64[];
extern s16 D_800E14C8[];
extern s16 D_800E14E8[];
extern s16 D_800E155C[];
extern s16 D_800E157C[];
extern s16 D_800E15C4[];
extern s16 D_800E1604[];
extern s16 D_800E1C1C[];
extern s16 D_800E1C2C[];
extern s16 D_800E1D0C[];
extern s16 D_800E1DEC[];
extern s16 D_800E2514[];
extern s16 D_800E2528[];
extern s32 D_800E3578; // nearest actor delta X
extern s32 D_800E357C; // nearest actor delta Y
extern u16 D_800E3580; // nearest actor index, updated in Actor_NearestFromList
extern s8 D_801373F2;
extern s32 D_80137444;
extern u16 D_80137450;
extern u32 D_80137458;
extern u16 D_80178136;

extern Unk800D1788 D_800D1788[];
extern u8 D_800D17FC[];
extern s8 D_800D2204[]; // LUT in atan2
extern s8 D_800D2228[]; // entries used in atan2
extern s8 D_800D222C[]; // entries used in atan2
extern u16 D_800D2230[];
extern u16 D_800D36DC[];
extern u16 D_800D36FC[]; // list of actor indexes used in Actor_UpdateNearest
extern u8 D_800DCE7C[]; // guess
extern u8 D_800DD07C[]; // guess
extern u8 D_800DD27C[]; // guess

extern Unk80104098 D_80104098[0x40];
extern u16 D_8011DD70[];

// forward declarations
void Actor_Clamp_0F8(u16 actor_index, s32 max_val);
void Actor_Clamp_0FC(u16 actor_index, s32 max_val);
void func_80030B0C(u16);
void func_80031D58(u16 arg0, u16 arg1);
void func_800337F4(s16 x, s16 y, s16 z, u16 arg3);
s16 func_8003526C(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4);
void func_800358DC(u16 actor_index);
void func_80035A20(u16 actor_index);
u16 func_8003D68C(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 pos_x, s32 pos_y, s32 pos_z, u16 red, u16 green, u16 blue);
void func_8003ED48(u16 unused_arg0, s32 arg1, s16 x, s16 y, s16 z);
u16 func_8003F8B0(f32 scale, s16 pos_x, s16 pos_y, s16 pos_z);
void func_8003F9CC(f32, s32, s32, s32);
u16 func_8003F9E0(f32, s16, s16, s16);
void func_8003FB20(u16 unused_arg0, s32 unused_arg1, f32 scale, s16 pos_x, s16 pos_y, s16 pos_z);
u16 func_8003FE90(f32 arg0, s16 x, s16 y, s16 z);
u16 func_8003FED8(f32 arg0, s16 x, s16 y, s16 z);
u16 func_8003FF20(f32 arg0, s16 x, s16 y, s16 z);
u16 func_8003FE4C(f32 arg0, s16 x, s16 y, s16 z);
u16 func_8003FF68(u16 actor_index, f32 scale);
void func_80040E08(u16 actor_index, u16 arg1);

void func_80027370(u16 actor_index, u16 x, u16 y, u16 z) {
    gActors[actor_index].actorType = 0;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].posX.whole = x;
    gActors[actor_index].posY.whole = y;
    gActors[actor_index].posZ.whole = z;
}

void func_800273FC(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z) {
    func_80027370(actor_index, x, y, z);
    gActors[actor_index].graphicIndex = arg1;
}

void func_80027468(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue) {
    func_80027370(actor_index, x, y, z);
    gActors[actor_index].graphicTimer = 0;
    gActors[actor_index].graphicIndex = arg1;
    if (red | green | blue) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index].colorR = red;
        gActors[actor_index].colorG = green;
        gActors[actor_index].colorB = blue;
    }
}

void func_80027510(u16 actor_index, s16* graphic_list, u16 x, u16 y, u16 z) {
    func_80027370(actor_index, x, y, z);
    ACTOR_GFX_INIT(actor_index, graphic_list);
}

void* func_80027588(u16 arg0, u8 arg1, u8 arg2, u8 arg3) {
    Unk800D1788* temp_v1;

    temp_v1 = &D_800D1788[arg0];
    temp_v1->unk2 = (((arg1 / 2) << 11) + ((arg2 / 2) << 6) + ((arg3 / 2) * 2) + 1);
    temp_v1->unk4 = ((arg1 << 11) + (arg2 << 6) + (arg3 * 2) + 1);
    return temp_v1;
}

void func_80027644(u16 actor_index, u16 arg1, u16 x, u16 y, u16 z, s32 arg5) {
    func_800273FC(actor_index, arg1, x, y, z);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].unk_18C = arg5;
}

// render string to screen horizontally
// str: ASCII string
// e.g. used in title screen "PRESS START"
u16 func_800276DC(u16 actor_index, char* str, u16 x, u16 y, u16 z, s32 arg5) {
    char ch;
    while ((ch = *str) != 0) {
        if (ch == '#') {
            gActors[actor_index].flags = 0;
            actor_index++;
        }
        else if (ch != ' ') {
            func_80027644(actor_index, D_800D16D0[ch - ' '] * 2 + 0x2D2, x, y, z, arg5);
            actor_index++;
        }
        str++;
        x += 9;
    }
    return actor_index;
}

// render 2-digit number
u16 func_80027800(u16 actor_index, u16 num, u16 x, u16 y, u16 z, s32 arg5) {
    u16 tens;

    tens = 0;
    while (num >= 10) {
        num -= 10;
        tens++;
    }
    func_80027644(actor_index + 0, (tens * 2) + 0x2D2, x, y, z, arg5);
    func_80027644(actor_index + 1, (num * 2) + 0x2D2, x + 9, y, z, arg5);
    return actor_index + 2;
}

// render 3-digit number
u16 func_800278E8(u16 actor_index, u16 num, u16 x, u16 y, u16 z, s32 arg5) {
    u16 hundos;
    u16 tens;
    s32 index;

    tens = 0;
    hundos = 0;
    while (num >= 100) {
        num -= 100;
        hundos++;
    }
    while (num >= 10) {
        num -= 10;
        tens++;
    }
    index = actor_index;
    func_80027644(index, (hundos * 2) + 0x2D2, x, y, z, arg5);
    func_80027644(index + 1, (tens * 2) + 0x2D2, x + 9, y, z, arg5);
    func_80027644(index + 2, (num * 2) + 0x2D2, x + 18, y, z, arg5);
    return index + 3;
}

// get pixel width of character by alphabet symbol
u16 func_80027A44(u16* str) {
    if (*str < ALPHA_LOWER_A) {
        return 6;
    }
    else if (*str == ALPHA_BOLD_SPACE) {
        return 7;
    }
    else {
        return D_800D17B8[*str - 0x10E];
    }
}

u16 func_80027A88(u16* str) {
    u16 len0;
    u16 len1;
    len0 = func_80027A44(str++);
    len1 = func_80027A44(str);
    return len1 + len0;
}

u16 func_80027AC8(u16 actor_index, u16* str) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            gActors[actor_index].flags = 0;
            actor_index++;
        }
        str++;
    }
    return actor_index;
}

u16 func_80027B28(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            func_80027370(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = (*str * 2) + 0x2D2;
            actor_index++;
            x += func_80027A88(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

u16 func_80027C40(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            func_80027370(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = (*str * 2) + 0x2D2;
            if (red | green | blue) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = red;
                gActors[actor_index].colorG = green;
                gActors[actor_index].colorB = blue;
            }
            actor_index++;
            x += func_80027A88(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

u16 func_80027D94(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue, f32 scale_x, f32 scale_y) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            func_80027370(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            if ((scale_x != 1.0) || (scale_y != 1.0)) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            }
            gActors[actor_index].scaleX = scale_x;
            gActors[actor_index].scaleY = scale_y;
            gActors[actor_index].graphicIndex = (*str * 2) + 0x2D2;
            if (red | green | blue) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = red;
                gActors[actor_index].colorG = green;
                gActors[actor_index].colorB = blue;
            }
            actor_index++;
        }
        str++;
        x += 16 * scale_x;
    }
    return actor_index;
}

u16 func_8002801C(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            func_80027370(actor_index, x, y, z);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[actor_index].unk_18C = (s32)D_800D17FC;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = (*str * 2) + 0x2D2;
            actor_index++;
            x += func_80027A88(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

u16 func_80028150(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            func_80027370(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = (*str * 2) + 0x2D2;
        }
        else {
            gActors[actor_index].flags = 0;
        }
        actor_index++;
        str++;
        x += 16;
    }
    return actor_index;
}

void func_80028260(u16 arg0, u16 arg1, u8 arg2, u8 arg3, u8 arg4) {
    u16* sp4;
    if ((arg0 == 0) || (arg0 == 1) || (arg0 == 2)) {
        sp4 = (u16*)0x80380400;
    }
    sp4[arg1] = ((arg2 << 8) & 0xF800) | ((arg3 << 3) & 0x7C0) | ((arg4 >> 2) & 0x3E) | 1;
}

void func_800282F0(s16 x, s16 y) {
    func_80012288();
    D_801373E0.unk_20 = 0;
    D_801373E0.unk_24 = 0;
    gActors[0].posX.whole = x;
    gActors[0].posY.whole = y;
    D_800BE5D8 = D_800BE558 + x;
    D_800BE5DC = D_800BE55C + y;
    D_800CA230 = 0;
    if (gActors[0].health < 0) {
        gActors[0].health = 0;
    }
}

void func_80028380(void) {
    gActors[0].flags = 0;
    D_800CA230 = 1;
    D_80137458 = 0;
    if (gActors[0].health < 0) {
        gActors[0].health = 0;
    }
}

void func_800283BC(u32 arg0, u16 arg1) {
    s16 var_v0;

    var_v0 = (gActors[arg1 & 0xFFF].posX.whole - D_800BE5B4) / 2;
    if (var_v0 >= 0x40) {
        var_v0 = 0x3F;
    }
    else if (var_v0 < -0x40) {
        var_v0 = -0x40;
    }

    if (arg1 & 0x8000) {
        func_80003474(arg0, 0x100, var_v0 + 0x40);
    }
    else {
        func_80003430(arg0, 0x100, var_v0 + 0x40);
    }
}

void func_800284B0(s32 arg0) {
}

u16 Actor_RangeFindFlag2(u16 actor_index, u16 end) {
    while (actor_index < end) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            return actor_index;
        }
        actor_index++;
    }
    return 0;
}

u16 Actor_RangeFindFlag2_90ToC0(void) {
    return Actor_RangeFindFlag2(0x90, 0xC0);
}

u16 func_8002854C(u16 actor_type, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (actor_index != 0) {
        gActors[actor_index].actorType = actor_type;
        func_8001E2D0(actor_index);
        gActors[actor_index].posX.whole = pos_x;
        gActors[actor_index].posY.whole = pos_y;
        gActors[actor_index].posZ.whole = pos_z;
    }
    return actor_index;
}

void Actor_ClearRange(u16 actor_index, u16 end) {
    while (actor_index < end) {
        gActors[actor_index].flags = 0;
        actor_index++;
    }
}

void Actor_ClearRange_10To20(void) {
    Actor_ClearRange(0x10, 0x20);
}

void Actor_ClearRange_30To90(void) {
    Actor_ClearRange(0x30, 0x90);
}

void Actor_ClearRange_90ToC0(void) {
    Actor_ClearRange(0x90, 0xC0);
}

void Actor_ClearRange_C0ToC7(void) {
    Actor_ClearRange(0xC0, 0xC7);
}

void func_800286C8(void) {
    u16 index;
    for (index = 0; index < (u16)ARRAYLENGTH(D_80104098); index++) {
        D_80104098[index].unk80 = 0;
    }
}

void func_80028704(void) {
    Actor_ClearRange_10To20();
    Actor_ClearRange_30To90();
    Actor_ClearRange_90ToC0();
    Actor_ClearRange_C0ToC7();
    func_800286C8();
}

void Actor_ClearSceneActors(void) {
    Actor_ClearRange_10To20();
    Actor_ClearRange_30To90();
    Actor_ClearRange_90ToC0();
    Actor_ClearRange_C0ToC7();
}

u16 func_8002877C(u16 actor_index) {
    s16 temp_v1;

    temp_v1 = D_800BE558 + gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
    if (temp_v1 < D_800D2920) {
        gActors[actor_index].posX.whole += D_800D2920 - temp_v1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK2;
        return 1;
    }
    temp_v1 = D_800BE558 + gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
    if (temp_v1 > D_800D2924) {
        gActors[actor_index].posX.whole += D_800D2924 - temp_v1;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK3;
        return 2;
    }
    return 0;
}

u16 func_8002884C(u16 actor_index) {
    s16 temp_v1;
    temp_v1 = D_800BE558 + gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX0;
    if (temp_v1 < D_800D2920) {
        return 0;
    }
    temp_v1 = D_800BE558 + gActors[actor_index].posX.whole + gActors[actor_index].hitboxBX1;
    if (temp_v1 > D_800D2924) {
        return 0;
    }
    return 1;
}

u16 Actor_IsOutsideRegion(u16 actor_index, s16 length) {
    if ((gActors[actor_index].posX.whole > (0x90 + length)) || (gActors[actor_index].posX.whole < (-0x90 - length)) || 
        (gActors[actor_index].posY.whole > (0x60 + length)) || (gActors[actor_index].posY.whole < (-0x60 - length))) {
        return 1;
    }
    else {
        return 0;
    }
}

void Actor_RegionCheckAudio(u16 actor_index, s16 arg1, u32 arg2) {
    if (Actor_IsOutsideRegion(actor_index, arg1) == 0) {
        func_800036C8(arg2, actor_index);
    }
}

s32 Math_AbsS32(s32 val) {
    if (val < 0) {
        return -val;
    }
    else {
        return val;
    }
}

void Actor_NearestFromList(u16 actor_index, u16* actor_list, s16 max_dist) {
    s16 dist_x;
    u16 index;

    D_800E3580 = 0;
    while (*actor_list != 0) {
        index = *actor_list;
        dist_x = Math_AbsS32(gActors[actor_index].posX.whole - gActors[index].posX.whole);
        if (dist_x < max_dist) {
            D_800E3580 = index;
            max_dist = dist_x;
        }
        actor_list++;
    }
}

void Actor_UpdateNearest(u16 actor_index) {
    Actor_NearestFromList(actor_index, D_800D36FC, 0x7FFF);
}

void Actor_UpdateNearestTo0(u16 actor_index) {
    s16 dist = Math_AbsS32(gActors[actor_index].posX.whole - gActors[0].posX.whole);
    Actor_NearestFromList(actor_index, D_800D36DC, dist);
}

void func_80028B90(u16 actor_index) {
    u16 other_index = gActors[actor_index].unk_0D6;
    if (gActors[actor_index].posX.whole < gActors[other_index].posX.whole) {
        gActors[actor_index].unk_0F8.raw = -gActors[other_index].unk_0F8.raw;
    }
    else {
        gActors[actor_index].unk_0F8.raw = gActors[other_index].unk_0F8.raw;
    }
}

void func_80028C00(s32 arg0) {
}

s32 func_80028C08(u16 actor_index) {
    u16 other_index = gActors[actor_index].unk_0D6;
    if ((gActors[other_index].flags & ACTOR_FLAG_ACTIVE) && (gActors[other_index].health > 0)) {
        gActors[other_index].unk_0D6 = actor_index;
        gActors[other_index].flags_098 |= ACTOR_FLAG3_UNK9;
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80028C80(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        return 0;
    }
    else {
        return 1;
    }
}

void func_80028CE8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
    gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;

    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
    if (gActors[gActors[actor_index].unk_0D6].flags & ACTOR_FLAG_UNK8) {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
    }

    if (gActors[actor_index].velocityX.raw != 0) {
        if (gActors[actor_index].velocityX.raw < 0) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

// TODO: func_8001FCA0 only matches if arg1/arg2 are `s16`, but only matches below as `s32`
// see https://decomp.me/scratch/ZJ7E3
#if 0
u8 func_8001FCA0(u16 arg0, s16 arg1, s16 arg2);
#else
u8 func_8001FCA0(u16 arg0, s32 arg1, s32 arg2);
#endif
s32 func_80028DAC(u16 arg0, s16 arg1) {
    if ((func_8001FCA0(arg0, arg1, gActors[0].posY.whole + 2) & 0x80) &&
        (func_8001FCA0(arg0, arg1, gActors[0].posY.whole + 2) & 0x80)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80028E1C(u16 actor_index) {
    s16 actor0_pos;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (D_80137450 == actor_index) {
            if ((gActors[0].unk_140_u8 == 0) && (gActors[0].posY.whole < gActors[actor_index].posY.whole)) {
                actor0_pos = gActors[0].posY.whole;
                while (actor0_pos < gActors[actor_index].posY.whole) {
                    if (func_8001FCA0(actor_index, gActors[0].posX.whole, actor0_pos) & 0x80) {
                        gActors[0].flags_098 = ACTOR_FLAG3_UNK16;
                        gActors[0].unk_0F8.raw = 0;
                        gActors[0].unk_0FC.raw = FIXED_UNIT(-3.0);
                        func_800036C8(100, actor_index);
                        return 1;
                    }
                    actor0_pos += 16;
                }
            }
            else if (gActors[0].unk_140_u8 == 4) {
                if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                    actor0_pos = gActors[0].posX.whole;
                    while (gActors[actor_index].posX.whole < actor0_pos) {
                        if (func_80028DAC(actor_index, actor0_pos) != 0) {
                            gActors[0].flags_098 = ACTOR_FLAG3_UNK16;
                            gActors[0].unk_0F8.raw = FIXED_UNIT(3.0);
                            gActors[0].unk_0FC.raw = 0;
                            func_800036C8(100, actor_index);
                            return 1;
                        }
                        actor0_pos -= 16;
                    }
                }
                else {
                    actor0_pos = gActors[0].posX.whole;
                    while (actor0_pos < gActors[actor_index].posX.whole) {
                        if (func_80028DAC(actor_index, actor0_pos) != 0) {
                            gActors[0].flags_098 = ACTOR_FLAG3_UNK16;
                            gActors[0].unk_0F8.raw = FIXED_UNIT(-3.0);
                            gActors[0].unk_0FC.raw = 0;
                            func_800036C8(100, actor_index);
                            return 1;
                        }
                        actor0_pos += 16;
                    }
                }
            }
        }
    }
    return 0;
}

s32 func_80029044(u16 actor_index) {
    s32 x;
    s32 y;
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (D_80137450 == actor_index)) {
        x = ((gActors[actor_index].posX.whole - gActors[0].posX.whole) / 2) + gActors[0].posX.whole;
        y = ((gActors[actor_index].posY.whole - gActors[0].posY.whole) / 2) + gActors[0].posY.whole;
        if (func_8001FCA0(actor_index, x, y) & 0x80) {
            gActors[0].flags_098 = ACTOR_FLAG3_UNK16;
            gActors[0].unk_0F8.raw = 0;
            gActors[0].unk_0FC.raw = FIXED_UNIT(3.0);
            func_800036C8(100, actor_index);
            return 1;
        }
    }
    return 0;
}

void func_80029134(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12); \
    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityZ.raw = 0;
    gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
    gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
    gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
}

s32 func_800291AC(u16 actor_index, u16 state1, s32 flags1, u16 state2, s32 flags2) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        func_8002AC30(actor_index, 8);
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK19;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].velocityZ.raw = 0;
        gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
        gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        if (gActors[0].stateLower == 0x26) {
            if (func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) & 0x80) {
                gActors[actor_index].posX.raw = gActors[0].posX.raw;
            }
        }
        if (func_80028E1C(actor_index) != 0) {
            gActors[actor_index].state = state2;
            gActors[actor_index].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (flags2 & 0x6B503);
            return 3;
        }
        else {
            if (flags1 & 0x20) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                gActors[actor_index].flags |= (gActors[gActors[actor_index].unk_0D6].flags & ACTOR_FLAG_FLIPPED);
            }
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) && (D_80137450 == actor_index)) {
                if (gActors[actor_index].unk_0DD != 0x15) {
                    gActors[0].unk_0DC = 0;
                    gActors[0].flags_098 |= ACTOR_FLAG3_UNK1;
                    gActors[0].unk_0DD = 0x11;
                    gActors[0].unk_0F8.raw = gActors[actor_index].unk_0F8.raw;
                    gActors[0].unk_0FC.raw = gActors[actor_index].unk_0FC.raw;
                    Actor_Clamp_0F8(0, 0x40000);
                    Actor_Clamp_0FC(0, 0x20000);
                    gActors[0].unk_0E2 = 0;
                }
                return 1;
            }
            else {
                return 0;
            }
        }
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
        gActors[actor_index].state = state1;
        gActors[actor_index].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (flags1 & 0x6B503);
        gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
        gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
        if (flags1 & 0x280) {
            if (gActors[gActors[actor_index].unk_0D6].flags & ACTOR_FLAG_UNK8) {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
            }
            else {
                gActors[actor_index].flags |= ACTOR_FLAG_UNK9;
            }
        }
        if (flags1 & ACTOR_FLAG_FLIPPED) {
            if (gActors[actor_index].velocityX.raw != 0) {
                if (gActors[actor_index].velocityX.raw < 0) {
                    gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                }
                else {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
                }
            }
        }
        return 2;
    }
    gActors[actor_index].state = state2;
    gActors[actor_index].flags = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) + (flags2 & 0x6B503);
    return 3;
}

s32 Math_Atan2(s32 x, s32 y) {
    s32 tmp;
    s32 var_v1;
    s32 var_a0;
    s8* table;
    u8 ret;

    table = D_800D2228;
    if (x == 0) {
        return (y > 0) ? 0x100 : 0x300;
    }
    if (y == 0) {
        return (x > 0) ? 0 : 0x200;
    }
    if (x < 0) {
        x = -x;
        table = D_800D222C;
    }
    if (y < 0) {
        y = -y;
        table += 2;
    }
    if (x < y) {
        tmp = x;
        x = y;
        y = tmp;
        table += 1;
    }
    var_v1 = (x * 4) / y;
    if (var_v1 > 35) {
        var_v1 = 35;
    }
    var_v1 = D_800D2204[var_v1];
    var_a0 = *table;
    if (var_a0 < 0) {
        var_v1 = -var_v1;
    }
    var_v1 += (var_a0 * 2);
    return (var_v1 & 0xFF) * 4;
}

s32 Math_PlaneHalf(s32 x, s32 y) {
    return (Math_Atan2(x, y) + 0x100) & 0x200;
}

s32 Math_PlaneQuadrant(s32 x, s32 y) {
    return (Math_Atan2(x, y) + 0x80) & 0x300;
}

s32 Math_PlaneOctant(s32 x, s32 y) {
    return (Math_Atan2(x, y) + 0x40) & 0x380;
}

s32 Math_Plane16Way(s32 x, s32 y) {
    return (Math_Atan2(x, y) + 0x20) & 0x3C0;
}

s32 func_80029678(u16 arg0, u16 arg1, u16 arg2, u16 arg3) {
    s16 temp_t2;
    s32 var_v1;
    u16 low_bits;

    var_v1 = 0;
    temp_t2 = arg0;
    temp_t2 -= (arg2 * arg1);

    if ((temp_t2 >= 0) && (arg3 < temp_t2)) {
        var_v1 = 0x20000000;
        temp_t2 = 0;
        arg0 = 0;
    }

    if (temp_t2 <= 0) {
        if ((arg0 % arg2) == 0) {
            var_v1 |= 0x80000000;
        }
        var_v1 |= ((arg0 / arg2) << 16);
    }
    else {
        var_v1 = 0x40000000;
    }

    low_bits = arg0 + 0;
    return var_v1 | low_bits;
}

u16 func_80029798(u16 actor_index) {
    Actor* actor;
    s32 prev_flags;

    if (D_800D28FC & 0x400) {
        actor = &gActors[actor_index];
        if ((D_800BE55C + actor->posY.whole) < (D_800D291C - 16)) {
            prev_flags = actor->flags;
            actor->flags = 0;
            return prev_flags;
        }
    }
    return 0;
}

s32 Math_ApproachS32(s32 current, s32 target, s32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }
    return current;
}

f32 Math_ApproachF32(f32 current, f32 target, f32 step) {
    if ((current - target) > 0) {
        if (step >= (current - target)) {
            current = target;
        }
        else {
            current -= step;
        }
    }
    else if ((current - target) >= -step) {
        current = target;
    }
    else {
        current += step;
    }
    return current;
}

s32 func_800298D0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_t7;

    arg1 &= 0x03FFFFFF;
    temp_v0 = arg0 - arg1;
    temp_v1 = temp_v0 & 0x03FFFFFF;
    temp_t7 = 0x04000000 - arg2;
    if ((arg2 >= temp_v1) || (temp_v1 >= temp_t7)) {
        return arg0;
    }

    if (arg0 >= arg1) {
        if (temp_v0 < 0x02000000) {
            arg1 += arg2;
        }
        else {
            arg1 -= arg2;
        }
    }
    else if (temp_v0 >= -0x01FFFFFF) {
        arg1 -= arg2;
    }
    else {
        arg1 += arg2;
    }
    return arg1 & 0x03FFFFFF;
}

s32 func_8002995C(s32 arg0, s32 arg1) {
    if (arg0 >= arg1) {
        if ((arg0 - arg1) < 0x02000000) {
            return 1;
        }
        else {
            return -1;
        }
    }
    else {
        if ((arg0 - arg1) >= -0x01FFFFFF) {
            return -1;
        }
        else {
            return 1;
        }
    }
}

void func_800299B0(u16 actor_index) {
    if ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
        gActors[actor_index].velocityX.raw = 0;
    }
    if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
        gActors[actor_index].velocityX.raw = 0;
    }
    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = 0;
    }
    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].velocityY.raw = 0;
    }
}

s32 func_80029A7C(s16 arg0, s16 arg1, s16 arg2) {
    if ((D_800E3584 & 0x10000) &&
        (arg0 > D_800E3578) && (-arg0 < D_800E3578) &&
        (arg1 > D_800E357C) && (arg2 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

u32 func_80029B00(s16 arg0, s16 arg1, s16 arg2) {
    if ((arg0 > D_800E3578) && (-arg0 < D_800E3578) && (arg1 > D_800E357C) && (arg2 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

u32 func_80029B74(s16 arg0) {
    if ((arg0 > D_800E3578) && (-arg0 < D_800E3578)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80029BB4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((D_800E3584 & 0x10000) &&
        (arg1 > D_800E3578) && (arg0 < D_800E3578) &&
        (arg2 > D_800E357C) && (arg3 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80029C44(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((arg0 < D_800E3578) && (arg1 > D_800E3578) &&
        (arg2 > D_800E357C) && (arg3 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80029CC0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((((arg0 < D_800E3578) && (arg1 > D_800E3578)) ||
        ((-arg0 > D_800E3578) && (-arg1 < D_800E3578))) &&
         (arg2 > D_800E357C) && (arg3 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80029D58(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((D_800E3584 & 0x30000) &&
        (arg1 > D_800E3578) && (arg0 < D_800E3578) &&
        (arg2 > D_800E357C) && (arg3 < D_800E357C)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80029DEC(u16 arg0, u16 arg1) {
    if (!(D_800BE4E0 & arg0) && !(func_8000178C() & arg1)) {
        return 1;
    }
    else {
        return 0;
    }
}

u16 func_80029E48(u16 actor_index, s16 arg1, s16 arg2) {
    Actor* actor;
    s16 temp_v0;
    s16 temp_t0;
    u16 var_v1;

    actor = &gActors[actor_index];
    temp_v0 = D_800BE558 + actor->posX.whole;
    if ((arg1 >= temp_v0) || (arg2 < temp_v0)) {
        var_v1 = 0x8000;
    }
    else {
        var_v1 = 0;
    }
    temp_t0 = (arg1 + ((arg2 - arg1) / 2));
    if (temp_t0 < temp_v0) {
        var_v1 |= 0x1;
    }
    return var_v1;
}

u16 func_80029F00(u16 actor_index, s16 arg1, s16 arg2) {
    Actor* actor;
    s16 temp_v0;
    s16 temp_t0;
    u16 var_v1;

    actor = &gActors[actor_index];
    temp_v0 = D_800BE55C + actor->posY.whole;
    if ((arg2 >= temp_v0) || (arg1 < temp_v0)) {
        var_v1 = 0x8000;
    }
    else {
        var_v1 = 0;
    }
    temp_t0 = arg2 + ((arg1 - arg2) / 2);
    if (temp_t0 < temp_v0) {
        var_v1 |= 0x2;
    }
    return var_v1;
}

u16 func_80029FB8(u16 actor_index, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    return func_80029E48(actor_index, arg1, arg2) | func_80029F00(actor_index, arg3, arg4);
}

s16* func_8002A018(s16* arg0, s16 arg1) {
    s16 var_a1;
    s16 var_v0;
    s16* var_v1;

    var_v1 = arg0;
    var_v0 = 0x7FFF;
    while (*arg0 != 0x765) {
        var_a1 = *arg0 - arg1;
        if (var_a1 < 0) {
            var_a1 = -var_a1;
        }
        if (var_a1 < var_v0) {
            var_v1 = arg0;
            var_v0 = var_a1;
        }
        arg0++;
    }
    return var_v1;
}

s32 Math_ClampLimit(s32 val, s32 limit) {
    if (limit < 0) {
        limit = -limit;
    }
    if (limit < val) {
        val = limit;
    }
    if (val < -limit) {
        val = -limit;
    }
    return val;
}

void Actor_SetVelocityXAbs(u16 actor_index, s32 velocity_x) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].velocityX.raw = -velocity_x;
    }
    else {
        gActors[actor_index].velocityX.raw = velocity_x;
    }
}

void Actor_ClampVelocityX(u16 actor_index, s32 max_velocity) {
    gActors[actor_index].velocityX.raw = Math_ClampLimit(gActors[actor_index].velocityX.raw, max_velocity);
}

void Actor_ClampVelocityY(u16 actor_index, s32 max_velocity) {
    gActors[actor_index].velocityY.raw = Math_ClampLimit(gActors[actor_index].velocityY.raw, max_velocity);
}

void Actor_ClampVelocity(u16 actor_index, s32 max_velocity) {
    Actor_ClampVelocityX(actor_index, max_velocity);
    Actor_ClampVelocityY(actor_index, max_velocity);
}

void Actor_Clamp_0F8(u16 actor_index, s32 max_val) {
    gActors[actor_index].unk_0F8.raw = Math_ClampLimit(gActors[actor_index].unk_0F8.raw, max_val);
}

void Actor_Clamp_0FC(u16 actor_index, s32 max_val) {
    gActors[actor_index].unk_0FC.raw = Math_ClampLimit(gActors[actor_index].unk_0FC.raw, max_val);
}

void Actor_Clamp_0F8_0FC(u16 actor_index, s32 max_val) {
    gActors[actor_index].unk_0F8.raw = Math_ClampLimit(gActors[actor_index].unk_0F8.raw, max_val);
    gActors[actor_index].unk_0FC.raw = Math_ClampLimit(gActors[actor_index].unk_0FC.raw, max_val);
}

void Actor_Scale_0F8_0FC_Velocity(u16 actor_index, s32 magnitude) {
    s16 angle;
    angle = Math_Atan2(gActors[actor_index].velocityX.raw, gActors[actor_index].velocityY.raw);
    gActors[actor_index].unk_0F8.raw = COS(angle) * magnitude;
    gActors[actor_index].unk_0FC.raw = SIN(angle) * magnitude;
}

void Actor_UpdateVelocityX(u16 actor_index, s32 dvx) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, dvx);
}

void Actor_UpdateVelocityY(u16 actor_index, s32 dvy) {
    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, dvy);
}

void Actor_UpdateVelocity(u16 actor_index, s32 dvx, s32 dvy) {
    Actor_UpdateVelocityX(actor_index, dvx);
    Actor_UpdateVelocityY(actor_index, dvy);
}

s32 func_8002A4FC(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw > 0) {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) {
            gActors[actor_index].velocityX.raw = 0;
            return 1;
        }
    }
    else {
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) {
            gActors[actor_index].velocityX.raw = 0;
            return 2;
        }
    }
    // BUG: UB, missing return
}

void func_8002A57C(u16 actor_index, s32 arg1, s32 arg2, s32 max_vx) {
    gActors[actor_index].velocityX.raw = (arg2 - gActors[actor_index].posX.raw) / ((gActors[actor_index].velocityY.raw / arg1) * 2 + 1);
    if (gActors[actor_index].velocityX.raw > 0) {
        if (gActors[actor_index].velocityX.raw > max_vx) {
            gActors[actor_index].velocityX.raw = max_vx;
        }
    }
    else {
        if (gActors[actor_index].velocityX.raw < -max_vx) {
            gActors[actor_index].velocityX.raw = -max_vx;
        }
    }
}

s32 func_8002A658(u16 actor_index) {
    u8 var_v0;
    u8 var_v1;

    // BUG: UB, var_v1 may be uninitialized
    if (gActors[0].unk_140_u8 & 0x80) {
        var_v0 = ((gActors[actor_index].rotateZ / 0.3515625) / 64) + 4.0;
        var_v0 &= 0xF;
        switch (gActors[0].unk_140_u8 & 0xF) {
            case 0:
                if (!(gActors[0].flags & ACTOR_FLAG_FLIPPED)) {
                    var_v1 = ((var_v0 == 0) || (var_v0 >= 8)) ? 2 : 14;
                }
                else {
                    var_v1 = (var_v0 >= 9) ? 2 : 14;
                }
                break;
            case 4:
                var_v1 = ((var_v0 >= 4) && (var_v0 < 0xD)) ? 2 : 6;
                break;
            case 12:
                var_v1 = ((var_v0 >= 4) && (var_v0 < 0xD)) ? 14 : 10;
                break;
            case 8:
                if (!(gActors[0].flags & ACTOR_FLAG_FLIPPED)) {
                    var_v1 = ((var_v0 == 0) || (var_v0 >= 8)) ? 6 : 10;
                }
                else {
                    var_v1 = (var_v0 >= 9) ? 6 : 10;
                }
                break;
        }
        return (-var_v1 << 22) + 0x01000000;
    }
    else {
        return (-gActors[0].unk_140_u8 << 22) + 0x01000000;
    }
}

s32 func_8002A898(u16 actor_index) {
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9);
    gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
    return func_8002A658(actor_index);
}

s32 func_8002A900(u16 actor_0, u16 actor_1) {
    return (gActors[actor_0].hitboxBX1 + gActors[actor_0].hitboxBX0) / 2 + gActors[actor_1].posX.whole + 
           (gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2 - gActors[actor_0].posX.whole;
}

s32 func_8002A990(u16 actor_0, u16 actor_1) {
    return ((gActors[actor_0].hitboxBY0 + gActors[actor_0].hitboxBY1) / 2) + gActors[actor_1].posY.whole + 
           ((gActors[actor_1].hitboxBY1 + gActors[actor_1].hitboxBY0) / 2) - gActors[actor_0].posY.whole;
}

void func_8002AA20(u16 actor_index, s32 arg1) {
    s32 var_v0;
    s32 var_v1;

    D_800E3584 = 0;
    if (D_800E3580 != actor_index) {
        D_800E3578 = func_8002A900(actor_index, D_800E3580);
        D_800E357C = func_8002A990(actor_index, D_800E3580);
        if (D_800E3578 < 0) {
            var_v1 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0;
            var_v0 = (gActors[D_800E3580].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0;
        }
        else {
            var_v1 = (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
            var_v0 = (gActors[D_800E3580].flags & ACTOR_FLAG_FLIPPED) ? 0 : 1;
        }

        if (var_v1) {
            if (var_v0) {
                D_800E3584 |= 0x20000;
            }
            else {
                D_800E3584 |= 0x10000;
            }
        }
        else {
            if (var_v0) {
                D_800E3584 |= 0x80000;
            }
            else {
                D_800E3584 |= 0x40000;
            }
        }
    }
}

void func_8002ABE4(u16 actor_index, s16 val) {
    gActors[actor_index].hitboxAY0 = val;
    gActors[actor_index].hitboxAY1 = -val;
    gActors[actor_index].hitboxAX0 = -val;
    gActors[actor_index].hitboxAX1 = val;
}

void func_8002AC30(u16 actor_index, s16 val) {
    gActors[actor_index].hitboxBY0 = val;
    gActors[actor_index].hitboxBY1 = -val;
    gActors[actor_index].hitboxBX0 = -val;
    gActors[actor_index].hitboxBX1 = val;
}

void func_8002AC7C(u16 actor_index, s16 arg1, s16 arg2) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].hitboxAX1 = -arg1;
        gActors[actor_index].hitboxAX0 = -arg2;
    }
    else {
        gActors[actor_index].hitboxAX0 = arg1;
        gActors[actor_index].hitboxAX1 = arg2;
    }
}

void func_8002ACFC(u16 actor_index, s16 arg1, s16 arg2) {
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].hitboxBX1 = -arg1;
        gActors[actor_index].hitboxBX0 = -arg2;
    }
    else {
        gActors[actor_index].hitboxBX0 = arg1;
        gActors[actor_index].hitboxBX1 = arg2;
    }
}

s32 func_8002AD7C(u16 actor_index, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t0;
    s32 temp_t4;
    s32 temp_v0;

    gActors[actor_index].unk_18C &= ~1;
    arg2 &= 0x3FF;
    temp_v0 = arg1 - arg2;
    temp_t0 = temp_v0 & 0x3FF;
    temp_t4 = 0x400 - arg3;
    if ((arg3 >= temp_t0) || (temp_t0 >= temp_t4)) {
        gActors[actor_index].unk_18C |= 1;
        return arg1;
    }

    if (arg1 >= arg2) {
        if (temp_v0 < 0x200) {
            arg2 += arg3;
        }
        else {
            arg2 -= arg3;
        }
    }
    else {
        if (temp_v0 >= -0x1FF) {
            arg2 -= arg3;
        }
        else {
            arg2 += arg3;
        }
    }
    return arg2 & 0x3FF;
}

// increment/decrement color by arg1
u16 func_8002AE44(s16 current, s16 amount) {
    if (amount < 0) {
        if (-amount >= current) {
            return 0;
        }
        else {
            return (current + amount);
        }
    }
    else {
        current += amount;
        if (current >= 0x100) {
            return 0xFF;
        }
        else {
            return current;
        }
    }
}

void Actor_SetColorRgb(u16 actor_index, u16 color) {
    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;
}

void Actor_IncrementRgb(u16 actor_index, s16 amount) {
    gActors[actor_index].colorR = func_8002AE44(gActors[actor_index].colorR, amount);
    gActors[actor_index].colorG = func_8002AE44(gActors[actor_index].colorG, amount);
    gActors[actor_index].colorB = func_8002AE44(gActors[actor_index].colorB, amount);
}

void func_8002AF7C(u16 actor_index, u16 arg1, s16 amount) {
    if (!(D_800BE4E0 & arg1)) {
        gActors[actor_index].colorR = 0x7F;
        gActors[actor_index].colorG = 0x7F;
        gActors[actor_index].colorB = 0x7F;
    }
    else {
        Actor_IncrementRgb(actor_index, amount);
    }
}

u8 func_8002B010(u16 actor_index, s16 arg1, s16 arg2) {
    if (arg2 > 0) {
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK4) {
            arg1 = arg1 - arg2;
            if (arg1 < 0) {
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
                arg1 = -arg1;
            }
        }
        else {
            arg1 = arg1 + arg2;
        }
    }
    else {
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK4) {
            arg1 = arg1 - arg2;
        }
        else {
            arg1 = arg1 + arg2;
            if (arg1 < 0) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                arg1 = -arg1;
            }
        }
    }

    if (arg1 >= 0x80) {
        return 0x7F;
    }
    else {
        return arg1;
    }
}

void func_8002B140(u16 actor_index, s16 arg1) {
    gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, arg1);
    gActors[actor_index].colorG = func_8002B010(actor_index, gActors[actor_index].colorG, arg1);
    gActors[actor_index].colorB = func_8002B010(actor_index, gActors[actor_index].colorB, arg1);
}

void Actor_ApproachRgb(u16 actor_index, s16 arg1) {
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, arg1);
    gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, arg1);
    gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, arg1);
}

void func_8002B25C(u16 actor_index, s16 arg1) {
    gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, arg1);
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_8002B2D0(u16 actor_index) {
    gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
    gActors[actor_index].colorR = (-D_800BE4E0 & 0xF) << 3;
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_8002B330(u16 actor_index) {
    if (D_800BE4E0 & 0x4) {
        gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, 0x40);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].colorB = gActors[actor_index].colorR;
    }
    else {
        gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, -0x40);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].colorB = gActors[actor_index].colorR;
    }
}

void func_8002B400(u16 actor_index) {
    if (D_800BE4E0 & 0x4) {
        gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, 0x40);
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = 0;
    }
    else {
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = func_8002B010(actor_index, gActors[actor_index].colorG, -0x40);
        gActors[actor_index].colorB = gActors[actor_index].colorG;
    }
}

void func_8002B4D0(u16 actor_index) {
    if (D_800BE4E0 & 0x4) {
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = func_8002B010(actor_index, gActors[actor_index].colorB, 0x40);
    }
    else {
        gActors[actor_index].colorR = func_8002B010(actor_index, gActors[actor_index].colorR, -0x40);
        gActors[actor_index].colorG = 0;
        gActors[actor_index].colorB = func_8002B010(actor_index, gActors[actor_index].colorB, -0x40);
    }
}

u16 Palette_AdjustRgb5551(u16 color, s16 blue_offset, s16 green_offset, s16 red_offset) {
    s16 clamped_blue;
    s16 clamped_green;
    s16 clamped_red;

    clamped_blue = ((color / 2) & 0x1F) + blue_offset;
    clamped_green = ((color / 0x40) & 0x1F) + green_offset;
    clamped_red = ((color / 0x800) & 0x1F) + red_offset;

    if (clamped_blue < 0) {
        clamped_blue = 0;
    }
    else if (clamped_blue >= 0x20) {
        clamped_blue = 0x1F;
    }

    if (clamped_green < 0) {
        clamped_green = 0;
    }
    else if (clamped_green >= 0x20) {
        clamped_green = 0x1F;
    }

    if (clamped_red < 0) {
        clamped_red = 0;
    }
    else if (clamped_red >= 0x20) {
        clamped_red = 0x1F;
    }

    return (clamped_red << 11) | (clamped_green << 6) | (clamped_blue << 1) | (color & 1);
}

// sets array of palette indexes to given RGB
void Palette_AdjustRgbIndexArray(u16* src_idx, u16* dst, s16 blue, s16 green, s16 red) {
    while (src_idx[0] != 0x100) {
        dst[src_idx[0]] = Palette_AdjustRgb5551(src_idx[1], blue, green, red);
        src_idx += 2;
    }
}

// sets array of palette indexes to color
void Palette_SetRgbIndexArray(u16* src_idx, u16* dst, u16 color) {
    while (src_idx[0] != 0x100) {
        dst[src_idx[0]] = color;
        src_idx += 2;
    }
}

// sets array of palette indexes to color in array
void Palette_SetRgbTableIndexArray(u16* src_idx, u16* dst) {
    while (src_idx[0] != 0x100) {
        dst[src_idx[0]] = src_idx[1];
        src_idx += 2;
    }
}

void Palette_AdjustRgb5551Array(u16* src, u16* dst, s16 count, s16 blue_offset, s16 green_offset, s16 red_offset) {
    u16 result;
    while (count > 0) {
        result = Palette_AdjustRgb5551(*src, blue_offset, green_offset, red_offset);
        count--;
        src++;
        dst++;
        dst[-1] = result; // wtf??
    }
}

// reduce health by amount
// returns 1 if health remaining, 0 otherwise
s32 Actor_ReduceHealth(u16 actor_index, u16 health_diff) {
    if (gActors[actor_index].health <= health_diff) {
        gActors[actor_index].health = 0;
        return 0;
    }
    else {
        gActors[actor_index].health = gActors[actor_index].health - health_diff;
        return 1;
    }
}

s32 func_8002B954(u16 actor_index, u16 arg1) {
    if (D_800BE4D8 == 0) {
        if (arg1 & 0x80) {
            return 1;
        }
        else if ((arg1 & 0x40) && (gActors[actor_index].velocityY.raw < 0)) {
            return 1;
        }
    }
    return 0;
}

s32 func_8002B9D8(u16 actor_index) {
    if (func_8002B954(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole - 4, gActors[actor_index].posY.whole)) || 
        func_8002B954(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole + 4, gActors[actor_index].posY.whole)) || 
        func_8002B954(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 4)) || 
        func_8002B954(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 4))) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_8002BACC(u16 arg0, u16 arg1) {
    if ((D_800BE4D8 == 0) && (arg1 & 0x80)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_8002BB04(u16 actor_index) {
    if (func_8002BACC(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole - 4, gActors[actor_index].posY.whole))) {
        return 1;
    }
    if (func_8002BACC(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole + 4, gActors[actor_index].posY.whole))) {
        return 1;
    }
    if (func_8002BACC(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole - 4))) {
        return 1;
    }
    if (func_8002BACC(actor_index, func_8001FCA0(actor_index, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole + 4))) {
        return 1;
    }
    return 0;
}

u16 func_8002BC10(u16 actor_index) {
    u16 temp_v1;
    temp_v1 = func_80012C04(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) & 0x7F;
    if ((temp_v1 == 0x32) || (temp_v1 == 0x36)) {
        return 0;
    }
    else {
        return temp_v1;
    }
}

void func_8002BC90(u16 arg0) {
    u16 target;
    u16 index;
    u16 count;
    u16 value;

    target = arg0 ? D_800BE510 : D_800BE50C;
    count = 0;
    for (index = 0; index < 18; index++) {
        value = D_8011DD70[index];
        value &= -1 - D_800BE504;
        if (value != 0) {
            if (target == value) {
                count++;
                if (count == 2) {
                    D_800BE5FC = 0x3;
                    return;
                }
            }
            else {
                break;
            }
        }
    }

    target = arg0 ? D_800BE50C : D_800BE510;
    count = 0;
    for (index = 0; index < 18; index++) {
        value = D_8011DD70[index];
        value &= -1 - D_800BE504;
        if (value != 0) {
            if (target == value) {
                count++;
                if (count == 2) {
                    D_800BE5FC = 0x5;
                    return;
                }
            }
            else {
                break;
            }
        }
    }

    target = arg0 ? D_800BE510 : D_800BE50C;
    if (D_800BE5FC & 1) {
        for (index = 0; index < 10; index++) {
            value = D_8011DD70[index];
            if (value != 0) {
                if (value == D_800BE514 || value == (D_800BE514 + target)) {
                    D_800BE5FC = 0xB;
                    return;
                }
                break;
            }
        }
    }

    target = arg0 ? D_800BE50C : D_800BE510;
    if (D_800BE5FC & 1) {
        for (index = 0; index < 10; index++) {
            value = D_8011DD70[index];
            if (value != 0) {
                if (value == D_800BE514 || value == (D_800BE514 + target)) {
                    D_800BE5FC = 0xD;
                    return;
                }
                break;
            }
        }
    }

    count = 0;
    for (index = 0; index < 20; index++) {
        value = D_8011DD70[index];
        if (value != 0) {
            if (value != D_800BE514 && value != (D_800BE514 + D_800BE504)) {
                index = 100;
            }
            else {
                break;
            }
        }
    }

    index++;
    for (; index < 20; index++) {
        value = D_8011DD70[index];
        if (value != 0) {
            if (value == D_800BE504) {
                count++;
                if (count == 2) {
                    D_800BE5FC = 0x10;
                    return;
                }
            }
            else {
                break;
            }
        }
    }

    count = 0;
    index = 0;
    for (; index < 20; index++) {
        value = D_8011DD70[index];
        if (value != 0) {
            if (value != D_800BE514 && value != (D_800BE514 + D_800BE508)) {
                index = 100;
            }
            else {
                break;
            }
        }
    }

    index++;
    for (; index < 20; index++) {
        value = D_8011DD70[index];
        if (value != 0) {
            if (value == D_800BE508) {
                count++;
                if (count == 2) {
                    D_800BE5FC = 0x20;
                    return;
                }
            }
            else {
                break;
            }
        }
    }

    D_800BE5FC = 0;
}

void func_8002C044(void) {
    u16 actor_index;
    u16 index;

    index = 0;
    for (actor_index = 0x30; actor_index < 0x90; actor_index++) {
        if (((gActors[actor_index].flags & (ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE)) == (ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE)) &&
            (gActors[actor_index].health > 0) && (!Actor_IsOutsideRegion(actor_index, 0x20))) {
            D_800D2230[index++] = actor_index;
            if (index >= 0x20) {
                return;
            }
        }
    }
    for (; index < 0x20; index++) {
        D_800D2230[index] = 0;
    }
}

u16 func_8002C140(s32 arg0) {
    u16 index;

    for (index = 0; index < 0x20; index++) {
        if (D_800D2230[index]) {
            if (!(D_800D2230[index] & 0x8000)) {
                D_800D2230[index] |= 0x8000;
                return D_800D2230[index] & 0x7FFF;
            }
        }
    }
    for (index = 0; index < 0x20; index++) {
        if (D_800D2230[index] & 0x8000) {
            return D_800D2230[index] & 0x7FFF;
        }
    }
    return 0;
}

void func_8002C1D8(s32 arg0) {
}

void func_8002C1E0(u16* src, u16* dst, u16 count) {
    while (count > 0) {
        *dst = *src;
        count--;
        src++;
        dst++;
    }
}

void func_8002C218(u16 actor_index) {
    f32 vel_scaled;
    s32 vel_y_scaled;
    s32 vel_x_scaled;

    vel_x_scaled = gActors[actor_index].velocityX.raw / 16384;
    vel_y_scaled = gActors[actor_index].velocityY.raw / 16384;
    vel_scaled = sqrtf((vel_x_scaled * vel_x_scaled) + (vel_y_scaled * vel_y_scaled));
    if ((gActors[actor_index].velocityX.raw == 0) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_index].rotateZ -= vel_scaled;
    }
    else if (gActors[actor_index].velocityX.raw < 0) {
        gActors[actor_index].rotateZ += vel_scaled;
    }
    else {
        gActors[actor_index].rotateZ -= vel_scaled;
    }
}

void func_8002C328(u16 actor_index) {
    if (gActors[actor_index].velocityX.raw != 0) {
        func_8002C218(actor_index);
    }
    else {
        gActors[actor_index].unk_188 = 0;
    }

    gActors[actor_index].rotateZ = (gActors[actor_index].unk_188 / 65536) * 0.3515625;
}

s32 func_8002C3C8(u16 actor_index) {
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        gActors[actor_index].state = 0x30;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
        if (gActors[actor_index].unk_0D6 == 0) {
            gActors[actor_index].var_150 |= 0x80000000;
        }
        else {
            gActors[actor_index].var_150 &= 0x7FFFFFFF;
        }
        gActors[actor_index].var_150 |= 0x100000;
        func_80029134(actor_index);
        return 1;
    }
    else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
        if (gActors[actor_index].unk_0DD != 0x13) {
            if (gActors[actor_index].unk_0DD != 0x17) {
                gActors[actor_index].state = 0x20;
                gActors[actor_index].unk_0D4 = 4;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                if (gActors[actor_index].unk_0FC.raw < FIXED_UNIT(2.0)) {
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                }
                return 1;
            }
        }
        else {
            gActors[actor_index].flags = 0;
            gActors[actor_index].health = 0;
            return 1;
        }
    }
    return 0;
}

void func_8002C510(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
        func_8002ABE4(actor_index, gActors[actor_index].var_158 + 6);
    }
    else {
        func_8002ABE4(actor_index, gActors[actor_index].var_158 - 8);
    }
    func_8002AC30(actor_index, gActors[actor_index].var_158);
}

void func_8002C5C4(u16 actor_index, u16 arg1, s16 arg2, f32 scale, s32 arg4, s16 arg5) {
    gActors[actor_index].state = 0x10;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
    gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = arg1;
    if (scale != 1.0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = scale;
        gActors[actor_index].scaleY = scale;
    }
    gActors[actor_index].var_158 = arg2;
    func_8002C510(actor_index);
    if (arg4 != 0) {
        gActors[actor_index].unk_18C = arg4;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    }
    gActors[actor_index].var_15C = arg5;
    gActors[actor_index].unk_118 = arg5 / 8192;
    gActors[actor_index].unk_0CE = 10;
    gActors[actor_index].health = 10;
    gActors[actor_index].damage = 0;
    gActors[actor_index].unk_0DB = 2;
    gActors[actor_index].unk_0DF = 0;
    gActors[actor_index].unk_178 = 0x200;
}

void func_8002C6DC(s32 arg0) {
}

void func_8002C6E4(u16 actor_index) {
    s32 temp_v0;
    s32 pad0;
    s32 pad1;

    func_8002877C(actor_index);
    D_800E3580 = 0;
    func_8002AA20(actor_index, 0);
    gActors[actor_index].unk_17C = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_180 = gActors[actor_index].posY.whole + D_800BE55C;
    gActors[actor_index].var_150 &= 0xC8CAFFFF;
    switch (gActors[actor_index].state) {
    case 0x0:
        break;
    case 0x10:
        if (func_8002C3C8(actor_index) == 0) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, gActors[actor_index].var_15C);
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
                gActors[actor_index].state = 0x20;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].unk_11C = 0.0f;
            }
        }
        break;
    case 0x40:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].var_150 |= 0x01000000;
            if (gActors[actor_index].flags & ACTOR_FLAG_UNK7) {
                gActors[actor_index].var_150 |= 0x02000000;
            }
            if (gActors[actor_index].flags & ACTOR_FLAG_UNK9) {
                gActors[actor_index].var_150 |= 0x04000000;
            }
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_140_f32 = 8.0f;
            gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.5;
            gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.5;
        }
        /* fallthrough */
    case 0x20:
        if (func_8002C3C8(actor_index) == 0) {
            if (gActors[actor_index].unk_164 & 1) {
                if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.875)) {
                    gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw - gActors[actor_index].var_15C;
                }
            }
            if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || 
                ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
                gActors[actor_index].var_150 |= 0x40000;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].unk_140_f32 = 8.0f;
                gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = (f32) gActors[actor_index].velocityY.raw * 0.5;
            }
            if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].var_150 |= 0x20000;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].unk_140_f32 = 8.0f;
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
                gActors[actor_index].velocityY.raw = 0;
            }
            if ((gActors[actor_index].velocityY.raw <= 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                gActors[actor_index].var_150 |= 0x10000;
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].unk_140_f32 = 8.0f;
                gActors[actor_index].velocityZ.raw = gActors[actor_index].velocityZ.raw / 8;
                if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-2.0)) {
                    gActors[actor_index].unk_11C += 1.0f;
                    gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.5;
                    gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.5;
                }
                else {
                    gActors[actor_index].state = 0x10;
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16; \
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
                    gActors[actor_index].velocityY.raw = 0;
                }
            }
            func_8002C218(actor_index);
        }
        break;
    case 0x30:
        temp_v0 = func_800291AC(actor_index, 0x40, 0x21783, 0x20, 0x21503);
        switch (temp_v0) {
        case 3:
            gActors[actor_index].unk_11C = 0.0f;
            func_8002C510(actor_index);
            gActors[actor_index].unk_140_f32 = 4.0f;
            break;
        case 2:
            if (gActors[actor_index].unk_0D6 == 0) {
                gActors[actor_index].var_150 |= 0x20000000;
            }
            else {
                gActors[actor_index].var_150 |= 0x10000000;
            }
            gActors[actor_index].unk_11C = 0.0f;
            func_8002C510(actor_index);
            gActors[actor_index].unk_140_f32 = 4.0f;
            break;
        case 0:
            break;
        }
        break;
    default:
        func_8002C3C8(actor_index);
        break;
    }
    if (gActors[actor_index].unk_0D4 > 0) {
        gActors[actor_index].unk_0D4--;
    }
    if (gActors[actor_index].unk_140_f32 >= 0.0f) {
        gActors[actor_index].unk_140_f32 -= 1.0f;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8002CCD0(u16 actor_index, s16 pos_x, s16 pos_y, u16 arg3) {
    u8 angle;
    s32 pad;

    gActors[actor_index].timer_110 = 0.0f;
    switch (gActors[actor_index].graphicIndex) {
    default:
        gActors[actor_index].flags = 0;
        return;
    case 0x302E:
        gActors[actor_index].unk_0D8 = 0;
        break;
    case 0x300E:
        gActors[actor_index].unk_0D8 = 2;
        if (gActors[actor_index].unk_18C == (s32)D_800DCE7C) {
            gActors[actor_index].unk_0D8 = 6;
        }
        else if (gActors[actor_index].unk_18C == (s32)D_800DD07C) {
            gActors[actor_index].unk_0D8 = 0xA;
        }
        else if (gActors[actor_index].unk_18C == (s32)D_800DD27C) {
            gActors[actor_index].unk_0D8 = 0xE;
        }
        break;
    case 0x3010:
        gActors[actor_index].unk_0D8 = 4;
        if (gActors[actor_index].unk_18C == (s32)D_800DCE7C) {
            gActors[actor_index].unk_0D8 = 8;
        }
        else if (gActors[actor_index].unk_18C == (s32)D_800DD07C) {
            gActors[actor_index].unk_0D8 = 0xC;
        }
        else if (gActors[actor_index].unk_18C == (s32)D_800DD27C) {
            gActors[actor_index].unk_0D8 = 0x10;
        }
        break;
    case 0x304C:
    case 0x304E:
        gActors[actor_index].unk_0D8 = 0x12;
        break;
    case 0x3004:
        gActors[actor_index].unk_0D8 = 0x14;
        break;
    case 0x3006:
        gActors[actor_index].unk_0D8 = 0x16;
        break;
    case 0x3012:
        gActors[actor_index].unk_0D8 = 0x18;
        break;
    case 0x305C:
    case 0x305E:
    case 0x3060:
        gActors[actor_index].unk_0D8 = 0x1A;
        break;
    case 0x306E:
        gActors[actor_index].unk_0D8 = 0x1C;
        break;
    case 0x246:
        gActors[actor_index].unk_0D8 = 0x1E;
        break;
    }
    gActors[actor_index].actorType = 0x2607;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].flags_098 = 0;
    gActors[actor_index].state = 0;
    gActors[actor_index].unk_114 = 0.0f;
    gActors[actor_index].unk_118 = 0.0f;
    gActors[actor_index].unk_11C = 0.0f;
    gActors[actor_index].unk_120 = 0.0f;
    gActors[actor_index].unk_124 = 0.0f;
    gActors[actor_index].unk_128 = 0.0f;
    gActors[actor_index].unk_12C = 0.0f;
    gActors[actor_index].unk_130 = 0.0f;
    gActors[actor_index].unk_134 = 0.0f;
    gActors[actor_index].unk_138 = 0.0f;
    gActors[actor_index].unk_13C = 0.0f;
    gActors[actor_index].unk_140_f32 = 0.0f;
    gActors[actor_index].unk_144 = 0.0f;
    gActors[actor_index].unk_148 = 0.0f;
    gActors[actor_index].unk_14C = 0.0f;
    gActors[actor_index].var_150 = 0;
    gActors[actor_index].var_154 = 0;
    gActors[actor_index].var_158 = 0;
    gActors[actor_index].var_15C = 0;
    gActors[actor_index].var_160 = 0;
    gActors[actor_index].unk_164 = 0;
    gActors[actor_index].unk_168 = 0;
    gActors[actor_index].unk_16C = 0;
    gActors[actor_index].unk_170 = 0;
    gActors[actor_index].unk_174 = 0;
    gActors[actor_index].unk_178 = 0;
    gActors[actor_index].unk_17C = 0;
    gActors[actor_index].unk_180 = 0;
    gActors[actor_index].unk_184 = 0;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].unk_18C = 0;
    gActors[actor_index].unk_190 = 0;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    angle = func_8000178C();
    if (arg3 & 1) {
        gActors[actor_index].velocityX.raw = (COS(angle * 4) * 131072.0f);
    }
    if (arg3 & 2) {
        gActors[actor_index].velocityY.raw = (SIN(angle * 4) * 131072.0f);
    }
    gActors[actor_index].unk_0D4 = 0x1E;
}

void func_8002D040(u16 actor_index, s32 arg1) {
    u16 index;

    func_800036C8(0x43, actor_index);
    func_8005CA34(-6, 0xA);
    gActors[actor_index].actorType = 1;
    gActors[actor_index].hitboxAY0 = 8;
    gActors[actor_index].hitboxAY1 = -8;
    gActors[actor_index].hitboxAX0 = -8;
    gActors[actor_index].hitboxAX1 = 8;
    gActors[actor_index].flags = ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].damage = 0x28; \
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(1.0625); \
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(7.75);
    gActors[actor_index].unk_0DE = 0;
    gActors[actor_index].unk_0DF = 0;
    gActors[actor_index].unk_0DB = 0xB; \
    gActors[actor_index].unk_0DA = 0x84;
    gActors[actor_index].timer_110 = 8.0f;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    index = func_8003123C(D_800E1380, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0x11);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].unk_18C = (s32) D_800D84E8;
        gActors[index].graphicIndex = 0x168;
        gActors[index].var_150 = 0x800000;
        gActors[index].var_154 = -15;
        gActors[index].scaleX = 1.0f;
        gActors[index].scaleY = 1.0f;
        gActors[index].timer_110 = 0.25f;
        gActors[index].unk_114 = 0.25f;
        Actor_SetColorRgb(index, 0x7F);
    }
    index = func_8003123C(D_800E14C8, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0x10);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[index].var_154 = 16;
        gActors[index].unk_164 = -2;
        gActors[index].unk_17C = (s32) func_80030B0C;
        gActors[index].unk_104 = 0x1E;
        gActors[index].scaleX = 1.5f;
        gActors[index].scaleY = 1.5f;
        gActors[index].timer_110 = 0.04f;
        gActors[index].unk_114 = 0.04f;
    }
    func_8003F9E0(3.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 0x10);
}

void func_8002D260(u16 actor_index) {
    gActors[actor_index].hitboxAY0 += 2;
    gActors[actor_index].hitboxAY1 -= 2;
    gActors[actor_index].hitboxAX0 -= 2;
    gActors[actor_index].hitboxAX1 += 2;
    if (gActors[actor_index].timer_110 != 0.0f) {
        gActors[actor_index].timer_110 -= 1.0f;
    }
    else {
        gActors[actor_index].flags = 0;
    }
}

void func_8002D2F4(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = 0x5E;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].state = 1;
    gActors[actor_index].graphicIndex = 0x2D0;
    gActors[actor_index].posZ.whole = 0xE0;
    gActors[actor_index].scaleX = 20.0f;
    gActors[actor_index].scaleY = 20.0f;
    Actor_SetColorRgb(actor_index, 0);
    gActors[actor_index].unk_18C = (s32) &D_800D8588;
    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].var_150 = 0;
    gActors[actor_index].var_154 = arg1;
}

void func_8002D3C0(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = 0x5E;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].state = 2;
    gActors[actor_index].graphicIndex = 0x2D0;
    gActors[actor_index].posZ.whole = 0xE0;
    gActors[actor_index].scaleX = 20.0f;
    gActors[actor_index].scaleY = 20.0f;
    Actor_SetColorRgb(actor_index, 0);
    gActors[actor_index].unk_18C = (s32) &D_800D8588;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].var_150 = 0;
    gActors[actor_index].var_154 = arg1;
}

void func_8002D488(u16 actor_index) {
    gActors[actor_index].posX.whole = D_800BE5B4;
    gActors[actor_index].posY.whole = D_800BE5B8;
    gActors[actor_index].unk_188 = D_800BE5B0 - 320.0f;
    switch (gActors[actor_index].state) {
    case 1:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, gActors[actor_index].var_154);
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].state = 0;
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
        break;
    case 2:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, gActors[actor_index].var_154);
        break;
    case 3:
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, gActors[actor_index].var_158, gActors[actor_index].var_154);
        break;
    }
}

void func_8002D5E4(u16 actor_index) {
    func_800036C8(0x64, actor_index);
    gActors[actor_index].unk_188 = 1;
    gActors[actor_index].scaleY = 0.1f;
    func_8003FB20(actor_index, 0, 0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
}

void func_8002D670(u16 actor_index) {
    if ((D_800BE4E0 % 20) == 0) {
        gActors[actor_index].colorR = 0x7F;
    }
    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0x20);
    // fakematch: `& 0xFF` for regalloc
    gActors[actor_index].colorB = gActors[actor_index].colorG = gActors[actor_index].colorR & 0xFF;
    if (gActors[actor_index].unk_188 != 0) {
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.4f, 0.1f);
        gActors[actor_index].unk_114 -= 1.0f;
        if (gActors[actor_index].unk_114 < 0.0f) {
            func_8002D040(actor_index, 0);
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0xB6;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 0.4f;
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].unk_0DB = 0x17;
        gActors[actor_index].damage = 0;
        func_8002ABE4(actor_index, 4);
        func_8002AC30(actor_index, 2);
        gActors[actor_index].unk_114 = gActors[actor_index].timer_110 + (0, 16.0f); // fakematch
        gActors[actor_index].unk_18C = (s32) D_800D8A98;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].state += 1;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            func_8002D5E4(actor_index);
        }
        else if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
            func_8002D5E4(actor_index);
        }
        break;
    case 2:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].posX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].posY.raw = gActors[actor_index].unk_108;
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        }
        else {
            gActors[actor_index].state = 1;
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK10) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
        }
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8002D904(u16 actor_index, s32 angle) {
    gActors[actor_index].var_158 = angle;
    angle /= 65536;
    gActors[actor_index].rotateZ = angle * 0.3515625;
    gActors[actor_index].var_150 = COS(angle) * 262144.0f;
    gActors[actor_index].var_154 = SIN(angle) * 262144.0f;
    gActors[actor_index].unk_164 = gActors[actor_index].var_150 / 32;
    gActors[actor_index].unk_168 = gActors[actor_index].var_154 / 32;
    if (gActors[actor_index].unk_164 < 0) {
        gActors[actor_index].unk_164 = -gActors[actor_index].unk_164;
    }
    if (gActors[actor_index].unk_168 < 0) {
        gActors[actor_index].unk_168 = -gActors[actor_index].unk_168;
    }
    gActors[actor_index].velocityX.raw = -gActors[actor_index].var_150 / 3;
    gActors[actor_index].velocityY.raw = -gActors[actor_index].var_154 / 3;
    if (gActors[actor_index].unk_0F8.raw > 0) {
        gActors[actor_index].unk_0F8.raw = gActors[actor_index].unk_0F8.raw;
    }
    else {
        gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
    }
    if (gActors[actor_index].velocityX.raw > 0) {
        gActors[actor_index].unk_0F8.raw = -gActors[actor_index].unk_0F8.raw;
    }
}

void func_8002DB0C(u16 actor_index, u16 arg1, s32 arg2, s32 pos_x, s32 pos_y, s32 pos_z) {
    gActors[actor_index].actorType = 0x22;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0xD8;
    gActors[actor_index].colorA = 0x60;
    func_8002AC30(actor_index, 8);
    gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].scaleY = 1.2f;
    gActors[actor_index].unk_0DF = 0x20;
    gActors[actor_index].unk_0DA = 4;
    gActors[actor_index].unk_0DB = 0xD; \
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2.5); \
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.25);
    gActors[actor_index].damage = 0x32;
    func_8002ABE4(actor_index, 4);
    gActors[actor_index].posX.raw = pos_x;
    gActors[actor_index].posY.raw = pos_y;
    gActors[actor_index].posZ.raw = pos_z + FIXED_UNIT(2.0);
    func_8002D904(actor_index, arg2);
    gActors[actor_index].unk_114 = 0.05f;
    gActors[actor_index].unk_118 = 8.0f;
    if (arg1 & 1) {
        gActors[actor_index].var_15C = 0x80;
    }
    else {
        gActors[actor_index].var_15C = 0x200;
    }
    func_800036C8(0x46, actor_index);
}

void func_8002DC74(u16 actor_index) {
    u16 index;
    if (gActors[actor_index].flags_098 & 2) {
        gActors[actor_index].flags = 0;
        func_8003F9E0(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
    else if ((gActors[actor_index].flags_098 & 1) || func_8002BC10(actor_index)) {
        gActors[actor_index].flags = 0;
        func_8003ED48(actor_index, 0, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
    else {
        if (gActors[actor_index].unk_118 != 0.0f) {
            gActors[actor_index].unk_118 -= 1.0f;
            if (gActors[actor_index].unk_118 == 0.0f) {
                gActors[actor_index].flags |= gActors[actor_index].var_15C;
            }
        }
        if (gActors[actor_index].unk_114 < 0.01) {
            gActors[actor_index].unk_114 -= 0.002;
        }
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.7f, gActors[actor_index].unk_114);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.3f, gActors[actor_index].unk_114 * 1.2);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_150, gActors[actor_index].unk_164);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_154, gActors[actor_index].unk_168);
        if ((D_800BE4E0 % 5) == 0) {
            index = func_8003123C(D_800E157C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 1);
            if (index != 0) {
                gActors[index].graphicFlags = 0x209;
                gActors[index].unk_18C = 0x8022D4E8;
                gActors[index].var_160 = gActors[actor_index].var_158;
                gActors[index].scaleX = gActors[actor_index].scaleX + 0.2;
                gActors[index].scaleY = gActors[actor_index].scaleY + 0.2;
                gActors[index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                gActors[index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
                gActors[index].velocityZ.raw = -1;
                gActors[index].unk_164 = -1;
                gActors[index].unk_148 = 12.0f;
                gActors[index].unk_168 = gActors[index].velocityX.raw / 64;
                gActors[index].unk_16C = gActors[index].velocityY.raw / 64;
                gActors[index].unk_114 = -0.03f;
                gActors[index].posX.raw -= gActors[actor_index].velocityX.raw;
                gActors[index].posY.raw -= gActors[actor_index].velocityY.raw;
            }
        }
    }
}


void func_8002DFC0(u16 actor_index, u16 arg1, s32 angle, s32 pos_x, s32 pos_y, s32 pos_z) {
    gActors[actor_index].actorType = 0x24;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0xD8;
    gActors[actor_index].colorA = 0xA0;
    Actor_SetColorRgb(actor_index, 0x50);
    gActors[actor_index].unk_0DF = 0x20;
    gActors[actor_index].unk_0DA = 4;
    gActors[actor_index].unk_0DB = 2;
    gActors[actor_index].damage = 50;
    gActors[actor_index].scaleX = 0.8f;
    gActors[actor_index].scaleY = 0.8f;
    func_8002ABE4(actor_index, 2);
    gActors[actor_index].var_158 = angle;
    gActors[actor_index].posX.raw = pos_x;
    gActors[actor_index].posY.raw = pos_y;
    gActors[actor_index].posZ.raw = pos_z + FIXED_UNIT(1.125);
    angle /= 65536;
    gActors[actor_index].rotateZ = angle * 0.3515625;
    gActors[actor_index].var_150 = COS(angle) * 131072.0f;
    gActors[actor_index].var_154 = SIN(angle) * 131072.0f;
    gActors[actor_index].unk_164 = gActors[actor_index].var_150 / 8;
    gActors[actor_index].unk_168 = gActors[actor_index].var_154 / 8;
    if (gActors[actor_index].unk_164 < 0) {
        gActors[actor_index].unk_164 = -gActors[actor_index].unk_164;
    }
    if (gActors[actor_index].unk_168 < 0) {
        gActors[actor_index].unk_168 = -gActors[actor_index].unk_168;
    }
    gActors[actor_index].velocityX.raw = -gActors[actor_index].var_150 / 3;
    gActors[actor_index].velocityY.raw = -gActors[actor_index].var_154 / 3;
    gActors[actor_index].unk_118 = 8.0f;
    if (arg1 & 1) {
        gActors[actor_index].var_15C = 0x80;
    }
    else {
        gActors[actor_index].var_15C = 0x200;
    }
    func_800036C8(0x2E, actor_index);
}

void func_8002E288(u16 actor_index) {
    u16 index;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || func_8002BC10(actor_index)) {
        gActors[actor_index].flags = 0;
        func_8003F9E0(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
    else {
        if (gActors[actor_index].unk_118 != 0.0f) {
            gActors[actor_index].unk_118 -= 1.0f;
            if (gActors[actor_index].unk_118 == 0.0f) {
                gActors[actor_index].flags |= gActors[actor_index].var_15C;
            }
        }
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.5f, 0.02f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.2f, 0.05f);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_150, gActors[actor_index].unk_164);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_154, gActors[actor_index].unk_168);
        if ((D_800BE4E0 & 3) == 0) {
            index = func_8003123C(D_800E1380, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 1);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[index].graphicIndex = gActors[actor_index].graphicIndex;
                gActors[index].colorG = 0x50;
                gActors[actor_index].colorB = 0x7F;
                gActors[index].var_160 = gActors[actor_index].var_158 + 0x02000000;
                gActors[index].scaleX = gActors[actor_index].scaleX + 0.2;
                gActors[index].scaleY = gActors[actor_index].scaleY + 0.2;
                gActors[index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                gActors[index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
                gActors[index].velocityZ.raw = -1;
                gActors[index].var_154 = -4;
                gActors[index].unk_148 = 8.0f;
                gActors[index].unk_114 = -0.03f;
            }
        }
    }
}

void func_8002E500(u16 actor_index, u16 arg1, s32 angle, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 index;

    gActors[actor_index].actorType = 0x62;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK10 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].unk_0D8 = arg1;
    ACTOR_GFX_INIT(actor_index, D_800D2284);
    gActors[actor_index].colorA = 0xC0;
    gActors[actor_index].unk_0DF = 0x20;
    gActors[actor_index].unk_0DA = 4;
    gActors[actor_index].unk_0DB = 2;
    gActors[actor_index].damage = 0x50;
    gActors[actor_index].scaleX = -0.0f;
    gActors[actor_index].scaleY = 2.0f;
    func_8002ABE4(actor_index, 2);
    gActors[actor_index].var_158 = angle;
    gActors[actor_index].posX.raw = pos_x;
    gActors[actor_index].posY.raw = pos_y;
    gActors[actor_index].posZ.raw = pos_z;
    angle /= 65536;
    gActors[actor_index].rotateZ = angle * 0.3515625;
    gActors[actor_index].var_150 = COS(angle) * 262144.0f;
    gActors[actor_index].var_154 = SIN(angle) * 262144.0f;
    gActors[actor_index].unk_164 = gActors[actor_index].var_150 / 4;
    gActors[actor_index].unk_168 = gActors[actor_index].var_154 / 4;
    if (gActors[actor_index].unk_164 < 0) {
        gActors[actor_index].unk_164 = -gActors[actor_index].unk_164;
    }
    if (gActors[actor_index].unk_168 < 0) {
        gActors[actor_index].unk_168 = -gActors[actor_index].unk_168;
    }
    gActors[actor_index].velocityX.raw = -gActors[actor_index].var_150 / 2;
    gActors[actor_index].velocityY.raw = -gActors[actor_index].var_154 / 2;
    gActors[actor_index].unk_118 = 8.0f;
    if (arg1 & 1) {
        gActors[actor_index].var_15C = 0x80;
    }
    else {
        gActors[actor_index].var_15C = 0x200;
    }
    if (!(arg1 & 0xF0)) {
        gActors[actor_index].colorR = 0x7F;
        gActors[actor_index].colorG = 0x40;
    }
    index = func_80031284(0x1B2, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 2);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].colorR = gActors[actor_index].colorR;
        gActors[index].colorG = gActors[actor_index].colorG;
        gActors[index].colorB = gActors[actor_index].colorB;
        gActors[index].unk_18C = (s32) &D_800D84E8;
        gActors[index].var_160 = gActors[actor_index].var_158 + 0x02000000;
        gActors[index].velocityX.raw = gActors[actor_index].var_150 / 2;
        gActors[index].velocityY.raw = gActors[actor_index].var_154 / 2;
        gActors[index].scaleX = 0.22f;
        gActors[index].scaleY = 1.56f;
        gActors[index].unk_164 = -4;
        gActors[index].timer_110 = 0.11f;
        gActors[index].unk_114 = -0.156f;
        gActors[index].unk_118 = -0.0077f;
        gActors[index].unk_11C = 0.0065f;
    }
    func_800036C8(0x2E, actor_index);
}

void func_8002E89C(u16 actor_index) {
    u16 index;

    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || func_8002BC10(actor_index)) {
        gActors[actor_index].flags = 0;
        func_8003F9E0(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        if (gActors[actor_index].unk_118 != 0.0f) {
            gActors[actor_index].unk_118 -= 1.0f;
            if (gActors[actor_index].unk_118 == 0.0f) {
                gActors[actor_index].flags |= gActors[actor_index].var_15C;
            }
        }
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.04f);
        gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.45f, 0.15f);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, gActors[actor_index].var_150, gActors[actor_index].unk_164);
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, gActors[actor_index].var_154, gActors[actor_index].unk_168);
        if ((D_800BE4E0 & 3) == 0) {
            index = func_8003123C(D_800D2284, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 1);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[index].colorR = gActors[actor_index].colorR;
                gActors[index].colorG = gActors[actor_index].colorG;
                gActors[index].colorB = gActors[actor_index].colorB;
                gActors[index].var_160 = gActors[actor_index].var_158;
                gActors[index].scaleX = gActors[actor_index].scaleX * 1.2;
                gActors[index].scaleY = gActors[actor_index].scaleY * 1.2;
                gActors[actor_index].scaleY += (func_8000178C() & 0xF) / 180.0f;
                gActors[index].velocityX.raw = -gActors[actor_index].velocityX.raw * gActors[actor_index].scaleX;
                gActors[index].velocityY.raw = -gActors[actor_index].velocityY.raw * gActors[actor_index].scaleX;
                gActors[index].var_158 = gActors[index].velocityX.raw / 16;
                gActors[index].var_15C = gActors[index].velocityY.raw / 16;
                gActors[index].velocityZ.raw = -1;
                gActors[index].var_154 = -0x20;
                gActors[index].unk_114 = -0.08f;
            }
        }
    }
}

void func_8002EBB8(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y) {
    gActors[actor_index].actorType = 0x2602;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG3_UNK2 | ACTOR_FLAG3_UNK1 | ACTOR_FLAG3_UNK0;
    gActors[actor_index].graphicIndex = 0x24A;
    gActors[actor_index].unk_0CE = 5;
    gActors[actor_index].unk_0DF = 0;
    gActors[actor_index].unk_0DA = 4;
    gActors[actor_index].unk_0DB = 4;
    gActors[actor_index].scaleX = 0.8f;
    gActors[actor_index].scaleY = 0.8f;
    func_8002ABE4(actor_index, 4);
    func_8002AC30(actor_index, 8);
    gActors[actor_index].health = 1;
    gActors[actor_index].damage = 0x1E;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].velocityX.raw = vel_x;
    gActors[actor_index].velocityY.raw = vel_y;
}

void func_8002ECAC(u16 actor_index, s16 pos_x, s16 pos_y, s32 vel_x, s32 vel_y) {
    gActors[actor_index].actorType = 0x2600;
    func_8001E2D0(actor_index);
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].velocityX.raw = vel_x;
    gActors[actor_index].velocityY.raw = vel_y;
}

void func_8002ED34(u16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
}

// possibly has another unused arg4, matching func_8002ECAC interface
void func_8002ED48(u16 actor_index, s16 pos_x, s16 pos_y, s32 arg3) {
    gActors[actor_index].actorType = 0x2603;
    func_8001E2D0(actor_index);
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].health = 10;
}

void func_8002EDC8(u16 actor_index, u16 arg1, s32 angle, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 index;
    s32 pad0;
    s32 pad1;
    s32 pad2;

    index = Actor_RangeFindFlag2(0x70, 0x7A);
    if (index != 0) {
        if (arg1 & 0x1000) {
            angle = Math_Atan2(gActors[0].posX.raw - pos_x, gActors[0].posY.raw - pos_y);
        }
        switch (arg1 & 0x300) {
        case 0x100:
            angle = (angle + 0x80) & 0x300;
            break;
        case 0x200:
            angle = (angle + 0x40) & 0x380;
            break;
        case 0x300:
            angle = (angle + 0x20) & 0x3C0;
            break;
        }
        if (arg1 & 0x4000) {
            D_800E3580 = 0;
            func_8002AA20(actor_index, 0);
        }
        if (arg1 & 0x8000) {
            pos_x += (COS(angle) * (1048576.0f * gActors[actor_index].scaleX));
            pos_y += (SIN(angle) * (1048576.0f * gActors[actor_index].scaleX));
        }
        if (!(arg1 & 0xFF) && (func_80029B00(0x80, 0x80, -0x80) != 0)) {
            func_8002DFC0(index, 0, angle << 0x10, pos_x, pos_y, pos_z);
        }
    }
}

u16 func_8002EFE4(u16 actor_index, u16 arg1, u16 unused_arg2) {
    u16 index;

    if ((arg1 & 3) == 2) {
        if (func_8001C7F0(gDebugStageSelectSelectedIndex)) {
            return 0;
        }
    }
    index = Actor_RangeFindFlag2(0x7A, 0x82);
    if (index != 0) {
        gActors[index].actorType = 8;
        func_8001E2D0(index);
        gActors[index].flags = ACTOR_FLAG_ACTIVE;
        gActors[index].timer_110 = arg1;
        gActors[index].posX.whole = gActors[actor_index].posX.whole;
        gActors[index].posY.whole = gActors[actor_index].posY.whole;
        if (arg1 & 0x10) {
            gActors[index].velocityY.raw = FIXED_UNIT(4.0);
        }
        if (arg1 & 0x20) {
            gActors[index].var_150 = 0x78;
        }
        func_800036C8(0x51, actor_index);
    }
    return index;
}

s32 func_8002F154(u16 actor_index, u16 arg1, u16 arg2) {
    u16 index;

    index = func_8002EFE4(actor_index, arg1, arg2);
    if (index != 0) {
        gActors[index].actorType = 0x3D;
    }
    return index;
}

u16 func_8002F1C8(u16 actor_index) {
    u16 index;

    index = 0;
    if (D_800D2958 >= 0) {
        if (func_8001C7F0(gDebugStageSelectSelectedIndex) == 0) {
            func_8003FE4C(1.0f, gActors[0].posX.whole, gActors[0].posY.whole + 48, 2);
            index = func_8002EFE4(actor_index, 50, 0);
            if (index != 0) {
                gActors[index].actorType = 0x3D;
                gActors[index].posX.whole = gActors[0].posX.whole;
                gActors[index].posY.whole = gActors[0].posY.whole + 48;
            }
        }
    }
    return index;
}

void func_8002F2A8(u16 arg0) {
    u16 index;

    index = Actor_RangeFindFlag2_90ToC0();
    if (index != 0) {
        gActors[index].actorType = 0x7B;
        func_8001E2D0(index);
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8;
        gActors[index].flags = ACTOR_FLAG_ACTIVE;
        ACTOR_GFX_INIT(index, D_800E164C);
        gActors[index].unk_18C = D_800D1958[(arg0 & 0x300) / 256];
        gActors[index].var_150 = arg0 & 0x8000;
        gActors[index].var_154 = arg0 & 0xF;
        gActors[index].var_158 = (360 / gActors[index].var_154) / 0.3515625;
        gActors[index].var_15C = arg0 & 0x100;
        if (gActors[index].var_150 != 0) {
            D_80178136 -= gActors[index].var_154;
            gActors[index].unk_12C = 0.0f;
            if (D_80178136 & 0x8000) {
                D_80178136 = 0;
            }
        }
        else {
            gActors[index].unk_12C = 127.0f;
        }
    }
}

void func_8002F420(u16 actor_index) {
    s16 index;
    u16 actor;
    u16 angle;

    angle = (D_800BE4E0 * 8);
    gActors[actor_index].posX.whole = ((COS(angle) * gActors[actor_index].unk_12C) + gActors->posX.whole);
    gActors[actor_index].posY.whole = ((SIN(angle) * gActors[actor_index].unk_12C) + gActors->posY.whole);
    gActors[actor_index].posZ.whole = 8;

    for (index = gActors[actor_index].var_154; index >= 0; index--, angle += gActors[actor_index].var_158) {
        actor = Actor_RangeFindFlag2_90ToC0();
        if (actor != 0) {
            gActors[actor].actorType = 0x34;
            func_8001E2D0(actor);
            gActors[actor].graphicFlags = gActors[actor_index].graphicFlags;
            gActors[actor].graphicIndex = gActors[actor_index].graphicIndex;
            gActors[actor].colorA = gActors[actor_index].colorA;
            gActors[actor].unk_18C = gActors[actor_index].unk_18C;
            func_80031D58(actor_index, actor);
            gActors[actor].posX.whole = ((COS(angle) * gActors[actor_index].unk_12C) + gActors->posX.whole);
            gActors[actor].posY.whole = ((SIN(angle) * gActors[actor_index].unk_12C) + gActors->posY.whole);
            gActors[actor].posZ.whole = gActors[actor_index].posZ.whole;
        }
    }
}

void func_8002F6AC(void) {
    if (D_80178136 >= 0x270F) {
        D_80178136 = 0x270F;
    }
}

void func_8002F6D4(u16 actor_index) {
    u16 alpha;

    if (gActors[actor_index].var_150 != 0) {
        gActors[actor_index].unk_12C += 1.0f;
        if (gActors[actor_index].unk_12C > 127.0f) {
            gActors[actor_index].flags = 0;
            return;
        }
    }
    else {
        gActors[actor_index].unk_12C -= 1.0f;
        if (gActors[actor_index].unk_12C <= 0.0f) {
            gActors[actor_index].flags = 0;
            D_80178136 += gActors[actor_index].var_154;
            func_8002F6AC();
            func_8003FB20(actor_index, 0, 2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
            Sound_PlaySfx(0x57);
        }
    }
    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    func_8002F420(actor_index);
    alpha = gActors[actor_index].unk_12C * 2;
    if (alpha >= 0x100) {
        alpha = 0xFF;
    }
    gActors[actor_index].colorA = (u8) alpha;
    if ((((u16)gActors[actor_index].unk_12C) % 12) == 0) {
        Sound_PlaySfx(0x140);
    }
}

void func_8002F93C(u16 actor_index, u16 arg1, s32 arg2, s16 pos_x, s16 pos_y) {
    if (arg2 == (s32)D_800D88B8) {
        D_80178136 += 1;
        func_8002F6AC();
        func_8003FB20(actor_index, 0, 1.0f, pos_x, pos_y, gActors[D_800D2950].posZ.whole);
        if (arg1) {
            func_80003828(0x57, actor_index);
        }
        else {
            func_800036C8(0x57, actor_index);
        }
    }
    else if (arg2 == (s32)D_800D86D8) {
        if (D_800D2950 != 0) {
            gActors[D_800D2950].health += 0x1E;
        }
        else {
            func_80057320(0, 0x1E);
        }
        func_800337F4(pos_x, pos_y, 4, 0x132);
        if (arg1) {
            func_80003828(0x95, actor_index);
        }
        else {
            func_800036C8(0x95, actor_index);
        }
    }
    else if (arg2 == (s32)D_800D8C78) {
        func_8001C7A4();
        if (D_800D2950 != 0) {
            gActors[D_800D2950].health += 0x1F4;
        }
        else {
            func_80057320(0, 0x1F4);
        }
        func_8003F9CC(2.5f, pos_x, pos_y, 0);
        if (arg1) {
            func_80003828(0x3B, actor_index);
        }
        else {
            func_800036C8(0x3B, actor_index);
        }
    }
    else {
        func_8003F8B0(1.0f, pos_x, pos_y, gActors[D_800D2950].posZ.whole);
        if (D_800D2950 != 0) {
            gActors[D_800D2950].health += 0x12C;
        }
        else {
            func_80057320(0, 0x12C);
        }
        if (arg1 != 0) {
            func_80003828(0x125, actor_index);
        }
        else {
            func_800036C8(0x125, actor_index);
        }
    }
}

u16 func_8002FC30(u16 actor_index) {
    if ((D_800D2950 != 0) && (gActors[D_800D2950].health == 0)) {
        return gActors[actor_index].flags;
    }
    if (func_8005D1E8(actor_index) != 0) {
        gActors[actor_index].flags = 0;
        func_8002F93C(actor_index, 0, gActors[actor_index].unk_18C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole);
    }
    return gActors[actor_index].flags;
}

s32 func_8002FD48(u16 actor_index) {
    if ((D_800D2950 != 0) && (gActors[D_800D2950].health == 0)) {
        return 0;
    }

    if (((D_801069E0[actor_index].unk_084 + 6) >= (gActors->posX.whole + gActors->hitboxBX0)) && 
        ((D_801069E0[actor_index].unk_084 - 6) <= (gActors->posX.whole + gActors->hitboxBX1)) &&
        ((D_801069E0[actor_index].unk_088 - 6) <= (gActors->posY.whole + gActors->hitboxBY0)) && 
        ((D_801069E0[actor_index].unk_088 + 6) >= (gActors->posY.whole + gActors->hitboxBY1))) {
        func_8002F93C(actor_index, 1, D_801069E0[actor_index].unk_08C, D_801069E0[actor_index].unk_084, D_801069E0[actor_index].unk_088);
        return 1;
    }

    if ((gActors->flags & ACTOR_FLAG_UNK11) && 
        ((D_801069E0[actor_index].unk_084 + 6) >= (gActors->posX.whole + gActors->hitboxAX0)) && 
        ((D_801069E0[actor_index].unk_084 - 6) <= (gActors->posX.whole + gActors->hitboxAX1)) && 
        ((D_801069E0[actor_index].unk_088 - 6) <= (gActors->posY.whole + gActors->hitboxAY0)) && 
        ((D_801069E0[actor_index].unk_088 + 6) >= (gActors->posY.whole + gActors->hitboxAY1))) {
        func_8002F93C(actor_index, 1, D_801069E0[actor_index].unk_08C, D_801069E0[actor_index].unk_084, D_801069E0[actor_index].unk_088);
        return 2;
    }

    return 0;
}

void func_8002FEF8(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        ACTOR_GFX_INIT(actor_index, D_800E164C);
        gActors[actor_index].unk_18C = D_800D1958[((u16)gActors[actor_index].timer_110) & 3];
        func_800358DC(actor_index);
    }
    else {
        func_80035A20(actor_index);
    }
}

void func_80030008(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_800E164C);
        gActors[actor_index].unk_18C = D_800D1958[(u16)gActors[actor_index].timer_110];
        func_8002ABE4(actor_index, 6);
        func_8002AC30(actor_index, 8);
        /* fallthrough */
    case 1:
        if (D_800D28FC & 0x4000) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x400000;
        }
        break;
    case 2:
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
        gActors[actor_index].colorA = Math_ApproachF32(gActors[actor_index].colorA, 128.0f, 4.0f);
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.5f, 0.1f);
        func_80040E08(actor_index, 0);
        gActors[actor_index].posY.raw += FIXED_UNIT(0.5);
        gActors[actor_index].var_150 -= 0x8000;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].state++;
        }
        break;
    case 3:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.1f);
        func_80040E08(actor_index, 0);
        if (gActors[actor_index].colorA == 0xFF) {
            func_8002FC30(actor_index);
        }
        else {
            gActors[actor_index].colorA = Math_ApproachF32(gActors[actor_index].colorA, 255.0f, 4.0f);
        }
        break;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
}

void func_800303A8(u16 actor_index) {
    s32 pad;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_800E164C);
        gActors[actor_index].colorA = 0xFE;
        func_8002ABE4(actor_index, 6);
        func_8002AC30(actor_index, 8);
        gActors[actor_index].var_154 = (u16)gActors[actor_index].timer_110 & 0xF;
        gActors[actor_index].unk_18C = D_800D1958[gActors[actor_index].var_154];
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].var_150 = 0x78;
        }
        if ((u16)gActors[actor_index].timer_110 & 0x40) {
            gActors[actor_index].unk_134 = 40.0f;
        }
        else {
            gActors[actor_index].unk_134 = 12.0f;
        }
        /* fallthrough */
    case 1:
        Actor_SetColorRgb(actor_index, 0);
        if (gActors[actor_index].unk_134 > 0.0f) {
            gActors[actor_index].unk_134 -= 1.0f;
            if (D_800BE4E0 & 1) {
                Actor_SetColorRgb(actor_index, 0x7F);
            }
        }
        else if (func_8002FC30(actor_index) == 0) {
            return;
        }
        if ((u16)gActors[actor_index].timer_110 & 0x10) {
            if ((D_800D28E4 >= 0xA) && (D_800D28E4 < 0x15) && (gActors[actor_index].posY.whole < -0x50) && 
                (D_800D28E4 != 0x13) && (D_800D28E4 != 0x12) && (D_800D28E4 != 0x11)) {
                gActors[actor_index].flags = 0;
                func_8003FF68(actor_index, 0.5f);
                return;
            }
            else {
                if (func_8003526C(actor_index, 0x8400, 0, 0, 0x66) >= 0) {
                    gActors[actor_index].flags = 0;
                    return;
                }
                else {
                    gActors[actor_index].posZ.raw = FIXED_UNIT(1.5);
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
                    if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-4.5)) {
                        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.171875);
                    }
                    if (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
                        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
                    }
                    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                        gActors[actor_index].velocityX.raw /= 2;
                        gActors[actor_index].velocityY.raw = -Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(1.0));
                        if (gActors[actor_index].velocityY.raw < FIXED_UNIT(2.0)) {
                            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
                        }
                    }
                }
            }
        }
        else {
            gActors[actor_index].posZ.raw = FIXED_UNIT(-6.0);
        }
        if ((u16)gActors[actor_index].timer_110 & 0x20) {
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 < 0) {
                if (gActors[actor_index].colorA < 6) {
                    gActors[actor_index].flags = 0;
                    return;
                }
                else {
                    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
                    gActors[actor_index].colorA -= 0xA;
                    gActors[actor_index].scaleX -= 0.02;
                    gActors[actor_index].scaleY -= 0.02;
                }
            }
        }
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_80030964(u16 actor_index) {
    func_800303A8(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
}

void func_800309C0(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicList = D_800E1DEC;
        gActors[actor_index].graphicTimer = 1;
    }
}

void func_80030A24(u16 actor_index) {
    func_8002B25C(actor_index, gActors[actor_index].unk_104);
}

void func_80030A74(u16 actor_index) {
    if (D_800BE4E0 & 1) {
        gActors[actor_index].colorR = 0x7F;
        gActors[actor_index].colorG = 0x7F;
        gActors[actor_index].colorB = 0x7F;
        return;
    }
    else {
        gActors[actor_index].colorR = 0x4F;
        gActors[actor_index].colorG = 0x4F;
        gActors[actor_index].colorB = 0x4F;
    }
}

void func_80030B0C(u16 actor_index) {
    if (gActors[actor_index].unk_104 > 0) {
        gActors[actor_index].unk_104--;
        return;
    }
    else {
        gActors[actor_index].colorA = func_8002AE44(gActors[actor_index].colorA, gActors[actor_index].unk_108);
    }
}

void func_80030B84(u16 arg0) {
    func_80030A74(arg0);
    func_80030B0C(arg0);
}

void func_80030BB8(u16 actor_index) {
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.03125));
    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.203125);

    if (((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || 
        ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
        gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.7;
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
    }

    if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
        gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.5;
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
    }

    if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
        gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.7;
    }
}

void func_80030D9C(u16 actor_index) {
    s32 velocity_x;

    func_80030BB8(actor_index);
    velocity_x = gActors[actor_index].velocityX.raw * 12;
    if (velocity_x < 0) {
        velocity_x = -velocity_x;
    }
    if (velocity_x < 0x180000) {
        velocity_x = 0x180000;
    }
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        gActors[actor_index].var_160 += velocity_x;
    }
    else {
        gActors[actor_index].var_160 -= velocity_x;
    }
}

void func_80030E58(u16 actor_index) {
    u16 index;

    gActors[actor_index].unk_108--;
    if (gActors[actor_index].unk_108 <= 0) {
        gActors[actor_index].unk_108 = 2;
        index = func_8003123C(D_800E1540, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[index].timer_110 = -0.06f;
            gActors[index].unk_114 = -0.06f;
            gActors[index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
            gActors[index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
            gActors[index].var_15C = 0x1000;
            gActors[index].var_154 = -0x12;
            Actor_SetColorRgb(index, 0x7F);
            gActors[index].unk_104 = -0x20;
            gActors[index].unk_17C = (s32) &func_80030A24;
        }
    }
}

u16 func_80030F94(u16 actor_index, s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 index;

    index = actor_index & 0x7FFF;
    if (index != 0) {
        gActors[index].actorType = 9;
        func_8001E2D0(index);
        gActors[index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        if (actor_index & 0x8000) {
            gActors[index].posX.raw = pos_x;
            gActors[index].posY.raw = pos_y;
            gActors[index].posZ.raw = pos_z;
        }
        else {
            gActors[index].posX.whole = pos_x;
            gActors[index].posY.whole = pos_y;
            gActors[index].posZ.whole = pos_z;
        }
        gActors[index].unk_130 = -1.0f;
        gActors[index].unk_184 = gActors[index].posX.raw;
        gActors[index].unk_188 = gActors[index].posY.raw;
        gActors[index].unk_148 = 240.0f;
        if (graphic_list == D_800E1380) {
            gActors[index].graphicTimer = 0x1E0;
        }
        else {
            gActors[index].graphicList = graphic_list;
        }
    }
    return index;
}

u16 func_800310A4(u16 actor_index, u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 index;

    index = actor_index & 0x7FFF;
    if (index != 0) {
        gActors[index].actorType = 9;
        func_8001E2D0(index);
        gActors[index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        if (actor_index & 0x8000) {
            gActors[index].posX.raw = pos_x;
            gActors[index].posY.raw = pos_y;
            gActors[index].posZ.raw = pos_z;
        }
        else {
            gActors[index].posX.whole = pos_x;
            gActors[index].posY.whole = pos_y;
            gActors[index].posZ.whole = pos_z;
        }
        gActors[index].unk_130 = -1.0f;
        gActors[index].unk_184 = gActors[index].posX.raw;
        gActors[index].unk_188 = gActors[index].posY.raw;
        gActors[index].unk_148 = 240.0f;
        gActors[index].graphicIndex = graphic_index;
    }
    return index;
}

u16 func_8003119C(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
    return func_80030F94(actor_index, graphic_list, pos_x, pos_y, pos_z);
}

u16 func_800311EC(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
    return func_800310A4(actor_index, graphic_index, pos_x, pos_y, pos_z);
}

u16 func_8003123C(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2_90ToC0();
    return func_80030F94(actor_index, graphic_list, pos_x, pos_y, pos_z);
}

u16 func_80031284(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2_90ToC0();
    return func_800310A4(actor_index, graphic_index, pos_x, pos_y, pos_z);
}

u16 func_800312CC(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
    return func_80030F94(actor_index | 0x8000, graphic_list, pos_x, pos_y, pos_z);
}

u16 func_80031324(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
    return func_800310A4(actor_index | 0x8000, graphic_index, pos_x, pos_y, pos_z);
}

u16 func_8003137C(s16* graphic_list, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2_90ToC0();
    return func_80030F94(actor_index | 0x8000, graphic_list, pos_x, pos_y, pos_z);
}

u16 func_800313CC(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index = Actor_RangeFindFlag2_90ToC0();
    return func_800310A4(actor_index | 0x8000, graphic_index, pos_x, pos_y, pos_z);
}

void func_8003141C(u16 actor_index) {
    u16 angle;
    f32 x;
    f32 y;
    s16* vals;
    s16 temp;
    u16 index;
    s32 dist;
    s32 pad;

    if (gActors[actor_index].state != 0) {
        if (((D_800E1380 != gActors[actor_index].graphicList) && (*gActors[actor_index].graphicList == 0) &&
            (gActors[actor_index].graphicTimer == 0)) || ((gActors[actor_index].colorA == 0) && (gActors[actor_index].var_154 < 0)) || (gActors[actor_index].unk_148 == 0.0f)) {
            gActors[actor_index].flags = 0;
            return;
        }
        if (gActors[actor_index].unk_17C != 0) {
            ((ActorFunc) gActors[actor_index].unk_17C)(actor_index);
        }
        gActors[actor_index].var_154 += gActors[actor_index].unk_164;
        gActors[actor_index].unk_148 -= 1.0f;
        gActors[actor_index].colorA = func_8002AE44(gActors[actor_index].colorA, gActors[actor_index].var_154);
        if (gActors[actor_index].colorA == 0xFF) {
            gActors[actor_index].colorA = 0xFE;
        }
        gActors[actor_index].timer_110 += gActors[actor_index].unk_118;
        gActors[actor_index].unk_114 += gActors[actor_index].unk_11C;
        gActors[actor_index].scaleX += gActors[actor_index].timer_110;
        gActors[actor_index].scaleY += gActors[actor_index].unk_114;
        gActors[actor_index].var_160 += gActors[actor_index].var_150;
    }
    gActors[actor_index].state++;
    gActors[actor_index].rotateZ = ((gActors[actor_index].var_160 / 65536) & 0x3FF) * 0.3515625;
    if (gActors[actor_index].unk_178 != 0) {
        gActors[actor_index].unk_128 -= 1.0f;
        if (gActors[actor_index].unk_128 < 0.0f) {
            vals = (s16*)gActors[actor_index].unk_178;
            temp = *vals;
            if (temp != 0) {
                if (temp < 0) {
                    vals += temp;
                    temp = *vals;
                }
                gActors[actor_index].unk_18C = D_800D1810[temp];
                vals += 2;
                gActors[actor_index].unk_128 = vals[-1];
                gActors[actor_index].unk_178 = (s32) vals;
            }
            else {
                gActors[actor_index].unk_178 = 0;
            }
        }
    }
    gActors[actor_index].var_158 += gActors[actor_index].unk_168;
    gActors[actor_index].var_15C += gActors[actor_index].unk_16C;
    gActors[actor_index].velocityX.raw += gActors[actor_index].var_158;
    gActors[actor_index].velocityY.raw += gActors[actor_index].var_15C;
    gActors[actor_index].velocityZ.raw += gActors[actor_index].unk_174;
    if (gActors[actor_index].unk_130 >= 0.0f) {
        index = gActors[actor_index].unk_130;
        if (gActors[index].flags & ACTOR_FLAG_ACTIVE) {
            if (gActors[index].actorType == gActors[actor_index].unk_14C) { // int/float comparison
                if (gActors[actor_index].flags & ACTOR_FLAG_UNK15) {
                    x = gActors[actor_index].unk_140_f32 * gActors[actor_index].scaleX;
                    y = gActors[actor_index].unk_144 * gActors[actor_index].scaleY;
                    dist = sqrtf(SQ(x) + SQ(y)) * 65536.0f;
                    angle = Math_Atan2(x, y);
                    angle = (gActors[actor_index].var_160 / 65536) + angle;
                    gActors[actor_index].posX.raw = COS(angle) * dist;
                    gActors[actor_index].posY.raw = SIN(angle) * dist;
                    gActors[actor_index].posX.raw += gActors[index].posX.raw + gActors[actor_index].velocityX.raw;
                    gActors[actor_index].posY.raw += gActors[index].posY.raw + gActors[actor_index].velocityY.raw;
                    gActors[actor_index].posX.whole += (s16) gActors[actor_index].unk_134;
                    gActors[actor_index].posY.whole += (s16) gActors[actor_index].unk_138;
                }
                else {
                    gActors[actor_index].posX.raw = gActors[index].posX.raw + gActors[actor_index].velocityX.raw;
                    gActors[actor_index].posY.raw = gActors[index].posY.raw + gActors[actor_index].velocityY.raw;
                    gActors[actor_index].posX.whole += (s16) gActors[actor_index].unk_134;
                    gActors[actor_index].posY.whole += (s16) gActors[actor_index].unk_138;
                }
                gActors[actor_index].posZ.raw = gActors[index].posZ.raw + gActors[actor_index].unk_13C;
                return;
            }
        }
        gActors[actor_index].flags = 0;
    }
    else if (gActors[actor_index].flags & ACTOR_FLAG_UNK15) {
        gActors[actor_index].unk_184 += gActors[actor_index].velocityX.raw + ((D_800BE560 - D_800BE558) << 0x10);
        gActors[actor_index].unk_188 += gActors[actor_index].velocityY.raw + ((D_800BE564 - D_800BE55C) << 0x10);
        x = gActors[actor_index].unk_140_f32 * gActors[actor_index].scaleX;
        y = gActors[actor_index].unk_144 * gActors[actor_index].scaleY;
        dist = sqrtf(SQ(x) + SQ(y)) * 65536.0f;
        angle = Math_Atan2(x, y);
        angle = (gActors[actor_index].var_160 / 65536) + angle;
        gActors[actor_index].posX.raw = gActors[actor_index].unk_184 + (COS(angle) * dist);
        gActors[actor_index].posY.raw = gActors[actor_index].unk_188 + (SIN(angle) * dist);
    }
}

u16 func_80031CAC(u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2_90ToC0();
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x34;
        func_8001E2D0(actor_index);
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = graphic_index;
        gActors[actor_index].posX.raw = pos_x;
        gActors[actor_index].posY.raw = pos_y;
        gActors[actor_index].posZ.raw = pos_z;
        gActors[actor_index].unk_148 = 1.0f;
    }
    return actor_index;
}

void func_80031D58(u16 arg0, u16 arg1) {
    if (arg1 < arg0) {
        gActors[arg1].unk_148 = 0.0f;
    }
    else {
         gActors[arg1].unk_148 = 1.0f;
    }
}

void func_80031DDC(u16 actor_index) {
    if (gActors[actor_index].unk_148 == 0.0f) {
        gActors[actor_index].flags = 0;
    }
    gActors[actor_index].unk_148 -= 1.0f;
}

u16 func_80031E38(u16 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, u16 arg5, u16 arg6, s32 arg7, s32 arg8, s16 arg9, s16 arg10, s16 arg11, s16 arg12, s16 arg13, s16 arg14, s16 arg15, s16 arg16, s16 arg17, s16 arg18, s16 arg19, s16 arg20, s16 arg21, s16 arg22, u16 arg23, u16 arg24, u16 arg25, u16 arg26, s16 arg27, s16 arg28) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(arg0, arg1);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x36;
        func_8001E2D0(actor_index);
        gActors[actor_index].unk_130 = arg2;
        gActors[actor_index].unk_134 = arg3;
        gActors[actor_index].unk_138 = arg25;
        gActors[actor_index].unk_13C = arg26;
        gActors[actor_index].unk_0DA = arg5;
        gActors[actor_index].unk_0DB = arg6;
        gActors[actor_index].damage = arg27;
        gActors[actor_index].unk_0F8.raw = arg7;
        gActors[actor_index].unk_0FC.raw = arg8;
        gActors[actor_index].unk_140_f32 = arg28;
        gActors[actor_index].hitboxAY0 = arg13;
        gActors[actor_index].hitboxAY1 = arg14;
        gActors[actor_index].hitboxAX0 = arg11;
        gActors[actor_index].hitboxAX1 = arg12;
        if (arg23) {
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[actor_index].var_154 = arg23;
            gActors[actor_index].var_150 = arg4;
        }
        else {
            gActors[actor_index].flags = arg4 + ACTOR_FLAG_ACTIVE;
        }
        if (gActors[arg2].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].unk_104 = -arg9;
            gActors[actor_index].unk_128 = -arg16;
            gActors[actor_index].unk_12C = -arg15;
            gActors[actor_index].unk_118 = arg20;
            gActors[actor_index].unk_11C = arg19;
        }
        else {
            gActors[actor_index].unk_104 = arg9;
            gActors[actor_index].unk_128 = arg16;
            gActors[actor_index].unk_12C = arg15;
            gActors[actor_index].unk_118 = arg19;
            gActors[actor_index].unk_11C = arg20;
        }
        gActors[actor_index].unk_108 = arg10;
        gActors[actor_index].unk_120 = arg17;
        gActors[actor_index].unk_124 = arg18;
        gActors[actor_index].timer_110 = arg21;
        gActors[actor_index].unk_114 = arg22;
        gActors[actor_index].var_158 = arg24;
    }
    return actor_index;
}

void func_800320F8(u16 actor_index) {
    u16 actor_130;
    u16 index;
    u16 count;

    if (gActors[actor_index].var_154 != 0) {
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 == 0) {
            gActors[actor_index].flags |= gActors[actor_index].var_150;
        }
    }
    else {
        actor_130 = gActors[actor_index].unk_130;
        index = gActors[actor_index].unk_134;
        (&gActors[actor_130].var_150)[index] &= 0xFFFF0EFF;
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
            (&gActors[actor_130].var_150)[index] |= 0x100;
            if (gActors[actor_index].unk_13C != 0.0f) {
                func_800036C8((s32)gActors[actor_index].unk_13C, actor_index);
            }
            if ((&gActors[actor_130].var_150)[index] & 2) {
                gActors[actor_index].flags = 0;
                return;
            }
        }

        if ((&gActors[actor_130].var_150)[index] & 4) {
            count = 0;
            if ((gActors[actor_index].velocityX.raw >= 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
                (&gActors[actor_130].var_150)[index] |= 0x2100;
                count = 1;
            }
            if ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
                (&gActors[actor_130].var_150)[index] |= 0x1100;
                count++;
            }
            if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                (&gActors[actor_130].var_150)[index] |= 0x8100;
                count++;
            }
            if ((gActors[actor_index].velocityY.raw >= 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                (&gActors[actor_130].var_150)[index] |= 0x4100;
                count++;
            }
            if (count != 0) {
                if (gActors[actor_index].unk_13C != 0.0f) {
                    func_800036C8((s32)gActors[actor_index].unk_13C, actor_index);
                }
                gActors[actor_index].flags = 0;
                return;
            }
        }
        if (gActors[actor_index].var_158 != 0) {
            gActors[actor_index].var_158--;
            if (gActors[actor_index].var_158 == 0) {
                gActors[actor_index].flags = 0;
                return;
            }
        }
        gActors[actor_index].damage = gActors[actor_index].unk_140_f32 + gActors[actor_index].damage;
        gActors[actor_index].posX.whole = gActors[actor_130].posX.whole + (gActors[actor_index].unk_104 * gActors[actor_130].scaleX);
        gActors[actor_index].posY.whole = gActors[actor_130].posY.whole + (gActors[actor_index].unk_108 * gActors[actor_130].scaleY);
        gActors[actor_index].hitboxAX0 = Math_ApproachS32(gActors[actor_index].hitboxAX0, gActors[actor_index].unk_128, gActors[actor_index].unk_118);
        gActors[actor_index].hitboxAX1 = Math_ApproachS32(gActors[actor_index].hitboxAX1, gActors[actor_index].unk_12C, gActors[actor_index].unk_11C);
        gActors[actor_index].hitboxAY0 = Math_ApproachS32(gActors[actor_index].hitboxAY0, gActors[actor_index].unk_120, gActors[actor_index].timer_110);
        gActors[actor_index].hitboxAY1 = Math_ApproachS32(gActors[actor_index].hitboxAY1, gActors[actor_index].unk_124, gActors[actor_index].unk_114);
        gActors[actor_index].hitboxBY0 = gActors[actor_index].hitboxAY0;
        gActors[actor_index].hitboxBY1 = gActors[actor_index].hitboxAY1;
        gActors[actor_index].hitboxBX0 = gActors[actor_index].hitboxAX0;
        gActors[actor_index].hitboxBX1 = gActors[actor_index].hitboxAX1;
    }

    if (((&gActors[actor_130].var_150)[index] & 1) || (gActors[actor_index].damage < 0)) {
        gActors[actor_index].flags = 0;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

u16 func_800327B4(u16 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, u16 arg5, u16 arg6, s16 arg7, s16 arg8, s16 arg9, s16 arg10, s16 arg11, s16 arg12) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(arg0, arg1);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x37;
        func_8001E2D0(actor_index);
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[actor_index].unk_130 = arg2;
        gActors[actor_index].unk_134 = arg3;
        gActors[actor_index].var_150 = arg4;
        gActors[actor_index].unk_0DE = arg5;
        gActors[actor_index].unk_0DF = arg6;
        gActors[actor_index].health = 1;
        gActors[actor_index].unk_118 = arg9;
        gActors[actor_index].unk_11C = arg10;
        gActors[actor_index].timer_110 = arg11;
        gActors[actor_index].unk_114 = arg12;
        gActors[actor_index].var_154 = arg7;
        gActors[actor_index].var_158 = arg8;
        gActors[actor_index].var_15C = 1;
    }
    return actor_index;
}

void func_80032900(u16 actor_index) {
    u16 actor_t9;
    u16 index;

    actor_t9 = gActors[actor_index].unk_130;
    index = gActors[actor_index].unk_134;
    (&gActors[actor_t9].var_150)[index] &= ~0x31F0;
    if ((&gActors[actor_t9].var_150)[index] & 2) {
        gActors[actor_index].flags &= 0xFFFFFFFF - gActors[actor_index].var_150;
    }
    else {
        gActors[actor_index].flags |= gActors[actor_index].var_150;
        gActors[actor_index].velocityX.raw = gActors[actor_t9].velocityX.raw;
        gActors[actor_index].velocityY.raw = gActors[actor_t9].velocityY.raw;
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
            gActors[gActors[actor_index].unk_0D6].unk_0D6 = actor_index;
            (&gActors[actor_t9].var_150)[index] |= 0x1000;
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK17) {
            if ((gActors[actor_t9].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                (&gActors[actor_t9].var_150)[index] |= 0x80;
            }
            else if ((gActors[actor_t9].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                (&gActors[actor_t9].var_150)[index] |= 0x40;
            }
            if ((gActors[actor_t9].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) {
                (&gActors[actor_t9].var_150)[index] |= 0x10;
            }
            else if ((gActors[actor_t9].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) {
                (&gActors[actor_t9].var_150)[index] |= 0x20;
            }
        }
        if (gActors[actor_t9].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].posX.whole = gActors[actor_t9].posX.whole - (gActors[actor_index].var_154 * gActors[actor_t9].scaleX);
            gActors[actor_index].hitboxBX1 = -gActors[actor_index].unk_118 * gActors[actor_t9].scaleX;
            gActors[actor_index].hitboxBX0 = -gActors[actor_index].unk_11C * gActors[actor_t9].scaleX;
        }
        else {
            gActors[actor_index].posX.whole = gActors[actor_t9].posX.whole + (gActors[actor_index].var_154 * gActors[actor_t9].scaleX);
            gActors[actor_index].hitboxBX0 = gActors[actor_index].unk_118 * gActors[actor_t9].scaleX;
            gActors[actor_index].hitboxBX1 = gActors[actor_index].unk_11C * gActors[actor_t9].scaleX;
        }
        gActors[actor_index].posY.whole = gActors[actor_t9].posY.whole + (gActors[actor_index].var_158 * gActors[actor_t9].scaleY);
        gActors[actor_index].hitboxBY0 = gActors[actor_index].timer_110 * gActors[actor_t9].scaleY;
        gActors[actor_index].hitboxBY1 = gActors[actor_index].unk_114 * gActors[actor_t9].scaleY;
        gActors[actor_index].posZ.raw = gActors[actor_t9].posZ.raw + gActors[actor_index].var_15C;
    }
    if ((&gActors[actor_t9].var_150)[index] & 1) {
        gActors[actor_index].flags = 0;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

u16 func_80032E60(u16 actor_index0, u16 arg1, u16 arg2, f32 arg3, s16 pos_z, f32 scale_x, f32 scale_y) {
    u16 index;
    u16 var_a2;
    s32 temp_f8;
    f32 dist;

    index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (!(gActors[actor_index0].flags & ACTOR_FLAG_DRAW) || (index == 0)) {
        return 0;
    }

    gActors[index].actorType = 0x34;
    func_8001E2D0(index);
    gActors[index].graphicFlags = (gActors[actor_index0].graphicFlags & (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4)) + (ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE);
    gActors[index].flags = (gActors[actor_index0].flags & ACTOR_FLAG_FLIPPED) + 3;
    gActors[index].graphicIndex = arg1;
    gActors[index].scaleX = scale_x;
    gActors[index].scaleY = scale_y;
    gActors[index].colorA = gActors[actor_index0].colorA;
    gActors[index].colorR = gActors[actor_index0].colorR;
    gActors[index].colorG = gActors[actor_index0].colorG;
    gActors[index].colorB = gActors[actor_index0].colorB;
    gActors[index].rotateZ = gActors[actor_index0].rotateZ;
    gActors[index].unk_148 = 1.0f;
    temp_f8 = gActors[actor_index0].rotateZ / 0.3515625;
    if (gActors[index].flags & ACTOR_FLAG_FLIPPED) {
        var_a2 = (temp_f8 - arg2) + 0x200;
    }
    else {
        var_a2 = arg2 + temp_f8;
    }
    dist = COS(var_a2) * arg3 * 65536.0f;
    gActors[index].posX.raw = gActors[actor_index0].posX.raw + (s32) (dist);
    dist = SIN(var_a2) * arg3 * 65536.0f;
    gActors[index].posY.raw = gActors[actor_index0].posY.raw + (s32) (dist);
    gActors[index].posZ.raw = gActors[actor_index0].posZ.raw + pos_z;
    gActors[index].unk_188 = gActors[actor_index0].unk_188;
    return index;
}

void func_800330A4(u16 actor_index0, u16 actor_index1, u16 arg2, f32 arg3) {
    s32 temp_f18;
    u16 var_a0;
    f32 dist;

    gActors[actor_index0].rotateZ = gActors[actor_index1].rotateZ;
    temp_f18 = gActors[actor_index1].rotateZ / 0.3515625;
    if (gActors[actor_index0].flags & ACTOR_FLAG_FLIPPED) {
        var_a0 = ((temp_f18 - arg2) + 0x200);
    }
    else {
        var_a0 = (arg2 + temp_f18);
    }
    dist = COS(var_a0) * arg3 * 65536.0f;
    gActors[actor_index0].posX.raw = gActors[actor_index1].posX.raw + (s32) (dist);
    dist = SIN(var_a0) * arg3 * 65536.0f;
    gActors[actor_index0].posY.raw = gActors[actor_index1].posY.raw + (s32) (dist);
}

void func_80033204(u16 actor_index0, u16 actor_index1, u16 arg2, f32 arg3, u16 arg4) {
    s32 angle;
    s32 var_a0;
    f32 dist;

    gActors[actor_index0].flags &= ~ACTOR_FLAG_FLIPPED;
    gActors[actor_index0].flags |= (gActors[actor_index1].flags & ACTOR_FLAG_FLIPPED);
    angle = gActors[actor_index1].rotateZ / 0.3515625;
    
    if (gActors[actor_index0].flags & ACTOR_FLAG_FLIPPED) {
        var_a0 = (angle - arg2) + 0x200;
    }
    else {
        var_a0 = arg2 + angle;
    }
    dist = COS(var_a0) * arg3 * 65536.0f;
    gActors[actor_index0].posX.raw = gActors[actor_index1].posX.raw + (s32) (dist);
    dist = SIN(var_a0) * arg3 * 65536.0f;
    gActors[actor_index0].posY.raw = gActors[actor_index1].posY.raw + (s32) (dist);
    if (gActors[actor_index0].flags & ACTOR_FLAG_FLIPPED) {
        var_a0 = angle - arg4;
    }
    else {
        var_a0 = arg4 + angle;
    }
    gActors[actor_index0].rotateZ = var_a0 * 0.3515625;
}

void func_800333A0(s16 x, s16 y, s16 z, f32 arg3) {
    u16 actor_index;

    actor_index = func_8003123C(D_800E14C8, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].unk_164 = -1;
        gActors[actor_index].scaleX = arg3;
        gActors[actor_index].scaleY = arg3;
    }
}

u16 func_80033428(u16 src_index, u16 arg1, u16 arg2, u16 arg3) {
    u16 index;

    if (D_800BE4E0 & arg3) {
        return 0;
    }

    index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (index != 0) {
        gActors[index].actorType = 7;
        func_8001E2D0(index);
        gActors[index].graphicFlags = gActors[src_index].graphicFlags;
        gActors[index].flags = (gActors[src_index].flags & ACTOR_FLAG_FLIPPED) + (ACTOR_FLAG_UNK19 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
        gActors[index].graphicIndex = gActors[src_index].graphicIndex;
        gActors[index].scaleX = gActors[src_index].scaleX;
        gActors[index].scaleY = gActors[src_index].scaleY;
        gActors[index].rotateX = gActors[src_index].rotateX;
        gActors[index].rotateY = gActors[src_index].rotateY;
        gActors[index].rotateZ = gActors[src_index].rotateZ;
        gActors[index].posX.whole = gActors[src_index].posX.whole;
        gActors[index].posY.whole = gActors[src_index].posY.whole;
        gActors[index].posZ.whole = gActors[src_index].posZ.whole - 1;
        gActors[index].colorA = arg1;
        gActors[index].unk_18C = arg2;
        return index;
    }
    else {
        return 0;
    }
}

void func_8003358C(u16 actor_index) {
    if (gActors[actor_index].colorA < gActors[actor_index].unk_18C) {
        gActors[actor_index].flags = 0;
    }
    else {
        gActors[actor_index].colorA -= gActors[actor_index].unk_18C;
    }
}

void func_800335E4(u16 arg0, s32 arg1, s32 arg2, s32 pos_z, s32 arg4) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 6;
        func_8001E2D0(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK19 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x1D6;
        gActors[actor_index].posZ.raw = pos_z;
        gActors[actor_index].scaleX = 0.5f;
        gActors[actor_index].scaleY = 0.5f;
        gActors[actor_index].var_154 = arg0;
        gActors[actor_index].var_158 = arg4;
        gActors[actor_index].unk_188 = arg1 << 16;
        gActors[actor_index].unk_18C = arg2 << 16;
    }
}

void func_800336B8(u16 actor_index) {
    u16 actor_154;

    gActors[actor_index].rotateZ += 40.0f;
    gActors[actor_index].var_158--;
    if (gActors[actor_index].var_158 != 0) {
        actor_154 = gActors[actor_index].var_154;
        gActors[actor_index].var_15C += 0x48;
        // fakematch: `& 0xFFFF` for regalloc
        gActors[actor_index].posX.raw = ((491520.0f * COS(gActors[actor_index].var_15C & 0xFFFF)) + gActors[actor_154].posX.raw) + gActors[actor_index].unk_188;
        gActors[actor_index].posY.raw = ((163840.0f * SIN(gActors[actor_index].var_15C & 0xFFFF)) + gActors[actor_154].posY.raw) + gActors[actor_index].unk_18C;
    }
    else {
        gActors[actor_index].flags = 0;
    }
}

void func_800337F4(s16 x, s16 y, s16 z, u16 arg3) {
    u16 actor_index;
    u16 temp;

    actor_index = func_8003123C(D_800E1380, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = arg3;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(1.5);
        gActors[actor_index].var_154 = 8;
        gActors[actor_index].unk_164 = -1;
        gActors[actor_index].scaleX = 1.2f;
        gActors[actor_index].scaleY = 1.2f;
        gActors[actor_index].timer_110 = -0.02f;
        gActors[actor_index].unk_114 = -0.02f;
        temp = func_8000178C();
        gActors[actor_index].velocityX.raw = FIXED_UNIT(1.875) - ((temp & 0xF) << 0xE);
        gActors[actor_index].var_158 = -gActors[actor_index].velocityX.raw / 16;
        gActors[actor_index].var_15C = -0x800;
    }
}

void func_800338F4(s16 arg0, s16 arg1, s16 arg2) {
    if ((D_800BE4E0 & 0xF) == 0) {
        func_800337F4(arg0, arg1, arg2, 0x132);
    }
}

void func_80033948(s16 arg0, s16 arg1, s16 arg2) {
    u16 index;
    if ((D_800BE4E0 & 0xF) == 0) {
        index = func_8000178C();
        func_800337F4(arg0, arg1, arg2, D_800D2294[index & 3]);
    }
}

void func_800339AC(s32 arg0, s32 arg1, s32 arg2) {
}

void func_800339BC(s32 pos_x, s32 pos_y, s32 pos_z, u16 arg3) {
    u16 actor_index;

    if (arg3 & 1) {
        actor_index = func_800313CC(0xCA, pos_x, pos_y, pos_z);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].colorA = 0xC0;
            gActors[actor_index].unk_148 = 0.0f;
            if (D_800BE4E0 & 2) {
                gActors[actor_index].scaleX = 0.1f;
                gActors[actor_index].scaleY = 0.1f;
            }
            else {
                gActors[actor_index].scaleX = 0.15f;
                gActors[actor_index].scaleY = 0.05f;
            }
        }
    }
    else {
        actor_index = Actor_RangeFindFlag2_90ToC0();
        if (actor_index != 0) {
            gActors[actor_index].actorType = 0x2C;
            func_8001E2D0(actor_index);
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = 0xCA;
            gActors[actor_index].posX.raw = pos_x;
            gActors[actor_index].posY.raw = pos_y;
            gActors[actor_index].posZ.raw = pos_z;
            gActors[actor_index].colorA = 0xA0;
            gActors[actor_index].timer_110 = 32.0f;
            Actor_SetColorRgb(actor_index, 0x5F);
            gActors[actor_index].scaleX = 0.15f;
            gActors[actor_index].scaleY = 0.05f;
        }
    }
}

void func_80033B54(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].timer_110 -= 1.0f;
        if (gActors[actor_index].timer_110 < 0.0f) {
            gActors[actor_index].flags = 0;
        }
        else if (func_80012C04(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) & 0x7F) {
            gActors[actor_index].state += 1;
            gActors[actor_index].posY.whole -= 2;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].scaleX = 0.2f;
            gActors[actor_index].scaleY = 0.08f;
            gActors[actor_index].colorA = 0x80;
            Actor_SetColorRgb(actor_index, 0);
        }
        else {
            gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.09375);
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.08f, 0.01f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.18f, 0.01f);
        }
    }
    else {
        gActors[actor_index].colorA -= 4;
        if (gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags = 0;
        }
    }
}

u16 func_80033CB0(s16 pos_x, s16 pos_y, s16 pos_z, s32 vel_x, s32 vel_y, u16 arg5) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 5;
        func_8001E2D0(actor_index);
        gActors[actor_index].hitboxBY1 = -arg5;
        gActors[actor_index].hitboxBX0 = -arg5;
        gActors[actor_index].flags = ACTOR_FLAG_UNK19 | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x8000;
        gActors[actor_index].hitboxBY0 = arg5;
        gActors[actor_index].hitboxBX1 = arg5;
        gActors[actor_index].posX.whole = pos_x;
        gActors[actor_index].posY.whole = pos_y;
        gActors[actor_index].posZ.whole = pos_z;
        gActors[actor_index].velocityX.raw = vel_x;
        gActors[actor_index].velocityY.raw = vel_y;
        gActors[actor_index].var_150 = Palette_AdjustRgb5551(0, 0x1F, 0x1F, 0x1F);
        gActors[actor_index].var_154 = 0x78;
        gActors[actor_index].var_158 = gActors[actor_index].velocityX.raw / 32;
        gActors[actor_index].var_15C = gActors[actor_index].velocityY.raw / 32;
        return actor_index;
    }
    else {
        return 0;
    }
}

void func_80033DE4(u16 actor_index) {
    gActors[actor_index].var_154--;
    if (gActors[actor_index].var_154 == 0) {
        gActors[actor_index].flags = 0;
    }
    gActors[actor_index].velocityX.raw += gActors[actor_index].var_158;
    gActors[actor_index].velocityY.raw += gActors[actor_index].var_15C;
    gActors[actor_index].var_150 = Palette_AdjustRgb5551(gActors[actor_index].var_150, gActors[actor_index].unk_168, gActors[actor_index].unk_164, gActors[actor_index].var_160);
}

void func_80033E7C(s32 arg0, s16 x, s16 y, s16 z, s32 velocity, u32 pos_scale, u16 arg6) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    u16 actor_index;
    u16 angle;
    u32 temp_a0;

    if ((D_800BE4E0 % arg6) == 0) {
        actor_index = func_8003123C(D_800E1380, x, y, z);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].graphicIndex = 0xCA;
            gActors[actor_index].colorA = 0xD0;
            gActors[actor_index].scaleX = 0.2f;
            gActors[actor_index].scaleY = 0.2f;
            gActors[actor_index].timer_110 = -0.01f;
            gActors[actor_index].unk_114 = -0.01f;
            gActors[actor_index].unk_148 = 16.0f;
            temp_a0 = func_8000178C();
            angle = ((temp_a0 & 0xF) << 5) + 0x10;
            gActors[actor_index].velocityX.raw = COS(angle) * velocity;
            gActors[actor_index].velocityY.raw = SIN(angle) * velocity;
            gActors[actor_index].var_15C = -0x1000;
            gActors[actor_index].posX.raw = (COS(angle) * pos_scale) + gActors[actor_index].posX.raw;
            gActors[actor_index].posY.raw = (SIN(angle) * pos_scale) + gActors[actor_index].posY.raw;
        }
    }
}

void func_800340CC(u16 actor_index, s16 arg1, u16 arg2) {
    s16 pos_x;
    s16 pos_z;
    s16 pos_y;
    s16 pos_dx;
    s16 pos_dy;
    s32 angle;
    s32 velocity_x;
    s32 velocity_y;
    u16 index;
    u16 loop_index;

    pos_x = gActors[actor_index].hitboxAX1 + gActors[actor_index].hitboxAX0 + gActors[actor_index].posX.whole;
    pos_y = gActors[actor_index].hitboxAY0 + gActors[actor_index].hitboxAY1 + gActors[actor_index].posY.whole;
    index = gActors[actor_index].unk_0D6;
    pos_dx = gActors[index].hitboxBX1 + gActors[index].hitboxBX0 + gActors[index].posX.whole - pos_x;
    pos_dy = gActors[index].hitboxBY0 + gActors[index].hitboxBY1 + gActors[index].posY.whole - pos_y;
    angle = Math_Atan2(pos_dx, pos_dy);
    pos_dx = (COS(angle) * arg1) + pos_x;
    pos_dy = (SIN(angle) * arg1) + pos_y;
    pos_z = gActors[actor_index].posZ.whole + 2;
    switch (arg2) {
    case 0:
        index = func_8003123C(D_800E155C, pos_dx, pos_dy, pos_z);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            gActors[index].scaleX = -1.0f;
            gActors[index].scaleY = -1.0f;
            gActors[index].var_154 = -0xA;
            gActors[index].unk_18C = 0x8022D548;
            gActors[index].timer_110 = 0.1f;
            gActors[index].unk_114 = 0.1f;
        }
        pos_z++;
        index = func_8003123C(D_800E158C, pos_dx, pos_dy, pos_z);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[index].scaleX = 2.5f;
            gActors[index].scaleY = 0.7f;
            gActors[index].colorA = 0x80;
            gActors[index].var_154 = 0x10;
            gActors[index].unk_164 = -4;
            gActors[index].unk_18C = 0x8022D548;
            gActors[index].var_150 = 0x800000;
            gActors[index].timer_110 = -0.02f;
            gActors[index].unk_114 = -0.02f;
        }
        break;
    case 1:
        index = func_8003123C(D_800E1604, pos_dx, pos_dy, pos_z);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[index].scaleX = 0.4f;
            gActors[index].scaleY = 0.4f;
            gActors[index].colorA = 0xF0;
            gActors[index].var_154 = -4;
            gActors[index].timer_110 = 0.03f;
            gActors[index].unk_114 = 0.03f;
        }
        angle = func_8000178C();
        for (loop_index = 0; loop_index < 2; loop_index++) {
            index = func_8003123C(D_800E15C4, pos_dx, pos_dy, pos_z);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[index].scaleX = 0.8f;
                gActors[index].scaleY = 0.8f;
                gActors[index].unk_148 = 16.0f;
                gActors[index].colorA = 0xE0;
                gActors[index].timer_110 = -0.02f;
                gActors[index].unk_114 = -0.02f;
                angle &= 0x3F0;
                velocity_x = COS(angle) * 245760.0f;
                velocity_y = SIN(angle) * 245760.0f;
                angle += 0x200;
                gActors[index].velocityX.raw = velocity_x;
                gActors[index].velocityY.raw = velocity_y;
                gActors[index].var_158 = -velocity_x / 12;
                gActors[index].var_15C = -velocity_y / 12;
            }
        }
        break;
    }
}

void func_80034644(u16 actor_index) {
    u16 index;
    u16 temp_v0;

    index = func_80031284(0x1D6, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 8);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].graphicIndex = 0x1D6;
        gActors[index].scaleX = 6.0f;
        gActors[index].scaleY = 0.8f;
        gActors[index].unk_18C = (s32) &D_800D8508;
        Actor_SetColorRgb(index, 0x7F);
        temp_v0 = func_8000178C();
        gActors[index].var_160 = (temp_v0 & 7) << 21;
        gActors[index].var_150 = 0x01000000;
        gActors[index].var_154 = -0x40;
        gActors[index].timer_110 = 0.5f;
        gActors[index].unk_114 = 0.3f;
        gActors[index].unk_148 = 2.0f;
    }
    index = func_80031284(0x168, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole - 7);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[index].unk_18C = (s32) &D_800D8508;
        Actor_SetColorRgb(index, 0x7F);
        gActors[index].colorA = 0xC0;
        gActors[index].var_154 = -0x20;
        gActors[index].timer_110 = 0.5f;
        gActors[index].unk_114 = 0.5f;
        gActors[index].scaleX = 2.0f;
        gActors[index].scaleY = 2.0f;
        gActors[index].unk_148 = 3.0f;
    }
}

void func_8003480C(u16 actor_index, s32 unused_arg1) {
    gActors[actor_index].actorType = 0x2D;
    gActors[actor_index].graphicFlags = (gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE) + ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    gActors[actor_index].velocityZ.raw = 0;
    gActors[actor_index].unk_114 = gActors[actor_index].scaleX / 120.0f;
    gActors[actor_index].unk_118 = gActors[actor_index].scaleY / 120.0f;
    if (gActors[actor_index].unk_114 < 0.002) {
        gActors[actor_index].unk_114 = 0.002f;
    }
    if (gActors[actor_index].unk_118 < 0.002) {
        gActors[actor_index].unk_118 = 0.002f;
    }
}

void func_800348E4(u16 actor_index) {
    gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 2);
    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, -0.01f, gActors[actor_index].unk_114);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, -0.01f, gActors[actor_index].unk_118);
    if ((gActors[actor_index].colorA == 0) || (gActors[actor_index].scaleX < 0.0f) || (gActors[actor_index].scaleY < 0.0f)) {
        gActors[actor_index].flags = 0;
    }
}

void func_800349C0(u16 actor_index, u16 arg1) {
    if (gActors[actor_index].unk_0D6 == 0) {
        gActors[actor_index].unk_0D4 = arg1;
    }
}

void func_80034A0C(u16 actor_index) {
    gActors[actor_index].unk_164 = 0;
    switch (gActors[actor_index].var_160) {
    default:
        gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x4B0, 0x3C);
        gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x4B0, 0x3C);
        if ((gActors[actor_index].unk_168 == 0x4B0) && (gActors[actor_index].unk_16C == 0x4B0)) {
            gActors[actor_index].var_160 = 3;
            gActors[actor_index].unk_164 = 1;
        }
        break;
    case 1:
        gActors[actor_index].var_160--;
        gActors[actor_index].unk_168 = 0x640;
        gActors[actor_index].unk_16C = 0x640;
        break;
    case 2:
        if (gActors[actor_index].var_15C != 0) {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x4B0, 0x64);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x4B0, 0x96);
            if ((gActors[actor_index].unk_168 == 0x4B0) && (gActors[actor_index].unk_16C == 0x4B0)) {
                gActors[actor_index].var_15C = 0;
                gActors[actor_index].unk_164 = 1;
                func_800036C8(0xA3, actor_index);
            }
        }
        else {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x5AA, 0x64);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x44C, 0x96);
            if ((gActors[actor_index].unk_168 == 0x5AA) && (gActors[actor_index].unk_16C == 0x44C)) {
                gActors[actor_index].var_15C++;
                gActors[actor_index].unk_164 = 2;
            }
        }
        break;
    case 3:
        gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x514, 0x14);
        gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x5AA, 0x14);
        break;
    case 4:
        gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x3E8, 0x28);
        gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x3E8, 0x28);
        if ((gActors[actor_index].unk_168 == 0x3E8) && (gActors[actor_index].unk_16C == 0x3E8)) {
            gActors[actor_index].var_160 += 1;
        }
        /* fallthrough */
    case 5:
        if (gActors[actor_index].var_15C != 0) {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x384, 2);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x44C, 2);
            if ((gActors[actor_index].unk_168 == 0x384) && (gActors[actor_index].unk_16C == 0x44C)) {
                gActors[actor_index].var_15C = 0;
            }
        }
        else {
            gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x44C, 2);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x384, 2);
            if ((gActors[actor_index].unk_168 == 0x44C) && (gActors[actor_index].unk_16C == 0x384)) {
                gActors[actor_index].var_15C++;
            }
        }
        break;
    case 6:
        gActors[actor_index].var_160++;
        gActors[actor_index].unk_168 = 0x640;
        gActors[actor_index].unk_16C = 0x2BC;
        /* fallthrough */
    case 7:
        gActors[actor_index].unk_168 = Math_ApproachS32(gActors[actor_index].unk_168, 0x320, 0x32);
        gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0x44C, 0x3C);
        if ((gActors[actor_index].unk_168 == 0x320) && (gActors[actor_index].unk_16C == 0x44C)) {
            gActors[actor_index].var_160 = 4;
        }
        break;
    }
}

void func_80034D14(u16 actor_index) {
    gActors[actor_index].scaleX = gActors[actor_index].unk_168 / 1000.0f;
    gActors[actor_index].scaleY = gActors[actor_index].unk_16C / 1000.0f;
}

void func_80034D80(u16 actor_index, u16* vals, u16 unused_a2) {
    u16 index;

    for (index = 0x9B; index >= 0; index -= 5, vals += 5) {
        if (vals[0] == 0xFFFF) {
            break;
        }
        D_800D22BC[index + 0] = vals[0];
        D_800D22BC[index + 1] = vals[1];
        D_800D22BC[index + 2] = vals[2];
        D_800D22BC[index + 3] = vals[3];
        D_800D22BC[index + 4] = vals[4];
        gActors[actor_index].unk_170 = index;
    }
}

s16 func_80034E10(u16 actor_a0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 actor_a5) {
    u16 index;
    u16 actor_v0;

    if (gActors[actor_a5].unk_170 == 0) {
        return -1;
    }
    if (arg1 & 0x200) {
        gActors[actor_a0].flags = 0;
    }

    for (index = 0; index < 4; index++) {
        actor_v0 = func_80031284(0xCA, gActors[actor_a0].posX.whole, gActors[actor_a0].posY.whole + 0xC, gActors[actor_a0].posZ.whole + 2);
        if (actor_v0 != 0) {
            gActors[actor_v0].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_v0].scaleX = 1.5f;
            gActors[actor_v0].scaleY = 1.5f;
            gActors[actor_v0].var_154 = -8;
            gActors[actor_v0].timer_110 = -0.05f;
            gActors[actor_v0].unk_114 = -0.05f;
            gActors[actor_v0].var_15C = -0x4000;
            gActors[actor_v0].velocityX.raw = D_800D229C[index];
            gActors[actor_v0].velocityY.raw = D_800D22AC[index];
        }
    }

    func_800036C8(0x5A, actor_a0);
    if (arg1 & 0x800) {
        return gActors[actor_a5].unk_170;
    }

    gActors[actor_a5].unk_170 -= 5;
    D_800D22BC[gActors[actor_a5].unk_170] = actor_a0 + arg1;
    if (arg1 & 0x2000) {
        D_800D22BC[gActors[actor_a5].unk_170 + 1] = arg2;
    }
    else {
        D_800D22BC[gActors[actor_a5].unk_170 + 1] = (u16) gActors[actor_a0].timer_110;
    }
    if (arg1 & 0x1000) {
        D_800D22BC[gActors[actor_a5].unk_170 + 2] = arg3;
    }
    else {
        D_800D22BC[gActors[actor_a5].unk_170 + 2] = gActors[actor_a0].unk_0D8;
    }
    D_800D22BC[gActors[actor_a5].unk_170 + 3] = gActors[actor_a0].actorType;
    D_800D22BC[gActors[actor_a5].unk_170 + 4] = arg4;
    return gActors[actor_a5].unk_170;
}

s16 func_8003510C(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    u16 index;

    index = gActors[actor_index].unk_0CC & 0xFF;
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) {
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) && (gActors[index].actorType == 0x18)) {
            return func_80034E10(actor_index, arg1, arg2, arg3, arg4, index);
        }
    }
    return -1;
}

s16 func_800351C8(u16 actor_index, u16 arg1, u16 arg2, u16 arg3) {
    return func_8003510C(actor_index, arg1, arg2, arg3, 0);
}

s16 func_80035218(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    return func_8003510C(actor_index, arg1, arg2, arg3, arg4);
}

s16 func_8003526C(u16 actor_index, u16 arg1, u16 arg2, u16 arg3, u16 arg4) {
    return func_8003510C(actor_index, arg1, arg2, arg3, arg4);
}

void func_800352C0(u16 actor_index, s16 offset) {
    s16 count;
    u16 index;
    u16 temp;

    count = offset - gActors[actor_index].unk_170;
    if ((count > 0) || (gActors[actor_index].unk_170 < 0xA0)) {
        for (count = (count / 5); count > 0; count--) {
            for (index = 0; index < 5; index++) {
                temp = D_800D22BC[offset + index];
                D_800D22BC[offset + index] = D_800D22BC[offset + index - 5];             
                D_800D22BC[offset + index - 5] = temp;
            }
            offset -= 5;
        }
    }
}

u16 func_80035394(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].unk_174 & 0x8000) {
        index = Actor_RangeFindFlag2(0x10, 0x2D);
        if (index == 0) {
            func_800036C8(0x5A, actor_index);
            return 0;
        }
    }
    else {
        index = gActors[actor_index].unk_174 & 0xFF;
    }

    gActors[index].actorType = gActors[actor_index].unk_180;
    func_8001E2D0(index);
    gActors[index].timer_110 = gActors[actor_index].unk_178;
    gActors[index].unk_0D8 = gActors[actor_index].unk_17C;
    gActors[index].posX.whole = gActors[gActors[actor_index].var_150].posX.whole;
    gActors[index].posY.whole = gActors[gActors[actor_index].var_150].posY.whole + 16;
    gActors[index].posZ.whole = gActors[gActors[actor_index].var_150].posZ.whole;
    if (gActors[index].actorType == 8) {
        gActors[index].health = 0;
        gActors[index].posY.whole += 20;
        gActors[index].velocityX.raw = 0;
        gActors[index].velocityY.raw = FIXED_UNIT(5.5);
    }
    return index;
}

u16 func_80035524(u16 actor_index0, u16 actor_index1) {
    u16 actor_index2;

    if (gActors[actor_index0].unk_170 == 0xA0) {
        if (actor_index1 == 0) {
            gActors[0].unk_0F8.raw = 0;
            gActors[0].flags_098 |= ACTOR_FLAG3_UNK16;
            gActors[0].unk_0FC.raw = FIXED_UNIT(3.0);
        }
        func_800036C8(0x4E, actor_index0);
        return 0;
    }
    actor_index2 = D_800D22BC[gActors[actor_index0].unk_170];
    if (actor_index2 & 0x8000) {
        if ((D_800D22BC[gActors[actor_index0].unk_170 + 3] == 0x2705) || (D_800D22BC[gActors[actor_index0].unk_170 + 3] == 0x2706)) {
            func_800036C8(0x64, actor_index0);
            return 0;
        }
        actor_index2 = Actor_RangeFindFlag2(0x10, 0x2D);
        if (actor_index2 == 0) {
            if (actor_index1 == 0) {
                gActors[0].unk_0F8.raw = 0;
                gActors[0].flags_098 |= ACTOR_FLAG3_UNK16;
                gActors[0].unk_0FC.raw = FIXED_UNIT(3.0);
            }
            func_800036C8(0x5A, actor_index0);
            return 0;
        }
        gActors[actor_index2].actorType = D_800D22BC[gActors[actor_index0].unk_170 + 3];
        func_8001E2D0(actor_index2);
        gActors[actor_index2].timer_110 = D_800D22BC[gActors[actor_index0].unk_170 + 1];
        gActors[actor_index2].unk_0D8 = D_800D22BC[gActors[actor_index0].unk_170 + 2];
    }
    else {
        actor_index2 = D_800D22BC[gActors[actor_index0].unk_170] & 0xFF;
    }

    gActors[actor_index0].unk_170 += 5;
    gActors[actor_index1].unk_0D6 = actor_index2;
    gActors[actor_index2].unk_0D6 = actor_index1;
    gActors[actor_index2].posX.raw = gActors[actor_index0].unk_104;
    gActors[actor_index2].posY.raw = gActors[actor_index0].unk_108;
    gActors[actor_index2].posZ.raw = gActors[actor_index0].unk_10C;
    gActors[actor_index2].unk_104 = gActors[actor_index0].unk_104;
    gActors[actor_index2].unk_108 = gActors[actor_index0].unk_108;
    gActors[actor_index2].unk_10C = gActors[actor_index0].unk_10C - 1;
    switch (gActors[actor_index2].actorType) {
    case 0x8:
        gActors[actor_index2].health = 0;
        gActors[actor_index2].posY.whole += 20;
        gActors[actor_index2].velocityX.raw = 0;
        gActors[actor_index2].velocityY.raw = FIXED_UNIT(5.5);
        break;
    case 0x63:
        gActors[actor_index2].health = 0;
        gActors[actor_index2].posY.whole += 20;
        gActors[actor_index2].velocityX.raw = 0;
        gActors[actor_index2].velocityY.raw = FIXED_UNIT(0.875);
        break;
    }
    func_800036C8(0x5A, actor_index0);
    return actor_index2;
}

void func_80035824(u16 actor_index) {
    gActors[actor_index].hitboxAY0 = 20;
    gActors[actor_index].hitboxAY1 = 6;
    gActors[actor_index].hitboxAX0 = -8;
    gActors[actor_index].hitboxAX1 = 8;
}

void func_80035878(u16 actor_index) {
    gActors[actor_index].hitboxBY0 = 14;
    gActors[actor_index].hitboxBY1 = -10;
    gActors[actor_index].hitboxBX0 = -8;
    gActors[actor_index].hitboxBX1 = 8;
}

s32 func_800358CC(s32 arg0, s32 arg1) {
    return 0;
}

void func_800358DC(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].scaleX *= 0.7;
    gActors[actor_index].scaleY *= 0.7;
    if (gActors[actor_index].unk_18C != 0) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    }
}

void func_80035978(u16 actor_index) {
    gActors[actor_index].posX.whole = gActors[gActors[actor_index].unk_0F8.raw].unk_128 + gActors[gActors[actor_index].unk_0F8.raw].posX.whole - 8.0f;
    gActors[actor_index].posY.whole = gActors[gActors[actor_index].unk_0F8.raw].posY.whole;
}

void func_80035A20(u16 actor_index) {
    u16 index;

    index = gActors[actor_index].unk_0F8.raw;
    gActors[actor_index].posZ.whole = gActors[index].posZ.whole + 2;
    switch (gActors[actor_index].unk_0FC.raw) {
    case 0:
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == 0x79)) {
            if ((gActors[index].unk_18C != 0) && (gActors[actor_index].unk_0CE == 0)) {
                gActors[actor_index].flags = 0;
                break;
            }
            gActors[actor_index].unk_0CE = 0;
            gActors[actor_index].colorA = gActors[index].colorA;
            func_80035978(actor_index);
        }
        else {
            gActors[actor_index].flags = 0;
        }
        break;
    case 1:
        if ((gActors[index].flags & ACTOR_FLAG_ACTIVE) && (gActors[index].actorType == 0x78)) {
            gActors[actor_index].colorA = gActors[index].colorA * 2;
            gActors[actor_index].unk_104 = gActors[actor_index].unk_104 - (gActors[index].unk_170 / 65536);
            gActors[actor_index].unk_10C = COS(gActors[actor_index].unk_104) * gActors[index].unk_16C;
            gActors[actor_index].posY.raw = (SIN(gActors[actor_index].unk_104) * gActors[index].unk_16C) + gActors[index].posY.raw;
            if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].posX.raw = gActors[index].posX.raw - gActors[actor_index].unk_10C;
            }
            else {
                gActors[actor_index].posX.raw = gActors[actor_index].unk_10C + gActors[index].posX.raw;
            }
        }
        else {
            gActors[actor_index].flags = 0;
        }
        break;
    }
}

u16 func_80035C44(u16 actor_index, u16 arg1) {
    u16 index;

    index = Actor_RangeFindFlag2_90ToC0();
    if (index != 0) {
        gActors[index].actorType = 0x34;
        func_8001E2D0(index);
        gActors[index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE;
        gActors[index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[index].graphicIndex = arg1;
        gActors[index].posX.whole = gActors[actor_index].posX.whole;
        gActors[index].posY.whole = gActors[actor_index].posY.whole + 4;
        gActors[index].posZ.whole = gActors[actor_index].posZ.whole + 1;
        gActors[index].unk_18C = (s32) D_800D9B64;
        gActors[index].unk_148 = 1.0f;
    }
    return index;
}

u16 func_80035D34(u16 actor_index) {
    u16 actor1;
    u16 index;
    u16* vals;

    actor1 = Actor_RangeFindFlag2(0x12, 0x2D);
    if (actor1 != 0) {
        index = gActors[actor_index].unk_178;
        vals = &D_800D22BC[index];
        if ((vals[0] & 0x400) == 0) {
            gActors[actor1].actorType = 0x68;
            func_8001E2D0(actor1);
            gActors[actor1].flags = ACTOR_FLAG_ACTIVE;
            if (vals[4] == 0) {
                gActors[actor1].graphicIndex = 0x13C;
                gActors[actor1].unk_18C = (s32) D_800D86A0;
                gActors[actor1].scaleX = 1.5f;
                gActors[actor1].scaleY = 1.5f;
            }
            else {
                gActors[actor1].graphicIndex = vals[4];
            }
        }
        else {
            vals = &D_800D22BC[index];
            gActors[actor1].actorType = vals[4];
            func_8001E2D0(actor1);
            gActors[actor1].timer_110 = vals[1];
            gActors[actor1].unk_0D8 = vals[2];
        }
        gActors[actor1].unk_0F8.raw = actor_index;
        gActors[actor1].unk_0CE = 1;
        func_80035978(actor1);
    }
    return actor1;
}

void func_80035E90(u16 actor_index) {
    u16 var_a3;
    u16 var_v0;
    u16 temp_a2;
    u16 temp_a1;
    u16* temp_v0_3;

    temp_a2 = gActors[actor_index].var_150;
    gActors[actor_index].unk_18C = 0;
    if (gActors[temp_a2].unk_174 == 0) {
        if (gActors[actor_index].state < 0x2F) {
            if (gActors[actor_index].state == 0x20) {
                gActors[actor_index].state = 0x30;
                func_800352C0(temp_a2, gActors[actor_index].unk_178);
                gActors[actor_index].unk_178 = gActors[temp_a2].unk_170;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(0.5);
                gActors[actor_index].unk_120 = 45.0f;
                func_800036C8(0x51, actor_index);
            }
            else {
                gActors[actor_index].flags = 0;
                return;
            }
        }
    }
    gActors[temp_a2].graphicFlags = ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x8000;
    switch (gActors[actor_index].state) {
    case 47:
        gActors[actor_index].state++;
        gActors[actor_index].hitboxBY0 = 0xC;
        gActors[actor_index].hitboxBX0 = -0x1E;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.375);
        gActors[actor_index].unk_120 = 60.0f;
        gActors[actor_index].unk_178 = gActors[temp_a2].unk_170;
        gActors[actor_index].colorA = 0xFF;
        gActors[actor_index].colorG = 0x60;
        func_80035D34(actor_index);
        break;
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].hitboxBY0 = 1;
        gActors[actor_index].hitboxBX0 = -2;
        Actor_SetColorRgb(actor_index, 0x60);
        /* fallthrough */
    case 1:
        if ((gActors[actor_index].hitboxBY0 == 0xC) && (gActors[actor_index].hitboxBX0 == -0x1E)) {
            gActors[actor_index].state = 0x10;
            gActors[actor_index].unk_120 = 40.0f;
            gActors[actor_index].unk_128 = 8.0f;
            gActors[actor_index].unk_178 = gActors[temp_a2].unk_170;
            gActors[actor_index].colorA = 0;
            func_80035D34(actor_index);
            func_80003778(0x101, actor_index);
        }
        break;
    case 16:
        var_a3 = 0;
        if ((gButtonPress & D_800BE530) || (gButtonPress & D_800BE534)) {
            gActors[actor_index].state = 0x20;
            gActors[actor_index].hitboxBY0 += 6;
            gActors[actor_index].hitboxBX0 -= 6;
            gActors[actor_index].unk_120 = 0.0f;
            func_800036C8(0x64, actor_index);
        }
        else {
            gActors[actor_index].unk_120 -= 1.0f;
            if (gActors[actor_index].unk_120 < 0.0f) {
                gActors[actor_index].unk_178 += 5;
                if (gActors[actor_index].unk_178 >= 0x9C) {
                    gActors[actor_index].flags = 0;
                    return;
                }
                func_80003778(0x101, actor_index);
                var_a3 = 1;
                gActors[actor_index].unk_120 = 40.0f;
                gActors[actor_index].unk_128 = 8.0f;
            }
        }
        // fallthrough
    case 32:
        if (gActors[actor_index].state == 0x20) {
            var_a3 = 0;
            if ((gButtonHold & D_800BE530) || (gButtonHold & D_800BE534)) {
                if (gActors[actor_index].unk_124 < 24.0f) {
                    gActors[actor_index].unk_124 += 1.0f;
                }
            }
            else {
                gActors[actor_index].unk_124 = 0.0f;
            }
            if (gActors[actor_index].unk_124 >= 24.0f) {
                var_v0 = gButtonHold;
            }
            else {
                var_v0 = gButtonPress;
            }
            if (gActors[actor_index].unk_120 < 0.0f) {
                if (var_v0 & D_800BE534) {
                    gActors[actor_index].unk_178 += 5;
                    if (gActors[actor_index].unk_178 >= 0x9C) {
                        gActors[actor_index].unk_178 = 0x9B;
                    }
                    else {
                        var_a3 = 1;
                        gActors[actor_index].unk_128 = 8.0f;
                    }
                }
                else if (var_v0 & D_800BE530) {
                    gActors[actor_index].unk_178 -= 5;
                    if (gActors[actor_index].unk_178 < gActors[temp_a2].unk_170) {
                        gActors[actor_index].unk_178 = gActors[temp_a2].unk_170;
                    }
                    else {
                        var_a3 = 1;
                        gActors[actor_index].unk_128 = -8.0f;
                    }
                }
                if (var_a3 != 0) {
                    gActors[actor_index].unk_120 = 8.0f;
                    func_80003778(0x101, actor_index);
                }
            }
            else {
                gActors[actor_index].unk_120 -= 1.0f;
            }
        }
        if (var_a3 != 0) {
            gActors[actor_index].colorA = 0;
            gActors[actor_index].unk_18C = 1;
            func_80035D34(actor_index);
        }
        else {
            gActors[actor_index].unk_128 = Math_ApproachS32(gActors[actor_index].unk_128, 0, 1);
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 0x10);
        }
    case 48:
        if (gActors[actor_index].state == 0x30) {
            gActors[actor_index].unk_120 -= 1.0f;
            if (gActors[actor_index].unk_120 < 0.0f) {
                gActors[actor_index].flags = 0;
                return;
            }
        }
        var_a3 = gActors[actor_index].unk_178;
        if ((gActors[actor_index].state == 0x30) && (D_800D22BC[var_a3] & 0x4000) && (D_800BE4E0 & 8)) {
            gActors[actor_index].colorR = 0x1F;
            gActors[actor_index].colorB = 0x1F;
        }
        gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x60, 8);
        gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0x60, 0x10);
        if ((gActors[actor_index].state != 0x30) || (D_800BE4E0 & 8)) {
            var_a3 = ((gActors[actor_index].unk_178 - gActors[temp_a2].unk_170) / 5) * 2;
            temp_v0_3 = &D_800D23FC[var_a3];
            temp_a2 = temp_v0_3[1];
            temp_a1 = temp_v0_3[0];
            if (temp_a2 != 0) {
                var_v0 = func_80035C44(actor_index, temp_a1);
                if (var_v0 != 0) {
                    gActors[var_v0].posX.whole += 18;
                }
                var_v0 = func_80035C44(actor_index, temp_a2);
                if (var_v0 != 0) {
                    gActors[var_v0].posX.whole += 26;
                }
            }
            else {
                var_v0 = func_80035C44(actor_index, temp_a1);
                if (var_v0 != 0) {
                    gActors[var_v0].posX.whole += 22;
                }
            }
        }
        break;
    }
    gActors[actor_index].hitboxBY0 = Math_ApproachS32(gActors[actor_index].hitboxBY0, 0xC, 1);
    gActors[actor_index].hitboxBY1 = -gActors[actor_index].hitboxBY0;
    gActors[actor_index].hitboxBX0 = Math_ApproachS32(gActors[actor_index].hitboxBX0, -0x1E, 2);
    gActors[actor_index].hitboxBX1 = -gActors[actor_index].hitboxBX0;
    func_8003D68C(gActors[actor_index].graphicFlags + ACTOR_GFLAG_3DOBJ, gActors[actor_index].hitboxBY0 - 1, gActors[actor_index].hitboxBY1 + 1,
                  gActors[actor_index].hitboxBX0 + 1, gActors[actor_index].hitboxBX1 - 0x12, gActors[actor_index].posX.raw,
                  gActors[actor_index].posY.raw, gActors[actor_index].posZ.raw + 1, 0x4, 0x4, 0x4);
}

void func_8003667C(u16 actor_index) {
    if (gActors[actor_index].state == 0) {
        func_800358DC(actor_index);
    }
    else {
        func_80035A20(actor_index);  
    }
}

u16 func_800366E4(u16 actor_index) {
    u16 index;

    index = Actor_RangeFindFlag2(0x12, 0x2D);
    if (index != 0) {
        gActors[index].actorType = 0x79;
        func_8001E2D0(index);
        gActors[index].flags = ACTOR_FLAG_ACTIVE;
        gActors[index].posX.whole = ((gActors[actor_index].posX.whole - gActors[0].posX.whole) / 2) + gActors[0].posX.whole;
        gActors[index].posY.whole = gActors[0].posY.whole + 0x18;
        gActors[index].posZ.whole = gActors[0].posZ.whole + 0x22;
        gActors[index].var_150 = actor_index;
    }
    return index;
}

void func_800367D0(u16 actor_index) {
    s16 temp_a0;

    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_index].rotateZ = 0.0f;
    if (gActors[actor_index].unk_174 > 0) {
        if (gActors[actor_index].unk_174 < 0x28) {
            if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].rotateZ = 0.0f - gActors[actor_index].unk_174;
            }
            else {
                gActors[actor_index].rotateZ = gActors[actor_index].unk_174;
            }
            gActors[actor_index].posY.whole = (gActors[actor_index].posY.whole - (gActors[actor_index].unk_174 / 7.0f));
        }
        else {
            if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].rotateZ = -40.0f;
            }
            else {
                gActors[actor_index].rotateZ = 40.0f;
            }
            gActors[actor_index].posY.whole -= 5;
        }
    }

    if (gActors[actor_index].unk_174 < 0x3F2) {
        gActors[actor_index].unk_174++;
    }

    temp_a0 = gActors[actor_index].unk_174 - 0x32;
    if (gActors[actor_index].unk_174 >= 0x32) {
        gActors[actor_index].unk_184 = 0;
        if ((temp_a0 % 30) == 0) {
            if (gActors[actor_index].unk_170 < 0xA0) {
                if (temp_a0 == 0) {
                    func_800366E4(actor_index);
                }
            }
            else if (temp_a0 == 0) {
                func_8007D0DC(0, D_800D1898, 0, 0x20, 0x1E);
            }
        }
    }
}

void func_800369A0(u16 actor_index, u16 arg1, u16* arg2) {
    gActors[actor_index].unk_114 = 0x400 / arg1;
    arg2 += 4;
    gActors[actor_index].unk_174 = arg2[-4];
    gActors[actor_index].unk_178 = arg2[-3];
    gActors[actor_index].unk_17C = arg2[-2];
    gActors[actor_index].unk_180 = arg2[-1];
    gActors[actor_index].unk_184 = arg2[0];
}

u16 func_80036A60(u16 actor_index) {
    u16 index_a1;
    u16 index_a2;
    u16 val;

    if ((D_800D24D8[0x10] + D_800D24D8[0x11]) > 3) {
        for (index_a2 = 0, index_a1 = 1; index_a1 < 5; index_a2 += 5) {
            val = D_800D22BC[index_a2 + 3];
            if ((val == 0x2600) || (val == 0x2601)) {
                ((s32*)&gActors[actor_index].var_150)[index_a1] = index_a2;
                index_a1++;
            }
        }
        func_800369A0(actor_index, 4, D_800D24A8);
        return 1;
    }
    else {
        return 0;
    }
}

u16 func_80036B44(u16 actor_index) {
    u16 index_a1;
    u16 index_v0;
    u16 val;

    if (D_800D24EC > 2) {
        for (index_a1 = 0, index_v0 = 1; index_v0 < 4; index_a1 += 5) {
            val = D_800D22BC[index_a1 + 3];
            if (val == 0x2602) {
                ((s32*)&gActors[actor_index].var_150)[index_v0] = index_a1;
                index_v0++;
            }
        }
        func_800369A0(actor_index, 3, D_800D24B4);
        return 1;
    }
    else {
        return 0;
    }
}

u16 func_80036C14(u16 actor_index) {
    u16 index_a1;
    u16 index_v0;
    u16 val;

    if (D_800D24EA > 1) {
        for (index_a1 = 0, index_v0 = 1; index_v0 < 3; index_a1 += 5) {
            val = D_800D22BC[index_a1 + 3];
            if (val == 0x43) {
                ((s32*)&gActors[actor_index].var_150)[index_v0] = index_a1;
                index_v0++;
            }
        }
        func_800369A0(actor_index, 2, D_800D24C0);
        return 1;
    }
    else {
        return 0;
    }
}

u16 func_80036CE4(u16 actor_index) {
    u16 index_a2;
    u16 index_v0;
    u16 val;

    if (D_800D24EE > 5) {
        for (index_a2 = 0, index_v0 = 1; index_v0 < 7; index_a2 += 5) {
            val = D_800D22BC[index_a2 + 3];
            if ((val == 8) && ((D_800D22BC[index_a2 + 1] & 3) == 1)) {
                ((s32*)&gActors[actor_index].var_150)[index_v0] = index_a2;
                index_v0++;
            }
        }
        func_800369A0(actor_index, 6, D_800D24CC);
        return 1;
    }
    else {
        return 0;
    }
}

u16 func_80036DC8(u16 actor_index) {
    u16 index0;
    u16 index1;
    u16 actor1;

    for (index0 = 0; D_800D24D8[index0] != 0xFF; index0++) {
        D_800D24D8[index0] = 0;
    }

    actor1 = gActors[actor_index].var_150;
    for (index1 = gActors[actor1].unk_170; index1 < 0xA0; index1 += 5) {
        switch (D_800D22BC[index1 + 3]) {
        case 0x2600:
            D_800D24D8[0x10]++;
            break;
        case 0x2601:
            D_800D24D8[0x11]++;
            break;
        case 0x43:  
            D_800D24D8[0x12]++;
            break;
        case 0x44:  
            D_800D24D8[0x13]++;
            break;
        case 0x2602:
            D_800D24D8[0x14]++;
            break;
        case 0x8:   
            switch (D_800D22BC[index1 + 1] & 3) {
            case 0:
                D_800D24D8[0x15]++;
                break;
            case 1:
                D_800D24D8[0x16]++;
                break;
            case 2:
                D_800D24D8[0x17]++;
                break;
            case 3:
                D_800D24D8[0x18]++;
                break;
            }
            break;
        default:
            if (gActors[actor1].unk_168 != 0) {
                ((void (*)(u16, u16)) gActors[actor1].unk_168)(D_800D22BC[index1 + 3], index1);
            }
            break;
        }
    }
    gActors[actor_index].var_154 = -1;
    gActors[actor_index].var_158 = -1;
    gActors[actor_index].var_15C = -1;
    gActors[actor_index].var_160 = -1;
    gActors[actor_index].unk_164 = -1;
    gActors[actor_index].unk_168 = -1;
    if (((gActors[actor1].unk_16C != 0) && (((s32 (*)(u16, u16)) gActors[actor1].unk_16C)(actor_index, index1) != 0)) || (func_80036A60(actor_index) != 0) || (func_80036B44(actor_index) != 0) || (func_80036C14(actor_index) != 0) || ((func_80036CE4(actor_index) != 0))) {
        return 1;
    }
    else {
        return 0;
    }
}

void func_8003707C(u16 index) {
    D_800D22BC[index + 0] = 0;
    D_800D22BC[index + 1] = 0;
    D_800D22BC[index + 2] = 0;
    D_800D22BC[index + 3] = 0;
    D_800D22BC[index + 4] = 0;
}

void func_800370AC(u16 actor_index) {
    u16 actor1;
    u16 val_index;

    if (gActors[actor_index].var_154 >= 0) {
        func_8003707C(gActors[actor_index].var_154);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].var_154);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }
    if (gActors[actor_index].var_158 >= 0) {
        func_8003707C(gActors[actor_index].var_158);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].var_158);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }
    if (gActors[actor_index].var_15C >= 0) {
        func_8003707C(gActors[actor_index].var_15C);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].var_15C);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }
    if (gActors[actor_index].var_160 >= 0) {
        func_8003707C(gActors[actor_index].var_160);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].var_160);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }
    if (gActors[actor_index].unk_164 >= 0) {
        func_8003707C(gActors[actor_index].unk_164);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].unk_164);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }
    if (gActors[actor_index].unk_168 >= 0) {
        func_8003707C(gActors[actor_index].unk_168);
        func_800352C0(gActors[actor_index].var_150, gActors[actor_index].unk_168);
        gActors[gActors[actor_index].var_150].unk_170 += 5;
    }

    if (gActors[actor_index].unk_174 & 0x100) {
        gActors[gActors[actor_index].var_150].unk_178 = gActors[gActors[actor_index].var_150].unk_170;
        func_80035394(actor_index);
        func_800036C8(0x130, actor_index);
        func_8003FE4C(1.0f, gActors[gActors[actor_index].var_150].posX.whole, gActors[gActors[actor_index].var_150].posY.whole + 0x22, gActors[actor_index].posZ.whole);
        func_8003FE4C(-0.5f, gActors[gActors[actor_index].var_150].posX.whole, gActors[gActors[actor_index].var_150].posY.whole + 0x22, gActors[actor_index].posZ.whole);
    }
    else {
        gActors[gActors[actor_index].var_150].unk_170 -= 5;
        gActors[gActors[actor_index].var_150].unk_178 = gActors[gActors[actor_index].var_150].unk_170;
        val_index = gActors[gActors[actor_index].var_150].unk_170;
        D_800D22BC[val_index + 0] = (s16) gActors[actor_index].unk_174;
        D_800D22BC[val_index + 1] = (s16) gActors[actor_index].unk_178;
        D_800D22BC[val_index + 2] = (s16) gActors[actor_index].unk_17C;
        D_800D22BC[val_index + 3] = (s16) gActors[actor_index].unk_180;
        D_800D22BC[val_index + 4] = (s16) gActors[actor_index].unk_184;
        actor1 = func_800366E4(gActors[actor_index].var_150);
        if (actor1 != 0) {
            gActors[actor1].state = 0x2F;
            gActors[actor1].posX.whole = gActors[gActors[actor_index].var_150].posX.whole;
            gActors[actor1].posY.whole += 16;
        }
        func_800036C8(0xE3, actor_index);
        func_8003FE4C(1.0f, gActors[gActors[actor_index].var_150].posX.whole, gActors[gActors[actor_index].var_150].posY.whole + 0x22, gActors[actor_index].posZ.whole);
        func_8003FE4C(-0.5f, gActors[gActors[actor_index].var_150].posX.whole, gActors[gActors[actor_index].var_150].posY.whole + 0x22, gActors[actor_index].posZ.whole);
    }
}

u16 func_800374D8(u16 actor_index, s16 val_index) {
    u16 pad;
    u16 actor1;

    if (val_index < 0) {
        return 0;
    }
    actor1 = Actor_RangeFindFlag2(0x12, 0x2D);
    if (actor1 != 0) {
        if (!(D_800D22BC[val_index] & 0x400)) {
            gActors[actor1].actorType = 0x68;
            func_8001E2D0(actor1);
            gActors[actor1].flags = ACTOR_FLAG_ACTIVE;
            if (D_800D22BC[val_index + 4] == 0) {
                gActors[actor1].graphicIndex = 0x13C;
                gActors[actor1].unk_18C = (s32) D_800D86A0;
                gActors[actor1].scaleX = 1.5f;
                gActors[actor1].scaleY = 1.5f;
            }
            else {
                gActors[actor1].graphicIndex = D_800D22BC[val_index + 4];
            }
        }
        else {
            gActors[actor1].actorType = D_800D22BC[val_index + 4];
            func_8001E2D0(actor1);
            gActors[actor1].timer_110 = D_800D22BC[val_index + 1];
            gActors[actor1].unk_0D8 = D_800D22BC[val_index + 2];
        }
        gActors[actor1].colorA = 0;
        gActors[actor1].unk_0FC.raw = 1;
        gActors[actor1].unk_0F8.raw = actor_index;
        return actor1;
    }
    else {
        return 0xFFFF;
    }
}

void func_8003766C(u16 actor_index) {
    u16 index;
    u16 actor1;
    u16 actor2;
    f32 var_f0;

    actor1 = gActors[actor_index].var_150;
    if (gActors[actor1].unk_184 == 0 || gActors[0].velocityX.raw != 0) {
        gActors[actor_index].flags = 0;
        gActors[actor1].unk_188 = 0;
        func_800032C4(0xFC);
    }
    else {
        if (gActors[actor_index].unk_188 < gActors[actor1].unk_184) {
            gActors[actor_index].unk_188 = gActors[actor1].unk_184;
        }
        switch (gActors[actor_index].state) {
        case 0:
            if (func_80036DC8(actor_index)) {
                var_f0 = 256.0f;
                for (index = 1; index < 7; index++) {
                    actor2 = func_800374D8(actor_index, ((s32*)&gActors[actor_index].var_150)[index]);
                    if (actor2 != 0) {
                        gActors[actor2].unk_104 = var_f0;
                        var_f0 += gActors[actor_index].unk_114;
                    }
                }
                gActors[actor_index].state++;
                gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
                gActors[actor_index].unk_16C = 0x180000;
                gActors[actor_index].graphicIndex = 0x168;
                gActors[actor_index].unk_18C = 0x8022D548;
                gActors[actor_index].scaleX = 2.5f;
                Actor_SetColorRgb(actor_index, 0x20);
            }
            else {
                gActors[actor_index].flags = 0;
            }
            break;
        default:
            break;
        case 1:
            if (gActors[actor_index].unk_188 > 7) {
                gActors[actor_index].state++;
            }
            if (gActors[actor_index].colorA > 0x30) {
                if ((u16)gActors[actor_index].unk_124 == 0) {
                    gActors[actor_index].unk_124 += 1.0f;
                    Sound_PlaySfx(0xFC);
                }
                gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, (f32) gActors[actor_index].unk_188 * 5.0 * 65536.0, 0x8000);
            }
            break;
        case 2:
            var_f0 = gActors[actor_index].unk_188 - 8;
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, (2.5 - (var_f0 * 0.5)), 0.03f);
            if (gActors[actor_index].scaleX > 2.5) {
                gActors[actor_index].scaleX = 2.5f;
            }
            gActors[actor_index].unk_16C = (gActors[actor_index].scaleX / 2.5) * 1572864.0;
            if (gActors[actor_index].unk_188 >= 0xE) {
                func_800370AC(actor_index);
                gActors[actor_index].flags = 0;
                gActors[actor1].unk_184 = 0;
                gActors[actor1].unk_188 = 0x3C;
                gActors[actor1].flags &= ~ACTOR_FLAG_UNK13;
                func_800032C4(0xFC);
                return;
            }
            break;
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_DRAW) {
            gActors[actor_index].posX.whole = gActors[actor1].posX.whole;
            gActors[actor_index].posY.whole = gActors[0].posY.whole + 0x28;
            gActors[actor_index].posZ.whole = gActors[actor1].posZ.whole + 2;
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
            gActors[actor_index].colorA = gActors[actor1].unk_184 * 0x12;
            if (gActors[actor_index].colorA > 0x7F) {
                gActors[actor_index].colorA = 0x7F;
            }
        }
    }
}

void func_80037B18(u16 actor_index) {
    u16 index;

    index = Actor_RangeFindFlag2(0x11, 0x2D);
    if (index != 0) {
        gActors[index].actorType = 0x78;
        func_8001E2D0(index);
        gActors[index].var_150 = actor_index;
    }
}

void func_80037B90(u16 actor_index) {
    s32 temp_v0;
    s32 d_pos_x;

    if (func_80029798(actor_index) == 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        if (gActors[actor_index].actorType == 0x18) {
            func_8002877C(actor_index);
        }
        gActors[actor_index].posZ.raw = gActors[actor_index].posY.whole - 0xF800;
        d_pos_x = gActors[actor_index].posX.whole - gActors[0].posX.whole;
        if (d_pos_x < 0) {
            d_pos_x = -d_pos_x;
        }
        if (gActors[actor_index].state != 3) {
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].unk_0D6 == 0) && (gActors[0].unk_140_u8 == 8)) {
                if (((gActors[0].posY.whole - gActors[actor_index].posY.whole) >= 0x1B) && (d_pos_x < 0xC)) {
                    func_80035524(actor_index, 0);
                    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK9;
                }
            }
        }
        if (gActors[actor_index].state != 3) {
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                gActors[actor_index].state = 3;
                gActors[actor_index].flags |= (ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK8);
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK13 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7);
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].unk_174 = 0;
                func_800036C8(0x2F, actor_index);
            }
        }
        switch (gActors[actor_index].state) {
        case 0:
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            ACTOR_GFX_INIT(actor_index, D_800E2514);
            gActors[actor_index].unk_0DF = 0x40;
            gActors[actor_index].health = 10;
            gActors[actor_index].damage = 10;
            gActors[actor_index].unk_0CE = 10;
            gActors[actor_index].scaleY = 0.8f;
            if ((gActors[actor_index].unk_0D8 & 0x8000) == 0) {
                gActors[actor_index].unk_170 = 0xA0;
            }
            func_80035878(actor_index);
            gActors[actor_index].var_160 = 4;
            /* fallthrough */
        case 1:
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.25));
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK8;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK13;
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1)) {
                gActors[actor_index].state = 2;
                gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
                if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
                    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                    gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                }
            }
            break;
        case 2:
        case 4:
            gActors[actor_index].flags |= ACTOR_FLAG_UNK13;
            if ((gActors[actor_index].state == 4) && (gActors[actor_index].flags & ACTOR_FLAG_UNK7)) {
                gActors[actor_index].unk_0DB = 6;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 + 6;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 - 6;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 6;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 6;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
            }
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.0625));
            if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.5)) {
                gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
            }
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2)) || ((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3))) {
                gActors[actor_index].velocityX.raw = (f32) -gActors[actor_index].velocityX.raw * 0.5;
                gActors[actor_index].velocityY.raw = gActors[actor_index].velocityY.raw / 2;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                func_800036C8(0x75, actor_index);
            }
            if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4)) {
                gActors[actor_index].velocityY.raw = 0;
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                func_800036C8(0x75, actor_index);
            }
            if ((gActors[actor_index].velocityY.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
                func_800036C8(0x75, actor_index);
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
                if (gActors[actor_index].velocityY.raw < FIXED_UNIT(-1.5)) {
                    gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.4;
                }
                else {
                    gActors[actor_index].state = 1;
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
                    gActors[actor_index].velocityY.raw = 0;
                }
            }
            break;
        case 3:
            func_80040858(actor_index);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK13;
            temp_v0 = func_800291AC(actor_index, 4, 0x29183, 2, 0x29103);
            switch (temp_v0) {
            case 3:
                gActors[actor_index].velocityX.raw = 0;
                gActors[actor_index].velocityY.raw = FIXED_UNIT(1.0);
                // fallthrough
            case 2:
                gActors[actor_index].var_150 &= ~1;
                gActors[actor_index].unk_184 = 0;
                func_80035878(actor_index);
                gActors[actor_index].unk_174 = 0;
                break;
            default:
                if ((gButtonHold & D_800BE508) && (gActors[0].velocityX.raw == 0) && (gActors[0].velocityY.raw == 0) && (D_80137444 & 0x20) && (gActors[actor_index].posY.whole < gActors[0].posY.whole)) {
                    gActors[actor_index].flags &= ~ACTOR_FLAG_UNK13;
                    func_800367D0(actor_index);
                }
                else {
                    gActors[actor_index].unk_174 = 0;
                    gActors[actor_index].rotateZ = 0.0f;
                }
                if ((gActors[actor_index].unk_184 != 0) && (!(D_80137444 & 0x20) || (gActors[0].velocityX.raw != 0))) {
                    gActors[actor_index].unk_184 = 0;
                    gActors[actor_index].colorR = 0;
                }
                if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17) && (gActors[actor_index].unk_188 == 0) && (gActors[actor_index].unk_170 < 0xA0)) {
                    if (gActors[actor_index].colorR == 0) {
                        Sound_PlaySfx(0xD5);
                    }
                    gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0x7F, 0x18);
                    gActors[actor_index].unk_180 = 0x3C;
                    if (gActors[actor_index].colorR == 0x7F) {
                        switch (gActors[actor_index].unk_184) {
                        case 15:
                            break;
                        case 0:
                            func_80037B18(actor_index);
                            /* fallthrough */
                        default:
                            gActors[actor_index].unk_184++;
                            break;
                        }
                    }
                }
                break;
            }
            break;
        }
        if (gActors[actor_index].unk_180 != 0) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK13;
            gActors[actor_index].unk_180--;
        }
        else {
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 8);
            if (gActors[actor_index].unk_184 != 0) {
                gActors[actor_index].unk_184--;
            }
            if (gActors[actor_index].colorR != 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK13;
            }
        }
        gActors[actor_index].unk_188 = Math_ApproachS32(gActors[actor_index].unk_188, 0, 1);
        gActors[actor_index].colorG = gActors[actor_index].colorR;
        gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    }
}

void func_80038398(u16 actor_index) {
    if (gActors[actor_index].unk_144 > 0.0f) {
        gActors[actor_index].unk_144 -= 1.0f;
    }
    if (((u16)gActors[actor_index].unk_140_f32 == 1) && (gActors[actor_index].unk_144 <= 0.0f)) {
        if (gActors[actor_index].unk_144) {} // fakematch
        gActors[actor_index].unk_144 = (func_8000178C() & 0x3F) + 0x28;
        func_8002EDC8(actor_index, 0xD300, 0, gActors[actor_index].posX.raw, gActors[actor_index].posY.raw, gActors[actor_index].posZ.raw);
    }
}

void func_800384FC(u16 actor_index, s32 vel_target, s32 vel_step, s16 arg3, s16 arg4) {
    if (gActors[actor_index].var_150 & 0x10000000) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, vel_target, vel_step);
        if (gActors[actor_index].unk_178 < gActors[actor_index].unk_180) {
            gActors[actor_index].var_150 &= 0xEFFFFFFF;
            gActors[actor_index].unk_178 = gActors[actor_index].unk_170 + arg3;
        }
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -vel_target, vel_step);
        if (gActors[actor_index].unk_180 < gActors[actor_index].unk_178) {
            gActors[actor_index].var_150 |= 0x10000000;
            gActors[actor_index].unk_178 = gActors[actor_index].unk_170 + arg4;
        }
    }
}

void func_80038600(u16 actor_index, s32 vel_target, s32 vel_step, s16 arg3, s16 arg4) {
    if (gActors[actor_index].var_150 & 0x20000000) {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, vel_target, vel_step);
        if (gActors[actor_index].unk_17C < gActors[actor_index].unk_184) {
            gActors[actor_index].var_150 &= 0xDFFFFFFF;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 + arg3;
        }
    }
    else {
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, -vel_target, vel_step);
        if (gActors[actor_index].unk_184 < gActors[actor_index].unk_17C) {
            gActors[actor_index].var_150 |= 0x20000000;
            gActors[actor_index].unk_17C = gActors[actor_index].unk_174 + arg4;
        }
    }
}

void func_80038704(u16 actor_index) {
    u16 temp_t9;
    u16 sp24;

    sp24 = func_8000178C();
    temp_t9 = func_8000178C();
    func_800384FC(actor_index, 0x4000, 0x400, -(sp24 & 3), temp_t9 & 3);
    sp24 = func_8000178C();
    temp_t9 = func_8000178C();
    func_80038600(actor_index, 0x4000, 0x400, -(sp24 & 1), temp_t9 & 1);
}

void func_80038794(u16 actor_index) {
    if (D_800BE4E0 & 0x20) {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 0.9f, 0.02f);
    }
    else {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 1.1f, 0.02f);
    }
}

void func_80038868(u16 actor_index, u16 arg1) {
    u16 index;
    u16 actor1;

    if (gActors[actor_index].var_158 == 0) {
        if ((gActors[actor_index].health <= 0) || (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0)) {
            func_800036C8(0x6E, actor_index);
            gActors[actor_index].unk_190 |= 1;
            gActors[actor_index].var_154 = arg1;
            gActors[actor_index].var_158 = 1;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7);
            gActors[actor_index].unk_148 = 2.0f;
            for (index = 0; index < 2; index++) {
                actor1 = func_8003123C(D_800E158C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 2);
                if (actor1 != 0) {
                    gActors[actor1].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                    gActors[actor1].scaleX = gActors[actor_index].scaleX * 3.0;
                    gActors[actor1].scaleY = gActors[actor_index].scaleX * 0.4;
                    Actor_SetColorRgb(actor1, 0x7F);
                    if (index) {
                        gActors[actor1].var_160 = 0;
                        gActors[actor1].unk_18C = 0x8022D4E8;
                    }
                    else {
                        gActors[actor1].var_160 = 0x01000000;
                        gActors[actor1].unk_18C = 0x8022D528;
                    }
                    gActors[actor1].var_150 = 0x800000;
                    gActors[actor1].timer_110 = 0.03f;
                    gActors[actor1].unk_114 = -0.01f;
                    gActors[actor1].unk_118 = -0.01f;
                    gActors[actor1].unk_11C = -0.01f;
                    gActors[actor1].var_154 = 0x20;
                    gActors[actor1].unk_164 = -3;
                }
            }
        }
    }
    switch (gActors[actor_index].var_158) {
    case 1:
        gActors[actor_index].unk_190 |= 2;
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0x20, 0x10);
        if (gActors[actor_index].colorA == 0x7F) {
            switch (gActors[actor_index].var_150 & 0xC00) {
            case 0x400:
                gActors[actor_index].var_150 &= ~0xC00;
                func_8002EFE4(actor_index, 0x30, 0);
                break;
            case 0x800:
                gActors[actor_index].var_150 &= ~0xC00;
                func_8002EFE4(actor_index, 0x31, 0);
                break;
            case 0xC00:
                gActors[actor_index].var_150 &= ~0xC00;
                func_8002EFE4(actor_index, 0x32, 0);
                break;
            }
        }
        if ((gActors[actor_index].var_150 & 0x1000) && (gActors[actor_index].colorA == 0x20)) {
            gActors[actor_index].flags = 0;
            return;
        }
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 0.5f, 0.12f);
        gActors[actor_index].var_154--;
        if (gActors[actor_index].var_154 < 0) {
            gActors[actor_index].var_158++;
            gActors[actor_index].health = 1;
        }
        break;
    case 2:
        gActors[actor_index].unk_190 |= 2;
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xFF, 8);
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 1.5f, 0.04f);
        if (gActors[actor_index].colorA == 0xFF) {
            gActors[actor_index].var_158++;
            gActors[actor_index].colorR = 0;
            func_800036C8(0x3D, actor_index);
        }
        break;
    case 3:
        gActors[actor_index].unk_190 |= 2;
        gActors[actor_index].colorR -= 0x20;
        if (gActors[actor_index].colorR == 0x00) {
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7;
        }
        /* fallthrough */
    default:
        gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
        gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
        func_80038794(actor_index);
        func_80038398(actor_index);
        break;
    }
    gActors[actor_index].colorG = gActors[actor_index].colorR;
    gActors[actor_index].colorB = gActors[actor_index].colorR;
}

void func_80038C94(u16 actor_index) {
    gActors[actor_index].unk_190 = 0;
    gActors[actor_index].unk_180 = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_184 = gActors[actor_index].posY.whole + D_800BE55C;
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK16) {
        func_800036C8(0x6E, actor_index);
    }
}

void func_80038D1C(u16 actor_index) {
    if (gActors[actor_index].var_150 & 0x1000) {
        gActors[actor_index].scaleX = gActors[actor_index].unk_148 / 1.5;
    }
    else {
        gActors[actor_index].scaleX = gActors[actor_index].unk_148;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    func_8002ABE4(actor_index, (s16) (gActors[actor_index].scaleX * 8.0f));
    func_8002AC30(actor_index, gActors[actor_index].hitboxAY0);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_80038E1C(u16 actor_index) {
    gActors[actor_index].state++;
    gActors[actor_index].var_150 = gActors[actor_index].timer_110;
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    if ((u16)gActors[actor_index].timer_110 & 0x8000) {
        gActors[actor_index].flags |= ACTOR_FLAG_ONSCREEN_ONLY;
    }
    ACTOR_GFX_INIT(actor_index, D_800E2528);
    gActors[actor_index].posZ.raw = FIXED_UNIT(0.5);
    gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + D_800BE55C;
    gActors[actor_index].unk_178 = gActors[actor_index].posX.whole + D_800BE558;
    gActors[actor_index].unk_17C = gActors[actor_index].posY.whole + D_800BE55C;
    gActors[actor_index].unk_148 = 1.1f;
    gActors[actor_index].health = 1;
    if (gActors[actor_index].var_158 & 1) {
        gActors[actor_index].damage = 0x1E;
    }
    else {
        gActors[actor_index].damage = 0x3C;
    }
    gActors[actor_index].unk_0DE = 0xC;
    gActors[actor_index].unk_0DF = 0x40;
    gActors[actor_index].unk_0DA = 0x84;
    gActors[actor_index].unk_0DB = 4;
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
    gActors[actor_index].unk_18C = D_800D24F4[(gActors[actor_index].var_150 & 0x300) / 256];
}

void func_80038FF4(u16 actor_index, u16 actor_type, u16 arg2, u16 arg3) {
    func_800036C8(0x6E, actor_index);
    func_8003FB20(actor_index, 0, 1.2f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 4);
    gActors[actor_index].actorType = actor_type;
    func_8001E2D0(actor_index);
    gActors[actor_index].timer_110 = arg2;
    gActors[actor_index].unk_0D8 = arg3;
}

void func_800390BC(u16 actor_index) {
    func_8003FB20(actor_index, 0, 1.2f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 4);
    gActors[actor_index].flags = 0;
}

void func_80039134(u16 actor_index) {
    u16 index;

    func_80038C94(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80038E1C(actor_index);
        index = gActors[actor_index].unk_0D8 * 2;
        gActors[actor_index].unk_114 = D_800D2504[index + 0];
        gActors[actor_index].unk_140_f32 = D_800D2504[index + 1];
        // fallthrough
    case 1:
        func_80038704(actor_index);
        func_80038868(actor_index, gActors[actor_index].unk_114);
        break;
    }
    func_80038D1C(actor_index);
}

void func_8003929C(u16 actor_index) {
    s32 temp_v0;
    u16 index;
    s32* vals;

    func_80038C94(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80038E1C(actor_index);
        index = gActors[actor_index].unk_0D8 * 6;
        vals = &D_800D2514[index];
        gActors[actor_index].var_150 |= vals[1];
        gActors[actor_index].var_15C = vals[2];
        gActors[actor_index].var_160 = vals[3];
        gActors[actor_index].unk_164 = vals[4];
        gActors[actor_index].unk_168 = vals[5];
        gActors[actor_index].unk_114 = vals[0];
        /* fallthrough */
    case 1:
        func_800384FC(actor_index, gActors[actor_index].unk_164, gActors[actor_index].unk_168, gActors[actor_index].var_15C, gActors[actor_index].var_160);
        temp_v0 = func_8000178C();
        func_80038600(actor_index, 0x4000, 0x400, -(temp_v0 & 1), 0);
        func_80038868(actor_index, gActors[actor_index].unk_114);
        break;
    }
    func_80038D1C(actor_index);
}

void func_80039468(u16 actor_index) {
    u16 index;
    s32* vals;
    u16 temp_v0;
    u16 sp2C;

    func_80038C94(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80038E1C(actor_index);
        index = gActors[actor_index].unk_0D8 * 6;
        vals = &D_800D258C[index];
        gActors[actor_index].var_150 |= vals[1];
        gActors[actor_index].var_15C = vals[2];
        gActors[actor_index].var_160 = vals[3];
        gActors[actor_index].unk_164 = vals[4];
        gActors[actor_index].unk_168 = vals[5];
        gActors[actor_index].unk_114 = vals[0];
        /* fallthrough */
    case 1:
        sp2C = func_8000178C();
        temp_v0 = func_8000178C();
        func_800384FC(actor_index, 0x4000, 0x400, -(sp2C & 1), temp_v0 & 1);
        func_80038600(actor_index, gActors[actor_index].unk_164, gActors[actor_index].unk_168, gActors[actor_index].var_15C, gActors[actor_index].var_160);
        func_80038868(actor_index, (u16)gActors[actor_index].unk_114);
        break;
    }
    func_80038D1C(actor_index);
}

u16 func_80039644(u16 actor_index) {
    gActors[actor_index].posZ.raw = FIXED_UNIT(0.5);
    if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
        if (!(gActors[actor_index].var_150 & 0x40000000)) {
            gActors[actor_index].var_150 |= 0x40000000;
            func_800036C8(0x90, actor_index);
            if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].var_150 |= 0x20000000;
            }
            else {
                gActors[actor_index].var_150 &= 0xDFFFFFFF;
            }
        }
        return 1;
    }
    gActors[actor_index].var_150 &= 0xBFFFFFFF;
    return 0;
}

void func_80039724(u16 actor_index) {
    gActors[actor_index].state++;
    if (D_800BE5D0 == 0x35) {
        gActors[actor_index].var_150 = gActors[actor_index].timer_110;
    }
    else {
        gActors[actor_index].var_150 = (s32) gActors[actor_index].timer_110 & ~0x1000;
    }
    gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    if (gActors[actor_index].var_150 & 0x700) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
        gActors[actor_index].unk_18C = D_800D26E0[(gActors[actor_index].var_150 & 0x700) / 256];
    }
    func_8002AC30(actor_index, 0xE);
}

void func_80039838(u16 actor_index) {
    gActors[actor_index].state--;
    gActors[actor_index].unk_164 = 0xD;
    gActors[actor_index].var_150 &= 0xFFF0FFFF;
}

void func_80039894(u16 actor_index) {
    gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK17;
    Actor_SetColorRgb(actor_index, 0x7F);
}

void func_800398F8(u16 actor0, u16 actor1) {
    if (gActors[actor1].actorType == 0x45) {
        func_800036C8(0x116, actor0);
    }
    else {
        func_800036C8(0x145, actor0);
    }
}

void func_80039970(u16 actor0, u16 actor1) {
    switch (gActors[actor1].actorType) {
    case 8:
        gActors[actor1].var_150 = 0x78;
        gActors[actor1].velocityY.raw = FIXED_UNIT(4.0);
        func_800036C8(0x51, actor0);
        break;
    case 50:
        func_800036C8(0x136, actor0);
        break;
    default:
        func_800036C8(0x116, actor0);
        break;
    }
}

void func_80039A1C(u16 actor_index, u16* vals) {
    gActors[actor_index].actorType = vals[4] & 0x7FFF;
    func_8001E2D0(actor_index);
    gActors[actor_index].posX.whole = vals[0] - D_800BE558;
    gActors[actor_index].posY.whole = vals[1] - D_800BE55C;
    gActors[actor_index].timer_110 = vals[2];
    gActors[actor_index].unk_0D8 = vals[3];
}

u16 func_80039ADC(u16 actor0, u16 actor1) {
    u16* vals;

    vals = &D_800D25BC[(gActors[actor0].unk_0D8 & 0xFF) * 5];
    func_80039A1C(actor1, vals);
    func_800398F8(actor0, actor1);
    func_8003FE90(1.0f, gActors[actor1].posX.whole, gActors[actor1].posY.whole, gActors[actor1].posZ.whole);
    while (vals[4] & 0x8000) {
        actor1++;
        vals += 5;
        func_80039A1C(actor1, vals);
        func_8003FED8(1.0f, gActors[actor1].posX.whole, gActors[actor1].posY.whole, gActors[actor1].posZ.whole);
    }
    return actor1;
}

u16 func_80039C1C(u16 actor0, u16 actor1) {
    u16* vals;

    vals = &D_800D2690[(gActors[actor0].unk_0D8 & 0xFF) * 3];
    if ((vals[2] == 8) && (vals[0] == 0x32)) {
        if (func_8001C7F0(gDebugStageSelectSelectedIndex)) {
            return 0;
        }
    }
    gActors[actor1].actorType = vals[2];
    func_8001E2D0(actor1);
    gActors[actor1].posX.whole = gActors[actor0].posX.whole;
    gActors[actor1].posY.whole = gActors[actor0].posY.whole;
    gActors[actor1].timer_110 = vals[0];
    gActors[actor1].unk_0D8 = vals[1];
    func_80039970(actor0, actor1);
    func_8003FF20(1.0f, gActors[actor1].posX.whole, gActors[actor1].posY.whole, gActors[actor1].posZ.whole);
    return actor1;
}

u16 func_80039DA0(u16 actor_index) {
    if (gActors[actor_index].unk_0D8 & 0x8000) {
        return Actor_RangeFindFlag2(gActors[actor_index].unk_180 + 0x71, 0x90);
    }
    else if ((gActors[actor_index].var_150 & 0x8000) && (gActors[(u16)gActors[actor_index].unk_188].actorType == 0x61)) {
        return (gActors[actor_index].unk_180 + actor_index + 2);
    }
    else {
        return (gActors[actor_index].unk_180 + actor_index + 1);
    }
}

void func_80039E7C(u16 actor_index) {
    s16 temp_t7;
    u16 index;

    temp_t7 = (gActors[actor_index].unk_0D8 & 0x7000) / 4096;
    switch (gActors[actor_index].unk_0D8 & 0xF00) {
    case 0x0:
        if (gActors[actor_index].unk_180 < temp_t7) {
            index = func_80039DA0(actor_index);
            if (gActors[index].flags == 0) {
                func_80039ADC(actor_index, index);
                gActors[actor_index].unk_180++;
            }
        }
        break;
    case 0x100:
        if (gActors[actor_index].unk_180 < temp_t7) {
            index = func_80039DA0(actor_index);
            if (gActors[index].flags == 0) {
                func_80039C1C(actor_index, index);
                gActors[actor_index].unk_180++;
            }
        }
        break;
    case 0x200:
        if (gActors[actor_index].unk_180 < temp_t7) {
            if ((&gActors[gActors[actor_index].unk_180])[actor_index + 1].flags != 0) {
                gActors[actor_index].unk_180++;
                index = gActors[actor_index].unk_180 + actor_index;
                gActors[index].flags = 0;
                func_800398F8(actor_index, index);
            }
        }
        break;
    case 0x400:
        for (gActors[actor_index].unk_180 = 0; gActors[actor_index].unk_180 < temp_t7; gActors[actor_index].unk_180++) {
            index = func_80039DA0(actor_index);
            if (gActors[index].flags == 0) {
                func_80039ADC(actor_index, index);
                break;
            }
        }
        break;
    case 0x500:
        for (gActors[actor_index].unk_180 = 0; gActors[actor_index].unk_180 < temp_t7; gActors[actor_index].unk_180++) {
            index = func_80039DA0(actor_index);
            if (gActors[index].flags == 0) {
                func_80039C1C(actor_index, index);
                break;
            }
        }
        break;
    }
}

void func_8003A120(u16 actor_index) {
    s32 pad;
    s32 vel_x;
    s32 vel_y;
    s32 var_t1;
    u16 index;

    if (func_80039644(actor_index) != 0) {
        if (gActors[actor_index].unk_188 != 0) {
            gActors[(u16)gActors[actor_index].unk_188].var_158 = actor_index;
        }
    }
    switch (gActors[actor_index].state) {
    case 0:
        func_80039724(actor_index);
        gActors[actor_index].state++;
        gActors[actor_index].unk_188 = (gActors[actor_index].var_150 & 0xFF) & 0xFF; // fakematch
        gActors[actor_index].unk_138 = 32.0f;
        gActors[actor_index].unk_13C = 32.0f;
        gActors[actor_index].unk_148 = 0.0f;
        gActors[actor_index].unk_170 = gActors[actor_index].posX.whole + D_800BE558;
        gActors[actor_index].unk_174 = gActors[actor_index].posY.whole + D_800BE55C;
        gActors[actor_index].unk_17C = gActors[actor_index].posY.whole + D_800BE55C;
        gActors[actor_index].unk_178 = gActors[actor_index].posX.whole + D_800BE558;
        gActors[actor_index].unk_0DE = 8; \
        gActors[actor_index].unk_0DF = 0x40;
        break;
    case 1:
        gActors[actor_index].unk_164--;
        if (gActors[actor_index].unk_164 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].var_15C = 0;
            gActors[actor_index].var_160 = 0;
            gActors[actor_index].unk_168 = 0;
            gActors[actor_index].unk_16C = 0;
            Actor_SetColorRgb(actor_index, 0);
        }
        else {
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_15C += gActors[actor_index].unk_168;
            gActors[actor_index].var_160 += gActors[actor_index].unk_16C;
            gActors[actor_index].var_154 += gActors[actor_index].var_15C;
            gActors[actor_index].var_158 += gActors[actor_index].var_160;
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.07f);
            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.07f);
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0, 0xA);
            gActors[actor_index].colorG = gActors[actor_index].colorR;
            gActors[actor_index].colorB = gActors[actor_index].colorR;
        }
        /* fallthrough */
    case 2:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].unk_0D6 == 0)) {
            gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
            if (gActors[actor_index].var_150 & 0x20000000) {
                if (!(gActors[0].flags & ACTOR_FLAG_FLIPPED)) {
                    Sound_PlaySfx(0x117);
                    gActors[actor_index].var_150 &= 0xDFFFFFFF;
                }
            }
            else if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                Sound_PlaySfx(0x117);
                gActors[actor_index].var_150 |= 0x20000000;
            }
            if ((gActors[actor_index].state == 2) && (D_801373F2 == 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
                if (!(gActors[actor_index].var_150 & 0x8000)) {
                    func_800036C8(0x115, actor_index);
                }
                if (func_800486F4() == 0xC) {
                    gActors[actor_index].var_15C = -0x64CCC;
                    gActors[actor_index].unk_168 = 0x10199;
                    gActors[actor_index].scaleX = 1.82f;
                    gActors[actor_index].scaleY = 0.42f;
                    func_80039838(actor_index);
                    if (gActors[actor_index].var_150 & 0x2000) {
                        gActors[actor_index].var_150 &= 0xFDFFFFFF;
                        func_80039894(actor_index);
                    }
                }
                else if (func_800486F4() == 4) {
                    gActors[actor_index].var_15C = 0x64CCC;
                    gActors[actor_index].unk_168 = -0x10199;
                    gActors[actor_index].scaleX = 1.82f;
                    gActors[actor_index].scaleY = 0.42f;
                    func_80039838(actor_index);
                    if (gActors[actor_index].var_150 & 0x2000) {
                        gActors[actor_index].var_150 |= 0x02000000;
                        func_80039894(actor_index);
                    }
                }
                else if (func_800486F4() == 8) {
                    gActors[actor_index].var_160 = -0x64CCC;
                    gActors[actor_index].unk_16C = 0x10199;
                    gActors[actor_index].scaleX = 0.42f;
                    gActors[actor_index].scaleY = 1.82f;
                    func_80039838(actor_index);
                    if (gActors[actor_index].var_150 & 0x4000) {
                        gActors[actor_index].var_150 &= 0xFBFFFFFF;
                        func_80039894(actor_index);
                        func_80039E7C(actor_index);
                    }
                }
                else if (func_800486F4() == 0) {
                    gActors[actor_index].var_160 = 0x64CCC;
                    gActors[actor_index].unk_16C = -0x10199;
                    gActors[actor_index].scaleX = 0.42f;
                    gActors[actor_index].scaleY = 1.82f;
                    func_80039838(actor_index);
                    if (gActors[actor_index].var_150 & 0x4000) {
                        gActors[actor_index].var_150 |= 0x04000000;
                        func_80039894(actor_index);
                    }
                }
            }
            if (gActors[actor_index].var_150 & 0x1000) {
                switch (gButtonHold & (D_800BE50C + D_800BE510 + D_800BE504 + D_800BE508)) {
                case 0x800:
                    vel_y = 0x10;
                    if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                        vel_x = 0x18;
                        var_t1 = 0x800000;
                    }
                    else {
                        vel_x = -0x18;
                        var_t1 = 0x01800000;
                    }
                    break;
                case 0x400:
                    vel_y = -0x10;
                    if (gActors[0].flags & ACTOR_FLAG_FLIPPED) {
                        vel_x = 0x18;
                        var_t1 = 0x03800000;
                    }
                    else {
                        vel_x = -0x18;
                        var_t1 = 0x02800000;
                    }
                    break;
                case 0x200:
                    /* fallthrough */
                case 0xA00:
                    vel_x = -0x18;
                    vel_y = 0x10;
                    var_t1 = 0x01800000;
                    break;
                case 0x600:
                    vel_x = -0x18;
                    vel_y = -0x10;
                    var_t1 = 0x02800000;
                    break;
                case 0x100:
                case 0x900:
                    /* fallthrough? */
                    vel_x = 0x18;
                    vel_y = 0x10;
                    var_t1 = 0x800000;
                    break;
                case 0x500:
                    vel_x = 0x18;
                    vel_y = -0x10;
                    var_t1 = 0x03800000;
                    break;
                }
                if (!(D_800BE4E0 & 0xF) && (gButtonHold & (D_800BE50C + D_800BE510 + D_800BE504 + D_800BE508))) {
                    index = func_8003123C(D_800E1380, gActors[actor_index].posX.whole + vel_x, gActors[actor_index].posY.whole + vel_y, gActors[0].posZ.whole + 1);
                    if (index != 0) {
                        gActors[index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                        gActors[index].graphicIndex = 0x12E;
                        gActors[index].var_160 = var_t1;
                        gActors[index].var_154 = -12;
                        gActors[index].timer_110 = -0.05f;
                        gActors[index].unk_114 = -0.05f;
                        gActors[index].unk_148 = 15.0f;
                        gActors[index].velocityX.raw = vel_x * FIXED_UNIT(0.0234375);
                        gActors[index].velocityY.raw = vel_y * FIXED_UNIT(0.0234375);
                    }
                }
            }
        }
        break;
    }
    if (gActors[actor_index].var_150 & 0x8000) {
        gActors[(u16)gActors[actor_index].unk_188].flags_098 |= gActors[actor_index].flags_098;
        gActors[actor_index].unk_13C = Math_ApproachF32(gActors[actor_index].unk_13C, gActors[actor_index].unk_138, 4.0f);
    }
    else {
        gActors[actor_index].posX.whole = (gActors[actor_index].unk_170 + (gActors[actor_index].var_154 / 65536)) - D_800BE558;
        gActors[actor_index].posY.whole = (gActors[actor_index].var_158 / 65536) + ((gActors[actor_index].unk_174 + D_800D26F4[(D_800BE4E0 / 2) & 0xF]) - D_800BE55C);
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8003A958(u16 actor_index) {
    gActors[actor_index].unk_170 += 0x1000000;
    func_800036C8(0x115, actor_index);
}

void func_8003A9B8(u16 actor_index) {
    gActors[actor_index].unk_170 -= 0x1000000;
    func_800036C8(0x115, actor_index);
}

void func_8003AA18(u16 actor_index) {
    if (((u16)gActors[actor_index].timer_110 & 0x4000) == 0) {
        gActors[(u16)gActors[actor_index].var_158].unk_138 += 32.0f;
        func_800036C8(0x114, actor_index);
    }
    else {
        func_800036C8(0x115, actor_index);
    }
}

void func_8003AB24(u16 actor_index) {
    if (((u16)gActors[actor_index].timer_110 & 0x4000) == 0) {
        gActors[(u16)gActors[actor_index].var_158].unk_138 -= 32.0f;
        func_800036C8(0x114, actor_index);
    }
    else {
        func_800036C8(0x115, actor_index);
    }
}

void func_8003AC30(u16 actor_index) {
    f32 dx;
    f32 dist;
    f32 dy;
    s16 loop_var;
    u16 index;
    u16 var_a2;
    s32 temp_v0;
    s32 angle;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x2CA;
        gActors[actor_index].posZ.raw = FIXED_UNIT(0.5);
        gActors[actor_index].scaleX = 0.9f;
        gActors[actor_index].scaleY = 1.5f;
        gActors[actor_index].var_15C = (u16)gActors[actor_index].timer_110 & 3;
        gActors[actor_index].unk_170 = ((u16)gActors[actor_index].timer_110 & 0x300) << 0x10;

        var_a2 = 0x20;
        switch ((u16)gActors[actor_index].timer_110 & 0x3000) {
        case 0x1000:
            var_a2 = 0x40;
            break;

        case 0x2000:
            var_a2 = 0x60;
            break;
        }

        index = actor_index - 1;
        for (loop_var = gActors[actor_index].var_15C; loop_var >= 0; index--, loop_var--) {
            gActors[index].unk_138 = var_a2;
        }
        // fallthrough

    case 1:
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (D_801373F2 == 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            if (gActors[gActors[actor_index].var_158].colorR == 0x7F) {
                var_a2 = 0x60;
                index = gActors[actor_index].var_158;
                temp_v0 = Math_Atan2(
                    gActors[index].posX.raw - gActors[actor_index].posX.raw,
                    gActors[index].posY.raw - gActors[actor_index].posY.raw
                );

                if ((temp_v0 >= 0x80) && (temp_v0 < 0x180)) {
                    switch (func_800486F4()) {
                    case 12:
                        func_8003A958(actor_index);
                        break;

                    case 4:
                        func_8003A9B8(actor_index);
                        break;

                    case 0:
                        func_8003AA18(actor_index);
                        break;

                    case 8:
                        func_8003AB24(actor_index);
                        break;
                    }
                }
                else if ((temp_v0 >= 0x180) && (temp_v0 < 0x280)) {
                    switch (func_800486F4()) {
                    case 12:
                        func_8003AA18(actor_index);
                        break;

                    case 4:
                        func_8003AB24(actor_index);
                        break;

                    case 0:
                        func_8003A9B8(actor_index);
                        break;

                    case 8:
                        func_8003A958(actor_index);
                        break;
                    }
                }
                else if ((temp_v0 >= 0x280) && (temp_v0 < 0x380)) {
                    switch (func_800486F4()) {
                    case 12:
                        func_8003A9B8(actor_index);
                        break;

                    case 4:
                        func_8003A958(actor_index);
                        break;

                    case 0:
                        func_8003AB24(actor_index);
                        break;

                    case 8:
                        func_8003AA18(actor_index);
                        break;
                    }
                }
                else {
                    switch (func_800486F4()) {
                    case 12:
                        func_8003AB24(actor_index);
                        break;

                    case 4:
                        func_8003AA18(actor_index);
                        break;

                    case 0:
                        func_8003A958(actor_index);
                        break;

                    case 8:
                        func_8003A9B8(actor_index);
                        break;
                    }
                }

                switch ((u16)gActors[actor_index].timer_110 & 0x30) {
                case 0x10:
                    var_a2 = 0x40;
                    break;

                case 0x20:
                    var_a2 = 0x20;
                    break;
                }

                dx = var_a2;
                if (gActors[index].unk_138 > dx) {
                    gActors[index].unk_138 = dx;
                }
                else if (gActors[index].unk_138 < 32.0f) {
                    gActors[index].unk_138 = 32.0f;
                }
            }
        }

        gActors[actor_index].unk_170 &= 0x03FFFFFF;
        gActors[actor_index].unk_16C = func_800298D0(gActors[actor_index].unk_170, gActors[actor_index].unk_16C, 0xC0000);
        angle = gActors[actor_index].unk_16C / 65536;
        index = actor_index - 1;

        for (loop_var = gActors[actor_index].var_15C; loop_var >= 0; index--, loop_var--, angle += D_800D2714[gActors[actor_index].var_15C]) {
            angle &= 0x3FF;
            dx = gActors[index].unk_13C * 65536.0f;
            gActors[index].posX.raw = (dx * COS(angle) + gActors[actor_index].posX.raw) + gActors[index].var_154;
            gActors[index].posY.raw = (dx * SIN(angle) + gActors[actor_index].posY.raw) + gActors[index].var_158;

            var_a2 = Actor_RangeFindFlag2_90ToC0();
            if (var_a2 != 0) {
                gActors[var_a2].actorType = 0x34;
                (void)func_8001E2D0(var_a2);
                gActors[var_a2].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[var_a2].posX.raw = gActors[actor_index].posX.raw - ((((gActors[index].velocityX.raw + gActors[actor_index].posX.raw) - gActors[index].posX.raw) / 2) * 0.8);
                gActors[var_a2].posY.raw = gActors[actor_index].posY.raw - ((((gActors[index].velocityY.raw + gActors[actor_index].posY.raw) - gActors[index].posY.raw) / 2) * 0.8);
                gActors[var_a2].rotateZ = Math_Atan2(
                    gActors[index].posX.raw - gActors[actor_index].posX.raw,
                    gActors[index].posY.raw - gActors[actor_index].posY.raw
                ) * 0.3515625;

                dx = gActors[index].posX.whole - gActors[actor_index].posX.whole;
                dy = gActors[index].posY.whole - gActors[actor_index].posY.whole;
                dist = sqrtf(SQ(dx) + SQ(dy));

                if ((u16)gActors[actor_index].timer_110 & 0x4000) {
                    gActors[var_a2].graphicFlags = (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK8) + (ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE);
                    gActors[var_a2].graphicIndex = 0x3064;
                    gActors[var_a2].scaleX = -((dist / 13.0f) / 2);
                }
                else {
                    gActors[var_a2].graphicFlags = (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK8) + (ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE);
                    gActors[var_a2].graphicIndex = 0xA2;
                    gActors[var_a2].scaleX = (dist / 18.0f) / 2;
                }

                gActors[var_a2].scaleY = 1.0f;
                gActors[var_a2].posZ.whole = gActors[actor_index].posZ.whole - 4;
                gActors[var_a2].unk_18C = 0x8022D528;
                gActors[var_a2].unk_148 = 1.0f;
            }
        }
        break;
    }

    gActors[actor_index].flags_098 = 0;
}

void func_8003B630(u16 actor_index) {
    if (gActors[actor_index].state) {
        if (gActors[actor_index].unk_0D8 & 0x1) {
            gActors[actor_index].state = 3;
            gActors[actor_index].unk_0D8 &= 0xFFFE;
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_UNK16 | ACTOR_FLAG_FLIPPED | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        ACTOR_GFX_INIT(actor_index, D_800E1700);
        gActors[actor_index].posZ.whole = -1;
        func_8006CD5C(actor_index);
        func_8006CC70(actor_index);
        func_8002AC30(actor_index, 0xA);
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.125));
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK6) {
            gActors[actor_index].state = 2;
            ACTOR_GFX_INIT(actor_index, D_800E1C1C);
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16; \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        else {
            func_80067EF0(actor_index);
        }
        break;
    case 2:
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.5), FIXED_UNIT(0.21875));
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state = 1;
            ACTOR_GFX_INIT(actor_index, D_800E1C2C);
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
            gActors[actor_index].velocityY.raw = 0;
        }
        break;
    case 3:
        gActors[actor_index].state++;
        ACTOR_GFX_INIT(actor_index, D_800E1D0C);
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.125);
        gActors[actor_index].var_150 = 0x78;
        /* fallthrough */
    case 4:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].actorType = 0x3F;
            func_8001E2D0(actor_index);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
            gActors[actor_index].timer_110 = 1027.0f;
            gActors[actor_index].unk_0D8 = 1;
            return;
        }
        if (gActors[actor_index].graphicTimer == 0) {
            ACTOR_GFX_INIT(actor_index, D_800E1D0C);
            func_800036C8(0x2A, actor_index);
        }
        break;
    }
    func_80066BCC(actor_index);
}

void func_8003B8CC(u16 actor_index) {
    if ((gActors[actor_index].unk_0D8 & 0x3410) == 0x3410) {
        func_8003B630(actor_index);
        return;
    }

    if ((gActors[actor_index].state != 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9)) {
        gActors[actor_index].posZ.raw = gActors[actor_index].unk_10C;
        gActors[actor_index].unk_188 = 1;
        if ((gActors[actor_index].unk_0D8 & 1) && !(gActors[actor_index].var_150 & 0x40000000)) {
            gActors[actor_index].unk_0D8 &= 0xFFFE;
            gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
    else {
        gActors[actor_index].unk_188 = 0;
    }
    func_80039644(actor_index);
    func_8002877C(actor_index);
    if (gActors[actor_index].unk_170 != 0) {
        if (((gActors[actor_index].unk_170 > 0) && ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3) != 0)) ||
            ((gActors[actor_index].unk_170 < 0) && ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2) != 0))) {
            gActors[actor_index].unk_170 = (f32) -gActors[actor_index].unk_170 * 0.8;
            gActors[actor_index].scaleX = 0.6f;
        }
    }

    switch (gActors[actor_index].state) {
    case 0:
        func_80039724(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK10 | ACTOR_FLAG_UNK8;
        gActors[actor_index].unk_0DE = 6; \
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].unk_14C = 0.0f;
        /* fallthrough */
    case 1:
        gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, 0, 0x100);
        gActors[actor_index].unk_174 -= 0x3000;
        if ((gActors[actor_index].unk_174 < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].state++;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK17;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK16;
            gActors[actor_index].unk_114 = 2.0f;
            func_800036C8(0x82, actor_index);
            gActors[actor_index].scaleY = 0.6f;
            gActors[actor_index].unk_178 = (f32) gActors[actor_index].unk_170 * 0.9;
            gActors[actor_index].unk_17C = (f32) -gActors[actor_index].unk_174 * 0.7;
            gActors[actor_index].unk_174 = 0;
            gActors[actor_index].unk_170 = gActors[actor_index].unk_170 / 16;
            if (gActors[actor_index].unk_17C < 0x30000) {
                gActors[actor_index].unk_17C = 0x30000;
            }
        }
        break;
    case 2:
        gActors[actor_index].unk_114 -= 1.0f;
        if (gActors[actor_index].unk_114 < 0.0f) {
            gActors[actor_index].state -= 1;
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK16;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].unk_170 = gActors[actor_index].unk_178;
            gActors[actor_index].unk_174 = gActors[actor_index].unk_17C;
            if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) == 0) {
                if ((u16)gActors[actor_index].timer_110 & 0x1000) {
                    if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
                        gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, 0x20000, 0x20000);
                    }
                    else {
                        gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, -0x20000, 0x20000);
                    }
                }
            }
        }
        break;
    }
    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.05f);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 1.0f, 0.05f);
    gActors[actor_index].velocityX.raw = gActors[actor_index].unk_170;
    gActors[actor_index].velocityY.raw = gActors[actor_index].unk_174;
    Actor_ClampVelocityX(actor_index, 0x60000);
    Actor_ClampVelocityY(actor_index, 0x7FFF0);
    if (gActors[actor_index].unk_174 < -0xA0000) {
        gActors[actor_index].unk_174 = -0xA0000;
    }
    if (gActors[actor_index].unk_174 > 0xA0000) {
        gActors[actor_index].unk_174 = 0xA0000;
    }
    if (gActors[actor_index].unk_170 < -0x100000) {
        gActors[actor_index].unk_170 = -0x100000;
    }
    if (gActors[actor_index].unk_170 > 0x100000) {
        gActors[actor_index].unk_170 = 0x100000;
    }
    func_80032E60(actor_index, 0x240, 0x100, gActors[actor_index].scaleY * 12.0f, 1, gActors[actor_index].scaleX, gActors[actor_index].scaleY);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8003BE3C(u16 actor_index) {
    f32 vel_y;
    s32 vel_x_step;
    s32 vel_x_target;

    func_8002877C(actor_index);
    func_80039644(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        func_80039724(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_index].unk_0CE = 9;
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].unk_0DE = 1;
        gActors[actor_index].unk_0DB = 7;
        func_8002ABE4(actor_index, 0xC);
        func_8002AC30(actor_index, 8);
        gActors[actor_index].unk_170 = 0;
        /* fallthrough */
    case 1:
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        else {
            if (gActors[actor_index].unk_170 != 0) {
                gActors[actor_index].unk_170--;
            }
            else {
                if (gActors[actor_index].velocityY.raw > FIXED_UNIT(-7.75)) {
                    gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.25);
                }
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) {
                gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[actor_index].unk_170 = 0;
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                gActors[actor_index].velocityY.raw = -gActors[actor_index].velocityY.raw / 2;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK1) {
                gActors[actor_index].flags = ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[actor_index].unk_170 = 0;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
            if (((gActors[actor_index].velocityX.raw > 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK3)) || ((gActors[actor_index].velocityX.raw < 0) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK2))) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw / 2;
                gActors[actor_index].unk_170 = 0;
            }

            if (((gActors[actor_index].velocityY.raw >= 0) || !(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) &&
                ((gActors[actor_index].velocityY.raw <= 0) || !(gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK4))) {
                break;
            }

            func_800036C8(0x82, actor_index);
            gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
            gActors[actor_index].velocityX.raw = (f32) gActors[actor_index].velocityX.raw * 0.8;
            gActors[actor_index].velocityY.raw = (f32) -gActors[actor_index].velocityY.raw * 0.8;
            gActors[actor_index].unk_170 = 0;
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5) {
                vel_y = (gActors[0].posY.whole - gActors[actor_index].posY.whole) * 16;
                if (vel_y < 0.0f) {
                    gActors[actor_index].velocityY.raw = FIXED_UNIT(3.0);
                }
                else {
                    gActors[actor_index].velocityY.raw = ((sqrtf((32.0f * vel_y) + 16.0f) - 4.0f) / 8) * 18432;
                }

                vel_x_target = gActors[0].posX.whole - gActors[actor_index].posX.whole;
                if ((vel_x_target > 64) || (vel_x_target < -64)) {
                    vel_x_step = 0x14000;
                    vel_x_target = 0x1FF00;
                }
                else {
                    vel_x_step = 0x3000;
                    vel_x_target = 0x4000;
                }
                if (gActors[actor_index].posX.whole < gActors[0].posX.whole) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, vel_x_target, vel_x_step);
                }
                else {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, -vel_x_target, vel_x_step);
                }
            }
        }
        break;
    case 2:
        gActors[actor_index].state++;
        /* fallthrough */
    case 3:
        if (func_800291AC(actor_index, 1, 0x21083, 1, 0x21003) == 2) {
            gActors[actor_index].unk_170 = 8;
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(4.0);
        }
        break;
    }
    gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 0.6f, 0.1f);
    gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, 0.6f, 0.1f);
    Actor_ClampVelocityX(actor_index, 0x7FFF0);
    Actor_ClampVelocityY(actor_index, 0x7FFF0);
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
}

void func_8003C328(u16 actor_index) {
    u16 prev;
    u16 var_a2;
    s32 angle;
    s32 pos_x;
    s32 pos_y;

    prev = actor_index - 1;
    gActors[prev].posZ.raw = gActors[actor_index].posZ.raw + 1;
    gActors[actor_index].var_150 &= 0x7FFFFFFF;
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].var_150 = (u16)gActors[actor_index].timer_110;
        if (gActors[actor_index].var_150 & 0x800) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].graphicIndex = 0x2CA;
            gActors[actor_index].scaleX = 0.72f;
            gActors[actor_index].scaleY = 1.2f;
            switch (gActors[actor_index].var_150 & 0x300) {
            case 0x0:
                gActors[actor_index].unk_190 = 1;
                break;
            case 0x200:
                gActors[actor_index].unk_190 = 2;
                break;
            }
        }
        else {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
            gActors[actor_index].graphicIndex = 0x3006;
        }
        gActors[actor_index].posZ.raw = FIXED_UNIT(-1.5);
        gActors[actor_index].var_15C = (gActors[actor_index].var_150 & 0x380) << 16;
        gActors[actor_index].unk_170 = (gActors[actor_index].var_150 & 0x380) << 16;
        gActors[actor_index].var_160 = 0x100000;
        gActors[actor_index].unk_164 = 0x20000;
        gActors[prev].unk_0DE = 6;
        func_800036C8(0x82, actor_index);
        /* fallthrough */
    case 1:
        if (gActors[actor_index].var_150 & 0x800) {
            gActors[actor_index].var_15C = func_800298D0(gActors[actor_index].unk_170, gActors[actor_index].var_15C, 0x100000);
        }
        pos_x = 0;
        angle = gActors[actor_index].var_15C / 65536;
        gActors[actor_index].rotateZ = (angle - 0x100) * 0.3515625;
        pos_y = 0;
        switch (angle) {
        case 0x0:
        case 0x200:
            pos_y = gActors[prev].var_158;
            break;
        case 0x100:
            /* fallthrough */
        case 0x300:
            pos_x = gActors[prev].var_154;
            break;
        case 0x80:
        case 0x180:
            pos_x = gActors[prev].var_154 / 2;
            pos_y = gActors[prev].var_158 / 2;
            break;
        }
        if (gActors[actor_index].var_160 < 0x400000) {
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].unk_164 += (0x400000 - gActors[actor_index].var_160) / 32;
            }
            else {
                gActors[actor_index].unk_11C = gActors[actor_index].unk_11C - 1.0f;
            }
            gActors[actor_index].var_160 += gActors[actor_index].unk_164;
            if (gActors[actor_index].var_160 >= 0x400001) {
                if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].unk_164 >= 0x40001)) {
                    gActors[0].flags_098 |= ACTOR_FLAG3_UNK16;
                    gActors[actor_index].var_150 |= 0x80000000;
                    func_800036C8(0x82, actor_index);
                    switch (angle) {
                    default:
                        break;
                    case 0x0:
                        gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * 1.5;
                        gActors[0].unk_0FC.raw = FIXED_UNIT(3.0);
                        break;
                    case 0x100:
                        gActors[0].unk_0F8.raw = 0;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * 1.5;
                        break;
                    case 0x200:
                        gActors[0].flags |= ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * -1.5;
                        gActors[0].unk_0FC.raw = FIXED_UNIT(3.0);
                        break;
                    case 0x300:
                        gActors[0].unk_0F8.raw = 0;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * -1.5;
                        break;
                    case 0x80:
                        gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * 1.2;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * 1.2;
                        break;
                    case 0x180:
                        gActors[0].flags |= ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * -1.2;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * 1.2;
                        break;
                    case 0x280:
                        gActors[0].flags |= ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * -1.2;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * -1.2;
                        break;
                    case 0x380:
                        gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
                        gActors[0].unk_0F8.raw = (f32) gActors[actor_index].unk_164 * 1.2;
                        gActors[0].unk_0FC.raw = (f32) gActors[actor_index].unk_164 * -1.2;
                        break;
                    }
                }
                if ((gActors[actor_index].unk_164 >= 0x10001) || (gActors[actor_index].unk_164 < -0x10000)) {
                    gActors[actor_index].unk_164 = (f32) gActors[actor_index].unk_164 * 0.7;
                }
            }
        }
        else {
            if (gActors[actor_index].unk_11C < 0.0f) {
                gActors[actor_index].unk_164 -= (gActors[actor_index].var_160 - 0x400000) / 32;
            }
            else {
                gActors[actor_index].unk_11C = gActors[actor_index].unk_11C - 1.0f;
            }
            gActors[actor_index].var_160 += gActors[actor_index].unk_164;
            if ((gActors[actor_index].var_160 < 0x400000) && ((gActors[actor_index].unk_164 >= 0x10001) || (gActors[actor_index].unk_164 < -0x10000))) {
                gActors[actor_index].unk_164 = (f32) gActors[actor_index].unk_164 * 0.7;
            }
        }
        if (gActors[actor_index].var_160 < 0x60000) {
            gActors[actor_index].var_160 = 0x60000;
        }
        if (gActors[actor_index].var_160 > 0x800000) {
            gActors[actor_index].var_160 = 0x800000;
        }
        if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK17)) {
            var_a2 = 0;
            switch (angle) {
            case 0x0:
                switch (func_800486F4()) {
                case 0:
                    gActors[actor_index].unk_170 = 0x800000;
                    func_800036C8(0x115, actor_index);
                    break;
                case 4:
                    var_a2 = 1;
                    break;
                case 12:
                    var_a2 = 2;
                    break;
                case 8:
                    gActors[actor_index].unk_170 = 0x03800000;
                    func_800036C8(0x115, actor_index);
                    break;
                }
                break;
            case 0x100:
                var_a2 = 0;
                switch (func_800486F4()) {
                case 12:
                    gActors[actor_index].unk_170 = 0x01800000;
                    func_800036C8(0x115, actor_index);
                    break;
                case 4:
                    gActors[actor_index].unk_170 = 0x800000;
                    func_800036C8(0x115, actor_index);
                    break;
                case 0:
                    var_a2 = 1;
                    break;
                case 8:
                    var_a2 = 2;
                    break;
                }
                break;
            case 0x200:
                var_a2 = 0;
                switch (func_800486F4()) {
                case 0:
                    gActors[actor_index].unk_170 = 0x01800000;
                    func_800036C8(0x115, actor_index);
                    break;
                case 12:
                    var_a2 = 1;
                    break;
                case 4:
                    var_a2 = 2;
                    break;
                case 8:
                    gActors[actor_index].unk_170 = 0x02800000;
                    func_800036C8(0x115, actor_index);
                    break;
                }
                break;
            case 0x300:
                var_a2 = 0;
                switch (func_800486F4()) {
                default:
                    func_800036C8(0x115, actor_index);
                    break;
                case 8:
                    var_a2 = 1;
                    break;
                case 0:
                    var_a2 = 2;
                    break;
                }
                break;
            case 0x80:
                var_a2 = 0;
                if (gActors[actor_index].unk_190 == 1) {
                    switch (func_800486F4()) {
                    default:
                        var_a2 = 1;
                        break;
                    case 8:
                        gActors[actor_index].unk_170 = 0;
                        /* fallthrough */
                    case 0:
                        func_800036C8(0x115, actor_index);
                        break;
                    case 12:
                        var_a2 = 2;
                        break;
                    }
                }
                else {
                    switch (func_800486F4()) {
                    default:
                        var_a2 = 1;
                        break;
                    case 12:
                        gActors[actor_index].unk_170 = 0x01000000;
                        /* fallthrough */
                    case 4:
                        func_800036C8(0x115, actor_index);
                        break;
                    case 8:
                        var_a2 = 2;
                        break;
                    }
                }
                break;
            case 0x180:
                var_a2 = 0;
                if (gActors[actor_index].unk_190 == 2) {
                    switch (func_800486F4()) {
                    default:
                        var_a2 = 1;
                        break;
                    case 8:
                        gActors[actor_index].unk_170 = 0x02000000;
                        /* fallthrough */
                    case 0:
                        func_800036C8(0x115, actor_index);
                        break;
                    case 4:
                        var_a2 = 2;
                        break;
                    }
                }
                else {
                    switch (func_800486F4()) {
                    default:
                        var_a2 = 1;
                        break;
                    case 4:
                        gActors[actor_index].unk_170 = 0x01000000;
                        /* fallthrough */
                    case 12:
                        func_800036C8(0x115, actor_index);
                        break;
                    case 8:
                        var_a2 = 2;
                        break;
                    }
                }
                break;
            case 0x280:
                var_a2 = 0;
                switch (func_800486F4()) {
                default:
                    var_a2 = 1;
                    break;
                case 4:
                    var_a2 = 2;
                    break;
                case 0:
                    gActors[actor_index].unk_170 = 0x02000000;
                    /* fallthrough */
                case 8:
                    func_800036C8(0x115, actor_index);
                    break;
                }
                break;
            case 0x380:
                var_a2 = 0;
                switch (func_800486F4()) {
                case 0:
                    gActors[actor_index].unk_170 = 0;
                    /* fallthrough */
                case 8:
                    func_800036C8(0x115, actor_index);
                    break;
                case 12:
                    var_a2 = 2;
                    break;
                default:
                    var_a2 = 1;
                    break;
                }
                break;
            }

            switch (var_a2) {
            case 1:
                func_800036C8(0x114, actor_index);
                gActors[actor_index].unk_164 += 0x30000;
                gActors[actor_index].unk_11C = 8.0f;
                if (gActors[actor_index].unk_164 < 0x30000) {
                    gActors[actor_index].unk_164 = 0x30000;
                }
                break;
            case 2:
                func_800036C8(0x114, actor_index);
                gActors[actor_index].unk_164 -= 0x30000;
                gActors[actor_index].unk_11C = 8.0f;
                if (gActors[actor_index].unk_164 > -0x30000) {
                    gActors[actor_index].unk_164 = -0x30000;
                }
                break;
            }
        }

        if (gActors[actor_index].unk_164 < -0x100000) {
            gActors[actor_index].unk_164 = -0x100000;
        }
        if (gActors[actor_index].unk_164 > 0x100000) {
            gActors[actor_index].unk_164 = 0x100000;
        }

        gActors[prev].posX.whole = (((gActors[actor_index].var_160 * COS(angle)) + pos_x) / 65536.0f) + gActors[actor_index].posX.whole;
        gActors[prev].posY.whole = (((gActors[actor_index].var_160 * SIN(angle)) + pos_y) / 65536.0f) + gActors[actor_index].posY.whole;

        var_a2 = Actor_RangeFindFlag2_90ToC0();
        if (var_a2 != 0) {
            gActors[var_a2].actorType = 0x34;
            func_8001E2D0(var_a2);
            gActors[var_a2].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[var_a2].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            gActors[var_a2].graphicIndex = 0x3004;
            gActors[var_a2].scaleY = gActors[actor_index].var_160 / 2097152.0f;
            gActors[var_a2].posX.raw = gActors[actor_index].posX.raw - (((gActors[actor_index].posX.raw - gActors[prev].posX.raw) + pos_x) / 2);
            gActors[var_a2].posY.raw = gActors[actor_index].posY.raw - (((gActors[actor_index].posY.raw - gActors[prev].posY.raw) + pos_y) / 2);
            gActors[var_a2].posZ.whole = gActors[actor_index].posZ.whole - 1;
            gActors[var_a2].rotateZ = gActors[actor_index].rotateZ;
            gActors[var_a2].unk_148 = 1.0f;
        }
        break;
    }
    gActors[actor_index].flags_098 = 0;
}

u16 func_8003D518(u16 arg0, s16* graphic_list, s32 arg2, s32 arg3, s32 arg4) {
    u16 actor_index;
    if (arg0 == 0) {
        actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
        return func_80030F94(actor_index, graphic_list, arg2, arg3, arg4);
    }
    else {
        actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
        return func_80030F94(actor_index, graphic_list, arg2, arg3, arg4);
    }
}

void func_8003D5A0(u16 arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    u16 actor_index;
    if (arg0 == 0) {
        actor_index = Actor_RangeFindFlag2(0x10, 0x2D);
        func_800310A4(actor_index, arg1, arg2, arg3, arg4);
    }
    else {
        actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
        func_800310A4(actor_index, arg1, arg2, arg3, arg4);
    }
}

u16 func_8003D628(u16 arg0) {
    u16 index;
    index = 0xC0;
    gActors[index].actorType = 0x6B;
    func_8001E2D0(index);
    gActors[index].flags = ACTOR_FLAG_ACTIVE;
    gActors[index].timer_110 = 180.0f;
    gActors[index].unk_188 = arg0;
    func_8005CA34(8, 0x3C);
    return index;
}

u16 func_8003D68C(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s32 pos_x, s32 pos_y, s32 pos_z, u16 red, u16 green, u16 blue) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2_90ToC0();
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x34;
        func_8001E2D0(actor_index);
        gActors[actor_index].graphicFlags = arg0 & ~ACTOR_GFLAG_3DOBJ;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x8000;
        gActors[actor_index].posX.raw = pos_x;
        gActors[actor_index].posY.raw = pos_y;
        gActors[actor_index].posZ.raw = pos_z;
        gActors[actor_index].hitboxBY0 = arg1;
        gActors[actor_index].hitboxBY1 = arg2;
        gActors[actor_index].hitboxBX0 = arg3;
        gActors[actor_index].hitboxBX1 = arg4;
        gActors[actor_index].colorR = red;
        gActors[actor_index].colorG = green;
        gActors[actor_index].colorB = blue;
        if (arg0 & 0x2000) {
            gActors[actor_index].unk_148 = 1.0f;
        }
        else {
            gActors[actor_index].unk_148 = 0.0f;
        }
    }
    return actor_index;
}

void func_8003D794(u16 actor_index) {
    u16 var_v0;
    u16 index;
    f32 scale;

    var_v0 = gActors[actor_index].timer_110;
    if (var_v0 != 0x8C) {
        if (!var_v0 && !var_v0) {} // fakematch: https://decomp.me/scratch/KqzpM
        if (var_v0 != 0xAA) {
            if (var_v0 != 0xB3) {
                if (var_v0 == 0xB4) {
                    Sound_PlaySfx(0x26);
                    index = func_8003EEC0(2.0f, D_800BE5A8, D_800BE5AC, 0xF2);
                    if (index != 0) {
                        gActors[index].graphicFlags |= ACTOR_GFLAG_UNK8;
                        gActors[index].flags |= ACTOR_FLAG_FREEZE_POS;
                        gActors[index].unk_118 = -0.2f;
                        gActors[index].unk_11C = -0.2f;
                    }
                }
            }
            else {
                index = func_8003FF20(1.5f, D_800BE5A8, D_800BE5AC, 0xF2);
                if (index != 0) {
                    gActors[index].graphicFlags |= ACTOR_GFLAG_UNK8;
                    gActors[index].flags |= ACTOR_FLAG_FREEZE_POS;
                }
            }
        }
        else {
            index = func_8003123C(D_800D271C, D_800BE5A8, D_800BE5AC, 0xF1);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
                gActors[index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
                gActors[index].unk_17C = (s32) &func_80030B0C;
                gActors[index].unk_104 = 0x64;
                gActors[index].unk_108 = -2;
                scale = 2.0f;
                gActors[index].scaleX = scale * 3.0f;
                gActors[index].timer_110 = 0.5f;
                gActors[index].unk_114 = 0.5f;
                gActors[index].scaleY = scale * 1.0f;
                Actor_SetColorRgb(index, 0x40);
                gActors[index].colorG = 0x7F;
                gActors[index].unk_148 = 224.0f;
            }
        }
    }
    else {
        index = func_8003123C(D_800D271C, D_800BE5A8, D_800BE5AC, 0xF4);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[index].var_154 = -0x10;
            gActors[index].scaleX = 13.5f;
            gActors[index].scaleY = 13.5f;
            gActors[index].timer_110 = 0.05f;
            gActors[index].unk_114 = 0.05f;
            gActors[index].unk_148 = 480.0f;
        }
    }
}

void func_8003DBD0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        func_8003D794(actor_index);
        if (gActors[actor_index].timer_110 < 0.0f) {
            if (gActors[actor_index].unk_188 & 0x8000) {
                gActors[actor_index].state = 4;
            }
            else {
                gActors[actor_index].state++;
                gActors[actor_index].timer_110 = 120.0f;
                gActors[actor_index].var_154 = 0;
                gActors[actor_index].unk_16C = 0x80;
                gActors[actor_index].unk_170 = 0xB0;
                Sound_PlaySfx(0x137);
            }
        }
        break;
    case 1:
        if (gActors[actor_index].timer_110 < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].timer_110 = 10.0f;
        }
        else {
            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x200000, 0x8000);
            func_8007EA14(&D_800D2750, 0xA00, 0, gActors[actor_index].var_154, 0x800000, &D_800D9AF4, 0, 0, 0, 0, 0, 1.0f);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0, 4);
            gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, 84, 2);
            func_8003D68C(0x800, gActors[actor_index].unk_16C + 1, -gActors[actor_index].unk_16C, -gActors[actor_index].unk_170, gActors[actor_index].unk_170, 0, gActors[actor_index].var_154 + 0xFFF70000, 0x800000, 0x7F, 0, 0);
        }
        break;
    case 2:
        if (gActors[actor_index].timer_110 < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].timer_110 = 120.0f;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_16C = 0x80;
            gActors[actor_index].unk_170 = 0xB0;
            Sound_PlaySfx(0x137);
        }
        break;
    case 3:
        if (gActors[actor_index].timer_110 < 0.0f) {
            gActors[actor_index].state++;
            gActors[actor_index].timer_110 = 10.0f;
        }
        else {
            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x200000, 0x8000);
            func_8007EA14(&D_800D27B0, 0xA00, 0, gActors[actor_index].var_154, 0x800000, &D_800D9AE4, 0, 0, 0, 0, 0, 1.0f);
            gActors[actor_index].unk_16C = Math_ApproachS32(gActors[actor_index].unk_16C, 0, 4);
            gActors[actor_index].unk_170 = Math_ApproachS32(gActors[actor_index].unk_170, 0x5C, 2);
            func_8003D68C(0x800, gActors[actor_index].unk_16C + 1, -gActors[actor_index].unk_16C, -gActors[actor_index].unk_170, gActors[actor_index].unk_170, 0, gActors[actor_index].var_154 + 0xFFF70000, 0x800000, 0x7F, 0, 0);
        }
        break;
    case 4:
        if (gActors[actor_index].timer_110 < 0.0f) {
            gActors[actor_index].flags = 0;
            D_800D28E8 += 1;
        }
        break;
    }
    gActors[actor_index].timer_110 -= 1.0f;
}

void func_8003DF78(s32 arg0, u16 actor_index, f32 scale_x, f32 scale_y) {
    u16 pad;

    if ((D_800BE4E0 & 0x7) == 0) {
        func_8005CA34(-6, 7);
        if (func_8000178C() & 0x3) {
            Sound_PlaySfx(0x43);
        }
        else {
            Sound_PlaySfx(0x45);
        }
    }

    if ((D_800BE4E0 % 8) == 0) {
        func_8003EEC0(1.0f, 
                      gActors[actor_index].posX.whole + (((32 - (func_8000178C() & 0x3F)) * scale_x)), 
                      gActors[actor_index].posY.whole + (((32 - (func_8000178C() & 0x3F)) * scale_y)), 
                      gActors[actor_index].posZ.whole + 4);
    }

    if ((D_800BE4E0 % 5) == 0) {
        func_8003F138(0.6f, 
                      gActors[actor_index].posX.whole + (((32 - (func_8000178C() & 0x3F)) * scale_x)), 
                      gActors[actor_index].posY.whole + (((32 - (func_8000178C() & 0x3F)) * scale_y)), 
                      gActors[actor_index].posZ.whole + 4);
    }
}

void func_8003E230(u16 actor_index) {
    u16 index;
    s32 flags;
    s32 pad;

    if (gActors[actor_index].colorA) {
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 4);
        if (gActors[actor_index].colorA == 0x00) {
            gActors[actor_index].graphicFlags = 0;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        }
    }
    flags = 0x0;
    if (gActors[actor_index].var_150 & 0x1) {
        flags = ACTOR_FLAG_FREEZE_POS;
    }

    switch (gActors[actor_index].unk_188) {
    case 0x0:
        index = func_8003123C(D_800D271C, gActors[actor_index].unk_170, gActors[actor_index].unk_174, gActors[actor_index].posZ.whole - 2);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[index].flags = flags + (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
            gActors[index].unk_17C = (s32) &func_80030B0C;
            gActors[index].unk_104 = 0x14;
            gActors[index].unk_108 = -4;
            gActors[index].scaleY = gActors[actor_index].timer_110 * 1.0;
            gActors[index].scaleX = gActors[actor_index].timer_110 * (2.0 + 0); // need `2.0` to get double, but 2 to get lui at,0x4000
            gActors[index].timer_110 = gActors[actor_index].timer_110 * 0.3;
            gActors[index].unk_114 = gActors[index].timer_110;
            gActors[index].unk_118 = gActors[index].timer_110 * -0.015;
            gActors[index].unk_11C = gActors[index].timer_110 * -0.015;
            Actor_SetColorRgb(index, 0x40);
            gActors[index].colorG = 0x7F;
            gActors[index].unk_148 = 100.0f;
        }
        break;
    case 0xA:
        index = func_80031284(0x15E, gActors[actor_index].unk_170, gActors[actor_index].unk_174, gActors[actor_index].posZ.whole - 3);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[index].flags = flags + (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW);
            gActors[index].unk_17C = (s32) &func_80030B0C;
            gActors[index].unk_104 = 0x14;
            gActors[index].unk_108 = -4;
            gActors[index].scaleY = gActors[actor_index].timer_110 * 1.0;
            gActors[index].scaleX = gActors[actor_index].timer_110 * 1.0;
            gActors[index].timer_110 = gActors[actor_index].timer_110 * 0.1;
            gActors[index].unk_114 = gActors[index].timer_110;
            gActors[index].unk_118 = gActors[index].timer_110 * -0.002;
            gActors[index].unk_11C = gActors[index].timer_110 * -0.002;
            gActors[index].unk_18C = (s32) &D_800D1A04;
            gActors[index].unk_148 = 100.0f;
        }
        break;
    case 0x3C:
        gActors[actor_index].flags = 0;
        break;
    }
    gActors[actor_index].unk_188++;
}

void func_8003E52C(u16 arg0, s16 arg1, s16 arg2, f32 arg3) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(0x90, 0xC0);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x73;
        func_8001E2D0(actor_index);
        gActors[actor_index].unk_170 = arg1;
        gActors[actor_index].unk_174 = arg2;
        gActors[actor_index].var_150 = arg0;
        gActors[actor_index].timer_110 = arg3;
        func_800036C8(0x26, actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[actor_index].graphicIndex = 0x2D0;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0xF0;
        gActors[actor_index].unk_18C = (s32) D_800D8588;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].colorG = 0x18;
        gActors[actor_index].colorB = 0x50;
        gActors[actor_index].scaleX = 20.0f;
        gActors[actor_index].scaleY = 16.0f;
    }
}

void func_8003E640(u16 actor_index) {
    gActors[actor_index].posX.raw = gActors[(u16)gActors[actor_index].var_150].posX.raw;
    gActors[actor_index].posY.raw = gActors[(u16)gActors[actor_index].var_150].posY.raw;
    gActors[actor_index].posZ.raw = gActors[(u16)gActors[actor_index].var_150].posZ.raw + FIXED_UNIT(32.0);
}

void func_8003E6A4(u16 arg0, u16 actor_index) {
    u16 var_v0;
    u16 index;

    Sound_PlaySfx(0xC7);
    if ((arg0 & 0x10) && (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        var_v0 = 0;
        if (arg0 & 0x1) {
            var_v0 = 0x4;
        }
        if (arg0 & 0x4) {
            var_v0 |= 0x1;
        }
        arg0 = (arg0 & 0xFFFA) | var_v0;
    }
    D_800D27F8[3] = 0;
    D_800D27F8[4] = 0;
    D_800D27F8[11] = 0;
    D_800D27F8[12] = 0;
    if (arg0 & 0x1) {
        D_800D27F8[6] = 0xFFFF;
        D_800D27F8[8] = 0xFC09;
    }
    else {
        D_800D27F8[6] = 0;
        D_800D27F8[8] = 0;
    }

    if (arg0 & 0x2) {
        D_800D27F8[1] = 0xFFFF;
        D_800D27F8[2] = 0xFC09;
    }
    else {
        D_800D27F8[1] = 0;
        D_800D27F8[2] = 0;
    }

    if (arg0 & 0x4) {
        D_800D27F8[5] = 0xFFFF;
        D_800D27F8[7] = 0xFC09;
    }
    else {
        D_800D27F8[5] = 0;
        D_800D27F8[7] = 0;
    }

    if (arg0 & 0x8) {
        D_800D27F8[9] = 0xFFFF;
        D_800D27F8[10] = 0xFC09;
    }
    else {
        D_800D27F8[9] = 0;
        D_800D27F8[10] = 0;
    }
    index = 0xC0;
    gActors[index].actorType = 0x71;
    func_8001E2D0(index);
    gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4;
    gActors[index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[index].graphicIndex = 0x14A;
    gActors[index].unk_18C = (s32) D_800D27F8;
    gActors[index].timer_110 = 31.0f;
    gActors[index].var_150 = actor_index;
    func_8003E640(index);
    gActors[index].unk_170 = arg0;
}

void func_8003E854(u16 actor_index) {
    f32 temp_f0;
    u16 temp_t4;
    u16 temp_a0;

    gActors[actor_index].timer_110 -= 1.0f;
    temp_f0 = gActors[actor_index].timer_110;
    if (temp_f0 <= 0.0f) {
        gActors[actor_index].flags = 0;
        return;
    }

    temp_a0 = gActors[actor_index].unk_170;
    if (temp_a0 & 1) {
        if (D_800BE4E0 & 2) {
            D_800D27F8[6] = 0xFE31;
            D_800D27F8[8] = 0xF801;
        }
        else {
            D_800D27F8[6] = 0xFFFF;
            D_800D27F8[8] = 0x4001;
        }
    }
    if (temp_a0 & 2) {
        if (D_800BE4E0 & 2) {
            D_800D27F8[1] = 0xFE31;
            D_800D27F8[2] = 0xF801;
        }
        else {
            D_800D27F8[1] = 0xFFFF;
            D_800D27F8[2] = 0x4001;
        }
    }
    if (temp_a0 & 4) {
        if (D_800BE4E0 & 2) {
            D_800D27F8[5] = 0xFE31;
            D_800D27F8[7] = 0xF801;
        }
        else {
            D_800D27F8[5] = 0xFFFF;
            D_800D27F8[7] = 0x4001;
        }
    }
    if (temp_a0 & 8) {
        if (D_800BE4E0 & 2) {
            D_800D27F8[9] = 0xFE31;
            D_800D27F8[10] = 0xF801;
        }
        else {
            D_800D27F8[9] = 0xFFFF;
            D_800D27F8[10] = 0x4001;
        }
    }

    temp_t4 = temp_f0;
    if (temp_t4 == 0x14) {
        D_800D27F8[3] = 0xFFFF;
        D_800D27F8[4] = 0x843F;
        D_800D27F8[11] = 0;
        D_800D27F8[12] = 0;
    }
    else if (temp_t4 == 0xA) {
        D_800D27F8[11] = 0xFFFF;
        D_800D27F8[12] = 0x843F;
        D_800D27F8[3] = 0;
        D_800D27F8[4] = 0;
    }
    if ((temp_t4 % 10) < 3) {
        Actor_SetColorRgb(actor_index, 0x7F);
    }
    else {
        Actor_SetColorRgb(actor_index, 0);
    }
    func_8003E640(actor_index);
}

void func_8003EAE0(u16 arg0, u16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    u16 actor_index;

    actor_index = func_8003D518(arg0, D_800E1380, arg2, arg3, arg4);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].graphicIndex = 0x1D6;
        gActors[actor_index].unk_18C = (s32) D_800D8528;
        gActors[actor_index].scaleY = D_800D281C[arg1] * 6.0;
        gActors[actor_index].scaleX = 0.4f;
        gActors[actor_index].var_160 = (D_800BE4E0 & 0xF) << 0x16;
        gActors[actor_index].var_150 = (D_800D2814[arg1] << 0x10) + 0xFFFC0000;
        gActors[actor_index].var_154 = 0x10;
        gActors[actor_index].unk_164 = -4;
        gActors[actor_index].unk_11C = -0.02f;
    }
}

void func_8003EC0C(u16 arg0, u16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    u16 actor_index;

    actor_index = func_8003D518(arg0, D_800E1380, arg2, arg3, arg4);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK15;
        gActors[actor_index].graphicIndex = 0x1D6;
        if (func_8000178C() & 1) {
            gActors[actor_index].unk_18C = (s32) &D_800D8528;
        }
        else {
            gActors[actor_index].unk_18C = (s32) &D_800D8608;
        }
        gActors[actor_index].scaleX = 2.0f;
        gActors[actor_index].scaleY = 2.0f;
        gActors[actor_index].unk_144 = 0.0f;
        gActors[actor_index].unk_140_f32 = 12.0f;
        gActors[actor_index].var_160 = (D_800BE4E0 & 0xF) << 0x16;
        gActors[actor_index].var_150 = (D_800D282C[arg1] << 0x10) + 0xFFFC0000;
        gActors[actor_index].var_154 = -0x40;
        gActors[actor_index].timer_110 = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
    }
}

void func_8003ED48(u16 unused_arg0, s32 arg1, s16 x, s16 y, s16 z) {
    u16 actor_index;

    actor_index = func_80031284(0x168, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].unk_18C = (s32) D_800D8628;
        gActors[actor_index].var_154 = -0x12;
        gActors[actor_index].scaleX = 0.0f;
        gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].timer_110 = 0.3f;
        gActors[actor_index].unk_114 = 0.3f;
        gActors[actor_index].unk_148 = 15.0f;
    }
}

u16 func_8003EDF4(f32 arg0, s16 x, s16 y, s16 z) {
    u16 actor_index;

    actor_index = func_8003123C(D_800E1604, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = arg0 * 0.45;
        gActors[actor_index].scaleY = arg0 * 0.45;
        gActors[actor_index].timer_110 = arg0 * 0.04;
        gActors[actor_index].unk_114 = arg0 * 0.04;
        gActors[actor_index].var_154 = -16;
    }
    return actor_index;
}

u16 func_8003EEC0(f32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    u16 actor_index;

    actor_index = func_80031284(0x168, arg1, arg2, arg3);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].var_154 = -32;
        gActors[actor_index].unk_18C = (s32) D_800D84E8;
        gActors[actor_index].scaleX = arg0 * 1.5;
        gActors[actor_index].scaleY = arg0 * 1.5;
        gActors[actor_index].timer_110 = arg0 * 0.23;
        gActors[actor_index].unk_114 = arg0 * 0.23;
    }
    return actor_index;
}

u16 func_8003EF98(f32 arg0, s16 x, s16 y, s16 z) {
    u16 actor_index;

    actor_index = func_80031284(0x15E, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        Actor_SetColorRgb(actor_index, 0x7F);
        gActors[actor_index].var_154 = -10;
        gActors[actor_index].timer_110 = arg0 * 0.14;
        gActors[actor_index].unk_114 = arg0 * 0.14;
    }
    return actor_index;
}

u16 func_8003F05C(f32 arg0, s16 x, s16 y, s16 z) {
    u16 actor_index;

    actor_index = func_8003123C(D_800E14E8, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].var_154 = 0x10;
        gActors[actor_index].unk_164 = -3;
        gActors[actor_index].scaleX = arg0 * 1.5;
        gActors[actor_index].scaleY = arg0 * 1.5;
        gActors[actor_index].timer_110 = arg0 * 0.01;
        gActors[actor_index].unk_114 = arg0 * 0.01;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(1.0);
    }
    return actor_index;
}

void func_8003F138(f32 arg0, s16 x, s16 y, s16 z) {
    s32 actor_index;

    actor_index = func_8003F05C(arg0, x, y, z);
    if (actor_index != 0) {
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(1.0);
    }
    actor_index = func_8003EF98(arg0, x, y, z + 1);
    if (actor_index != 0) {
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(2.0);
    }
    actor_index = func_8003EEC0(arg0, x, y, z + 2);
    if (actor_index != 0) {
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(3.0);
    }
}

void func_8003F248(u16 actor_index, s16 x, s16 y, s16 z) {
    u16 index;
    f32 scale;

    index = func_8002854C(0x38, x, y, z);
    if (index != 0) {
        func_800036C8(0x93, actor_index);
        gActors[index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[index].graphicIndex = 0xD8;
        gActors[index].scaleX = 0.0f;
        gActors[index].scaleY = 0.0f;
        scale = 0.15f;
        gActors[index].timer_110 = scale;
        gActors[index].unk_114 = scale;
        gActors[index].unk_118 = -scale / 30.0f;
        gActors[index].unk_11C = -scale / 30.0f;
        gActors[index].colorA = 0xFE;
        gActors[index].unk_184 = gActors[index].posX.raw;
        gActors[index].unk_188 = gActors[index].posY.raw;
        gActors[index].unk_130 = -1.0f;
        gActors[index].unk_148 = 240.0f;
    }
}

void func_8003F360(u16 actor_index) {
    s32 val;
    s32 y;
    s32 x;
    s32 angle;
    u16 index;

    gActors[actor_index].var_160 += 0x01000000;
    func_8003141C(actor_index);
    if ((D_800BE4E0 & 1) != 0) {
        gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
        Actor_SetColorRgb(actor_index, 0x3F);
    }
    else {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index].colorR = 0;
        gActors[actor_index].colorG = 8;
        gActors[actor_index].colorB = 0x3F;
    }
    if (gActors[actor_index].state == 0x1E) {
        gActors[actor_index].var_154 = -0x10;
    }
    if (((D_800BE4E0 & 1) == 0) && (gActors[actor_index].colorA >= 0xFE)) {
        val = func_8000178C();
        x = gActors[actor_index].scaleX * (16 - (val & 0x1F));
        val = func_8000178C();
        y = gActors[actor_index].scaleX * (16 - (val & 0x1F));
        index = func_80031284(0x1EE, gActors[actor_index].posX.whole + x, gActors[actor_index].posY.whole + y, gActors[actor_index].posZ.whole - 1);
        if (index != 0) {
            gActors[index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[index].var_160 = func_8000178C() << 0x12;
            val = func_8000178C();
            gActors[index].var_150 = (-(val & 3) * 0x10000) + 0x20000;
            gActors[index].unk_114 = gActors[actor_index].scaleY * -0.25;
            gActors[index].timer_110 = -gActors[index].unk_114 / 2;
            gActors[index].unk_148 = 7.0f;
            angle = gActors[index].var_160 / 65536;
            gActors[index].velocityX.raw = (196608.0f * COS(angle)) + gActors[actor_index].velocityX.raw;
            gActors[index].velocityY.raw = (196608.0f * SIN(angle)) + gActors[actor_index].velocityY.raw;
            gActors[index].scaleX = gActors[actor_index].scaleX;
            gActors[index].scaleY = gActors[actor_index].scaleY;
            gActors[index].colorA = 0xFE;
            gActors[index].colorR = 0x6F;
        }
    }
}

u16 func_8003F6A4(f32 scale, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 actor_index;

    actor_index = func_80031284(0x130, pos_x, pos_y, pos_z + 1);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = scale;
        gActors[actor_index].scaleY = scale;
        gActors[actor_index].timer_110 = scale * 0.1;
        gActors[actor_index].unk_114 = scale * 0.1;
        gActors[actor_index].unk_118 = scale * -0.009;
        gActors[actor_index].unk_11C = scale * -0.009;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[actor_index].var_15C = -0x2000;
        gActors[actor_index].unk_17C = (s32) &func_80030B0C;
        gActors[actor_index].unk_104 = 0x12;
        gActors[actor_index].unk_108 = 0;
        gActors[actor_index].unk_148 = 24.0f;
    }
    return actor_index;
}

u16 func_8003F7A0(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 actor_index;

    actor_index = func_80031284(0x1F2, pos_x, pos_y, pos_z + 1);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[actor_index].var_154 = -0x10;
        gActors[actor_index].unk_18C = (s32) D_800D8528;
        Actor_SetColorRgb(actor_index, 0x40);
        gActors[actor_index].scaleX = 0.5f;
        gActors[actor_index].scaleY = 0.5f;
        gActors[actor_index].timer_110 = arg0 * 0.14;
        gActors[actor_index].unk_114 = arg0 * 0.14;
        gActors[actor_index].unk_118 = arg0 * -0.02;
        gActors[actor_index].unk_11C = arg0 * -0.02;
        gActors[actor_index].unk_148 = 7.0f;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(1.0);
    }
    return actor_index;
}

u16 func_8003F8B0(f32 scale, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 actor_index;

    actor_index = func_80031284(0x132, pos_x, pos_y, pos_z + 1);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].scaleX = scale;
        gActors[actor_index].scaleY = scale;
        gActors[actor_index].timer_110 = scale * 0.15000000000000002;
        gActors[actor_index].unk_114 = scale * 0.15000000000000002;
        gActors[actor_index].unk_118 = scale * -0.013499999999999998;
        gActors[actor_index].unk_11C = scale * -0.013499999999999998;
        gActors[actor_index].velocityY.raw = FIXED_UNIT(2.0);
        gActors[actor_index].var_15C = -0x2000;
        gActors[actor_index].unk_17C = (s32) &func_80030A24;
        gActors[actor_index].unk_148 = 24.0f;
        Actor_SetColorRgb(actor_index, 0x40);
        gActors[actor_index].unk_104 = -4;
        gActors[actor_index].var_154 = -4;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(2.0);
    }
    return actor_index;
}

void func_8003F9CC(f32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

u16 func_8003F9E0(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 actor_index;

    actor_index = func_80031284(0x1F0, pos_x, pos_y, pos_z + 1);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        if (func_8000178C() & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].var_154 = -0xC;
        gActors[actor_index].unk_18C = 0x8022D4E8;
        Actor_SetColorRgb(actor_index, 0x30);
        gActors[actor_index].scaleX = arg0 * 0.5;
        gActors[actor_index].scaleY = arg0 * 0.5;
        gActors[actor_index].timer_110 = arg0 * 0.2;
        gActors[actor_index].unk_114 = arg0 * 0.2;
        gActors[actor_index].unk_118 = arg0 * -0.01;
        gActors[actor_index].unk_11C = arg0 * -0.01;
        gActors[actor_index].velocityZ.raw = FIXED_UNIT(1.0);
        gActors[actor_index].unk_148 = 16.0f;
    }
    return actor_index;
}

void func_8003FB20(u16 unused_arg0, s32 unused_arg1, f32 scale, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 index;
    u16 actor_index;

    actor_index = func_80031284(0xCE, pos_x, pos_y, pos_z);
    if (actor_index != 0) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].var_154 = -0x10;
        gActors[actor_index].scaleX = scale * 0.8;
        gActors[actor_index].scaleY = scale * 0.8;
        gActors[actor_index].timer_110 = scale * -0.05;
        gActors[actor_index].unk_114 = scale * -0.05;
        Actor_SetColorRgb(actor_index, 0x7F);
    }
    for (index = 0; index != 2; index++) {
        actor_index = func_80031284(0x1D6, pos_x, pos_y, pos_z);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].var_154 = -16;
            gActors[actor_index].scaleX = scale * 0.25;
            gActors[actor_index].scaleY = scale * 2.0;
            if (index != 0) {
                gActors[actor_index].var_160 = 0x01000000;
            }
            gActors[actor_index].unk_114 = scale * 0.2;
            gActors[actor_index].var_150 = 0x800000;
            Actor_SetColorRgb(actor_index, 0x7F);
        }
    }
}

u16 func_8003FD0C(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z, u16 arg4) {
    u16 actor_index;

    actor_index = func_80031284(0xCE, pos_x, pos_y, pos_z);
    if (actor_index != 0) {
        if ((arg4 & 3) != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
            gActors[actor_index].unk_18C = D_800D19F4[arg4 & 3];
        }
        else {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        }
        gActors[actor_index].scaleX = 0.0f;
        gActors[actor_index].scaleY = 0.0f;
        Actor_SetColorRgb(actor_index, 0x3F);
        gActors[actor_index].var_154 = -0x12;
        gActors[actor_index].timer_110 = arg0 * 0.4;
        gActors[actor_index].unk_118 = arg0 * -0.02;
        gActors[actor_index].unk_114 = arg0 * 0.4;
        gActors[actor_index].unk_11C = arg0 * -0.02;
        gActors[actor_index].unk_148 = 12.0f;
    }
    return actor_index;
}

u16 func_8003FE4C(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    return func_8003FD0C(arg0, pos_x, pos_y, pos_z, 0);
}

u16 func_8003FE90(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    return func_8003FD0C(arg0, pos_x, pos_y, pos_z, 1);
}

u16 func_8003FED8(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    return func_8003FD0C(arg0, pos_x, pos_y, pos_z, 2);
}

u16 func_8003FF20(f32 arg0, s16 pos_x, s16 pos_y, s16 pos_z) {
    return func_8003FD0C(arg0, pos_x, pos_y, pos_z, 3);
}

u16 func_8003FF68(u16 actor_index, f32 scale) {
    u16 index;
    f32 temp_f2;

    index = func_80031284(0x18E, 0, 0, 0);
    if (index != 0) {
        gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
        gActors[index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        gActors[index].scaleX = scale * 1.5;
        gActors[index].scaleY = scale * 0.75;
        gActors[index].var_154 = -10;
        gActors[index].unk_148 = 20.0f;
        gActors[index].unk_184 = gActors[actor_index].posX.raw;
        gActors[index].unk_144 = 4.0f;
        temp_f2 = scale * 0.15;
        gActors[index].unk_188 = -0x500000;
        gActors[index].timer_110 = temp_f2;
        gActors[index].unk_114 = temp_f2;
        gActors[index].unk_118 = (-temp_f2 / 20.0f) * scale;
        gActors[index].unk_11C = (-temp_f2 / 10.0f) * scale;
        gActors[index].unk_18C = 0x8022D4E8;
    }
    return index;
}

void func_80040098(u16 arg0, s32 arg1, s32 arg2, s32 arg3, s16 arg4) {
    u16 actor_index;
    u16 temp_t6;
    u16 color;
    f32 var_f20; // decremented by double, but otherwise unused

    var_f20 = 2.5f;
    color = 0x7F;
    for (; arg0 > 0; arg0--) {
        temp_t6 = func_8000178C();
        actor_index = func_80031284(D_800D2854[temp_t6 & 3], 0, 0, arg3 / 65536);
        if (actor_index != 0) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            Actor_SetColorRgb(actor_index, color);
            gActors[actor_index].unk_148 = 1.0f;
            gActors[actor_index].unk_18C = 0x8022D548;
            gActors[actor_index].var_154 = -64;
            arg4 -= ((func_8000178C() & 0x3F) * 4) - 0x80;
            var_f20 -= 1.0;
            color -= 0x10;
        }
        else {
            break;
        }
    }
}

void func_8004023C(s32 arg0, s32 arg1, s32 pos_x, s32 pos_y, s32 arg4) {
    u16 actor_index;
    u16 angle;
    u16 index;
    u16 temp_t0;

    angle = (D_800BE4E0 << 7);
    for (index = 2; index > 0; index--) {
        temp_t0 = func_8000178C();
        actor_index = func_80031284(D_800D2854[temp_t0 & 0x3], 0, 0, arg4 / 65536);
        if (actor_index != 0) {
            angle &= 0x3FF;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            Actor_SetColorRgb(actor_index, 0x7F);
            if (index == 1) {
                gActors[actor_index].unk_18C = (s32) D_800D8508;
            }
            else {
                gActors[actor_index].unk_18C = 0x8022D548;
            }
            gActors[actor_index].var_154 = -64;
            gActors[actor_index].posX.raw = (COS(angle) * 1048576.0f) + pos_x;
            gActors[actor_index].posY.raw = (SIN(angle) * 1048576.0f) + pos_y;
            gActors[actor_index].var_160 = angle << 0x10;
            gActors[actor_index].var_150 = 0x02000000;
            gActors[actor_index].scaleX = 1.2f;
            gActors[actor_index].scaleY = 2.5f;
            angle += 0x200;
        }
        else {
            break;
        }
    }
}

u16 func_800404AC(s32 pos_x, s32 pos_y, s32 pos_z, s32 unused_arg3) {
    u16 actor_index;

    actor_index = Actor_RangeFindFlag2(0x10, 0x20);
    if (actor_index != 0) {
        gActors[actor_index].actorType = 0x3B;
        func_8001E2D0(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicIndex = 0x168;
        gActors[actor_index].unk_0DF = 0x40;
        gActors[actor_index].posX.raw = pos_x;
        gActors[actor_index].posY.raw = pos_y;
        gActors[actor_index].posZ.raw = pos_z;
    }
    return actor_index;
}

void func_80040564(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].flags = ACTOR_FLAG_UNK15 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_UNK7 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        break;
    case 1:
        break;
    }
}

u16 func_800405C0(u16 actor_index, s32 x, s32 y, s32 z) {
    u16 index;

    index = Actor_RangeFindFlag2(0x8C, 0x90);
    if (index != 0) {
        gActors[index].actorType = 0x5D;
        func_8001E2D0(index);
        gActors[index].unk_0D6 = actor_index;
        gActors[index].unk_104 = x << 0x10;
        gActors[index].unk_108 = y << 0x10;
        gActors[index].unk_10C = z << 0x10;
        gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK18;
    }
    return index;
}

s32 func_800406A4(u16* arg0, u16 arg1, s32 x, s32 y, s32 z) {
    u16 index;
    u16 actor_index;

    actor_index = 0x8F;
    if ((D_800D5820 == 0) && !(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
        gActors[actor_index].actorType = 0x5D;
        func_8001E2D0(actor_index);
        gActors[actor_index].unk_0D6 = arg1;
        gActors[actor_index].unk_104 = x << 0x10;
        gActors[actor_index].unk_108 = y << 0x10;
        gActors[actor_index].unk_10C = z << 0x10;

        for (index = 0; (arg0[index] & 0x8000) == 0; index++) {
            (&gActors[actor_index].var_150)[index] = arg0[index];
        }
        gActors[arg1].flags_098 |= ACTOR_FLAG3_UNK18;
        return actor_index;
    }
    return 0;
}

s32 func_800407D4(u16 actor_index) {
    if (D_800D5820 == actor_index) {
        switch (D_800D5824) {
        case 0x1000:
            return 0x1000;
        case 0x8000:
            return 0x8000;
        case 0x800:
            return 0x800;
        case 0x4000:
            return 0x4000;
        case 0x2000:
            return 0x2000;
        }
    }
    return 0;
}

void func_80040858(u16 actor_index) {
    if (D_800D5820 == actor_index) {
        if (func_8005DEFC() != 0) {
            func_8005DFC8(0);
        }
    }
}

u16 func_8004089C(u16 actor_index, u16* arg1) {
    u16 index;
    s16 y;
    s16 x;

    index = actor_index & 0x7FFF;
    x = gActors[0].posX.whole - gActors[index].posX.whole;
    y = gActors[0].posY.whole - gActors[index].posY.whole;

    if (D_800D5820 == index) {
        return D_800D5824;
    }

    if ((actor_index & 0x8000) && ((x >= 0x31) || (x < -0x30) || (y >= 0x31) || (y < -0x30))) {
        return 0;
    }

    if (gActors[index].flags_098 & ACTOR_FLAG3_UNK20) {
        gActors[index].flags_098 |= ACTOR_FLAG3_UNK18;
        return 1;
    }
    else {
        if (gActors[index].flags & ACTOR_FLAG_FLIPPED) {
            x = gActors[index].hitboxBX0 - 12;
        }
        else {
            x = gActors[index].hitboxBX1 + 12;
        }
        func_800406A4(arg1, index, x, gActors[index].hitboxBY0, 10);
    }
    return 1;
}

s32 func_800409E0(u16 actor_index) {
    if ((gActors[actor_index].health <= 0) || (gActors[actor_index].unk_0D4 > 0) || 
        ((gActors[actor_index].flags & (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW)) != (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW)) ||
        (gActors[actor_index].state < 0x51)) {
        return 1;
    }
    else {
        return 0;
    }
}

s32 func_80040A64(void) {
    if (D_800D2950 == 0) {
        return func_80048CE4();
    }
    else if (D_800D2954 > 0) {
        return func_800409E0(D_800D2950);
    }
    // BUG: UB, missing return
}

void func_80040AB4(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
    gActors[actor_index].graphicIndex = 0x1A8;
    gActors[actor_index].unk_0DF = 0x40;
    func_8002AC30(actor_index, 10);
    gActors[actor_index].posZ.whole = -1;
    gActors[actor_index].unk_11C = 1.0f;
    gActors[actor_index].unk_120 = 255.0f;
}

void func_80040B4C(u16 actor_index) {
    s32 angle;
    u16 index;
    u16 actor_v0;

    for (index = 0; index < 8; index++) {
        actor_v0 = func_80031284(0x1A8, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        if (actor_v0 != 0) {
            angle = gActors[actor_index].var_160 + (index << 7);
            gActors[actor_v0].posX.raw += (COS(angle) * gActors[actor_index].unk_164);
            gActors[actor_v0].posY.raw += (SIN(angle) * gActors[actor_index].unk_164);
            gActors[actor_v0].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
            gActors[actor_v0].unk_18C = gActors[actor_index].unk_18C;
            gActors[actor_v0].colorR = gActors[actor_index].colorR;
            gActors[actor_v0].colorG = gActors[actor_index].colorG;
            gActors[actor_v0].colorB = gActors[actor_index].colorB;
            gActors[actor_v0].unk_148 = 0.0f;
            gActors[actor_v0].scaleX = 1.0 - gActors[actor_index].unk_11C;
            gActors[actor_v0].scaleY = gActors[actor_v0].scaleX;
            gActors[actor_v0].colorA = (u8) (gActors[actor_index].unk_11C * 255.0f);
        }
    }
}

void func_80040E08(u16 actor_index, u16 arg1) {
    u16 index;
    s16 x;
    s16 y;

    if (Actor_IsOutsideRegion(actor_index, 0x20) == 0) {
        if (arg1 != 0) {
            x = 0;
            y = 0;
        }
        else {
            x = (f32) (16 - (func_8000178C() & 0x1F));
            y = (f32) (16 - (func_8000178C() & 0x1F));
        }
        if ((D_800BE4E0 & 0x3) == 0) {
            index = func_80031284(0x1D6, gActors[actor_index].posX.whole + x, gActors[actor_index].posY.whole + y, gActors[actor_index].posZ.whole + 1);
            if (index != 0) {
                gActors[index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[index].unk_18C = gActors[actor_index].unk_18C;
                gActors[index].var_150 = 0x800000;
                gActors[index].unk_148 = 7.0f;
                gActors[index].timer_110 = -0.1f;
                gActors[index].unk_114 = -0.033333335f;
                Actor_SetColorRgb(index, 0x7F);
                gActors[index].velocityZ.raw = FIXED_UNIT(4.0);
                gActors[index].scaleX = gActors[actor_index].unk_11C * 1.4;
                gActors[index].scaleY = gActors[actor_index].unk_11C * 0.5;
            }
        }
    }
}


void func_80041018(u16 actor_index) {
    u16 index;
    u32 pad0;
    u32 pad1;

    gActors[actor_index].colorA = ((u32)gActors[actor_index].unk_120) & 0xFF;
    if ((((u8)gActors[actor_index].timer_110) & 0xF) == 1) {
        gActors[actor_index].scaleX = gActors[actor_index].unk_11C * 1.0;
        if ((D_800BE4E0) & 0x10) {
            gActors[actor_index].unk_18C = 0x8022D548;
        }
        else {
            gActors[actor_index].unk_18C = (s32) D_800D8528;
        }
        gActors[actor_index].colorG = ((D_800BE4E0 * 3) & 0x3F) + 0x20;
    }
    else {
        gActors[actor_index].scaleX = gActors[actor_index].unk_11C * 0.8;
        if (D_800BE4E0 & 0x10) {
            gActors[actor_index].unk_18C = 0x8022D4E8;
        }
        else {
            gActors[actor_index].unk_18C = (s32) D_800D8548;
        }
        gActors[actor_index].colorR = ((D_800BE4E0 * 3) & 0x3F) + 0x20;
    }
    gActors[actor_index].rotateY += gActors[actor_index].unk_148;
    if (D_800BE4E0 & 0x100) {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 20.0f, 0.2f);
    }
    else {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, -20.0f, 0.2f);
    }
    gActors[actor_index].unk_12C += Math_AbsS32(gActors[actor_index].unk_148);
    if (((u8)gActors[actor_index].timer_110 & 0x80) && (gActors[actor_index].unk_12C > 360.0f)) {
        func_80003778(0x140, actor_index);
        gActors[actor_index].unk_12C -= 360.0f;
    }
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    if (!Actor_IsOutsideRegion(actor_index, 0x20)) {
        index = func_80031284(gActors[actor_index].graphicIndex, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        if (index != 0) {
            gActors[index].graphicFlags = gActors[actor_index].graphicFlags;
            gActors[index].unk_18C = gActors[actor_index].unk_18C;
            gActors[index].unk_148 = 0.0f;
            gActors[index].scaleX = gActors[actor_index].scaleX * 1.5;
            gActors[index].scaleY = gActors[index].scaleX;
            Actor_SetColorRgb(index, 0x7F);
            gActors[index].rotateY = gActors[actor_index].rotateY + 90.0f;
            gActors[index].colorA = gActors[actor_index].colorA / 3.0f;
        }
    }
    func_80040E08(actor_index, 0);
}

s32 func_8004151C(u16 actor0, u16 actor1) {
    if (((gActors[actor1].flags & (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW)) == (ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW)) && (gActors[actor1].health != 0)) {
        if ((gActors[actor0].posX.whole + 8 >= (gActors[actor1].hitboxBX0 + gActors[actor1].posX.whole) && 
            (gActors[actor1].posX.whole + gActors[actor1].hitboxBX1) >= (gActors[actor0].posX.whole - 8) && 
            (gActors[actor1].posY.whole + gActors[actor1].hitboxBY0) >= (gActors[actor0].posY.whole - 8) && 
            (gActors[actor0].posY.whole + 8) >= (gActors[actor1].hitboxBY1 + gActors[actor1].posY.whole)) ||
            (((gActors[actor1].flags & (ACTOR_FLAG_UNK11 | ACTOR_FLAG_UNK7)) != 0) && 
              (gActors[actor0].posX.whole + 8 >= (gActors[actor1].hitboxAX0 + gActors[actor1].posX.whole)) && 
              (gActors[actor1].posX.whole + gActors[actor1].hitboxAX1) >= (gActors[actor0].posX.whole - 8) && 
              (gActors[actor1].posY.whole + gActors[actor1].hitboxAY0) >= (gActors[actor0].posY.whole - 8) && 
              (gActors[actor0].posY.whole + 8) >= (gActors[actor1].hitboxAY1 + gActors[actor1].posY.whole))) {

            gActors[actor0].unk_174 = actor1;
            gActors[actor1].flags_098 |= ACTOR_FLAG3_UNK21;
            return 1;
        }
    }
    return 0;
}

s32 func_8004168C(u16 arg0) {
    if (gActors[arg0].unk_178 != 0) {
        if (func_8004151C(arg0, gActors[arg0].unk_178) != 0) {
            return 1;
        }
    }
    if (gActors[arg0].unk_17C != 0) {
        if (func_8004151C(arg0, gActors[arg0].unk_17C) != 0) {
            return 1;
        }
    }
    // BUG: UB, missing return
}

void func_8004172C(u16 actor_index, u16* arg1) {
    gActors[actor_index].posX.whole = arg1[0] - D_800BE558;
    gActors[actor_index].posY.whole = arg1[1] - D_800BE55C;
}

void func_8004178C(u16 actor_index, u16* arg1) {
    if (gActors[actor_index].unk_174 != 0) {
        func_8004172C(gActors[actor_index].unk_174, arg1);
    }
    else {
        func_8004172C(0, arg1);
        D_800BE5D8 = D_800BE558 + gActors->posX.whole;
        D_800BE5DC = D_800BE55C + gActors->posY.whole;
        gActors[0].flags &= ~ACTOR_FLAG_FLIPPED;
        if (arg1[2] & 1) {
            gActors[0].flags |= ACTOR_FLAG_FLIPPED;
        }
    }
}

// Actor_IsState2
s32 func_8004185C(u16 arg0) {
    if (gActors[arg0].state == 2) {
        return 1;
    }
    else {
        return 0;
    }
}

void func_800418A8(u16 actor_index) {
    u16 idx;
    s16 sp24;
    s16 sp22;
    u16 timer_idx;
    s32 temp;

    switch (gActors[actor_index].state) {
    case 0:
        if (!(func_80012AB4(gActors[actor_index].posX.whole, gActors[actor_index].posY.whole) & 0xC0)) {
            if ((gActors[actor_index].posX.whole < 0x180) && (gActors[actor_index].posX.whole > -0x180) &&
                (gActors[actor_index].posY.whole < 0x100) && (gActors[actor_index].posY.whole > -0x100)) {
                gActors[actor_index].state = 0xA;
            }
            else {
                gActors[actor_index].state = 2;
                func_80040AB4(actor_index);
            }
        }
        break;
    case 2:
        func_80041018(actor_index);
        if (((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) && (gActors[actor_index].unk_0D6 == 0)) || func_8004168C(actor_index)) {
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
            func_800036C8(0x123, actor_index);
            gActors[actor_index].unk_14C = 40.0f;
            D_800D2960 = 1;
            D_800D295C = actor_index;
            gActors[actor_index].var_160 = 0;
            gActors[actor_index].unk_164 = 0;
            switch ((u16)gActors[actor_index].timer_110 & 0xF) {
            case 1:
            case 3:
                D_800D28FC |= 0x100;
                break;
            }
            if (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK9) {
                D_800BE5F4 = 0xC;
                gActors[actor_index].unk_174 = 0;
                break;
            }
        }
        break;
    case 3:
        func_80041018(actor_index);
        gActors[actor_index].unk_11C = Math_ApproachF32(gActors[actor_index].unk_11C, 0.0f, 0.02f);
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.0f, 16.0f);
        gActors[actor_index].var_160 -= 16;
        gActors[actor_index].unk_164 += (262144.0f * gActors[actor_index].unk_11C);
        func_80040B4C(actor_index);
        gActors[actor_index].unk_14C -= 1.0f;
        if (gActors[actor_index].unk_14C < 0.0f) {
            gActors[actor_index].unk_14C = 60.0f;
            gActors[actor_index].state++;
            gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
            if ((u16)gActors[actor_index].timer_110 & 0x10) {
                gActors[actor_index].unk_180 = 1;
            }
            if ((u16)gActors[actor_index].timer_110 & 0x20) {
                D_800D28FC |= 1;
            }
            switch ((u16)gActors[actor_index].timer_110 & 0xF) {
            case 1:
                gActors[actor_index].unk_180 = 1;
                D_800D28F0 = gActors[actor_index].unk_0D8;
                D_800D28E4 = 0x64;
                break;
            case 2:
                gActors[actor_index].state++;
                func_8004178C(actor_index, &D_800D2860[gActors[actor_index].unk_0D8]);
                break;
            case 4:
                gActors[actor_index].state++;
                func_8004178C(actor_index, (u16* ) gActors[actor_index].unk_190);
                break;
            case 3:
                D_800D28F0 = D_800D28E4;
                D_800D28E4 = 0x61;
                D_800D28E8 = gActors[actor_index].unk_0D8;
                break;
            }
        }
        if (gActors[actor_index].unk_174 != 0) {
            gActors[(u16)gActors[actor_index].unk_174].flags_098 |= ACTOR_FLAG3_UNK21;
        }
        break;
    case 4:
        gActors[actor_index].unk_14C -= 1.0f;
        if (gActors[actor_index].unk_14C < 0.0f) {
            D_800D28FC |= 0x100;
            if (gActors[actor_index].unk_180 != 0) {
                gActors[actor_index].flags = 0;
            }
            else {
                gActors[actor_index].state = 0xA;
            }
        }
        else {
            if (gActors[actor_index].unk_174 != 0) {
                gActors[(u16)gActors[actor_index].unk_174].flags_098 |= ACTOR_FLAG3_UNK21;
            }
        }
        break;
    case 5:
        switch (gActors[actor_index].var_158) {
        case 2:
            if (gActors[actor_index].unk_174 != 0) {
                gActors[actor_index].state--;
                //////////////////////////////////////////////////////////////////
                // BUG: asm is pulling from `0x26(sp)` here which is never set?
                // may have intended use unk_174 as index as below in else block
                //////////////////////////////////////////////////////////////////
                gActors[idx].flags_098 |= ACTOR_FLAG3_UNK21;
                //////////////////////////////////////////////////////////////////
            }
            else
        default:
            if ((D_800BE5F4 == 0) &&
                (gActors[0].posX.whole < 0x71) && (gActors[0].posX.whole > -0x71) &&
                (gActors[0].posY.whole < 0x71) && (gActors[0].posY.whole > -0x71)) {
                gActors[actor_index].state--;
                D_800BE5F4 = 0xA;
                D_800D2960 = 2;
            }
            break;
        case 1:
            idx = gActors[actor_index].unk_174;
            gActors[idx].flags_098 |= ACTOR_FLAG3_UNK21;
            if ((gActors[idx].posX.whole < 0x71) && (gActors[idx].posX.whole > -0x71) &&
                (gActors[idx].posY.whole < 0x71) && (gActors[idx].posY.whole > -0x71)) {
                gActors[actor_index].state--;
                D_800D2960 = 2;
            }
            break;
        }
        break;
    case 10:
        gActors[actor_index].state++;
        func_80040AB4(actor_index);
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = 0x680000;
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK12;
        gActors[actor_index].unk_11C = 0.0f;
        gActors[actor_index].unk_120 = 0.0f;
        /* fallthrough */
    case 11:
        func_80041018(actor_index);
        gActors[actor_index].unk_11C = Math_ApproachF32(gActors[actor_index].unk_11C, 1.05f, 0.05f);
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 255.0f, 16.0f);
        if (((u16)gActors[actor_index].unk_120 == 0xFF) && (gActors[actor_index].unk_11C >= 1.0)) {
            gActors[actor_index].state = 2;
            gActors[actor_index].flags = ACTOR_FLAG_UNK12 | ACTOR_FLAG_ACTIVE | ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].var_160 += 0x10;
            gActors[actor_index].unk_164 -= (425984.0 * (1.0 - gActors[actor_index].unk_11C));
            func_80040B4C(actor_index);
        }
        break;
    }
    gActors[actor_index].flags_098 &= ~(ACTOR_FLAG3_UNK21 | ACTOR_FLAG3_UNK10 | ACTOR_FLAG3_UNK9);
    if ((u16)gActors[actor_index].timer_110 & 0x40) {
        sp24 = gActors[actor_index].posX.whole;
        sp22 = gActors[actor_index].posY.whole;
        temp = (u16)gActors[actor_index].timer_110 & 0xF;
        switch (temp) {
        case 2:
            // fakematch: the zero term keeps IDO from reusing v1 for timer_idx
            timer_idx = gActors[actor_index].unk_0D8 + (sp24 * 0);
            func_8004172C(actor_index, &D_800D2860[timer_idx]);
            break;
        case 4:
            func_8004172C(actor_index, (u16* ) gActors[actor_index].unk_190);
            break;
        default:
            return;
        }
        func_80040E08(actor_index, 1);
        gActors[actor_index].posX.whole = sp24;
        gActors[actor_index].posY.whole = sp22;
    }
}
