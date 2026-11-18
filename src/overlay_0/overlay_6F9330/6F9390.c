#include "common.h"
#include "actor.h"
#include "save_file.h"
#include "marina_effect.h"
#include "marina_grab.h"
#include "8F080.h"
#include "dialog.h"
#include "debug.h"
#include "BGM.h"
#include "asset_loader.h"
#include "graphicIndex.h"
#include "frontend.h"
#include "241E0.h"
#include "28EF0.h"
#include "66250.h"
#include "7D8E0.h"
#include "80D90.h"
#include "84BB0.h"
#include "graphics_memory.h"
#include "rle.h"
#include "SFX.h"
#include "stage_tilemap.h"

typedef struct {
    u16 x;
    u16 y;
    s16 z;
} EndingActorPosition;

extern u16* D_800D18A4[];
extern s16 D_800D2918;
extern s16 D_800D291C;
extern s16 D_800D2920;
extern s16 D_800D75D8[];
extern s8 D_800D76D8[];
extern u16 D_800D85A8[];
extern s16 D_800E14C8[];
extern s16 D_800E151C[];
extern s16 D_800E15C4[];
extern s16 D_800E1604[];
extern s16 D_800E1728[];
extern s16 D_800E1750[];
extern s16 D_800E176C[];
extern s16 D_800E17F8[];
extern s16 D_800E1D30[];
extern s16 D_800E2274[];
extern s16 D_800E22A8[];
extern s16 D_800E22B4[];
extern s16 D_800E5E48[];
extern u16 D_800E89D4[];
extern u16 D_800E8E7C[];
extern u16 D_800E8E98[];

void func_80193C58_6FAEE8(u16 actor_index);
void func_8019451C_6FB7AC(u16 actor_index);
void func_801945C0_6FB850(u16 actor_index);
void func_801959B8_6FCC48(u16 actor_index);
void func_80195F64_6FD1F4(u16 actor_index);
void func_801963D4_6FD664(u16 actor_index);
void func_801969EC_6FDC7C(u16 actor_index);
void func_80196C3C_6FDECC(u16 actor_index);
void func_80196E08_6FE098(u16 actor_index);
void func_80197168_6FE3F8(u16 actor_index);
void func_80197484_6FE714(u16 actor_index);
void func_80197784_6FEA14(u16 actor_index);
void func_80197964_6FEBF4(u16 actor_index);
void func_80197B44_6FEDD4(u16 actor_index);
void func_80198654_6FF8E4(u16 actor_index);
void func_801989AC_6FFC3C(u16 actor_index);
void func_80198B18_6FFDA8(u16 actor_index);
void func_801992C4_700554(u16 actor_index);
void func_80199424_7006B4(u16 actor_index);
void func_801994E4_700774(u16 actor_index);
void func_80199704_700994(u16 actor_index);
void func_80199C98_700F28(u16 actor_index);
void func_80199D20_700FB0(u16 actor_index);
void func_80199F08_701198(u16 actor_index);
void func_8019A0B8_701348(u16 actor_index);
void func_8019A250_7014E0(u16 actor_index);
void func_8019A3A8_701638(u16 actor_index);
void func_8019A520_7017B0(u16 actor_index);
void func_8019A940_701BD0(u16 actor_index);
void func_8019A9C0_701C50(u16 actor_index);
void func_8019ABB0_701E40(u16 actor_index);
void func_8019ACFC_701F8C(u16 actor_index);
void func_8019AE98_702128(u16 actor_index);
void func_8019AFA4_702234(u16 actor_index);
void func_8019B108_702398(u16 actor_index);
void func_8019B590_702820(u16 actor_index);
void func_8019B604_702894(u16 actor_index);
void func_8019B678_702908(u16 actor_index);
void func_8019B874_702B04(u16 actor_index);
void func_8019BA10_702CA0(u16 actor_index);
void func_8019BB98_702E28(u16 actor_index);
void func_8019C1C0_703450(u16 actor_index);
void func_8019C714_7039A4(u16 actor_index);
void func_8019C880_703B10(u16 actor_index);
void func_8019C980_703C10(u16 actor_index);
void func_8019CA18_703CA8(u16 actor_index);
void func_8019CDEC_70407C(u16 actor_index);
void func_8019D5E0_704870(u16 actor_index);
void func_8019D758_7049E8(u16 actor_index);
void func_8019D7E8_704A78(u16 actor_index);
void func_8019D854_704AE4(u16 actor_index);
void func_8019D91C_704BAC(u16 actor_index);
void func_8019DC4C_704EDC(u16 actor_index);
void func_8019E0C0_705350(u16 actor_index);
void func_8019E13C_7053CC(u16 actor_index);
void func_8019E1CC_70545C(u16 actor_index);
void func_8019E338_7055C8(u16 actor_index);
void func_8019EA70_705D00(u16 actor_index);
void func_8019EB2C_705DBC(u16 actor_index);
void func_8019EBBC_705E4C(u16 actor_index);
void func_8019EC28_705EB8(u16 actor_index);
void func_8019ECF0_705F80(u16 actor_index);
void func_8019F174_706404(u16 actor_index);
void func_8019F21C_7064AC(u16 actor_index);
void func_8019F608_706898(u16 actor_index);
void func_8019F704_706994(u16 actor_index);
void func_8019F770_706A00(u16 actor_index);
void func_8019F834_706AC4(u16 actor_index);
void func_8019FEF8_707188(u16 actor_index);
void func_801A07D4_707A64(u16 actor_index);
void func_801A12A8_708538(u16 actor_index);
void func_801A131C_7085AC(u16 actor_index);
void func_801A13A4_708634(u16 actor_index);
void func_801A1554_7087E4(u16 actor_index);
void func_801A34C0_70A750(u16 actor_index);
void func_801A4330_70B5C0(u16 actor_index);
void func_801A4424_70B6B4(u16 actor_index);
void func_801A4510_70B7A0(u16 actor_index);
void func_801A4634_70B8C4(u16 actor_index);
void func_801A47C4_70BA54(u16 actor_index);
void func_801A4AE8_70BD78(u16 actor_index);
void func_801A4FA4_70C234(u16 actor_index);
void func_801A59A8_70CC38(u16 actor_index);
void func_801A5A9C_70CD2C(u16 actor_index);
void func_801A5B60_70CDF0(u16 actor_index);
void func_801A5C4C_70CEDC(u16 actor_index);
void func_801A6808_70DA98(u16 actor_index);
void func_801A68FC_70DB8C(u16 actor_index);
void func_801A7110_70E3A0(u16 actor_index);
void func_801A76E0_70E970(u16 actor_index);
void func_801A77D4_70EA64(u16 actor_index);
void func_801A797C_70EC0C(u16 actor_index);
void func_801A7B2C_70EDBC(u16 actor_index);
void func_801A7D34_70EFC4(u16 actor_index);
void func_801A81E0_70F470(u16 actor_index);
void func_801A85E4_70F874(u16 actor_index);

s32 D_801AC370_713600;
u16 D_801AC374_713604;
s32 D_801AC378_713608;
s32 D_801AC37C_71360C;
s32 D_801AC380_713610;
u16 D_801AC384_713614;
u16 D_801AC386_713616;
u16 D_801AC388_713618;
u16 D_801AC38A_71361A;
s32 D_801AC38C_71361C;
s32 D_801AC390_713620;
s32 D_801AC394_713624;
u16 D_801AC398_713628;
u16 D_801AC39A_71362A;
u16 D_801AC39C_71362C;
u16 D_801AC39E_71362E;
u16 D_801AC3A0_713630;
s16 D_801AC3A2_713632;
s16 D_801AC3A4_713634;
s16 D_801AC3A6_713636;
s8 D_801AC3A8_713638;

u16 D_801AA070_711300 = 0;
u16 D_801AA074_711304 = 0;
u16 D_801AA078_711308 = 0;
u16 D_801AA07C_71130C = 0;
u16 D_801AA080_711310 = 0;
u16 D_801AA084_711314 = 0;

char gCreditsStrTotalDirected[] = "Total Directed";
char gCreditsStrHideyukiSuganami[] = "Hideyuki Suganami";
char gCreditsStrBasedStoryWrite[] = "Based Story Write";
char gCreditsStrFinalNami1[] = "FINAL/NAMI";
char gCreditsStrBasedGameDesign[] = "Based Game Design";
char gCreditsStrChocoMonkey[] = "CHOCO-MONKEY";
char gCreditsStrEnemiesProgrammes[] = "Enemies Programmes";
char gCreditsStrStagebossProgrammes[] = "Stageboss Programmes";
char gCreditsStrFinalNami2[] = "FINAL/NAMI";
char gCreditsStrMainProgrammer[] = "Main Programmer";
char gCreditsStrMasatoMaegawa1[] = "Masato Maegawa";
char gCreditsStrTinyProgrammer[] = "Tiny Programmer";
char gCreditsStrFukuryu[] = "Fukuryu";
char gCreditsStrProgrammer1[] = "Programmer";
char gCreditsStrHiroshiMatsumoto[] = "Hiroshi Matsumoto";
char gCreditsStrProgrammer2[] = "Programmer";
char gCreditsStrMitsuna[] = "Mitsuna";
char gCreditsStrProgramAssist1[] = "Program Assist";
char gCreditsStrKonigIshida[] = "KONIG Ishida";
char gCreditsStrProgramAssist2[] = "Program Assist";
char gCreditsStrKeijiFujita[] = "Keiji Fujita";
char gCreditsStrMainGraphic[] = "Main Graphic";
char gCreditsStrMakotoOgino[] = "Makoto Ogino";
char gCreditsStrCharacterDesign[] = "Character Design";
char gCreditsStrHan[] = "HAN";
char gCreditsStrGraphicAssist1[] = "Graphic Assist";
char gCreditsStrNobuhisaTanaka[] = "Nobuhisa Tanaka";
char gCreditsStrGraphicAssist2[] = "Graphic Assist";
char gCreditsStrSeijiHasuko[] = "Seiji Hasuko";
char gCreditsStrGraphicAssist3[] = "Graphic Assist";
char gCreditsStrKanameShindoh[] = "Kaname Shindoh";
char gCreditsStrGraphicAssist4[] = "Graphic Assist";
char gCreditsStrTsunehisaKanagae[] = "Tsunehisa Kanagae";
char gCreditsStrMusicBy[] = "Music by";
char gCreditsStrNon[] = "NON";
char gCreditsStrSoundEffect[] = "Sound Effect";
char gCreditsStrSatoshiMurata[] = "Satoshi Murata";
char gCreditsStrTreasurer[] = "Treasurer";
char gCreditsStrHarukoHosaka[] = "Haruko Hosaka";
char gCreditsStrSupervisor[] = "Supervisor";
char gCreditsStrMasatoMaegawa2[] = "Masato Maegawa";
char gCreditsStrBackgroundCG[] = "Background CG";
char gCreditsStrMasahiroKatsuta[] = "Masahiro Katsuta";
char gCreditsStrMamikoHimuro[] = "Mamiko Himuro";
char gCreditsStrSatoshiTsukamoto[] = "Satoshi Tsukamoto";
char gCreditsStrHitoshiSuenaga[] = "Hitoshi Suenaga";
char gCreditsStrSatoruOnishi[] = "Satoru Onishi";
char gCreditsStrArtwork[] = "Artwork";
char gCreditsStrNaokiOishi[] = "Naoki Oishi";
char gCreditsStrTakashiOtsuka[] = "Takashi Otsuka";
char gCreditsStrPublicity[] = "Publicity";
char gCreditsStrYoshihisaSaitoh[] = "Yoshihisa Saitoh";
char gCreditsStrHidekiYamamoto[] = "Hideki Yamamoto";
char gCreditsStrSpecialThanks[] = "Special Thanks";
char gCreditsStrHiroomiTanaka[] = "Hiroomi Tanaka";
char gCreditsStrKoichiIwase[] = "Koichi Iwase";
char gCreditsStrKanIkeda[] = "Kan Ikeda";
char gCreditsStrKazunoriOowada[] = "Kazunori Oowada";
char gCreditsStrMarikoNumajiri[] = "Mariko Numajiri";
char gCreditsStrRyomaNakamura[] = "Ryoma Nakamura";
char gCreditsStrTomoeSuzuki[] = "Tomoe Suzuki";
char gCreditsStrTsuyoshiKoyama[] = "Tsuyoshi Koyama";
char gCreditsStrYoukoKagaya[] = "Youko Kagaya";
char gCreditsStrWataruHarashima[] = "Wataru Harashima";
char gCreditsStrKyoheiNakaguma[] = "Kyohei Nakaguma";
char gCreditsStrMasahiroAkagi[] = "Masahiro Akagi";
char gCreditsStrMasahiroKobayashi[] = "Masahiro Kobayashi";
char gCreditsStrRyuAmimoto[] = "Ryu Amimoto";
char gCreditsStrShouyaAkagi[] = "Shouya Akagi";
char gCreditsStrTaroFutami[] = "Taro Futami";
char gCreditsStrTatsuyaKiuchi[] = "Tatsuya Kiuchi";
char gCreditsStrTechnicalSupport[] = "Technical Support";
char gCreditsStrSadaoYahagi[] = "Sadao Yahagi";
char gCreditsStrKenjiroKano[] = "Kenjiro Kano";
char gCreditsStrQualityCoordinator[] = "Quality Coordinator";
char gCreditsStrHiroshiSato[] = "Hiroshi Sato";
char gCreditsStrEnixStaff[] = "Enix Staff";
char gCreditsStrYoshinoriYamagishi[] = "Yoshinori Yamagishi";
char gCreditsStrShinjiFutami[] = "Shinji Futami";
char gCreditsStrYasuhitoWatanabe[] = "Yasuhito Watanabe";
char gCreditsStrJunToda[] = "Jun Toda";
char gCreditsStrHirokiFujimoto[] = "Hiroki Fujimoto";
char gCreditsStrYousukeSaito[] = "Yousuke Saito";
char gCreditsStrDaisukeKobayashi[] = "Daisuke Kobayashi";
char gCreditsStrEtsukoShimamura[] = "Etsuko Shimamura";
char gCreditsStrNorikoNakanome[] = "Noriko Nakanome";
char gCreditsStrAssistantProducer[] = "Assistant Producer";
char gCreditsStrShinjiWachi[] = "Shinji Wachi";
char gCreditsStrProducer[] = "Producer";
char gCreditsStrYuuchiKikumoto[] = "Yuuchi Kikumoto";
char gCreditsStrExecutiveProducer1[] = "Executive Producer";
char gCreditsStrKeijiHonda[] = "Keiji Honda";
char gCreditsStrExecutiveProducer2[] = "Executive Producer";
char gCreditsStrYukinobuChida[] = "Yukinobu Chida";
char gCreditsStrPublisher[] = "Publisher";
char gCreditsStrYasuhiroFukushima[] = "Yasuhiro Fukushima";
char gCreditsStrUSCoordinationAndTranslation[] = "U.S. Coordination and Translation";
char gCreditsStrHiroNakamura[] = "Hiro Nakamura";
char gCreditsStrChristianPhillips[] = "Christian Phillips";
char gCreditsStrThankYouForPlaying[] = "THANK YOU FOR PLAYING.";
char gCreditsStrCopyright[] = "@1997 TREASURE/ENIX";

char* gCreditsText[] = {
    gCreditsStrTotalDirected, gCreditsStrHideyukiSuganami, gCreditsStrBasedStoryWrite, gCreditsStrFinalNami1,
    gCreditsStrBasedGameDesign, gCreditsStrChocoMonkey, gCreditsStrEnemiesProgrammes, gCreditsStrStagebossProgrammes,
    gCreditsStrFinalNami2, gCreditsStrMainProgrammer, gCreditsStrMasatoMaegawa1, gCreditsStrTinyProgrammer,
    gCreditsStrFukuryu, gCreditsStrProgrammer1, gCreditsStrHiroshiMatsumoto, gCreditsStrProgrammer2,
    gCreditsStrMitsuna, gCreditsStrProgramAssist1, gCreditsStrKonigIshida, gCreditsStrProgramAssist2,
    gCreditsStrKeijiFujita, gCreditsStrMainGraphic, gCreditsStrMakotoOgino, gCreditsStrCharacterDesign,
    gCreditsStrHan, gCreditsStrGraphicAssist1, gCreditsStrNobuhisaTanaka, gCreditsStrGraphicAssist2,
    gCreditsStrSeijiHasuko, gCreditsStrGraphicAssist3, gCreditsStrKanameShindoh, gCreditsStrGraphicAssist4,
    gCreditsStrTsunehisaKanagae, gCreditsStrMusicBy, gCreditsStrNon, gCreditsStrSoundEffect,
    gCreditsStrSatoshiMurata, gCreditsStrTreasurer, gCreditsStrHarukoHosaka, gCreditsStrSupervisor,
    gCreditsStrMasatoMaegawa2, gCreditsStrBackgroundCG, gCreditsStrMasahiroKatsuta, gCreditsStrMamikoHimuro,
    gCreditsStrSatoshiTsukamoto, gCreditsStrHitoshiSuenaga, gCreditsStrSatoruOnishi, gCreditsStrArtwork,
    gCreditsStrNaokiOishi, gCreditsStrTakashiOtsuka, gCreditsStrPublicity, gCreditsStrYoshihisaSaitoh,
    gCreditsStrHidekiYamamoto, gCreditsStrSpecialThanks, gCreditsStrHiroomiTanaka, gCreditsStrKoichiIwase,
    gCreditsStrKanIkeda, gCreditsStrKazunoriOowada, gCreditsStrMarikoNumajiri, gCreditsStrRyomaNakamura,
    gCreditsStrTomoeSuzuki, gCreditsStrTsuyoshiKoyama, gCreditsStrYoukoKagaya, gCreditsStrWataruHarashima,
    gCreditsStrKyoheiNakaguma, gCreditsStrMasahiroAkagi, gCreditsStrMasahiroKobayashi, gCreditsStrRyuAmimoto,
    gCreditsStrShouyaAkagi, gCreditsStrTaroFutami, gCreditsStrTatsuyaKiuchi, gCreditsStrTechnicalSupport,
    gCreditsStrSadaoYahagi, gCreditsStrKenjiroKano, gCreditsStrQualityCoordinator, gCreditsStrHiroshiSato,
    gCreditsStrEnixStaff, gCreditsStrYoshinoriYamagishi, gCreditsStrShinjiFutami, gCreditsStrYasuhitoWatanabe,
    gCreditsStrJunToda, gCreditsStrHirokiFujimoto, gCreditsStrYousukeSaito, gCreditsStrDaisukeKobayashi,
    gCreditsStrEtsukoShimamura, gCreditsStrNorikoNakanome, gCreditsStrAssistantProducer, gCreditsStrShinjiWachi,
    gCreditsStrProducer, gCreditsStrYuuchiKikumoto, gCreditsStrExecutiveProducer1, gCreditsStrKeijiHonda,
    gCreditsStrExecutiveProducer2, gCreditsStrYukinobuChida, gCreditsStrPublisher, gCreditsStrYasuhiroFukushima,
    gCreditsStrUSCoordinationAndTranslation, gCreditsStrHiroNakamura, gCreditsStrChristianPhillips, gCreditsStrThankYouForPlaying,
    gCreditsStrCopyright,
};

u16 D_801AA87C_711B0C[] = {
    0x8004, 0x8200, 0x8100, 0x8201,
    0x8104, 0x8004, 0x8202, 0x8100,
    0x8203, 0x8104, 0x8004, 0x8204,
    0x8100, 0x8205, 0x8104, 0x8003,
    0x8206, 0x8207, 0x8100, 0x8208,
    0x8104, 0x8004, 0x8209, 0x8100,
    0x820A, 0x8104, 0x8004, 0x820B,
    0x8100, 0x820C, 0x8104, 0x8004,
    0x820D, 0x8100, 0x820E, 0x8104,
    0x8004, 0x820F, 0x8100, 0x8210,
    0x8104, 0x8004, 0x8211, 0x8100,
    0x8212, 0x8104, 0x8004, 0x8213,
    0x8100, 0x8214, 0x8104, 0x8004,
    0x8215, 0x8100, 0x8216, 0x8104,
    0x8004, 0x8217, 0x8100, 0x8218,
    0x8104, 0x8004, 0x8219, 0x8100,
    0x821A, 0x8104, 0x8004, 0x821B,
    0x8100, 0x821C, 0x8104, 0x8004,
    0x821D, 0x8100, 0x821E, 0x8104,
    0x8004, 0x821F, 0x8100, 0x8220,
    0x8104, 0x8004, 0x8221, 0x8100,
    0x8222, 0x8104, 0x8004, 0x8223,
    0x8100, 0x8224, 0x8104, 0x8004,
    0x8225, 0x8100, 0x8226, 0x8104,
    0x8004, 0x8227, 0x8100, 0x8228,
    0x8101, 0x8114, 0x8004, 0x8229,
    0x8100, 0x811E, 0x8115, 0x811D,
    0x822A, 0x8104, 0x811F, 0x8116,
    0x811C, 0x8005, 0x822B, 0x8104,
    0x811F, 0x8117, 0x811D, 0x8005,
    0x822C, 0x8104, 0x811F, 0x8116,
    0x811C, 0x8005, 0x822D, 0x8104,
    0x811F, 0x8117, 0x811A, 0x811B,
    0x8005, 0x822E, 0x8104, 0x8115,
    0x8114, 0x8004, 0x822F, 0x8100,
    0x811E, 0x8115, 0x811D, 0x8230,
    0x8104, 0x811F, 0x8116, 0x811A,
    0x811B, 0x8005, 0x8231, 0x8104,
    0x8115, 0x8114, 0x8004, 0x8232,
    0x8100, 0x811E, 0x8115, 0x811D,
    0x8233, 0x8104, 0x811F, 0x8116,
    0x811A, 0x811B, 0x8005, 0x8234,
    0x8104, 0x8115, 0x8114, 0x8004,
    0x8235, 0x8100, 0x811E, 0x8115,
    0x811D, 0x8236, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x8237,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x8238, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x8239,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x823A, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x823B,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x823C, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x823D,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x823E, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x823F,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x8240, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x8241,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x8242, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x8243,
    0x8104, 0x811F, 0x8117, 0x811D,
    0x8005, 0x8244, 0x8104, 0x811F,
    0x8116, 0x811C, 0x8005, 0x8245,
    0x8104, 0x811F, 0x8117, 0x811A,
    0x811B, 0x8005, 0x8246, 0x8104,
    0x8115, 0x8114, 0x8004, 0x8247,
    0x8100, 0x811E, 0x8115, 0x811D,
    0x8248, 0x8104, 0x811F, 0x8116,
    0x811A, 0x811B, 0x8005, 0x8249,
    0x8104, 0x8115, 0x8004, 0x824A,
    0x8100, 0x824B, 0x8104, 0x8114,
    0x8004, 0x824C, 0x8100, 0x811E,
    0x8115, 0x811D, 0x824D, 0x8104,
    0x811F, 0x8116, 0x811C, 0x8005,
    0x824E, 0x8104, 0x811F, 0x8117,
    0x811D, 0x8005, 0x824F, 0x8104,
    0x811F, 0x8116, 0x811C, 0x8005,
    0x8250, 0x8104, 0x811F, 0x8117,
    0x811D, 0x8005, 0x8251, 0x8104,
    0x811F, 0x8116, 0x811C, 0x8005,
    0x8252, 0x8104, 0x811F, 0x8117,
    0x811D, 0x8005, 0x8253, 0x8104,
    0x811F, 0x8116, 0x811C, 0x8005,
    0x8254, 0x8104, 0x811F, 0x8116,
    0x811A, 0x811B, 0x8005, 0x8255,
    0x8104, 0x8115, 0x8004, 0x8256,
    0x8100, 0x8257, 0x8104, 0x8004,
    0x8258, 0x8100, 0x8259, 0x8104,
    0x8004, 0x825A, 0x8100, 0x825B,
    0x8104, 0x8004, 0x825C, 0x8100,
    0x825D, 0x8104, 0x8004, 0x825E,
    0x8100, 0x825F, 0x8104, 0x8114,
    0x8004, 0x8260, 0x8100, 0x811E,
    0x8115, 0x811D, 0x8261, 0x8104,
    0x811F, 0x8116, 0x811A, 0x811B,
    0x8005, 0x8262, 0x8104, 0x8115,
    0x8005, 0x8263, 0x8104, 0x8120,
    0x8005, 0x8264, 0x8101, 0x0000,
};

u16* D_801AABAC_711E3C[] = {
    PALETTE_8022D4C8, PALETTE_8022D4C8, PALETTE_8022D4C8, PALETTE_8022D4E8,
    PALETTE_8022D4C8, PALETTE_8022D528, PALETTE_8022D548, PALETTE_8022D568,
    PALETTE_8022D4C8, D_800D84E8, D_800D8508, D_800D8528,
    D_800D8548, PALETTE_8022D4C8, PALETTE_8022D4C8, PALETTE_8022D4C8,
};

u16 D_801AABEC_711E7C[] = {
//  command  unk  unk  unk  timer
    1,       0,   0,   448, 0,
    3,       448, 768, 255, 120,
    0,
    0,
};

s16 D_801AAC04_711E94[] = {
//  graphic      timer
    GINDEX_5A9E, 3,
    GINDEX_5A9F, 3,
    GINDEX_5AA0, 3,
    GINDEX_5AA1, 3,
    GINDEX_5AA2, 3,
    GINDEX_5AA3, 3,
    GINDEX_5AA4, 3,
    GINDEX_5AA5, 3,
    GINDEX_5AA6, 3,
    GINDEX_5AA7, 3,
    GINDEX_5AA8, 3,
    GINDEX_5AA9, 3,
    -24,
};

u16 D_801AAC38_711EC8[] = {
//  command  unk  unk  unk  timer
    1,       448, 0,   0,   0,
    3,       448, 0,   0,   0,
    3,       448, 768, 0,   180,
    0,
};

u16* D_801AAC58_711EE8[] = {
    gTextPalettes[0], gTextPalettes[1], gTextPalettes[2], gTextPalettes[3],
    gTextPalettes[4], gTextPalettes[5], gTextPalettes[6], gTextPalettes[7],
};

u16 D_801AAC78_711F08[] = {
    ALPHA_EN3_UPPER_S, ALPHA_EN3_LOWER_U, ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_P, ALPHA_EN3_LOWER_R, ALPHA_EN3_LOWER_I, ALPHA_EN3_LOWER_S, ALPHA_EN3_LOWER_E, ALPHA_SPACE,
    ALPHA_SPACE,
};

u16 D_801AAC8C_711F1C[] = {
    ALPHA_EN3_UPPER_E, ALPHA_EN3_LOWER_N, ALPHA_EN3_LOWER_D, ALPHA_EN3_LOWER_I, ALPHA_EN3_LOWER_N, ALPHA_EN3_LOWER_G, ALPHA_SPACE,
    ALPHA_SPACE,
};

s16 D_801AAC9C_711F2C[] = {
//  graphic      timer
    GINDEX_4400, 12,
    GINDEX_4401, 8,
    GINDEX_4402, 12,
    GINDEX_4401, 8,
    -8,
};

s16 D_801AACB0_711F40[] = {
//  graphic      timer
    GINDEX_440D, 10,
    GINDEX_440E, 10,
    GINDEX_440F, 60,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 6,
    GINDEX_440F, 10,
    GINDEX_4410, 10,
    GINDEX_440F, 10,
    GINDEX_4410, 10,
    GINDEX_440F, 10,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 6,
    GINDEX_440F, 6,
    GINDEX_4410, 20,
    GINDEX_440F, 6,
    0,
};

s16 D_801AAD10_711FA0[] = {
//  graphic      timer
    GINDEX_440F, 10,
    GINDEX_440E, 10,
    GINDEX_440D, 10,
    GINDEX_4401, 2,
    GINDEX_4402, 2,
    -4,
};

s16 D_801AAD28_711FB8[] = {
//  graphic      timer
    GINDEX_4034, 20,
    GINDEX_4035, 20,
    0,
};

s16 D_801AAD34_711FC4[] = {
//  graphic      timer
    GINDEX_4C00, 12,
    GINDEX_4C01, 8,
    GINDEX_4C02, 12,
    GINDEX_4C01, 8,
    -8,
};

s16 D_801AAD48_711FD8[] = {
//  graphic      timer
    GINDEX_4C0D, 10,
    GINDEX_4C0E, 10,
    GINDEX_4C0F, 60,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 10,
    GINDEX_4C0F, 10,
    GINDEX_4C10, 10,
    GINDEX_4C0F, 10,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 6,
    GINDEX_4C0F, 6,
    GINDEX_4C10, 20,
    GINDEX_4C0F, 6,
    0,
    0,
    GINDEX_4C11, 10,
    GINDEX_4C12, 10,
    GINDEX_4C13, 10,
    GINDEX_4C14, 10,
    GINDEX_4C15, 10,
    0,
};

s16 D_801AADC0_712050[] = {
//  graphic      timer
    GINDEX_4C0E, 10,
    GINDEX_4C0D, 10,
    GINDEX_4C02, 2,
    GINDEX_4C01, 2,
    -4,
    0,
    GINDEX_6000, 12,
    GINDEX_6001, 8,
    GINDEX_6002, 8,
    GINDEX_6003, 12,
    GINDEX_6002, 8,
    GINDEX_6001, 8,
    -12,
};

s16 D_801AADF0_712080[] = {
//  graphic      timer
    GINDEX_603E, 8,
    GINDEX_603F, 8,
    GINDEX_6040, 8,
    GINDEX_601C, 8,
    GINDEX_601D, 8,
    0,
};

s16 D_801AAE08_712098[] = {
//  graphic      timer
    GINDEX_601D, 8,
    GINDEX_601C, 8,
    GINDEX_6040, 8,
    0,
};

u16 D_801AAE18_7120A8[] = {
    ALPHA_EN2_UPPER_A, ALPHA_EN2_LOWER_T, ALPHA_SPACE,
    ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_S, ALPHA_EN2_LOWER_T, ALPHA_SPACE,
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_Y, ALPHA_SPACE,
    ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_L, ALPHA_SPACE,
    ALPHA_EN2_LOWER_B, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_M, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_U, ALPHA_EN2_LOWER_M, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_N, ALPHA_EN2_EXCLAMATION, ALPHA_EN2_EXCLAMATION, ALPHA_NULL,
};

u16 D_801AAE58_7120E8[] = {
    ALPHA_EN2_UPPER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_Y, ALPHA_SPACE,
    ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_G, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_N, ALPHA_SPACE,
    ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_N, ALPHA_SPACE,
    ALPHA_EN2_LOWER_B, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_E, ALPHA_EN2_COMMA, ALPHA_NULL,
};

u16 D_801AAE98_712128[] = {
    ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_D, ALPHA_SPACE,
    ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_Y, ALPHA_EN2_COMMA, ALPHA_NULL,
};

u16 D_801AAEAC_71213C[] = {
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_UPPER_O, ALPHA_EN2_UPPER_R, ALPHA_EN2_UPPER_I, ALPHA_EN2_UPPER_G, ALPHA_EN2_UPPER_I, ALPHA_EN2_UPPER_N, ALPHA_EN2_UPPER_A, ALPHA_EN2_UPPER_L, ALPHA_SPACE,
    ALPHA_EN2_UPPER_B, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_S, ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_T,
    ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_R, ALPHA_EN2_EXCLAMATION, ALPHA_EN2_EXCLAMATION, ALPHA_NULL,
};

u16 D_801AAEE0_712170[] = {
    ALPHA_EN2_UPPER_W, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_R, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_V, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_R, ALPHA_SPACE,
    ALPHA_EN2_LOWER_V, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_S, ALPHA_SPACE,
    ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_P, ALPHA_EN2_LOWER_P, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_R, ALPHA_EN2_COMMA, ALPHA_NULL,
};

u16 D_801AAF14_7121A4[] = {
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_Y, ALPHA_EN2_APOSTROPHE, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_L, ALPHA_SPACE,
    ALPHA_EN2_LOWER_B, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_R, ALPHA_EN2_LOWER_E, ALPHA_EN2_PERIOD, ALPHA_NULL,
};

u16 D_801AAF38_7121C8[] = {
    ALPHA_EN2_UPPER_U, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_L, ALPHA_SPACE,
    ALPHA_EN2_LOWER_P, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_V, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_R, ALPHA_EN2_LOWER_S, ALPHA_SPACE,
    ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_E, ALPHA_SPACE,
    ALPHA_EN2_LOWER_P, ALPHA_EN2_LOWER_L, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_N, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_T, ALPHA_EN2_PERIOD, ALPHA_NULL,
};

u16 D_801AAF78_712208[] = {
    ALPHA_EN2_UPPER_F, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_G, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_T, ALPHA_EN2_EXCLAMATION, ALPHA_SPACE,
    ALPHA_EN2_UPPER_M, ALPHA_EN2_LOWER_I, ALPHA_EN2_LOWER_G, ALPHA_EN2_LOWER_H, ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_Y, ALPHA_SPACE,
    ALPHA_EN2_UPPER_B, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_A, ALPHA_EN2_LOWER_S, ALPHA_EN2_LOWER_T, ALPHA_EN2_LOWER_E, ALPHA_EN2_LOWER_C, ALPHA_EN2_LOWER_T,
    ALPHA_EN2_LOWER_O, ALPHA_EN2_LOWER_R, ALPHA_EN2_EXCLAMATION, ALPHA_EN2_EXCLAMATION, ALPHA_NULL,
};

u16 D_801AAFB0_712240[] = {
    GINDEX_180E, GINDEX_1810, GINDEX_1812, GINDEX_1814,
    0x0000, GINDEX_1816, GINDEX_1818, GINDEX_181A,
    GINDEX_181C, 0x0000, 0x0000, 0x0001,
};

s16 D_801AAFC8_712258[] = {
//  graphic      timer
    GINDEX_5A60, 2,
    GINDEX_5A61, 2,
    GINDEX_5A62, 2,
    GINDEX_5A63, 2,
    GINDEX_5A64, 2,
    GINDEX_5A65, 2,
    GINDEX_5A66, 2,
    0,
};

s16 D_801AAFE8_712278[] = {
//  graphic      timer
    GINDEX_5861, 6,
    GINDEX_5862, 6,
    GINDEX_5863, 6,
    GINDEX_5864, 6,
    GINDEX_5864, 6,
    GINDEX_5863, 6,
    GINDEX_5862, 6,
    GINDEX_5861, 6,
    -16,
};

s16 D_801AB00C_71229C[] = {
//  graphic      timer
    GINDEX_5A58, 6,
    GINDEX_5A59, 5,
    GINDEX_5A5A, 4,
    GINDEX_5A5B, 5,
    GINDEX_5A5C, 6,
    GINDEX_5A5D, 5,
    GINDEX_5A5E, 4,
    GINDEX_5A5F, 5,
    -16,
};

// "いくぞよ"/"Let's go!"
u16 D_801AB030_7122C0[] = {
    ALPHA_JP_HIRA_I, ALPHA_JP_HIRA_KU, ALPHA_JP_HIRA_ZO, ALPHA_JP_HIRA_YO, ALPHA_NULL,
};

// "ドキドキ"/"Thump-thump"
u16 D_801AB03C_7122CC[] = {
    ALPHA_JP_KATA_DO, ALPHA_JP_KATA_KI, ALPHA_JP_KATA_DO, ALPHA_JP_KATA_KI, ALPHA_NULL,
};

s16 D_801AB048_7122D8[] = {
//  offset  timer
    0x0015, 3,
    0x0003, 2,
    0x0012, 2,
    -4,
};

s16 D_801AB058_7122E8[] = {
//  graphic      timer
    GINDEX_5896, 2,
    GINDEX_5897, 2,
    GINDEX_5898, 2,
    GINDEX_5899, 2,
    GINDEX_589A, 2,
    GINDEX_589B, 2,
    GINDEX_589C, 2,
    GINDEX_589D, 2,
    GINDEX_589D, 2,
    GINDEX_589C, 2,
    GINDEX_589B, 2,
    GINDEX_589A, 2,
    GINDEX_5899, 2,
    GINDEX_5898, 2,
    GINDEX_5897, 2,
    GINDEX_5896, 2,
    -32,
};

s16 D_801AB09C_71232C[] = {
//  graphic      timer
    GINDEX_584B, 2,
    GINDEX_5845, 2,
    GINDEX_5846, 2,
    GINDEX_5847, 2,
    GINDEX_5848, 10,
    0,
};

u16 D_801AB0B4_712344[] = {
    0x0200, 0x4200, 0x1210, 0x7210,
    0x6220, 0x3220, 0x5220, 0x5900,
    0x2230, 0x0000,
};

s16 D_801AB0C8_712358[] = {
//  graphic      timer
    GINDEX_500D, 6,
    GINDEX_500E, 6,
    GINDEX_500F, 6,
    GINDEX_5010, 6,
    GINDEX_5011, 6,
    GINDEX_5012, 6,
    GINDEX_5013, 6,
    GINDEX_5014, 6,
    -16,
};

s16 D_801AB0EC_71237C[] = {
//  graphic      timer
    GINDEX_580D, 3,
    GINDEX_580E, 2,
    GINDEX_580F, 2,
    GINDEX_5810, 2,
    GINDEX_5811, 2,
    GINDEX_5812, 2,
    GINDEX_5813, 2,
    GINDEX_5814, 2,
    GINDEX_5815, 3,
    GINDEX_5816, 2,
    GINDEX_5817, 2,
    GINDEX_5818, 2,
    GINDEX_5819, 2,
    GINDEX_581A, 2,
    GINDEX_581B, 2,
    GINDEX_581C, 2,
    -32,
};

