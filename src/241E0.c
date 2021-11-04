#include "BGM.h"
#include "actor.h"
#include "common.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>
//these look to be camera functions, some that are level-specific.
void func_800235E0(void) {
    D_800BE72C = 0;
    D_800BE730 = 0;
}
/*\
void func_800235F4(void){
    int x;
    D_800BE72C+=D_800BE730;
    x=D_800BE72C;
    if(D_800BE72C<0) x=D_800BE72C+0xFFFF;
    gUpX =D_800BCCD0[(x >> 0x10) - 0x100U & 0x3ff];
    gUpY =D_800BCCD0[x >> 0x10 & 0x3ff];
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800235F4.s")

void func_80023668(void) {}

void func_80023670(void) {}

void func_80023678(void) {
    D_800BE578 = 2;
    D_800BE6FC = 1;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800236A0.s")

void func_80023798(void) {
    D_800BE578 = (int16_t)((int32_t)D_800BE558._hi / 2);
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800237F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023894.s")
//"tightrope ride" camera funcs
void func_80023948(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023968.s")
//"Lava Rafts" camera func
void func_80023A08(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE70C = 2;
}

void func_80023A34(void) {
    func_800237F0();
    if ((gDebugBitfeild & 0xA400) == 0) { //this freezes the camera otherwise
        D_800BE544 = 0x8000;
        gScreenPosTargetX._w = (int32_t)(gPlayerPosXMirror._w + 0x200000);
        gScreenPosTargetY._w = (int32_t)gPlayerPosYMirror._w;
        D_800BE704 = 1;
    }
}

void func_80023AA4(void){
    D_80104098[64].unk_0x80=0;
    D_80104098[65].unk_0x80=0;
    D_800CA230=1;
}

void func_80023AC4(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023ACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023AFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023BC0.s")

void func_80023BF8(void) {}

void func_80023C00(void) {
    D_800BE578 = 2;
    D_800BE57C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023C18.s")

void func_80023D48(void) {
    D_800BE544 = 0x30;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023D70(void) {
    D_800BE578 = D_800BE558._hi;
    D_800BE580 = D_800BE55C._hi + 0x60;
}

void func_80023D98(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
}

void func_80023DB4(void) {}

void func_80023DBC(void) {
    D_800BE544 = 0x30;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
    D_800BE674 = 1;
}

void func_80023DF0(void) {}

void func_80023DF8(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
}

void func_80023E14(void) {}

void func_80023E1C(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023E38(void) {}

void func_80023E40(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023E48.s")

void func_80023E6C(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023E74.s")

void func_80023E98(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80023EB4(void) {
    func_80023E98();
    D_800BE674 = 1;
}
//2 of the Mt. Snow levels
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024004.s")

void func_80024074(void) {
    int32_t temp_v0 = 1;
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    // fake match? This doesn't seem very human
    D_800BE708 = *((int32_t*)&temp_v0);
    D_800BE710 = *((int32_t*)&temp_v0);
    D_800BE71C = 0x1000000;
    D_800BE720 = 0;
    D_800BE724 = 0x1C00000;
    D_800BE728 = 0xFFFF0000;
    D_800BE72C = 0;
    D_800BE730 = 0;
    D_800BE638 = 0;
}
//looks like this does the "seasick climb" effect
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800240E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024428.s")
//Camera funcs for "Vertigo!"
void func_800244F8(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    D_800BE72C = 0;
}
/*
void func_80024528(){
    int32_t rot=D_800BE72C;
    if(D_800BE72C<0) rot=D_800BE72C+0xFFFF;
    rot=rot>>0x10;
    gUpX=D_800BCCD0[rot - 0x100 & 0x3FF];
    gUpY=D_800BCCD0[rot & 0x3FF];

}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024528.s")

void func_80024584(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
}

void func_800245AC(void) {}

void func_800245B4(void){
    D_800BE578 = 2;
    D_800BE580 = -0xc;
    D_800BE57C = 2;
    D_800BE584 = -0xc;
    D_80104098[64].unk_0x80=0;
    D_80104098[65].unk_0x80=0;
}

void func_800245F0(void) {}

void func_800245F8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024600.s")
//these 2 are Beastecor boss camera funcs
void func_80024624(void) {
    D_800BE588 = 2;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800CBF58 = 1U;
    func_800235E0();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024668.s")

void func_80024854(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
    D_800CC428 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002488C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800249B8.s")

void func_80024D5C(void) {
    D_800BE588 = 3;
}

void func_80024D6C(){
    D_800BE73C=(D_800BE558._hi-D_800BE560._hi)*0x10000;
    func_8002488C();
}
//camera funcs for "Bee's the one"
void func_80024DA8(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

#ifdef NON_MATCHING
void func_80024DD8(void) {
    uint16_t* x = D_800CC228;
    uint16_t* y = D_80380400;
    uint16_t i;
    for (i = 0; i < 256; i++) {
        *y = *x;
        x++;
        y++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024DD8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024EA0.s")
//Splashscreen camera funcs.
void func_80025084(void) {}

void func_8002508C(void) {}

void func_80025094(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -0x4C;
    D_8013746C = &D_800C71A0;
    if (D_800BE5D0 != 0x16) { //if we aren't on "Trapped!?"
        gEyeX = -128.0f;
        gEyeY = 128.0f;
    }
    func_800235E0();
}
//used for Merco's fight
void func_80025114(void) {
    func_800235F4();
    if ((D_800BE4E0 & 1))
        D_800BE57C++;
}

void func_8002515C(void) {
    D_800BE580 = -0x18;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80025184(void) {
    D_800BE578 = (int16_t)(((int32_t)D_800BE558._hi / 4) & 0x1FF);
    D_800BE57C = (int16_t)(((int32_t)D_800BE558._hi / 8) & 0x1FF);
}

void func_800251CC(void) {
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800251E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025254.s")

void func_800252BC(void) {
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800CBF58 = 2;
    func_800235E0();
}
//used for Phoenix Gamma
void func_800252F8(void){
    func_800235F4();
    if(D_800CBF58 == 2){
        if(D_800BE55C._hi<256){
            D_800BE55C._hi+=0x400;
            gScreenPosTargetY._hi+=0x400;
        }
        if(D_800BE55C._hi>0X500){
            D_800BE55C._hi-=0x400;
            gScreenPosTargetY._hi-=0x400;
        }
    }
}

void func_80025380(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
    D_800BE70C = 4;
}

void func_800253A8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800253B0.s")

uint8_t D_800CCFC[] = {
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    0xff,
    0xff,
    0xff,
    0xff,
    0xff,
    BGM_YUJYA,
    0xff,
    0xff,
    BGM_YUJYA,
    BGM_OPENING_TITLE,
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    BGM_TO1,
    0xff,
    0xff,
    0xff,
    0xff,
    BGM_BOSS,
    BGM_BONO,
    0xff,
    BGM_REVENGE,
    BGM_WOODS,
    BGM_GLOOMY,
    BGM_BOSS,
    BGM_BOSS,
    0xff,
    BGM_DETERMINATION,
    0xff,
    BGM_BONO,
    BGM_OUT,
    BGM_ESPERANCE,
    BGM_WOODS,
    BGM_BONO,
    BGM_BONO,
    BGM_LIKE_A_WIND,
    BGM_MARINA,
    BGM_VOLCANIC,
    BGM_OUT,
    BGM_MARINA,
    0xff,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_OUT,
    BGM_MARINA,
    BGM_OBAKESONG,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_A_CAVE,
    BGM_ESPERANCE,
    BGM_HURRY,
    BGM_LIKE_A_WIND,
    BGM_HURRY,
    BGM_LIKE_A_WIND,
    0xff,
    0xff,
    BGM_OUT,
    BGM_GIMMICK,
    BGM_MARINA,
    BGM_GIMMICK,
    BGM_BONO,
    0x0f,
    BGM_LETHE,
    BGM_DETERMINATION,
    BGM_HURRY,
    BGM_ESPERANCE,
    BGM_VOLCANIC,
    BGM_VOLCANIC,
    BGM_MARINA,
    BGM_BONO,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_HURRY,
    BGM_HURRY,
    0xff,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_TO1,
    BGM_YUJYA,
    BGM_REVENGE,
    BGM_TO1};

void func_80025578(void) {
    if (D_800CCFDC[D_800BE5D0] != 255) {
        BGM_Play(D_800CCFDC[D_800BE5D0]);
    }
}
//stage init?
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800255B4.s") 
//multiple romcopy funcs
void func_80025B7C(void) {
    func_8002694C(D_800BE5D0);
    func_80026A18(D_800BE5D0);
    func_80026B04(D_800BE5D0);
    func_80026BD0(D_800BE5D0);
    func_80026874(D_800BE5D0);
    func_80026C9C(D_800BE5D0);
    func_8002729C(D_800BE5D0);
    func_80025E00();
}

void func_80025BFC(void) {
    uint32_t* phi_v1;
    uint32_t* phi_a0;
    uint16_t index;

    for (index = 0, phi_v1 = (uint32_t*)0x80380000, phi_a0 = (uint32_t*)0x803DA200; index < 0x180; index++) {
        *phi_a0 = *phi_v1;
        phi_a0++;
        phi_v1++;
        // though below makes more sense, above is required to match? Feels fake
        // phi_a0[index] = phi_v1[index];
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025C38.s")
