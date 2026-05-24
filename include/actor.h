#ifndef ACTOR_H
#define ACTOR_H

#include <PR/gbi.h>
#include <PR/ultratypes.h>
#include "common_structs.h"

typedef void (*ActorFunc)(u16 actor_index);

// the Actor struct has 3 "flag" fields,
// the first relating to behavior, the second rendering, and the third more behavior.

// bits used by the "flags" actor field.
enum ActorFlags {
    ACTOR_FLAG_DRAW = (1 << 0),   // if this bit is unset, the actor does not get drawn (however, it can still be active)
    ACTOR_FLAG_ACTIVE = (1 << 1), // if this bit is unset, the relative slot on the actor stack is considered to be free (the actor is inactive)
    ACTOR_FLAG_ONSCREEN_ONLY = (1 << 2), //deactivate if off-camera?
    ACTOR_FLAG_FREEZE_POS = (1 << 3), //keep screenspace position regardless of camera movement. Used for screen effect actors,
    ACTOR_FLAG_UNK4 = (1 << 4), //set, but not checked?
    ACTOR_FLAG_FLIPPED = (1 << 5), // if this bit is set, the actor will face left, as seen in func_8006C5A4, it sets unk_0x148 (which is probably x scale) to -unk_0xB4 (which is probably initial x
                                   // scale, in this context?)
    ACTOR_FLAG_UNK6 = (1 << 6),  //seems related to actor linking?

    // bits 7-12 seem to deal with collision checks.
    // and whether or not the hitboxA or B fields
    // are used for damage/physics

    ACTOR_FLAG_UNK7 = (1 << 7),  
    ACTOR_FLAG_UNK8 = (1 << 8),  
    ACTOR_FLAG_UNK9 = (1 << 9),  
    ACTOR_FLAG_UNK10 = (1 << 10), 
    ACTOR_FLAG_UNK11 = (1 << 11),
    ACTOR_FLAG_UNK12 = (1 << 12),
    ACTOR_FLAG_UNK13 = (1 << 13),
    ACTOR_FLAG_UNK14 = (1 << 14),
    ACTOR_FLAG_UNK15 = (1 << 15), // something with damage (instakill if set?)
    ACTOR_FLAG_UNK16 = (1 << 16),
    ACTOR_FLAG_UNK17 = (1 << 17),
    ACTOR_FLAG_UNK18 = (1 << 18), // 3d platfom actor?
    ACTOR_FLAG_UNK19 = (1 << 19),
    ACTOR_FLAG_UNK20 = (1 << 20),
    ACTOR_FLAG_UNK21 = (1 << 21),
    ACTOR_FLAG_UNK22 = (1 << 22), // something with physics?
    ACTOR_FLAG_UNK23 = (1 << 23), // something with physics?
    ACTOR_FLAG_UNK24 = (1 << 24), // unused?
    ACTOR_FLAG_ATTACHED = (1 << 25),      // might be holding, or held. This bit is on for Marina when she is holding an actor (see Marina's update function)
    ACTOR_FLAG_ALWAYS_UPDATE = (1 << 26), // if this bit is set, the actor will always update, despite the state of D_800BE670
    ACTOR_FLAG_UNK27 = (1 << 27), // set but not checked?
    ACTOR_FLAG_UNK28 = (1 << 28), // set but not checked?
    ACTOR_FLAG_UNK29 = (1 << 29), // set but not checked?
    ACTOR_FLAG_UNK30 = (1 << 30), // set but not checked?
    ACTOR_FLAG_UNK31 = (1 << 31)
};

