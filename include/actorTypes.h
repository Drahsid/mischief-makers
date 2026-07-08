#ifndef ACTOR_TYPES_H
#define ACTOR_TYPES_H

// an ongoing list of identified actor types.
// those with a number >=0x100 are part of an overlay.

// indecies of actor overlays.
// save for the first entry, they should be marked as:
// ACTOR_OVL#_[ABREV] where # is the overlay space used,
// and [ABREV] is an abreviation of their context.
// or the number in place if context isn't certain.
// example, for actors used in "Cerberus Alpha's" overlay 0 code
// the entry here should be "ACTOR_OVL0_CALPHA"
// and the first actor in the dispatch table should use the number
// (ACTOR_OVL0_CALPHA << 8).
typedef enum {
    ACTOR_MAIN, // actors with code in the main segment.
    ACTOR_OVL3_1,
    ACTOR_OVL1_WORM,
    ACTOR_OVL1_DOG,
    ACTOR_OVL3_4,
    ACTOR_OVL3_WORLD2,
    ACTOR_OVL0_MIGEN,
    ACTOR_OVL3_7,
    ACTOR_MAIN_8, // a secondary dispatch table in the main segment.
    ACTOR_OVL1_GEN, // actors in Overlay 0 code for many stages.
    ACTOR_OVL1_10,
    ACTOR_OVL1_11,
    ACTOR_OVL1_BEE, // "Overlay 1" actors for "flambee"
    ACTOR_OVL1_13,
    ACTOR_OVL3_14,
    ACTOR_OVL0_CALPHA, // actors in Overlay 0 code of "Cerberus Alpha" 
    ACTOR_OVL0_WORLD1, // Commander and stubbed actor in "Meet Marina"
    ACTOR_OVL1_MOLE, // "Overlay 1" actors for "Moley Cow"
    ACTOR_OVL1_18,
    ACTOR_OVL1_19,
    ACTOR_OVL0_SBETA, // actors in Overlay 0 code of "Sasquatch Beta" 
    ACTOR_OVL0_21,
    ACTOR_OVL0_FINALBAT, // actors in Overlay 0 Code for "Final Battle"
    ACTOR_OVL2_23,
    ACTOR_OVL2_WORLD1, // "Overlay 2" actors for many of World 1's stages
    ACTOR_OVL0_25,
    ACTOR_OVL2_FESTIVAL,
    ACTOR_OVL3_WORLD3,
    ACTOR_OVL2_WORLD3,
    ACTOR_OVL2_WORLD4,
    ACTOR_OVL2_30,
    ACTOR_OVL2_31,
    ACTOR_OVL2_STAGE_5_5, // actors in Overlay 2 code of "Trapped!?"
    ACTOR_OVL0_33,
    ACTOR_OVL0_34,
    ACTOR_OVL0_35,
    ACTOR_OVL0_36,
    ACTOR_OVL2_STAGE_2_1, // actors in Overlay 2 code of "Sea of Lava"
    ACTOR_OVL0_GEN, // actors in Overlay 0 code for the majority of stages.
    ACTOR_OVL3_39,
    ACTOR_OVL3_40,
    ACTOR_OVL3_WORLD5B,
    ACTOR_OVL3_42,
    ACTOR_OVL0_INTRO, // actors in Overlay 0 code of intro cinematic.
    ACTOR_OVL0_ENDING // actors in Overlay 0 code of Ending.
} ActorOverlayIDs;


