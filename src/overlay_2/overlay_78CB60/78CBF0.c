#include "common.h"
#include "actor.h"
#include "Alphabet.h"
#include "letterbox.h"
#include "save_file.h"
#include "66250.h"

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

// may be a u32[] 
u32 D_801AF5D0_7958C0[][2] = {
    {0x17D, 0x17C}, {0x1A3, 0x194}, {0x17D, 0x17C}, {0x1C7, 0x17D}, {0x140, 0x16E}
};

// a graphic list.
s16 D_801AF5F8_7958E8[] = {
    0x0804, 4, 0x0806, 4, 0x0808, 4, 
    0, 0
};

// a graphic list.
s16 D_801AF608_7958F8[] = {
    0x080a, 8, 0x080c, 8, 0x080e, 10, 0x080b, 8, 0x080d, 8, 0x080f, 10, 
    -12, 0
};

// a graphic list.
s16 D_801AF624_795914[] = {
    0x0810, 8, 0x0814, 4, 0x0818, 8, 0x0814, 4, 
    -8, 0
};

// a graphic list.
s16 D_801AF638_795928[] = {
    0x0812, 8, 0x0816, 4, 0x081a, 8, 0x0816, 4, 
    -8, 0
};

// a graphic list.
s16 D_801AF64C_79593C[] = {
    0x081e, 8, 0x0822, 4, 0x0826, 8, 0x0822, 4, 
    -8, 0
};

// a graphic list.
s16 D_801AF660_795950[] = {
    0x0820, 8, 0x0824, 4, 0x0828, 8, 0x0824, 4, 
    -8, 0
};

// a graphic list.
s16 D_801AF674_795964[] = {
    0x082A, 8, 0x082E, 4, 0x0832, 8, 0x082E, 4, 
    -8, 0
};

// a graphic list.
s16 D_801AF688_795978[] = {
    0x082C, 8, 0x0830, 4, 0x0834, 8, 0x0830, 4, 
    -8, 0
};

// a graphic list.
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

// {event option x-pos, event option y-pos, event selected.}
u16 D_801AF798_795A88[] = {
    -0x20,  0x20,  FESTGAME_100M, 
    -0x20,  0x10,  FESTGAME_200M, 
    -0x20,     0,  FESTGAME_400M, 
    -0x20, -0x10,  FESTGAME_JUMP, 
    -0x20, -0x20,  FESTGAME_BALL, 
    -0x20, -0x30,  FESTGAME_HURDLE, 
    -0x20, -0x40,  FESTGAME_MATH, 
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
    ALPHA_COLOR_BLACK, ALPHA_EN3_UPPER_W, ALPHA_BALL_WHITE, ALPHA_NULL
};

// "[white]R[red ball]"
u16 D_801AFB1C_795E0C[] = {
    ALPHA_COLOR_WHITE, ALPHA_EN3_UPPER_R, ALPHA_BALL_RED, ALPHA_NULL
};

// "運動会" / "Athletic Festival"
u16 D_801AFB24_795E14[] = {
    ALPHA_JP_KANJI_U904B, ALPHA_JP_KANJI_U52D5, ALPHA_JP_KANJI_U4F1A, ALPHA_NULL
};

// "FOUL!!"
u16 D_801AFB2C_795E1C[] = {
    ALPHA_EN3_UPPER_F, ALPHA_EN3_LOWER_O, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_L,
    ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION, ALPHA_NULL, 0
};

// "1[white ball]2[white ball]3[white ball]4[white ball]5[white ball]"
u16 D_801AFB3C_795E2C[] = {
    ALPHA_1, ALPHA_BALL_WHITE, ALPHA_2, ALPHA_BALL_WHITE, ALPHA_3, ALPHA_BALL_WHITE,
    ALPHA_4, ALPHA_BALL_WHITE, ALPHA_5, ALPHA_BALL_WHITE, ALPHA_NULL, 0
};

// "6[white ball]7[white ball]8[white ball]9[white ball]0[white ball]"
u16 D_801AFB54_795E44[] = {
    ALPHA_6, ALPHA_BALL_WHITE, ALPHA_7, ALPHA_BALL_WHITE, ALPHA_8, ALPHA_BALL_WHITE,
    ALPHA_9, ALPHA_BALL_WHITE, ALPHA_0, ALPHA_BALL_WHITE, ALPHA_NULL, 0
};