// bits used by the "graphicFlags" field
enum ActorGFlags {
    ACTOR_GFLAG_SCALE = (1 << 0), // scale effected by scaleX and scaleY fields.
    ACTOR_GFLAG_ROTX = (1 << 1), // effected by rotateX
    ACTOR_GFLAG_ROTY = (1 << 2), // effected by rotateY
    ACTOR_GFLAG_ROTZ = (1 << 3), // effected by rotateZ
    ACTOR_GFLAG_UNK4 = (1 << 4), // changes "G_SETCOMBINE" used?
    ACTOR_GFLAG_UNK5 = (1 << 5), // unused?
    ACTOR_GFLAG_UNK6 = (1 << 6), // changes if effected by perspective?
    ACTOR_GFLAG_UNK7 = (1 << 7), // unused?
    ACTOR_GFLAG_UNK8 = (1 << 8), // effects z positioning?
    ACTOR_GFLAG_PALETTE = (1 << 9), // use pointer at field 0x18C as a palette
    ACTOR_GFLAG_UNK10 = (1 << 10), // effects animation
    ACTOR_GFLAG_UNK11 = (1 << 11), // seems to effect translate mtx.
    ACTOR_GFLAG_SCALEZ = (1 << 12), // use feild 0x12C as z scale (if ACTOR_GFLAG_SCALE is also set)
    ACTOR_GFLAG_UNK13 = (1 << 13), // field at 0x17C treated as dlist for 3d model?
    ACTOR_GFLAG_UNK14 = (1 << 14), // unused?
    ACTOR_GFLAG_UNK15 = (1 << 15) // a change in blending?
};

// bits used by the "flags_098" field
enum ActorFlags3 {
    ACTOR_FLAG3_UNK0 = (1 << 0),
    ACTOR_FLAG3_UNK1 = (1 << 1),
    ACTOR_FLAG3_UNK2 = (1 << 2),
    ACTOR_FLAG3_UNK3 = (1 << 3),
    ACTOR_FLAG3_UNK4 = (1 << 4),
    ACTOR_FLAG3_UNK5 = (1 << 5),
    ACTOR_FLAG3_UNK6 = (1 << 6),
    ACTOR_FLAG3_UNK7 = (1 << 7),
    ACTOR_FLAG3_UNK8 = (1 << 8),
    ACTOR_FLAG3_UNK9 = (1 << 9),
    ACTOR_FLAG3_UNK10 = (1 << 10),
    ACTOR_FLAG3_UNK11 = (1 << 11),
    ACTOR_FLAG3_UNK12 = (1 << 12),
    ACTOR_FLAG3_UNK13 = (1 << 13),
    ACTOR_FLAG3_UNK14 = (1 << 14),
    ACTOR_FLAG3_UNK15 = (1 << 15),
    ACTOR_FLAG3_UNK16 = (1 << 16),
    ACTOR_FLAG3_UNK17 = (1 << 17),
    ACTOR_FLAG3_UNK18 = (1 << 18),
    ACTOR_FLAG3_UNK19 = (1 << 19),
    ACTOR_FLAG3_UNK20 = (1 << 20),
    ACTOR_FLAG3_UNK21 = (1 << 21),
    ACTOR_FLAG3_UNK22 = (1 << 22),
    ACTOR_FLAG3_UNK23 = (1 << 23),
    ACTOR_FLAG3_UNK24 = (1 << 24),
    ACTOR_FLAG3_UNK25 = (1 << 25),
    ACTOR_FLAG3_UNK26 = (1 << 26),
    ACTOR_FLAG3_UNK27 = (1 << 27),
    ACTOR_FLAG3_UNK28 = (1 << 28),
    ACTOR_FLAG3_UNK29 = (1 << 29),
    ACTOR_FLAG3_UNK30 = (1 << 30),
    ACTOR_FLAG3_UNK31 = (1 << 31)
};

