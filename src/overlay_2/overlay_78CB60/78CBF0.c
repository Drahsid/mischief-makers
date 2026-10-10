#include "common.h"
#include "actor.h"
#include "Alphabet.h"
#include "debug.h"
#include "letterbox.h"
#include "save_file.h"
#include "66250.h"
#include "7D8E0.h"

// command chars exclusive to this script
#undef ALPHA_SPACE
#define ALPHA_SPACE 0xFFFF // space char seems redefined
#define ALPHA_BALL_WHITE 0xFFFD
#define ALPHA_BALL_RED 0xFFFE

#define ALPHA_COLOR_WHITE 0xFF0F
#define ALPHA_COLOR_YELLOW 0xFF1F
#define ALPHA_COLOR_PURPLE 0xFF2F
#define ALPHA_COLOR_RED 0xFF3F
#define ALPHA_COLOR_CYAN 0xFF4F
#define ALPHA_COLOR_GREEN 0xFF5F
#define ALPHA_COLOR_BLUE 0xFF6F
#define ALPHA_COLOR_BLACK 0xFF7F

// "overlay 2" code for Festival Games.

extern s16 D_800E1E38[];
extern s16 D_800E1EB8[];
extern s16 D_800E2274[];
extern u16 D_801370CC;
extern u16 D_801370CE;
extern u16 gCurrentStage;

u16 D_801B06C0_7969B0;
u16 D_801B06C2_7969B2;

u32 D_801AF5D0_7958C0[][2] = {
    {0x17D, 0x17C}, {0x1A3, 0x194}, {0x17D, 0x17C}, {0x1C7, 0x17D}, {0x140, 0x16E}
};

s16 D_801AF5F8_7958E8[] = {
    // graphic  timer
     0x0804,     4,
     0x0806,     4,
     0x0808,     4,
          0,     0,
};

s16 D_801AF608_7958F8[] = {
    // graphic  timer
     0x080a,     8,
     0x080c,     8,
     0x080e,    10,
     0x080b,     8,
     0x080d,     8,
     0x080f,    10,
        -12,     0,
};

s16 D_801AF624_795914[] = {
    // graphic  timer
     0x0810,     8,
     0x0814,     4,
     0x0818,     8,
     0x0814,     4,
         -8,     0,
};

s16 D_801AF638_795928[] = {
    // graphic  timer
     0x0812,     8,
     0x0816,     4,
     0x081a,     8,
     0x0816,     4,
         -8,     0,
};

s16 D_801AF64C_79593C[] = {
    // graphic  timer
     0x081e,     8,
     0x0822,     4,
     0x0826,     8,
     0x0822,     4,
         -8,     0,
};

s16 D_801AF660_795950[] = {
    // graphic  timer
     0x0820,     8,
     0x0824,     4,
     0x0828,     8,
     0x0824,     4,
         -8,     0,
};

s16 D_801AF674_795964[] = {
    // graphic  timer
     0x082A,     8,
     0x082E,     4,
     0x0832,     8,
     0x082E,     4,
         -8,     0,
};

s16 D_801AF688_795978[] = {
    // graphic  timer
     0x082C,     8,
     0x0830,     4,
     0x0834,     8,
     0x0830,     4,
         -8,     0,
};

s16 D_801AF69C_79598C[] = {
    0x800, 0, 0x802, 0, 0x80A, 0, 0x810, 0x812,
    0x081E, 0, 0x820, 0, 0x82A, 0x82C
};

// a graphic list table.
s16* D_801AF6B8_7959A8[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    D_801AF608_7958F8,
    NULL,
    D_801AF624_795914,
    D_801AF638_795928,
    D_801AF64C_79593C,
    NULL,
    D_801AF660_795950,
    NULL,
    D_801AF674_795964,
    D_801AF688_795978
};

s8 D_801AF6F0_7959E0[] = {
  0, 0, -12, 0, 0, 0, 0, 0, 0x60,
  0, 0, 0, 0x60, 0, 0, 0,
  0x60, 0, 0, 0, 0, 0, 0,
  0, 0, 0xF9, 0, 0xF9, 0, 0xF9,
  0, 0xF9, 0, 0, 0x47, 0, 0,
  0, 0x47, 0, 0, 0, 0x47, 0,
  1, 0, 13, 0, 1, 0, 0, 0
};

// another ALPHA_EN3_* char length table.
// likely omitted from Japanese version.
u8 D_801AF724_795A14[] = {
    // a b c d e f g h i j k l m n o p q r s t u v w x y z
       6,5,5,5,5,4,5,5,2,5,5,2,7,5,5,5,5,5,5,5,5,5,6,5,5,5,
    // A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
       6,6,6,6,6,6,6,6,3,6,6,5,8,6,6,6,6,6,6,6,6,7,8,6,6,6
};

void func_801A9440_78F730(u16);
void func_801A9508_78F7F8(u16);
void func_801A9510_78F800(u16);
void func_801A9690_78F980(u16);
void func_801A9698_78F988(u16);
void func_801A96CC_78F9BC(u16);
void func_801A96D4_78F9C4(u16);

ActorFunc D_801AF758_795A48[] = {
    func_801A9440_78F730,
    func_801A9508_78F7F8,
    func_801A9510_78F800,
    func_801A9690_78F980,
    func_801A9698_78F988,
    func_801A9440_78F730,
    func_801A96CC_78F9BC,
    func_801A96D4_78F9C4
};

ActorFunc D_801AF778_795A68[] = {
    func_801A9440_78F730,
    func_801A9508_78F7F8,
    func_801A9440_78F730,
    func_801A9690_78F980,
    func_801A9698_78F988,
    func_801A9440_78F730,
    func_801A96CC_78F9BC,
    func_801A96D4_78F9C4
};

u16 D_801AF798_795A88[] = {
    // optionX  optionY  event
    -0x20,  0x20, FESTGAME_100M,
    -0x20,  0x10, FESTGAME_200M,
    -0x20,     0, FESTGAME_400M,
    -0x20, -0x10, FESTGAME_JUMP,
    -0x20, -0x20, FESTGAME_BALL,
    -0x20, -0x30, FESTGAME_HURDLE,
    -0x20, -0x40, FESTGAME_MATH,
    -1
};

u16 D_801AF7C4_795AB4[] = {
    0x0009, 0x0021,
    0x000C, 0x0020,
    0x000D, 0x0024,
    0x000A, 0x0022,
    0x000B, 0x0023,
    0x000F, 0x0026,
    0x001E, 0x0028,
    0x0010, 0x001F,
    0x0010, 0x001F,
    0x0010, 0x001F,
    0x0010, 0x001F,
    0x0010, 0x0032
};

