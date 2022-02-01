#include "common.h"
#define CatActor gActors[96]
#define LunarActor gActors[143]
#define ACTORTYPE_CAT 0XF01
#define ACTORTYPE_LUNAR 0XF03

//.data (incomplete)
int16_t D_801A3D30_69BD30=0;
uint16_t D_801A3D34_69BD34=0;
int32_t D_801A3D38_69BD38=0; //missle cooldown?

//.bss
uint16_t D_801A80C0, D_801A80C2, D_801A80C4,D_801A80C6; //phase 1 attack,?,?,?
int16_t D_801A80C8, D_801A80CA, D_801A80CC; //missles loaded, cooldown, ?
float D_801A80D0; //something with big laser (breadth?)
uint32_t D_801A80D4,D_801A80D8; //big laser rotate?, big laser charge
int16_t D_801A80DC, D_801A80DE; //machine gun ammo,?
uint32_t D_801A80E0;
uint16_t D_801A80E4;
int16_t D_801A80E6,D_801A80E8; //cat jump,?
uint16_t D_801A80EA,D_801A80EC; //cat rocket index, ?
int16_t D_801A80EE,D_801A80F0,D_801A80F2;


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80192100_68A100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80192198_68A198.s")
#ifdef NON_MATCHING
int32_t func_8019226C_68A26C(uint16_t SFX_ID, uint16_t index){
  return SFX_ActorPanX(SFX_ID,index);
}
#else
extern int32_t func_8019226C_68A26C(uint16_t SFX_ID, uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019226C_68A26C.s")
#endif
#ifdef NON_MATCHING
void func_801922A0_68A2A0(uint16_t x){
    ACTORINIT(193,0xF0A);
    gActors[193].flag=0xB;
    gActors[193].flag2=0xB11;
    gActors[193].graphic=0x2D0;
    gActors[193].pos.x=0;
    gActors[193].pos.y=0;
    gActors[193].pos.x=128;
    gActors[193].scaleX=20.0;
    gActors[193].scaleY=20.0;
    gActors[193].unk_0x18C._p=&D_800D8588;

}
#else
extern void func_801922A0_68A2A0(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801922A0_68A2A0.s")
#endif

void func_8019231C_68A31C(uint16_t x){
    gActors[193].flag=0;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019232C_68A32C.s")

void func_8019245C_68A45C(){
  D_801A80DE=1;
  D_801A80EE=480;
  D_801A80F0=320;
  D_801A80F2=704;
}

void func_80192490_68A490(){
  D_801A80DE=2;
  D_801A80EE=480;
  D_801A80F0=416;
  D_801A80F2=768;
}

void func_801924C4_68A4C4(){
  D_801A80DE=3;
  D_801A80EE=480;
  D_801A80F0=480;
  D_801A80F2=704;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801924F4_68A4F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801925F4_68A5F4.s")
//load/spawn missle
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80192AFC_68AAFC.s")

void func_80192D44_68AD44(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80192D4C_68AD4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80192EC4_68AEC4.s")

void func_801932C4_68B2C4(uint16_t x){
  ACTORINIT(72,0xF05);
  gActors[72].rgba.a=0xF0;
}
#ifdef NON_MATCHING
void func_801932FC_68B2FC(){
  ACTORINIT(72,0);
  gActors[72].flag=2;
  gActors[72].flag2=0x319;
  
  gActors[72].graphic=0x164;
  gActors[72].unk_0x18C._p=D_800D8588;
  gActors[72].rgba.a=0xC0;
  gActors[72].unk_0x114=576.0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801932FC_68B2FC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193364_68B364.s")
extern void func_80193584_68B584(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193584_68B584.s")
//branching issue?
#ifdef NON_MATCHING
void func_80193DB4_68BDB4(uint16_t index){
  if(thisActor.actorState==0){
    thisActor.actorState++;
    thisActor.flag2=0x109;
    thisActor.flag=0xB;
    thisActor.graphic=200;
    thisActor.unk_0x150._w=gActors[72].pos.x_w;
    thisActor.unk_0x154._w=gActors[72].pos.y_w;
    gActors[144].rgba.r=0xC0;
    func_800283BC(0x99,index); //laser blast noise
  }
  if(thisActor.actorState!=1) return;
  func_80193584_68B584(index);
  if(D_801A80D0<0.0f) thisActor.flag=0;
}
#else
extern void func_80193DB4_68BDB4(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193DB4_68BDB4.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193EA8_68BEA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193EF8_68BEF8.s")

void func_80193FB8_68BFB8(uint16_t x){}

void func_80193FC0_68BFC0(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80193FC8_68BFC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801941F4_68C1F4.s")

void func_801945C4_68C5C4(uint16_t x){}

void func_801945CC_68C5CC(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801945D4_68C5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80194754_68C754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80194858_68C858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801949B4_68C9B4.s")
void func_80194ABC_68CABC(uint16_t index){
  if(--thisActor.unk_0x104._w<0) thisActor.flag&=~0x200;
  thisActor.rgba.g+=6;
  thisActor.rgba.b+=8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80194B28_68CB28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80194DC4_68CDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80194F40_68CF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195454_68D454.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801954D0_68D4D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019568C_68D68C.s")
#ifdef NON_MATCHING
//one stinkin' regAlloc.
void func_80195808_68D808(uint16_t index, int16_t x, int16_t y, int16_t x2,int16_t y2){
  if(gActors[index].flag&0x20){
      gActors[index].hitboxBX0=-x;
      gActors[index].hitboxBX1=-y;
  }
  else{
      gActors[index].hitboxBX0=y;
      gActors[index].hitboxBX1=x;
  }
  gActors[index].hitboxBY0=x2;
  gActors[index].hitboxBY1=y2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195808_68D808.s")
#endif

void func_8019589C_68D89C(uint16_t index, int16_t x, int16_t y, int16_t x2,int16_t y2){
  if(gActors[index].flag&0x20){
      gActors[index].hitboxAX0=-y;
      gActors[index].hitboxAX1=-x;
  }
  else{
      gActors[index].hitboxAX0=x;
      gActors[index].hitboxAX1=y;
  }
  gActors[index].hitboxAY0=x2;
  gActors[index].hitboxAY1=y2;
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195930_68D930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195AD4_68DAD4.s")

uint32_t func_80195C14_68DC14(uint16_t index, uint32_t flag){
  int32_t z = gActors[index].pos.z_w-CatActor.pos.z_w;
  if((z<0x80000)&&(z>-0x80000)){
    gActors[index].flag|=flag;
    return 1;
  }
  gActors[index].flag&=-flag -1; //AKA AND NOT FLAG
  return 0;
}

void func_80195CA8_68DCA8(uint16_t index){
  gActors[index].flag|=0x200;
  gActors[index].attackDmg=100;
  gActors[index].unk_0xDA=4, gActors[index].unk_0xDB=3; //yes, this works.
  gActors[index].unk_0xFC._w=0x30000;
  Actor_HitboxASet(index,12);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195D28_68DD28.s")

void func_80195DCC_68DDCC(){
  gActors[54].flag&=~0x1700;
  gActors[57].flag&=~0x1700;
  gActors[67].flag&=~0x1700;
  gActors[70].flag&=~0x1700;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195E0C_68DE0C.s")
extern void func_80195EA4_68DEA4(uint16_t x, uint16_t y);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195EA4_68DEA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80195F04_68DF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196100_68E100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196528_68E528.s")

void func_80196898_68E898(uint16_t index){
  if(gActors[index].unk_0xD4>0) gActors[index].unk_0xD4--;
  gActors[index].flag3&=~0x00200600;
}

void func_801968F0_68E8F0(uint16_t index){
  if(gActors[index].pos.z<CatActor.pos.z) MODi(gActors[index].vel.z_w,0x10000,0x1000);
  else MODi(gActors[index].vel.z_w,-0x10000,0x1000);
}

void func_8019698C_68E98C(uint16_t index){
  if(gActors[index].pos.z<-0x60) MODi(gActors[index].vel.z_w,0x20000,0x4000);
  else MODi(gActors[index].vel.z_w,-0x20000,0x4000);
}

void func_80196A20_68EA20(uint16_t index){
  if(gActors[index].pos.z<0x60) MODi(gActors[index].vel.z_w,0x20000,0x4000);
  else MODi(gActors[index].vel.z_w,-0x20000,0x4000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196AB4_68EAB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196B84_68EB84.s")
extern uint32_t func_80196C64_68EC64(uint16_t index,int32_t x,int32_t vTrue,int32_t vFalse,int32_t vMax);

#ifdef NON_MATCHING
uint32_t func_80196C64_68EC64(uint16_t index,int32_t x,int32_t vTrue,int32_t vFalse,int32_t vMax){
  int16_t pos = x-gActors[index].pos.x;
  if(pos<0) MODi(gActors[index].vel.x_w,vTrue,vMax);
  else MODi(gActors[index].vel.x_w,vFalse,vMax);
  if((pos>-12)&&(pos<12)) return 1;
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196C64_68EC64.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196D2C_68ED2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196DF8_68EDF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196E38_68EE38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196E78_68EE78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196EA4_68EEA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80196EC4_68EEC4.s")

void func_80196F48_68EF48(uint16_t index){
  gActors[index].actorType=0xF11;
  gActors[index].flag|=0x9400;
  gActors[index].health=10;
}

void func_80196F98_68EF98(uint16_t x){
  func_80196F48_68EF48(54);
  Actor_HitboxBSet(54,18);
  func_80196F48_68EF48(60);
  Actor_HitboxBSet(60,18);
  func_80196F48_68EF48(56);
  Actor_HitboxBSet(56,18);
  gActors[56].flag&=~0x1000;
  func_80196F48_68EF48(58);
  Actor_HitboxBSet(58,14);
  func_80196F48_68EF48(69);
  Actor_HitboxBSet(69,10);
  func_80196F48_68EF48(71);
  Actor_HitboxBSet(71,10);
  func_80196F48_68EF48(75);
  Actor_HitboxBSet(75,10);
  func_80196F48_68EF48(77);
  Actor_HitboxBSet(77,10);
  func_80196F48_68EF48(81);
  Actor_HitboxBSet(81,10);
  func_80196F48_68EF48(83);
  Actor_HitboxBSet(83,10);
  func_80196F48_68EF48(87);
  Actor_HitboxBSet(87,10);
  func_80196F48_68EF48(89);
  Actor_HitboxBSet(89,10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801970BC_68F0BC.s")

void func_80197280_68F280(uint16_t x){}

void func_80197288_68F288(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197290_68F290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801972FC_68F2FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197368_68F368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197414_68F414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801974A4_68F4A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801974C8_68F4C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019752C_68F52C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197590_68F590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801975F4_68F5F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197658_68F658.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801976BC_68F6BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019771C_68F71C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019777C_68F77C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801977D8_68F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80197AC4_68FAC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80199DB0_691DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80199E90_691E90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80199EF0_691EF0.s")

void func_80199F50_691F50(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_80199F58_691F58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019A000_692000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019A050_692050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019A170_692170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019A864_692864.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019AA14_692A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019AC00_692C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019AE34_692E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019B328_693328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019B468_693468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019B760_693760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019B830_693830.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BA6C_693A6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BB2C_693B2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BBBC_693BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BC2C_693C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BC70_693C70.s")

void func_8019BCE0_693CE0(void){
  D_800BE544 = 0x8000;
  gScreenPosCurrentX._hi = gScreenPosTargetX._hi = 0x400;
  func_80028380();
  Actor_ZeroFlag_48_144();
  Actor_ZeroFlag_16_32();
  Actor_ZeroFlagRange(0x10,0x30);
  Actor_ZeroFlagRange(0x94,0xc0);
  Actor_ZeroFlag_192_199();
  func_800286C8();
  }


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BD5C_693D5C.s")
//lunar yells "Beast change!" here.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019BF2C_693F2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C070_694070.s")
extern void func_8019C198_694198(uint16_t index);
#ifdef NON_MATCHING
void func_8019C198_694198(uint16_t index){
  gActors[144].pos.x_w=gActors[144].pos.x_w-0xA0000+gActors[index].vel.x_w;
  gActors[145].pos.x_w=gActors[145].pos.x_w-0xA0000+gActors[index].vel.x_w;
  gActors[146].pos.x_w=gActors[146].pos.x_w-0xA0000+gActors[index].vel.x_w;
  gActors[147].pos.x_w=gActors[147].pos.x_w-0xA0000+gActors[index].vel.x_w;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C198_694198.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C228_694228.s")
#ifdef NON_MATCHING
void func_8019C404_694404(uint16_t x){
  func_8019C198_694198(52);
  gEyeX=gActors[52].pos.x;
  gEyeY=gActors[52].pos.y;
  gAtX=gActors[52].pos.x;
  gAtY=gActors[52].pos.y;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C404_694404.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C474_694474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C54C_69454C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C6DC_6946DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019C7C0_6947C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019CCC4_694CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019CD94_694D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019CDC0_694DC0.s")
//Lunar main behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019CE7C_694E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019F5B4_6975B4.s")
//Boss defeat?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019F908_697908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019FDC4_697DC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_8019FEBC_697EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A04B4_6984B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A0EA4_698EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A1178_699178.s")

void func_801A1CCC_699CCC(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A1CD4_699CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A1E94_699E94.s")

uint32_t func_801A2010_69A010(uint16_t index){
  if(gButtonPress&gButton_A){
    gActors[index].actorState=32;
    return 1;
    }
  return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A2070_69A070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A2184_69A184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A2234_69A234.s")

#ifdef NON_MATCHING
void func_801A22AC_69A2AC(uint16_t index){
  gPlayerActor.pos.x_w= gActors[index+1].pos.x_w;
  gPlayerPosXMirror._w=gActors[index+1].pos.x_w+ gScreenPosCurrentX._w;
  gPlayerActor.pos.y_w= gActors[index+1].pos.y_w + 0x160000;
  gPlayerPosXMirror._w=gPlayerActor.pos.y_w+ gScreenPosCurrentY._w;
  gPlayerActor.flag3|=0x20;
  gPlayerActor.pos.z_w= gActors[index+1].pos.z_w + 1;
}
#else
extern void func_801A22AC_69A2AC(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A22AC_69A2AC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A233C_69A33C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A23C4_69A3C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A30B8_69B0B8.s")

void func_801A32C8_69B2C8(uint16_t index){
  gActors[index].pos.z= gPlayerActor.pos.z;
}

void func_801A3304_69B304(uint16_t x){}

void func_801A330C_69B30C(uint16_t x){}

void func_801A3314_69B314(uint16_t x){
  ACTORINIT(120,0XF13);
  gActors[120].flag2=0x108;
  gActors[120].flag=0x1023;
  gActors[120].graphic=0x1812;
  gActors[120].pos.x=0x40;
  gActors[120].pos.y=0;
  gActors[120].pos.z=0;
  gActors[120].vel.x_w=0xA0000;
  gActors[120].vel.y_w=0x40000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A3384_69B384.s")

uint32_t func_801A35FC_69B5FC(){
  if((gActors[119].flag&2)&&(gActors[119].actorType==0xF08)) return 1;
  return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A363C_69B63C.s")

int32_t func_801A37E8_69B7E8(uint16_t index){
  return func_800294E0 (LunarActor.pos.x - gActors[index].pos.x,LunarActor.pos.y - gActors[index].pos.y) <<16;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/CerberusAlpha/func_801A3858_69B858.s")

void func_801A3D1C_69BD1C(uint16_t x){}
