#include "common.h"
#include "actor.h"
#include "input.h"
#include "letterbox.h"
#include "11820.h"
#include "1F1E0.h"
#include "241E0.h"
#include "84BB0.h"

typedef struct {
    s16 unk0;
    s16 unk2;
} Unk80201B48;

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
} Unk800CC6EC; // size = 0x10

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
} Unk800CCC6C; // size = 0xA

typedef void (*CameraFunc)(void);

void CameraInit_World1(void);
void CameraInit_World2(void);
void CameraInit_Scene02(void);
void CameraInit_Scene03(void);
void CameraInit_Scene04(void);
void CameraInit_MigenBrawl(void);
void func_800245B4(void);
void CameraInit_Scene07(void);
void CameraInit_Title(void);
void CameraInit_Lunar(void);
void CameraInit_World4A(void);
void CameraInit_Intro(void);
void CameraInit_World3B(void);
void CameraInit_SeasickClimb(void);
void CameraInit_AthleticGames(void);
void CameraInit_Beastector(void);
void CameraInit_CounterAttack(void);
void CameraInit_Splashscreen(void);
void CameraInit_Merco_Trapped(void);
void CameraInit_World4B(void);
void CameraInit_PhoenixGamma(void);
void CameraInit_Leo(void);
void CameraInit_TheDayBefore(void);
void CameraInit_Scene34(void);
void CameraInit_SnowstormMaze(void);
void CameraInit_TightropeRide(void);
void CameraInit_MagmaRafts(void);
void CameraInit_Scene63(void);
void CameraInit_Vertigo(void);
void CameraInit_Freefall(void);
void CameraInit_World3(void);
void CameraInit_ClanceWar2(void);
void CameraInit_BeesTheOne(void);
void CameraUpdate_World1(void);
void CameraUpdate_World2(void);
void CameraUpdate_Scene02(void);
void CameraUpdate_Scene03(void);
void CameraUpdate_Scene04(void);
void CameraUpdate_MigenBrawl(void);
void func_800245F0(void);
void CameraUpdate_Scene07(void);
void CameraUpdate_Title(void);
void CameraUpdate_Lunar(void);
void CameraUpdate_World4A(void);
void CameraUpdate_Intro(void);
void CameraUpdate_World3B(void);
void CameraUpdate_SeasickClimb(void);
void CameraUpdate_AthleticGames(void);
void CameraUpdate_Beastector(void);
void func_800249B8(void);
void CameraUpdate_Splashscreen(void);
void CameraUpdate_Merco_Trapped(void);
void CameraUpdate_AstersTryke(void);
void CameraUpdate_PhoenixGamma(void);
void CameraUpdate_Leo(void);
void CameraUpdate_TheDayBefore(void);
void CameraUpdate_Scene34(void);
void CameraUpdate_SnowstormMaze(void);
void CameraUpdate_WesternWorld(void);
void CameraUpdate_World4B(void);
void CameraUpdate_TightropeRide(void);
void CameraUpdate_MagmaRafts(void);
void CameraUpdate_Scene63(void);
void CameraUpdate_Vertigo(void);
void CameraUpdate_Freefall(void);
void CameraUpdate_ClanballLift(void);
void CameraUpdate_ClanceWar2(void);
void CameraUpdate_BeesTheOne(void);