Festival_UnkMotion D_801AF7F4_795AE4[] = {
    {1, 0, 0x80, FIXED_UNIT(-1.0), 0},
    {3, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {2, 0, 0x20, FIXED_UNIT(-1.0), FIXED_UNIT(4.0)},
    {3, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {-4, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF830_795B20[] = {
    {1, 0, 0x80, FIXED_UNIT(1.0), 0},
    {3, 0, 0x70, FIXED_UNIT(2.0), 0},
    {2, 0, 0x20, FIXED_UNIT(1.0), FIXED_UNIT(4.0)},
    {3, 0, 0x70, FIXED_UNIT(2.0), 0},
    {-4, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF86C_795B5C[] = {
    {3, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {3, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {-2, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF890_795B80[] = {
    {3, 0, 0x70, FIXED_UNIT(2.0), 0},
    {3, 0, 0x70, FIXED_UNIT(2.0), 0},
    {-2, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF8B4_795BA4[] = {
    {10, 0, 0x80, FIXED_UNIT(-1.0), 0},
    {10, 0, 0, FIXED_UNIT(0.0), 0},
    {10, 0, 0x80, FIXED_UNIT(-1.0), 0},
    {-3, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF8E4_795BD4[] = {
    {10, 0, 0x80, FIXED_UNIT(1.0), 0},
    {10, 0, 0, FIXED_UNIT(0.0), 0},
    {10, 0, 0x80, FIXED_UNIT(1.0), 0},
    {-3, 0, 0, 0, 0}
};

Festival_UnkMotion D_801AF914_795C04[] = {
    {1, 0, 0x80, FIXED_UNIT(-1.0), 0},
    {2, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {2, 0, 0x120, FIXED_UNIT(0.0), 0},
    {1, 0, 0x80, FIXED_UNIT(-1.0), 0},
    {1, 0, 0x130, FIXED_UNIT(0.0), 0},
    {3, 0, 0x90, FIXED_UNIT(0.0), 0},
    {2, 0, 0x70, FIXED_UNIT(-2.0), 0},
    {-7, 0, 0, 0, 0}
};


Festival_UnkMotion D_801AF974_795C64[] = {
    {1, 0, 0x80, FIXED_UNIT(1.0), 0},
    {2, 0, 0x70, FIXED_UNIT(2.0), 0},
    {2, 0, 0x120, FIXED_UNIT(0.0), 0},
    {1, 0, 0x80, FIXED_UNIT(1.0), 0},
    {1, 0, 0x130, FIXED_UNIT(0.0), 0},
    {3, 0, 0x90, FIXED_UNIT(0.0), 0},
    {2, 0, 0x70, FIXED_UNIT(2.0), 0},
    {-7, 0, 0, 0, 0}
};

Festival_UnkMotion* D_801AF9D4_795CC4[] = {
    D_801AF7F4_795AE4,
    D_801AF830_795B20,
    D_801AF86C_795B5C,
    D_801AF890_795B80,
    D_801AF8B4_795BA4,
    D_801AF8E4_795BD4,
    D_801AF914_795C04,
    D_801AF974_795C64,
};

u16 D_801AF9F4_795CE4[] = {
    0, 0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x7000
};

u16 D_801AFA04_795CF4[] = {
    0, 0, 0x100, 0x200, 0x300, 0x400, 0x500, 0x600, 0x700, 0x800,
    0x900, 0xA00, 0xB00, 0xC00, 0xF00, 0xD00
};

f32 D_801AFA24_795D14[] = {
    2.0, 0.0, 0.0, 400.0, 0, 0, 0, 0, 3.0, 0, 0, 448.0,
    1.0, 1.0, 1.0, 20.0, 0, 0, 3.0, 0, 0, 400.0,
    1.0, 1.0, 1.0, 20.0, 0
};

u8 D_801AFA90_795D80[] = {
    1, 10, 1,
    1, 10, 1,
    1, 10, 1,
    1, 10, 1,
    1, 10, 1,
    1, 10, 1,
    1, 10, 1,
    0, 0, 0,
    0, 0, 0,
    0, 0, 0,
    0, 0
};

u8 D_801AFAB0_795DA0[] = {
    20, 10, 5, 1,
    20, 10, 5, 1,
    20, 10, 5, 1,
    20, 10, 0, 0,
    20, 10, 0, 0,
    20, 10, 5, 1,
    20, 10, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0
};

u16 D_801AFAD8_795DC8[] = {
    0x148, 0x180, 0xFF02, 0x1d03,
    0x0A0, 0x19C, 0xFF01, 0x1d06,
    0x23A, 0x19C, 0xFF01, 0x1d06,
    0x0E0, 0x185, 0xFF03, 0x1202,
    0x260, 0x185, 0xFF03, 0x1202,
};

s16 D_801AFB00_795DF0[] = {
    0x1A0, 0x195,
    0x1A0, 0x195,
    0x179, 0x17D,
    0x1CB, 0x17D,
    0x1FD, 0x16F,
};

// "[black]W[white ball]"
u16 D_801AFB14_795E04[] = {
    ALPHA_COLOR_BLACK, ALPHA_EN3_UPPER_W, ALPHA_BALL_WHITE,
    ALPHA_NULL
};

// "[white]R[red ball]"
u16 D_801AFB1C_795E0C[] = {
    ALPHA_COLOR_WHITE, ALPHA_EN3_UPPER_R, ALPHA_BALL_RED,
    ALPHA_NULL
};

// "運動会" / "Athletic Festival"
u16 D_801AFB24_795E14[] = {
    ALPHA_JP_KANJI_U904B, ALPHA_JP_KANJI_U52D5, ALPHA_JP_KANJI_U4F1A,
    ALPHA_NULL
};

// "FOUL!!"
u16 D_801AFB2C_795E1C[] = {
    ALPHA_EN3_UPPER_F, ALPHA_EN3_LOWER_O, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_L,
    ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION,
    ALPHA_NULL, 0
};

// "1[white ball]2[white ball]3[white ball]4[white ball]5[white ball]"
u16 D_801AFB3C_795E2C[] = {
    ALPHA_1, ALPHA_BALL_WHITE, ALPHA_2, ALPHA_BALL_WHITE,
    ALPHA_3, ALPHA_BALL_WHITE, ALPHA_4, ALPHA_BALL_WHITE,
    ALPHA_5, ALPHA_BALL_WHITE,
    ALPHA_NULL, 0
};

// "6[white ball]7[white ball]8[white ball]9[white ball]0[white ball]"
u16 D_801AFB54_795E44[] = {
    ALPHA_6, ALPHA_BALL_WHITE, ALPHA_7, ALPHA_BALL_WHITE,
    ALPHA_8, ALPHA_BALL_WHITE, ALPHA_9, ALPHA_BALL_WHITE,
    ALPHA_0, ALPHA_BALL_WHITE,
    ALPHA_NULL, 0
};

// "1[red ball]2[red ball]3[red ball]4[red ball]5[red ball]"
u16 D_801AFB6C_795E5C[] = {
    ALPHA_1, ALPHA_BALL_RED, ALPHA_2, ALPHA_BALL_RED,
    ALPHA_3, ALPHA_BALL_RED, ALPHA_4, ALPHA_BALL_RED,
    ALPHA_5, ALPHA_BALL_RED,
    ALPHA_NULL, 0
};

// "6[red ball]7[red ball]8[red ball]9[red ball]0[red ball]"
u16 D_801AFB84_795E74[] = {
    ALPHA_6, ALPHA_BALL_RED, ALPHA_7, ALPHA_BALL_RED,
    ALPHA_8, ALPHA_BALL_RED, ALPHA_9, ALPHA_BALL_RED,
    ALPHA_0, ALPHA_BALL_RED,
    ALPHA_NULL, 0
};

// "あいうえおかキ" / "a i u e o ka ki"
u16 D_801AFB9C_795E8C[] = {
    ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_I, ALPHA_JP_HIRA_U, ALPHA_JP_HIRA_E,
    ALPHA_JP_HIRA_O, ALPHA_JP_HIRA_KA, ALPHA_JP_KATA_KI,
    ALPHA_NULL
};

// "100M"
u16 D_801AFBAC_795E9C[] = {
    ALPHA_THIN_1, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M,
    ALPHA_NULL, 0
};

// "Jump"
u16 D_801AFBB8_795EA8[] = {
    ALPHA_EN3_UPPER_J, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_M, ALPHA_EN3_LOWER_P,
    ALPHA_NULL, 0
};

// "Ball"
u16 D_801AFBC4_795EB4[] = {
    ALPHA_EN3_UPPER_B, ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_L,
    ALPHA_NULL, 0
};

// "200M"
u16 D_801AFBD0_795EC0[] = {
    ALPHA_THIN_2, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M,
    ALPHA_NULL, 0
};

// "400M"
u16 D_801AFBDC_795ECC[] = {
    ALPHA_THIN_4, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M,
    ALPHA_NULL, 0
};

// "マラソン" / "Marathon"
u16 D_801AFBE8_795ED8[] = {
    ALPHA_JP_KATA_MA, ALPHA_JP_KATA_RA, ALPHA_JP_KATA_SO, ALPHA_JP_KATA_N,
    ALPHA_NULL, 0
};

// "Hurdle"
u16 D_801AFBF4_795EE4[] = {
    ALPHA_EN3_UPPER_H, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_D,
    ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_E,
    ALPHA_NULL, 0
};

// "..."
u16 D_801AFC04_795EF4[] = {
    ALPHA_PERIOD, ALPHA_PERIOD, ALPHA_PERIOD,
    ALPHA_NULL
};

// "WR"
u16 D_801AFC0C_795EFC[] = {
    ALPHA_EN_UPPER_W, ALPHA_EN_UPPER_R,
    ALPHA_NULL, 0
};

// "RC"
u16 D_801AFC14_795F04[] = {
    ALPHA_EN_UPPER_R, ALPHA_EN_UPPER_C,
    ALPHA_NULL, 0
};

// "GOAL!!"
u16 D_801AFC1C_795F0C[] = {
    ALPHA_EN3_UPPER_G, ALPHA_EN3_UPPER_O, ALPHA_EN3_UPPER_A, ALPHA_EN3_UPPER_L,
    ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION,
    ALPHA_NULL, 0
};

// "No Flying"
u16 D_801AFC2C_795F1C[] = {
    ALPHA_EN3_UPPER_N, ALPHA_EN3_LOWER_O, ALPHA_SPACE, ALPHA_EN3_UPPER_F,
    ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_Y, ALPHA_EN3_LOWER_I, ALPHA_EN3_LOWER_N,
    ALPHA_EN3_LOWER_G,
    ALPHA_NULL
};

// "Rejected!"
u16 D_801AFC40_795F30[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_J, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_D,
    ALPHA_EXCLAMATION,
    ALPHA_NULL
};

// "3 Chances"
u16 D_801AFC54_795F44[] = {
    ALPHA_THIN_3, ALPHA_SPACE, ALPHA_EN3_UPPER_C, ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_N, ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_S,
    ALPHA_NULL
};

// "Events"
u16 D_801AFC68_795F58[] = {
    ALPHA_EN3_UPPER_E, ALPHA_EN3_LOWER_V, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_N,
    ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_S,
    ALPHA_NULL, 0
};

// " R   M" (remaining distance)
u16 D_801AFC78_795F68[] = {
    ALPHA_SPACE, ALPHA_EN3_UPPER_R, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_SPACE, ALPHA_EN_UPPER_M,
    ALPHA_NULL, 0
};

// "Ready!"
u16 D_801AFC88_795F78[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_D,
    ALPHA_EN3_LOWER_Y, ALPHA_EXCLAMATION,
    ALPHA_NULL, 0
};

// "Set!!"
u16 D_801AFC98_795F88[] = {
    ALPHA_EN3_UPPER_S, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_T, ALPHA_2EXCLAMATION,
    ALPHA_NULL, 0
};

// "Go!!"
u16 D_801AFCA4_795F94[] = {
    ALPHA_EN3_UPPER_G, ALPHA_EN3_LOWER_O, ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION,
    ALPHA_NULL, 0
};

// "    [black]→[white ball]"
u16 D_801AFCB0_795FA0[] = {
    ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_COLOR_BLACK, ALPHA_ARROW_RIGHT, ALPHA_BALL_WHITE,
    ALPHA_NULL
};

// "[white]→[red ball]    "
u16 D_801AFCC0_795FB0[] = {
    ALPHA_COLOR_WHITE, ALPHA_ARROW_RIGHT, ALPHA_BALL_RED, ALPHA_SPACE,
    ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_NULL
};

// "Mathfun"
u16 D_801AFCD0_795FC0[] = {
    ALPHA_EN3_UPPER_M, ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_F, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_N,
    ALPHA_NULL
};

// "[black]Q's"
u16 D_801AFCE0_795FD0[] = {
    ALPHA_COLOR_BLACK, ALPHA_EN3_UPPER_Q, ALPHA_APOSTROPHE, ALPHA_EN3_LOWER_S,
    ALPHA_NULL, 0
};

// "[black]ああああああああ" / AAAAAAAA
u16 D_801AFCEC_795FDC[] = {
    ALPHA_COLOR_BLACK, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A,
    ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A,
    ALPHA_JP_HIRA_A,
    ALPHA_NULL
};

// "TIME UP!"
u16 D_801AFD00_795FF0[] = {
    ALPHA_EN_UPPER_T, ALPHA_EN_UPPER_I, ALPHA_EN_UPPER_M, ALPHA_EN_UPPER_E,
    ALPHA_SPACE, ALPHA_EN_UPPER_U, ALPHA_EN_UPPER_P, ALPHA_EN_EXCLAMATION,
    ALPHA_NULL, 0
};

// "[black]W[white ball][white]T   P"
u16 D_801AFD14_796004[] = {
    ALPHA_COLOR_BLACK, ALPHA_EN3_UPPER_W, ALPHA_BALL_WHITE, ALPHA_COLOR_WHITE,
    ALPHA_EN3_UPPER_T, ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_EN3_UPPER_P,
    ALPHA_NULL
};

// "[white]R[red ball]T   P"
u16 D_801AFD28_796018[] = {
    ALPHA_COLOR_WHITE, ALPHA_EN3_UPPER_R, ALPHA_BALL_RED, ALPHA_EN3_UPPER_T,
    ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_EN3_UPPER_P,
    ALPHA_NULL, 0
};

// "Clear"
u16 D_801AFD3C_79602C[] = {
    ALPHA_EN3_UPPER_C, ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_R,
    ALPHA_NULL
};

// "A's"
u16 D_801AFD48_796038[] = {
    ALPHA_EN3_UPPER_A, ALPHA_APOSTROPHE, ALPHA_EN3_LOWER_S,
    ALPHA_NULL
};

// "3回やったら しっかく!!" / "If you false-start three times, you're disqualified!!"
u16 D_801AFD50_796040[] = {
    ALPHA_THIN_3, ALPHA_JP_KANJI_U56DE, ALPHA_JP_HIRA_YA, ALPHA_JP_HIRA_SMALL_TSU,
    ALPHA_JP_HIRA_TA, ALPHA_JP_HIRA_RA, ALPHA_SPACE, ALPHA_JP_HIRA_SHI,
    ALPHA_JP_HIRA_SMALL_TSU, ALPHA_JP_HIRA_KA, ALPHA_JP_HIRA_KU, ALPHA_2EXCLAMATION,
    ALPHA_NULL, 0
};

// " WR"
u16 D_801AFD6C_79605C[] = {
    ALPHA_SPACE, ALPHA_EN3_UPPER_W, ALPHA_EN3_UPPER_R,
    ALPHA_NULL
};

// "Record"
u16 D_801AFD74_796064[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_O,
    ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_D,
    ALPHA_NULL, 0
};

// "べすとすこあ" / "Best Score"
u16 D_801AFD84_796074[] = {
    ALPHA_JP_HIRA_BE, ALPHA_JP_HIRA_SU, ALPHA_JP_HIRA_TO, ALPHA_JP_HIRA_SU,
    ALPHA_JP_HIRA_KO, ALPHA_JP_HIRA_A,
    ALPHA_NULL, 0
};

// "Score"
u16 D_801AFD94_796084[] = {
    ALPHA_EN3_UPPER_S, ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_O, ALPHA_EN3_LOWER_R,
    ALPHA_EN3_LOWER_E,
    ALPHA_NULL
};

// "--:--:--"
u16 D_801AFDA0_796090[] = {
    ALPHA_EN_MINUS, ALPHA_EN_MINUS, ALPHA_EN_COLON, ALPHA_EN_MINUS,
    ALPHA_EN_MINUS, ALPHA_EN_COLON, ALPHA_EN_MINUS, ALPHA_EN_MINUS,
    ALPHA_NULL, 0
};

u16* D_801AFDB4_7960A4[] = {
    D_801AFB14_795E04,
    D_801AFB1C_795E0C,
    D_801AFB24_795E14,
    D_801AFB2C_795E1C,
    D_801AFB3C_795E2C,
    D_801AFB54_795E44,
    D_801AFB6C_795E5C,
    D_801AFB84_795E74,
    D_801AFB9C_795E8C,
    D_801AFBAC_795E9C,
    D_801AFBB8_795EA8,
    D_801AFBC4_795EB4,
    D_801AFBD0_795EC0,
    D_801AFBDC_795ECC,
    D_801AFBE8_795ED8,
    D_801AFBF4_795EE4,
    D_801AFC04_795EF4,
    D_801AFC0C_795EFC,
    D_801AFC14_795F04,
    D_801AFC1C_795F0C,
    D_801AFC2C_795F1C,
    D_801AFC40_795F30,
    D_801AFC54_795F44,
    D_801AFC68_795F58,
    D_801AFC78_795F68,
    D_801AFC88_795F78,
    D_801AFC98_795F88,
    D_801AFCA4_795F94,
    D_801AFCB0_795FA0,
    D_801AFCC0_795FB0,
    D_801AFCD0_795FC0,
    D_801AFCE0_795FD0,
    D_801AFCEC_795FDC,
    D_801AFD00_795FF0,
    D_801AFD14_796004,
    D_801AFD28_796018,
    D_801AFD3C_79602C,
    D_801AFD48_796038,
    D_801AFD50_796040,
    D_801AFD6C_79605C,
    D_801AFD74_796064,
    D_801AFD84_796074,
    D_801AFD94_796084,
    D_801AFDA0_796090,
};

u16 D_801AFE64_796154[] = {
    1, 0, 32, 3, 90, 9
};

u16 D_801AFE70_796160[] = {
    0xB8, 0xB8, 0xB8, 0xB8, 0x88, 0xB8, 0x88, 0x80, 0x80, 0x88
};

u8 D_801AFE84_796174[] = {
    6, 7, 8, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 7, 8, 6, 6, 0, 0, 0
};

u8 D_801AFE98_796188[] = {
    6, 7, 8, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 7, 8, 6, 6, 6
};

u8 D_801AFEB8_7961A8[] = {
   6, 7, 8, 9, 10, 9, 9, 10, 10, 9, 9, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10,
   9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10,
   9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 7, 8,
   6, 6, 6
};

u8 D_801AFEF8_7961E8[] = {
    9, 7, 8, 10
};

u8 D_801AFEFC_7961EC[] = {
   10, 7, 8, 9, 10, 9, 10, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
};

u8 D_801AFF1C_79620C[] = {
    9, 7, 8, 10
};

u8 D_801AFF20_796210[] = {
   6, 7, 8, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 7, 8, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
};

u8 D_801AFF40_796230[] = {
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 9, 7, 8, 10, 0, 0
};

u8 D_801AFF58_796248[] = {
    10, 7, 8, 9
};

u8 D_801AFF5C_79624C[] = {
    10, 7, 8, 9
};

u8* D_801AFF60_796250[] = {
    D_801AFE84_796174,
    D_801AFE98_796188,
    D_801AFEB8_7961A8,
    D_801AFEFC_7961EC,
    D_801AFF1C_79620C,
    D_801AFF20_796210,
    D_801AFF58_796248,
    D_801AFEF8_7961E8,
    D_801AFF40_796230,
    D_801AFF5C_79624C
};

u16 D_801AFF88_796278[] = {
    0x0098, 0x0098, 0x0098, 0x0098,
    0x0098, 0x0098, 0x0098, 0x00D0,
    0x00D0, 0x0068
};

u8 D_801AFF9C_79628C[] = {
   0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0
};

u8 D_801AFFA8_796298[] = {
   0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

u8 D_801AFFC8_7962B8[] = {
   0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

u8 D_801B0008_7962F8[] = {
    3, 3, 3, 3
};

u8 D_801B000C_7962FC[] = {
0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

u8 D_801B002C_79631C[] = {
    3, 3, 3, 3, 3, 3, 0, 0
};
u8 D_801B0034_796324[32] = {
    0
};

u8 D_801B0054_796344[] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 0, 0
};

u8 D_801B006C_79635C[] = {
    0, 0, 1, 0
};

u8 D_801B0070_796360[4] = {
    0
};

u8* D_801B0074_796364[] = {
    D_801AFF9C_79628C,
    D_801AFFA8_796298,
    D_801AFFC8_7962B8,
    D_801B000C_7962FC,
    D_801B002C_79631C,
    D_801B0034_796324,
    D_801B006C_79635C,
    D_801B0008_7962F8,
    D_801B0054_796344,
    D_801B0070_796360
};

// array of graphic indices.
u16 D_801B009C_79638C[] = {
    0x1808, 0x180A, 0x180C, 0x180E, 0x1810, 0x1812,
    0x1814, 0x1816, 0x1818, 0x181A, 0x181C, 0x181E
};

u16 D_801B00B4_7963A4[] = {
    0x100, 0x100, 0x100, 0x100, 0x100, 0x100, 0x80, 0x80, 0x80, 0x80, 0x80, 0x100
};

u16 D_801B00CC_7963BC[] = {
    0x008C, 0x008C, 0x004D, 0x004D, 0x000E, 0x000E,
    0xFFF4, 0x000C, 0x000C, 0x000E, 0x000E, 0xFFE2
};

// array of graphic indices.
u16 D_801B00E4_7963D4[] = {
    0x1806, 0x1804, 0x1800, 0x1802, 0, 0
};

void func_80070338(u16 actor_index);

void func_801A6ED4_78D1C4(u16 actor_index, u16 value);
void func_801A7CA4_78DF94(u16);
void func_801A8380_78E670(u16 actor_index, u8 value);
void func_801AA480_790770(u16 actor_index, s16* script, s32* cursor, s32* timer);
void func_801AAB78_790E68(u16 actor_index, f32* script, s32* cursor, s32* timer);
void func_801AD0AC_79339C(u16 actor_index);

void func_801A6900_78CBF0(u16 actor_index, u16 value) {
    u16 new_actor_index;

    switch (gMarinaAnim.state) {
    case 0:
        gMarinaAnim.state = gFestivalEventState;
        break;
    case 0x20:
        gActors[actor_index].state = MARINASTATE_57;
        gActors[actor_index].unk_170 = 30;
        gMarinaAnim.state++;
        // fallthrough
    case 0x21:
        if (gActors[actor_index].posX.whole < 0x21F - gScreenPosCurrentX.whole) {
            gActors[actor_index].posX.whole++;
        }
        else {
            gActors[actor_index].unk_170 = 1;
            gMarinaAnim.state++;
        }
        break;
    case 0x30:
        gActors[actor_index].state = MARINASTATE_57;
        gActors[actor_index].unk_170 = 33;
        gMarinaAnim.state++;
        break;
    case 0x31:
        if ((gButtonHold & gButton_DRight) || (gButtonHold & gButton_CRight)) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            gActors[actor_index].unk_170 = 29;
            gMarinaAnim.state++;
        }
        break;
    case 0x32:
        if (gActors[actor_index].posX.whole >= 0) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170 = 1;
            gMarinaAnim.state++;
        }
        break;
    case 0x40:
        if (gFestivalCompetitors[0].rank != 0) {
            gMarinaAnim.timer = 120;
            D_801370CC |= gButton_DRight;
            gMarinaAnim.state++;
        }
        break;
    case 0x41:
        D_801370CC |= gButton_DRight;
        if (--gMarinaAnim.timer <= 0 || gScreenPosCurrentX.whole + gActors[0].posX.whole > gActors[0x30].unk_174 + 48) {
            gFestivalCompetitors[0].unk_08 = 0;
            if (gFestivalCompetitors[0].rank == 1) {
                if (gFestivalCurrentEvent == 0 && YellowGem_GetFlag(gCurrentStage) == 0 && gActors[0x30].unk_17C < 0x1100) {
                    gMarinaAnim.state = 0x46;
                }
                else {
                    gMarinaAnim.state = 0x42;
                }
            }
            else {
                gMarinaAnim.state = 0x43;
            }
        }
        break;
    case 0x42:
        gActors[0].velocityX.raw = Math_ApproachS32(gActors[0].velocityX.raw, 0, FIXED_UNIT(0.25));
        if (gActors[actor_index].flags_098 & 0x20) {
            D_801370CE |= gButton_A;
            gMarinaAnim.timer = 30;
            if (gFestivalCompetitors[0].unk_08 == 0) {
                Sound_PlaySfx(SFX_MARINA_YAY);
                gFestivalCompetitors[0].unk_08 = 1;
            }
        }
        if (gMarinaAnim.timer > 0) {
            gMarinaAnim.timer--;
            D_801370CC |= gButton_A;
        }
        break;
    case 0x43:
        gActors[0].velocityX.raw = Math_ApproachS32(gActors[0].velocityX.raw, 0, FIXED_UNIT(0.25));
        if ((gActors[actor_index].flags_098 & 0x20) && gActors[actor_index].velocityX.raw == 0) {
            gActors[actor_index].state = MARINASTATE_57;
            gActors[actor_index].unk_170 = 165;
            gMarinaAnim.state++;
        }
        break;
    case 0x44:
        gActors[0].velocityX.raw = Math_ApproachS32(gActors[0].velocityX.raw, 0, FIXED_UNIT(0.25));
        break;
    case 0x46:
        gActors[0].velocityX.raw = Math_ApproachS32(gActors[0].velocityX.raw, 0, FIXED_UNIT(0.25));
        if (gActors[0].velocityX.raw == 0) {
            gMarinaAnim.state++;
            gMarinaAnim.timer = 60;
        }
        break;
    case 0x47: {
        u8* timer = &gMarinaAnim.timer;
        if (--*timer <= 0) {
            gMarinaAnim.state++;
            gMarinaAnim.timer = 96;
            new_actor_index = SpawnGemActor(actor_index, 0x32, 0);
            gActors[new_actor_index].posY.whole = gActors[0].posY.whole + 64;
            SpawnParticle_RingSparkle(new_actor_index, 0, 1.0f, gActors[new_actor_index].posX.whole, gActors[new_actor_index].posY.whole, gActors[new_actor_index].posZ.whole + 1);
            Sound_PlaySfx(SFX_MARINA_YAY);
            gFestivalCompetitors[0].unk_08 = 1;
        }
        break;
    }
    case 0x48:
        if (--gMarinaAnim.timer <= 0) {
            gMarinaAnim.state = 0x42;
        }
        break;
    case 0x10:
    case 0x50:
        break;
    }
}


void func_801A6ED4_78D1C4(u16 actor_index, u16 value) {
    switch (gMarinaAnim.state) {
    case 0:
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        gActors[actor_index].posX.whole = D_801AF5D0_7958C0[gFestivalCompetitors[0].rank][0] - gScreenPosCurrentX.whole;
        gActors[actor_index].posY.whole = D_801AF5D0_7958C0[gFestivalCompetitors[0].rank][1] - gScreenPosCurrentY.whole;
        gActors[actor_index].unk_170 = 1;
        gFestivalCompetitors[0].unk_08 = 0;
        gFestivalCompetitors[0].rand = 0;
        gMarinaAnim.state++;
        // fallthrough
    case 1:
        if (gFestivalEventState == 0x20) {
            gMarinaAnim.state++;
            if (gFestivalCompetitors[0].rank == 1) {
                Sound_PlaySfx(SFX_MARINA_YAY + actor_index * 0 + gFestivalCompetitors[0].unk_08 * 0);
            }
            else {
                Sound_PlaySfx(SFX_MARINA_OHNO + actor_index * 0);
            }
        }
        break;
    case 2:
        switch (gFestivalCompetitors[0].rank) {
        case 0:
            gActors[actor_index].unk_170 = 1;
            break;
        case 1:
            if ((gMarinaAnim.state == 2) || (gMarinaAnim.state == 2)) {
            }
            switch (gFestivalCompetitors[0].unk_08) {
            case 0:
                gMarinaAnim.timer = 10 + gMarinaAnim.timer * 0;
                gFestivalCompetitors[0].unk_08++;
                // fallthrough
            case 1:
                if (gActors[actor_index].flags_098 & 0x20) {
                    D_801370CE |= gButton_A;
                    gMarinaAnim.timer = 10 + gMarinaAnim.timer * 0;
                }
                if (gMarinaAnim.timer > 0) {
                    gMarinaAnim.timer--;
                    D_801370CC |= gButton_A;
                }
                else {
                    gMarinaAnim.timer = 60;
                    gFestivalCompetitors[0].unk_08++;
                }
                break;
            case 2:
                if (gMarinaAnim.timer > 0) {
                    gMarinaAnim.timer--;
                }
                else {
                    gFestivalCompetitors[0].unk_08 = 0;
                }
                break;
            }
            break;
        case 2:
            gActors[actor_index].unk_170 = 6;
            gMarinaAnim.state++;
            break;
        case 3:
            gActors[actor_index].unk_170 = 159;
            gMarinaAnim.state++;
            break;
        case 4:
            gActors[actor_index].unk_170 = 165;
            gMarinaAnim.state++;
            break;
        }
        break;
    case 3:
        break;
    }
}


void func_801A7200_78D4F0(u16 actor_index, u16 value) {
    switch (gMarinaAnim.state) {
    case 0:
        gActors[0].state = MARINASTATE_57;
        gActors[actor_index].unk_170 = 0x1D;
        if (gActors[actor_index].posX.whole < 0) {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        }
        else {
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
        }
        gMarinaAnim.state++;
    case 1:
        if (ABS(gActors[actor_index].posX.whole) < 8) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170 = 1;
            gMarinaAnim.state++;
        }
        break;
    case 2:
        break;
    }
}


void func_801A7304_78D5F4(u16 actor_index, u16 value) {
    switch (gMarinaAnim.state) {
    case 0:
        gActors[0].state = MARINASTATE_57;
        gActors[actor_index].unk_170 = 0x1D;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
        gMarinaAnim.state++;
    case 1:
        if (gScreenPosCurrentX.whole - ((actor_index * 0) - gActors[actor_index].posX.whole) >= 0x1F6) {
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].unk_170 = 1;
            gMarinaAnim.state++;
            gMarinaAnim.anim_u32 = MARINAANIM_25;
        }
        break;
    case 2:
        break;
    }
}


void func_801A73F4_78D6E4(s32 arg0, s32 arg1) {
}

void func_801A7400_78D6F0(s32 arg0, s32 arg1) {
}

void func_801A740C_78D6FC(s32 arg0, s32 arg1) {
}

void func_801A7418_78D708(s32 arg0, s32 arg1) {
}

u16 func_801A7424_78D714(u16 arg0) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x90, 0xb8);
    if (actor_index != 0) {
        gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_1;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    }
    return actor_index;
}

void func_801A74A0_78D790(u16 actor_index, s32 count) {
    s32 index;
    u16 particle_index;
    Actor* particle;

    for (index = 0; index < count; index++) {
        particle_index = func_801A7424_78D714(actor_index);
        if (particle_index == 0) {
            break;
        }

        particle = &gActors[particle_index];
        particle->posX.whole = gActors[actor_index].posX.whole;
        particle->posY.whole = gActors[actor_index].posY.whole;
        particle->posZ.whole = gActors[actor_index].posZ.whole + 1;
        particle->graphicFlags |= 0x1F;
        particle->flags |= ACTOR_FLAG_ONSCREEN_ONLY;
        particle->scaleX = 0.5f;
        particle->scaleY = 0.5f;
        particle->var_154 = 0xF0;
        particle->var_158 = (Rand() << 9) - FIXED_UNIT(1);
        particle->var_15C = (s32)(-(Rand() * 0.0625) * 8192.0);
        particle->var_160 = (s32)(((s32)Rand() - 0x80) * 0.5);
        particle->unk_164 = 0x300;
    }
}


void func_801A76AC_78D99C(u16 arg0) {
    u16 actor_index;
    u16 rand;

    actor_index = func_801A7424_78D714(arg0);
    if (actor_index != 0) {
        rand = Rand();
        gActors[actor_index].posX.whole = gActors[arg0].posX.whole + ((rand - 0x80) / 2);
        gActors[actor_index].posY.whole = 0x80;
        gActors[actor_index].posZ.whole = gActors[arg0].posZ.whole + 1;
    }
}

void func_801A774C_78DA3C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicIndex = GINDEX_FEST_WARITAMA;
        gActors[actor_index].posZ.whole = 0x20;
        gActors[actor_index].state++;
    case 1:
        if (gActors[actor_index].var_110 == 0.0f) {
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].graphicList = D_801AF5F8_7958E8;
            gActors[actor_index].state++;
            gActors[actor_index].var_110 = 240.0f;
            func_801A74A0_78D790(actor_index, 0x20);
        }
        else if (gActors[actor_index].var_110 < 0.0f) {
            gActors[actor_index].var_110 = -1.0f;
        }
        else {
            gActors[actor_index].var_110 -= 1.0f;
        }
        break;
    case 2:
        if (gActiveFrames % 7 == 0) {
            func_801A76AC_78D99C(actor_index);
        }
        break;
    }
}


void func_801A7878_78DB68(u16 arg0, u16 arg1) {
    if (arg1 == 0) {
        gActors[arg0].colorR = 0;
        gActors[arg0].colorG = 0;
        gActors[arg0].colorB = 49;
    }
    else {
        gActors[arg0].colorR = ((arg1 >> 2)& 1) * 0xFF;
        gActors[arg0].colorG = ((arg1 >> 1) & 1) * 0xFF;
        gActors[arg0].colorB = (arg1 & 1) * 0xFF;
    }
}

void func_801A7940_78DC30(u16 actor_index) {
    s32 rotation_step;
    Actor* actor = &gActors[actor_index];

    switch (actor->state) {
    case 0:
        func_801A7878_78DB68(actor_index, Rand() % 8);
        actor->graphicFlags |= 0x1F;
        actor->flags |= ACTOR_FLAG_ONSCREEN_ONLY;
        actor->var_154 = 0xF0;
        actor->scaleX = 0.5f;
        actor->scaleY = 0.5f;
        actor->var_158 = (Rand() << 9) - FIXED_UNIT(1);
        actor->var_15C = (s32)(-(Rand() * 0.0625) * 8192.0);
        actor->var_160 = (s32)(((s32)Rand() - 0x80) * 0.5);
        actor->unk_164 = 0x300;
        actor->state++;
        // fallthrough
    case 1:
        if (actor->var_154 != 0) {
            actor->var_154--;
        }
        else {
            actor->flags = 0;
            break;
        }

        if (gActors[actor_index].var_160) {
        }

        actor->unk_164 += actor->var_160;
        actor->velocityX.raw = (TO_FIXED(COS(actor->unk_164)) + (f32)actor->var_158);
        actor->velocityY.raw = (TO_FIXED(SIN(actor->unk_164)) + (f32)actor->var_15C);

        if (actor->unk_164 >= 0x200) {
            rotation_step = actor->var_160 / 4;
        }
        else {
            rotation_step = actor->var_160 / 16;
        }
        actor->rotateX += (f32)rotation_step;
        actor->rotateY += (f32)rotation_step;
        actor->rotateZ += (f32)rotation_step;
        break;
    }
}


void func_801A7C0C_78DEFC(s32 arg0) {
}

void func_801A7C14_78DF04(u16 actor_index) {
    s16* graphic_list = gActors[actor_index].graphicList;

    if (graphic_list != NULL) {
        gActors[actor_index].unk_178--;
        if ((gActors[actor_index].unk_178 == 0) && (graphic_list[0] != 0)) {
            gActors[actor_index].graphicIndex = graphic_list[0];
            gActors[actor_index].unk_178 = graphic_list[1];
            graphic_list += 2;
            if (graphic_list[0] < 0) {
                graphic_list += graphic_list[0];
            }
            gActors[actor_index].graphicList = graphic_list;
        }
    }
}


void func_801A7CA4_78DF94(u16 actor_index) {
    s8 offset;
    u16 graphic_offset = (gActors + actor_index)->graphicIndex;

    graphic_offset -= GINDEX_FEST_FLAGGER;

    if (graphic_offset & 1) {
        if (D_801AF6F0_7959E0 + (gActors + actor_index)->var_0D8 * 0) {
        }
        graphic_offset--;
        offset = (D_801AF6F0_7959E0 + (gActors + actor_index)->var_0D8 * 0)[graphic_offset];
        (gActors + actor_index)->posX.whole = (s32)((gActors + actor_index)->scaleX * (f32)(offset + graphic_offset * 0) * -1.0f + (f32)((gActors + actor_index)->unk_17C - gScreenPosCurrentX.whole));
        offset = (D_801AF6F0_7959E0 + (gActors + actor_index)->var_0D8 * 0)[graphic_offset + 1];
        (gActors + actor_index)->posY.whole = (s32)((gActors + actor_index)->scaleY * (f32)(offset + graphic_offset * 0) * -1.0f + (f32)((gActors + actor_index)->unk_180 - gScreenPosCurrentY.whole));
    }
    else {

        offset = (D_801AF6F0_7959E0 + (gActors + actor_index)->var_0D8 * 0)[graphic_offset];
        (gActors + actor_index)->posX.whole = (s32)((gActors + actor_index)->scaleX * (f32)(offset + graphic_offset * 0) + (f32)((gActors + actor_index)->unk_17C - gScreenPosCurrentX.whole));
        offset = (D_801AF6F0_7959E0 + (gActors + actor_index)->var_0D8 * 0)[graphic_offset + 1];
        (gActors + actor_index)->posY.whole = (s32)((gActors + actor_index)->scaleY * (f32)(offset + graphic_offset * 0) + (f32)((gActors + actor_index)->unk_180 - gScreenPosCurrentY.whole));
    }
}


void func_801A7E98_78E188(u16 actor_index) {
    Actor* parent = &gActors[actor_index];
    u16 sp4A;
    f32 scale = ((parent->var_0D8 >> 8) & 0xFF) * 0.0625;
    u16 part;
    u16 var_s1;

    sp4A = parent->var_0D8 & 0xFF;
    parent->var_158 = 1;
    if (sp4A < 2) {
        parent->graphicFlags = ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_SCALE;
        parent->flags &= ~ACTOR_FLAG_ONSCREEN_ONLY;
        parent->graphicIndex = ((u16*)D_801AF69C_79598C)[sp4A * 2];
        parent->scaleX = scale;
        parent->scaleY = scale;
        parent->var_15C = 0;
        parent->posZ.whole = parent->var_110;
        parent->var_0D8 = sp4A;
        return;
    }

    if (sp4A == 2 || sp4A == 4 || sp4A == 5) {
        parent->graphicList = D_801AF6B8_7959A8[(u16)(sp4A * 2)];
        parent->unk_178 = 1;
        parent->var_0D8 = sp4A;
        parent->graphicFlags = ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        parent->flags &= ~ACTOR_FLAG_ONSCREEN_ONLY;
        parent->unk_17C = gScreenPosCurrentX.whole + parent->posX.whole;
        parent->unk_180 = gScreenPosCurrentY.whole + parent->posY.whole;
        parent->scaleX = scale;
        parent->scaleY = scale;
        parent->posZ.whole = parent->var_110;
        func_801A7CA4_78DF94(actor_index);
        parent->var_15C = 0;
        return;
    }

    for (part = 0; part < 2; part++) {
        if (part) {
            var_s1 = Actor_RangeFindInactive(0x70, 0xC0);
            parent->var_15C = var_s1;
            if (var_s1 == 0) {
                break;
            }
        }
        else {
            var_s1 = actor_index;
        }

        if (part) {
            if (((u16*)D_801AF69C_79598C)[(u16)(sp4A * 2 + part)] == 0) {
                break;
            }
            gActors[var_s1].actorType = ACTORTYPE_OVL2_FEST_3;
            Actor_Initialize(var_s1);
            gActors[var_s1].state = 1;
        }

        gActors[var_s1].graphicIndex = ((u16*)D_801AF69C_79598C)[(u16)(sp4A * 2 + part)];
        gActors[var_s1].graphicList = D_801AF6B8_7959A8[(u16)(sp4A * 2 + part)];
        gActors[var_s1].unk_178 = 1;
        gActors[var_s1].var_0D8 = sp4A;
        gActors[var_s1].graphicFlags = ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_SCALE;
        gActors[var_s1].flags &= ~ACTOR_FLAG_ONSCREEN_ONLY;
        gActors[var_s1].unk_17C = gScreenPosCurrentX.whole + parent->posX.whole;
        gActors[var_s1].unk_180 = gScreenPosCurrentY.whole + parent->posY.whole;
        gActors[var_s1].posZ.whole = parent->var_110;
        gActors[var_s1].scaleX = scale;
        gActors[var_s1].scaleY = scale;
        func_801A7CA4_78DF94(var_s1);
    }
}


void func_801A821C_78E50C(u16 actor_index) {
    if (gActors[actor_index].var_0D8 > 1) {
        func_801A7C14_78DF04(actor_index);
        func_801A7CA4_78DF94(actor_index);
    }
}

void func_801A8284_78E574(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        func_801A7E98_78E188(actor_index);
        gActors[actor_index].state++;
    case 1:
        func_801A821C_78E50C(actor_index);
        if ((gActors[actor_index].var_158 != 0) && (gActors[actor_index].posX.whole < -0x320 || gActors[actor_index].posX.whole > 0x320)) {
            gActors[actor_index].flags = 0;
            if (gActors[actor_index].var_15C != 0) {
                gActors[gActors[actor_index].var_15C].flags = 0;
            }
        }
        break;
    }
}


void func_801A8380_78E670(u16 actor_index, u8 value) {
    u16 parent_index = gActors[actor_index].unk_158_u16[1];

    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK4;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posX.raw = TO_FIXED(gActors[actor_index].var_15C) + (gActors + parent_index)->posX.raw;
    gActors[actor_index].posY.raw = TO_FIXED(gActors[actor_index].var_160) + (gActors + parent_index)->posY.raw;
    gActors[actor_index].posZ.raw = (gActors + parent_index)->posZ.raw + FIXED_UNIT(1);
    if ((((u16)(gActors + parent_index)->var_154 + (((gActors + parent_index)->var_154 & 0xFF) * 0)) & 0xFF) && ((gActors + parent_index)->var_154 & 0xFF)) {
    }
}


u16 func_801A8428_78E718(u16 actor_index, u16 value, s16 horizontal_offset, u16 glyph) {
    u16 child_index;

    if (glyph == ALPHA_BALL_WHITE || glyph == ALPHA_BALL_RED) {
        child_index = Actor_RangeFindInactive(0x50, 0x70);
    }
    else {
        if (gActors[actor_index].unk_164 & 0x400) {
            child_index = Actor_RangeFindInactive(0x60, 0x70);
        }
        else if (gActors[actor_index].unk_164 & 0x800) {
            child_index = Actor_RangeFindInactive(0x50, 0x60);
        }
        else if (gActors[actor_index].unk_164 & 0x8000) {
            child_index = Actor_RangeFindInactive(0x40, 0x50);
        }
        else {
            child_index = Actor_RangeFindInactive(0x90, 0xC0);
        }
        gActors[actor_index].unk_114 = (u32)child_index;
    }

    if (child_index != 0) {
        gActors[child_index].actorType = ACTORTYPE_OVL2_FEST_6;
        Actor_Initialize(child_index);
        gActors[child_index].var_160 = 0;
        gActors[child_index].var_158 = actor_index;
        gActors[child_index].var_15C = horizontal_offset;
        Actor_SetHitboxB(child_index, 4);
        gActors[child_index].scaleX = gActors[actor_index].scaleX;
        func_801A8380_78E670(child_index, value);

        if ((gActors[actor_index].graphicFlags & ACTOR_GFLAG_PALETTE) && !(glyph & 0x8000)) {
            gActors[child_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
            gActors[child_index].palette_18C = gActors[actor_index].palette_18C;
        }

        if (gActors[actor_index].unk_164 & 0x100) {
            gActors[child_index].unk_148 = (u32)value;
        }

        switch (glyph) {
        default:
            break;
        case ALPHA_BALL_WHITE:
            gActors[child_index].graphicIndex = 0x836;
            gActors[child_index].posZ.raw = gActors[actor_index].posZ.raw + 0xFFFF;
            gActors[child_index].unk_164 = gActors[actor_index].unk_114;
            goto glyph_ready;
        case ALPHA_BALL_RED:
            gActors[child_index].graphicIndex = 0x838;
            gActors[child_index].posZ.raw = gActors[actor_index].posZ.raw + 0xFFFF;
            gActors[child_index].unk_164 = gActors[actor_index].unk_114;
            goto glyph_ready;
        }
        gActors[child_index].graphicIndex = glyph * 2 + 0x2D2;
glyph_ready:
        if (gActors[child_index].graphicIndex >= 0x323) {
            gActors[child_index].graphicFlags &= ~ACTOR_GFLAG_PALETTE;
        }
        if (gActors[actor_index].unk_164 & 0x80) {
            gActors[child_index].unk_190 = gActors[actor_index].unk_190;
        }
        gActors[actor_index].unk_180++;
    }
    return child_index;
}



u8 func_801A8780_78EA70(u16* arg0) {
    if (*arg0 < ALPHA_EN3_LOWER_A) {
        return 6;
    }
    else if (*arg0 & 0x8000) {
        return 0;
    }

    return D_801AF724_795A14[*arg0 - ALPHA_EN3_LOWER_A];
}

u16 func_801A87C0_78EAB0(u16* str) {
    u16 len0;
    u16 len1;
    len0 = func_801A8780_78EA70(str++);
    len1 = func_801A8780_78EA70(str);
    return len1 + len0;
}

void func_801A8800_78EAF0(u16 actor_index, u8 spacing) {
    Actor* actor = &gActors[actor_index];
    u16 entry_count;
    u16 display_count;
    u16* string = D_801AFDB4_7960A4[actor->var_150];
    u8 blue = 0;
    u8 green = 0;
    u8 red = 0;
    u16 entry_index;
    u16 glyph_count;
    s16 center;
    s16 position_x;
    s16 advance;

    if (actor->unk_164 & 0x200) {
        string = (u16*)actor->unk_184;
    }

    entry_index = 0;
    entry_count = 0;
    display_count = 0;
    for (; string[entry_index] != 0x8FFF; entry_index++) {
        if (string[entry_index] & 0x8000) {
            if (string[entry_index] == ALPHA_SPACE) {
                display_count++;
            }
        }
        else {
            display_count++;
        }
        entry_count++;
    }

    entry_index = 0;
    if (actor->unk_164 & 1) {
        center = 0;
    }
    else if (spacing == 8) {
        center = actor->scaleX * (-((display_count - 1) * spacing) / 2);
    }
    else {
        display_count = 0;
        for (entry_index = 0; string[entry_index] != 0x8FFF; entry_index++) {
            if (string[entry_index] & 0x8000) {
                if (string[entry_index] == ALPHA_SPACE) {
                    display_count++;
                }
            }
            else {
                display_count += func_801A87C0_78EAB0(&string[entry_index]);
            }
        }
        entry_index = 0;
        center = -(display_count / 2);
    }

    advance = actor->scaleX * spacing;
    position_x = center;
    glyph_count = 0;
    for (; entry_index < entry_count; entry_index++) {
        if (string[entry_index] & 0x8000) {
            switch (string[entry_index]) {
            case ALPHA_SPACE:
                position_x += advance;
                break;
            case ALPHA_BALL_WHITE:
            case ALPHA_BALL_RED:
                if (spacing == 8) {
                    func_801A8428_78E718(actor_index, glyph_count, position_x - advance, string[entry_index]);
                }
                else {
                    func_801A8428_78E718(actor_index, glyph_count, position_x - func_801A87C0_78EAB0(&string[entry_index] - 1), string[entry_index]);
                    position_x += 7;
                }
                break;
            case ALPHA_COLOR_WHITE:
                red = 0;
                green = 0;
                blue = 0;
                break;
            case ALPHA_COLOR_YELLOW:
                red = 0;
                green = 0;
                blue = 255;
                break;
            case ALPHA_COLOR_PURPLE:
                red = 0;
                green = 255;
                blue = 0;
                break;
            case ALPHA_COLOR_RED:
                red = 0;
                green = 255;
                blue = 255;
                break;
            case ALPHA_COLOR_CYAN:
                red = 255;
                green = 0;
                blue = 0;
                break;
            case ALPHA_COLOR_GREEN:
                red = 255;
                green = 0;
                blue = 255;
                break;
            case ALPHA_COLOR_BLUE:
                red = 255;
                green = 255;
                blue = 0;
                break;
            case ALPHA_COLOR_BLACK:
                red = 255;
                green = 255;
                blue = 255;
                break;
            }
        }
        else {
            display_count = func_801A8428_78E718(actor_index, glyph_count, position_x, string[entry_index]);
            if (display_count != 0) {
                actor->var_15C++;
                if (actor->unk_164 & 0x40) {
                    gActors[display_count].colorR = red;
                    gActors[display_count].colorG = green;
                    gActors[display_count].colorB = blue;
                }
            }

            if (spacing == 8) {
                position_x += advance;
            }
            else {
                position_x += func_801A87C0_78EAB0(&string[entry_index]);
            }
            glyph_count++;
        }
    }
}


void func_801A8D38_78F028(u16 actor_index) {
    u16 child_index;

    if ((((gActors + actor_index)->unk_164 & 2) || ((gActors + actor_index)->unk_164 & 0x20)) &&
        ((gActors + actor_index)->unk_16C & 0xFF) == (gActors + actor_index)->var_158) {
        child_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (child_index != 0) {
            (gActors + child_index)->actorType = ACTORTYPE_OVL2_FEST_6;
            Actor_Initialize(child_index);
            (gActors + child_index)->graphicFlags = 0x851;
            (gActors + child_index)->flags = ACTOR_FLAG_ACTIVE;
            (gActors + child_index)->graphicIndex = 0x162;
            (gActors + child_index)->colorR = 0xFF;
            (gActors + child_index)->colorG = 0xFF;
            (gActors + child_index)->colorB = 0xFF;
            (gActors + child_index)->unk_16C = ((gActors + actor_index)->unk_16C & 0xFF00) >> 8;
            (gActors + child_index)->unk_170 = 0xFF;
            (gActors + child_index)->unk_118 = (gActors + actor_index)->var_15C;
            (gActors + child_index)->unk_11C = (gActors + actor_index)->scaleY;
            (gActors + child_index)->var_15C = 0;
            (gActors + child_index)->var_158 = actor_index;
            (gActors + child_index)->var_160 = (gActors + actor_index)->scaleY * -10.0f;
            (gActors + child_index)->posX.raw = TO_FIXED((gActors + actor_index)->var_15C) + (gActors + actor_index)->posX.raw;
            (gActors + child_index)->posY.raw = TO_FIXED((gActors + actor_index)->var_160) + (gActors + actor_index)->posY.raw;
            (gActors + child_index)->posZ.raw = (gActors + actor_index)->posZ.raw + FIXED_UNIT(1);

            if ((gActors + actor_index)->unk_164 & 0x20) {
                (gActors + child_index)->unk_11C = 2.0 * (gActors + actor_index)->scaleY;
            }

            if ((gActors + actor_index)->unk_164 & 0x2000) {
                (gActors + child_index)->colorB = 0;
            }

            if ((gActors + actor_index)->unk_164 & 0x1000) {
                (gActors + child_index)->colorG = 0;
                (gActors + child_index)->colorB = 0;
            }

            if ((gActors + actor_index)->unk_164 & 0x4000) {
                (gActors + child_index)->colorR = 0;
                (gActors + child_index)->colorG = 0;
            }
        }
    }

    if (((gActors + actor_index)->unk_164 & 4) && (((gActors + actor_index)->unk_170 & 0xFF) == (gActors + actor_index)->var_158)) {
        child_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (child_index != 0) {
            (gActors + child_index)->actorType = ACTORTYPE_OVL2_FEST_6;
            Actor_Initialize(child_index);
            (gActors + child_index)->graphicFlags = 0x851;
            (gActors + child_index)->flags = ACTOR_FLAG_ACTIVE;
            (gActors + child_index)->graphicIndex = 0x2D0;
            (gActors + child_index)->colorB = 0xBA;
            (gActors + child_index)->unk_16C = ((gActors + actor_index)->unk_170 & 0xFF00) >> 8;
            (gActors + child_index)->unk_170 = 0xB2;
            (gActors + child_index)->unk_118 = (gActors + actor_index)->var_15C * 1.1;
            (gActors + child_index)->unk_11C = 1.0f;

            if ((gActors + actor_index)->unk_164 & 2) {
                (gActors + child_index)->unk_11C = 1.6f;
            }

            (gActors + child_index)->var_158 = actor_index;
            (gActors + child_index)->posX.raw = (gActors + actor_index)->posX.raw;
            (gActors + child_index)->posY.raw = (gActors + actor_index)->posY.raw;
            (gActors + child_index)->posZ.raw = (gActors + actor_index)->posZ.raw;

            if ((gActors + actor_index)->unk_164 & 8) {
                (gActors + child_index)->unk_118 = (gActors + actor_index)->var_15C * 1.2;
                (gActors + child_index)->unk_11C = 1.4f;
            }
            if ((gActors + actor_index)->unk_164 & 2) {
                (gActors + child_index)->unk_118 = (gActors + actor_index)->var_15C * 1.3;
                (gActors + child_index)->var_160 -= 2;
                (gActors + child_index)->unk_11C = 1.5f;
            }
        }
    }
}


void func_801A913C_78F42C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        if (gActors[actor_index].unk_164 & 0x10) {
            func_801A8800_78EAF0(actor_index, 8);
        }
        else {
            func_801A8800_78EAF0(actor_index, 0x10);
        }

        func_801A8D38_78F028(actor_index);
        gActors[actor_index].state++;
        break;
    case 1:
        if (gActors[actor_index].var_160 == gActors[actor_index].unk_180) {
            gActors[actor_index].var_158 = 1;
            func_801A8D38_78F028(actor_index);
            gActors[actor_index].state++;
        }
        break;
    case 2:
        if (gActors[actor_index].unk_168 >= 0) {
            gActors[actor_index].unk_168--;
            if (gActors[actor_index].unk_168 <= 0) {
                gActors[actor_index].var_158 = 2;
                func_801A8D38_78F028(actor_index);
                gActors[actor_index].state++;
            }
        }
        break;
    case 3:
        if (gActors[actor_index].var_160 == 0 || gActors[actor_index].colorA == 0) {
            gActors[actor_index].flags = 0;
        }
        break;
    }
    func_801AA480_790770(actor_index, (s16*)gActors[actor_index].unk_174, &gActors[actor_index].unk_178, &gActors[actor_index].unk_17C);
}


void func_801A92D8_78F5C8(u16 actor_index) {
    u16 parent_actor_index = (gActors + actor_index)->unk_158_u16[1];

    if ((gActors + parent_actor_index)->flags == 0) {
        (gActors + actor_index)->flags = 0;
        return;
    }

    if ((gActors + actor_index)->graphicFlags & ACTOR_GFLAG_PALETTE) {
        (gActors + actor_index)->palette_18C = (gActors + parent_actor_index)->palette_18C;
    }

    (gActors + actor_index)->posX.whole = (s32)((gActors + parent_actor_index)->scaleX * (f32)(gActors + actor_index)->var_15C + (gActors + parent_actor_index)->posX.whole);
    (gActors + actor_index)->posY.whole = (s32)((gActors + parent_actor_index)->scaleY * (f32)(gActors + actor_index)->var_160 + (gActors + parent_actor_index)->posY.whole);
    if (((gActors + parent_actor_index)->unk_164 & 0x40) == 0) {
        (gActors + actor_index)->scaleX = (gActors + parent_actor_index)->scaleX;
        (gActors + actor_index)->scaleX = (gActors + parent_actor_index)->scaleX;
        (gActors + actor_index)->colorA = (gActors + parent_actor_index)->colorA;
        (gActors + actor_index)->colorR = (gActors + parent_actor_index)->colorR;
        (gActors + actor_index)->colorG = (gActors + parent_actor_index)->colorG;
        (gActors + actor_index)->colorB = (gActors + parent_actor_index)->colorB;
    }
}


void func_801A9440_78F730(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[gActors[actor_index].var_158].var_160++;
        gActors[actor_index].state++;
        break;
    case 1:
    case 0x1000:
        break;
    }
    func_801A92D8_78F5C8(actor_index);
}


void func_801A9508_78F7F8(u16 arg0) {
}

void func_801A9510_78F800(u16 actor_index) {
    s32 target_x;

    switch ((gActors + actor_index)->state) {
    case 0:
        (gActors + actor_index)->flags |= ACTOR_FLAG_DRAW;
        (gActors + actor_index)->state++;
    case 1:
        target_x = (s32)((gActors + (gActors + actor_index)->var_158)->scaleX * (f32)(gActors + actor_index)->var_15C + (gActors + (gActors + actor_index)->var_158)->posX.whole);
        (gActors + actor_index)->posX.whole = Math_ApproachS32((gActors + actor_index)->posX.whole, target_x, 4);
        if (target_x == (gActors + actor_index)->posX.whole) {
            gActors[(gActors + actor_index)->var_158].var_160++;
            (gActors + actor_index)->state++;
        }
        break;
    case 2:
    case 0x1000:
        func_801A92D8_78F5C8(actor_index);
        break;
    }
}


void func_801A9690_78F980(u16 arg0) {
}

void func_801A9698_78F988(u16 actor_index) {
    gActors[actor_index].flags = 0;
}

void func_801A96CC_78F9BC(u16 arg0) {
}

void func_801A96D4_78F9C4(u16 arg0) {
}

void func_801A96DC_78F9CC(u16 actor_index) {
    u8 table_index;

    table_index = gActors[gActors[actor_index].var_158].var_154 & 0xFF;
    D_801AF758_795A48[table_index](actor_index);
}

void func_801A9768_78FA58(u16 actor_index) {
    u8 table_index;

    table_index = (gActors[gActors[actor_index].var_158].var_154 & 0xFF00) >> 8;
    D_801AF778_795A68[table_index](actor_index);
}

void func_801A97FC_78FAEC(u16 actor_index) {
    u16 parent_index = (gActors + actor_index)->unk_158_u16[1];
    f32 alpha_ratio;

    if ((gActors + parent_index)->flags == 0) {
        (gActors + actor_index)->flags = 0;
        return;
    }

    (gActors + actor_index)->posX.whole = (s32)((gActors + parent_index)->scaleX * (f32)(gActors + actor_index)->var_15C + (f32)(gActors + parent_index)->posX.whole);
    (gActors + actor_index)->posY.whole = (s32)((gActors + parent_index)->scaleY * (f32)(gActors + actor_index)->var_160 + (f32)(gActors + parent_index)->posY.whole);
    (gActors + actor_index)->scaleX = (gActors + actor_index)->unk_118 * (gActors + parent_index)->scaleX;
    (gActors + actor_index)->scaleY = (gActors + actor_index)->unk_11C * (gActors + parent_index)->scaleY;
    alpha_ratio = (f32)((gActors + parent_index)->colorA / 255.0);
    (gActors + actor_index)->colorA = (f32)(gActors + actor_index)->unk_170 * alpha_ratio;
}


void func_801A99E4_78FCD4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        gActors[actor_index].state++;
    case 1:
        func_801A97FC_78FAEC(actor_index);
        break;
    }
}


void func_801A9A6C_78FD5C(u16 actor_index) {
    switch ((gActors + actor_index)->state) {
    case 0:
        (gActors + actor_index)->flags |= ACTOR_FLAG_DRAW;
        (gActors + actor_index)->colorA = 0;
        (gActors + actor_index)->state++;
        // fallthrough
    case 1:
        (gActors + actor_index)->posX.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleX * (f32)(gActors + actor_index)->var_15C + (f32)(gActors + (gActors + actor_index)->var_158)->posX.whole);
        (gActors + actor_index)->posY.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleY * (f32)(gActors + actor_index)->var_160 + (f32)(gActors + (gActors + actor_index)->var_158)->posY.whole);
        (gActors + actor_index)->scaleX = (gActors + actor_index)->unk_118 * (gActors + (gActors + actor_index)->var_158)->scaleX;
        (gActors + actor_index)->scaleY = (gActors + actor_index)->unk_11C * (gActors + (gActors + actor_index)->var_158)->scaleY;
        (gActors + actor_index)->colorA = Math_ApproachS32((gActors + actor_index)->colorA, (gActors + actor_index)->unk_170, 4);
        if ((gActors + actor_index)->unk_170 == (gActors + actor_index)->colorA) {
            (gActors + actor_index)->state++;
        }
        break;
    case 2:
        func_801A97FC_78FAEC(actor_index);
        break;
    }
}


void func_801A9C24_78FF14(u16 actor_index) {
    switch ((gActors + actor_index)->state) {
    case 0:
        (gActors + actor_index)->graphicFlags |= ACTOR_GFLAG_SCALE;
        (gActors + actor_index)->flags |= ACTOR_FLAG_DRAW;
        (gActors + actor_index)->state++;
        (gActors + actor_index)->scaleX = 0.0f;
        /* fallthrough */
    case 1:
        (gActors + actor_index)->posX.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleX * (f32)(gActors + actor_index)->var_15C + (f32)(gActors + (gActors + actor_index)->var_158)->posX.whole);
        (gActors + actor_index)->posY.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleY * (f32)(gActors + actor_index)->var_160 + (f32)(gActors + (gActors + actor_index)->var_158)->posY.whole);
        (gActors + actor_index)->colorA = (gActors + (gActors + actor_index)->var_158)->colorA;
        (gActors + actor_index)->scaleX = Math_ApproachF32((gActors + actor_index)->scaleX, (gActors + actor_index)->unk_118, 0.8f);
        if ((gActors + actor_index)->scaleX == (gActors + actor_index)->unk_118) {
            (gActors + actor_index)->state++;
        }
        break;
    case 2:
        func_801A97FC_78FAEC(actor_index);
        break;
    }
}


