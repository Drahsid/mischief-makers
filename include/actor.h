#ifndef ACTOR_H
#define ACTOR_H

#include "inttypes.h"

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
    /* 0x088 */ uint16_t pos_x;
    /* 0x08A */ uint16_t unk_0x8A;
    /* 0x08C */ uint16_t pos_y;
    /* 0x08E */ uint16_t unk_0x8E;
    /* 0x090 */ uint16_t pos_z;
    /* 0x092 */ uint16_t unk_0x92;
    /* 0x094 */ uint16_t unk_0x94;
    /* 0x096 */ uint16_t unk_0x96;
    /* 0x098 */ int32_t unk_0x98;
    /* 0x09C */ uint8_t unk_0x9C[0x34];
    /* 0x0D0 */ uint16_t unk_0xD0;
    /* 0x0D2 */ uint16_t unk_0xD2;
    /* 0x0D4 */ uint8_t unk_0xD4[0xB4];
    /* 0x188 */ uint32_t unk_0x188;
    /* 0x18C */ uint8_t unk_0x18C[0xC];
} Actor; /* sizeof = 0x198 */

extern Actor gActors[];

#define PlayerActor gActors[0]
#define ACTOR_COUNT0 0x90
#define ACTOR_COUNT1 0xC0

#define Actor_Active_Set(ACTOR) ((ACTOR)->flag |= ACTOR_FLAG_ACTIVE)
#define Actor_Active_Unset(ACTOR) ((ACTOR)->flag &= ~ACTOR_FLAG_ACTIVE)
#define Actor_Active_Get(ACTOR) ((ACTOR)->flag & ACTOR_FLAG_ACTIVE)

#endif

