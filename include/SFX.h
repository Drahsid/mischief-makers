#ifndef SFX_H
#define SFX_H

// Sound Effect Id's. Different from Sound test numbers, as it uses a lookup table

#define SFX_MARINA_TITLE    0x0021 // "Mischief Makers!"
#define SFX_MARINA_YELL1    0x00B4 // "Hah!"
#define SFX_MARINA_YELL2    0x00CB // "Yah!"
#define SFX_MARINA_YELL3    0x00CA // "Yaah!"
#define SFX_MARINA_YELL4    0x00B9 // "Hwuah!"
#define SFX_MARINA_OW1      0x00B5 // "oh!"
#define SFX_MARINA_OW2      0x00CC // "ouch!"
#define SFX_MARINA_OW3      0x00B2 // "OOH-Ouch!"
#define SFX_MARINA_HEY      0x00D0 // "Hey!"
#define SFX_MARINA_SHAKE    0x00B3 // "Shake-Shake!"
#define SFX_MARINA_YAY      0x00CE // "YaWoo!!"
#define SFX_MARINA_HUM      0x00D1 //  Idle humming
#define SFX_MARINA_STOP     0x00B7 // "STOOOOOP!!"
#define SFX_MARINA_OHNO     0x00CD // "Oh, No!!"
#define SFX_MARINA_GAMEOVER 0x00C9 // "Game Over..."
#define SFX_MARINA_GROWL    0x00D3 // "URRRG!"
#define SFX_MARINA_LETSGO   0x00C8 // "Let's go!"
#define SFX_MARINA_AHH      0x00D4 // "Ah... That's Better!"

#define SFX_THEO_GRUNT1   0x00D8
#define SFX_THEO_CONTINUE 0x00D9 // "Let's Continue!"
#define SFX_THEO_YAY1     0x00DA // "Way to Go Marina!"
#define SFX_THEO_GOODBYE  0x00DB // "Goodbye..."
#define SFX_THEO_HELP1    0x00DC // "Heeeeeelp!"
#define SFX_THEO_HELP2    0x00DD // "Help me, Marina!"
#define SFX_THEO_GRUNT2   0x00DE
#define SFX_LEO_LAUGH     0x00DF
#define SFX_THEO_YAY2     0x00E0 // "Boy, am I glad to see you, Marina!"
#define SFX_THEO_YELL     0x00E4

#define SFX_LUNAR_INTRO1   0x00E5 // "Here's Lunar!"
#define SFX_LUNAR_INTRO2   0x00E6 // "Through fire, Justice is Served!"
#define SFX_LUNAR_HENSHIN1 0x00E7 // "Cerberus Alpha!"
#define SFX_LUNAR_HENSHIN2 0x00E8 // "Beast Change!"
#define SFX_LUNAR_LAUGH1   0x00E9
#define SFX_LUNAR_LAUGH2   0x00EA // "You're Mi-i-ne!"
#define SFX_LUNAR_YELL     0x00EB
#define SFX_LUNAR_OW       0x00EC
#define SFX_LUNAR_DEFEAT   0x00ED // "How could I lose to you...!?"
#define SFX_LUNAR_TAUNT1   0x00EF // "Eat lead!"
#define SFX_LUNAR_TAUNT2   0x00f0 // "No More Mr. Nice guy!"
#define SFX_LUNAR_TAUNT3   0x00f1 // "I live to fight!"
// 0x00ee is broken.

#define SFX_MERCO_INTRO1   0x00F2 // "It's I, Merco."
#define SFX_MERCO_INTRO2   0x00F3 // "A hero In shining armor is called."
#define SFX_MERCO_HENSHIN1 0x00F5 // "Phoenix Gamma!"
#define SFX_MERCO_HENSHIN2 0x00F6 // "Beast Change!"
#define SFX_MERCO_LAUGH1   0x00F7
#define SFX_MERCO_YELL     0x00F8
#define SFX_MERCO_TAUNT1   0x00F9 // "Lame!"
#define SFX_MERCO_TAUNT2   0x00FA // "Ready?"
#define SFX_MERCO_OW       0x00FB