void func_801A9DD4_7900C4(u16 actor_index) {
    switch ((gActors + actor_index)->state) {
    case 0:
        (gActors + actor_index)->graphicFlags |= ACTOR_GFLAG_SCALE;
        (gActors + actor_index)->flags |= ACTOR_FLAG_DRAW;
        (gActors + actor_index)->state++;
        (gActors + actor_index)->scaleX = 0.0f;
        (gActors + actor_index)->scaleY = 0.0f;
        // fallthrough
    case 1:
        (gActors + actor_index)->posX.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleX * (f32)(gActors + actor_index)->var_15C + (f32)(gActors + (gActors + actor_index)->var_158)->posX.whole);
        (gActors + actor_index)->posY.whole = (s32)((gActors + (gActors + actor_index)->var_158)->scaleY * (f32)(gActors + actor_index)->var_160 + (f32)(gActors + (gActors + actor_index)->var_158)->posY.whole);
        (gActors + actor_index)->colorA = (255 / (s32)(gActors + (gActors + actor_index)->var_158)->colorA) * (gActors + actor_index)->unk_170;
        (gActors + actor_index)->scaleX = Math_ApproachF32((gActors + actor_index)->scaleX, (gActors + actor_index)->unk_118, 0.8f);
        (gActors + actor_index)->scaleY = Math_ApproachF32((gActors + actor_index)->scaleY, (gActors + actor_index)->unk_11C, 0.8f);

        if ((gActors + actor_index)->unk_118 == (gActors + actor_index)->scaleX) {
            (gActors + actor_index)->state++;
        }
        break;
    case 2:
        func_801A97FC_78FAEC(actor_index);
        break;
    }
}


