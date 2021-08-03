#ifndef ACTOR_H
#define ACTOR_H

#include "common.h"

enum {
    ACTOR_FLAG_UNK0,
    ACTOR_FLAG_ACTIVE = (1 << 1), // if this bit is unset, the relative slot on the actor stack is considered to be free (the actor is inactive)
    ACTOR_FLAG_UNK2 = (1 << 2),
    ACTOR_FLAG_UNK3 = (1 << 3),
    ACTOR_FLAG_UNK4 = (1 << 4),
    ACTOR_FLAG_UNK5 = (1 << 5),
    ACTOR_FLAG_UNK6 = (1 << 6),
    ACTOR_FLAG_UNK7 = (1 << 7),
    ACTOR_FLAG_UNK8 = (1 << 8),
    ACTOR_FLAG_UNK9 = (1 << 9),
    ACTOR_FLAG_UNK10 = (1 << 10),
    ACTOR_FLAG_UNK11 = (1 << 11),
    ACTOR_FLAG_UNK12 = (1 << 12),
    ACTOR_FLAG_UNK13 = (1 << 13),
    ACTOR_FLAG_UNK14 = (1 << 14),
    ACTOR_FLAG_UNK15 = (1 << 15),
    ACTOR_FLAG_UNK16 = (1 << 16),
    ACTOR_FLAG_UNK17 = (1 << 17),
    ACTOR_FLAG_UNK18 = (1 << 18),
    ACTOR_FLAG_UNK19 = (1 << 19),
    ACTOR_FLAG_UNK20 = (1 << 20),
    ACTOR_FLAG_UNK21 = (1 << 21),
    ACTOR_FLAG_UNK22 = (1 << 22),
    ACTOR_FLAG_UNK23 = (1 << 23),
    ACTOR_FLAG_UNK24 = (1 << 24),
    ACTOR_FLAG_ATTACHED = (1 << 25),      // might be holding, or held. This bit is on for Marina when she is holding an actor (see func_8004ED10)
    ACTOR_FLAG_ALWAYS_UPDATE = (1 << 26), // if this bit is set, the actor will always update, despite the state of D_800BE670
    ACTOR_FLAG_UNK27 = (1 << 27),
    ACTOR_FLAG_UNK28 = (1 << 28),
    ACTOR_FLAG_UNK29 = (1 << 29),
    ACTOR_FLAG_UNK30 = (1 << 30),
    ACTOR_FLAG_UNK31 = (1 << 31)
};

typedef void (*ActorFunc)(uint16_t index);

