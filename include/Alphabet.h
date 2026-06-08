#ifndef ALPHABET_H
#define ALPHABET_H

#include "graphicIndex.h"

// game uses a unique charset for the text that is 16 bits.

#define ALPHA_SPACE 0x0000

// Monospace English alphabet used in all versions

#define ALPHA_0 0x0000 // 0 (used in "print 2/3 digits" functions)
#define ALPHA_1 0x0001 // 1
#define ALPHA_2 0x0002 // 2
#define ALPHA_3 0x0003 // 3
#define ALPHA_4 0x0004 // 4
#define ALPHA_5 0x0005 // 5
#define ALPHA_6 0x0006 // 6
#define ALPHA_7 0x0007 // 7
#define ALPHA_8 0x0008 // 8
#define ALPHA_9 0x0009 // 9

#define ALPHA_EN_UPPER_A 0x000A
#define ALPHA_EN_UPPER_B 0x000B
#define ALPHA_EN_UPPER_C 0x000C
#define ALPHA_EN_UPPER_D 0x000D
#define ALPHA_EN_UPPER_E 0x000E
#define ALPHA_EN_UPPER_F 0x000F
#define ALPHA_EN_UPPER_G 0x0010
#define ALPHA_EN_UPPER_H 0x0011
#define ALPHA_EN_UPPER_I 0x0012
#define ALPHA_EN_UPPER_J 0x0013
#define ALPHA_EN_UPPER_K 0x0014
#define ALPHA_EN_UPPER_L 0x0015
#define ALPHA_EN_UPPER_M 0x0016
#define ALPHA_EN_UPPER_N 0x0017
#define ALPHA_EN_UPPER_O 0x0018
#define ALPHA_EN_UPPER_P 0x0019
#define ALPHA_EN_UPPER_Q 0x001A
#define ALPHA_EN_UPPER_R 0x001B
#define ALPHA_EN_UPPER_S 0x001C
#define ALPHA_EN_UPPER_T 0x001D
#define ALPHA_EN_UPPER_U 0x001E
#define ALPHA_EN_UPPER_V 0x001F
#define ALPHA_EN_UPPER_W 0x0020
#define ALPHA_EN_UPPER_X 0x0021
#define ALPHA_EN_UPPER_Y 0x0022
#define ALPHA_EN_UPPER_Z 0x0023

#define ALPHA_EN_LOWER_A 0x0024
#define ALPHA_EN_LOWER_B 0x0025
#define ALPHA_EN_LOWER_C 0x0026
#define ALPHA_EN_LOWER_D 0x0027
#define ALPHA_EN_LOWER_E 0x0028
#define ALPHA_EN_LOWER_F 0x0029
#define ALPHA_EN_LOWER_G 0x002A
#define ALPHA_EN_LOWER_H 0x002B
#define ALPHA_EN_LOWER_I 0x002C
#define ALPHA_EN_LOWER_J 0x002D
#define ALPHA_EN_LOWER_K 0x002E
#define ALPHA_EN_LOWER_L 0x002F
#define ALPHA_EN_LOWER_M 0x0030
#define ALPHA_EN_LOWER_N 0x0031
#define ALPHA_EN_LOWER_O 0x0032
#define ALPHA_EN_LOWER_P 0x0033
#define ALPHA_EN_LOWER_Q 0x0034
#define ALPHA_EN_LOWER_R 0x0035
#define ALPHA_EN_LOWER_S 0x0036
#define ALPHA_EN_LOWER_T 0x0037
#define ALPHA_EN_LOWER_U 0x0038
#define ALPHA_EN_LOWER_V 0x0039
#define ALPHA_EN_LOWER_W 0x003A
#define ALPHA_EN_LOWER_X 0x003B
#define ALPHA_EN_LOWER_Y 0x003C
#define ALPHA_EN_LOWER_Z 0x003D