s32 func_801A9FF0_7902E0(u16 actor_index) {
    if (gActors[actor_index].graphicIndex == GINDEX_LINE) {
        switch (gActors[actor_index].unk_16C) {
        case 0:
            func_801A99E4_78FCD4(actor_index);
            break;
        case 1:
            func_801A9A6C_78FD5C(actor_index);
            break;
        case 2:
            func_801A9C24_78FF14(actor_index);
            break;
        }
        return 1;
    }
    else if (gActors[actor_index].graphicIndex == GINDEX_SOLIDSQUARE) {
        switch (gActors[actor_index].unk_16C) {
        case 0:
            func_801A99E4_78FCD4(actor_index);
            break;
        case 1:
            func_801A9A6C_78FD5C(actor_index);
            break;
        case 2:
            func_801A9DD4_7900C4(actor_index);
            break;
        }
        return 1;
    }
    return 0;
}


void func_801AA108_7903F8(u16 actor_index) {
    if (func_801A9FF0_7902E0(actor_index)) {
        return;
    }
    switch (gActors[gActors[actor_index].var_158].var_158) {
    case 0:
        func_801A96DC_78F9CC(actor_index);
        break;
    case 1:
        func_801A92D8_78F5C8(actor_index);
        gActors[actor_index].state = 0x1000;
        break;
    case 2:
        func_801A9768_78FA58(actor_index);
        break;
    }
    if (gActors[actor_index].pfn_190 != NULL) {
        gActors[actor_index].pfn_190(actor_index);
    }
}