s16 D_801AB130_7123C0[] = {
//  graphic      timer
    GINDEX_6813, 4,
    GINDEX_6814, 4,
    GINDEX_6815, 4,
    GINDEX_6816, 4,
    GINDEX_6817, 4,
    GINDEX_6818, 4,
    GINDEX_6819, 4,
    GINDEX_6914, 4,
    GINDEX_6915, 4,
    -2,
};

s16 D_801AB158_7123E8[] = {
//  graphic      timer
    GINDEX_6907, 4,
    GINDEX_6908, 4,
    GINDEX_6909, 4,
    GINDEX_690A, 5,
    GINDEX_690B, 6,
    GINDEX_690A, 5,
    GINDEX_6909, 4,
    GINDEX_6908, 4,
    GINDEX_6907, 4,
    GINDEX_6906, 4,
    GINDEX_6905, 4,
    GINDEX_6904, 5,
    GINDEX_6903, 6,
    GINDEX_6904, 5,
    GINDEX_6905, 4,
    GINDEX_6906, 4,
    0,
};

s16 D_801AB19C_71242C[] = {
//  graphic      timer
    GINDEX_68B3, 6,
    GINDEX_68B4, 6,
    -4,
};

s16 D_801AB1A8_712438[] = {
//  graphic      timer
    GINDEX_6921, 4,
    GINDEX_6920, 4,
    GINDEX_691F, 4,
    -2,
};

s16 D_801AB1B8_712448[] = {
//  graphic      timer
    GINDEX_691F, 4,
    GINDEX_6920, 4,
    GINDEX_6921, 4,
    0,
};

s16 D_801AB1C8_712458[] = {
//  graphic      timer
    GINDEX_684B, 4,
    GINDEX_684C, 4,
    0,
};

s16 D_801AB1D4_712464[] = {
//  graphic      timer
    GINDEX_690C, 5,
    GINDEX_690D, 7,
    GINDEX_690E, 10,
    GINDEX_690D, 7,
    0,
};

s16 D_801AB1E8_712478[] = {
//  graphic      timer
    GINDEX_6907, 2,
    GINDEX_6909, 2,
    GINDEX_690A, 8,
    GINDEX_690B, 2,
    0,
};

s16 D_801AB1FC_71248C[] = {
//  graphic      timer
    GINDEX_6813, 2,
    GINDEX_6814, 2,
    GINDEX_6815, 2,
    GINDEX_6816, 2,
    GINDEX_690F, 2,
    -2,
};

s16* D_801AB214_7124A4[] = {
    D_800E1700, D_800E1750, D_800E176C, D_800E17F8,
    D_800E2274, gGraphicListBlank, D_801AB130_7123C0, D_801AB158_7123E8,
    D_801AB1A8_712438, D_801AB19C_71242C, D_801AB1B8_712448, D_801AB1C8_712458,
    D_801AB1D4_712464, D_801AB1E8_712478, D_801AB1FC_71248C, D_800E1D0C,
    D_800E1728, D_800E19C0,
};

u16 D_801AB25C_7124EC[] = {
    GINDEX_0800, GINDEX_0802, GINDEX_0804, GINDEX_2012,
    GINDEX_2014, GINDEX_2016, GINDEX_2018, GINDEX_201A,
    GINDEX_201C, GINDEX_2008, GINDEX_200A, GINDEX_200C,
    GINDEX_200E, GINDEX_201E, GINDEX_2012, GINDEX_2014,
    GINDEX_2008, GINDEX_200A, GINDEX_200C, GINDEX_200E,
    GINDEX_2020, GINDEX_2010,
};

s16 D_801AB288_712518[] = {
//  graphic      timer
    GINDEX_0810, 8,
    GINDEX_0814, 4,
    GINDEX_0818, 8,
    GINDEX_0814, 4,
    -8,
};

s16 D_801AB29C_71252C[] = {
//  graphic      timer
    GINDEX_0812, 8,
    GINDEX_0816, 4,
    GINDEX_081A, 8,
    GINDEX_0816, 4,
    -8,
};

s16 D_801AB2B0_712540[] = {
//  graphic      timer
    GINDEX_580D, 3,
    GINDEX_580E, 2,
    GINDEX_580F, 2,
    GINDEX_5810, 2,
    GINDEX_5811, 2,
    GINDEX_5812, 2,
    GINDEX_5813, 2,
    GINDEX_5814, 2,
    GINDEX_5815, 3,
    GINDEX_5816, 2,
    GINDEX_5817, 2,
    GINDEX_5818, 2,
    GINDEX_5819, 2,
    GINDEX_581A, 2,
    GINDEX_581B, 2,
    GINDEX_581C, 2,
    -32,
};

s16 D_801AB2F4_712584[] = {
//  graphic      timer
    GINDEX_599D, 2,
    GINDEX_599E, 2,
    GINDEX_599F, 2,
    GINDEX_59A0, 6,
    GINDEX_59A1, 4,
    GINDEX_59A2, 3,
    GINDEX_59A3, 2,
    GINDEX_59A4, 4,
    0,
    0,
    GINDEX_5801, 3,
    GINDEX_5802, 3,
    GINDEX_5803, 3,
    GINDEX_5804, 3,
    GINDEX_5805, 3,
    GINDEX_5806, 3,
    GINDEX_5807, 3,
    GINDEX_5808, 3,
    GINDEX_5809, 3,
    GINDEX_580A, 3,
    GINDEX_580B, 3,
    GINDEX_580C, 3,
    -24,
    0,
    GINDEX_586C, 4,
    GINDEX_586D, 3,
    GINDEX_586E, 3,
    GINDEX_586F, 2,
    0,
};

EndingActorPosition D_801AB360_7125F0[] = {
    {1712, 303, 110},
    {1740, 303, 78},
    {1821, 303, 50},
    {1879, 303, 80},
    {1696, 303, -80},
    {1770, 303, -199},
    {1854, 303, -80},
    {1904, 303, -185},
};

Gfx D_801AB390_712620[] = {
    gsSPEndDisplayList(),
};

ActorFunc D_801AB398_712628[] = {
    func_80193C58_6FAEE8,
    func_801945C0_6FB850,
    func_80195F64_6FD1F4,
    func_80197168_6FE3F8,
    func_80198654_6FF8E4,
    func_801992C4_700554,
    func_801994E4_700774,
    func_80199704_700994,
    func_8019A0B8_701348,
    func_8019A3A8_701638,
    func_8019A520_7017B0,
    func_8019ACFC_701F8C,
    func_8019AFA4_702234,
    func_8019B108_702398,
    func_8019BA10_702CA0,
    func_8019C1C0_703450,
    func_8019CA18_703CA8,
    func_8019CDEC_70407C,
    func_8019DC4C_704EDC,
    func_8019E1CC_70545C,
    func_8019E338_7055C8,
    func_8019F21C_7064AC,
    func_8019FEF8_707188,
    func_801A07D4_707A64,
    func_801A34C0_70A750,
    func_801A4FA4_70C234,
    func_801A5C4C_70CEDC,
    func_801A7110_70E3A0,
    func_801A7D34_70EFC4,
    func_801959B8_6FCC48,
    func_8019F834_706AC4,
};

ActorFunc D_801AB414_7126A4[] = {
    func_801A85E4_70F874,
    NULL,
    NULL,
    NULL,
    func_80198654_6FF8E4,
};

ActorFunc D_801AB428_7126B8[] = {
    NULL,
    func_8019451C_6FB7AC,
    func_801963D4_6FD664,
    func_80197484_6FE714,
    func_801989AC_6FFC3C,
    func_80199424_7006B4,
    NULL,
    func_80199C98_700F28,
    func_8019A250_7014E0,
    NULL,
    func_8019A940_701BD0,
    func_8019AE98_702128,
    NULL,
    func_8019B590_702820,
    func_8019BB98_702E28,
    func_8019C714_7039A4,
    NULL,
    func_8019D5E0_704870,
    func_8019E0C0_705350,
    NULL,
    func_8019EA70_705D00,
    func_8019F608_706898,
    NULL,
    func_801A12A8_708538,
    func_801A4330_70B5C0,
    func_801A59A8_70CC38,
    func_801A6808_70DA98,
    func_801A76E0_70E970,
    NULL,
};

ActorFunc D_801AB49C_71272C[] = {
    NULL,
    NULL,
    func_801969EC_6FDC7C,
    func_80197784_6FEA14,
    func_80198B18_6FFDA8,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_8019A9C0_701C50,
    NULL,
    NULL,
    func_8019B604_702894,
    NULL,
    func_8019C880_703B10,
    NULL,
    func_8019D758_7049E8,
    func_8019E13C_7053CC,
    NULL,
    func_8019EB2C_705DBC,
    func_8019F704_706994,
    NULL,
    func_801A131C_7085AC,
    func_801A4424_70B6B4,
    func_801A5A9C_70CD2C,
    func_801A68FC_70DB8C,
    func_801A77D4_70EA64,
    func_801A81E0_70F470,
};

ActorFunc D_801AB510_7127A0[] = {
    NULL,
    NULL,
    func_80196C3C_6FDECC,
    func_80197964_6FEBF4,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_8019ABB0_701E40,
    NULL,
    NULL,
    func_8019B678_702908,
    NULL,
    func_8019C980_703C10,
    NULL,
    func_8019D7E8_704A78,
    func_8019EBBC_705E4C,
    NULL,
    func_8019EBBC_705E4C,
    func_8019F770_706A00,
    NULL,
    func_801A13A4_708634,
    func_801A4510_70B7A0,
    NULL,
    NULL,
    func_801A797C_70EC0C,
    NULL,
};

ActorFunc D_801AB584_712814[] = {
    NULL,
    NULL,
    func_80196E08_6FE098,
    func_80197B44_6FEDD4,
    NULL,
    NULL,
    NULL,
    func_80199D20_700FB0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_8019B874_702B04,
    NULL,
    NULL,
    NULL,
    func_8019D854_704AE4,
    NULL,
    NULL,
    func_8019EC28_705EB8,
    NULL,
    NULL,
    func_801A1554_7087E4,
    func_801A4634_70B8C4,
    func_801A5B60_70CDF0,
    NULL,
    func_801A7B2C_70EDBC,
    NULL,
};

ActorFunc D_801AB5F8_712888[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_80199F08_701198,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_8019D91C_704BAC,
    NULL,
    NULL,
    func_8019ECF0_705F80,
    NULL,
    NULL,
    NULL,
    func_801A47C4_70BA54,
    NULL,
    NULL,
    NULL,
    NULL,
};

ActorFunc D_801AB66C_7128FC[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    func_8019F174_706404,
    NULL,
    NULL,
    NULL,
    func_801A4AE8_70BD78,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

u16 D_801AB6E8_712978[] = {
    0x0110, 0x0120, 0x0130, 0x0140,
    0x0170, 0x0180, 0x01A0, 0x01C0,
    0x01D0, 0x0200, 0x0230, 0x0240,
    0x0250,
};

s32 func_8019221C_6F94AC(u32 arg0, u32 arg1);
void func_801A26B4_709944(u16 arg0, u16 actor_index, u16 pos_x, u16 pos_y, s16 pos_z, u16 arg5, u16 arg6);
s32 func_801A9044_7102D4(void);
DEFAULT_INT func_801A907C_71030C(void);
void func_801A9308_710598(u16 actor_index);
void func_801A972C_7109BC(s32 arg0);
void func_801A9740_7109D0(s32 arg0);
void func_801A9754_7109E4(u16 actor_index);
void func_801A97B8_710A48(u16 actor_index);
void func_801A97E8_710A78(u16 actor_index);
void func_801A9818_710AA8(u16 actor_index);
void func_801A9CD0_710F60(u16 actor_index);
void func_801A9D1C_710FAC(s16 arg0, s16 arg1);
void func_801A9D38_710FC8(u16 value, u16 index);
void func_801A9D68_710FF8(s32 arg0, s32 arg1);

f32 func_80192100_6F9390(f32 start, f32 end, u16 steps) {
    if (steps == 0) {
        return end;
    }
    return (end - start) / steps + start;
}

s32 func_8019214C_6F93DC(s32 start, s32 end, u16 steps) {
    return func_80192100_6F9390(start, end, steps);
}

s32 func_801921A0_6F9430(s32 start_angle, s32 end_angle, u16 steps) {
    s32 offset;

    if (!steps) {
        return end_angle;
    }

    offset = func_8019221C_6F94AC(start_angle, end_angle) / steps;
    return start_angle + offset;
}

s32 func_8019221C_6F94AC(u32 start_angle, u32 end_angle) {
    s32 wrapped_end_angle;
    s32 wrapped_delta;
    s32 direct_delta;

    if (start_angle >= FIXED_UNIT(COS_DEG_180)) {
        wrapped_end_angle = (end_angle & COS_MASK_FIXED_UNIT) + FIXED_UNIT(COS_DEG_360 * 2);
    }
    else {
        wrapped_end_angle = end_angle & COS_MASK_FIXED_UNIT;
    }

    wrapped_delta = wrapped_end_angle - (start_angle & COS_MASK_FIXED_UNIT) - FIXED_UNIT(COS_DEG_360);
    direct_delta = (end_angle & COS_MASK_FIXED_UNIT) - (start_angle & COS_MASK_FIXED_UNIT);
    if (ABS(wrapped_delta) < ABS(direct_delta)) {
        return wrapped_delta;
    }

    return direct_delta;
}

s16 func_801922A0_6F9530(u16 start_angle, u16 end_angle) {
    return FROM_FIXED(func_8019221C_6F94AC(TO_FIXED(start_angle), TO_FIXED(end_angle)));
}

s32 func_801922EC_6F957C(s32 start, s32 end, s32 max_step, u16 steps) {
    s32 step = (end - start) / steps;
    s32 amount;

    amount = ABS(step);
    if (max_step < amount) {
        amount = max_step;
    }
    return Math_ApproachS32(start, end, amount);
}

void func_80192374_6F9604(s32 unused, u16* colors, u8 red, u8 green, u8 blue) {
    colors[1] = ((red / 2) << 11) + ((green / 2) << 6) + ((blue / 2) * 2) + 1;
    colors[2] = (red << 11) + (green << 6) + (blue * 2) + 1;
}

void func_80192408_6F9698(void) {
    D_800D2920 = 0;
    D_800D2924 = 0x7FFF;
    D_800D2918 = 0x7FFF;
    D_800D291C = 0;
    gScreenBoundX0.whole = D_800D2920;
    gScreenBoundX1.whole = D_800D2924;
    gScreenBoundY0.whole = D_800D2918;
    gScreenBoundY1.whole = D_800D291C;
    D_800BE544 = 0x8000;
    D_800BE704 = 2;
    D_800BE708 = 2;
}

void func_80192490_6F9720(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].colorA = 255;
    gActors[actor_index].colorR = 0;
    gActors[actor_index].colorG = 0;
    gActors[actor_index].colorB = 0;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].palette_18C = D_800D85A8;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

void func_80192520_6F97B0(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].graphicIndex = GINDEX_2802;
    gActors[actor_index].colorR = 0x7F;
    gActors[actor_index].colorG = 0x7F;
    gActors[actor_index].colorB = 0x20;
    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].posX.whole = -2;
    gActors[actor_index].posY.whole = 3;
    gActors[actor_index].posZ.whole = -0xFF;
    gActors[actor_index].unk_188 = 0;
}

void func_801925A4_6F9834(u16 actor_index, u16 value) {
    gActors[actor_index].state = 2;
    gActors[actor_index].var_150 = value;
}

void func_801925EC_6F987C(u16 actor_index, u16 value) {
    gActors[actor_index].state = 4;
    gActors[actor_index].var_150 = value;
}

void func_80192634_6F98C4(u16 actor_index, u8 alpha) {
    gActors[actor_index].state = 1;
    gActors[actor_index].colorA = alpha;
    gActors[actor_index].var_154 = TO_FIXED(alpha & 0xFF);
}

s32 func_80192684_6F9914(u16 actor_index) {
    u16 state;

    state = gActors[actor_index].state;
    if (state == 1 || state == 3 || state == 5) {
        return 1;
    }
    return 0;
}

void func_801926E4_6F9974(u16 value) {
    func_801925A4_6F9834(0x31, value);
}

void func_8019270C_6F999C(u16 value) {
    func_801925EC_6F987C(0x31, value);
}

void func_80192734_6F99C4(u8 value) {
    func_80192634_6F98C4(0x31, value);
}

void func_8019275C_6F99EC(void) {
    func_80192684_6F9914(0x31);
}

void func_8019277C_6F9A0C(u16 value) {
    func_801925A4_6F9834(0x32, value);
}

void func_801927A4_6F9A34(u16 value) {
    func_801925EC_6F987C(0x32, value);
}

void func_801927CC_6F9A5C(u8 value) {
    func_80192634_6F98C4(0x32, value);
}

void func_801927F4_6F9A84(void) {
    func_80192684_6F9914(0x32);
}

void func_80192814_6F9AA4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        func_80192490_6F9720(actor_index);
        if (gActors[actor_index].var_15C == 0) {
            gActors[actor_index].var_15C = FIXED_UNIT(255);
        }
    default:
    case 1:
    case 3:
    case 5:
        break;
    case 2:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, gActors[actor_index].var_15C, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 4:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, 0, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_80192930_6F9BC0(u16 actor_index) {
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
    gActors[actor_index].colorA = 0;
    gActors[actor_index].colorR = 255;
    gActors[actor_index].colorG = 255;
    gActors[actor_index].colorB = 255;
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0x500;
    gActors[actor_index].unk_188 = 0;
    gActors[actor_index].palette_18C = D_800D85A8;
    gActors[actor_index].scaleX = 19.0f;
    gActors[actor_index].scaleY = 13.0f;
}

void func_801929C8_6F9C58(u16 value) {
    u16 actor_index = 0x33;

    gActors[actor_index].state = 2;
    gActors[actor_index].var_150 = value;
}

void func_801929E8_6F9C78(u16 value) {
    u16 actor_index = 0x33;

    gActors[actor_index].state = 4;
    gActors[actor_index].var_150 = value;
}

void func_80192A08_6F9C98(u16 value) {
    u16 actor_index = 0x33;

    gActors[actor_index].state = 4;
    gActors[actor_index].var_150 = value;
}

void func_80192A28_6F9CB8(u16 value) {
    u16 actor_index = 0x33;

    gActors[actor_index].state = 2;
    gActors[actor_index].var_150 = value;
}

void func_80192A48_6F9CD8(u8 alpha) {
    u16 actor_index = 0x33;

    gActors[actor_index].state = 1;
    gActors[actor_index].colorA = alpha;
    gActors[actor_index].var_154 = (alpha & 0xFF) * 1000;
}

void func_80192A80_6F9D10(void) {
    gActors[0x33].colorR = 0;
    gActors[0x33].colorG = 0;
    gActors[0x33].colorB = 0;
}

void func_80192A98_6F9D28(void) {
    gActors[0x33].colorR = 0xFF;
    gActors[0x33].colorG = 0xFF;
    gActors[0x33].colorB = 0xFF;
}

void func_80192AB4_6F9D44(u16 actor_index) {
    s32 alpha;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        func_80192930_6F9BC0(actor_index);
    case 8:
    default:
        break;
    case 2:
        alpha = func_8019214C_6F93DC(gActors[actor_index].var_154, 255000, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].var_154 = alpha;
        gActors[actor_index].colorA = alpha / 1000;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 4:
        alpha = func_8019214C_6F93DC(gActors[actor_index].var_154, 0, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].var_154 = alpha;
        gActors[actor_index].colorA = alpha / 1000;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 6:
        gActors[actor_index].state++;
        func_80192A98_6F9D28();
    case 7:
        alpha = func_8019214C_6F93DC(gActors[actor_index].var_154, 255000, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].var_154 = alpha;
        gActors[actor_index].colorA = alpha / 1000;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_80192C34_6F9EC4(u16 unused, u16 actor_index, u16* commands) {
    gActors[actor_index].actorType = ACTORTYPE_OVL0_END_17;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = 0;
    gActors[actor_index].posY.whole = 0;
    gActors[actor_index].posZ.whole = 0;
    gActors[actor_index].unk_154 = commands;
}

void func_80192CAC_6F9F3C(u16 actor_index) {
    u16* commands = gActors[actor_index].unk_154;

    commands++;
    gActors[actor_index].unk_154 = commands;
}

void func_80192CEC_6F9F7C(u16 actor_index, s16 offset) {
    u16* commands = gActors[actor_index].unk_154;

    commands += offset;
    gActors[actor_index].unk_154 = commands;
    switch (commands[0]) {
    case 2:
        gActors[actor_index].var_150 = (s16)commands[4];
        return;
    case 3:
        gActors[actor_index].var_150 = (s16)commands[4];
        gActors[actor_index].var_158 = (s16)commands[1];
        gActors[actor_index].var_15C = TO_FIXED((s16)commands[2]);
        gActors[actor_index].var_160 = TO_FIXED((s16)commands[3]);
        gActors[actor_index].var_15C &= COS_MASK_FIXED_UNIT;
        gActors[actor_index].var_160 &= COS_MASK_FIXED_UNIT;
        return;
    case 4:
        gActors[actor_index].var_150 = (s16)commands[4];
        gActors[actor_index].var_158 = (s16)commands[1];
        gActors[actor_index].var_15C = (s16)commands[2];
        gActors[actor_index].var_160 = gActors[actor_index].var_15C + func_801922A0_6F9530(gActors[actor_index].var_15C, commands[3]);
        return;
    case 5:
        gActors[actor_index].var_150 = (s16)commands[1];
        // fallthrough
    case 0:
    case 1:
    case 6:
    case 7:
    default:
        return;
    }
}

void func_80192E2C_6FA0BC(u16 actor_index) {
    u16* commands;
    f32 cosine_elevation;

    if (gActors[actor_index].unk_154 == NULL) {
        return;
    }
    if (gActors[actor_index].state == 0) {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[actor_index].unk_170 = 448;
        gActors[actor_index].unk_174 = FIXED_UNIT(768);
        gActors[actor_index].unk_178 = 0;
    }

    commands = gActors[actor_index].unk_154;
    switch (commands[0]) {
    case 1:
        gLookatEyeX = (s16)commands[1];
        gLookatEyeY = (s16)commands[2];
        gLookatEyeZ = (s16)commands[3];
        func_80192CEC_6F9F7C(actor_index, 4);
        break;
    case 2:
        gLookatEyeX = func_8019214C_6F93DC(gLookatEyeX, (s16)commands[1], gActors[actor_index].var_150);
        gLookatEyeY = func_8019214C_6F93DC(gLookatEyeY, (s16)gActors[actor_index].unk_154[2], gActors[actor_index].var_150);
        gLookatEyeZ = func_8019214C_6F93DC(gLookatEyeZ, (s16)gActors[actor_index].unk_154[3], gActors[actor_index].var_150);
        if (gActors[actor_index].var_150-- <= 0) {
            func_80192CEC_6F9F7C(actor_index, 5);
        }
        break;
    case 3:
        gActors[actor_index].unk_170 = func_8019214C_6F93DC(gActors[actor_index].unk_170, gActors[actor_index].var_158, gActors[actor_index].var_150);
        gActors[actor_index].unk_174 = func_801921A0_6F9430(gActors[actor_index].unk_174, gActors[actor_index].var_15C, gActors[actor_index].var_150);
        gActors[actor_index].unk_178 = func_801921A0_6F9430(gActors[actor_index].unk_178, gActors[actor_index].var_160, gActors[actor_index].var_150);
        gActors[actor_index].unk_174 &= COS_MASK_FIXED_UNIT;
        gActors[actor_index].unk_178 &= COS_MASK_FIXED_UNIT;
        cosine_elevation = COS(FROM_FIXED(gActors[actor_index].unk_178));
        gLookatEyeX = (COS(FROM_FIXED(gActors[actor_index].unk_174)) * cosine_elevation) * gActors[actor_index].unk_170;
        gLookatEyeY = SIN(FROM_FIXED(gActors[actor_index].unk_178)) * gActors[actor_index].unk_170;
        gLookatEyeZ = (SIN(FROM_FIXED(gActors[actor_index].unk_174)) * cosine_elevation) * -gActors[actor_index].unk_170;
        if (--gActors[actor_index].var_150 <= 0) {
            func_80192CEC_6F9F7C(actor_index, 5);
        }
        break;
    case 4:
        gActors[actor_index].var_15C = func_8019214C_6F93DC(gActors[actor_index].var_15C, gActors[actor_index].var_160, gActors[actor_index].var_150);
        gLookatEyeX = COS(gActors[actor_index].var_15C) * -gActors[actor_index].var_158;
        gLookatEyeZ = SIN(gActors[actor_index].var_15C) * gActors[actor_index].var_158;
        if (gActors[actor_index].var_150-- <= 0) {
            func_80192CEC_6F9F7C(actor_index, 5);
        }
        break;
    case 5:
        if (gActors[actor_index].var_150-- <= 0) {
            func_80192CEC_6F9F7C(actor_index, 2);
        }
        break;
    case 6:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        break;
    case 7:
        func_80192CEC_6F9F7C(actor_index, commands[1]);
        break;
    case 0:
        break;
    default:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        gLookatEyeX = 0.0f;
        gLookatEyeY = 0.0f;
        gLookatEyeZ = 448.0f;
        break;
    }
}

void func_80193278_6FA508(u16 actor_index) {
    u16 fixed_actor_index = 0x34;

    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL0_END_18;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ACTIVE;
    fixed_actor_index = 0x35;
    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL0_END_19;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ACTIVE;
}

void func_801932D0_6FA560(u16 parent_index, u16 actor_index, u16 actor_type, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    gActors[actor_index].actorType = actor_type;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.raw = 0;
    gActors[actor_index].posY.raw = 0;
    gActors[actor_index].posZ.raw = 0;
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].graphicIndex = graphic_index;
    gActors[actor_index].posX.whole = pos_x;
    gActors[actor_index].posY.whole = pos_y;
    gActors[actor_index].posZ.whole = pos_z;
    gActors[actor_index].state = gActors[parent_index].state & 0xFF00;
}

void func_8019339C_6FA62C(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_4, graphic_index, pos_x, pos_y, pos_z);
}

void func_801933F8_6FA688(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_5, graphic_index, pos_x, pos_y, pos_z);
}

void func_80193454_6FA6E4(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_6, graphic_index, pos_x, pos_y, pos_z);
}

void func_801934B0_6FA740(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_7, graphic_index, pos_x, pos_y, pos_z);
}

void func_8019350C_6FA79C(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_8, graphic_index, pos_x, pos_y, pos_z);
}

void func_80193568_6FA7F8(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_9, graphic_index, pos_x, pos_y, pos_z);
}

void func_801935C4_6FA854(u16 parent_index, s32 unused_1, s32 unused_2, s16 pos_z) {
    func_801932D0_6FA560(parent_index, 0x51, ACTORTYPE_OVL0_END_10, 0, 0, 0, pos_z);
    gActors[0x51].state = 0;
}

void func_80193618_6FA8A8(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_OVL0_END_11, graphic_index, pos_x, pos_y, pos_z);
}

void func_80193674_6FA904(u16 parent_index, u16 actor_index, u16 graphic_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    func_801932D0_6FA560(parent_index, actor_index, ACTORTYPE_GRAPHIC_29, graphic_index, pos_x, pos_y, pos_z);
}

void func_801936D0_6FA960(u16 unused, u16 actor_index, s16 z) {
    u16 index = actor_index;

    gActors[index].actorType = ACTORTYPE_OVL0_END_0;
    Actor_Initialize(index);
    gActors[index].posZ.whole = z;
}

void func_80193740_6FA9D0(u16 unused) {
    gActors[0x33].actorType = ACTORTYPE_OVL0_END_1;
    Actor_Initialize(0x33);
    gActors[0x33].flags = ACTOR_FLAG_ACTIVE;
}

void func_80193778_6FAA08(u16 parent_index, u16 actor_index, u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    gActors[actor_index].actorType = ACTORTYPE_OVL0_END_5;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].graphicIndex = graphic_index;
    gActors[actor_index].posX.raw = pos_x;
    gActors[actor_index].posY.raw = pos_y;
    gActors[actor_index].posZ.raw = pos_z;
    gActors[actor_index].state = gActors[parent_index].state & 0xFF00;
}

void func_8019383C_6FAACC(u16 parent_index, u16 actor_index, u16 graphic_index, s32 pos_x, s32 pos_y, s32 pos_z) {
    gActors[actor_index].actorType = ACTORTYPE_OVL0_END_6;
    Actor_Initialize(actor_index);
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[actor_index].graphicIndex = graphic_index;
    gActors[actor_index].posX.raw = pos_x;
    gActors[actor_index].posY.raw = pos_y;
    gActors[actor_index].posZ.raw = pos_z;
    gActors[actor_index].state = gActors[parent_index].state & 0xFF00;
}

void func_80193900_6FAB90(u16 value, s16 pos_x, s16 pos_y) {
    func_8005DF40(0, 40);
    func_8005DF5C(value);
    D_800D5830 = pos_x;
    D_800D5834 = pos_y;
}

void func_80193950_6FABE0(u16 value) {
    func_8005DF40(0, -48);
    func_8005DF5C(value);
    D_800D5830 = 0;
    D_800D5834 = 176;
}

void func_80193994_6FAC24(u16 value) {
    func_8005DF40(0, 40);
    func_8005DF5C(value);
    D_800D5830 = 16;
    D_800D5834 = -24;
}

void func_801939DC_6FAC6C(u16 value) {
    func_8005DF40(0, 40);
    func_8005DF5C(value);
    D_800D5830 = -24;
    D_800D5834 = -32;
}

void func_80193A24_6FACB4(u16 value) {
    func_8005DF40(0, 40);
    func_8005DF5C(value);
    D_800D5830 = 0;
    D_800D5834 = -176;
}

void func_80193A68_6FACF8(u16 value) {
    func_8005DF40(0, 40);
    func_8005DF5C(value);
    D_800D5830 = -24;
    D_800D5834 = -32;
}

void func_80193AB0_6FAD40(s32 unused) {
    u16 fixed_actor_index = 0x38;

    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL0_END_20;
    Actor_Initialize(0x38);
    gActors[fixed_actor_index].flags |= ACTOR_FLAG_FLIPPED;
    gActors[fixed_actor_index].posX.whole = 0;
    gActors[fixed_actor_index].posY.whole = 0;
    gActors[fixed_actor_index].posZ.whole = 0;
    gActors[fixed_actor_index].var_0D8 = 0x40;
    D_801AC378_713608 = 0x1F40;
    D_801AC38C_71361C = 0;
    D_801AC390_713620 = 0;
    D_801AC394_713624 = 0;
}

void func_80193B38_6FADC8(u16 actor_index) {
    D_800BE714 = 1;
    gPlayerActor.graphicIndex = gActors[actor_index].graphicIndex;
    gPlayerActor.posX.whole = gActors[actor_index].posX.whole;
    gPlayerActor.posY.whole = gActors[actor_index].posY.whole;
    gActors[actor_index].flags |= ACTOR_FLAG_UNK27;
}

u16 func_80193BA8_6FAE38(void) {
    u64 mask = 1;
    u16 count = 0;
    u16 index;

    for (index = 0; index < 63; index++) {
        if (gYellowGemBitfield & mask) {
            count++;
        }
        mask <<= 1;
    }
    return count;
}

void func_80193C58_6FAEE8(u16 actor_index) {
    gActors[actor_index].state = 0x1600;
    func_801936D0_6FA960(actor_index, 0x31, -0x200);
    func_801936D0_6FA960(actor_index, 0x32, 0x10);
    func_80193740_6FA9D0(actor_index);
    D_801AA070_711300 = 0;
    D_801AA074_711304 = 0;
    D_801AA078_711308 = 0;
    D_801AA07C_71130C = 0;
    D_801AA080_711310 = 0;
    D_801AA084_711314 = 0;
    D_801AC374_713604 = 0;
    D_801AC398_713628 = func_80193BA8_6FAE38();
    gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
}

void func_80193D2C_6FAFBC(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.0625);
        gActors[new_actor_index].unk_16C = FIXED_UNIT(-0.03125);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_LASERA, pos_x, pos_y - 0x40, pos_z - 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].colorG = 0x46;
        gActors[new_actor_index].colorB = 0x46;
        gActors[new_actor_index].colorA = 1;
        gActors[new_actor_index].scaleX = 5.0f;
        gActors[new_actor_index].scaleY = 0.0f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_160 = FIXED_UNIT(256);
        gActors[new_actor_index].var_154 = 0x12;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.008f;
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.0625);
        gActors[new_actor_index].unk_16C = FIXED_UNIT(-0.03125);
    }
}

void func_80193EF4_6FB184(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_158 = FIXED_UNIT(0.25);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.03125);
        gActors[new_actor_index].unk_174 = FIXED_UNIT(-0.0625);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_80193FDC_6FB26C(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].unk_174 = FIXED_UNIT(-0.0625);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_801940B4_6FB344(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_158 = FIXED_UNIT(-0.25);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.03125);
        gActors[new_actor_index].unk_174 = FIXED_UNIT(-1);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_8019419C_6FB42C(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_158 = FIXED_UNIT(-0.25);
        gActors[new_actor_index].var_15C = FIXED_UNIT(-0.03125);
        gActors[new_actor_index].unk_174 = FIXED_UNIT(1);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_80194284_6FB514(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].unk_174 = FIXED_UNIT(1);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_8019435C_6FB5EC(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].var_158 = FIXED_UNIT(-0.125);
        gActors[new_actor_index].unk_168 = FIXED_UNIT(-0.03125);
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].unk_164 = -2;
        gActors[new_actor_index].var_110 = 0.02f;
        gActors[new_actor_index].unk_114 = 0.02f;
        gActors[new_actor_index].unk_118 = 0.02f;
        gActors[new_actor_index].unk_11C = 0.02f;
    }
}

void func_8019443C_6FB6CC(u16 actor_index, s16 pos_x, s16 pos_y, s16 pos_z) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_CIRCLEEFFECT, pos_x, pos_y, pos_z);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].posZ.whole = pos_z;
        gActors[new_actor_index].unk_188 = gActors[actor_index].unk_188;
        gActors[new_actor_index].unk_174 = FIXED_UNIT(1);
        gActors[new_actor_index].var_154 = -2;
        gActors[new_actor_index].unk_164 = -1;
        gActors[new_actor_index].var_110 = 0.05f;
        gActors[new_actor_index].unk_114 = 0.05f;
        gActors[new_actor_index].unk_118 = 0.03f;
        gActors[new_actor_index].unk_11C = 0.03f;
    }
}

void func_8019451C_6FB7AC(u16 actor_index) {
    if (gActors[actor_index].state == 0x100) {
        gActors[actor_index].posY.raw += gActors[48].var_154 * gActors[actor_index].unk_11C;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
    }
}

