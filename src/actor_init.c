#include "common.h"
#include "actor.h"

extern s16 D_800E1450[]; // graphic list for Clancer Ghost
extern s16 D_800E2550[]; // graphic list for Clanball

// a table giving the following inital stats of the first 125 actors:
// {hitboxAX, hitboxAY, hitboxBX, hitboxBY, health, damage, unknown/unused}
s16 gActorInitStats[]={
//  AX    AY    BX    BY      HP   dmg ?
    0,    0,    0,    0,      0,   0,  10, // ACTORTYPE_ZERO
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_1
    0x10, 0x10, 0x10, 0x10,   10,  10, 52, // ACTORTYPE_2
    0x10, 0x10, 0x10, 0x10,   10,  10,  3, // ACTORTYPE_3
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_4
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_5
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_DIZZYSTAR
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_AFTERIMAGE
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_GEM
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_PARTICLE
    0x10, 0x10, 0x10, 0x10,    0,   0, 0,  // ACTORTYPE_10
    0x10, 0x10, 0x10, 0x10,    0,   0, 50, // ACTORTYPE_11,
    0x10, 0x10, 0x10, 0x10,    0,   0, 50, // ACTORTYPE_12,
    0x10, 0x10, 0x10, 0x10,    0,   0, 50, // ACTORTYPE_13,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_14,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_15,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_16,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_17,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_18
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_19
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_20,
    0x10, 0x10, 0x10, 0x10,    0,   0, 50, // ACTORTYPE_3DICON,
    0x14, 0x18, 0x0C, 0x10, 1000,  10, 53, // ACTORTYPE_MARINA,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_23,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANPOT,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_25,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_26,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_27,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANBALL_28,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_GRAPHICONLY,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_30,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_31,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_32,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_33,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_34,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_LANDMINE,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_36,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_37,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_38,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_PORTRAIT,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_40,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_41,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_42,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_43,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_44,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_45,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_MARINAAFTERIMAGE,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_47,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_48,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_49,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_WARPGATE,
    0x06, 0x06, 0x04, 0x04,   10,  10, 10, // ACTORTYPE_51,
    0,       0,    0,    0,    0,   0,  0, // ACTORTYPE_52,
    0,       0,    0,    0,    0,   0,  0, // ACTORTYPE_TEXTBUBBLE,
    0,       0,    0,    0,    0,   0,  0, // ACTORTYPE_54,
    0,       0,    0,    0,    0,   0,  0, // ACTORTYPE_55,
    0,       0,    0,    0,    0,   0,  0, // ACTORTYPE_PARTICLE56,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_57,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_58,
    0x08, 0x08, 0x08, 0x08,    0,   0,  0, // ACTORTYPE_59,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_60,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_GEM61,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANBALLWHEEL,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_63,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_64,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_65,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANBALLSPRING,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_FLOWER,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_HAT,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANBOMB,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_70,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_71,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_TANKCAT,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_S,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_H,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_V,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_O,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_77,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_78,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_O2,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_80,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_81,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_SPIKEBALL_82,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_83,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANCER_84,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANCER_85,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANCER_86,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_DIGGINGSPOT,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANBLOCK_88,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_89,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_REDBLOCKBOOM,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_CLANCER_91,
    0x10, 0x10, 0x10, 0x10,   10,  10, 10, // ACTORTYPE_92,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_93,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_94,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANBLOB,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_96,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANBALL_RAIL,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_98,
    0x08, 0x08, 0x08, 0x08,    0,  10, 10, // ACTORTYPE_CLANCERGHOST,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_100,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_101,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_GEMICON,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_GHOSTICON,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANPOTICON,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANCERICON,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_106,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_AREACLEAR,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_108,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_109,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_110,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_111,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_MARINAOHNO,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CROSSHAIR,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_114,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_115,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_STAGECLEAR,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_LEVELCLEAR,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_ITEMSPAWN,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANCER_119,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANPOTMIX,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_CLANPOTMENU,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_MSHINT,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_GEMRING,
    0x08, 0x08, 0x08, 0x08,   10,  10, 10, // ACTORTYPE_GEM124,
    0
};

