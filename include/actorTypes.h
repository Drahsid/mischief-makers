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
    ACTOR_OVL1_3,
    ACTOR_OVL3_4,
    ACTOR_OVL3_WORLD2,
    ACTOR_OVL0_6,
    ACTOR_OVL3_7,
    ACTOR_MAIN_8, // a secondary dispatch table in the main segment.
    ACTOR_OVL1_9,
    ACTOR_OVL1_10,
    ACTOR_OVL1_11,
    ACTOR_OVL1_BEE, // "Overlay 1" actors for "flambee"
    ACTOR_OVL1_13,
    ACTOR_OVL3_14,
    ACTOR_OVL0_CALPHA, // actors in Overlay 0 code of "Cerberus Alpha" 
    ACTOR_OVL0_16,
    ACTOR_OVL1_17,
    ACTOR_OVL1_18,
    ACTOR_OVL1_19,
    ACTOR_OVL0_20,
    ACTOR_OVL0_21,
    ACTOR_OVL0_FINALBAT, // actors in Overlay 0 Code for "Final Battle"
    ACTOR_OVL2_23,
    ACTOR_OVL2_24,
    ACTOR_OVL0_25,
    ACTOR_OVL2_FESTIVAL,
    ACTOR_OVL3_27,
    ACTOR_OVL2_28,
    ACTOR_OVL2_29,
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
    ACTOR_OVL3_41,
    ACTOR_OVL3_42,
    ACTOR_OVL0_INTRO, // actors in Overlay 0 code of intro cinematic.
    ACTOR_OVL0_ENDING // actors in Overlay 0 code of Ending.
}ActorOverlayIDs;


typedef enum{
    // actors in main code segment

    ACTORTYPE_ZERO= (ACTOR_MAIN << 8), // used for images. has a stubbed "tick" function.
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
    ACTORTYPE_28,
    ACTORTYPE_GRAPHICONLY, // like with ACTORTYPE_ZERO, a stubbed actor used for graphics.
    ACTORTYPE_30, // Stubbed
    ACTORTYPE_31,
    ACTORTYPE_32,
    ACTORTYPE_33,
    ACTORTYPE_34,
    ACTORTYPE_35,
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
    ACTORTYPE_WARPGATE,
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
    ACTORTYPE_62,
    ACTORTYPE_63,
    ACTORTYPE_64,
    ACTORTYPE_65,
    ACTORTYPE_66,
    ACTORTYPE_FLOWER, // flowers with a slow, sine-wave fall.
    ACTORTYPE_HAT, // hats worn by clancers
    ACTORTYPE_CLANBOMB,
    ACTORTYPE_70,
    ACTORTYPE_71,
    ACTORTYPE_72,
    ACTORTYPE_73,
    ACTORTYPE_74,
    ACTORTYPE_75,
    ACTORTYPE_76, // spikeball?
    ACTORTYPE_77,
    ACTORTYPE_78,
    ACTORTYPE_79,
    ACTORTYPE_80,
    ACTORTYPE_81,
    ACTORTYPE_82,
    ACTORTYPE_83,
    ACTORTYPE_84,
    ACTORTYPE_85,
    ACTORTYPE_86,
    ACTORTYPE_DIGGINGSPOT, // grab the ground for treasures.
    ACTORTYPE_88,
    ACTORTYPE_89,
    ACTORTYPE_90,
    ACTORTYPE_CLANCER,
    ACTORTYPE_92,
    ACTORTYPE_93,
    ACTORTYPE_94,
    ACTORTYPE_95,
    ACTORTYPE_96,
    ACTORTYPE_97,
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
    ACTORTYPE_109,
    ACTORTYPE_110,
    ACTORTYPE_111,
    ACTORTYPE_MARINAOHNO, // spawns when hit by boulder in "Rolling Rock". says "Oh, no!" and falls.
    ACTORTYPE_CROSSHAIR, // Crosshair appearing over actors for a second. Arrows can be toggled.
    ACTORTYPE_114,
    ACTORTYPE_115,
    ACTORTYPE_STAGECLEAR, // actors for the "stage clear" animation.
    ACTORTYPE_LEVELCLEAR, // actors for the "level clear" animation.
    ACTORTYPE_ITEMSPAWN,
    ACTORTYPE_119,
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
    
    ACTORTYPE_OVL0_CALPHA_24 = (ACTOR_OVL0_CALPHA << 8)+24,
    ACTORTYPE_OVL0_CALPHA_25,
    ACTORTYPE_OVL0_CALPHA_26,
    ACTORTYPE_OVL0_CALPHA_27,


    // actors in dispatch table D_801A6800_78B430

    ACTORTPYE_OVL2_W5B_0 = (ACTOR_OVL2_STAGE_5_5 << 8), // stubbed actor
    ACTORTPYE_OVL2_W5B_PIRATE, // pirate at end of "Trapped"
    ACTORTPYE_OVL2_W5B_SPIKEBALL, // spikeballs of pirate at end of "trapped"
    
    // actors in dispatch table D_801A6800_76F390
    
    ACTORTYPE_OVL2_SOL_0 = (ACTOR_OVL2_STAGE_2_1 << 8),
    ACTORTYPE_OVL2_SOL_1,
    ACTORTYPE_OVL2_SOL_ARCHFLAME, // arch flame in "Sea of Lava"

    // actors in dispatch table D_80192000_713600

    ACTORTYPE_OVL0_GEN_BOMB0 = (ACTOR_OVL0_GEN << 8), // Round explosive weapon
    ACTORTYPE_OVL0_GEN_BOMB1, // elliptical explosive weapon
    ACTORTYPE_OVL0_GEN_SHURIKEN, // throwing star
    ACTORTYPE_OVL0_GEN_BOOMERANG,
    ACTORTYPE_OVL0_GEN_4,
    ACTORTYPE_OVL0_GEN_5,
    ACTORTYPE_OVL0_GEN_6,
    ACTORTYPE_OVL0_GEN_7,
    ACTORTYPE_OVL0_GEN_8,
    ACTORTYPE_OVL0_GEN_9,
    ACTORTYPE_OVL0_GEN_10
} ActorTypes;

#endif