/*
    Struct notes from 1.0 (99% based on observation and not code)
    Observation is primarily on Marina and Teran, so other actors are likely to be espescially different
    However, all actors are 0x198 in size, probably uses a unioned structure
    Larger entities (such as bosses) are generally made up of multiple actors
    I am not using these names in the struct to avoid mislabeling stuff that is not really confirmed
   offset, name,                    size
    0x018: pos_x_0,                 16
    0x01A: pos_y_0,                 16
    0x01C: pos_z_0,                 32
    0x058: pos_x_1,                 16
    0x05A: pos_y_1,                 16
    0x05C: pos_z_1,                 32
    0x080: mode,                    32 // we call this flag here, since it is probably some sort of bitfield
    0x084: current_sprite,          16 // not sure what this actually represents, but it is connected to the sprite
    0x088: pos,                     64 // much like in our current struct, I was confused about the u16 values that are sometimes u32?
    0x090: pos_z,                   16
    0x094: render_flags             16 // not entirely accurate, might be a bitfield for some settings
    0x098: flags,                   32 // probably the "state" a particular actor uses, instead of the generic "flag"
    0x09C: rgba,                    32
    0x0A0: impact                   08 // probably incorrect
    0x0A2: effect                   16 // probably incorrect
    0x0B4: scale_x                  32 // float
    0x0B8: scale_y                  32 // float
    0x0C8: pos_x_3                  16
    0x0CA: pos_y_3                  16
    0x0CC: pos_x_4                  16
    0x0CE: pos_y_4                  16
    0x0D0: status                   16 // hope code can describe this better than I can
    0x0D2: type                     16 // effects the function of the actor, and what actor it is. Marina is 0x16; you can have multiple Marinas if you initialize more actors with this type (this is
   how I made Mischief Makers Online) I want to properly document these. 0x0D4: iframes                  16 0x0D6: last_held_sprite         16 // might actually be index, we will see 0x0D8: flags_2 32
   // unsure 0x0E0: hit_points               16 0x0E2: damage_queue             16 // probably incorrect 0x0E4: strength                 16 // probably incorrect 0x0E8: pointer                  32
    0x0EC: vel                      64 // uses same union type as pos
    0x0F4: vel_z                    32
    0x120: scale_xy                 32 // float
    0x124: scale_x_1                32 // float
    0x128: scale_y_1                32 // float
    0x12C: physics_state            16 // probably incorrect
    0x13C: grab_flag                64 // probably incorrect
    0x150: frames_idle              32
    0x154: reg_gem_value            32 // probably incorrect
    0x158: direction                08
    0x158: deviation                08
    0x16C: aim_angle                16
    0x170: anim_state               08 // likely misinterpreted
    0x171: anim_frame               08 // likely misinterpreted
    0x173: anim_current             08 // likely misinterpreted
    0x17C: flags_3                  32
    0x180: anim_frame_attached      08 // likely misinterpreted
    0x181: anim_current_attached    08 // likely misinterpreted
    0x182: launch_type              08
*/