u16 D_800CBF50 = 0;
u16 D_800CBF54 = 0;
u16 gLetterboxMode = LETTERBOX_DEFAULT;
u16 D_800CBF5C[] = {
	0xC4C7, 0xD5C9, 0xE587, 0xCCC7, 0xDD47, 0x8B41, 0xD587, 0xE5C9,
	0xF609, 0xDD87, 0xED4B, 0xE60B, 0xC5C9, 0x9341, 0xDD8B, 0xEE4D,
	0xC505, 0xE60D, 0xEE8F, 0xF6CF, 0xE691, 0xF693, 0xEE93, 0xF6D3,
	0xF613, 0xC547, 0xE6CF, 0xE653, 0xB483, 0xBCC3, 0xEE57, 0xB503,
	0xEE99, 0xEE9F, 0xE69F, 0xD659, 0xFEE1, 0xF699, 0xF6E3, 0x7341,
	0x6B07, 0xD545, 0xA341, 0xCD03, 0xD585, 0xE48D, 0xE585, 0xCD83,
	0x93C1, 0x7347, 0x7001, 0xDBD3, 0xFC81, 0xFDC1, 0xFC01, 0xF581,
	0xFF4D, 0xFED9, 0xFF93, 0xBD4B, 0xAC8D, 0xFDD3, 0xE763, 0x9319,
	0xD5A9, 0xC5D7, 0x9BA1, 0xBCD7, 0xE75D, 0xCDE1, 0xFF9B, 0xC50D,
	0xE6E9, 0xC5A5, 0xFFA1, 0xD55F, 0xFFC1, 0xFE01, 0xFD01, 0xFCCB
};
u8 D_800CBFFC[] = {
	0x91, 0x94, 0x96, 0x97, 0x99, 0x9C, 0x9E, 0x9F,
	0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7,
	0xA8, 0xA9, 0xAA, 0xAB, 0xAD, 0xAE, 0xAF, 0xB1,
	0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xBC, 0xC9, 0xCE,
	0xCF, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6,
	0xD7, 0xD8, 0xD9, 0xDA, 0xFF, 0xFF, 0xE7, 0x7B,
	0xE7, 0x39, 0xDF, 0xBB, 0xDF, 0x39, 0xD7, 0x3B,
	0xD6, 0xF7, 0xCF, 0x7B, 0xCF, 0x77, 0xCE, 0xF9,
	0xCE, 0xF5, 0xCE, 0xB5, 0xC7, 0x39, 0xC6, 0xF7,
	0xC6, 0xF3, 0xC6, 0xB5, 0xC6, 0x75, 0xC6, 0x73,
	0xBE, 0xB3, 0xBE, 0x31, 0xB7, 0x37, 0xB6, 0xB7,
	0xB6, 0x6F, 0xB5, 0xEF, 0xAF, 0x3D, 0xAE, 0xB5,
	0xAE, 0xB3, 0xAE, 0x73, 0xAE, 0x35, 0xAE, 0x2F,
	0xAE, 0x2B, 0xAD, 0xAD, 0xA7, 0x39, 0xA6, 0xB5,
	0xA6, 0x31, 0xA6, 0x2F, 0xA5, 0xE9, 0xA5, 0xA3,
	0xA5, 0x6B, 0x9E, 0xB7, 0x9E, 0x33, 0x9D, 0xF1,
	0x9D, 0xED, 0x9D, 0xE7, 0x9D, 0xAB, 0x9D, 0x71,
	0x9D, 0x6D, 0x9D, 0x6B, 0x96, 0x33, 0x95, 0xEF,
	0x95, 0xAB, 0x95, 0xA9, 0x95, 0xA5, 0x95, 0x6D,
	0x95, 0x6B, 0x95, 0x67, 0x95, 0x65, 0x8D, 0xF1,
	0x8D, 0xAD, 0x8D, 0x6D, 0x8D, 0x6B, 0x8D, 0x69,
	0x8D, 0x67, 0x8D, 0x63, 0x8D, 0x29, 0x8D, 0x23,
	0x8C, 0xE7, 0x8C, 0xE5, 0x85, 0xED, 0x85, 0xAD,
	0x85, 0x6B, 0x85, 0x25, 0x85, 0x21, 0x84, 0xE7,
	0x7D, 0x69, 0x7D, 0x29, 0x7C, 0xE3, 0x7C, 0xE1,
	0x7C, 0xA7, 0x7C, 0xA5, 0x7C, 0x9F, 0x78, 0xC7,
	0x75, 0x6B, 0x75, 0x29, 0x74, 0xE7, 0x74, 0xE5,
	0x74, 0xE3, 0x74, 0xDF, 0x74, 0xA5, 0x74, 0xA3,
	0x74, 0x9D, 0x74, 0x63, 0x74, 0x61, 0x74, 0x5F,
	0x74, 0x5D, 0x73, 0xDB, 0x70, 0xC7, 0x6D, 0x63,
	0x6D, 0x27, 0x6D, 0x23, 0x6C, 0xE7, 0x6C, 0xE5,
	0x6C, 0xE1, 0x6C, 0xA5, 0x6C, 0x63, 0x6C, 0x61,
	0x6C, 0x5F, 0x6B, 0xDF, 0x6B, 0x9D, 0x69, 0x09,
	0x64, 0x23, 0x64, 0x21, 0x64, 0x1F, 0x64, 0x1B,
	0x63, 0xDF, 0x63, 0xDD, 0x63, 0xD9, 0x63, 0x9D,
	0x60, 0xC7, 0x5C, 0xA5, 0x5C, 0xA3, 0x5C, 0x61,
	0x5C, 0x1F, 0x5B, 0xE1, 0x5B, 0xDF, 0x5B, 0xD7,
	0x5B, 0x9F, 0x5B, 0x99, 0x5B, 0x97, 0x54, 0x61,
	0x53, 0xDD, 0x53, 0xD9, 0x53, 0x99, 0x53, 0x97,
	0x53, 0x5D, 0x53, 0x55, 0x53, 0x51, 0x53, 0x1B,
	0x53, 0x19, 0x51, 0x09, 0x4C, 0x61, 0x4B, 0xDD,
	0x4B, 0x9B, 0x4B, 0x99, 0x4B, 0x57, 0x4B, 0x55,
	0x4B, 0x53, 0x4B, 0x1B, 0x4B, 0x19, 0x4B, 0x15,
	0x4B, 0x13, 0x4A, 0xD9, 0x4A, 0xD5, 0x4A, 0xD1,
	0x48, 0xC7, 0x44, 0x1F, 0x43, 0xDD, 0x43, 0x9B,
	0x43, 0x5B, 0x43, 0x59, 0x43, 0x15, 0x42, 0xD7,
	0x42, 0xD3, 0x42, 0xD1, 0x42, 0xCF, 0x42, 0x97,
	0x42, 0x95, 0x42, 0x91, 0x42, 0x8F, 0x42, 0x8D,
	0x42, 0x53, 0x42, 0x11, 0x3B, 0x9B, 0x3B, 0x5B,
	0x3B, 0x17, 0x3B, 0x15, 0x3A, 0xD5, 0x3A, 0x95,
	0x3A, 0x8D, 0x3A, 0x4B, 0x3A, 0x13, 0x3A, 0x11,
	0x3A, 0x0F, 0x3A, 0x0D, 0x39, 0xCF, 0x39, 0xCB,
	0x39, 0x09, 0x32, 0xD7, 0x32, 0xD5, 0x32, 0x91,
	0x32, 0x53, 0x32, 0x51, 0x32, 0x4F, 0x32, 0x4D,
	0x32, 0x11, 0x32, 0x0F, 0x32, 0x0D, 0x32, 0x0B,
	0x31, 0xCF, 0x31, 0xCB, 0x31, 0xC7, 0x31, 0x8D,
	0x31, 0x89, 0x31, 0x09, 0x2A, 0x53, 0x2A, 0x51,
	0x2A, 0x4F, 0x2A, 0x11, 0x2A, 0x0F, 0x29, 0xCF,
	0x29, 0xCD, 0x29, 0xCB, 0x29, 0xC9, 0x29, 0x8D,
	0x29, 0x89, 0x29, 0x49, 0x29, 0x47, 0x22, 0x53,
	0x22, 0x51, 0x22, 0x4F, 0x22, 0x11, 0x22, 0x0F,
	0x21, 0xCF, 0x21, 0x8D, 0x21, 0x89, 0x19, 0xCF,
	0x19, 0xCD, 0x19, 0x8D, 0x19, 0x8B, 0x19, 0x4B,
	0x19, 0x49, 0x19, 0x47, 0x19, 0x45, 0x19, 0x0B,
	0x19, 0x09, 0x11, 0x8D, 0x11, 0x8B, 0x11, 0x87,
	0x11, 0x4B, 0x11, 0x49, 0x11, 0x09, 0x10, 0xC5,
	0x10, 0x85, 0x10, 0x83, 0x09, 0x4B, 0x09, 0x49,
	0x09, 0x09, 0x08, 0xC7, 0x08, 0xC5, 0x08, 0xC3,
	0x08, 0x85, 0x01, 0x89, 0x00, 0x45, 0x00, 0x43,
    0x00, 0x01, 0x00, 0x3E
};
u16 D_800CC228[] = {
	0x0005, 0x1211, 0x573F, 0x4679, 0x3DB3, 0x473F, 0x5679, 0x45B3,
	0x1215, 0x11D1, 0x1297, 0x1215, 0x09D1, 0x098F, 0x1A15, 0x35B9,
	0x246D, 0x467F, 0x3DB9, 0x3533, 0x2C6D, 0x23E9, 0x1B63, 0x12DF,
	0x129B, 0x0991, 0x014F, 0x45B9, 0x3D33, 0x2BE9, 0x2363, 0x129B,
	0x1217, 0x09D5, 0x0991, 0x22DF, 0x1A9B, 0x1217, 0x11D5, 0x0991,
	0x35BF, 0x2D39, 0x2473, 0x1A17, 0x11D5, 0x3DBF, 0x3539, 0x2C73,
	0x23ED, 0x1B69, 0x12E3, 0x129F, 0x0151, 0x1191, 0x3473, 0x2BED,
	0x2369, 0x129F, 0x121B, 0x09D7, 0x0951, 0x19D5, 0x2B69, 0x1AE3,
	0x11D7, 0x0995, 0x1191, 0x22E3, 0x1A9F, 0x121B, 0x353F, 0x2C79,
	0x0995, 0x23F3, 0x1B6D, 0x11D7, 0x3479, 0x2BF3, 0x236D, 0x1AE9,
	0x12A3, 0x121F, 0x1195, 0x19D7, 0x1195, 0x1995, 0x1151, 0x110F,
	0x1111, 0x1111, 0x10CF, 0x088D, 0x2991, 0x214F, 0x088D, 0x10CD,
	0x004B, 0x2151, 0x190F, 0x10CF, 0x0009, 0x108D, 0x088B, 0x000B,
	0x000B, 0x0009, 0x108F, 0x088D, 0x084B, 0x0009, 0x0007, 0x084D,
	0x084B, 0x084D, 0x0009, 0x0009, 0x0007, 0x004B, 0x0009, 0x0007,
	0x0007, 0x0005, 0x000B, 0x0009, 0x000B, 0x0009, 0x000B, 0x0007,
	0x0009, 0x0007, 0x000B, 0x0009, 0x0007, 0x0009, 0x0007, 0x0009,
	0x0007, 0x0005, 0x0007, 0x0005, 0x0005, 0x3191, 0x294F, 0x2951,
	0x210F, 0x18CD, 0x2111, 0x18CF, 0x108D, 0x108B, 0x108F, 0x108D,
	0x084B, 0x084D, 0x084B, 0x084D, 0x084B, 0x0009, 0x000B, 0x0009,
	0x000B, 0x0009, 0x000B, 0x0009, 0x000B, 0x0007, 0x0009, 0x0007,
	0x0009, 0x0007, 0x0009, 0x0007, 0x0007, 0x0005, 0x0007, 0x000B,
	0x0009, 0x0009, 0x0007, 0x080B, 0x000B, 0x084D, 0x104D, 0x084B,
	0x188F, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001,
	0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0000,
};
u8 D_800CC428 = 0;
CameraFunc gCameraInits[] = {
    CameraInit_World1,
    CameraInit_World2,
    CameraInit_Scene02,
    CameraInit_Scene03,
    CameraInit_Scene04,
    CameraInit_MigenBrawl,
    func_800245B4,
    CameraInit_Scene07,
    CameraInit_Title,
    CameraInit_Lunar,
    CameraInit_World4A,
    CameraInit_Intro,
    CameraInit_World3B,
    CameraInit_SeasickClimb,
    func_800245B4,
    CameraInit_AthleticGames,
    CameraInit_AthleticGames,
    CameraInit_AthleticGames,
    CameraInit_AthleticGames,
    CameraInit_Beastector,
    CameraInit_CounterAttack,
    CameraInit_Splashscreen,
    CameraInit_Merco_Trapped,
    CameraInit_World4A,
    CameraInit_World4B,
    CameraInit_Beastector,
    CameraInit_PhoenixGamma,
    CameraInit_Beastector,
    CameraInit_Leo,
    CameraInit_AthleticGames,
    CameraInit_AthleticGames,
    CameraInit_World3B,
    CameraInit_World3B,
    CameraInit_TheDayBefore,
    CameraInit_Scene34,
    CameraInit_World3B,
    CameraInit_SnowstormMaze,
    CameraInit_World2,
    CameraInit_World2,
    CameraInit_World4A,
    CameraInit_World4B,
    CameraInit_World4B,
    CameraInit_World4B,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4B,
    CameraInit_World4B,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_World2,
    CameraInit_World2,
    CameraInit_TightropeRide,
    CameraInit_MagmaRafts,
    CameraInit_Scene63,
    CameraInit_Leo,
    CameraInit_Leo,
    CameraInit_Leo,
    CameraInit_World1,
    CameraInit_World1,
    CameraInit_Vertigo,
    CameraInit_Freefall,
    CameraInit_World3,
    CameraInit_World3,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_World4A,
    CameraInit_ClanceWar2,
    CameraInit_BeesTheOne,
    CameraInit_Leo,
    CameraInit_CounterAttack,
    CameraInit_CounterAttack,
    CameraInit_CounterAttack,
    CameraInit_CounterAttack,
    CameraInit_CounterAttack,
    CameraInit_Merco_Trapped,
    CameraInit_Merco_Trapped,
    CameraInit_Merco_Trapped
};
CameraFunc gCameraUpdates[] = {
    CameraUpdate_World1,
    CameraUpdate_World2,
    CameraUpdate_Scene02,
    CameraUpdate_Scene03,
    CameraUpdate_Scene04,
    CameraUpdate_MigenBrawl,
    func_800245F0,
    CameraUpdate_Scene07,
    CameraUpdate_Title,
    CameraUpdate_Lunar,
    CameraUpdate_World4A,
    CameraUpdate_Intro,
    CameraUpdate_World3B,
    CameraUpdate_SeasickClimb,
    func_800245F0,
    CameraUpdate_AthleticGames,
    CameraUpdate_AthleticGames,
    CameraUpdate_AthleticGames,
    CameraUpdate_AthleticGames,
    CameraUpdate_Beastector,
    func_800249B8,
    CameraUpdate_Splashscreen,
    CameraUpdate_Merco_Trapped,
    CameraUpdate_World4A,
    CameraUpdate_AstersTryke,
    CameraUpdate_Beastector,
    CameraUpdate_PhoenixGamma,
    CameraUpdate_Beastector,
    CameraUpdate_Leo,
    CameraUpdate_AthleticGames,
    CameraUpdate_AthleticGames,
    CameraUpdate_World3B,
    CameraUpdate_World3B,
    CameraUpdate_TheDayBefore,
    CameraUpdate_Scene34,
    CameraUpdate_World3B,
    CameraUpdate_SnowstormMaze,
    CameraUpdate_World2,
    CameraUpdate_WesternWorld,
    CameraUpdate_World4A,
    CameraUpdate_World4B,
    CameraUpdate_World4B,
    CameraUpdate_World4B,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4B,
    CameraUpdate_World4B,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_World2,
    CameraUpdate_World2,
    CameraUpdate_TightropeRide,
    CameraUpdate_MagmaRafts,
    CameraUpdate_Scene63,
    CameraUpdate_Leo,
    CameraUpdate_Leo,
    CameraUpdate_Leo,
    CameraUpdate_World1,
    CameraUpdate_World1,
    CameraUpdate_Vertigo,
    CameraUpdate_Freefall,
    CameraUpdate_ClanballLift,
    CameraUpdate_SnowstormMaze,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_World4A,
    CameraUpdate_ClanceWar2,
    CameraUpdate_BeesTheOne,
    CameraUpdate_Leo,
    func_800249B8,
    func_800249B8,
    func_800249B8,
    func_800249B8,
    func_800249B8,
    CameraUpdate_Merco_Trapped,
    CameraUpdate_Merco_Trapped,
    CameraUpdate_Merco_Trapped
};
// position and bounds for player per scene
// {BoundX0, BoundX1, BoundY0, BoundY1, ScreenX, PlayerX, ScreenY, PlayerY}
s16 D_800CC6EC[] = {
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x0220, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0x0000,
	0x0100, 0x0220, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x0220, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0102, 0x0222, 0x012C, 0x02AC, 0x0192, 0x0000, 0x0190, 0xFFD0,
	0x0102, 0x0222, 0x010C, 0x01EC, 0x0192, 0xFFC0, 0x017C, 0xFFE0,
	0x0100, 0x0340, 0x00E0, 0x02E0, 0x0190, 0xFFC0, 0x00E0, 0x0060,
	0x0100, 0x0300, 0x016E, 0x030E, 0x0190, 0xFFC0, 0x01DE, 0xFFC2,
	0x0100, 0x0300, 0x0100, 0x0280, 0x0190, 0xFFC0, 0x0100, 0x0060,
	0x0100, 0x0300, 0x0100, 0x0200, 0x0190, 0xFFC0, 0x00E0, 0x0060,
	0x0170, 0x0290, 0x0090, 0x0170, 0x0200, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0102, 0x0222, 0x0100, 0x1000, 0x0192, 0x0000, 0x0190, 0xFFD0,
	0x0102, 0x0222, 0x010C, 0x01EC, 0x0192, 0xFFC0, 0x017C, 0xFFE0,
	0x0100, 0x7F00, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0100, 0x7F00, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0100, 0x7F00, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0100, 0x7F00, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0000, 0x7FFF, 0x0126, 0x0206, 0x0390, 0xFFC0, 0x0196, 0xFFE0,
	0x0000, 0x7FFF, 0x020F, 0x0574, 0x0990, 0xFFC0, 0x027F, 0xFFE0,
	0x0100, 0x0220, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0x0000,
	0x0000, 0x4100, 0x012C, 0x02EE, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x7FFF, 0x0126, 0x0206, 0x0390, 0xFFC0, 0x0196, 0xFFE0,
	0x0300, 0x0420, 0x0000, 0x7FFF, 0x0390, 0xFFC0, 0x0196, 0xFFE0,
	0x0000, 0x7FFF, 0x0126, 0x0206, 0x0390, 0xFFC0, 0x0196, 0xFFE0,
	0x0100, 0x0290, 0x016E, 0x024E, 0x0190, 0xFFC0, 0x01DE, 0xFFC2,
	0x0100, 0x7F00, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0000, 0x7FFF, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0102, 0x0222, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0100, 0x1E00, 0x0120, 0x0200, 0x0190, 0xFFC0, 0x0190, 0xFFE0,
	0x0000, 0x7FFF, 0x0126, 0x0206, 0x0190, 0xFFC0, 0x0196, 0xFFE0,
	0x0170, 0x0290, 0x016E, 0x024E, 0x0190, 0xFFC0, 0x01DE, 0xFFC2,
	0x0102, 0x0222, 0x010C, 0x01EC, 0x0192, 0xFFC0, 0x017C, 0xFFE0,
	0x0170, 0x0290, 0x016E, 0x024E, 0x0190, 0xFFC0, 0x01DE, 0xFFC2,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0100, 0x1A60, 0x00EC, 0x0220, 0x0190, 0xFFC0, 0x0150, 0x0040,
	0x0102, 0x0222, 0x0100, 0x1000, 0x0192, 0x0000, 0x0190, 0xFFD0,
	0x00D0, 0x0250, 0x0120, 0x1070, 0x0190, 0x0000, 0x1000, 0x0000,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0000, 0x1000, 0x0100, 0x1000, 0x0090, 0xFFC0, 0x0100, 0x0060,
	0x0100, 0x3100, 0x020F, 0x02E4, 0x0990, 0xFFC0, 0x027F, 0xFFE0,
	0x0110, 0x1A30, 0x020F, 0x0574, 0x0990, 0xFFC0, 0x027F, 0xFFE0,
	0x0100, 0x0290, 0x016E, 0x024E, 0x0190, 0xFFC0, 0x01DE, 0xFFC2,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x02EE, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x02EE, 0x0990, 0xFFC0, 0x019C, 0xFFE0,
	0x0000, 0x4100, 0x012C, 0x020C, 0x0990, 0xFFC0, 0x019C, 0xFFE0
};
s16 D_800CCC6C[] = {
	0x0003, 0x0000, 0xFE00, 0xFE00, 0x0033, 0x0003, 0x0000, 0xF800,
	0xF800, 0x0000, 0x0003, 0x0000, 0xFE00, 0xFE00, 0x0000, 0x0003,
	0x0000, 0xFE00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFE00, 0xFE00,
	0x0000, 0x0003, 0x0000, 0xFFC0, 0xFFD0, 0x0000, 0x0005, 0x0000,
	0x0018, 0xFF80, 0x0000, 0x0003, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0003, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0003, 0x0000, 0x0080,
	0xFF80, 0x0000, 0x0003, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0003,
	0x0000, 0xFF10, 0xFF80, 0x0000, 0x0003, 0x0000, 0xFF10, 0xFF80,
	0x0000, 0x0000, 0x0001, 0xFE00, 0xFE00, 0x0000, 0x0005, 0x0000,
	0x0018, 0xFF80, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000,
	0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00,
	0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003,
	0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFF00, 0xFE00,
	0x0000, 0x0003, 0x0000, 0xFE00, 0xFE00, 0x0000, 0x0004, 0x0000,
	0xFF00, 0xFE00, 0x0000, 0x0004, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0004, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFF00,
	0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003,
	0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFE80, 0xFE00,
	0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000,
	0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0004, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0004, 0x0000, 0xFF10,
	0xFF80, 0x0000, 0x0003, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0004,
	0x0000, 0xFF10, 0xFF80, 0x0000, 0x0002, 0x0000, 0x00F0, 0xFF80,
	0x0000, 0x0003, 0x0000, 0xF800, 0xF800, 0x0000, 0x0003, 0x0000,
	0xF800, 0xF800, 0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0000, 0x0001, 0xFF10,
	0xFF80, 0x0000, 0x0000, 0x0001, 0xFF10, 0xFF80, 0x0000, 0x0002,
	0x0000, 0xFF10, 0xFF80, 0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80,
	0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0002, 0x0000,
	0x0002, 0xFF80, 0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0002, 0x0000, 0xFF10,
	0xFF80, 0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0002,
	0x0000, 0xFF10, 0xFF80, 0x0000, 0x0003, 0x0000, 0xFE00, 0xFE00,
	0x0033, 0x0003, 0x0000, 0xFE00, 0xFE00, 0x0033, 0x0003, 0x0000,
	0xFE00, 0xFE00, 0x0033, 0x0003, 0x0000, 0xFE00, 0xFE00, 0x0033,
	0x0003, 0x0000, 0xFE00, 0xFE00, 0x0033, 0x0003, 0x0000, 0xFE00,
	0xFE00, 0x0033, 0x0003, 0x0000, 0xFE00, 0xFE00, 0x0033, 0x0003,
	0x0000, 0xF800, 0xF800, 0x0000, 0x0003, 0x0000, 0xF800, 0xF800,
	0x0000, 0x0003, 0x0000, 0xF800, 0xF800, 0x0000, 0x0003, 0x0000,
	0xF800, 0xF800, 0x0000, 0x0003, 0x0000, 0xFF00, 0xFE00, 0x0000,
	0x0003, 0x0000, 0xFE80, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFE80,
	0xFE00, 0x0000, 0x0003, 0x0000, 0xFE80, 0xFE00, 0x0000, 0x0003,
	0x0000, 0xFE00, 0xFE00, 0x0033, 0x0003, 0x0000, 0xFE00, 0xFE00,
	0x0033, 0x0000, 0x0001, 0xFE00, 0xFE00, 0x0000, 0x0000, 0x0001,
	0xFE00, 0xFE00, 0x0000, 0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000,
	0x0002, 0x0000, 0xFF10, 0xFF80, 0x0000, 0x0005, 0x0000, 0xFF00,
	0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005,
	0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00,
	0x0000, 0x0003, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000,
	0xFF00, 0xFE00, 0x0000, 0x0003, 0x0000, 0xFE80, 0xFE00, 0x0000,
	0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00,
	0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005,
	0x0000, 0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00,
	0x0000, 0x0004, 0x0000, 0xFF00, 0xFE00, 0x0000, 0x0004, 0x0000,
	0xFF00, 0xFE00, 0x0000, 0x0005, 0x0000, 0xFF00, 0xFE00, 0x0000
};
// music for start os scene (0xff if none)
u8 gSceneBgm[] = {
	0x17, 0x06, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1D,
	0xFF, 0xFF, 0x1D, 0x02, 0x17, 0x06, 0x07, 0xFF,
	0xFF, 0xFF, 0xFF, 0x0A, 0x03, 0xFF, 0x0C, 0x09,
	0x0D, 0x0A, 0x0A, 0xFF, 0x04, 0xFF, 0x03, 0x11,
	0x17, 0x09, 0x01, 0x01, 0x12, 0x15, 0x06, 0x11,
	0x15, 0xFF, 0x08, 0x08, 0x08, 0x08, 0x11, 0x15,
	0x00, 0x08, 0x08, 0x08, 0x17, 0x0E, 0x12, 0x0E,
	0x12, 0xFF, 0xFF, 0x11, 0x05, 0x15, 0x05, 0x03,
	0x0F, 0x0B, 0x04, 0x0E, 0x17, 0x06, 0x06, 0x15,
	0x01, 0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0xFF,
	0x07, 0x07, 0x07, 0x07, 0x07, 0x1D, 0x0C, 0x07
};
// scene properties of BG layers?
u8 D_800CD034[] = {
	0x09, 0x05, 0x05, 0x05, 0x05, 0x02, 0x03, 0x00,
	0x04, 0x00, 0x00, 0x07, 0x08, 0x07, 0x03, 0x07,
	0x07, 0x07, 0x07, 0x07, 0x00, 0x05, 0x0A, 0x00,
	0x00, 0x07, 0x07, 0x07, 0x04, 0x07, 0x07, 0x08,
	0x08, 0x08, 0x08, 0x08, 0x00, 0x05, 0x05, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x09, 0x09, 0x09, 0x09,
	0x09, 0x09, 0x09, 0x05, 0x05, 0x05, 0x05, 0x07,
	0x04, 0x03, 0x04, 0x09, 0x09, 0x07, 0x07, 0x08,
    0x08, 0x00, 0x00, 0x00
};