#define ALPHA_EN_PERIOD 0x003E // .
#define ALPHA_EN_QUOTE 0x003F // "
#define ALPHA_EN_COMMA 0x0040 // ,
#define ALPHA_EN_APOSTROPHE 0x0041 // '
#define ALPHA_EN_EXCLAMAION 0x0042 // !
#define ALPHA_EN_QUESTION 0x0043 // ?
#define ALPHA_EN_COPYRIGHT 0x0044 // ©
#define ALPHA_EN_COLON 0x0045 // :
#define ALPHA_EN_PLUS 0x0046 // +
#define ALPHA_EN_MINUS 0x0047 // -
#define ALPHA_EN_EQUALS 0x0048 // =
#define ALPHA_EN_TIMES 0x0049 // ×
#define ALPHA_EN_DIVIDE 0x004A // ÷
#define ALPHA_EN_PERCENT 0x004B // %
#define ALPHA_EN_SLASH 0x004C // /
#define ALPHA_EN_PARENTESISLEFT 0x004D // (
#define ALPHA_EN_PARENTESISRIGHT 0x004E // )
#define ALPHA_EN_BRACKETLEFT 0x004F // [
#define ALPHA_EN_BRACKETRIGHT 0x0050 // ]

// the original Japanese version uses Japanese characters
// at least Katakana and Hiragana are overwritten in english localizations,
// which use the other english/Greek alphabet indecies.
// some "strings" using the original charset remain in NA/EU code,
// but are not properly read. (see SpawnTextBubble calls.)

#define ALPHA_JP_HIRA_A          0x0051 // あ
#define ALPHA_JP_HIRA_I          0x0052 // い
#define ALPHA_JP_HIRA_U          0x0053 // う
#define ALPHA_JP_HIRA_E          0x0054 // え
#define ALPHA_JP_HIRA_O          0x0055 // お
#define ALPHA_JP_HIRA_KA         0x0056 // か
#define ALPHA_JP_HIRA_KI         0x0057 // き
#define ALPHA_JP_HIRA_KU         0x0058 // く
#define ALPHA_JP_HIRA_KE         0x0059 // け
#define ALPHA_JP_HIRA_KO         0x005A // こ
#define ALPHA_JP_HIRA_SA         0x005B // さ
#define ALPHA_JP_HIRA_SHI        0x005C // し
#define ALPHA_JP_HIRA_SU         0x005D // す
#define ALPHA_JP_HIRA_SE         0x005E // せ
#define ALPHA_JP_HIRA_SO         0x005F // そ
#define ALPHA_JP_HIRA_TA         0x0060 // た
#define ALPHA_JP_HIRA_CHI        0x0061 // ち
#define ALPHA_JP_HIRA_TSU        0x0062 // つ
#define ALPHA_JP_HIRA_TE         0x0063 // て
#define ALPHA_JP_HIRA_TO         0x0064 // と
#define ALPHA_JP_HIRA_NA         0x0065 // な
#define ALPHA_JP_HIRA_NI         0x0066 // に
#define ALPHA_JP_HIRA_NU         0x0067 // ぬ
#define ALPHA_JP_HIRA_NE         0x0068 // ね
#define ALPHA_JP_HIRA_NO         0x0069 // の
#define ALPHA_JP_HIRA_HA         0x006A // は
#define ALPHA_JP_HIRA_HI         0x006B // ひ
#define ALPHA_JP_HIRA_FU         0x006C // ふ
#define ALPHA_JP_HIRA_HE         0x006D // へ
#define ALPHA_JP_HIRA_HO         0x006E // ほ
#define ALPHA_JP_HIRA_MA         0x006F // ま
#define ALPHA_JP_HIRA_MI         0x0070 // み
#define ALPHA_JP_HIRA_MU         0x0071 // む
#define ALPHA_JP_HIRA_ME         0x0072 // め
#define ALPHA_JP_HIRA_MO         0x0073 // も
#define ALPHA_JP_HIRA_YA         0x0074 // や
#define ALPHA_JP_HIRA_YU         0x0075 // ゆ
#define ALPHA_JP_HIRA_YO         0x0076 // よ
#define ALPHA_JP_HIRA_RA         0x0077 // ら
#define ALPHA_JP_HIRA_RI         0x0078 // り
#define ALPHA_JP_HIRA_RU         0x0079 // る
#define ALPHA_JP_HIRA_RE         0x007A // れ
#define ALPHA_JP_HIRA_RO         0x007B // ろ
#define ALPHA_JP_HIRA_WA         0x007C // わ
#define ALPHA_JP_HIRA_WO         0x007D // を
#define ALPHA_JP_HIRA_N          0x007E // ん
#define ALPHA_JP_HIRA_GA         0x007F // が
#define ALPHA_JP_HIRA_GI         0x0080 // ぎ
#define ALPHA_JP_HIRA_GU         0x0081 // ぐ
#define ALPHA_JP_HIRA_GE         0x0082 // げ
#define ALPHA_JP_HIRA_GO         0x0083 // ご
#define ALPHA_JP_HIRA_ZA         0x0084 // ざ
#define ALPHA_JP_HIRA_JI         0x0085 // じ
#define ALPHA_JP_HIRA_ZU         0x0086 // ず
#define ALPHA_JP_HIRA_ZE         0x0087 // ぜ
#define ALPHA_JP_HIRA_ZO         0x0088 // ぞ
#define ALPHA_JP_HIRA_DA         0x0089 // だ
#define ALPHA_JP_HIRA_DI         0x008A // ぢ
#define ALPHA_JP_HIRA_DU         0x008B // づ
#define ALPHA_JP_HIRA_DE         0x008C // で
#define ALPHA_JP_HIRA_DO         0x008D // ど
#define ALPHA_JP_HIRA_BA         0x008E // ば
#define ALPHA_JP_HIRA_BI         0x008F // び
#define ALPHA_JP_HIRA_BU         0x0090 // ぶ
#define ALPHA_JP_HIRA_BE         0x0091 // べ
#define ALPHA_JP_HIRA_BO         0x0092 // ぼ
#define ALPHA_JP_HIRA_PA         0x0093 // ぱ
#define ALPHA_JP_HIRA_PI         0x0094 // ぴ
#define ALPHA_JP_HIRA_PU         0x0095 // ぷ
#define ALPHA_JP_HIRA_PE         0x0096 // ぺ
#define ALPHA_JP_HIRA_PO         0x0097 // ぽ
#define ALPHA_JP_HIRA_SMALL_A    0x0098 // ぁ
#define ALPHA_JP_HIRA_SMALL_I    0x0099 // ぃ
#define ALPHA_JP_HIRA_SMALL_U    0x009A // ぅ
#define ALPHA_JP_HIRA_SMALL_E    0x009B // ぇ
#define ALPHA_JP_HIRA_SMALL_O    0x009C // ぉ
#define ALPHA_JP_HIRA_SMALL_TSU  0x009D // っ
#define ALPHA_JP_HIRA_SMALL_YA   0x009E // ゃ
#define ALPHA_JP_HIRA_SMALL_YU   0x009F // ゅ
#define ALPHA_JP_HIRA_SMALL_YO   0x00A0 // ょ

