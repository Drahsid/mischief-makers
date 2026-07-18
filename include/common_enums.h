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

    CLANBALL_MASK_FF = 0xFF, // masks index of associated actor

    CLANBALL_COLOR0 = ((1 << 8) * 0),
    CLANBALL_COLOR1 = ((1 << 8) * 1),
    CLANBALL_COLOR2 = ((1 << 8) * 2),
    CLANBALL_COLOR3 = ((1 << 8) * 3),
    CLANBALL_COLOR4 = ((1 << 8) * 4),

    CLANBALL_COLORMASK = (CLANBALL_COLOR1 | CLANBALL_COLOR2 | 
        CLANBALL_COLOR3 | CLANBALL_COLOR4),

    CLANBALL_UNK10 = (1 << 10),
    CLANBALL_UNK11 = (1 << 11),
    // show arrows when held in "Clanball Land"
    // masked out for all other stages
    CLANBALL_ARROWS = (1 << 12), 
    CLANBALL_UNK13 = (1 << 13),
    CLANBALL_UNK14 = (1 << 14),
    CLANBALL_UNK15 = (1 << 15),
    
    CLANBALL_UNK16 = (1 << 16),
    CLANBALL_UNK17 = (1 << 17),
    CLANBALL_UNK18 = (1 << 18),
    CLANBALL_UNK19 = (1 << 19),
    
    CLANBALL_UNKMASK_A = (CLANBALL_UNK16 | CLANBALL_UNK17 | CLANBALL_UNK18| CLANBALL_UNK19),

    CLANBALL_UNK20 = (1 << 20),
    CLANBALL_UNK21 = (1 << 21),
    CLANBALL_UNK22 = (1 << 22),
    CLANBALL_UNK23 = (1 << 23),
    CLANBALL_UNK24 = (1 << 24),
    CLANBALL_UNK25 = (1 << 25),
    CLANBALL_UNK26 = (1 << 26),
    CLANBALL_UNK27 = (1 << 27),
    CLANBALL_UNK28 = (1 << 28),
    CLANBALL_UNK29 = (1 << 29),
    CLANBALL_UNK30 = (1 << 30),
    CLANBALL_UNK31 = (1U << 31U)
} ClanballFlags;

// flags set in 0x110, folowed by those also used in 0x150
typedef enum {
    SPIKEBALL_UNK0 = (1 << 0),
    SPIKEBALL_UNK1 = (1 << 1),
    SPIKEBALL_UNK2 = (1 << 2),
    SPIKEBALL_UNK3 = (1 << 3),
    SPIKEBALL_UNK4 = (1 << 4),
    SPIKEBALL_UNK5 = (1 << 5),
    SPIKEBALL_UNK6 = (1 << 6),
    SPIKEBALL_UNK7 = (1 << 7),

    SPIKEBALL_COLOR0 = ((1 << 8) * 0),
    SPIKEBALL_COLOR1 = ((1 << 8) * 1),
    SPIKEBALL_COLOR2 = ((1 << 8) * 2),
    SPIKEBALL_COLOR3 = ((1 << 8) * 3),
    SPIKEBALL_COLORMASK = (SPIKEBALL_COLOR1 | SPIKEBALL_COLOR2 ),

    SPIKEBALL_DROPRED = ((1 << 10) * 1), // drop red gem when hit
    SPIKEBALL_DROPBLUE = ((1 << 10) * 2), // drop blue gem when hit
    SPIKEBALL_DROPYELLOW = ((1 << 10) * 3), // drop yellow gem when hit
    SPIKEBALL_DROPMASK = SPIKEBALL_DROPYELLOW,

    SPIKEBALL_MORTAL = (1 << 12), // do not respawn when hit
    SPIKEBALL_UNK13 = (1 << 13),
    SPIKEBALL_UNK14 = (1 << 14),
    SPIKEBALL_ONSCREEN = (1U << 15U), // sets ACTOR_FLAG_ONSCREEN_ONLY
    SPIKEBALL_UNK16 = (1 << 16),
    SPIKEBALL_UNK17 = (1 << 17),
    SPIKEBALL_UNK18 = (1 << 18),
    SPIKEBALL_UNK19 = (1 << 19),
    SPIKEBALL_UNK20 = (1 << 20),
    SPIKEBALL_UNK21 = (1 << 21),
    SPIKEBALL_UNK22 = (1 << 22),
    SPIKEBALL_UNK23 = (1 << 23),
    SPIKEBALL_UNK24 = (1 << 24),
    SPIKEBALL_UNK25 = (1 << 25),
    SPIKEBALL_UNK26 = (1 << 26),
    SPIKEBALL_UNK27 = (1 << 27),
    SPIKEBALL_MOVEX = (1 << 28), // determines movement on x-axis
    SPIKEBALL_MOVEY = (1 << 29), // determines movement on x-axis
    SPIKEBALL_UNK30 = (1 << 30),
    SPIKEBALL_UNK31 = (1U << 31U)
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
    ENSHOT_SCALEMOVE = (1U << 16U)

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