s32 gActorInitFlags[]= {
    ACTOR_FLAG_ENABLED | ACTOR_FLAG_ONSCREEN_ONLY, // ACTORTYPE_ZERO
    ACTOR_FLAG_ENABLED, // ACTORTYPE_1,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_2,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_3,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_4,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_5,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_DIZZYSTAR,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_AFTERIMAGE,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_GEM,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_PARTICLE,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_10,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_11,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_12,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_13,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_14,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_15,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_16,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_17,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_18,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_19,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_20,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_3DICON,
    ACTOR_FLAG_PLATFORM1 | ACTOR_FLAG_UNK16 | ACTOR_FLAG_UNK12 | ACTOR_FLAG_UNK8 | ACTOR_FLAG_ENABLED, // ACTORTYPE_MARINA,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_23,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANPOT,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_25,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_26,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_27,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBALL_28,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_GRAPHICONLY,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_30,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_31,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_32,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_33,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_34,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_LANDMINE,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_36,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_37,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_38,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_PORTRAIT,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_40,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_41,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_42,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_43,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_44,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_45,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_MARINAAFTERIMAGE,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_47,
    ACTOR_FLAG_PLATFORM0 | ACTOR_FLAG_ENABLED, // ACTORTYPE_48,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_49,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_WARPGATE,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_51,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_52,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_TEXTBUBBLE,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_54,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_55,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_PARTICLE56,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_57,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_58,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_59,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_60,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_GEM61,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBALLWHEEL,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_63,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_64,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_65,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBALLSPRING,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_FLOWER,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_HAT,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBOMB,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_70,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_71,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_TANKCAT,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_S,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_H,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_V,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_O,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_77,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_78,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_O2,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_80,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_81,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_SPIKEBALL_82,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_83,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANCER_84,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANCER_85,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANCER_86,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_DIGGINGSPOT,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBLOCK_88,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_89,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_REDBLOCKBOOM,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANCER_91,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_92,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_93,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_94,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANBLOB,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_96,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANBALL_RAIL,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_98,
    ACTOR_FLAG_ENABLED, // ACTORTYPE_CLANCERGHOST,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_100,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_101,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_GEMICON,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_GHOSTICON,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANPOTICON,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANCERICON,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_106,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_AREACLEAR,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_108,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_109,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_110,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_111,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_MARINAOHNO,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CROSSHAIR,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_114,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_115,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_STAGECLEAR,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_LEVELCLEAR,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_ITEMSPAWN,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANCER_119,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANPOTMIX,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_CLANPOTMENU,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_MSHINT,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_GEMRING,
    ACTOR_FLAG_ACTIVE, // ACTORTYPE_GEM124,
};

