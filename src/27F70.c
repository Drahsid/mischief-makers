#include "BGM.h"
#include "GameSave.h"
#include "data_symbols.h"
#include "function_symbols.h"
#include "inttypes.h"
#include <ultra64.h>

// context implies this is something like Actor_Spawn[at]Position
void func_80027370(uint16_t index, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    gActors[index].unk_0xD2 = 0;
    Actor_Spawn(index);
    gActors[index].unk_0x94 |= 0x800;
    gActors[index].unk_0x188 = 0;
    gActors[index].pos.x = pos_x;
    gActors[index].pos.y = pos_y;
    gActors[index].pos.z = pos_z;
}

void func_800273FC(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    func_80027370(index, pos_x, pos_y, pos_z);
    gActors[index].unk_0x84 = arg1;
}

void func_80027468(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, uint8_t r, uint8_t g, uint8_t b) {
    Actor* actor;

    func_80027370(index, pos_x, pos_y, pos_z);
    actor = &gActors[index];
    actor->unk_0xE6 = 0;
    actor->unk_0x84 = arg1;

    if ((r | g | b) != 0) {
        actor->rgba.r = r;
        actor->unk_0x94 |= 0x10;
        actor->rgba.g = g;
        actor->rgba.b = b;
    }
}

void func_80027510(uint16_t index, void* arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    Actor* actor;

    func_80027370(index, pos_x, pos_y, pos_z);
    actor = &gActors[index];
    actor->unk_0xE8 = (uint32_t)arg1;
    actor->unk_0xE6 = 1;
}
//takes 16-bit color vales, returns 32-bit?
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027588.s")

void func_80027644(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, int32_t arg5) {
    Actor* actor;

    func_800273FC(index, arg1, pos_x, pos_y, pos_z);
    actor = &gActors[index];
    actor->unk_0x94 |= 0x200;
    actor->flag |= ACTOR_FLAG_UNK3;
    actor->unk_0x18C = arg5;
}
//prints ASCII text
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800276DC.s") 

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800278E8.s")