void func_801945C0_6FB850(u16 actor_index) {
    u16 angle;
    u16 new_actor_index;
    u16 temp_v0;
    s16 sp40;
    f32 temp_f2;

    switch (gActors[actor_index].state) {
    case 0x15A:
        gActors[actor_index].state++;
        func_80192734_6F99C4(0x3F);
        func_801927CC_6F9A5C(0);
        // fallthrough
    case 0x15B:
        gActors[actor_index].state++;
        new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_01AA, 0, 0, 0);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
            gActors[new_actor_index].posX.whole = 0;
            gActors[new_actor_index].posY.whole = 0;
            gActors[new_actor_index].posZ.whole = 0;
            gActors[new_actor_index].colorA = 0xFE;
            gActors[new_actor_index].var_154 = -0xA;
            gActors[new_actor_index].unk_148 = 20.0f;
            gActors[new_actor_index].var_110 = 0.05f;
            gActors[new_actor_index].unk_114 = 0.05f;
            gActors[new_actor_index].scaleX = 1.0f;
            gActors[new_actor_index].unk_118 = -gActors[new_actor_index].var_110 / gActors[new_actor_index].unk_148;
            gActors[new_actor_index].unk_11C = -gActors[new_actor_index].unk_114 / gActors[new_actor_index].unk_148;
        }

        if (!(gActiveFrames & 3)) {
            new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_IMPACTEFFECTA, 0, 0, 0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
                gActors[new_actor_index].unk_148 = 20.0f;
                gActors[new_actor_index].var_154 = -0xA;
                gActors[new_actor_index].unk_140_f32 = 0;
                gActors[new_actor_index].unk_144 = 4.0f;
                gActors[new_actor_index].var_110 = 0.06f;
                gActors[new_actor_index].unk_118 = -0.008f;
                gActors[new_actor_index].unk_114 = 0.1f;
                gActors[new_actor_index].unk_11C = -0.01f;
            }
        }
    default:
        break;
    case 0x15C:
        if (gButtonHold & gButton_B) {
            gActors[actor_index].state--;
        }
        break;
    case 0x150:
        gActors[actor_index].state++;
        gActors[actor_index].unk_170 = 0;
        break;
    case 0x151:
        if ((gButtonHold & gButton_DUp) || (gButtonHold & gButton_DDown)) {
            if (gActors[actor_index].unk_170++ >= 0x1E) {
                if (gButtonHold & gButton_DDown) {
                    D_801AC398_713628 -= 1;
                }

                if (gButtonHold & gButton_DUp) {
                    D_801AC398_713628 += 1;
                }
            }
        }
        else {
            gActors[actor_index].unk_170 = 0;
        }

        if (gButtonPress & gButton_DDown) {
            D_801AC398_713628 -= 1;
        }

        if (gButtonPress & gButton_DUp) {
            D_801AC398_713628 += 1;
        }

        if ((gButtonHold & gButton_LTrig) && (gButtonPress & gButton_RTrig)) {
            gActors[actor_index].state = 0x1600;
        }

        OSD_PrintInt(D_801AC398_713628, 0, 0);
        break;
    case 0x146:
        gActors[actor_index].state++;
        func_80192734_6F99C4(0x7F);
        func_801927CC_6F9A5C(0);
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].posZ.whole = 0;
        // fallthrough
    case 0x147:
        if (gButtonPress & gButton_A) {
            func_80059624(actor_index, 1.0f, PALETTE_8022D568);
        }

        if (gButtonHold & gButton_CLeft) {
            MarinaEffect_Teleport(actor_index);
        }

        if (gButtonPress & gButton_CDown) {
            SpawnParticle_RingWaveBlue(0.5f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, (gActors[actor_index].posZ.whole + 1));
        }

        if (gButtonHold & gButton_B) {
            if (gButtonPress & gButton_B) {
                gActors[actor_index].var_154 = 0;
            }

            gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-4), FIXED_UNIT(0.125));
            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index != 0) {
                gActors[new_actor_index].actorType = ACTORTYPE_GRAPHIC_52;
                Actor_Initialize(new_actor_index);
                gActors[new_actor_index].flags = ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_FREEZE_POS;
                gActors[new_actor_index].posX.whole = 0;
                gActors[new_actor_index].posY.whole = 0;
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].graphicIndex = GINDEX_LASERA;
                gActors[new_actor_index].rotateZ = 90.0f;
                gActors[new_actor_index].scaleX = gActors[actor_index].scaleX;
                gActors[new_actor_index].scaleY = gActors[actor_index].scaleY;
                gActors[new_actor_index].palette_18C = D_800D99A4;
                if ((gActiveFrames % 12) == 0) {
                    SpawnParticle_RingSparkle(
                        actor_index,
                        0,
                        0.4f,
                        (f32)(0x80 - Rand()) * 0.75,
                        (f32)(0x80 - Rand()) * 0.75,
                        0x10
                    );
                }

                gActors[new_actor_index].posZ.whole = gActors[actor_index].posZ.whole;
                gActors[new_actor_index].colorR = 0x18;
                gActors[new_actor_index].colorG = 0x30;
                gActors[new_actor_index].colorB = gActors[new_actor_index].colorG;
                gActors[new_actor_index].colorA = 0xA1;
                if (gActors[actor_index].flags != 0) {
                    func_80031D58(actor_index, new_actor_index);
                }
                else {
                    gActors[new_actor_index].unk_148 = 120.0f;
                }
            }

            if ((gActiveFrames % 6) == 0) {
                new_actor_index = Actor_RangeFindInactive_90ToC0();
                if (new_actor_index != 0) {
                    func_8019339C_6FA62C(actor_index, new_actor_index, 0, 0, 0, 0);
                    gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
                    gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
                    gActors[new_actor_index].graphicIndex = GINDEX_LASERA;
                    gActors[new_actor_index].palette_18C = D_800D98F4;
                    gActors[new_actor_index].posX.whole = (f32)(0x80 - Rand()) * 1.25;
                    gActors[new_actor_index].posY.whole = (f32)(0x80 - Rand()) * 0.7 - gActors[actor_index].var_154 / 4096;
                    temp_f2 = Rand() & 0x3F;
                    gActors[new_actor_index].unk_11C = temp_f2;
                    gActors[new_actor_index].posZ.whole = -64.0f - gActors[new_actor_index].unk_11C;
                    gActors[new_actor_index].unk_118 = gActors[new_actor_index].unk_11C / 16;
                    gActors[new_actor_index].unk_11C = (64.0f - gActors[new_actor_index].unk_11C) / 16;
                    gActors[new_actor_index].scaleX = gActors[new_actor_index].unk_11C * 4.0;
                    gActors[new_actor_index].scaleY = gActors[new_actor_index].unk_11C * 0.4;
                    gActors[new_actor_index].colorA = 0x60;
                    gActors[new_actor_index].colorR = 0x7F;
                    gActors[new_actor_index].var_150 = 0x10;
                    gActors[new_actor_index].unk_114 = gActors[new_actor_index].unk_11C * 0.2;
                    gActors[new_actor_index].rotateZ = 90.0f;
                }
            }
        }
        break;
    case 0x13C:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].scaleX = 1.0f;
        gActors[actor_index].scaleY = 1.0f;
        func_80192734_6F99C4(0x3F);
        func_801927CC_6F9A5C(0);
        // fallthrough
    case 0x13D:
        if (gButtonHold & gButton_B) {
            sp40 = gActors[actor_index].posX.whole + (Rand() - 0x80) * 0.25;
            new_actor_index = SpawnParticle_List_90C0_16(D_800E1604, sp40, (s16)(gActors[actor_index].posY.whole + (Rand() - 0x80) * 0.25), 0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
                gActors[new_actor_index].scaleX = gActors[actor_index].scaleX;
                gActors[new_actor_index].scaleY = gActors[actor_index].scaleX;
            }
        }
        break;
    case 0x100:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        func_80192734_6F99C4(0x3F);
        func_801927CC_6F9A5C(0);
        // fallthrough
    case 0x101:
        if ((gButtonPress & gButton_DLeft) && gActors[actor_index].var_150 > 0) {
            gActors[actor_index].var_150--;
        }

        if ((gButtonPress & gButton_DRight) && gActors[actor_index].var_150 < 0xA9) {
            gActors[actor_index].var_150++;
        }

        if ((gButtonPress & gButton_B) || (gButtonPress & gButton_DLeft) || (gButtonPress & gButton_DRight)) {
            gActors[actor_index].graphicList = (s16*)D_800D54EC[gActors[actor_index].var_150];\
            gActors[actor_index].graphicTimer = 1;
        }

        OSD_PrintShortHexWhite(gActors[actor_index].var_150, 0, -0x10);
        func_80193B38_6FADC8(actor_index);
        break;
    case 0x132:
        gActors[actor_index].state++;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = 0;
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQUARE;
        func_80192734_6F99C4(0xFF);
        func_801927CC_6F9A5C(0);
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].unk_114 = 0;
        gActors[actor_index].unk_118 = 0;
        // fallthrough
    case 0x133:
        gActors[actor_index].unk_114 = Math_ApproachF32(gActors[actor_index].unk_114, 2.8f, 0.021875f);
        gActors[actor_index].unk_118 = Math_ApproachF32(gActors[actor_index].unk_118, 18.0f, 0.140625f);
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, 0x7F, 1);
        if (!(gButtonHold & gButton_B)) {
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_114 = 0;
        }

        new_actor_index = SpawnParticle_List_90C0_16(D_800E14C8, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].scaleX = gActors[actor_index].unk_114;
            gActors[new_actor_index].scaleY = gActors[actor_index].unk_114;
            if (gActiveFrames & 2) {
                gActors[new_actor_index].scaleX += 0.5;
                gActors[new_actor_index].scaleY += 0.5;
            }

            gActors[new_actor_index].colorA = gActors[actor_index].var_154;
            gActors[new_actor_index].var_154 = -0x10;
            gActors[new_actor_index].unk_148 = 0;
            gActors[new_actor_index].unk_11C = 0.9f;
        }

        if (!(gActiveFrames & 1)) {
            new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_01EE, 0, 0, 0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
                gActors[new_actor_index].scaleX = 1.0f;
                gActors[new_actor_index].scaleY = 0.0f;
                gActors[new_actor_index].colorA = gActors[actor_index].var_154 * 2;
                gActors[new_actor_index].colorB = 0x7F;
                temp_v0 = Rand();
                angle = (temp_v0 * 4) & 0x3C0;
                gActors[new_actor_index].var_160 = TO_FIXED(angle);
                gActors[new_actor_index].var_150 = (0x38 - (Rand() & 0x70)) * FIXED_UNIT(0.0625);
                gActors[new_actor_index].unk_130 = actor_index;
                gActors[new_actor_index].unk_14C = gActors[actor_index].actorType;
                gActors[new_actor_index].unk_134 = 0;
                gActors[new_actor_index].paletteAnimation_178 = D_801AB048_7122D8;
                gActors[new_actor_index].var_154 = -8;
                gActors[new_actor_index].unk_138 = 0;
                gActors[new_actor_index].unk_13C_f32 = 1.0f;
                gActors[new_actor_index].var_110 = 0.2f;
                if (gActiveFrames & 2) {
                    gActors[new_actor_index].unk_11C = -0.05;
                }
                else {
                    gActors[new_actor_index].unk_11C = -0.1f;
                }
                gActors[new_actor_index].unk_140_f32 = gActors[actor_index].unk_118;
            }
        }
        break;
    case 0x10A:
        gActors[actor_index].state++;
        func_801936D0_6FA960(actor_index, 0x31, -0x200);
        func_801936D0_6FA960(actor_index, 0x32, -0x100);
        func_801927CC_6F9A5C(0x80);
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        // fallthrough
    case 0x10B:
        if (gButtonPress & gButton_B) {
            func_801926E4_6F9974(0x1E);
        }

        if (gButtonPress & gButton_CLeft) {
            func_8019270C_6F999C(0x1E);
        }

        if (gButtonPress & gButton_CUp) {
            func_80192734_6F99C4(0x80);
        }

        if (gButtonPress & gButton_A) {
            func_8019277C_6F9A0C(0x1E);
        }

        if (gButtonPress & gButton_CDown) {
            func_801927A4_6F9A34(0x1E);
        }

        if (gButtonPress & gButton_CRight) {
            func_801927CC_6F9A5C(0x80);
        }

        if (gButtonHold & gButton_ZTrig) {
            if (gButtonPress & gButton_LTrig) {
                gActors[0x31].flags = ACTOR_FLAG_NONE;
            }
            if (gButtonPress & gButton_RTrig) {
                gActors[0x32].flags = ACTOR_FLAG_NONE;
            }
        }
        else {
            if (gButtonPress & gButton_LTrig) {
                func_801936D0_6FA960(actor_index, 0x31, -0x200);
            }
            if (gButtonPress & gButton_RTrig) {
                func_801936D0_6FA960(actor_index, 0x32, -0x100);
            }
        }
        break;
    case 0x114:
        gActors[actor_index].state++;
        gActors[0x3B].actorType = ACTORTYPE_GRAPHIC_29;
        Actor_Initialize(0x3B);
        gActors[0x3B].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[0x3B].flags = ACTOR_FLAG_ENABLED;
        gActors[0x3B].graphicIndex = GINDEX_1800;
        gActors[0x3B].posX.whole = 0;
        gActors[0x3B].posY.whole = 0;
        // fallthrough
    case 0x115:
        gActors[0x3B].scaleY = gActors[0x3B].scaleX;
        if (gButtonHold & gButton_B) {
            func_80193D2C_6FAFBC(0x3B, gActors[actor_index].var_154, gActors[actor_index].unk_158_u16[1], gActors[actor_index].var_15C);
        }

        if (gButtonHold & gButton_ZTrig) {
            func_8019419C_6FB42C(0x3B, gActors[actor_index].var_154, gActors[actor_index].unk_158_u16[1], gActors[actor_index].var_15C);
        }

        if (gButtonHold & gButton_RTrig) {
            func_80194284_6FB514(0x3B, gActors[actor_index].var_154, gActors[actor_index].unk_158_u16[1], gActors[actor_index].var_15C);
        }

        if (gButtonHold & gButton_LTrig) {
            func_8019443C_6FB6CC(0x3B, gActors[actor_index].var_154, gActors[actor_index].unk_158_u16[1], gActors[actor_index].var_15C);
        }

        if (gButtonHold & gButton_DUp) {
            gActors[actor_index].var_158 += 1;
        }

        if (gButtonHold & gButton_DDown) {
            gActors[actor_index].var_158 -= 1;
        }

        if (gButtonHold & gButton_DLeft) {
            gActors[actor_index].var_154 -= 1;
        }

        if (gButtonHold & gButton_DRight) {
            gActors[actor_index].var_154 += 1;
        }

        if (gButtonHold & gButton_CLeft) {
            gActors[0x3B].posX.whole -= 1;
        }

        if (gButtonHold & gButton_CDown) {
            gActors[0x3B].posY.whole -= 1;
        }

        if (gButtonHold & gButton_CUp) {
            gActors[0x3B].posY.whole += 1;
        }

        if (gButtonHold & gButton_CRight) {
            gActors[0x3B].posX.whole += 1;
        }

        if (gButtonPress & gButton_A) {
            gActors[0x3B].graphicIndex += 2;
        }

        OSD_PrintIntHex(gActors[0x3B].posX.whole, 0, 0);
        OSD_PrintIntHex(gActors[0x3B].posY.whole, 0, -0x10);
        OSD_PrintIntHex(gActors[actor_index].var_154, 0, -0x30);
        OSD_PrintIntHex(gActors[actor_index].var_158, 0, -0x40);
        break;
    case 0x11E:
        gActors[actor_index].state++;
        func_80192734_6F99C4(0xFF);
        func_801927CC_6F9A5C(0);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        D_801AC3A2_713632 = 0;
        D_801AC3A8_713638 = 0x10;
        D_801AC3A4_713634 = 0;
        func_80193AB0_6FAD40(actor_index);
        func_80026F2C(SCENE_MEETMARINA);
        new_actor_index = 0x38;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = 0;
        new_actor_index = 0x37;
        gActors[new_actor_index].actorType = ACTORTYPE_ZERO;
        Actor_Initialize(0x37);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_PLATFORM1;
        Actor_SetHitboxB(0x37, 0x10);
        gActors[new_actor_index].hitboxBX0 = -0xB0;
        gActors[new_actor_index].hitboxBX1 = 0xB0;
        gActors[new_actor_index].hitboxBY0 = 0x10;
        gActors[new_actor_index].hitboxBY1 = -0x10;
        gActors[new_actor_index].posX.whole = 0;
        gActors[new_actor_index].posY.whole = -0x30;
        // fallthrough
    case 0x11F:
        if (gButtonPress & gButton_B) {
            SpawnParticle_HeartBubble(1.0f, 0, 0, 0);
        }
        func_801A9308_710598(0x38);
        OSD_PrintShortHexWhite(D_801AC3A2_713632, 0, -0x30);
        break;
    }
}

void func_801959B8_6FCC48(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1D01:
        break;
    case 0x1D00:
        gActors[actor_index].state = 0x200;
        func_80042DBC(NULL);
        D_800BE6FC = 0;
        func_8002670C(SCENE_ENDING);
        func_80026784(SCENE_ENDING);
        func_800255B4(SCENE_ENDING);
        func_80010C20(SCENE_ENDING);
        func_80026220(SCENE_UNK07);
        func_80026494(SCENE_DEMOWORLD1, 0);
        func_80025E00();
        func_80011B30(7, 1, 1, 5, 0xE);
        func_80011B30(0, 0, 3, 1, 0x19);
        func_80011B30(6, 0, 2, 2, 0x20);
        func_80011B30(0, 4, 3, 1, 0x24);
        func_80011B30(0, 5, 2, 1, 0x27);
        D_801376A4 = PALETTE_80380400;
        func_80026E60(SCENE_UNK84);
        func_80026D88(SCENE_MEETMARINA);
        func_80192408_6F9698();
        gActors[0x32].var_15C = FIXED_UNIT(255);
        break;
    }
}

void func_80195B34_6FCDC4(u16 actor_index, f32 scale) {
    s32 angle_index;
    u16 new_actor_index;
    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_List_90C0_16(D_800E151C, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole + 1);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8;
        gActors[new_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
        gActors[new_actor_index].scaleX = scale;
        gActors[new_actor_index].scaleY = scale;
        gActors[new_actor_index].var_160 = TO_FIXED(DEG_TO_INDEX(gActors[actor_index].rotateZ + 270.0));
        gActors[new_actor_index].var_110 = 0.05f;
        gActors[new_actor_index].unk_118 = 0.05f;
        gActors[new_actor_index].unk_114 = -0.2f;
        Actor_SetColorRgb(new_actor_index, 0x4F);
        angle_index = DEG_TO_INDEX(gActors[actor_index].rotateZ + 270.0);
        gActors[new_actor_index].unk_130 = actor_index;
        gActors[new_actor_index].unk_14C = gActors[actor_index].actorType;
        gActors[new_actor_index].unk_134 = (COS(angle_index) * (-12.0f)) * gActors[actor_index].scaleX;
        gActors[new_actor_index].var_158 = COS(angle_index) * FIXED_UNIT(-8);
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[new_actor_index].var_158 = -gActors[new_actor_index].var_158;
            gActors[new_actor_index].unk_134 *= -1.0f;
        }
        gActors[new_actor_index].unk_138 = (SIN(angle_index) * (-12.0f)) * gActors[actor_index].scaleX;
        gActors[new_actor_index].unk_13C_f32 = -1.0f;
        gActors[new_actor_index].var_15C = SIN(angle_index) * FIXED_UNIT(-8);
        gActors[new_actor_index].var_154 = -0x14;
        gActors[new_actor_index].pfn_17C = func_80030A24;
        gActors[new_actor_index].unk_104 = -0x30;
        gActors[new_actor_index].unk_148 = 3.0f;
    }
}

void func_80195E2C_6FD0BC(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 0x20; index++) {
        new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (new_actor_index != 0) {
            func_80193454_6FA6E4(actor_index, new_actor_index, GINDEX_STAREFFECT, Rand() - 0x80, Rand() - 0x80, -0x100);
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[new_actor_index].scaleX = 0.1f;
            gActors[new_actor_index].scaleY = 0.1f;
            gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
        }
    }
}

void func_80195F64_6FD1F4(u16 actor_index) {
    s32 alpha;

    switch (gActors[actor_index].state) {
    case 0x200:
        gActors[actor_index].state++;
        func_80192734_6F99C4(0);
        gActors[0x31].colorB = 0xFF;
        func_801927CC_6F9A5C(0);
        func_80192A08_6F9C98(0x3C);
        gAudioFadeMode = 0;
        Sound_PlayMusic(2);
        D_801AA070_711300 = 0x78;
        func_80026D88(SCENE_MEETMARINA);
        func_80192C34_6F9EC4(actor_index, 0x36, D_801AABEC_711E7C);
        func_801934B0_6FA740(actor_index, 0x39, GINDEX_STAREFFECT, -0x21, -0x21, 0);
        func_80193674_6FA904(actor_index, 0x3A, GINDEX_5003, 0x3D, -0x23, 0);
        gActors[0x3A].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x201:
        D_800BE584 += 3;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xB4;
            D_801AA07C_71130C = 0x3C;
            gActors[actor_index].coord_154.whole = 0xFF;
            D_801376BC[0] = 0;
            D_801376BC[1] = 0;
            gEnvColorsAlpha[0] = 0xFF;
            gEnvColorsAlpha[1] = 0xFF;
            func_8019339C_6FA62C(actor_index, 0x3B, GINDEX_1800, 0, 0, 0);
        }
    default:
        break;
    case 0x202:
        D_800BE584 += 3;
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, 0, D_801AA074_711304);
        alpha = gActors[actor_index].coord_154.whole;
        gActors[0x39].colorA = alpha;
        gEnvColorsAlpha[0] = alpha;
        gEnvColorsAlpha[1] = alpha;
        gActors[0x3A].colorA = gActors[actor_index].coord_154.whole;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            gDrawMidground = FALSE;
            gDrawEnvLayer = FALSE;
            gActors[0x39].flags = ACTOR_FLAG_NONE;
            gActors[0x3A].flags = ACTOR_FLAG_NONE;
            gActors[actor_index].coord_154.whole = 0;
            func_801A9044_7102D4();
        }
        break;
    case 0x203:
        D_800BE584 += 3;
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[0x31].colorA = gActors[actor_index].coord_154.whole;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gDrawBackground = FALSE;
            func_80192A98_6F9D28();
            func_80192A28_6F9CB8(0x3C);
            func_801A9044_7102D4();
        }
        break;
    case 0x204:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xF0;
            func_80192490_6F9720(0x31);
            func_801933F8_6FA688(actor_index, 0x38, GRAPHIC_FRAME(1806, 3), 0, 0, 0);
            func_80195E2C_6FD0BC(actor_index);
            gLookatEyeX = 448.0f;
            gLookatEyeY = 0.0f;
            gLookatEyeZ = 0.0f;
            func_80192A08_6F9C98(0x3C);
        }
        break;
    case 0x205:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0x206:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
        }
        break;
    case 0x207:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_801A9044_7102D4();
        }
        break;
    case 0x208:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xF0;
        }
        break;
    case 0x209:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0x20A:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x300;
            Actor_ClearRange(0x38, 0x90);
            func_8019339C_6FA62C(actor_index, 0x3B, GINDEX_1806, 0, 0, 0);
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK6;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            func_801A9044_7102D4();
        }
        break;
    }
}

void func_801963D4_6FD664(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x200:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK15;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posZ.whole = 0x180;
        gActors[actor_index].colorA = 0;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].scaleX = 10.0f;
        gActors[actor_index].scaleY = 10.0f;
        gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0f;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].unk_158_u16[0] = gActors[actor_index].posZ.whole;
    default:
        break;
    case 0x201:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 1000.0f, D_801AA074_711304);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA074_711304);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].var_158 = func_8019214C_6F93DC(gActors[actor_index].var_158, 0, D_801AA070_711300);
        gActors[actor_index].unk_188 = (s16)gActors[actor_index].unk_158_u16[0];
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, FIXED_UNIT(-64), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK6;
        }
        break;
    case 0x202:
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, 0, D_801AA070_711300);
        func_80193D2C_6FAFBC(actor_index, gActors[actor_index].posX.whole, (gActors[actor_index].posY.whole - 0x10), (gActors[actor_index].posZ.whole - 1));
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x203:
        func_80193D2C_6FAFBC(actor_index, gActors[actor_index].posX.whole, (gActors[actor_index].posY.whole - 0x10), (gActors[actor_index].posZ.whole - 1));
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x204:
        func_80193D2C_6FAFBC(actor_index, gActors[actor_index].posX.whole, (gActors[actor_index].posY.whole - 0x10), (gActors[actor_index].posZ.whole - 1));
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x205:
        func_80193D2C_6FAFBC(actor_index, gActors[actor_index].posX.whole, (gActors[actor_index].posY.whole - 0x10), (gActors[actor_index].posZ.whole - 1));
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x206:
        if (D_801AA070_711300 < 0x28) {
            gActors[actor_index].graphicIndex = GINDEX_1804;
            func_80193FDC_6FB26C(
                actor_index,
                (gActors[actor_index].posX.whole - 0xE),
                (gActors[actor_index].posY.whole - 0xF),
                (gActors[actor_index].posZ.whole - 1)
            );
            func_80193FDC_6FB26C(
                actor_index,
                (gActors[actor_index].posX.whole + 0xE),
                (gActors[actor_index].posY.whole - 0xF),
                (gActors[actor_index].posZ.whole - 1)
            );
        }
        else if (D_801AA070_711300 < 0x50) {
            gActors[actor_index].graphicIndex = GRAPHIC_FRAME(1800, 1);
            func_80193EF4_6FB184(
                actor_index,
                (gActors[actor_index].posX.whole + 0x14),
                (gActors[actor_index].posY.whole - 0xB),
                (gActors[actor_index].posZ.whole - 1)
            );
            func_80193EF4_6FB184(
                actor_index,
                (gActors[actor_index].posX.whole - 5),
                (gActors[actor_index].posY.whole - 9),
                (gActors[actor_index].posZ.whole - 1)
            );
        }
        else {
            func_80193D2C_6FAFBC(
                actor_index,
                gActors[actor_index].posX.whole,
                (gActors[actor_index].posY.whole - 0x10),
                (gActors[actor_index].posZ.whole - 1)
            );
        }
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x207:
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole - 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole + 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x208:
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole - 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole + 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x209:
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole - 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        func_80193FDC_6FB26C(
            actor_index,
            (gActors[actor_index].posX.whole + 0xE),
            (gActors[actor_index].posY.whole - 0xF),
            (gActors[actor_index].posZ.whole - 1)
        );
        break;
    }
}

void func_801969EC_6FDC7C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x200:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK15;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.whole = 0;
        gActors[actor_index].posY.whole = -0x60;
        gActors[actor_index].posZ.whole = -0x10;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].rotateY = 90.0f;
        gActors[actor_index].rotateZ = 90.0f;
        gActors[actor_index].scaleX = 12.0f;
        gActors[actor_index].scaleY = 12.0f;
    case 0x206:
    default:
        break;
    case 0x201:
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, FIXED_UNIT(-176), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x202:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].posY.whole = -0x100;
            gActors[actor_index].scaleX = 5.0f;
            gActors[actor_index].scaleY = 5.0f;
            gActors[actor_index].rotateZ = 0.0f;
        }
        break;
    case 0x203:
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_158_u16[0] = gActors[actor_index].unk_188;
            gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0;
        }
        break;
    case 0x204:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 1000.0f, D_801AA070_711300);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x205:
        gActors[actor_index].posX.raw = func_8019214C_6F93DC(gActors[actor_index].posX.raw, FIXED_UNIT(-832), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_80196C3C_6FDECC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x200:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        return;
    case 0x201:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            return;
        }
    default:
        return;
    case 0x202:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            return;
        }
        break;
    case 0x203:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            return;
        }
        break;
    case 0x204:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            return;
        }
        break;
    case 0x205:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            return;
        }
        break;
    case 0x206:
        if (D_801AA070_711300 < 0xA) {
            gActors[actor_index].posX.raw *= 0.99;
            gActors[actor_index].posY.raw *= 0.99;
        }
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            return;
        }
        break;
    case 0x207:
        if (gActors[actor_index].posX.whole < -0xAF) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_80196E08_6FE098(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x201:
        break;
    case 0x200:
        gActors[actor_index].state++;
        gActors[actor_index].flags |= ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicList = D_801AAC04_711E94;
        gActors[actor_index].graphicTimer = 1;
        break;
    }
    func_80193B38_6FADC8(actor_index);
}

s32 func_80196EA8_6FE138(u16 actor_index) {
    u16 new_actor_index;
    u16 angle;
    s16 x;
    s16 y;

    new_actor_index = Actor_RangeFindInactive(0x40, 0xC0);
    if (new_actor_index != 0) {
        angle = Rand() * 4;
        if (!(angle & 0xFF)) {
            angle++;
        }

        x = COS(angle) * 16.0f;
        y = SIN(angle) * 16.0f;
        func_801933F8_6FA688(actor_index, new_actor_index, GINDEX_SOLIDSQUARE, x, y, -0x100);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].colorR = 0xFF;
        gActors[new_actor_index].colorG = 0xFF;
        gActors[new_actor_index].colorB = 0xFF;
        gActors[new_actor_index].velocityX.raw = x * FIXED_UNIT(0.21875);
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].velocityY.raw = y * FIXED_UNIT(0.21875);
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].rotateX = 270.0f;
    }
    return new_actor_index;
}

void func_80197030_6FE2C0(u16 actor_index) {
    s32 new_actor_index = func_80196EA8_6FE138(actor_index);
    if (new_actor_index != 0) {
        gActors[new_actor_index].actorType = ACTORTYPE_OVL0_END_6;
    }
}

void func_80197088_6FE318(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        func_801934B0_6FA740(actor_index, new_actor_index, GINDEX_STAREFFECT, 176, Rand() - 128, -256);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].scaleX = 0.1f;
        gActors[new_actor_index].scaleY = 0.1f;
        gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
    }
}

void func_80197168_6FE3F8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x300:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_8019339C_6FA62C(actor_index, 0x3B, GINDEX_1806, 0, 0, 0);
        gActors[0x3B].graphicFlags = ACTOR_GFLAG_UNK6;
        gActors[0x3B].flags = ACTOR_FLAG_ENABLED;
        return;
    case 0x301:
        func_80197088_6FE318(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xB4;
            func_80196EA8_6FE138(actor_index);
            func_80192490_6F9720(0x31);
            gActors[0x31].colorA = 0x7F;
            func_80192C34_6F9EC4(actor_index, 0x36, D_801AAC38_711EC8);
            gActors[0x3B].state++;
            return;
        }
    default:
        return;
    case 0x302:
        func_80196EA8_6FE138(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xB4;
            func_80192CEC_6F9F7C(0x36, 1);
            gActors[0x3B].state++;
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x303:
        func_80196EA8_6FE138(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            gActors[0x3B].state++;
            return;
        }
        break;
    case 0x304:
        func_80196EA8_6FE138(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x34;
            D_801AA07C_71130C = 0x30;
            gActors[0x31].colorA = 0x3F;
            return;
        }
        break;
    case 0x305:
        func_80197030_6FE2C0(actor_index);
        if (D_801AA074_711304 == 1) {
            gActors[0x3B].state++;
        }
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x168;
            func_80192A48_6F9CD8(0xFF);
            func_80192A08_6F9C98(0x1E);
            Sound_PlaySfx(SFX_003F);
            gActors[0x3B].flags = ACTOR_FLAG_NONE;
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x306:
        func_80197030_6FE2C0(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            Sound_StartFade(1, 0x3C);
            return;
        }
        break;
    case 0x307:
        func_80197030_6FE2C0(actor_index);
        if ((D_801AA070_711300 <= 0) && (gAudioFadeMode != 1)) {
            gActors[actor_index].state = 0x400;
            Actor_ClearRange(0x38, 0x90);
            func_80192A08_6F9C98(0x3C);
        }
        break;
    }
}

void func_80197484_6FE714(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x300:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK6;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        // fallthrough
    case 0x301:
        func_801940B4_6FB344(actor_index, gActors[actor_index].posX.whole - 0x15, gActors[actor_index].posY.whole - 9, gActors[actor_index].posZ.whole - 1);
        func_801940B4_6FB344(actor_index, gActors[actor_index].posX.whole - 8, gActors[actor_index].posY.whole - 0xF, gActors[actor_index].posZ.whole - 1);
        return;
    case 0x302:
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = GINDEX_1800;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x303:
        func_8019435C_6FB5EC(actor_index, gActors[actor_index].posX.whole - 0x15, gActors[actor_index].posY.whole - 0xC, gActors[actor_index].posZ.whole + 1);
        return;
    case 0x304:
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = GINDEX_1808;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        // fallthrough
    case 0x305:
        func_8019419C_6FB42C(actor_index, gActors[actor_index].posX.whole - 0x13, gActors[actor_index].posY.whole - 0xF, gActors[actor_index].posZ.whole + 1);
        func_8019419C_6FB42C(actor_index, gActors[actor_index].posX.whole - 7, gActors[actor_index].posY.whole - 5, gActors[actor_index].posZ.whole + 1);
        return;
    case 0x306:
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = GINDEX_180A;
        // fallthrough
    case 0x307:
        func_80194284_6FB514(actor_index, gActors[actor_index].posX.whole - 0xD, gActors[actor_index].posY.whole - 0xD, gActors[actor_index].posZ.whole + 1);
        func_80194284_6FB514(actor_index, gActors[actor_index].posX.whole + 0xC, gActors[actor_index].posY.whole - 0xD, gActors[actor_index].posZ.whole + 1);
        return;
    case 0x308:
        gActors[actor_index].state++;
        Sound_PlaySfx(SFX_0080);
        // fallthrough
    case 0x309:
        func_8019443C_6FB6CC(actor_index, gActors[actor_index].posX.whole - 0xD, gActors[actor_index].posY.whole - 0xD, gActors[actor_index].posZ.whole + 1);
        func_8019443C_6FB6CC(actor_index, gActors[actor_index].posX.whole + 0xC, gActors[actor_index].posY.whole - 0xD, gActors[actor_index].posZ.whole + 1);
        // fallthrough
    default:
        return;
    }
}

void func_80197784_6FEA14(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x300:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].unk_188 = -0x600;
        gActors[actor_index].var_158 = FIXED_UNIT(-1536);
        gActors[actor_index].var_150 = 30;
        return;
    case 0x301:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            gActors[actor_index].scaleY += 0.04;
        }
        else {
            gActors[actor_index].scaleY += 0.002;
            gActors[actor_index].scaleX += 0.0001;
        }
        gActors[actor_index].rotateY = INDEX_TO_DEG(
            (COS_DEG_360 - COS_DEG_90 - Math_Atan2(
                gLookatEyeX - gActors[actor_index].posX.whole,
                gLookatEyeY - gActors[actor_index].posY.whole
            )) & COS_MASK
        );
        gActors[actor_index].var_158 += FIXED_UNIT(32);
        gActors[actor_index].unk_188 = (s16)gActors[actor_index].unk_158_u16[0];
        if (gActors[actor_index].unk_188 >= 0x100) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        return;
    }
}

void func_80197964_6FEBF4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x300:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].unk_188 = -0x600;
        gActors[actor_index].var_158 = FIXED_UNIT(-1536);
        gActors[actor_index].var_150 = 30;
        return;
    case 0x301:
        if (gActors[actor_index].var_150 != 0) {
            gActors[actor_index].var_150--;
            gActors[actor_index].scaleY += 0.4;
        }
        else {
            gActors[actor_index].scaleY += 2.0;
            gActors[actor_index].scaleX += 0.02;
        }
        gActors[actor_index].rotateY = INDEX_TO_DEG(
            (COS_DEG_360 - COS_DEG_90 - Math_Atan2(
                gLookatEyeX - gActors[actor_index].posX.whole,
                gLookatEyeY - gActors[actor_index].posY.whole
            )) & COS_MASK
        );
        gActors[actor_index].var_158 += FIXED_UNIT(32);
        gActors[actor_index].unk_188 = (s16)gActors[actor_index].unk_158_u16[0];
        if (gActors[actor_index].unk_188 >= 0x100) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        return;
    }
}

void func_80197B44_6FEDD4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x300:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].velocityX.raw = FIXED_UNIT(-16);
        // fallthrough
    case 0x301:
        gActors[actor_index].scaleX += 0.001;
        if (gActors[actor_index].posX.whole < -0xAF) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        return;
    case 0x310:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].scaleX = 0.3f;
        gActors[actor_index].scaleY = 0.3f;
        gActors[actor_index].colorA = Rand();
        gActors[actor_index].colorR = 0xFF;
        gActors[actor_index].colorG = 0xFF;
        gActors[actor_index].colorB = 0xFF;
        gActors[actor_index].unk_114 = Rand() & 0xF;
        gActors[actor_index].unk_118 = Rand() & 0xF;
        gActors[actor_index].unk_11C = Rand() & 0xF;
        // fallthrough
    case 0x311:
        gActors[actor_index].posX.raw *= 1.002;
        gActors[actor_index].posY.raw *= 1.002;
        gActors[actor_index].rotateX += gActors[actor_index].unk_114;
        gActors[actor_index].rotateY += gActors[actor_index].unk_118;
        gActors[actor_index].rotateZ += gActors[actor_index].unk_11C;
        if (gActors[actor_index].colorA) {
            gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 0, 1);
            return;
        }
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }
}

u16 func_80197D60_6FEFF0(void) {
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x40, 0x90);
    if (actor_index != 0) {
        return actor_index;
    }
    return Actor_RangeFindInactive(0x90, 0xC0);
}

void func_80197DA0_6FF030(u16 actor_index, u8* text, s16 y_position) {
    u16 glyph_index;
    s16 x_position;
    u16 new_actor_index;
    u16 character_index;
    u16 text_length;
    u8* text_cursor;
    u8* text_end;
    u32 first_character;
    u32 character;

    first_character = *text;
    text_cursor = text;
    text_end = text;
    text_length = 0;

    if (first_character != 0) {
        do {
            text_length++;
            text_end++;
        } while (*text_end != 0);
    }

    x_position = (8 - text_length * 8) / 2;
    character = first_character & 0xFFFF;
    character_index = 0;
    while (character != 0) {
        if (character != 0x20) {
            new_actor_index = func_80197D60_6FEFF0();
            if (new_actor_index) {
                glyph_index = ALPHA_GLYPH_INDEX(gASCIIAlphaIndecies[character - ' ']);
                func_801933F8_6FA688(actor_index, new_actor_index, glyph_index, x_position, y_position, 0);
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
                gActors[new_actor_index].var_154 = TO_FIXED(y_position);
                gActors[new_actor_index].var_158 = TO_FIXED(x_position);
                gActors[new_actor_index].unk_168 = character_index;
                gActors[new_actor_index].palette_18C = gActors[new_actor_index].palette_170;
                if (D_801AC3A0_713630 & 2) {
                    gActors[new_actor_index].unk_134 = 1.0f;
                }

                if (D_801AC3A0_713630 & 8) {
                    gActors[new_actor_index].var_15C = 2;
                }

                if (D_801AC3A0_713630 & 4) {
                    gActors[new_actor_index].var_15C = 1;
                }

                if (D_801AC3A0_713630 & 0x20) {
                    gActors[new_actor_index].var_160 = 2;
                }

                if (D_801AC3A0_713630 & 0x10) {
                    gActors[new_actor_index].var_160 = 1;
                }

                if (D_801AC3A0_713630 & 0x40) {
                    gActors[new_actor_index].unk_144 = 1.0f;
                }
            }
        }

        character = *++text_cursor;
        x_position += 8;
        character_index++;
    }
}

