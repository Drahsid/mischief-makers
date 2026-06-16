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
typedef enum{
    ACTOR_MAIN, // actors with code in the main segment.
    ACTOR_OVL3_1,
    ACTOR_OVL1_2,
    ACTOR_OVL1_3,
    ACTOR_OVL3_4,
    ACTOR_OVL3_WORLD2,
    ACTOR_OVL0_6,
    ACTOR_OVL3_7,
    ACTOR_MAIN_8, // a secondary dispatch table in the main segment.
    ACTOR_OVL1_9,
    ACTOR_OVL1_10,
    ACTOR_OVL1_11,
    ACTOR_OVL1_12,
    ACTOR_OVL1_13,
    ACTOR_OVL3_14,
    ACTOR_OVL0_SBETA, // actors in Overlay 0 code of "Sasquatch Beta" 
    ACTOR_OVL0_16,
    ACTOR_OVL1_17,
    ACTOR_OVL1_18,
    ACTOR_OVL1_19,
    ACTOR_OVL0_20,
    ACTOR_OVL0_21,
    ACTOR_OVL0_22,
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
    ACTOR_OVL0_38,
    ACTOR_OVL3_39,
    ACTOR_OVL3_40,
    ACTOR_OVL3_41,
    ACTOR_OVL3_42,
    ACTOR_OVL0_INTRO, // actors in Overlay 0 code of intro cinematic.
    ACTOR_OVL0_44
}ActorOverlayIDs;


typedef enum{
    ACTORTYPE_ZERO= (ACTOR_MAIN << 8), // used for images. has a stubbed "tick" function.
    ACTORTYPE_DIZZYSTAR = 6, // stars when a Clancer is KO'd.
    ACTORTYPE_AFTERIMAGE, // spawns an after-image of an actor behind it.
    ACTORTYPE_GEM, // gem actor.
    ACTORTYPE_PARTICLE, // moving sprites.
    ACTORTYPE_STUB17 = 0x11, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_STUB18, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_STUB19, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_STUB20, // stubbed code is in overlay script F00D0.c
    ACTORTYPE_3DICON, // used in Sound Test menu.
    ACTORTYPE_MARINA, // player character.
    ACTORTYPE_CLANPOT = 0x18,
    ACTORTYPE_GRAPHICONLY = 0x1D, // like with ACTORTYPE_ZERO, a stubbed actor used for graphics.
    ACTORTYPE_PORTRAIT = 0x27,
    ACTORTYPE_MARINAAFTERIMAGE = 0x2E, // when marina dashes. Has unused alternate version.
    ACTORTYPE_WARPSTAR = 0x32,
    ACTORTYPE_TEXTBUBBLE = 0X35, // used many times in Japan version. in English versions, only used by the coach in "the day before".
    ACTORTYPE_PARTICLE56 = 0x38, // a "child class" of ACTORTYPE_PARTICLE. extended behavior.
    ACTORTYPE_GEM61 = 61, // same behavior as ACTORTYPE_GEM, but with a different graphic flag set.
    ACTORTYPE_FLOWER = 0X43,
    ACTORTYPE_HAT,
    ACTORTYPE_CLANBOMB,
    ACTORTYPE_DIGGINGSPOT = 0x57, // grab the ground for treasures.
    ACTORTYPE_AREACLEAR = 0X6B, // "Get out of trouble!" "Go to the next area!"
    ACTORTYPE_MARINAOHNO = 0X70, // spawns when hit by boulder in "Rolling Rock". says "Oh, no!" and falls.
    ACTORTYPE_CROSSHAIR = 0X71, // Crosshair appearing over actors for a second. Arrows can be toggled.
    ACTORTYPE_STAGECLEAR = 0X74, // actors for the "stage clear" animation.
    ACTORTYPE_LEVELCLEAR, // actors for the "level clear" animation.
    ACTORTYPE_MSHINT = 0X7A, // Ms. Hint
    ACTORTYPE_GEMRING = 0X7B
}ActorTypes;

#endif