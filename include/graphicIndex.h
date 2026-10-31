#ifndef GRAPHIC_INDEX_H
#define GRAPHIC_INDEX_H


// indices used by "graphicIndex" field of Actor and Portrait structs
// many graphic indices use even entries for graphics facing one side,
// and odd facing the other. for more complex aninmations,
// Like those of Marina, Clancers, and Beastector, they instead increment normally.

#define GINDEX_LEFT 1 // odd entries are the horizontal mirror of the previous
#define GRAPHIC_FRAME(g,n) (GINDEX_##g +(2*n)) // when we need to declare with animation graphic.


// each clanblock has 3-4 animation indices following.

#define GINDEX_CLANBLOCKSQAURE 0x0046
#define GINDEX_CLANBLOCKSKINNY 0x004C
#define GINDEX_CLANBLOCKSHORT  0x0052
#define GINDEX_CLANBLOCKSMALL  0x0058
#define GINDEX_CLANBLOCKBARREL 0x005E
#define GINDEX_CLANBLOCKBUCKET 0x0064 // the smaller "barrel"
#define GINDEX_CLANBLOCKSLOPEL 0x006A
#define GINDEX_CLANBLOCKSLOPER 0x0070
#define GINDEX_CLANBLOCKRAMPL  0x0076 // the shorter slope
#define GINDEX_CLANBLOCKRAMPR  0x007C

#define GINDEX_CLANCERSTATUEA  0x0082 // the wooden sitting one
#define GINDEX_BIGBLOCK        0x0084 
#define GINDEX_CLANBLOBSTATUE  0x0086 // 3 animation frames(?)
#define GINDEX_CLANCERSTATUEB  0x008C // the stone elder

#define GINDEX_CACTUS          0x0096 // 3 animation frames
#define GINDEX_TAIKO           0x009C // 3 animation frames. unused?

// Clanball Rails.

#define GINDEX_RAILSTRAIGHTH   0x00A2 
#define GINDEX_RAILENDHL       0x00A4
#define GINDEX_RAILENDHR       0x00A6
#define GINDEX_RAILSTRAIGHTV   0x00A8
#define GINDEX_RAILENDVT       0x00AA
#define GINDEX_RAILENDVB       0x00AC
#define GINDEX_RAILANGLEBL     0x00AE 
#define GINDEX_RAILANGLELT     0x00B0
#define GINDEX_RAILANGLETR     0x00B2
#define GINDEX_RAILANGLEBR     0x00B4

#define GINDEX_BOMB_ELLIPSE    0x00B6 // elliptical bomb.

#define GINDEX_GEM             0x00B8 // 6 animation frames

#define GINDEX_MINEROUND       0x00C6
#define GINDEX_LASERA          0x00C8

#define GINDEX_CIRCLEEFFECT    0x00CA
#define GINDEX_CLANBLOB        0x00CC
#define GINDEX_PARTICLERING    0x00CE

#define GINDEX_FIREBALL        0x00D4 // 2 animation frames


#define GINDEX_BOOM1           0x00D8 // 7 animation frames
#define GINDEX_BOOM2           0x00E6 // 5 animation frames

#define GINDEX_LIFEBAR         0x00F0
#define GINDEX_LIFEHEAD        0x00F2
#define GINDEX_LIFEHEADBLINK   0x00F4 // 3 animation frames
#define GINDEX_LIFEHEADOW      0x00FE
#define GINDEX_LIFEHEADLOOKUP  0x0100
#define GINDEX_LIFEHEADANGRY   0x0102
#define GINDEX_LIFEHEADLOOKDWN 0x0104