void func_80197FB8_6FF248(u16 actor_index, s16 value) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x40, 0x90);
    if (new_actor_index == 0) {
        return;
    }

    func_801933F8_6FA688(actor_index, new_actor_index, GINDEX_SOLIDSQUARE, 0, 0, 0);
    gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
    gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
    gActors[new_actor_index].scaleX = 17.0f;
    gActors[new_actor_index].scaleY = 0.1f;
    gActors[new_actor_index].colorR = 0x55;
    gActors[new_actor_index].colorG = 0x55;
    gActors[new_actor_index].colorB = 0x24;
    gActors[new_actor_index].var_154 = TO_FIXED(value);
    gActors[new_actor_index].var_158 = 0;

    if (D_801AC3A0_713630 & 2) {
        gActors[new_actor_index].unk_134 = 1.0f;
    }

    if (D_801AC3A0_713630 & 8) {
        gActors[new_actor_index].var_15C = 2;
    }

    if (D_801AC3A0_713630 & 4) {
        gActors[new_actor_index].var_15C = 1;
    }

    if (D_801AC3A0_713630 & 0x20) {
        gActors[new_actor_index].var_160 = 2;
    }

    if (D_801AC3A0_713630 & 0x10) {
        gActors[new_actor_index].var_160 = 1;
    }
}

u16 func_801980E0_6FF370(u16 actor_index) {
    u16 opcode = D_801AA87C_711B0C[gActors[actor_index].unk_180] & 0xFF00;
    u16 operand;
    u16 result = 0;
    operand = D_801AA87C_711B0C[gActors[actor_index].unk_180] & ~0xFF00;

    switch (opcode) {
    case 0x8000:
        gActors[actor_index].unk_180++;
        gActors[actor_index].unk_184 -= operand * D_801AC3A8_713638;
        break;
    case 0x8100:
        gActors[actor_index].unk_180++;
        switch (operand) {
        case 0:
            func_80197FB8_6FF248(actor_index, gActors[actor_index].unk_184 + 4);
            gActors[actor_index].unk_184 -= 8;
            break;
        case 4:
            result = 2;
            break;
        case 1:
            result = 1;
            break;
        case 2:
            D_801AC3A0_713630 &= ~1;
            break;
        case 3:
            D_801AC3A0_713630 |= 1;
            break;
        case 10:
            gActors[actor_index].var_160 = 0;
            break;
        case 11:
            gActors[actor_index].var_160 = 1;
            break;
        case 12:
            gActors[actor_index].var_160 = 2;
            break;
        case 13:
            gActors[actor_index].var_160 = 3;
            break;
        case 14:
            gActors[actor_index].var_160 = 4;
            break;
        case 15:
            gActors[actor_index].var_160 = 5;
            break;
        case 16:
            gActors[actor_index].var_160 = 6;
            break;
        case 17:
            gActors[actor_index].var_160 = 7;
            break;
        case 20:
            D_801AC3A0_713630 |= 2;
            D_801AC3A6_713636 = 0;
            break;
        case 26:
            D_801AC3A4_713634 = 182;
            break;
        case 30:
            D_801AC3A0_713630 &= ~2;
            break;
        case 21:
            D_801AC3A0_713630 &= ~8;
            D_801AC3A0_713630 &= ~4;
            break;
        case 23:
            D_801AC3A0_713630 |= 8;
            D_801AC3A0_713630 &= ~4;
            break;
        case 22:
            D_801AC3A0_713630 |= 4;
            D_801AC3A0_713630 &= ~8;
            break;
        case 27:
            D_801AC3A0_713630 &= ~32;
            D_801AC3A0_713630 &= ~16;
            break;
        case 29:
            D_801AC3A0_713630 |= 32;
            D_801AC3A0_713630 &= ~16;
            break;
        case 28:
            D_801AC3A0_713630 |= 16;
            D_801AC3A0_713630 &= ~32;
            break;
        case 24:
            D_801AC3A8_713638 = 8;
            break;
        case 25:
            D_801AC3A8_713638 = 16;
            break;
        case 31:
            gActors[actor_index].unk_184 -= 8;
            break;
        case 32:
            D_801AC3A0_713630 |= 64;
            break;
        }
        break;
    case 0x8200:
        gActors[actor_index].unk_180++;
        func_80197DA0_6FF030(actor_index, gCreditsText[operand], gActors[actor_index].unk_184);
        gActors[actor_index].unk_184 -= D_801AC3A8_713638;
        break;
    }
    return result;
}

s32 func_80198458_6FF6E8(u16 actor_index) {
    u16 result;

    if (D_801AC3A4_713634 != 0) {
        D_801AC3A4_713634--;
        if (D_801AC3A4_713634 <= 0) {
            D_801AC3A6_713636 = 1;
        }
    }

    D_801AC3A2_713632--;
    if (D_801AC3A2_713632 > 0) {
        return 0;
    }

    gActors[actor_index].unk_184 = 0x50;
    while ((result = func_801980E0_6FF370(actor_index)) == 0) {
    }

    switch (result) {
    case 1:
        return 1;
    case 2:
        D_801AC3A2_713632 = 0xF0;
        break;
    }
    return 0;
}

u16 func_8019854C_6FF7DC(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return 0;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, 0, 0, 0);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].posX.whole = Rand() - 128;
        gActors[new_actor_index].posY.whole = Rand() - 128;
        gActors[new_actor_index].posZ.whole = -256;
        gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(8);
        gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
    }
    return new_actor_index;
}

void func_80198654_6FF8E4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x400:
        gActors[actor_index].state++;
        D_801AA070_711300 = 60;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_END_TITLE);
        break;
    case 0x401:
        func_8019854C_6FF7DC(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AC3A6_713636 = 0;
            D_801AC3A4_713634 = 0;
            D_801AC3A2_713632 = 0;
            D_801AC3A0_713630 = 0;
            D_801AC3A8_713638 = 16;
            func_80192734_6F99C4(0x3F);
            func_801927CC_6F9A5C(0);
            gActors[actor_index].unk_180 = (gActors[actor_index].var_0D8 & 1) ? 0x65 : 0;
            gActors[actor_index].unk_184 = 0;
            D_801AC39E_71362E = 0;
        }
        break;
    case 0x402:
        func_8019854C_6FF7DC(actor_index);
        if (func_80198458_6FF6E8(actor_index) != 0) {
            if (gActors[actor_index].var_0D8 == 1) {
                gActors[actor_index].state = 0x406;
                break;
            }
            gActors[actor_index].state++;
            D_801AA078_711308 = 180;
        }

        D_801AC39E_71362E++;
        if (gActors[actor_index].var_0D8 == 0 && D_801AC39E_71362E >= 0x253) {
            D_801AC39E_71362E = 0;
            func_801A9044_7102D4();
        }
        break;
    case 0x403:
        func_8019854C_6FF7DC(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 60;
            func_80192A80_6F9D10();
            func_80192A28_6F9CB8(60);
            Sound_StartFade(1, 60);
            if (gActors[actor_index].var_0D8 == 0) {
                func_801A9044_7102D4();
            }
        }
        break;
    case 0x404:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            if (gActors[actor_index].var_0D8 & 1) {
                gActors[actor_index].state++;
                D_800D28FC |= 1;
                func_80045D84(1, 90);
            }
            else {
                gActors[actor_index].state = 0x500;
                Actor_ClearRange(0x38, 0x90);
            }
        }
        break;
    case 0x406:
        gActors[actor_index].state++;
        // fallthrough
    case 0x407:
        func_8019854C_6FF7DC(actor_index);
        if (gAudioUpdateCounter >= 0x3601U) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 60;
            Sound_StartFade(1, 60);
            func_80192A80_6F9D10();
            func_80192A28_6F9CB8(60);
        }
        break;
    case 0x408:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            WorldMap_UpdateSaveFile2();
            gGameState = GAMESTATE_SOFTRESET;
            gGameStateSubState = 0;
        }
        break;
    }
}

void func_801989AC_6FFC3C(u16 actor_index) {
    s32 var_v0 = gActors[actor_index].state;
    u8 color;

    if (var_v0 != 0x400) {
        if (var_v0 != 0x401) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    }

    gActors[actor_index].rotateY = INDEX_TO_DEG(
        (Math_Atan2(gLookatEyeX - gActors[actor_index].posX.whole, gActors[actor_index].posZ.whole - gLookatEyeZ) - COS_DEG_90) & COS_MASK
    );
    var_v0 = ABS(gActors[actor_index].posZ.whole);
    color = var_v0;
    if (color >= 128) {
        color = 128;
    }

    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;
    if (gActors[actor_index].posZ.whole < 256) {
        return;
    }
    gActors[actor_index].flags = ACTOR_FLAG_NONE;
}

void func_80198B18_6FFDA8(u16 actor_index) {
    s32 temp_v0 = gActors[actor_index].state;

    switch (temp_v0) {
    case 0x400:
        gActors[actor_index].state = temp_v0 + 1;
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].var_150 = 0x3C;
        switch (gActors[actor_index].var_15C) {
        case 0:
            gActors[actor_index].posY.raw = (gActors[actor_index].var_154 - FIXED_UNIT(112)) * 1.5;
            break;
        case 1:
            gActors[actor_index].posY.raw = gActors[actor_index].var_154;
            gActors[actor_index].posX.raw = gActors[actor_index].var_158 + FIXED_UNIT(320);
            break;
        case 2:
            gActors[actor_index].posY.raw = gActors[actor_index].var_154;
            gActors[actor_index].posX.raw = gActors[actor_index].var_158 - FIXED_UNIT(320);
            break;
        }

        gActors[actor_index].posZ.whole = 0x200;
        gActors[actor_index].unk_188 = 0;
        func_80192374_6F9604(actor_index, gActors[actor_index].palette_170, 10, 10, 10);
        gActors[actor_index].unk_178 = 0xA;
        gActors[actor_index].unk_17C = 0xA;
        gActors[actor_index].unk_180 = 0xA;
        gActors[actor_index].unk_138 = Rand() & 0x1F;
        gActors[actor_index].unk_13C_f32 = Rand() & 0x1F;
        gActors[actor_index].unk_140_f32 = Rand() & 0x1F;
        // fallthrough
    case 0x401:
        switch (gActors[actor_index].var_15C) {
        case 0:
            gActors[actor_index].posY.raw = func_801922EC_6F957C(gActors[actor_index].posY.raw, gActors[actor_index].var_154, FIXED_UNIT(4), 3);
            break;
        case 1:
            gActors[actor_index].posX.raw = func_801922EC_6F957C(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(6), 3);
            break;
        case 2:
            gActors[actor_index].posX.raw = func_801922EC_6F957C(gActors[actor_index].posX.raw, gActors[actor_index].var_158, FIXED_UNIT(6), 3);
            break;
        }
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x3C;
        }
    default:
        break;
    case 0x402:
        if (gActors[actor_index].graphicIndex == GINDEX_SOLIDSQUARE) {
            gActors[actor_index].colorR = Math_ApproachS32(gActors[actor_index].colorR, 0xFF, 0xC);
            gActors[actor_index].colorG = Math_ApproachS32(gActors[actor_index].colorG, 0, 0xC);
            gActors[actor_index].colorB = Math_ApproachS32(gActors[actor_index].colorB, 0, 0xC);
        }
        else {
            temp_v0 = gActors[actor_index].unk_16C;
            switch (temp_v0) {
            case 4:
                break;
            case 0:
                gActors[actor_index].unk_16C = temp_v0 + 1;
                gActors[actor_index].unk_184 = gActors[actor_index].unk_168;
                // fallthrough
            case 1:
                if (--gActors[actor_index].unk_184 <= 0) {
                    gActors[actor_index].unk_16C += 1;
                    gActors[actor_index].unk_184 = 4;
                }
                break;
            case 2:
                gActors[actor_index].unk_178 = func_8019214C_6F93DC(
                    gActors[actor_index].unk_178,
                    gActors[actor_index].unk_138,
                    gActors[actor_index].unk_184_s16[1]
                );
                gActors[actor_index].unk_17C = func_8019214C_6F93DC(
                    gActors[actor_index].unk_17C,
                    gActors[actor_index].unk_13C_f32,
                    gActors[actor_index].unk_184_s16[1]
                );
                temp_v0 = func_8019214C_6F93DC(gActors[actor_index].unk_180, gActors[actor_index].unk_140_f32, gActors[actor_index].unk_184_s16[1]);
                gActors[actor_index].unk_180 = temp_v0;
                func_80192374_6F9604(actor_index, gActors[actor_index].palette_170, gActors[actor_index].unk_178_s8[3], gActors[actor_index].unk_17C_s8[3], temp_v0);
                if (gActors[actor_index].unk_184-- <= 0) {
                    gActors[actor_index].unk_16C += 1;
                    gActors[actor_index].unk_184 = 4;
                }
                break;
            case 3:
                gActors[actor_index].unk_178 = func_8019214C_6F93DC(gActors[actor_index].unk_178, 0x1F, gActors[actor_index].unk_184_s16[1]);
                gActors[actor_index].unk_17C = func_8019214C_6F93DC(gActors[actor_index].unk_17C, 0x1F, gActors[actor_index].unk_184_s16[1]);
                temp_v0 = func_8019214C_6F93DC(gActors[actor_index].unk_180, 0x1F, gActors[actor_index].unk_184_s16[1]);
                gActors[actor_index].unk_180 = temp_v0;
                func_80192374_6F9604(actor_index, gActors[actor_index].palette_170, gActors[actor_index].unk_178_s8[3], gActors[actor_index].unk_17C_s8[3], temp_v0);
                if (gActors[actor_index].unk_184-- <= 0) {
                    gActors[actor_index].unk_16C += 1;
                }
                break;
            }
        }

        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].posX.raw &= ~(FIXED_UNIT(1) - 1);
            gActors[actor_index].posY.raw &= ~(FIXED_UNIT(1) - 1);
            gActors[actor_index].var_150 = 0x3C;
            gActors[actor_index].unk_164 = FIXED_UNIT(0.5);
        }
        break;
    case 0x403:
        if (gActors[actor_index].unk_134 != 0.0f) {
            if (D_801AC3A6_713636 != 0) {
                gActors[actor_index].state = temp_v0 + 1;
                gActors[actor_index].var_150 = 0x3C;
                return;
            }
        }
        else {
            if (gActors[actor_index].var_150-- <= 0) {
                gActors[actor_index].state++;
                gActors[actor_index].var_150 = 0x3C;
            }
        }
        break;
    case 0x404:
        if (gActors[actor_index].unk_144 != 0.0f) {
            break;
        }
        switch (gActors[actor_index].var_160) {
        case 0:
            temp_v0 = gActors[actor_index].unk_164;
            gActors[actor_index].posY.raw += temp_v0;
            gActors[actor_index].unk_164 = temp_v0 * 1.1;
            if (gActors[actor_index].var_154 >= (FIXED_UNIT(8) + 1)) {
                gActors[actor_index].var_154 = FIXED_UNIT(8);
            }
            break;
        case 1:
            temp_v0 = gActors[actor_index].unk_164;
            gActors[actor_index].posX.raw += temp_v0;
            gActors[actor_index].unk_164 = temp_v0 * 1.1;
            if (gActors[actor_index].var_154 >= (FIXED_UNIT(8) + 1)) {
                gActors[actor_index].var_154 = FIXED_UNIT(8);
            }
            break;
        case 2:
            temp_v0 = gActors[actor_index].unk_164;
            gActors[actor_index].posX.raw -= temp_v0;
            gActors[actor_index].unk_164 = temp_v0 * 1.1;
            if (gActors[actor_index].var_154 < FIXED_UNIT(-8)) {
                gActors[actor_index].var_154 = FIXED_UNIT(-8);
            }
            break;
        }
        if (gActors[actor_index].var_150-- <= 0 || gActors[actor_index].posY.whole >= 0x70 || ABS(gActors[actor_index].posX.whole) >= 0xA0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801991E4_700474(u16 actor_index, s16 x, s16 y, s32 unused, u16* text) {
    u16 index = 0;
    u16 character;
    u16 new_actor_index;

    while (1) {
        character = text[index];
        if (character == 0) {
            return;
        }

        new_actor_index = Actor_RangeFindInactive(0x38, 0x50);
        if (new_actor_index != 0) {
            func_8019339C_6FA62C(actor_index, new_actor_index, ALPHA_GLYPH_INDEX(character), x + index * 16, y, 0);
        }
        index++;
    }
}

void func_801992C4_700554(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x500:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_80192A08_6F9C98(0x3C);
        func_80192734_6F99C4(0xFF);
        func_801927CC_6F9A5C(0);
        func_801991E4_700474(actor_index, -0x40, 8, 0x10, D_801AAC78_711F08);
        func_801991E4_700474(actor_index, -0x30, -8, 0x10, D_801AAC8C_711F1C);
        return;
    case 0x501:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
        }
        return;
    case 0x502:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            return;
        }
        break;
    case 0x503:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x600;
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
}

void func_80199424_7006B4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x500:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        // fallthrough
    case 0x501:
        return;
    }
}

void func_80199490_700720(void) {
    gScreenBoundX0.raw = gScreenPosCurrentX.raw - FIXED_UNIT(144);
    gScreenBoundX1.raw = gScreenPosCurrentX.raw + FIXED_UNIT(144);
    gScreenBoundY0.raw = gScreenPosCurrentY.raw + FIXED_UNIT(112);
    gScreenBoundY1.raw = gScreenPosCurrentY.raw - FIXED_UNIT(112);
}

void func_801994E4_700774(u16 actor_index) {
    s32 index;

    switch (gActors[actor_index].state) {
    case 0x601:
        break;
    case 0x600:
        gActors[actor_index].state = 0x700;
        func_8002670C(SCENE_CLANCEWAR);
        func_80026784(SCENE_CLANCEWAR);
        func_800267FC(SCENE_UNK03);
        func_800255B4(SCENE_CLANCEWAR);
        func_80010C20(SCENE_CLANCEWAR);
        func_80026220(SCENE_CLANCEWAR);
        func_80026E60(SCENE_LUNAR);
        func_80026F2C(SCENE_MEETMARINA);
        func_80026B04(SCENE_LUNAR);
        func_80025E00();
        D_801376BC[0] = 1;
        D_801376BC[1] = 1;
        D_801376BC[2] = 1;
        func_80192408_6F9698();

        for (index = 0; index < sizeof(D_8010CDF0); index++) {
            D_8010CDF0[index] = 0;
        }

        func_80192A08_6F9C98(0x1E);
        func_80192734_6F99C4(0xFF);
        func_801927CC_6F9A5C(0);
        break;
    }
}

void func_80199600_700890(u16 actor_index, u16 x, u16 y) {
    u16 cloud_actor_index = 0x50;
    u16 fixed_actor_index = 0x38;

    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL0_END_20;
    Actor_Initialize(fixed_actor_index);
    gActors[fixed_actor_index].flags |= ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_FLIPPED;
    gActors[fixed_actor_index].posX.whole = x - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = y - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = 1;
    gActors[fixed_actor_index].var_0D8 = 0x40;
    D_801AC378_713608 = 8000;
    D_801AC37C_71360C = 0;
    D_801AC38C_71361C = 0;
    D_801AC390_713620 = 0;
    D_801AC394_713624 = 0;
    func_80193618_6FA8A8(actor_index, cloud_actor_index, GINDEX_SAGECLOUD, gActors[fixed_actor_index].posX.whole - 8, gActors[fixed_actor_index].posY.whole - 16, 8);
    gActors[cloud_actor_index].state = 0;
    gActors[cloud_actor_index].var_154 = fixed_actor_index;
}

void func_80199704_700994(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x700:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x78;
        gScreenPosTargetX.whole = 0x230;
        gScreenPosTargetY.whole = 0x188;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        func_80192A08_6F9C98(0x3C);
        func_80192734_6F99C4(0);
        func_801927CC_6F9A5C(0);
        gAudioFadeMode = 0;
        Sound_PlayMusic(4);
        func_80199600_700890(actor_index, gScreenPosCurrentX.whole + 0xB0, gScreenPosCurrentY.whole - 9);
        gActors[0x38].unk_168 = 0x1F40;
        func_80192734_6F99C4(0xFF);
        gActors[0x31].posZ.whole = -0x10;
        func_801927CC_6F9A5C(0);
        gActors[0x32].posZ.whole = 0x10;
        gActors[actor_index].coord_154.whole = 0xFF;
    default:
        break;
    case 0x701:
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(74), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(7, 0x14, -0x10);
            func_8019339C_6FA62C(actor_index, 0x57, GINDEX_SOLIDSQUARE, (0x140 - gScreenPosCurrentX.whole), -0x1B, -0x20);
            func_801A97B8_710A48(0x38);
        }
        break;
    case 0x702:
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(74), D_801AA070_711300);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_801A9818_710AA8(0x38);
            func_8019270C_6F999C(0x3C);
            func_801A9044_7102D4();
        }
        break;
    case 0x703:
        gActors[0x38].posX.raw = FIXED_UNIT(74);
        gScreenPosTargetX.raw = func_8019214C_6F93DC(gScreenPosTargetX.raw, FIXED_UNIT(384), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x57].posZ.whole = 0x20;
            func_80193900_6FAB90(8, 0x14, -0x10);
        }
        break;
    case 0x704:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80193900_6FAB90(9, -9, -0x10);
            gActors[0x57].graphicList = D_801AACB0_711F40;
            gActors[0x57].graphicTimer = 1;
        }
        // fallthrough
    case 0x705:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xA, 0x14, -0x10);
            func_801935C4_6FA854(actor_index, -0x18, 0xF, 2);
            gActors[0x57].graphicList = D_801AAD10_711FA0;
            gActors[0x57].graphicTimer = 1;
            func_801A97E8_710A78(0x38);
            func_801A9044_7102D4();
        }
        break;
    case 0x706:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.6f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xB, 0x14, -0x10);
        }
        break;
    case 0x707:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.3f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_801A9740_7109D0(actor_index);
            gActors[0x38].unk_120 = 0.5f;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveYellow(1.0f, gActors[0x51].posX.whole, gActors[0x51].posY.whole, 0x30);
            func_801934B0_6FA740(actor_index, 0x52, 0, 0, 0, 0x28);
            func_8019350C_6FA79C(actor_index, 0x53, 0, 0, 0, 0x18);
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x38);
            func_80192734_6F99C4(0xFF);
        }
        break;
    case 0x708:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_8019277C_6F9A0C(0x1E);
            D_801AA080_711310 = 0;
        }
        break;
    case 0x709:
        if (D_801AA080_711310 != 0) {
            gActors[actor_index].state++;
            D_801AA080_711310 = 0;
            gActors[0x57].graphicIndex = GINDEX_4033;
            gActors[0x57].graphicTimer = 0;
        }
        break;
    case 0x70A:
        if (D_801AA080_711310 != 0) {
            gActors[actor_index].state++;
            D_801AA080_711310 = 0;
            D_801AA078_711308 = 0x1E;
            gActors[0x57].graphicList = D_801AAD28_711FB8;
            gActors[0x57].graphicTimer = 1;
            gActors[0x57].velocityY.raw = FIXED_UNIT(0.25);
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0x70B:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x800;
            func_80192A98_6F9D28();
            func_80192A48_6F9CD8(0xFF);
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
}

void func_80199C98_700F28(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x700:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicList = D_801AAC9C_711F2C;
        gActors[actor_index].graphicTimer = 1;
        // fallthrough
    case 0x701:
        return;
    }
}

void func_80199D20_700FB0(u16 actor_index) {
    f32 scale;

    switch (gActors[actor_index].state) {
    case 0x700:
        scale = 11.4f;
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_LASERA;
        gActors[actor_index].colorA = 0x7F;
        gActors[actor_index].posX.whole = -0x42;
        gActors[actor_index].posY.whole = 0xF0;
        gActors[actor_index].rotateZ = 90.0f;
        gActors[actor_index].scaleX = 9.4f;
        gActors[actor_index].unk_118 = scale * 1000.0f;
        gActors[actor_index].var_150 = 0x26;
        gActors[actor_index].scaleY = scale;
        return;
    case 0x701:
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, FIXED_UNIT(57), gActors[actor_index].var_150);
        gActors[actor_index].unk_118 = func_80192100_6F9390(gActors[actor_index].unk_118, 5900.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleY = gActors[actor_index].unk_118 / 1000.0f;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
            D_801AA080_711310 = 1;
            return;
        }
    case 0x704:
    default:
        return;
    case 0x702:
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x1E;
            D_801AA080_711310 = 1;
            return;
        }
        break;
    case 0x703:
        gActors[actor_index].unk_118 = func_80192100_6F9390(gActors[actor_index].unk_118, 23800.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleY = gActors[actor_index].unk_118 / 1000.0f;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_80199F08_701198(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x700:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTX | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_CIRCLEEFFECT;
        gActors[actor_index].posX.whole = -60;
        gActors[actor_index].posY.whole = -64;
        gActors[actor_index].colorA = 0x7F;
        gActors[actor_index].rotateX = 275.0f;
        gActors[actor_index].var_150 = 38;
        gActors[actor_index].scaleX = 0.0f;
        gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
        break;
    case 0x701:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 4000.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0f;
        gActors[actor_index].scaleY = gActors[actor_index].unk_114 / 1000.0f;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 30;
        }
        break;
    case 0x702:
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 30;
        }
        break;
    case 0x703:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 16000.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0f;
        gActors[actor_index].scaleY = gActors[actor_index].unk_114 / 1000.0f;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    default:
    case 0x704:
        break;
    }
}

void func_8019A0B8_701348(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x800:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_80026E60(SCENE_UNK84);
        func_80192A08_6F9C98(0x1E);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_CLEAR);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        func_80192734_6F99C4(0x7F);
        func_801927CC_6F9A5C(0);
        Sound_PlaySfx(SFX_003F);
        func_8019339C_6FA62C(actor_index, 0x57, GINDEX_0800, 0, 0, 0);
        return;
    case 0x801:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193950_6FABE0(0xC);
            func_801A9044_7102D4();
        }
        return;
    case 0x802:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A98_6F9D28();
            func_80192A28_6F9CB8(0x3C);
            return;
        }
        break;
    case 0x803:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x900;
            Actor_ClearRange(0x38, 0x90);
            func_80192734_6F99C4(0);
            func_801927CC_6F9A5C(0);
        }
        break;
    }
}

void func_8019A250_7014E0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x802:
        break;
    case 0x800:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.whole = -0x200;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].scaleX = 5.0f;
        gActors[actor_index].scaleY = 5.0f;
        gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0;
        // fallthrough
    case 0x801:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].posX.raw = func_8019214C_6F93DC(gActors[actor_index].posX.raw, 0, D_801AA070_711300);
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 1000.0f, D_801AA070_711300);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0f;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_8019A3A8_701638(u16 actor_index) {
    s32 index;

    switch (gActors[actor_index].state) {
    case 0x900:
        gActors[actor_index].state++;
        func_800255B4(SCENE_TARUS);
        func_8002670C(SCENE_TARUS);
        func_80026784(SCENE_TARUS);
        func_80026220(SCENE_RESCUEACT1);
        func_80026428(SCENE_ASTERSTRYKE);
        func_800267FC(SCENE_UNK03);
        func_80010C20(SCENE_TARUS);
        func_80025E00();
        func_80026E60(SCENE_UNK84);
        func_80026F2C(SCENE_MEETMARINA);
        func_80027018(SCENE_TARUS);
        gScreenPosTargetX.whole = 0x260;
        gScreenPosTargetY.whole = 0x180;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;

        for (index = 0; index < sizeof(D_8010CDF0); index++) {
            D_8010CDF0[index] = 0;
        }

        func_80192408_6F9698();
        func_80025BFC();
        Palette_AdjustScenePalettes(2, 2, 6, 0, 0, -1, 0, 0, -6);
        return;
    case 0x901:
        gActors[actor_index].state = 0xA00;
        return;
    }
}

void func_8019A520_7017B0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xA00:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        D_801AA074_711304 = 0x28;
        func_80192A08_6F9C98(0x3C);
        gAudioFadeMode = 0;
        Sound_PlayMusic(4);
        func_80199600_700890(actor_index, (gScreenPosCurrentX.whole + 0xB0), (gScreenPosCurrentY.whole - 9));
        gActors[0x38].unk_168 = 0x1F40;
        func_80192734_6F99C4(0);
        func_801927CC_6F9A5C(0);
        gActors[0x31].posZ.whole = -0x10;
        gActors[0x32].posZ.whole = 0x10;
        func_8019339C_6FA62C(actor_index, 0x57, 0, -0x40, -0x1B, -0x20);
        gActors[actor_index].coord_154.whole = 0xFF;
    default:
        break;
    case 0xA01:
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(74), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x12, 0x14, -0x10);
        }
        break;
    case 0xA02:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA070_711300 = 0xB4;
            func_80193900_6FAB90(0x13, 7, -0x10);
            gActors[0x57].posZ.whole = 0x20;
            gActors[0x57].graphicList = D_801AAD48_711FD8;
            gActors[0x57].graphicTimer = 1;
            func_801A9044_7102D4();
        }
        break;
    case 0xA03:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x14, 0x14, -0x10);
            func_801935C4_6FA854(actor_index, 0x18, 6, -4);
            gActors[0x57].graphicList = D_801AADC0_712050;
            gActors[0x57].graphicTimer = 1;
            func_801A97E8_710A78(0x38);
        }
        break;
    case 0xA04:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.6f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x15, 0x14, -0x10);
        }
        break;
    case 0xA05:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.3f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_801A9740_7109D0(actor_index);
            gActors[0x38].unk_120 = 0.5f;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveYellow(1.0f, gActors[0x51].posX.whole, gActors[0x51].posY.whole, 0x30);
            func_801933F8_6FA688(actor_index, 0x52, GINDEX_CIRCLEEFFECT, 0, 0, 0);
            func_80192734_6F99C4(0xFF);
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x38);
            func_801A9044_7102D4();
        }
        break;
    case 0xA06:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_8019277C_6F9A0C(0x1E);
            D_801AA080_711310 = 0;
        }
        break;
    case 0xA07:
        if (D_801AA080_711310 != 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0xA08:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0xB00;
            func_80192A48_6F9CD8(0xFF);
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
}

void func_8019A940_701BD0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xA00:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicList = D_801AAD34_711FC4;
        gActors[actor_index].graphicTimer = 1;
        // fallthrough
    case 0xA01:
        return;
    }
}

void func_8019A9C0_701C50(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xA00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posZ.whole = gActors[0x57].posZ.whole - 1;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].var_150 = 0x1F;
        gActors[actor_index].scaleX = 0.0f;
        gActors[actor_index].scaleY = 0.0f;
        gActors[actor_index].unk_114 = 0.0f;
        // fallthrough
    case 0xA01:
        gActors[actor_index].posX.whole = gActors[0x57].posX.whole;
        gActors[actor_index].posY.whole = gActors[0x57].posY.whole;
        gActors[actor_index].scaleX += 0.08;
        gActors[actor_index].scaleY += 0.08;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 8;
            func_80193454_6FA6E4(actor_index, 0x53, GINDEX_PARTICLERING, 0, 0, 0);
        }
        return;
    case 0xA02:
        gActors[actor_index].scaleX -= 0.002;
        gActors[actor_index].scaleY -= 0.002;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            D_801AA080_711310 = 1;
            return;
        }
        break;
    case 0xA03:
        gActors[actor_index].scaleX += 0.3;
        gActors[actor_index].scaleY += 0.3;
        break;
    }
}

void func_8019ABB0_701E40(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xA00:
        gActors[actor_index].state++;
        gActors[actor_index].var_150 = 8;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.whole = gActors[0x57].posX.whole;
        gActors[actor_index].posY.whole = gActors[0x57].posY.whole;
        gActors[actor_index].posZ.whole = gActors[0x57].posZ.whole + 1;
        gActors[actor_index].scaleX = 5.0f;
        gActors[actor_index].scaleY = 5.0f;
        gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0;
        // fallthrough
    case 0xA01:
        gActors[actor_index].posX.whole = gActors[0x57].posX.whole;
        gActors[actor_index].posY.whole = gActors[0x57].posY.whole;
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 0.0f, gActors[actor_index].var_150_s16[1]);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        return;
    }
}

void func_8019ACFC_701F8C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xB00:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_80026E60(SCENE_UNK84);
        func_80192A08_6F9C98(0x1E);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_CLEAR);
        func_80192734_6F99C4(0x7F);
        func_801927CC_6F9A5C(0);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        Sound_PlaySfx(SFX_003F);
        func_8019339C_6FA62C(actor_index, 0x57, GINDEX_0804, 0, 0x70, 0x17E);
        return;
    case 0xB01:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193950_6FABE0(0x16);
        }
        return;
    case 0xB02:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            return;
        }
        break;
    case 0xB03:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0xC00;
            Actor_ClearRange(0x38, 0x90);
            func_80192734_6F99C4(0);
            func_801927CC_6F9A5C(0);
            func_801A9044_7102D4();
        }
        break;
    }
}

void func_8019AE98_702128(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xB02:
        break;
    case 0xB00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].var_154 = 0;
        break;
    case 0xB01:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].posY.raw = func_8019214C_6F93DC(gActors[actor_index].posY.raw, 0, D_801AA070_711300);
        gActors[actor_index].posZ.raw = func_8019214C_6F93DC(gActors[actor_index].posZ.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_8019AFA4_702234(u16 actor_index) {
    if (gActors[actor_index].state != 0xC00) {
        return;
    }

    gActors[actor_index].state = 0xD00;
    func_8002670C(SCENE_MERCO);
    func_80026784(SCENE_MERCO);
    func_800255B4(SCENE_MERCO);
    func_80010C20(SCENE_MERCO);
    func_80026220(SCENE_MERCO);
    func_800267FC(SCENE_UNK03);
    func_80026694(SCENE_MERCO);
    func_80025E00();
    func_80024DD8();
    func_80024E18();
    func_80026E60(SCENE_TRAPPED);
    func_80026F2C(SCENE_MEETMARINA);
    func_80026B04(SCENE_UNK07);
    func_80025E00();
    gLookatEyeX = 0.0f;
    gLookatEyeY = 0.0f;
    gLookatEyeZ = 448.0f;
    gLookatAtX = 0.0f;
    gLookatAtY = 0.0f;
    gLookatAtZ = 0.0f;
    Palette_AdjustRgb5551Array(PALETTE_802F8068, PALETTE_802F7E68, 0xFF, -2, -3, -4);
    Palette_AdjustRgb5551Array(PALETTE_803DA600, PALETTE_80380400, 0xFF, 1, 0, 1);
    func_80192408_6F9698();
}

void func_8019B108_702398(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xD00:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x78;
        func_80192A08_6F9C98(0x3C);
        gAudioFadeMode = 0;
        Sound_PlayMusic(4);
        func_80192734_6F99C4(0);
        func_801927CC_6F9A5C(0);
        gActors[0x31].posZ.whole = -0x10;
        gActors[0x32].posZ.whole = 0x10;
        func_8019339C_6FA62C(actor_index, 0x60, GINDEX_0812, -0xC0, -0x3E, -0x100);
        func_8019339C_6FA62C(actor_index, 0x61, GINDEX_0814, 0, -0x3E, -0x100);
        func_8019339C_6FA62C(actor_index, 0x62, GINDEX_0816, 0xC0, -0x3E, -0x100);
        func_801933F8_6FA688(actor_index, 0x57, GINDEX_603D, -0x40, -0x1B, 0x20);
        func_80199600_700890(actor_index, (gScreenPosCurrentX.whole + 0x4A), (gScreenPosCurrentY.whole + 0x80));
        break;
    case 0xD01:
        gActors[0x38].posY.raw = func_801922EC_6F957C(gActors[0x38].posY.raw, FIXED_UNIT(-9), FIXED_UNIT(2), 3);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xD, 0x14, -0x10);
        }
        break;
    case 0xD02:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA070_711300 = 0x78;
            gActors[0x57].graphicList = D_801AADF0_712080;
            gActors[0x57].graphicTimer = 1;
            func_80193900_6FAB90(0xE, -0x16, -0x10);
        }
        break;
    case 0xD03:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xF, 0x14, -0x10);
            func_801935C4_6FA854(actor_index, -0x11, 7, 4);
            func_801A97E8_710A78(0x38);
            func_801A9044_7102D4();
        }
        break;
    case 0xD04:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.6f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_80193900_6FAB90(0x10, 0x14, -0x10);
            gActors[0x50].flags |= ACTOR_FLAG_PLATFORM1;
            gActors[0x50].base_0F8_s32[0x19] = 1;
            gActors[0x57].graphicList = D_801AAE08_712098;
            gActors[0x57].graphicTimer = 1;
        }
        break;
    case 0xD05:
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.3f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_801A9740_7109D0(actor_index);
            gActors[0x38].unk_120 = 0.5f;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveYellow(1.0f, gActors[0x51].posX.whole, gActors[0x51].posY.whole, 0x30);
            gActors[0x57].velocityY.raw = FIXED_UNIT(0.5);
            func_80193454_6FA6E4(actor_index, 0x52, GINDEX_CIRCLEEFFECT, gActors[0x57].posX.whole, gActors[0x57].posY.whole, gActors[0x57].posZ.whole - 2);
            func_80192734_6F99C4(0xFF);
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x38);
        }
        break;
    case 0xD06:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_8019277C_6F9A0C(0x1E);
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0xD07:
        if ((D_801AA070_711300 <= 0) && (gAudioFadeMode != 1)) {
            gActors[actor_index].state = 0xE00;
            func_80192A48_6F9CD8(0xFF);
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
    D_800BE57C += 1;
}