typedef struct {
    /* 0x000 */ Mtx matrices[2]; // see A540: `actor + (gCurrentFramebufferIndex << 6)` before guTranslate/guScale/guRotate
    /* 0x080 */ s32 flags; // uses ActorFlags enum. 0 indicate inactive ("free") actor index
    /* 0x084 */ u16 graphicIndex ; // index of grapic currently used.
    /* 0x086 */ u8 unk_086[0x2]; // align bytes?
    /* 0x088 */ FixedCoord posX; // Q16.16-style fixed x-coordinate relative to center of screen
    /* 0x08C */ FixedCoord posY; // Q16.16-style fixed y-coordinate relative to center of screen
    /* 0x090 */ FixedCoord posZ; // Q16.16-style fixed z-coordinate used for depth
    /* 0x094 */ u16 graphicFlags; // uses ActorGFlags enum. determines graphical properties.
    /* 0x096 */ u8 unk_096[0x2]; // align bytes
    /* 0x098 */ u32 flags_098; // third "flag" bitfield. Uses "ActorFlags3" enum. Needs more study.
    /* 0x09C */ u8 colorR; // see A540: 0x9C..0x9F packed into FA000000 display-list color
    /* 0x09D */ u8 colorG;
    /* 0x09E */ u8 colorB;
    /* 0x09F */ u8 colorA;
    /* 0x0A0 */ u8 unk_0A0;
    /* 0x0A1 */ u8 unk_0A1;

    // the next 8 fields are used in determining the offset for 2 different "hitbox" coordinates.

    /* 0x0A2 */ s16 hitboxAX0;
    /* 0x0A4 */ s16 hitboxAX1;
    /* 0x0A6 */ s16 hitboxAY0;
    /* 0x0A8 */ s16 hitboxAY1;
    /* 0x0AA */ s16 hitboxBX0;
    /* 0x0AC */ s16 hitboxBX1;
    /* 0x0AE */ s16 hitboxBY0;
    /* 0x0B0 */ s16 hitboxBY1;

    /* 0x0B2 */ u8 unk_0B2[0x2]; /// align bytes?
    /* 0x0B4 */ f32 scaleX; // see: passed as guScale x/y arguments
    /* 0x0B8 */ f32 scaleY;
    /* 0x0BC */ f32 rotateX; // used in guRotate if ACTOR_GFLAG_ROTX in graphicFlags is set
    /* 0x0C0 */ f32 rotateY; // used in guRotate if ACTOR_GFLAG_ROTY in graphicFlags is set
    /* 0x0C4 */ f32 rotateZ; // used in guRotate if ACTOR_GFLAG_ROTZ in graphicFlags is set
    /* 0x0C8 */ s16 unk_0C8;
    /* 0x0CA */ s16 unk_0CA;
    /* 0x0CC */ s16 unk_0CC;
    /* 0x0CE */ s16 unk_0CE;
    union {
        /* 0x0D0 */ u16 state; // >= 0x4000: normal u16 state
        // < 0x4000: common action state, action = state / 16, other = state & 0xF; sometimes read as individual bytes
        struct {
            /* 0x0D0 */ u8 stateUpper;
            /* 0x0D1 */ u8 stateLower;
        };
    };
    /* 0x0D2 */ u16 actorType; // < 0x100: static actor type; >= 0x100: high byte selects bank, low byte indexes func_80016E70 table
    /* 0x0D4 */ u16 unk_0D4;
    /* 0x0D6 */ u16 unk_0D6;
    /* 0x0D8 */ u16 unk_0D8;
    /* 0x0DA */ u8 unk_0DA;
    /* 0x0DB */ u8 unk_0DB;
    /* 0x0DC */ u8 unk_0DC;
    /* 0x0DD */ u8 unk_0DD;
    /* 0x0DE */ u8 unk_0DE;
    /* 0x0DF */ u8 unk_0DF;
    /* 0x0E0 */ s16 health; // initialized from the actor type table and decremented/clamped by damage code
    /* 0x0E2 */ s16 unk_0E2;
    /* 0x0E4 */ s16 unk_0E4;
    /* 0x0E6 */ s16 graphicTime; // time in ticks (x/60 seconds) the current graphic should be displayed.

    // graphic animations are determined by the following pointer.
    // it often references a u16[], where the odd values are the index of the next graphic,
    // and the even values their time in ticks to be displayed.
    // negative "index" values mean a looping animation back that many indecies.
    // some actors, like Marina, instead treat the field as a u16**,
    // storing the animations for each state.

    union{
        /* 0x0E8 */ void* graphicListV; // if uncertain if reference is u16[] or u16*
        /* 0x0E8 */ u16* graphicList; // odd indecies for graphic used, even for time to use them.
        /* 0x0E8 */ u16** graphicLists; // used by Marina and other actors to hold several animation references.
    };
    
    /* 0x0EC */ s32 velocityX; // FixedCoord(?) velocity see: 66250, 8D0A0, and matched overlays
    /* 0x0F0 */ s32 velocityY;
    /* 0x0F4 */ s32 unk_0F4; // FixedCoord parameter in overlay_76F390
    /* 0x0F8 */ s32 unk_0F8; // FixedCoord parameter in overlay_76F390
    /* 0x0FC */ s32 unk_0FC; // FixedCoord parameter in overlay_76F390
    /* 0x100 */ s32 unk_100;
    /* 0x104 */ s32 unk_104;
    /* 0x108 */ s32 unk_108;
    /* 0x10C */ s32 unk_10C;
    /* 0x110 */ f32 timer_110; // often used as timer in "state machines", other times as "general purpose" field.
    /* 0x114 */ f32 unk_114;
    /* 0x118 */ f32 unk_118;
    /* 0x11C */ f32 unk_11C;
    /* 0x120 */ f32 unk_120; // some actors, like Marina, use this as an XY scale.
    /* 0x124 */ f32 unk_124;
    /* 0x128 */ f32 unk_128;
    union {
        /* 0x12C */ f32 unk_12C;
        /* 0x12C */ u16 unk_12C_u16[2];
        struct {
            /* 0x12C */ u8 unk_12C_u8;
            /* 0x12D */ u8 unk_12D_u8;
            /* 0x12E */ u8 unk_12E_u8;
            /* 0x12F */ u8 unk_12F_u8;
        };
    };
    /* 0x130 */ f32 unk_130;
    /* 0x134 */ f32 unk_134;
    /* 0x138 */ f32 unk_138;
    /* 0x13C */ f32 unk_13C;
    /* 0x140 */ f32 unk_140;
    /* 0x144 */ f32 unk_144;
    /* 0x148 */ f32 unk_148;
    /* 0x14C */ f32 unk_14C;

    // the following values are used by actors for purposes depending on their type
    // examples: Clanbombs will use offset 0x150 for the fuse timer,
    // or the crosshair actor will use it for the index of its "parent",
    // or player-controlled Teran will count his jumps with it.

    /* 0x150 */ s32 var_150;
    /* 0x154 */ s32 var_154;
    union {
            /* 0x158 */ s32 var_158;
            /* 0x158 */ u16 var_158_u16[2];
    };
    /* 0x15C */ s32 unk_15C;
    /* 0x160 */ s32 unk_160;
    /* 0x164 */ s32 unk_164;
    /* 0x168 */ s32 unk_168;
    /* 0x16C */ s32 unk_16C;
    /* 0x170 */ s32 unk_170;
    /* 0x174 */ s32 unk_174;
    /* 0x178 */ s32 unk_178; // assigned animation/frame table pointers(?) by matched overlays
    /* 0x17C */ s32 unk_17C;
    /* 0x180 */ s32 unk_180;
    /* 0x184 */ s32 unk_184;
    /* 0x188 */ s32 unk_188;
    union {
        /* 0x18C */ s32 unk_18C; // field sometimes treated as int
        /* 0x18C */ u16* palette_18C; // when ACTOR_GFLAG_PALETTE is set in graphicFlags, field is treated as pallette pointer
    };
    union {
        /* 0x190 */ s32 unk_190;
        /* 0x190 */ void* unk_190_p;
        /* 0x190 */ ActorFunc unk_190_cb;
    }
    /* 0x194 */ u8 unk_194[0x4];
} Actor; /* size = 0x198 */

extern Actor gActors[];


// a common macro for initalizing actors.
#define ACTORINIT(index, type)\
 gActors[index].actorType = type;\
 func_8001E2D0(index)

#endif