#define SFX_TUARUS_INTRO1   0x00FF // "It's Tuarus Time!"
#define SFX_TUARUS_INTRO2   0x0100 // "To punish Evil forces, I have been charged!"
#define SFX_TUARUS_HENSHIN1 0x0102 // "Sasquatch Beta!"
#define SFX_TUARUS_HENSHIN2 0x0103 // "Beast Change!"
#define SFX_TUARUS_LAUGH1   0x0104
#define SFX_TUARUS_YELL1    0x0105 // "YOU! STOP!"
#define SFX_TUARUS_YELL2    0x0107
#define SFX_TUARUS_OW       0x0108
#define SFX_TUARUS_DEFEAT   0x0109 // "You... were definetely my match, Marina."
#define SFX_TUARUS_YELL3    0x010B
#define SFX_TUARUS_TAUNT1   0x007D // "IIIII am a warrior!"
#define SFX_TUARUS_TAUNT2   0x007E // "Charge!"

// "grunts"/chirps for dialog.

#define SFX_TXTGRUNT_DEFAULT 0x0077
#define SFX_TXTGRUNT_CLANCER 0x0079
#define SFX_TXTGRUNT_MARINA  0x010F
#define SFX_TXTGRUNT_THEOLEO 0x0110
#define SFX_TXTGRUNT_MERCO   0x0111
#define SFX_TXTGRUNT_LUNAR   0x0112
#define SFX_TXTGRUNT_TARUS  0x0113


#define SFX_MENU_BLIP  0x0022
#define SFX_MENU_DING  0x0023

#define SFX_FALLWHISTLE 0x003E

#define SFX_STAGE_OPEN 0x00D2


#define SFX_GEM_APPEAR 0x0051
#define SFX_GEM_RED    0x0057
#define SFX_GEM_BLUE   0x0095
#define SFX_GEM_GREEN  0x0125
#define SFX_GEM_YELLOW 0x003B

#define SFX_STAR_TP 0x0123
#define SFX_STAR_APPEAR 0x0136

#define SFX_STAGE_TILES 0x00BB

#define SFX_LIFEBAR 0x0141

#define SFX_POP            0x005A
#define SFX_MECHSTEP_0062    0x0062
#define SFX_CROSSHAIR      0x00C7
#define SFX_TURMPETFANFARE 0x0130

// sfx indices in need of names/description/organization