// "1[red ball]2[red ball]3[red ball]4[red ball]5[red ball]"
u16 D_801AFB6C_795E5C[] = {
    ALPHA_1, ALPHA_BALL_RED, ALPHA_2, ALPHA_BALL_RED, ALPHA_3, ALPHA_BALL_RED,
    ALPHA_4, ALPHA_BALL_RED, ALPHA_5, ALPHA_BALL_RED, ALPHA_NULL, 0
};

// "6[red ball]7[red ball]8[red ball]9[red ball]0[red ball]"
u16 D_801AFB84_795E74[] = {
    ALPHA_6, ALPHA_BALL_RED, ALPHA_7, ALPHA_BALL_RED, ALPHA_8, ALPHA_BALL_RED,
    ALPHA_9, ALPHA_BALL_RED, ALPHA_0, ALPHA_BALL_RED, ALPHA_NULL, 0
};

// "あいうえおかキ" / "a i u e o ka ki"
u16 D_801AFB9C_795E8C[] = {
    ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_I, ALPHA_JP_HIRA_U, ALPHA_JP_HIRA_E,
    ALPHA_JP_HIRA_O, ALPHA_JP_HIRA_KA, ALPHA_JP_KATA_KI, ALPHA_NULL
};

// "100M"
u16 D_801AFBAC_795E9C[] = {
    ALPHA_THIN_1, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M, ALPHA_NULL, 0
};

// "Jump"
u16 D_801AFBB8_795EA8[] = {
    ALPHA_EN3_UPPER_J, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_M, ALPHA_EN3_LOWER_P, ALPHA_NULL, 0
};

// "Ball"
u16 D_801AFBC4_795EB4[] = {
    ALPHA_EN3_UPPER_B, ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_L, ALPHA_NULL, 0
};

// "200M"
u16 D_801AFBD0_795EC0[] = {
    ALPHA_THIN_2, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M, ALPHA_NULL, 0
};

// "400M"
u16 D_801AFBDC_795ECC[] = {
    ALPHA_THIN_4, ALPHA_THIN_0, ALPHA_THIN_0, ALPHA_EN3_UPPER_M, ALPHA_NULL, 0
};

// "マラソン" / "Marathon"
u16 D_801AFBE8_795ED8[] = {
    ALPHA_JP_KATA_MA, ALPHA_JP_KATA_RA, ALPHA_JP_KATA_SO, ALPHA_JP_KATA_N, ALPHA_NULL, 0
};

// "Hurdle"
u16 D_801AFBF4_795EE4[] = {
    ALPHA_EN3_UPPER_H, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_D,
    ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_E, ALPHA_NULL, 0
};

// "..."
u16 D_801AFC04_795EF4[] = {
    ALPHA_PERIOD, ALPHA_PERIOD, ALPHA_PERIOD, ALPHA_NULL
};

// "WR"
u16 D_801AFC0C_795EFC[] = {
    ALPHA_EN_UPPER_W, ALPHA_EN_UPPER_R, ALPHA_NULL, 0
};

// "RC"
u16 D_801AFC14_795F04[] = {
    ALPHA_EN_UPPER_R, ALPHA_EN_UPPER_C, ALPHA_NULL, 0
};

// "GOAL!!"
u16 D_801AFC1C_795F0C[] = {
    ALPHA_EN3_UPPER_G, ALPHA_EN3_UPPER_O, ALPHA_EN3_UPPER_A, ALPHA_EN3_UPPER_L,
    ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION, ALPHA_NULL, 0
};

// "No Flying"
u16 D_801AFC2C_795F1C[] = {
    ALPHA_EN3_UPPER_N, ALPHA_EN3_LOWER_O, ALPHA_SPACE, ALPHA_EN3_UPPER_F,
    ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_Y, ALPHA_EN3_LOWER_I, ALPHA_EN3_LOWER_N,
    ALPHA_EN3_LOWER_G, ALPHA_NULL
};

// "Rejected!"
u16 D_801AFC40_795F30[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_J, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_D,
    ALPHA_EXCLAMATION, ALPHA_NULL
};