void func_8019B590_702820(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xD00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTX | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        // fallthrough
    case 0xD01:
        return;
    }
}

void func_8019B604_702894(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xD00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        // fallthrough
    case 0xD01:
        return;
    }
}

void func_8019B678_702908(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xD00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].colorA = 0x80;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].scaleY = 0.1f;
        SpawnParticle_RingSparkle(actor_index, 0, 2.0f, gActors[0x57].posX.whole, gActors[0x57].posY.whole, (gActors[0x57].posZ.whole - 1));
        gActors[actor_index].var_150 = 8;
        // fallthrough
    case 0xD01:
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0f;
            gActors[actor_index].var_150 = 0xA;
            return;
        }
    case 0xD04:
    default:
        return;
    case 0xD02:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 3000.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0;
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            func_801934B0_6FA740(actor_index, 0x53, GINDEX_LASERA, gActors[0x57].posX.whole, gActors[0x57].posY.whole, (gActors[0x57].posZ.whole - 1));
            gActors[actor_index].var_150 = 0xA;
            gActors[actor_index].var_154 = TO_FIXED(gActors[actor_index].colorA);
            return;
        }
        break;
    case 0xD03:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, 0, gActors[actor_index].var_150);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_8019B874_702B04(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xD03:
        break;
    case 0xD00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].scaleX = 0.1f;
        gActors[actor_index].scaleY = 0.1f;
        gActors[actor_index].unk_114 = gActors[actor_index].scaleX * 1000.0f;
        gActors[actor_index].var_150 = 10;
        // fallthrough
    case 0xD01:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 24000.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleX = gActors[actor_index].unk_114 / 1000.0;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].unk_118 = gActors[actor_index].scaleY * 1000.0f;
            gActors[actor_index].var_150 = 10;
        }
        break;
    case 0xD02:
        gActors[actor_index].unk_118 = func_80192100_6F9390(gActors[actor_index].unk_118, 20000.0f, gActors[actor_index].var_150);
        gActors[actor_index].scaleY = gActors[actor_index].unk_118 / 1000.0;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_8019BA10_702CA0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xE00:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_80026E60(SCENE_UNK84);
        func_80192A08_6F9C98(0x1E);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_CLEAR);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        func_80192734_6F99C4(0x7F);
        func_801927CC_6F9A5C(0);
        Sound_PlaySfx(SFX_003F);
        func_8019339C_6FA62C(actor_index, 0x57, GINDEX_0802, 0, 0, 0);
        return;
    case 0xE01:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193950_6FABE0(0x11);
        }
        return;
    case 0xE02:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A98_6F9D28();
            func_80192A28_6F9CB8(0x3C);
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0xE03:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0xF00;
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
}

void func_8019BB98_702E28(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xE02:
        break;
    case 0xE00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].posX.whole = 0x58;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].posZ.whole = 0x180;
        break;
    case 0xE01:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].posX.raw = func_8019214C_6F93DC(gActors[actor_index].posX.raw, 0, D_801AA070_711300);
        gActors[actor_index].posZ.raw = func_8019214C_6F93DC(gActors[actor_index].posZ.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_8019BCB4_702F44(s16 column, s16 row, s16 glyph_index, s16 shade) {
    s32 color;
    s32* glyph;
    s32* destination;
    u16 index;

    color = shade * 0x44444444;
    glyph = (s32*)(FONT_GLYPH_8X16_CI4_DATA_VRAM + (glyph_index << 6));
    destination = (s32*)(((column % 16) * 4) + ((column / 16) << 10) + (row << 11) + ENDING_TEXT_CANVAS_VRAM);

    for (index = 0; index < 16; index++) {
        *destination = *glyph + color;
        glyph++;
        destination += 16;
    }
}

void func_8019BD94_703024(s16 column, s16 row, u16* text, s16 shade) {
    u16 character = *text;

    while (character != ALPHA_NULL) {
        if (character == ALPHA_SPACE) {
            text++;
            column++;
        }
        else {
            text++;\
            func_8019BCB4_702F44(column++, row, character - 0x50, shade);
        }
        character = *text;
    }
}

void func_8019BE7C_70310C(void) {
    func_8019BD94_703024(0, 0, D_801AAE18_7120A8, 0);
    func_8019BD94_703024(0, 1, D_801AAE58_7120E8, 0);
    func_8019BD94_703024(0, 2, D_801AAE98_712128, 0);
    func_8019BD94_703024(0, 3, D_801AAEAC_71213C, 0);
    func_8019BD94_703024(0, 4, D_801AAEE0_712170, 0);
    func_8019BD94_703024(0, 5, D_801AAF14_7121A4, 0);
    func_8019BD94_703024(0, 6, D_801AAF38_7121C8, 0);
    func_8019BD94_703024(0, 7, D_801AAF78_712208, 0);
}

void func_8019BF54_7031E4(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 7) {
        return;
    }
    new_actor_index = Actor_RangeFindInactive(0x90, 0xB8);
    if (new_actor_index != 0) {
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, 0, 0, 0);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].posX.whole = Rand() - 128;
        gActors[new_actor_index].posY.whole = Rand() - 128;
        gActors[new_actor_index].posZ.whole = -256;
        gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(8);
        gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
    }
}

void func_8019C04C_7032DC(u16 actor_index) {
    s32 temp_s2;
    s32 temp_s3;
    u16 new_actor_index;
    u16 index;
    s32 graphic_index;

    temp_s2 = SIN(0x1C0) * FIXED_UNIT(32);
    temp_s3 = COS(0x1C0) * FIXED_UNIT(32);
    new_actor_index = 0x60;
    for (index = 0; index < ARRAYLENGTH(D_801AAFB0_712240); index++) {
        graphic_index = D_801AAFB0_712240[index];
        if (graphic_index == 0) {
            continue;
        }

        if (graphic_index == 1) {
            func_8019383C_6FAACC(actor_index, new_actor_index, 0, 0, -(temp_s2 * index), -(temp_s3 * index));
            new_actor_index++;
        }
        else {
            func_80193778_6FAA08(actor_index, new_actor_index, D_801AAFB0_712240[index], 0, -(temp_s2 * index), -(temp_s3 * index));
            new_actor_index++;
        }
    }
}

void func_8019C1C0_703450(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xF00:
        gActors[actor_index].state++;
        D_801AA078_711308 = 0x78;
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        func_80026F2C(SCENE_MEETMARINA);
        func_80027018(SCENE_ENDING);
        func_800267FC(SCENE_UNK03);
        func_80192A08_6F9C98(0x3C);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_STEPPIN);
        func_80192734_6F99C4(0xFF);
        gActors[0x31].posZ.whole = -0x200;
        func_801927CC_6F9A5C(0);
        func_8019BE7C_70310C();
        func_8019C04C_7032DC(actor_index);
        gActors[actor_index].unk_170 = 0x634F8D;
        gActors[actor_index].unk_174 = -0x5321C3;
        gActors[actor_index].var_15C = SIN(0x1C0) * FIXED_UNIT(0.75);
        gActors[actor_index].var_160 = COS(0x1C0) * FIXED_UNIT(0.75);
        break;
    case 0xF01:
        func_8019BF54_7031E4(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x2E5;
            func_80199600_700890(actor_index, gScreenPosCurrentX.whole, gScreenPosCurrentY.whole - 0xC0);
        }
        break;
    case 0xF02:
        func_8019BF54_7031E4(actor_index);
        gActors[actor_index].unk_174 += gActors[actor_index].var_15C;
        gActors[actor_index].unk_170 += gActors[actor_index].var_160;
        gActors[0x38].posX.raw = gActors[0x68].posX.raw;
        gActors[0x38].posY.raw = gActors[0x68].posY.raw;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193950_6FABE0(0x17);
            func_801A97B8_710A48(0x38);
            func_801A9044_7102D4();
        }
        break;
    case 0xF03:
        func_8019BF54_7031E4(actor_index);
        gActors[actor_index].unk_174 += gActors[actor_index].var_15C;
        gActors[actor_index].unk_170 += gActors[actor_index].var_160;
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_801A9818_710AA8(0x38);
            func_801A9044_7102D4();
        }
        break;
    case 0xF04:
        func_8019BF54_7031E4(actor_index);
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(-176), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x38].flags &= ~ACTOR_FLAG_FLIPPED;
            D_801AC378_713608 = 0xFA0;
            D_801AA078_711308 = 0xA;
        }
        break;
    case 0xF05:
        func_8019BF54_7031E4(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0xF06:
        func_8019BF54_7031E4(actor_index);
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(176), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x38].flags |= ACTOR_FLAG_FLIPPED;
            D_801AC378_713608 = 0x7D0;
            D_801AA078_711308 = 0xA;
        }
        break;
    case 0xF07:
        func_8019BF54_7031E4(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
        }
        break;
    case 0xF08:
        func_8019BF54_7031E4(actor_index);
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_8003EAE0(actor_index, 3, gActors[0x38].posX.whole, gActors[0x38].posY.whole, gActors[0x38].posZ.whole + 1);
            func_801A9754_7109E4(0x38);
            Sound_PlaySfx(SFX_GEM_APPEAR);
            func_80193950_6FABE0(0x17);
        }
        break;
    case 0xF09:
        func_8019BF54_7031E4(actor_index);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_80192A98_6F9D28();
            func_80192A28_6F9CB8(0x1E);
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0xF0A:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1000;
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    case 0xF64:
        gActors[actor_index].state = 0x1000;
        break;
    }
}

void func_8019C714_7039A4(u16 actor_index) {
    s32 var_v0 = gActors[actor_index].state;
    u8 color;

    if (var_v0 != 0xF00) {
        if (var_v0 != 0xF01) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    }

    gActors[actor_index].rotateY = INDEX_TO_DEG(
        (Math_Atan2(gLookatEyeX - gActors[actor_index].posX.whole, gActors[actor_index].posZ.whole - gLookatEyeZ) - COS_DEG_90) & COS_MASK
    );
    var_v0 = ABS(gActors[actor_index].posZ.whole);
    color = var_v0;
    if (color >= 128) {
        color = 128;
    }

    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;
    if (gActors[actor_index].posZ.whole < 256) {
        return;
    }
    gActors[actor_index].flags = ACTOR_FLAG_NONE;
}

void func_8019C880_703B10(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xF00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTX | ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].unk_168 = gActors[actor_index].posZ.raw;
        gActors[actor_index].unk_16C = gActors[actor_index].posY.raw;
        gActors[actor_index].rotateX = -67.5f;
        // fallthrough
    case 0xF01:
        gActors[actor_index].posY.raw = gActors[0x30].unk_174 + gActors[actor_index].unk_16C;
        gActors[actor_index].posZ.raw = gActors[0x30].unk_170 + gActors[actor_index].unk_168;
        if (gActors[actor_index].posZ.whole < -175) {
            gActors[actor_index].colorA = (-ABS(gActors[actor_index].posZ.whole)) * 3 + 768;
        }

        if (gActors[actor_index].posZ.whole < -254) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_8019C980_703C10(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0xF00:
        gActors[actor_index].state++;
        gActors[actor_index].unk_168 = gActors[actor_index].posZ.raw;
        gActors[actor_index].unk_16C = gActors[actor_index].posY.raw;
        // fallthrough
    case 0xF01:
        gActors[actor_index].posY.raw = gActors[48].unk_174 + gActors[actor_index].unk_16C;
        gActors[actor_index].posZ.raw = gActors[48].unk_170 + gActors[actor_index].unk_168;
        return;
    }
}

void func_8019CA18_703CA8(u16 actor_index) {
    if (gActors[actor_index].state != 0x1000) {
        return;
    }

    gActors[actor_index].state = 0x1100;
    func_8002670C(SCENE_DEMOWORLD1);
    func_80026784(SCENE_DEMOWORLD1);
    func_800255B4(SCENE_DEMOWORLD1);
    func_80010C20(SCENE_DEMOWORLD1);
    func_80026220(SCENE_UNK07);
    func_80026494(SCENE_DEMOWORLD1, 0);
    func_800267FC(SCENE_UNK03);
    func_80026694(SCENE_DEMOWORLD1);
    func_80025E00();
    func_80011B30(7, 1, 1, 5, 0xE);
    func_80011B30(0, 0, 3, 1, 0x19);
    func_80011B30(6, 0, 2, 2, 0x20);
    func_80011B30(0, 4, 3, 1, 0x24);
    func_80011B30(0, 5, 2, 1, 0x27);
    D_801376A4 = PALETTE_80380400;
    gDrawBackground = FALSE;
    gActorDepthMiddle = -0x7F;
    func_80026F2C(SCENE_MEETMARINA);
    func_80026D88(SCENE_MEETMARINA);
    func_80192408_6F9698();
}

void func_8019CB88_703E18(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, 0, 0, 0);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].posX.whole = Rand() - 128;
        gActors[new_actor_index].posY.whole = Rand() - 128;
        gActors[new_actor_index].posZ.whole = -256;
        gActors[new_actor_index].unk_188 = -256;
        gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
    }
}

void func_8019CC7C_703F0C(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 7) {
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, 0, 0, 0);
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].posX.whole = (Rand() - 0x80) * 0.2;
        gActors[new_actor_index].posY.whole = (Rand() - 0x80) * 0.2;
        gActors[new_actor_index].posZ.whole = -0x100;
        gActors[new_actor_index].unk_188 = -0x100;
        gActors[new_actor_index].palette_18C = D_801AABAC_711E3C[Rand() & 0xF];
    }
}

void func_8019CDEC_70407C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1100:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x5A;
        func_80192A08_6F9C98(0x3C);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_ESPERANCE);
        func_80192734_6F99C4(0xFF);
        gActors[0x31].posZ.whole = -0x200;
        func_801927CC_6F9A5C(0);
        gActors[0x32].posZ.whole = 0x10;
        func_80199600_700890(actor_index, gScreenPosCurrentX.whole + 0xD0, gScreenPosCurrentY.whole - 0x26);
        D_801AC378_713608 = 0x3E80;
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
    default:
        break;
    case 0x1101:
        func_8019CB88_703E18(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x14;
            func_801A9044_7102D4();
        }
        break;
    case 0x1102:
        func_8019CB88_703E18(actor_index);
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(-192), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x38].flags &= ~ACTOR_FLAG_FLIPPED;
            D_801AC378_713608 = 0x2710;
            gActors[0x38].posY.whole = -0x20;
            D_801AA078_711308 = 0x14;
        }
        break;
    case 0x1103:
        func_8019CB88_703E18(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x28;
        }
        break;
    case 0x1104:
        func_8019CB88_703E18(actor_index);
        gActors[0x38].posX.raw = func_8019214C_6F93DC(gActors[0x38].posX.raw, FIXED_UNIT(192), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xC3;
            func_801927CC_6F9A5C(0xFF);
            gActors[0x32].posZ.whole = -0x10;
            func_801927A4_6F9A34(0x3C);
            gDrawMidground = TRUE;
            gDrawEnvLayer = TRUE;
            gActors[0x38].flags |= ACTOR_FLAG_FLIPPED;
            D_801AC378_713608 = 0x1F40;
            gActors[0x38].posY.whole = -9;
            func_801933F8_6FA688(actor_index, 0x54, GINDEX_5A60, -0x3B, -0x28, 0x1E);
            func_80193454_6FA6E4(actor_index, 0x55, GINDEX_5004, 0x41, -0x26, 0x14);
            func_801934B0_6FA740(actor_index, 0x56, GRAPHIC_FRAME(2802, 1), 0x3C, -0x1C, 0x15);
            gActors[actor_index].unk_11C = 0;
        }
        break;
    case 0x1105:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x38].posX.raw = func_801922EC_6F957C(gActors[0x38].posX.raw, FIXED_UNIT(38), FIXED_UNIT(1), 4);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x18, 0x69, -0x10);
            gActors[0x32].posZ.whole = 0x10;
        }
        break;
    case 0x1106:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x56].rotateZ = Math_ApproachF32(gActors[0x56].rotateZ, -15.0f, 2.0f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x19, -0x70, -0x10);
            gActors[0x54].graphicList = D_801AAFC8_712258;
            gActors[0x54].graphicTimer = 1;
        }
        break;
    case 0x1107:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x56].rotateZ = Math_ApproachF32(gActors[0x56].rotateZ, 0.0f, 2.0f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x5A;
            D_801AA07C_71130C = 0x28;
            gActors[0x54].graphicList = D_801AAFE8_712278;
            gActors[0x54].graphicTimer = 1;
            SpawnTextBubble(0x38, D_801AB030_7122C0, 0, 0x20, 0x1E);
            func_801A972C_7109BC(actor_index);
            gActors[0x56].graphicIndex = GRAPHIC_FRAME(2802, 3);
            gActors[0x56].posX.whole = 0x40;
            gActors[0x56].posY.whole = -0x1C;
            func_801A9044_7102D4();
        }
        break;
    case 0x1108:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x56].posX.raw = func_8019214C_6F93DC(gActors[0x56].posX.raw, FIXED_UNIT(59), D_801AA070_711300);
        gActors[0x56].posY.raw = func_8019214C_6F93DC(gActors[0x56].posY.raw, FIXED_UNIT(-33), D_801AA070_711300);
        if (D_801AA074_711304 <= 0) {
            D_801AA07C_71130C = 0x28;
            SpawnTextBubble(0x54, D_801AB03C_7122CC, 0, 0x20, 0x1E);
        }
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x5A;
            SpawnTextBubble(0x38, D_801AB030_7122C0, 0, 0x20, 0x1E);
            func_801A972C_7109BC(actor_index);
        }
        break;
    case 0x1109:
        func_8019CC7C_703F0C(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            gActors[0x54].graphicList = D_801AB00C_71229C;
            gActors[0x54].graphicTimer = 1;
            func_801935C4_6FA854(actor_index, -0x18, 0xF, 2);
            func_801A97E8_710A78(0x38);
        }
        break;
    case 0x110A:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.6f, 0.002f);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x1D, 0x69, -0x10);
        }
        break;
    case 0x110B:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.3f, 0.002f);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_801A9740_7109D0(actor_index);
            gActors[0x38].unk_120 = 0.5f;
            gActors[0x54].graphicIndex = GINDEX_587F;
            gActors[0x54].graphicTimer = 0;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveYellow(1.0f, gActors[0x51].posX.whole, gActors[0x51].posY.whole, 0x30);
            func_8019350C_6FA79C(actor_index, 0x52, 0, 0x3C, -0x1C, 0x15);
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x38);
        }
        break;
    case 0x110C:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            Sound_StartFade(1, 0x3C);
            func_8019277C_6F9A0C(0x1E);
            func_801A9044_7102D4();
        }
        break;
    case 0x110D:
        gActors[0x54].posY.raw = func_8019214C_6F93DC(gActors[0x54].posY.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1200;
            func_80192A98_6F9D28();
            func_80192A48_6F9CD8(0xFF);
            Actor_ClearRange(0x38, 0x90);
        }
        break;
    }
}

void func_8019D5E0_704870(u16 actor_index) {
    s32 var_v0 = gActors[actor_index].state;
    u8 color;

    if (var_v0 != 0x1100) {
        if (var_v0 != 0x1101) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
    }

    gActors[actor_index].rotateY = INDEX_TO_DEG(
        (Math_Atan2(gLookatEyeX - gActors[actor_index].posX.whole, gActors[actor_index].posZ.whole - gLookatEyeZ) - COS_DEG_90) & COS_MASK
    );
    gActors[actor_index].unk_188 += 8;
    var_v0 = ABS(gActors[actor_index].posZ.whole);
    color = var_v0;
    if (color >= 128) {
        color = 128;
    }

    gActors[actor_index].colorR = color;
    gActors[actor_index].colorG = color;
    gActors[actor_index].colorB = color;

    if (gActors[actor_index].unk_188 < 256) {
        return;
    }

    gActors[actor_index].flags = ACTOR_FLAG_NONE;
}

void func_8019D758_7049E8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1101:
        break;
    case 0x1100:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        break;
    }
    func_80193B38_6FADC8(actor_index);
}

void func_8019D7E8_704A78(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1100:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x1101:
        return;
    }
}

void func_8019D854_704AE4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1100:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x1101:
        break;
    case 0x1102:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = func_8008412C(actor_index, 148.0f, 64.0f, D_801AA070_711300);
        break;
    case 0x1103:
        break;
    }
}

void func_8019D91C_704BAC(u16 actor_index) {
    u16 new_actor_index;
    s32 current_actor_index = actor_index;\
    switch (gActors[current_actor_index].state) {
    case 0x1100:
        gActors[current_actor_index].state++;
        gActors[current_actor_index].var_154 = 0;
        gActors[current_actor_index].unk_114 = 0;
        gActors[current_actor_index].unk_118 = 0;
        // fallthrough
    case 0x1101:
        gActors[current_actor_index].unk_114 = Math_ApproachF32(gActors[current_actor_index].unk_114, 2.8f, 0.021875f);
        gActors[current_actor_index].unk_118 = Math_ApproachF32(gActors[current_actor_index].unk_118, 18.0f, 0.140625f);
        gActors[current_actor_index].var_154 = Math_ApproachS32(gActors[current_actor_index].var_154, 127, 1);
        new_actor_index = SpawnParticle_List_90C0_16(
            D_800E14C8,
            gActors[0x54].posX.whole,
            gActors[0x54].posY.whole,
            gActors[0x54].posZ.whole + 1
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].scaleX = gActors[current_actor_index].unk_114;
            gActors[new_actor_index].scaleY = gActors[current_actor_index].unk_114;
            if (gActiveFrames & 2) {
                gActors[new_actor_index].scaleX += 0.5;
                gActors[new_actor_index].scaleY += 0.5;
            }
            gActors[new_actor_index].colorA = gActors[current_actor_index].var_154;
            gActors[new_actor_index].var_154 = -16;
            gActors[new_actor_index].unk_148 = 0;
            gActors[new_actor_index].unk_11C = 0.9f;
        }
        if (!(gActiveFrames & 1)) {
            new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_01EE, 0, 0, 0);
            if (new_actor_index != 0) {
                gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
                gActors[new_actor_index].flags |= ACTOR_FLAG_UNK15;
                gActors[new_actor_index].scaleX = 1.0f;
                gActors[new_actor_index].scaleY = 0.0f;
                gActors[new_actor_index].colorA = gActors[current_actor_index].var_154 * 2;
                gActors[new_actor_index].colorB = 127;
                gActors[new_actor_index].var_160 = TO_FIXED((u16)((Rand() * 4) & 0x3C0));
                gActors[new_actor_index].var_150 = (0x38 - (Rand() & 0x70)) * FIXED_UNIT(0.0625);
                gActors[new_actor_index].unk_130 = 84.0f;
                gActors[new_actor_index].unk_14C = gActors[0x54].actorType;
                gActors[new_actor_index].unk_134 = 0;
                gActors[new_actor_index].paletteAnimation_178 = D_801AB048_7122D8;
                gActors[new_actor_index].var_154 = -8;
                gActors[new_actor_index].unk_138 = 0.0f;
                gActors[new_actor_index].unk_13C_f32 = 1.0f;
                gActors[new_actor_index].var_110 = 0.2f;
                if (gActiveFrames & 2) {
                    gActors[new_actor_index].unk_11C = -0.05f;
                }
                else {
                    gActors[new_actor_index].unk_11C = -0.1f;
                }
                gActors[new_actor_index].unk_140_f32 = gActors[current_actor_index].unk_118;
            }
        }
        return;
    }
}

void func_8019DC4C_704EDC(u16 actor_index) {
    u16 new_actor_index;

    switch (gActors[actor_index].state) {
    case 0x1200:
        gActors[actor_index].state++;
        func_80026E60(SCENE_UNK84);
        D_801AA070_711300 = 0x3C;
        func_80192A08_6F9C98(0x1E);
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_GET);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        func_80192734_6F99C4(0);
        func_801927CC_6F9A5C(0x7F);
        gActors[0x32].posZ.whole = 0x20;
        func_8019339C_6FA62C(actor_index, 0x57, GINDEX_0806, 0, 0, 0x30);
        gActors[0x57].scaleX = 8.0f;
        gActors[0x57].scaleY = 8.0f;
        gActors[actor_index].unk_114 = gActors[0x57].scaleX * 1000.0f;
    default:
        break;
    case 0x1201:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[0x57].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 1000.0f, D_801AA070_711300);
        gActors[0x57].scaleX = gActors[actor_index].unk_114 / 1000.0f;
        gActors[0x57].scaleY = gActors[0x57].scaleX;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x5A;
            func_80193950_6FABE0(0x1E);
            Sound_PlaySfx(SFX_0037);
        }
        break;
    case 0x1202:
        if (D_801AA070_711300 == 1) {
            Sound_PlaySfx(SFX_BUZZ_BOO);
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0x1203:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 300.0f, D_801AA070_711300);
        gActors[0x57].scaleX = gActors[actor_index].unk_114 / 1000.0f;
        gActors[0x57].scaleY = gActors[0x57].scaleX;
        gActors[0x57].posX.raw = func_8019214C_6F93DC(gActors[0x57].posX.raw, FIXED_UNIT(-59), D_801AA070_711300);
        gActors[0x57].posY.raw = func_8019214C_6F93DC(gActors[0x57].posY.raw, FIXED_UNIT(-40), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x57].flags = ACTOR_FLAG_NONE;
        }
        break;
    case 0x1204:
        new_actor_index = SpawnParticle_List_90C0_16(D_800E1604, -59.0 + (Rand() - 0x80) * 0.25, -40.0 + (Rand() - 0x80) * 0.25, 0x40);
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED;
            gActors[new_actor_index].scaleX = 1.6f;
            gActors[new_actor_index].scaleY = 1.6f;
        }

        if (!(gActiveFrames & 1)) {
            Sound_PlaySfxAtActor3(SFX_005D, new_actor_index);
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            Sound_StartFade(1, 0x3C);
            func_801933F8_6FA688(actor_index, 0x54, GINDEX_5A60, -0x3B, -0x28, 0x30);
        }
        break;
    case 0x1205:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1300;
        }
        break;
    }
}

void func_8019E0C0_705350(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1200:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        // fallthrough
    case 0x1201:
    case 0x1202:
        return;
    }
}

void func_8019E13C_7053CC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1201:
        break;
    case 0x1200:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        break;
    }
    func_80193B38_6FADC8(actor_index);
}

void func_8019E1CC_70545C(u16 actor_index) {
    gActors[actor_index].state = 0x1400;
    func_8002670C(SCENE_DEMOWORLD1);
    func_80026784(SCENE_DEMOWORLD1);
    func_800255B4(SCENE_DEMOWORLD1);
    func_80010C20(SCENE_DEMOWORLD1);
    func_80026220(SCENE_UNK07);
    func_80026494(SCENE_DEMOWORLD1, 0);
    func_800267FC(SCENE_UNK03);
    func_80026694(SCENE_ENDING);
    func_80025E00();
    func_80011B30(7, 1, 1, 5, 0xE);
    func_80011B30(0, 0, 3, 1, 0x19);
    func_80011B30(6, 0, 2, 2, 0x20);
    func_80011B30(0, 4, 3, 1, 0x24);
    func_80011B30(0, 5, 2, 1, 0x27);
    D_801376A4 = PALETTE_80380400;
    gDrawBackground = FALSE;
    gActorDepthMiddle = -0x7F;
    func_80026F2C(SCENE_MEETMARINA);
    func_80026D88(SCENE_MEETMARINA);
    func_80199490_700720();
    gPlayerActor.posX.whole = 0;
    gPlayerActor.posY.whole = 0;
}

void func_8019E338_7055C8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1400:
        gActors[actor_index].state++;
        func_80192734_6F99C4(0xFF);
        func_801927A4_6F9A34(0x3C);
        gActors[0x32].posZ.whole = 0x10;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_ESPERANCE);
        Actor_ClearRange(0x38, 0x90);
        D_801AA070_711300 = 0x3C;
        func_80199600_700890(actor_index, gScreenPosCurrentX.whole + 0x26, gScreenPosCurrentY.whole - 9);
        func_801933F8_6FA688(actor_index, 0x54, GINDEX_5A60, -0x3B, -0x28, 0x30);
        func_80193454_6FA6E4(actor_index, 0x55, GINDEX_5004, 0x41, -0x26, 0x20);
        func_801934B0_6FA740(actor_index, 0x56, GRAPHIC_FRAME(2802, 1), 0x3C, -0x1C, 0x21);
    default:
        break;
    case 0x1401:
        func_8019CC7C_703F0C(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x54].graphicList = D_801AAFC8_712258;
            gActors[0x54].graphicTimer = 1;
            func_80193900_6FAB90(0x1F, -0x70, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1402:
        func_8019CC7C_703F0C(actor_index);
        if (gActors[0x54].graphicTimer == 0) {
            gActors[0x54].graphicList = D_801AB058_7122E8;
            gActors[0x54].graphicTimer = 1;
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x20, 0x69, -0x10);
        }
        break;
    case 0x1403:
        func_8019CC7C_703F0C(actor_index);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x21, 0x69, -0x10);
            gActors[0x54].graphicList = D_801AB00C_71229C;
            gActors[0x54].graphicTimer = 1;
        }
        break;
    case 0x1404:
        func_8019CC7C_703F0C(actor_index);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_801935C4_6FA854(actor_index, -0x18, 0xF, 2);
            func_801A97E8_710A78(0x38);
            gActors[0x56].graphicIndex = GRAPHIC_FRAME(2802, 3);
            gActors[0x56].posX.whole = 0x40;
            gActors[0x56].posY.whole = -0x1C;
        }
        break;
    case 0x1405:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.6f, 0.003f);
        gActors[0x56].posX.raw = func_8019214C_6F93DC(gActors[0x56].posX.raw, FIXED_UNIT(59), D_801AA070_711300);
        gActors[0x56].posY.raw = func_8019214C_6F93DC(gActors[0x56].posY.raw, FIXED_UNIT(-33), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_801A9044_7102D4();
        }
        break;
    case 0x1406:
        func_8019CC7C_703F0C(actor_index);
        gActors[0x38].unk_120 = Math_ApproachF32(gActors[0x38].unk_120, 0.3f, 0.003f);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_801A9740_7109D0(actor_index);
            gActors[0x38].unk_120 = 0.5f;
            gActors[0x51].flags = ACTOR_FLAG_NONE;
            SpawnParticle_RingWaveYellow(1.0f, gActors[0x51].posX.whole, gActors[0x51].posY.whole, 0x30);
            func_8019277C_6F9A0C(0x1E);
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x38);
        }
        break;
    case 0x1407:
        func_8019CC7C_703F0C(actor_index);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_80192A98_6F9D28();
            func_80192A28_6F9CB8(0x1E);
        }
        break;
    case 0x1408:
        if (D_801AA070_711300 > 0) {
            break;
        }
        gActors[actor_index].state++;
        D_801AA078_711308 = 0x28;
        D_801AA07C_71130C = 8;
        func_80192A08_6F9C98(0x14);
        Actor_ClearRange(0x38, 0x90);
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        func_80192734_6F99C4(0x3F);
        func_801927CC_6F9A5C(0);
        gActors[0x31].posZ.whole = -0x100;
        gActors[0x32].posZ.whole = 0x10;
        func_801933F8_6FA688(actor_index, 0x54, 0, -0x3B, -0x28, 0x10);
        gActors[0x54].graphicList = D_801AB09C_71232C;
        gActors[0x54].graphicTimer = 1;
        func_8019350C_6FA79C(actor_index, 0x52, 0, 0, 0, 8);
        gActors[actor_index].var_15C = 0;
        break;
    case 0x1409:
        gActors[0x54].posX.raw = func_801922EC_6F957C(gActors[0x54].posX.raw, 0, FIXED_UNIT(2), 3);
        gActors[0x54].posY.raw += gActors[actor_index].var_15C;
        if (D_801AA074_711304 <= 0) {
            gActors[actor_index].var_15C += FIXED_UNIT(0.0625);
        }
        else {
            gActors[actor_index].var_15C += FIXED_UNIT(0.0234375);
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            gActors[0x54].flags = ACTOR_FLAG_ACTIVE;
        }
        break;
    case 0x140A:
        MarinaEffect_Teleport(0x54);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            SpawnParticle_RingWaveBlue(0.5f, gActors[0x54].posX.whole, gActors[0x54].posY.whole, (gActors[0x54].posZ.whole + 1));
            Sound_PlaySfxAtActor2(SFX_STAR_TP, 0x54);
        }
        break;
    case 0x140B:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0x140C:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1500;
            func_80192A98_6F9D28();
            func_80192A48_6F9CD8(0xFF);
            Actor_ClearRange(0x38, 0x90);
            Sound_PlaySfxAtActor2(SFX_003F, 0x54);
        }
        break;
    }
}

void func_8019EA70_705D00(u16 actor_index) {
    s32 var_v0 = gActors[actor_index].state;
    u8 color;

    switch (var_v0) {
    case 0x1400:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        // fallthrough
    case 0x1401:
        gActors[actor_index].unk_188 += 8;
        var_v0 = ABS(gActors[actor_index].posZ.whole);
        color = var_v0;
        if (color >= 128) {
            color = 128;
        }

        gActors[actor_index].colorR = color;
        gActors[actor_index].colorG = color;
        gActors[actor_index].colorB = color;
        if (gActors[actor_index].unk_188 >= 256) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_8019EB2C_705DBC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1401:
        break;
    case 0x1400:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        break;
    }
    func_80193B38_6FADC8(actor_index);
}

void func_8019EBBC_705E4C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1400:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x1401:
        return;
    }
}

void func_8019EC28_705EB8(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1400:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        // fallthrough
    case 0x1401:
        break;
    case 0x1402:
        gActors[actor_index].state++;
        gActors[actor_index].var_154 = func_8008412C(actor_index, 148.0f, 64.0f, D_801AA070_711300);
        break;
    case 0x1403:
        break;
    }
}

void func_8019ECF0_705F80(u16 actor_index) {
    u16 new_actor_index;

    switch (gActors[actor_index].state) {
    case 0x1400:
        gActors[actor_index].state++;
        // fallthrough
    case 0x1401:
        gActors[actor_index].var_154 = Math_ApproachS32(gActors[actor_index].var_154, FIXED_UNIT(-4), FIXED_UNIT(0.125));
        new_actor_index = Actor_RangeFindInactive_90ToC0();
        if (new_actor_index != 0) {
            gActors[new_actor_index].actorType = ACTORTYPE_GRAPHIC_52;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
            gActors[new_actor_index].posX.whole = 0;
            gActors[new_actor_index].posY.whole = 0;
            gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK11;
            gActors[new_actor_index].graphicIndex = GINDEX_LASERA;
            gActors[new_actor_index].palette_18C = D_800D99A4;
            gActors[new_actor_index].rotateZ = 90.0f;
            gActors[new_actor_index].scaleX = 11.0f;
            gActors[new_actor_index].scaleY = 12.0f;

            if ((gActiveFrames % 12) == 0) {
                SpawnParticle_RingSparkle(actor_index, 0, 0.4f, (f32)(0x80 - Rand()) * 0.75, (f32)(0x80 - Rand()) * 0.75, 16);
            }

            gActors[new_actor_index].unk_188 = 256;
            gActors[new_actor_index].posZ.whole = 0;
            gActors[new_actor_index].colorR = 24;
            gActors[new_actor_index].colorG = 48;
            gActors[new_actor_index].colorB = gActors[new_actor_index].colorG;
            gActors[new_actor_index].colorA = 161;
            if (gActors[actor_index].flags != 0) {
                func_80031D58(actor_index, new_actor_index);
            }
            else {
                gActors[new_actor_index].unk_148 = 120.0f;
            }
        }

        if ((gActiveFrames % 6) == 0) {
            new_actor_index = Actor_RangeFindInactive_90ToC0();
            if (new_actor_index != 0) {
                func_80193568_6FA7F8(
                    actor_index,
                    new_actor_index,
                    GINDEX_LASERA,
                    (f32)(0x80 - Rand()) * 1.25,
                    (f32)(0x80 - Rand()) * 0.7 - gActors[actor_index].var_154 / 4096,
                    8
                );
                gActors[new_actor_index].graphicFlags |= ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_SCALE;
                gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
                gActors[new_actor_index].palette_18C = D_800D98F4;
                gActors[new_actor_index].unk_11C = Rand() & 0x3F;
                gActors[new_actor_index].posZ.whole = -64.0f - gActors[new_actor_index].unk_11C;
                gActors[new_actor_index].unk_118 = gActors[new_actor_index].unk_11C / 16;
                gActors[new_actor_index].unk_11C = (64.0f - gActors[new_actor_index].unk_11C) / 16;
                gActors[new_actor_index].scaleX = gActors[new_actor_index].unk_11C * 4.0;
                gActors[new_actor_index].scaleY = gActors[new_actor_index].unk_11C * 0.4;
                gActors[new_actor_index].colorA = 96;
                gActors[new_actor_index].colorR = 127;
                gActors[new_actor_index].var_150 = 16;
                gActors[new_actor_index].unk_114 = gActors[new_actor_index].unk_11C * 0.2;
                gActors[new_actor_index].rotateZ = 90.0f;
            }
        }
        break;
    }
}

void func_8019F174_706404(u16 actor_index) {
    if (gActors[actor_index].state == 0x1400) {
        gActors[actor_index].posY.raw += gActors[82].var_154 * gActors[actor_index].unk_11C;
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 < 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
    }
}

