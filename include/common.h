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

#endif

