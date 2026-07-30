#include "Alphabet.h"
#include "common.h"
#include "save_file.h"
#include "soft_reset.h"
#include "stage.h"
#include "438E0.h"
#include "82F80.h"


// offset 0xA0 in several actors is used for menu variables

#define CHAR_SELECT_COLUMN  gActors[0xB1].unk_0A0
#define CHAR_SELECT_ROW     gActors[0xB2].unk_0A0
#define BUTTON_TIMER_UP     gActors[0xB3].unk_0A0
#define BUTTON_TIMER_DOWN   gActors[0xB4].unk_0A0
#define BUTTON_TIMER_LEFT   gActors[0xB5].unk_0A0
#define BUTTON_TIMER_RIGHT  gActors[0xB6].unk_0A0
#define PRINT_INDEX         gActors[0xB7].unk_0A0
#define NAME_ENTRY_POSITION gActors[0xB8].unk_0A0
#define NAME_ENTRY_CHARSET  gActors[0xB9].unk_0A0
#define CONFIRM_SELECTION   gActors[0xBA].unk_0A0
#define AGE_SELECT_DIGIT    gActors[0xBB].unk_0A0
#define FILE0_SET           gActors[0xBC].unk_0A0
#define FILE1_SET           gActors[0xBD].unk_0A0

enum {
    CHARSET_HIRAGANA = 0,
    CHARSET_KATAKANA = 1,
    CHARSET_LATIN = 2
};

enum {
    SAVE_SLOT_0,
    SAVE_SLOT_1,
    SAVE_SLOT_COUNT
};

#define SAVE_SLOT_NAME_LENGTH 10 // +1 for terminator

// .data
u8 gEEPROMID[] = {
    'T', 'R', 'E', 'A', '0', '7', '2', '2'
};

// list of stage times, backed by EEPROM
u16 gTimeRecords[] = {
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME,
    STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME, STAGE_MAX_TIME
};

u16 gDefaultFileName[] = { //_EN3("Start     ")
    ALPHA_EN3_UPPER_S,
    ALPHA_EN3_LOWER_T,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_R,
    ALPHA_EN3_LOWER_T,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_NULL
};

// default festival records.
u32 gDefaultFestivalScores[] = {
//  100M        200M        400M        Jump
    0x00010000, 0x00020000, 0x00040000, 100,
//  Ball Hurdle      Mathfun Unused race
    3,   0x00020000, 3,      0x00040000,
//  Intro       select screen
    0x00000000, 0x00040000,
};

u16 gNameEntrySpace[SAVE_SLOT_NAME_LENGTH + 1] = { // _EN("          ")
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_SPACE,
    ALPHA_NULL
};

u8 gSelectedSex = 0x00;
u8 gSelectedAge = 0x00;
u8 gCurrentSaveSlot = 0x00;
u8 gPreviousSaveSlot = 0x00;

u8 D_800C5010[] = {
    0x09, 0x09, 0x09, 0x05, 0x09, 0x05, 0x00, 0x00,
};

// if festival event isn't race
u8 gEventNotRace[] = {
//  100M   200M   400M   Jump
    FALSE, FALSE, FALSE, TRUE,
//  Ball  Hurdle Mathfun Unused race
    TRUE, FALSE, TRUE,   FALSE, 
//  Intro select
    TRUE, FALSE
};