// a second set of Arabic numbers
// and associated puncuation.

#define ALPHA_THIN_0 0x00A1 // 0
#define ALPHA_THIN_1 0x00A2 // 1
#define ALPHA_THIN_2 0x00A3 // 2
#define ALPHA_THIN_3 0x00A4 // 3
#define ALPHA_THIN_4 0x00A5 // 4
#define ALPHA_THIN_5 0x00A6 // 5
#define ALPHA_THIN_6 0x00A7 // 6
#define ALPHA_THIN_7 0x00A8 // 7
#define ALPHA_THIN_8 0x00A9 // 8
#define ALPHA_THIN_9 0x00AA // 9

#define ALPHA_THIN_COMMA 0x00AB // ,
#define ALPHA_THIN_PERIOD 0x00AC // .
#define ALPHA_JP_QUOTEL 0x00AD // 「
#define ALPHA_JP_QUOTER 0x00AE // 」
#define ALPHA_JP_QUOTERP 0x00AC // .」


#define ALPHA_ELLIPSIS     0x00B0 // ...
#define ALPHA_EXCLAMATION  0x00B1 // !
#define ALPHA_EXCLAMATION2 0x00B2 // !!
#define ALPHA_QUESTION     0x00B3 // ?
#define ALPHA_QUESTION2    0x00B4 // ??
#define ALPHA_QEXCLAIM     0x00B5 // !?
#define ALPHA_PARENTHLEFT  0x00B6 // (
#define ALPHA_PARENTHRIGHT 0x00B7 // )
#define ALPHA_BRACKETLEFT  0x00B8 // <
#define ALPHA_BRACKETRIGHT 0x00B9 // >
#define ALPHA_TILDE        0x00BA // ~
#define ALPHA_COLON        0x00BB // :
#define ALPHA_COMMA        0x00BC // ,
#define ALPHA_PERIOD       0x00BE // .
#define ALPHA_PLUS         0x00BF // +
#define ALPHA_MINUS        0x00C0 // -
#define ALPHA_EQUALS       0x00C3 // =
#define ALPHA_HEART        0x00C5 // ♥
#define ALPHA_NOTE         0x00C6 // ♪

