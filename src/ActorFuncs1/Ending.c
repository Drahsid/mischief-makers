#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192100_6F9390.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019214C_6F93DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801921A0_6F9430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019221C_6F94AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801922A0_6F9530.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801922EC_6F957C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192374_6F9604.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192408_6F9698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192490_6F9720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192520_6F97B0.s")

void func_801925A4_6F9834(uint16_t index, uint16_t x){
    gActors[index].unk_0xD0_h=2;
    gActors[index].unk_0x150._w=x;
}

void func_801925EC_6F987C(uint16_t index, uint16_t x){
    gActors[index].unk_0xD0_h=4;
    gActors[index].unk_0x150._w=x;
}
/*
void func_80192634_6F98C4(uint16_t index, uint8_t a){
    gActors[index].unk_0xD0_h=1;
    gActors[index].rgba.a=a;
    gActors[index].unk_0x154._w= (uint32_t)a<<16;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192634_6F98C4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019277C_6F9A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801927A4_6F9A34.s")

void func_801927CC_6F9A5C(uint8_t a){
    func_80192634_6F98C4(0x32,a);
}

uint32_t func_801927F4_6F9A84(){
    return func_80192684_6F9914(50);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192814_6F9AA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192930_6F9BC0.s")
//encapsulated together for similar issue - loads base of gActors instead of relevant entry first.
#ifdef NON_MATCHING
void func_801929C8_6F9C58(uint16_t x){
    gActors[51].unk_0xD0_h=2;
    gActors[51].unk_0x150._w=x;
}
void func_801929E8_6F9C78(uint16_t x){
    gActors[51].unk_0xD0_h=4;
    gActors[51].unk_0x150._w=x;
}
void func_80192A08_6F9C98(uint16_t x){
    gActors[51].unk_0xD0_h=4;
    gActors[51].unk_0x150._w=x;
}
void func_80192A28_6F9CB8(uint16_t x){
    gActors[51].unk_0xD0_h=2;
    gActors[51].unk_0x150._w=x;
}
void func_80192A48_6F9CD8(uint8_t x){
    gActors[51].unk_0xD0_h=1;
    gActors[51].rgba.a=x;
    gActors[51].unk_0x154._w=(uint32_t)x*1000;
}
#else
extern void func_801929C8_6F9C58(uint16_t x);
extern void func_801929E8_6F9C78(uint16_t x);
extern void func_80192A08_6F9C98(uint16_t x);
extern void func_80192A28_6F9CB8(uint16_t x);
extern void func_80192A48_6F9CD8(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801929C8_6F9C58.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801929E8_6F9C78.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192A08_6F9C98.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192A28_6F9CB8.s")
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192A48_6F9CD8.s")
#endif

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
    gActors[index].actorType=0x2c11;
    Actor_Spawn(index);
    gActors[index].pos.x=0;
    gActors[index].pos.y=0;
    gActors[index].pos.z=0;
    gActors[index].unk_0x154._w=q;
}

#ifdef NON_MATCHING
void func_80192CAC_6F9F3C(uint16_t index){
    gActors[index].unk_0x154._w+=2;
}
#else
extern void func_80192CAC_6F9F3C(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192CAC_6F9F3C.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192CEC_6F9F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80192E2C_6FA0BC.s")

#ifdef NON_MATCHING
void func_80193278_6FA508(uint16_t x){
    gActors[52].actorType=0x2C12;
    Actor_Spawn(52);
    gActors[52].flag=2;

    gActors[53].actorType=0x2C13;
    Actor_Spawn(53);
    gActors[53].flag=2;
}
#else
extern void func_80193278_6FA508(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193278_6FA508.s")
#endif

void func_801932D0_6FA560(uint16_t other,uint16_t index,uint16_t type,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  gActors[index].actorType = type;
  Actor_Spawn(index);
  gActors[index].pos.x_w = 0;
  gActors[index].pos.y_w = 0;
  gActors[index].pos.z_w = 0;
  gActors[index].flag = 2;
  gActors[index].unk_0x84 = unk84;
  gActors[index].pos.x = x;
  gActors[index].pos.y = y;
  gActors[index].pos.z = z;
  gActors[index].unk_0xD0_h =gActors[other].unk_0xD0_h&0xff00;
}

void func_8019339C_6FA62C(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c04,unk84,x,y,z);
}

void func_801933F8_6FA688(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c05,unk84,x,y,z);
}
void func_80193454_6FA6E4(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c06,unk84,x,y,z);
}
void func_801934B0_6FA740(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c07,unk84,x,y,z);
}

void func_8019350C_6FA79C(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c08,unk84,x,y,z);
}
void func_80193568_6FA7F8(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c09,unk84,x,y,z);
}
void func_801935C4_6FA854(uint16_t other,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,81,0x2c0A,0,0,0,z);
  gActors[81].unk_0xD0_h=0;
}
void func_80193618_6FA8A8(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x2c0B,unk84,x,y,z);
}
void func_80193674_6FA904(uint16_t other,uint16_t index,uint16_t unk84,int16_t x,int16_t y,int16_t z){
  func_801932D0_6FA560(other,index,0x1D,unk84,x,y,z);
}
#ifdef NON_MATCHING
void func_801936D0_6FA960(uint16_t x,uint16_t index,int16_t z){
  gActors[index].actorType = 0x2C00;
  Actor_Spawn(index);
  gActors[index].pos.z = z;
}
#else
extern void func_801936D0_6FA960(uint16_t x,uint16_t index,int16_t z);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801936D0_6FA960.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80193740_6FA9D0.s")

void func_80193778_6FAA08(uint16_t other,uint16_t index,uint16_t unk84,int32_t x,int32_t y,int32_t z){
  gActors[index].actorType = 0x2c05;
  Actor_Spawn(index);
  gActors[index].flag = 2;
  gActors[index].unk_0x84 = unk84;
  gActors[index].pos.x_w = x;
  gActors[index].pos.y_w = y;
  gActors[index].pos.z_w = z;
  gActors[index].unk_0xD0_h =gActors[other].unk_0xD0_h&0xff00;
}

void func_8019383C_6FAACC(uint16_t other,uint16_t index,uint16_t unk84,int32_t x,int32_t y,int32_t z){
  gActors[index].actorType = 0x2c06;
  Actor_Spawn(index);
  gActors[index].flag = 2;
  gActors[index].unk_0x84 = unk84;
  gActors[index].pos.x_w = x;
  gActors[index].pos.y_w = y;
  gActors[index].pos.z_w = z;
  gActors[index].unk_0xD0_h =gActors[other].unk_0xD0_h&0xff00;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197D60_6FEFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197DA0_6FF030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_80197FB8_6FF248.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_8019F21C_7064AC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4F68_70C1F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A4FA4_70C234.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9044_7102D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A907C_71030C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9098_710328.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9260_7104F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9308_710598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A96D0_710960.s")

void func_801A9718_7109A8(uint16_t x) {
    gActors[56].unk_0xD0_h = 0x240;
}

void func_801A972C_7109BC(uint16_t x) {
    gActors[56].unk_0xD0_h = 0x180;
}

void func_801A9740_7109D0(uint16_t x) {
    gActors[56].unk_0xD0_h = 0x1A0;
}
void func_801A9754_7109E4(uint16_t index){
    gActors[index].flag=0;
    gActors[index].actorType=0;
    func_80081720(index,&D_800E5E48,3);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A97B8_710A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A97E8_710A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9818_710AA8.s")

void func_801A9848_710AD8(uint16_t index,float f){
    gActors[index].unk_0x120=f;
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9880_710B10.s")

void func_801A9CD0_710F60(uint16_t index){
    gActors[104].unk_0xD0_h=0x170;
    gActors[index+2].unk_0x180_w=0;
    gActors[index+3].unk_0x180_w=0x40000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9D1C_710FAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9D38_710FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9D68_710FF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/Ending/func_801A9D7C_71100C.s")