extern u8 D_800E3BC8[];
extern s8 D_800E3C48[];
extern u8 D_800C71A0[];

extern s16 D_801373DC;
extern s16 D_801373DE;

#define D_80201B48 ((Unk80201B48*)0x80201B48)

void Camera_ResetRotate(void) {
    gCameraRot = 0;
    gCameraRotDelta = 0;
}

void Camera_ApplyRotate(void) {
    s32 angle;

    gCameraRot += gCameraRotDelta;
    angle = FROM_FIXED(gCameraRot);
    gLookatUpX = SIN(angle);
    gLookatUpY = COS(angle);
}

void CameraInit_Scene63(void) {
}

void CameraUpdate_Scene63(void) {
}

void CameraInit_World1(void) {
    D_800BE578 = 2;
    D_800BE6FC = 1;
    D_800BE584 = -12;
}

void CameraUpdate_World1(void) {
    D_800BE580 = (gScreenPosCurrentY.whole / 6) + 0x1AE;
    D_800BE578 = gScreenPosCurrentX.whole / 4;
    D_8011D3B0[0][0] = (gActiveFrames / 6) & 0x7FFF;
    D_8011D3B0[1][0] = (gActiveFrames / 16) & 0x7FFF;
    D_8011D3B0[2][0] = (gActiveFrames / 32) & 0x7FFF;
    D_8011D3B0[4][0] = 0;
    D_8011D3B0[3][0] = D_8011D3B0[4][0];
    D_8011D3B0[5][0] = D_8011D3B0[6][0] = -1;
}