#define ALPHA_JP_KATA_A          0x00CD // ア
#define ALPHA_JP_KATA_I          0x00CE // イ
#define ALPHA_JP_KATA_U          0x00CF // ウ
#define ALPHA_JP_KATA_E          0x00D0 // エ
#define ALPHA_JP_KATA_O          0x00D1 // オ
#define ALPHA_JP_KATA_KA         0x00D2 // カ
#define ALPHA_JP_KATA_KI         0x00D3 // キ
#define ALPHA_JP_KATA_KU         0x00D4 // ク
#define ALPHA_JP_KATA_KE         0x00D5 // ケ
#define ALPHA_JP_KATA_KO         0x00D6 // コ
#define ALPHA_JP_KATA_SA         0x00D7 // サ
#define ALPHA_JP_KATA_SHI        0x00D8 // シ
#define ALPHA_JP_KATA_SU         0x00D9 // ス
#define ALPHA_JP_KATA_SE         0x00DA // セ
#define ALPHA_JP_KATA_SO         0x00DB // ソ
#define ALPHA_JP_KATA_TA         0x00DC // タ
#define ALPHA_JP_KATA_CHI        0x00DD // チ
#define ALPHA_JP_KATA_TSU        0x00DE // ツ
#define ALPHA_JP_KATA_TE         0x00DF // テ
#define ALPHA_JP_KATA_TO         0x00E0 // ト
#define ALPHA_JP_KATA_NA         0x00E1 // ナ
#define ALPHA_JP_KATA_NI         0x00E2 // ニ
#define ALPHA_JP_KATA_NU         0x00E3 // ヌ
#define ALPHA_JP_KATA_NE         0x00E4 // ネ
#define ALPHA_JP_KATA_NO         0x00E5 // ノ
#define ALPHA_JP_KATA_HA         0x00E6 // ハ
#define ALPHA_JP_KATA_HI         0x00E7 // ヒ
#define ALPHA_JP_KATA_FU         0x00E8 // フ
#define ALPHA_JP_KATA_HE         0x00E9 // ヘ
#define ALPHA_JP_KATA_HO         0x00EA // ホ
#define ALPHA_JP_KATA_MA         0x00EB // マ
#define ALPHA_JP_KATA_MI         0x00EC // ミ
#define ALPHA_JP_KATA_MU         0x00ED // ム
#define ALPHA_JP_KATA_ME         0x00EE // メ
#define ALPHA_JP_KATA_MO         0x00EF // モ
#define ALPHA_JP_KATA_YA         0x00F0 // ヤ
#define ALPHA_JP_KATA_YU         0x00F1 // ユ
#define ALPHA_JP_KATA_YO         0x00F2 // ヨ
#define ALPHA_JP_KATA_RA         0x00F3 // ラ
#define ALPHA_JP_KATA_RI         0x00F4 // リ
#define ALPHA_JP_KATA_RU         0x00F5 // ル
#define ALPHA_JP_KATA_RE         0x00F6 // レ
#define ALPHA_JP_KATA_RO         0x00F7 // ロ
#define ALPHA_JP_KATA_WA         0x00F8 // ワ
#define ALPHA_JP_KATA_WO         0x00F9 // ヲ
#define ALPHA_JP_KATA_N          0x00FA // ン
#define ALPHA_JP_KATA_GA         0x00FB // ガ
#define ALPHA_JP_KATA_GI         0x00FC // ギ
#define ALPHA_JP_KATA_GU         0x00FD // グ
#define ALPHA_JP_KATA_GE         0x00FE // ゲ
#define ALPHA_JP_KATA_GO         0x00FF // ゴ
#define ALPHA_JP_KATA_ZA         0x0100 // ザ
#define ALPHA_JP_KATA_JI         0x0101 // ジ
#define ALPHA_JP_KATA_ZU         0x0102 // ズ
#define ALPHA_JP_KATA_ZE         0x0103 // ゼ
#define ALPHA_JP_KATA_ZO         0x0104 // ゾ
#define ALPHA_JP_KATA_DA         0x0105 // ダ
#define ALPHA_JP_KATA_DI         0x0106 // ヂ
#define ALPHA_JP_KATA_DU         0x0107 // ヅ
#define ALPHA_JP_KATA_DE         0x0108 // デ
#define ALPHA_JP_KATA_DO         0x0109 // ド
#define ALPHA_JP_KATA_BA         0x010A // バ
#define ALPHA_JP_KATA_BI         0x010B // ビ
#define ALPHA_JP_KATA_BU         0x010C // ブ
#define ALPHA_JP_KATA_BE         0x010D // ベ
#define ALPHA_JP_KATA_BO         0x010E // ボ
#define ALPHA_JP_KATA_PA         0x010F // パ
#define ALPHA_JP_KATA_PI         0x0110 // ピ
#define ALPHA_JP_KATA_PU         0x0111 // プ
#define ALPHA_JP_KATA_PE         0x0112 // ペ
#define ALPHA_JP_KATA_PO         0x0113 // ポ
#define ALPHA_JP_KATA_SMALL_A    0x0114 // ァ
#define ALPHA_JP_KATA_SMALL_I    0x0115 // ィ
#define ALPHA_JP_KATA_SMALL_U    0x0116 // ゥ
#define ALPHA_JP_KATA_SMALL_E    0x0117 // ェ
#define ALPHA_JP_KATA_SMALL_O    0x0118 // ォ
#define ALPHA_JP_KATA_SMALL_TSU  0x0119 // ッ
#define ALPHA_JP_KATA_SMALL_YA   0x011A // ャ
#define ALPHA_JP_KATA_SMALL_YU   0x011B // ュ
#define ALPHA_JP_KATA_SMALL_YO   0x011C // ョ
#define ALPHA_JP_KATA_VU         0x011D // ヴ


