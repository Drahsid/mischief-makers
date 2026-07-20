#ifndef FONT_SPRITE_H
#define FONT_SPRITE_H

#include "inttypes.h"
#include <PR/sp.h>

// sprite font used for OSD text

extern void Font_Init(Gfx** glistp);
extern void Font_Finish(Gfx** glistp);
extern void Font_SetWindow(s32 width, s32 height);
extern void Font_SetPos(s32 xpos, s32 ypos);
extern void Font_SetScale(f64 xscale, f64 yscale);
extern void Font_SetColor(u8 red, u8 green, u8 blue, u8 alpha);
extern void Font_SetTransparent(s32 flag);
extern void Font_ShowString(Gfx** glistp, char* val_str);


#endif