// strings
u16 gSlot1[] = { ALPHA_THIN_1, ALPHA_NULL }; // _THIN("1")
u16 gSlot2[] = { ALPHA_THIN_2, ALPHA_NULL }; // _THIN("2")
u16 gDayEN2[] = { // _EN2(" day")
    ALPHA_SPACE,
    ALPHA_EN2_LOWER_D,
    ALPHA_EN2_LOWER_A,
    ALPHA_EN2_LOWER_Y,
    ALPHA_NULL
};
u16 gHrsEN2[] = { // _EN2(" hrs")
    ALPHA_SPACE,
    ALPHA_EN2_LOWER_H,
    ALPHA_EN2_LOWER_R,
    ALPHA_EN2_LOWER_S,
    ALPHA_NULL
};
u16 gMinEN2[] = { // _EN2(" min")
    ALPHA_SPACE,
    ALPHA_EN2_LOWER_M,
    ALPHA_EN2_LOWER_I,
    ALPHA_EN2_LOWER_N,
    ALPHA_NULL
};
u16 gSecEN2[] = { // _EN2(" sec")
    ALPHA_SPACE,
    ALPHA_EN2_LOWER_S,
    ALPHA_EN2_LOWER_E,
    ALPHA_EN2_LOWER_C,
    ALPHA_NULL
};
u16 gErase[] = { // _EN3("Erase")
    ALPHA_EN3_UPPER_E,
    ALPHA_EN3_LOWER_R,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_S,
    ALPHA_EN3_LOWER_E,
    ALPHA_NULL
};
u16 gWhichQuestion[] = { // _EN3("Which?")
    ALPHA_EN3_UPPER_W,
    ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_I,
    ALPHA_EN3_LOWER_C,
    ALPHA_EN3_LOWER_H,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gNameQuestion[] = { // _EN3("Name?")
    ALPHA_EN3_UPPER_N,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_M,
    ALPHA_EN3_LOWER_E,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gNameEntryRow0HIRA[] = { // _JP("あかさたなはまやらわがざだばぱぁゃ")
    ALPHA_JP_HIRA_A,
    ALPHA_JP_HIRA_KA,
    ALPHA_JP_HIRA_SA,
    ALPHA_JP_HIRA_TA,
    ALPHA_JP_HIRA_NA,
    ALPHA_JP_HIRA_HA,
    ALPHA_JP_HIRA_MA,
    ALPHA_JP_HIRA_YA,
    ALPHA_JP_HIRA_RA,
    ALPHA_JP_HIRA_WA,
    ALPHA_JP_HIRA_GA,
    ALPHA_JP_HIRA_ZA,
    ALPHA_JP_HIRA_DA,
    ALPHA_JP_HIRA_BA,
    ALPHA_JP_HIRA_PA,
    ALPHA_JP_HIRA_SMALL_A,
    ALPHA_JP_HIRA_SMALL_YA,
    ALPHA_NULL
};
u16 gNameEntryRow1HIRA[] = {// _JP("いきしちにひみ りをぎじぢびぴぃゅ")
    ALPHA_JP_HIRA_I,
    ALPHA_JP_HIRA_KI,
    ALPHA_JP_HIRA_SHI,
    ALPHA_JP_HIRA_CHI,
    ALPHA_JP_HIRA_NI,
    ALPHA_JP_HIRA_HI,
    ALPHA_JP_HIRA_MI,
    ALPHA_SPACE,
    ALPHA_JP_HIRA_RI,
    ALPHA_JP_HIRA_WO,
    ALPHA_JP_HIRA_GI,
    ALPHA_JP_HIRA_JI,
    ALPHA_JP_HIRA_DI,
    ALPHA_JP_HIRA_BI,
    ALPHA_JP_HIRA_PI,
    ALPHA_JP_HIRA_SMALL_I,
    ALPHA_JP_HIRA_SMALL_YU,
    ALPHA_NULL
};
u16 gNameEntryRow2HIRA[] = { // _JP("うくすつぬふむゆるんぐずづぶぷぅょ")
    ALPHA_JP_HIRA_U,
    ALPHA_JP_HIRA_KU,
    ALPHA_JP_HIRA_SU,
    ALPHA_JP_HIRA_TSU,
    ALPHA_JP_HIRA_NU,
    ALPHA_JP_HIRA_FU,
    ALPHA_JP_HIRA_MU,
    ALPHA_JP_HIRA_YU,
    ALPHA_JP_HIRA_RU,
    ALPHA_JP_HIRA_N,
    ALPHA_JP_HIRA_GU,
    ALPHA_JP_HIRA_ZU,
    ALPHA_JP_HIRA_DU,
    ALPHA_JP_HIRA_BU,
    ALPHA_JP_HIRA_PU,
    ALPHA_JP_HIRA_SMALL_U,
    ALPHA_JP_HIRA_SMALL_YO,
    ALPHA_NULL
};
u16 gNameEntryRow3HIRA[] = { // _JP("えけせてねへめ れ げぜでべぺぇ ")
    ALPHA_JP_HIRA_E,
    ALPHA_JP_HIRA_KE,
    ALPHA_JP_HIRA_SE,
    ALPHA_JP_HIRA_TE,
    ALPHA_JP_HIRA_NE,
    ALPHA_JP_HIRA_HE,
    ALPHA_JP_HIRA_ME,
    ALPHA_SPACE,
    ALPHA_JP_HIRA_RE,
    ALPHA_SPACE,
    ALPHA_JP_HIRA_GE,
    ALPHA_JP_HIRA_ZE,
    ALPHA_JP_HIRA_DE,
    ALPHA_JP_HIRA_BE,
    ALPHA_JP_HIRA_PE,
    ALPHA_JP_HIRA_SMALL_E,
    ALPHA_SPACE,
    ALPHA_NULL
};
u16 gNameEntryRow4HIRA[] = { // _JP("おこそとのほもよろーごぞどぼぽぉっ")
    ALPHA_JP_HIRA_O,
    ALPHA_JP_HIRA_KO,
    ALPHA_JP_HIRA_SO,
    ALPHA_JP_HIRA_TO,
    ALPHA_JP_HIRA_NO,
    ALPHA_JP_HIRA_HO,
    ALPHA_JP_HIRA_MO,
    ALPHA_JP_HIRA_YO,
    ALPHA_JP_HIRA_RO,
    ALPHA_DASH,
    ALPHA_JP_HIRA_GO,
    ALPHA_JP_HIRA_ZO,
    ALPHA_JP_HIRA_DO,
    ALPHA_JP_HIRA_BO,
    ALPHA_JP_HIRA_PO,
    ALPHA_JP_HIRA_SMALL_O,
    ALPHA_JP_HIRA_SMALL_TSU,
    ALPHA_NULL
};
u16 gArrowRight[] = { ALPHA_ARROW_RIGHT, ALPHA_NULL }; // _("→")
u16 gArrowLeft[] = { ALPHA_ARROW_LEFT, ALPHA_NULL }; // _("←")
u16 gArrowDown[] = { ALPHA_ARROW_DOWN, ALPHA_NULL }; // _("↓")
u16 gDash10x[] = { // _("----------") used as underscore in name entry
    ALPHA_DASH, ALPHA_DASH, ALPHA_DASH, ALPHA_DASH, ALPHA_DASH,
    ALPHA_DASH, ALPHA_DASH, ALPHA_DASH, ALPHA_DASH, ALPHA_DASH,
    ALPHA_NULL
};
u16 gNameEntryRow0KATA[] = { // _JP("アカサタナハマヤラワガザダバパァャ")
    ALPHA_JP_KATA_A,
    ALPHA_JP_KATA_KA,
    ALPHA_JP_KATA_SA,
    ALPHA_JP_KATA_TA,
    ALPHA_JP_KATA_NA,
    ALPHA_JP_KATA_HA,
    ALPHA_JP_KATA_MA,
    ALPHA_JP_KATA_YA,
    ALPHA_JP_KATA_RA,
    ALPHA_JP_KATA_WA,
    ALPHA_JP_KATA_GA,
    ALPHA_JP_KATA_ZA,
    ALPHA_JP_KATA_DA,
    ALPHA_JP_KATA_BA,
    ALPHA_JP_KATA_PA,
    ALPHA_JP_KATA_SMALL_A,
    ALPHA_JP_KATA_SMALL_YA,
    ALPHA_NULL
};
u16 gNameEntryRow1KATA[] = { // _JP("イキシチニヒミ リヲギジヂビピィュ")
    ALPHA_JP_KATA_I,
    ALPHA_JP_KATA_KI,
    ALPHA_JP_KATA_SHI,
    ALPHA_JP_KATA_CHI,
    ALPHA_JP_KATA_NI,
    ALPHA_JP_KATA_HI,
    ALPHA_JP_KATA_MI,
    ALPHA_SPACE,
    ALPHA_JP_KATA_RI,
    ALPHA_JP_KATA_WO,
    ALPHA_JP_KATA_GI,
    ALPHA_JP_KATA_JI,
    ALPHA_JP_KATA_DI,
    ALPHA_JP_KATA_BI,
    ALPHA_JP_KATA_PI,
    ALPHA_JP_KATA_SMALL_I,
    ALPHA_JP_KATA_SMALL_YU,
    ALPHA_NULL
};
u16 gNameEntryRow2KATA[] = { // _JP("ウクスツヌフムユルングズヅブプゥョ")
    ALPHA_JP_KATA_U,
    ALPHA_JP_KATA_KU,
    ALPHA_JP_KATA_SU,
    ALPHA_JP_KATA_TSU,
    ALPHA_JP_KATA_NU,
    ALPHA_JP_KATA_FU,
    ALPHA_JP_KATA_MU,
    ALPHA_JP_KATA_YU,
    ALPHA_JP_KATA_RU,
    ALPHA_JP_KATA_N,
    ALPHA_JP_KATA_GU,
    ALPHA_JP_KATA_ZU,
    ALPHA_JP_KATA_DU,
    ALPHA_JP_KATA_BU,
    ALPHA_JP_KATA_PU,
    ALPHA_JP_KATA_SMALL_U,
    ALPHA_JP_KATA_SMALL_YO,
    ALPHA_NULL
};
u16 gNameEntryRow3KATA[] = { // _JP("エケセテネヘメ レ ゲゼデベペェッ")
    ALPHA_JP_KATA_E,
    ALPHA_JP_KATA_KE,
    ALPHA_JP_KATA_SE,
    ALPHA_JP_KATA_TE,
    ALPHA_JP_KATA_NE,
    ALPHA_JP_KATA_HE,
    ALPHA_JP_KATA_ME,
    ALPHA_SPACE,
    ALPHA_JP_KATA_RE,
    ALPHA_SPACE,
    ALPHA_JP_KATA_GE,
    ALPHA_JP_KATA_ZE,
    ALPHA_JP_KATA_DE,
    ALPHA_JP_KATA_BE,
    ALPHA_JP_KATA_PE,
    ALPHA_JP_KATA_SMALL_E,
    ALPHA_JP_KATA_SMALL_TSU,
    ALPHA_NULL
};
u16 gNameEntryRow4KATA[] = { // _JP("オコソトノホモヨローゴゾドボポォヴ")
    ALPHA_JP_KATA_O,
    ALPHA_JP_KATA_KO,
    ALPHA_JP_KATA_SO,
    ALPHA_JP_KATA_TO,
    ALPHA_JP_KATA_NO,
    ALPHA_JP_KATA_HO,
    ALPHA_JP_KATA_MO,
    ALPHA_JP_KATA_YO,
    ALPHA_JP_KATA_RO,
    ALPHA_DASH,
    ALPHA_JP_KATA_GO,
    ALPHA_JP_KATA_ZO,
    ALPHA_JP_KATA_DO,
    ALPHA_JP_KATA_BO,
    ALPHA_JP_KATA_PO,
    ALPHA_JP_KATA_SMALL_O,
    ALPHA_JP_KATA_VU,
    ALPHA_NULL
};
u16 gMorFEN3[] = { // _EN3("M or F?")
    ALPHA_EN3_UPPER_M,
    ALPHA_SPACE,
    ALPHA_EN3_LOWER_O,
    ALPHA_EN3_LOWER_R,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_F,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gAgeQuestion[] = { // _EN3(" Age??")
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_A,
    ALPHA_EN3_LOWER_G,
    ALPHA_EN3_LOWER_E,
    ALPHA_QUESTION,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gWhichQuestion2[] = { // _EN3("Which?")
    ALPHA_EN3_UPPER_W,
    ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_I,
    ALPHA_EN3_LOWER_C,
    ALPHA_EN3_LOWER_H,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gEraseQuestion[] = { // _EN3("Erase ?")
    ALPHA_EN3_UPPER_E,
    ALPHA_EN3_LOWER_R,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_S,
    ALPHA_EN3_LOWER_E,
    ALPHA_SPACE,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gReallyQuestion[] = { // _EN3("Really?")
    ALPHA_EN3_UPPER_R,
    ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_L,
    ALPHA_EN3_LOWER_L,
    ALPHA_EN3_LOWER_Y,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gQuitQuestion[] = { // _EN3("Quit?")
    ALPHA_EN3_UPPER_Q,
    ALPHA_EN3_LOWER_U,
    ALPHA_EN3_LOWER_I,
    ALPHA_EN3_LOWER_T,
    ALPHA_QUESTION,
    ALPHA_NULL
};
u16 gIsThisOkQuestion[] = { // _EN3("Is this OK? Yes No")
    ALPHA_EN3_UPPER_I,
    ALPHA_EN3_LOWER_S,
    ALPHA_SPACE,
    ALPHA_EN3_LOWER_T,
    ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_I,
    ALPHA_EN3_LOWER_S,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_O,
    ALPHA_EN3_UPPER_K,
    ALPHA_QUESTION,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_Y,
    ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_S,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_N,
    ALPHA_EN3_LOWER_O,
    ALPHA_NULL
};
u16 gYesNo[] = { // _EN3("Yes No")
    ALPHA_EN3_UPPER_Y,
    ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_S,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_N,
    ALPHA_EN3_LOWER_O,
    ALPHA_NULL
};
u16 gHiragana[] = { // _JP("ひらがな")
    ALPHA_JP_HIRA_HI,
    ALPHA_JP_HIRA_RA,
    ALPHA_JP_HIRA_GA,
    ALPHA_JP_HIRA_NA,
    ALPHA_NULL
};
u16 gKatakana[] = { // _JP("カタカナ")
    ALPHA_JP_KATA_KA,
    ALPHA_JP_KATA_TA,
    ALPHA_JP_KATA_KA,
    ALPHA_JP_KATA_NA,
    ALPHA_NULL
};
u16 gOther[] = { // _JP("そのほか")
    ALPHA_JP_HIRA_SO,
    ALPHA_JP_HIRA_NO,
    ALPHA_JP_HIRA_HO,
    ALPHA_JP_HIRA_KA,
    ALPHA_NULL
};
u16 gName[] = { // _EN3("Name")
    ALPHA_EN3_UPPER_N,
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_M,
    ALPHA_EN3_LOWER_E,
    ALPHA_NULL
};
u16 gMorF2[] = { // _EN3("M or F")
    ALPHA_EN3_UPPER_M,
    ALPHA_SPACE,
    ALPHA_EN3_LOWER_O,
    ALPHA_EN3_LOWER_R,
    ALPHA_SPACE,
    ALPHA_EN3_UPPER_F,
    ALPHA_NULL
};
u16 gGenderM[] = { ALPHA_EN3_UPPER_M, ALPHA_NULL }; // _EN3("M")
u16 gGenderF[] = { ALPHA_EN3_UPPER_F, ALPHA_NULL }; // _EN3("F")
u16 gAgeEN3[] = { // _EN3("Age")
    ALPHA_EN3_UPPER_A,
    ALPHA_EN3_LOWER_G,
    ALPHA_EN3_LOWER_E,
    ALPHA_NULL
};
u16 gSpace1[] = { ALPHA_SPACE, ALPHA_NULL }; // _(" ")
u16 gAgeEN2[] = { // _EN2(" Age")
    ALPHA_SPACE,
    ALPHA_EN2_UPPER_A,
    ALPHA_EN2_LOWER_G,
    ALPHA_EN2_LOWER_E,
    ALPHA_NULL
};
u16 gNameEntryRow0ENG[] = { // _EN3("abcdefghijklm αβγ")
    ALPHA_EN3_LOWER_A,
    ALPHA_EN3_LOWER_B,
    ALPHA_EN3_LOWER_C,
    ALPHA_EN3_LOWER_D,
    ALPHA_EN3_LOWER_E,
    ALPHA_EN3_LOWER_F,
    ALPHA_EN3_LOWER_G,
    ALPHA_EN3_LOWER_H,
    ALPHA_EN3_LOWER_I,
    ALPHA_EN3_LOWER_J,
    ALPHA_EN3_LOWER_K,
    ALPHA_EN3_LOWER_L,
    ALPHA_EN3_LOWER_M,
    ALPHA_SPACE,
    ALPHA_EN_GREEK_ALPHA,
    ALPHA_EN_GREEK_BETA,
    ALPHA_EN_GREEK_GAMMA,
    ALPHA_NULL
};
u16 gNameEntryRow1ENG[] = { // _EN3("nopqrstuvwxyz 'sII:")
    ALPHA_EN3_LOWER_N,
    ALPHA_EN3_LOWER_O,
    ALPHA_EN3_LOWER_P,
    ALPHA_EN3_LOWER_Q,
    ALPHA_EN3_LOWER_R,
    ALPHA_EN3_LOWER_S,
    ALPHA_EN3_LOWER_T,
    ALPHA_EN3_LOWER_U,
    ALPHA_EN3_LOWER_V,
    ALPHA_EN3_LOWER_W,
    ALPHA_EN3_LOWER_X,
    ALPHA_EN3_LOWER_Y,
    ALPHA_EN3_LOWER_Z,
    ALPHA_SPACE,
    ALPHA_APOSTROPHE_S,
    ALPHA_ROMAN_2,
    ALPHA_COLON,
    ALPHA_NULL
};
u16 gNameEntryRow2ENG[] = { // _EN3("ABCDEFGHIJKLM +-=")
    ALPHA_EN3_UPPER_A,
    ALPHA_EN3_UPPER_B,
    ALPHA_EN3_UPPER_C,
    ALPHA_EN3_UPPER_D,
    ALPHA_EN3_UPPER_E,
    ALPHA_EN3_UPPER_F,
    ALPHA_EN3_UPPER_G,
    ALPHA_EN3_UPPER_H,
    ALPHA_EN3_UPPER_I,
    ALPHA_EN3_UPPER_J,
    ALPHA_EN3_UPPER_K,
    ALPHA_EN3_UPPER_L,
    ALPHA_EN3_UPPER_M,
    ALPHA_SPACE,
    ALPHA_PLUS,
    ALPHA_DASH,
    ALPHA_EQUALS,
    ALPHA_NULL
};
u16 gNameEntryRow3ENG[] = { // _EN3("NOPQRSTUVWXYZ <><3")
    ALPHA_EN3_UPPER_N,
    ALPHA_EN3_UPPER_O,
    ALPHA_EN3_UPPER_P,
    ALPHA_EN3_UPPER_Q,
    ALPHA_EN3_UPPER_R,
    ALPHA_EN3_UPPER_S,
    ALPHA_EN3_UPPER_T,
    ALPHA_EN3_UPPER_U,
    ALPHA_EN3_UPPER_V,
    ALPHA_EN3_UPPER_W,
    ALPHA_EN3_UPPER_X,
    ALPHA_EN3_UPPER_Y,
    ALPHA_EN3_UPPER_Z,
    ALPHA_SPACE,
    ALPHA_LESS_THAN,
    ALPHA_GREATER_THAN,
    ALPHA_HEART,
    ALPHA_NULL
};
u16 gNameEntryRow4ENG[] = { // _EN3("0123456789.,' !?♪")
    ALPHA_THIN_0,
    ALPHA_THIN_1,
    ALPHA_THIN_2,
    ALPHA_THIN_3,
    ALPHA_THIN_4,
    ALPHA_THIN_5,
    ALPHA_THIN_6,
    ALPHA_THIN_7,
    ALPHA_THIN_8,
    ALPHA_THIN_9,
    ALPHA_PERIOD,
    ALPHA_COMMA,
    ALPHA_APOSTROPHE,
    ALPHA_SPACE,
    ALPHA_EXCLAMATION,
    ALPHA_QUESTION,
    ALPHA_NOTE,
    ALPHA_NULL
};

//------------------------------------------------------------------------------
// gFileNames through gFilePlayTimes are backed by EEPROM common 0x48 byte transfers
u16 gFileNames[SAVE_SLOT_COUNT][SAVE_SLOT_NAME_LENGTH + 1];
u8 gFileAges[SAVE_SLOT_COUNT];
u8 gFileSexes[SAVE_SLOT_COUNT];
u16 gFileRedGems[SAVE_SLOT_COUNT];
u16 gFileYellowGems[SAVE_SLOT_COUNT];
u64 gFilePlayTimes[SAVE_SLOT_COUNT];

// code does not match if encapsulated in a struct
#define SAVE_FILE_DATA ((u8*)gFileNames)
#define SAVE_FILE_SIZE (sizeof(gFileNames) + sizeof(gFileAges) + sizeof(gFileSexes) + \
                        sizeof(gFileRedGems) + sizeof(gFileYellowGems) + sizeof(gFilePlayTimes))
//------------------------------------------------------------------------------
// gFestivalRecords through D_80171B19 are backed by EEPROM common 0x32 byte transfers
u32 gFestivalRecords[FESTGAME_TOTAL];
u64 gYellowGemBitfield;
u8 gWorldProgress;
u8 D_80171B19; // set when festival games are won.
#define FESTIVAL_SAVE_DATA ((u8*)gFestivalRecords)
#define FESTIVAL_SAVE_SIZE (sizeof(gFestivalRecords) + sizeof(gYellowGemBitfield) + \
                            sizeof(gWorldProgress) + sizeof(D_80171B19))
//------------------------------------------------------------------------------

u16 D_80171B1A;
u16 D_80171B1C;
u16 D_80171B1E; // actor index
u16 D_80171B20; // actor index
u16 D_80171B22; // bitfield used in GameState_FileSelect

u16 func_80004E70(u32 arg0, u32 arg1) {
    u32 temp_v1;
    u32 mask;

    temp_v1 = (arg1 * 4);
    mask = (0xF << temp_v1);
    return (arg0 & mask) >> temp_v1;
}

s32 func_80004E90(u32 arg0) {
    u16 index;

    for (index = 0; index < 8; index++) {
        if (D_800C5010[index] < func_80004E70(arg0, index)) {
            return TRUE;
        }
    }
    return FALSE;
}

s32 EventScoreOver999(u32 arg0) {
    if (arg0 >= 1000) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

// if festival event score seems too high,
// replace it with default
// @returns true if score defaulted
s32 Festival_ValidateScores(void) {
    u16 index;
    s32 result;
    u16 var_v0;

    result = FALSE;
    for (index = 0; index < 7; index++) {
        if (gEventNotRace[index]) {
            var_v0 = EventScoreOver999(gFestivalRecords[index]);
        }
        else {
            var_v0 = func_80004E90(gFestivalRecords[index]);
        }
        if (var_v0) {
            result = TRUE;
            gFestivalRecords[index] = gDefaultFestivalScores[index];
        }
    }
    return result;
}

void SaveFile_DefaultSlot(u8 save_slot) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        gFileNames[save_slot][index] = gDefaultFileName[index];
    }
    gFileAges[save_slot] = 0;
    gFileSexes[save_slot] = 0;
    gFileRedGems[save_slot] = 30;
    gFileYellowGems[save_slot] = 0;
    gFilePlayTimes[save_slot] = 0;
}

void SaveFile_DefaultRecords(void) {
    u16 index;

    for (index = 0; index < ARRAYLENGTH(gFestivalRecords); index++) { gFestivalRecords[index] = gDefaultFestivalScores[index]; }

    // unsure the purpose of this zero, shift, and zero
    gYellowGemBitfield = 0;
    gYellowGemBitfield <<= 0x20;
    gYellowGemBitfield = 0;

    gWorldProgress = 0;
    D_80171B19 = 0;

    for (index = 0; index < ARRAYLENGTH(gTimeRecords); index++) {  gTimeRecords[index] = STAGE_MAX_TIME; }
}

void SaveFile_CheckValid(void) {
    u16 index;
    u8 eeprom_id[8];
    u8 count;
    u8 has_terminator;

    osEepromProbe(&gControllerReadMessageQueue);
    osEepromLongRead(&gControllerReadMessageQueue, 0, eeprom_id, sizeof(eeprom_id));
    for (index = 0, count = 0; index < ARRAYLENGTH(gEEPROMID); index++) {
        if (eeprom_id[index] != gEEPROMID[index]) {
            count++;
        }
    }
    // new save data, or data without valid ID.
    if (count != 0) {
        SaveFile_DefaultSlot(0);
        SaveFile_DefaultSlot(1);
        osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        SaveFile_DefaultRecords();
        osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
        osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
        osEepromLongWrite(&gControllerReadMessageQueue, 0, gEEPROMID, sizeof(gEEPROMID));
    }
    else { // check validity of save slots
        // 1st ---------------------------------------------------------------------------------
        osEepromLongRead(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        count = 0;
        // check if save file name has illegal characters
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_0]); index++) {
            if (((gFileNames[SAVE_SLOT_0][index] != 0) && 
                (gFileNames[SAVE_SLOT_0][index] <= ALPHA_EN_BRACKETRIGHT)) || 
                ((gFileNames[SAVE_SLOT_0][index] > ALPHA_EN3_UPPER_Z) // last legal char
                && (gFileNames[SAVE_SLOT_0][index] != ALPHA_NULL))) {
                count = 1;
            }
        }
        // check if save file name has terminator character
        has_terminator = FALSE;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_0]); index++) {
            if (gFileNames[SAVE_SLOT_0][index] == ALPHA_NULL) {
                has_terminator = TRUE;
            }
        }

        if ((count == 1) || (!has_terminator) ||
            (gFileAges[SAVE_SLOT_0] >= 100) || // invalid age
            (gFileSexes[SAVE_SLOT_0] >= 2) || // not male or female
            (gFileRedGems[SAVE_SLOT_0] >= 10000) || // red gems beyond cap
            (gFileYellowGems[SAVE_SLOT_0] >= 54) || // more yellow gems than collectible
            (CountYellowGems() != gFileYellowGems[SAVE_SLOT_0]) || // mismatch yellow gem count
            (gFilePlayTimes[SAVE_SLOT_0] >= FILE_PLAY_TIME_MAX) || // playing longer then possible
            (gWorldProgress > STAGE_MAX)) // progress too high
        { // illegal save file, erase
            SaveFile_DefaultSlot(0);
            osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
            SaveFile_DefaultRecords();
            osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        }
        
        // check duplicated for second slot
        // 2nd ---------------------------------------------------------------------------------
        osEepromLongRead(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        count = 0;
        // check if save file name has illegal characters
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_1]); index++) {
            if (((gFileNames[SAVE_SLOT_1][index] != 0) && 
                (gFileNames[SAVE_SLOT_1][index] <= ALPHA_EN_BRACKETRIGHT)) || 
                ((gFileNames[SAVE_SLOT_1][index] > ALPHA_EN3_UPPER_Z) // last legal char
                && (gFileNames[SAVE_SLOT_1][index] != ALPHA_NULL))) {
                count = 1;
            }
        }
        // check if save file name has terminator character
        has_terminator = FALSE;
        for (index = 0; index < ARRAYLENGTH(gFileNames[SAVE_SLOT_1]); index++) {
            if (gFileNames[SAVE_SLOT_1][index] == ALPHA_NULL) {
                has_terminator = TRUE;
            }
        }
        if ((count == 1) || (!has_terminator) ||
            (gFileAges[SAVE_SLOT_1] >= 100) || // invalid age
            (gFileSexes[SAVE_SLOT_1] >= 2) || // not male or female
            (gFileRedGems[SAVE_SLOT_1] >= 10000) || // red gems beyond cap
            (gFileYellowGems[SAVE_SLOT_1] >= 54) || // more yellow gems than collectible
            (CountYellowGems() != gFileYellowGems[SAVE_SLOT_1]) || // mismatch yellow gem count
            (gFilePlayTimes[SAVE_SLOT_1] >= FILE_PLAY_TIME_MAX) || // playing longer then possible
            (gWorldProgress > STAGE_MAX)) // progress too high
        { // illegal save file, erase
            SaveFile_DefaultSlot(1);
            osEepromLongWrite(&gControllerReadMessageQueue, 2, SAVE_FILE_DATA, SAVE_FILE_SIZE);
            SaveFile_DefaultRecords();
            osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        }
    }
}