// a slimmer English alphabet charset
// used as primary "font" in localization.
// implements kerning.

#define ALPHA_EN2_UPPER_A 0x005B
#define ALPHA_EN2_UPPER_B 0x005C
#define ALPHA_EN2_UPPER_C 0x005D
#define ALPHA_EN2_UPPER_D 0x005E
#define ALPHA_EN2_UPPER_E 0x005F
#define ALPHA_EN2_UPPER_F 0x0060
#define ALPHA_EN2_UPPER_G 0x0061
#define ALPHA_EN2_UPPER_H 0x0062
#define ALPHA_EN2_UPPER_I 0x0063
#define ALPHA_EN2_UPPER_J 0x0064
#define ALPHA_EN2_UPPER_K 0x0065
#define ALPHA_EN2_UPPER_L 0x0066
#define ALPHA_EN2_UPPER_M 0x0067
#define ALPHA_EN2_UPPER_N 0x0068
#define ALPHA_EN2_UPPER_O 0x0069
#define ALPHA_EN2_UPPER_P 0x006A
#define ALPHA_EN2_UPPER_Q 0x006B
#define ALPHA_EN2_UPPER_R 0x006C
#define ALPHA_EN2_UPPER_S 0x006D
#define ALPHA_EN2_UPPER_T 0x006E
#define ALPHA_EN2_UPPER_U 0x006F
#define ALPHA_EN2_UPPER_V 0x0070
#define ALPHA_EN2_UPPER_W 0x0071
#define ALPHA_EN2_UPPER_X 0x0072
#define ALPHA_EN2_UPPER_Y 0x0073
#define ALPHA_EN2_UPPER_Z 0x0074

#define ALPHA_EN2_LOWER_A 0x0075
#define ALPHA_EN2_LOWER_B 0x0076
#define ALPHA_EN2_LOWER_C 0x0077
#define ALPHA_EN2_LOWER_D 0x0078
#define ALPHA_EN2_LOWER_E 0x0079
#define ALPHA_EN2_LOWER_F 0x007A
#define ALPHA_EN2_LOWER_G 0x007B
#define ALPHA_EN2_LOWER_H 0x007C
#define ALPHA_EN2_LOWER_I 0x007D
#define ALPHA_EN2_LOWER_J 0x007E
#define ALPHA_EN2_LOWER_K 0x007F
#define ALPHA_EN2_LOWER_L 0x0080
#define ALPHA_EN2_LOWER_M 0x0081
#define ALPHA_EN2_LOWER_N 0x0082
#define ALPHA_EN2_LOWER_O 0x0083
#define ALPHA_EN2_LOWER_P 0x0084
#define ALPHA_EN2_LOWER_Q 0x0085
#define ALPHA_EN2_LOWER_R 0x0086
#define ALPHA_EN2_LOWER_S 0x0087
#define ALPHA_EN2_LOWER_T 0x0089
#define ALPHA_EN2_LOWER_U 0x008A
#define ALPHA_EN2_LOWER_V 0x008B
#define ALPHA_EN2_LOWER_W 0x008D
#define ALPHA_EN2_LOWER_X 0x008D
#define ALPHA_EN2_LOWER_Y 0x008E
#define ALPHA_EN2_LOWER_Z 0x008F