#define GINDEX_JOYSTICK        0x0108
#define GINDEX_DPAD            0x010A
#define GINDEX_BUTTONSTART     0x010C
#define GINDEX_BUTTONA         0x010E
#define GINDEX_BUTTONB         0x0110
#define GINDEX_BUTTONCLEFT     0x0112
#define GINDEX_BUTTONCRIGHT    0x0114
#define GINDEX_BUTTONCUP       0x0116
#define GINDEX_BUTTONCDOWN     0x0118
#define GINDEX_BUTTONL         0x011A // 2 animation frames
#define GINDEX_BUTTONR         0x011E // 2 animation frames
#define GINDEX_BUTTONZ         0x0122 // 2 animation frames
#define GINDEX_DPADLEFT        0x0126
#define GINDEX_DPADRIGHT       0x0128
#define GINDEX_DPADUP          0x012A
#define GINDEX_DPADDOWN        0x012C
#define GINDEX_BIGARROW        0x012E
#define GINDEX_EXCLAIMBUBBLE   0x0130
#define GINDEX_HEARTBUBBLE     0x0132
#define GINDEX_SPEECHBUBBLE    0x0134
#define GINDEX_NOTEQUARTER     0x0136
#define GINDEX_NOTEEIGHTHS     0x0138
#define GINDEX_NOTEEIGHTH      0x013A
#define GINDEX_QUESTIONBUBBLE  0x013C

#define GINDEX_FLOWERRED       0x013E
#define GINDEX_FLOWERDAISY     0x0140
#define GINDEX_FLOWERTULIP     0x0142
#define GINDEX_FLOWERD         0x0144
#define GINDEX_FLOWERE         0x0146
#define GINDEX_FLOWERF         0x0148 // has a bulb and face?

#define GINDEX_CROSSHAIR       0x014A

#define GINDEX_POW             0x014C // 5 animation frames
#define GINDEX_DISSOLVE        0x0156 // 5 animation frames
#define GINDEX_CONE            0x0160
#define GINDEX_LINE            0x0162
#define GINDEX_GRADIENTA       0x0164

#define GINDEX_BLASTA          0x0166
#define GINDEX_BLASTB          0x0168 // 2 animation frames

#define GINDEX_016A            0x016A

#define GINDEX_GROUNDFLAME     0x016C
#define GINDEX_MUSHROOMCLOUD   0x016E // 8 animation frames

#define GINDEX_0188            0x0188
#define GINDEX_GRABEFFECTA     0x019A // emmits from hand when you grab something

#define GINDEX_WARPGATE        0x01A8


#define GINDEX_01AA            0x01AA
#define GINDEX_SPARKLESMALL    0x01AE // 2 animation frames
#define GINDEX_DASHEFFECT      0x01B2 // 2 animation frames
#define GINDEX_01B6            0x01B6
#define GINDEX_01B8            0x01B8
#define GINDEX_01BA            0x01BA
#define GINDEX_01BC            0x01BC

#define GINDEX_GRABEFFECTB     0x01BE 
#define GINDEX_SHOCKEFFECT     0x01C0 // 3 animation frames
#define GINDEX_POOF            0x01C6 // 8 animation frames
#define GINDEX_STAREFFECT      0x01D6
#define GINDEX_IMPACTEFFECTA   0x01D8 // 3 animation frames

#define GINDEX_01E2            0x01E2
#define GINDEX_01EE            0x01EE
#define GINDEX_8SQUARERING     0x01F2