typedef enum {
    // actors in main code segment

    ACTORTYPE_ZERO = (ACTOR_MAIN << 8), // used for images. has a stubbed "tick" function.
    ACTORTYPE_1, // HitboxA changes size over time, based on 0x110.
    ACTORTYPE_2, // Essentially Stubbed
    ACTORTYPE_3, // Stubbed
    ACTORTYPE_4, // Stubbed
    ACTORTYPE_5, // has "spawn" that goes unused.
    ACTORTYPE_DIZZYSTAR, // stars when a Clancer is KO'd.
    ACTORTYPE_AFTERIMAGE, // spawns an after-image of an actor behind it.
    ACTORTYPE_GEM, // gem actor.
    ACTORTYPE_PARTICLE, // moving sprites.
    ACTORTYPE_10, // Stubbed
    ACTORTYPE_11,
    ACTORTYPE_12,
    ACTORTYPE_13,
    ACTORTYPE_14,
    ACTORTYPE_15,
    ACTORTYPE_16,
    ACTORTYPE_17, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_18, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_19, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_20, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_3DICON, // used in Sound Test menu.
    ACTORTYPE_MARINA, // player character.
    ACTORTYPE_23, // Stubbed
    ACTORTYPE_CLANPOT,
    ACTORTYPE_25, // Stubbed
    ACTORTYPE_26, // Stubbed
    ACTORTYPE_27, // Stubbed
    ACTORTYPE_CLANBALL_28, // default clanball
    ACTORTYPE_GRAPHICONLY, // like with ACTORTYPE_ZERO, a stubbed actor used for graphics.
    ACTORTYPE_30, // Stubbed
    ACTORTYPE_31,
    ACTORTYPE_32,
    ACTORTYPE_33,
    ACTORTYPE_34,
    ACTORTYPE_LANDMINE,
    ACTORTYPE_36,
    ACTORTYPE_37,
    ACTORTYPE_38,
    ACTORTYPE_PORTRAIT,
    ACTORTYPE_40,
    ACTORTYPE_41,
    ACTORTYPE_42,
    ACTORTYPE_43,
    ACTORTYPE_44,
    ACTORTYPE_45,
    ACTORTYPE_MARINAAFTERIMAGE, // when marina dashes. Has unused alternate version.
    ACTORTYPE_47,
    ACTORTYPE_48,
    ACTORTYPE_49,
    ACTORTYPE_WARPGATE, // aka Warp Star
    ACTORTYPE_51,
    ACTORTYPE_52,
    ACTORTYPE_TEXTBUBBLE, // used many times in Japan version. in English versions, only used by the coach in "the day before".
    ACTORTYPE_54,
    ACTORTYPE_55,
    ACTORTYPE_PARTICLE56, // a "child class" of ACTORTYPE_PARTICLE. extended behavior.
    ACTORTYPE_57,
    ACTORTYPE_58,
    ACTORTYPE_59,
    ACTORTYPE_60,
    ACTORTYPE_GEM61, // same behavior as ACTORTYPE_GEM, but with a different graphic flag set.
    ACTORTYPE_CLANBALLWHEEL,
    ACTORTYPE_63,
    ACTORTYPE_64,
    ACTORTYPE_65,
    ACTORTYPE_CLANBALLSPRING,
    ACTORTYPE_FLOWER, // flowers with a slow, sine-wave fall.
    ACTORTYPE_HAT, // hats worn by clancers
    ACTORTYPE_CLANBOMB,
    ACTORTYPE_70,
    ACTORTYPE_71,
    ACTORTYPE_TANKCAT,
    ACTORTYPE_SPIKEBALL_S, // stationary spikeball
    ACTORTYPE_SPIKEBALL_H, // Left/Right spikeball
    ACTORTYPE_SPIKEBALL_V, // up/down spikeball
    ACTORTYPE_SPIKEBALL_O, // XY orbital spikeball
    ACTORTYPE_SPIKEBALL_77,
    ACTORTYPE_SPIKEBALL_78,
    ACTORTYPE_SPIKEBALL_O2, // YZ orbital spikeball
    ACTORTYPE_SPIKEBALL_80,
    ACTORTYPE_SPIKEBALL_81,
    ACTORTYPE_SPIKEBALL_82,
    ACTORTYPE_83, // stubbed
    ACTORTYPE_CLANCER_84,
    ACTORTYPE_CLANCER_85,
    ACTORTYPE_CLANCER_86,
    ACTORTYPE_DIGGINGSPOT, // grab the ground for treasures.
    ACTORTYPE_CLANBLOCK_88,
    ACTORTYPE_89,
    ACTORTYPE_REDBLOCKBOOM, // start of destruction trail for red clanblocks
    ACTORTYPE_CLANCER_91,
    ACTORTYPE_92,
    ACTORTYPE_93,
    ACTORTYPE_94,
    ACTORTYPE_CLANBLOB,
    ACTORTYPE_96,
    ACTORTYPE_CLANBALL_RAIL, // clanball on rail track.
    ACTORTYPE_98,
    ACTORTYPE_CLANCERGHOST,
    ACTORTYPE_100,
    ACTORTYPE_101,
    ACTORTYPE_GEMICON, // clanpot icon for gems.
    ACTORTYPE_GHOSTICON, // clanpot icon for Clancer Ghosts.
    ACTORTYPE_CLANPOTICON, // clanpot icon for items.
    ACTORTYPE_CLANCERICON, // clanpot icon is the appropriate clancer.
    ACTORTYPE_106,
    ACTORTYPE_AREACLEAR, // "Get out of trouble!" "Go to the next area!"
    ACTORTYPE_108,
    ACTORTYPE_109, // Calina's staff during transformation?
    ACTORTYPE_110,
    ACTORTYPE_111,
    ACTORTYPE_MARINAOHNO, // spawns when hit by boulder in "Rolling Rock". says "Oh, no!" and falls.
    ACTORTYPE_CROSSHAIR, // Crosshair appearing over actors for a second. Arrows can be toggled.
    ACTORTYPE_114,
    ACTORTYPE_115,
    ACTORTYPE_STAGECLEAR, // actors for the "stage clear" animation.
    ACTORTYPE_LEVELCLEAR, // actors for the "level clear" animation.
    ACTORTYPE_ITEMSPAWN,
    ACTORTYPE_CLANCER_119,
    ACTORTYPE_CLANPOTMIX, // sequence for mixing clanpot items.
    ACTORTYPE_CLANPOTMENU, // mwnu when looking into clanpot.
    ACTORTYPE_MSHINT, // Ms. Hint
    ACTORTYPE_GEMRING, // Ring of gems when buying hint or recieving reward.
    ACTORTYPE_GEM124, // gem in "Enter Marina" and "Crisis: Nepton" ?
    
    // actors in dispatch table D_8019B000_73D070

    ACTORTYPE_OVL1_WORM_BOSS = (ACTOR_OVL1_WORM << 8), // Worm Boss.
    ACTORTYPE_OVL1_WORM_1,
    ACTORTYPE_OVL1_WORM_2, // stubbed
    ACTORTYPE_OVL1_WORM_3, // stubbed
    ACTORTYPE_OVL1_WORM_4, // stubbed
    ACTORTYPE_OVL1_WORM_5, // stubbed
    ACTORTYPE_OVL1_WORM_6, // stubbed

    // actors in dispatch table D_8019B000_749C90

    ACTORTYPE_OVL1_DOG_BOSS = (ACTOR_OVL1_DOG << 8), // Dog Boss.
    ACTORTYPE_OVL1_DOG_1,
    ACTORTYPE_OVL1_DOG_2,  // stubbed
    ACTORTYPE_OVL1_DOG_3,  // stubbed
    ACTORTYPE_OVL1_DOG_4,  // stubbed

    // actors in dispatch table D_801B0800_7986D0

    ACTORTYPE_OVL3_W2_CLANCERSWING = (ACTOR_OVL3_WORLD2 << 8),
    ACTORTYPE_OVL3_W2_1,
    ACTORTYPE_OVL3_W2_CLANCER_2, // shuriken-throwing clancers in "Sink or Float"
    ACTORTYPE_OVL3_W2_3, // stubbed
    ACTORTYPE_OVL3_W2_4, // stubbed
    ACTORTYPE_OVL3_W2_5, // stubbed
    ACTORTYPE_OVL3_W2_6, // stubbed
    ACTORTYPE_OVL3_W2_7, // stubbed
    ACTORTYPE_OVL3_W2_3DPLATFROM_8, // platforms in vertical stages
    ACTORTYPE_OVL3_W2_3DPLATFORM_9,
    ACTORTYPE_OVL3_W2_SPIKEBALLGEN, // generates ACTORTYPE_OVL3_W2_SPIKEBALL_11 in "Seasick Climb"
    ACTORTYPE_OVL3_W2_SPIKEBALL_11,
    ACTORTYPE_OVL3_W2_12,
    ACTORTYPE_OVL3_W2_13,
    ACTORTYPE_OVL3_W2_14,
    ACTORTYPE_OVL3_W2_15,
    ACTORTYPE_OVL3_W2_16,
    ACTORTYPE_OVL3_W2_17,
    ACTORTYPE_OVL3_W2_18,
    ACTORTYPE_OVL3_W2_19,
    ACTORTYPE_OVL3_W2_20,
    ACTORTYPE_OVL3_W2_3DPLATFORM_21, // static 3D platform
    ACTORTYPE_OVL3_W2_3DPLATFORM_22, // sinking 3D platforms
    ACTORTYPE_OVL3_W2_23,
    ACTORTYPE_OVL3_W2_24,
    ACTORTYPE_OVL3_W2_25,

    // actors in dispatch table D_80192000_67DBA0

    ACTORTYPE_OVL0_MIGEN_JRMAIN = (ACTOR_OVL0_MIGEN << 8), // main Migen Jr actor
    ACTORTYPE_OVL0_MIGEN_1,
    ACTORTYPE_OVL0_MIGEN_THEO,
    ACTORTYPE_OVL0_MIGEN_3, // stubbed
    ACTORTYPE_OVL0_MIGEN_SRMAIN, // main Migen Sr. behavior
    ACTORTYPE_OVL0_MIGEN_5, // stubbed
    ACTORTYPE_OVL0_MIGEN_SRBALL,
    ACTORTYPE_OVL0_MIGEN_PLATFORM, // platform for fight
    ACTORTYPE_OVL0_MIGEN_8,
    ACTORTYPE_OVL0_MIGEN_JRFIREBALL,
    ACTORTYPE_OVL0_MIGEN_10,
    ACTORTYPE_OVL0_MIGEN_GEM, // gem Migen Sr uses to heal son.
    ACTORTYPE_OVL0_MIGEN_12, // stubbed

    // 13-21 like invalid entries.

    ACTORTYPE_OVL0_MIGEN_22 = (ACTOR_OVL0_MIGEN << 8) + 22,
    ACTORTYPE_OVL0_MIGEN_23,
    ACTORTYPE_OVL0_MIGEN_24,
    ACTORTYPE_OVL0_MIGEN_25,
    ACTORTYPE_OVL0_MIGEN_26,
    ACTORTYPE_OVL0_MIGEN_27,
    ACTORTYPE_OVL0_MIGEN_28,

    // actors in dispatch table D_800E5AC0

    ACTORTYPE_MAIN8_0 = (ACTOR_MAIN_8 << 8),
    ACTORTYPE_MAIN8_1,
    ACTORTYPE_MAIN8_2,
    ACTORTYPE_MAIN8_3,
    ACTORTYPE_MAIN8_4,
    ACTORTYPE_MAIN8_5, // stubbed
    ACTORTYPE_MAIN8_6,
    ACTORTYPE_MAIN8_7,
    ACTORTYPE_MAIN8_8,
    ACTORTYPE_MAIN8_9,
    ACTORTYPE_MAIN8_10,
    ACTORTYPE_MAIN8_11,
    ACTORTYPE_MAIN8_12, // stubbed

    // actors in dispatch table D_8019B000_731DD0

    ACTORTYPE_OVL1_GEN_WALKER = (ACTOR_OVL1_GEN << 8), // walker mech
    ACTORTYPE_OVL1_GEN_ROCKETEER,
    ACTORTYPE_OVL1_GEN_HOVERCRAFT,
    ACTORTYPE_OVL1_GEN_TREADS, // clancer with treads for legs and guns for arms
    ACTORTYPE_OVL1_GEN_4,
    ACTORTYPE_OVL1_GEN_5,
    ACTORTYPE_OVL1_GEN_6,
    ACTORTYPE_OVL1_GEN_POGO, // Jump/"Pogo" clancer
    ACTORTYPE_OVL1_GEN_8,
    ACTORTYPE_OVL1_GEN_9,
    ACTORTYPE_OVL1_GEN_10,
    ACTORTYPE_OVL1_GEN_11,
    ACTORTYPE_OVL1_GEN_GUN, // rifle or missle launcher
    ACTORTYPE_OVL1_GEN_GUNMISSLE,
    ACTORTYPE_OVL1_GEN_GUNBULLET,
    ACTORTYPE_OVL1_GEN_15, // stubbed
    ACTORTYPE_OVL1_GEN_16,
    ACTORTYPE_OVL1_GEN_17,
    ACTORTYPE_OVL1_GEN_18,
    ACTORTYPE_OVL1_GEN_19,
    ACTORTYPE_OVL1_GEN_20,
    ACTORTYPE_OVL1_GEN_21,
    ACTORTYPE_OVL1_GEN_22,

    // 23-31 are likely invalid.
    
    ACTORTYPE_OVL1_GEN_32 = (ACTOR_OVL1_GEN << 8) + 32,
    ACTORTYPE_OVL1_GEN_33,
    ACTORTYPE_OVL1_GEN_34,

    // actors in dispatch table D_8019B000_742CA0
    
    ACTORTYPE_OVL1_BEE_BOSS = (ACTOR_OVL1_BEE << 8), // bee boss
    ACTORTYPE_OVL1_BEE_1,
    ACTORTYPE_OVL1_BEE_DRONESHAKE, // bee drone spawned when shaking head
    ACTORTYPE_OVL1_BEE_DRONERING, // bee drone spawned in ring formation.

    // actors in dispatch table D_80192000_68A090

    ACTORTYPE_OVL0_CALPHA_0 = (ACTOR_OVL0_CALPHA << 8),
    ACTORTYPE_OVL0_CALPHA_1,
    ACTORTYPE_OVL0_CALPHA_2, 
    ACTORTYPE_OVL0_CALPHA_3,
    ACTORTYPE_OVL0_CALPHA_4,
    ACTORTYPE_OVL0_CALPHA_5,
    ACTORTYPE_OVL0_CALPHA_6,
    ACTORTYPE_OVL0_CALPHA_7,
    ACTORTYPE_OVL0_CALPHA_8,
    ACTORTYPE_OVL0_CALPHA_9,
    ACTORTYPE_OVL0_CALPHA_10,
    ACTORTYPE_OVL0_CALPHA_11,
    ACTORTYPE_OVL0_CALPHA_12,
    ACTORTYPE_OVL0_CALPHA_13,
    ACTORTYPE_OVL0_CALPHA_14,
    ACTORTYPE_OVL0_CALPHA_15,
    ACTORTYPE_OVL0_CALPHA_16,
    ACTORTYPE_OVL0_CALPHA_17,
    ACTORTYPE_OVL0_CALPHA_18,
    ACTORTYPE_OVL0_CALPHA_19,
    ACTORTYPE_OVL0_CALPHA_20,
    
    //entries 21, 22, and 23 invalid(?)
    
    ACTORTYPE_OVL0_CALPHA_24 = (ACTOR_OVL0_CALPHA << 8) + 24,
    ACTORTYPE_OVL0_CALPHA_25,
    ACTORTYPE_OVL0_CALPHA_26,
    ACTORTYPE_OVL0_CALPHA_27,

    // actors in disptch table D_80192000_6D1BF0
    
    ACTORTYPE_OVL0_W1_CMDR = (ACTOR_OVL0_WORLD1 << 8), // commander in "Meet Marina" intro
    ACTORTYPE_OVL0_W1_1, // stubbed

    // actors in disptch table D_8019B000_75D630

    ACTORTYPE_OVL1_MOLE_BOSS = (ACTOR_OVL1_MOLE << 8),
    ACTORTYPE_OVL1_MOLE_1,
    ACTORTYPE_OVL1_MOLE_DIZZYSTAR,
    ACTORTYPE_OVL1_MOLE_3,
    ACTORTYPE_OVL1_MOLE_4,
    ACTORTYPE_OVL1_MOLE_5,
    ACTORTYPE_OVL1_MOLE_6,

    // actors in disptch table D_80192000_6A00C0

    ACTORTYPE_OVL0_SBETA_MAIN = (ACTOR_OVL0_SBETA << 8),
    ACTORTYPE_OVL0_SBETA_THEO, // Theo being rescued
    ACTORTYPE_OVL0_SBETA_2, // intro animation?
    ACTORTYPE_OVL0_SBETA_3, // boss defeat animation?
    ACTORTYPE_OVL0_SBETA_4, 
    ACTORTYPE_OVL0_SBETA_5, // stubbed
    ACTORTYPE_OVL0_SBETA_TANKSHELL, // shell shot from Sasquatch Beta
    ACTORTYPE_OVL0_SBETA_ROCK, // rocks thrown
    ACTORTYPE_OVL0_SBETA_8, // stubbed

    //entries 9, 10, and 11 invalid(?)

    ACTORTYPE_OVL0_SBETA_12 = (ACTOR_OVL0_SBETA << 8) + 12,
    ACTORTYPE_OVL0_SBETA_13,
    ACTORTYPE_OVL0_SBETA_14,
    ACTORTYPE_OVL0_SBETA_15,

    // actors in dispatch table D_801A6800_766080

    ACTORTYPE_OVL2_W1_CLANCER_0 = (ACTOR_OVL2_WORLD1 << 8),
    ACTORTYPE_OVL2_W1_1,
    ACTORTYPE_OVL2_W1_2,
    ACTORTYPE_OVL2_W1_CLANCER_3,
    ACTORTYPE_OVL2_W1_CLANCER_4,
    ACTORTYPE_OVL2_W1_CLANCER_5,
    ACTORTYPE_OVL2_W1_6,
    ACTORTYPE_OVL2_W1_7,
    ACTORTYPE_OVL2_W1_8,
    ACTORTYPE_OVL2_W1_9,
    ACTORTYPE_OVL2_W1_10,
    ACTORTYPE_OVL2_W1_11,
    ACTORTYPE_OVL2_W1_12,
    ACTORTYPE_OVL2_W1_13,
    ACTORTYPE_OVL2_W1_14,
    ACTORTYPE_OVL2_W1_15,
    ACTORTYPE_OVL2_W1_16,
    ACTORTYPE_OVL2_W1_17,
    ACTORTYPE_OVL2_W1_18,
    ACTORTYPE_OVL2_W1_19,
    ACTORTYPE_OVL2_W1_20,
    ACTORTYPE_OVL2_W1_CELES_WORM, // Celes in "Wormin' Up!"
    ACTORTYPE_OVL2_W1_22,
    ACTORTYPE_OVL2_W1_23,
    ACTORTYPE_OVL2_W1_24,
    ACTORTYPE_OVL2_W1_25,
    ACTORTYPE_OVL2_W1_26,
    ACTORTYPE_OVL2_W1_27,
    ACTORTYPE_OVL2_W1_28,
    ACTORTYPE_OVL2_W1_29,
    ACTORTYPE_OVL2_W1_30,
    ACTORTYPE_OVL2_W1_31,
    ACTORTYPE_OVL2_W1_CLANCER_32, // Clanball Land patron
    ACTORTYPE_OVL2_W1_33,
    ACTORTYPE_OVL2_W1_34,

    // actors in dispatch table D_801A6800_76FD60

    ACTORTYPE_OVL2_W3_0 = (ACTOR_OVL2_WORLD3 << 8),
    ACTORTYPE_OVL2_W3_1,
    ACTORTYPE_OVL2_W3_2,
    ACTORTYPE_OVL2_W3_3,
    ACTORTYPE_OVL2_W3_4,
    ACTORTYPE_OVL2_W3_5,
    ACTORTYPE_OVL2_W3_6,
    ACTORTYPE_OVL2_W3_ROCKETEER, // rocketeer Clancer
    ACTORTYPE_OVL2_W3_8,
    ACTORTYPE_OVL2_W3_9,
    ACTORTYPE_OVL2_W3_CLANCER_10,
    ACTORTYPE_OVL2_W3_11,
    ACTORTYPE_OVL2_W3_12,
    ACTORTYPE_OVL2_W3_13,
    ACTORTYPE_OVL2_W3_14,
    ACTORTYPE_OVL2_W3_15,
    ACTORTYPE_OVL2_W3_16,
    ACTORTYPE_OVL2_W3_17,
    ACTORTYPE_OVL2_W3_18,
    ACTORTYPE_OVL2_W3_19,
    ACTORTYPE_OVL2_W3_20,
    ACTORTYPE_OVL2_W3_21,
    ACTORTYPE_OVL2_W3_22,
    ACTORTYPE_OVL2_W3_23,
    ACTORTYPE_OVL2_W3_24,

    // actors in dispatch table D_801A6800_775460

    ACTORTYPE_OVL2_W4_0 = (ACTOR_OVL2_WORLD4 << 8), // stubbed
    ACTORTYPE_OVL2_W4_CELES,
    ACTORTYPE_OVL2_W4_TERAN, // player-controlled Teran
    ACTORTYPE_OVL2_W4_TERANHUD, // Teran's health bar and portrait
    ACTORTYPE_OVL2_W4_4,
    ACTORTYPE_OVL2_W4_5,
    ACTORTYPE_OVL2_W4_CLANCER_6,
    ACTORTYPE_OVL2_W4_7,
    ACTORTYPE_OVL2_W4_8,
    ACTORTYPE_OVL2_W4_9,
    ACTORTYPE_OVL2_W4_10, // stubbed
    ACTORTYPE_OVL2_W4_KIDBOSS_SPIKE,
    ACTORTYPE_OVL2_W4_KIDBOSS_LASER,
    ACTORTYPE_OVL2_W4_KIDBOSS_POT,
    ACTORTYPE_OVL2_W4_14,
    ACTORTYPE_OVL2_W4_15,
    ACTORTYPE_OVL2_W4_16,
    ACTORTYPE_OVL2_W4_17,
    ACTORTYPE_OVL2_W4_SPIKEBOSS_MINE,
    ACTORTYPE_OVL2_W4_19,
    ACTORTYPE_OVL2_W4_LASERBOSS_BEAM,
    ACTORTYPE_OVL2_W4_LASERBOSS_ROCK,
    ACTORTYPE_OVL2_W4_POTBOSS_ROCK,
    ACTORTYPE_OVL2_W4_23,
    ACTORTYPE_OVL2_W4_24,
    ACTORTYPE_OVL2_W4_25,
    ACTORTYPE_OVL2_W4_26,
    ACTORTYPE_OVL2_W4_27,
    ACTORTYPE_OVL2_W4_BARRICADE, // seal exit when fighting clancer kid
    ACTORTYPE_OVL2_W4_29,
    ACTORTYPE_OVL2_W4_CALINA,
    ACTORTYPE_OVL2_W4_31,
    ACTORTYPE_OVL2_W4_CLANCER_32,
    ACTORTYPE_OVL2_W4_CLANCERKID,
    ACTORTYPE_OVL2_W4_34,
    ACTORTYPE_OVL2_W4_35,

    // actors in dispatch table D_801A6800_78B430

    ACTORTYPE_OVL2_W5B_0 = (ACTOR_OVL2_STAGE_5_5 << 8), // stubbed actor
    ACTORTYPE_OVL2_W5B_PIRATE, // pirate at end of "Trapped"
    ACTORTYPE_OVL2_W5B_SPIKEBALL, // spikeballs of pirate at end of "trapped"
    
    // actors in dispatch table D_801A6800_76F390
    
    ACTORTYPE_OVL2_SOL_0 = (ACTOR_OVL2_STAGE_2_1 << 8),
    ACTORTYPE_OVL2_SOL_FLAMEGEN,
    ACTORTYPE_OVL2_SOL_ARCHFLAME, // arch flame in "Sea of Lava"

    // actors in dispatch table D_80192000_713600

    ACTORTYPE_OVL0_GEN_BOMB0 = (ACTOR_OVL0_GEN << 8), // Round explosive weapon
    ACTORTYPE_OVL0_GEN_BOMB1, // elliptical explosive weapon
    ACTORTYPE_OVL0_GEN_SHURIKEN, // throwing star
    ACTORTYPE_OVL0_GEN_BOOMERANG,
    ACTORTYPE_OVL0_GEN_FLAME,
    ACTORTYPE_OVL0_GEN_BLOCK, // destructible block
    ACTORTYPE_OVL0_GEN_STATUE, // Movable statue. unused params to be different statue or taiko(drum).
    ACTORTYPE_OVL0_GEN_7,
    ACTORTYPE_OVL0_GEN_CLANPOTICON, // icon for ACTORTYPE_OVL0_GEN_7
    ACTORTYPE_OVL0_GEN_TRIKE, // tricycle
    ACTORTYPE_OVL0_GEN_BOOMGFX, // explosion graphic

    // actors in dispatch table D_801B0800_7C0AB0

    ACTORTYPE_OVL3_W5_SPAWNER_0 = (ACTOR_OVL3_WORLD5B << 8), // handles spawning enemies in "Clance War II"
    ACTORTYPE_OVL3_W5_1,
    ACTORTYPE_OVL3_W5_CLANCER_2,
    ACTORTYPE_OVL3_W5_3,
    ACTORTYPE_OVL3_W5_4,
    ACTORTYPE_OVL3_W5_5,
    ACTORTYPE_OVL3_W5_WALKER, // references overlay 1 table directly
    ACTORTYPE_OVL3_W5_7,
    ACTORTYPE_OVL3_W5_8,
    ACTORTYPE_OVL3_W5_9,
    ACTORTYPE_OVL3_W5_10,
    ACTORTYPE_OVL3_W5_11,
    ACTORTYPE_OVL3_W5_12,
    ACTORTYPE_OVL3_W5_13,
    ACTORTYPE_OVL3_W5_14,
    ACTORTYPE_OVL3_W5_15,
    ACTORTYPE_OVL3_W5_16,
    ACTORTYPE_OVL3_W5_17,
    ACTORTYPE_OVL3_W5_18,
    ACTORTYPE_OVL3_W5_19,
    ACTORTYPE_OVL3_W5_20,
    ACTORTYPE_OVL3_W5_TURRET, // turrets in third section of "Trapped"
    ACTORTYPE_OVL3_W5_22,
    ACTORTYPE_OVL3_W5_23,
    ACTORTYPE_OVL3_W5_24,
    ACTORTYPE_OVL3_W5_25,
    ACTORTYPE_OVL3_W5_26, // graphic-only actors?

    // actors in dispatch table D_80192000_6F9330
    
    ACTORTYPE_OVL0_END_0 = (ACTOR_OVL0_ENDING << 8),
    ACTORTYPE_OVL0_END_1,
    ACTORTYPE_OVL0_END_2,
    ACTORTYPE_OVL0_END_3,
    ACTORTYPE_OVL0_END_4,
    ACTORTYPE_OVL0_END_5,
    ACTORTYPE_OVL0_END_6,
    ACTORTYPE_OVL0_END_7,
    ACTORTYPE_OVL0_END_8,
    ACTORTYPE_OVL0_END_9,
    ACTORTYPE_OVL0_END_10,
    ACTORTYPE_OVL0_END_11,
    ACTORTYPE_OVL0_END_12,
    ACTORTYPE_OVL0_END_13,
    ACTORTYPE_OVL0_END_14,
    ACTORTYPE_OVL0_END_15,
    ACTORTYPE_OVL0_END_16,
    ACTORTYPE_OVL0_END_17,
    ACTORTYPE_OVL0_END_18,
    ACTORTYPE_OVL0_END_19,
    ACTORTYPE_OVL0_END_20

} ActorTypes;

#endif
