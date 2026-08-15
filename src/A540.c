#include "common.h"
#include "actor.h"
#include "boot.h"
#include "debug.h"
#include "linker.h"
#include "rle.h"
#include "E44A0.h"

// TODO: can this be refactored with gbi.h?
#define MIN_DIFF(y, x) ((((x) < (y)) ? (y) - (x) : (y)))

#define	gSPCustomScisTextureRectangle(pkt, xl, yl, xh, yh, tile, s, t, dsdx, dtdy) \
        gSPTextureRectangle(pkt, \
                            MAX(0, xl) << 2, \
                            MAX(0, yl) << 2, \
                            MAX(0, xh) << 2, \
                            MAX(0, yh) << 2, \
                            tile,\
                            MIN_DIFF(s, xl) << 5, \
                            MIN_DIFF(t, yl) << 5, \
                            dsdx, \
                            dtdy);

s8 D_800C53C0[] = {
    0x00, 0x00, 0x00, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05,
    0x05, 0x05, 0x05, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x04,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xFE, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFB, 0xFC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x0C, 0x0C, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0A, 0x0A, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0xFF, 0xFE, 0xFE, 0xFF, 0x00, 0x0C, 0x0C, 0x0C, 0x00, 0xFC, 0xF9, 0xF9, 0xFB,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xF9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

s8 D_800C54E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0xFB, 0xFB, 0x00, 0x00, 0x00, 0x00, 0x05, 0x05, 0x05, 0x05, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

s8 D_800C5608[] = {
    0x00, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x05, 0x06, 0x06, 0x07, 0x05, 0x04, 0x04, 0x04,
    0x05, 0x06, 0x06, 0x04, 0x03, 0x03, 0x03, 0x04, 0x06, 0x06, 0x05, 0x04, 0x04, 0x07, 0x07, 0x06,
    0x06, 0x07, 0x08, 0x05, 0x05, 0x07, 0x07, 0x08, 0x09, 0x09, 0x08, 0x0A, 0x0A, 0x08, 0x06, 0x07,
    0x08, 0x06, 0x08, 0x0B, 0x0A, 0x08, 0x07, 0x09, 0x09, 0x0A, 0x0B, 0x07, 0x06, 0x07, 0x09, 0x09,
    0x0A, 0x0A, 0x08, 0x07, 0x07, 0x09, 0x0D, 0x10, 0x0C, 0x0E, 0x07, 0x07, 0x09, 0x09, 0x0C, 0x0E,
    0x0C, 0x09, 0x07, 0x09, 0x0A, 0x0E, 0x10, 0x0F, 0x0A, 0x07, 0x09, 0x07, 0x04, 0x01, 0xFF, 0x02,
    0x07, 0x10, 0x0F, 0x0A, 0x09, 0x06, 0x07, 0x10, 0x0E, 0x08, 0x04, 0x01, 0x01, 0x07, 0x0B, 0x0C,
    0x0D, 0x0D, 0x0E, 0x0E, 0x10, 0x10, 0x0F, 0x0B, 0xFF, 0xF9, 0xF8, 0xFD, 0x04, 0x06, 0x09, 0x08,
    0x09, 0x0B, 0x0E, 0x0B, 0x08, 0x07, 0x0B, 0x12, 0x11, 0x14, 0x11, 0x12, 0x11, 0x0C, 0x10, 0x10,
    0x0F, 0x09, 0x08, 0x0B, 0x10, 0x12, 0x0B, 0x0B, 0x09, 0x07, 0x07, 0x07, 0x08, 0x09, 0x0D, 0x0C,
    0x0B, 0x07, 0x05, 0x05, 0x07, 0x0B, 0x0E, 0x07, 0x02, 0x10, 0x10, 0x0F, 0x0F, 0x0C, 0x0C, 0x0B,
    0x09, 0x0C, 0x0F, 0x0E, 0x09, 0x08, 0x0D, 0x0F, 0x10, 0x10, 0x0F, 0x0D, 0x08, 0x05, 0x06, 0x07,
    0x09, 0x0A, 0x09, 0x09, 0x09, 0x0A, 0x0A, 0x05, 0x04, 0x09, 0x07, 0x05, 0x08, 0x09, 0x08, 0x07,
    0x07, 0x07, 0x08, 0x08, 0x0C, 0x0D, 0x0D, 0x0B, 0x0A, 0x09, 0x0A, 0x0C, 0x0A, 0x0D, 0x0E, 0x0E,
    0x0E, 0x0E, 0x0A, 0x07, 0x05, 0x05, 0x07, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06,
    0x10, 0x11, 0x0F, 0x0E, 0x0D, 0x0D, 0x0E, 0x0D, 0x0B, 0x09, 0x07, 0x06, 0x05, 0x05, 0x06, 0x06,
    0x07, 0x08, 0x09, 0x08, 0x07, 0x07, 0x06, 0x06, 0x02, 0x02, 0x03, 0x01, 0x00, 0xFF, 0xFF, 0x01,
    0x02, 0x03, 0x05, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x09, 0x08, 0x04, 0x05, 0x07, 0x0A, 0x0B, 0x09,
    0x08, 0x09, 0x09, 0x0A, 0x0C, 0x0C, 0x0B, 0x0F, 0x0C, 0x07, 0x05, 0x05, 0x07, 0x0A, 0x0F, 0x0A,
    0x04, 0x02, 0x03, 0x07, 0x0A, 0x0F, 0x0E, 0x0F, 0x10, 0x0E, 0x09, 0x0A, 0x0F, 0x0E, 0x0E, 0x0B,
    0x0C, 0x0A, 0x0A, 0x09, 0x07, 0x05, 0x07, 0x08, 0x09, 0x0B, 0x0A, 0x08, 0x08, 0x09, 0x0A, 0x0C,
    0x0B, 0x09, 0x04, 0x04, 0x04, 0x03, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x05, 0x03, 0x02, 0x02,
    0x01, 0x02, 0x02, 0x04, 0x04, 0x03, 0x03, 0x04, 0x03, 0x02, 0x02, 0x01, 0x06, 0x05, 0x06, 0x07,
    0x05, 0x08, 0x0F, 0x10, 0x10, 0x10, 0x10, 0x07, 0x09, 0x08, 0x07, 0x04, 0x04, 0x06, 0x06, 0x0D,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x08, 0x08, 0x06, 0x06, 0x04, 0x04, 0x01, 0x02, 0x07, 0x0B, 0x0B,
    0x0D, 0x10, 0x10, 0x0F, 0x04, 0x03, 0x06, 0x0C, 0x0A, 0x09, 0x0C, 0x0C, 0x0D, 0x09, 0x00, 0xF5,
    0xF5, 0xF8, 0xFE, 0x01, 0x0A, 0xFD, 0x01, 0x03, 0x01, 0xFF, 0x01, 0x04, 0x08, 0x0E, 0x10, 0x10,
    0x0E, 0x0D, 0x0F, 0x06, 0x08, 0x09, 0x06, 0x02, 0x02, 0x03, 0x08, 0x0D, 0x0B, 0x08, 0x06, 0x09,
    0x07, 0x05, 0x02, 0x03, 0x06, 0x09, 0x0B, 0x0E, 0x10, 0x0D, 0x0E, 0x10, 0x10, 0x0F, 0x0B, 0x0A,
    0x0A, 0x0A, 0x04, 0x05, 0x0D, 0x10, 0x11, 0x13, 0x14, 0x11, 0x0F, 0x0E, 0x0C, 0x08, 0x06, 0x0B,
    0x0C, 0x0E, 0x08, 0x07, 0x06, 0x03, 0x04, 0x06, 0x07, 0x08, 0x07, 0x08, 0x09, 0x0B, 0x0C, 0x0E,
    0x08, 0x09, 0x0A, 0x08, 0x07, 0x06, 0x02, 0x00, 0x02, 0x06, 0x0B, 0x09, 0x07, 0x06, 0x05, 0x02,
    0x02, 0x03, 0x06, 0x0A, 0x0D, 0x0E, 0x0C, 0x09, 0x09, 0x0B, 0xFE, 0xFE, 0x0B, 0x10, 0x10, 0x0E,
    0x0D, 0x07, 0x04, 0x05, 0x09, 0x08, 0x0D, 0x0E, 0x0D, 0x08, 0x09, 0x08, 0x08, 0x09, 0x08, 0x05,
    0x01, 0x01, 0x03, 0x08, 0x0B, 0x0C, 0x0C, 0x0B, 0x0A, 0x0B, 0x08, 0x07, 0x07, 0x06, 0x02, 0x00,
    0x00, 0x02, 0x07, 0x0A, 0x0C, 0x10, 0x10, 0x10, 0x10, 0x0E, 0x0A, 0x09, 0x03, 0x07, 0x0C, 0x0A,
    0x07, 0x11, 0x0B, 0x0C, 0x0A, 0x09, 0x0C, 0x0E, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0E, 0x03, 0x04,
    0x06, 0x0A, 0x0C, 0xF3, 0xF9, 0xFF, 0x05, 0x0A, 0x04, 0x02, 0x02, 0x03, 0x04, 0x06, 0x07, 0x05,
    0x07, 0x07, 0x07, 0x06, 0x07, 0x07, 0x09, 0x09, 0x07, 0xFF, 0x02, 0x06, 0x0A, 0x11, 0x10, 0x10,
    0x10, 0x10, 0x11, 0x01, 0x01, 0x0D, 0x09, 0x06, 0x03, 0xFF, 0xF9, 0xF7, 0xF8, 0xF9, 0xFA, 0xFB,
    0x05, 0x06, 0x0D, 0x07, 0x03, 0x02, 0x02, 0x03, 0x03, 0x03, 0x04, 0x05, 0x07, 0x09, 0x09, 0x0A,
    0x09, 0x02, 0xFF, 0x00, 0x02, 0x06, 0x08, 0x09, 0x09, 0x07, 0x07, 0x07, 0x07, 0x08, 0x02, 0x02,
    0x03, 0x03, 0x03, 0x03, 0x03, 0x05, 0x07, 0x05, 0x04, 0x03, 0x07, 0x05, 0x03, 0x04, 0x05, 0x0A,
    0x09, 0x08, 0x08, 0x08, 0x09, 0x0A, 0x0C, 0x09, 0x06, 0x05, 0x07, 0x0A, 0x0B, 0x09, 0x0A, 0x0B,
    0x06, 0xFF, 0xF7, 0xF3, 0xF6, 0xF8, 0xF9, 0xFD, 0x00, 0x02, 0x03, 0x03, 0x06, 0x09, 0x09, 0x09,
    0x08, 0x07, 0x07, 0x07, 0x04, 0x02, 0x03, 0x04, 0x05, 0x07, 0x07, 0x05, 0x03, 0x02, 0x02, 0x03,
    0x03, 0x04, 0x04, 0x03, 0x05, 0x04, 0x05, 0x06, 0x07, 0x07, 0x08, 0x06, 0x08, 0x07, 0x05, 0x05,
    0x06, 0x08, 0x09, 0x09, 0x04, 0x02, 0x03, 0x05, 0x05, 0x05, 0x05, 0x04, 0x04, 0x05, 0x07, 0x08,
    0x08, 0x08, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x05, 0x07, 0x0A, 0x0D, 0x0E, 0x0C,
    0x0A, 0x07, 0x06, 0x05, 0x05, 0x05, 0x05, 0x04, 0x04, 0x03, 0x03, 0x01, 0x02, 0x03, 0x04, 0x04,
    0x04, 0x05, 0x00, 0x00
};

s8 D_800C592C[] = {
    0x00, 0xFA, 0xFC, 0x00, 0xFF, 0xFD, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFB, 0xFC,
    0xFC, 0xFC, 0xFC, 0xFC, 0xFB, 0xFB, 0xFB, 0xFC, 0xFC, 0xFC, 0xFC, 0xFC, 0xFB, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF8, 0xF9, 0xFA, 0xF9, 0xF9, 0xFA, 0xFA,
    0xF9, 0xF9, 0xFB, 0xFA, 0xFA, 0xFB, 0xFA, 0xF9, 0xFA, 0xFE, 0x00, 0xFA, 0xFA, 0xFA, 0xF9, 0xF9,
    0xF9, 0xF9, 0xF9, 0xFA, 0xFA, 0xF9, 0xFE, 0x04, 0x04, 0x02, 0xF9, 0xFA, 0xF9, 0xF9, 0xF9, 0xFA,
    0xFA, 0xFB, 0xFA, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xFA, 0xFA, 0xF9, 0xFD, 0x02, 0x02, 0xFB, 0xF9,
    0xF9, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF8, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0x01, 0x03, 0xFE,
    0xFA, 0xFA, 0xFA, 0xFA, 0xF8, 0xF7, 0xF7, 0xF7, 0xFA, 0xFF, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFE,
    0x02, 0x00, 0xFA, 0xFA, 0xFA, 0xFA, 0xF3, 0xF2, 0xF3, 0xF0, 0xEE, 0xEB, 0xEB, 0xF0, 0xF3, 0xF5,
    0xF3, 0xEB, 0xEE, 0xED, 0xF1, 0xF1, 0x00, 0x03, 0xFC, 0xFD, 0x00, 0x00, 0xFE, 0xFC, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF8, 0xF5, 0xF5, 0xF6, 0xF7, 0xF8, 0xF8, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFB, 0xF9,
    0xFA, 0xFE, 0xF9, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xFA, 0xFA, 0xFA, 0xFE, 0x01, 0x02, 0x01,
    0xFF, 0x01, 0x04, 0x02, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF8, 0xF8, 0xF8, 0xF7, 0xF7, 0xF7, 0xF7, 0xF8, 0xF8,
    0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7, 0xF8, 0xF8, 0xF8, 0xFE, 0xFD, 0xFD, 0xFD,
    0xFD, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFC, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB,
    0xFC, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFA, 0xFA, 0xFA, 0xF9, 0xF9, 0xF7, 0xF6, 0xF6,
    0xFA, 0xFE, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF5, 0xF7, 0xF8, 0xF8, 0xF8, 0xF8, 0xF7, 0xF5, 0xF6,
    0xF7, 0xF5, 0xF7, 0xF8, 0xF8, 0xF5, 0xF7, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF5, 0xF5, 0xF4, 0xF5,
    0xF6, 0xF7, 0xF8, 0xFA, 0xFC, 0xFF, 0xFE, 0xFF, 0xFE, 0xFD, 0xFD, 0xFE, 0xFE, 0xFD, 0xFA, 0xFA,
    0xFA, 0xFF, 0x02, 0x01, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x02, 0x01, 0x01, 0x00, 0xFF, 0xFF,
    0x00, 0x02, 0xFA, 0xFB, 0xFB, 0xFA, 0xFA, 0xFB, 0xFC, 0xFA, 0xFA, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFF, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFC, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFD, 0xFB, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFD, 0xFE, 0xFC, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFC, 0x00, 0xFB, 0xFB, 0xFA, 0x01,
    0xFE, 0xFA, 0xFA, 0xFA, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFE, 0x03, 0x03, 0xFF, 0xFB,
    0xFB, 0xFA, 0xFB, 0xFA, 0xFA, 0xF8, 0xF7, 0xF7, 0xFA, 0xF9, 0xF8, 0xFA, 0xFB, 0xF8, 0xF7, 0xF7,
    0xF8, 0xF9, 0xF9, 0xF9, 0xF8, 0xF8, 0xF8, 0xF8, 0xF8, 0xF7, 0xF7, 0xF6, 0xF7, 0xF7, 0xF8, 0xF9,
    0xF9, 0xF8, 0xF8, 0xF8, 0xF8, 0xF9, 0xF9, 0xF9, 0xF9, 0xF8, 0xF8, 0xF7, 0xF8, 0xFE, 0xFB, 0xFC,
    0xFC, 0xFC, 0xFD, 0xFF, 0x01, 0x01, 0xFB, 0xF6, 0xF7, 0xFD, 0xFD, 0xF8, 0xF5, 0xF5, 0xF5, 0x03,
    0xFC, 0xFA, 0xFF, 0xFE, 0xF7, 0xF5, 0x03, 0xFE, 0xF6, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xF9, 0xF9, 0xF9, 0xFD, 0x00, 0x01,
    0x01, 0x00, 0x00, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xF9, 0xFB, 0xFA, 0xFA, 0xFA,
    0xFB, 0x02, 0x01, 0x01, 0x01, 0x02, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFC,
    0xFF, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFC, 0xFF,
    0x01, 0x02, 0x02, 0xFF, 0xFA, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFC, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFD,
    0x03, 0x04, 0xFF, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFD, 0xFC, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0x01, 0x00, 0xFC, 0xFB, 0xFB, 0xF7,
    0xF7, 0xF8, 0xFD, 0x00, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFC, 0xFE, 0xFA, 0xFB, 0xFF,
    0xFF, 0xFB, 0xF8, 0xF8, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFA, 0xFA, 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFD, 0xFD, 0xFD, 0xFD,
    0xFD, 0xFD, 0xFD, 0xFD, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFB, 0xFB, 0xFB, 0xFB, 0xFB,
    0xFA, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA,
    0xFA, 0xFB, 0xFB, 0xFB, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFA, 0xFB, 0xFC, 0xFC, 0xFC,
    0xFB, 0xFA, 0x00, 0x00
};

u16 D_800C5C50[] = {
    0x0006, 0x0008, 0x000A, 0x000C, 0x000E, 0x0010, 0x0012, 0x0014,
    0x0016, 0x0018, 0x001A, 0x001C, 0x001E, 0x0020, 0x0022, 0x0024
};

u16 D_800C5C70[] = {
    0x0026, 0x0028, 0x002A, 0x002C, 0x002E, 0x0030, 0x0032, 0x0034,
    0x0036, 0x0038, 0x003A, 0x003C, 0x003E, 0x0040, 0x0042, 0x0044
};

u8* D_800C5C90[] = { // array of dst pointers for RLE
    (u8*)0x80268EE8, (u8*)0x802697E8, (u8*)0x8026A0E8, (u8*)0x8026A9E8,
    (u8*)0x8026B2E8, (u8*)0x8026BBE8, (u8*)0x8026C4E8, (u8*)0x8026CDE8,
    (u8*)0x8026D6E8, (u8*)0x8026DFE8, (u8*)0x8026E8E8, (u8*)0x8026F1E8,
    (u8*)0x8026FAE8, (u8*)0x802703E8, (u8*)0x80270CE8, (u8*)0x802715E8
};

u8* D_800C5CD0[] = { // array of dst pointers for RLE
    (u8*)0x80271EE8, (u8*)0x802727E8, (u8*)0x802730E8, (u8*)0x802739E8,
    (u8*)0x802742E8, (u8*)0x80274BE8, (u8*)0x802754E8, (u8*)0x80275DE8,
    (u8*)0x802766E8, (u8*)0x80276FE8, (u8*)0x802778E8, (u8*)0x802781E8,
    (u8*)0x80278AE8, (u8*)0x802793E8, (u8*)0x80279CE8, (u8*)0x8027A5E8,
    (u8*)D_800C5608
};

s8* D_800C5D14 = D_800C53C0;
s8* D_800C5D18 = D_800C592C; // unused
s8* D_800C5D1C = D_800C54E4;

s16 D_800C5D20[] = {
    -16, -16, -16,  -8,  -8,  -8, -16, -16,
    -16,  -8,  -8,  -8, -16, -16, -16,  -8,
     -8,  -8, -16, -16, -16, -16, -16, -16,
    -16, -16, -16, -16, -16, -16, -16, -24,
    -16, -16, -16, -20, -20, -16, -16, -16,
    -16, -16, -16, -16, -16, -16, -16, -16,
    -16,  -4,  -4,  -4, -16, -16, -16, -16,
      0,  -8,  -8,  -8,  -8,  -8,  -8,  -8
};

s16 D_800C5DA0[] = {
    20, 20, 20, 20, 20, 20, 12, 12,
    12, 12, 12, 12, 20, 20, 20, 12,
    12, 12, 20, 20, 20, 20, 20, 20,
    12, 12, 12, 12, 12, 12, 16, 28,
    16, 16, 16, 20, 20, 12, 12, 12,
    16, 16, 16, 16, 16, 16,  4,  4,
     4, 16, 16, 16, 16, 16, 16, 16,
     0, 12, 12, 12, 12, 12, 12, 12
};

s16 D_800C5E20[] = {
    32, 32, 32, 16, 16, 16, 32, 32,
    32, 16, 16, 16, 32, 32, 32, 16,
    16, 16, 32, 32, 32, 32, 32, 32,
    32, 32, 32, 32, 32, 32, 32, 48,
    32, 32, 32, 40, 40, 32, 32, 32,
    32, 32, 32, 32, 32, 32, 32, 32,
    32,  8,  8,  8, 32, 32, 32, 32,
     0, 16, 16, 16, 16, 16, 16, 16
};

s16 D_800C5EA0[] = {
    40, 40, 40, 40, 40, 40, 24, 24,
    24, 24, 24, 24, 40, 40, 40, 24,
    24, 24, 40, 40, 40, 40, 40, 40,
    24, 24, 24, 24, 24, 24, 32, 56,
    32, 32, 32, 40, 40, 24, 24, 24,
    32, 32, 32, 32, 32, 32,  8,  8,
     8, 32, 32, 32, 32, 32, 32, 32,
     0, 24, 24, 24, 24, 24, 24, 24
};

u8* D_800C5F20[] = {
    (u8*)0x80203920, (u8*)0x80203E20, (u8*)0x80204320, (u8*)0x80204820,
    (u8*)0x80204AA0, (u8*)0x80204D20, (u8*)0x80204FA0, (u8*)0x802052A0,
    (u8*)0x802055A0, (u8*)0x802058A0, (u8*)0x80205A20, (u8*)0x80205BA0,
    (u8*)0x80205D20, (u8*)0x80206220, (u8*)0x80206720, (u8*)0x80206C20,
    (u8*)0x80206DA0, (u8*)0x80206F20, (u8*)0x802070A0, (u8*)0x802075A0,
    (u8*)0x80207AA0, (u8*)0x80207FA0, (u8*)0x802084A0, (u8*)0x802089A0,
    (u8*)0x80208EA0, (u8*)0x802091A0, (u8*)0x802094A0, (u8*)0x802097A0,
    (u8*)0x80209AA0, (u8*)0x80209DA0, (u8*)0x8020A0A0, (u8*)0x8020A4A0,
    (u8*)0x8020AF20, (u8*)0x8020B320, (u8*)0x8020B720, (u8*)0x8020BB20,
    (u8*)0x8020C160, (u8*)0x8020C7A0, (u8*)0x8020CAA0, (u8*)0x8020CDA0,
    (u8*)0x8020D0A0, (u8*)0x8020D4A0, (u8*)0x8020D8A0, (u8*)0x8020DCA0,
    (u8*)0x8020E0A0, (u8*)0x8020E4A0, (u8*)0x8020E8A0, (u8*)0x8020E9A0,
    (u8*)0x8020EAA0, (u8*)0x8020EBA0, (u8*)0x8020ECA0, (u8*)0x8020EDA0,
    (u8*)0x8020EEA0, (u8*)0x8020F2A0, (u8*)0x8020F6A0, (u8*)0x8020FAA0,
    (u8*)0x00000000, (u8*)0x80210020, (u8*)0x802101A0, (u8*)0x80210320,
    (u8*)0x802104A0, (u8*)0x80210620, (u8*)0x802107A0, (u8*)0x80210920
};

Mtx D_801720F0[0x180];
Mtx* D_801780F0;
Mtx* D_801780F4;
u16 D_801780F8;
u16 D_801780FA;
u16 D_801780FC;
u16 D_801780FE;
u16 D_80178100;
u16 D_80178102;
u8** D_80178104;
u8** D_80178108;
u8** D_8017810C;
u8** D_80178110;
u8** D_80178114;
u8** D_80178118;
u8** D_8017811C;
u8** D_80178120;
u8** D_80178124;
u8** D_80178128;

#define D_80200FA8 ((Vtx*)0x80200FA8)
#define D_802447E8 ((u8*)0x802447E8)
#define D_802651F8 ((u8*)0x802651F8)
#define D_802688F8 ((u16**)0x802688F8)

#define D_8020FB60 ((u8*)0x8020FB60) // array of texture images
#define D_8021F9E0 ((u8*)0x8021F9E0) // texture image
#define D_802201E0 ((u8*)0x802201E0) // texture image
#define D_802209E0 ((u8*)0x802209E0) // texture palette
#define D_80222220 ((u8*)0x80222220) // texture palette

#define D_802DB888 ((u8**)0x802DB888)
#define D_802EB278 ((u8**)0x802EB278)
#define D_802F93B8 ((u8**)0x802F93B8)
#define D_80310D00 ((u8**)0x80310D00)
#define D_80317F48 ((u8**)0x80317F48)
#define D_8032F940 ((u8**)0x8032F940)
#define D_80338810 ((u8**)0x80338810)
#define D_803440C8 ((u8**)0x803440C8)
#define D_80350AD8 ((u8**)0x80350AD8)

#define D_80202688 ((u16*)0x80202688) // palette
#define D_80202888 ((u16*)0x80202888) // palette
#define D_80202A88 ((u16*)0x80202A88) // palette

#define D_8024B5E8 ((u8*)0x8024B5E8)
#define D_8024B628 ((u8*)0x8024B628)

#define D_802651E8 ((u16*)0x802651E8) // palette

#define D_8027CEE8 (0x8027CEE8) // casts break matching
#define D_8027D2E8 (0x8027D2E8) // casts break matching
#define D_8027EEE8 (0x8027EEE8) // casts break matching
#define D_8027F2E8 (0x8027F2E8) // casts break matching

// RLE dst pointers
#define D_802CA8F8 ((u8*)0x802CA8F8)
#define D_802CAA90 ((u8*)0x802CAA90)
#define D_802CCCF8 ((u8*)0x802CCCF8)
#define D_802CCE90 ((u8*)0x802CCE90)
#define D_802CF290 ((u8*)0x802CF290)
#define D_802D1690 ((u8*)0x802D1690)
#define D_802E03A0 ((u8*)0x802E03A0)
#define D_802E03F0 ((u8*)0x802E03F0)
#define D_802E27A0 ((u8*)0x802E27A0)
#define D_802E27F0 ((u8*)0x802E27F0)
#define D_802E4BF0 ((u8*)0x802E4BF0)
#define D_802E6FF0 ((u8*)0x802E6FF0)
#define D_803003F0 ((u8*)0x803003F0)
#define D_803027F0 ((u8*)0x803027F0)
#define D_80320250 ((u8*)0x80320250)
#define D_803203F0 ((u8*)0x803203F0)
#define D_803205B0 ((u8*)0x803205B0)
#define D_80320748 ((u8*)0x80320748)
#define D_80321B50 ((u8*)0x80321B50)
#define D_803227F0 ((u8*)0x803227F0)
#define D_803229B0 ((u8*)0x803229B0)
#define D_80322B48 ((u8*)0x80322B48)
#define D_80324BF0 ((u8*)0x80324BF0)
#define D_80324DB0 ((u8*)0x80324DB0)
#define D_80324F48 ((u8*)0x80324F48)
#define D_80326FF0 ((u8*)0x80326FF0)
#define D_803271B0 ((u8*)0x803271B0)
#define D_80327348 ((u8*)0x80327348)

// forward declarations
u16 func_8000FBF4(s16* arg0, s16* arg1);


void func_80009940(void) {
    u16 top_index;
    u16 middle_index;
    u16 back_index;
    u16 front_index;
    s16 index;

    D_801780F8 = 0;
    D_801780FA = 0;
    D_801780FC = 0;
    D_801780FE = 0;
    D_80178100 = 0;
    D_80178102 = 0;
    back_index = 0;
    middle_index = 0;
    front_index = 0;
    top_index = 0;
    if (D_800BE674) {
        for (index = 0xCF; index >= 0; index--) {
            if (gActors[index].flags & ACTOR_FLAG_DRAW) {
                if (gActors[index].posZ.whole < gActorDepthBack) {
                    gActorsBack[back_index++] = index;
                }
                else if (gActors[index].posZ.whole < gActorDepthMiddle) {
                    gActorsFront[front_index++] = index;
                }
                else {
                    gActorsTop[top_index++] = index;
                }
            }
        }
    }
    else {
        for (index = 0xCF; index >= 0; index--) {
            if (gActors[index].flags & ACTOR_FLAG_DRAW) {
                if (gActors[index].posZ.whole < gActorDepthBack) {
                    gActorsBack[back_index++] = index;
                }
                else if (gActors[index].posZ.whole < gActorDepthMiddle) {
                    gActorsMiddle[middle_index++] = index;
                }
                else if (gActors[index].posZ.whole < gActorDepthFront) {
                    gActorsFront[front_index++] = index;
                }
                else {
                    gActorsTop[top_index++] = index;
                }
            }
        }
    }
    gActorsBack[back_index] = -1;
    gActorsMiddle[middle_index] = -1;
    gActorsFront[front_index] = -1;
    gActorsTop[top_index] = -1;
}

void func_80009BE0(void) {
}

void func_80009BE8(s16* arg0) {
    s8* var_a0;
    s8* var_a1;
    u16 graphic_index;
    s32 xl;
    s32 xh;
    s16 sp430[0xC6]; // TODO: length
    Gfx** sp42C;
    u16** sp428;
    u16 var_t0_2;
    u16 sp424;
    u16 sp422;
    u16 temp_v0;
    u16 sp41E;
    u16 actor_index;
    u16 index;
    s16 pos_z;
    s16 pos_y;
    s32 angle;
    f32 temp_f2;
    f32 temp_f12;
    f32 angle_x;
    f32 angle_y;
    s32 xh_2;
    s32 xl_2;
    s32 yl;
    s32 yh;
    s16 sp3EE;
    s16 sp3EC;
    s16 pos_x;
    s32 var_t2;
    s32 var_t3;
    s16 delta_x;
    s16 delta_y;
    u16 index_x;
    u16 index_y;

    if (gDebugBitfield & 4) {
        guPerspective(&gCurrentGfxData->matrices[0], &sp422, 30.0f, 1.33f, 64.0f, 4096.0f, 1.0f);
    }
    else {
        sp422 = 0xFFFF;
        guOrtho(&gCurrentGfxData->matrices[0], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    }
    guOrtho(&gCurrentGfxData->matrices[2], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    gSPPerspNormalize(gDisplayListHead++, sp422);
    gSPPerspNormalize(gDisplayListHead++, 0xFFFF);

    temp_v0 = func_8000FBF4(arg0, sp430);
    gSPDisplayList(gDisplayListHead++, D_800E39C0);

    sp424 = gCurrentFramebufferIndex * 0xC0;

    for (index = 0; index < temp_v0; index++) {
        actor_index = sp430[index];
        pos_x = gActors[actor_index].posX.whole;
        if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK4 | ACTOR_FLAG_FREEZE_POS)) == ACTOR_FLAG_FREEZE_POS) {
            pos_y = gActors[actor_index].posY.whole;
        }
        else {
            pos_y = gActors[actor_index].posY.whole + gCamShakeV;
        }
        pos_z = gActors[actor_index].posZ.whole;

        if ((gActors[actor_index].graphicIndex & 0xF800) <= 0x3800) {
            sp41E = gActors[actor_index].graphicIndex + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                if (gActors[actor_index].flags & ACTOR_FLAG_UNK27) {
                    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                        delta_x = -(D_800C5608[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockX);
                    }
                    else {
                        delta_x = D_800C5608[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockX;
                    }
                    delta_y = D_800C592C[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockY;
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x + delta_x, pos_y + delta_y, pos_z);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, gActors[actor_index].unk_188);
                }
            }
            else {
                guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
            }
        }
        else {
            switch ((gActors[actor_index].graphicIndex & 0xF800)) {
            case 0x6800:
                if (D_801780FA >= 0x10) {
                    continue;
                }
                graphic_index = gActors[actor_index].graphicIndex & 0x7FF;
                Trouble_RLE_Type2(D_80178104[graphic_index], (gCurrentFramebufferIndex) ? D_800C5C90[D_801780FA] : D_800C5CD0[D_801780FA], 0x900);

                sp41E = ((gCurrentFramebufferIndex) ? D_800C5C50[D_801780FA] : D_800C5C70[D_801780FA]) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                D_801780FA++;
                var_a0 = D_800C5D14;
                var_a1 = D_800C5D1C;
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex],
                                ((gActors[actor_index].scaleX == 1.0) ? ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -var_a0[graphic_index] : var_a0[graphic_index]) : (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -var_a0[graphic_index] : var_a0[graphic_index])) * gActors[actor_index].scaleX) + pos_x,
                                ((gActors[actor_index].scaleY == 1.0) ? var_a1[graphic_index] : (var_a1[graphic_index] * gActors[actor_index].scaleY)) + pos_y,
                                gActors[actor_index].unk_188);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex],
                                ((gActors[actor_index].scaleX == 1.0) ? ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -var_a0[graphic_index] : var_a0[graphic_index]) : (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? -var_a0[graphic_index] : var_a0[graphic_index])) * gActors[actor_index].scaleX) + pos_x,
                                ((gActors[actor_index].scaleY == 1.0) ? var_a1[graphic_index] : (var_a1[graphic_index] * gActors[actor_index].scaleY)) + pos_y,
                                pos_z);
                }
                break;
            case 0x5800:
                sp41E = ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0) + (((D_800BE6A4 & 0xFFFF) + gCurrentFramebufferIndex) * 2) + 2;
                if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                    delta_x = -(D_800C5608[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockX);
                }
                else {
                    delta_x = D_800C5608[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockX;
                }
                delta_y = D_800C592C[gPlayerActor.graphicIndex & 0x7FF] + gPlayerShockY;
                switch (gPlayerActor.graphicFlags & (ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE)) {
                case 0:
                    sp3EE = delta_x;
                    sp3EC = delta_y;
                    break;
                case 1:
                    sp3EE = (gPlayerActor.unk_120 * delta_x);
                    sp3EC = (gPlayerActor.unk_120 * delta_y);
                    break;
                case 8:
                    angle = (gPlayerActor.rotateZ / 360.0f) * 1024.0f;
                    temp_f2 = delta_x;
                    angle_x = COS(angle);
                    angle_y = SIN(angle);
                    temp_f12 = delta_y;
                    sp3EE = ((angle_x * temp_f2) - (angle_y * temp_f12));
                    sp3EC = ((angle_x * temp_f12) + (angle_y * temp_f2));
                    break;
                case 9:
                    angle = (gPlayerActor.rotateZ / 360.0f) * 1024.0f;
                    temp_f2 = delta_x;
                    angle_x = COS(angle);
                    angle_y = SIN(angle);
                    temp_f12 = delta_y;
                    sp3EE = (gPlayerActor.unk_120 * ((angle_x * temp_f2) - (angle_y * temp_f12)));
                    sp3EC = (gPlayerActor.unk_120 * ((angle_y * temp_f2) + (angle_x * temp_f12)));
                    break;
                }
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], (pos_x + sp3EE), (pos_y + sp3EC), gPlayerData.unk_0C[0]);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], (pos_x + sp3EE), (pos_y + sp3EC), pos_z);
                }
                D_80137480[(D_800BE6A4 & 0x7FFF) + gCurrentFramebufferIndex] = gPlayerActor.graphicIndex + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 0x8000 : 0x0);
                break;
            case 0x8000:
                xl_2 = gActors[actor_index].hitboxBX0 + pos_x + 160;
                if (xl_2 < 0) {
                    xl_2 = 0;
                }
                xh_2 = gActors[actor_index].hitboxBX1 + pos_x + 160;
                if (xh_2 > 0x13F) {
                    xh_2 = 0x13F;
                }

                yl = ((-pos_y) - gActors[actor_index].hitboxBY0) + 120;
                if (yl < 0) {
                    yl = 0;
                }
                yh = ((-pos_y) - gActors[actor_index].hitboxBY1) + 120;
                if (yh > 0xEF) {
                    yh = 0xEF;
                }
                if (gActors[actor_index].graphicIndex == 0x8000) {
                    var_t0_2 = ((((gActors[actor_index].colorR & 0x7C) << 9) & 0xFFFF) | (((gActors[actor_index].colorG & 0x7C) << 4) & 0xFFFF) | (((gActors[actor_index].colorB & 0x7C) >> 1) & 0xFFFF) | 1) & 0xFFFF;
                }
                else {
                    var_t0_2 = gActors[actor_index].var_150_s16[1];
                }

                gSPDisplayList(gDisplayListHead++, D_800E3978);
                gDPSetFillColor(gDisplayListHead++, (var_t0_2 * 0x10000) | var_t0_2);
                gDPFillRectangle(gDisplayListHead++, xl_2, yl, xh_2, yh);
                gSPDisplayList(gDisplayListHead++, D_800E3A30);
                continue;
            case 0x7800:
                Trouble_RLE_Type2(D_80178108[gActors[actor_index].graphicIndex & 0x7FF], ((gCurrentFramebufferIndex) ? D_80320250 : D_80321B50), 0x1900);
                sp41E = ((gCurrentFramebufferIndex) ? 0x1800 : 0x1802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                break;
            case 0x6000:
                if (gActors[actor_index].graphicIndex < 0x6400) {
                    switch (D_801780FC++) {
                    case 0:
                        Trouble_RLE_Type2(D_8017810C[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_803205B0 : D_803229B0, 0x2400);
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1800 : 0x1802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        Trouble_RLE_Type2(D_8017810C[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_80324DB0 : D_803271B0, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1804 : 0x1806) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                else {
                    switch (D_801780FC++) {
                    case 0:
                        Trouble_RLE_Type2(D_80178110[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_803003F0 : D_803027F0, 0x2400);
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1000 : 0x1002) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        // addresses are the same here in both ternary branches
                        Trouble_RLE_Type2(D_80178110[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_803027F0 : D_803027F0, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1004 : 0x1006) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, gActors[actor_index].unk_188);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                }
                break;
            case 0x4000:
                if (gActors[actor_index].graphicIndex < 0x4400) {
                    switch (D_801780FE++) {
                    case 0:
                        Trouble_RLE_Type2(D_80178114[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_80320748 : D_80322B48, 0x2400);
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1800 : 0x1802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        Trouble_RLE_Type2(D_80178114[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_80324F48 : D_80327348, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1804 : 0x1806) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                else {
                    switch (D_801780FE++) {
                    case 0:
                        Trouble_RLE_Type2(D_80178118[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_802E03F0 : D_802E27F0, 0x2400);

                        sp41E = ((gCurrentFramebufferIndex) ? 0x800 : 0x802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        Trouble_RLE_Type2(D_80178118[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_802E4BF0 : D_802E6FF0, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x804 : 0x806) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, gActors[actor_index].unk_188);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                }
                break;
            case 0x4800:
                if (gActors[actor_index].graphicIndex < 0x4C00) {
                    switch (D_80178100++) {
                    case 0:
                        Trouble_RLE_Type2(D_8017811C[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_802CAA90 : D_802CCE90, 0x2400);
                        sp41E = ((gCurrentFramebufferIndex) ? 0x2800 : 0x2802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        Trouble_RLE_Type2(D_8017811C[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_802CF290 : D_802D1690, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x2804 : 0x2806) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                else {
                    switch (D_80178100++) {
                    case 0:
                        Trouble_RLE_Type2(D_80178120[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_803203F0 : D_803227F0, 0x2400);
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1800 : 0x1802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    case 1:
                        Trouble_RLE_Type2(D_80178120[gActors[actor_index].graphicIndex & 0x3FF], (gCurrentFramebufferIndex) ? D_80324BF0 : D_80326FF0, 0x2400);
                        /* fallthrough */
                    default:
                        sp41E = ((gCurrentFramebufferIndex) ? 0x1804 : 0x1806) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                        break;
                    }
                }
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, gActors[actor_index].unk_188);
                }
                else {
                    guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                }
                break;
            case 0x5000:
                Trouble_RLE_Type2(D_80178124[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_802CA8F8 : D_802CCCF8, 0x2400);
                sp41E = ((gCurrentFramebufferIndex) ? 0x2800 : 0x2802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                break;
            case 0x7000:
                Trouble_RLE_Type2(D_80178128[gActors[actor_index].graphicIndex & 0x7FF], (gCurrentFramebufferIndex) ? D_802E03A0 : D_802E27A0, 0x2400);
                sp41E = ((gCurrentFramebufferIndex) ? 0x800 : 0x802) + ((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) ? 1 : 0);
                guTranslate(&gActors[actor_index].matrices[gCurrentFramebufferIndex], pos_x, pos_y, pos_z);
                break;
            }
        }
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK6) {
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gActors[actor_index].matrices[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        }
        else if (sp422 != 0xFFFF) {
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(gCurrentGfxData), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[3]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gActors[actor_index].matrices[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
        }
        else {
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(gCurrentGfxData), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gActors[actor_index].matrices[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        }
        gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK28) {
            gSPDisplayList(gDisplayListHead++, D_800E3998);
            if (gActors[actor_index].flags & ACTOR_FLAG_UNK30) {
                gDPLoadTLUT_pal16(gDisplayListHead++, 0, D_802651F8);

                yl = -pos_y + 92;
                yh = -pos_y + 107;
                if (gActors[actor_index].flags & ACTOR_FLAG_UNK29) {
                    xl = pos_x + 32;
                    xh = pos_x + 159;

                    for (index_x = 0; index_x < 4; index_x++) {
                        gDPLoadTextureBlock_4b(gDisplayListHead++, D_8027CEE8 + index_x * 0x800, G_IM_FMT_CI, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                        gSPTextureRectangle(gDisplayListHead++, xl << 2, yl << 2, xh << 2, yh << 2, 0, 0, 0, 0x1000, 0x400);
                        gDPLoadTextureBlock_4b(gDisplayListHead++, D_8027D2E8 + index_x * 0x800, G_IM_FMT_CI, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                        gSPTextureRectangle(gDisplayListHead++, (xl + 128) << 2, yl << 2, (xh + 128) << 2, yh << 2, 0, 0, 0, 0x1000, 0x400);
                        yl += 20;
                        yh += 20;
                    }
                }
                else {
                    xl = pos_x + 32;
                    xh = pos_x + 159;
                    for (index_x = 0; index_x < 3; index_x++) {
                        gDPLoadTextureBlock_4b(gDisplayListHead++, D_8027EEE8 + index_x * 0x800, G_IM_FMT_CI, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                        gSPTextureRectangle(gDisplayListHead++, xl << 2, yl << 2, xh << 2, yh << 2, 0, 0, 0, 0x1000, 0x400);
                        gDPLoadTextureBlock_4b(gDisplayListHead++, D_8027F2E8 + index_x * 0x800, G_IM_FMT_CI, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                        gSPTextureRectangle(gDisplayListHead++, (xl + 128) << 2, yl << 2, (xh + 128) << 2, yh << 2, 0, 0, 0, 0x1000, 0x400);
                        yl += 20;
                        yh += 20;
                    }
                }
            }
            else if (gActors[actor_index].flags & ACTOR_FLAG_UNK29) {
                xl_2 = (pos_x - ((s32) (gActors[actor_index].hitboxBX0 * gActors[actor_index].hitboxBX1) / 2)) + 160;
                xh_2 = (gActors[actor_index].hitboxBX0 + xl_2) - 1;
                yl = (-pos_y - ((s32) (gActors[actor_index].hitboxBY0 * gActors[actor_index].hitboxBY1) / 2)) + 120;
                yh = (gActors[actor_index].hitboxBY0 + yl) - 1;
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE) {
                    gDPLoadTLUT_pal256(gDisplayListHead++, gActors[actor_index].palette_180);
                }
                else {
                    gDPLoadTLUT_pal256(gDisplayListHead++, D_802688F8[gActors[actor_index].graphicIndex / 2]);
                }

                for (index_x = 0; index_x < gActors[actor_index].hitboxBY1; index_x++) {
                    for (index_y = 0, var_t2 = xl_2, var_t3 = xh_2; index_y < gActors[actor_index].hitboxBX1; index_y++) {
                        gDPLoadTextureBlock(gDisplayListHead++, gActors[actor_index].texture_17C + gActors[actor_index].hitboxBX0 * gActors[actor_index].hitboxBY0 * ((index_x * gActors[actor_index].hitboxBX1) + index_y), G_IM_FMT_CI, G_IM_SIZ_8b, gActors[actor_index].hitboxBX0, gActors[actor_index].hitboxBY0, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                        gSPCustomScisTextureRectangle(gDisplayListHead++, var_t2, yl, var_t3, yh, 0, 0, 0, 0x1000, 0x400);
                        var_t2 += gActors[actor_index].hitboxBX0;
                        var_t3 += gActors[actor_index].hitboxBX0;
                    }
                    yl += gActors[actor_index].hitboxBY0;
                    yh += gActors[actor_index].hitboxBY0;
                }
            }
            else {
                xl_2 = pos_x + gActors[actor_index].hitboxBX0 + 160;
                xh_2 = pos_x + gActors[actor_index].hitboxBX1 + 159;
                yl = (-pos_y - gActors[actor_index].hitboxBY0) + 120;
                yh = (-pos_y - gActors[actor_index].hitboxBY1) + 119;

                gDPLoadTLUT_pal256(gDisplayListHead++, D_802688F8[gActors[actor_index].graphicIndex / 2]);
                gDPLoadTextureBlock(gDisplayListHead++, gActors[actor_index].texture_17C, G_IM_FMT_CI, G_IM_SIZ_8b, gActors[actor_index].hitboxBX1 - gActors[actor_index].hitboxBX0, gActors[actor_index].hitboxBY0 - gActors[actor_index].hitboxBY1, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPCustomScisTextureRectangle(gDisplayListHead++, xl_2, yl, xh_2, yh, 0, 0, 0, 0x1000, 0x400);
            }
            gSPDisplayList(gDisplayListHead++, D_800E3A88);
            continue;
        }
        if ((gActors[actor_index].graphicIndex >= 0x2D2) && (gActors[actor_index].graphicIndex < 0x374)) {
            gSPDisplayList(gDisplayListHead++, D_800E3998);
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE) {
                gDPLoadTLUT_pal16(gDisplayListHead++, 0, gActors[actor_index].palette_18C);
            }
            else {
                gDPLoadTLUT_pal16(gDisplayListHead++, 0, D_802651E8);
            }

            xl_2 = pos_x + 156;
            xh_2 = pos_x + 163;
            yl = -pos_y + 112;
            yh = -pos_y + 127;
            if (gActors[actor_index].graphicIndex % 4) {
                gDPLoadTextureBlock_4b(gDisplayListHead++, D_8024B628 + gActors[actor_index].graphicIndex * 0x20, G_IM_FMT_CI, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPCustomScisTextureRectangle(gDisplayListHead++, xl_2, yl, xh_2, yh, 0, 0, 0, 0x1000, 0x400);
            }
            else {
                gDPLoadTextureBlock_4b(gDisplayListHead++, D_8024B5E8 + gActors[actor_index].graphicIndex * 0x20, G_IM_FMT_CI, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                gSPCustomScisTextureRectangle(gDisplayListHead++, xl_2, yl, xh_2, yh, 0, 8, 0, 0x1000, 0x400);
            }
            gSPDisplayList(gDisplayListHead++, D_800E3A88);
            continue;
        }

        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTZ) {
            guRotate(&D_801720F0[sp424 + D_801780F8], gActors[actor_index].rotateZ, 0.0f, 0.0f, 1.0f);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&D_801720F0[D_801780F8 + sp424]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_801780F8++;
        }
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTX) {
            guRotate(&D_801720F0[sp424 + D_801780F8], gActors[actor_index].rotateX, 1.0f, 0.0f, 0.0f);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&D_801720F0[D_801780F8 + sp424]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_801780F8++;
        }
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_ROTY) {
            guRotate(&D_801720F0[sp424 + D_801780F8], gActors[actor_index].rotateY, 0.0f, 1.0f, 0.0f);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&D_801720F0[D_801780F8 + sp424]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_801780F8++;
        }
        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_SCALE) {
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_SCALEZ) {
                guScale(&D_801720F0[sp424 + D_801780F8], gActors[actor_index].scaleX, gActors[actor_index].scaleY, gActors[actor_index].unk_12C);
            }
            else {
                guScale(&D_801720F0[sp424 + D_801780F8], gActors[actor_index].scaleX, gActors[actor_index].scaleY, 1.0f);
            }
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&D_801720F0[D_801780F8 + sp424]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_801780F8++;
        }

        if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_3DOBJ) {
            switch (D_800BE70C) {
            case 0:
                gSPDisplayList(gDisplayListHead++, D_800E3AC8);
                break;
            case 1:
                gSPDisplayList(gDisplayListHead++, D_800E3B60);
                break;
            case 2:
                gSPDisplayList(gDisplayListHead++, D_800E3BF0);
                break;
            case 3:
                if ((gActors[actor_index].actorType == ACTORTYPE_OVL3_W2_3DPLATFORM_8) && (gActors[actor_index].var_0D8 < 7)) {
                    gSPDisplayList(gDisplayListHead++, D_800E3CC8);
                }
                else {
                    gSPDisplayList(gDisplayListHead++, D_800E3C60);
                }
                break;
            case 5:
                if (pos_z < 0) {
                    gSPDisplayList(gDisplayListHead++, D_800E3B60);
                }
                else {
                    gSPDisplayList(gDisplayListHead++, D_800E3AC8);
                }
                break;
            case 4:
                gSPDisplayList(gDisplayListHead++, D_800E3CC8);
                break;
            }

            gSPDisplayList(gDisplayListHead++, gActors[actor_index].dlist_17C);
            gSPDisplayList(gDisplayListHead++, D_800E3A50);
            continue;
        }
        if (((gActors[actor_index].colorA ^ 0xFF) | gActors[actor_index].colorR | gActors[actor_index].colorG | gActors[actor_index].colorB) != 0) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, gActors[actor_index].colorR, gActors[actor_index].colorG, gActors[actor_index].colorB, gActors[actor_index].colorA);
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK4) {
                gDPSetCombineLERP(gDisplayListHead++, 0, ENVIRONMENT, PRIMITIVE, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, 0, ENVIRONMENT, PRIMITIVE, TEXEL0, TEXEL0, 0, PRIMITIVE, 0);
            }
            else {
                gDPSetCombineLERP(gDisplayListHead++, ENVIRONMENT, 0, PRIMITIVE, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, ENVIRONMENT, 0, PRIMITIVE, TEXEL0, TEXEL0, 0, PRIMITIVE, 0);
            }
        }
        else {
            gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
        }

        // sameline to match
        switch (sp41E & 0xF800) {
        case    0x0: sp42C = D_801376DC; sp428 = D_802688F8; break;
        case  0x800: sp42C = D_801376EC; sp428 = D_801376C0; break;
        case 0x1000: sp42C = D_801376F4; sp428 = D_801376C4; break;
        case 0x1800: sp42C = D_801376FC; sp428 = D_801376C8; break;
        case 0x2000: sp42C = D_80137704; sp428 = D_801376CC; break;
        case 0x2800: sp42C = D_8013770C; sp428 = D_801376D0; break;
        case 0x3000: sp42C = D_80137714; sp428 = D_801376D4; break;
        case 0x3800: sp42C = D_8013771C; sp428 = D_801376D8; break;
        }
        if (gActors[actor_index].flags & ACTOR_FLAG_UNK27) {
            if (((gActors[actor_index].graphicIndex & 0xF800) == 0x5800) || ((gActors[actor_index].graphicIndex >= 2) && (gActors[actor_index].graphicIndex < 5))) {
                if (gPlayerActor.graphicFlags & ACTOR_GFLAG_PALETTE) {
                    gDPLoadTLUT_pal256(gDisplayListHead++, gActors[actor_index].palette_18C);
                }
                else {
                    if (gPlayerActor.graphicIndex < 0x5927) {
                        gDPLoadTLUT_pal256(gDisplayListHead++, D_80202688);
                    }
                    else {
                        if (gPlayerActor.graphicIndex < 0x5A46) {
                            gDPLoadTLUT_pal256(gDisplayListHead++, D_80202888);
                        }
                        else {
                            gDPLoadTLUT_pal256(gDisplayListHead++, D_80202A88);
                        }
                    }
                }
            }
        }
        else {
            sp41E &= 0x7FF;
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE) {
                gDPLoadTLUT_pal256(gDisplayListHead++, gActors[actor_index].palette_18C);
            }
            else {
                if (sp41E >= 0x374) {
                    gDPLoadTLUT_pal16(gDisplayListHead++, 0, D_802651F8);
                }
                else {
                    gDPLoadTLUT_pal256(gDisplayListHead++, sp428[sp41E / 2]);
                }
            }
        }
        if (sp41E >= 0x374) {
            gSPVertex(gDisplayListHead++, D_80200FA8, 3, 0);
            gDPLoadTextureBlock_4b(gDisplayListHead++, D_802447E8 + sp41E * 0x40, G_IM_FMT_CI, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            gSP1Triangle(gDisplayListHead++, 0, 2, 1, 0);
        }
        else {
            if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK15) {
                gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
                gSPDisplayList(gDisplayListHead++, sp42C[sp41E]);
                gDPSetTextureFilter(gDisplayListHead++, G_TF_POINT);
            }
            else {
                gSPDisplayList(gDisplayListHead++, sp42C[sp41E]);
            }
        }
    }
}

void func_8000DD6C(void) {
    u16 var_fp;
    u16 temp_t8;
    s32 xh;
    s32 xl;
    s32 yl;
    s32 yh;
    s32 yh_2;
    s32 yl_2;
    Gfx** var_s5;

    if (D_800BE710) {
        gSPDisplayList(gDisplayListHead++, D_800E39C0);
        gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        var_s5 = D_801376DC;
        for (var_fp = 0; var_fp < 0x40; var_fp++) {
            if (gStaticObjects[var_fp].graphicIndex != 0) {
                guTranslate(&gStaticObjects[var_fp].translateMtxs[gCurrentFramebufferIndex], gStaticObjects[var_fp].posX.whole, gStaticObjects[var_fp].posY.whole - gCamShakeV, 0.0f);
                gSPMatrix(gDisplayListHead++, K0_TO_PHYS(gCurrentGfxData), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
                gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[3]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gStaticObjects[var_fp].translateMtxs[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
                gDPLoadTLUT_pal256(gDisplayListHead++, gStaticObjects[var_fp].palette);
                gSPDisplayList(gDisplayListHead++, var_s5[0x44 + gStaticObjects[var_fp].graphicIndex * 2]);
            }
        }
    }
    else {
        gSPDisplayList(gDisplayListHead++, D_800E3998);
        for (var_fp = 0; var_fp < 0x40; var_fp++) {
            if (gStaticObjects[var_fp].graphicIndex != 0) {
                temp_t8 = gStaticObjects[var_fp].graphicIndex - 1;
                if (temp_t8 == 0x1F) {
                    xl = gStaticObjects[var_fp].posX.whole + 0x88;
                    xh = xl + 47;
                    yl = (-gStaticObjects[var_fp].posY.whole - gCamShakeV) + 0x60;
                    yh = yl + 23;
                    yl_2 = yl + 24;
                    yh_2 = yl + 55;
                    gDPLoadTLUT_pal256(gDisplayListHead++, gStaticObjects[var_fp].palette);
                    gDPLoadTextureBlock(gDisplayListHead++, D_800C5F20[temp_t8], G_IM_FMT_CI, G_IM_SIZ_8b, 48, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                    gSPCustomScisTextureRectangle(gDisplayListHead++, xl, yl, xh, yh, 0, 0, 0, 0x1000, 0x400);

                    gDPLoadTextureBlock(gDisplayListHead++, D_800C5F20[temp_t8] + 0x480, G_IM_FMT_CI, G_IM_SIZ_8b, 48, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                    gSPCustomScisTextureRectangle(gDisplayListHead++, xl, yl_2, xh, yh_2, 0, 0, 0, 0x1000, 0x400);
                }
                else {
                    xl = gStaticObjects[var_fp].posX.whole + D_800C5D20[temp_t8] + 0xA0;
                    yh = (D_800C5E20[temp_t8] + xl) - 1;
                    yl = ((-gStaticObjects[var_fp].posY.whole - gCamShakeV) - D_800C5DA0[temp_t8]) + 0x78;
                    yl_2 = (D_800C5EA0[temp_t8] + yl) - 1;

                    gDPLoadTLUT_pal256(gDisplayListHead++, gStaticObjects[var_fp].palette);
                    gDPLoadTextureBlock(gDisplayListHead++, D_800C5F20[temp_t8], G_IM_FMT_CI, G_IM_SIZ_8b, D_800C5E20[temp_t8], D_800C5EA0[temp_t8], 0,  G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                    gDPLoadTextureBlock(gDisplayListHead++, D_800C5F20[temp_t8], G_IM_FMT_CI, G_IM_SIZ_8b, D_800C5E20[temp_t8], D_800C5EA0[temp_t8], 0,  G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                    gSPCustomScisTextureRectangle(gDisplayListHead++, xl, yl, yh, yl_2, 0, 0, 0, 0x1000, 0x400);
                }
            }
        }
    }
}

void func_8000EA88(void) {
    Gfx** display_list;
    u16 index;

    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gSPDisplayList(gDisplayListHead++, D_800E39C0);
    display_list = D_801376DC;
    for (index = 0; index < 0x40; index++) {
        if (gPortraits[index].flags != 0) {
            guTranslate(&gPortraits[index].translateMtxs[gCurrentFramebufferIndex], gPortraits[index].posX.whole, gPortraits[index].posY.whole, 0.0f);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
            gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gPortraits[index].translateMtxs[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            if (gPortraits[index].flags & ACTOR_GFLAG_SCALE) {
                guScale(&D_801720F0[gCurrentFramebufferIndex * 0xC0 + D_801780F8], gPortraits[index].scaleX, gPortraits[index].scaleY, 1.0f);
                gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&D_801720F0[D_801780F8 + gCurrentFramebufferIndex * 0xC0]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                D_801780F8++;
            }
            if (gPortraits[index].alpha == 0xFF) {
                gDPSetCombineMode(gDisplayListHead++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            }
            else {
                gDPSetPrimColor(gDisplayListHead++, 0, 0, gPortraitTint, gPortraitTint, gPortraitTint, gPortraits[index].alpha);
                gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            }
            if (gPortraits[index].graphicIndex >= 0x374) {
                gDPLoadTLUT_pal16(gDisplayListHead++, 0, D_802651F8);
            }
            else if (gPortraits[index].flags & ACTOR_GFLAG_UNK14) {
                if (gPortraits[index].flags & ACTOR_GFLAG_PALETTE) {
                    gDPLoadTLUT_pal256(gDisplayListHead++, gPortraits[index].palette);
                }
                else {
                    gDPLoadTLUT_pal256(gDisplayListHead++, D_802688F8[gPortraits[index].graphicIndex / 2]);
                }
            }
            else {
                if (gPortraits[index].flags & ACTOR_GFLAG_PALETTE) {
                    gDPLoadTLUT_pal16(gDisplayListHead++, 0, gPortraits[index].palette);
                }
                else {
                    gDPLoadTLUT_pal16(gDisplayListHead++, 0, D_802688F8[gPortraits[index].graphicIndex / 2]);
                }
            }
            if (gPortraits[index].graphicIndex >= 0x374) {
                gSPVertex(gDisplayListHead++, D_80200FA8, 3, 0);
                gDPLoadTextureBlock_4b(gDisplayListHead++,
                    &D_802447E8[gPortraits[index].graphicIndex << 6],
                    G_IM_FMT_CI, 16, 16, 0,
                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMASK, G_TX_NOMASK,
                    G_TX_NOLOD, G_TX_NOLOD
                );
                gSP1Triangle(gDisplayListHead++, 0, 2, 1, 0);
            }
            else {
                gSPDisplayList(gDisplayListHead++, display_list[gPortraits[index].graphicIndex]);
            }
        }
    }
}

void func_8000F290(void) {
    s32 yl_1;
    s32 xl_0;
    s32 xh_0;
    s32 yl_0;
    s32 yh_0;
    s32 yh_1;
    s32 pad2;

    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gSPDisplayList(gDisplayListHead++, D_800E3998);
    if (gLifebar.flags != 0) {
        guTranslate(&gLifebar.translateMtxs[gCurrentFramebufferIndex], gLifebar.posX.whole, gLifebar.posY.whole, 0.0f);
        gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
        gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gLifebar.translateMtxs[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPLoadTLUT_pal256(gDisplayListHead++, D_802209E0);
        xl_0 = gLifebar.posX.whole + 96;
        xh_0 = xl_0 + 127;
        yl_0 = -gLifebar.posY.whole + 104;
        yh_0 = yl_0 + 15;
        yl_1 = yl_0 + 16;
        yh_1 = yl_0 + 31;
        gDPLoadTextureBlock(
            gDisplayListHead++,
            D_8021F9E0,
            G_IM_FMT_CI, G_IM_SIZ_8b, 128, 16, 0,
            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
            G_TX_NOMASK, G_TX_NOMASK,
            G_TX_NOLOD, G_TX_NOLOD
        );
        gSPTextureRectangle(
            gDisplayListHead++,
            MAX(0, xl_0) << 2,
            MAX(0, yl_0) << 2,
            MAX(0, xh_0) << 2,
            MAX(0, yh_0) << 2,
            G_TX_RENDERTILE,
            MIN_DIFF(0, xl_0) << 5,
            MIN_DIFF(0, yl_0) << 5,
            0x1000,
            0x0400
        );
        gDPLoadTextureBlock(
            gDisplayListHead++,
            D_802201E0,
            G_IM_FMT_CI, G_IM_SIZ_8b, 128, 16, 0,
            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
            G_TX_NOMASK, G_TX_NOMASK,
            G_TX_NOLOD, G_TX_NOLOD
        );
        gSPTextureRectangle(
            gDisplayListHead++,
            MAX(0, xl_0) << 2,
            MAX(0, yl_1) << 2,
            MAX(0, xh_0) << 2,
            MAX(0, yh_1) << 2,
            G_TX_RENDERTILE,
            MIN_DIFF(0, xl_0) << 5,
            MIN_DIFF(0, yl_1) << 5,
            0x1000,
            0x0400
        );
    }
    if (gLifebarHead.flags != 0) {
        guTranslate(&gLifebarHead.translateMtxs[gCurrentFramebufferIndex], gLifebarHead.posX.whole, gLifebarHead.posY.whole, 0.0f);
        gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gCurrentGfxData->matrices[2]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
        gSPMatrix(gDisplayListHead++, K0_TO_PHYS(&gLifebarHead.translateMtxs[gCurrentFramebufferIndex]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        xl_0 = gLifebarHead.posX.whole + 148;
        xh_0 = gLifebarHead.posX.whole + 171;
        yl_0 = -gLifebarHead.posY.whole + 108;
        yh_0 = -gLifebarHead.posY.whole + 131;
        gDPLoadTLUT_pal256(gDisplayListHead++, D_80222220);
        gDPLoadTextureBlock(
            gDisplayListHead++,
            D_8020FB60 + (gLifebarHead.graphicIndex * 0x120),
            G_IM_FMT_CI, G_IM_SIZ_8b, 24, 24, 0,
            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
            G_TX_NOMASK, G_TX_NOMASK,
            G_TX_NOLOD, G_TX_NOLOD
        );
        gSPTextureRectangle(
            gDisplayListHead++,
            MAX(0, xl_0) << 2,
            MAX(0, yl_0) << 2,
            MAX(0, xh_0) << 2,
            MAX(0, yh_0) << 2,
            G_TX_RENDERTILE,
            MIN_DIFF(0, xl_0) << 5,
            MIN_DIFF(0, yl_0) << 5,
            0x1000,
            0x0400
        );
    }
    gSPDisplayList(gDisplayListHead++, D_800E3A88);
}

u16 func_8000FBF4(s16* arg0, s16* arg1) {
    s32 y;
    s32 index;
    s16 actor_index_2;
    u16 var_a1_5;
    s32 arg1_count;
    s32 actor_index;
    s16 actor_index_1;
    s16 actor_pos[0xD0];
    s16* graphic_list;
    s32 arg1_index;

    switch (D_800BE6A8) {
    case 0:
        break;

    case 1:
        actor_pos[0] = 0x7FF0 - ((SQ(gPlayerActor.posX.whole) + (SQ(gPlayerActor.posY.whole) * 6)) / 64);
        for (actor_index = 1; actor_index != 0x30; actor_index++) {
            actor_pos[actor_index] = (actor_pos[0] + gActors[actor_index].posZ.whole) - gPlayerActor.posZ.whole;
        }

        for (; actor_index < 0x80; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if ((actor_index == gPlayerActor.parentIndex) && (gPlayerActor.flags & ACTOR_FLAG_ATTACHED)) {
                    actor_pos[actor_index] = actor_pos[0] - 1;
                }
                else {
                    actor_pos[actor_index] = 0x7FF8 - ((SQ(gActors[actor_index].posX.whole) + (SQ(gActors[actor_index].posY.whole) * 6)) / 64);
                }
            }
        }

        for (; actor_index < 0x90; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                actor_pos[actor_index] = -0x7FFF;
            }
        }

        for (; actor_index < 0xC0; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if (gActors[actor_index].actorType == ACTORTYPE_13) {
                    actor_pos[actor_index] = -0x7FFE;
                }
                else {
                    actor_pos[actor_index] = 0x7FF8 - ((SQ(gActors[actor_index].posX.whole) + (SQ(gActors[actor_index].posY.whole) * 6)) / 64);
                }
            }
        }

        for (; actor_index < 0xD0; actor_index++) {
            actor_pos[actor_index] = 0x7FFF;
        }

        break;

    case 2:
        actor_pos[0] = 0x7FF0 - ((SQ(gPlayerActor.posX.whole) + (SQ(gPlayerActor.posY.whole) * 6)) / 64);
        for (actor_index = 1; actor_index < 0x90; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if (gActors[actor_index].actorType == ACTORTYPE_OVL3_W2_3DPLATFORM_9) {
                    actor_pos[actor_index] = 0x7FF0 - ((SQ(gActors[actor_index].posX.whole) + (SQ(gActors[actor_index].posY.whole) * 6)) / 64);
                }
                else if (gActors[actor_index].actorType == ACTORTYPE_OVL3_W2_SPIKEBALL_11) {
                    if (gActors[actor_index].posZ.whole < -0xC0) {
                        actor_pos[actor_index] = 0xA400 - (SQ(gActors[actor_index].posY.whole) / 16);
                    }
                    else {
                        actor_pos[actor_index] = 0x7FF0 - ((SQ(gActors[actor_index].posX.whole) + (SQ(gActors[actor_index].posY.whole) * 6)) / 64);
                    }
                }
                else {
                    actor_pos[actor_index] = (actor_pos[0] + gActors[actor_index].posZ.whole) - gPlayerActor.posZ.whole;
                }
            }
        }

        for (; actor_index < 0xC0; actor_index++) {
            if (gActors[actor_index].flags & ACTOR_FLAG_ACTIVE) {
                if (gActors[actor_index].actorType == ACTORTYPE_OVL3_W2_3DPLATFORM_8) {
                    if (gActors[actor_index].var_0D8 < 7) {
                        actor_pos[actor_index] = 0xA800 - (SQ(gActors[actor_index].posY.whole) / 16);
                    }
                    else {
                        actor_pos[actor_index] = 0xA000 - (SQ(gActors[actor_index].posY.whole) / 16);
                    }
                }
                else {
                    actor_pos[actor_index] = (actor_pos[0] + gActors[actor_index].posZ.whole) - gPlayerActor.posZ.whole;
                }
            }
        }

        for (; actor_index < 0xD0; actor_index++) {
            actor_pos[actor_index] = 0x7FFF;
        }

        break;
    }

    arg1_count = 0;
    for (index = 0; arg0[index] != -1; index++) {
        actor_index = arg0[index];
        if ((u16)(u64)(gActors[actor_index].flags & ACTOR_FLAG_DRAW)) {
            var_a1_5 = (u64)gActors[actor_index].graphicFlags;
            if (!(var_a1_5 & ACTOR_GFLAG_UNK10)) {
                if ((((gActors[actor_index].graphicTimer != 0) && (gGamePaused == 0)) && ((gActiveFrames % gDebugThrottle) == 0)) && ((gActorStall == 0) || (((s32)(gActors[actor_index].flags << 5)) < 0))) {
                    graphic_list = gActors[actor_index].graphicList;
                    if (graphic_list != NULL) {
                        gActors[actor_index].graphicTimer--;
                        if (gActors[actor_index].graphicTimer == 0) {
                            if (graphic_list[0] != 0) {
                                gActors[actor_index].graphicIndex = graphic_list[0];
                                gActors[actor_index].graphicTimer = graphic_list[1];
                                graphic_list += 2;
                                if (graphic_list[0] < 0) {
                                    graphic_list += graphic_list[0];
                                }
                                gActors[actor_index].graphicList = graphic_list;
                            }
                        }
                    }
                }
            }
            if (!(gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK8)) {
                if (gActors[actor_index].graphicFlags & ACTOR_GFLAG_UNK11) {
                    if (gActors[actor_index].posX.whole > 0) {
                        if (((gActors[actor_index].unk_188 / 2) - ((actor_index * 0) - gActors[actor_index].posX.whole)) > 0xC0) {
                            continue;
                        }
                    }
                    else {
                        if ((gActors[actor_index].posX.whole - (gActors[actor_index].unk_188 / 2)) < -0xC0) {
                            continue;
                        }
                    }
                    if (gActors[actor_index].posY.whole > 0) {
                        if ((gActors[actor_index].posY.whole + (gActors[actor_index].unk_188 / 2)) > 0x90) {
                            continue;
                        }
                    }
                    else if ((gActors[actor_index].posY.whole - (gActors[actor_index].unk_188 / 2)) < -0x90) {
                        continue;
                    }
                }
                else {
                    if (gActors[actor_index].posX.whole > 0) {
                        if (((gActors[actor_index].posZ.whole / 2) - (0 - gActors[actor_index].posX.whole)) > 0xC0) {
                            continue;
                        }
                    }
                    else {
                        if ((gActors[actor_index].posX.whole - (gActors[actor_index].posZ.whole / 2)) < -0xC0) {
                            continue;
                        }
                    }
                    if (gActors[actor_index].posY.whole > 0) {
                        if ((gActors[actor_index].posY.whole + (gActors[actor_index].posZ.whole / 2)) > 0x90) {
                            continue;
                        }
                    }
                    else if ((gActors[actor_index].posY.whole - (gActors[actor_index].posZ.whole / 2)) < -0x90) {
                        continue;
                    }
                }
            }
            arg1_index = 0;
            if (D_800BE6A8 != 0) {
                var_a1_5 = actor_index;
                for (arg1_index = 0; arg1_index < arg1_count; arg1_index++) {
                    actor_index_2 = arg1[arg1_index];
                    if (actor_pos[actor_index_2] < actor_pos[var_a1_5]) {
                    }
                    else {
                        arg1[arg1_index] = var_a1_5 + (var_a1_5 * 0); // fakematch
                        var_a1_5 = actor_index_2;
                    }
                }

                arg1[arg1_count] = var_a1_5;
                arg1_count++;
            }
            else {
                var_a1_5 = actor_index;
                for (arg1_index = 0; arg1_index < arg1_count; arg1_index++) {
                    actor_index_2 = arg1[arg1_index];
                    if (gActors[actor_index_2].posZ.raw < gActors[var_a1_5].posZ.raw) {
                    }
                    else {
                        arg1[arg1_index] = var_a1_5 + (var_a1_5 * 0); // fakematch
                        var_a1_5 = actor_index_2;
                    }
                }

                arg1[arg1_count] = var_a1_5;
                arg1_count++;
            }
        }
    }

    if (gDebugBitfield & 0x80) {
        if (arg0 == ((s16*)gActorsFront)) {
            for (y = 0; y < arg1_count; y++) {
                actor_index_1 = arg1[y];
                OSD_PrintIntHex(actor_pos[actor_index_1] + (actor_index_1 * 0x1000000), ((y / 16) * 72) - 144, 99 - ((y % 16) * 12));
            }
        }
    }
    return arg1_count;
}

void LookAt_Update(void) {
    D_801780F0 = &gDisplayListData[0].matrices[0];
    D_801780F4 = &gDisplayListData[1].matrices[0];
    guLookAt(&D_801780F0[3], gLookatEyeX, gLookatEyeY, gLookatEyeZ, gLookatAtX, gLookatAtY, gLookatAtZ, gLookatUpX, gLookatUpY, gLookatUpZ);
    guLookAt(&D_801780F4[3], gLookatEyeX, gLookatEyeY, gLookatEyeZ, gLookatAtX, gLookatAtY, gLookatAtZ, gLookatUpX, gLookatUpY, gLookatUpZ);
}

void LookAt_Reset(void) {
    gLookatEyeX = 0.0f;
    gLookatEyeY = 0.0f;
    gLookatEyeZ = 448.0f;
    gLookatAtX = 0.0f;
    gLookatAtY = 0.0f;
    gLookatAtZ = 0.0f;
    gLookatUpX = 0.0f;
    gLookatUpY = 1.0f;
    gLookatUpZ = 0.0f;
}

void func_80010A10(void) {
    D_801780F0 = gDisplayListData[0].matrices;
    D_801780F4 = gDisplayListData[1].matrices;
    guOrtho(&D_801780F0[0], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(&D_801780F4[0], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(&D_801780F0[2], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    guOrtho(&D_801780F4[2], -160.0f, 160.0f, -120.0f, 120.0f, -512.0f, 512.0f, 1.0f);
    LookAt_Reset();
    LookAt_Update();
    D_80178104 = (u8**)(sprite_table_248AB0_07033F70 + ((uintptr_t)SEGMENT_07_DEST - (uintptr_t)Segment_07_VRAM));
    D_80178108 = D_8032F940;
    D_8017810C = D_80350AD8;
    D_80178110 = D_80317F48;
    D_80178114 = D_803440C8;
    D_80178118 = D_802F93B8;
    D_8017811C = D_80310D00;
    D_80178120 = D_80338810;
    D_80178124 = D_802DB888;
    D_80178128 = D_802EB278;
}