void func_8019F21C_7064AC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1500:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        func_80192A08_6F9C98(0x1E);
        func_80026E60(SCENE_UNK84);
        func_80192734_6F99C4(0x7F);
        func_801927CC_6F9A5C(0);
        gActors[0x31].posZ.whole = -0x100;
        Sound_PlayMusic(BGM_HURRY);
        Sound_PlaySfx(SFX_003F);
        if ((gFileAges[gCurrentSaveSlot] < 0x10) || (gFileAges[gCurrentSaveSlot] >= 0x3C)) {
            func_8019339C_6FA62C(actor_index, 0x57, GINDEX_FINAL_0808, 0, 0, 0x180);
        }
        else {
            func_8019339C_6FA62C(actor_index, 0x57, GINDEX_080A, 0, 0, 0x180);
        }
    case 0x1521:
    default:
        break;
    case 0x1501:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x12C;
            func_80193950_6FABE0(0x22);
        }
        break;
    case 0x1502:
        if ((func_8005DEFC() == 0) && (D_801AA070_711300 <= 0)) {
            func_801A9044_7102D4();
            if (D_801AC398_713628 >= 0x35) {
                gActors[actor_index].state = 0x1510;
                D_801AA078_711308 = 0x3C;

                func_801933F8_6FA688(actor_index, 0x38, GINDEX_FINAL_080C, 0, 0, 0);
                gActors[0x38].colorA = 0;
                gActors[actor_index].var_15C = FIXED_UNIT(255);
                gActors[actor_index].var_160 = 0;
                func_80193454_6FA6E4(actor_index, 0x39, 0, -0x16, 0x3C, 0);
                func_80193454_6FA6E4(actor_index, 0x3A, 0, 5, 0x3C, 0);
            }
            else {
                gActors[actor_index].state = 0x1520;
                D_801AA078_711308 = 0x3C;
                func_80192A80_6F9D10();
                func_80192A28_6F9CB8(0x3C);
            }
        }
        break;
    case 0x1510:
        gActors[actor_index].var_15C = func_8019214C_6F93DC(gActors[actor_index].var_15C, 0, D_801AA070_711300);
        gActors[actor_index].var_160 = func_8019214C_6F93DC(gActors[actor_index].var_160, FIXED_UNIT(255), D_801AA070_711300);
        gActors[0x57].colorA = gActors[actor_index].var_15C_s16[0];
        gActors[0x38].colorA = gActors[actor_index].var_160_s16[0];
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193950_6FABE0(0x23);
        }
        break;
    case 0x1511:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xB4;
            Sound_PlaySfx(SFX_LEO_LAUGH);
        }
        break;
    case 0x1512:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            Sound_StartFade(1, 0x3C);
        }
        break;
    case 0x1513:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x240;
            Sound_PlayMusic(BGM_STCLR);
        }
        break;
    case 0x1514:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_800D28FC |= 1;
            func_80045D84(1, 0x5A);
        }
        break;
    case 0x1520:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_800D28FC |= 1;
            func_80045D84(1, 0x5A);
        }
        break;
    }
}

void func_8019F608_706898(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1500:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].var_154 = 0;
        break;
    case 0x1501:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), D_801AA070_711300);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].posZ.raw = func_8019214C_6F93DC(gActors[actor_index].posZ.raw, 0, D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
        }
        break;
    case 0x1502:
        break;
    }
}

void func_8019F704_706994(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1500:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        // fallthrough
    case 0x1501:
        return;
    }
}

void func_8019F770_706A00(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1500:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].var_150 = Rand() & 0x1F;
        // fallthrough
    case 0x1501:
        gActors[actor_index].var_150--;
        if (gActors[actor_index].var_150 <= 0) {
            SpawnParticle_HeartBubble(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, 8);
            gActors[actor_index].var_150 = Rand() & 0x1F;
        }
        break;
    }
}

void func_8019F834_706AC4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1E00:
        gActors[actor_index].state++;
        if (gActors[0x33].colorA == 0xFF) {
            gActors[actor_index].state = 0x1E20;
        }
        else if (gActors[0x33].state == 1 || gActors[0x33].state == 3 || gActors[0x33].state == 5) {
            gActors[actor_index].state = 0x1E10;
            D_801AA070_711300 = 30;
            func_80192A28_6F9CB8(30);
        }
        else {
            gActors[actor_index].state = 0x1E20;
        }
    default:
    case 0x1E01:
    case 0x1E11:
    case 0x1E21:
        break;
    case 0x1E10:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state++;
            D_800D28FC |= 1;
            func_80045D84(1, 90);
        }
        break;
    case 0x1E20:
        gActors[actor_index].state++;
        D_800D28FC |= 1;
        func_80045D84(1, 90);
        break;
    }
}

u32 func_8019F990_706C20(u16 actor_index) {
    u16 new_actor_index;

    if (gActors[actor_index].var_0D8 & 0xF00) {
        new_actor_index = Actor_RangeFindInactive(0x40, 0x50);
        if (new_actor_index != 0) {
            gActors[actor_index].unk_140_f32 = new_actor_index;
            gActors[new_actor_index].actorType = ACTORTYPE_GRAPHIC_52;
            Actor_Initialize(new_actor_index);
            gActors[new_actor_index].flags = ACTOR_FLAG_ACTIVE;
            gActors[new_actor_index].unk_148 = 1.0f;
        }
        return new_actor_index;
    }
    return 0;
}

void func_8019FA84_706D14(u16 actor_index) {
    f32 x_offset;
    s32 rotation;
    s16* graphic_list;
    u16 temp_a1;
    u16 temp_t9;
    u16 var_a0;

    temp_t9 = gActors[actor_index].unk_140_f32;
    if (temp_t9 == 0) {
        return;
    }

    if ((gActors[temp_t9].flags & ACTOR_FLAG_ACTIVE) && (gActors[temp_t9].actorType == ACTORTYPE_GRAPHIC_52)) {
        temp_a1 = (gActors[actor_index].var_0D8 & 0xF00) / 256;
        temp_a1 *= 8;
        gActors[temp_t9].unk_148 = 1.0f;
        gActors[temp_t9].graphicFlags &= ~(ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4);
        gActors[temp_t9].graphicFlags = (gActors[actor_index].graphicFlags & (ACTOR_GFLAG_UNK11 | ACTOR_GFLAG_UNK4)) + (ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_UNK8);
        gActors[temp_t9].flags &= ~ACTOR_FLAG_DRAW;
        gActors[temp_t9].flags = (gActors[actor_index].flags & ACTOR_FLAG_DRAW) + ACTOR_FLAG_ACTIVE;
        if (gActors[temp_t9].flags & ACTOR_FLAG_UNK11) {
            gActors[temp_t9].unk_188 = gActors[actor_index].unk_188;
        }

        graphic_list = gActors[actor_index].graphicList;
        if ((gActors[actor_index].graphicTimer == 1) && (graphic_list != NULL) && (graphic_list[0] != 0)) {
            if (graphic_list[0] < 0) {
                graphic_list += graphic_list[0];
            }

            if (graphic_list[0] >= GINDEX_6800) {
                var_a0 = (graphic_list[0] * 3) - GINDEX_6800 * 3;
            }
            else {
                var_a0 = (((graphic_list[0] - GINDEX_1026) / 2) * 3) + 0x3E7;
            }
        }
        else if (gActors[actor_index].graphicIndex >= GINDEX_6800) {
            var_a0 = (gActors[actor_index].graphicIndex * 3) - GINDEX_6800 * 3;
        }
        else if (gActors[actor_index].var_150 & 0x08000000) {
            var_a0 = (((gActors[actor_index].graphicIndex - GINDEX_1090) / 2) * 3) + 0x390;
        }
        else {
            var_a0 = (((gActors[actor_index].graphicIndex - GINDEX_1026) / 2) * 3) + 0x3E7;
        }

        rotation = D_800D76D8[var_a0 + 2];
        if (rotation & 1) {
            gActors[temp_t9].posZ.raw = gActors[actor_index].posZ.raw - 1;
            gActors[temp_t9].graphicIndex = D_800D75D8[temp_a1 + 1];
            rotation += D_800D75D8[temp_a1 + 7];
            temp_a1 += 2;
        }
        else {
            gActors[temp_t9].posZ.raw = gActors[actor_index].posZ.raw + 1;
            gActors[temp_t9].graphicIndex = D_800D75D8[temp_a1 + 0];
            rotation += D_800D75D8[temp_a1 + 6];
        }

        rotation = (rotation & 0xFE) * 4;
        x_offset = (D_800D75D8[temp_a1 + 2] * gActors[actor_index].scaleX) + (D_800D76D8[var_a0 + 0] * gActors[actor_index].scaleX);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[temp_t9].flags |= ACTOR_FLAG_FLIPPED;
            gActors[temp_t9].posX.whole = gActors[actor_index].posX.whole - x_offset;
            rotation = -rotation;
        }
        else {
            gActors[temp_t9].posX.whole = gActors[actor_index].posX.whole + x_offset;
        }

        gActors[temp_t9].posY.whole = (gActors[actor_index].posY.whole + ((D_800D75D8[temp_a1 + 3] * gActors[actor_index].scaleY) + (D_800D76D8[var_a0 + 1] * gActors[actor_index].scaleY)));
        gActors[temp_t9].rotateZ = INDEX_TO_DEG((f32)rotation);
    }
}

void func_8019FEF8_707188(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1600:
        gActors[actor_index].state++;
        func_80192A80_6F9D10();
        func_80192A48_6F9CD8(255);
        // fallthrough
    case 0x1601:
        if (gStageState == 2) {
            gActors[actor_index].state++;
            gStageState++;
        }
        break;
    case 0x1602:
        gActors[actor_index].state = 0x1700;
        func_80193278_6FA508(actor_index);
        break;
    case 0x1603:
        break;
    }
}

void func_8019FFD0_707260(u16 unused) {
    s32 active_frames = gActiveFrames;

    D_800BE580 = gScreenPosCurrentY.whole / 6 + 0x1AE;
    D_800BE578 = gScreenPosCurrentX.whole / 4;
    D_8011D3B0[0][0] = (active_frames / 6) & 0x7FFF;
    D_8011D3B0[4][0] = 0;
    D_8011D3B0[1][0] = (active_frames / 16) & 0x7FFF;
    D_8011D3B0[2][0] = (active_frames / 32) & 0x7FFF;
    D_8011D3B0[3][0] = D_8011D3B0[4][0];
    D_8011D3B0[6][0] = -1;
    D_8011D3B0[5][0] = D_8011D3B0[6][0];
}

void func_801A00CC_70735C(u16 actor_index, u16 source_actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);

    if (new_actor_index != 0) {
        func_80193454_6FA6E4(
            actor_index,
            new_actor_index,
            GINDEX_01E2,
            gActors[source_actor_index].posX.whole - 8,
            gActors[source_actor_index].posY.whole + 24,
            gActors[source_actor_index].posZ.whole
        );
        gActors[new_actor_index].var_150 = Rand() & 0xF;
    }
}

void func_801A0198_707428(u16 actor_index, u16 source_actor_index) {
    u16 new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);

    if (new_actor_index != 0) {
        func_80193568_6FA7F8(
            actor_index,
            new_actor_index,
            GINDEX_01E2,
            gActors[source_actor_index].posX.whole + 8,
            gActors[source_actor_index].posY.whole + 0x18,
            gActors[source_actor_index].posZ.whole
        );
    }
}

void func_801A0228_7074B8(u16 unused, u16 actor_index, u16 actor_type, u16 pos_x, u16 pos_y, s16 arg5, u16 arg6, u16 arg7) {
    gActors[actor_index].actorType = actor_type;
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = pos_x - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = pos_y - gScreenPosCurrentY.whole;
    gActors[actor_index].var_154 = TO_FIXED(arg5);
    gActors[actor_index].var_110 = arg6;
    gActors[actor_index].var_0D8 = arg7;
}

void func_801A02EC_70757C(u16 arg0, u16 actor_index, u16 pos_x, u16 pos_y, s16 arg4, u16 arg5, u16 arg6) {
    func_801A0228_7074B8(arg0, actor_index, ACTORTYPE_OVL0_END_12, pos_x, pos_y, arg4, arg5, arg6);
}

void func_801A0350_7075E0(u16 arg0, u16 actor_index, u16 pos_x, u16 pos_y, s16 arg4, u16 arg5, u16 arg6) {
    func_801A0228_7074B8(arg0, actor_index, ACTORTYPE_OVL0_END_13, pos_x, pos_y, arg4, arg5, arg6);
}

void func_801A03B4_707644(u16 arg0, u16 actor_index, u16 pos_x, u16 pos_y, s16 arg4, u16 arg5, u16 arg6) {
    func_801A0228_7074B8(arg0, actor_index, ACTORTYPE_OVL0_END_14, pos_x, pos_y, arg4, arg5, arg6);
}

void func_801A0418_7076A8(u16 actor_index, u16 selection) {
    u16 index;
    u16 new_actor_index;
    u32 temp_s2;

    for (index = 0; index < 1; index++) {
        temp_s2 = selection;
        new_actor_index = temp_s2 != 0 ? 0x58 : 0x59;
        new_actor_index += index;
        func_801A26B4_709944(actor_index, new_actor_index, index * 38 + 0x8C9, temp_s2 != 0 ? 0x121 : 0x136, temp_s2 != 0 ? 48 : -128, 128, 0x3B00);
    }
}

void func_801A04F0_707780(void) {
    u16 index;
    u16 actor_index;

    for (index = 0; index < 2; index++) {
        actor_index = index + 0x58;
        gActors[actor_index].unk_118 = (Rand() & 0xF) + 7;
    }
}

void func_801A0584_707814(u16 actor_index) {
    u16 index;

    for (index = 0; index < 2; index++) {
        func_801A00CC_70735C(actor_index, index + 0x58);
    }
}

void func_801A05E8_707878(u16 actor_index, u16 arg1) {
    u16 index;
    u16 current_actor_index;

    for (index = 0; index < 2; index++) {
        current_actor_index = index + 0x58;
        gActors[current_actor_index].unk_170_u16[0] = arg1;
    }
}

void func_801A0640_7078D0(u16 actor_index, u16 value, s32 arg2, s32 arg3) {
    if (gActors[actor_index].unk_16C == 0) {
        gActors[actor_index].unk_16C = 1;
        gActors[actor_index].unk_170 = value;
        gActors[actor_index].unk_11C = arg2;
        gActors[actor_index].unk_120 = arg3;
    }
}

void func_801A06AC_70793C(u16 unused, s16 x, s16 y) {
    u16 fixed_actor_index = 0x68;

    gActors[fixed_actor_index].actorType = ACTORTYPE_OVL0_END_16;
    Actor_Initialize(0x68);
    gActors[fixed_actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
    gActors[fixed_actor_index].posX.whole = x - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = y - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = 1;
    gActors[fixed_actor_index].var_0D8 = 0x30;
    D_801AC380_713610 = 0x1F40;
    D_801AC388_713618 = 0;
    D_801AC38A_71361A = 0;
}

void func_801A0758_7079E8(s32 unused) {
    u16 fixed_actor_index = 0x3B;

    gActors[fixed_actor_index].actorType = ACTORTYPE_GRAPHIC_29;
    Actor_Initialize(0x3B);
    gActors[fixed_actor_index].flags = ACTOR_FLAG_ENABLED;
    gActors[fixed_actor_index].graphicIndex = GINDEX_FLOWERRED;
    gActors[fixed_actor_index].posX.whole = 0x8CE - gScreenPosCurrentX.whole;
    gActors[fixed_actor_index].posY.whole = 0x136 - gScreenPosCurrentY.whole;
    gActors[fixed_actor_index].posZ.whole = 0;
}

void func_801A07D4_707A64(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1700:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x78;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_ADIEUX);
        func_80192A80_6F9D10();
        func_80192A08_6F9C98(0x3C);
        func_80192734_6F99C4(0);
        func_801927CC_6F9A5C(0);
        func_8019339C_6FA62C(actor_index, 0x55, 0, -0x64, -0x17, -2);
        gActors[0x55].graphicList = D_801AB0C8_712358;
        gActors[0x55].graphicTimer = 1;
        func_801933F8_6FA688(actor_index, 0x54, 0, -0x3C, -0x2A, -1);
        gActors[0x54].graphicList = D_801AB0EC_71237C;
        gActors[0x54].graphicTimer = 1;
        func_801A02EC_70757C(actor_index, 0x38, 0x8B3, 0x12C, -3, 0x80, 0x3410);
        func_801A0350_7075E0(actor_index, 0x39, 0x8F3, 0x12A, 3, 0x180, 0x6320);
        gActors[0x39].var_154 = FIXED_UNIT(24);
        func_801A0418_7076A8(actor_index, 0);
        func_801A0418_7076A8(actor_index, 1);
        func_801A0758_7079E8(actor_index);
        func_80011F44(0x698, 0x19C, 0x12, 8);
        func_80011F44(0x578, 0x164, 0xC, 5);
        func_80011F44(0x828, 0x12C, 2, 1);
        func_80011F44(0x8C8, 0x12C, 2, 1);
        func_80011F44(0x488, 0x184, 8, 7);
        func_80011F44(0x298, 0x18C, 0xC, 7);
    default:
        break;
    case 0x1701:
        gScreenPosTargetX.raw = func_8019214C_6F93DC(gScreenPosTargetX.raw, FIXED_UNIT(2176), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            gActors[0x55].graphicIndex = GINDEX_5001;
            gActors[0x55].graphicTimer = 0;
            gActors[0x54].graphicIndex = GINDEX_5A66;
            gActors[0x54].graphicTimer = 0;
            SpawnParticle_Exclamation(1.0f, gActors[0x39].posX.whole, (gActors[0x39].posY.whole + 0x18), 1);
        }
        break;
    case 0x1702:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
        }
        break;
    case 0x1703:
        func_801A0640_7078D0(0x39, 0x120, FIXED_UNIT(4), 0);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(1, 0x4E, -0x10);
        }
        break;
    case 0x1704:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA07C_71130C = 0x78;
            func_80193900_6FAB90(2, 0xB, -0x10);
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
            func_801A04F0_707780();
        }
        break;
    case 0x1705:
        gActors[0x38].unk_170_s16[0] = 4;
        gActors[0x39].unk_170_s16[0] = 7;
        if (D_801AA074_711304 <= 0) {
            D_801AA07C_71130C = 0x2767;
            func_801A06AC_70793C(actor_index, 0x7D0, 0x12C);
            func_801A9D1C_710FAC(0x865, 0x12C);
            func_801A9D38_710FC8(1, 2);
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 1;
            D_801AA074_711304 = 0;
            gActors[0x38].unk_170_s16[0] = 0;
            gActors[0x39].unk_170_s16[0] = 0;
            func_801A9044_7102D4();
        }
        break;
    case 0x1706:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_801A00CC_70735C(actor_index, 0x38);
            func_801A0584_707814(actor_index);
            gActors[0x38].unk_170_s16[0] = 0;
            gActors[0x39].unk_170_s16[0] = 0;
        }
        break;
    case 0x1707:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA070_711300 = 0x3C;
            gActors[0x38].unk_170_s16[0] = 8;
            func_801A05E8_707878(actor_index, 6);
            Sound_PlaySfxAtActor2(SFX_CLANCER_YELL_011A, 0x38);
        }
        break;
    case 0x1708:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(5, 0xB, -0xF);
        }
        break;
    case 0x1709:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(6, 0xB, -0xF);
            func_801A9044_7102D4();
        }
        break;
    case 0x170A:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(7, 0xB, -0xF);
        }
        break;
    case 0x170B:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(8, 0x28, -0x10);
            gActors[0x39].unk_184_s16[0] = 0x8C8;
            gActors[0x39].unk_184_s16[1] = 0x12A;
            gActors[0x39].unk_170 = 0x90;
            gActors[0x39].unk_16C = 1;
            func_801A9044_7102D4();
        }
        break;
    case 0x170C:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(9, 0x3D, -0x10);
            gActors[0x39].unk_184_s16[0] = 0x882;
            gActors[0x39].unk_184_s16[1] = 0x12A;
            gActors[0x39].unk_170 = 0xA0;
            gActors[0x39].unk_16C = 1;
        }
        break;
    case 0x170D:
        func_80033E7C(0x39, gActors[0x39].posX.whole, gActors[0x39].posY.whole + 0x10, gActors[0x39].posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 5);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xA, 0x3D, -0x10);
            gActors[0x39].unk_170_s16[0] = 9;
        }
        break;
    case 0x170E:
        func_80033E7C(0x39, gActors[0x39].posX.whole, gActors[0x39].posY.whole + 0x10, gActors[0x39].posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 5);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xB, -0x42, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x170F:
        func_80033E7C(0x39, gActors[0x39].posX.whole, gActors[0x39].posY.whole + 0x10, gActors[0x39].posZ.whole - 1, FIXED_UNIT(1), FIXED_UNIT(8), 5);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[0x39].graphicTimer = 0;
            gActors[0x39].unk_170_s16[0] = 0;
            func_80193900_6FAB90(0xC, 0x3D, -0x10);
        }
        break;
    case 0x1710:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xD, -0x42, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1711:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x39].unk_170 = 0x120;
            gActors[0x39].unk_16C = 1;
            gActors[0x39].unk_11C = FIXED_UNIT(4);
            gActors[0x39].unk_120 = 0.0f;
        }
        break;
    case 0x1712:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x39].unk_170 = 0x70;
            gActors[0x39].unk_16C = 1;
        }
        break;
    case 0x1713:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            func_80193900_6FAB90(0xE, -0x20, -0x10);
        }
        break;
    case 0x1714:
        if (D_801AA070_711300 == 1) {
            gActors[0x39].unk_16C = 1;
            gActors[0x39].unk_170 = 0x120;
            gActors[0x39].unk_11C = FIXED_UNIT(4);
            gActors[0x39].unk_120 = 0.0f;
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].unk_170_s16[0] = 0xA;
            gActors[0x38].graphicTimer = 0;
            func_801A9044_7102D4();
        }
        break;
    case 0x1715:
        gActors[0x38].unk_170_s16[0] = 0;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0xF, 0x5A, -0x10);
        }
        break;
    case 0x1716:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0x1717:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            D_801AA07C_71130C = 0x1E;
            func_801A9CD0_710F60(0x68);
            gActors[0x39].unk_170 = 0x70;
            gActors[0x39].unk_16C = 1;
        }
        break;
    case 0x1718:
        if (D_801AA074_711304 == 1) {
            gActors[0x38].unk_16C = 1;
        }
        gActors[0x38].unk_170 = 0x70;
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x10, -0x42, -0x10);
        }
        break;
    case 0x1719:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            Sound_StartFade(1, 0x3C);
            func_801A9044_7102D4();
        }
        break;
    case 0x171A:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1800;
            Actor_ClearRange(0x38, 0x80);
        }
        break;
    }
}

void func_801A12A8_708538(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1700:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        // fallthrough
    case 0x1701:
        return;
    }
}

void func_801A131C_7085AC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1701:
        break;
    case 0x1700:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        break;
    }
    func_80193B38_6FADC8(actor_index);
}

void func_801A13A4_708634(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1700:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 1.5f;
        // fallthrough
    case 0x1701:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }
        return;
    case 0x1702:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.5));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.5));
        if (gActors[actor_index].var_150 < 0xB) {
            if (gActiveFrames & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
        }
        else if (gActiveFrames & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        return;
    }
}

void func_801A1554_7087E4(u16 actor_index) {
    u16* palette;

    if (gActors[actor_index].state != 0x1700) {
        if (gActors[actor_index].state != 0x1701) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;

        palette = D_800D18A4[(gActors[actor_index].var_0D8 & 0x7000) / 4096];
        gActors[actor_index].palette_18C = palette;
        func_8019F990_706C20(actor_index);
        if ((u16)gActors[actor_index].var_110 & 0x100) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (gActors[actor_index].unk_118 > 0.0f) {
        gActors[actor_index].unk_118 -= 1.0f;
        if (gActors[actor_index].unk_118 <= 0.0f) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            gActors[actor_index].unk_16C = 1;
            gActors[actor_index].unk_170_s16[0] = 0;
        }
        if (gActors[actor_index].unk_118 == 7.0f) {
            gActors[actor_index].graphicList = D_800E19C0;
            gActors[actor_index].graphicTimer = 1;
        }
    }
    else {
        func_80067E50(actor_index, D_801AB214_7124A4[gActors[actor_index].unk_170_u16[0]]);
    }
    func_8019FA84_706D14(actor_index);
}

void func_801A1758_7089E8(u16 actor_index) {
    func_80067E50(actor_index, D_801AB214_7124A4[gActors[actor_index].unk_170_u16[0]]);
    if (gActors[actor_index].unk_16C != 0 && --gActors[actor_index].unk_16C <= 0) {
        gActors[actor_index].unk_16C = 0;
        gActors[actor_index].state = gActors[actor_index].unk_170_u16[1];
    }
}

void func_801A17EC_708A7C(u16 actor_index) {
    Clancer_Update(actor_index);
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        func_801A1758_7089E8(actor_index);
        break;
    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        break;
    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
    gActors[actor_index].damage = 0;
}

void func_801A18BC_708B4C(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        gActors[actor_index].unk_184_s16[0] = D_801AC39A_71362A;
        gActors[actor_index].unk_184_s16[1] = D_801AC39C_71362C;
        break;
    case 0x61:
        func_801A1758_7089E8(actor_index);
        break;
    case 0x91:
        func_80073558(actor_index, 8);
        break;
    case 0xA1:
        func_800734C4(actor_index, 8);
        break;
    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        break;
    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
    gActors[actor_index].damage = 0;
}

void func_801A19F4_708C84(u16 actor_index) {
    Clancer_Update(actor_index);

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x60;
        break;
    case 0x61:
        func_801A1758_7089E8(actor_index);
        break;
    case 0x130:
        Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        break;
    case 0x150:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        break;
    }
    gActors[actor_index].flags &= ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
    gActors[actor_index].damage = 0;
}

void func_801A1AD0_708D60(u16 actor_index) {
    s32 temp_a0;
    u16 var_v1;

    switch (gActors[actor_index].state) {
    case 0:
        var_v1 = gActors[actor_index].var_110;
        temp_a0 = (u32)var_v1 & 0x7FFF;
        gActors[actor_index].var_150 = temp_a0;
        gActors[actor_index].var_154 = var_v1 & 0x8000;
        gActors[actor_index].graphicIndex = D_801AB25C_7124EC[temp_a0];
        if (temp_a0 == 0x15) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            if (gActors[actor_index].var_154 != 0) {
                gActors[actor_index].var_158 = 0x200;
            }
            else {
                gActors[actor_index].var_158 = 0;
            }

            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[actor_index].posZ.whole = -0x208;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].state = 4;
            return;
        }
        if (gActors[actor_index].var_150 == 0x14) {
            gActors[actor_index].flags |= ACTOR_FLAG_FREEZE_POS;
            if (gActors[actor_index].var_154 != 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
                gActors[actor_index].var_158 = 0x100;
            }
            else {
                gActors[actor_index].var_158 = 0;
            }

            if (gCurrentScene == SCENE_VOLCANO || gCurrentScene == SCENE_BLOCKMANRISES || gCurrentScene == SCENE_WORMINUP || gCurrentScene == SCENE_WESTERNWORLD) {
                gActors[actor_index].var_158 += 0x80;
            }
            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_UNK11;
            gActors[actor_index].posZ.whole = -0x208;
            gActors[actor_index].unk_188 = 0;
            gActors[actor_index].state = 3;
            return;
        }

        if (gActors[actor_index].var_150 >= 0xD) {
            if (gActors[actor_index].var_154 != 0) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }

            gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK8;
            gActors[actor_index].posZ.whole = gActors[actor_index].var_0D8;
            gActors[actor_index].posY.whole -= gActors[actor_index].posZ.whole / 2;
            while (gActors[actor_index].posX.whole < -0x100) {
                gActors[actor_index].posX.whole += 0x200;
            }

            while (gActors[actor_index].posX.whole > 0x100) {
                gActors[actor_index].posX.whole -= 0x200;
            }

            gActors[actor_index].state = 2;
            return;
        }
        gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK11;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].posZ.whole = gActors[actor_index].var_0D8;
        gActors[actor_index].state++;
        return;
    case 1:
        if (gActors[actor_index].posX.whole >= -0x2FF && gActors[actor_index].posX.whole < 0x300) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            return;
        }
        gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        return;
    case 2:
        if (gActors[actor_index].posX.whole < -0x100) {
            gActors[actor_index].posX.whole += 0x200;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        if (gActors[actor_index].posX.whole > 0x100) {
            gActors[actor_index].posX.whole -= 0x200;
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        }

        return;
    case 3:
        if (gActors[actor_index].var_154 != 0) {
            gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x1FF) - 0x100;
            gActors[actor_index].posY.whole = 0x218 - D_800BE580;
            return;
        }
        gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x1FF) - 0x100;
        gActors[actor_index].posY.whole = 0x210 - D_800BE580;
        return;
    case 4:
        gActors[actor_index].posY.whole = 0x220 - D_800BE580;
        gActors[actor_index].posX.whole = ((gActors[actor_index].var_158 - gScreenPosCurrentX.whole / 8) & 0x3FF) - 0x200;
        break;
    }
}

void func_801A1EF8_709188(u16 actor_index, u16 mode) {
    u16 new_actor_index;

    if (gActiveFrames & 7) {
        return;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index == 0) {
        return;
    }

    switch (mode) {
    case 0:
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, Rand() - 0x80, Rand() + 0x220, -0x90);
        break;
    case 1:
        func_8019339C_6FA62C(actor_index, new_actor_index, GINDEX_STAREFFECT, Rand() - 0x80, Rand() * 0.25 + 544.0, -0x90);
        break;
    }
}

void func_801A2044_7092D4(u16 actor_index, u16 mode) {
    u16 new_actor_index;

    if (--gActors[actor_index].var_15C > 0) {
        return;
    }

    if (mode == 2) {
        gActors[actor_index].var_15C = Rand() & 0xFF;
    }
    else {
        gActors[actor_index].var_15C = Rand() & 0x7F;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        gActors[new_actor_index].var_0D8 = 0;
        switch (mode) {
        case 0:
            func_801933F8_6FA688(actor_index, new_actor_index, 0, Rand() - 0x80, Rand() - 0x80, -0x80);
            break;
        case 1:
            func_801933F8_6FA688(actor_index, new_actor_index, 0, Rand() - 0x80, (Rand() - 0x80) * 0.5 + 464.0 - gScreenPosCurrentY.whole, -0x80);
            break;
        case 2:
            func_801933F8_6FA688(actor_index, new_actor_index, 0, Rand() * 0.1 + 160.0, 0x78, -0x80);
            gActors[new_actor_index].var_0D8 = 2;
            break;
        }
        func_801927CC_6F9A5C(0);
        func_8019277C_6F9A0C(30);
    }
}

void func_801A2308_709598(u16 actor_index, u16 mode) {
    u16 new_actor_index;

    if (--gActors[actor_index].var_15C > 0) {
        return;
    }

    if (mode == 2) {
        gActors[actor_index].var_15C = Rand() & 0xFF;
    }
    else {
        gActors[actor_index].var_15C = Rand() & 0x7F;
    }

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        gActors[new_actor_index].var_0D8 = 0;
        switch (mode) {
        case 0:
            func_801934B0_6FA740(actor_index, new_actor_index, 0, Rand() - 0x80, Rand() - 0x80, -0x80);
            break;
        case 1:
            func_801934B0_6FA740(actor_index, new_actor_index, 0, Rand() - 0x80, (Rand() - 0x80) * 0.5 + 464.0 - gScreenPosCurrentY.whole, -0x80);
            break;
        case 2:
            func_801934B0_6FA740(actor_index, new_actor_index, 0, Rand() * 0.1 + 160.0, 0x78, -0x80);
            gActors[new_actor_index].var_0D8 = 2;
            break;
        }
        func_801927CC_6F9A5C(0);
        func_8019277C_6F9A0C(30);
    }
}

void func_801A25CC_70985C(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 4; index++) {
        new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
        if (new_actor_index == 0) {
            return;
        }

        func_801933F8_6FA688(actor_index, new_actor_index, 0, index * 170 - 256, 128, -128);
        gActors[new_actor_index].var_0D8 = 1;
    }
    func_801927CC_6F9A5C(0);
    func_8019277C_6F9A0C(30);
}

void func_801A26B4_709944(u16 parent_index, u16 actor_index, u16 pos_x, u16 pos_y, s16 pos_z, u16 arg5, u16 arg6) {
    func_801934B0_6FA740(parent_index, actor_index, 0, pos_x - gScreenPosCurrentX.whole, pos_y - gScreenPosCurrentY.whole, pos_z);
    gActors[actor_index].var_110 = arg5;
    gActors[actor_index].var_0D8 = arg6;
}

void func_801A2778_709A08(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 4; index++) {
        new_actor_index = index + 0x58;
        func_801934B0_6FA740(actor_index, new_actor_index, 0, (index << 6) - gScreenPosCurrentX.whole + 0x6B9, 0x123 - gScreenPosCurrentY.whole, 160);
        gActors[new_actor_index].var_110 = 128.0f;
        gActors[new_actor_index].var_0D8 = 0x5B00;
        gActors[new_actor_index].unk_170_u16[0] = 12;
    }
}

void func_801A2894_709B24(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 4; index++) {
        new_actor_index = index + 0x5C;
        func_801934B0_6FA740(actor_index, new_actor_index, 0, index * 0x4A - gScreenPosCurrentX.whole + 0x6A8, 0x148 - gScreenPosCurrentY.whole, -0x40);
        gActors[new_actor_index].var_110 = 128.0f;
        gActors[new_actor_index].var_0D8 = 0x5B00;
        gActors[new_actor_index].unk_170_s16[0] = 0;
        if (index >= 2) {
            gActors[new_actor_index].var_110 += 256.0f;
        }
    }
}

void func_801A29F8_709C88(u16 actor_index) {
    u16 index;
    u16 current_actor_index;

    for (index = 0; index < 9; index++) {
        current_actor_index = index + 0x5C;
        gActors[current_actor_index].unk_170_s16[0] = 11;
    }
}

void func_801A2A48_709CD8(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 9; index++) {
        new_actor_index = index + 0x5C;
        func_801934B0_6FA740(actor_index, new_actor_index, 0, index * 0x1E - 0x78, 0x140 - gScreenPosCurrentY.whole, -0x40);
        gActors[new_actor_index].var_110 = 4224.0f;
        gActors[new_actor_index].var_0D8 = D_801AB0B4_712344[index];
        if (index >= 5) {
            gActors[new_actor_index].var_110 += 256.0f;
        }
    }
}

void func_801A2B94_709E24(u16 actor_index) {
    if (gActors[actor_index].var_15C != 0) {
        gActors[actor_index].posX.whole = gActors[actor_index].unk_17C - gScreenPosCurrentX.whole;
        gActors[actor_index].posY.whole = gActors[actor_index].unk_180 - gScreenPosCurrentY.whole;
        return;
    }

    gActors[actor_index].posX.whole = (gActors[actor_index].unk_17C - gScreenPosCurrentX.whole) + (gActors[actor_index].scaleX * 96.0f);
    gActors[actor_index].posY.whole = gActors[actor_index].unk_180 - gScreenPosCurrentY.whole;
}