#define GINDEX_PORTRAIT_MARINAA 0x01F4
#define GINDEX_PORTRAIT_MARINAB 0x01F6 // happy
#define GINDEX_PORTRAIT_MARINAC 0x01F8 // scowling
#define GINDEX_PORTRAIT_MARINAD 0x01FA
#define GINDEX_PORTRAIT_THEOA   0x01FC
#define GINDEX_PORTRAIT_THEOB   0x01FE
#define GINDEX_PORTRAIT_THEOC   0x0200
#define GINDEX_PORTRAIT_CAT     0x0202
#define GINDEX_PORTRAIT_LUNARA  0x0204
#define GINDEX_PORTRAIT_LUNARB  0x0206
#define GINDEX_PORTRAIT_LUNARC  0x0208
#define GINDEX_PORTRAIT_MERCOA  0x020A
#define GINDEX_PORTRAIT_MERCOB  0x020C
#define GINDEX_PORTRAIT_MERCOC  0x020E
#define GINDEX_PORTRAIT_TARUSA  0x0210
#define GINDEX_PORTRAIT_TARUSB  0x0212
#define GINDEX_PORTRAIT_TARUSC  0x0214
#define GINDEX_PORTRAIT_TARUSD  0x0216
#define GINDEX_PORTRAIT_LEOA    0x0218
#define GINDEX_PORTRAIT_LEOB    0x021A
#define GINDEX_PORTRAIT_CLANCER 0x021C
#define GINDEX_PORTRAIT_CLANKID 0x021E
#define GINDEX_PORTRAIT_ASTER   0x0220
#define GINDEX_PORTRAIT_CLANCR2 0x0222
#define GINDEX_PORTRAIT_TERAN   0x0224
#define GINDEX_PORTRAIT_CELES   0x0226
#define GINDEX_PORTRAIT_CMDR    0x0228
#define GINDEX_PORTRAIT_CALINA  0x022A
#define GINDEX_PORTRAIT_MIGEN   0x022C
#define GINDEX_PORTRAIT_KING    0x022E
#define GINDEX_PORTRAIT_LITH    0x0230
#define GINDEX_PORTRAIT_CALINAZ 0x0232
#define GINDEX_HAT_COWBOY       0x0234 // 2 ani states
#define GINDEX_HAT_STOVETOP     0x0238
#define GINDEX_HAT_SANTA        0x023A
#define GINDEX_HAT_CELES        0x023C // 2 ani states
#define GINDEX_HAT_TERAN        0x0240 // 2 ani states

#define GINDEX_BOOMERANG       0x0244
#define GINDEX_BALLSPIKE       0x0246 // not the spiked clanball
#define GINDEX_BIGRING         0x0248
#define GINDEX_SHURIKEN        0x024A

#define GINDEX_HAT_CHEF         0x024C
#define GINDEX_HAT_HARD         0x024E
#define GINDEX_HAT_CROWN        0x0250 // 2 ani states
#define GINDEX_HAT_USHANKA      0x0254 // 2 ani states

#define GINDEX_0258             0x0258

#define GINDEX_MISSLE          0x025C

#define GINDEX_SAGECLOUD       0x0260

#define GINDEX_SPIRAL          0x0262

#define GINDEX_CLANPOT         0x0264 // 3 animation frames
#define GINDEX_CLANBALL        0x026A // 3 animation frames
#define GINDEX_SPIKEBALL       0x0270 // 3 animation frames
#define GINDEX_CLANBOMB        0x0276 // 3 animation frames

#define GINDEX_CLANCER_HEAD    0x028A
#define GINDEX_CLANCER_BODY    0x028C
#define GINDEX_CLANCER_PART_028E 0x028E
#define GINDEX_0290            0x0290
#define GINDEX_CLANCER_PART_0292 0x0292
#define GINDEX_CLANCER_PART_0294 0x0294
#define GINDEX_CLANCER_PART_0296 0x0296
#define GINDEX_CLANCER_PART_0298 0x0298
#define GINDEX_029A            0x029A

#define GINDEX_CLANCERGHOST    0x02A2 // 6 animation frames

#define GINDEX_02AE            0x02AE

#define GINDEX_MOCHI           0x02C2

#define GINDEX_CATHEAD         0x02CC // 6 animation frames
#define GINDEX_TEXTBOX         0x02CE // index of the textbox 
#define GINDEX_SOLIDSQUARE     0x02D0 // used as a fill for transitions
#define GINDEX_ALPHASTART      0x02D2 // Beginning of "Alphabet" charset graphics


// indices of 0x800 and beyond are based on RLE segments loaded per scene.
// These will have overlapping indices due to graphics loaded on a per-case basis.
// see references to D_800CFE04 for more information.
// future index additions should follow the namesceme of either
// GINDEX_SEG[##]_[NAME] or GINDEX_[ARBEV]_[NAME]
// where [ABREV] is an abbreviation of the confirmed use case
// example: "world map" graphics have [ABREV] as "WM"