s16* gActorInitGraphics[]={
    gGraphicListBlank, // ACTORTYPE_ZERO,
    gGraphicListBlank, // ACTORTYPE_1,
    gGraphicListBlank, // ACTORTYPE_2,
    gGraphicListBlank, // ACTORTYPE_3,
    gGraphicListBlank, // ACTORTYPE_4,
    gGraphicListBlank, // ACTORTYPE_5,
    gGraphicListBlank, // ACTORTYPE_DIZZYSTAR,
    gGraphicListBlank, // ACTORTYPE_AFTERIMAGE,
    gGraphicListBlank, // ACTORTYPE_GEM,
    gGraphicListBlank, // ACTORTYPE_PARTICLE,
    gGraphicListBlank, // ACTORTYPE_10,
    gGraphicListBlank, // ACTORTYPE_11,
    gGraphicListBlank, // ACTORTYPE_12,
    gGraphicListBlank, // ACTORTYPE_13,
    gGraphicListBlank, // ACTORTYPE_14,
    gGraphicListBlank, // ACTORTYPE_15,
    gGraphicListBlank, // ACTORTYPE_16,
    gGraphicListBlank, // ACTORTYPE_17,
    gGraphicListBlank, // ACTORTYPE_18,
    gGraphicListBlank, // ACTORTYPE_19,
    gGraphicListBlank, // ACTORTYPE_20,
    gGraphicListBlank, // ACTORTYPE_3DICON,
    gGraphicListBlank, // ACTORTYPE_MARINA,
    gGraphicListBlank, // ACTORTYPE_23,
    gGraphicListBlank, // ACTORTYPE_CLANPOT,
    gGraphicListBlank, // ACTORTYPE_25,
    gGraphicListBlank, // ACTORTYPE_26,
    gGraphicListBlank, // ACTORTYPE_27,
    D_800E2550, // ACTORTYPE_CLANBALL_28,
    gGraphicListBlank, // ACTORTYPE_GRAPHICONLY,
    gGraphicListBlank, // ACTORTYPE_30,
    gGraphicListBlank, // ACTORTYPE_31,
    gGraphicListBlank, // ACTORTYPE_32,
    gGraphicListBlank, // ACTORTYPE_33,
    gGraphicListBlank, // ACTORTYPE_34,
    gGraphicListBlank, // ACTORTYPE_LANDMINE,
    gGraphicListBlank, // ACTORTYPE_36,
    gGraphicListBlank, // ACTORTYPE_37,
    gGraphicListBlank, // ACTORTYPE_38,
    gGraphicListBlank, // ACTORTYPE_PORTRAIT,
    gGraphicListBlank, // ACTORTYPE_40,
    gGraphicListBlank, // ACTORTYPE_41,
    gGraphicListBlank, // ACTORTYPE_42,
    gGraphicListBlank, // ACTORTYPE_43,
    gGraphicListBlank, // ACTORTYPE_44,
    gGraphicListBlank, // ACTORTYPE_45,
    gGraphicListBlank, // ACTORTYPE_MARINAAFTERIMAGE,
    gGraphicListBlank, // ACTORTYPE_47,
    gGraphicListBlank, // ACTORTYPE_48,
    gGraphicListBlank, // ACTORTYPE_49,
    gGraphicListBlank, // ACTORTYPE_WARPGATE,
    gGraphicListBlank, // ACTORTYPE_51,
    gGraphicListBlank, // ACTORTYPE_52,
    gGraphicListBlank, // ACTORTYPE_TEXTBUBBLE,
    gGraphicListBlank, // ACTORTYPE_54,
    gGraphicListBlank, // ACTORTYPE_55,
    gGraphicListBlank, // ACTORTYPE_PARTICLE56,
    gGraphicListBlank, // ACTORTYPE_57,
    gGraphicListBlank, // ACTORTYPE_58,
    gGraphicListBlank, // ACTORTYPE_59,
    gGraphicListBlank, // ACTORTYPE_60,
    gGraphicListBlank, // ACTORTYPE_GEM61,
    gGraphicListBlank, // ACTORTYPE_CLANBALLWHEEL,
    D_800E2550, // ACTORTYPE_63,
    D_800E2550, // ACTORTYPE_64,
    gGraphicListBlank, // ACTORTYPE_65,
    gGraphicListBlank, // ACTORTYPE_CLANBALLSPRING,
    gGraphicListBlank, // ACTORTYPE_FLOWER,
    gGraphicListBlank, // ACTORTYPE_HAT,
    gGraphicListBlank, // ACTORTYPE_CLANBOMB,
    gGraphicListBlank, // ACTORTYPE_70,
    gGraphicListBlank, // ACTORTYPE_71,
    gGraphicListBlank, // ACTORTYPE_TANKCAT,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_S,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_H,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_V,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_O,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_77,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_78,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_O2,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_80,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_81,
    gGraphicListBlank, // ACTORTYPE_SPIKEBALL_82,
    gGraphicListBlank, // ACTORTYPE_83,
    gGraphicListBlank, // ACTORTYPE_CLANCER_84,
    gGraphicListBlank, // ACTORTYPE_CLANCER_85,
    gGraphicListBlank, // ACTORTYPE_CLANCER_86,
    gGraphicListBlank, // ACTORTYPE_DIGGINGSPOT,
    gGraphicListBlank, // ACTORTYPE_CLANBLOCK_88,
    gGraphicListBlank, // ACTORTYPE_89,
    gGraphicListBlank, // ACTORTYPE_REDBLOCKBOOM,
    gGraphicListBlank, // ACTORTYPE_CLANCER_91,
    gGraphicListBlank, // ACTORTYPE_92,
    gGraphicListBlank, // ACTORTYPE_93,
    gGraphicListBlank, // ACTORTYPE_94,
    gGraphicListBlank, // ACTORTYPE_CLANBLOB,
    gGraphicListBlank, // ACTORTYPE_96,
    gGraphicListBlank, // ACTORTYPE_CLANBALL_RAIL,
    gGraphicListBlank, // ACTORTYPE_98,
    D_800E1450, // ACTORTYPE_CLANCERGHOST,
    gGraphicListBlank, // ACTORTYPE_100,
    gGraphicListBlank, // ACTORTYPE_101,
    gGraphicListBlank, // ACTORTYPE_GEMICON,
    D_800E1450, // ACTORTYPE_GHOSTICON,
    gGraphicListBlank, // ACTORTYPE_CLANPOTICON,
    gGraphicListBlank, // ACTORTYPE_CLANCERICON,
    gGraphicListBlank, // ACTORTYPE_106,
    gGraphicListBlank, // ACTORTYPE_AREACLEAR,
    gGraphicListBlank, // ACTORTYPE_108,
    gGraphicListBlank, // ACTORTYPE_109,
    gGraphicListBlank, // ACTORTYPE_110,
    gGraphicListBlank, // ACTORTYPE_111,
    gGraphicListBlank, // ACTORTYPE_MARINAOHNO,
    gGraphicListBlank, // ACTORTYPE_CROSSHAIR,
    gGraphicListBlank, // ACTORTYPE_114,
    gGraphicListBlank, // ACTORTYPE_115,
    gGraphicListBlank, // ACTORTYPE_STAGECLEAR,
    gGraphicListBlank, // ACTORTYPE_LEVELCLEAR,
    gGraphicListBlank, // ACTORTYPE_ITEMSPAWN,
    gGraphicListBlank, // ACTORTYPE_CLANCER_119,
    gGraphicListBlank, // ACTORTYPE_CLANPOTMIX,
    gGraphicListBlank, // ACTORTYPE_CLANPOTMENU,
    gGraphicListBlank, // ACTORTYPE_MSHINT,
    gGraphicListBlank, // ACTORTYPE_GEMRING,
    gGraphicListBlank, // ACTORTYPE_GEM124,
};

