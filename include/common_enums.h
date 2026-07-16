#ifndef COMMON_ENUMS_H
#define COMMON_ENUMS_H

// header for common/misc. enums.

typedef enum {
    GEMFLAG_RED, // red gem. buys hints and continues. 9999 max.
    GEMFLAG_BLUE, // blue gem +30 HP.
    GEMFLAG_YELLOW, // yellow gem. +500 HP. collectible, one per stage.
    GEMFLAG_GREEN, // green gem. +300 HP
    GEMFLAG_MASK = GEMFLAG_GREEN, // used to find type of gem.
    GEMFLAG_BOUNCE = (1 << 4), // bounce up when spawned
    GEMFLAG_FINITE = (1 << 5), // has timer of 120 ticks.
    GEMFLAG_GLIMMER = (1 << 6), // flickers for 40 ticks instead of 12. from dug-up gems.
    // gems actors almost always spawn bouncing and finite
    GEMFLAG_COMMON = GEMFLAG_BOUNCE|GEMFLAG_FINITE 
} GemFlags;


// flags set in 0x110, folowed by those also used in 0x150
typedef enum {

    CLANBALLFLAG_MASK_FF = 0xFF, // masks index of associated actor

    CLANBALLFLAG_COLOR0 = ((1 << 8) * 0),
    CLANBALLFLAG_COLOR1 = ((1 << 8) * 1),
    CLANBALLFLAG_COLOR2 = ((1 << 8) * 2),
    CLANBALLFLAG_COLOR3 = ((1 << 8) * 3),
    CLANBALLFLAG_COLOR4 = ((1 << 8) * 4),

    CLANBALLFLAG_COLORMASK = (CLANBALLFLAG_COLOR1 | CLANBALLFLAG_COLOR2 | 
        CLANBALLFLAG_COLOR3 | CLANBALLFLAG_COLOR4),

    CLANBALLFLAG_UNK10 = (1 << 10),
    CLANBALLFLAG_UNK11 = (1 << 11),
    // show arrows when held in "Clanball Land"
    // masked out for all other stages
    CLANBALLFLAG_ARROWS = (1 << 12), 
    CLANBALLFLAG_UNK13 = (1 << 13),
    CLANBALLFLAG_UNK14 = (1 << 14),
    CLANBALLFLAG_UNK15 = (1 << 15),
    
    CLANBALLFLAG_UNK16 = (1 << 16),
    CLANBALLFLAG_UNK17 = (1 << 17),
    CLANBALLFLAG_UNK18 = (1 << 18),
    CLANBALLFLAG_UNK19 = (1 << 19),
    
    CLANBALLFLAG_UNKMASK_A = (CLANBALLFLAG_UNK16 | CLANBALLFLAG_UNK17 | CLANBALLFLAG_UNK18| CLANBALLFLAG_UNK19),

    CLANBALLFLAG_UNK20 = (1 << 20),
    CLANBALLFLAG_UNK21 = (1 << 21),
    CLANBALLFLAG_UNK22 = (1 << 22),
    CLANBALLFLAG_UNK23 = (1 << 23),
    CLANBALLFLAG_UNK24 = (1 << 24),
    CLANBALLFLAG_UNK25 = (1 << 25),
    CLANBALLFLAG_UNK26 = (1 << 26),
    CLANBALLFLAG_UNK27 = (1 << 27),
    CLANBALLFLAG_UNK28 = (1 << 28),
    CLANBALLFLAG_UNK29 = (1 << 29),
    CLANBALLFLAG_UNK30 = (1 << 30),
    CLANBALLFLAG_UNK31 = (1U << 31U),
} ClanballFlags;