#define GINDEX_FEST_GIFTSHOP_EN  0x0800
#define GINDEX_FEST_GIFTSHOP_JP  0x0802
#define GINDEX_FEST_WARITAMA     0x0804 // confettii ball. 3 animation frames.
#define GINDEX_FEST_FLAGGER      0x080A // 3 animation frames
#define GINDEX_FEST_CROWD_A      0x0810 // animation indexes alternate w/ GINDEX_FEST_CROWD_B? 
#define GINDEX_FEST_CROWD_B      0x0812 // animation indexes alternate w/ GINDEX_FEST_CROWD_A? 
#define GINDEX_FEST_WINNERSTAND  0x081C
#define GINDEX_FEST_PENNANT_A    0x081E // animation indexes alternate w/ GINDEX_FEST_PENNANT_B? 
#define GINDEX_FEST_PENNANT_B    0x0820 // animation indexes alternate w/ GINDEX_FEST_PENNANT_A? 
#define GINDEX_FEST_CROWD_C      0x082A // animation indexes alternate w/ GINDEX_FEST_CROWD_D? 
#define GINDEX_FEST_CROWD_D      0x082C // animation indexes alternate w/ GINDEX_FEST_CROWD_C? 
#define GINDEX_FEST_BALL_WHITE   0x0836
#define GINDEX_FEST_BALL_RED     0x0838

#define GINDEX_SUNGLASSES       0X1004
#define GINDEX_CALINA_BODY      0X1006
#define GINDEX_CALINA_LEG       0X1008
#define GINDEX_CALINA_FOOT      0X100A
#define GINDEX_1014             0x1014
#define GINDEX_1016             0x1016
#define GINDEX_CALINA_HEAD      0X101A
#define GINDEX_101C             0x101C
#define GINDEX_101E             0x101E
#define GINDEX_1020             0x1020
#define GINDEX_1026             0x1026
#define GINDEX_1028             0x1028
#define GINDEX_102A             0x102A
#define GINDEX_102C             0x102C
#define GINDEX_102E             0x102E
#define GINDEX_1030             0x1030
#define GINDEX_1032             0x1032
#define GINDEX_1034             0x1034
#define GINDEX_1036             0x1036
#define GINDEX_1038             0x1038
#define GINDEX_103A             0x103A
#define GINDEX_103C             0x103C
#define GINDEX_STAFFSAGE        0X1040
#define GINDEX_HATCALINA        0X1044 // 2 ani states
#define GINDEX_HATMSHINT        0X1070
#define GINDEX_1072             0x1072
#define GINDEX_1078             0x1078
#define GINDEX_107E             0x107E
#define GINDEX_1090             0x1090
#define GINDEX_STAFFCALINA      0X1098

#define GINDEX_1814             0x1814
#define GINDEX_181C             0x181C
#define GINDEX_181E             0x181E
#define GINDEX_1820             0x1820
#define GINDEX_1822             0x1822
#define GINDEX_182C             0x182C
#define GINDEX_182E             0x182E
#define GINDEX_1836             0x1836
#define GINDEX_1838             0x1838

// graphics with an index starting in 0x2000 are pieces of the back/foreground.

#define GINDEX_2000             0x2000
#define GINDEX_2002             0x2002
#define GINDEX_2004             0x2004
#define GINDEX_2006             0x2006
#define GINDEX_2008             0x2008
#define GINDEX_200A             0x200A
#define GINDEX_200C             0x200C
#define GINDEX_200E             0x200E
#define GINDEX_2010             0x2010
#define GINDEX_2012             0x2012
#define GINDEX_2014             0x2014
#define GINDEX_2016             0x2016
#define GINDEX_2018             0x2018
#define GINDEX_201A             0x201A
#define GINDEX_201C             0x201C
#define GINDEX_201E             0x201E
#define GINDEX_2020             0x2020
#define GINDEX_2022             0x2022
#define GINDEX_2024             0x2024
#define GINDEX_2026             0x2026
#define GINDEX_202E             0x202E
#define GINDEX_2030             0x2030
#define GINDEX_2032             0x2032
#define GINDEX_2034             0x2034
#define GINDEX_2036             0x2036
#define GINDEX_2816             0x2816
#define GINDEX_281E             0x281E
#define GINDEX_2820             0x2820
#define GINDEX_2822             0x2822

