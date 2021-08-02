#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_800045F8.s")
#ifdef NON_MATCHING
void Sprite_Init(s32 *arg0) {
    s32 sp1C;
    s32 *temp_a0;

    temp_a0 = &sp1C;
    sp1C = *arg0;
    spInit(temp_a0);
    D_800C4E5C.rsp_dl_next = D_800C4E5C.rsp_dl;
    *arg0 = sp1C;
    gSpriteColR = 0xFF;
    gSpriteColG = 0xFF;
    gSpriteColB = 0xFF;
    gSpriteColA = 0xFF;
    D_800C4EBC = 0;
    D_800C4EC0 = 0;
    D_800C4EC4 = 0x28;
    D_800C4EC8 = 1;
    gSprtieScaleXA = (double)1.0;
    gSprtieScaleYA = (double)1.0;
}


#else
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_Init.s")
#endif
void Sprite_Finish(int32_t* arg0) {
    int32_t sp1C;
    int32_t* temp_a0;

    temp_a0 = &sp1C;
    sp1C = *arg0;
    spFinish(temp_a0);
    *arg0 = (int32_t)(sp1C - 8);
}

void Sprite_SetPosition(int32_t arg0, uint32_t arg1) {
    D_800C4EC4 = arg0;
    D_800C4EC8 = arg1;
}

void func_8000474C(int32_t arg0, uint32_t arg1) {
    D_800C4EBC = arg0;
    D_800C4EC0 = arg1;
}

void Sprite_setScale(double x,double y){
  gSprtieScaleXA = x;
  gSprtieScaleYA = y;
}

#ifdef NON_MATCHING
void Sprite_SetColor(s8 r,s8 g,s8 b,s8 a){
  gSpriteColR = r;
  gSpriteColG = g;
  gSpriteColB = b;
  gSpriteColA = a;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/Sprite_SetColor.s")
#endif

void Sprite_SetTransparent(int32_t arg0) {
    Sprite* new_var = &D_800C4E5C;
    spClearAttribute(&D_800C4E5C, 0xFFFF);
    if (arg0 != 0) {
        spSetAttribute(new_var, SP_TRANSPARENT);
    }
    else {
        spClearAttribute(new_var, SP_TRANSPARENT);
    }
}
#ifdef NON_MATCHING
void sprite_func(void **arg0) {
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s1;

    temp_a3 = D_800C4EC4;
    temp_s1 = *arg0;
    D_800C4E5C.width = (s16) ((temp_a3 * 8) + 8);
    temp_v0 = D_800C4EC8;
    D_800C4E5C.height = (s16) ((temp_v0 * 0x10) + 8);
    func_80004380(&D_800C4E5C, &D_800C4EA0, temp_a3, temp_v0);
    spMove(&D_800C4E5C, D_800C4EBC, D_800C4EC0);
    spColor(&D_800C4E5C, gSpriteColR, gSpriteColG, gSpriteColB, (s32) gSpriteColA);
    spScale(&D_800C4E5C, (f32) gSprtieScaleXA, (f32) gSprtieScaleYA);
    temp_v0_2 = spDraw(&D_800C4E5C);
    temp_s1->unk0 = 0x6000000;
    temp_s1->unk4 = temp_v0_2;
    *arg0 = (void *) (temp_s1 + 8);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/sprite_func.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/sprite/func_80004910.s")