void CameraInit_World2(void) {
    D_800BE578 = gScreenPosCurrentX.whole / 2;
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

void CameraUpdate_World2(void) {
    u16 var_a0;

    gActors[0x31].posY.whole = 320 - gScreenPosCurrentY.whole;
    if (gActiveFrames & 0x20) {
        var_a0 = (248 - (gActiveFrames & 0x1F) * 8);
    }
    else {
        var_a0 = (gActiveFrames & 0x1F) * 8;
    }
    D_800E3BC8[24] = D_800E3BC8[28] = var_a0;
    D_800BE578 = gScreenPosCurrentX.whole / 2;
    D_800BE580 = (gScreenPosCurrentY.whole / 2) - 212;
}


void CameraUpdate_WesternWorld(void) {
    CameraUpdate_World2();
    D_800BE544 = 0x8000;
    D_800BE548.raw = FIXED_UNIT(8.0);
    if (D_800BE634 != 0) {
        gScreenPosTargetX.raw = gPlayerPosX.raw - FIXED_UNIT(96.0);
        if (gPlayerPosX.whole < 0xB98) {
            D_800BE634 = 0;
        }
    }
    else {
        gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(96.0);
        if (gPlayerPosX.whole >= 0xF89) {
            D_800BE634 = 1;
        }
    }
}

void CameraInit_TightropeRide(void) {
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
}

void CameraUpdate_TightropeRide(void) {
    gActors[0x31].posY.whole = 320 - gScreenPosCurrentY.whole;
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(64.0);
        gScreenPosTargetY.raw = gPlayerPosY.raw;
        D_800BE578 = gScreenPosCurrentX.whole / 2;
        D_800BE580 = (gScreenPosCurrentY.whole / 2) - 212;
    }
}