// graphics with indexes starting in 0x3000 are laregy consistent throughout stages
// but change when in the World Map

#define GINDEX_ICONEXCLAMATION   0X3000
#define GINDEX_MUSTACHE          0X3002
#define GINDEX_COILSPRING        0X3004
#define GINDEX_HATBEANIERED      0X3006
#define GINDEX_HATFEATHER        0X3008
#define GINDEX_HANDHOOK          0X300A
#define GINDEX_HATBANDANA        0X300C

#define GINDEX_WALKER_FOOTA      0X300E
#define GINDEX_WALKER_FOOTB      0X3010

#define GINDEX_GUNA              0X3012

#define GINDEX_HATPIRATE         0X3014

// graphics for pilots of hovercraft and walker

#define GINDEX_CLANCER_PILOT_A   0X3016 // 3 animation frames
#define GINDEX_CLANCER_PILOT_B   0X301C // 3 animation frames
#define GINDEX_CLANCER_PILOT_C   0X3024 // 3 animation frames
#define GINDEX_CLANCER_PILOT_D   0X302A // 3 animation frames

// graphics of Rocketeer clancer? 

#define GINDEX_3030                 0x3030
#define GINDEX_3032                 0x3032
#define GINDEX_3034                 0x3034
#define GINDEX_3036                 0x3036
#define GINDEX_3038                 0x3038
#define GINDEX_303A                 0x303A
#define GINDEX_303C                 0x303C
#define GINDEX_303E                 0x303E
#define GINDEX_3040                 0x3040
#define GINDEX_3042                 0x3042
#define GINDEX_3044                 0x3044
#define GINDEX_3046                 0x3046
#define GINDEX_3048                 0x3048
#define GINDEX_304A                 0x304A
#define GINDEX_3050                 0x3050
#define GINDEX_3064                 0x3064

// indices used by the world map graphics

#define GINDEX_WM_SPEECHBUBBLE      0X3000
#define GINDEX_WM_WORLDTITLEBG      0X3002
#define GINDEX_WM_STAGEICONUNKNOWN  0X3004
#define GINDEX_WM_STAGEICONBLOCKED  0X3006
#define GINDEX_WM_MARINAICON        0X3008 // 4 animation frames
#define GINDEX_WM_PATHSECTIONLEFT   0X3010
#define GINDEX_WM_PATHSECTIONMID    0X3012
#define GINDEX_WM_PATHSECTIONRIGHT  0X3014
#define GINDEX_WM_CLANCERMIC        0X3016 // 4 animation frames
#define GINDEX_WM_STAGEICONDESERT   0X301E
#define GINDEX_WM_STAGEICONLAVA     0X3020
#define GINDEX_WM_STAGEICONMIGEN    0X3022
#define GINDEX_WM_STAGEICONCITY     0X3024
#define GINDEX_WM_STAGEICONLUNAR    0X3026
#define GINDEX_WM_STAGEICONSNOW     0X3028
#define GINDEX_WM_STAGEICONCAVE1    0X302A
#define GINDEX_WM_STAGEICONCAVE2    0X302C
#define GINDEX_WM_STAGEICONTARUS    0X302E
#define GINDEX_WM_STAGEICONIMPHQ1   0X3030
#define GINDEX_WM_STAGEICONIMPHQ2   0X3032
#define GINDEX_WM_STAGEICONMERCO    0X3034
#define GINDEX_WM_STAGEICONFINAL    0X3036
#define GINDEX_WM_STAGEICONPLAINS   0X3038
#define GINDEX_WM_STAGEICONENDING   0X303A
#define GINDEX_WM_STAGEICONVERTICAL 0X303C