typedef struct {
    /* 0x000 */ uint8_t unk_0x04[0x80];
    /* 0x080 */ int32_t flag;
    /* 0x084 */ uint16_t unk_0x84;
    /* 0x086 */ uint8_t unk_0x86;
    /* 0x087 */ uint8_t unk_0x87;
    /* 0x088 */ Vec3i_union pos;
    /* 0x094 */ uint16_t unk_0x94;
    /* 0x096 */ uint16_t unk_0x96;
    /* 0x098 */ int32_t unk_0x98;
    /* 0x09C */ RGBA32 rgba;
    /* 0x0A0 */ uint16_t unk_0xA0;
    /* 0x0A2 */ int16_t unk_0xA2;
    /* 0x0A4 */ int16_t unk_0xA4;
    /* 0x0A6 */ int16_t unk_0xA6;
    /* 0x0A8 */ int16_t unk_0xA8;
    /* 0x0AA */ int16_t unk_0xAA;
    /* 0x0AC */ int16_t unk_0xAC;
    /* 0x0AE */ int16_t unk_0xAE;
    /* 0x0B0 */ int16_t unk_0xB0;
    /* 0x0B2 */ int16_t unk_0xB2;
    /* 0x0B4 */ float unk_0xB4;
    /* 0x0B8 */ float unk_0xB8;
    /* 0x0BC */ float unk_0xBC;
    /* 0x0C0 */ float unk_0xC0;
    /* 0x0C4 */ float unk_0xC4;
    /* 0x0C8 */ uint16_t unk_0xC8;
    /* 0x0CA */ uint16_t unk_0xCA;
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
    /* 0x0D4 */ uint16_t unk_0xD4;
    /* 0x0D6 */ uint16_t unk_0xD6;
    /* 0x0D8 */ uint16_t unk_0xD8;
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
    /* 0x0E8 */ uint32_t unk_0xE8; // This is a pointer!
    /* 0x0EC */ int32_t unk_0xEC;
    /* 0x0F0 */ int32_t unk_0xF0;
    /* 0x0F4 */ uint16_t unk_0xF4;
    /* 0x0F6 */ uint16_t unk_0xF6;
    /* 0x0F8 */ uint32_t unk_0xF8;
    /* 0x0FC */ uint32_t unk_0xFC;
    /* 0x100 */ uint8_t unk_0x100;
    /* 0x101 */ uint8_t unk_0x101;
    /* 0x102 */ uint8_t unk_0x102;
    /* 0x103 */ uint8_t unk_0x103;
    /* 0x104 */ int32_t unk_0x104;
    /* 0x108 */ int32_t unk_0x108;
    /* 0x10C */ uint32_t unk_0x10C;
    /* 0x110 */ float unk_0x110;
    /* 0x114 */ float unk_0x114;
    /* 0x118 */ float unk_0x118;
    /* 0x11C */ float unk_0x11C;
    /* 0x120 */ float unk_0x120;
    /* 0x124 */ float unk_0x124;
    /* 0x128 */ float unk_0x128;
    /* 0x12C */ uint16_t unk_0x12C;
    /* 0x12E */ uint8_t unk_0x12E;
    /* 0x12F */ uint8_t unk_0x12F;
    /* 0x130 */ float unk_0x130;
    /* 0x134 */ float unk_0x134;
    /* 0x138 */ float unk_0x138;
    /* 0x13C */ float unk_0x13C;
    /* 0x140 */ uint8_t unk_0x140;
    /* 0x141 */ uint8_t unk_0x141;
    /* 0x142 */ uint16_t unk_0x142;
    /* 0x144 */ float unk_0x144;
    /* 0x148 */ float unk_0x148;
    /* 0x14C */ float unk_0x14C;
    /* 0x150 */ int32_t unk_0x150;
    /* 0x154 */ uint16_t unk_0x154;
    /* 0x156 */ uint16_t unk_0x156;
    /* 0x158 */ int32_t unk_0x158;
    /* 0x15C */ int32_t unk_0x15C;
    /* 0x160 */ uint32_t unk_0x160;
    /* 0x164 */ uint32_t unk_0x164;
    /* 0x168 */ uint32_t unk_0x168;
    /* 0x16C */ uint32_t unk_0x16C;
    union {
        struct {
            /* 0x170 */ int8_t unk_0x170;
            /* 0x171 */ int8_t unk_0x171;
            /* 0x172 */ int8_t unk_0x172;
            /* 0x173 */ int8_t unk_0x173;
        };
        /* 0x170 */ uint32_t unk_0x170_w;
    };
    /* 0x174 */ uint32_t unk_0x174;
    /* 0x178 */ uint32_t unk_0x178;
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
    /* 0x18C */ uint32_t unk_0x18C;
    /* 0x190 */ uint32_t unk_0x190;
    /* 0x194 */ uint8_t unk_0x194[4];
} Actor; /* sizeof = 0x198 */

typedef struct {
    /* 0x00 */ int16_t unk_0x0;
    /* 0x02 */ int16_t unk_0x2;
    /* 0x04 */ int16_t unk_0x4;
    /* 0x06 */ int16_t unk_0x6;
    /* 0x08 */ uint16_t health;
    /* 0x0A */ uint16_t unk_0xA;
    /* 0x0C */ uint16_t unk_0xC;
} ActorInit; /* sizeof = 0x0E */

typedef void (*Actor_func_8001EB8Cfn)(int32_t, int32_t, Actor*, uint32_t);

extern Actor gActors[];
extern ActorFunc gActorFuncTable[];
extern Actor_func_8001EB8Cfn D_800CA1C0[];

#define gPlayerActorp (gActors)
#define gPlayerActor  gActors[0]
#define ACTOR_COUNT0  0x90
#define ACTOR_COUNT1  0xC0
#define ACTOR_COUNT2  0xD0

#define Actor_Active_Set(ACTOR)   ((ACTOR)->flag |= ACTOR_FLAG_ACTIVE)
#define Actor_Active_Unset(ACTOR) ((ACTOR)->flag &= ~ACTOR_FLAG_ACTIVE)
#define Actor_Active_Get(ACTOR)   ((ACTOR)->flag & ACTOR_FLAG_ACTIVE)

#endif