void func_801AA208_7904F8(u16 actor_index) {
    func_801AA480_790770(actor_index, (s16*)gActors[actor_index].unk_16C, &gActors[actor_index].unk_170, &gActors[actor_index].unk_174);
    func_801AAB78_790E68(actor_index, (f32*)gActors[actor_index].unk_178, &gActors[actor_index].unk_17C, &gActors[actor_index].unk_180);
    if (gActors[actor_index].pfn_190 != NULL) {
        gActors[actor_index].pfn_190(actor_index);
    }
}


void func_801AA2A4_790594(u16 actor_index) {
    if (gActors[actor_index].pfn_190 != NULL) {
        gActors[actor_index].pfn_190(actor_index);
    }
}

void func_801AA2FC_7905EC(s32 arg0, s32 arg1) {
    D_80178292 = 0;
}

void func_801AA310_790600(s32 arg0, s32 arg1) {
    u16 index;
    u8* n;

    n = gFestivalEventsPlayed;
    for (index = 0; index < FESTGAME_TOTAL; index++) {
        n[index] = FALSE;
    }

    gFestivalEventClearCount = 0;
    gFestivalPointsWhite = 0;
    gFestivalPointsRed = 0;
    gLetterboxMode = LETTERBOX_HORIZONTAL;
}

void func_801AA368_790658(void) {
}

void func_801AA370_790660(void) {
}

void func_801AA378_790668(u16 actor_index) {
    actor_index = 0x31;
    gActors[actor_index].actorType = 0;
    Actor_Initialize(0x31);
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = -1;
    gActors[actor_index].colorB = 0xBA;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].scaleX = 20.0f;
    gActors[actor_index].scaleY = 16.0f;
    gActors[actor_index].unk_188 = 0;
}


void func_801AA42C_79071C(u16 start_index, u16 end_index) {
    u16 actor_index;

    for (actor_index = start_index; actor_index < end_index; actor_index++) {
        gActors[actor_index].flags = 0;
    }
}


void func_801AA480_790770(u16 actor_index, s16* script, s32* cursor, s32* timer) {
    s16 temp_v0;
    s16* entry;
    s16 position_x;
    s16 world_y;
    f32 magnitude;
    f32 remaining;

    if (script != NULL) {
        entry = &script[*cursor];
        temp_v0 = entry[0];
        switch (temp_v0) {
        case 0:
            break;
        case 1:
            gActors[actor_index].posX.whole = entry[1];
            gActors[actor_index].posY.whole = entry[2];

            if (!(gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS)) {
                gActors[actor_index].posX.whole -= gScreenPosCurrentX.whole;
                gActors[actor_index].posY.whole -= gScreenPosCurrentY.whole;
            }

            *cursor += 3;
            break;
        case 2:
            if (gActors[actor_index].flags & ACTOR_FLAG_FREEZE_POS) {
                gActors[actor_index].posX.whole = Math_ApproachS32(gActors[actor_index].posX.whole, entry[1], entry[2]);
                gActors[actor_index].posY.whole = Math_ApproachS32(gActors[actor_index].posY.whole, entry[3], entry[4]);
                if (gActors[actor_index].posX.whole == entry[1] && gActors[actor_index].posY.whole == entry[3]) {
                    *cursor += 5;
                }
            }
            else {
                position_x = gScreenPosCurrentX.whole - (0 - gActors[actor_index].posX.whole);
                world_y = gScreenPosCurrentY.whole - (0 - gActors[actor_index].posY.whole);
                position_x = Math_ApproachS32(position_x, entry[1], entry[2]);
                temp_v0 = Math_ApproachS32(world_y, entry[3], entry[4]);
                if (position_x == entry[1] && (s16)temp_v0 == entry[3]) {
                    *cursor += 5;
                }
                gActors[actor_index].posX.whole = position_x - gScreenPosCurrentX.whole;
                gActors[actor_index].posY.whole = temp_v0 - gScreenPosCurrentY.whole;
            }
            break;
        case 3:
            (*timer)++;
            if (*timer >= entry[1]) {
                *timer = 0;
                *cursor += 2;
            }
            break;
        case 4:
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, entry[1]);
            if (gActors[actor_index].colorA == 0) {
                *cursor += 2;
            }
            break;
        case 5:
            gActors[actor_index].scaleX = entry[1] * 0.00390625;
            gActors[actor_index].scaleY = entry[2] * 0.00390625;
            *cursor += 3;
            break;
        case 6:
            remaining = entry[3] - *timer;
            if ((((f32)entry[1] - gActors[actor_index].scaleX) / remaining) > 0) {
                magnitude = ((f32)entry[1] - gActors[actor_index].scaleX) / remaining;
            }
            else {
                magnitude = -(((f32)entry[1] - gActors[actor_index].scaleX) / remaining);
            }

            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, entry[1] * 0.00390625, magnitude);
            if ((((f32)entry[1] - gActors[actor_index].scaleY) / remaining) > 0) {
                magnitude = ((f32)entry[1] - gActors[actor_index].scaleY) / remaining;
            }
            else {
                magnitude = -(((f32)entry[1] - gActors[actor_index].scaleY) / remaining);
            }

            gActors[actor_index].scaleY = Math_ApproachF32(gActors[actor_index].scaleY, entry[2] * 0.00390625, magnitude);
            *timer = *timer + 1.0;
            if (remaining == 1.0) {
                *timer = 0;
                *cursor += 4;
            }
            break;
        case 7:
            magnitude = entry[1] / entry[3];
            gActors[actor_index].posX.raw = (f32)gActors[actor_index].posX.raw + TO_FIXED(magnitude);
            magnitude = entry[2] / entry[3];
            gActors[actor_index].posY.raw = (f32)gActors[actor_index].posY.raw + TO_FIXED(magnitude);
            *timer = *timer + 1.0;
            if (*timer >= entry[3]) {
                *timer = 0;
                *cursor += 4;
            }
            break;
        case 8:
            *cursor = 0;
            break;
        case 9:
            gActors[actor_index].flags = 0;
            break;
        default:
            break;
        }
    }
}

void func_801AAB78_790E68(u16 actor_index, f32* script, s32* cursor, s32* timer) {
    s16 opcode;
    f32* entry;
    f32 current_x;
    f32 current_y;
    f32 current_z;
    f32 step;
    f32 magnitude;
    f32 remaining;

    if (script != NULL) {
        entry = script + *cursor;
        opcode = (s16)entry[0];
        switch (opcode) {
        case 0:
            break;
        case 1:
            gLookatEyeX = 0;
            gLookatEyeY = 0;
            gLookatEyeZ = 448.0f;
            gLookatAtX = 0;
            gLookatAtY = 0;
            gLookatAtZ = 0;
            *cursor += 2;
            break;
        case 2:
            gLookatEyeX = entry[1];
            gLookatEyeY = entry[2];
            gLookatEyeZ = entry[3];
            gLookatAtX = entry[4];
            gLookatAtY = entry[5];
            gLookatAtZ = entry[6];
            *cursor += 7;
            break;
        case 3:
            remaining = entry[7] - *timer;
            current_x = gLookatEyeX;
            step = (entry[1] - current_x) / remaining;
            magnitude = ABS(step);
            gLookatEyeX = Math_ApproachF32(current_x, entry[1], magnitude);
            current_y = gLookatEyeY;
            step = (entry[2] - current_y) / remaining;
            magnitude = ABS(step);
            gLookatEyeY = Math_ApproachF32(current_y, entry[2], magnitude);
            current_z = gLookatEyeZ;
            step = (entry[3] - current_z) / remaining;
            magnitude = ABS(step);
            gLookatEyeZ = Math_ApproachF32(current_z, entry[3], magnitude);
            current_x = gLookatAtX;
            step = (entry[4] - current_x) / remaining;
            magnitude = ABS(step);
            gLookatAtX = Math_ApproachF32(current_x, entry[4], magnitude);
            current_y = gLookatAtY;
            step = (entry[5] - current_y) / remaining;
            magnitude = ABS(step);
            gLookatAtY = Math_ApproachF32(current_y, entry[5], magnitude);
            current_z = gLookatAtZ;
            step = (entry[6] - current_z) / remaining;
            magnitude = ABS(step);
            gLookatAtZ = Math_ApproachF32(current_z, entry[6], magnitude);
            *timer = *timer + 1.0;
            if (remaining == 1.0) {
                *timer = 0;
                *cursor += 8;
            }
            break;
        case 4:
            if (++*timer >= entry[1]) {
                *cursor += 2;
            }
            break;
        case 5:
            gActors[actor_index].flags = 0;
            break;
        default:
            break;
        }
    }
}


void func_801AAFC4_7912B4(s32 arg0) {
}

void func_801AAFCC_7912BC(u16 actor_index) {
    gActors[actor_index].unk_170 = 0;
    gActors[actor_index].unk_174 = 0;
    gActors[actor_index].unk_178 = 0;
    gActors[actor_index].unk_17C = 0;
    gActors[actor_index].unk_180 = 0;
    actor_index = 0x33;
    gActors[actor_index].actorType = 0;
    Actor_Initialize(0x33);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].var_110 = 1.0f;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].posZ.whole = 0x7F;
    gActors[actor_index].scaleX = 7.5f;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].colorB = 0x50;
    actor_index = 0x32;
    gActors[actor_index].actorType = 0;
    Actor_Initialize(0x32);
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x7E;
    gActors[actor_index].colorR = 0x80;
    gActors[actor_index].colorG = 0x80;
    gActors[actor_index].colorB = 0x80;
    gActors[actor_index].scaleX = 10.0f;
    gActors[actor_index].scaleY = 10.0f;
    gActors[actor_index].colorA = 0xB2;
    gActors[actor_index].unk_148 = 0.0f;
}


u16 func_801AB14C_79143C(u16 actor_index) {
    u16 pressed_buttons;

    if (gButtonHold == gActors[actor_index].unk_178) {
        gActors[actor_index].unk_174++;
        if (gActors[actor_index].unk_174 >= 41) {
            pressed_buttons = gActors[actor_index].unk_178_u16[1];
            gActors[actor_index].unk_174 = 31;
        }
        else if (gActors[actor_index].unk_174 == 30) {
            pressed_buttons = gActors[actor_index].unk_178_u16[1];
        }
        else {
            pressed_buttons = 0;
        }
    }
    else {
        gActors[actor_index].unk_174 = 0;
        pressed_buttons = gButtonPress;
    }

    gActors[actor_index].unk_178 = gButtonHold;
    return pressed_buttons;
}