void SaveFile_LoadSlot(void) {
    u16 index;

    osEepromProbe(&gControllerReadMessageQueue);
    if (gCurrentSaveSlot != 0) {
        osEepromLongRead(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongRead(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongRead(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    if (D_80171B19 >= 2) {
        D_80171B19 = 0;
    }
    Festival_ValidateScores();
    for (index = 0; index < ARRAYLENGTH(gTimeRecords); index++) {
        if (gTimeRecords[index] > STAGE_MAX_TIME) {
            gTimeRecords[index] = STAGE_MAX_TIME;
        }
    }
}

void SaveFile_SaveSlot(void) {
    osEepromProbe(&gControllerReadMessageQueue);
    osEepromLongWrite(&gControllerReadMessageQueue, 0x2, (u8* ) gFileNames, 0x48);
    if (gCurrentSaveSlot != 0) {
        osEepromLongWrite(&gControllerReadMessageQueue, 0x24, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x2C, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
    else {
        osEepromLongWrite(&gControllerReadMessageQueue, 0xC, FESTIVAL_SAVE_DATA, FESTIVAL_SAVE_SIZE);
        osEepromLongWrite(&gControllerReadMessageQueue, 0x14, (u8* ) gTimeRecords, sizeof(gTimeRecords));
    }
}

void SaveFile_EraseSlot(void) {
    SaveFile_DefaultSlot(gCurrentSaveSlot);
    SaveFile_DefaultRecords();
    SaveFile_SaveSlot();
}

void SaveFile_GemIcon(u16 actor_index, u16 x, u16 y, uintptr_t palette) {
    Text_InitActorGList(actor_index, gGraphicListGemIcon, x, y, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE;
    gActors[actor_index].palette_18C = (u16*)palette;
}

void SaveFile_PrintRedGems(u16 actor_index, u16 x, u16 y, u16 save_slot, u16* arg4) {
    s32 pad;
    Text_Print2Digits(actor_index, gFileRedGems[save_slot] / 100, x, y, 0, arg4);
    Text_Print2Digits(actor_index + 2, gFileRedGems[save_slot] % 100, x + 18, y, 0, arg4);
}

u16 SaveFile_PrintPlayTime(u16 actor_index, u16 x, u16 y, u16 index) {
    u32 time_sec;

    time_sec = gFilePlayTimes[index] / 60;
    if (time_sec >= (100 * SEC_PER_DAY - 1)) {
        time_sec = (100 * SEC_PER_DAY - 1);
    }
    Text_Print2Digits(actor_index + 0x0, (time_sec / SEC_PER_DAY),                 x +   0, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0x4, (time_sec % SEC_PER_DAY) / SEC_PER_HOUR,  x +  48, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0x8, (time_sec % SEC_PER_HOUR) / MIN_PER_HOUR, x +  96, y, 0, gTextPalettes[2]);
    Text_Print2Digits(actor_index + 0xB, (time_sec % SEC_PER_MIN),                 x + 144, y, 0, gTextPalettes[2]);
    return actor_index + 0xE;
}

// check if cursor is on blank space
u8 NameEntry_CursorOnBlank(u8 arg0, u8 arg1) {
    switch (NAME_ENTRY_CHARSET) {
    case CHARSET_HIRAGANA:
        if ((arg0 == 0x10) && (arg1 == 3)) {
            return TRUE;
        }
        // fallthrough
    case CHARSET_KATAKANA:
        if ((arg0 == 7) && (arg1 == 1)) {
            return TRUE;
        }
        else if ((arg0 == 7) && (arg1 == 3)) {
            return TRUE;
        }
        else if ((arg0 == 9) && (arg1 == 3)) {
            return TRUE;
        }
        return FALSE;
    case CHARSET_LATIN:
        if (arg0 == 0xD) {
            return TRUE;
        }
        return FALSE;
    }
    // BUG: missing default return
}

void NameEntry_AnimateChar(u16 actor_index) {
    s32 angle;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].var_154 = 0x10;
        gActors[actor_index].velocityX.raw = ((((actor_index - PRINT_INDEX) * 16) - gActors[actor_index].posX.whole) * 0x1000) - FIXED_UNIT(4.5);
        gActors[actor_index].velocityY.raw = (-gActors[actor_index].posY.whole * 0x1000) - FIXED_UNIT(3.25);
        gActors[actor_index].state++;
        break;
    case 1:
        if (gActors[actor_index].var_154-- == 0) {
            gActors[actor_index].posX.whole = ((actor_index - PRINT_INDEX) * 16) - 72;
            gActors[actor_index].posY.whole = -52;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
            gActors[actor_index].state++;
            return;
        }
        gActors[actor_index].posX.raw += gActors[actor_index].velocityX.raw;
        gActors[actor_index].posY.raw += gActors[actor_index].velocityY.raw;
        switch (actor_index % 4) {
        case 0:
            angle = gActors[actor_index].var_154 * 0x40;
            gActors[actor_index].posX.raw += COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw += SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 1:
            angle = (-gActors[actor_index].var_154 * 0x40) + COS_DEG_360;
            gActors[actor_index].posX.raw += COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw += SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 2:
            angle = gActors[actor_index].var_154 * 0x40;
            gActors[actor_index].posX.raw -= COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw -= SIN(angle) * FIXED_UNIT(16.0);
            break;
        case 3:
            angle = (-gActors[actor_index].var_154 * 0x40) + COS_DEG_360;
            gActors[actor_index].posX.raw -= COS(angle) * FIXED_UNIT(16.0);
            gActors[actor_index].posY.raw -= SIN(angle) * FIXED_UNIT(16.0);
            break;
        }
        break;
    case 2:
        break;
    }
}

void NameEntry_SexAndAge(u16 actor_index) {
    u16 actor_1;

    gActors[actor_index + 0].posX.whole = -32;
    gActors[actor_index + 0].posY.whole = 16;
    gActors[actor_index + 1].posX.whole = -32;
    gActors[actor_index + 1].posY.whole = 16;
    actor_1 = Text_PrintStringRGB(actor_index + 3, gMorFEN3, 0xFFE0, 0x58, 0x0, 0x80, 0x0, 0x80);

    gActors[actor_1 - 4].posX.whole -= 8;
    gActors[actor_1 - 3].posX.whole -= 8;
    gActors[actor_1 - 2].posX.whole -= 16;
    gActors[actor_1 - 1].posX.whole -= 16;
    actor_1 = Text_PrintStringRGB(actor_1, gName, 0xFF90, 0x30, 0x0, 0x80,  0x0, 0x80);
    D_80171B1A = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, gNameEntrySpace, 0xFFE0, 0x30, 0x0, 0x40, 0x20, 0xFF);
    D_80171B1C = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, gMorF2, 0xFF8A, 0x10, 0x0, 0x80,  0x0, 0x80);

    gActors[actor_1 - 3].posX.whole -= 8;
    gActors[actor_1 - 2].posX.whole -= 8;
    gActors[actor_1 - 1].posX.whole -= 16;
    D_80171B1E = actor_1;
    actor_1 = Text_PrintStringRGB(actor_1, gGenderM, 0xFFE0,   0x10, 0x0, 0x40, 0x20, 0xFF);
    actor_1 = Text_PrintStringRGB(actor_1, gGenderF,    0x0,   0x10, 0x0, 0x40, 0x20, 0xFF);
    actor_1 = Text_PrintStringRGB(actor_1, gAgeEN3, 0xFF98, 0xFFF0, 0x0, 0x80,  0x0, 0x80);
    actor_1 = Text_PrintStringRGB(actor_1, gSpace1, 0xFFF6, 0xFFEF, 0x0, 0x80,  0x0,  0x0);
    PRINT_INDEX = actor_1;
    D_80171B20 = actor_1;
    Text_Print2Digits(actor_1, gSelectedAge, 0xFFE0, 0xFFF0, 0, gTextPalettes[3]);
}

void FileSelect_Init(u16 actor_index) {
    u16 index;
    u16 count;
    s32 var_v0;
    s32 pad;

    Text_SetColor(0, 0x10, 0x1F, 0x1F);
    Text_SetColor(6, 0x1F, 0x1F, 0x10);
    Text_SetColor(2, 0x10, 0x1F, 0x10);
    Text_SetColor(3, 0x18, 0x1C, 0);
    Text_SetColor(4, 0x1F, 0x10, 0x10);
    Text_SetColor(5, 0x1F, 0x1F, 0x1F);
    for (count = 1; count < 0xB9; count++) {
        gActors[count].flags = 0;
    }
    func_8008310C();
    func_80083454();
    Text_InitActorGraphic(actor_index + 0x25, 0, 0, 0x28, 1);
    gActors[actor_index + 0x25].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK28;
    Text_InitActorGraphic(actor_index + 0x24, 0, 0, 0xFFE1, 1);
    gActors[actor_index + 0x24].flags |= ACTOR_FLAG_UNK30 | ACTOR_FLAG_UNK29 | ACTOR_FLAG_UNK28;
    Text_InitActorGraphic(actor_index + 0x2A, GINDEX_SOLIDSQUARE, 0, 0x28, 0xFFFF);
    gActors[actor_index + 0x2A].graphicFlags |= ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0x2A].colorR = 0x40;
    gActors[actor_index + 0x2A].colorG = 0x40;
    gActors[actor_index + 0x2A].colorB = 0x40;
    gActors[actor_index + 0x2A].colorA = 0x80;
    gActors[actor_index + 0x2A].scaleX = 18.0f;
    gActors[actor_index + 0x2A].scaleY = 4.0f;
    Text_PrintString(actor_index + 0x42, gWhichQuestion2, 0xFFD0, 0x58, 0);
    Text_InitActorGList(actor_index + 0x8, D_800E13FC, 0xFF80, 0x2B, 0);
    Text_PrintStringRGB(actor_index + 0xC, gSlot1, 0xFF9C, 0x2B, 0, 0, 0, 0);
    for (index = 0, count = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        if (gDefaultFileName[index] != gFileNames[SAVE_SLOT_0][index]) {
            count++;
        }
    }
    if (count != 0) { // name is not gDefaultFileName, assumed used
        FILE0_SET = TRUE;
        func_80083358(3, 0, gFileNames[SAVE_SLOT_0], 0);
        if (gFileSexes[SAVE_SLOT_0] != 0) {
            var_v0 = ALPHA_OFFSET(EN3_UPPER_F);
        }
        else {
            var_v0 = ALPHA_OFFSET(EN3_UPPER_M);
        }
        func_800831D0(3, 1, var_v0, 1);
        func_80083358(4, 1, gAgeEN2, 1);
        func_80083358(4, 2, gDayEN2, 2);
        func_80083358(7, 2, gHrsEN2, 2);
        func_80083358(10, 2, gMinEN2, 2);
        func_80083358(13, 2, gSecEN2, 2);
        Text_Print2Digits(actor_index + 0xA2, gFileAges[SAVE_SLOT_0], 0xFFE6, 0x29, 0, gTextPalettes[6]);
        SaveFile_GemIcon(actor_index + 0x4C, 8, 0x29, (uintptr_t)gPaletteGemRed);
        SaveFile_PrintRedGems(actor_index + 0x50, 0x18, 0x29, 0, gTextPalettes[4]);
        SaveFile_GemIcon(actor_index + 0x4E, 0x50, 0x29, (uintptr_t)gPaletteGemYellow);
        Text_Print2Digits(actor_index + 0x26, gFileYellowGems[SAVE_SLOT_0], 0x60, 0x29, 0, gTextPalettes[6]);
        SaveFile_PrintPlayTime(actor_index + 0x60, 0xFFB7, 0x15, 0);
    }
    else {
        FILE0_SET = FALSE;
        func_80083358(3, 1, gFileNames[SAVE_SLOT_0], 3);
    }
    // duplicated code for seconnd slot
    count = 0;
    Text_InitActorGList(actor_index + 0x09, D_800E13FC, 0xFF80, 0xFFE0, 0);
    Text_PrintStringRGB(actor_index + 0x12, gSlot2, 0xFF9C, 0xFFE0, 0, 0, 0, 0);
    for (index = 0; index < ARRAYLENGTH(gDefaultFileName); index++) {
        if (gDefaultFileName[index] != gFileNames[SAVE_SLOT_1][index]) {
            count++;
        }
    }
    if (count != 0) { // name is not gDefaultFileName, assumed used
        FILE1_SET = TRUE;
        func_800836A0(3, 0, gFileNames[SAVE_SLOT_1], 0);
        if (gFileSexes[SAVE_SLOT_1] != 0) {
            var_v0 = ALPHA_OFFSET(EN3_UPPER_F);
        }
        else {
            var_v0 = ALPHA_OFFSET(EN3_UPPER_M);
        }
        func_80083518(3, 1, var_v0, 1);
        func_800836A0(4, 1, gAgeEN2, 1);
        func_800836A0(4, 2, gDayEN2, 2);
        func_800836A0(7, 2, gHrsEN2, 2);
        func_800836A0(10, 2, gMinEN2, 2);
        func_800836A0(13, 2, gSecEN2, 2);
        Text_Print2Digits(actor_index + 0xA4, gFileAges[SAVE_SLOT_1], 0xFFE6, 0xFFE2, 0, gTextPalettes[6]);
        SaveFile_GemIcon(actor_index + 0x4D, 8, 0xFFE2, (uintptr_t)gPaletteGemRed);
        SaveFile_PrintRedGems(actor_index + 0x54, 0x18, 0xFFE2, 1, gTextPalettes[4]);
        SaveFile_GemIcon(actor_index + 0x4F, 0x50, 0xFFE2, (uintptr_t)gPaletteGemYellow);
        Text_Print2Digits(actor_index + 0x28, gFileYellowGems[SAVE_SLOT_1], 0x60, 0xFFE2, 0, gTextPalettes[6]);
        SaveFile_PrintPlayTime(actor_index + 0x70, 0xFFB7, 0xFFCE, 1);
    }
    else {
        FILE1_SET = FALSE;
        func_800836A0(3, 1, gFileNames[SAVE_SLOT_1], 3);
    }
    Text_InitActorGraphic(actor_index + 0xAA, 0x1A8, 0xFF80, 0xFFAE, 0);
    gActors[actor_index + 0xAA].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_SCALE;
    gActors[actor_index + 0xAA].palette_18C = D_800D8548;
    gActors[actor_index + 0xAA].scaleX = gActors[actor_index + 0xAA].scaleY = 0.6f;
    Text_PrintStringRGB(actor_index + 0x99, gErase, 0xFF96, 0xFFAE, 0, 0, 0, 0);
}

void FileSelect_Reset(u16 actor_index) {
    u16 index;

    for (index = actor_index + 0xAB; index < actor_index + 0xBD; index++) {
        gActors[index].flags = 0;
    }
    FileSelect_Init(actor_index);
    gCurrentSaveSlot = 0;
    gGameStateSubState = 1;
}

u16 FileSelect_InitCursor(u16 actor_index) {
    Text_InitActorGraphic(actor_index, GINDEX_CIRCLEEFFECT, 0xFF80, 0x30, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].colorA = 0x80;
    gActors[actor_index].scaleX = 0.4f;
    gActors[actor_index].scaleY = 0.8f;
    gActors[actor_index].rotateZ = 315.0f;
    actor_index++;
    Text_InitActorGraphic(actor_index, GINDEX_CIRCLEEFFECT, 0xFF80, 0x30, 0);
    gActors[actor_index].graphicFlags |= ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_SCALE;
    gActors[actor_index].colorA = 0x80;
    gActors[actor_index].scaleX = 0.4f;
    gActors[actor_index].scaleY = 0.8f;
    gActors[actor_index].rotateZ = 45.0f;
    actor_index++;
    return actor_index;
}

void func_80006CC8(u16 actor_index, u16 pos_x) {
    if ((gButtonPress & gButton_DLeft) && (CONFIRM_SELECTION == 0)) {
        Sound_PlaySfx2(SFX_MENU_BLIP);
        CONFIRM_SELECTION = 1;
        gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = pos_x;
    }
    if ((gButtonPress & gButton_DRight) && (CONFIRM_SELECTION == 1)) {
        Sound_PlaySfx2(SFX_MENU_BLIP);
        CONFIRM_SELECTION = 0;
        gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = pos_x + 0x2A;
    }
}

void FileSelect_AnimateCursor(u16 actor_index) {
    gActors[actor_index + 0].rotateX += 8.0f;
    gActors[actor_index + 0].rotateY += 8.0f;
    gActors[actor_index + 1].rotateX -= 8.0f;
    gActors[actor_index + 1].rotateY -= 8.0f;
}

void FileSelect_StartGame(void) {
    gCurrentStage = gWorldProgress;
    gCurrentScene = gStageScenes[gCurrentStage];
    D_800D28E4 = gStageIds[gCurrentStage];
    func_80043918();
    gIsPauseExit = TRUE;
    gGameState = GAMESTATE_TRANSITION;
    gGameStateSubState = 0;
}

void func_80006EDC(u16 actor_index) {
    if (gActors[2].var_158 & 1) {
        gActors[2].var_158 -= 0x10;
        if (gActors[2].var_158 == 0xFF) {
            gActors[2].var_158 = 0;
        }
    }
    else {
        gActors[2].var_158 += 0x10;
        if (gActors[2].var_158 == 0x80) {
            gActors[2].var_158 = 0x7F;
        }
    }

    if (gCurrentSaveSlot != gPreviousSaveSlot) {
        switch (gPreviousSaveSlot) {
        case 0:
            Text_PrintStringRGB(actor_index + 0xC, gSlot1, 0xFF9C, 0x2B, 0, 0, 0, 0);
            Text_InitActorGraphic(actor_index + 0x8, GINDEX_LIFEHEADBLINK, 0xFF80, 0x2B, 0);
            break;
        case 1:
            Text_PrintStringRGB(actor_index + 0x12, gSlot2, 0xFF9C, 0xFFE0, 0, 0, 0, 0);
            Text_InitActorGraphic(actor_index + 0x9, GINDEX_LIFEHEADBLINK, 0xFF80, 0xFFE0, 0);
            break;
        case 2:
            Text_PrintStringRGB(actor_index + 0x99, gErase, 0xFF96, 0xFFAE, 0, 0, 0, 0);
            break;
        }

        switch (gCurrentSaveSlot) {
        case 0:
            gActors[actor_index + 0x2A].posY.whole = 40;
            gActors[actor_index + 0x2A].scaleY = 4.0f;
            Text_InitActorGList(actor_index + 8, D_800E13FC, 0xFF80, 0x2B, 0);
            break;
        case 1:
            gActors[actor_index + 0x2A].posY.whole = -31;
            gActors[actor_index + 0x2A].scaleY = 4.0f;
            Text_InitActorGList(actor_index + 0x9, D_800E13FC, 0xFF80, 0xFFE0, 0);
            break;
        case 2:
            gActors[actor_index + 0x2A].posY.whole = -82;
            gActors[actor_index + 0x2A].scaleY = 1.3f;
            break;
        }
    }

    switch (gCurrentSaveSlot) {
    case 0:
        Text_PrintStringRGB(actor_index + 0xC, gSlot1, 0xFF9C, 0x2B, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    case 1:
        Text_PrintStringRGB(actor_index + 0x12, gSlot2, 0xFF9C, 0xFFE0, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    case 2:
        Text_PrintStringRGB(actor_index + 0x99, gErase, 0xFF96, 0xFFAE, 0, gActors[2].var_158, gActors[2].var_158, 0);
        break;
    }
}

void NameEntry_ConfirmName(void) {
    u16 index;
    u16 count;

    for (count = 0, index = 0; index < 10; index++) {
        if (gNameEntrySpace[index] != 0) {
            count++;
        }
    }
    if (count != 0) {
        gActors[PRINT_INDEX - 1].flags &= ~ACTOR_FLAG_DRAW;
        Text_PrintString(PRINT_INDEX + 0xA, gIsThisOkQuestion, 0xFFA0, 0xFFB0, 0);
        gActors[1].posX.whole = gActors[2].posX.whole = 46;
        gActors[1].posY.whole = gActors[2].posY.whole = -80;
        CONFIRM_SELECTION = 1;
        Sound_PlaySfx(SFX_MENU_DING);
        gGameStateSubState++;
    }
    else {
        Sound_PlaySfx(SFX_WRONG_0134);
    }
}

u16 NameEntry_PrintKeyboardHIRA(u16 actor_index) {
    u16 index;

    Text_InitActorGraphic(actor_index++, GINDEX_BUTTONR, 0x80, 0x44, 0);
    gActors[actor_index++].flags = 0;
    index = Text_PrintStringRGB(actor_index, gKatakana, 0x40, 0x44, 0, 0x80, 0, 0);
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    gActors[index++].flags = 0;
    index = Text_PrintString(index, gNameEntryRow0HIRA, 0xFF80,   0x30, 0);
    index = Text_PrintString(index, gNameEntryRow1HIRA, 0xFF80,   0x20, 0);
    index = Text_PrintString(index, gNameEntryRow2HIRA, 0xFF80,   0x10, 0);
    index = Text_PrintString(index, gNameEntryRow3HIRA, 0xFF80,    0x0, 0);
    index = Text_PrintString(index, gNameEntryRow4HIRA, 0xFF80, 0xFFF0, 0);
    gActors[index].flags = 0;
    return (index + 1);
}

// press R on Katakana screen to change to Hiragana.
// in the Japanese version
void NameEntry_SetToHiragana(void) {
    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_HIRAGANA;
    NameEntry_PrintKeyboardHIRA(0xC);
}

void NameEntry_PrintKeyboardKATA(void) {
    u16 actor_index;

    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_KATAKANA;
    actor_index = 0xC;
    Text_InitActorGraphic(actor_index++, GINDEX_BUTTONL, 0xFF80, 0x44, 0);
    Text_InitActorGraphic(actor_index++, GINDEX_BUTTONR, 0x80, 0x44, 0);
    actor_index = Text_PrintStringRGB(actor_index, gHiragana, 0xFF90, 0x44, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, gOther, 0x40, 0x44, 0, 0x80, 0, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow0KATA, 0xFF80, 0x30, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow1KATA, 0xFF80, 0x20, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow2KATA, 0xFF80, 0x10, 0);
    actor_index = Text_PrintString(actor_index, gNameEntryRow3KATA, 0xFF80, 0, 0);
    Text_PrintString(actor_index, gNameEntryRow4KATA, 0xFF80, 0xFFF0, 0);
}

void NameEntry_PrintKeyboardENG(void) {
    u16 actor_index;

    Sound_PlaySfx2(SFX_MENU_BLIP);
    NAME_ENTRY_CHARSET = CHARSET_LATIN;
    actor_index = 0xC;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    gActors[actor_index++].flags = 0;
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow0ENG, 0xFF80,   0x30, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow1ENG, 0xFF80,   0x20, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow2ENG, 0xFF80,   0x10, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow3ENG, 0xFF80,    0x0, 0, 0, 0, 0, 1.0f, 1.0f);
    actor_index = Text_PrintStringRGBScale(actor_index, gNameEntryRow4ENG, 0xFF80, 0xFFF0, 0, 0, 0, 0, 1.0f, 1.0f);
    gActors[actor_index++].flags = 0;
    gActors[actor_index].flags = 0;
}


void NameEntry_Init(u16 arg0) {
    u16 actor_index;
    u16 index;

    func_800230B8();
    actor_index = FileSelect_InitCursor(arg0);
    Text_InitActorGList(actor_index++, D_800E13FC, 0xFFC4, 0x58, 0);
    actor_index = Text_PrintStringRGB(actor_index, gNameQuestion, 0xFFDC, 0x58, 0, 0x80, 0, 0x80);
    actor_index += 3;
    actor_index = NameEntry_PrintKeyboardHIRA(actor_index);
    actor_index = Text_PrintStringRGB(actor_index, gArrowRight, 0x38, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, gArrowLeft, 0x58, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGB(actor_index, gArrowDown, 0x78, 0xFFE0, 0, 0x80, 0, 0);
    actor_index = Text_PrintStringRGBScale(actor_index, gDash10x, 0xFFB8, 0xFFC4, 0, 0, 0x60, 0, 1.0f, 1.0f);
    Text_InitActorGraphicRGB(actor_index++, ALPHA_GLYPH(ARROW_UP), 0xFFB8, 0xFFBC, 0, 0x60, 0xC0, 0); // current char arrow
    PRINT_INDEX = actor_index;
    NAME_ENTRY_CHARSET = CHAR_SELECT_ROW = CHAR_SELECT_COLUMN = 0;

    // english localization
    NameEntry_PrintKeyboardENG();
    NAME_ENTRY_CHARSET = CHARSET_LATIN;

    for (index = 0; index < 10; index++) { gNameEntrySpace[index] = 0; }

    if (actor_index) {} // fakematch
    NAME_ENTRY_POSITION = 0;
}

// if name entry is max length, set cursor to "OK" button
void NameEntry_CheckIfFull(void) {
    if (NAME_ENTRY_POSITION == SAVE_SLOT_NAME_LENGTH) {
        CHAR_SELECT_COLUMN = 2;
        CHAR_SELECT_ROW = 5;
    }
}

void NameEntry_PrintChar(void) {
    Text_InitActorGraphicRGB(
        PRINT_INDEX + NAME_ENTRY_POSITION,
        ALPHA_GLYPH_INDEX(gNameEntrySpace[NAME_ENTRY_POSITION++]),
        (CHAR_SELECT_COLUMN * 16) - 128,
        (-CHAR_SELECT_ROW * 16) + 48,
        0x00, 0x40, 0x20, 0xFF);
    gActors[PRINT_INDEX + NAME_ENTRY_POSITION].state = 0;
    NameEntry_CheckIfFull();
}

void NameEntry_SelectChar(u16* hira, u16* kata, u16* eng) {
    if (NAME_ENTRY_POSITION < SAVE_SLOT_NAME_LENGTH) {
        switch (NAME_ENTRY_CHARSET) {
        case CHARSET_HIRAGANA:
            gNameEntrySpace[NAME_ENTRY_POSITION] = hira[CHAR_SELECT_COLUMN];
            break;
        case CHARSET_KATAKANA:
            gNameEntrySpace[NAME_ENTRY_POSITION] = kata[CHAR_SELECT_COLUMN];
            break;
        case CHARSET_LATIN:
            gNameEntrySpace[NAME_ENTRY_POSITION] = eng[CHAR_SELECT_COLUMN];
            break;
        }
        Sound_PlaySfx(SFX_MENU_DING);
        Sound_PlaySfx(SFX_SPEECHSTART);
        NameEntry_PrintChar();
    }
}

void GameState_FileSelect(void) {
    u16 count;
    u16 actor_index;
    u16 index_1;
    u16 index_0;

    switch (gGameStateSubState) {
    case 0:
        SaveFile_CheckValid();
        FileSelect_Init(1);
        D_801376BC[1] = 0;
        D_801376B8[1] = 1;
        D_801376A8[1] = 0x60;
        D_801376AC[1] = 0x60;
        D_801376B0[1] = 0x60;
        D_801376B4[1] = 0xFF;
        gCurrentSaveSlot = 0;
        gActors[2].var_158 = 0;
        gGameStateSubState++;
        break;
    case 1:
    case 7:
        gPreviousSaveSlot = gCurrentSaveSlot;
        if (gButtonPress & gButton_DUp) {
            if (gCurrentSaveSlot > 0) {
                gCurrentSaveSlot--;
            }
        }
        if (gGameStateSubState == 1) {
            if (gButtonPress & gButton_DDown) {
                if (gCurrentSaveSlot < 2) {
                    gCurrentSaveSlot++;
                }
            }
        }
        else if (gButtonPress & gButton_DDown) {
            if (gCurrentSaveSlot < 1) {
                gCurrentSaveSlot++;
            }
        }
        if (gCurrentSaveSlot != gPreviousSaveSlot) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
        }
        func_80006EDC(1);
        if ((gButtonPress & gButton_B) && (gGameStateSubState == 7)) {
            Text_PrintStringRGB(0x43, gWhichQuestion2, 0xFFD0, 0x58, 0, 0x80, 0, 0x80);
            gGameStateSubState = 1;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gGameStateSubState == 7) {
                for (index_0 = 0, count = 0; index_0 < ARRAYLENGTH(gDefaultFileName); index_0++) {
                    if (gDefaultFileName[index_0] != gFileNames[gCurrentSaveSlot][index_0]) {
                        count++;
                    }
                }
                if (count != 0) {
                    Text_FreeString(0x43, gWhichQuestion2);
                    actor_index = FileSelect_InitCursor(0xAC);
                    gActors[actor_index - 2].posX.whole = 0x28;
                    gActors[actor_index - 1].posX.whole = gActors[actor_index - 2].posX.whole;
                    gActors[actor_index - 2].posY.whole = 0x58;
                    gActors[actor_index - 1].posY.whole = gActors[actor_index - 2].posY.whole;
                    switch (gCurrentSaveSlot) {
                    case 0:
                        actor_index = Text_PrintStringRGB(actor_index, gSlot1, 0xFFE0, 0x58, 0, 0, 0xFF, 0xFF);
                        break;
                    case 1:
                        actor_index = Text_PrintStringRGB(actor_index, gSlot2, 0xFFE0, 0x58, 0, 0, 0xFF, 0xFF);
                        break;
                    }
                    actor_index = Text_PrintStringRGB(actor_index, gEraseQuestion, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                    Text_PrintStringRGB(actor_index, gYesNo, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                    CONFIRM_SELECTION = 1;
                    gGameStateSubState++;
                }
                else {
                    FileSelect_Reset(1);
                }
            }
            else {
                if (gCurrentSaveSlot == 2) {
                    Text_PrintStringRGBScale(0x9A, gErase, 0xFF96, 0xFFAE, 0, 0, 0, 0, 0.5f, 1.0f);
                    Text_PrintStringRGB(0x43, gWhichQuestion, 0xFFD0, 0x58, 0, 0, 0xFF, 0xFF);
                    gCurrentSaveSlot = 0;
                    func_80006EDC(1);
                    gGameStateSubState = 7;
                }
                else {
                    for (index_0 = 0, count = 0; index_0 < ARRAYLENGTH(gDefaultFileName); index_0++) {
                        if (gFileNames[gCurrentSaveSlot][index_0] != gDefaultFileName[index_0]) {
                            count++;
                        }
                    }
                    if (count != 0) {
                        D_80171B22 = 0x3A;
                        gGameStateSubState = 0x1E;
                    }
                    else {
                        NameEntry_Init(1);
                        gGameStateSubState += 1;
                    }
                }
            }
        }
        break;
    case 8:
        FileSelect_AnimateCursor(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (CONFIRM_SELECTION != 0) {
                actor_index = Text_PrintStringRGB(0xAE, gReallyQuestion, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                Text_PrintStringRGB(actor_index, gYesNo, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                CONFIRM_SELECTION = 1;
                gGameStateSubState++;
            }
            else {
                FileSelect_Reset(1);
            }
        }
        break;
    case 9:
        FileSelect_AnimateCursor(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (CONFIRM_SELECTION != 0) {
                actor_index = Text_PrintStringRGB(0xAE, gQuitQuestion, 0xFFAC, 0x58, 0, 0, 0xFF, 0xFF);
                Text_PrintStringRGB(actor_index, gYesNo, 0x1E, 0x58, 0, 0, 0xFF, 0xFF);
                CONFIRM_SELECTION = 1;
                gGameStateSubState++;
            }
            else {
                FileSelect_Reset(1);
            }
        }
        break;
    case 10:
        FileSelect_AnimateCursor(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            if (CONFIRM_SELECTION == 0) {
                Sound_PlaySfx(SFX_MENU_DING);
                D_80171B22 = 0x3A;
                gGameStateSubState += 1;
            }
            else {
                Sound_PlaySfx(SFX_MENU_DING);
                FileSelect_Reset(1);
            }
        }
        break;
    case 11:
        FileSelect_AnimateCursor(0xAC);
        func_80006CC8(0xAC, 0x28);
        func_80006EDC(1);
        if ((D_80171B22 & 3) == 2) {
            gActors[0x2B].flags ^= ACTOR_FLAG_DRAW;
        }
        if (D_80171B22-- == 0) {
            SaveFile_EraseSlot();
            FileSelect_Reset(1);
        }
        break;
    case 2:
        if (NAME_ENTRY_POSITION == 0xA) {
            if ((CHAR_SELECT_COLUMN == 1) && (gButtonPress & gButton_DRight)) {
                Sound_PlaySfx2(SFX_MENU_BLIP);
                CHAR_SELECT_COLUMN = 2;
            }
            else if ((CHAR_SELECT_COLUMN == 2) && (gButtonPress & gButton_DLeft)) {
                Sound_PlaySfx2(SFX_MENU_BLIP);
                CHAR_SELECT_COLUMN = 1;
            }
        }
        // japanese version deviates greatly here,
        // having for controls to change charsets
        else if (Input_CheckButtonRepeat2(gButton_DLeft, &BUTTON_TIMER_LEFT) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_COLUMN--;
            if (NameEntry_CursorOnBlank(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW)) {
                CHAR_SELECT_COLUMN--;
            }
            if (CHAR_SELECT_ROW != 5) {
                if (CHAR_SELECT_COLUMN == 0xFF) {
                    CHAR_SELECT_COLUMN = 0x10;
                }
            }
            else {
                if (CHAR_SELECT_COLUMN == 0xFF) {
                    CHAR_SELECT_COLUMN = 2;
                }
            }
            if (NameEntry_CursorOnBlank(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW)) {
                CHAR_SELECT_COLUMN = CHAR_SELECT_COLUMN - 1;
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DRight, &BUTTON_TIMER_RIGHT) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_COLUMN++;
            if (NameEntry_CursorOnBlank(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW)) {
                CHAR_SELECT_COLUMN++;
            }
            if (CHAR_SELECT_ROW != 5) {
                if (CHAR_SELECT_COLUMN == 0x11) {
                    CHAR_SELECT_COLUMN = 0;
                }
            }
            else if (CHAR_SELECT_COLUMN == 3) {
                CHAR_SELECT_COLUMN = 0;
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DUp, &BUTTON_TIMER_UP) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_ROW--;
            if (NameEntry_CursorOnBlank(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW)) {
                CHAR_SELECT_ROW--;
            }
            if (CHAR_SELECT_ROW == 4) {
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    CHAR_SELECT_COLUMN = 0xC;
                break;
                case 1:
                    CHAR_SELECT_COLUMN = 0xE;
                break;
                case 2:
                    CHAR_SELECT_COLUMN = 0x10;
                break;
                }
            }
            else if (CHAR_SELECT_ROW == 0xFF) {
                if (CHAR_SELECT_COLUMN < 0xA) {
                    CHAR_SELECT_ROW = 4;
                }
                else {
                    CHAR_SELECT_ROW = 5;
                    if (CHAR_SELECT_COLUMN < 0xD) {
                        CHAR_SELECT_COLUMN = 0;
                    }
                    else if (CHAR_SELECT_COLUMN < 0xF) {
                        CHAR_SELECT_COLUMN = 1;
                    }
                    else {
                        CHAR_SELECT_COLUMN = 2;
                    }
                }
            }
        }
        else if (Input_CheckButtonRepeat2(gButton_DDown, &BUTTON_TIMER_DOWN)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            CHAR_SELECT_ROW++;
            if (NameEntry_CursorOnBlank(CHAR_SELECT_COLUMN, CHAR_SELECT_ROW)) {
                CHAR_SELECT_ROW++;
            }
            if (CHAR_SELECT_ROW == 6) {
                CHAR_SELECT_ROW = 0;
            }
            if (CHAR_SELECT_ROW == 0) {
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    CHAR_SELECT_COLUMN = 0xC;
                    break;
                case 1:
                    CHAR_SELECT_COLUMN = 0xE;
                    break;
                case 2:
                    CHAR_SELECT_COLUMN = 0x10;
                    break;
                }
            }
            else if (CHAR_SELECT_ROW == 5) {
                if (CHAR_SELECT_COLUMN < 0xA) {
                    CHAR_SELECT_ROW = 0;
                }
                else {
                    CHAR_SELECT_ROW = 5;
                    if (CHAR_SELECT_COLUMN < 0xD) {
                        CHAR_SELECT_COLUMN = 0;
                    }
                    else if (CHAR_SELECT_COLUMN < 0xF) {
                        CHAR_SELECT_COLUMN = 1;
                    }
                    else {
                        CHAR_SELECT_COLUMN = 2;
                    }
                }
            }
        }
        FileSelect_AnimateCursor(1);
        gActors[PRINT_INDEX - 1].flags ^= ACTOR_FLAG_DRAW;
        actor_index = 1;
        if (CHAR_SELECT_ROW != 5) {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x10) - 128;
            gActors[actor_index].posY.whole = (-CHAR_SELECT_ROW * 0x10) + 48;
        }
        else {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x20) + 56;
            gActors[actor_index].posY.whole = -32;
        }
        actor_index++;
        if (CHAR_SELECT_ROW != 5) {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x10) - 128;
            gActors[actor_index].posY.whole = (-CHAR_SELECT_ROW * 0x10) + 48;
        }
        else {
            gActors[actor_index].posX.whole = (CHAR_SELECT_COLUMN * 0x20) + 56;
            gActors[actor_index].posY.whole = -32;
        }
        if (gButtonPress & gButton_A) {
            switch (CHAR_SELECT_ROW) {
            // sameline needed to match
            case 0: NameEntry_SelectChar(gNameEntryRow0HIRA, gNameEntryRow0KATA, gNameEntryRow0ENG); break;
            case 1: NameEntry_SelectChar(gNameEntryRow1HIRA, gNameEntryRow1KATA, gNameEntryRow1ENG); break;
            case 2: NameEntry_SelectChar(gNameEntryRow2HIRA, gNameEntryRow2KATA, gNameEntryRow2ENG); break;
            case 3: NameEntry_SelectChar(gNameEntryRow3HIRA, gNameEntryRow3KATA, gNameEntryRow3ENG); break;
            case 4: NameEntry_SelectChar(gNameEntryRow4HIRA, gNameEntryRow4KATA, gNameEntryRow4ENG); break;
            case 5:
                switch (CHAR_SELECT_COLUMN) {
                case 0:
                    if (NAME_ENTRY_POSITION < SAVE_SLOT_NAME_LENGTH) {
                        gNameEntrySpace[NAME_ENTRY_POSITION] = 0;
                        NAME_ENTRY_POSITION++;
                        NameEntry_CheckIfFull();
                        Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
                    }
                    else {
                        Sound_PlaySfx(SFX_WRONG_0134);
                    }
                    break;
                case 1:
                    if (NAME_ENTRY_POSITION > 0) {
                        gNameEntrySpace[--NAME_ENTRY_POSITION] = 0;
                        gActors[PRINT_INDEX + NAME_ENTRY_POSITION].flags = 0;
                        Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
                    }
                    else {
                        Sound_PlaySfx(SFX_WRONG_0134);
                    }
                    break;
                case 2:
                    NameEntry_ConfirmName();
                    break;
                }
                break;
            }
        }
        if (gButtonPress & gButton_B) {
            if (NAME_ENTRY_POSITION > 0) {
                gNameEntrySpace[--NAME_ENTRY_POSITION] = 0;
                gActors[PRINT_INDEX + NAME_ENTRY_POSITION].flags = 0;
                Sound_PlaySfx(SFX_TXTGRUNT_MARINA);
            }
            else {
                Sound_PlaySfx(SFX_WRONG_0134);
            }
        }
        if (gButtonPress & gButton_Start) {
            NameEntry_ConfirmName();
        }
        gActors[PRINT_INDEX - 1].posX.whole = (NAME_ENTRY_POSITION * 0x10) - 0x48;
        for (index_1 = PRINT_INDEX; index_1 < PRINT_INDEX + 0xA; index_1++) {
            NameEntry_AnimateChar(index_1);
        }
        break;
    case 3:
        FileSelect_AnimateCursor(1);
        func_80006CC8(1, 0x2E);
        for (index_1 = PRINT_INDEX; index_1 < PRINT_INDEX + 0xA; index_1++) {
            NameEntry_AnimateChar(index_1);
        }
        if ((gButtonPress & gButton_A) || (gButtonPress & gButton_Start)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (CONFIRM_SELECTION != 0) {
                for (index_1 = 4; index_1 < PRINT_INDEX + 0x1A; index_1++) {
                    gActors[index_1].flags = 0;
                }
                gSelectedSex = 0;
                gNameEntrySpace[NAME_ENTRY_POSITION] = ALPHA_NULL;
                gSelectedAge = 0;
                NameEntry_SexAndAge(1);
                gGameStateSubState++;
            }
            else {
                for (index_1 = PRINT_INDEX + 0xA; index_1 < PRINT_INDEX + 0x1A; index_1++) {
                    gActors[index_1].flags = 0;
                }
                gGameStateSubState--;
            }
        }
        break;
    case 4:
        FileSelect_AnimateCursor(1);
        if ((gButtonPress & gButton_DLeft) && (gSelectedSex == 1)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gSelectedSex = 0;
        }
        if ((gButtonPress & gButton_DRight) && (gSelectedSex == 0)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            gSelectedSex = 1;
        }
        actor_index = 1; // could be `0` with different offset below
        if (gSelectedSex != 0) {
            gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = 0;
        }
        else {
            gActors[actor_index + 0].posX.whole = gActors[actor_index + 1].posX.whole = -32;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            if (gSelectedSex != 0) {
                gActors[PRINT_INDEX - 4].posX.whole = -32;
                gActors[PRINT_INDEX - 5].flags = 0;
            }
            else {
                gActors[PRINT_INDEX - 5].posX.whole = -32;
                gActors[PRINT_INDEX - 4].flags = 0;
            }
            AGE_SELECT_DIGIT = 0; // 0x10000 + unk2AA8
            gActors[actor_index + 1].posX.whole = gActors[actor_index + 0].posX.whole = -44;
            gActors[actor_index + 1].posY.whole = gActors[actor_index + 0].posY.whole = -16;
            Text_PrintStringRGB(4, gAgeQuestion, 0xFFD0, 0x58, 0, 0x80, 0, 0x80);
            gGameStateSubState++;
        }
        break;
    case 5:
        FileSelect_AnimateCursor(1);
        if ((gButtonPress & gButton_DLeft) || (gButtonPress & gButton_DRight)) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            AGE_SELECT_DIGIT ^= 1;
        }
        if (Input_CheckButtonRepeat2(gButton_DDown, &BUTTON_TIMER_DOWN) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            if (AGE_SELECT_DIGIT != 0) {
                if ((gSelectedAge % 10) == 0) {
                    gSelectedAge += 9;
                }
                else {
                    gSelectedAge -= 1;
                }
            }
            else if ((gSelectedAge / 10) == 0) {
                gSelectedAge += 90;
            }
            else {
                gSelectedAge -= 10;
            }
        }
        if (Input_CheckButtonRepeat2(gButton_DUp, &BUTTON_TIMER_UP) != 0) {
            Sound_PlaySfx2(SFX_MENU_BLIP);
            if (AGE_SELECT_DIGIT != 0) {
                if ((gSelectedAge % 10) == 9) {
                    gSelectedAge -= 9;
                }
                else {
                    gSelectedAge += 1;
                }
            }
            else if ((gSelectedAge / 10) == 9) {
                gSelectedAge -= 90;
            }
            else {
                gSelectedAge += 10;
            }
        }
        Text_Print2Digits(PRINT_INDEX, gSelectedAge, 0xFFE0, 0xFFF0, 0, gTextPalettes[3]);
        if (AGE_SELECT_DIGIT != 0) {
            gActors[PRINT_INDEX + 0].flags |= ACTOR_FLAG_DRAW;
            if (gFramesInScene % 2) {
                gActors[PRINT_INDEX + 1].flags &= ~ACTOR_FLAG_DRAW;
            }
        }
        else {
            if (gFramesInScene % 2) { gActors[PRINT_INDEX + 0].flags &= ~ACTOR_FLAG_DRAW; }
            gActors[PRINT_INDEX + 1].flags |= ACTOR_FLAG_DRAW;
        }
        if ((gButtonPress & gButton_Start) || (gButtonPress & gButton_A)) {
            Sound_PlaySfx(SFX_MENU_DING);
            gActors[PRINT_INDEX + 0].flags |= ACTOR_FLAG_DRAW;
            gActors[PRINT_INDEX + 1].flags |= ACTOR_FLAG_DRAW;
            gActors[1].flags |= ACTOR_FLAG_DRAW;
            gActors[2].flags |= ACTOR_FLAG_DRAW;
            gActors[1].posY.whole = gActors[2].posY.whole = -80;
            CONFIRM_SELECTION = 1;
            actor_index = PRINT_INDEX + CONFIRM_SELECTION * 0;
            gActors[1].posX.whole = gActors[2].posX.whole = 46;
            Text_PrintString(actor_index + 4, gIsThisOkQuestion, 0xFFA0, 0xFFB0, 0);
            gGameStateSubState++;
        }
        break;
    case 6:
        FileSelect_AnimateCursor(1);
        func_80006CC8(1, 0x2E);
        if ((gButtonPress & gButton_A) || (gButtonPress & gButton_Start)) {
            if (CONFIRM_SELECTION != 0) {
                Sound_PlaySfx(SFX_MENU_DING);
                gActors[1].flags = gActors[2].flags = 0;
                D_80171B22 = 0x3A;
                gGameStateSubState = 0x14;
            }
            else {
                NameEntry_SexAndAge(1);
                gGameStateSubState -= 2;
            }
        }
        break;
    case 20:
        if (!(D_80171B22 & 3)) {
            for (count = D_80171B1A; count < D_80171B1C; count++) {
                gActors[count].flags ^= ACTOR_FLAG_DRAW;
            }
            if (gSelectedSex != 0) {
                gActors[D_80171B1E + 1].flags ^= ACTOR_FLAG_DRAW;
            }
            else {
                gActors[D_80171B1E + 0].flags ^= ACTOR_FLAG_DRAW;
            }
            gActors[D_80171B20 + 0].flags ^= ACTOR_FLAG_DRAW;
            gActors[D_80171B20 + 1].flags ^= ACTOR_FLAG_DRAW;
        }
        if ((D_80171B22-- ^ 2)) {
            break;
        }
        for (index_0 = 0; index_0 < ARRAYLENGTH(gNameEntrySpace); index_0++) {
            gFileNames[gCurrentSaveSlot][index_0] = gNameEntrySpace[index_0];
        }
        gFileAges[gCurrentSaveSlot] = gSelectedAge;
        gFileSexes[gCurrentSaveSlot] = gSelectedSex;
        gFileRedGems[gCurrentSaveSlot] = 0x1E;
        gFileYellowGems[gCurrentSaveSlot] = 0;
        gFilePlayTimes[gCurrentSaveSlot] = 0;
        SaveFile_DefaultRecords();
        gRedGems = 0x1E;
        gFramesInPlayTime = 0;
        SaveFile_SaveSlot();
        FileSelect_StartGame();
        break;
    case 30:
        if (!(D_80171B22 & 3)) {
            gActors[0x2B].flags ^= ACTOR_FLAG_DRAW;
        }
        if (D_80171B22-- != 2) {
            break;
        }
        SaveFile_LoadSlot();
        gRedGems = gFileRedGems[gCurrentSaveSlot];
        gFramesInPlayTime = gFilePlayTimes[gCurrentSaveSlot];
        FileSelect_StartGame();
        break;
    default:
        break;
    }
}
