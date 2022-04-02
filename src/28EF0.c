#include "BGM.h"
#include "GameSave.h"
#include "common.h"


void func_800282F0(int16_t x,int16_t y){
    ActorSpawn_Marina();
    D_801373E0.unk_0x20._w=0;
    D_801373E0.unk_0x24._w=0;
    gPlayerActor.pos.x=x;
    gPlayerActor.pos.y=y;
    gPlayerPosXMirror._hi=gScreenPosCurrentX._hi+x;
    gPlayerPosYMirror._hi=gScreenPosCurrentY._hi+y;
    D_800CA230=0;
    if(gPlayerActor.health<0) gPlayerActor.health=0;
}


void func_80028380(void) {
    gPlayerActor.flag = 0;
    D_800CA230 = 1;
    D_80137458 = 0;
    if (gPlayerActor.health < 0) gPlayerActor.health = 0;
}
#ifdef NON_MATCHING
int32_t func_800283BC(uint32_t SFX, uint16_t index){
    int32_t x = (thisActor.pos.x - gAtX)/2.0;
    if( (x<64) && (x<-64) ) x = -64;
    else x=63;
    if(index&0x8000) return SFX_Play_6(SFX,256,x+64);
    return SFX_Play_5(SFX,256,x+64);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800283BC.s")
#endif

#ifndef VER_JPN
void func_800284B0(uint16_t x) {}
#endif

#ifdef NON_MATCHING
uint16_t Actor_GetInactiveInRange(uint16_t x, uint16_t y) {

    while (1) {
        if (y <= x) return 0;
        if (gActors[x++].flag & 2 == 0) return x;
    }
    
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/Actor_GetInactiveInRange.s")
#endif

uint16_t Actor_GetInactiveInRange_144_192(void) {
    return Actor_GetInactiveInRange(ACTOR_COUNT0, ACTOR_COUNT1);
}

uint16_t func_8002854C(uint16_t T,int16_t pos_x,int16_t pos_y,int16_t pos_z){
    uint16_t index = Actor_GetInactiveInRange(ACTOR_COUNT0, ACTOR_COUNT1);
    if(index){
        ACTORINIT(index,T);
        thisActor.pos.x = pos_x;
        thisActor.pos.y = pos_y;
        thisActor.pos.z = pos_z;
    }
    return index;
}

void Actor_ZeroFlagRange(uint16_t from, uint16_t to) {
    for (from = from; from < to; from++) {
        gActors[from].flag = 0;
    }
}

void Actor_ZeroFlag_16_32(void) {
    Actor_ZeroFlagRange(0x10, 0x20);
}

void Actor_ZeroFlag_48_144(void) {
    Actor_ZeroFlagRange(0x30, ACTOR_COUNT0);
}

void Actor_ZeroFlag_144_192(void) {
    Actor_ZeroFlagRange(ACTOR_COUNT0, ACTOR_COUNT1);
}

void Actor_ZeroFlag_192_199(void) {
    Actor_ZeroFlagRange(ACTOR_COUNT1, 199);
}
void func_800286C8(){
    uint16_t i;
    for(i=0;i<64;i++) gPortraits[i].Active = 0;
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

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002884C.s")
#ifdef NON_MATCHING
int32_t func_800288EC(uint16_t i, int16_t x) {
    if ((gActors[i].pos.x <= (x + 0x90)) && (gActors[i].pos.x > (x - 0x90)) && (gActors[i].pos.y <= (x + 0x60)) &&
        (gActors[i].pos.y > (x - 0x60)))
        return 0;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800288EC.s")
#endif

void func_80028980(uint16_t i, int16_t arg1, uint32_t SFX) {
    if (func_800288EC(i, arg1) == 0)
        SFX_ActorPanX(SFX, i);
}

int32_t ABS_800289cc(int32_t x) {
    if (x < 0)
        return -x;
    return x;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800289E4.s")

void func_80028AE8(uint16_t i) {
    func_800289E4(i, D_800D36FC, 0x7FFF);
}
void func_80028B1C(uint16_t index){
    func_800289E4(index,D_800D36DC,ABS_800289cc(thisActor.pos.x-gPlayerActor.pos.x));
}


void func_80028B90(uint16_t index){
    uint16_t other = thisActor.unk_0xD6;
    if(thisActor.pos.x<gActors[other].pos.x) thisActor.unk_0xF8._w= -gActors[other].unk_0xF8._w;
    else thisActor.unk_0xF8._w= gActors[other].unk_0xF8._w;
}


void func_80028C00(uint16_t x) {}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029044.s")

#ifdef NON_MATCHING
void func_80029134(uint16_t i) {
    gActors[i].flag &= ~0x00011000;
    gActors[i].flag |= 0x20000; // this step is off?
    gActors[i].vel.x_w = 0;
    gActors[i].vel.y_w = 0;
    gActors[i].vel.z_w = 0;
    gActors[i].pos.x_w = gActors[i].unk_0x104._w;
    gActors[i].pos.y_w = gActors[i].unk_0x108._w;
    gActors[i].pos.z_w = gActors[i].unk_0x10C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029134.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800294E0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029798.s")

#ifdef NON_MATCHING
int32_t ModInRange_i(int32_t A, int32_t B, int32_t C) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ModInRange_i.s")

#endif
#ifdef NON_MATCHING
float ModInRange_f(float A, float B, float C) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ModInRange_f.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800298D0.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002995C.s")
#endif

// Regalloc mismatch
#ifdef NON_MATCHING
void func_800299B0(uint16_t index){
    int32_t x= thisActor.vel.x_w;
    if((x>0)&&(thisActor.flag3&8)){
        thisActor.vel.x_w=0;
        x=0;
    }
    if((x<0)&&(thisActor.flag3&4)){
        thisActor.vel.x_w=0;
    }
    x= thisActor.vel.y_w;
    if((x>0)&&(thisActor.flag3&16)){
        thisActor.vel.y_w=0;
        x=0;
    }
    if((x<0)&&(thisActor.flag3&32)){
        thisActor.vel.y_w=0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800299B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029A7C.s")

uint32_t func_80029B00(int16_t x,int16_t yHi,int16_t yLo){
    if(((VipToPlayerX<x)&&(VipToPlayerX>-x))&&((VipToPlayerY<yHi)&&(VipToPlayerY>yLo)))
      return 1;
    return 0;
}

uint32_t func_80029B74(int16_t x){
    if((VipToPlayerX<x)&&(VipToPlayerX>-x)) return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029BB4.s")

uint32_t func_80029C44(int16_t xHi,int16_t xLo,int16_t yHi,int16_t yLo){
    if(((VipToPlayerX>xHi)&&(VipToPlayerX<xLo))&&((VipToPlayerY<yHi)&&(VipToPlayerY>yLo)))
      return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029D58.s")

int32_t func_80029DEC(uint16_t frame, uint16_t rng) {
    if (((gSceneFrames & frame) == 0) && ((Rand() & rng)) == 0)
        return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80029F00.s")

uint16_t func_80029FB8(uint16_t i, int16_t x1, int16_t x2, int16_t y1, int16_t y2) {
    return func_80029E48(i, x1, x2) | func_80029F00(i, y1, y2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A018.s")

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
        gActors[i].vel.x_w = -x;
    }
    else {
        gActors[i].vel.x_w = x;
    }
}

void func_8002A118(uint16_t i, int32_t x) {
    gActors[i].vel.x_w = func_8002A090(gActors[i].vel.x_w, x);
}

void func_8002A170(uint16_t i, int32_t x) {
    gActors[i].vel.y_w = func_8002A090(gActors[i].vel.y_w, x);
}

void func_8002A1C8(uint16_t i, int32_t x) {
    func_8002A118(i, x);
    func_8002A170(i, x);
}

void func_8002A200(uint16_t i, int32_t x) {
    gActors[i].unk_0xF8._w = func_8002A090(gActors[i].unk_0xF8._w, x);
}
void func_8002A258(uint16_t i, int32_t x) {
    gActors[i].unk_0xFC._w = func_8002A090(gActors[i].unk_0xFC._w, x);
}

void func_8002A2B0(uint16_t i, int32_t x) {
    gActors[i].unk_0xF8._w = func_8002A090(gActors[i].unk_0xF8._w, x);
    gActors[i].unk_0xFC._w = func_8002A090(gActors[i].unk_0xFC._w, x);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A320.s")

void func_8002A404(uint16_t i, int32_t x) {
    MODi(gActors[i].vel.x_w, 0, x);
}

void func_8002A464(uint16_t i, int32_t y) {
    MODi(gActors[i].vel.y_w, 0, y);
}

void func_8002A4C4(uint16_t i, int32_t x, int32_t y) {
    func_8002A404(i, x);
    func_8002A464(i, y);
}
#ifdef NON_MATCHING
int32_t func_8002A4FC(uint16_t i) {
    if (gActors[i].vel.x_w < 1) && (gActors[i].flag3 & 4) {
        gActors[i].vel.x_w = 0;
        return 2;
    }
    else if (gActors[i].flag3 & 8) {
        gActors[i].vel.x_w = 0;
        return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A4FC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A898.s")
//these 2 seem to calculate player position relative to boss
/*
int32_t func_8002A900(uint16_t A, uint16_t B){
    int32_t x,y;
    x=(gActors[A].hitboxBX1+gActors[A].hitboxBX0)/2;
    y=(gActors[B].hitboxBX1+gActors[B].hitboxBX0)/2;
    return ((x)+gActors[B].pos.x+(y))-gActors[A].pos.x;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A900.s")
/*
int32_t func_8002A990(uint16_t A, uint16_t B){
    int32_t x,y;
    x=gActors[A].hitboxBY0+gActors[A].hitboxBY1;
    if(x<0)x++;
    y=gActors[B].hitboxBY0+gActors[B].hitboxBY1;
    if(y<0)y++;
    return ((x>>1)+gActors[B].pos.y+(y>>1))-gActors[A].pos.y;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002AA20.s")
void Actor_HitboxASet(uint16_t i, int16_t x) {
    gActors[i].hitboxAY0 = x;
    gActors[i].hitboxAY1 = -x;
    gActors[i].hitboxAX0 = -x;
    gActors[i].hitboxAX1 = x;
}

void Actor_HitboxBSet(uint16_t i, int16_t x) {
    gActors[i].hitboxBY0 = x;
    gActors[i].hitboxBY1 = -x;
    gActors[i].hitboxBX0 = -x;
    gActors[i].hitboxBX1 = x;
}

void func_8002AC7C(uint16_t i, int16_t x, int16_t y) {
    if (gActors[i].flag & 0x20) {
        gActors[i].hitboxAX1 = -x;
        gActors[i].hitboxAX0 = -y;
    }
    else {
        gActors[i].hitboxAX0 = x;
        gActors[i].hitboxAX1 = y;
    }
}

void func_8002ACFC(uint16_t i, int16_t x, int16_t y) {
    if (gActors[i].flag & 0x20) {
        gActors[i].hitboxBX1 = -x;
        gActors[i].hitboxBX0 = -y;
    }
    else {
        gActors[i].hitboxBX0 = x;
        gActors[i].hitboxBX1 = y;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002AD7C.s")
//this seems to begin actor coloring functions.
#ifdef NON_MATCHING
u16 func_8002AE44(s16 x, s16 y) { //99.11% accurate
    s16 temp;

    if (y < 0) {
        if (-y >= x) return 0;
        return (x + y);
    }
    temp = x + y;
    if (temp > 255) return 255;
    return temp;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002AE44.s")
#endif

void Actor_Shade(uint16_t i, uint8_t col) { // uniform grayscale.
    gActors[i].rgba.r = col;
    gActors[i].rgba.g = col;
    gActors[i].rgba.b = col;
}

void Actor_ShadeBy(uint16_t x, int16_t y) { //tint actor[x] by y, unused
    gActors[x].rgba.r = func_8002AE44(gActors[x].rgba.r, y);
    gActors[x].rgba.g = func_8002AE44(gActors[x].rgba.g, y);
    gActors[x].rgba.b = func_8002AE44(gActors[x].rgba.b, y);
}

void func_8002AF7C(uint16_t i, uint16_t arg1, int16_t arg2) {
    if ((gSceneFrames & arg1) == 0) {
        gActors[i].rgba.r = 0x7f;
        gActors[i].rgba.g = 0x7f;
        gActors[i].rgba.b = 0x7f;
    }
    else {
        Actor_ShadeBy(i, arg2);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B010.s")

void func_8002B140(uint16_t i, int16_t y) { // looks to be some actor color blend.
    gActors[i].rgba.r = func_8002B010(i, gActors[i].rgba.r, y);
    gActors[i].rgba.g = func_8002B010(i, gActors[i].rgba.g, y);
    gActors[i].rgba.b = func_8002B010(i, gActors[i].rgba.b, y);
}

void func_8002B1D0(uint16_t i, int16_t y) {
    MODi(gActors[i].rgba.r, 0, y);
    MODi(gActors[i].rgba.g, 0, y);
    MODi(gActors[i].rgba.b, 0, y);
}

#ifdef NON_MATCHING
void func_8002B25C(uint16_t i, int16_t y) {
    gActors[i].rgba.r = gActors[i].rgba.g = gActors[i].rgba.b = func_8002B010(i, (uint16_t)gActors[i].rgba.r, y); // non-matching stack?
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B25C.s")
#endif
#ifdef NON_MATCHING
void func_8002B2D0(uint16_t i){
    int8_t c;
    gActors[i].flag2&= ~0x10;
    c= ((-gSceneFrames & 0xf)<<3);
    gActors[i].rgba.r = gActors[i].rgba.g = gActors[i].rgba.b = c;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B2D0.s")
#endif
#ifdef NON_MATCHING
void func_8002B330(uint16_t i) {
    uint8_t c;

    if (gSceneFrames & 4) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B330.s")
#endif

#ifdef NON_MATCHING
void func_8002B400(uint16_t i) {

    if (gSceneFrames & 4) {
        gActors[i].rgba.r = func_8002B010(i, gActors[i].rgba.r, 64);
        gActors[i].rgba.g = 0;
        gActors[i].rgba.b = 0;
    }
    else {
        gActors[i].rgba.r = 0;
        gActors[i].rgba.g =  gActors[i].rgba.b = func_8002B010(i, gActors[i].rgba.g, -64);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B400.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B6E8.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B82C.s")
#endif

int32_t func_8002B8F0(uint16_t index, uint16_t dmg) {
    if (thisActor.health <= dmg) {
        thisActor.health = 0;
        return 0;
    }
    thisActor.health -= dmg;
    return 1;
}

int32_t func_8002B954(uint16_t index, uint16_t arg1) {
    if (D_800BE4D8 == 0) {
        if (arg1 & 0x80) {
            return 1;
        }

        if ((arg1 & 0x40) && (thisActor.vel.y_w < 0)) {
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002B9D8.s")

int32_t func_8002BACC(uint16_t arg0, uint16_t arg1) {
    if ((D_800BE4D8 == 0) && (arg1 & 0x80)) {
        return 1;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002BB04.s")

#ifdef NON_MATCHING
// RegAlloc?
uint8_t func_8002BC10(uint16_t index) {
    uint16_t x = func_80012C04(thisActor.pos.x, thisActor.pos.y) & 0x7F;

    if ((x == 50) || (x == 54)) {
        x = 0;
    }

    return x;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002BC10.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C140.s")
void ActorTick_27(uint16_t x){}

void func_8002C1E0(uint16_t* x, uint16_t* y, uint16_t z) {
    for (z != 0; z > 0; z--) {
        *y = *x;
        x++;
        y++;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C3C8.s")


void func_8002C510(uint16_t index) {
    if (thisActor.flag & 0x80) Actor_HitboxASet(index, thisActor.unk_0x158._w + 6);
    else Actor_HitboxASet(index, thisActor.unk_0x158._w - 8);
    Actor_HitboxBSet(index, thisActor.unk_0x158._lo); // that's why we'll call it a union.
}
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C5C4.s")
void func_8002C6DC(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D040.s")
/*
void ActorTick_1(uint16_t index){
    thisActor.hitboxAY0+=2;
    thisActor.hitboxAY1-=2;
    thisActor.hitboxAX0-=2;
    thisActor.hitboxAX1+=2;
    if(thisActor.unk_0x110==0.0)thisActor.flag=0;
    else thisActor.unk_0x110-=1.0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorTick_1.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002E89C.s")

const float D_800EB904 = 0.8;

void func_8002EBB8(uint16_t index, int16_t x, int16_t y, int32_t A, int32_t B) {
    float temp;

    ACTORINIT(index,0x2602);
    temp = D_800EB904;
    thisActor.flag2 = 9;
    thisActor.flag = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK2;
    thisActor.graphic = 0x24A;
    thisActor.unk_0xCE = 5;
    thisActor.unk_0xDF = 0;
    thisActor.unk_0xDA = 4;
    thisActor.unk_0xDB = 4;
    thisActor.scaleX = temp;
    thisActor.scaleY = temp;

    Actor_HitboxASet(index, 4);
    Actor_HitboxBSet(index, 8);

    thisActor.health = 1;
    thisActor.attackDmg = 30;
    thisActor.pos.x = x;
    thisActor.pos.y = y;
    thisActor.vel.x_w = A;
    thisActor.vel.y_w = B;
}

void func_8002ECAC(uint16_t index, int16_t x, int16_t y, int32_t vx, int32_t vy) {
    ACTORINIT(index,0x2600);
    thisActor.pos.x = x;
    thisActor.pos.y = y;
    thisActor.vel.x_w = vx;
    thisActor.vel.y_w = vy;
}

void func_8002ED34(uint16_t i, int16_t x, int16_t y, int32_t z) {}

#ifdef NON_MATCHING
void func_8002ED48(uint16_t index, int16_t x, int16_t y) {
    thisActor.actorType = 0x2603;
    Actor_Spawn(index);
    thisActor.health = 10;
    thisActor.pos.x = x;
    thisActor.pos.y = y;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002ED48.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002EDC8.s")

uint16_t Gem_ActorSpawn(uint16_t index,uint16_t flags, uint16_t x){
    uint16_t gemIndex;
    if(((flags&GEMFLAG_GREEN)==GEMFLAG_YELLOW)&&YellowGem_GetFlag(gCurrentStage)) return 0;
    gemIndex= Actor_GetInactiveInRange(122,130);
    if(gemIndex){
        ACTORINIT(gemIndex,ACTORTYPE_GEM);
        gActors[gemIndex].flag=2;
        gActors[gemIndex].unk_0x110=flags;
        gActors[gemIndex].pos.x=thisActor.pos.x;
        gActors[gemIndex].pos.y=thisActor.pos.y;
        if(flags&GEMFLAG_BOUNCE) gActors[gemIndex].vel.y_w=0x40000;
        if(flags&GEMFLAG_UNK) gActors[gemIndex].unk_0x150._w=120;
        SFX_ActorPanX(SFX_GEM_APPEAR,index);
    }
    return gemIndex;
}
uint16_t func_8002F154(uint16_t index,uint16_t flags, uint16_t x){
    uint16_t gemIndex=Gem_ActorSpawn(index,flags,x);
    if(gemIndex)gActors[gemIndex].actorType=0x3D;
    return gemIndex;
}
//spawns "No hit" yellow gem
uint16_t YellowGem_NoHit(uint16_t index){
    uint16_t gemIndex=0;
    if((-1<gNoHit)&&(YellowGem_GetFlag(gCurrentStage)==0)){
        func_8003FE4C(1.0,gPlayerActor.pos.x,gPlayerActor.pos.y+0x30,2);
        gemIndex=Gem_ActorSpawn(index,GEMFLAG_YELLOW|GEMFLAG_BOUNCE|GEMFLAG_UNK,0);
        if(gemIndex){
            gActors[gemIndex].actorType=0x3D;
            gActors[gemIndex].pos.x=gPlayerActor.pos.x;
            gActors[gemIndex].pos.y=gPlayerActor.pos.y+0x30;
        }
    }
    return gemIndex;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorSpawn_RedGemRing.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002F420.s")


void RedGem_Clamp(void) {
    if (gRedGems >= 9999) {
        gRedGems = 9999;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorTick_RedGemRing.s")

#ifdef NON_MATCHING
void GemCollision(uint16_t arg0, uint16_t arg1, int32_t arg2, int16_t arg3, int16_t arg4) {
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
        SFX_ActorPanX(0x57, arg0);
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
        SFX_ActorPanX(0x95, arg0);
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
        SFX_ActorPanX(0x3B, arg0);
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
    SFX_ActorPanX(0x125, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/GemCollision.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/GemCollision_Actor.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/GemCollision_Static.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80030008.s")
//behavoir for gem actor
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorTick_Gem.s")

void func_80030964(uint16_t index){
    ActorTick_Gem(index);
    thisActor.flag2|=0x100;
}
void func_800309C0(uint16_t index){
    if(thisActor.actorState==0){
        thisActor.actorState++;
        thisActor.flag=ACTOR_FLAG_ENABLED;
        thisActor.graphicList=&D_800E1DEC;
        thisActor.graphicTime=1;
    }
}

void func_80030A24(uint16_t index){
    func_8002B25C(index,thisActor.unk_0x104._lo);
}

void func_80030A74(uint16_t index) {
    if (gSceneFrames & 1) {
        thisActor.rgba.r = 0x7f;
        thisActor.rgba.g = 0x7f;
        thisActor.rgba.b = 0x7f;
    }
    else {
        thisActor.rgba.r = 0x4f;
        thisActor.rgba.g = 0x4f;
        thisActor.rgba.b = 0x4f;
    }
}

#ifdef NON_MATCHING
void func_80030B0C(uint16_t index) {
    if (thisActor.unk_0x104._w <=0)
        thisActor.rgba.a = func_8002AE44(thisActor.rgba.a, thisActor.unk_0x108._lo);
    else
      thisActor.unk_0x104._w--;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80030B0C.s")
#endif
void func_80030B84(uint16_t i) {
    func_80030A74(i);
    func_80030B0C(i);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80030E58.s")

uint16_t func_80030F94(uint16_t i, void* p, int32_t x, int32_t y, uint32_t z){
    uint16_t index = i & 0x7fff;
    if(index){
        ACTORINIT(index,9);
        thisActor.flag = 3;
        if(i&0x8000){
          thisActor.pos.x_w = x;
          thisActor.pos.y_w = y;
          thisActor.pos.z_w = z;
        }
        else{
          thisActor.pos.x = x;
          thisActor.pos.y = y;
          thisActor.pos.z = z;
        }

        thisActor.unk_0x130=-1.0;
        thisActor.unk_0x184._w=thisActor.pos.x_w;
        thisActor.unk_0x188._w=thisActor.pos.y_w;
        thisActor.unk_0x148=240.0;
        if(p==&D_800E1380) thisActor.graphicTime = 0x1E0;
        else thisActor.graphicList=p;
    }
    return index;
}


uint16_t func_800310A4(uint16_t i, uint16_t c, uint32_t x, uint32_t y, uint32_t z){
    uint16_t index = i & 0x7fff;
    if(index){
        ACTORINIT(index,9);
        thisActor.flag = 3;
        if(i&0x8000){
          thisActor.pos.x_w = x;
          thisActor.pos.y_w = y;
          thisActor.pos.z_w = z;
        }
        else{
          thisActor.pos.x = x;
          thisActor.pos.y = y;
          thisActor.pos.z = z;
        }
        thisActor.unk_0x130=-1.0;
        thisActor.unk_0x184._w=thisActor.pos.x_w;
        thisActor.unk_0x188._w=thisActor.pos.y_w;
        thisActor.unk_0x148=240.0;
        thisActor.graphic = c;
    }
    return index;
}


uint16_t func_8003119C(void* p, int32_t x, int32_t y, int32_t z) {
    return func_80030F94(Actor_GetInactiveInRange(16, 45), p, x, y, z);
}

uint16_t func_800311EC(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(Actor_GetInactiveInRange(16, 45), arg0, arg1, arg2, arg3);
}

uint16_t func_8003123C(void* p, int32_t x, int32_t y, int32_t z) {
    return func_80030F94(Actor_GetInactiveInRange_144_192(), p, x, y, z);
}

uint16_t func_80031284(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(Actor_GetInactiveInRange_144_192(), arg0, arg1, arg2, arg3);
}

uint16_t func_800312CC(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_80030F94(Actor_GetInactiveInRange(16, 45) | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_80031324(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(Actor_GetInactiveInRange(16, 45) | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_8003137C(uint32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_80030F94(Actor_GetInactiveInRange_144_192() | 0x8000, arg0, arg1, arg2, arg3);
}

uint16_t func_800313CC(uint16_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {
    return func_800310A4(Actor_GetInactiveInRange_144_192() | 0x8000, arg0, arg1, arg2, arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003141C.s")

uint16_t func_80031CAC(uint16_t arg0, int32_t x, int32_t y, int32_t z) {
    uint16_t index = Actor_GetInactiveInRange_144_192();
    if (index) {
        ACTORINIT(index,0x34);
        thisActor.flag = 3;
        thisActor.graphic = arg0;
        thisActor.pos.x_w = x;
        thisActor.pos.y_w = y;
        thisActor.pos.z_w = z;
        thisActor.unk_0x148 = 1.0;
    }
    return index;
}
void func_80031D58(uint16_t arg0, uint16_t index) {
    if (index < arg0) {
        thisActor.unk_0x148 = 0.0;
    }
    else {
        thisActor.unk_0x148 = 1.0;
    }
}

#ifdef NON_MATCHING
void func_80031DDC(uint16_t index) {
    Actor* actor = &thisActor;

    if (actor->unk_0x148 = 0.0) {
        actor->flag = 0;
    }
    actor->unk_0x148 -= 1.0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80031DDC.s")
#endif
//29 args. used by "cerberus Alpha"
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80033428.s")

void func_8003358C(uint16_t index){
    if(thisActor.rgba.a<(int32_t)thisActor.unk_0x18C._w) thisActor.flag=0;
    else thisActor.rgba.a-=thisActor.unk_0x18C._w;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800337F4.s")

void func_800338F4(int16_t arg0, int16_t arg1, int16_t arg2) {
    if ((gSceneFrames & 0x0F) == 0) {
        func_800337F4(arg0, arg1, arg2, 0x132);
    }
}

uint16_t D_800D2294[4] = { 0x136, 0x138, 0x13A, 0x13A };
//spawn notes while idling
void ActorMarina_Idle_SpawnNotes(int16_t arg0, int16_t arg1, int16_t arg2) {
    if ((gSceneFrames & 0x0F) == 0) {
        func_800337F4(arg0, arg1, arg2, D_800D2294[Rand() & 3]);
    }
}

void func_800339AC(int16_t arg0, int16_t arg1, int16_t arg2) {}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80033CB0.s")

void func_80033DE4(uint16_t index){
    if(--thisActor.unk_0x154._w == 0) thisActor.flag=0;
    thisActor.vel.x_w+=thisActor.unk_0x158._w;
    thisActor.vel.y_w+=thisActor.unk_0x15C;
    thisActor.unk_0x150._w = func_8002B5A0(thisActor.unk_0x150._lo,thisActor.unk_0x168._h[1],thisActor.unk_0x164._lo,thisActor.unk_0x160._lo);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003480C.s")

/* How do I const floats?
void func_800348E4(uint16_t index){
    MODi(thisActor.rgba.a,0,2);
    MODi(thisActor.scaleX,-0.01f,thisActor.unk_0x114);
    MODi(thisActor.scaleY,-0.01f,thisActor.unk_0x118);
    if((thisActor.rgba.a==0)||(thisActor.scaleX<0.0)||(thisActor.scaleY<0.0)){
        thisActor.flag=0;
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800348E4.s")
//are these 3 unused?
void func_800349C0(uint16_t index,uint16_t x){
    if(thisActor.unk_0xD6==0)thisActor.unk_0xD4=x;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80034A0C.s")
void func_80034D14(uint16_t i){
    gActors[i].scaleX=gActors[i].unk_0x168._w /1000.0f;
    gActors[i].scaleY=gActors[i].unk_0x16C._w /1000.0f;
}
//when called, u16[]* should casted as ClanpotItem*
#ifdef NON_MATCHING
void ActorClanpot_InitItems(uint16_t index, ClanpotItem* items){
    uint16_t i;
    for(i=31;-1<i;i--){
        if(items->flags==0xFFFF) return;
        gClanpotItems[i].flags=items->flags;
        gClanpotItems[i].ActorFeild0x110=items->ActorFeild0x110;
        gClanpotItems[i].ActorFeild0xD8=items->ActorFeild0xD8;
        gClanpotItems[i].unk_0x6=items->unk_0x6;
        thisActor.unk_0x170._w=i;
        gClanpotItems[i].ActorType=items->ActorType;
        items++;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorClanpot_InitItems.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80034E10.s")
#ifdef NON_MATCHING
int16_t func_8003510C(uint16_t index, uint16_t arg1, uint16_t arg2, uint16_t arg3, uint16_t arg4){
    uint32_t other=thisActor.unk_0xCC&0xff;
    if(((thisActor.flag3&0x200)==0)&&(thisActor.flag3&0x20)&&(gActors[other].actorType==0x18))
      return func_80034E10(index,arg1,arg2,arg3,arg4,other);
    return-1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003510C.s")
#endif

int16_t func_800351C8(uint16_t index, uint16_t arg1, uint16_t arg2, uint16_t arg3){
    return func_8003510C(index,arg1,arg2,arg3,0);
}
int16_t func_80035218(uint16_t index, uint16_t arg1, uint16_t arg2, uint16_t arg3, uint16_t arg4){
    return func_8003510C(index,arg1,arg2,arg3,arg4);
}

int16_t func_8003526C(uint16_t index, uint16_t arg1, uint16_t arg2, uint16_t arg3, uint16_t arg4){
    return func_8003510C(index,arg1,arg2,arg3,arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800352C0.s")
//spawn yellow gem from pot?
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035524.s")
void func_80035824(uint16_t i){
    gActors[i].hitboxAY0=0x14;
    gActors[i].hitboxAY1=6;
    gActors[i].hitboxAX0=-8;
    gActors[i].hitboxAX1=8;
}

void func_80035878(uint16_t i){
    gActors[i].hitboxBY0=14;
    gActors[i].hitboxBY1=-10;
    gActors[i].hitboxBX0=-8;
    gActors[i].hitboxBX1=8;
}

uint32_t func_800358CC(uint16_t i , uint16_t x){return 0;}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035D34.s")
//clanpot inventory behavior?

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80035E90.s")
/*
void func_8003667C(uint16_t index){
    if(thisActor.actorState) func_80035A20(index);
    else func_800358DC(index);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003667C.s")
//spawn clanpot?
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/clanpot_eraseItem.s")
//clanpot item merge?
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039724.s")

void func_80039838(uint16_t index){
    thisActor.actorState--;
    thisActor.unk_0x164._w=13;
    thisActor.unk_0x150._w &= ~0xf0000;
}


void func_80039894(uint16_t index){
    thisActor.flag3 |=0x20000;
    Actor_Shade(index,127);
}
//play different sound if clanbomb.
void func_800398F8(uint16_t other,uint16_t index){
    if(thisActor.actorType==ACTORTYPE_CLANBOMB) SFX_ActorPanX(0x116,other);
    else SFX_ActorPanX(0x145,other);

}
int32_t func_80039970(uint16_t arg0, uint16_t index) {
    Actor* actorp = &thisActor;
    switch (actorp->actorType) {                             
    case ACTORTYPE_GEM:
        actorp->unk_0x150._w = 0x78;
        actorp->vel.y_w = 0x40000;
        return SFX_ActorPanX(SFX_GEM_APPEAR, arg0);
    case 50:
        return SFX_ActorPanX(0x136, arg0);
    default:
        return SFX_ActorPanX(0x116, arg0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003A120.s")

void func_8003A958(uint16_t index){
    thisActor.unk_0x170._w+=0x1000000;
    SFX_ActorPanX(0x115,index);
}

void func_8003A9B8(uint16_t index){
    thisActor.unk_0x170._w-=0x1000000;
    SFX_ActorPanX(0x115,index);
}


#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003C328.s")

uint16_t func_8003D518(uint16_t a,void* p,int32_t x,int32_t y,int32_t z){
    if(a==0) return func_80030F94(Actor_GetInactiveInRange(0x10,0x2d), p, x, y, z);
    else return func_80030F94(Actor_GetInactiveInRange(0x90,0xc0), p, x, y, z);
}

uint16_t func_8003D5A0(uint16_t a,uint16_t p,int32_t x,int32_t y,int32_t z){
    if(a==0) return func_800310A4(Actor_GetInactiveInRange(0x10,0x2d), p, x, y, z);
    else return func_800310A4(Actor_GetInactiveInRange(0x90,0xc0), p, x, y, z);
}
#ifdef NON_MATCHING
u32 func_8003D628(u16 x){
    ACTORINIT(0xc0,0x6B);
    gActors[0xC0].flag = 2;
    gActors[0xC0].unk_0x110=180.0f;
    gActors[0xC0].unk_0x188._w=x;
    func_8005CA34(8,60);
    return 0xC0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003D628.s")
#endif
#ifdef NON_MATCHING
uint16_t func_8003D68C(u16 flag2,s16 BY0,s16 BY1,s16 BX0,s16 BX1,int32_t posx,int32_t posy,int32_t posz,u8 r,u8 g,u8 b){
  uint16_t index = Actor_GetInactiveInRange_144_192();
  if (index) {
    ACTORINIT(index,0x34);
    thisActor.flag2 = flag2 & ~0x2000;
    thisActor.flag = 0xb;
    thisActor.graphic = 0x8000;
    thisActor.pos.x_w = posx;
    thisActor.pos.y_w = posy;
    thisActor.pos.z_w = posz;
    thisActor.hitboxBY0 = BY0;
    thisActor.hitboxBY1 = BY1;
    thisActor.hitboxBX0 = BX0;
    thisActor.hitboxBX1 = BX1;
    thisActor.rgba.r = r;
    thisActor.rgba.g = g;
    thisActor.rgba.b = b;
    if (flag2 & 0x2000) thisActor.unk_0x148 = 1.0;
    else thisActor.unk_0x148 = 0.0;
  }
  return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003D68C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003D794.s")
//"Escaped from trouble!" "Go to the Next Area!"
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003DBD0.s")
//rapid explosion effect?
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003E52C.s")
//crosshair functions.
//RegAlloc
#ifdef NON_MATCHING
void Crosshair_CopyCoords(uint16_t index){
    uint16_t parent=thisActor.unk_0x150._lo;
    thisActor.pos.x_w = gActors[parent].pos.x_w;
    thisActor.pos.y_w = gActors[parent].pos.y_w;
    thisActor.pos.z_w = gActors[parent].pos.z_w + 0x200000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/Crosshair_CopyCoords.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorSpawn_Crosshair.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/ActorTick_Crosshair.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F7A0.s")
#ifdef NON_MATCHING
const double D_800EBC68=0.15000000000000002;
const double D_800EBC70=-0.013499999999999998;
uint16_t func_8003F8B0(float scale, int16_t x, int16_t y, int16_t z) {
    uint16_t index = func_80031284(0x132U, x, y, z + 1);
    if (index) {
        thisActor.flag2 = 1;
        thisActor.scaleX = scale;
        thisActor.scaleY = scale;
        thisActor.unk_0x110 = (scale * D_800EBC68);
        thisActor.unk_0x114 = (scale * D_800EBC68);
        thisActor.vel.y_w = 0x20000;
        thisActor.unk_0x15C = -0x2000;
        thisActor.unk_0x118 = (scale * D_800EBC70);
        thisActor.unk_0x11C = (scale * D_800EBC70);
        thisActor.unk_0x17C._p= func_80030A24;
        thisActor.unk_0x148 = 24.0;
        Actor_Shade(index, 0x40U);
        thisActor.unk_0x104._w = -4;
        thisActor.unk_0x154._w = -4;
        thisActor.vel.z_w = 0x20000;
    }
    return index;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F8B0.s")
#endif

void func_8003F9CC(float f, uint16_t a, uint16_t b, uint32_t c) {}
//generate a puff of smoke
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800404AC.s")

#ifdef NON_MATCHING
void func_80040564(uint16_t index) {
    if (thisActor.actorState == 0) {
        thisActor.flag = 0x9183;
    }
    else if (thisActor.actorState != 1) {
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80040564.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800406A4.s")


int32_t func_800407D4(uint16_t arg0) {
    if (D_800D5820==arg0) {
        switch (D_800D5824) {
        case 0x1000:
            return 0x1000;
        case 0x8000:
            return 0x8000;
        case 0x800:
            return 0x800;
        case 0x4000:
            return 0x4000;
        case 0x2000:
            return 0x2000;
        }
    }
  return 0;
}

#ifdef NON_MATCHING
void func_80040858(int16_t arg0) {
    if ((arg0 == D_800D5820) && (func_8005DEFC())) {
        func_8005DFC8(0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80040858.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8004089C.s")

#ifdef NON_MATCHING
int32_t func_800409E0(uint16_t index) {
    if (thisActor.health > 0 && thisActor.unk_0xD4 <= 0 && (thisActor.flag & ACTOR_FLAG_ENABLED) == 3 &&
        thisActor.actorState < 0x51) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800409E0.s")
#endif

int32_t func_80040A64(void) {
    if (gPlayerActorIndex == 0) return func_80048CE4();
    else if (TeranFlag > 0) return func_800409E0(gPlayerActorIndex);
}


void func_80040AB4(uint16_t index) {
    thisActor.flag2 = 0x205;
    thisActor.flag = ACTOR_FLAG_ENABLED | ACTOR_FLAG_UNK12;
    thisActor.graphic = 0x1a8;
    thisActor.unk_0xDF = 0x40;
    Actor_HitboxBSet(index, 10);
    thisActor.pos.z = -1;
    thisActor.unk_0x11C = 1.0;
    thisActor.unk_0x120 = 255.0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8004168C.s")

void func_8004172C(uint16_t index, uint16_t* pos) {
    thisActor.pos.x = pos[0] - gScreenPosCurrentX._hi;
    thisActor.pos.y = pos[1] - gScreenPosCurrentY._hi;
}

#ifdef NON_MATCHING
void func_8004178C(uint16_t index, uint16_t* pos) {
    if (thisActor.unk_0x174)
        func_8004172C(thisActor.unk_0x174, pos);
    else {
        func_8004172C(0, pos);
        gPlayerPosXMirror._hi = gScreenPosCurrentX._hi + gPlayerActor.pos.x;
        gPlayerPosXMirror._hi = gScreenPosCurrentY._hi + gPlayerActor.pos.y;

        gPlayerActor.flag &= ~ACTOR_FLAG_FLIPPED;
        if ((pos[2] & 1)) {
            gPlayerActor.flag |= ACTOR_FLAG_FLIPPED;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_8004178C.s")
#endif

int32_t func_8004185C(uint16_t index) {
    if (thisActor.actorState == 2) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800418A8.s")

int32_t func_80042290(uint16_t index) {
    if (thisActor.actorType == 0x90C && (thisActor.flag & ACTOR_FLAG_ACTIVE)) {
        if ((thisActor.unk_0x188._w & 0x8000) == 0) {
            return 1;
        }
    }
    return 0;
}

void ActorTick_4(uint16_t i) {}

void func_80042310(int32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {}
void func_80042324(int32_t arg0, uint32_t arg1, uint32_t arg2, uint32_t arg3) {}

void func_80042338(uint16_t i) {}
void func_80042340(uint16_t i) {}
void func_80042348(uint16_t i) {}
void func_80042350(uint16_t i) {}
void func_80042358(uint16_t i) {}

void func_80042360(uint16_t index) {
    thisActor.actorState++;
}

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80042A0C.s")

void func_80042AEC(uint16_t i) {
    func_80042864(i);
    func_800423A0(i);
    func_800427E0(i);
}

#ifdef NON_MATCHING
void func_80042B2C(uint16_t index) {
    if (0.0 <= thisActor.unk_0x110) {
        thisActor.actorState += -2;
    }
    else {
        thisActor.flag = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80042B2C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/28EF0/func_80042C10.s")