#define SFX_BEASTECTOR_GRUNT1 0x0142
#define SFX_BEASTECTOR_GRUNT2 0x0143
#define SFX_JUMP_0024 0x0024
#define SFX_LAND_0025 0x0025
#define SFX_DASH_00AE 0x00AE // used by down-A dash
#define SFX_DASH_0116 0x0116
#define SFX_0034 0x0034
#define SFX_008A 0x008A
#define SFX_005F 0x005F
#define SFX_0060 0x0060
#define SFX_00AB 0x00AB
#define SFX_CHARGE_00A6 0x00A6
#define SFX_00B6 0x00B6
#define SFX_MECHSTEP_0056 0x0056
#define SFX_MECHSTEP_0059 0x0059
#define SFX_0076 0x0076
#define SFX_0074 0x0074
#define SFX_00FE 0x00FE
#define SFX_0037 0x0037
#define SFX_006F 0x006F
#define SFX_BOOM_0041 0x0041
#define SFX_CLANBOMB_LIGHT 0x007C
#define SFX_0078 0x0078
#define SFX_005B 0x005B
#define SFX_007A 0x007A
#define SFX_003F 0x003F
#define SFX_0066 0x0066
#define SFX_SHAKEREVEAL 0x0145
#define SFX_00B0 0x00B0
#define SFX_GHOST_LAUGH 0x00B8
#define SFX_GLIMMER_0140 0x0140
#define SFX_BEAM_0144 0x0144
#define SFX_00BD 0x00BD
#define SFX_WIND_00BF 0x00BF
#define SFX_WIND_00BA 0x00BA
#define SFX_THUNDER_00BE 0x00BE
#define SFX_013C 0x013C
#define SFX_013D 0x013D // Part of Calina's transform
#define SFX_BOOM_0026 0x0026
#define SFX_DASH_0027 0x0027 // Marina's ground dash
#define SFX_0028 0x0028
#define SFX_0029 0x0029
#define SFX_THROW_002A 0x002A
#define SFX_002B 0x002B
#define SFX_HIT_002C 0x002C
#define SFX_HIT_002D 0x002D
#define SFX_LASER_002E 0x002E
#define SFX_GRAB_002F 0x002F
#define SFX_GRAB_0030 0x0030
#define SFX_WIND_0031 0x0031
#define SFX_CLANG_0032 0x0032
#define SFX_METALHIT_0033 0x0033
#define SFX_0035 0x0035
#define SFX_0036 0x0036
#define SFX_0038 0x0038
#define SFX_0039 0x0039
#define SFX_CLANCERDEATH 0x003C // also used for forming sound in Intro
#define SFX_BLING 0x003D
#define SFX_RING_0040 0x0040
#define SFX_MEOW 0x0042
#define SFX_BOOM_0043 0x0043
#define SFX_BOOM_0045 0x0045
#define SFX_SHOT_0046 0x0046
#define SFX_WOOSH_0048 0x0048
#define SFX_004A 0x004A
#define SFX_004B 0x004B
#define SFX_004C 0x004C
#define SFX_004D 0x004D
#define SFX_004E 0x004E
#define SFX_FIRE_004F 0x004F
#define SFX_PLINK_0050 0x0050
#define SFX_LASER_0052 0x0052
#define SFX_STEP_0053 0x0053
#define SFX_SHOT_0054 0x0054
#define SFX_BOOM_0055 0x0055
#define SFX_0058 0x0058
#define SFX_SQUEAK_005C 0x005C
#define SFX_005D 0x005D
#define SFX_005E 0x005E
#define SFX_0061 0x0061
#define SFX_GRABDEFLECT 0x0063
#define SFX_TINK_0064 0x0064
#define SFX_SHOCK_0065 0x0065
#define SFX_0068 0x0068
#define SFX_0069 0x0069
#define SFX_006A 0x006A
#define SFX_006B 0x006B
#define SFX_006C 0x006C
#define SFX_006D 0x006D
#define SFX_STAB_006E 0x006E
#define SFX_0070 0x0070
#define SFX_0071 0x0071
#define SFX_0072 0x0072
#define SFX_0073 0x0073
#define SFX_0075 0x0075
#define SFX_007B 0x007B
#define SFX_0080 0x0080
#define SFX_DASH_0081 0x0081
#define SFX_BOING_0082 0x0082
#define SFX_0083 0x0083
#define SFX_0084 0x0084
#define SFX_TP_ARRIVE 0x0085
#define SFX_0086 0x0086
#define SFX_0087 0x0087
#define SFX_0088 0x0088
#define SFX_0089 0x0089
#define SFX_008B 0x008B
#define SFX_008C 0x008C
#define SFX_008D 0x008D
#define SFX_008E 0x008E
#define SFX_JIGGLE_008F 0x008F
#define SFX_JIGGLE_0090 0x0090
#define SFX_0091 0x0091
#define SFX_0092 0x0092
#define SFX_BOOM_0093 0x0093
#define SFX_0094 0x0094
#define SFX_SWISH_0096 0x0096
#define SFX_SWISH_0097 0x0097
#define SFX_SWISH_0098 0x0098
#define SFX_WOOSH_0099 0x0099 // "Final Battle" dash
#define SFX_009A 0x009A
#define SFX_009B 0x009B
#define SFX_00A3 0x00A3
#define SFX_00A5 0x00A5
#define SFX_00A9 0x00A9
#define SFX_LAVA_00AA 0x00AA
#define SFX_LAND_00AC 0x00AC
#define SFX_JUMP_00AD 0x00AD
#define SFX_00AF 0x00AF
#define SFX_TP_DEPART 0x00B1
#define SFX_00BC 0x00BC
#define SFX_00C0 0x00C0
#define SFX_00C1 0x00C1
#define SFX_SHAKE_00C2 0x00C2
#define SFX_00C3 0x00C3
#define SFX_POP_00C5 0x00C5
#define SFX_BEEPBEEP_00C6 0x00C6
#define SFX_00CF 0x00CF
#define SFX_00D5 0x00D5
#define SFX_00D6 0x00D6
#define SFX_00E1 0x00E1
#define SFX_00E2 0x00E2
#define SFX_CORRECT_00E3 0x00E3
#define SFX_00EE 0x00EE
#define SFX_CLANPOTGLOW 0x00FC
#define SFX_RUMBLE_00FD 0x00FD
#define SFX_0101 0x0101
#define SFX_WARN_0106 0x0106
#define SFX_SPEECHSTART 0x010D
#define SFX_SPEECHEND 0x010E
#define SFX_0114 0x0114
#define SFX_0115 0x0115
#define SFX_0117 0x0117
#define SFX_0118 0x0118
#define SFX_0119 0x0119
#define SFX_011B 0x011B
#define SFX_IMPACT_011C 0x011C
#define SFX_RUMBLE_011D 0x011D
#define SFX_011E 0x011E
#define SFX_011F 0x011F
#define SFX_0120 0x0120
#define SFX_0121 0x0121
#define SFX_RUMBLE_0122 0x0122 // ambient sound in "Seasick Climb"
#define SFX_DRONE_0124 0x0124
#define SFX_0126 0x0126
#define SFX_0127 0x0127
#define SFX_0128 0x0128
#define SFX_0129 0x0129
#define SFX_012A 0x012A
#define SFX_012B 0x012B
#define SFX_CHIRP_012C 0x012C
#define SFX_DROP_0131 0x0131
#define SFX_DROP_0132 0x0132
#define SFX_CORRECT_0133 0x0133
#define SFX_WRONG_0134 0x0134
#define SFX_RUMBLE_0135 0x0135
#define SFX_AREACLEAR_0137 0x0137
#define SFX_0139 0x0139
#define SFX_SPARKLE_013E 0x013E
#define SFX_GLOW_013F 0x013F
#define SFX_ROAR_013B 0x013B
#define SFX_ROAR_0047 0x0047
#define SFX_ROAR_00F4 0x00F4
#define SFX_YELL_00C4 0x00C4
#define SFX_LAUGH_010A 0x010A
#define SFX_CHIRP_010C 0x010C
#define SFX_ROAR_0138 0x0138
#define SFX_CLANCER_013A 0x013A
#define SFX_ROAR_00D7 0x00D7
#define SFX_CLANCER_003A 0x003A
#define SFX_CLANCER_TALK_009E 0x009E
#define SFX_CLANCER_TALK_00A2 0x00A2
#define SFX_CLANCER_TALK_009F 0x009F
#define SFX_CLANCER_OW_009D 0x009D
#define SFX_CLANCER_CRY_00A1 0x00A1
#define SFX_CLANCER_OW_0067 0x0067
#define SFX_CLANCER_YELL_0044 0x0044
#define SFX_CLANCER_SING_007F 0x007F
#define SFX_CLANCER_YELL_011A 0x011A
#define SFX_CLANCER_LAUGH_0049 0x0049
#define SFX_CLANCER_OW_00A4 0x00A4
#define SFX_CLANCER_OW_00A7 0x00A7
#define SFX_CLANCER_TALK_00A8 0x00A8
#define SFX_CLANCER_LAUGH_009C 0x009C
#define SFX_CLANCER_TALK_00A0 0x00A0
#define SFX_CROUD_CHATTER 0x012D
#define SFX_CROUD_CHEER 0x012E
#define SFX_BUZZ_BOO 0x012F

#endif
