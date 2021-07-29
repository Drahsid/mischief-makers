#ifndef COMMON_INCLUDE_H
#define COMMON_INCLUDE_H

#include "inttypes.h"

// this struct seems weird, name will be weird until I understand it
typedef struct {
    union {
        /* 0x00 */ uint16_t x;
        /* 0x00 */ int32_t x_w;
    };
    union {
        /* 0x04 */ uint16_t y;
        /* 0x04 */ int32_t y_w;
    };
} Vec2i_union; /* sizeof = 0x08 */

typedef struct {
union {
        /* 0x00 */ uint16_t x;
        /* 0x00 */ int32_t x_w;
    };
    union {
        /* 0x04 */ uint16_t y;
        /* 0x04 */ int32_t y_w;
    };
    union {
        /* 0x08 */ uint16_t z;
        /* 0x08 */ int32_t z_w;
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

#endif

