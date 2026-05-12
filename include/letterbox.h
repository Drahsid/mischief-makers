#ifndef LETTERBOX_H
#define LETTERBOX_H

#include <PR/ultratypes.h>

//The game uses letterboxing to not only frame out details
//that may be lost on the overscan of a 4x3 CRT, but also, in select occasions,
//dynamically frame the shot between Marina and a boss or other point of interest.

//these should be used with the global value "gLetterboxMode"
enum LetterboxTypes{
    LETTERBOX_DEFAULT, //standard letterbox for majority of game
    LETTERBOX_HORIZONTAL, //top and bottom borders get narrower as x-axis PoI distance grows
    LETTERBOX_VERTICAL //left and right borders get narrower as y-axis PoI distance grows
};

void Gfx_DrawBorderRect(u16 col,s32 x1,s32 y1,s32 x2,s32 y2);
void Gfx_DrawLetterboxStandard();
void Gfx_DrawLetterbox();

//NOTE: the letterboxes also hide "hall-of-mirrors" graphical artifacts
//on the edges when rendering the game.

#endif