void CameraInit_MagmaRafts(void) {
    D_800BE580 = -12;
    gLookatEyeY = 32.0f;
    D_800BE70C = 2;
}

void CameraUpdate_MagmaRafts(void) {
    CameraUpdate_World2();
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(32.0);
        gScreenPosTargetY.raw = gPlayerPosY.raw;
        D_800BE704 = 1;
    }
}

void CameraInit_Scene02(void) {
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    gIsPlayerInactive = TRUE;
}

void CameraUpdate_Scene02(void) {
}

void CameraInit_Scene03(void) {
    D_800BE57C = 0;
    D_800BE584 = 0;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    gIsPlayerInactive = TRUE;
}

void CameraUpdate_Scene03(void) {
    if (gButtonHold & gButton_DLeft) {
        D_80201B48->unk0--;
    }
    if (gButtonHold & gButton_DRight) {
        D_80201B48->unk0++;
    }
    if (gButtonHold & gButton_DDown) {
        D_80201B48->unk2--;
    }
    if (gButtonHold & gButton_DUp) {
        D_80201B48->unk2++;
    }
}

void CameraInit_Scene04(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
    gIsPlayerInactive = TRUE;
}

void CameraUpdate_Scene04(void) {
}

void CameraInit_MigenBrawl(void) {
    D_800BE578 = 2;
    D_800BE57C = 2;
}

void CameraUpdate_MigenBrawl(void) {
    u16 index;

    D_800BE580 = ((gScreenPosCurrentY.whole * 5) / 4) + D_800D2934;
    D_800BE584 = gScreenPosCurrentY.whole - 104;
    gScreenPosCurrentX.whole = 402;
    gScreenPosTargetX.whole = 402;
    gScreenBoundX0.whole = 0x102;
    gScreenBoundX1.whole = 0x222;
    if (gActiveFrames & 1) {
        for (index = 0; index < 0x2C; index++) {
            PALETTE_80380400[D_800CBFFC[index]] = D_800CBF5C[D_800CBFFC[index] - 0x90];
        }
    }
    else {
        for (index = 0; index < 0x2C; index++) {
            PALETTE_80380400[D_800CBFFC[index]] = (D_800CBF5C[D_800CBFFC[index] - 0x90] & 0xFFFF) | 0xFFC1;
        }
    }
}


