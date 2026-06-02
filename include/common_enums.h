#ifndef COMMON_ENUMS_H
#define COMMON_ENUMS_H

// header for common/misc. enums.

typedef enum {
    GEMFLAG_RED, // red gem. buys hints and continues.
    GEMFLAG_BLUE, // blue gem +30 HP.
    GEMFLAG_YELLOW, // yellow gem. +500 HP. collectible, one per stage.
    GEMFLAG_GREEN, // green gem. +300 HP
    GEMFLAG_MASK = GEMFLAG_GREEN, // used to find type of gem.
    GEMFLAG_BOUNCE = (1 << 4), // bounce up when spawned
    GEMFLAG_FINITE = (1 << 5), // has timer of 120 ticks.
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

#endif