#define GINDEX_DEMOWORLD1_2002  0x2002
#define GINDEX_DEMOWORLD1_2804  0x2804
#define GINDEX_DEMOWORLD1_2806  0x2806
#define GINDEX_DEMOWORLD1_2808  0x2808
#define GINDEX_DEMOWORLD1_280A  0x280A
#define GINDEX_DEMOWORLD1_281A  0x281A
#define GINDEX_DEMOWORLD1_3000  0x3000
#define GINDEX_3004            0x3004
#define GINDEX_DEMOWORLD1_3014  0x3014
#define GINDEX_DEMOWORLD1_3016  0x3016

#define GINDEX_DEMOWORLD3_2804  0x2804
#define GINDEX_DEMOWORLD3_3000  0x3000
#define GINDEX_DEMOWORLD3_3002  0x3002

#define GINDEX_4007             0x4007
#define GINDEX_4400             0x4400
#define GINDEX_4401             0x4401
#define GINDEX_4402             0x4402
#define GINDEX_4403             0x4403
#define GINDEX_4404             0x4404
#define GINDEX_4405             0x4405
#define GINDEX_4406             0x4406
#define GINDEX_4407             0x4407
#define GINDEX_4408             0x4408
#define GINDEX_4409             0x4409
#define GINDEX_440A             0x440A
#define GINDEX_440D             0x440D
#define GINDEX_440E             0x440E
#define GINDEX_440F             0x440F
#define GINDEX_4410             0x4410
#define GINDEX_4411             0x4411
#define GINDEX_4412             0x4412
#define GINDEX_4413             0x4413
#define GINDEX_4414             0x4414
#define GINDEX_4415             0x4415
#define GINDEX_4416             0x4416
#define GINDEX_4417             0x4417
#define GINDEX_4418             0x4418
#define GINDEX_4419             0x4419
#define GINDEX_441A             0x441A
#define GINDEX_441B             0x441B
#define GINDEX_441C             0x441C
#define GINDEX_441D             0x441D
#define GINDEX_441E             0x441E
#define GINDEX_441F             0x441F
#define GINDEX_4420             0x4420
#define GINDEX_4421             0x4421
#define GINDEX_4800             0x4800
#define GINDEX_4801             0x4801
#define GINDEX_4802             0x4802
#define GINDEX_4803             0x4803
#define GINDEX_4804             0x4804
#define GINDEX_4805             0x4805
#define GINDEX_4806             0x4806
#define GINDEX_4807             0x4807
#define GINDEX_4808             0x4808
#define GINDEX_481F             0x481F
#define GINDEX_4820             0x4820
#define GINDEX_4825             0x4825
#define GINDEX_4826             0x4826
#define GINDEX_4827             0x4827
#define GINDEX_4828             0x4828
#define GINDEX_4829             0x4829
#define GINDEX_482A             0x482A
#define GINDEX_482B             0x482B
#define GINDEX_482C             0x482C
#define GINDEX_483F             0x483F
#define GINDEX_484F             0x484F
#define GINDEX_4855             0x4855
#define GINDEX_485C             0x485C
#define GINDEX_485D             0x485D
#define GINDEX_485E             0x485E
#define GINDEX_485F             0x485F
#define GINDEX_4860             0x4860
#define GINDEX_4861             0x4861
#define GINDEX_4862             0x4862
#define GINDEX_4C00             0x4C00
#define GINDEX_4C01             0x4C01
#define GINDEX_4C02             0x4C02
#define GINDEX_4C03             0x4C03
#define GINDEX_4C04             0x4C04
#define GINDEX_4C05             0x4C05
#define GINDEX_4C06             0x4C06
#define GINDEX_4C07             0x4C07
#define GINDEX_4C08             0x4C08
#define GINDEX_4C09             0x4C09
#define GINDEX_4C0A             0x4C0A
#define GINDEX_4C0D             0x4C0D
#define GINDEX_4C0E             0x4C0E
#define GINDEX_4C0F             0x4C0F
#define GINDEX_4C10             0x4C10
#define GINDEX_4C11             0x4C11