void CameraInit_Scene07(void) {
    D_800BE544 = 48;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void CameraUpdate_Scene07(void) {
    D_800BE578 = gScreenPosCurrentX.whole;
    D_800BE580 = gScreenPosCurrentY.whole + 96;
}

void CameraInit_Title(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
}

void CameraUpdate_Title(void) {
}

void CameraInit_Lunar(void) {
    D_800BE544 = 48;
    D_800BE57C = 2;
    D_800BE584 = -12;
    D_800BE674 = 1;
}

void CameraUpdate_Lunar(void) {
}

void CameraInit_Intro(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
}

void CameraUpdate_Intro(void) {
}

void CameraInit_World3B(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void CameraUpdate_World3B(void) {
}

void CameraInit_TheDayBefore(void) {
}

void CameraUpdate_TheDayBefore(void) {
    D_800BE73C = TO_FIXED(gScreenPosCurrentX.whole - gScreenPosNextX.whole);
}

void CameraInit_Scene34(void) {
}

void CameraUpdate_Scene34(void) {
    D_800BE73C = TO_FIXED(gScreenPosCurrentX.whole - gScreenPosNextX.whole);
}

void CameraInit_World3(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void CameraInit_SnowstormMaze(void) {
    CameraInit_World3();
    D_800BE674 = 1;
}

// not in either camera func table
void func_80023EDC(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        if (gPlayerActor.flags & ACTOR_FLAG_FLIPPED) {
            gScreenPosTargetX.raw = gPlayerPosX.raw - FIXED_UNIT(48.0);
        }
        else {
            gScreenPosTargetX.raw = gPlayerPosX.raw + FIXED_UNIT(48.0);
        }
        gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(40.0);
    }
}

void CameraUpdate_SnowstormMaze(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        gScreenPosTargetX.raw = gPlayerPosX.raw;
    // change camera Y if using Jump Clancer
        if ((gPlayerActor.parentIndex == 0x31) &&
           (gActors[0x30].actorType == ACTORTYPE_OVL1_GEN_POGO) && (gActors[0x32].unk_180 & 0x8000)) {
            gScreenPosTargetY.raw = gActors[0x30].posY.raw + gScreenPosCurrentY.raw + FIXED_UNIT(24.0);
        }
        else {
            gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(40.0);
        }
    }
}

void CameraUpdate_ClanballLift(void) {
    if (!(gDebugBitfield & DEBUGFLAG_CAMERALOCK)) {
        D_800BE544 = 0x8000;
        if (gStageState < 3) {
            gScreenPosTargetY.raw = gPlayerPosY.raw + FIXED_UNIT(40.0);
        }
        else {
            gScreenPosTargetY.raw = gPlayerPosY.raw;
        }
        gScreenPosTargetX.raw = gPlayerPosX.raw;
    }
}

void CameraInit_SeasickClimb(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE708 = 1;
    D_800BE710 = TRUE;
    D_800BE71C = FIXED_UNIT(256.0);
    D_800BE720 = 0;
    D_800BE724 = FIXED_UNIT(448.0);
    D_800BE728 = FIXED_UNIT(-1.0);
    gCameraRot = 0;
    gCameraRotDelta = 0;
    D_800BE638 = 0;
}

void CameraUpdate_SeasickClimb_Rocking(void) {
    switch (D_800BE638) {
    case 0:
        D_800BE728 += FIXED_UNIT(4.0/256);
        if (D_800BE728 == FIXED_UNIT(1.5)) {
            D_800BE638++;
        }
        break;
    case 1:
        D_800BE728 -= FIXED_UNIT(4.0/256);
        if (D_800BE728 == FIXED_UNIT(-1.5)) {
            D_800BE638--;
        }
        break;
    }

    switch (D_800BE634) {
    case 0:
        D_800BE720 = (FIXED_UNIT(16.0) - D_800BE71C) / 16;
        if (D_800BE720 > FIXED_UNIT(8.0)) {
            D_800BE720 = FIXED_UNIT(2.0);
        }
        if (D_800BE71C < FIXED_UNIT(96.0)) {
            Sound_PlaySfx(SFX_RUMBLE_0122);
            D_800BE634 += 1;
        }
        break;
    case 1:
        D_800BE720 = (FIXED_UNIT(16.0) - D_800BE71C) / 16;
        if (D_800BE720 > FIXED_UNIT(8.0)) {
            D_800BE720 = FIXED_UNIT(2.0);
        }
        if (D_800BE71C < FIXED_UNIT(18.0)) {
            D_800BE720 = 0;
            D_800BE71C = FIXED_UNIT(16.0);
            gCameraRotDelta = FIXED_UNIT(0.75);
            D_800BE634 += 1;
        }
        break;
    case 2:
        gCameraRotDelta -= FIXED_UNIT(2.0/256);
        if (gCameraRotDelta == 0) {
            Sound_PlaySfx(SFX_RUMBLE_0122);
        }
        else if (gCameraRotDelta == FIXED_UNIT(-0.75)) {
            D_800BE634 += 1;
        }
        break;
    case 3:
        gCameraRotDelta += FIXED_UNIT(2.0/256);
        if (gCameraRotDelta == 0) {
            Sound_PlaySfx(SFX_RUMBLE_0122);
        }
        else if (gCameraRotDelta == FIXED_UNIT(0.75)) {
            D_800BE634 -= 1;
        }
        break;
    default:
        break;
    }
    D_800BE71C += D_800BE720;
    gLookatEyeY = (f32) FROM_FIXED(D_800BE71C);
    D_800BE724 += D_800BE728;
    gLookatEyeZ = (f32) FROM_FIXED(D_800BE724);
}

void CameraUpdate_SeasickClimb(void) {
    s32 angle;

    CameraUpdate_SeasickClimb_Rocking();
    Camera_ApplyRotate();
    angle = FROM_FIXED(gCameraRot);
    D_800E3C48[0x10] = SIN(angle + COS_DEG_45) * 128.0f;
    D_800E3C48[0x11] = COS(angle + COS_DEG_45) * 128.0f;
}

void CameraInit_Vertigo(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = TRUE;
    gCameraRot = 0;
}

void CameraUpdate_Vertigo(void) {
    s32 angle;

    angle = FROM_FIXED(gCameraRot);
    gLookatUpX = SIN(angle);
    gLookatUpY = COS(angle);
}

void CameraInit_Freefall(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = TRUE;
}

void CameraUpdate_Freefall(void) {
}

void func_800245B4(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
    D_800BE57C = 2;
    D_800BE584 = -12;
    gLifebar.flags = 0;
    gLifebarHead.flags = 0;
}

void func_800245F0(void) {
}

void CameraInit_AthleticGames(void) {
}

void CameraUpdate_AthleticGames(void) {
    D_800BE73C = TO_FIXED(gScreenPosCurrentX.whole - gScreenPosNextX.whole);
}

void CameraInit_Beastector(void) {
    D_800BE588 = 2;
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = LETTERBOX_HORIZONTAL;
    Camera_ResetRotate();
}

void CameraUpdate_Beastector(void) {
    s16 var_v0;
    s16 var_v1;

    Camera_ApplyRotate();
    D_800BE73C = TO_FIXED(gScreenPosCurrentX.whole - gScreenPosNextX.whole);
    var_v0 = gScreenPosCurrentX.whole / 1.55;
    var_v1 = gScreenPosTargetX.whole / 1.55;
    if (var_v0 < 0x200) {
        var_v0 += 0x200;
        gScreenPosCurrentX.whole = (var_v0 * 1.55);
        var_v1 += 0x200;
        gScreenPosTargetX.whole = (var_v1 * 1.55);
    }
    if (var_v0 > 0x400) {
        var_v0 -= 0x200;
        gScreenPosCurrentX.whole = (var_v0 * 1.55);
        var_v1 -= 0x200;
        gScreenPosTargetX.whole = (var_v1 * 1.55);
    }
}

void CameraInit_CounterAttack(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = FALSE;
}

void func_8002488C(void) {
    D_800BE734 += D_800BE73C / 4;
    D_800BE578 = FROM_FIXED(D_800BE734);
    D_800BE580 = (gScreenPosCurrentY.whole / 1.55) - 422.0;
    D_800BE738 += D_800BE73C / 8;
    D_800BE57C = FROM_FIXED(D_800BE738);
    D_800BE584 = (gScreenPosCurrentY.whole / 1.55) - 326.0;
}

void func_800249B8(void) {
    s32 temp_f10;

    switch (D_800BE634) {
    case 0:
        temp_f10 = gScreenPosCurrentX.raw / 1.55;
        if ((D_800CC428) && (temp_f10 > 0x06000000)) {
            D_800CC428 = FALSE;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x12000000;
            gScreenPosCurrentX.whole = FROM_FIXED(temp_f10 * 1.55);
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
            D_800BE634 += 1;
        }
        else if (temp_f10 > 0x10000000) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x08000000;
            gScreenPosCurrentX.whole = FROM_FIXED(temp_f10 * 1.55);
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
        }
        else {
            gScreenPosTargetX.raw += D_800BE73C;
        }
        break;
    case 1:
        temp_f10 = gScreenPosCurrentX.raw / 1.55;
        if ((D_800CC428) && (temp_f10 > 0x16000000)) {
            gDrawEnvLayer = TRUE;
            gDrawBackground = TRUE;
            D_800CC428 = FALSE;
            temp_f10 = (temp_f10 & 0x01FFFFFF) + 0x02000000;
            gScreenPosCurrentX.whole = FROM_FIXED(temp_f10 * 1.55);
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
            D_800BE634 -= 1;
        }
        else if (temp_f10 >= 0x20000001) {
            temp_f10 = (temp_f10 & 0x07FFFFFF) + 0x18000000;
            gScreenPosCurrentX.whole = FROM_FIXED(temp_f10 * 1.55);
            gScreenPosTargetX.raw = gScreenPosCurrentX.raw + D_800BE73C;
        }
        else {
            gScreenPosTargetX.raw += D_800BE73C;
        }

        if (gScreenPosCurrentX.whole > 0x20C0) {
            gDrawEnvLayer = FALSE;
            gDrawBackground = FALSE;
        }
        break;
    }
    func_8002488C();
}