void func_801A2C70_709F00(u16 parent_index) {
    Actor* parent = &gActors[parent_index];
    u16 temp_s4 = parent->var_0D8 & 0xFF;
    u16 index;
    u16 actor_index;
    u16 current_actor_index;

    for (index = 0; index < 2; index++) {
        actor_index = parent_index;
        if (index) {
            actor_index = Actor_RangeFindInactive(0x3C, 0x40);
            parent->var_15C = actor_index;
            if (!actor_index) {
                parent->flags = ACTOR_FLAG_NONE;
                return;
            }
            func_80193454_6FA6E4(parent_index, actor_index, 0, 0, 0, 0);
            current_actor_index = actor_index;
            gActors[current_actor_index].state++;
        }
        else {
            current_actor_index = actor_index;
        }

        gActors[current_actor_index].graphicList = index ? D_801AB29C_71252C : D_801AB288_712518;
        gActors[current_actor_index].unk_178 = 1;
        gActors[current_actor_index].var_0D8 = temp_s4;
        gActors[current_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_NOANIMATE | ACTOR_GFLAG_UNK11;
        gActors[current_actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[current_actor_index].unk_17C = gScreenPosCurrentX.whole + parent->posX.whole;
        gActors[current_actor_index].unk_180 = gScreenPosCurrentY.whole + parent->posY.whole;
        gActors[current_actor_index].posZ.whole = -0x40;
        func_801A2B94_709E24(actor_index);
    }
}

void func_801A2E04_70A094(u16 actor_index) {
    s16* graphic_list = gActors[actor_index].graphicList;

    if (graphic_list != NULL) {
        gActors[actor_index].unk_178--;
        if (gActors[actor_index].unk_178 == 0 && graphic_list[0] != 0) {
            gActors[actor_index].graphicIndex = graphic_list[0];
            gActors[actor_index].unk_178 = graphic_list[1];
            graphic_list += 2;
            if (graphic_list[0] < 0) {
                graphic_list += graphic_list[0];
            }
            gActors[actor_index].graphicList = graphic_list;
        }
    }

    func_801A2B94_709E24(actor_index);
}

void func_801A2EAC_70A13C(u16 actor_index) {
    u16 index;
    u16 new_actor_index;

    for (index = 0; index < 2; index++) {
        new_actor_index = Actor_RangeFindInactive(0x3C, 0x40);
        if (new_actor_index != 0) {
            func_80193454_6FA6E4(actor_index, new_actor_index, 0, 0x648 - gScreenPosCurrentX.whole + index * 0x120, 0x152 - gScreenPosCurrentY.whole, -16);
            gActors[new_actor_index].scaleX = 1.4f;
            gActors[new_actor_index].scaleY = 1.4f;
            gActors[new_actor_index].unk_188 = -32;
        }
    }
}

void func_801A2FD4_70A264(u16 actor_index) {
    s16 random_y;
    s16 random_x;
    u16 new_actor_index;

    gActors[actor_index].colorA = (u16)gActors[actor_index].unk_120;
    gActors[actor_index].scaleX = gActors[actor_index].unk_11C * 0.8;
    if (gActors[actor_index].var_0D8 != 0) {
        if (gActiveFrames & 0x10) {
            gActors[actor_index].palette_18C = PALETTE_8022D548;
        }
        else {
            gActors[actor_index].palette_18C = D_800D8528;
        }
    }
    else if (gActiveFrames & 0x10) {
        gActors[actor_index].palette_18C = PALETTE_8022D4E8;
    }
    else {
        gActors[actor_index].palette_18C = D_800D8548;
    }

    gActors[actor_index].colorR = ((gActiveFrames * 3) & 0x3F) + 0x20;
    gActors[actor_index].rotateY += gActors[actor_index].unk_148;
    if (gActiveFrames & 0x100) {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, 20.0f, 0.2f);
    }
    else {
        gActors[actor_index].unk_148 = Math_ApproachF32(gActors[actor_index].unk_148, -20.0f, 0.2f);
    }

    gActors[actor_index].unk_12C += ABS(gActors[actor_index].unk_148);
    gActors[actor_index].scaleY = gActors[actor_index].scaleX;
    if (Actor_IsOutsideRegion(actor_index, 0x20) == 0) {
        new_actor_index = SpawnParticle_Image_90C0_16(
            gActors[actor_index].graphicIndex,
            gActors[actor_index].posX.whole,
            gActors[actor_index].posY.whole,
            gActors[actor_index].posZ.whole + 1
        );
        if (new_actor_index != 0) {
            gActors[new_actor_index].graphicFlags = gActors[actor_index].graphicFlags;
            gActors[new_actor_index].palette_18C = gActors[actor_index].palette_18C;
            gActors[new_actor_index].unk_148 = 0;
            gActors[new_actor_index].scaleX = gActors[actor_index].scaleX * 1.5;
            gActors[new_actor_index].scaleY = gActors[new_actor_index].scaleX;
            Actor_SetColorRgb(new_actor_index, 0x7F);
            gActors[new_actor_index].rotateY = gActors[actor_index].rotateY + 90.0f;
            gActors[new_actor_index].colorA = gActors[actor_index].colorA / 3.0f;
        }
    }

    random_x = (f32)(0x10 - (Rand() & 0x1F));
    random_y = (f32)(0x10 - (Rand() & 0x1F));
    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(
        GINDEX_STAREFFECT,
        gActors[actor_index].posX.whole + random_x,
        gActors[actor_index].posY.whole + random_y,
        gActors[actor_index].posZ.whole + 1
    );
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ | ACTOR_GFLAG_PALETTE;
        gActors[new_actor_index].palette_18C = gActors[actor_index].palette_18C;
        gActors[new_actor_index].var_150 = FIXED_UNIT(128);
        gActors[new_actor_index].unk_148 = 7.0f;
        gActors[new_actor_index].var_110 = -0.1f;
        gActors[new_actor_index].unk_114 = -0.033333335f;
        Actor_SetColorRgb(new_actor_index, 0x7F);
        gActors[new_actor_index].velocityZ.raw = FIXED_UNIT(4);
        gActors[new_actor_index].scaleX = gActors[actor_index].unk_11C * 1.4;
        gActors[new_actor_index].scaleY = gActors[actor_index].unk_11C * 0.5;
    }
}

void func_801A34C0_70A750(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        gStageState += 1;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_LIKE_A_WIND);
        break;
    case 0x1801:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x78;
        gDrawBackground = FALSE;
        func_80192A80_6F9D10();
        func_80192A48_6F9CD8(0xFF);
        func_80192A08_6F9C98(0x3C);
        D_800BE710 = 1;
        gActorDepthMiddle = -0x1F8;
        gActorDepthBack = -0x1FF;
        func_80192734_6F99C4(0x7F);
        gActors[0x32].posZ.whole = -0x100;
        gActors[0x32].var_15C = FIXED_UNIT(192);
        func_801927CC_6F9A5C(gActors[0x32].var_15C_s16[0]);
        func_801A02EC_70757C(actor_index, 0x58, 0x720, 0x12C, -3, 0x80, 0x5B00);
        func_801A2EAC_70A13C(actor_index);
        func_801A2778_709A08(actor_index);
        func_801A2A48_709CD8(actor_index);
        func_8019350C_6FA79C(actor_index, 0x89, 0, (0x720 - gScreenPosCurrentX.whole), 0x150 - gScreenPosCurrentY.whole, 0);
        func_8019350C_6FA79C(actor_index, 0x88, 0, (0x720 - gScreenPosCurrentX.whole), 0x290 - gScreenPosCurrentY.whole, 0);
        gActors[0x88].var_0D8 = 1;
        break;
    case 0x1802:
        func_801A1EF8_709188(actor_index, 0);
        func_801A2044_7092D4(actor_index, 0);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xF0;
        }
        break;
    case 0x1803:
        func_801A1EF8_709188(actor_index, 0);
        func_801A2044_7092D4(actor_index, 1);
        gScreenPosTargetY.raw = func_8019214C_6F93DC(gScreenPosTargetY.raw, FIXED_UNIT(348), D_801AA070_711300);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            D_801AC370_713600 = Sound_PlaySfx3(SFX_CROUD_CHATTER, 0x7F, 0x40);
            func_801A9044_7102D4();
        }
        break;
    case 0x1804:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x100;
            func_801A06AC_70793C(actor_index, 0x650, 0x12C);
            func_801A9D1C_710FAC(0x6F0, 0x12C);
            func_801A9D38_710FC8(1, 2);
            func_801A0350_7075E0(actor_index, 0x39, 0x630, 0x12C, -3, 0x80, 0x6320);
            D_801AC39A_71362A = 0x6D0;
            D_801AC39C_71362C = 0x12A;
            gActors[0x39].unk_170 = 0x90;
            gActors[0x39].unk_16C = 1;
        }
        break;
    case 0x1805:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x2D;
            func_801A9D38_710FC8(1, 4);
            func_801A9D68_710FF8(FIXED_UNIT(2), FIXED_UNIT(4));
            gActors[0x39].unk_184_s16[0] = 0x6F0;
            gActors[0x39].unk_170 = 0x90;
            gActors[0x39].unk_16C = 1;
        }
        break;
    case 0x1806:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x89].state = 0x1802;
            Sound_PlaySfx(SFX_STAR_TP);
            func_801A9D1C_710FAC(0x743, 0x270);
            gActors[0x68].posX.whole = 0x743 - gScreenPosCurrentX.whole;
            gActors[0x68].posY.whole = 0x270 - gScreenPosCurrentY.whole;
            gActors[0x68].flags |= ACTOR_FLAG_FLIPPED;
            func_801A26B4_709944(actor_index, 0x66, 0x66F, 0x25F, 0, 0x80, 0x5B00);
            func_801A26B4_709944(actor_index, 0x67, 0x7CF, 0x25F, 0, 0x180, 0x5B00);
        }
        break;
    case 0x1807:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x89].state = 0x1805;
        }
        break;
    case 0x1808:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            gActors[0x39].unk_170 = 0x120;
            gActors[0x39].unk_16C = 1;
            gActors[0x39].unk_11C = FIXED_UNIT(4);
            gActors[0x39].unk_120 = FIXED_UNIT(2);
        }
        break;
    case 0x1809:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x39].flags = ACTOR_FLAG_NONE;
            gScreenPosTargetX.whole = 0x720;
            gScreenPosTargetY.whole = 0x270;
            gActors[0x89].state = 0x1802;
            Sound_PlaySfx(SFX_STAR_TP);
        }
        break;
    case 0x180A:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            D_801AA07C_71130C = 0xA;
            func_801A0350_7075E0(actor_index, 0x39, 0x6FE, 0x2A0, 0, 0x80, 0x6320);
            D_801AC39A_71362A = 0x6D0;
            D_801AC39C_71362C = 0x12C;
            func_801A0350_7075E0(actor_index, 0x38, 0x690, 0x12C, 0, 0x80, 0x3410);
            D_801AC39A_71362A = 0x690;
            D_801AC39C_71362C = 0x12C;
            gActors[actor_index].unk_114 = gLookatEyeZ * 1000.0;
            gLookatAtX = 1.0f;
            gLookatAtY = 1.0f;
            gLookatAtZ = 1.0f;
            func_801A9044_7102D4();
        }
        break;
    case 0x180B:
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 1128000.0f, D_801AA070_711300);
        gLookatEyeZ = gActors[actor_index].unk_114 / 1000.0;
        gScreenPosTargetY.raw = func_8019214C_6F93DC(gScreenPosTargetY.raw, FIXED_UNIT(512), D_801AA070_711300);
        if (D_801AA074_711304 == 1) {
            gActors[0x38].graphicFlags |= ACTOR_GFLAG_UNK8;
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
        }
        break;
    case 0x180C:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_801A29F8_709C88(actor_index);
            func_801A25CC_70985C(actor_index);
            Sound_PlaySfxAtActor2(SFX_CROUD_CHEER, 0x89);
            Sound_PlaySfx(SFX_TURMPETFANFARE);
        }
        break;
    case 0x180D:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            D_801AA07C_71130C = 0x3C;
            gActors[actor_index].unk_114 = gLookatEyeZ * 1000.0;
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
        }
        break;
    case 0x180E:
        gScreenPosTargetX.raw = func_8019214C_6F93DC(gScreenPosTargetX.raw, gActors[0x38].posX.raw + gScreenPosCurrentX.raw, D_801AA070_711300);
        gScreenPosTargetY.raw = func_8019214C_6F93DC(gScreenPosTargetY.raw, FIXED_UNIT(348), D_801AA070_711300);
        gActors[actor_index].unk_114 = func_80192100_6F9390(gActors[actor_index].unk_114, 448000.0f, D_801AA070_711300);
        gLookatEyeZ = gActors[actor_index].unk_114 / 1000.0;
        if (D_801AA074_711304 == 1) {
            gActors[0x38].unk_184_s16[0] = 0x568;
            gActors[0x38].unk_16C = 1;
            gActors[0x38].unk_170 = 0x90;
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 2;
        }
        break;
    case 0x180F:
        func_801A1EF8_709188(actor_index, 1);
        gScreenPosTargetX.whole = gActors[0x38].posX.whole + gScreenPosCurrentX.parts[0];
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x188;
            gActors[actor_index].var_160 = FIXED_UNIT(127);
            gActors[actor_index].unk_164 = FIXED_UNIT(64);
        }
        break;
    case 0x1810:
        func_801A1EF8_709188(actor_index, 1);
        gScreenPosTargetX.whole = gActors[0x38].posX.whole + gScreenPosCurrentX.parts[0];
        gActors[actor_index].var_160 = func_8019214C_6F93DC(gActors[actor_index].var_160, 0, D_801AA070_711300);
        gActors[actor_index].unk_164 = func_8019214C_6F93DC(gActors[actor_index].unk_164, FIXED_UNIT(127), D_801AA070_711300);
        gSfxChannelVolumes[D_801AC370_713600] = gActors[actor_index].var_160_s16[0];
        gSfxChannelPans[D_801AC370_713600] = gActors[actor_index].unk_164_s16[0];
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xF0;
            D_801AA07C_71130C = 0xB4;
            Sound_StartFade(1, 0xF0);
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
            Actor_ClearRange(0x48, 0x80);
            func_801A9044_7102D4();
        }
        break;
    case 0x1811:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA074_711304 != 0 && --D_801AA074_711304 <= 0) {
            D_801AA074_711304 = 0;
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
        }

        if ((D_801AA070_711300 <= 0) && (gAudioFadeMode != 1)) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].unk_184_s16[0] = 0x48E;
            gActors[0x38].unk_170 = 0x90;
            gActors[0x38].unk_16C = 1;
            Sound_PlayMusic(BGM_ADIEUX);
        }
        break;
    case 0x1812:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        gScreenPosTargetX.whole = gActors[0x38].posX.whole + gScreenPosCurrentX.parts[0];
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x11, 0, 0xF0);
        }
        break;
    case 0x1813:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        gScreenPosTargetX.whole = gActors[0x38].posX.whole + gScreenPosCurrentX.parts[0];
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x6E;
            func_801A0198_707428(actor_index, 0x38);
            func_801A0350_7075E0(actor_index, 0x39, 0x550, 0x12C, -3, 0x180, 0x6320);
            D_801AC39A_71362A = 0x4D0;
            D_801AC39C_71362C = 0x12C;
            gActors[0x39].unk_170 = 0xA0;
            gActors[0x39].unk_16C = 1;
            func_801A9044_7102D4();
        }
        break;
    case 0x1814:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        gScreenPosTargetX.whole = Math_ApproachS32(gScreenPosTargetX.whole, 0x4B0, 0x10);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x12, 0x50, -0x10);
        }
        break;
    case 0x1815:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
            func_80193900_6FAB90(0x13, -0x50, -0x10);
            gActors[0x38].unk_170_s16[0] = 4;
            gActors[0x38].graphicTimer = 0;
            func_801A9044_7102D4();
        }
        break;
    case 0x1816:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_801A9044_7102D4();
        }
        break;
    case 0x1817:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (gActors[0x38].unk_16C == 0) {
            gActors[0x38].unk_16C = 1;
            gActors[0x38].unk_170 = 0xC0;
        }
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
        }
        break;
    case 0x1818:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            gActors[0x38].unk_184_s16[0] = 0x3C0;
            gActors[0x38].unk_170 = 0xA0;
            gActors[0x38].unk_16C = 1;
        }
        break;
    case 0x1819:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
        }
        break;
    case 0x181A:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x1900;
            D_800BE710 = 0;
            Actor_ClearRange(0x38, 0x80);
        }
        break;
    }

    func_8019FFD0_707260(actor_index);
}

void func_801A4330_70B5C0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].var_154 = Rand();
        gActors[actor_index].palette_18C = D_801AABAC_711E3C[gActors[actor_index].var_154 & 0xF];
        gActors[actor_index].var_158 = gActors[actor_index].posY.whole;
        gActors[actor_index].var_150 = gActors[actor_index].var_154 & 0x1F;
        // fallthrough
    case 0x1801:
        gActors[actor_index].posY.whole = gActors[actor_index].var_158 - D_800BE580;
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A4424_70B6B4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        switch (gActors[actor_index].var_0D8) {
        case 2:
            break;
        case 0:
            func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        case 1:
            func_8003F138(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        }
        Sound_PlaySfxAtActor3(SFX_005D, actor_index);
        // fallthrough
    case 0x1801:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }
}

void func_801A4510_70B7A0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        func_801A2C70_709F00(actor_index);
        // fallthrough
    case 0x1801:
        func_801A2E04_70A094(actor_index);
        if (gActors[actor_index].var_15C != 0) {
            gActors[gActors[actor_index].var_15C].unk_17C = gActors[actor_index].unk_17C;
            gActors[gActors[actor_index].var_15C].unk_180 = gActors[actor_index].unk_180;
            gActors[gActors[actor_index].var_15C].unk_188 = gActors[actor_index].unk_188;
            gActors[gActors[actor_index].var_15C].scaleX = gActors[actor_index].scaleX;
            gActors[gActors[actor_index].var_15C].scaleY = gActors[actor_index].scaleY;
        }
        return;
    }
}

void func_801A4634_70B8C4(u16 actor_index) {
    u16* palette;

    if (gActors[actor_index].state != 0x1800) {
        if (gActors[actor_index].state != 0x1801) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        palette = D_800D18A4[(gActors[actor_index].var_0D8 & 0x7000) / 4096];
        gActors[actor_index].palette_18C = palette;
        func_8006CD5C(actor_index);
        func_8019F990_706C20(actor_index);
        if ((u16)gActors[actor_index].var_110 & 0x100) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    func_80067E50(actor_index, D_801AB214_7124A4[gActors[actor_index].unk_170_u16[0]]);
    func_8019FA84_706D14(actor_index);
}

void func_801A47C4_70BA54(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_WARPGATE;
        gActors[actor_index].posZ.whole = -1;
        gActors[actor_index].unk_11C = 1.0f;
        gActors[actor_index].unk_120 = 255.0f;
        // fallthrough
    case 0x1801:
        func_801A2FD4_70A264(actor_index);
        return;
    case 0x1802:
        gActors[actor_index].state++;
        gActors[actor_index].var_150 = 40;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE;
        // fallthrough
    case 0x1803:
        gActors[actor_index].unk_11C = Math_ApproachF32(gActors[actor_index].unk_11C, 0.0f, 0.02f);
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 0.0f, 16.0f);
        gActors[actor_index].var_160 -= 16;
        gActors[actor_index].unk_164 += FIXED_UNIT(4) * gActors[actor_index].unk_11C;
        WarpGate_StarRing(actor_index);
        MarinaEffect_Teleport(actor_index);
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        return;
    case 0x1805:
        gActors[actor_index].state++;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].unk_164 = FIXED_UNIT(104);
        gActors[actor_index].unk_11C = 0;
        gActors[actor_index].unk_120 = 0;
        // fallthrough
    case 0x1806:
        gActors[actor_index].unk_11C = Math_ApproachF32(gActors[actor_index].unk_11C, 1.05f, 0.05f);
        gActors[actor_index].unk_120 = Math_ApproachF32(gActors[actor_index].unk_120, 255.0f, 16.0f);
        if ((u16)gActors[actor_index].unk_120 == 255 && gActors[actor_index].unk_11C >= 1.0) {
            gActors[actor_index].state = 0x1801;
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
            return;
        }
        gActors[actor_index].var_160 += 16;
        gActors[actor_index].unk_164 -= FIXED_UNIT(6.5) * (1.0 - gActors[actor_index].unk_11C);
        WarpGate_StarRing(actor_index);
        break;
    }
}

void func_801A4AE8_70BD78(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1800:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FLIPPED;
        gActors[actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 1.5f;
        // fallthrough
    case 0x1801:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(3);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }
        return;
    case 0x1802:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.5));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.5));
        if (gActors[actor_index].var_150 < 0xB) {
            if (gActiveFrames & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
        }
        else if (gActiveFrames & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }

        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A4C94_70BF24(s16 x, s16 y) {
    u16 actor_index;
    u32 angle;
    u16 index;
    s32 velocity_x;
    s32 velocity_y;

    actor_index = SpawnParticle_List_90C0_16(D_800E1604, x, y, 8);
    if (actor_index) {
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
        gActors[actor_index].colorA = 0xF0;
        gActors[actor_index].var_154 = -4;
        gActors[actor_index].scaleX = 0.4f;
        gActors[actor_index].scaleY = 0.4f;
        gActors[actor_index].var_110 = 0.03f;
        gActors[actor_index].unk_114 = 0.03f;
    }

    angle = Rand();
    for (index = 0; index < 2; index++) {
        actor_index = SpawnParticle_List_90C0_16(D_800E15C4, x, y, 8);
        if (actor_index) {
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE;
            gActors[actor_index].scaleX = 0.8f;
            gActors[actor_index].scaleY = 0.8f;
            gActors[actor_index].unk_148 = 16.0f;
            gActors[actor_index].colorA = 0xE0;
            gActors[actor_index].var_110 = -0.02f;
            gActors[actor_index].unk_114 = -0.02f;
            angle &= 0x3F0;
            velocity_x = COS(angle) * FIXED_UNIT(3.75);
            velocity_y = SIN(angle) * FIXED_UNIT(3.75);
            gActors[actor_index].velocityX.raw = velocity_x;
            gActors[actor_index].velocityY.raw = velocity_y;
            gActors[actor_index].var_158 = -velocity_x / 12;
            gActors[actor_index].var_15C = -velocity_y / 12;
            angle += COS_DEG_180;
        }
    }
}

s32 func_801A4F68_70C1F8(void) {
    u16 rank;

    rank = Records_GetTotalTimeRank();
    if (rank == GINDEX_RANK_S || rank == GINDEX_RANK_A) {
        return 1;
    }
    return 0;
}

void func_801A4FA4_70C234(u16 actor_index) {
    s32 button_mask;
    s32 buttons;
    s32 x_position;

    switch (gActors[actor_index].state) {
    case 0x1900:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x3C;
        gScreenPosTargetX.whole = 0x730;
        gScreenPosTargetY.whole = 0x15C;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        func_801933F8_6FA688(actor_index, 0x57, 0, (0x640 - gScreenPosCurrentX.whole), 0x12E - gScreenPosCurrentY.whole, 0);
        gActors[0x57].velocityX.raw = FIXED_UNIT(0.75);
        gPlayerData.buttonHold = 0;
        gPlayerData.buttonPress = 0;
        func_801A0350_7075E0(actor_index, 0x38, 0x730, 0x12C, 8, 0x180, 0x3410);
        D_801AC39A_71362A = 0x430;
        D_801AC39C_71362C = 0x12C;
        gActors[0x38].unk_170 = 0xA0;
        gActors[0x38].unk_16C = 1;
        func_80192A08_6F9C98(0x3C);
        return;
    case 0x1901:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        x_position = gActors[0x38].posX.whole;
        gScreenPosTargetX.whole = gScreenPosCurrentX.whole + x_position;
        if (ABS(x_position - gActors[0x57].posX.whole) < 0x11) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x55;
            func_801A4C94_70BF24((gActors[0x38].posX.whole - 8), gActors[0x38].posY.whole);
            Sound_PlaySfx(SFX_0036);
            gActors[0x57].velocityX.raw = 0;
            gActors[0x57].graphicList = D_801AB2F4_712584;
            gActors[0x57].graphicTimer = 1;
            gActors[0x57].velocityX.raw = FIXED_UNIT(-1);
            gActors[0x57].velocityY.raw = FIXED_UNIT(3);
            gActors[0x38].state = 0x4000U;
            gActors[0x38].velocityX.raw = FIXED_UNIT(1);
            gActors[0x38].graphicList = D_800E1D30;
            gActors[0x38].graphicTimer = 1;
            return;
        }
    default:
        return;
    case 0x1902:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        func_80069DA8(0x57);
        if (gActors[0x38].graphicTimer == 0) {
            gActors[0x38].graphicList = D_800E1D30;
            gActors[0x38].graphicTimer = 1;
        }

        if ((gActors[0x57].posY.whole < -0x2D) && (gActors[0x57].flags & ACTOR_FLAG_ACTIVE) && (gActors[0x57].state == 0x1901)) {
            gActors[0x57].state++;
            Marina_Init();
            gPlayerActor.state = 0;
            gMarinaAnim.anim_u32 = 2;
            gPlayerActor.posX.raw = gActors[0x57].posX.raw;
            gPlayerData.buttonHold = 0;
            gPlayerData.buttonPress = 0;
            gPlayerActor.posY.raw = gActors[0x57].posY.raw;
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].velocityX.raw = 0;
            gActors[0x38].state = 0x200U;
            return;
        }
        break;
    case 0x1903:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].state = 0x210U;
            gActors[0x38].unk_170_u16[0] = 2;
            return;
        }
        break;
    case 0x1904:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x14, 0x25, -0x10);
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x1905:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x60;
            D_801AA07C_71130C = 0x44;
            gActors[0x38].unk_184_s16[0] = 0x692;
            gActors[0x38].state = 0xA0U;
            if (func_801A4F68_70C1F8() != 0) {
                SpawnCrosshair(4, 0x38);
            }
            D_801AA080_711310 = 0;
            D_801AA084_711314 = 0;
            return;
        }
        break;
    case 0x1906:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if ((gPlayerActor.flags & ACTOR_FLAG_ATTACHED) && (gPlayerActor.parentIndex == 0x38)) {
            gActors[actor_index].state = 0x1920;
            D_801AA078_711308 = 0x22;
            return;
        }

        if (func_801A4F68_70C1F8() != 0) {
            button_mask = gButton_B + gButton_A;
            gPlayerData.buttonHold = gButtonHold & button_mask;
            gPlayerData.buttonPress = gButtonPress & button_mask;
            if ((D_801AA080_711310 == 0) && ((gButtonHold != 0) || (gButtonPress != 0))) {
                D_801AA080_711310 = 1;
            }
        }

        if (D_801AA070_711300 <= 0) {
            if (D_801AA080_711310 == 1) {
                gActors[actor_index].state = 0x1920;
                D_801AA078_711308 = 0x22;
                return;
            }
            gActors[actor_index].state = 0x1910;
            func_80193900_6FAB90(0x15, 0x50, -0x10);
            return;
        }
        break;
    case 0x1910:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x90;
            gActors[0x38].state = 0x3B0U;
            gActors[0x38].unk_170_s16[1] = 0x3C0;
            gActors[0x38].unk_16C = 1;
            gActors[0x38].unk_118 = 10.0f;
            gActors[0x38].unk_11C = 2.0f;
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x1911:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x38].state = 0xA0U;
            gActors[0x38].unk_184_s16[0] = 0x5C0;
            return;
        }
        break;
    case 0x1912:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (gActors[0x38].state == 0x61) {
            gActors[0x38].state = 0xA0U;
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            return;
        }
        break;
    case 0x1913:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x1A00;
            Actor_ClearRange(0x38, 0x80);
            gPlayerActor.flags = ACTOR_FLAG_NONE;
        }
        break;
    case 0x1920:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            if ((gPlayerActor.flags & ACTOR_FLAG_ATTACHED) && (gPlayerActor.parentIndex == 0x38)) {
                gActors[actor_index].state++;
                func_800267FC(SCENE_UNK03);
                D_801AC374_713604 = 1;
                func_80193900_6FAB90(1, 0x50, -0x10);
                return;
            }
            gActors[actor_index].state = 0x1911;
            return;
        }
        break;
    case 0x1921:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gPlayerData.buttonHold = gButton_DDown;
            gPlayerData.buttonPress = gButton_DDown;
            func_80193900_6FAB90(2, -0x50, -0x10);
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x1922:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        gPlayerData.buttonHold = gButton_DDown;
        gPlayerData.buttonPress = 0;
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gPlayerData.buttonHold = 0;
            gPlayerData.buttonPress = 0;
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x1923:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            buttons = gButton_DRight | gButton_DUp;
            gPlayerData.buttonHold = buttons;
            gPlayerData.buttonPress = buttons;
            return;
        }
        break;
    case 0x1924:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        gActors[actor_index].state++;
        D_801AA078_711308 = 0x78;
        gPlayerData.buttonHold = gButton_DRight | gButton_DUp | gButton_B;
        gPlayerData.buttonPress = gButton_B;
        return;
    case 0x1925:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2308_709598(actor_index, 2);
        gActors[0x38].unk_0F8.raw = FIXED_UNIT(6);
        gActors[0x38].unk_0FC.raw = FIXED_UNIT(6);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x78;
            func_80192A28_6F9CB8(0x3C);
            func_801A9044_7102D4();
            return;
        }
        break;
    case 0x1926:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x1B00;
            Actor_ClearRange(0x38, 0x80);
            gPlayerActor.flags = ACTOR_FLAG_NONE;
            return;
        }
        break;
    }
}

void func_801A59A8_70CC38(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1900:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].var_154 = Rand();
        gActors[actor_index].palette_18C = D_801AABAC_711E3C[gActors[actor_index].var_154 & 0xF];
        gActors[actor_index].var_158 = gActors[actor_index].posY.whole;
        gActors[actor_index].var_150 = gActors[actor_index].var_154 & 0x1F;
        // fallthrough
    case 0x1901:
        gActors[actor_index].posY.whole = gActors[actor_index].var_158 - D_800BE580;
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A5A9C_70CD2C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1900:
        gActors[actor_index].state++;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicList = D_801AB2B0_712540;
        gActors[actor_index].graphicTimer = 1;
        // fallthrough
    case 0x1901:
        func_80193B38_6FADC8(actor_index);
        break;
    case 0x1902:
        gActors[actor_index].state++;
        break;
    case 0x1903:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        break;
    }
}

void func_801A5B60_70CDF0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1900:
        gActors[actor_index].state++;
        switch (gActors[actor_index].var_0D8) {
        case 2:
            break;
        case 0:
            func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        case 1:
            func_8003F138(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        }
        Sound_PlaySfxAtActor3(SFX_005D, actor_index);
        // fallthrough
    case 0x1901:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }
}

void func_801A5C4C_70CEDC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1A00:
        gActors[actor_index].state++;
        D_801AA070_711300 = 0x28;
        func_80192A08_6F9C98(0x3C);
        gScreenPosTargetX.whole = 0x640;
        gScreenPosTargetY.whole = 0x15C;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
    default:
        break;
    case 0x1A01:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x45;
            func_801A0350_7075E0(actor_index, 0x38, 0x6F0, 0x12C, 8, 0x180, 0x3410);
            D_801AC39A_71362A = 0x600;
            D_801AC39C_71362C = 0x12C;
            gActors[0x38].unk_170 = 0xA0;
            gActors[0x38].unk_16C = 1;
        }
        break;
    case 0x1A02:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x38].state = 0x4000;
            gActors[0x38].unk_170 = 0x450;
            gActors[0x38].unk_16C = 1;
            gActors[0x38].velocityY.raw = FIXED_UNIT(4);
            gActors[0x38].graphicList = D_800E22A8;
            gActors[0x38].graphicTimer = 1;
        }
        break;
    case 0x1A03:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        func_80069DA8(0x38);
        if (gActors[0x38].flags_098 & ACTOR_FLAG3_UNK5) {
            gActors[actor_index].state++;
            gActors[0x38].graphicTimer = 1;
            gActors[0x38].graphicList = D_800E22B4;
            func_80193900_6FAB90(0x16, 0x50, -0x10);
            Sound_PlaySfxAtActor2(SFX_0094, 0x38);
        }
        break;
    case 0x1A04:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (gActors[0x38].graphicTimer == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x100;
            gActors[0x38].state = 0x451;
        }
        break;
    case 0x1A05:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xC0;
            func_801A0350_7075E0(actor_index, 0x3A, 0x590, 0x12C, -3, 0x2080, 0x5220);
            D_801AC39A_71362A = 0x638;
            D_801AC39C_71362C = 0x12C;
            gActors[0x3A].unk_170 = 0x90;
            gActors[0x3A].unk_16C = 1;
            func_801A9044_7102D4();
        }
        break;
    case 0x1A06:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x17, -0x50, -0x10);
        }
        break;
    case 0x1A07:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x18, 0x50, -0x10);
        }
        break;
    case 0x1A08:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[0x3A].unk_170_u16[0] = 8;
            func_80193900_6FAB90(0x19, -0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1A09:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xA;
            gActors[0x3A].graphicTimer = 0;
            gActors[0x3A].unk_170_u16[0] = 0xA;
        }
        break;
    case 0x1A0A:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x14;
            gActors[0x3A].unk_16C = 1;
            gActors[0x3A].unk_184_s16[0] = 0x640;
            gActors[0x3A].unk_170 = 0x90;
        }
        break;
    case 0x1A0B:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x3A].state = 0x2A0U;
        }
        break;
    case 0x1A0C:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (gActors[0x3A].state == 0x2B0) {
            gActors[actor_index].state++;
            gActors[0x3A].unk_118 = 65535.0f;
            gActors[0x3A].var_158 = FIXED_UNIT(16);
            gActors[0x3A].var_15C -= FIXED_UNIT(8);
            gActors[0x3A].var_160 = 0;
            gActors[0x3A].unk_164 = 0;
            func_80193900_6FAB90(0x1A, -0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1A0D:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            gActors[0x3A].state = 0x60U;
            gActors[0x38].unk_170 = 0x70;
            gActors[0x38].unk_16C = 1;
            func_80193900_6FAB90(0x1B, -0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1A0E:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if ((D_801AA070_711300 != 0) && (gActors[0x38].unk_16C == 0)) {
            gActors[0x38].unk_16C = 1;
            gActors[0x38].unk_170 = 0xC0;
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x1C, 0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1A0F:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x58;
            gActors[0x3A].state = 0x3B0U;
            gActors[0x3A].unk_118 = 10.0f;
            gActors[0x3A].unk_11C = 2.0f;
        }
        break;
    case 0x1A10:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        gActors[0x38].unk_0F8.raw = FIXED_UNIT(0.125);
        gActors[0x38].unk_0FC.raw = FIXED_UNIT(1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xA;
            gActors[0x3A].state = 0x4000U;
            gActors[0x3A].graphicList = D_801AB1E8_712478;
            gActors[0x3A].velocityX.raw = 0;
            gActors[0x3A].velocityY.raw = FIXED_UNIT(6);
            func_800340CC(0x3A, 0xE, 1);
            gActors[0x38].state = 0x4000;
            gActors[0x38].graphicList = D_800E1D0C;
            gActors[0x38].graphicTimer = 1;
            gActors[0x38].velocityX.raw = FIXED_UNIT(6);
            gActors[0x38].velocityY.raw = FIXED_UNIT(8);
            Sound_PlaySfxAtActor2(SFX_DASH_0116, 0x3A);
        }
        break;
    case 0x1A11:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        func_80069DA8(0x3A);
        func_80069DA8(0x38);
        if (gActors[0x3A].velocityY.raw < 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x46;
            gActors[0x3A].state = 0x101U;
            gActors[0x3A].graphicList = D_800E1D30;
            gActors[0x3A].graphicTimer = 1;
            gActors[0x3A].unk_170 = 0x60;
            gActors[0x3A].unk_16C = 1;
        }
        break;
    case 0x1A12:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        func_80069DA8(0x38);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x1D, -0x50, -0x10);
        }
        break;
    case 0x1A13:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x46;
            D_801AA07C_71130C = 0xA;
            gActors[0x3A].unk_170_u16[0] = 0xE;
        }
        break;
    case 0x1A14:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        if (D_801AA074_711304 <= 0) {
            func_800339BC(gActors[0x3A].posX.raw + (f64)FIXED_UNIT(0.5), (f64)gActors[0x3A].posY.raw, gActors[0x3A].posZ.raw, 1);
            func_800339BC(gActors[0x3A].posX.raw + (f64)FIXED_UNIT(7), gActors[0x3A].posY.raw + (f64)FIXED_UNIT(1), gActors[0x3A].posZ.raw, 1);
        }

        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_801A9044_7102D4();
        }
        break;
    case 0x1A15:
        func_801A1EF8_709188(actor_index, 1);
        func_801A2044_7092D4(actor_index, 2);
        func_800339BC(gActors[0x3A].posX.raw + (f64)FIXED_UNIT(0.5), (f64)gActors[0x3A].posY.raw, gActors[0x3A].posZ.raw, 1);
        func_800339BC(gActors[0x3A].posX.raw + (f64)FIXED_UNIT(7), gActors[0x3A].posY.raw + (f64)FIXED_UNIT(1), gActors[0x3A].posZ.raw, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            func_800339BC(gActors[0x3A].posX.raw + (f64)FIXED_UNIT(0.5), (f64)gActors[0x3A].posY.raw, gActors[0x3A].posZ.raw, 0);
        }
        break;
    case 0x1A16:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state = 0x1B00;
            Actor_ClearRange(0x38, 0x80);
        }
        break;
    }
}

void func_801A6808_70DA98(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1A00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].var_154 = Rand();
        gActors[actor_index].palette_18C = D_801AABAC_711E3C[gActors[actor_index].var_154 & 0xF];
        gActors[actor_index].var_158 = gActors[actor_index].posY.whole;
        gActors[actor_index].var_150 = gActors[actor_index].var_154 & 0x1F;
        // fallthrough
    case 0x1A01:
        gActors[actor_index].posY.whole = gActors[actor_index].var_158 - D_800BE580;
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A68FC_70DB8C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1A00:
        gActors[actor_index].state++;
        switch (gActors[actor_index].var_0D8) {
        case 2:
            break;
        case 0:
            func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        case 1:
            func_8003F138(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        }
        Sound_PlaySfxAtActor3(SFX_005D, actor_index);
        // fallthrough
    case 0x1A01:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }
}

void func_801A69E8_70DC78(u16 parent_index, u16 source_actor_index) {
    u16 actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (actor_index != 0) {
        func_80193454_6FA6E4(
            parent_index,
            actor_index,
            GINDEX_01E2,
            gActors[source_actor_index].posX.whole - 8,
            gActors[source_actor_index].posY.whole + 24,
            gActors[source_actor_index].posZ.whole
        );
    }
}

void func_801A6A78_70DD08(u16 parent_index, u16 actor_index, u16 pos_x, u16 pos_y, s16 pos_z, u16 arg5, u16 arg6) {
    func_801933F8_6FA688(parent_index, actor_index, 0, pos_x - gScreenPosCurrentX.whole, pos_y - gScreenPosCurrentY.whole, pos_z);
    gActors[actor_index].var_110 = arg5;
    gActors[actor_index].var_0D8 = arg6;
}

