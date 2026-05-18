#include "common.h"
#include <PR/sp.h>

#undef spMove
#undef spDraw
#undef spInit
#undef spFinish

#define FONT_DEFAULT_WINDOW_WIDTH  40
#define FONT_DEFAULT_WINDOW_HEIGHT 1
#define FONT_BITMAP_BUFFER_COUNT   0x38
#define FONT_DISPLAY_LIST_COUNT    0x2B8

void spMove(Sprite* sp, s32 x, s32 y);
Gfx* spDraw(Sprite* sp);
void spInit(Gfx** glistp);
void spFinish(Gfx** glistp);

typedef union {
    u8 value;
    u32 raw;
} PaddedByte; /* size = 0x04 */

typedef struct {
    /* 0x00 */ char* indexString;
    /* 0x04 */ Bitmap* bitmaps;
    /* 0x08 */ u8* image;
} Font; /* size = 0x0C */

static Bitmap sFontBitmapBuffer[FONT_BITMAP_BUFFER_COUNT * 2];
static Gfx sFontDisplayListBuffer[FONT_DISPLAY_LIST_COUNT * 2];

#include "letters_img.h"

static char sLettersString[] = "abcdefhiuvsnorm.klxz4321567890`!gjpqytw,EFGHKLNOPRSUVXZ@JM:WIYABCD'T\"+-=Q_/?()[]";

static Bitmap sLettersBitmaps[] = {
    { 8, 64, 0*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 0*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 0*12, sLettersImage,   12,0 },
    { 7, 64, 7*8, 0*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 1*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 1*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 1*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 1*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 1*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 1*12, sLettersImage,   12,0 },
    { 9, 64, 6*8, 1*12, sLettersImage,   12,0 },
    { 6, 64, 7*8+1, 1*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 2*12, sLettersImage,   12,0 },
    { 8, 64, 7*8, 2*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 3*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 3*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 3*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 3*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 3*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 3*12, sLettersImage,   12,0 },
    { 7, 64, 6*8, 3*12, sLettersImage,   12,0 },
    { 7, 64, 7*8, 3*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 4*12, sLettersImage,   16,0 },
    { 8, 64, 1*8, 4*12, sLettersImage,   16,0 },
    { 8, 64, 2*8, 4*12, sLettersImage,   16,0 },
    { 8, 64, 3*8, 4*12, sLettersImage,   16,0 },
    { 8, 64, 4*8, 4*12, sLettersImage,   16,0 },
    { 8, 64, 5*8, 4*12, sLettersImage,   16,0 },
    { 9, 64, 6*8, 4*12, sLettersImage,   16,0 },
    { 6, 64, 7*8+1, 4*12, sLettersImage,   16,0 },

    { 8, 64, 0*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 64+0*12, sLettersImage,   12,0 },
    { 8, 64, 7*8, 64+0*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 2*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 3*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 4*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 5*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 64+1*12, sLettersImage,   12,0 },
    { 8, 64, 7*8, 64+1*12, sLettersImage,   12,0 },

    { 7, 64, 0*8, 64+2*12, sLettersImage,   12,0 },
    { 9, 64, 1*8-1, 64+2*12, sLettersImage,   12,0 },
    { 6, 64, 2*8, 64+2*12, sLettersImage,   12,0 },
    { 9, 64, 3*8-1, 64+2*12, sLettersImage,   12,0 },
    { 7, 64, 4*8, 64+2*12, sLettersImage,   12,0 },
    { 9, 64, 5*8-1, 64+2*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 64+2*12, sLettersImage,   12,0 },
    { 8, 64, 7*8, 64+2*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 64+3*12, sLettersImage,   12,0 },
    { 8, 64, 1*8, 64+3*12, sLettersImage,   12,0 },
    { 7, 64, 2*8, 64+3*12, sLettersImage,   12,0 },
    { 9, 64, 3*8-1, 64+3*12, sLettersImage,   12,0 },
    { 7, 64, 4*8, 64+3*12, sLettersImage,   12,0 },
    { 9, 64, 5*8-1, 64+3*12, sLettersImage,   12,0 },
    { 8, 64, 6*8, 64+3*12, sLettersImage,   12,0 },
    { 8, 64, 7*8, 64+3*12, sLettersImage,   12,0 },

    { 8, 64, 0*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 1*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 2*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 3*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 4*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 5*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 6*8, 64+4*12+1, sLettersImage,   16,0 },
    { 8, 64, 7*8, 64+4*12+1, sLettersImage,   16,0 },

};

Sprite gFontTemplateSprite = {
    0, 0,
    0, 0,
    1.0f, 1.0f,
    0, 0,
    SP_TRANSPARENT,
    0x1234,
    255, 255, 255, 255,
    0, 0, NULL,
    0, 1,
    FONT_BITMAP_BUFFER_COUNT,
    FONT_DISPLAY_LIST_COUNT,
    15, 128,
    G_IM_FMT_I,
    G_IM_SIZ_4b,
    sFontBitmapBuffer,
    sFontDisplayListBuffer,
    NULL,
    0, 0,
};

Font gLettersFont = { sLettersString, sLettersBitmaps, sLettersImage };

