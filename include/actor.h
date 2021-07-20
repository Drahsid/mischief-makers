#ifndef ACTOR_H
#define ACTOR_H

#include "common.h"

enum {
    ACTOR_FLAG_UNK0,
    ACTOR_FLAG_ACTIVE = (1 << 2)
};

typedef struct {
    /* 0x000 */ uint8_t unk_0x04[0x80];
    /* 0x080 */ int32_t flag;
    /* 0x084 */ uint16_t unk_0x84; // current sprite?
    /* 0x086 */ uint8_t unk_0x86;
    /* 0x087 */ uint8_t unk_0x87;
    /* 0x088 */ Vec2i_union pos;
    /* 0x090 */ uint16_t pos_z;
    /* 0x092 */ uint16_t unk_0x92;
    /* 0x094 */ uint16_t unk_0x94;
    /* 0x096 */ uint16_t unk_0x96;
    /* 0x098 */ int32_t unk_0x98;
    /* 0x09C */ uint8_t unk_0x9C[0x14];
    /* 0x0B0 */ int16_t unk_0xB0;
    /* 0x0B2 */ int16_t unk_0xB2;
    /* 0x0B4 */ uint8_t unk_0xB4[0x18];
    /* 0x0CC */ uint16_t unk_0xCC;
    /* 0x0CE */ uint8_t unk_0xCE;
    /* 0x0CF */ uint8_t unk_0xCF;
    union {
        struct {
            /* 0x0D0 */ uint8_t unk_0xD0;
            /* 0x0D1 */ uint8_t unk_0xD1;
        };
        /* 0x0D0 */ uint16_t unk_0xD0_h;
    };
    /* 0x0D2 */ uint16_t unk_0xD2;
    /* 0x0D4 */ uint8_t unk_0xD4[0x4];
    /* 0x0D8 */ uint8_t unk_0xD8;
    /* 0x0D9 */ uint8_t unk_0xD9;
    /* 0x0DA */ uint8_t unk_0xDA;
    /* 0x0DB */ uint8_t unk_0xDB;
    /* 0x0DC */ uint8_t unk_0xDC;
    /* 0x0DD */ uint8_t unk_0xDD;
    /* 0x0DE */ uint8_t unk_0xDE;
    /* 0x0DF */ uint8_t unk_0xDF;
    /* 0x0E0 */ uint16_t health;
    /* 0x0E2 */ uint16_t unk_0xE2;
    /* 0x0E4 */ uint16_t unk_0xE4;
    /* 0x0E6 */ uint16_t unk_0xE6;
    /* 0x0E8 */ uint16_t unk_0xE8;
    /* 0x0EA */ uint16_t unk_0xEA;
    /* 0x0EC */ int32_t unk_0xEC;
    /* 0x0F0 */ int32_t unk_0xF0;
    /* 0x0F4 */ uint16_t unk_0xF4;
    /* 0x0F6 */ uint16_t unk_0xF6;
    /* 0x0F8 */ uint32_t unk_0xF8;
    /* 0x0FC */ uint32_t unk_0xFC;
    /* 0x100 */ uint8_t unk_0x100[0x20];
    /* 0x120 */ float unk_0x120;
    /* 0x124 */ float unk_0x124;
    /* 0x128 */ float unk_0x128;
    /* 0x12C */ uint16_t unk_0x12C;
    /* 0x12E */ uint8_t unk_0x12E;
    /* 0x12F */ uint8_t unk_0x12F;
    /* 0x130 */ uint8_t unk_0x130[0x10];
    /* 0x140 */ uint8_t unk_0x140;
    /* 0x141 */ uint8_t unk_0x141;
    /* 0x142 */ uint16_t unk_0x142;
    /* 0x144 */ uint8_t unk_0x144[0xC];
    /* 0x150 */ int32_t unk_0x150;
    /* 0x154 */ uint16_t unk_0x154;
    /* 0x156 */ uint16_t unk_0x156;
    /* 0x158 */ int32_t unk_0x158;
    /* 0x15C */ int32_t unk_0x15C;
    /* 0x160 */ uint8_t unk_0x160[0x10];
    union {
        struct {
            /* 0x170 */ int8_t unk_0x170;
            /* 0x171 */ int8_t unk_0x171;
            /* 0x172 */ int8_t unk_0x172;
            /* 0x173 */ int8_t unk_0x173;
        };
        /* 0x170 */ uint32_t unk_0x170_w;
    };
    /* 0x174 */ uint8_t unk_0x174[0x8];
    /* 0x17C */ uint32_t unk_0x17C;
    union {
        struct {
            /* 0x180 */ uint8_t unk_0x180;
            /* 0x181 */ uint8_t unk_0x181;
            /* 0x182 */ uint8_t unk_0x182;
            /* 0x183 */ uint8_t unk_0x183;
        };
        /* 0x180 */ uint32_t unk_0x180_w;
    };
    /* 0x184 */ uint16_t unk_0x184;
    /* 0x186 */ uint16_t unk_0x186;
    /* 0x188 */ uint32_t unk_0x188;
    /* 0x18C */ uint8_t unk_0x18C[0xC];
} Actor; /* sizeof = 0x198 */

typedef void(*Actor_func_8001EB8Cfn)(int32_t, int32_t, Actor*, uint32_t);

extern Actor gActors[];
extern Actor_func_8001EB8Cfn D_800CA1C0[];

#define gPlayerActorp (gActors)
#define gPlayerActor gActors[0]
#define ACTOR_COUNT0 0x90
#define ACTOR_COUNT1 0xC0

#define Actor_Active_Set(ACTOR) ((ACTOR)->flag |= ACTOR_FLAG_ACTIVE)
#define Actor_Active_Unset(ACTOR) ((ACTOR)->flag &= ~ACTOR_FLAG_ACTIVE)
#define Actor_Active_Get(ACTOR) ((ACTOR)->flag & ACTOR_FLAG_ACTIVE)

#endif