extern u16* D_8013776C;

void func_8001DBA0(u16* arg0, u16 actor_index) {
    gActors[actor_index].actorType = arg0[5];
    Actor_Initialize(actor_index);
    gActors[actor_index].posX.whole = arg0[1] - gScreenPosCurrentX.whole;
    gActors[actor_index].posY.whole = arg0[2] - gScreenPosCurrentY.whole;
    gActors[actor_index].var_110 = arg0[3];
    gActors[actor_index].var_0D8 = arg0[4];
}

void func_8001DC60(void) {
    u16 x_min;
    u16 x_max;
    u16 y_min;
    u16 y_max;
    u16 pos_y;
    u16 pos_x;
    u16 actor_index;
    u16* vals;

    x_min = (gScreenPosCurrentX.whole - 0xD0);
    x_max = (gScreenPosCurrentX.whole + 0xD0);
    y_min = (gScreenPosCurrentY.whole - 0xA0);
    y_max = (gScreenPosCurrentY.whole + 0xA0);
    if (D_800BE664 != 0) {
        for (vals = D_8013776C; vals[0] != 0xFFFF; vals += 6) {
            pos_y = vals[2];
            if (y_max < pos_y) {
                continue;
            }
            if (pos_y < y_min) {
                break;
            }
            pos_x = vals[1];
            if (pos_x < x_min) {
                continue;
            }
            if (x_max < pos_x) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
    }
    else {
        for (vals = D_8013776C; vals[0] != 0xFFFF; vals += 6) {
            pos_x = vals[1];
            if (pos_x < x_min) {
                continue;
            }
            if (x_max < pos_x) {
                break;
            }
            pos_y = vals[2];
            if (pos_y < y_min) {
                continue;
            }
            if (y_max < pos_y) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
    }
}

void func_8001DE30(void) {
    u16* vals;
    u16 x_min_0;
    u16 x_min_1;
    u16 x_max_1;
    u16 x_max_0;
    u16 y_min_0;
    u16 y_max_0;
    u16 y_min_1;
    u16 y_max_1;
    u16 actor_index;
    u16 pos_x;
    u16 pos_y;

    if (D_800BE664 != 0) {
        x_min_0 = gScreenPosCurrentX.whole - 0xD0;
        x_min_1 = gScreenPosCurrentX.whole - 0xB0;
        x_max_1 = gScreenPosCurrentX.whole + 0xB0;
        x_max_0 = gScreenPosCurrentX.whole + 0xD0;
        y_min_0 = gScreenPosCurrentY.whole - 0xA0;
        y_min_1 = gScreenPosCurrentY.whole - 0x80;
        y_max_1 = gScreenPosCurrentY.whole + 0x80;
        y_max_0 = gScreenPosCurrentY.whole + 0xA0;
        for (vals = D_8013776C; vals[0] != 0xFFFF; vals += 6) {
            pos_y = vals[2];
            if (y_max_0 < pos_y) {
                continue;
            }
            if (pos_y < y_max_1) {
                break;
            }
            pos_x = vals[1];
            if ((pos_x < x_min_0) || (x_max_0 < pos_x)) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
        
        for (; vals[0] != 0xFFFF; vals += 6) {
            pos_y = vals[2];
            if (pos_y < y_min_1) {
                break;
            }
            pos_x = vals[1];
            if ((pos_x < x_min_0) || (x_max_0 < pos_x)) {
                continue;
            }
            actor_index = vals[0];
            if ((x_min_1 < pos_x) && (pos_x < x_max_1)) {
                continue;
            }
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
            if (y_max_0) {} // fakematch
        }
        
        for (; vals[0] != 0xFFFF; vals += 6) {
            pos_y = vals[2];
            if (pos_y < y_min_0) {
                break;
            }
            pos_x = vals[1];
            if ((pos_x < x_min_0) || (x_max_0 < pos_x)) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
    }
    else {
        x_min_0 = gScreenPosCurrentX.whole - 0xD0;
        x_min_1 = gScreenPosCurrentX.whole - 0xB0;
        x_max_1 = gScreenPosCurrentX.whole + 0xB0;
        x_max_0 = gScreenPosCurrentX.whole + 0xD0;
        y_min_0 = gScreenPosCurrentY.whole - 0xA0;
        y_min_1 = gScreenPosCurrentY.whole - 0x80;
        y_max_1 = gScreenPosCurrentY.whole + 0x80;
        y_max_0 = gScreenPosCurrentY.whole + 0xA0;

        for (vals = D_8013776C; vals[0] != 0xFFFF; vals += 6) {
            pos_x = vals[1];
            if (pos_x < x_min_0){
                continue;
            }
            if (x_min_1 < pos_x) {
                break;
            }
            pos_y = vals[2];
            if ((pos_y < y_min_0) || (y_max_0 < pos_y)) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
        for (; vals[0] != 0xFFFF; vals += 6) {
            pos_x = vals[1];
            if (x_max_1 < pos_x) {
                break;
            }
            pos_y = vals[2];
            if ((pos_y < y_min_0) || (y_max_0 < pos_y)) {
                continue;
            }
            actor_index = vals[0];
            if ((y_min_1 < pos_y) && (pos_y < y_max_1)) {
                continue;
            }
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
            if (x_min_0) {} // fakematch
        }
        
        for (; vals[0] != 0xFFFF; vals += 6) {
            pos_x = vals[1];
            if (x_max_0 < pos_x) {
                break;
            }
            pos_y = vals[2];
            if ((pos_y < y_min_0) || (y_max_0 < pos_y)) {
                continue;
            }
            actor_index = vals[0];
            if (gActors[actor_index].flags == 0) {
                func_8001DBA0(vals, actor_index);
            }
        }
    }
}

// Thanks to inspectredc for helping with this one!
DEFAULT_INT Actor_Initialize(u16 actor_index) {
    u16 type_table_index;

    type_table_index = gActors[actor_index].actorType * 7;

    if (gActors[actor_index].actorType < 0x100) {
        gActors[actor_index].hitboxAX0 = -gActorInitStats[type_table_index + 0];
        gActors[actor_index].hitboxAY1 = -gActorInitStats[type_table_index + 1];
        gActors[actor_index].hitboxBX0 = -gActorInitStats[type_table_index + 2];
        gActors[actor_index].hitboxBY1 = -gActorInitStats[type_table_index + 3];

        gActors[actor_index].hitboxAX1 = gActorInitStats[type_table_index + 0];
        gActors[actor_index].hitboxAY0 = gActorInitStats[type_table_index + 1];
        gActors[actor_index].hitboxBX1 = gActorInitStats[type_table_index + 2];
        gActors[actor_index].hitboxBY0 = gActorInitStats[type_table_index + 3];

        gActors[actor_index].health = gActorInitStats[type_table_index + 4];
        gActors[actor_index].damage = gActorInitStats[type_table_index + 5];

        gActors[actor_index].flags = gActorInitFlags[gActors[actor_index].actorType];
        gActors[actor_index].graphicList = gActorInitGraphics[gActors[actor_index].actorType];
    }
    else {
        gActors[actor_index].hitboxAX0 = -16;
        gActors[actor_index].hitboxAX1 = 16;
        gActors[actor_index].hitboxAY0 = 16;
        gActors[actor_index].hitboxAY1 = -16;
        gActors[actor_index].hitboxBX0 = -16;
        gActors[actor_index].hitboxBX1 = 16;
        gActors[actor_index].hitboxBY0 = 16;
        gActors[actor_index].hitboxBY1 = -16;
        gActors[actor_index].health = 10;
        gActors[actor_index].damage = 10;
        gActors[actor_index].flags = ACTOR_FLAG_ENABLED;
        gActors[actor_index].graphicList = gGraphicListBlank;
    }

    gActors[actor_index].colorA = 0xFF;
    gActors[actor_index].scaleY = gActors[actor_index].scaleX = 1.0f;
    gActors[actor_index].graphicTimer = 1;
    gActors[actor_index].unk_0DE = 1;

    gActors[actor_index].graphicIndex =
    gActors[actor_index].posX.frac =
    gActors[actor_index].posY.frac =
    gActors[actor_index].posZ.raw =
    gActors[actor_index].graphicFlags =
    gActors[actor_index].flags_098 =
    gActors[actor_index].colorR =
    gActors[actor_index].colorG =
    gActors[actor_index].colorB =
    gActors[actor_index].unk_0A0 =
    gActors[actor_index].rotateX =
    gActors[actor_index].rotateY =
    gActors[actor_index].rotateZ =
    gActors[actor_index].unk_0C8 =
    gActors[actor_index].unk_0CA =
    gActors[actor_index].unk_0CC =
    gActors[actor_index].unk_0CE =
    gActors[actor_index].state =
    gActors[actor_index].iFrames =
    gActors[actor_index].parentIndex =
    gActors[actor_index].unk_0DA =
    gActors[actor_index].unk_0DB =
    gActors[actor_index].unk_0DC =
    gActors[actor_index].unk_0DD =
    gActors[actor_index].unk_0DF =
    gActors[actor_index].pendingDamage =
    gActors[actor_index].velocityX.raw =
    gActors[actor_index].velocityY.raw =
    gActors[actor_index].velocityZ.raw =
    gActors[actor_index].unk_0F8.raw =
    gActors[actor_index].unk_0FC.raw =
    gActors[actor_index].unk_100 =
    gActors[actor_index].unk_104 =
    gActors[actor_index].unk_108 =
    gActors[actor_index].unk_10C =
    gActors[actor_index].var_110 =
    gActors[actor_index].unk_114 =
    gActors[actor_index].unk_118 =
    gActors[actor_index].unk_11C =
    gActors[actor_index].unk_120 =
    gActors[actor_index].unk_124 =
    gActors[actor_index].unk_128 =
    gActors[actor_index].unk_12C =
    gActors[actor_index].unk_130 =
    gActors[actor_index].unk_134 =
    gActors[actor_index].unk_138 =
    gActors[actor_index].unk_13C_f32 =
    gActors[actor_index].unk_140_f32 =
    gActors[actor_index].unk_144 =
    gActors[actor_index].unk_148 =
    gActors[actor_index].unk_14C =
    gActors[actor_index].var_150 =
    gActors[actor_index].var_154 =
    gActors[actor_index].var_158 =
    gActors[actor_index].var_15C =
    gActors[actor_index].var_160 =
    gActors[actor_index].unk_164 =
    gActors[actor_index].unk_168 =
    gActors[actor_index].unk_16C =
    gActors[actor_index].unk_170 =
    gActors[actor_index].unk_174 =
    gActors[actor_index].unk_178 =
    gActors[actor_index].unk_17C =
    gActors[actor_index].unk_180 =
    gActors[actor_index].unk_184 =
    gActors[actor_index].unk_188 =
    gActors[actor_index].unk_18C =
    gActors[actor_index].unk_190 = 0;
}