static PaddedByte sFontRed = { 255 };
static PaddedByte sFontGreen = { 255 };
static PaddedByte sFontBlue = { 255 };
static PaddedByte sFontAlpha = { 255 };
static s32 sFontXPos = 0;
static s32 sFontYPos = 0;
static s32 sFontWindowWidth = FONT_DEFAULT_WINDOW_WIDTH;
static s32 sFontWindowHeight = FONT_DEFAULT_WINDOW_HEIGHT;
static f64 sFontXScale = 1.0;
static f64 sFontYScale = 1.0;

char* Font_FindChar(char* str, char target);

void Font_TextSprite(Sprite* txt, char* str, Font* fnt, s32 xlen, s32 ylen) {
    s32 index;
    // FAKEMATCH
    struct {
        Bitmap* bitmap;
        s32 unused[4];
    } locals;
    // FAKEMATCH
    s32 char_index;
    s32 x;
    s32 y;
    s32 offset;
    char* found;

    if (gFramesInScene & 1) {
        offset = FONT_BITMAP_BUFFER_COUNT;
    }
    else {
        offset = 0;
    }
    txt->bitmap = &sFontBitmapBuffer[offset];

    if (gFramesInScene & 1) {
        offset = FONT_DISPLAY_LIST_COUNT;
    }
    else {
        offset = 0;
    }
    txt->rsp_dl = &sFontDisplayListBuffer[offset];

    txt->width = xlen * 8;
    txt->height = ylen * 16;
    locals.bitmap = txt->bitmap;

    index = 0;
    char_index = 0;
    for (y = 0; y < ylen; y++) {
        for (x = 0; x < xlen; x++, index++, char_index++) {
            if (str[char_index] == '\0') {
                locals.bitmap[index] = fnt->bitmaps[0];
                locals.bitmap[index].width = -1;
                txt->nbitmaps = index;
                return;
            }

            if (str[char_index] == '\n') {
                locals.bitmap[index] = fnt->bitmaps[0];
                locals.bitmap[index].buf = NULL;
                char_index--;
                continue;
            }

            found = Font_FindChar(fnt->indexString, str[char_index]);
            if (found != NULL) {
                locals.bitmap[index] = fnt->bitmaps[found - fnt->indexString];
            }
            else {
                locals.bitmap[index] = fnt->bitmaps[0];
                locals.bitmap[index].buf = NULL;
            }
        }

        if (str[char_index] == '\n') {
            char_index++;
        }
    }

    txt->nbitmaps = index;
}

char* Font_FindChar(char* str, char target) {
    while (*str && (*str != target)) {
        str++;
    }

    if (*str) {
        return str;
    }

    return NULL;
}

void Font_Init(Gfx** glistp) {
    Gfx* gxp;

    gxp = *glistp;
    spInit(&gxp);

    gFontTemplateSprite.rsp_dl_next = gFontTemplateSprite.rsp_dl;

    *glistp = gxp;

    sFontRed.value = 255;
    sFontGreen.value = 255;
    sFontBlue.value = 255;
    sFontAlpha.value = 255;

    sFontXPos = 0;
    sFontYPos = 0;

    sFontWindowWidth = FONT_DEFAULT_WINDOW_WIDTH;
    sFontWindowHeight = FONT_DEFAULT_WINDOW_HEIGHT;

    sFontXScale = 1.0;
    sFontYScale = 1.0;
}

void Font_Finish(Gfx** glistp) {
    Gfx* gxp;

    gxp = *glistp;
    spFinish(&gxp);

    *glistp = gxp - 1;
}

void Font_SetWindow(s32 width, s32 height) {
    sFontWindowWidth = width;
    sFontWindowHeight = height;
}

void Font_SetPos(s32 xpos, s32 ypos) {
    sFontXPos = xpos;
    sFontYPos = ypos;
}

void Font_SetScale(f64 xscale, f64 yscale) {
    sFontXScale = xscale;
    sFontYScale = yscale;
}

void Font_SetColor(u8 red, u8 green, u8 blue, u8 alpha) {
    sFontRed.value = red;
    sFontGreen.value = green;
    sFontBlue.value = blue;
    sFontAlpha.value = alpha;
}

void Font_SetTransparent(s32 flag) {
    spClearAttribute(&gFontTemplateSprite, 0xFFFF);

    if (flag) {
        spSetAttribute(&gFontTemplateSprite, SP_TRANSPARENT);
    }
    else {
        spClearAttribute(&gFontTemplateSprite, SP_TRANSPARENT);
    }
}

void Font_ShowString(Gfx** glistp, char* val_str) {
    Sprite* sprite;
    Gfx* gxp;
    Gfx* display_list;

    gxp = *glistp;
    sprite = &gFontTemplateSprite;

    sprite->width = sFontWindowWidth * 8 + 8;
    sprite->height = sFontWindowHeight * 16 + 8;

    Font_TextSprite(sprite, val_str, &gLettersFont, sFontWindowWidth, sFontWindowHeight);

    spMove(sprite, sFontXPos, sFontYPos);
    spColor(sprite, sFontRed.value, sFontGreen.value, sFontBlue.value, sFontAlpha.value);
    spScale(sprite, sFontXScale, sFontYScale);

    display_list = spDraw(sprite);
    gSPDisplayList(gxp++, display_list);

    *glistp = gxp;
}