// "3 Chances"
u16 D_801AFC54_795F44[] = {
    ALPHA_THIN_3, ALPHA_SPACE, ALPHA_EN3_UPPER_C, ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_N, ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_S, ALPHA_NULL
};

// "Events"
u16 D_801AFC68_795F58[] = {
    ALPHA_EN3_UPPER_E, ALPHA_EN3_LOWER_V, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_N, ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_S, ALPHA_NULL, 0
};

// " R   M" (remaining distance)
u16 D_801AFC78_795F68[] = {
    ALPHA_SPACE, ALPHA_EN3_UPPER_R, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_SPACE, ALPHA_EN_UPPER_M, ALPHA_NULL, 0
};

// "Ready!"
u16 D_801AFC88_795F78[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_D, ALPHA_EN3_LOWER_Y, ALPHA_EXCLAMATION, ALPHA_NULL, 0
};

// "Set!!"
u16 D_801AFC98_795F88[] = {
    ALPHA_EN3_UPPER_S, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_T,
    ALPHA_2EXCLAMATION, ALPHA_NULL, 0
};

// "Go!!"
u16 D_801AFCA4_795F94[] = {
    ALPHA_EN3_UPPER_G, ALPHA_EN3_LOWER_O,
    ALPHA_2EXCLAMATION, ALPHA_2EXCLAMATION, ALPHA_NULL, 0
};

// "    [black]→[white ball]"
u16 D_801AFCB0_795FA0[] = {
    ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE,
    ALPHA_COLOR_BLACK, ALPHA_ARROW_RIGHT, ALPHA_BALL_WHITE, ALPHA_NULL
};

// "[white]→[red ball]    "
u16 D_801AFCC0_795FB0[] = {
     ALPHA_COLOR_WHITE, ALPHA_ARROW_RIGHT, ALPHA_BALL_RED, ALPHA_SPACE,
     ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_NULL
};

// "Mathfun"
u16 D_801AFCD0_795FC0[] = {
    ALPHA_EN3_UPPER_M, ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_T, ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_F, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_N, ALPHA_NULL
};

// "[black]Q's"
u16 D_801AFCE0_795FD0[] = {
    ALPHA_COLOR_BLACK, ALPHA_EN3_UPPER_Q, ALPHA_APOSTROPHE,
    ALPHA_EN3_LOWER_S, ALPHA_NULL, 0
};

// "[black]ああああああああ"
u16 D_801AFCEC_795FDC[] = {
    ALPHA_COLOR_BLACK, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A,
    ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A, ALPHA_JP_HIRA_A,
    ALPHA_JP_HIRA_A, ALPHA_NULL
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
    ALPHA_EN3_UPPER_T, ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_EN3_UPPER_P, ALPHA_NULL
};

// "[white]R[red ball]T   P"
u16 D_801AFD28_796018[] = {
    ALPHA_COLOR_WHITE, ALPHA_EN3_UPPER_R, ALPHA_BALL_RED, ALPHA_EN3_UPPER_T,
    ALPHA_SPACE, ALPHA_SPACE, ALPHA_SPACE, ALPHA_EN3_UPPER_P, ALPHA_NULL, 0
};

// "Clear"
u16 D_801AFD3C_79602C[] = {
    ALPHA_EN3_UPPER_C, ALPHA_EN3_LOWER_L, ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_A, ALPHA_EN3_LOWER_R, ALPHA_NULL
};

// "A's"
u16 D_801AFD48_796038[] = {
    ALPHA_EN3_UPPER_A, ALPHA_APOSTROPHE, ALPHA_EN3_LOWER_S, ALPHA_NULL
};

// "3回やったら しっかく!!" / "If you false-start three times, you're disqualified!!"
u16 D_801AFD50_796040[] = {
    ALPHA_THIN_3, ALPHA_JP_KANJI_U56DE, ALPHA_JP_HIRA_YA, ALPHA_JP_HIRA_SMALL_TSU,
    ALPHA_JP_HIRA_TA, ALPHA_JP_HIRA_RA, ALPHA_SPACE, ALPHA_JP_HIRA_SHI,
    ALPHA_JP_HIRA_SMALL_TSU, ALPHA_JP_HIRA_KA, ALPHA_JP_HIRA_KU,
    ALPHA_2EXCLAMATION, ALPHA_NULL, 0
};

