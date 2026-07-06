#include "common.h"
#include "gameText.h"

// adapts ASCII characters between ' ' and 'z' for game's charset
u16 gASCIIAlphaIndecies[]={
//   space       !                    "               #
    ALPHA_SPACE, ALPHA_EN_EXCLAMAION, ALPHA_EN_QUOTE, ALPHA_SPACE,
//  $          %                 &           '
    ALPHA_SPACE,ALPHA_EN_PERCENT,ALPHA_SPACE,ALPHA_EN_APOSTROPHE,
//  (                      )                        *              +
    ALPHA_EN_PARENTESISLEFT,ALPHA_EN_PARENTESISRIGHT,ALPHA_EN_TIMES,ALPHA_EN_PLUS,
//  ,              -             .                /
    ALPHA_EN_COMMA,ALPHA_EN_MINUS,ALPHA_EN_PERIOD,ALPHA_EN_SLASH,
//  0      1       2        3
    ALPHA_0,ALPHA_1,ALPHA_2,ALPHA_3,
//  4       5       6       7
    ALPHA_4,ALPHA_5,ALPHA_6,ALPHA_7,
//  8       9       :              ;
    ALPHA_8,ALPHA_9,ALPHA_EN_COLON,ALPHA_SPACE,
//  <           =            >          ?
    ALPHA_SPACE,ALPHA_SPACE,ALPHA_SPACE,ALPHA_EN_QUESTION,
//  @                  A                B                C
    ALPHA_EN_COPYRIGHT,ALPHA_EN_UPPER_A,ALPHA_EN_UPPER_B,ALPHA_EN_UPPER_C,
//  D                E                F                G
    ALPHA_EN_UPPER_D,ALPHA_EN_UPPER_E,ALPHA_EN_UPPER_F,ALPHA_EN_UPPER_G,
//  H                I                J                K
    ALPHA_EN_UPPER_H,ALPHA_EN_UPPER_I,ALPHA_EN_UPPER_J,ALPHA_EN_UPPER_K,
//  L                M                N                O
    ALPHA_EN_UPPER_L,ALPHA_EN_UPPER_M,ALPHA_EN_UPPER_N,ALPHA_EN_UPPER_O,
//  P                Q                R                S
    ALPHA_EN_UPPER_P,ALPHA_EN_UPPER_Q,ALPHA_EN_UPPER_R,ALPHA_EN_UPPER_S,
//  T                U                V                W
    ALPHA_EN_UPPER_T,ALPHA_EN_UPPER_U,ALPHA_EN_UPPER_V,ALPHA_EN_UPPER_W,
//  X                Y                Z                [
    ALPHA_EN_UPPER_X,ALPHA_EN_UPPER_Y,ALPHA_EN_UPPER_Z,ALPHA_EN_BRACKETLEFT,
//  \           ]                     ^           _
    ALPHA_SPACE,ALPHA_EN_BRACKETRIGHT,ALPHA_SPACE,ALPHA_SPACE,
// `             a               b                c
    ALPHA_SPACE,ALPHA_EN_LOWER_A,ALPHA_EN_LOWER_B,ALPHA_EN_LOWER_C,
// d                e                f                g
   ALPHA_EN_LOWER_D,ALPHA_EN_LOWER_E,ALPHA_EN_LOWER_F,ALPHA_EN_LOWER_G,
// h                i                j                k
   ALPHA_EN_LOWER_H,ALPHA_EN_LOWER_I,ALPHA_EN_LOWER_J,ALPHA_EN_LOWER_K,
// l                m                n                o
   ALPHA_EN_LOWER_L,ALPHA_EN_LOWER_M,ALPHA_EN_LOWER_N,ALPHA_EN_LOWER_O,
// p                q                r                s
   ALPHA_EN_LOWER_P,ALPHA_EN_LOWER_Q,ALPHA_EN_LOWER_R,ALPHA_EN_LOWER_S,
// t                u                v                w
   ALPHA_EN_LOWER_T,ALPHA_EN_LOWER_U,ALPHA_EN_LOWER_V,ALPHA_EN_LOWER_W,
// x                y                z                {
   ALPHA_EN_LOWER_X,ALPHA_EN_LOWER_Y,ALPHA_EN_LOWER_Z,ALPHA_SPACE
};


u16 gTextPalettes[][4]={
    {0,0,0,1},{0,0,0,1},{0,0,0,1},{0,0,0,1},{0,0,0,1},{0,0,0,1},{0,0,0,1},{0,0,0,1}
};

// In english localizations the main "font" is a kerned
// English Alphabet. This table gives the letters' widths.
// not in original Japanese version.
u8 gEngTextKerning[]={
    // a b c d e f g h i j k l m n o p q r s t u v w x y z
       6,5,5,5,5,4,5,5,2,5,5,2,7,5,5,5,5,5,5,5,5,5,6,5,5,5,
    // A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
       6,6,6,6,6,6,6,6,3,6,6,5,8,6,6,6,6,6,6,6,6,7,8,6,6,6
};

//              RGB vals: 0,0,0 7,7,7  15,15,15                         
u16 gTextPaletteBase[]={0,0x001,0x39cf,0x7bdf};