void CameraInit_ClanceWar2(void) {
    D_800BE588 = 3;
}

void CameraUpdate_ClanceWar2(void) {
    D_800BE73C = TO_FIXED(gScreenPosCurrentX.whole - gScreenPosNextX.whole);
    func_8002488C();
}

void CameraInit_BeesTheOne(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

void func_80024DD8(void) {
    u16 index;
    u16* src;
    u16* dest;

    dest = PALETTE_80380400;
    src = D_800CC228;
    for (index = 0; index < 0x100; index++) {
        *dest++ = *src++;
    }
}

void func_80024E18(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = (s32*)PALETTE_80380400, dest = (s32*)PALETTE_803DA600; index < 0x80; index++) {
        *dest++ = *src++;
    }
    Palette_AdjustScenePalettes(1, 2, 0, 0, 1, 2, 2, 1, 0);
}

void CameraUpdate_BeesTheOne(void) {
    switch (D_800BE634) {
    case 0:
        gScreenPosTargetY.raw += 0x319A;
        if (gScreenPosCurrentY.whole > 0x2E0) {
            gActors[0x91].flags = 0;
            gActors[0x90].flags = 0;
            D_800BE634 += 1;
        }
        break;
    case 1:
        gScreenPosTargetY.raw += 0x319A;
        if (gScreenPosCurrentY.whole > 0x3A8) {
            func_80024DD8();
            func_80024E18();
            gDrawMidground = FALSE;
            D_800BE634 += 1;
        }
        break;
    case 2:
        gScreenPosTargetY.raw += 0x319A;
        D_800BE738 += FIXED_UNIT(2.0);
        if (gScreenPosCurrentY.whole > 0x4B0) {
            gDrawEnvLayer = FALSE;
            D_800BE634 += 1;
        }
        break;
    case 3:
        D_800BE738 += FIXED_UNIT(2.0);
        break;
    }
    if (gScreenPosCurrentX.whole < 0x1900) {
        D_800BE73C = 0x18CCD;
        gScreenPosTargetX.raw += D_800BE73C;
    }
    else {
        D_800BE73C = (-gScreenPosCurrentX.whole * 0x27A) + 0x3F7640;
        gScreenPosTargetX.raw += D_800BE73C;
    }
    func_8002488C();
}

void CameraInit_Splashscreen(void) {
}

void CameraUpdate_Splashscreen(void) {
}

void CameraInit_Merco_Trapped(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -76;
    D_8013746C = D_800C71A0;
    if (gCurrentScene != SCENE_TRAPPED) {
        gLookatEyeX = -128.0f;
        gLookatEyeY = 128.0f;
    }
    Camera_ResetRotate();
}

void CameraUpdate_Merco_Trapped(void) {
    Camera_ApplyRotate();
    if (gActiveFrames & 1) {
        D_800BE57C += 1;
    }
}