s32 func_801AB1EC_7914DC(u16 arg0, u16 arg1, u16 arg2) {
    s32 temp_hi;
    s32 sp28;
    s32 sp24;

    sp24 = 0;
    temp_hi = gActors[arg0].unk_170 % 7;
    sp28 = gActors[arg0].unk_170 / 7;
    if (arg1 & gButton_DUp) {
        if (temp_hi == 0) {
            if (arg2 == 0) {
                gActors[arg0].unk_170 += 6;
            }
        } else {
            gActors[arg0].unk_170 -= 1;
        }
        Sound_PlaySfx(SFX_MENU_BLIP);
    }

    if (arg1 & gButton_DDown) {
        if (temp_hi == 6) {
            if (arg2 == 0) {
                gActors[arg0].unk_170 -= 6;
            }
        } else {
            gActors[arg0].unk_170 += 1;
        }
        Sound_PlaySfx(SFX_MENU_BLIP);
    }

    if ((arg1 & gButton_DRight) && (sp28 != 0)) {
        gActors[arg0].unk_170 += 7;
        gActors[arg0].unk_17C += 1;
        Sound_PlaySfx(SFX_MENU_BLIP);
        sp24 = 1;
    }

    if ((arg1 & gButton_DLeft) && (sp28 != 0)) {
        gActors[arg0].unk_170 -= 7;
        gActors[arg0].unk_17C -= 1;
        Sound_PlaySfx(SFX_MENU_BLIP);
        sp24 = 1;
    }

    return sp24;
}

void func_801AB3EC_7916DC(u16 actor_index, u16* arg1) {
    gActors[0x33].posX.whole = arg1[gActors[actor_index].unk_170 * 3] - gActors[actor_index].unk_180 + 0x30;
    gActors[0x33].posY.whole = arg1[gActors[actor_index].unk_170 * 3 + 1];
    gActors[0x33].flags |= ACTOR_FLAG_DRAW;
}

void func_801AB474_791764(u16 actor_index_argument) {
    u16 index;
    u16 actor_index;
    for (index = 0; index < FESTGAME_TOTAL; index++) {
        actor_index = index + 0x40;
        gActors[actor_index].actorType = 0;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].posZ.whole = 0x81;
        gActors[actor_index].scaleX = 7.0f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].colorR = 0xFF;
        gActors[actor_index].colorA = 200;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = D_801AF798_795A88[index * 3 + 1];
    }
}


// hide the strikes on menu options.
void func_801AB5B4_7918A4(u16 arg0) {
    u16 index;
    u16 actor_index;
    for (index = 0; index < FESTGAME_TOTAL; index++) {
        actor_index = index+0x40;
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
}

void func_801AB610_791900(u16 actor_index) {
    u16 index;
    u16 start;
    u16 actor_index2;

    if (!D_80171B19) {
        start = gActors[actor_index].unk_17C * 7;
        for (index = start; index < start + 7; index++) {
            if (gFestivalEventsPlayed[index]) {
                actor_index2 = index + 0x40;
                gActors[actor_index2].flags |= 1;
            }
        }
    }
}

// has the selected event been completed?
u32 func_801AB6B4_7919A4(u16 actor_index) {
    if(!D_80171B19) {
        return gFestivalEventsPlayed[gActors[actor_index].unk_170];
    }
    return FALSE;
}

void func_801AB710_791A00(u16 actor_index) {
    u16 parent_index = ((u16*)&gActors[actor_index].var_154)[1];

    gActors[actor_index].posX.whole = gActors[actor_index].var_158 - gActors[parent_index].unk_180;
    gActors[actor_index].posY.whole = gActors[actor_index].var_15C;
    if (gActors[actor_index].var_160 != gActors[parent_index].unk_17C) {
        if (gActors[actor_index].posX.whole < -120) {
            gActors[actor_index].flags = 0;
        }

        if (gActors[actor_index].posX.whole > 120) {
            gActors[actor_index].flags = 0;
        }
    }
}



void func_801AB7A0_791A90(u16 actor_index, u16* options) {
    u16 row_index;
    u16* string;
    u16 glyph;
    u16 new_actor_index;
    u16 string_index;
    s16 position_x;
    s16 position_y;
    f32 advance;
    f32 absolute_x;

    options = gActors[actor_index].unk_17C * 21 + options;
    for (row_index = 0; row_index < 7; row_index++) {
        new_actor_index = options[0];
        if (new_actor_index == 0xFFFF || row_index >= D_80178222) {
            break;
        }

        position_x = new_actor_index;
        string_index = *(u16*)((u8*)D_801AF7C4_795AB4 + options[2] * 4);
        string = D_801AFDB4_7960A4[string_index];
        position_y = options[1];
        options += 3;
        advance = 0.0f;
        glyph = *string;
        while (glyph != ALPHA_NULL) {
            new_actor_index = Actor_RangeFindInactive(0x70, 0xC0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_8;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].graphicIndex = ALPHA_GLYPH_INDEX(glyph);
                absolute_x = (f32)position_x + advance;
                gActors[new_actor_index].posX.whole = (s32)(absolute_x - (f32)gActors[actor_index].unk_180);
                gActors[new_actor_index].posY.whole = position_y;
                gActors[new_actor_index].posZ.whole = 0x80;
                gActors[new_actor_index].unk_188 = 0;
                gActors[new_actor_index].var_154 = actor_index;
                gActors[new_actor_index].var_15C = position_y;
                gActors[new_actor_index].var_158 = absolute_x;
                gActors[new_actor_index].var_160 = gActors[actor_index].unk_17C;
                gActors[new_actor_index].pfn_190 = func_801AB710_791A00;
                advance += Text_GetWidth2(string);
            }
            string++;
            glyph = *string;
        }
    }
}


void func_801ABA40_791D30(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x70, 0xC0);

    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_TEXT_7;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0x38;
        gActors[new_actor_index].posZ.whole = 0x80;
        gActors[new_actor_index].unk_188 = 0;
        gActors[new_actor_index].var_150 = 0x17;
        gActors[new_actor_index].unk_164 = 0x4020;
    }
}


void func_801ABAE4_791DD4(u16 actor_index) {
    u16 index;

    for (index = 0; index < gFestivalCompetitorCount; index++) {
        gFestivalCompetitors[index].actorIndex = 0;
        gFestivalCompetitors[index].playerNumber = index;
        gFestivalCompetitors[index].rank = 0;
        gFestivalCompetitors[index].unk_06 = 0;
        gFestivalCompetitors[index].unk_12 = 0;
        gFestivalCompetitors[index].unk_10 = 0;
    }
}


void func_801ABB44_791E34(u16 actor_index, u16 arg1) {
    gStageState = 0;
    D_800D28F0 = D_801AF7C4_795AB4[arg1 * 2+1];
    D_800D28E4 = 0x62;
}

void func_801ABB80_791E70(u16 actor_index) {
    gFestivalCurrentEvent = D_801AF798_795A88[actor_index * 3+2];
}

void func_801ABBAC_791E9C(u16 actor_index) {
    Festival_UnkMotion* table;
    u32 current_index;

    if (gActors[actor_index].graphicTimer == 0) {
        table = D_801AF9D4_795CC4[gActors[actor_index].unk_168];
        current_index = gActors[actor_index].unk_17C;
        if ((table + current_index)->duration == 0) {
            gActors[actor_index].flags = 0;
            return;
        }

        if ((table + current_index)->duration < 0) {
            gActors[actor_index].unk_17C = (table + current_index)->duration + current_index;\
            current_index = gActors[actor_index].unk_17C;
        }

        gActors[actor_index].var_154 = (table + current_index)->motionState;
        gActors[actor_index].unk_16C = (table + current_index)->velocityX;
        gActors[actor_index].unk_170 = (table + current_index)->velocityY;
        gActors[actor_index].unk_180++;
        if (gActors[actor_index].unk_180 >= (table + current_index)->duration) {
            gActors[actor_index].unk_17C = current_index + 1;
            gActors[actor_index].unk_180 = 0;
        }
    }
}


void func_801ABC8C_791F7C(u16 actor_index) {
    u16 new_actor_index;
    u16 random_value;
    Actor* actor;
    u16 depth_value;
    u16 sp24;

    if ((gActiveFrames & 0x3F) == 0) {
        new_actor_index = Actor_RangeFindInactive(0x30, 0x90);
        if (new_actor_index != 0) {
            actor = &gActors[new_actor_index];
            actor->actorType = ACTORTYPE_OVL3_1_5;
            Actor_Initialize(new_actor_index);
            actor->graphicFlags = ACTOR_GFLAG_UNK8;
            actor->flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
            random_value = Rand() & 7;
            if (random_value & 1) {
                actor->posX.whole = -0xE0;
            }
            else {
                actor->posX.whole = 0xE0;
            }

            actor->posY.whole = -0x28;
            depth_value = Rand();
            actor->posZ.whole = 0x60 - depth_value;
            sp24 = Rand();
            actor->var_0D8 = D_801AF9F4_795CE4[sp24 & 7] + D_801AFA04_795CF4[Rand() & 0xF];
            actor->unk_168 = random_value;
            actor->pfn_190 = func_801ABBAC_791E9C;
        }
    }
}


void func_801ABDA8_792098(u16 actor_index) {
    u16 index;

    if (D_80171B19) {
        return;
    }

    for (index = 0; index < 7; index++) {
        if (!gFestivalEventsPlayed[index]) {
            gActors[actor_index].unk_170 = index;
            return;
        }
    }
}


void func_801ABE24_792114(u16 actor_index) {
    u16 input;

    switch (gActors[actor_index].state) {
    case 0:
        D_80178222 = 0x12;
        func_801AAFCC_7912BC(actor_index);
        func_801ABA40_791D30(actor_index);
        func_801AB7A0_791A90(actor_index, D_801AF798_795A88);
        func_801AB474_791764(actor_index);
        func_801ABDA8_792098(actor_index);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_BROKEN);
        gActors[actor_index].state++;
        // fallthrough
    case 1:
        gActors[0x33].flags &= ~ACTOR_FLAG_DRAW;
        func_801AB5B4_7918A4(actor_index);
        input = func_801AB14C_79143C(actor_index);
        if (input != 0 && func_801AB1EC_7914DC(actor_index, input, 0) != 0) {
            func_801AB7A0_791A90(actor_index, D_801AF798_795A88);
            gActors[actor_index].state++;
        }
        else {
            func_801AB3EC_7916DC(actor_index, D_801AF798_795A88);
            func_801AB610_791900(actor_index);
            if ((gButtonPress & gButton_B) || (gButtonPress & gButton_A)) {
                gActors[actor_index].state = 3;
            }
        }
        break;
    case 2:
        gActors[0x33].flags &= ~ACTOR_FLAG_DRAW;
        func_801AB5B4_7918A4(actor_index);
        gActors[actor_index].unk_180 = Math_ApproachS32(gActors[actor_index].unk_180, gActors[actor_index].unk_17C * 320, 8);
        if (gActors[actor_index].unk_180 == gActors[actor_index].unk_17C * 320) {
            gActors[actor_index].state--;
        }
        break;
    case 3:
        if (func_801AB6B4_7919A4(actor_index) != 0) {
            gActors[actor_index].state = 1;
            Sound_PlaySfx(SFX_WRONG_0134);
        }
        else {
            Sound_PlaySfx(SFX_MENU_DING);
            Sound_StartFade(1, 30);
            gActors[actor_index].var_150 = 30;
            gActors[actor_index].state++;
        }
        break;
    case 4:
        if (gActors[0x33].flags & ACTOR_FLAG_DRAW) {
            gActors[0x33].flags &= ~ACTOR_FLAG_DRAW;
        }
        else {
            gActors[0x33].flags |= ACTOR_FLAG_DRAW;
        }
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state++;
            gFestivalCompetitorCount = 4;
            func_801ABAE4_791DD4(actor_index);
            gFestivalFouls = 0;
            gFestivalEventState = 0;
            gFestivalIsTimeBeat = 0;
            func_801ABB44_791E34(actor_index, gActors[actor_index].unk_170_u16[1]);
            func_801ABB80_791E70(gActors[actor_index].unk_170_u16[1]);
        }
        break;
    case 5:
    default:
        break;
    }
}


s32 func_801AC0F8_7923E8(void) {
    switch (gFestivalCurrentEvent) {
    case FESTGAME_100M:
    case FESTGAME_200M:
    case FESTGAME_400M:
    case FESTGAME_HURDLE:
    case FESTGAME_DODGEBALL:
        return 0;
    case FESTGAME_JUMP:
    case FESTGAME_BALL:
    case FESTGAME_MATH:
    case FESTGAME_INTRO:
        return 1;
    }
}


void func_801AC13C_79242C(u16 actor_index) {
    u16 index;
    u16 new_actor_index;
    Actor* actor;
    u16* record;

    for (index = 0; index < 5; index++) {
        new_actor_index = Actor_RangeFindInactive(0x70, 0x7A);
        if (new_actor_index != 0) {
            actor = &gActors[new_actor_index];
            actor->actorType = ACTORTYPE_OVL2_FEST_3;
            Actor_Initialize(new_actor_index);
            record = (u16*)((u8*)D_801AFAD8_795DC8 + (u32)index * 8);
            actor->posX.whole = record[0] - gScreenPosCurrentX.whole;
            actor->posY.whole = record[1] - gScreenPosCurrentY.whole;
            actor->var_110 = (f32)record[2];
            actor->var_0D8 = record[3];
        }
    }
}


void func_801AC250_792540(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].state == 0) {
        for (index = 0; index < 4; index++) {
            u16 new_actor_index = index + 0x36;

            ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_FEST_3);
            gActors[new_actor_index].posX.whole = index * 100 - 0xA2;
            gActors[new_actor_index].posY.whole = 0x54;
            gActors[new_actor_index].var_110 = -8.0f;
            gActors[new_actor_index].var_0D8 = 0x1004;
        }
    }
}


void func_801AC360_792650(u16 actor_index) {
    Actor* actorP;

    actorP = &gActors[0x3a];
    actorP->actorType = ACTORTYPE_OVL2_FEST_8;
    Actor_Initialize(0x3A);
    actorP->flags |= ACTOR_FLAG_FREEZE_POS;
    actorP->posX.whole = 0;
    actorP->posY.whole = 0;
    actorP->unk_178 = (s32)D_801AFA24_795D14;
}

void func_801AC3C0_7926B0(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_TEXT_7;
    Actor_Initialize(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].var_150 = arg1;
    gActors[actor_index].unk_164 = 0x40;
}

void func_801AC448_792738(u16 actor_index) {
    Actor* actorP;

    actorP =&gActors[0x32];
    actorP->actorType = 0;
    Actor_Initialize(0x32);
    actorP->graphicFlags = ACTOR_GFLAG_UNK11;
    actorP->flags = 0x2003;
    actorP->graphicIndex = GINDEX_FEST_WINNERSTAND;
    actorP->posX.whole = 0;
    actorP->posY.whole = -0x22;
    actorP->posZ.whole = -1;
    actorP->unk_188 = 0x60;
    actorP->hitboxBY0 = 0x12;
    actorP->hitboxBY1 = -0x12;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;

    actorP =&gActors[0x34];
    actorP->actorType = 0;
    Actor_Initialize(0x34);
    actorP->flags = 0x2002;
    actorP->graphicIndex = 0;
    actorP->posX.whole = -0x2C;
    actorP->posY.whole = -0x38;
    actorP->posZ.whole = 0x60;
    actorP->hitboxBY0 = 0x10;
    actorP->hitboxBY1 = -0x10;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;

    actorP =&gActors[0x35];
    actorP->actorType = 0;
    Actor_Initialize(0x35);
    actorP->flags = 0x2002;
    actorP->graphicIndex = 0;
    actorP->posX.whole = 0x2C;
    actorP->posY.whole = -0x38;
    actorP->posZ.whole = 0x60;
    actorP->hitboxBY0 = 0x10;
    actorP->hitboxBY1 = -0x10;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;

    actorP =&gActors[0x33];
    actorP->actorType = ACTORTYPE_OVL2_FEST_0;
    Actor_Initialize(0x33);
    actorP->posX.whole = 0;
    actorP->posY.whole = 0x48;
    actorP->posZ.whole = -1;
    actorP->var_110 = -1.0f;
}

void func_801AC624_792914(u16 actor_index) {
    gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0xB2, 8);
    if (gActors[actor_index].colorA == 0xB2) {
        gActors[actor_index].actorType = 0;
    }
}


void func_801AC698_792988(u16 actor_index) {
    actor_index = 0x3B;
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_9;
    Actor_Initialize(0x3B);
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_SCALE;
    gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x7F;
    gActors[actor_index].colorB = 0xBA;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].scaleX = 13.0f;
    gActors[actor_index].scaleY = 6.0f;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].pfn_190 = func_801AC624_792914;
}


