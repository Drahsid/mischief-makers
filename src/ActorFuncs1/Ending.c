#include "common.h"

//.data
uint16_t D_801AA070_711300=0;
uint16_t D_801AA074_711304=0;
uint16_t D_801AA078_711308=0;
uint16_t D_801AA07C_71130C=0;
uint16_t D_801AA080_711310=0;
uint16_t D_801AA084_711314=0;
//credits text
char* D_801AA6E8_711978[]={
  "Total Directed","Hideyuki Suganami",
  "Based Story Write","FINAL/NAMI",
  "Based Game Design","CHOCO-MONKEY",
  "Enemies Programmes","Stageboss Programmes","FINAL/NAMI",
  "Main Programmer","Masato Maegawa",
  "Tiny Programmer","Fukuryu",
  "Programmer","Hiroshi Matsumoto",
  "Programmer","Mitsuna",
  "Program Assist","KONIG Ishida",
  "Program Assist","Keiji Fujita",
  "Main Graphic","Makoto Ogino",
  "Character Design","HAN",
  "Graphic Assist","Nobuhisa Tanaka",
  "Graphic Assist","Seiji Hasuko",
  "Graphic Assist","Kaname Shindoh",
  "Graphic Assist","Tsunehisa Kanagae",
  "Music by","NON",
  "Sound Effect","Satoshi Murata",
  "Treasurer","Haruko Hosaka",
  "Supervisor","Masato Maegawa",
  "Background CG","Masahiro Katsuta","Mamiko Himuro","Satoshi Tsukamoto","Hitoshi Suenaga","Satoru Onishi",
  "Artwork","Naoki Oishi","Takashi Otsuka",
  "Publicity","Yoshihisa Saitoh","Hideki Yamamoto",
  "Special Thanks","Hiroomi Tanaka","Koichi Iwase","Kan Ikeda","Kazunori Oowada","Mariko Numajiri","Ryoma Nakamura",
    "Tomoe Suzuki","Tsuyoshi Koyama","Youko Kagaya","Wataru Harashima","Kyohei Nakaguma","Masahiro Akagi","Masahiro Kobayashi",
    "Ryu Amimoto","Shouya Akagi","Taro Futami","Tatsuya Kiuchi",
  "Technical Support","Sadao Yahagi","Kenjiro Kano",
  "Quality Coordinator","Hiroshi Sato",
  "Enix Staff","Yoshinori Yamagishi","Shinji Futami","Yasuhito Watanabe","Jun Toda","Hiroki Fujimoto","Yousuke Saito","Daisuke Kobayashi"
    "Etsuko Shimamura","Noriko Nakanome",
  "Assistant Producer","Shinji Wachi",
  "Producer","Yuuchi Kikumoto",
  "Executive Producer","Keiji Honda",
  "Executive Producer","Yukinobu Chida",
  "Publisher","Yasuhiro Fukushima",
  "U.S. Coordination and Translation","Hiro Nakamura","Christian Phillips",
  "THANK YOU FOR PLAYING.","@1997 TREASURE/ENIX"
};
//indecies on which/how to display the credits
//todo: write list using these macros
#define CREDITIMER(xx) 0x8000|xx //dec timer(?) by xx*D_801AC3A8
#define CREDITEFFECT(xx) 0x8100|xx //activate effect xx of 33
#define CREDITSTRING(xx) 0x8200|xx //load string from index xx
uint16_t D_801AA87C_711B0C[408];
/*
void* D_801AABAC_711E3C[16]={
  0x8022D4C8,0x8022D4C8,0x8022D4C8,0x8022D4C8,
  0x8022D4C8,0x8022D528,0x8022D548,0x8022D568,
  0x8022D4C8,D_800D84E8,D_800D8508,D_800D8528,
  D_800D8548,0x8022D4C8,0x8022D4C8,0x8022D4C8};*/
