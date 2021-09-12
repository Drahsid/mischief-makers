#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H

#include "inttypes.h"
#include "Alphabet.h"
enum {
    GAMESTATE_SOFTRESET,
    GAMESTATE_INTRO,
    GAMESTATE_TITLESCREEN,
    GAMESTATE_DEBUG_SOUNDTEST,
    GAMESTATE_DEBUG_STAGESELECT,
    GAMESTATE_LOADING,
    GAMESTATE_GAMEPLAY,
    GAMESTATE_CONTINUE, // game over
    GAMESTATE_UNKNOWN0,
    GAMESTATE_UNKNOWN1,
    GAMESTATE_ATTRACT,
    GAMESTATE_FILESELECT,
    GAMESTATE_TRANSITION,
    GAMESTATE_NONE,
    GAMESTATE_UNKNOWN2 // level select (best times?)
};

// these structs seem weird, name will be awkward until we understand their purposes
typedef struct {
    union {
        struct {
            /* 0x00 */ int16_t _hi;
            /* 0x02 */ int16_t _lo;
        };
        /* 0x00 */ int32_t _w;
    };
} s2_w; /* sizeof = 0x04 */ // short[2], word

typedef struct {
    union {
        /* 0x00 */ int16_t x;
        /* 0x00 */ int32_t x_w;
    };
    union {
        /* 0x04 */ int16_t y;
        /* 0x04 */ int32_t y_w;
    };
} Vec2i_union; /* sizeof = 0x08 */

typedef union {
    struct {
        /* 0x00 */ int32_t x_w;
        /* 0x04 */ int32_t y_w;
        /* 0x08 */ int32_t z_w;
    };
    struct {
        /* 0x00 */ int16_t x;
        /* 0x02 */ int16_t x_1;
        /* 0x04 */ int16_t y;
        /* 0x06 */ int16_t y_1;
        /* 0x08 */ int16_t z;
        /* 0x0A */ int16_t z_1;
    };
} Vec3i_union; /* sizeof = 0x0C */

typedef union {
    struct {
        /* 0x00 */ uint8_t r;
        /* 0x01 */ uint8_t g;
        /* 0x02 */ uint8_t b;
        /* 0x03 */ uint8_t a;
    };
    /* 0x00 */ uint32_t rgba;
} RGBA32; /* sizeof = 0x04 */

typedef struct{
    int16_t unk0x0; //init/ read flag?
    char text[80]; //2 bytes after (align solves for it?)
    int32_t posX;
    int32_t posY;
    RGBA32 color;
    float ScaleX;
    float ScaleY;
}TextTransform;


#endif