// set a text character actor.
// @param actor_index index of actor.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
void Text_InitActor(u16 actor_index, u16 x, u16 y, u16 z) {
    gActors[actor_index].actorType = 0;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].posX.whole = x;
    gActors[actor_index].posY.whole = y;
    gActors[actor_index].posZ.whole = z;
}

// set a text character actor with graphic
// @param actor_index index of actor.
// @param graphic_index index of graphic.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
void Text_InitActorGraphic(u16 actor_index, u16 graphic_index, u16 x, u16 y, u16 z) {
    Text_InitActor(actor_index, x, y, z);
    gActors[actor_index].graphicIndex = graphic_index;
}

// set a text character actor with graphic and color.
// @param actor_index index of actor.
// @param graphic_index index of graphic.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
// @param red red value of actor color.
// @param green green value of actor color.
// @param blue blue value of actor color.
void Text_InitActorGraphicRGB(u16 actor_index, u16 graphic_index, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue) {
    Text_InitActor(actor_index, x, y, z);
    gActors[actor_index].graphicTimer = 0;
    gActors[actor_index].graphicIndex = graphic_index;
    if (red | green | blue) {
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
        gActors[actor_index].colorR = red;
        gActors[actor_index].colorG = green;
        gActors[actor_index].colorB = blue;
    }
}

// set a text character actor with graphic list
// @param actor_index index of actor.
// @param graphic_list pointer of graphic list.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
void Text_InitActorGList(u16 actor_index, s16* graphic_list, u16 x, u16 y, u16 z) {
    Text_InitActor(actor_index, x, y, z);
    ACTOR_GFX_INIT(actor_index, graphic_list);
}

// set colors of gTextPalettes[arg0] based on(red,blue,green)
// @param arg0 index of gTextPalettes[]
// @param red red value of color, pre-adjusted for RGBA5551
// @param blue blue value of color, pre-adjusted for RGBA5551
// @param green green value of color, pre-adjusted for RGBA5551
// @returns pointer to gTextPalettes[arg0]
u16* Text_SetColor(u16 arg0, u8 red, u8 blue, u8 green) {
    u16* temp_v1;

    temp_v1 = gTextPalettes[arg0];
    temp_v1[1] = (((red / 2) << 11) + ((blue / 2) << 6) + ((green / 2) * 2) + 1);
    temp_v1[2] = ((red << 11) + (blue << 6) + (green * 2) + 1);
    return temp_v1;
}

// set a text character actor with graphic and palette.
// @param actor_index index of actor.
// @param graphic_index index of graphic.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
// @param palette pointer of palette.
void Text_InitActorPalette(u16 actor_index, u16 graphic_index, u16 x, u16 y, u16 z, u16* palette) {
    Text_InitActorGraphic(actor_index, graphic_index, x, y, z);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].palette_18C = palette;
}

// render string to screen horizontally
// e.g. used in title screen "PRESS START"
// @param actor_index index of first actor.
// @param str ASCII string.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
// @param palette pointer of palette.
u16 Text_PrintASCII(u16 actor_index, char* str, u16 x, u16 y, u16 z, u16* palette) {
    char ch;
    while ((ch = *str) != 0) {
        if (ch == '#') {
            gActors[actor_index].flags = 0;
            actor_index++;
        }
        else if (ch != ' ') {
            Text_InitActorPalette(actor_index, ALPHA_GLYPH_INDEX(gASCIIAlphaIndecies[ch - ' ']), x, y, z, palette);
            actor_index++;
        }
        str++;
        x += 9;
    }
    return actor_index;
}

// render 2-digit number
// @param actor_index index of first actor.
// @param num number >=0 to print.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
// @param palette pointer of palette.
// @returns actor_index+2
u16 Text_Print2Digits(u16 actor_index, u16 num, u16 x, u16 y, u16 z, u16* palette) {
    u16 tens;

    tens = 0;
    while (num >= 10) {
        num -= 10;
        tens++;
    }
    Text_InitActorPalette(actor_index + 0, ALPHA_GLYPH_INDEX(tens), x, y, z, palette);
    Text_InitActorPalette(actor_index + 1, ALPHA_GLYPH_INDEX(num), x + 9, y, z, palette);
    return actor_index + 2;
}

// render 3-digit number
// @param actor_index index of first actor.
// @param num number >=0 to print.
// @param x x-position of actor.
// @param y y-position of actor.
// @param z z-position of actor.
// @param palette pointer of palette.
// @returns actor_index+3
u16 Text_Print3Digits(u16 actor_index, u16 num, u16 x, u16 y, u16 z, u16* palette) {
    u16 hundos;
    u16 tens;
    s32 index;

    tens = 0;
    hundos = 0;
    while (num >= 100) {
        num -= 100;
        hundos++;
    }
    while (num >= 10) {
        num -= 10;
        tens++;
    }
    index = actor_index;
    Text_InitActorPalette(index, ALPHA_GLYPH_INDEX(hundos), x, y, z, palette);
    Text_InitActorPalette(index + 1, ALPHA_GLYPH_INDEX(tens), x + 9, y, z, palette);
    Text_InitActorPalette(index + 2, ALPHA_GLYPH_INDEX(num), x + 18, y, z, palette);
    return index + 3;
}