void CameraInit_World4A(void) {
    D_800BE580 = -24;
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void CameraUpdate_World4A(void) {
    D_800BE578 = (gScreenPosCurrentX.whole / 4) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void CameraInit_World4B(void) {
    D_800BE57C = 2;
    D_800BE584 = -12;
}

void CameraUpdate_World4B(void) {
    D_800BE578 = ((gScreenPosCurrentX.whole / 4) & 0x1FF) + 0x80;
    D_800BE580 = (gScreenPosCurrentY.whole / 4) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void CameraUpdate_AstersTryke(void) {
    D_800BE578 = (gScreenPosCurrentX.whole / 2) & 0x1FF;
    D_800BE580 = (gScreenPosCurrentY.whole / 2) & 0x1FF;
    D_800BE57C = (gScreenPosCurrentX.whole / 8) & 0x1FF;
}

void CameraInit_PhoenixGamma(void) {
    D_800BE704 = 1;
    D_800BE708 = 1;
    gLetterboxMode = LETTERBOX_VERTICAL;
    Camera_ResetRotate();
}

void CameraUpdate_PhoenixGamma(void) {
    Camera_ApplyRotate();
    if (gLetterboxMode == LETTERBOX_VERTICAL) {
        if (gScreenPosCurrentY.whole < 0x100) {
            gScreenPosCurrentY.whole += 0x400;
            gScreenPosTargetY.whole += 0x400;
        }
        if (gScreenPosCurrentY.whole > 0x500) {
            gScreenPosCurrentY.whole -= 0x400;
            gScreenPosTargetY.whole -= 0x400;
        }
    }
}

void CameraInit_Leo(void) {
    D_800BE578 = 2;
    D_800BE580 = -12;
    D_800BE70C = 4;
}

void CameraUpdate_Leo(void) {
}

void func_800253B0(void) {
    if (D_800D28E4 < 0x59) {
        switch (D_800D16C4[0]) {
        case 1:
            if (gLifebar.posY.whole > 0) {
                if (gLifebar.posY.whole >= 0xA0) {
                    gLifebarHead.posY.whole = 0xA0;
                    gLifebar.posY.whole = gLifebarHead.posY.whole;
                    D_800D16C4[0] = 2;
                }
                else {
                    gLifebar.posY.whole = gLifebar.posY.whole + 8;
                    gLifebarHead.posY.whole = gLifebarHead.posY.whole + 8;
                }
            }
            else if (gLifebar.posY.whole < -0x9F) {
                gLifebarHead.posY.whole = -0xA0;
                gLifebar.posY.whole = gLifebarHead.posY.whole;
                D_800D16C4[0] = 2;
            }
            else {
                gLifebar.posY.whole = gLifebar.posY.whole - 8;
                gLifebarHead.posY.whole = gLifebarHead.posY.whole - 8;
            }
            /* fallthrough */
        case 2:
            if (func_8005DEFC() == 0) {
                D_800D16C4[0] = 3;
            }
            break;
        case 3:
            if (gLifebar.posY.whole > 0) {
                if (gLifebar.posY.whole < 0x51) {
                    gLifebarHead.posY.whole = 0x50;
                    gLifebar.posY.whole = gLifebarHead.posY.whole;
                    D_800D16C4[0] = 0;
                }
                else {
                    gLifebar.posY.whole = gLifebar.posY.whole - 8;
                    gLifebarHead.posY.whole = gLifebarHead.posY.whole - 8;
                }
            }
            else if (gLifebar.posY.whole >= -0x58) {
                gLifebarHead.posY.whole = -0x58;
                gLifebar.posY.whole = gLifebarHead.posY.whole;
                D_800D16C4[0] = 0;
            }
            else {
                gLifebar.posY.whole = gLifebar.posY.whole + 8;
                gLifebarHead.posY.whole = gLifebarHead.posY.whole + 8;
            }
            /* fallthrough */
        case 0:
            if (func_8005DEFC() != 0) {
                D_800D16C4[0] = 1;
            }
            break;
        }
    }
    gCameraUpdates[gCurrentScene]();
}

void PlaySceneBGM(void) {
    if (gSceneBgm[gCurrentScene] != 0xff) {
        Sound_PlayMusic(gSceneBgm[gCurrentScene]);
    }
}

void func_800255B4(u16 scene) {
    D_800D16C4[0] = 0;
    D_800BE6A8 = 0;
    D_800BE710 = FALSE;
    gScreenPosTargetX.raw = 0;
    gScreenPosCurrentX.raw = 0;
    gScreenBoundX0.whole = D_800CC6EC[scene * 8];
    gScreenBoundX1.whole = D_800CC6EC[scene * 8 + 1];
    gScreenBoundY1.whole = D_800CC6EC[scene * 8 + 2];
    gScreenBoundY0.whole = D_800CC6EC[scene * 8 + 3];
    gScreenPosCurrentX.whole = D_800CC6EC[scene * 8 + 4];
    gActors->posX.whole = D_800CC6EC[scene * 8 + 5];
    gScreenPosNextX.whole = gScreenPosCurrentX.whole;
    gScreenPosTargetX.whole = gScreenPosCurrentX.whole;
    gPlayerPosX.whole = gScreenPosCurrentX.whole + gActors->posX.whole;
    gScreenPosCurrentY.whole = D_800CC6EC[scene * 8 + 6];
    gActors->posY.whole = D_800CC6EC[scene * 8 + 7];
    gScreenPosNextY.whole = gScreenPosCurrentY.whole;
    gScreenPosTargetY.whole = gScreenPosCurrentY.whole;
    gPlayerPosY.whole = gScreenPosCurrentY.whole + gActors->posY.whole;
    D_800BE61C = 0;
    D_800BE620 = 0;
    gScreenXLock = 0;
    gScreenYLock = 0;
    D_800BE704 = 0x10;
    D_800BE708 = 4;
    D_800BE588 = 0;
    D_800BE58C = 0;
    D_800BE544 = 0;
    D_800BE548.raw = FIXED_UNIT(16.0);
    D_800BE54C.raw = FIXED_UNIT(16.0);
    D_800BE734 = 0;
    D_800BE738 = 0;
    D_800BE73C = 0;
    D_800BE654 = D_800CCC6C[scene * 5 + 0];
    D_800BE644 = 4 << D_800BE654;
    D_800BE648 = 0x4000 >> D_800BE654;
    D_800BE64C = 0x7FF >> (6 - D_800BE654);
    D_800BE650 = 0x3FFF - D_800BE64C;
    D_800BE660 = D_800BE654 + 2;
    D_800BE658 = 0xFFF >> (6 - D_800BE654);
    D_800BE65C = 0xFFFF - D_800BE658;
    D_800BE6DC = 0;
    D_800BE6E0 = 0;
    D_800BE664 = D_800CCC6C[scene * 5 + 1];
    gActorDepthFront = -8;
    gActorDepthMiddle = D_800CCC6C[scene * 5 + 2];
    gActorDepthBack = D_800CCC6C[scene * 5 + 3];
    D_801373DC = 0x10;
    D_801373DE = 0;
    func_8008BFB0();
    gLifebar.flags = PORTRAIT_GFLAG_UNK1;
    gLifebar.graphicIndex = GINDEX_LIFEBAR;
    gLifebar.posX.whole = -0x4C;
    gLifebar.posY.whole = 0xA0;
    gLifebar.alpha = 0xFF;
    gLifebarHead.flags = PORTRAIT_GFLAG_UNK1;
    gLifebarHead.graphicIndex = GINDEX_LIFEHEADBLINK;
    gLifebarHead.posX.whole = -0x7C;
    gLifebarHead.posY.whole = 0x80;
    gIsPlayerInactive = FALSE;
    gLetterboxMode = LETTERBOX_DEFAULT;
    D_800BE70C = 0;

    switch (D_800CD034[scene]) {
    case 0:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380200;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 1:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 2:
        D_8013769C = PALETTE_80380400;
        D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 3:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380000;
        D_801376A4 = PALETTE_80380000;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 4:
        D_8013769C = PALETTE_80380000;
        D_801376A0 = PALETTE_80380200;
        gDrawMidground = TRUE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 5:
        D_801376A0 = PALETTE_80380200;
        gDrawMidground = FALSE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = FALSE;
        break;
    case 6:
        D_8013769C = PALETTE_80380200;
        gDrawMidground = TRUE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        break;
    case 7:
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = FALSE;
        break;
    case 8:
        D_8013769C = PALETTE_80380000;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = TRUE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = TRUE;
        break;
    case 9:
        D_801376A0 = PALETTE_80380200;
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = FALSE;
        gDrawEnvLayer = TRUE;
        gDrawBackground = TRUE;
        break;
    case 10:
        D_801376A4 = PALETTE_80380400;
        gDrawMidground = FALSE;
        gDrawEnvLayer = FALSE;
        gDrawBackground = TRUE;
        break;
    }
    D_800BE634 = 0;
    gCameraInits[scene]();
    gCameraUpdates[scene]();
}

void func_80025B7C(void) {
    func_8002694C(gCurrentScene);
    func_80026A18(gCurrentScene);
    func_80026B04(gCurrentScene);
    func_80026BD0(gCurrentScene);
    func_80026874(gCurrentScene);
    func_80026C9C(gCurrentScene);
    func_8002729C(gCurrentScene);
    func_80025E00();
}

void func_80025BFC(void) {
    u16 index;
    s32* src;
    s32* dest;

    for (index = 0, src = (s32*)PALETTE_80380000, dest = (s32*)PALETTE_803DA200; index < 0x180; index++) {
        *dest++ = *src++;
    }
}

void func_80025C38(void) {
    func_800255B4(gCurrentScene);
    func_80025EC4(gCurrentScene);
    func_80025F70(gCurrentScene);
    func_8002601C(gCurrentScene);
    func_800260C8(gCurrentScene);
    func_80026174(gCurrentScene);
    func_80026584(gCurrentScene);
    func_800265FC(gCurrentScene);
    func_8002670C(gCurrentScene);
    func_80026784(gCurrentScene);
    func_800267FC(gCurrentScene);
    func_8005DE30();
    func_8002653C();

    if (gCurrentScene == SCENE_ASTERSTRYKE || gCurrentScene == SCENE_TARUS || ((gCurrentScene >= 0x2E) && (gCurrentScene < 0x34))) {
        func_80026220(0x17);
        func_80026428(0x18);
    }
    else if ((gCurrentScene == SCENE_DEMOWORLD1) || (gCurrentScene == SCENE_DEMOWORLD5) || (gCurrentScene == SCENE_ENDING)) {
        func_80026220(0x43);
        func_80026494(0xE, 0);
        D_801376A4 = PALETTE_80380400;
    }
    else {
        func_80026220(gCurrentScene);
    }

    if ((gCurrentScene == SCENE_TRAPPED) || (gCurrentScene == SCENE_MERCO) || (gCurrentScene == SCENE_UNK86)) {
        func_80024DD8();
    }
    func_80025BFC();
    func_80025B7C();
    gCameraInits[gCurrentScene]();
    gCameraUpdates[gCurrentScene]();
    PlaySceneBGM();
}