#define GINDEX_5004             0x5004

#define GINDEX_6000             0x6000
#define GINDEX_6400             0x6400
#define GINDEX_640D             0x640D
#define GINDEX_640E             0x640E
#define GINDEX_640F             0x640F
#define GINDEX_6410             0x6410
#define GINDEX_6411             0x6411
#define GINDEX_6412             0x6412
#define GINDEX_6413             0x6413
#define GINDEX_6414             0x6414
#define GINDEX_6415             0x6415
#define GINDEX_6416             0x6416
#define GINDEX_6417             0x6417
#define GINDEX_6418             0x6418
#define GINDEX_6419             0x6419
#define GINDEX_641A             0x641A
#define GINDEX_641B             0x641B
#define GINDEX_6800             0x6800
#define GINDEX_6801             0x6801
#define GINDEX_6802             0x6802
#define GINDEX_6803             0x6803
#define GINDEX_6804             0x6804
#define GINDEX_6805             0x6805
#define GINDEX_6806             0x6806
#define GINDEX_6807             0x6807
#define GINDEX_6808             0x6808
#define GINDEX_6809             0x6809
#define GINDEX_680A             0x680A
#define GINDEX_680B             0x680B
#define GINDEX_680C             0x680C
#define GINDEX_680D             0x680D
#define GINDEX_680E             0x680E
#define GINDEX_680F             0x680F
#define GINDEX_6810             0x6810
#define GINDEX_6811             0x6811
#define GINDEX_6812             0x6812
#define GINDEX_6813             0x6813
#define GINDEX_6814             0x6814
#define GINDEX_6815             0x6815
#define GINDEX_6816             0x6816
#define GINDEX_6817             0x6817
#define GINDEX_6818             0x6818
#define GINDEX_6819             0x6819
#define GINDEX_681A             0x681A
#define GINDEX_681B             0x681B
#define GINDEX_681C             0x681C
#define GINDEX_681D             0x681D
#define GINDEX_681E             0x681E
#define GINDEX_681F             0x681F
#define GINDEX_6820             0x6820
#define GINDEX_6821             0x6821
#define GINDEX_6822             0x6822
#define GINDEX_6823             0x6823
#define GINDEX_6824             0x6824
#define GINDEX_6825             0x6825
#define GINDEX_6826             0x6826
#define GINDEX_6827             0x6827
#define GINDEX_6828             0x6828
#define GINDEX_682C             0x682C
#define GINDEX_682D             0x682D
#define GINDEX_682E             0x682E
#define GINDEX_682F             0x682F
#define GINDEX_6830             0x6830
#define GINDEX_6831             0x6831
#define GINDEX_6832             0x6832
#define GINDEX_6833             0x6833
#define GINDEX_6834             0x6834
#define GINDEX_6835             0x6835
#define GINDEX_6836             0x6836
#define GINDEX_6837             0x6837
#define GINDEX_6838             0x6838
#define GINDEX_6839             0x6839
#define GINDEX_683A             0x683A
#define GINDEX_683B             0x683B
#define GINDEX_683C             0x683C
#define GINDEX_683D             0x683D
#define GINDEX_683E             0x683E
#define GINDEX_683F             0x683F
#define GINDEX_6840             0x6840
#define GINDEX_6841             0x6841
#define GINDEX_6842             0x6842
#define GINDEX_6843             0x6843
#define GINDEX_6846             0x6846
#define GINDEX_684B             0x684B
#define GINDEX_684C             0x684C
#define GINDEX_684D             0x684D
#define GINDEX_684E             0x684E
#define GINDEX_6852             0x6852
#define GINDEX_6853             0x6853
#define GINDEX_6854             0x6854
#define GINDEX_6855             0x6855
#define GINDEX_6856             0x6856
#define GINDEX_6857             0x6857
#define GINDEX_6858             0x6858
#define GINDEX_6859             0x6859
#define GINDEX_685A             0x685A
#define GINDEX_685B             0x685B
#define GINDEX_685C             0x685C
#define GINDEX_685D             0x685D
#define GINDEX_685E             0x685E
#define GINDEX_685F             0x685F
#define GINDEX_6860             0x6860
#define GINDEX_6861             0x6861
#define GINDEX_6862             0x6862
#define GINDEX_6863             0x6863
#define GINDEX_6864             0x6864
#define GINDEX_6865             0x6865
#define GINDEX_6866             0x6866
#define GINDEX_6867             0x6867
#define GINDEX_6868             0x6868
#define GINDEX_6869             0x6869
#define GINDEX_686A             0x686A
#define GINDEX_6877             0x6877
#define GINDEX_6878             0x6878
#define GINDEX_6879             0x6879
#define GINDEX_687A             0x687A
#define GINDEX_687B             0x687B
#define GINDEX_687C             0x687C
#define GINDEX_687D             0x687D
#define GINDEX_6881             0x6881
#define GINDEX_6882             0x6882
#define GINDEX_6883             0x6883
#define GINDEX_6884             0x6884
#define GINDEX_6885             0x6885
#define GINDEX_6886             0x6886
#define GINDEX_6887             0x6887
#define GINDEX_6888             0x6888
#define GINDEX_6889             0x6889
#define GINDEX_688A             0x688A
#define GINDEX_688B             0x688B
#define GINDEX_688C             0x688C
#define GINDEX_688D             0x688D
#define GINDEX_688E             0x688E
#define GINDEX_688F             0x688F
#define GINDEX_6890             0x6890
#define GINDEX_6891             0x6891
#define GINDEX_6892             0x6892
#define GINDEX_6893             0x6893
#define GINDEX_6894             0x6894
#define GINDEX_689B             0x689B
#define GINDEX_68A3             0x68A3
#define GINDEX_68A4             0x68A4
#define GINDEX_68A5             0x68A5
#define GINDEX_68A6             0x68A6
#define GINDEX_68AA             0x68AA
#define GINDEX_68AB             0x68AB
#define GINDEX_68AC             0x68AC
#define GINDEX_68B7             0x68B7
#define GINDEX_68B8             0x68B8
#define GINDEX_68B9             0x68B9
#define GINDEX_68BE             0x68BE
#define GINDEX_68BF             0x68BF
#define GINDEX_68C0             0x68C0
#define GINDEX_68C1             0x68C1
#define GINDEX_68C2             0x68C2
#define GINDEX_68C3             0x68C3
#define GINDEX_68C4             0x68C4
#define GINDEX_68C5             0x68C5
#define GINDEX_68C6             0x68C6
#define GINDEX_68CF             0x68CF
#define GINDEX_68D2             0x68D2
#define GINDEX_68D3             0x68D3
#define GINDEX_68D4             0x68D4
#define GINDEX_68D5             0x68D5
#define GINDEX_68D6             0x68D6
#define GINDEX_68D7             0x68D7
#define GINDEX_68DA             0x68DA
#define GINDEX_68DB             0x68DB
#define GINDEX_68E1             0x68E1
#define GINDEX_6903             0x6903
#define GINDEX_6904             0x6904
#define GINDEX_6905             0x6905
#define GINDEX_6906             0x6906
#define GINDEX_6907             0x6907
#define GINDEX_6908             0x6908
#define GINDEX_6909             0x6909
#define GINDEX_690A             0x690A
#define GINDEX_690B             0x690B
#define GINDEX_690C             0x690C
#define GINDEX_690D             0x690D
#define GINDEX_690E             0x690E
#define GINDEX_6920             0x6920

#define GINDEX_BLACKBAR 0x8000

#endif