// flags set in 0x110, folowed by those also used in 0x150
typedef enum {
    SPIKEBALLFLAG_UNK0 = (1 << 0),
    SPIKEBALLFLAG_UNK1 = (1 << 1),
    SPIKEBALLFLAG_UNK2 = (1 << 2),
    SPIKEBALLFLAG_UNK3 = (1 << 3),
    SPIKEBALLFLAG_UNK4 = (1 << 4),
    SPIKEBALLFLAG_UNK5 = (1 << 5),
    SPIKEBALLFLAG_UNK6 = (1 << 6),
    SPIKEBALLFLAG_UNK7 = (1 << 7),

    SPIKEBALLFLAG_COLOR0 = ((1 << 8) * 0),
    SPIKEBALLFLAG_COLOR1 = ((1 << 8) * 1),
    SPIKEBALLFLAG_COLOR2 = ((1 << 8) * 2),
    SPIKEBALLFLAG_COLOR3 = ((1 << 8) * 3),
    SPIKEBALLFLAG_COLORMASK = (SPIKEBALLFLAG_COLOR1 | SPIKEBALLFLAG_COLOR2 ),

    SPIKEBALLFLAG_DROPRED = ((1 << 10) * 1), // drop red gem when hit
    SPIKEBALLFLAG_DROPBLUE = ((1 << 10) * 2), // drop blue gem when hit
    SPIKEBALLFLAG_DROPYELLOW = ((1 << 10) * 3), // drop yellow gem when hit
    SPIKEBALLFLAG_DROPMASK = SPIKEBALLFLAG_DROPYELLOW,

    SPIKEBALLFLAG_MORTAL = (1 << 12), // do not respawn when hit
    SPIKEBALLFLAG_UNK13 = (1 << 13),
    SPIKEBALLFLAG_UNK14 = (1 << 14),
    SPIKEBALLFLAG_ONSCREEN = (1U << 15U), // sets ACTOR_FLAG_ONSCREEN_ONLY
    SPIKEBALLFLAG_UNK16 = (1 << 16),
    SPIKEBALLFLAG_UNK17 = (1 << 17),
    SPIKEBALLFLAG_UNK18 = (1 << 18),
    SPIKEBALLFLAG_UNK19 = (1 << 19),
    SPIKEBALLFLAG_UNK20 = (1 << 20),
    SPIKEBALLFLAG_UNK21 = (1 << 21),
    SPIKEBALLFLAG_UNK22 = (1 << 22),
    SPIKEBALLFLAG_UNK23 = (1 << 23),
    SPIKEBALLFLAG_UNK24 = (1 << 24),
    SPIKEBALLFLAG_UNK25 = (1 << 25),
    SPIKEBALLFLAG_UNK26 = (1 << 26),
    SPIKEBALLFLAG_UNK27 = (1 << 27),
    SPIKEBALLFLAG_MOVEX = (1 << 28), // determines movement on x-axis
    SPIKEBALLFLAG_MOVEY = (1 << 29), // determines movement on x-axis
    SPIKEBALLFLAG_UNK30 = (1 << 30),
    SPIKEBALLFLAG_UNK31 = (1U << 31U),
} SpikeballFlags;

#define AREACLEAR_FULL 0 // full "Area Clear" animation
#define AREACLEAR_NOTEXT 0x8000 // skip text in "Area Clear" animation

typedef enum {
    ENSHOT_UNKFF = 0xFF,
    ENSHOT_ANGLE0 = ((1 << 8) * 0),
    ENSHOT_ANGLE1 = ((1 << 8) * 1),
    ENSHOT_ANGLE2 = ((1 << 8) * 2),
    ENSHOT_ANGLE3 = ((1 << 8) * 3),
    ENSHOT_ANGLEMASK = ENSHOT_ANGLE3,
    ENSHOT_TARGETPLAYER = (1 << 12),
    ENSHOT_UNK14 = (1 << 14),
    ENSHOT_UNK15 = (1 << 15),
    ENSHOT_SCALEMOVE = (1U << 16U),

} EnegryShotFlags; // used in func_8002EDC8

typedef enum {
    CROSSHAIR_FRONT = (1 << 0), // show arrow at front
    CROSSHAIR_UP = (1 << 1), // show arrow at top
    CROSSHAIR_BACK = (1 << 2), // show arrow at back
    CROSSHAIR_DOWN = (1 << 3), // show arrow at bottom.
    // show all arrows
    CROSSHAIR_ALL = CROSSHAIR_FRONT | CROSSHAIR_UP | CROSSHAIR_BACK | CROSSHAIR_DOWN,
    CROSSHAIR_FLIP = (1 << 4) // show "front" and "back" arrows based on parent's facing.
} CrosshairFlags;

// kept in gClanpotItems[index + 0] with item actor index
typedef enum {
    CLANPOT_INDEXMASK = 0xff, // mask for getting index from "actor + flag" value in gClanpotItems
    CLANPOT_SPAWNNOW = (1 << 8), // special item mixed, spawn outside pot.
    CLANPOT_UNSETFLAGS = (1 << 9), // zero flags of item actor.
    // involves the 5th "field" of gClanpotItems.
    // if unset, this value will represent the graphic index in the Clanpot menu.
    // if set, it is instead the actor type to use as the item's icon.
    CLANPOT_ACTORICON = (1 << 10), 
    CLANPOT_NOSTORE = (1 << 11 ), // skip storing item values. used by "Ball" festival minigame.
    CLANPOT_NEW_D8 = (1 << 12), // use arg in Clanpot_AddItem if set, otherwise store actor field at offset 0xD8.
    CLANPOT_NEW_110 = (1 << 13), // use arg in Clanpot_AddItem if set, otherwise store actor field at offset 0x110. 
    CLANPOT_FLAG14 = (1 << 14), // unknown.
    CLANPOT_NEWITEM = (1U << 15U) // Don't use old index when retiveing, use the first available from 16-45 
} ClanpotFlags;

#endif