// get pixel width of character by alphabet symbol
// Not in Japanese version - text is monospace.
// @param str ALPHA_* string
// @returns character width
u16 Text_GetWidth(u16* str) {
    if (*str < ALPHA_EN3_LOWER_A) {
        return 6;
    }
    else if (*str == ALPHA_BOLD_SPACE) {
        return 7;
    }
    else {
        return gEngTextKerning[*str - ALPHA_EN3_LOWER_A];
    }
}

// get pixel width of 2 characters by alphabet symbol
// Not in Japanese version - text is monospace.
// @param str ALPHA_* string
// @returns characters' width
u16 Text_GetWidth2(u16* str) {
    u16 len0;
    u16 len1;
    len0 = Text_GetWidth(str++);
    len1 = Text_GetWidth(str);
    return len1 + len0;
}

// "frees" actors based on string length.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @returns last applicable actor index + 1
u16 Text_FreeString(u16 actor_index, u16* str) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            gActors[actor_index].flags = 0;
            actor_index++;
        }
        str++;
    }
    return actor_index;
}

// render text in screenspace with given position.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @param x x-position of first actor.
// @param y y-position of first actor.
// @param z z-position of first actor.
// @returns last applicable actor index + 1
u16 Text_PrintString(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            Text_InitActor(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = ALPHA_GLYPH_INDEX(*str);
            actor_index++;
            x += Text_GetWidth2(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

// render text in screenspace with given position and color.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @param x x-position of first actor.
// @param y y-position of first actor.
// @param z z-position of first actor.
// @param red red value of actor color.
// @param green green value of actor color.
// @param blue blue value of actor color.
// @returns last applicable actor index + 1
u16 Text_PrintStringRGB(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            Text_InitActor(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = ALPHA_GLYPH_INDEX(*str);
            if (red | green | blue) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = red;
                gActors[actor_index].colorG = green;
                gActors[actor_index].colorB = blue;
            }
            actor_index++;
            x += Text_GetWidth2(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

// render text in screenspace with given position, color and scale.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @param x x-position of first actor.
// @param y y-position of first actor.
// @param z z-position of first actor.
// @param red red value of actor color.
// @param green green value of actor color.
// @param blue blue value of actor color.
// @param scale_x x-scale of actors.
// @param scale_y y-scale of actors.
// @returns last applicable actor index + 1
u16 Text_PrintStringRGBScale(u16 actor_index, u16* str, u16 x, u16 y, u16 z, u8 red, u8 green, u8 blue, f32 scale_x, f32 scale_y) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            Text_InitActor(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            if ((scale_x != 1.0) || (scale_y != 1.0)) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_SCALE;
            }
            gActors[actor_index].scaleX = scale_x;
            gActors[actor_index].scaleY = scale_y;
            gActors[actor_index].graphicIndex = ALPHA_GLYPH_INDEX(*str);
            if (red | green | blue) {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = red;
                gActors[actor_index].colorG = green;
                gActors[actor_index].colorB = blue;
            }
            actor_index++;
        }
        str++;
        x += 16 * scale_x;
    }
    return actor_index;
}

// render text in screenspace with given position using gray palette.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @param x x-position of first actor.
// @param y y-position of first actor.
// @param z z-position of first actor.
// @returns last applicable actor index + 1
u16 Text_PrintStringGray(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            Text_InitActor(actor_index, x, y, z);
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[actor_index].unk_18C = (s32)gTextPaletteBase;
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = ALPHA_GLYPH_INDEX(*str);
            actor_index++;
            x += Text_GetWidth2(str);
        }
        else {
            x += 14;
        }
        str++;
    }
    return actor_index;
}

// render text in screenspace with given position.
// @param actor_index index of first actor.
// @param str ALPHA_* string
// @param x x-position of first actor.
// @param y y-position of first actor.
// @param z z-position of first actor.
// @returns last applicable actor index + 1
u16 Text_PrintString2(u16 actor_index, u16* str, u16 x, u16 y, u16 z) {
    while (*str != ALPHA_NULL) {
        if (*str != 0) {
            Text_InitActor(actor_index, x, y, z);
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].graphicIndex = ALPHA_GLYPH_INDEX(*str);
        }
        else {
            gActors[actor_index].flags = 0;
        }
        actor_index++;
        str++;
        x += 16;
    }
    return actor_index;
}

// set color of palette (0x80380400)[arg1]
// @param arg0 unknown. should always be 0, 1, or 2 to avoid bad pointer.
// @param arg1 index at hard-coded palette address.
// @param red red value of palette color.
// @param green green value of palette color.
// @param blue blue value of palette color.
void Text_SetHCColor(u16 arg0, u16 arg1, u8 red, u8 green, u8 blue) {
    u16* sp4;
    if ((arg0 == 0) || (arg0 == 1) || (arg0 == 2)) {
        sp4 = PALETTE_80380400;
    }
    sp4[arg1] =  GPACK_RGBA5551(red, green, blue, 1);
}