void func_801AC760_792A50(u16 actor_index) {
    u32 value;

    s32 palette_address;

    switch (gFestivalCurrentEvent) {
    case 0:
    case 1:
    case 2:
    case 5:
    case 7:
        actor_index = 0x42;
        SpawnActor40(0x42, 0, 0x30, 0, 0);
        gActors[actor_index].posZ.whole = 0x80;
        palette_address = (s32)D_800D9AE4;
        gActors[actor_index].unk_18C = palette_address;
        {
            value = gFestivalTimeToBeat;
            gActors[actor_index].unk_14C = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_148 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_144 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_140_f32 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_13C_f32 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_138 = (value & 0xF);
        }

        if (gFestivalFouls >= 3) {
            actor_index = 0x44;
            func_801AC3C0_7926B0(0x44, 0x2B);
            gActors[actor_index].posX.whole = 0x30;
            gActors[actor_index].posY.whole = -0x18;
            gActors[actor_index].scaleX = 1.1f;
            gActors[actor_index].unk_18C = palette_address;
            gActors[actor_index].unk_164 = 0x50;
            return;
        }

        actor_index = 0x44;
        SpawnActor40(0x44, 0, 0x30, -0x18, 0);
        gActors[actor_index].posZ.whole = 0x80;
        gActors[actor_index].unk_18C = palette_address;
        {
            value = gFestivalTimeCurrent;
            gActors[actor_index].unk_14C = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_148 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_144 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_140_f32 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_13C_f32 = (value & 0xF); value = value >> 4;
            gActors[actor_index].unk_138 = (value & 0xF);
        }
        return;
    case 3:
    case 4:
    case 6:
    case 8:
        actor_index = 0x42;
        SpawnActor41(0x42, 0, 0x2B, 0, 0, 3, 0x3E7);
        gActors[actor_index].posZ.whole = 0x80;
        palette_address = (s32)D_800D9AE4;
        gActors[actor_index].unk_18C = palette_address;
        actor_index = 0x44;
        SpawnActor41(0x44, 0, 0x2B, -0x18, 0, 3, 0x3E7);
        gActors[actor_index].posZ.whole = 0x80;
        gActors[actor_index].unk_18C = palette_address;
        actor_index = 0x42;
        gActors[actor_index].var_158 = gFestivalTimeToBeat;
        actor_index = 0x44;
        gActors[actor_index].var_158 = gFestivalTimeCurrent;
        break;
    default:
        break;
    }
}


void func_801ACB58_792E48(u16 actor_index) {
    s32 palette_address;

    actor_index = 0x3D;
    func_801AC3C0_7926B0(0x3D, 0x22);
    gActors[actor_index].posX.whole = -0x4C;
    gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].unk_164 = 0x840;
    actor_index = 0x3E;
    SpawnActor41(0x3E, 0, -0x2C, 0, 0, 3, 0x3E7);
    gActors[actor_index].posZ.whole = 0x80;
    palette_address = (s32)D_800D9AE4;
    gActors[actor_index].unk_18C = palette_address;
    gActors[actor_index].var_158 = gFestivalPointsWhite;
    actor_index = 0x3F;
    func_801AC3C0_7926B0(0x3F, 0x23);
    gActors[actor_index].posX.whole = 0x1C;
    gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].unk_164 = 0x840;
    actor_index = 0x40;
    SpawnActor41(0x40, 0, 0x3C, 0, 0, 3, 0x3E7);
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].unk_18C = palette_address;
    gActors[actor_index].var_158 = gFestivalPointsRed;
}


void func_801ACC90_792F80(u16 actor_index) {
    u16 text_actor_index;

    text_actor_index = 0x41;
    func_801AC3C0_7926B0(0x41, 0x27);
    gActors[text_actor_index].posY.whole = 0;
    gActors[text_actor_index].unk_18C = (s32)D_800D9AE4;
    gActors[text_actor_index].unk_164 = 0x800;
    if (func_801AC0F8_7923E8()) {
        gActors[text_actor_index].posX.whole = -0x28;
    }
    else {
        gActors[text_actor_index].posX.whole = -0x28;
    }

    if (func_801AC0F8_7923E8()) {
        text_actor_index = 0x43;
        func_801AC3C0_7926B0(0x43, 0x2A);
        gActors[text_actor_index].posX.whole = -0x28;
    }
    else {
        text_actor_index = 0x43;
        func_801AC3C0_7926B0(0x43, 0x28);
        gActors[text_actor_index].posX.whole = -0x28;
    }

    gActors[text_actor_index].posY.whole = -0x18;
    gActors[text_actor_index].scaleX = 0.9f;
    gActors[text_actor_index].unk_18C = (s32)D_800D9AE4;
    gActors[text_actor_index].unk_164 = 0x8040;
    func_801AC760_792A50(actor_index);
}


void func_801ACD80_793070(u16 actor_index) {
    u16 index;
    u16 gem_actor_index;
    u16 number_actor_index;

    for (index = 0; index < 2; index++) {
        gem_actor_index = index + 0x3D;
        gActors[gem_actor_index].actorType = ACTORTYPE_OVL2_FEST_9;
        Actor_Initialize(gem_actor_index);
        gActors[gem_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[gem_actor_index].flags = ACTOR_FLAG_DRAW | ACTOR_FLAG_ACTIVE;
        gActors[gem_actor_index].graphicIndex = GINDEX_GEM;
        gActors[gem_actor_index].posX.whole = -0x10;
        gActors[gem_actor_index].posY.whole = 4 - index * 32;
        gActors[gem_actor_index].posZ.whole = 0x80;
        gActors[gem_actor_index].unk_188 = 0;
        gActors[gem_actor_index].graphicList = gGraphicListGem;
        gActors[gem_actor_index].graphicTimer = 1;
        number_actor_index = index + 0x40;
        SpawnActor41(number_actor_index, 0, 0x10, 4 - index * 32, 0, 2, 0x63);
        gActors[number_actor_index].posZ.whole = 0x80;
        gActors[number_actor_index].unk_18C = (s32)D_800D9AE4;
    }

    gActors[0x3D].palette_18C = gPaletteGemGreen;
    gActors[0x3E].palette_18C = gPaletteGemRed;
}


void func_801ACEE8_7931D8(u16 actor_index) {
    Actor* actorP = &gActors[60];
    func_801AC3C0_7926B0(60, D_801AF7C4_795AB4[gFestivalCurrentEvent * 2]);
    actorP->posX.whole = 0;
    actorP->posY.whole = 0x20;
    actorP->unk_164 = 0x280A;
}

void func_801ACF40_793230(u16 actor_index, u16 immediate) {
    u16 points_actor_index = 0x40;
    u16 gems_actor_index = 0x41;
    u16 point_reward = D_801AFA90_795D80[gFestivalCurrentEvent * 3 + 2];
    u16 gem_reward = D_801AFA90_795D80[gFestivalCurrentEvent * 3 + 1];

    if (immediate != 0) {
        gActors[points_actor_index].var_158 = point_reward;
        gActors[gems_actor_index].var_158 = gem_reward;
        gRedGems += gem_reward;
        if (gRedGems >= 10000) {
            gRedGems = 9999;
        }
        Marina_AddHealth(PLAYER_INDEX, 300);
    }
    else {
        gActors[points_actor_index].var_158 = Math_ApproachS32(gActors[points_actor_index].var_158, point_reward, 1);
        gActors[gems_actor_index].var_158 = Math_ApproachS32(gActors[gems_actor_index].var_158, gem_reward, 1);
        if ((gActors[actor_index].unk_170 != gActors[points_actor_index].var_158 || gActors[actor_index].unk_174 != gActors[gems_actor_index].var_158) && (gActiveFrames & 3) == 0) {
            Sound_PlaySfx(SFX_0139);
        }
        gActors[actor_index].unk_170 = gActors[points_actor_index].var_158;
        gActors[actor_index].unk_174 = gActors[gems_actor_index].var_158;
    }
}


void func_801AD0AC_79339C(u16 actor_index) {
    Actor* actor;

    switch (gFestivalCurrentEvent) {
    case FESTGAME_100M:
    case FESTGAME_200M:
    case FESTGAME_400M:
    case FESTGAME_HURDLE:
        if (gFestivalCompetitors[0].rank == 1) {
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4];
            gActors[actor_index].var_158 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 1];
            return;
        }
        switch (gFestivalCompetitors[0].rank) {
        case 1:
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4];
            break;
        case 2:
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 1];
            break;
        case 3:
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 2];
            break;
        case 4:
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 3];
            break;
        }
        if (gFestivalFouls >= 3) {
            gActors[actor_index].var_154 = 0;
        }
        actor = &gActors[actor_index];
        actor->var_158 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4];
        if (actor == &gActors[actor_index]) {
        }
        return;
    case FESTGAME_JUMP:
    case FESTGAME_BALL:
    case FESTGAME_MATH:
        if (gFestivalCompetitors[0].rank == 1) {
            gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4];
            gActors[actor_index].var_158 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 1];
            return;
        }
        gActors[actor_index].var_154 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4 + 1];
        gActors[actor_index].var_158 = D_801AFAB0_795DA0[gFestivalCurrentEvent * 4];
        return;
    }
}


// add points to teams after event.
void func_801AD37C_79366C(u16 actor_index, u16 immediate) {
    u16 white_actor_index = 0x3E;
    u16 red_actor_index = 0x40;

    if (gActors[actor_index].var_160 == 0) {
        gFestivalPointsWhite += gActors[actor_index].var_154;
        gFestivalPointsRed += gActors[actor_index].var_158;
        gActors[actor_index].var_160 = 1;
    }

    if (immediate != 0) {
        gActors[white_actor_index].var_158 = gFestivalPointsWhite;
        gActors[red_actor_index].var_158 = gFestivalPointsRed;
    }
    else {
        gActors[white_actor_index].var_158 = Math_ApproachS32(gActors[white_actor_index].var_158, gFestivalPointsWhite, 1);
        gActors[red_actor_index].var_158 = Math_ApproachS32(gActors[red_actor_index].var_158, gFestivalPointsRed, 1);
        if ((gActors[actor_index].unk_170 != gActors[white_actor_index].var_158 || gActors[actor_index].unk_174 != gActors[red_actor_index].var_158) && (gActiveFrames & 3) == 0) {
            Sound_PlaySfx(SFX_0139);
        }
        gActors[actor_index].unk_170 = gActors[white_actor_index].var_158;
        gActors[actor_index].unk_174 = gActors[red_actor_index].var_158;
    }
}


void func_801AD4F4_7937E4(u16 actor_index) {
    u16 index;
    u16 frame_phase;
    u8 red;
    u8 green;
    u8 blue;

    index = actor_index;
    frame_phase = gActiveFrames & 7;
    switch (frame_phase) {
    case 0:
        red = 0;
        green = 0;
        blue = 0;
        break;
    case 1:
        blue = 0xFF;
        red = 0;
        green = 0;
        break;
    case 2:
        green = 0xFF;
        red = 0;
        blue = 0;
        break;
    case 3:
        green = 0xFF;\
        blue = 0xFF;
        red = 0;
        break;
    case 4:
        red = 0xFF;
        green = 0;
        blue = 0;
        break;
    case 5:
        red = 0xFF;\
        blue = 0xFF;
        green = 0;
        break;
    case 6:
        red = 0xFF;\
        green = 0xFF;
        blue = 0;
        break;
    case 7:
        red = 0xFF;\
        green = 0xFF;\
        blue = 0xFF;
        break;
    }
    gActors[index].colorR = red;
    gActors[index].colorG = green;
    gActors[index].colorB = blue;
}


void func_801AD628_793918(u16 arg0) {
    if (gFestivalIsTimeBeat) {
        func_801AD4F4_7937E4(0x41);
    }
}

void func_801AD658_793948(u16 actor_index) {
    if (!D_80171B19 && gFestivalEventClearCount >= 7 && gFestivalPointsWhite >= gFestivalPointsRed) {
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].var_15C = 1;
            actor_index = 0x45;
            func_801AC3C0_7926B0(0x45, 0x24);
            gActors[actor_index].posX.whole = 0;
            gActors[actor_index].posY.whole = -0x1C;
            gActors[actor_index].unk_164 = 0x400;
        }
        else {
            func_801AD4F4_7937E4(0x45);
        }
    }
}


void func_801AD71C_793A0C(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 1; index < gFestivalCompetitorCount; index++) {
        new_actor_index = Actor_RangeFindInactive(0x50, 0x60);
        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_10;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].posX.whole = 0;
            gActors[new_actor_index].posY.whole = 0;
            gActors[new_actor_index].posZ.whole = 0;
            gActors[new_actor_index].var_110 = gFestivalCompetitors[index].unk_12;
            gActors[new_actor_index].unk_16C = index;
            gActors[new_actor_index].var_0D8 = gFestivalCompetitors[index].unk_10;
        }
    }
}


void func_801AD840_793B30(u16 actor_index) {
    func_801AD37C_79366C(actor_index, 1);
    gActors[actor_index].state = 8;
    gActors[actor_index].var_150 = 0x1A4;
    func_801AA42C_79071C(0x3B, 0x46);
    gFestivalEventState = 0x20;

    if (D_80171B19 != 0) {
        gActors[actor_index].var_150 = 0xF0;
        gActors[actor_index].state = 9;
        gActors[0x33].var_110 = 0.0f;
        Sound_PlaySfx(SFX_CROUD_CHEER);
        return;
    }

    if (gFestivalEventClearCount >= 7 && gFestivalPointsWhite >= gFestivalPointsRed) {
        D_80171B19 = 1;
        gActors[actor_index].var_150 = 0xF0;
        gActors[actor_index].state = 9;
        gActors[0x33].var_110 = 0.0f;
        Sound_PlaySfx(SFX_CROUD_CHEER);
        return;
    }

    if (gFestivalEventClearCount >= 7 && gFestivalPointsWhite < gFestivalPointsRed) {
        gGameState = GAMESTATE_CONTINUE;
        gGameStateSubState = 0;
        func_801AA310_790600(0, 0);
        gMarinaAnim.anim_u32 = MARINAANIM_4;
    }

    Sound_PlaySfx(SFX_CROUD_CHEER);
}


void func_801AD9B0_793CA0(u16 actor_index) {
    s32 left;
    s32 right;

    if (gButtonHold & gButton_DLeft) {
        gActors[actor_index].posX.whole--;
    }

    if (gButtonHold & gButton_DRight) {
        gActors[actor_index].posX.whole++;
    }

    if (gButtonHold & gButton_DUp) {
        gActors[actor_index].posY.whole++;
    }

    if (gButtonHold & gButton_DDown) {
        gActors[actor_index].posY.whole--;
    }

    if (gButtonHold & gButton_A) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].scaleX -= 0.1;
        }

        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].scaleX += 0.1;
        }
    }
    else if (gButtonHold & gButton_CDown) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].scaleY -= 0.1;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].scaleY += 0.1;
        }
    }
    else if (gButtonHold & gButton_B) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].rotateX -= 1.0f;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].rotateX += 1.0f;
        }
    }
    else if (gButtonHold & gButton_CLeft) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].rotateY -= 1.0f;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].rotateY += 1.0f;
        }
    }
    else if (gButtonHold & gButton_CUp) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].rotateZ -= 1.0f;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].rotateZ += 1.0f;
        }
    }
    else if (gButtonHold & gButton_CRight) {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].posZ.whole -= 1;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].posZ.whole += 1;
        }
    }
    else {
        left = gButtonHold & gButton_LTrig;
        if (left) {
            gActors[actor_index].unk_188 -= 1;
        }
        right = gButtonHold & gButton_RTrig;
        if (right) {
            gActors[actor_index].unk_188 += 1;
        }
    }

    if (left && right) {
        Actor* actor = &gActors[actor_index];
        OSD_PrintShortHexWhite(gScreenPosCurrentX.whole + actor->posX.whole, -0x80, 0x40);
        OSD_PrintShortHexWhite(gScreenPosCurrentY.whole + actor->posY.whole, -0x80, 0x30);
    }
    else {
        OSD_PrintShortHexWhite(gActors[actor_index].posX.whole, -0x80, 0x40);
        OSD_PrintShortHexWhite(gActors[actor_index].posY.whole, -0x80, 0x30);
    }

    OSD_PrintShortHexWhite(gActors[actor_index].posZ.whole, -0x80, 0x20);
    OSD_PrintShortHexWhite(gActors[actor_index].unk_188, -0x80, 0);
    OSD_PrintFloat(gActors[actor_index].scaleX, -0x80, -0x40);
    OSD_PrintFloat(gActors[actor_index].scaleY, -0x80, -0x50);
    OSD_PrintFloat(gActors[actor_index].rotateX, 0x40, -0x10);
    OSD_PrintFloat(gActors[actor_index].rotateY, 0x40, -0x20);
    OSD_PrintFloat(gActors[actor_index].rotateZ, 0x40, -0x30);
}


