#ifndef ACTOR_H
#define ACTOR_H

#include <PR/gbi.h>
#include <PR/ultratypes.h>

typedef void (*ActorFunc)(u16 actor_index);

typedef union {
    s32 raw;
    struct {
        s16 whole;
        u16 frac;
    };
} FixedCoord;

#define FIXED_UNIT(value) ((s32)((value) * 0x10000))

typedef struct {
    /* 0x000 */ Mtx matrices[2]; // see A540: `actor + (gCurrentFramebufferIndex << 6)` before guTranslate/guScale/guRotate
    /* 0x080 */ s32 flags; // see func_8001751C and func_8001E2D0
    /* 0x084 */ u16 unk_084;
    /* 0x086 */ u8 unk_086[0x2];
    /* 0x088 */ FixedCoord posX; // see func_8007F9E0 and child position setup for Q16.16-style fixed coordinates
    /* 0x08C */ FixedCoord posY;
    /* 0x090 */ FixedCoord posZ;
    /* 0x094 */ u16 unk_094;
    /* 0x096 */ u8 unk_096[0x2];
    /* 0x098 */ u32 unk_098;
    /* 0x09C */ u8 colorR; // see A540: 0x9C..0x9F packed into FA000000 display-list color
    /* 0x09D */ u8 colorG;
    /* 0x09E */ u8 colorB;
    /* 0x09F */ u8 colorA;
    /* 0x0A0 */ u8 unk_0A0;
    /* 0x0A1 */ u8 unk_0A1;
    /* 0x0A2 */ s16 unk_0A2;
    /* 0x0A4 */ s16 unk_0A4;
    /* 0x0A6 */ s16 unk_0A6;
    /* 0x0A8 */ s16 unk_0A8;
    /* 0x0AA */ s16 unk_0AA;
    /* 0x0AC */ s16 unk_0AC;
    /* 0x0AE */ s16 unk_0AE;
    /* 0x0B0 */ s16 unk_0B0;
    /* 0x0B2 */ u8 unk_0B2[0x2];
    /* 0x0B4 */ f32 scaleX; // see: passed as guScale x/y arguments
    /* 0x0B8 */ f32 scaleY;
    /* 0x0BC */ f32 unk_0BC;
    /* 0x0C0 */ f32 unk_0C0;
    /* 0x0C4 */ f32 unk_0C4;
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
    /* 0x0E6 */ s16 unk_0E6;
    /* 0x0E8 */ void* unk_0E8;
    /* 0x0EC */ s32 velocityX; // FixedCoord(?) velocity see: 66250, 8D0A0, and matched overlays
    /* 0x0F0 */ s32 velocityY;
    /* 0x0F4 */ s32 unk_0F4; // FixedCoord parameter in overlay_76F390
    /* 0x0F8 */ s32 unk_0F8; // FixedCoord parameter in overlay_76F390
    /* 0x0FC */ s32 unk_0FC; // FixedCoord parameter in overlay_76F390
    /* 0x100 */ s32 unk_100;
    /* 0x104 */ s32 unk_104;
    /* 0x108 */ s32 unk_108;
    /* 0x10C */ s32 unk_10C;
    /* 0x110 */ f32 unk_110;
    /* 0x114 */ f32 unk_114;
    /* 0x118 */ f32 unk_118;
    /* 0x11C */ f32 unk_11C;
    /* 0x120 */ f32 unk_120;
    /* 0x124 */ f32 unk_124;
    /* 0x128 */ f32 unk_128;
    union {
        /* 0x12C */ f32 unk_12C;
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
    /* 0x150 */ s32 unk_150;
    /* 0x154 */ s32 unk_154;
    /* 0x158 */ s32 unk_158;
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
    /* 0x18C */ s32 unk_18C; // assigned sprite/render data pointers(?) by matched overlays
    /* 0x190 */ s32 unk_190;
    /* 0x194 */ u8 unk_194[0x4];
} Actor; /* size = 0x198 */

extern Actor gActors[];

#endif
