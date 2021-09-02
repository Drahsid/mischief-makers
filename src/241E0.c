#include <actor.h>
#include <common.h>
#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>


void func_800235E0(void) {
    D_800BE72C = 0;
    D_800BE730 = 0;
}

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
    D_800BE578 = (int16_t)((int32_t)D_800BE558 / 2);
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE6A8 = 1;
    D_800BE70C = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800237F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023894.s")

void func_80023948(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023968.s")

void func_80023A08(void) {
    D_800BE580 = -0xC;
    gEyeY = 32.0f;
    D_800BE70C = 2;
}

void func_80023A34(void) {
    func_800237F0();
    if ((D_800BE6AC & 0xA400) == 0) {
        D_800BE544 = 0x8000;
        D_800BE550 = (int32_t)(gPlayerPosXMirror + 0x200000);
        D_800BE554 = (int32_t)gPlayerPosYMirror;
        D_800BE704 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80023AA4.s")

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
    D_800BE578 = (int16_t)D_800BE558;
    D_800BE580 = (int16_t)(D_800BE55C + 0x60);
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

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800240E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024428.s")

void func_800244F8(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
    D_800BE72C = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024528.s")

void func_80024584(void) {
    D_800BE70C = 3;
    D_800BE6A8 = 2;
    D_800BE710 = 1;
}

void func_800245AC(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800245B4.s")

void func_800245F0(void) {}

void func_800245F8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024600.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024D6C.s")

void func_80024DA8(void) {
    D_800BE544 = 0x8000;
    D_800BE704 = 1;
    D_800BE708 = 1;
    D_800BE588 = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80024EA0.s")

void func_80025084(void) {}

void func_8002508C(void) {}

void func_80025094(void) {
    D_800BE588 = 0;
    D_800BE58C = 1;
    D_800BE584 = -0x4C;
    D_8013746C = &D_800C71A0;
    if (D_800BE5D0 != 0x16) {
        gEyeX = -128.0f;
        gEyeY = 128.0f;
    }
    func_800235E0();
}

void func_80025114(void) {
    func_800235F4();
    if ((D_800BE4E0 & 1) != 0) {
        D_800BE57C = (int16_t)(D_800BE57C + 1);
    }
}

void func_8002515C(void) {
    D_800BE580 = -0x18;
    D_800BE57C = 2;
    D_800BE584 = -0xC;
}

void func_80025184(void) {
    int16_t temp_v0;

    temp_v0 = D_800BE558;
    D_800BE578 = (int16_t)(((int32_t)temp_v0 / 4) & 0x1FF);
    D_800BE57C = (int16_t)(((int32_t)temp_v0 / 8) & 0x1FF);
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

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800252F8.s")

void func_80025380(void) {
    D_800BE578 = 2;
    D_800BE580 = -0xC;
    D_800BE70C = 4;
}

void func_800253A8(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800253B0.s")

//TODO: Declare Stage BGM list

void func_80025578(void) {
    if (D_800CCFDC[D_800BE5D0] != 255) {
        BGM_Play(D_800CCFDC[D_800BE5D0]);
    }
}
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800255B4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80025F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002601C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800260C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026494.s")

#ifdef NON_MATCHING
// the subtraction gets optimized out...
void func_8002653C(void) {
    int32_t phi_a0 = 0x41E53F8;
    phi_a0-= 0x4000000;

    func_800011F0(phi_a0, &D_800DE348, 0x1500);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002653C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800265FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002670C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026784.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800267FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002694C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80026F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800270E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800271B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002729C.s")

// possible file split (following functions are generally related to actors, and next function is 16-byte aligned)

// context implies this is something like Actor_Spawn[at]Position...
void func_80027370(uint16_t index, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z) {
    gActors[index].unk_0xD2 = 0;
    Actor_Spawn(index); // ...which implies that this is Actor_Spawn
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

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027588.s")

void func_80027644(uint16_t index, uint16_t arg1, uint16_t pos_x, uint16_t pos_y, uint16_t pos_z, int32_t arg5) {
    Actor* actor;

    func_800273FC(index, arg1, pos_x, pos_y, pos_z);
    actor = &gActors[index];
    actor->unk_0x94 |= 0x200;
    actor->flag |= 8;
    actor->unk_0x18C = arg5;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800276DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800278E8.s")

/*
u8 func_80027A44(u16 *arg0) {
    if (ALPHA_Lower_A > *arg0) return 6;
    if (*arg0 == 0xC000) return 7;
    return D_800D16AA[*arg0];
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027A88.s")

// might be text related
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027AC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80027D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002801C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800282F0.s")

void func_80028380(void){
    gPlayerActor.flag=0;
    D_800CA230=1;
    D_80137458=0;
    if(gPlayerActor.health<0)gPlayerActor.health=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800283BC.s")

void func_800284B0(u16 x){}

/*
u16 func_800284B8(u16 x, u16 y){
    while(1){
        if(y>x) return 0;
        if (gActors[x].flag&2==0) break;
        x++;
    }
    return x;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800284B8.s")

u16 func_80028528(void){return func_800284B8(0x90,0xC0);}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002854C.s")

void Actor_ZeroFlagRange(u16 from, u16 to){
    for(from=from;from<to;from++)
     {gActors[from].flag=0;}
    }

void Actor_ZeroFlag_0x10_0x20(void){Actor_ZeroFlagRange(0x10,0x20);}

void Actor_ZeroFlag_0x30_0x90(void){Actor_ZeroFlagRange(0x30,0x90);}

void Actor_ZeroFlag_0x90_0xC0(void){Actor_ZeroFlagRange(0x90,0xC0);}

void Actor_ZeroFlag_0xC0_0xC7(void){Actor_ZeroFlagRange(0xc0,199);}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800286C8.s")

void func_80028704(void){
    Actor_ZeroFlag_0x10_0x20();
    Actor_ZeroFlag_0x30_0x90();
    Actor_ZeroFlag_0x90_0xC0();
    Actor_ZeroFlag_0xC0_0xC7();
    func_800286C8();
}

void func_80028744(void){
    Actor_ZeroFlag_0x10_0x20();
    Actor_ZeroFlag_0x30_0x90();
    Actor_ZeroFlag_0x90_0xC0();
    Actor_ZeroFlag_0xC0_0xC7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002877C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002884C.s")
/*
s32 func_800288EC(u16 i,s16 x){
    if( (gActors[i].pos.x<=(x+0x90)) && (gActors[i].pos.x>(x-0x90)) &&
     (gActors[i].pos.y<=(x+0x60)) && (gActors[i].pos.y>(x-0x60))) return 0;
    return 1;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800288EC.s")

void func_80028980(u16 i, s16 arg1, u32 SFX){
    if(func_800288EC(i,arg1)==0) func_800036C8(SFX,i);
}

s32 func_800289CC(s32 x){ //ABS?
    if(x<0) return -x;
    return x;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800289E4.s")

void func_80028AE8(u16 i){
    func_800289E4(i,D_800D36FC,0x7FFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028B90.s")

void func_80028C00(u16 x){}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028C08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028CE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028DAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80028E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029044.s")

/*void func_80029134(u16 i){
    gActors[i].flag &= ~0x00011000;
    gActors[i].flag |= 0x20000; //this step is off?
    gActors[i].unk_0xEC = 0;
    gActors[i].unk_0xF0 = 0;
    gActors[i].unk_0xF4 = 0;
    gActors[i].pos.x_w = gActors[i].unk_0x104;
    gActors[i].pos.y_w = gActors[i].unk_0x108;
    gActors[i].pos.z_w = gActors[i].unk_0x10C;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800291AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800294E0.s")

u32 func_800295D8(void){return func_800294E0() + 256 & 0x200;}

u32 func_80029600(void){return func_800294E0() + 128 & 0x300;}

u32 func_80029628(void){return func_800294E0() + 64 & 0x380;}

u32 func_80029650(void){return func_800294E0() + 32 & 0x3C0;}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029798.s")
/*
int32_t func_8002981C(int32_t A, int32_t B, int32_t C){
    int32_t D=A-B;
    if(D<1){
        if(-C <= D) return B;
        return A+C;
    }
    if(D<=C) return B;
    return A-C;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002981C.s")
/*
float func_80029860(float A, float B, float C){
    if (B < A) {
        if (C> A-B ) return B;
        return A - C;
    }
    if (-C <= (A - B)) return B;
    return A + C;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800298D0.s")
/*
s32 func_8002995C(s32 A, s32 B){
    if(A>B){
        if(A-B< 0x2000000) return 1;
        return -1;
        
    }
    if(-0x2000000< A-B ) return -1;
    return 1;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002995C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800299B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029D58.s")

s32 func_80029DEC(u16 arg0,u16 arg1){
    if ((D_800BE4E0&arg0)==0){
        if((Rand()&arg1)==0) return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80029F00.s")

u16 func_80029FB8(u16 i, s16 x1, s16 x2, s16 y1, s16 y2){
    return func_80029E48(i,x1,x2)|func_80029F00(i,y1,y2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A018.s")

s32 func_8002A090(s32 A, s32 B){
    if(B<0) B = -B;
    if(B<A) A = B;
    if(A<-B) A = -B;
    return A;
}
void func_8002A0C4(u16 i, s32 x){
    if(gActors[i].flag & 0x20) gActors[i].unk_0xEC= -x;
    else gActors[i].unk_0xEC= x;
}
void func_8002A118(u16 i,s32 x){
    gActors[i].unk_0xEC = func_8002A090(gActors[i].unk_0xEC,x);
}

void func_8002A170(u16 i,s32 x){
    gActors[i].unk_0xF0 = func_8002A090(gActors[i].unk_0xF0,x);
}

void func_8002A1C8(u16 i,s32 x){
    func_8002A118(i,x);
    func_8002A170(i,x);
}

void func_8002A200(u16 i,s32 x){
    gActors[i].unk_0xF8 = func_8002A090(gActors[i].unk_0xF8,x);
}
void func_8002A258(u16 i,s32 x){
    gActors[i].unk_0xFC = func_8002A090(gActors[i].unk_0xFC,x);
}

void func_8002A2B0(u16 i,s32 x){
    gActors[i].unk_0xF8 = func_8002A090(gActors[i].unk_0xF8,x);
    gActors[i].unk_0xFC = func_8002A090(gActors[i].unk_0xFC,x);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A320.s")

void func_8002A404(u16 i,s32 x){
    gActors[i].unk_0xEC = func_8002981C(gActors[i].unk_0xEC,0,x);
}

void func_8002A464(u16 i,s32 x){
    gActors[i].unk_0xF0 = func_8002981C(gActors[i].unk_0xF0,0,x);
}

void func_8002A4C4(u16 i,s32 x,s32 y){
    func_8002A404(i,x);
    func_8002A464(i,y);
}
/*
s32 func_8002A4FC(u16 i){
    if(gActors[i].unk_0xEC<1){
        if (gActors[i].unk_0x98&4){
            gActors[i].unk_0xEC=0;
            return 2;
        }
    }
    else {
        if (gActors[i].unk_0x98&8){
            gActors[i].unk_0xEC=0;
            return 1;
        }
    }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A4FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A57C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002A990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AA20.s")
void func_8002ABE4(u16 i, s16 x){
    gActors[i].unk_0xA6=x;
    gActors[i].unk_0xA8=-x;
    gActors[i].unk_0xA2=-x;
    gActors[i].unk_0xA4=x;
}

void func_8002AC30(u16 i, s16 x){
    gActors[i].unk_0xAE=x;
    gActors[i].unk_0xB0=-x;
    gActors[i].unk_0xAA=-x;
    gActors[i].unk_0xAC=x;
}

void func_8002AC7C(u16 i, s16 x,s16 y){
    if(gActors[i].flag&0x20){
        gActors[i].unk_0xA4=-x;
        gActors[i].unk_0xA2=-y;
    }
    else{
        gActors[i].unk_0xA2=x;
        gActors[i].unk_0xA4=y;
    }
    
}

void func_8002ACFC(u16 i, s16 x,s16 y){
    if(gActors[i].flag&0x20){
        gActors[i].unk_0xAC=-x;
        gActors[i].unk_0xAA=-y;
    }
    else{
        gActors[i].unk_0xAA=x;
        gActors[i].unk_0xAC=y;
    }
    
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AD7C.s")
/*
u8 func_8002AE44(s16 x,s16 y){
    if(-1<y){
        y+=x;
        if(255<y) return 255;
        return y;
    }
    if(x<=-y) return 0;
    return x+y;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002AE44.s")

void func_8002AEB4(u16 i, u8 col){ //uniform grayscale.
    gActors[i].rgba.r=col;
    gActors[i].rgba.g=col;
    gActors[i].rgba.b=col;
}

void func_8002AEF8(u16 x, s16 y){
    gActors[x].rgba.r=func_8002AE44(gActors[x].rgba.r,y);
    gActors[x].rgba.g=func_8002AE44(gActors[x].rgba.g,y);
    gActors[x].rgba.b=func_8002AE44(gActors[x].rgba.b,y);
}

void func_8002AF7C(u16 i, u16 arg1, s16 arg2){
    if((D_800BE4E0&arg1)==0){
        gActors[i].rgba.r=0x7f;
        gActors[i].rgba.g=0x7f;
        gActors[i].rgba.b=0x7f;
    }
    else func_8002AEF8(i,arg2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B010.s")

void func_8002B140(u16 i, s16 y){ // looks to be some actor color blend.
    gActors[i].rgba.r=func_8002B010(i,gActors[i].rgba.r,y);
    gActors[i].rgba.g=func_8002B010(i,gActors[i].rgba.g,y);
    gActors[i].rgba.b=func_8002B010(i,gActors[i].rgba.b,y);
}

void func_8002B1D0(u16 i, s16 y){
    gActors[i].rgba.r=func_8002981C(gActors[i].rgba.r,0,y);
    gActors[i].rgba.g=func_8002981C(gActors[i].rgba.g,0,y);
    gActors[i].rgba.b=func_8002981C(gActors[i].rgba.b,0,y);
}
/*
void func_8002B25C(u16 i, s16 y){
    u8 C;
    C=func_8002B010(x,gActors[i].rgba.r,y);//non-matching stack?
    gActors[i].rgba.r=C;
    gActors[i].rgba.g=C;
    gActors[i].rgba.b=C;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B25C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B2D0.s")
/*
void func_8002B330(u16 i){
    u8 C;
    if(D_800BE4E0&4){
    C=func_8002B010(i,gActors[i].rgba.r,64);
    gActors[i].rgba.r=C;
    gActors[i].rgba.g=C;
    gActors[i].rgba.b=C;
    }
    else{
    C=func_8002B010(i,gActors[i].rgba.r,-64);
    gActors[i].rgba.r=C;
    gActors[i].rgba.g=C;
    gActors[i].rgba.b=C;
    }
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B330.s")
/*
void func_8002B400(u16 i){
    u8 C;
    if(D_800BE4E0&4){
    gActors[i].rgba.r=func_8002B010(i,gActors[i].rgba.r,64);
    gActors[i].rgba.g=0;
    gActors[i].rgba.b=0;
    }
    else{
    gActors[i].rgba.r=0;
    C=func_8002B010(i,gActors[i].rgba.g,-64);
    gActors[i].rgba.g=C;
    gActors[i].rgba.b=C;
    }
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B7B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B7F4.s")
/*
void func_8002B82C(uint16_t* arg0, int16_t* arg1, int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg5){
u16 i;
 for(i=arg2;0<i;i--){
     *arg1++=func_8002B5A0(*arg0++,arg3,arg4,arg5);
 }
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B82C.s")

s32 func_8002B8F0(u16 i, u16 dmg){
    if(gActors[i].health<=dmg){
        gActors[i].health=0;
        return 0;
    }
    gActors[i].health-=dmg;
    return 1;
}

s32 func_8002B954(u16 i, u16 x){
    if(D_800BE4D8==0){
        if (x&0x80) return 1;
        if((x&0x40) && (gActors[i].unk_0xF0<0)) return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002B9D8.s")

s32 func_8002BACC(u16 unk, u16 x){
    if((D_800BE4D8==0)&&(x&0x80)) return 1;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BB04.s")
/* RegAlloc?
u8 func_8002BC10(u16 i){
    u16 x=func_80012C04(gActors[i].pos.x,gActors[i].pos.y)&0x7F;
    if((x==50)||(x==54)) x=0;
    return x;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BC10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002BC90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C044.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C1D8.s")

void func_8002C1E0(u16* x, u16* y, u16 z){
    for(z!=0;z>0;z--){
        *y=*x;
        x++;
        y++;}
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C3C8.s")
/*
void func_8002C510(u16 i){
    if(gActors[i].flag&0x80==0) func_8002AEB4(i,gActors[i].unk_0x154-8);
    else func_8002AEB4(i,gActors[i].unk_0x154+6);
    func_8002AC30(i,*(s16*)(gActors[i].unk_0x158+2)); //that's why we'll call it a union.
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002C6E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D2F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D5E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DC74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002DFC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002E89C.s")

const float D_800EB904=0.8;
void func_8002EBB8(u16 i, s16 x, s16 y,s32 A, s32 B){
    float f;
    gActors[i].unk_0xD2=0x2602;
    Actor_Spawn(i);
    f=D_800EB904;
    gActors[i].unk_0x94=9;
    gActors[i].flag=7;
    gActors[i].unk_0x84=0x24A;
    gActors[i].unk_0xCE=5;
    gActors[i].unk_0xDF=0;
    gActors[i].unk_0xDA=4;
    gActors[i].unk_0xDB=4;
    gActors[i].unk_0xB4=f;
    gActors[i].unk_0xB8=f;
    func_8002ABE4(i,4);
    func_8002AC30(i,8);
    gActors[i].health=1;
    gActors[i].unk_0xE4=30;
    gActors[i].pos.x=x;
    gActors[i].pos.y=y;
    gActors[i].unk_0xEC=A;
    gActors[i].unk_0xF0=B;
}

void func_8002ECAC(u16 i, s16 x, s16 y,s32 A, s32 B){
    gActors[i].unk_0xD2=0x2600;
    Actor_Spawn(i);
    gActors[i].pos.x=x;
    gActors[i].pos.y=y;
    gActors[i].unk_0xEC=A;
    gActors[i].unk_0xF0=B;
}

void func_8002ED34(u16 i, s16 x, s16 y,s32 z){}
/*
void func_8002ED48(u16 i, s16 x, s16 y){
    gActors[i].unk_0xD2=0x2603;
    Actor_Spawn(i);
    gActors[i].health=10;
    gActors[i].pos.x=x;
    gActors[i].pos.y=y;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002EDC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002EFE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F420.s")


void RedGem_Cap(void) {if (gRedGems >= 9999) gRedGems = 9999;}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002F6D4.s")
/*
void gem_collision(u16 arg0, u16 arg1, s32 arg2, s16 arg3, s16 arg4) {
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;

    if (arg2 == &Data_RedGem) {
        gRedGems++;
        RedGem_Cap();
        func_8003FB20(arg0, 0, 1.0, arg3, (s32) arg4, (s32) ((gPlayerActorIndex * 0x198) + 0x800F0000)->unk-A60);
        if (arg1 != 0) {
            func_80003828(0x57, arg0);
            return;
        }
        func_800036C8(0x57, arg0);
        return;
    }
    if (arg2 == &Data_BlueGem) {
        temp_v1 = gPlayerActorIndex;
        if (temp_v1) gActors[temp_v1_2].health += 0x1E;
        else Actor_AddHP(0, 0x1E);
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
        if (temp_v1_2) gActors[temp_v1_2].health+=0x1f4;
        else Actor_AddHP(0, 0x1F4);
        func_8003F9CC(2.5, arg3, arg4, 0);
        if (arg1 != 0) {
            func_80003828(0x3B, arg0);
            return;
        }
        func_800036C8(0x3B, arg0);
        return;
    }
    func_8003F8B0(1.0, arg3, arg4, ((gPlayerActorIndex * 0x198) + 0x800F0000)->unk-A60);
    temp_v1_3 = gPlayerActorIndex;
    if (temp_v1_3) gActors[temp_v1_3].health+=0x12c;
    else Actor_AddHP(0, 0x12C);
    if (arg1 != 0) {
        func_80003828(0x125, arg0);
        return;
    }
    func_800036C8(0x125, arg0);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/GemCollision.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FD48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8002FEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800303A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800309C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030A24.s")

void func_80030A74(u16 i){
    if(D_800BE4E0&1){
        gActors[i].rgba.r=0x7f;
        gActors[i].rgba.g=0x7f;
        gActors[i].rgba.b=0x7f;
    }
    else{
        gActors[i].rgba.r=0x4f;
        gActors[i].rgba.g=0x4f;
        gActors[i].rgba.b=0x4f;
    }
}

/*
void func_80030B0C(u16 i){
    if(gActors[i].unk_0x104>1){gActors[i].unk_0x104--;}
    else gActors[i].rgba.a=func_8002AE44(gActors[i].rgba.a,(s16)gActors[i].unk_0x108+2);
    
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030B0C.s")

void func_80030B84(u16 i){
    func_80030A74(i);
    func_80030B0C(i);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030D9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80030F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800310A4.s")

void func_8003119C(u32 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_80030F94(func_800284B8(16,45),arg0,arg1,arg2,arg3);
}

void func_800311EC(u16 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_800310A4(func_800284B8(16,45),arg0,arg1,arg2,arg3);
}

void func_8003123C(u32 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_80030F94(func_80028528(),arg0,arg1,arg2,arg3);
}

void func_80031284(u16 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_800310A4(func_80028528(),arg0,arg1,arg2,arg3);
}

void func_800312CC(u32 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_80030F94(func_800284B8(16,45)|0x8000,arg0,arg1,arg2,arg3);
}

void func_80031324(u16 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_800310A4(func_800284B8(16,45)|0x8000,arg0,arg1,arg2,arg3);
}

void func_8003137C(u32 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_80030F94(func_80028528()|0x8000,arg0,arg1,arg2,arg3);
}

void func_800313CC(u16 arg0, u32 arg1, u32 arg2, u32 arg3){
    func_800310A4(func_80028528()|0x8000,arg0,arg1,arg2,arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003141C.s")

u16 func_80031CAC(u16 arg0,s32 x, s32 y, s32 z){
    u16 i = func_80028528();
    if(i){
        gActors[i].unk_0xD2=0x34;
        Actor_Spawn(i);
        gActors[i].flag=3;
        gActors[i].unk_0x84=arg0;
        gActors[i].pos.x_w=x;
        gActors[i].pos.y_w=y;
        gActors[i].pos.z_w=z;
        gActors[i].unk_0x148=1.0;
    }
    return i;
}
void func_80031D58(u16 A, u16 B){
    if(B<A) gActors[B].unk_0x148=0.0;
    else gActors[B].unk_0x148=1.0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80031E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800320F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800327B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80032900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80032E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800330A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033204.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800333A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003358C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800335E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800336B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800337F4.s")

void func_800338F4(s16 arg0,s16 arg1, s16 arg2){
    if((D_800BE4E0&0x0F)==0) func_800337F4(arg0,arg1,arg2,0x132);
}

u16 D_800D2294[4]={0x136,0x138,0x13A,0x13A};
void func_80033948(s16 arg0,s16 arg1, s16 arg2){
    if((D_800BE4E0&0x0F)==0) func_800337F4(arg0,arg1,arg2,D_800D2294[Rand()&3]);
}

void func_800339AC(s16 arg0,s16 arg1, s16 arg2){}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800339BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033B54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033DE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80033E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800340CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003480C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800348E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800349C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80034E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003510C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800351C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003526C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800352C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800358CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800358DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035A20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80035E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003667C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800366E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800367D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800369A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80036DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003707C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800370AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800374D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003766C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80037B18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80037B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800384FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038704.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038D1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038E1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80038FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800390BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800398F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80039E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003A9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AA18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AB24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003AC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003B630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003B8CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003BE3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003C328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D68C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003D794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003DBD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003DF78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003E854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003ED48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EDF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EEC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003EF98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F05C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F6A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F8B0.s")

void func_8003F9CC(float f, uint16_t a, uint16_t b, uint32_t c) {}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003F9E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FB20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FD0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FE90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8003FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004023C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800404AC.s")
/*
void func_80040564(u16 param_1){
  if (gActors[param_1].unk_0xD0_h == 0) {gActors[param_1].flag = 0x9183;}
  else if (gActors[param_1].unk_0xD0_h != 1) {return;}
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800405C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800406A4.s")
/*
s32 func_800407D4(u16 x){
  if (x==D_800D5820) {
    if (D_800D5824 == 0x800) return 0x800;
    if (D_800D5824 == 0x1000) return 0x1000;
    if (D_800D5824 == 0x2000) return 0x2000;
    if (D_800D5824 == 0x4000) return 0x4000;
    if (D_800D5824 == 0x8000) return 0x8000;
  }
  return 0;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800407D4.s")
/*
void func_80040858(s16 arg0) {
    if ((arg0  == D_800D5820) && (func_8005DEFC())) func_8005DFC8(0);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004089C.s")
/*
int32_t  func_800409E0(u16 Index){
  if ((0 < gActors[Index].health) && (gActors[Index].unk_0xD4 == 0) &&
      ((gActors[Index].flag & 3)==3) && (0x50 < gActors[Index].unk_0xD0_h)) {
    return 0;
  }
  return 1;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800409E0.s")
/*
s32 func_80040A64(void) {
    s32 ret;
    if (gPlayerActorIndex == 0) ret=func_80048CE4();
    else{
      if (D_800D2954 > 0) ret=func_800409E0(gPlayerActorIndex);
    }
    return ret;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040A64.s")
/*
void FUN_80040ab4(u16 param_1){

  gActors[param_1].field_0x94 = 0x205;
  gActors[param_1].flag = 0x1003;
  gActors[param_1].field_0x84 = 0x1a8;
  *(undefined *)&gActors[param_1].field_0xdf = 0x40;
  FUN_8002ac30(param_1,10);
  *(undefined2 *)(gActors[param_1].pos + 2) = 0xffff;
  gActors[param_1].field_0x10c[4] = 1.0;
  gActors[param_1].field_0x120 = 255.0;
  return;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040AB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80040E08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80041018.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004151C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004168C.s")

void func_8004172C(u16 i, u16* pos){
    gActors[i].pos.x= pos[0] - D_800BE558;
    gActors[i].pos.y= pos[1] - D_800BE55C;
}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_8004178C.s")

s32 func_8004185c(u16 i){
    if(gActors[i].unk_0xD0_h == 2)return 1;
    return 0;
}


#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800418A8.s")

s32 func_80042290(u16 i) {    
    if ((gActors[i].unk_0xD2 == 0x90C) && ((gActors[i].flag & 2))) {
        if ((gActors[i].unk_0x188 & 0x8000) == 0) return 1;
    }
    return 0;
}

void func_80042308(u16 i){}

void func_80042310(s32 arg0, u32 arg1, u32 arg2, u32 arg3) {}
void func_80042324(s32 arg0, u32 arg1, u32 arg2, u32 arg3) {}

void func_80042338(u16 i){}
void func_80042340(u16 i){}
void func_80042348(u16 i){}
void func_80042350(u16 i){}
void func_80042358(u16 i){}

void func_80042360(u16 i){gActors[i].unk_0xD0_h++;}

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800423A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800427E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_800429A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042A0C.s")


void func_80042AEC(u16 i){
    func_80042864(i);
    func_800423A0(i);
    func_800427E0(i);
}
/*
void func_80042B2C(u16 i){
    if(0<=gActors[i].unk_0x110){gActors[i].unk_0xD0_h-=2;}
    else gActors[i].flag=0;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/241E0/func_80042C10.s")