void func_801ADE64_794154(u16 unused_actor_index) {
    u16 actor_index;
    u16 count;

    count = 0;\
    for (actor_index = 0x38; actor_index < 0x40; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, 0x30);

    count = 0;
    for (actor_index = 0x40; actor_index < 0x50; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, 0x20);

    count = 0;
    for (actor_index = 0x50; actor_index < 0x60; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, 0x10);

    count = 0;
    for (actor_index = 0x60; actor_index < 0x70; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, 0);

    count = 0;
    for (actor_index = 0x90; actor_index < 0xC0; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, -0x10);

    count = 0;
    for (actor_index = 0x70; actor_index < 0x7E; actor_index++) {
        if (!(gActors[actor_index].flags & ACTOR_FLAG_ACTIVE)) {
            count++;
        }
    }
    OSD_PrintShortHexWhite(count, 0x40, -0x20);
}


void func_801AE0DC_7943CC(u16 actor_index) {
    Actor* actor;

    func_801AC250_792540(actor_index);
    actor = &gActors[actor_index];
    switch (actor->state) {
    case 0:
        D_800BE544 = 0x8000;
        func_801AC448_792738(actor_index);
        func_801AC360_792650(actor_index);
        func_801AD71C_793A0C(actor_index);
        func_801AC13C_79242C(actor_index);
        gMarinaAnim.anim_u32 = MARINAANIM_22;
        gFestivalEventState = 0x10;
        gAudioFadeMode = 0;

        if (gFestivalCompetitors[0].rank == 1) {
            Sound_PlayMusic(BGM_FANFARE1);
        }
        else {
            Sound_PlayMusic(BGM_FANFARE2);
        }

        actor->var_150 = 0x1E;
        D_801B06C2_7969B2 = 0;
        D_801B06C0_7969B0 = (u16) D_80171B19;
        actor->state += 1;
        // fallthrough
    case 1:
        --actor->var_150;
        if (actor->var_150 < 0) {
            actor->state += 1;
            gActors[0x3A].unk_17C = (gActors[0x3A].unk_17C + 1);
            func_801AC698_792988(actor_index);
            actor->var_150 = 0x14;
        }
        break;
    case 2:
        --actor->var_150;
        if (actor->var_150 < 0) {
            func_801ACEE8_7931D8(actor_index);
            if ((s32) gFestivalCompetitors[0].rank < 2) {
                func_801ACD80_793070(actor_index);
                actor->state += 1;
                actor->var_150 = 0x3C;
            }
            else {
                func_801ACC90_792F80(actor_index);
                actor->state = 5;
                actor->var_150 = 0x3C;
            }
        }
        break;
    case 3:
        --actor->var_150;
        if (actor->var_150 < 0) {
            actor->state += 1;
            actor->var_150 = 0x3C;
        }
        break;
    case 4:
        --actor->var_150;
        if (actor->var_150 == 0) {
            func_801ACF40_793230(actor_index, 1U);
            func_801AA42C_79071C(0x3DU, 0x43U);
        }
        else if (actor->var_150 > 0) {
            func_801ACF40_793230(actor_index, 0U);
        }
        else if (actor->var_150 < 0) {
            func_801ACC90_792F80(actor_index);
            actor->state += 1;
            actor->var_150 = 0x3C;
        }
        break;
    case 5:
        func_801AD628_793918(actor_index);
        --actor->var_150;
        if (actor->var_150 == 0) {
            if (D_80171B19 != 0) {
                func_801AA42C_79071C(0x3BU, 0x46U);
            }
            else {
                func_801AA42C_79071C(0x3DU, 0x46U);
            }
        }
        if (actor->var_150 < 0) {
            if (D_80171B19 != 0) {
                actor->var_150 = 0x1A4;
                actor->state = 9;
                gActors[0x33].var_110 = 0.0f;
                Sound_PlaySfx(SFX_CROUD_CHEER);
                if (D_801B06C0_7969B0 == 0) {
                    gAudioFadeMode = 0;
                    if (gFestivalCompetitors[0].rank == 1) {
                        Sound_PlayMusic(BGM_FANFARE1);
                    }
                    else {
                        Sound_PlayMusic(BGM_FANFARE2);
                    }
                }
            }
            else {
                func_801AD0AC_79339C(actor_index);
                func_801ACB58_792E48(actor_index);
                actor->state += 1;
                actor->var_150 = 0x3C;
            }
        }
        break;
    case 6:
        --actor->var_150;
        if (actor->var_150 < 0) {
            actor->state += 1;
            actor->var_150 = 0x3C;
        }
        break;
    case 7:
        func_801AD658_793948(actor_index);
        --actor->var_150;
        if (actor->var_150 < 0) {
            func_801AD840_793B30(actor_index);
        }
        else {
            func_801AD37C_79366C(actor_index, 0U);
        }
        break;
    case 8:
        gActors[0x33].var_110 = 0.0f;
        --actor->var_150;
        if (actor->var_150 < 0) {
            actor->state = 0xA;
            Sound_StartFade(1U, 0x3CU);
            actor->var_150 = 0x1E;
        }
        break;
    case 9:
        --actor->var_150;
        if (actor->var_150 < 0) {
            actor->state = 0xA;
            Sound_StartFade(1U, 0x3CU);
            actor->var_150 = 0x1E;
        }
        break;
    case 10:
        --actor->var_150;
        if ((actor->var_150 < 0) || (gAudioFadeMode != 1)) {
            if (D_80171B19 != 0) {
                gStageState = 4;
            }
            else {
                gStageState = 0;
                D_800D28F0 = 0x1F;
                D_800D28E4 = 0x62;
            }
            actor->state += 1;
        }
        break;
    case 11:
        break;
    }
}


void func_801AE5A0_794890(u16 arg0) {
    func_801ABE24_792114(arg0);
}

void func_801AE5C8_7948B8(u16 actor_index) {
    s32 rank;

    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        rank = gFestivalCompetitors[gActors[actor_index].unk_16C].rank;
        gActors[actor_index].unk_184_s16[0] = *(s16*)((u8*)D_801AFB00_795DF0 + rank * 4);
        gActors[actor_index].unk_184_s16[1] = *(s16*)((u8*)D_801AFB00_795DF0 + rank * 4 + 2);
        gActors[actor_index].unk_170 = rank;
        gActors[actor_index].posX.whole = gActors[actor_index].unk_184_s16[0] - gScreenPosCurrentX.whole;
        gActors[actor_index].posY.whole = gActors[actor_index].unk_184_s16[1] - gScreenPosCurrentY.whole;
        break;

    case 0x61:
        func_80067E50(actor_index, D_800E1700);
        switch (gActors[actor_index].unk_174) {
        case 0:
            if (gFestivalEventState == 0x20) {
                gActors[actor_index].unk_174++;
            }
            break;

        case 1:
            switch (gActors[actor_index].unk_170) {
            case 1:
                if (gActiveFrames % 75 == 0) {
                    gActors[actor_index].unk_120 = 0.0f;
                    gActors[actor_index].unk_11C = FIXED_UNIT(4);
                    gActors[actor_index].unk_124 = (Rand() & 1);
                    gActors[actor_index].state = 0x120;
                }
                break;

            case 2:
            case 3:
            case 4:
                switch (Rand() % 2) {
                case 0:
                    gActors[actor_index].state = 0x290;
                    break;

                case 1:
                    Rand();
                    gActors[actor_index].var_158 = 0;
                    gActors[actor_index].state = 0x410;
                    break;
                }
                gActors[actor_index].unk_174++;
                break;
            }
            break;

        case 2:
            break;
        }
        break;
    }
}


void func_801AE804_794AF4(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        if (func_8005DEFC() == 0) {
            func_80067E50(actor_index, D_800E1700);
        }
        else {
            func_80067E50(actor_index, D_800E2274);
        }
        break;
    }
}


void func_801AE8B4_794BA4(u16 arg0) {
    func_801AE0DC_7943CC(arg0);
}

void func_801AE8DC_794BCC(u16 actor_index) {
    u16 index;

    if (gActors[actor_index].state == 0) {
        for (index = 0; index < 4; index++) {
            u16 new_actor_index = index + 0x38;

            ACTOR_INIT(new_actor_index, ACTORTYPE_OVL2_FEST_3);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].posX.whole = (index * 100) - 0x6E;
            gActors[new_actor_index].posY.whole = 0x54;
            gActors[new_actor_index].posZ.whole = 0;
            gActors[new_actor_index].var_0D8 = 0x1004;
        }
        return;
    }

    for (index = 0; index < 4; index++) {
        if (gActors[(u16)(index + 0x38)].posX.whole < -0xD1) {
            gActors[(u16)(index + 0x38)].unk_17C += 0x190;
        }
        else if (gActors[(u16)(index + 0x38)].posX.whole >= 0xD2) {
            gActors[(u16)(index + 0x38)].unk_17C -= 0x190;
        }
    }
}


u16 func_801AEA60_794D50(u16 actor_index, u16 value) {
    u16 new_actor_index = Actor_RangeFindInactive(0x60, 0x70);

    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL2_FEST_TEXT_7;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0;
        gActors[new_actor_index].posZ.whole = 0;
        gActors[new_actor_index].var_150 = value;
        gActors[new_actor_index].unk_174 = (s32)D_801AFE64_796154;
        gActors[new_actor_index].unk_164 = 4;
    }
    return new_actor_index;
}


void func_801AEB10_794E00(u16 arg0) {
    func_801AEA60_794D50(arg0,0x19);
}

void func_801AEB3C_794E2C(u16 actor_index) {
    func_801AEA60_794D50(actor_index, 0x1A);
}


void func_801AEB68_794E58(u16 actor_index) {
    u16 unk_actor_index; // BUG: unk_actor_index is never assigned!
    // maybe they wrote `u16 unk_actor_index ; func_801AEA60_794D50(actor_index, 0x1B);` ?
    
    func_801AEA60_794D50(actor_index, 0x1B);
    if (unk_actor_index != 0) {
        gActors[unk_actor_index].unk_164 |= 0x800;
    }
}


void func_801AEBD4_794EC4(u16 actor_index) {
    s32 new_actor_index = func_801AEA60_794D50(actor_index, D_801AF7C4_795AB4[gFestivalCurrentEvent * 2]);

    if (new_actor_index != 0) {
        gActors[new_actor_index].unk_164 = 14;
    }
}


void func_801AEC44_794F34(u16 actor_index) {
    s32 new_actor_index = func_801AEA60_794D50(actor_index, 0x13);

    if (new_actor_index != 0) {
        gActors[new_actor_index].unk_164 = 12;
    }
}


void func_801AECA0_794F90(s32 arg0) {
}

void func_801AECA8_794F98(s32 arg0) {
}

void func_801AECB0_794FA0(s32 arg0) {
}

void func_801AECB8_794FA8(u16 actor_index, s16 parent_index) {
    gActors[actor_index].graphicList_15C = D_800E1E38;
    gActors[actor_index].parentIndex = parent_index;
    gActors[actor_index].flags_098 |= ACTOR_FLAG3_UNK8;
    gActors[actor_index].state = 0x2A2;
    func_80070338(actor_index);
}


void func_801AED30_795020(u16 actor_index) {
    gActors[actor_index].unk_118 = 1.0;
    func_80069E18(actor_index);
}

void func_801AED88_795078(u16 source_index, u16 target_index) {
    gActors[target_index].parentIndex = source_index;
    gActors[target_index].flags_098 |= ACTOR_FLAG3_GRAB;
    gActors[target_index].unk_104 = gActors[source_index].posX.raw;
    gActors[target_index].unk_108 = gActors[source_index].posY.raw + FIXED_UNIT(6);
    gActors[target_index].unk_10C = gActors[source_index].posZ.raw - 8;
}


void func_801AEE00_7950F0(u16 actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x30, 0x40);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = 0;
        Actor_Initialize(new_actor_index);
        gActors[new_actor_index].posX.whole = gActors[actor_index].posX.whole;
        gActors[new_actor_index].posY.whole = gActors[actor_index].posY.whole;
        gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole - 1;
        gActors[actor_index].pfn_158(actor_index, new_actor_index);
        gActors[actor_index].unk_11C = new_actor_index;
        gActors[actor_index].unk_120 = gActors[new_actor_index].actorType;
        gActors[actor_index].var_158 = gActors[new_actor_index].velocityX.raw * gActors[actor_index].scaleX;
        gActors[actor_index].var_15C = gActors[new_actor_index].velocityY.raw * gActors[actor_index].scaleX;
        gActors[actor_index].velocityX.raw = 0;
        gActors[actor_index].velocityY.raw = 0;
        if (((gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].var_158 > 0)) ||
            (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) && (gActors[actor_index].var_158 < 0))) {
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].unk_134 -= 1.0f;
        func_801AED88_795078(actor_index, new_actor_index);
    }
    ACTOR_GFX_INIT(actor_index, D_800E1EB8);
}


void func_801AF024_795314(u16 actor_index) {
    if (gActors[actor_index].posX.whole - D_801B00B4_7963A4[gActors[actor_index].var_0D8] >= 0x161) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
    else if (gActors[actor_index].posX.whole + D_801B00B4_7963A4[gActors[actor_index].var_0D8] < -0x1A0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    }

    if (gActors[actor_index].posX.whole < -0x300) {
        gActors[actor_index].posX.whole += 0x600;
        gActors[actor_index].graphicIndex ^= 2;
    }
    else if (gActors[actor_index].posX.whole > 0x300) {
        gActors[actor_index].posX.whole -= 0x600;
        gActors[actor_index].graphicIndex ^= 2;
    }
}


s32 func_801AF10C_7953FC(u16 actor_index) {
    if (gActors[actor_index].posX.whole < -0x300) {
        gActors[actor_index].posX.whole += 0x600;
    }
    else if (gActors[actor_index].posX.whole > 0x300) {
        gActors[actor_index].posX.whole -= 0x600;
    }

    if (gActors[actor_index].posX.whole - D_801B00B4_7963A4[gActors[actor_index].var_0D8] > 0x160) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        return 0;
    }

    if (gActors[actor_index].posX.whole + D_801B00B4_7963A4[gActors[actor_index].var_0D8] < -0x1A0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        return 0;
    }
    
    gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
    return 1;
}


void func_801AF1EC_7954DC(u16 actor_index) {
    u8 graphic_offset;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].posX.whole = (s16)gActors[actor_index].var_110 - D_801AFE70_796160[gFestivalCurrentEvent];
        gActors[actor_index].posY.whole = D_801B00CC_7963BC[gActors[actor_index].var_0D8];
        gActors[actor_index].graphicIndex = D_801B009C_79638C[gActors[actor_index].var_0D8];
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].posZ.whole = -0x101;
        gActors[actor_index].unk_188 = -0x140;

        if (gActors[actor_index].var_0D8 < 2) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].state = 0x10;
            return;
        }

        if (gActors[actor_index].var_0D8 < 4) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].state = 0x20;
            return;
        }

        if (gActors[actor_index].var_0D8 < 6) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            gActors[actor_index].state = 0x30;
            return;
        }

        if (gActors[actor_index].var_0D8 < 11) {
            gActors[actor_index].state = 0x40;
            return;
        }

        gActors[actor_index].state = 0x50;
        return;
    case 0x10:
        gActors[actor_index].posX.raw = gActors[actor_index].posX.raw - D_800BE73C / 4 - FIXED_UNIT(1);
        func_801AF024_795314(actor_index);
        return;
    case 0x20:
        gActors[actor_index].posX.raw = gActors[actor_index].posX.raw - D_800BE73C / 4 - FIXED_UNIT(0.5);
        func_801AF024_795314(actor_index);
        return;
    case 0x30:
        gActors[actor_index].posX.raw -= D_800BE73C / 4;
        func_801AF024_795314(actor_index);
        return;
    case 0x40:
        if (func_801AF10C_7953FC(actor_index)) {
            graphic_offset = D_801AFF60_796250[gFestivalCurrentEvent][(gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) / 256];
            gActors[actor_index].posY.whole = D_801B00CC_7963BC[graphic_offset];
            gActors[actor_index].graphicIndex = D_801B009C_79638C[graphic_offset];
            return;
        }
    default:
        return;
    case 0x50:
        func_801AF10C_7953FC(actor_index);
        break;
    }
}


void func_801AF480_795770(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].graphicTimer = 0;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK8;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].posZ.whole = -0x100;
        gActors[actor_index].posX.whole += (s32)gActors[actor_index].var_110 - D_801AFF88_796278[gFestivalCurrentEvent];
        gActors[actor_index].state++;
    case 1:
        if (gActors[actor_index].posX.whole > 0x300) {
            gActors[actor_index].posX.whole -= 0x600;
        }
        if (gActors[actor_index].posX.whole < -0x300) {
            gActors[actor_index].posX.whole += 0x600;
        }
        gActors[actor_index].graphicIndex = D_801B00E4_7963D4[D_801B0074_796364[gFestivalCurrentEvent][(gActors[actor_index].posX.whole + gScreenPosCurrentX.whole) / 256]];
        break;
    }
}
