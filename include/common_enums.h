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