#define ALPHA_II           0x00CD // II
#define ALPHA_APLHA        0x00CE // α
#define ALPHA_BETA         0x00CF // β
#define ALPHA_GAMMA        0x00D0 // γ
#define ALPHA_APOSTROPHE_S 0x00D1 // 's


// a third English Alphabet, used for titles and names

#define ALPHA_EN3_LOWER_A 0x011E
#define ALPHA_EN3_LOWER_B 0x011F
#define ALPHA_EN3_LOWER_C 0x0120
#define ALPHA_EN3_LOWER_D 0x0121
#define ALPHA_EN3_LOWER_E 0x0122
#define ALPHA_EN3_LOWER_F 0x0123
#define ALPHA_EN3_LOWER_G 0x0124
#define ALPHA_EN3_LOWER_H 0x0125
#define ALPHA_EN3_LOWER_I 0x0126
#define ALPHA_EN3_LOWER_J 0x0127
#define ALPHA_EN3_LOWER_K 0x0128
#define ALPHA_EN3_LOWER_L 0x0129
#define ALPHA_EN3_LOWER_M 0x012A
#define ALPHA_EN3_LOWER_N 0x012B
#define ALPHA_EN3_LOWER_O 0x012C
#define ALPHA_EN3_LOWER_P 0x012D
#define ALPHA_EN3_LOWER_Q 0x012E
#define ALPHA_EN3_LOWER_R 0x012F
#define ALPHA_EN3_LOWER_S 0x0130
#define ALPHA_EN3_LOWER_T 0x0131
#define ALPHA_EN3_LOWER_U 0x0132
#define ALPHA_EN3_LOWER_V 0x0133
#define ALPHA_EN3_LOWER_W 0x0134
#define ALPHA_EN3_LOWER_X 0x0135
#define ALPHA_EN3_LOWER_Y 0x0136
#define ALPHA_EN3_LOWER_Z 0x0137

#define ALPHA_EN3_UPPER_A 0x0138
#define ALPHA_EN3_UPPER_B 0x0139
#define ALPHA_EN3_UPPER_C 0x013A
#define ALPHA_EN3_UPPER_D 0x013B
#define ALPHA_EN3_UPPER_E 0x013C
#define ALPHA_EN3_UPPER_F 0x013D
#define ALPHA_EN3_UPPER_G 0x013E
#define ALPHA_EN3_UPPER_H 0x013F
#define ALPHA_EN3_UPPER_I 0x0140
#define ALPHA_EN3_UPPER_J 0x0141
#define ALPHA_EN3_UPPER_K 0x0142
#define ALPHA_EN3_UPPER_L 0x0143
#define ALPHA_EN3_UPPER_M 0x0144
#define ALPHA_EN3_UPPER_N 0x0145
#define ALPHA_EN3_UPPER_O 0x0146
#define ALPHA_EN3_UPPER_P 0x0147
#define ALPHA_EN3_UPPER_Q 0x0148
#define ALPHA_EN3_UPPER_R 0x0149
#define ALPHA_EN3_UPPER_S 0x014A
#define ALPHA_EN3_UPPER_T 0x014B
#define ALPHA_EN3_UPPER_U 0x014C
#define ALPHA_EN3_UPPER_V 0x014D
#define ALPHA_EN3_UPPER_W 0x014E
#define ALPHA_EN3_UPPER_X 0x014F
#define ALPHA_EN3_UPPER_Y 0x0150
#define ALPHA_EN3_UPPER_Z 0x0151

// TODO: kanji charset.

#define ALPHA_BOLD_SPACE 0xC000

#define ALPHA_NULL 0x8FFF

#define ALPHA_GLYPH_INDEX(c) ( (c * 2) + GINDEX_ALPHASTART) // get graphic index of ALPHA_* index

#endif