void func_801A6B3C_70DDCC(u16 actor_index) {
    u16 index;
    f64 x_position;
    u32 random_value;

    for (index = 0; index < ARRAYLENGTH(D_801AB360_7125F0); index++) {
        if (index < 4) {
            random_value = Rand();
            x_position = gScreenPosCurrentX.whole + (152.0 + random_value * 0.1875);
        }
        else {
            random_value = Rand();
            x_position = gScreenPosCurrentX.whole + (224.0 + random_value * 0.1875);
        }

        func_801A0350_7075E0(actor_index, index + 0x58, x_position, D_801AB360_7125F0[index].y, D_801AB360_7125F0[index].z, 0x180, 0x3B00);
    }
}

void func_801A6D5C_70DFEC(u16 unused) {
    u16 index;
    u16 current_actor_index;

    for (index = 0; index < ARRAYLENGTH(D_801AB360_7125F0); index++) {
        current_actor_index = index + 0x58;
        gActors[current_actor_index].unk_184_s16[0] = D_801AB360_7125F0[index].x;
        gActors[current_actor_index].unk_16C = 1;
        gActors[current_actor_index].unk_170 = 0xA0;
        gActors[current_actor_index].unk_184_s16[1] = D_801AB360_7125F0[index].y;
    }
}

void func_801A6DDC_70E06C(u16 actor_index) {
    u16 index;
    u16 current_actor_index;

    for (index = 0; index < 8; index++) {
        current_actor_index = index + 0x58;
        if ((gActors[current_actor_index].state == 0xA1 || gActors[current_actor_index].state == 0x61) && Rand() < 4) {
            gActors[current_actor_index].state = 0x120;
            gActors[current_actor_index].unk_11C = FIXED_UNIT(4);
            gActors[current_actor_index].unk_120 = 0;
            gActors[current_actor_index].unk_16C = 1;
            gActors[current_actor_index].unk_170 = 160;
        }
    }
}

void func_801A6EF8_70E188(u16 actor_index, u16 mode) {
    u16 new_actor_index;

    if (--gActors[actor_index].var_15C > 0) {
        return;
    }
    gActors[actor_index].var_15C = Rand() & 0x7F;
    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        switch (mode) {
        case 0:
            func_801934B0_6FA740(actor_index, new_actor_index, 0, Rand() - 0x80, Rand() - 0x80, -0x80);
            break;
        case 1:
            func_801934B0_6FA740(actor_index, new_actor_index, 0, Rand() - 0x80, (Rand() - 0x80) * 0.5 + 464.0 - gScreenPosCurrentY.whole, -0x80);
            break;
        }

        gActors[new_actor_index].var_0D8 = 0;
        func_801927CC_6F9A5C(0);
        func_8019277C_6F9A0C(30);
    }
}

u16 func_801A70B8_70E348(u16 actor_index) {
    u16 new_actor_index;

    new_actor_index = Actor_RangeFindInactive(0x90, 0xC0);
    if (new_actor_index != 0) {
        func_801934B0_6FA740(actor_index, new_actor_index, 0, 0, 0, -0x80);
    }

    return new_actor_index;
}

void func_801A7110_70E3A0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1B00:
        gActors[actor_index].state++;
        D_801AA078_711308 = 0x3C;
        D_801AA07C_71130C = 0x1E;
        gScreenPosTargetX.whole = 0x700;
        gScreenPosTargetY.whole = 0x15C;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        func_80192A08_6F9C98(0x3C);
        func_801A0350_7075E0(actor_index, 0x39, 0x70A, 0x12C, -3, 0x180, 0x6320);
        func_800267FC(SCENE_ENDING);
        D_801AC39A_71362A = 0x720;
        D_801AC39C_71362C = 0x12C;
    default:
        break;
    case 0x1B01:
        func_801A1EF8_709188(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xA;
            func_801A6A78_70DD08(actor_index, 0x38, 0x640, 0x18C, 0, 0x80, 0x3410);
            gActors[0x38].unk_170_s16[0] = 0xF;
            gActors[0x38].velocityX.raw = FIXED_UNIT(6);
            gActors[0x38].velocityY.raw = 0;
        }
        break;
    case 0x1B02:
        func_801A1EF8_709188(actor_index, 1);
        func_80069DA8(0x38);
        if ((gActors[0x38].velocityY.raw < 0) && (gActors[0x38].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].state++;
            gActors[0x38].flags &= ~ACTOR_FLAG_UNK17;
            gActors[0x38].flags |= ACTOR_FLAG_UNK16;
            D_801AA078_711308 = 0x1E;
            func_801A69E8_70DC78(actor_index, 0x39);
            gActors[0x38].unk_170_s16[0] = 0x10;
            gActors[0x38].graphicList = D_800E22B4;\
            gActors[0x38].graphicTimer = 1;
            gActors[0x38].velocityX.raw = 0;
            gActors[0x38].velocityY.raw = 0;
            Sound_PlaySfxAtActor2(SFX_0094, 0x38);
        }
        break;
    case 0x1B03:
        func_801A1EF8_709188(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            gActors[0x39].unk_170_s16[0] = 8;
            func_80193900_6FAB90(0x1E, -0x50, -0x10);
        }
        break;
    case 0x1B04:
        func_801A1EF8_709188(actor_index, 1);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(0x1F, 0x50, -0x10);
        }
        break;
    case 0x1B05:
        func_801A1EF8_709188(actor_index, 1);
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[0x39].graphicTimer = 0;
            gActors[0x39].unk_170_s16[0] = 0xA;
            gActors[0x38].unk_170_s16[0] = 8;
            gActors[0x38].graphicTimer = 0;
            func_80193900_6FAB90(0x20, 0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1B06:
        func_801A1EF8_709188(actor_index, 1);
        if (gActors[0x39].graphicTimer == 0) {
            gActors[0x39].unk_170_s16[0] = 0;
        }
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_801A6B3C_70DDCC(actor_index);
        }
        break;
    case 0x1B07:
        func_801A1EF8_709188(actor_index, 1);
        func_801A6EF8_70E188(actor_index, 1);
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0xF0;
            D_801AA07C_71130C = 0x3C;
            func_801A06AC_70793C(actor_index, 0x7AB, 0x12C);
            func_801A9D1C_710FAC(0x748, 0x12C);
            func_801A9D38_710FC8(1, 2);
            func_801A6D5C_70DFEC(actor_index);
            Sound_PlaySfxAtActor2(SFX_CROUD_CHEER, 0x68);
            func_801A9044_7102D4();
        }
        break;
    case 0x1B08:
        func_801A6DDC_70E06C(actor_index);
        func_801A1EF8_709188(actor_index, 1);
        func_801A6EF8_70E188(actor_index, 1);
        if (D_801AA074_711304 == 1) {
            func_801A9D38_710FC8(1, 2);
        }
        if (D_801AA070_711300 <= 0) {
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            Sound_StartFade(1, 0x3C);
            if (D_801AC374_713604 != 0) {
                gActors[actor_index].state++;
            }
            else {
                gActors[actor_index].state = 0x1B10;
            }
        }
        break;
    case 0x1B09:
        func_801A1EF8_709188(actor_index, 1);
        if ((D_801AA070_711300 <= 0) && (gAudioFadeMode != 1)) {
            gActors[actor_index].state = 0x1C00;
            Actor_ClearRange(0x38, 0x80);
        }
        break;
    case 0x1B10:
        func_801A1EF8_709188(actor_index, 1);
        if ((D_801AA070_711300 <= 0) && (gAudioFadeMode != 1)) {
            gActors[actor_index].state = 0x1D00;
            Actor_ClearRange(0x38, 0x90);
            gPlayerActor.flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A76E0_70E970(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1B00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        gActors[actor_index].var_154 = Rand();
        gActors[actor_index].palette_18C = D_801AABAC_711E3C[gActors[actor_index].var_154 & 0xF];
        gActors[actor_index].var_158 = gActors[actor_index].posY.whole;
        gActors[actor_index].var_150 = gActors[actor_index].var_154 & 0x1F;
        // fallthrough
    case 0x1B01:
        gActors[actor_index].posY.whole = gActors[actor_index].var_158 - D_800BE580;
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A77D4_70EA64(u16 actor_index) {
    u16* palette;

    if (gActors[actor_index].state != 0x1B00) {
        if (gActors[actor_index].state != 0x1B01) {
            return;
        }
    }
    else {
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK17;
        palette = D_800D18A4[(gActors[actor_index].var_0D8 & 0x7000) / 4096];
        gActors[actor_index].palette_18C = palette;
        func_8019F990_706C20(actor_index);
        gActors[actor_index].hitboxBY0 = 0xF;
        gActors[actor_index].hitboxBY1 = -0xF;
        gActors[actor_index].hitboxBX0 = -8;
        gActors[actor_index].hitboxBX1 = 8;
        if ((u16)gActors[actor_index].var_110 & 0x100) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
    }

    func_80067E50(actor_index, D_801AB214_7124A4[gActors[actor_index].unk_170_u16[0]]);
    func_8019FA84_706D14(actor_index);
}

void func_801A797C_70EC0C(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1B00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].palette_18C = PALETTE_8022D4E8;
        gActors[actor_index].scaleX = 1.5f;
        gActors[actor_index].scaleY = 1.5f;
        // fallthrough
    case 0x1B01:
        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].state++;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-3);
            gActors[actor_index].velocityY.raw = FIXED_UNIT(3);
        }
        return;
    case 0x1B02:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(0.5));
        gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, FIXED_UNIT(0.5));
        if (gActors[actor_index].var_150 < 0xB) {
            if (gActiveFrames & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
            }
            else {
                gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
            }
        }
        else if (gActiveFrames & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_DRAW;
        }
        else {
            gActors[actor_index].flags &= ~ACTOR_FLAG_DRAW;
        }

        if (--gActors[actor_index].var_150 <= 0) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A7B2C_70EDBC(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1B00:
        gActors[actor_index].state++;
        switch (gActors[actor_index].var_0D8) {
        case 0:
            func_8003F138(1.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        case 1:
            func_8003F138(2.0f, gActors[actor_index].posX.whole, gActors[actor_index].posY.whole, gActors[actor_index].posZ.whole);
            break;
        }
        Sound_PlaySfxAtActor3(SFX_005D, actor_index);
        // fallthrough
    case 0x1B01:
        gActors[actor_index].flags = ACTOR_FLAG_NONE;
        return;
    }
}

void func_801A7C10_70EEA0(u16 actor_index) {
    u16 new_actor_index;

    if (gActiveFrames & 3) {
        return;
    }

    new_actor_index = SpawnParticle_Image_90C0_16(GINDEX_STAREFFECT, 0, 0, 0);
    if (new_actor_index != 0) {
        gActors[new_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[new_actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY;
        gActors[new_actor_index].posX.raw = gActors[actor_index].posX.raw - FIXED_UNIT(4);
        gActors[new_actor_index].posY.raw = gActors[actor_index].posY.raw + FIXED_UNIT(12);
        gActors[new_actor_index].posZ.raw = gActors[actor_index].posZ.raw + 1;
        gActors[new_actor_index].colorA = 160;
        Actor_SetColorRgb(new_actor_index, 0x5F);
        gActors[new_actor_index].scaleX = 0.2f;
        gActors[new_actor_index].scaleY = 0.2f;
        gActors[new_actor_index].velocityY.raw = Rand() * FIXED_UNIT(1.0 / 256) - FIXED_UNIT(0.5);
        gActors[new_actor_index].var_158 = 0;
        gActors[new_actor_index].var_15C = 16;
        gActors[new_actor_index].unk_168 = 0;
        gActors[new_actor_index].unk_16C = -64;
        gActors[new_actor_index].var_154 = -4;
        gActors[new_actor_index].var_160 = 0;
        gActors[new_actor_index].var_150 = FIXED_UNIT(18.5);
    }
}

void func_801A7D34_70EFC4(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0x1C00:
        gActors[actor_index].state++;
        D_801AA078_711308 = 0x3C;
        gScreenPosTargetX.whole = 0x700;
        gScreenPosTargetY.whole = 0x15C;
        gScreenPosCurrentX.whole = gScreenPosTargetX.whole;
        gScreenPosCurrentY.whole = gScreenPosTargetY.whole;
        Marina_Init();
        gPlayerActor.state = 0;
        gMarinaAnim.anim_u32 = 2;
        gPlayerActor.posX.raw = FIXED_UNIT(32);
        gPlayerActor.posY.raw = FIXED_UNIT(-46);
        func_800267FC(SCENE_UNK03);
        func_801A0350_7075E0(actor_index, 0x3A, 0x6E0, 0x12C, -3, 0x80, 0x5220);
        D_801AC39A_71362A = 0x640;
        D_801AC39C_71362C = 0x12C;
        gAudioFadeMode = 0;
        Sound_PlayMusic(BGM_ESPERANCE);
    default:
        break;
    case 0x1C01:
        gActors[actor_index].state++;
        gPlayerData.buttonHold = gButton_DLeft;
        gPlayerData.buttonPress = gButton_DLeft;
        func_80192A08_6F9C98(0x3C);
        break;
    case 0x1C02:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(3, 0x50, -0x10);
        }
        break;
    case 0x1C03:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(4, -0x50, -0x10);
            func_801A9044_7102D4();
        }
        break;
    case 0x1C04:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(5, -0x50, -0x10);
            gActors[0x3A].unk_16C = 1;\
            gActors[0x3A].unk_170 = 0x70;
        }
        break;
    case 0x1C05:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            func_80193900_6FAB90(6, -0x50, -0x10);
            gActors[0x3A].unk_16C = 1;\
            gActors[0x3A].unk_170 = 0x70;
            func_801A9044_7102D4();
        }
        break;
    case 0x1C06:
        if (func_8005DEFC() == 0) {
            gActors[actor_index].state++;
            gActors[0x3A].unk_16C = 1;\
            gActors[0x3A].unk_170 = 0x70;
        }
        break;
    case 0x1C07:
        if (gActors[0x3A].unk_16C == 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            gActors[0x3A].unk_16C = 1;\
            gActors[0x3A].unk_170 = 0xA0;
            func_801A9044_7102D4();
        }
        break;
    case 0x1C08:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x53;
            func_801933F8_6FA688(actor_index, 0x58, 0, (gActors[0x3A].posX.whole - 4), gActors[0x3A].posY.whole + 0xC, gActors[0x3A].posZ.whole + 1);
        }
        break;
    case 0x1C09:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x1E;
            gPlayerData.buttonHold = gButton_B;
            gPlayerData.buttonPress = gButton_B;
            if (YellowGem_GetFlag(gCurrentStage) == 0) {
                YellowGem_SetFlag();
                func_801A907C_71030C();
                D_801AC398_713628 += 1;
            }
            Sound_StartFade(1, 0x1E);
        }
        break;
    case 0x1C0A:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x230;
            Sound_PlayMusic(BGM_CLEAR);
        }
        break;
    case 0x1C0B:
        if (D_801AA070_711300 <= 0) {
            gActors[actor_index].state++;
            D_801AA078_711308 = 0x3C;
            func_80192A28_6F9CB8(0x3C);
            Sound_StartFade(1, 0x3C);
            func_801A9044_7102D4();
        }
        break;
    case 0x1C0C:
        if (D_801AA070_711300 <= 0 && gAudioFadeMode != 1) {
            gActors[actor_index].state = 0x1D00;
            Actor_ClearRange(0x38, 0x90);
            gPlayerActor.flags = ACTOR_FLAG_NONE;
        }
        break;
    }
}

void func_801A81E0_70F470(u16 actor_index) {
    s32 flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK17;

    switch (gActors[actor_index].state) {
    case 0x1C00:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicIndex = GINDEX_STAREFFECT;
        gActors[actor_index].colorA = 0xF0;
        Actor_SetColorRgb(actor_index, 0x5F);
        gActors[actor_index].velocityY.raw = FIXED_UNIT(0.03125);
        gActors[actor_index].velocityX.raw = FIXED_UNIT(1);
        gActors[actor_index].var_158 = 0;
        gActors[actor_index].var_15C = 16;
        gActors[actor_index].unk_168 = 0;
        gActors[actor_index].unk_16C = -96;
        gActors[actor_index].var_154 = -4;
        gActors[actor_index].var_160 = 0;
        gActors[actor_index].var_150 = FIXED_UNIT(18.5);
        gActors[actor_index].scaleX = 0.2f;
        gActors[actor_index].scaleY = 0.2f;
        // fallthrough
    case 0x1C01:
        gActors[actor_index].var_158 += gActors[actor_index].unk_168;
        gActors[actor_index].var_15C += gActors[actor_index].unk_16C;
        gActors[actor_index].velocityX.raw += gActors[actor_index].var_158;
        gActors[actor_index].velocityY.raw += gActors[actor_index].var_15C;
        gActors[actor_index].var_154 += gActors[actor_index].unk_164;
        gActors[actor_index].colorA = func_8002AE44(gActors[actor_index].colorA, gActors[actor_index].var_154);
        gActors[actor_index].var_160 += gActors[actor_index].var_150;
        gActors[actor_index].rotateZ = INDEX_TO_DEG(FROM_FIXED(gActors[actor_index].var_160) & COS_MASK);
        if (gActors[actor_index].colorA < 0x40) {
            gActors[actor_index].state++;
            gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_PALETTE;
            gActors[actor_index].flags = flags;
            gActors[actor_index].graphicList = gGraphicListGem;
            gActors[actor_index].graphicTimer = 1;
            gActors[actor_index].palette_18C = gPaletteGemYellow;
            Actor_SetHitboxB(actor_index, 8);
            gActors[actor_index].colorA = 12;
            gActors[actor_index].scaleX = 0.1f;
            gActors[actor_index].scaleY = 0.1f;
        }
        break;
    case 0x1C02:
        gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.03f);
        gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        gActors[actor_index].colorA = Math_ApproachS32(gActors[actor_index].colorA, 255, 4);
        gActors[actor_index].velocityY.raw -= FIXED_UNIT(0.171875);
        if (gActors[actor_index].velocityY.raw < 0 && (gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK5)) {
            gActors[actor_index].velocityY.raw = -(gActors[actor_index].velocityY.raw * 0.9);
        }
        if (gActors[actor_index].flags_098 & ACTOR_FLAG3_GRAB) {
            gActors[actor_index].state++;
        }
        break;
    case 0x1C03:
        func_800291AC(
            actor_index,
            0x1C02,
            flags,
            0x1C02,
            flags
        );
        break;
    }
    gActors[actor_index].flags_098 &= ACTOR_FLAG3_MASK_A;
}

void func_801A84FC_70F78C(u16 actor_index) {
    s32 state = gActors[actor_index].state;
    if (state != 0) {
        if (D_801AA078_711308 != 0) {
            D_801AA070_711300 = D_801AA078_711308;
            D_801AA078_711308 = 0;
        }

        if (D_801AA07C_71130C != 0) {
            D_801AA074_711304 = D_801AA07C_71130C;
            D_801AA07C_71130C = 0;
        }

        if (D_801AA070_711300 != 0) {
            D_801AA070_711300--;
        }

        if (D_801AA074_711304 != 0) {
            D_801AA074_711304--;
        }
    }
    D_801AB398_712628[(state & 0xFF00) >> 8](actor_index);
}

void func_801A85E4_70F874(u16 actor_index) {
    func_80193C58_6FAEE8(actor_index);
    gActors[actor_index].state = 0x400;
    gDrawMidground = FALSE;
    gDrawEnvLayer = FALSE;
    gDrawBackground = FALSE;
    func_801927CC_6F9A5C(0);
}

void func_801A865C_70F8EC(u16 actor_index) {
    if (D_801AA078_711308 != 0) {
        D_801AA070_711300 = D_801AA078_711308;
        D_801AA078_711308 = 0;
    }

    if (D_801AA07C_71130C != 0) {
        D_801AA074_711304 = D_801AA07C_71130C;
        D_801AA07C_71130C = 0;
    }

    if (D_801AA070_711300 != 0) {
        D_801AA070_711300--;
    }

    if (D_801AA074_711304 != 0) {
        D_801AA074_711304--;
    }

    D_801AB414_7126A4[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A873C_70F9CC(u16 actor_index) {
    D_801AB428_7126B8[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A87A4_70FA34(u16 actor_index) {
    D_801AB49C_71272C[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A880C_70FA9C(u16 actor_index) {
    D_801AB510_7127A0[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A8874_70FB04(u16 actor_index) {
    D_801AB584_712814[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A88DC_70FB6C(u16 actor_index) {
    D_801AB5F8_712888[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A8944_70FBD4(u16 actor_index) {
    D_801AB66C_7128FC[(gActors[actor_index].state & 0xFF00) >> 8](actor_index);
}

void func_801A89AC_70FC3C(u16 actor_index) {
    u16 new_actor_index;
    s32 angle;
    s32 x_offset;
    u16 parent_index;
    s32 y_offset;
    s32 current_actor_index;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicIndex = GINDEX_BLASTB;
        gActors[actor_index].var_154 = 0;
        gActors[actor_index].colorA = 0;
        break;
    case 1:
        gActors[actor_index].var_154 = func_8019214C_6F93DC(gActors[actor_index].var_154, FIXED_UNIT(255), 300);
        gActors[actor_index].colorA = gActors[actor_index].coord_154.whole;
        gActors[actor_index].posX.raw = D_801AC38C_71361C;
        gActors[actor_index].posY.raw = D_801AC390_713620;
        gActors[actor_index].posZ.raw = D_801AC394_713624;
        if (gActors[actor_index].unk_170 > 0) {
            gActors[actor_index].unk_170--;
            gActors[actor_index].scaleX = Math_ApproachF32(gActors[actor_index].scaleX, 1.0f, 0.1f);
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        }
        else {
            gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY | ACTOR_FLAG_UNK9 | ACTOR_FLAG_UNK10;
            if (gActiveFrames & 1) {
                gActors[actor_index].graphicFlags &= ~ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = 16;
                gActors[actor_index].colorG = 127;
                gActors[actor_index].colorB = 127;
                if (gActiveFrames & 2) {
                    gActors[actor_index].scaleX = 0.4f;
                }
                else {
                    gActors[actor_index].scaleX = 0.6f;
                }
            }
            else {
                gActors[actor_index].graphicFlags |= ACTOR_GFLAG_UNK4;
                gActors[actor_index].colorR = 79;
                gActors[actor_index].colorG = 0;
                gActors[actor_index].colorB = 79;
                if (gActiveFrames & 2) {
                    gActors[actor_index].scaleX = 1.2f;
                }
                else {
                    gActors[actor_index].scaleX = 1.4f;
                }
            }
            gActors[actor_index].scaleY = gActors[actor_index].scaleX;
        }
        if (!(gActiveFrames & 3)) {
            x_offset = (16 - (Rand() & 31)) * gActors[actor_index].scaleX;
            y_offset = (16 - (Rand() & 31)) * gActors[actor_index].scaleX;
            new_actor_index = SpawnParticle_Image_90C0_16(
                GINDEX_01EE,
                gActors[actor_index].posX.whole + x_offset,
                gActors[actor_index].posY.whole + y_offset,
                gActors[actor_index].posZ.whole + 1
            );
            if (new_actor_index != 0) {
                current_actor_index = new_actor_index;
                gActors[current_actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTZ;
                gActors[current_actor_index].var_160 = TO_FIXED(Rand() * 4);
                parent_index = actor_index;
                gActors[current_actor_index].unk_114 = gActors[parent_index].scaleY * -0.25;
                gActors[current_actor_index].unk_148 = 7.0f;
                angle = FROM_FIXED(gActors[current_actor_index].var_160);
                gActors[current_actor_index].velocityX.raw = FIXED_UNIT(0.5) * COS(angle) + gActors[parent_index].velocityX.raw;
                gActors[current_actor_index].velocityY.raw = FIXED_UNIT(0.5) * SIN(angle) + gActors[parent_index].velocityY.raw;
                gActors[current_actor_index].scaleX = gActors[parent_index].scaleX;
                gActors[current_actor_index].scaleY = gActors[parent_index].scaleY;
            }
        }
        break;
    }
}

void func_801A8D6C_70FFFC(u16 actor_index) {
    f32 scale;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_ROTY;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].hitboxBY0 = 4;
        gActors[actor_index].hitboxBY1 = -4;
        gActors[actor_index].unk_118 = 1.0f;
        gActors[actor_index].unk_11C = 1.0f;
        return;
    case 1:
        switch (gActors[actor_index].var_158) {
        case 0:
            if (gActors[actor_index].unk_118 > 1.1) {
                gActors[actor_index].var_158 = 1;
            }
            else {
                gActors[actor_index].unk_118 += 0.01;
                gActors[actor_index].unk_11C -= 0.01;
            }
            break;
        case 1:
            if (gActors[actor_index].unk_118 < 0.9) {
                gActors[actor_index].var_158 = 0;
            }
            else {
                gActors[actor_index].unk_118 -= 0.01;
                gActors[actor_index].unk_11C += 0.01;
            }
            break;
        }
        gActors[actor_index].unk_114 = (gActors[gActors[actor_index].var_154].unk_168 / 10000.0) * 1.25;
        gActors[actor_index].rotateY = (gActors[gActors[actor_index].var_154].flags & ACTOR_FLAG_FLIPPED) ? 180.0f : 0.0f;
        if (gActors[actor_index].var_15C == 0) {
            scale = gActors[actor_index].unk_114;
            gActors[actor_index].posX.whole = gActors[gActors[actor_index].var_154].posX.whole + 0 * scale;
            gActors[actor_index].posY.whole = gActors[gActors[actor_index].var_154].posY.whole + -16.0f * scale;
        }

        gActors[actor_index].scaleX = gActors[actor_index].unk_118 * gActors[actor_index].unk_114;
        gActors[actor_index].scaleY = gActors[actor_index].unk_11C * gActors[actor_index].unk_114;
        if (gActors[gActors[actor_index].var_154].flags == ACTOR_FLAG_NONE) {
            gActors[actor_index].flags = ACTOR_FLAG_NONE;
        }
    }
}

s32 func_801A9044_7102D4(void) {
    u16 actor_index = 0x35;

    if (gActors[actor_index].var_158 != 0) {
        gActors[actor_index].var_158--;
        return 0;
    }

    gActors[0x30].state = 0x1E00;
    return 1;
}

DEFAULT_INT func_801A907C_71030C(void) {
    u16 actor_index = 0x35;

    gActors[actor_index].var_158++;
}

void func_801A9098_710328(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 2:
        break;
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK8 | ACTOR_GFLAG_PALETTE | ACTOR_GFLAG_UNK11;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].graphicList = gGraphicListGem;
        gActors[actor_index].graphicTimer = 1;
        gActors[actor_index].posZ.whole = 0x300;
        gActors[actor_index].unk_188 = 0;
        gActors[actor_index].palette_18C = gPaletteGemYellow;
        gActors[actor_index].var_150 = 0x1E;
        gActors[actor_index].var_154 = D_801AC398_713628;
        gActors[actor_index].posX.whole = -0xC8;
        gActors[actor_index].posY.whole = 0x54;
        gActors[0x37].actorType = ACTORTYPE_GRAPHIC_29;

        gActors[0x35].var_158 = D_801AC398_713628;
        Actor_Initialize(0x37);
        gActors[0x37].graphicFlags = ACTOR_GFLAG_SCALE | ACTOR_GFLAG_UNK4 | ACTOR_GFLAG_UNK6 | ACTOR_GFLAG_UNK11;
        gActors[0x37].flags = ACTOR_FLAG_ENABLED | ACTOR_FLAG_FREEZE_POS;
        gActors[0x37].graphicIndex = GINDEX_SOLIDSQUARE;
        gActors[0x37].colorB = 0xBA;
        gActors[0x37].colorA = 0xB2;
        gActors[0x37].posX.whole = 0;
        gActors[0x37].posY.whole = 0;
        gActors[0x37].posZ.whole = 0x2FF;
        gActors[0x37].scaleX = 3.0f;
        gActors[0x37].scaleY = 1.5f;
        // fallthrough
    case 1:
        gActors[actor_index].posX.whole = func_8019214C_6F93DC(gActors[actor_index].posX.whole, -0x78, gActors[actor_index].var_150);
        gActors[0x35].posX.whole = gActors[actor_index].posX.whole + 0x18;
        gActors[0x35].posY.whole = gActors[actor_index].posY.whole;
        gActors[0x37].posX.whole = gActors[actor_index].posX.whole + 0xE;
        gActors[0x37].posY.whole = gActors[actor_index].posY.whole;
        if (gActors[actor_index].var_150-- <= 0) {
            gActors[actor_index].state++;
        }
        break;
    }
}

void func_801A9260_7104F0(u16 actor_index) {
    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state++;
        gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK8;
        gActors[actor_index].flags = ACTOR_FLAG_ACTIVE | ACTOR_FLAG_FREEZE_POS;
        gActors[actor_index].var_15C = 99;
        gActors[actor_index].posZ.whole = 0x300;
        gActors[actor_index].unk_14C = 2.0f;
        // fallthrough
    case 1:
        ActorUpdate_Type41(actor_index);
        return;
    }
}

void func_801A9308_710598(u16 actor_index) {
    if (gButtonPress & gButton_DUp) {
        D_801AC3A2_713632 += 1;
    }

    if (gButtonPress & gButton_DDown) {
        D_801AC3A2_713632 -= 1;
    }

    if (gButtonPress & gButton_B) {
        switch (D_801AC3A2_713632) {
        case 0:
            gActors[0x38].state = 0x110;
            break;
        case 1:
            gActors[0x38].state = 0x120;
            break;
        case 2:
            gActors[0x38].state = 0x130;
            break;
        case 3:
            gActors[0x38].state = 0x140;
            break;
        case 4:
            gActors[0x38].state = 0x170;
            gActors[actor_index + 2].unk_180 = 0;
            gActors[actor_index + 3].unk_180 = FIXED_UNIT(4);
            break;
        case 5:
            gActors[0x38].state = 0x180;
            break;
        case 6:
            gActors[0x38].state = 0x1A0;
            break;
        case 7:
            gActors[0x38].state = 0x1C0;
            if (gActors[actor_index].posX.whole < 0) {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(2);
            }
            else {
                gActors[actor_index].velocityX.raw = FIXED_UNIT(-2);
            }
            gActors[actor_index].velocityY.raw = FIXED_UNIT(4);
            break;
        case 8:
            gActors[0x38].state = 0x1D0;
            break;
        case 9:
            gActors[0x38].state = 0x200;
            if (gActors[actor_index].posX.whole < 0) {
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(2);
            }
            else {
                gActors[actor_index].unk_0F8.raw = FIXED_UNIT(-2);
            }
            gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3);
            break;
        case 10:
            gActors[0x38].state = 0x230;
            break;
        case 11:
            gActors[0x38].state = 0x240;
            break;
        case 12:
            gActors[0x38].state = 0x250;
            break;
        case 13:
            func_801A97B8_710A48(0x38);
            break;
        case 14:
            func_801A97E8_710A78(0x38);
            break;
        }
    }

    if (gButtonPress & gButton_A) {
        gActors[0x38].state = 0x120;
    }

    if (gButtonHold & gButton_CUp) {
        gActors[0x38].unk_168 += 8000;
    }

    if (gButtonHold & gButton_CDown) {
        gActors[0x38].unk_168 -= 8000;
    }

    if (gButtonPress & gButton_CLeft) {
        func_801935C4_6FA854(actor_index, 0, 0, 0);
    }

    if (gButtonPress & gButton_LTrig) {
        gActors[0x38].unk_120 -= 0.1;
    }

    if (gButtonPress & gButton_RTrig) {
        gActors[0x38].unk_120 += 0.1;
    }

    OSD_PrintFloat(gActors[0x38].unk_120, -0x40, -0x30);
}

void func_801A96D0_710960(u16 actor_index) {
    gActors[56].state = 0x170;
    gActors[actor_index + 2].unk_180 = 0;
    gActors[actor_index + 3].unk_180 = FIXED_UNIT(4);
}

void func_801A9718_7109A8(s32 unused) {
    gActors[0x38].state = 0x240;
}

void func_801A972C_7109BC(s32 unused) {
    gActors[0x38].state = 0x180;
}

void func_801A9740_7109D0(s32 unused) {
    gActors[0x38].state = 0x1A0;
}

void func_801A9754_7109E4(u16 actor_index) {
    gActors[actor_index].flags = ACTOR_FLAG_NONE;
    gActors[actor_index].actorType = ACTORTYPE_ZERO;
    func_80081720(actor_index, D_800E5E48, ACTOR_FLAG_ENABLED);
}

void func_801A97B8_710A48(u16 actor_index) {
    func_80081790(actor_index, D_800E8E7C);
}

void func_801A97E8_710A78(u16 actor_index) {
    func_80081790(actor_index, D_800E8E98);
}

void func_801A9818_710AA8(u16 actor_index) {
    func_80081790(actor_index, D_800E89D4);
}

void func_801A9848_710AD8(u16 actor_index, f32 value) {
    gActors[actor_index].unk_120 = value;
}

void func_801A9880_710B10(u16 actor_index) {
    u16 index = actor_index;
    f32 scale;
    f32 length;
    f32 offset;
    f32 flipped_angle_index;
    f32 normal_angle_index;
    s32 rotation_degrees;
    u16 angle_index;

    gActors[actor_index].flags_098 &= ~ACTOR_FLAG3_UNK6;
    gActors[actor_index].health = 10000;
    gActors[actor_index + 1].var_0D8 = 0;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 48);
    scale = gActors[actor_index].unk_168 / 10000.0f;
    func_80032E60(actor_index + 3, GINDEX_103E, 0x360, 10.0f * scale, 0, scale, scale);
    func_80032E60(actor_index + 11, GINDEX_STAFFSAGE, 0, 4.0f * scale, -1, scale, scale);
    length = 18.0f * scale;
    rotation_degrees = gActors[index + 11].rotateZ;

    if (gActors[index + 11].flags & ACTOR_FLAG_FLIPPED) {
        flipped_angle_index = (f32)DEG_TO_INDEX((f32)rotation_degrees) + 320.0f;
        angle_index = flipped_angle_index;
    }
    else {
        normal_angle_index = (f32)DEG_TO_INDEX((f32)rotation_degrees) + 192.0f;
        angle_index = normal_angle_index;
    }

    offset = TO_FIXED(COS(angle_index) * length);
    D_801AC38C_71361C = gActors[index + 11].posX.raw + offset;
    offset = TO_FIXED(SIN(angle_index) * length);
    D_801AC390_713620 = gActors[index + 11].posY.raw + offset;
    D_801AC394_713624 = gActors[index + 11].posZ.raw - 1;
    gActors[actor_index].unk_168 = D_801AC378_713608;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x110;
        gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        return;
    case 0x170:
        Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        return;
    case 0x160:
        Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        // fallthrough
    case 0x111:
    case 0x131:
        return;
    }
}

void func_801A9CD0_710F60(u16 actor_index) {
    gActors[104].state = 0x170;
    gActors[actor_index + 2].unk_180 = 0;
    gActors[actor_index + 3].unk_180 = FIXED_UNIT(4);
}

void func_801A9D1C_710FAC(s16 arg0, s16 arg1) {
    D_801AC384_713614 = arg0;
    D_801AC386_713616 = arg1;
}

void func_801A9D38_710FC8(u16 value, u16 index) {
    D_801AC388_713618 = value;
    D_801AC38A_71361A = D_801AB6E8_712978[index];
}

void func_801A9D68_710FF8(s32 arg0, s32 arg1) {
    u16 actor_index = 0x68;

    gActors[actor_index + 2].unk_180 = arg0;
    gActors[actor_index + 3].unk_180 = arg1;
}

void func_801A9D7C_71100C(u16 actor_index) {
    Actor* actor = &gActors[actor_index];
    f32 scale;
    u16 index;

    actor->health = 10000;
    gActors[actor_index + 1].var_0D8 = 0;
    func_80094C5C(actor_index);
    func_8008F498(actor_index, 0x30);
    scale = actor->unk_168 / 10000.0f;
    index = actor_index + 3;
    func_80032E60(index, GINDEX_1002, COS_DEG_360 - COS_DEG_45, 6.0f * scale, 0, scale, scale);
    func_80032E60(index, GINDEX_HAT_CROWN, 0x120, 14.0f * scale, 0, scale, scale);
    index = gActors[0x38].unk_140_f32;
    gActors[index].graphicFlags |= ACTOR_GFLAG_UNK8;
    actor->unk_168 = D_801AC380_713610;

    switch (gActors[actor_index].state) {
    case 0:
        gActors[actor_index].state = 0x110;
        break;
    case 0x111:
        if (D_801AC388_713618 != 0 && --D_801AC388_713618 <= 0) {
            gActors[actor_index].state = D_801AC38A_71361A;
            D_801AC388_713618 = 0;
            gActors[actor_index + 10].unk_180 = D_801AC384_713614;
            gActors[actor_index + 11].unk_180 = D_801AC386_713616;
        }
        break;
    case 0x131:
        gActors[actor_index + 3].unk_180 = 1;
        func_80094CF8(actor_index, 3);
        break;
    case 0x172:
        if (actor->unk_16C & 1) {
            Sound_PlaySfxAtActor2(SFX_0121, actor_index);
        }
        break;
    case 0x160:
        if (actor->unk_11C == 0.0f) {
            Sound_PlaySfxAtActor2(SFX_LAND_00AC, actor_index);
        }
        break;
    }
}
