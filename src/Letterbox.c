#include "common.h"
/*
void Gfx_DrawRectange(uint16_t col,uint32_t x1,uint32_t y1,uint32_t x2,uint32_t y2){
    gDPSetFillColor(gDListHead++,(uint32_t)(col<<0x10|col));
    gDPFillRectangle(gDListHead++,x1&0x3FFF,y1&0x3FFF,x2&0x3FFF,y2&0x3FFF);
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/Letterbox/Gfx_DrawRectange.s")


#pragma GLOBAL_ASM("asm/nonmatchings/Letterbox/Gfx_DrawLetterboxStandard.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Letterbox/Gfx_DrawLetterbox.s")