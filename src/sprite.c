#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

/*
Sprite D_800C4E5C ={
    0,0,0,0,                //x,y,h,w
    1.0,1.0,                //Scale
    0,0,                    //expx,expy
    SP_TRANSPARENT, 0x1234, //Attr,
    0xff,0xff,0xff,0xff,    //RGBA
    0,0,NULL,               //startTLUT,nTLUT,LUT,
    0,1,56,648,             //istart,istep,nbitmaps,ndisplist
    15,128,4,0              //bmHeight,bmReal,bmFMT,bmsiz
    D_8016E820,             //bitmap
    &D_8016EF20,NULL,       //rsp_dl,rsp_dl_next
    0,0};                   //frac
*/
s8 gSpriteColR=0xFF;
s8 gSpriteColG=0xFF;
s8 gSpriteColB=0xFF;
s8 gSpriteColA=0xFF;
double gSpriteScaleX=1.0;
double gSpriteScaleY=1.0;

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004380.s")

uint8_t* func_800045F8(uint8_t* arg0, uint8_t arg1) {
    while (arg0[0] != 0 && arg1 != arg0[0]) {
        arg0++;
    }

    if (arg0[0] != 0) {
        return arg0;
    }

    return NULL;
}

void Sprite_Init(Gfx** dlistp) {
    Gfx* dlist;

    dlist = *dlistp;
    spInit(&dlist);
    D_800C4E5C.rsp_dl_next = D_800C4E5C.rsp_dl;
    *dlistp = dlist;
    gSpriteColR = 0xFF;
    gSpriteColG = 0xFF;
    gSpriteColB = 0xFF;
    gSpriteColA = 0xFF;
    D_800C4EBC = 0;
    D_800C4EC0 = 0;
    D_800C4EC4 = 40;
    D_800C4EC8 = 1;
    gSpriteScaleX = 1.0;
    gSpriteScaleY = 1.0;
}

void Sprite_Finish(Gfx** dlistp) {
    Gfx* dlist;

    dlist = *dlistp;
    spFinish(&dlist);
    *dlistp = dlist - 1;
}

void Sprite_SetPosition(int32_t arg0, uint32_t arg1) {
    D_800C4EC4 = arg0;
    D_800C4EC8 = arg1;
}

void func_8000474C(int32_t arg0, uint32_t arg1) {
    D_800C4EBC = arg0;
    D_800C4EC0 = arg1;
}

void Sprite_SetScale(double x, double y) {
    gSpriteScaleX = x;
    gSpriteScaleY = y;
}

void Sprite_SetColor(uint8_t r, uint8_t g, uint8_t b, uint8_t a) {
    gSpriteColR = r;
    gSpriteColG = g;
    gSpriteColB = b;
    gSpriteColA = a;
}

void Sprite_SetTransparent(int32_t arg0) {
    spClearAttribute(&D_800C4E5C, 0xFFFF);
    if (arg0) spSetAttribute(&D_800C4E5C, SP_TRANSPARENT);
    else spClearAttribute(&D_800C4E5C, SP_TRANSPARENT);
}

// Need to figure out args to func_80004380 to match, a0 is Sprite*
#ifdef NON_MATCHING
void Sprite_Update(Gfx** dlistp) {
    D_800C4E5C.width = (D_800C4EC4 * 8) + 8;
    D_800C4E5C.height = (D_800C4EC8 * 16) + 8;
    func_80004380(&D_800C4E5C, D_800C4EC8);
    spMove(&D_800C4E5C, D_800C4EBC, D_800C4EC0);
    spColor(&D_800C4E5C, gSpriteColR, gSpriteColG, gSpriteColB, gSpriteColA);
    spScale(&D_800C4E5C, gSpriteScaleX, gSpriteScaleY);

    gSPDisplayList(*dlistp++, spDraw(&D_800C4E5C));

    /*(*dlistp)->words.w0 = 0x6000000;
    (*dlistp)->words.w1 = spDraw(&D_800C4E5C);
    *dlistp++;*/
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_Update.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004910.s")