//.bss
int32_t D_801AC370;
uint16_t D_801AC374;
UNK_TYPE D_801AC378;
uint32_t D_801AC37C;
uint32_t D_801AC380;
uint16_t D_801AC384;
uint16_t D_801AC386;
uint16_t D_801AC388;
uint16_t D_801AC38A;
uint32_t D_801AC38C;
int32_t D_801AC390;
int32_t D_801AC394;
uint16_t D_801AC398;
uint16_t D_801AC39A;
uint16_t D_801AC39C;
uint16_t D_801AC39E;
uint16_t D_801AC3A0;
int16_t D_801AC3A2;
int16_t D_801AC3A4;
int16_t D_801AC3A6;
int8_t D_801AC3A8;

extern int32_t func_801922EC_6F957C(uint32_t x,uint32_t y);


float func_80192100_6F9390(float f1,float f2, uint16_t x){
  if(x==0) return f2;
  return (f2-f1)/(float)x+f1;
}

int32_t func_8019214C_6F93DC(int32_t i1,int32_t i2, uint16_t x){
  return func_80192100_6F9390(i1,i2,x);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801921A0_6F9430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019221C_6F94AC.s")
/*uint16_t func_801922A0_6F9530(uint16_t x,uint16_t y){
return func_801922EC_6F957C(x<<16,y<<16)/0x10000;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801922A0_6F9530.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801922EC_6F957C.s")
///some color-blending func?
extern func_80192374_6F9604(uint16_t x, uint16_t* p, uint8_t r, uint8_t g, uint8_t b);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192374_6F9604.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192408_6F9698.s")

#ifdef NON_MATCHING
void func_80192490_6F9720(uint16_t index) { //decomp.me says yes, compiler says no.
    thisActor.flag2 = 0xA41;
    thisActor.flag = 0xB;
    thisActor.graphic = 0x2D0;
    thisActor.rgba.a = 0xFF;
    thisActor.rgba.r = 0;
    thisActor.rgba.g = 0;
    thisActor.rgba.b = 0;
    thisActor.pos.x = 0;
    thisActor.pos.y = 0;
    thisActor.unk_0x188._p = NULL;
    thisActor.unk_0x18C._p = D_800D85A8;
    thisActor.scaleX = 19.0;
    thisActor.scaleY = 13.0;
}
#else
extern void func_80192490_6F9720(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192490_6F9720.s")
#endif

void func_80192520_6F97B0(uint16_t index) {
    thisActor.flag2 = 0x850;
    thisActor.flag = 0xB;
    thisActor.graphic = 0x2802;
    thisActor.rgba.r = 0x7F;
    thisActor.rgba.g = 0x7F;
    thisActor.rgba.b = 0x20;
    thisActor.rgba.a = 0xFF;
    thisActor.pos.x = -2;
    thisActor.pos.y = 3;
    thisActor.pos.z = -255;
    thisActor.unk_0x188._p = NULL;
}

void func_801925A4_6F9834(uint16_t index, uint16_t x){
    thisActor.actorState=2;
    thisActor.unk_0x150._w=x;
}

void func_801925EC_6F987C(uint16_t index, uint16_t x){
    thisActor.actorState=4;
    thisActor.unk_0x150._w=x;
}

void func_80192634_6F98C4(uint16_t index, uint8_t a){
    thisActor.actorState=1;
    thisActor.rgba.a=a;
    thisActor.unk_0x154._w= thisActor.rgba.a*0x10000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192684_6F9914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801926E4_6F9974.s")

void func_8019270C_6F999C(uint16_t x){
    func_801925EC_6F987C(0x31,x);
}

void func_80192734_6F99C4(uint8_t x){
    func_80192634_6F98C4(0x31,x);
}

uint32_t func_8019275C_6F99EC(){
    return func_80192684_6F9914(0x31);
}

void func_8019277C_6F9A0C(uint16_t x){
  func_801925A4_6F9834(0x32,x);
}

void func_801927A4_6F9A34(uint16_t x){
  func_801925EC_6F987C(0x32,x);
}


void func_801927CC_6F9A5C(uint8_t a){
    func_80192634_6F98C4(0x32,a);
}

uint32_t func_801927F4_6F9A84(){
    return func_80192684_6F9914(50);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192814_6F9AA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192930_6F9BC0.s")

void func_801929C8_6F9C58(uint16_t x){
    uint16_t index=51;
    thisActor.actorState=2;
    thisActor.unk_0x150._w=x;
}
void func_801929E8_6F9C78(uint16_t x){
  uint16_t index=51;
    thisActor.actorState=4;
    thisActor.unk_0x150._w=x;
}
void func_80192A08_6F9C98(uint16_t x){
  uint16_t index=51;
    thisActor.actorState=4;
    thisActor.unk_0x150._w=x;
}
void func_80192A28_6F9CB8(uint16_t x){
  uint16_t index=51;
    thisActor.actorState=2;
    thisActor.unk_0x150._w=x;
}

void func_80192A48_6F9CD8(uint8_t a){
  uint16_t index=51;
    thisActor.actorState=1;
    thisActor.rgba.a=a;
    thisActor.unk_0x154._w=thisActor.rgba.a*1000;
}

void func_80192A80_6F9D10(){
    gActors[51].rgba.r=0;
    gActors[51].rgba.g=0;
    gActors[51].rgba.b=0;
}

void func_80192A98_6F9D28(){
    gActors[51].rgba.r=0xff;
    gActors[51].rgba.g=0xff;
    gActors[51].rgba.b=0xff;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192AB4_6F9D44.s")

void func_80192C34_6F9EC4(uint16_t x, uint16_t index,uint32_t q){
    ACTORINIT(index,0x2c11);
    thisActor.pos.x=0;
    thisActor.pos.y=0;
    thisActor.pos.z=0;
    thisActor.unk_0x154._w=q;
}

#ifdef NON_MATCHING
void func_80192CAC_6F9F3C(uint16_t index){
    thisActor.unk_0x154._w+=2;
}
#else
extern void func_80192CAC_6F9F3C(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192CAC_6F9F3C.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192CEC_6F9F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192E2C_6FA0BC.s")

#ifdef NON_MATCHING
void func_80193278_6FA508(uint16_t x){
    ACTORINIT(52,0x2C12);
    gActors[52].flag=2;

    ACTORINIT(53,0x2C13);
    gActors[53].flag=2;
}
#else
extern void func_80193278_6FA508(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193278_6FA508.s")
#endif

void func_801932D0_6FA560(uint16_t other,uint16_t index,uint16_t type,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  ACTORINIT(index,type);
  thisActor.pos.x_w = 0;
  thisActor.pos.y_w = 0;
  thisActor.pos.z_w = 0;
  thisActor.flag = 2;
  thisActor.graphic = graphic;
  thisActor.pos.x = x;
  thisActor.pos.y = y;
  thisActor.pos.z = z;
  thisActor.actorState =gActors[other].actorState&0xff00;
}

void func_8019339C_6FA62C(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c04,graphic,x,y,z);
}

void func_801933F8_6FA688(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c05,graphic,x,y,z);
}
void func_80193454_6FA6E4(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c06,graphic,x,y,z);
}
void func_801934B0_6FA740(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c07,graphic,x,y,z);
}

void func_8019350C_6FA79C(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c08,graphic,x,y,z);
}
void func_80193568_6FA7F8(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c09,graphic,x,y,z);
}
void func_801935C4_6FA854(uint16_t other,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,81,0x2c0A,0,0,0,z);
  gActors[81].actorState=0;
}
void func_80193618_6FA8A8(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c0B,graphic,x,y,z);
}
void func_80193674_6FA904(uint16_t other,uint16_t index,uint16_t graphic,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x1D,graphic,x,y,z);
}
#ifdef NON_MATCHING
void func_801936D0_6FA960(uint16_t x,uint16_t index,int16_t z){
  ACTORINIT(index,0x2C00);
  thisActor.pos.z = z;
}
#else
extern void func_801936D0_6FA960(uint16_t x,uint16_t index,int16_t z);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801936D0_6FA960.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193740_6FA9D0.s")

void func_80193778_6FAA08(uint16_t other,uint16_t index,uint16_t graphic,int32_t x,int32_t y,int32_t z){
  ACTORINIT(index,0x2c05);
  thisActor.flag = 2;
  thisActor.graphic = graphic;
  thisActor.pos.x_w = x;
  thisActor.pos.y_w = y;
  thisActor.pos.z_w = z;
  thisActor.actorState =gActors[other].actorState&0xff00;
}

void func_8019383C_6FAACC(uint16_t other,uint16_t index,uint16_t graphic,int32_t x,int32_t y,int32_t z){
  ACTORINIT(index,0x2c06);
  thisActor.flag = 2;
  thisActor.graphic = graphic;
  thisActor.pos.x_w = x;
  thisActor.pos.y_w = y;
  thisActor.pos.z_w = z;
  thisActor.actorState =gActors[other].actorState&0xff00;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193900_6FAB90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193950_6FABE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193994_6FAC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801939DC_6FAC6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193A24_6FACB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193A68_6FACF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193AB0_6FAD40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193B38_6FADC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193BA8_6FAE38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193C58_6FAEE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193D2C_6FAFBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193EF4_6FB184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193FDC_6FB26C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801940B4_6FB344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019419C_6FB42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80194284_6FB514.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019435C_6FB5EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019443C_6FB6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019451C_6FB7AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801945C0_6FB850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801959B8_6FCC48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80195B34_6FCDC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80195E2C_6FD0BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80195F64_6FD1F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801963D4_6FD664.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801969EC_6FDC7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80196C3C_6FDECC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80196E08_6FE098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80196EA8_6FE138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197030_6FE2C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197088_6FE318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197168_6FE3F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197484_6FE714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197784_6FEA14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197964_6FEBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197B44_6FEDD4.s")

uint16_t func_80197D60_6FEFF0(void){
  uint16_t ret= Actor_GetInactiveInRange(0x40,0x90);
  if(ret)return ret;
  return Actor_GetInactiveInRange(0x90,0xc0);
}
//processes string for credits sequence
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197DA0_6FF030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197FB8_6FF248.s")
//show credits
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801980E0_6FF370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80198458_6FF6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019854C_6FF7DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80198654_6FF8E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801989AC_6FFC3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80198B18_6FFDA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801991E4_700474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801992C4_700554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199424_7006B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199490_700720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801994E4_700774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199600_700890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199704_700994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199C98_700F28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199D20_700FB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80199F08_701198.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A0B8_701348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A250_7014E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A3A8_701638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A520_7017B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A940_701BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019A9C0_701C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019ABB0_701E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019ACFC_701F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019AE98_702128.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019AFA4_702234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019B108_702398.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019B590_702820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019B604_702894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019B678_702908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019B874_702B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BA10_702CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BB98_702E28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BCB4_702F44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BD94_703024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BE7C_70310C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019BF54_7031E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019C04C_7032DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019C1C0_703450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019C714_7039A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019C880_703B10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019C980_703C10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019CA18_703CA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019CB88_703E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019CC7C_703F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019CDEC_70407C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019D5E0_704870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019D758_7049E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019D7E8_704A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019D854_704AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019D91C_704BAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019DC4C_704EDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019E0C0_705350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019E13C_7053CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019E1CC_70545C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019E338_7055C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019EA70_705D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019EB2C_705DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019EBBC_705E4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019EC28_705EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019ECF0_705F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F174_706404.s")

#ifdef NON_MATCHING
void func_8019F21C_7064AC(uint16_t index){ //marina becomes human
  int16_t sVar1;
  uint32_t uVar2;
  int32_t iVar4;
  

  if (true) { //not sure where ghidra got that... need to find when .rodata issue is fixed.
    switch(thisActor.actorState) {
    case 0x1500:
      thisActor.actorState++;
      D_801AA070_711300 = 0x3c;
      func_80192A08_6F9C98(0x1e);
      func_80026E60(0x54);
      func_80192734_6F99C4(0x7f);
      func_801927CC_6F9A5C(0);
      gActors[49].pos.z = 0xff00;
      BGM_Play(BGM_HURRY);
      SFX_Play_1(0x3f);
      if ((gFileAges[gSaveSlotIndex] < 16) || (60 < gFileAges[gSaveSlotIndex])) {
        func_8019339C_6FA62C(index,0x57,0x808,0,0,0x180); //child marina
      }
      else func_8019339C_6FA62C(index,0x57,0x80a,0,0,0x180); //adult marina
      break;
    case 0x1501:
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 300;
        func_80193950_6FABE0(0x22);
      }
      break;
    case 0x1502:
      sVar3 = func_8005DEFC();
      if ((sVar3 == 0) && (D_801AA070_711300 == 0)) {
        func_801A9044_7102D4();
        if (_DAT_801ac398 < 0x35) {
          thisActor.actorState = 0x1520;
          D_801AA078_711308 = 0x3c;
          func_80192A80_6F9D10();
          func_80192A28_6F9CB8(0x3c);
        }
        else {
          thisActor.actorState = 0x1510;
          D_801AA078_711308 = 0x3c;
          func_801933F8_6FA688(index,0x38,0x80c,0,0,0);
          gActors[56].rgba.A = 0;
          thisActor.unk_0x15C._w = 0xff0000;
          thisActor.unk_0x160._w = 0;
          func_80193454_6FA6E4(index,0x39,0,-0x16,0x3c,0);
          func_80193454_6FA6E4(index,0x3a,0,5,0x3c,0);
        }
      }
      break;
    case 0x1510:
      thisActor.unk_0x15C._w = func_8019214C_6F93DC(thisActor.unk_0x15C._w,0,D_801AA070_711300);
      thisActor.unk_0x160._w = func_8019214C_6F93DC(thisActor.unk_0x160._w,0xff0000,D_801AA070_711300);
      gActors[87].rgba.a = thisActor.unk_0x15C._w;
      gActors[56].rgba.a = thisActor.unk_0x160._w;
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;;
        func_80193950_6FABE0(0x23);
      }
      break;
    case 0x1511:
      if (func_8005DEFC() == 0) {
        thisActor.actorState++;;
        D_801AA078_711308 = 0xb4;
        SFX_Play_1(SFX_LEO_LAUGH);
      }
      break;
    case 0x1512:
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        func_80003f24(1,0x3c);
      }
      break;
    case 0x1513:
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x240;
        BGM_Play(BGM_STCLR);
      }
      break;
    case 0x1514:
      if (D_801AA070_711300 == 0) {
        D_800D28FC| 1;
        thisActor.actorState++;
        func_80045d84(1,0x5a);
      }
      break;
    case 0x1520:
      if (D_801AA070_711300 == 0) {
        D_800D28FC| 1;
        thisActor.actorState++;
        func_80045d84(1,0x5a);
      }
    }
  }
}

#else
extern void func_8019F21C_7064AC(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F21C_7064AC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F608_706898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F704_706994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F770_706A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F834_706AC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F990_706C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019FA84_706D14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019FEF8_707188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019FFD0_707260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A00CC_70735C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0198_707428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0228_7074B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A02EC_70757C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0350_7075E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A03B4_707644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0418_7076A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A04F0_707780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0584_707814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A05E8_707878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0640_7078D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A06AC_70793C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A0758_7079E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A07D4_707A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A12A8_708538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A131C_7085AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A13A4_708634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A1554_7087E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A1758_7089E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A17EC_708A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A18BC_708B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A19F4_708C84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A1AD0_708D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A1EF8_709188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2044_7092D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2308_709598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A25CC_70985C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A26B4_709944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2778_709A08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2894_709B24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A29F8_709C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2A48_709CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2B94_709E24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2C70_709F00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2E04_70A094.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2EAC_70A13C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A2FD4_70A264.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A34C0_70A750.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4330_70B5C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4424_70B6B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4510_70B7A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4634_70B8C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A47C4_70BA54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4AE8_70BD78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4C94_70BF24.s")

//Can you stop Teran?
uint32_t func_801A4F68_70C1F8(void) {
    uint16_t rank = Calculate_TimeRecordTotal();
    if ((rank == ALPHAINDEX(ALPHA_UPPER_S)) || (rank == ALPHAINDEX(ALPHA_UPPER_A))) return 1;
    return 0;
}
#ifdef NON_MATCHING
void func_801A4FA4_70C234(u16 index){//Teran runs away.
int16_t uVar2;

  if (true) {
    switch(thisActor.actorState) {
    case 0x1900:
      thisActor.actorState++;
      D_801AA070_711300 = 0x3c;
      gScreenPosTargetX._hi = 0x730;
      gScreenPosTargetY._hi = 0x15c;
      gScreenPosCurrentX._hi = 0x730;
      gScreenPosCurrentY._hi = 0x15c;
      func_801933F8_6FA688(index,0x57,0,-0xf0,-0x2e,0);
      gActors[87].vel.x_w = 0xc000;
      gPlayerManager.unk_0x20 = 0;
      gPlayerManager.unk_0x24 = 0;
      func_801A0350_7075E0(index,0x38,0x730,300,8,0x180,0x3410);
      _DAT_801ac39a = 0x430;
      _DAT_801ac39c = 300;
      gActors[56].unk_0x170 = 0xa0;
      gActors[56].unk_0x16C._w = 1;
      func_80192A08_6F9C98(0x3c);
      return;
    case 0x1901:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      gScreenPosTargetX._hi+= gActors[56].pos.x;
      uVar2 = gActors[56].pos.x - gActors[87].pos.x);
      if (uVar2 < 1) {
        uVar2 = -(gActors[56].pos.x - gActors[87].pos.x);
      }
      if (uVar2 < 0x11) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x55;
        func_801A4C94_70BF24(gActors[56].pos.x-8,gActors[56].pos.y);
        SFX_Play_1(0x36);
        gActors[87].graphicList = &D_801ab2f4;
        gActors[87].graphicTime = 1;
        gActors[87].vel.x_w = -0x10000;
        gActors[87].vel.y_w = 0x30000;
        gActors[56].actorState = 0x4000;
        gActors[56].vel.x_w = 0x10000;
        gActors[56].graphicList = &D_800E1D30;
        gActors[56].graphicTime = 1;
      }
      break;
    case 0x1902:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      uVar2 = func_80069DA8(0x57);
      if (gActors[56].graphicTime == 0) {
        gActors[56].graphicList = &D_800E1D30;
        gActors[56].graphicTime = 1;
      }
      if ((gActors[87].pos.y < -0x2d) && ((gActors[87].flag & 2) != 0)) {
        if (gActors[87].actorState == 0x1901) {
          gActors[87].actorState++;
          uVar2 = ActorSpawn_Marina();
          gActors[0].actorState = 0;
          u8_ARRAY_800be5f4 = 2;
          gActors[0].pos.x_w = gActors[87].pos.x_w;
          gPlayerManager.unk_0x20 = 0;
          gPlayerManager.unk_0x24 = 0;
          gActors[0].pos.y_w = gActors[87].pos.y_w;
        }
      }
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        gActors[56].vel.x_w = 0;
        gActors[56].actorState = 0x200;
      }
      break;
    case 0x1903:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        gActors[56].actorState = 0x210;
        gActors[56].unk_0x170 = CONCAT22(2,gActors[56].unk_0x170._h[2]);
      }
      break;
    case 0x1904:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        func_80193900_6FAB90(0x14,0x25,-16);
        func_801A9044_7102D4();
        return;
      }
      break;
    case 0x1905:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      if (func_8005DEFC() == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x60;
        D_801aa07c = 0x44;
        gActors[56].unk_0x184._h[0] = 0x692;
        gActors[56].actorState = 0xa0;
        if (func_801A4F68_70C1F8()) ActorSpawn_Crosshair(4,0x38);
        D_801AA080_711310 = 0;
        D_801AA084 = 0;
      }
      break;
    case 0x1906:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (((int)(gActors[0].flag << 6) < 0) && (gActors[0].field32_0xd6 == 0x38)) {
        thisActor.actorState = 0x1920;
        D_801AA078_711308 = 0x22;
      }
      else {
        if (func_801A4F68_70C1F8()) {
          gPlayerManager.unk_0x20 = gButtonHold & (gButton_B|gButton_A);
          gPlayerManager.unk_0x24 = gButtonPress & (gButton_B|gButton_A);
          if ((D_801AA080_711310 == 0) && ((gButtonHold != 0 || (gButtonPress != 0)))) {
            D_801AA080_711310 = 1;
          }
        }
        if (D_801AA070_711300 == 0) {
          if (D_801AA080_711310 != 1) {
            thisActor.actorState = 0x1910;
            func_80193900_6FAB90(0x15,0x50,-16);
            return;
          }
          thisActor.actorState = 0x1920;
          D_801AA078_711308 = 0x22;
        }
      }
      break;
    case 0x1910:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);

      if (func_8005DEFC() == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x90;
        gActors[56].actorState = 0x3b0;
        gActors[56].unk_0x170 = CONCAT22(gActors[56].unk_0x170._hi,0x3c0);
        gActors[56].unk_0x16C._w = 1;
        gActors[56].field54_0x118 = 10.0;
        gActors[56].field55_0x11c = 2.0;
        func_801A9044_7102D4();
        return;
      }
      break;
    case 0x1911:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        gActors[56].actorState = 0xa0;
        gActors[56].unk_0x184._h[0] = 0x5c0;
      }
      break;
    case 0x1912:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (gActors[56].actorState == 0x61) {
        gActors[56].actorState = 0xa0;
      }
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        func_80192A28_6F9CB8(0x3c);
        return;
      }
      break;
    case 0x1913:
      if (D_801AA070_711300 == 0) {
        thisActor.actorState = 0x1a00;
        Actor_ZeroFlagRange(0x38,0x80);
        gActors[0].flag = 0;
      }
      break;
    case 0x1920:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (D_801AA070_711300 == 0) {
        if (((int)(gActors[0].flag << 6) < 0) && (gActors[0].field32_0xd6 == 0x38)) {
          thisActor.actorState++;
          func_800267FC(SCENE_UNK03);
          _DAT_801ac374 = 1;
          func_80193900_6FAB90(1,0x50,-16);
          return;
        }
        thisActor.actorState = 0x1911;
      }
      break;
    case 0x1921:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);

      if (func_8005DEFC() == 0) {
        thisActor.actorState++;
        gPlayerManager.unk_0x20 = (uint)gButton_DDown;
        gPlayerManager.unk_0x24 = gPlayerManager.unk_0x20;
        func_80193900_6FAB90(2,0xffffffb0,-16);
        func_801A9044_7102D4();
        return;
      }
      break;
    case 0x1922:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      gPlayerManager.unk_0x24 = 0;
      gPlayerManager.unk_0x20 = (uint)gButton_DDown;
      if (func_8005defc() == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x3c;
        gPlayerManager.unk_0x20 = 0;
        gPlayerManager.unk_0x24 = 0;
        func_801A9044_7102D4();
        return;
      }
      break;
    case 0x1923:
      func_801A1EF8_709188(index,1);
      uVar2 = func_801A2308_709598(index,2);
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        gPlayerManager.unk_0x20 =(gButton_DRight | gButton_DUp);
        gPlayerManager.unk_0x24 = gPlayerManager.unk_0x20;
      }
      break;
    case 0x1924:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      thisActor.actorState++;
      D_801AA078_711308 = 0x78;
      gPlayerManager.unk_0x20 = (gButton_DRight | gButton_DUp | gButton_B);
      gPlayerManager.unk_0x24 =  gButton_B;
      break;
    case 0x1925:
      func_801A1EF8_709188(index,1);
      func_801A2308_709598(index,2);
      uVar2 = 0;
      gActors[56].speedX = 0x60000;
      gActors[56].speedY = 0x60000;
      if (D_801AA070_711300 == 0) {
        thisActor.actorState++;
        D_801AA078_711308 = 0x78;
        func_80192A28_6F9CB8(0x3c);
        func_801A9044_7102D4();
      }
      break;
    case 0x1926:
      if (D_801AA070_711300 == 0) {
        thisActor.actorState = 0x1b00;
        Actor_ZeroFlagRange(0x38,0x80);
        gActors[0].flag = 0;
      }
    }
  }
  return;
}
#else
extern void func_801A4FA4_70C234(uint16_t);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4FA4_70C234.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A59A8_70CC38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A5A9C_70CD2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A5B60_70CDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A5C4C_70CEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6808_70DA98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A68FC_70DB8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A69E8_70DC78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6A78_70DD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6B3C_70DDCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6D5C_70DFEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6DDC_70E06C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A6EF8_70E188.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A70B8_70E348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A7110_70E3A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A76E0_70E970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A77D4_70EA64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A797C_70EC0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A7B2C_70EDBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A7C10_70EEA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A7D34_70EFC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A81E0_70F470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A84FC_70F78C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A85E4_70F874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A865C_70F8EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A873C_70F9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A87A4_70FA34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A880C_70FA9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A8874_70FB04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A88DC_70FB6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A8944_70FBD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A89AC_70FC3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A8D6C_70FFFC.s")
//decrement yellow gem counter
#ifdef NON_MATCHING
uint32_t func_801A9044_7102D4(void){
  if(gActors[53].unk_0x158._w!=0){
    gActors[53].unk_0x158._w--;
    return 0;

  }
  else{
    gActors[48].actorState = 0x1e00;
    return 1;
  }
}
#else
extern uint32_t func_801A9044_7102D4(void);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9044_7102D4.s")
#endif
//increment the counter
void func_801A907C_71030C(void){
  uint16_t index=53;
  thisActor.unk_0x158._w++;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9098_710328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9260_7104F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9308_710598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A96D0_710960.s")

void func_801A9718_7109A8(uint16_t x) {
    gActors[56].actorState = 0x240;
}

void func_801A972C_7109BC(uint16_t x) {
    gActors[56].actorState = 0x180;
}

void func_801A9740_7109D0(uint16_t x) {
    gActors[56].actorState = 0x1A0;
}
void func_801A9754_7109E4(uint16_t index){
    thisActor.flag=0;
    thisActor.actorType=0;
    func_80081720(index,&D_800E5E48,3);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A97B8_710A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A97E8_710A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9818_710AA8.s")

void func_801A9848_710AD8(uint16_t index,float f){
    thisActor.unk_0x120=f;
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9880_710B10.s")

void func_801A9CD0_710F60(uint16_t index){
    gActors[104].actorState=0x170;
    gActors[index+2].unk_0x180._w=0;
    gActors[index+3].unk_0x180._w=0x40000;
}

void func_801A9D1C_710FAC(uint16_t x,uint16_t y){
  D_801AC384=x;
  D_801AC386=y;
}

uint16_t D_801AB6E8_712978[]={0x110,0x120,0x130,0x140,0x170,0x180,0x1A0,0x1C0,0x1D0,0x200,0x230,0x240,0x250,0,0,0,0,0,0,0};
void func_801A9D38_710FC8(uint16_t x, uint16_t y){
  D_801AC388=x;
  D_801AC38A=D_801AB6E8_712978[y];
}

void func_801A9D68_710FF8(uint32_t x,uint32_t y){
  uint16_t index=104; //needed to match.
  gActors[index+2].unk_0x180._w=x;
  gActors[index+3].unk_0x180._w=y;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9D7C_71100C.s")