#ifdef NON_MATCHING
uint8_t func_80027A44(uint16_t* arg0) {
    if (ALPHA_LOWER_A > *arg0)
        return 6;
    if (*arg0 == 0xC000)
        return 7;
    return D_800D16AA[*arg0];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027A44.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027A88.s")

// might be text related
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027AC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80027D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002801C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800282F0.s")

void func_80028380(void) {
    gPlayerActor.flag = 0;
    D_800CA230 = 1;
    D_80137458 = 0;
    if (gPlayerActor.health < 0) gPlayerActor.health = 0;
}
/*
int32_t func_800283BC(uint32_t SFX, uint16_t index){
    int32_t x = (gActors[index & 0xFFF].pos.x - gAtX)/2.0;
    if( (x<64) && (x<-64) ) x = -64;
    else x=63;
    if(index&0x8000) return SFX_Play_6(SFX,256,x+64);
    return SFX_Play_5(SFX,256,x+64);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800283BC.s")

void func_800284B0(uint16_t x) {}

#ifdef NON_MATCHING
uint16_t func_800284B8(uint16_t x, uint16_t y) {
    uint16_t i=x;
    while (1) {
        if (y > i) return 0;
        if (gActors[i].flag & 2 == 0) break;
        i++;
    }
    return i;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800284B8.s")
#endif
uint16_t func_80028528(void) {
    return func_800284B8(0x90, 0xC0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002854C.s")

void Actor_ZeroFlagRange(uint16_t from, uint16_t to) {
    for (from = from; from < to; from++) {
        gActors[from].flag = 0;
    }
}

void Actor_ZeroFlag_16_32(void) {
    Actor_ZeroFlagRange(0x10, 0x20);
}

void Actor_ZeroFlag_48_144(void) {
    Actor_ZeroFlagRange(0x30, 0x90);
}

void Actor_ZeroFlag_144_192(void) {
    Actor_ZeroFlagRange(0x90, 0xC0);
}

void Actor_ZeroFlag_192_199(void) {
    Actor_ZeroFlagRange(0xc0, 199);
}
void func_800286C8(){
    uint16_t i;
    for(i=0;i<64;i++) D_80104098[i].unk_0x80 = 0;
}

void func_80028704(void) {
    Actor_ZeroFlag_16_32();
    Actor_ZeroFlag_48_144();
    Actor_ZeroFlag_144_192();
    Actor_ZeroFlag_192_199();
    func_800286C8();
}

void func_80028744(void) {
    Actor_ZeroFlag_16_32();
    Actor_ZeroFlag_48_144();
    Actor_ZeroFlag_144_192();
    Actor_ZeroFlag_192_199();
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002884C.s")
#ifdef NON_MATCHING
int32_t func_800288EC(uint16_t i, int16_t x) {
    if ((gActors[i].pos.x <= (x + 0x90)) && (gActors[i].pos.x > (x - 0x90)) && (gActors[i].pos.y <= (x + 0x60)) &&
        (gActors[i].pos.y > (x - 0x60)))
        return 0;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800288EC.s")
#endif
void func_80028980(uint16_t i, int16_t arg1, uint32_t SFX) {
    if (func_800288EC(i, arg1) == 0)
        func_800036C8(SFX, i);
}

int32_t func_800289CC(int32_t x) { // ABS?
    if (x < 0)
        return -x;
    return x;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800289E4.s")

void func_80028AE8(uint16_t i) {
    func_800289E4(i, D_800D36FC, 0x7FFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028B90.s")

void func_80028C00(uint16_t x) {}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029044.s")

#ifdef NON_MATCHING
void func_80029134(uint16_t i) {
    gActors[i].flag &= ~0x00011000;
    gActors[i].flag |= 0x20000; // this step is off?
    gActors[i].unk_0xEC = 0;
    gActors[i].unk_0xF0 = 0;
    gActors[i].unk_0xF4 = 0;
    gActors[i].pos.x_w = gActors[i].unk_0x104;
    gActors[i].pos.y_w = gActors[i].unk_0x108._w;
    gActors[i].pos.z_w = gActors[i].unk_0x10C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029134.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800294E0.s")

uint32_t func_800295D8(int32_t A, int32_t B) {
    return func_800294E0(A,B) + 256 & 0x200;
}

uint32_t func_80029600(int32_t A, int32_t B) {
    return func_800294E0(A,B) + 128 & 0x300;
}

uint32_t func_80029628(int32_t A, int32_t B) {
    return func_800294E0(A,B) + 64 & 0x380;
}

uint32_t func_80029650(int32_t A, int32_t B) {
    return func_800294E0(A,B) + 32 & 0x3C0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029798.s")

#ifdef NON_MATCHING
int32_t func_8002981C(int32_t A, int32_t B, int32_t C) {
    int32_t D = A - B;
    if (D < 1) {
        if (-C <= D)
            return B;
        return A + C;
    }
    if (D <= C)
        return B;
    return A - C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002981C.s")

#endif
#ifdef NON_MATCHING
float func_80029860(float A, float B, float C) {
    if (B < A) {
        if (C > A - B)
            return B;
        return A - C;
    }
    if (-C <= (A - B))
        return B;
    return A + C;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029860.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800298D0.s")

#ifdef NON_MATCHING
int32_t func_8002995C(int32_t A, int32_t B) {
    if (A > B) {
        if (A - B < 0x2000000)
            return 1;
        return -1;
    }
    if (-0x2000000 < A - B)
        return -1;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002995C.s")
#endif
/* Regalloc mismatch
void func_800299B0(uint16_t index){
    int32_t x= gActors[index].unk_0xEC;
    if((x>0)&&(gActors[index].unk_0x98&8)){
        gActors[index].unk_0xEC=0;
        x=0;
    }
    if((x<0)&&(gActors[index].unk_0x98&4)){
        gActors[index].unk_0xEC=0;
    }
    x= gActors[index].unk_0xF0;
    if((x>0)&&(gActors[index].unk_0x98&16)){
        gActors[index].unk_0xF0=0;
        x=0;
    }
    if((x<0)&&(gActors[index].unk_0x98&32)){
        gActors[index].unk_0xF0=0;
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800299B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029D58.s")

int32_t func_80029DEC(uint16_t arg0, uint16_t arg1) {
    if ((D_800BE4E0 & arg0) == 0) {
        if ((Rand() & arg1) == 0)
            return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80029F00.s")

uint16_t func_80029FB8(uint16_t i, int16_t x1, int16_t x2, int16_t y1, int16_t y2) {
    return func_80029E48(i, x1, x2) | func_80029F00(i, y1, y2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A018.s")

int32_t func_8002A090(int32_t a, int32_t b) {
    if (b < 0) {
        b = -b;
    }
    if (b < a) {
        a = b;
    }
    if (a < -b) {
        a = -b;
    }

    return a;
}

void func_8002A0C4(uint16_t i, int32_t x) {
    if (gActors[i].flag & 0x20) {
        gActors[i].unk_0xEC = -x;
    }
    else {
        gActors[i].unk_0xEC = x;
    }
}

void func_8002A118(uint16_t i, int32_t x) {
    gActors[i].unk_0xEC = func_8002A090(gActors[i].unk_0xEC, x);
}

void func_8002A170(uint16_t i, int32_t x) {
    gActors[i].unk_0xF0 = func_8002A090(gActors[i].unk_0xF0, x);
}

void func_8002A1C8(uint16_t i, int32_t x) {
    func_8002A118(i, x);
    func_8002A170(i, x);
}

void func_8002A200(uint16_t i, int32_t x) {
    gActors[i].unk_0xF8 = func_8002A090(gActors[i].unk_0xF8, x);
}
void func_8002A258(uint16_t i, int32_t x) {
    gActors[i].unk_0xFC = func_8002A090(gActors[i].unk_0xFC, x);
}

void func_8002A2B0(uint16_t i, int32_t x) {
    gActors[i].unk_0xF8 = func_8002A090(gActors[i].unk_0xF8, x);
    gActors[i].unk_0xFC = func_8002A090(gActors[i].unk_0xFC, x);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A320.s")

void func_8002A404(uint16_t i, int32_t x) {
    gActors[i].unk_0xEC = func_8002981C(gActors[i].unk_0xEC, 0, x);
}

void func_8002A464(uint16_t i, int32_t x) {
    gActors[i].unk_0xF0 = func_8002981C(gActors[i].unk_0xF0, 0, x);
}

void func_8002A4C4(uint16_t i, int32_t x, int32_t y) {
    func_8002A404(i, x);
    func_8002A464(i, y);
}
#ifdef NON_MATCHING
int32_t func_8002A4FC(uint16_t i) {
    if (gActors[i].unk_0xEC < 1) {
        if (gActors[i].unk_0x98 & 4) {
            gActors[i].unk_0xEC = 0;
            return 2;
        }
    }
    else {
        if (gActors[i].unk_0x98 & 8) {
            gActors[i].unk_0xEC = 0;
            return 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A4FC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A898.s")
//these 2 seem to calculate player position relative to boss
/*
int32_t func_8002A900(uint16_t A, uint16_t B){
    int32_t x,y;
    x=gActors[A].unk_0xAC+gActors[A].unk_0xAA;
    if(x<0)x++;
    y=gActors[B].unk_0xAC+gActors[B].unk_0xAA;
    if(y<0)y++;
    return ((x>>1)+gActors[B].pos.x+(y>>1))-gActors[A].pos.x;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A900.s")
/*
int32_t func_8002A990(uint16_t A, uint16_t B){
    int32_t x,y;
    x=gActors[A].unk_0xAE+gActors[A].unk_0xBO;
    if(x<0)x++;
    y=gActors[B].unk_0xAE+gActors[B].unk_0xBO;
    if(y<0)y++;
    return ((x>>1)+gActors[B].pos.y+(y>>1))-gActors[A].pos.y;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AA20.s")
void func_8002ABE4(uint16_t i, int16_t x) {
    gActors[i].unk_0xA6 = x;
    gActors[i].unk_0xA8 = -x;
    gActors[i].unk_0xA2 = -x;
    gActors[i].unk_0xA4 = x;
}

void func_8002AC30(uint16_t i, int16_t x) {
    gActors[i].unk_0xAE = x;
    gActors[i].unk_0xB0 = -x;
    gActors[i].unk_0xAA = -x;
    gActors[i].unk_0xAC = x;
}

void func_8002AC7C(uint16_t i, int16_t x, int16_t y) {
    if (gActors[i].flag & 0x20) {
        gActors[i].unk_0xA4 = -x;
        gActors[i].unk_0xA2 = -y;
    }
    else {
        gActors[i].unk_0xA2 = x;
        gActors[i].unk_0xA4 = y;
    }
}

void func_8002ACFC(uint16_t i, int16_t x, int16_t y) {
    if (gActors[i].flag & 0x20) {
        gActors[i].unk_0xAC = -x;
        gActors[i].unk_0xAA = -y;
    }
    else {
        gActors[i].unk_0xAA = x;
        gActors[i].unk_0xAC = y;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AD7C.s")
//this seems to begin actor coloring functions.
#ifdef NON_MATCHING
uint8_t func_8002AE44(int16_t x, int16_t y) {
    if (-1 < y) {
        y += x;

        if (255 < y) {
            return 255;
        }

        return y;
    }

    if (x <= -y) {
        return 0;
    }

    return x + y;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002AE44.s")
#endif

void func_8002AEB4(uint16_t i, uint8_t col) { // uniform grayscale.
    gActors[i].rgba.r = col;
    gActors[i].rgba.g = col;
    gActors[i].rgba.b = col;
}

void func_8002AEF8(uint16_t x, int16_t y) { //tint actor[x] by y
    gActors[x].rgba.r = func_8002AE44(gActors[x].rgba.r, y);
    gActors[x].rgba.g = func_8002AE44(gActors[x].rgba.g, y);
    gActors[x].rgba.b = func_8002AE44(gActors[x].rgba.b, y);
}

void func_8002AF7C(uint16_t i, uint16_t arg1, int16_t arg2) {
    if ((D_800BE4E0 & arg1) == 0) {
        gActors[i].rgba.r = 0x7f;
        gActors[i].rgba.g = 0x7f;
        gActors[i].rgba.b = 0x7f;
    }
    else {
        func_8002AEF8(i, arg2);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B010.s")

void func_8002B140(uint16_t i, int16_t y) { // looks to be some actor color blend.
    gActors[i].rgba.r = func_8002B010(i, gActors[i].rgba.r, y);
    gActors[i].rgba.g = func_8002B010(i, gActors[i].rgba.g, y);
    gActors[i].rgba.b = func_8002B010(i, gActors[i].rgba.b, y);
}

void func_8002B1D0(uint16_t i, int16_t y) {
    gActors[i].rgba.r = func_8002981C(gActors[i].rgba.r, 0, y);
    gActors[i].rgba.g = func_8002981C(gActors[i].rgba.g, 0, y);
    gActors[i].rgba.b = func_8002981C(gActors[i].rgba.b, 0, y);
}

#ifdef NON_MATCHING
void func_8002B25C(uint16_t i, int16_t y) {
    gActors[i].rgba.r = gActors[i].rgba.g = gActors[i].rgba.b = func_8002B010(i, (uint16_t)gActors[i].rgba.r, y); // non-matching stack?
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B25C.s")
#endif
#ifdef NON_MATCHING
void func_8002B2D0(uint16_t i){
    int8_t c;
    gActors[i].unk_0x94&= ~0x0010;
    c= ((-D_800BE4E0 & 0xf)<<3);
    gActors[i].rgba.r = gActors[i].rgba.g = gActors[i].rgba.b = c;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B2D0.s")
#endif
#ifdef NON_MATCHING
void func_8002B330(uint16_t i) {
    uint8_t c;

    if (D_800BE4E0 & 4) {
        c = func_8002B010(i, gActors[i].rgba.r, 64);
        gActors[i].rgba.r = c;
        gActors[i].rgba.g = c;
        gActors[i].rgba.b = c;
    }
    else {
        c = func_8002B010(i, gActors[i].rgba.r, -64);
        gActors[i].rgba.r = c;
        gActors[i].rgba.g = c;
        gActors[i].rgba.b = c;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B330.s")
#endif

#ifdef NON_MATCHING
void func_8002B400(uint16_t i) {
    uint8_t c;

    if (D_800BE4E0 & 4) {
        gActors[i].rgba.r = func_8002B010(i, gActors[i].rgba.r, 64);
        gActors[i].rgba.g = 0;
        gActors[i].rgba.b = 0;
    }
    else {
        gActors[i].rgba.r = 0;
        c = func_8002B010(i, gActors[i].rgba.g, -64);
        gActors[i].rgba.g = c;
        gActors[i].rgba.b = c;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B400.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B6E8.s")

void func_8002B7B8(uint16_t*p0,uint16_t*p1,uint16_t x){
    u16 i = *p0;
    while(i!=256){
        p1[i]=x;
        p0+=2;
        i=*p0;
    }
}

void func_8002B7F4(uint16_t*p0,uint16_t*p1){
    u16 i = *p0;
    while(i!=256){
        p1[i]=p0[1];
        p0+=2;
        i=*p0;
    }
}

#ifdef NON_MATCHING
void func_8002B82C(uint16_t* arg0, int16_t* arg1, int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg5) {
    uint16_t index;
    for (index = arg2; 0 < index; index--) {
        *arg1++ = func_8002B5A0(*arg0++, arg3, arg4, arg5);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B82C.s")
#endif

int32_t func_8002B8F0(uint16_t index, uint16_t dmg) {
    if (gActors[index].health <= dmg) {
        gActors[index].health = 0;
        return 0;
    }
    gActors[index].health -= dmg;
    return 1;
}

int32_t func_8002B954(uint16_t index, uint16_t arg1) {
    if (D_800BE4D8 == 0) {
        if (arg1 & 0x80) {
            return 1;
        }

        if ((arg1 & 0x40) && (gActors[index].unk_0xF0 < 0)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002B9D8.s")

int32_t func_8002BACC(uint16_t arg0, uint16_t arg1) {
    if ((D_800BE4D8 == 0) && (arg1 & 0x80)) {
        return 1;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BB04.s")

#ifdef NON_MATCHING
// RegAlloc?
uint8_t func_8002BC10(uint16_t index) {
    uint16_t x = func_80012C04(gActors[index].pos.x, gActors[index].pos.y) & 0x7F;

    if ((x == 50) || (x == 54)) {
        x = 0;
    }

    return x;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BC10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C140.s")
void func_8002C1D8(uint16_t x){}

void func_8002C1E0(uint16_t* x, uint16_t* y, uint16_t z) {
    for (z != 0; z > 0; z--) {
        *y = *x;
        x++;
        y++;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C3C8.s")

#ifdef NON_MATCHING
void func_8002C510(uint16_t index) {
    if (gActors[index].flag & 0x80 == 0) {
        func_8002AEB4(index, gActors[index].unk_0x154._w - 8);
    }
    else {
        func_8002AEB4(index, gActors[index].unk_0x154._w + 6);
    }

    func_8002AC30(index, *(int16_t*)(gActors[index].unk_0x158 + 2)); // that's why we'll call it a union.
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C510.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C5C4.s")
void func_8002C6DC(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D040.s")
/*
void func_8002D260(uint16_t index){
    gActors[index].unk_0xA6+=2;
    gActors[index].unk_0xA8-=2;
    gActors[index].unk_0xA2-=2;
    gActors[index].unk_0xA4+=2;
    if(gActors[index].unk_0x110==0.0)gActors[index].flag=0;
    else gActors[index].unk_0x110-=1.0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002E89C.s")

const float D_800EB904 = 0.8;

void func_8002EBB8(uint16_t index, int16_t x, int16_t y, int32_t A, int32_t B) {
    float temp;

    gActors[index].unk_0xD2 = 0x2602;
    Actor_Spawn(index);

    temp = D_800EB904;
    gActors[index].unk_0x94 = 9;
    gActors[index].flag = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK2;
    gActors[index].unk_0x84 = 0x24A;
    gActors[index].unk_0xCE = 5;
    gActors[index].unk_0xDF = 0;
    gActors[index].unk_0xDA = 4;
    gActors[index].unk_0xDB = 4;
    gActors[index].unk_0xB4 = temp;
    gActors[index].unk_0xB8 = temp;

    func_8002ABE4(index, 4);
    func_8002AC30(index, 8);

    gActors[index].health = 1;
    gActors[index].unk_0xE4 = 30;
    gActors[index].pos.x = x;
    gActors[index].pos.y = y;
    gActors[index].unk_0xEC = A;
    gActors[index].unk_0xF0 = B;
}

void func_8002ECAC(uint16_t index, int16_t x, int16_t y, int32_t A, int32_t B) {
    gActors[index].unk_0xD2 = 0x2600;
    Actor_Spawn(index);
    gActors[index].pos.x = x;
    gActors[index].pos.y = y;
    gActors[index].unk_0xEC = A;
    gActors[index].unk_0xF0 = B;
}

void func_8002ED34(uint16_t i, int16_t x, int16_t y, int32_t z) {}

#ifdef NON_MATCHING
void func_8002ED48(uint16_t index, int16_t x, int16_t y) {
    gActors[index].unk_0xD2 = 0x2603;
    Actor_Spawn(index);
    gActors[index].health = 10;
    gActors[index].pos.x = x;
    gActors[index].pos.y = y;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002ED48.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002EFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F420.s")


void RedGem_Clamp(void) {
    if (gRedGems >= 9999) {
        gRedGems = 9999;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002F6D4.s")

#ifdef NON_MATCHING
void gem_collision(uint16_t arg0, uint16_t arg1, int32_t arg2, int16_t arg3, int16_t arg4) {
    uint16_t temp_v1;
    uint16_t temp_v1_2;
    uint16_t temp_v1_3;

    if (arg2 == &Data_RedGem) {
        gRedGems++;
        RedGem_Clamp();
        func_8003FB20(arg0, 0, 1.0, arg3, (int32_t)arg4, (int32_t)((gPlayerActorIndex * 0x198) + 0x800F0000)->unk - A60);
        if (arg1 != 0) {
            func_80003828(0x57, arg0);
            return;
        }
        func_800036C8(0x57, arg0);
        return;
    }
    if (arg2 == &Data_BlueGem) {
        temp_v1 = gPlayerActorIndex;
        if (temp_v1)
            gActors[temp_v1_2].health += 0x1E;
        else
            Actor_AddHP(0, 0x1E);
        func_800337F4(arg3, arg4, 4, 0x132);
        if (arg1 != 0) {
            func_80003828(0x95, arg0);
            return;
        }
        func_800036C8(0x95, arg0);
        return;
    }
    if (arg2 == &Data_YellowGem) {
        YellowGem_setFlag();
        temp_v1_2 = gPlayerActorIndex;
        if (temp_v1_2)
            gActors[temp_v1_2].health += 0x1f4;
        else
            Actor_AddHP(0, 0x1F4);
        func_8003F9CC(2.5, arg3, arg4, 0);
        if (arg1 != 0) {
            func_80003828(0x3B, arg0);
            return;
        }
        func_800036C8(0x3B, arg0);
        return;
    }
    func_8003F8B0(1.0, arg3, arg4, ((gPlayerActorIndex * 0x198) + 0x800F0000)->unk - A60);
    temp_v1_3 = gPlayerActorIndex;
    if (temp_v1_3)
        gActors[temp_v1_3].health += 0x12c;
    else
        Actor_AddHP(0, 0x12C);
    if (arg1 != 0) {
        func_80003828(0x125, arg0);
        return;
    }
    func_800036C8(0x125, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/GemCollision.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800303A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800309C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030A24.s")

void func_80030A74(uint16_t index) {
    if (D_800BE4E0 & 1) {
        gActors[index].rgba.r = 0x7f;
        gActors[index].rgba.g = 0x7f;
        gActors[index].rgba.b = 0x7f;
    }
    else {
        gActors[index].rgba.r = 0x4f;
        gActors[index].rgba.g = 0x4f;
        gActors[index].rgba.b = 0x4f;
    }
}

#ifdef NON_MATCHING
void func_80030B0C(uint16_t index) {
    if (gActors[index].unk_0x104 <=0)
        gActors[index].rgba.a = func_8002AE44(gActors[index].rgba.a, gActors[index].unk_0x108._lo);
    else
      gActors[index].unk_0x104--;
        
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030B0C.s")
#endif
void func_80030B84(uint16_t i) {
    func_80030A74(i);
    func_80030B0C(i);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80030F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800310A4.s")

void func_8003119C(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    func_80030F94(func_800284B8(16, 45), arg0, arg1, arg2, arg3);
}

void func_800311EC(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    func_800310A4(func_800284B8(16, 45), arg0, arg1, arg2, arg3);
}

void func_8003123C(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    func_80030F94(func_80028528(), arg0, arg1, arg2, arg3);
}

uint16_t func_80031284(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(func_80028528(), arg0, arg1, arg2, arg3);
}

uint16_t func_800312CC(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_80030F94(func_800284B8(16, 45) | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_80031324(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(func_800284B8(16, 45) | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_8003137C(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_80030F94(func_80028528() | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_800313CC(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(func_80028528() | 0x8000, arg0, arg1, arg2, arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003141C.s")

uint16_t func_80031CAC(uint16_t arg0, int32_t x, int32_t y, int32_t z) {
    uint16_t index = func_80028528();

    if (index) {
        gActors[index].unk_0xD2 = 0x34;
        Actor_Spawn(index);
        gActors[index].flag = 3;
        gActors[index].unk_0x84 = arg0;
        gActors[index].pos.x_w = x;
        gActors[index].pos.y_w = y;
        gActors[index].pos.z_w = z;
        gActors[index].unk_0x148 = 1.0;
    }

    return index;
}
void func_80031D58(uint16_t arg0, uint16_t index) {
    if (index < arg0) {
        gActors[index].unk_0x148 = 0.0;
    }
    else {
        gActors[index].unk_0x148 = 1.0;
    }
}

#ifdef NON_MATCHING
void func_80031DDC(uint16_t index) {
    Actor* actor = &gActors[index];

    if (actor->unk_0x148 = 0.0) {
        actor->flag = 0;
    }
    actor->unk_0x148 -= 1.0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031DDC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003358C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800337F4.s")

void func_800338F4(int16_t arg0, int16_t arg1, int16_t arg2) {
    if ((D_800BE4E0 & 0x0F) == 0) {
        func_800337F4(arg0, arg1, arg2, 0x132);
    }
}

uint16_t D_800D2294[4] = { 0x136, 0x138, 0x13A, 0x13A };

void func_80033948(int16_t arg0, int16_t arg1, int16_t arg2) {
    if ((D_800BE4E0 & 0x0F) == 0) {
        func_800337F4(arg0, arg1, arg2, D_800D2294[Rand() & 3]);
    }
}

void func_800339AC(int16_t arg0, int16_t arg1, int16_t arg2) {}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033CB0.s")
/* todo, set struct feilds to s2_w
void func_80033DE4(uint16_t index){
    if(gActors[index].unk_0x154._w-- == 0) gActors[index].flag=0;
    gActors[index].unk_0xEC+=gActors[index].unk_0x158;
    gActors[index].unk_0xF0+=gActors[index].unk_0x15C;
    gActors[index].unk_0x150._w = func_8002B5A0(gActors[index].unk_0x150._lo,gActors[index].unk_0x168._lo,gActors[index].unk_0x164._lo,gActors[index].unk_0x160._lo);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003480C.s")

/* How do I const floats?
void func_800348E4(uint16_t index){
    gActors[index].rgba.a=func_8002981C(gActors[index].rgba.a,0,2);
    gActors[index].unk_0xB4=func_8002981C(gActors[index].unk_0xB4,-0.01f,gActors[index].unk_0x114);
    gActors[index].unk_0xB8=func_8002981C(gActors[index].unk_0xB8,-0.01f,gActors[index].unk_0x118);
    if((gActors[index].rgba.a==0)||(gActors[index].unk_0xB4<0.0)||(gActors[index].unk_0xB8<0.0)){
        gActors[index].flag=0;
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800348E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800349C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034A0C.s")
void func_80034D14(uint16_t i){
    gActors[i].unk_0xB4=gActors[i].unk_0x168 /1000.0f;
    gActors[i].unk_0xB8=gActors[i].unk_0x16C /1000.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80034E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003510C.s")
int16_t func_800351C8(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3){
    return func_8003510C(arg0,arg1,arg2,arg3,0);
}
int16_t func_80035218(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3, uint16_t arg4){
    return func_8003510C(arg0,arg1,arg2,arg3,arg4);
}

int16_t func_8003526C(uint16_t arg0, uint16_t arg1, uint16_t arg2, uint16_t arg3, uint16_t arg4){
    return func_8003510C(arg0,arg1,arg2,arg3,arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800352C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035524.s")
void func_80035824(uint16_t i){
    gActors[i].unk_0xA6=0x14;
    gActors[i].unk_0xA8=6;
    gActors[i].unk_0xA2=-8;
    gActors[i].unk_0xA4=8;
}

void func_80035878(uint16_t i){
    gActors[i].unk_0xAE=14;
    gActors[i].unk_0xB0=-10;
    gActors[i].unk_0xAA=-8;
    gActors[i].unk_0xAC=8;
}

uint32_t func_800358CC(uint16_t i , uint16_t x){return 0;}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80035E90.s")
/*
void func_8003667C(uint16_t index){
    if(gActors[index].unk_0xD0_h==0) func_800358DC(index);
    else func_80035A20(index);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003707C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800398F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003A9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D5A0.s")
/*
u32 func_8003D628(u16 x){
    gActors[0xC0].unk_0xD2=107;
    Actor_Spawn(0xc0);
    gActors[0xC0].flag = 2;
    gActors[0xC0].unk_0x110=180.0f;
    gActors[0xC0].unk_0x188=x;
    func_8005CA34(8,60);
    return 0xC0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003D794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003E854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F8B0.s")

void func_8003F9CC(float f, uint16_t a, uint16_t b, uint32_t c) {}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800404AC.s")

#ifdef NON_MATCHING
void func_80040564(uint16_t index) {
    if (gActors[index].unk_0xD0_h == 0) {
        gActors[index].flag = 0x9183;
    }
    else if (gActors[index].unk_0xD0_h != 1) {
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040564.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800406A4.s")

#ifdef NON_MATCHING
int32_t func_800407D4(uint16_t arg0) {
    if (arg0 == D_800D5820) {
        if (D_800D5824 == 0x800) {
            return 0x800;
        }
        if (D_800D5824 == 0x1000) {
            return 0x1000;
        }
        if (D_800D5824 == 0x2000) {
            return 0x2000;
        }
        if (D_800D5824 == 0x4000) {
            return 0x4000;
        }
        if (D_800D5824 == 0x8000) {
            return 0x8000;
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800407D4.s")
#endif

#ifdef NON_MATCHING
void func_80040858(int16_t arg0) {
    if ((arg0 == D_800D5820) && (func_8005DEFC())) {
        func_8005DFC8(0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040858.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004089C.s")

#ifdef NON_MATCHING
int32_t func_800409E0(uint16_t index) {
    if (gActors[index].health > 0 && gActors[index].unk_0xD4 <= 0 && (gActors[index].flag & ACTOR_FLAG_ENABLED) == 3 &&
        gActors[index].unk_0xD0_h < 0x51) {
        return 1;
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800409E0.s")
#endif

#ifdef NON_MATCHING
int32_t func_80040A64(void) {
    int32_t ret;

    if (gPlayerActorIndex == 0) {
        ret = func_80048CE4();
    }
    else {
        if (D_800D2954 > 0) {
            ret = func_800409E0(gPlayerActorIndex);
        }
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040A64.s")
#endif

#ifdef NON_MATCHING
void FUN_80040ab4(uint16_t index) {
    gActors[index].field_0x94 = 0x205;
    gActors[index].flag = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12;
    gActors[index].field_0x84 = 0x1a8;
    *(uint8_t*)&gActors[index].field_0xdf = 0x40;
    func_8002AC30(index, 10);
    *(uint16_t*)(gActors[index].pos + 2) = 0xffff;
    gActors[index].field_0x10c[4] = 1.0;
    gActors[index].field_0x120 = 255.0;
    return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040AB4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004168C.s")

void func_8004172C(uint16_t index, uint16_t* pos) {
    gActors[index].pos.x = pos[0] - D_800BE558._hi;
    gActors[index].pos.y = pos[1] - D_800BE55C._hi;
}

#ifdef NON_MATCHING
void func_8004178C(uint16_t index, uint16_t* pos) {
    if (gActors[index].unk_0x174)
        func_8004172C(gActors[index].unk_0x174, pos);
    else {
        func_8004172C(0, pos);
        gPlayerPosXMirror._hi = D_800BE558._hi + gPlayerActor.pos.x;
        gPlayerPosXMirror._hi = D_800BE55C._hi + gPlayerActor.pos.y;

        gPlayerActor.flag &= ~ACTOR_FLAG_FLIPPED;
        if ((pos[2] & 1)) {
            gPlayerActor.flag |= ACTOR_FLAG_FLIPPED;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_8004178C.s")
#endif

int32_t func_8004185c(uint16_t index) {
    if (gActors[index].unk_0xD0_h == 2) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800418A8.s")

int32_t func_80042290(uint16_t index) {
    if (gActors[index].unk_0xD2 == 0x90C && (gActors[index].flag & ACTOR_FLAG_ACTIVE)) {
        if ((gActors[index].unk_0x188 & 0x8000) == 0) {
            return 1;
        }
    }
    return 0;
}

void func_80042308(uint16_t i) {}

void func_80042310(int32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {}
void func_80042324(int32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {}

void func_80042338(uint16_t i) {}
void func_80042340(uint16_t i) {}
void func_80042348(uint16_t i) {}
void func_80042350(uint16_t i) {}
void func_80042358(uint16_t i) {}

void func_80042360(uint16_t index) {
    gActors[index].unk_0xD0_h++;
}

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042A0C.s")

void func_80042AEC(uint16_t i) {
    func_80042864(i);
    func_800423A0(i);
    func_800427E0(i);
}

#ifdef NON_MATCHING
void func_80042B2C(uint16_t index) {
    if (0.0 <= gActors[index].unk_0x110) {
        gActors[index].unk_0xD0_h += -2;
    }
    else {
        gActors[index].flag = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042B2C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/27F70/func_80042C10.s")