// " WR"
u16 D_801AFD6C_79605C[] = {
    ALPHA_SPACE, ALPHA_EN3_UPPER_W, ALPHA_EN3_UPPER_R, ALPHA_NULL
};

// "Record"
u16 D_801AFD74_796064[] = {
    ALPHA_EN3_UPPER_R, ALPHA_EN3_LOWER_E, ALPHA_EN3_LOWER_C,
    ALPHA_EN3_LOWER_O, ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_D, ALPHA_NULL, 0
};

// "べすとすこあ" / "Best Score"
u16 D_801AFD84_796074[] = {
    ALPHA_JP_HIRA_BE, ALPHA_JP_HIRA_SU, ALPHA_JP_HIRA_TO,
    ALPHA_JP_HIRA_SU, ALPHA_JP_HIRA_KO, ALPHA_JP_HIRA_A, ALPHA_NULL, 0
};

// "Score"
u16 D_801AFD94_796084[] = {
    ALPHA_EN3_UPPER_S, ALPHA_EN3_LOWER_C, ALPHA_EN3_LOWER_O,
    ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_E, ALPHA_NULL
};

// "--:--:--"
u16 D_801AFDA0_796090[] = {
    ALPHA_EN_MINUS, ALPHA_EN_MINUS, ALPHA_EN_COLON, ALPHA_EN_MINUS,
    ALPHA_EN_MINUS, ALPHA_EN_COLON, ALPHA_EN_MINUS, ALPHA_EN_MINUS, ALPHA_NULL, 0
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



void func_801A7C14_78DF04(u16);
void func_801A7CA4_78DF94(u16);
void func_801ABE24_792114(u16);
void func_801AE0DC_7943CC(u16);
void func_801AD4F4_7937E4(u16);
void func_801AEA60_794D50(u16,u16);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6900_78CBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6ED4_78D1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7200_78D4F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7304_78D5F4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A74A0_78D790.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A774C_78DA3C.s")

void func_801A7878_78DB68(u16 arg0, u16 arg1){
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7940_78DC30.s")

void func_801A7C0C_78DEFC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7C14_78DF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7CA4_78DF94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7E98_78E188.s")

void func_801A821C_78E50C(u16 actor_index) {
    if (gActors[actor_index].var_0D8 > 1) {
        func_801A7C14_78DF04(actor_index);
        func_801A7CA4_78DF94(actor_index);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8284_78E574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8380_78E670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8428_78E718.s")


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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8800_78EAF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8D38_78F028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A913C_78F42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A92D8_78F5C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9440_78F730.s")

void func_801A9508_78F7F8(u16 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9510_78F800.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A97FC_78FAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A99E4_78FCD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9A6C_78FD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9C24_78FF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9DD4_7900C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9FF0_7902E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA108_7903F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA208_7904F8.s")

void func_801AA2A4_790594(u16 actor_index){
    if (gActors[actor_index].pfn_190 != NULL){
        gActors[actor_index].pfn_190(actor_index);
    }
}

void func_801AA2FC_7905EC(s32 arg0, s32 arg1) {
    D_80178292 = 0;
}

void func_801AA310_790600(s32 arg0, s32 arg1){
    u16 index;
    u8* n;

    n = gFestivalEventsPlayed;
    for (index = 0; index < FESTGAME_TOTAL; index++){
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA378_790668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA42C_79071C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA480_790770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAB78_790E68.s")

void func_801AAFC4_7912B4(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAFCC_7912BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB14C_79143C.s")

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
    if (arg1 & gButton_DLeft) {
        if (sp28 != 0) {
            gActors[arg0].unk_170 -= 7;
            gActors[arg0].unk_17C -= 1;
            Sound_PlaySfx(SFX_MENU_BLIP);
            sp24 = 1;
        }
    }
    return sp24;
}

void func_801AB3EC_7916DC(u16 actor_index, u16* arg1) {
    gActors[0x33].posX.whole = arg1[gActors[actor_index].unk_170 * 3] - gActors[actor_index].unk_180 + 0x30;
    gActors[0x33].posY.whole = arg1[gActors[actor_index].unk_170 * 3 + 1];
    gActors[0x33].flags |= ACTOR_FLAG_DRAW;
}

#ifdef NON_MATCHING
// initalize "strikethrough" actors in menu for played games.
// should work, once issue with applying .rodata is solved.
void func_801AB474_791764(u16 arg0){
    u16 index; 
    u16 actor_index;
    for (index = 0; index < FESTGAME_TOTAL; index++){
        actor_index = index+0x40;
        gActors[actor_index].actorType =0;
        Actor_Initialize(actor_index);
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].posZ.whole = 0x81;
        gActors[actor_index].scaleX = 7.0f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].unk_188 =0;
        gActors[actor_index].colorR = 0xFF;
        gActors[actor_index].colorA = 200;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = D_801AF798_795A88[index*3+1];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB474_791764.s")
#endif

// hide the strikes on menu options.
void func_801AB5B4_7918A4(u16 arg0) {
    u16 index; 
    u16 actor_index;
    for (index = 0; index < FESTGAME_TOTAL; index++) {
        actor_index = index+0x40;
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
    }
}

void func_801AB610_791900(u16 actor_index){
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB710_791A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB7A0_791A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABA40_791D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABAE4_791DD4.s")

void func_801ABB44_791E34(u16 actor_index, u16 arg1) {
    gStageState = 0;
    D_800D28F0 = D_801AF7C4_795AB4[arg1 * 2+1];
    D_800D28E4 = 0x62;
}

void func_801ABB80_791E70(u16 actor_index) {
    gFestivalCurrentEvent = D_801AF798_795A88[actor_index * 3+2];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABBAC_791E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABC8C_791F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABDA8_792098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABE24_792114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC0F8_7923E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC13C_79242C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC250_792540.s")

void func_801AC360_792650(u16 actor_index) {
    Actor* actorP;

    actorP=&gActors[0x3a];
    actorP->actorType = ACTORTYPE_OVL2_FEST_8;
    Actor_Initialize(0x3A);
    actorP->flags |= ACTOR_FLAG_FREEZE_POS;
    actorP->posX.whole = 0;
    actorP->posY.whole = 0;
    actorP->unk_178 = (s32)D_801AFA24_795D14;
}

void func_801AC3C0_7926B0(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = ACTORTYPE_OVL2_FEST_7;
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
    actorP->graphicFlags = 0x800;
    actorP->flags = 0x2003;
    actorP->graphicIndex = 0x81C;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC624_792914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC698_792988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC760_792A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACB58_792E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACC90_792F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACD80_793070.s")

void func_801ACEE8_7931D8(u16 actor_index) {
    Actor* actorP;
    
    actorP =&gActors[60];
    func_801AC3C0_7926B0(60, D_801AF7C4_795AB4[gFestivalCurrentEvent * 2]);
    actorP->posX.whole = 0;
    actorP->posY.whole = 0x20;
    actorP->unk_164 = 0x280A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACF40_793230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD0AC_79339C.s")

// add points to teams after event.
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD37C_79366C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD4F4_7937E4.s")

void func_801AD628_793918(u16 arg0){
    if (gFestivalIsTimeBeat){
        func_801AD4F4_7937E4(0x41);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD658_793948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD71C_793A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD840_793B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD9B0_793CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ADE64_794154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE0DC_7943CC.s")

void func_801AE5A0_794890(u16 arg0){
    func_801ABE24_792114(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE5C8_7948B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE804_794AF4.s")

void func_801AE8B4_794BA4(u16 arg0){
    func_801AE0DC_7943CC(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE8DC_794BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEA60_794D50.s")

void func_801AEB10_794E00(u16 arg0){
    func_801AEA60_794D50(arg0,0x19);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB3C_794E2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB68_794E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEBD4_794EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEC44_794F34.s")

void func_801AECA0_794F90(s32 arg0) {
}

void func_801AECA8_794F98(s32 arg0) {
}

void func_801AECB0_794FA0(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AECB8_794FA8.s")

void func_801AED30_795020(u16 actor_index){
    gActors[actor_index].unk_118 = 1.0;
    func_80069E18(actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AED88_795078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEE00_7950F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF024_795314.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF10C_7953FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF1EC_7954DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF480_795770.s")
