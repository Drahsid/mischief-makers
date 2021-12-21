#include "common.h"
//"final battle" actor funcs
# define BossActor gActors[49]


void func_80192100_6BCDD0(uint16_t index){
    gActors[index].actorType=0x21;
    Actor_Spawn(index);
    gActors[index].unk_0x94=0x118;
    gActors[index].flag=3;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019216C_6BCE3C.s")

void func_801921E0_6BCEB0(uint16_t x){
    func_80192100_6BCDD0(81);
    gActors[81].graphic=0x83A;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019220C_6BCEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801922EC_6BCFBC.s")
/*
void func_8019232C_6BCFFC(uint16_t index){
    uint16_t x=index+10;
    if(gActors[index].unk_0x138!=0.0) x=index+15;
    gActors[x].graphic=0x203A;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019232C_6BCFFC.s")

void func_801923D0_6BD0A0(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801923D8_6BD0A8.s")
void func_801924B4_6BD184(uint16_t x){
    func_80192100_6BCDD0(84);
    gActors[84].graphic=0x100E;
    func_80192100_6BCDD0(85);
    gActors[85].graphic=0x1016;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801924F4_6BD1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192698_6BD368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801929DC_6BD6AC.s")

void func_80192C8C_6BD95C(uint16_t x){
    func_80192100_6BCDD0(86);
    gActors[86].graphic=0x200C;
    func_80192100_6BCDD0(87);
    gActors[87].graphic=0x2014;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192CCC_6BD99C.s")

void func_80192D74_6BDA44(uint16_t x){
    func_80192100_6BCDD0(88);
    gActors[88].graphic=0x812;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192DA0_6BDA70.s")

void func_80192E48_6BDB18(uint16_t x){
    func_80192100_6BCDD0(89);
    gActors[89].graphic=0x812;
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192E74_6BDB44.s")
//shade the Mecha based on z.
#ifdef NON_MATCHING
void func_80192F30_6BDC00(uint16_t index){
    int8_t c;
    int16_t z= -(gActors[index].pos.z)/2;
    c=z;
    if(z>128)c=128;
    else if(z<0)c=0;
    gActors[index].rgba.r=c;
    gActors[index].rgba.g=c;
    gActors[index].rgba.b=c;

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192F30_6BDC00.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80192FB4_6BDC84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80193024_6BDCF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801932DC_6BDFAC.s")
//debug func?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80193B50_6BE820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80193EFC_6BEBCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801940E4_6BEDB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801946D8_6BF3A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801948DC_6BF5AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80194C14_6BF8E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80194C70_6BF940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80194CE8_6BF9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80194EEC_6BFBBC.s")
//catch and throw fist?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80194FA0_6BFC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80195D44_6C0A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80195DA0_6C0A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80195F14_6C0BE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196030_6C0D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801960B0_6C0D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196530_6C1200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019654C_6C121C.s")
/*
void func_801965D0_6C12A0(uint16_t index, uint32_t theta){
    float f1,f2;
    int32_t a;
    Actor* actorp;
    f1= COS(theta)*393216.0;
    f2= COS(theta)*49152.0;
    a=ABS_800289cc((int32_t)f2);
    actorp=&thisActor;
    MODi(actorp->vel.x_w,(int32_t)f1,a);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801965D0_6C12A0.s")
/*
void func_801966B0_6C1380(uint16_t index, uint32_t theta){
    float f1,f2;
    int32_t a;
    Actor* actorp;
    f1= SIN(theta)*393216.0;
    f2= SIN(theta)*49152.0;
    a=ABS_800289cc((int32_t)f2);
    actorp=&thisActor;
    MODi(actorp->vel.y_w,(int32_t)f1,a);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801966B0_6C1380.s")

void func_80196794_6C1464(uint16_t index){
    MODi(thisActor.vel.x_w,0,0xC000);
}

void func_801967F4_6C14C4(uint16_t index){
    MODi(thisActor.vel.y_w,0,0xC000);
}
//controlling the fist?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196854_6C1524.s")

void func_80196BE8_6C18B8(uint16_t x){}
//spawn a gem if beaten on ground.
void func_80196BF0_6C18C0(uint16_t index, uint16_t gemflags,int32_t vx){
    uint16_t gemIndex=func_8002F154(index,gemflags,0);
    if(gemIndex){
        gActors[gemIndex].vel.x_w=vx;
        gActors[gemIndex].vel.y_w=0x38000;
        gActors[gemIndex].pos.y+=0x20;
        
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196C78_6C1948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196D60_6C1A30.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80196E88_6C1B58.s")

void func_801970F8_6C1DC8(uint16_t x){}
void func_80197100_6C1DD0(uint16_t x){}

uint32_t func_80197108_6C1DD8(){return 50;}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197110_6C1DE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801971A0_6C1E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197968_6C2638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197A04_6C26D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197AD0_6C27A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197BA4_6C2874.s")

void func_80197C64_6C2934(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197C6C_6C293C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197E08_6C2AD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197F00_6C2BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80197F28_6C2BF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198330_6C3000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198370_6C3040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801983B0_6C3080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801983F0_6C30C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198430_6C3100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198470_6C3140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801984B0_6C3180.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198508_6C31D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198578_6C3248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801985D8_6C32A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198638_6C3308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801986DC_6C33AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019878C_6C345C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198858_6C3528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801988E8_6C35B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198AE4_6C37B4.s")
//spawns the boss actor?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198C24_6C38F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198E70_6C3B40.s")
//gauges boss health
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80198F10_6C3BE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019902C_6C3CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801990EC_6C3DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199190_6C3E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199208_6C3ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199254_6C3F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199278_6C3F48.s")

void func_801992A4_6C3F74(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801992AC_6C3F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019946C_6C413C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199504_6C41D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801996A4_6C4374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199BA8_6C4878.s")
//main behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_80199CD4_6C49A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019D4D8_6C81A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019D7A0_6C8470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019D908_6C85D8.s")

void func_8019D970_6C8640(uint16_t x){
    gActors[193].actorState=1;
    gActors[193].unk_0x94=0xb11;
    gActors[193].flag=11;
    gActors[193].unk_0x18C=&D_800D8588;
    gActors[193].rgba.a=255;
    gActors[193].unk_0x150._w=0;
    gActors[193].unk_0x154._w=x;
    Actor_Shade(193,0);
}

void func_8019D9D8_6C86A8(uint16_t x){
    gActors[193].actorState=2;
    gActors[193].unk_0x94=0xb11;
    gActors[193].flag=11;
    gActors[193].unk_0x18C=&D_800D8588;
    gActors[193].rgba.a=0;
    gActors[193].unk_0x150._w=0;
    gActors[193].unk_0x154._w=x;
    Actor_Shade(193,0);
}

void func_8019DA3C_6C870C(uint16_t x, uint16_t y){
    gActors[193].actorState=3;
    gActors[193].unk_0x94=0xb11;
    gActors[193].flag=11;
    gActors[193].unk_0x18C=&D_800D8588;
    gActors[193].rgba.a=0;
    gActors[193].unk_0x150._w=0;
    gActors[193].unk_0x154._w=y;
    gActors[193].unk_0x158._w=x;
    Actor_Shade(193,0);
}

uint32_t func_8019DAAC_6C877C(uint16_t x){
    if((gActors[193].rgba.a==255)&&(x<gActors[193].unk_0x150._w)) return 1;
    return 0;
}
//aim camera while holding fist?
#ifdef NON_MATCHING
//RegAlloc?
void func_8019DAF0_6C87C0(uint16_t i1,uint16_t i2,uint16_t i3,uint16_t i4){
  gAtX=(gActors[i2].pos.x+gActors[i1].pos.x)/2;
  gAtY=(gActors[i4].pos.y+gActors[i3].pos.y)/2;
  gEyeX = gAtX;
  gEyeY =gAtY + 4.0f;
}
#else
extern void func_8019DAF0_6C87C0(uint16_t i1,uint16_t i2,uint16_t i3,uint16_t i4);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019DAF0_6C87C0.s")
#endif

void func_8019DBEC_6C88BC(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94=0x111;
    gActors[index].flag=11;
    gActors[index].pos.x=0;
    gActors[index].pos.y=0;
    gActors[index].pos.z=0x80;
    gActors[index].graphic=0xE6;
    gActors[index].rgba.a=64;
    gActors[index].scaleX=12.0;
    gActors[index].scaleY=12.0;
}

void func_8019DC88_6C8958(){
    gActors[122].unk_0x94=0x111;
    gActors[123].unk_0x94=0x111;
    gActors[122].flag|=1;
    gActors[123].flag|=1;
}

void func_8019DCB8_6C8988(){
    gActors[122].unk_0x94=0;
    gActors[123].unk_0x94=0;
    gActors[122].flag&=~1;
    gActors[123].flag&=~1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019DCE8_6C89B8.s")

void func_8019DF44_6C8C14(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94=0x108;
    gActors[index].flag=3;
}
void func_8019DFB0_6C8C80(uint16_t x){
    func_8019DF44_6C8C14(118);
    gActors[118].graphic=0x200A;
    func_8019DF44_6C8C14(119);
    gActors[119].graphic=0x200C;
    func_8019DF44_6C8C14(120);
    gActors[120].graphic=0x2014;
}
void func_8019E004_6C8CD4(uint16_t x){
    func_8019DF44_6C8C14(121);
    gActors[121].graphic=0x203A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E030_6C8D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E07C_6C8D4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E0C8_6C8D98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E12C_6C8DFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E424_6C90F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E564_6C9234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E7E8_6C94B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019E8B0_6C9580.s")

void func_8019EB80_6C9850(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94=0x8100;
    gActors[index].flag=3;
    gActors[index].pos.z=0xA0;
    gActors[index].graphicTime=1;
    gActors[index].rgba.a=0;
}
//compiler refuses to aknowledge adresses for actorp->unk_0xE8 for these 3.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019EC00_6C98D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019EC70_6C9940.s")

#ifdef NON_MATCHING
void func_8019ECEC_6C99BC(uint16_t index){
    Actor* actorp;
    func_8019EB80_6C9850(index);
    actorp= &gActors[index];
    actorp->flag|=0x20;
    actorp->pos.y=0xFFD0;
    actorp->pos.x=0x60;
    actorp->vel.x_w=0xFFFC0000;
    actorp->vel.y_w=0x30000;
    actorp->graphicList=&D_801A68CC_6D159C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019ECEC_6C99BC.s")
#endif
void func_8019ED74_6C9A44(uint16_t x){
  if(x==0){
    MODi(gActors[67].vel.x_w,0,0x4000);
    MODi(gActors[48].rgba.a,0xc0,8);
    gActors[67].rgba.a = gActors[48].rgba.a;
    MODi(gActors[48].vel.y_w,0,0x4000);
    MODi(gActors[67].vel.y_w,0,0x4000);
  }
  else{
    gActors[48].vel.y_w +=-0x3800;
    gActors[48].pos.z += 5;
    gActors[67].vel.y_w +=-0x6000;
    gActors[67].vel.x_w +=-0x8000;
    MODi(gActors[67].rgba.a,0,8);
  } 
  gActors[84].rgba.a = gActors[67].rgba.a;
  gActors[84].vel.x_w = -gActors[67].vel.x_w;
  gActors[84].vel.y_w = gActors[67].vel.y_w;
}

void func_8019EE70_6C9B40(void){
    gActors[48].flag=0;
    gActors[67].flag=0;
    gActors[84].flag=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019EE8C_6C9B5C.s")
//henshin cinematic
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_8019EF50_6C9C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A0228_6CAEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A02F4_6CAFC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A05A0_6CB270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A06B4_6CB384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A0BA8_6CB878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/FinalBattle/func_801A0C74_6CB944.s")
