#include "common.h"
#define MigenJrActor gActors[48]
#define MigenJrHeadActor gActors[80]
#define MigenSrActor gActors[98]
#define ACTORTYPE_MIGENJR 0x600
#define ACTORTYPE_MIGENJRBREATH 0x601
#define ACTORTYPE_MIGENTHEO 0x602
#define ACTORTYPE_MIGENSR 0x604
#define ACTORTYPE_MIGENSRBALL 0x606
#define ACTORTYPE_MIGENJRFIREBALL 0x609
#define ACTORTYPE_MIGENGEM 0x60B //the green gem that heals migen Jr.

//.bss
int16_t D_8019E570,D_8019E572,D_8019E574; //red gems in face,blue gems in ground,fireball catch gems (16th is green.)
int32_t D_8019E578,D_8019E57C; //both written, never read.
int16_t D_8019E580; //punch timer?

void func_80192100_67DC20(uint16_t x){}

void func_80192108_67DC28(uint16_t x){
    Actor* actorp;
    uint16_t index=func_8003123C(&D_800E154C,gActors[79].pos.x,gActors[79].pos.y+32,gActors[79].pos.z+5);
    if(index){
        actorp =&thisActor;
        actorp->flag2=1;
        actorp->scaleX=1.5;
        actorp->scaleY=1.5;
        actorp->unk_0x148=60;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019219C_67DCBC.s")
#ifdef NON_MATCHING
void func_8019237C_67DE9C(uint16_t x){
    gActors[78].unk_0x180._w=60;
    gActors[79].unk_0x180._w=8;
    gActors[80].unk_0x180._w=0xFE;
    gActors[78].unk_0x140._f=0;
}
#else
extern void func_8019237C_67DE9C(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019237C_67DE9C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801923B0_67DED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801926CC_67E1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801927DC_67E2FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192820_67E340.s")
//flash from spitting fireball
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801928A8_67E3C8.s")
//breath attack
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801929C0_67E4E0.s")
//breath flame behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192C4C_67E76C.s")
//spawn fireball
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192E68_67E988.s")
//Fireball behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192FE4_67EB04.s")
#ifdef NON_MATCHING
void func_801934F0_67F010(){
    ACTORINIT(94,0x2F);
    gActors[94].flag|=0xA302;
    gActors[94].health=1;
    gActors[97].hitboxBY0=0x50;
    gActors[97].hitboxBY1=-0x20;
    gActors[97].hitboxBX0=-0x50;
    gActors[97].hitboxBX1=0x50;
    gActors[97].hitboxAY0=-0x20;
    gActors[97].hitboxAY1=-0x80;
    gActors[97].hitboxAX0=-0x100;
    gActors[97].hitboxAX1=0x100;
    gActors[97].unk_0xDA=0;
    gActors[97].unk_0xDB=19;
    gActors[97].pos.x=0;
    gActors[97].pos.y=362-gScreenPosCurrentY._hi;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801934F0_67F010.s")
#endif
void func_80193594_67F0B4(void) {}
void func_8019359C_67F0BC(void) {}

void func_801935A4_67F0C4(){
    ACTORINIT(97,0x607);
    gActors[97].flag=0x2002;
    gActors[97].hitboxBY0=0x10;
    gActors[97].hitboxBY1=-0x10;
    gActors[97].hitboxBX0=-0x100;
    gActors[97].hitboxBX1=0x100;
    
}

void func_80193600_67F120(uint16_t index){
    thisActor.hitboxBY0=8;
    thisActor.hitboxBY1=-0x18;
    func_8002ACFC(index,-14,20);
    thisActor.hitboxAY0=18;
    thisActor.hitboxAY1=-8;
    func_8002AC7C(index,-12,10);
}

void func_80193694_67F1B4(uint16_t index){
    thisActor.hitboxBY0=16;
    thisActor.hitboxBY1=-12;
    func_8002ACFC(index,-4,26);
    thisActor.hitboxAY0=12;
    thisActor.hitboxAY1=-12;
    func_8002AC7C(index,-16,6);
}

void func_80193728_67F248(uint16_t index){
    ACTORINIT(index,0X1D);
    thisActor.flag2|=1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193790_67F2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801939CC_67F4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193A4C_67F56C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193ACC_67F5EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193B4C_67F66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193C14_67F734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193CC4_67F7E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193DF0_67F910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193E6C_67F98C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193ED8_67F9F8.s")

void func_80193F44_67FA64(uint16_t x,uint16_t c){
    gActors[63].flag2|=0x10;
    gActors[63].rgba.r=c;
    gActors[63].rgba.g=c;
    gActors[63].rgba.b=c;
}

void func_80193F70_67FA90(uint16_t x,uint16_t c){
    gActors[63].flag2&=~0x10;
    gActors[63].rgba.r=c;
    gActors[63].rgba.g=c;
    gActors[63].rgba.b=c;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80193F9C_67FABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194818_680338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019487C_68039C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194934_680454.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801949B8_6804D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194A38_680558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194AC8_6805E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194B10_680630.s")

void func_80194B68_680688(){
    D_801376BC[0]=1;
    D_801376BC[2]=1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194B80_6806A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194D3C_68085C.s")

#ifdef NON_MATCHING
void func_80194E64_680984(uint16_t index, uint16_t x){
    thisActor.unk_0x110=x+((thisActor.health/30)-(Rand()&47))-20;
}
#else
extern void func_80194E64_680984(uint16_t index, uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194E64_680984.s")
#endif
//rock camera up and down.
void func_80194EE4_680A04(){
    if(gSceneFrames&0x80) MODi(gScreenPosTargetY._w,0x19C0000,0x1000);
    else MODi(gScreenPosTargetY._w,0x1A20000,0x1000);
}

void func_80194F48_680A68(){
    if(gActors[55].flag&0x200){
        gActors[55].flag2&=~0x10;
        Actor_Shade(55,47);
    }
}
//Migen Jr. main behavior
#ifdef NON_MATCHING
void func_80194F8C_680AAC(uint16_t index){

  float fVar4;
  u32 uVar5;
  int iVar9;
  uint uVar10;
  u16 uVar11;
  int iVar12;
  float fVar13;
  
  func_80194EE4_680A04();
  MODi(gActors[63].rgba.R,0,4);
  MODi(gActors[63].rgba.G,0,4);
  MODi(gActors[63].rgba.B,0,4);
  if (0x425 < thisActor.actorState) {
    switch(thisActor.actorState) {
    case 0x1000:
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x21);
      thisActor.unk_0x150 = 0x50;
      SFX_Play_1(roar dying);
      func_80003F24(0x81,0x78);
    case 0x1001:
      if (--thisActor.unk_0x150 < 0) {
        thisActor.actorState++;
      }
      func_80194818_680338();
      func_801949B8_6804D8(index);
      func_80193F9C_67FABC(index);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x1002:
      if ((gSceneFrames & 7) == 0) {
        func_800339AC(0,gActors[80].pos.y,gActors[80].pos.z);
      }
      if (++thisActor.unk_0x150 == 0xb4) {
        ACTORINIT(100,ACTORTYPE_MIGENTHEO);
        gActors[100].actorState = 0x10;
      }
      MODi((int)gActors[63].field74_0x168,3000,0xf);
      if (gActors[63].field74_0x168 == (undefined *)0xbb8) {
        thisActor.actorState++;
        func_80193DF0_67F910(index,0);
      }
      func_80194818_680338();
      func_801949B8_6804D8(index);
      func_80193F9C_67FABC(index);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x1003:
      goto lab_80195034_caseD_1003;
    case 0x1004:
      goto lab_80195034_caseD_1004;
    case 0x1005:
      if (--thisActor.unk_0x150 == 0) {
        DAT_800be6d8 = 0x80;
        gActors[94].flag = 0;
        gActors[95].flag = 0;
        gActors[96].flag = 0;
      }
      MODi(DAT_800d2934,-0x2c,2);
      gScreenPosTargetY._hi+= 2;
      if (0x23b < gScreenPosCurrentY._hi) {
        thisActor.actorState++;
        thisActor.unk_0x150 = 300;
        gScreenPosTargetY._hi = 0x23c;
      }
      gScreenPosCurrentY._hi = gScreenPosTargetY._hi;
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x1006:
      if ((--thisActor.unk_0x150 == 0xf0) && (YellowGem_NoHit(index))) {
        gNoHit = 0xffff;
      }
      if (thisActor.unk_0x150) {
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      thisActor.flag = 0;
      DAT_800d28e8 = 0xd;
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    default:
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    }
  }
  if (0xb2 < thisActor.actorState) {
    if (false) {
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    }
    switch(thisActor.actorState) {
    case 0x400:
      thisActor.actorState++;
      gActors[64].unk_0x148 = 1.5;
      func_80192108_67DC28(index);
      gActors[49].field55_0x11c = -1.0;
      thisActor.field52_0x110 = 120.0;
      SFX_ActorPanX(0x36,0x4d);
    case 0x401:
      func_80193F9C_67FABC(index);
      if ((gActors[55].flag3 & 0x200)) {
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      if ((gActors[55].flag3 & 0x400)) {
        uVar5 = gActors[55].unk_0xF8;
        if (gActors[66].unk_0x180 != 0) {
          uVar5 = -gActors[55].unk_0xF8;
        }
        if (false) {
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
        switch(uVar5) {
        default:
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        case 2:
        case 3:
        case 4:
          SFX_ActorPanX(0x97,0x4d);
          thisActor.actorState = 0x41c;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        case 0xfffffffb:
        case 5:
          SFX_ActorPanX(SFX_GRABDEFLECT,0x4d);
          thisActor.actorState = 0x420;
          thisActor.field52_0x110 = 6.0;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        case 0xfffffffc:
        case 0xfffffffd:
        case 0xfffffffe:
          SFX_ActorPanX(0x97,0x4d);
          thisActor.actorState = 0x410;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        case 0xffffffff:
        case 1:
          thisActor.actorState = 0x418;
          SFX_ActorPanX(0x97,0x4d);
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
      }
      thisActor.actorState = 0x30;
      thisActor.field52_0x110 = 60.0;
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    default:
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x404:
      thisActor.actorState++;
      func_80193DF0_67F910(index,0xf);
    case 0x405:
      func_80193F9C_67FABC(index);
      if (gActors[49].field55_0x11c < 0.0) {
        thisActor.actorState = 0x30;
        thisActor.field52_0x110 = 60.0;
        func_80193DF0_67F910(index,0);
      }
      func_80193CC4_67F7E4(index,0);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x410:
      thisActor.actorState++;
      func_80193DF0_67F910(index,2);
      gActors[55].flag |= 0x80;
      gActors[55].dmg = 1;
      gActors[77].unk_0x138 = 1.0;
    case 0x411:
      func_80193F9C_67FABC(index);
      func_80193CC4_67F7E4(index,0);
      if (((uint)gActors[49].unk_0x16C & 1) == 0) {
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      thisActor.actorState = 0x30;
      gActors[55].flag &= 0xffffff7f;
      func_80194E64_680984(index,0x3c);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x414:
      thisActor.actorState++;
      func_80193DF0_67F910(index,3);
      gActors[55].flag |= 0x80;
      gActors[55].dmg = 1;
      gActors[77].unk_0x138 = 1.0;
    case 0x415:
      func_80193F9C_67FABC(index);
      func_80193CC4_67F7E4(index,0);
      if (((uint)gActors[49].unk_0x16C & 1) == 0) {
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      thisActor.actorState = 0x30;
      gActors[55].flag &= 0xffffff7f;
      func_80194E64_680984(index,0x3c);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x418:
      goto lab_80195064_caseD_418;
    case 0x419:
      goto lab_80195064_caseD_419;
    case 0x41c:
      thisActor.actorState++;
      func_80193DF0_67F910(index,5);
      gActors[77].unk_0x138 = 1.0;
      gActors[63].unk_0x138 = 0.0;
      if (gActors[66].unk_0x180 == 0) {
        gActors[69].unk_0x180 = 0x38000;
      }
      else {
        gActors[69].unk_0x180 = -0x38000;
      }
      gActors[55].flag |= 0x80;
      gActors[55].dmg = 1;
      thisActor.field52_0x110 = 30.0;
    case 0x41d:
      gActors[64].unk_0x180+= gActors[69].unk_0x180;
      MODi(gActors[69].unk_0x180,0,0x3000);
      func_80193F9C_67FABC(index);
      func_80193CC4_67F7E4(index,0);
      if (((uint)gActors[49].unk_0x16C & 1) != 0) {
        gActors[55].flag &= 0xffffff7f;
      }
      thisActor.unk_0x110-=1.0;
      if (0.0 <= thisActor.field52_0x110) {
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      thisActor.actorState = 0x30;
      func_80194E64_680984(index,0x3c);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x420:
      fVar13 = thisActor.field52_0x110;
      if (false) {
        fVar4 = ROUND(fVar13);
      }
      else {
        fVar4 = FLOOR(fVar13);
      }
      uVar10 = (uint)fVar4;
      thisActor.actorState++;
      if (true) {
        if ((int)uVar10 < 0) goto lab_801949b8;
      }
      else {
        if (false) {
          fVar13 = ROUND(fVar13 - 2.147484e+09);
        }
        else {
          fVar13 = FLOOR(fVar13 - 2.147484e+09);
        }
        uVar10 = (uint)fVar13;
        if (false) {
lab_801949b8:
          uVar10 = 0xffffffff;
        }
      }
      func_80193DF0_67F910(index,uVar10 & 0xffff);
      gActors[77].unk_0x138 = 1.0;
      gActors[63].unk_0x138 = 0.0;
lab_80195064_caseD_421:
      func_80193F9C_67FABC(index);
      uVar10 = 0x31;
      if (((uint)gActors[49].unk_0x16C & 1) != 0) {
        if (gActors[49].unk_0x138 == 0.0) {
          SFX_ActorPanX(0x61,0x4d);
        }
        else {
          SFX_ActorPanX(0x61,0x4d);
        }
        FUN_8005ca34(-8,0x19);
        uVar10 = 0x31;
        //spawn blue gems
        if (0 < D_8019E572) {
          D_8019E572--;
          for(iVar9=0;iVa9!=0;iVar9++) {
            uVar11 = Gem_ActorSpawn(0x50,GEMFLAG_BLUE|GEMFLAG_BOUNCE|GEMFLAG_UNK,0);
            if (uVar11) {
              if (iVar9 == 1) {
                gActors[uVar11].vel.x_w = -0x28000;
                gActors[uVar11].vel.y_w -= 0x10000;
              }
              else if (iVar9 == 2) {
                gActors[uVar11].vel.x_w = 0x28000;
                gActors[uVar11].vel.y_w -= 0x10000;
              }
              else if (iVar9 == 3) {
                gActors[uVar11].vel.x_w = -0x20000;
                gActors[uVar11].vel.y_w -= 0x5000;
              }
              else if (iVar9 == 4) {
                gActors[uVar11].vel.x_w = 0x20000;
                gActors[uVar11].vel.y_w -= 0x5000;
              }
            }
          }
        }
      }
      if (gActors[uVar10].field55_0x11c < 0.0) {
        thisActor.actorState = 0x30;
        func_80194E64_680984(index,0x3c);
      }
      func_80193CC4_67F7E4(index,0);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    case 0x421:
      goto lab_80195064_caseD_421;
    case 0x424:
      thisActor.actorState++;
      func_80193DF0_67F910(index,9);
      gActors[77].unk_0x138 = 1.0;
      gActors[63].unk_0x138 = 0.0;
    case 0x425:
      func_80193F9C_67FABC(index);
      func_80193CC4_67F7E4(index,0);
      thisActor.actorState = 0x30;
      func_80194E64_680984(index,0x3c);
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    }
  }
  if (false) {
    MigenJrActor.flag3 = 0;
    gActors[49].flag3 = 0;
    gActors[55].flag3 = 0;
    gActors[56].flag3 = 0;
    gActors[62].flag3 = 0;
    gActors[63].flag3 = 0;
    gActors[77].flag3 = 0;
    return;
  }
  switch(thisActor.actorState) {
  case 0:
    if (thisActor.field52_0x110 == 1.0) {
      thisActor.actorState = 0x28;
    }
    else {
      thisActor.actorState = 0x12;
    }
    gActors[97].flag = 0;
    D_8019E570 = 2;
    D_8019E572 = 6;
    D_8019E574 = 0;
    break;
  case 1:
  case 0x30:
    thisActor.actorState++;
    if (((thisActor.health <= 700) && (MigenSrActor.flag != 0)) && (MigenSrActor.health != 0)) {
      thisActor.actorState = 0x38; //"Father, heal me!"
    }
    gActors[63].unk_0x120 = 1.0;
  case 0x31:
    func_80193CC4_67F7E4(index,0);
    thisActor.unk_0x110-=1.0;
    if (thisActor.field52_0x110 < 0.0) {
      func_80194B80_6806A0(index);
    }
    func_8019487C_68039C(0);
    func_801949B8_6804D8(index);
    func_80193F9C_67FABC(index);
    break;
  case 0x12:
    func_80193790_67F2B0(index);
    thisActor.actorState = 0x13;
    gActors[67].unk_0x180 = -0xa00000;
    gActors[63].pos.z_w = -0x300000;
    func_80193DF0_67F910(index,0);
    thisActor.unk_0x150 = 0;
    thisActor.unk_0x154 = 0;
    thisActor.unk_0x158 = 0x27b;
    SFX_ActorPanX(0xab,0x3f);
  case 0x13:
    gActors[63].flag2|= 0x10;
    gActors[63].rgba.B = thisActor.unk_0x158 / 5;
    gActors[63].rgba.G = thisActor.unk_0x158 / 5;
    thisActor.unk_0x154++;
    if (thisActor.unk_0x158 != 0) thisActor.unk_0x158--;
    if ((thisActor.unk_0x154 & 1)) {
      FUN_8005ca34(2,2);
    }
    if ((thisActor.unk_0x154 & 0x40) == 0) {
      MODi(thisActor.unk_0x150,-0x4000,0x1000); 
    }
    else {
      MODi(thisActor.unk_0x150,0x40000,0x10000);
    }
    MODi(gActors[67].unk_0x180,-0x100000,thisActor.unk_0x150);
    func_80193F9C_67FABC(index);
    if (gActors[67].unk_0x180 == -0x100000) {
      thisActor.actorState++;
      thisActor.unk_0x150 = 0x3c;
      SFX_ActorPanX(0x93,0x3f);
      DAT_800be6cc = 0xffffff40;
      DAT_800be6d8 = 0xffffff40;
      func_8019487C_68039C(index,0);
    }
    break;
  case 0x14:
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x18);
      thisActor.unk_0x150 = 0x1f;
    }
    func_80193F9C_67FABC(index);
    break;
  case 0x15:
    if ((gActors[77].unk_0x16C & 1)) {
      iVar9 = ++thisActor.unk_0x150;
      if (iVar9 < 0x23) {
        if (iVar9 == 0x20) {
          ActorSpawn_JPNSpeechBox(0x4e,&D_8019b090,0,0x20,0x1e);
        }
        else if (iVar9 == 0x21) {
          ActorSpawn_JPNSpeechBox(0x4e,&D_8019b098,0,0x20,0x1e);
        }
        else if (iVar9 == 0x22) {
          ActorSpawn_JPNSpeechBox(0x4e,&D_8019b0a0,0,0x20,0x1e);
        }
      }
      else {
        thisActor.actorState++;
        thisActor.unk_0x150 = 0x1e;
        func_80193DF0_67F910(index,0x19);
      }
    }
    func_80193F9C_67FABC(index);
    break;
  case 0x16:
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      ActorSpawn_JPNSpeechBox(0x4e,&D_8019b0ac,0,0x20,0x37);
      FUN_80081790(0x4d,&D_8019d42c);
      gActors[77].unk_0x138 = 0.0;
      thisActor.unk_0x150 = 0x41;
    }
    func_80193F9C_67FABC(index);
    break;
  case 0x17:
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      ActorSpawn_JPNSpeechBox(0x62,&D_8019b0c8,-0x18,0x10,0x32);
      thisActor.unk_0x150 = 0x50;
    }
    func_80193F9C_67FABC(index);
    break;
  case 0x18:
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      ActorSpawn_JPNSpeechBox(0x4e,&D_8019b0d8,0,0x1a,0x41);
      thisActor.unk_0x150 = 0xf0;
    }
    func_80193F9C_67FABC(index);
    func_80193CC4_67F7E4(index,0x19);
    break;
  case 0x19:
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      ActorSpawn_JPNSpeechBox(0x4e,&D_8019b0e4,0,0x10,0x34);
      SFX_Play_1(Roar deep);
      FUN_8005ca34(-8,0x1e);
      func_80193DF0_67F910(index,0x16);
      thisActor.unk_0x150 = 0x41;
    }
    func_80193F9C_67FABC(index);
    break;
  case 0x1a:
    func_80193F9C_67FABC(index);
    if (((uint)gActors[49].unk_0x16C & 1) != 0) {
      thisActor.actorState++;
      gActors[100].unk_0x188|= 0x8000;
      FUN_80081790(0x4d,&D_8019d338);
      thisActor.unk_0x150 = 0xb4;
    }
    func_80193CC4_67F7E4(index,0x17);
    break;
  case 0x1b: //"Help me, Marin-"
    func_80193F9C_67FABC(index);
    if (--thisActor.unk_0x150 < 0) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x1a);
      SFX_Play_1(SFX_THEO_HELP2);
    }
    func_80193CC4_67F7E4(index,0x17);
    break;
  case 0x1c: //NOM
    func_80193F9C_67FABC(index);
    if (((uint)gActors[77].unk_0x16C & 1) != 0) {
      gActors[100].flag = 0;
      SFX_Stop(SFX_THEO_HELP2);
      SFX_Play_1(0x2d);
    }
    if (gActors[77].field55_0x11c < 0.0) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x1b);
      thisActor.unk_0x150 = 3;
    }
    break;
  case 0x1d:
    func_80193F9C_67FABC(index);
    if ((((uint)gActors[77].unk_0x16C & 1) != 0) &&(--thisActor.unk_0x150 < 0)) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x1c);
      gActors[63].unk_0x138 = 0.0;
    }
    if (((uint)gActors[77].unk_0x16C & 2) != 0) {
      SFX_Play_1(jump);
    }
    break;
  case 0x1e:
    func_80193F9C_67FABC(index);
    if (((uint)gActors[77].unk_0x16C & 1) != 0) {
      SFX_Play_1(0x91);
    }
    if (gActors[77].field55_0x11c < 0.0) {
      thisActor.actorState = 0x30;
      D_800be5f4 = 0;
      thisActor.field52_0x110 = 120.0;
      SFX_Play_3(SFX_THEO_YAY1,0xa0);
      DAT_800d28e8 = 0xb;
    }
    break;
  case 0x28:
    func_80193790_67F2B0(index);
    gActors[67].unk_0x180 = -0x100000;
    gActors[63].pos.z_w = -0x300000;
    func_80193DF0_67F910(index,0);
    func_80193F9C_67FABC(index);
    thisActor.actorState = 0x29;
    break;
  case 0x29:
    func_80193CC4_67F7E4(index,0);
    func_80193F9C_67FABC(index);
    if ((DAT_800d28fc & 2) == 0) {
      thisActor.actorState = 0x30;
      thisActor.field52_0x110 = 120.0;
    }
    break;
  case 0x38:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0x21);
    gActors[63].unk_0x120 = 1.0;
  case 0x39:
    func_80194818_680338();
    func_80193F9C_67FABC(index);
    func_801949B8_6804D8(index);
    break;
  case 0x40:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0);
    gActors[63].unk_0x120 = 1.0;
  case 0x41:
    func_8019487C_68039C(0);
    func_80193F9C_67FABC(index);
    thisActor.unk_0x110-=1.0;
    if (thisActor.field52_0x110 < 0.0) {
      if (thisActor.health <= 300) {
        if ((gActors[65].unk_0x180 & 7) == 7) {
          thisActor.actorState = 0x54;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
      }
      else {
        if (((thisActor.health <= 500) && ((gActors[65].unk_0x180 & 1) != 0)) &&((Rand() & 1) != 0)) {
          thisActor.actorState = 0xa0;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
        if ((thisActor.health <= 400) && ((gActors[65].unk_0x180 & 7) == 3)) {
          thisActor.actorState = 0x52;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
        if (4 < (gActors[65].unk_0x180 & 7)) {
          thisActor.actorState = 0x54;
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
      }
      uVar10 = Rand() & 3;
      if (uVar10 == 0) {
        thisActor.actorState = 0x70;
      }
      else {
        if (uVar10 != 1) {
          if (uVar10 == 2) {
            thisActor.actorState = 0x52;
            thisActor.field52_0x110 = 2.0;
            MigenJrActor.flag3 = 0;
            gActors[49].flag3 = 0;
            gActors[55].flag3 = 0;
            gActors[56].flag3 = 0;
            gActors[62].flag3 = 0;
            gActors[63].flag3 = 0;
            gActors[77].flag3 = 0;
            return;
          }
          if (uVar10 != 3) {
            MigenJrActor.flag3 = 0;
            gActors[49].flag3 = 0;
            gActors[55].flag3 = 0;
            gActors[56].flag3 = 0;
            gActors[62].flag3 = 0;
            gActors[63].flag3 = 0;
            gActors[77].flag3 = 0;
            return;
          }
        }
        thisActor.actorState = 0x80;
        gActors[63].unk_0x120 = D_8019e164;
        thisActor.field52_0x110 = 2.0;
      }
    }
    break;
  case 0x48: //charging breath attack
    thisActor.actorState++;
    thisActor.field55_0x11c = gActors[63].rgba.B;;
    func_8019237C_67DE9C(index);
    func_80193DF0_67F910(index,10);
    func_8019487C_68039C(index,0);
    SFX_ActorPanX(Energy Charge,0x4d);
    gActors[65].unk_0x180 = 0;
    gActors[63].unk_0x138 = 0.0;
  case 0x49:
    func_80193F9C_67FABC(index);
    func_80194818_680338();
    func_801923B0_67DED0(index);
    if ((gSceneFrames & 2) == 0) {
      fVar13 = thisActor.field55_0x11c;
      if (false) {
        fVar4 = ROUND(fVar13);
      }
      else {
        fVar4 = FLOOR(fVar13);
      }
      uVar10 = (uint)fVar4;
      if (true) {
        if ((int)uVar10 < 0) goto lab_80196b3c;
      }
      else {
        if (false) {
          fVar13 = ROUND(fVar13 - 2.147484e+09);
        }
        else {
          fVar13 = FLOOR(fVar13 - 2.147484e+09);
        }
        uVar10 = (uint)fVar13;
        if (false) {
lab_80196b3c:
          uVar10 = 0xffffffff;
        }
      }
      func_80193F44_67FA64(index,uVar10);
    }
    else {
      gActors[63].flag2 &= ~0x10;
      gActors[63].rgba.R = 0x30;
      gActors[63].rgba.G = 0x28;
      gActors[63].rgba.B = 0x20;
    }
    if (((uint)gActors[77].unk_0x16C & 0x80) != 0) {
      thisActor.actorState++;
      FUN_.rom.67DC20__801928a8(index);
      func_8019487C_68039C(index,0);
      gActors[63].rgba.R = 0x50;
      gActors[63].rgba.G = 0x30;
      SFX_ActorPanX(0x60,0x4d);
    }
    func_801949B8_6804D8(index);
    break;
  case 0x4a:
    func_80193F9C_67FABC(index);
    if (thisActor.health <= 500) {
      func_8019487C_68039C(0);
    }
    func_801929C0_67E4E0(index);
    if ((gSceneFrames & 1) != 0) {
      FUN_8005ca34(2,2);
    }
    if (gActors[79].unk_0x180 != 0) {
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    }
    uVar10 = (uint)thisActor.field55_0x11c;
    if ((int)uVar10 < 0)  uVar10 = 0xffffffff;
    }
    func_8019487C_68039C(index,(uint16_t)uVar10);
    thisActor.actorState = 0x30;
    thisActor.field52_0x110 = 60.0;
    break;
  case 0x4c:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0x15);
    gActors[65].unk_0x180++;
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b11c,0,0x20,0x37);
    gActors[63].unk_0x138 = 0.0;
  case 0x4d:
    func_80193F9C_67FABC(index);
    func_8019487C_68039C(0);
    func_801949B8_6804D8(index);
    if (((uint)gActors[77].unk_0x16C & 0x80) != 0) {
      SFX_ActorPanX(0x43,0x4d);
      FUN_.rom.67DC20__801928a8(index);
      FUN_.rom.67DC20__80192e68(index,0);
      FUN_8005ca34(-8,10);
    }
    if (((gActors[77].unk_0x16C & 1) != 0) &&(0.0 <= --thisActor.field52_0x110)) {
      thisActor.actorState = 0x4d;
      func_80193DF0_67F910(index,0x20);
    }
    if (gActors[77].field55_0x11c < 0.0) {
      thisActor.actorState = 0x30;
      thisActor.field52_0x110 = 20.0;
    }
    func_80193CC4_67F7E4(index,0);
    break;
  case 0x50:
  case 0x52:
    thisActor.actorState++;
    gActors[65].unk_0x180++;
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b11c,0,0x20,0x37);
    func_80193DF0_67F910(index,0x20);
    gActors[63].unk_0x138 = 0.0;
  case 0x51:
  case 0x53:
    func_80193F9C_67FABC(index);
    func_8019487C_68039C(0);
    if (((uint)gActors[77].unk_0x16C & 0x80) != 0) {
      SFX_ActorPanX(0x43,0x4d);
      FUN_.rom.67DC20__801928a8(index);
      FUN_.rom.67DC20__80192e68(index,1);
      FUN_8005ca34(-8,10);
    }
    if (gActors[77].field55_0x11c < 0.0) {
      if (thisActor.actorState == 0x51) {
        thisActor.actorState = 0x30;
        thisActor.field52_0x110 = 20.0;
      }
      else {
        thisActor.actorState = 0x40;
        thisActor.field52_0x110 = 0.0;
      }
    }
    func_80194934_680454(index);
    func_80193CC4_67F7E4(index,0);
    break;
  case 0x54:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0xd);
    gActors[65].unk_0x180++;
    gActors[66].unk_0x180 = (0 < gPlayerActor.pos.x);
    gActors[70].unk_0x180 = 0;
    func_80193600_67F120(0x37);
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
    SFX_ActorPanX(0x2b,0x31);
    D_8019E580 = 8;
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b170,0,0x20,0x32);
  case 0x55:
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    if (--D_8019E580 == 0) {
      ActorSpawn_Crosshair(8,0x37);
    }
    if (func_80194D3C_68085C(index) == 0) {
      func_8019487C_68039C(0x2c0000);
      func_8019487C_68039C();
      if ((gActors[49].unk_0x16C & 2)) {
        gActors[55].flag |= 0x1200;
        gActors[55].dmg = 75;
        gActors[55]._219_1_ = 8;
        gActors[55]._218_1_ = 0x84;
        gActors[55].unk_0xF8 = 0x28000;
        gActors[55].field47_0xfc = 0x28000;
        SFX_ActorPanX(0x98,0x31);
      }
      if (((uint)gActors[49].unk_0x16C & 1)) {
        FUN_8005ca34(-8,0x1e);
        gActors[55].flag &= 0xffffedff;
        SFX_ActorPanX(0x45,0x4d);
      }
      if (gActors[49].field55_0x11c < 0.0) {
        thisActor.actorState = 0x30;
        gActors[55].flag &= 0xffffedff;
        func_80194E64_680984(index,0xf);
      }
      else {
        func_80193CC4_67F7E4(index,0);
        if ((gActors[55].flag3 & 1)) {
          gActors[55].flag &= 0xffffedff;
        }
        if (gActors[55].pos.y < -0x40) {
          gActors[55].pos.y = -0x40;
        }
      }
    }
    break;
  case 0x56:
    func_80193F9C_67FABC(index);
    func_8019487C_68039C(0x2c0000);
    func_80193CC4_67F7E4(index,0);
    func_80194934_680454(index);
    thisActor.unk_0x110-=1.0;
    if (thisActor.field52_0x110 == 117.0) {
      thisActor.actorState++;
      DAT_800be6e4 = 0;
      func_80193ED8_67F9F8(3);
      FUN_.rom.67DC20__80192100(index);
      D_800be5f4 = 0x10;
    }
    break;
  case 0x57:
    thisActor.unk_0x110-=1.0;
    if (thisActor.field52_0x110 < 0.0) {
      thisActor.actorState = 0x30;
      DAT_800be6e4 = 1;
      thisActor.field52_0x110 = 120.0;
      FUN_.rom.67DC20__80193e6c(3);
      func_80193F9C_67FABC(index);
      func_80193CC4_67F7E4(index,0);
      gActors[94].flag &= 0xffffcaff;
      FUN_80011b30(0,4,9,2,0);
      func_80193594_67F0B4(); //noop?
      func_8019359C_67F0BC(); //noop?
      D_800be5f4 = CONCAT13(1,D_800be5f4._1_3_);
      if (gPlayerActor.pos.x < 1) {
        gPlayerActor.pos.x = -0x40;
      }
      else {
        gPlayerActor.pos.x = 0x38;
      }
      gPlayerPosXMirror._hi = gScreenPosCurrentX._hi + gPlayerActor.pos.x;
    }
    break;
  case 0x60:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0x13);
    gActors[65].unk_0x180++;
    gActors[66].unk_0x180 = (uint)(0 < gPlayerActor.pos.x);
    thisActor.unk_0x150 = (Rand() & 1) + u16_800be668 / 0x1e + 1;
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b150,0,0x20,0x32);
    func_80193600_67F120(0x37);
    D_8019E580 = 4;
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
  case 0x61:
    if (--D_8019E580 == 0) {
      ActorSpawn_Crosshair(8,0x37);
    }
    func_80193F9C_67FABC(index);
    func_8019487C_68039C(0x2c0000);
    if (gActors[49].field55_0x11c < 0.0) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x11);
    }
    func_80194934_680454(index);
    break;
  case 0x62:
    func_80193F9C_67FABC(index);
    if (func_80194D3C_68085C(index) == 0) {
      func_8019487C_68039C(0x2c0000);
      func_8019487C_68039C();
      if (((uint)gActors[49].unk_0x16C & 1) != 0) {
        gActors[55].flag |= 0x1200;
        gActors[55].dmg = 0x32;
        gActors[55]._219_1_ = 4;
        gActors[55]._218_1_ = 0x84;
        gActors[55].unk_0xF8 = 0x8000;
        gActors[55].field47_0xfc = 0x8000;
        SFX_ActorPanX(0x96,0x31);
      }
      if ((gActors[55].flag3 & 1) != 0) {
        SFX_ActorPanX(0x2c,0x31);
        if (0 < --thisActor.unk_0x150) {
          gActors[55].flag &= 0xffffedff;
          func_80193DF0_67F910(index,0x14);
          ActorSpawn_JPNSpeechBox(0x4e,&D_8019b15c,0,0x20,0x16);
        }
      }
      if (gActors[49].field55_0x11c < 0.0) {
        gActors[55].flag &= 0xffffedff;
        thisActor.actorState = 0x30;
        func_80194E64_680984(index,0x1e);
        func_80193DF0_67F910(index,0x12);
      }
      else {
        func_80193CC4_67F7E4(index,0);
        func_80194934_680454(index);
      }
    }
    break;
  case 0x70:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0x1d);
    gActors[65].unk_0x180++;
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
    func_80193694_67F1B4(0x37);
    SFX_ActorPanX(0x2b,0x31);
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b164,0,0x20,0x32);
    D_8019E580 = 4;
    gActors[63].unk_0x120 = D_8019e168;
  case 0x71:
    if (--D_8019E580 == 0) {
      ActorSpawn_Crosshair(0,0x37);
    }
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    if ((gActors[55].flag3 & 0x200) == 0) {
      func_8019487C_68039C();
      if (((uint)gActors[49].unk_0x16C & 2) != 0) {
        gActors[55].flag |= 0x1200;
        gActors[55].dmg = 0x32;
        gActors[55]._219_1_ = 7;
        gActors[55]._218_1_ = 0x84;
        gActors[55].unk_0xF8 = 0x58000;
        gActors[55].field47_0xfc = 0x38000;
        SFX_ActorPanX(0x98,0x31);
        gActors[63].unk_0x120 = 1.0;
      }
      if ((gActors[49].unk_0x16C & 1)) {
        gActors[55].flag &= 0xffffedff;
      }
      if (gActors[49].field55_0x11c < 0.0) {
        thisActor.actorState = 0x30;
        gActors[55].flag &= 0xffffedff;
        func_80194E64_680984(index,0xf);
      }
      else if (((gActors[55].flag3 & 1) != 0) && (gActors[55].field32_0xd6 == 0)) {
        gActors[55].flag &= 0xffffedff;
      }
    }
    else {
      func_80193DF0_67F910(index,0x1f);
      gPlayerActor.flag3|= 0x10000;
      gPlayerActor.field47_0xfc = 0x20000;
      DAT_800d294c = 2;
      thisActor.actorState = 0x40;
      if (gActors[66].unk_0x180 == 0) {
        gPlayerActor.unk_0xF8 = 0x30000;
      }
      else {
        gPlayerActor.unk_0xF8 = 0xfffd0000;
      }
      thisActor.field52_0x110 = 16.0;
      gActors[55].flag &= 0xffffedff;
    }
    break;
  case 0x80:
    thisActor.actorState++;
    func_80193DF0_67F910(index,0x1e);
    gActors[65].unk_0x180 = gActors[65].unk_0x180 + 1;
    if (thisActor.field52_0x110 == 3.0) {
      if (gPlayerActor.pos.x < 1) {
        gActors[66].unk_0x180 = 0;
      }
      else {
        gActors[66].unk_0x180 = 1;
      }
    }
    func_80193600_67F120(0x37);
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
    ActorSpawn_JPNSpeechBox(0x4e,&D_8019b144,0,0x20,0x32);
    SFX_ActorPanX(0x2b,0x31);
    D_8019E580 = 4;
  case 0x81:
    if (--D_8019E580 == 0) {
      ActorSpawn_Crosshair(0,0x37);
    }
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    if ((gActors[55].flag3 & 0x200) == 0) {
      if ((gActors[55].flag & 0x200) == 0) {
        func_8019487C_68039C(0x2c0000);
      }
      func_80194F48_680A68();
      if (((uint)gActors[49].unk_0x16C & 2) != 0) {
        gActors[55].flag |= 0x1200;
        gActors[55].dmg = 0x32;
        gActors[55]._218_1_ = 4;
        gActors[55]._219_1_ = 8;
        gActors[55].unk_0xF8 = 0x28000;
        gActors[55].field47_0xfc = 0x28000;
        SFX_ActorPanX(0x98,0x31);
      }
      if (((uint)gActors[49].unk_0x16C & 1) == 0) {
        if (gActors[49].field55_0x11c < 0.0) {
          thisActor.actorState = 0x30;
          gActors[55].flag &= 0xffffedff;
          func_80194E64_680984(index,0xf);
        }
        else {
          func_80193CC4_67F7E4(index,0);
          if ((gActors[55].flag3 & 1) != 0) {
            gActors[55].flag &= 0xffffedff;
          }
          if (gActors[55].pos.y < -0x40) {
            gActors[55].pos.y = -0x40;
          }
        }
      }
      else {
        SFX_ActorPanX(0x45,0x31);
        func_8005CA34(-8,8);
        gActors[55].flag &= 0xffffedff;
        thisActor.unk_0x110-=1.0;
        if (0.0 <= thisActor.field52_0x110) {
          thisActor.actorState = 0x80;
          MODf(thisActor.unk_0x120,D_8019e16c,0.2);
        }
      }
    }
    else {
      thisActor.actorState = 0x40;
      gPlayerActor.flag3 |= 0x10000;
      gActors[55].flag &= 0x1200;
      if (gActors[55].pos.x < gPlayerActor.pos.x) {
        gPlayerActor.unk_0xF8 = 0x18000;
      }
      else {
        gPlayerActor.unk_0xF8 = 0xfffe8000;
      }
      gPlayerActor.field47_0xfc = 0x10000;
      thisActor.field52_0x110 = 8.0;
      gActors[55].flag &= 0xffffedff;
      DAT_800d294c = 2;
    }
    break;
  case 0x90:
    thisActor.actorState++;
    thisActor.unk_0x114 = (float)((Rand() & 3) + 4);
    func_80193DF0_67F910(index,0);
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
    thisActor.field52_0x110 = 60.0;
  case 0x91:
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    func_8019487C_68039C(0x140000);
    thisActor.unk_0x110-=1.0;
    if (0.0 <= thisActor.field52_0x110) {
      MigenJrActor.flag3 = 0;
      gActors[49].flag3 = 0;
      gActors[55].flag3 = 0;
      gActors[56].flag3 = 0;
      gActors[62].flag3 = 0;
      gActors[63].flag3 = 0;
      gActors[77].flag3 = 0;
      return;
    }
    thisActor.unk_0x114-=;
    uVar10 = (uint)thisActor.unk_0x114;
    if (true) {
      if ((int)uVar10 < 0) goto lab_80197004;
    }
    else {
      if (false) {
        fVar4 = ROUND(fVar13 - 2.147484e+09);
      }
      else {
        fVar4 = FLOOR(fVar13 - 2.147484e+09);
      }
      uVar10 = (uint)fVar4;
      if (false) {
lab_80197004:
        uVar10 = 0xffffffff;
      }
    }
    if ((uVar10 & 1) == 0) {
      thisActor.actorState++;
      SFX_ActorPanX(0x2b,0x31);
      gActors[66].unk_0x180 ^= 1;
      gActors[77].unk_0x138 = 0.0;
      gActors[63].unk_0x138 = 0.0;
      uVar10 = Rand() & 3;
      if (uVar10 == 0) {
        thisActor.field52_0x110 = 20.0;
        ActorSpawn_JPNSpeechBox(0x4e,&D_8019b150,0,0x20,0x16);
        func_80193DF0_67F910(index,0x11);
        ActorSpawn_Crosshair(0,0x37);
        MigenJrActor.flag3 = 0;
        gActors[49].flag3 = 0;
        gActors[55].flag3 = 0;
        gActors[56].flag3 = 0;
        gActors[62].flag3 = 0;
        gActors[63].flag3 = 0;
        gActors[77].flag3 = 0;
        return;
      }
      if (uVar10 != 1) {
        if (uVar10 == 2) {
          thisActor.field52_0x110 = 24.0;
          ActorSpawn_JPNSpeechBox(0x4e,&D_8019b11c,0,0x20,0x16);
          func_80193DF0_67F910(index,0x20);
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
        if (uVar10 != 3) {
          MigenJrActor.flag3 = 0;
          gActors[49].flag3 = 0;
          gActors[55].flag3 = 0;
          gActors[56].flag3 = 0;
          gActors[62].flag3 = 0;
          gActors[63].flag3 = 0;
          gActors[77].flag3 = 0;
          return;
        }
      }
      thisActor.field52_0x110 = 28.0;
      ActorSpawn_JPNSpeechBox(0x4e,&D_8019b144,0,0x20,0x1a);
      func_80193DF0_67F910(index,0x1e);
      ActorSpawn_Crosshair(0,0x37);
    }
    else if ((fVar13 < 0.0) || (Rand() & 3) == 0)) {
      if ((gActors[65].unk_0x180 & 3) == 0) {
        thisActor.actorState = 0x50;
      }
      else {
        uVar10 = Rand() & 3;
        if (uVar10) {
          if (uVar10 == 1) {
            thisActor.actorState = 0x50;
            MigenJrActor.flag3 = 0;
            gActors[49].flag3 = 0;
            gActors[55].flag3 = 0;
            gActors[56].flag3 = 0;
            gActors[62].flag3 = 0;
            gActors[63].flag3 = 0;
            gActors[77].flag3 = 0;
            return;
          }
          if (uVar10 == 2) {
            thisActor.actorState = 0x80;
            thisActor.field52_0x110 = 2.0;
            thisActor.unk_0x120 = 1.0;
            MigenJrActor.flag3 = 0;
            gActors[49].flag3 = 0;
            gActors[55].flag3 = 0;
            gActors[56].flag3 = 0;
            gActors[62].flag3 = 0;
            gActors[63].flag3 = 0;
            gActors[77].flag3 = 0;
            return;
          }
          if (uVar10 != 3) {
            MigenJrActor.flag3 = 0;
            gActors[49].flag3 = 0;
            gActors[55].flag3 = 0;
            gActors[56].flag3 = 0;
            gActors[62].flag3 = 0;
            gActors[63].flag3 = 0;
            gActors[77].flag3 = 0;
            return;
          }
        }
        thisActor.actorState = 0x70;
      }
    }
    break;
  case 0x92:
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    func_8019487C_68039C(0x2c0000);
    thisActor.unk_0x110-=1.0;
    if (thisActor.field52_0x110 < 0.0) {
      thisActor.actorState--;
      thisActor.field52_0x110 = 24.0;
      if ((Rand() & 1) == 0) {
        func_80193DF0_67F910(index,0);
        ActorSpawn_JPNSpeechBox(0x4e,&D_8019b138,0,0x20,0x16);
      }
      else {
        func_80193DF0_67F910(index,0x17);
        ActorSpawn_JPNSpeechBox(0x4e,&D_8019b12c,0,0x20,0x16);
      }
    }
    break;
  case 0xa0:
    thisActor.actorState++;
    gActors[65].unk_0x180 ++;
    gActors[66].unk_0x180 ^=1;
    gActors[77].unk_0x138 = 0.0;
    gActors[63].unk_0x138 = 0.0;
    thisActor.field52_0x110 = 16.0;
    func_80193DF0_67F910(index,0x17);
    SFX_ActorPanX(0x2b,0x31);
  case 0xa1:
    func_80193F9C_67FABC(index);
    func_80194934_680454(index);
    func_8019487C_68039C(0x2c0000);
    thisActor.unk_0x110-=1.0;
    if (thisActor.unk_0x110 < 0.0) thisActor.actorState = 0x40;
    break;
  case 0xb0:
    thisActor.actorState++;
    thisActor.unk_0x150 = 1;
    func_80193DF0_67F910(index,0x1b);
    gActors[63].unk_0x120 = 1.0;
  case 0xb1: //"Thank you for healing me, father!"
    func_80194818_680338();
    func_80193F9C_67FABC(index);
    if ((gActors[77].unk_0x16C & 1) && (--thisActor.unk_0x150 < 0)) {
      thisActor.actorState++;
      func_80193DF0_67F910(index,0x1c);
      SFX_ActorPanX(Roar deep,0x4d);
      SFX_ActorPanX(SFX_GEM_GREEN,0x4d);
      ActorSpawn_JPNSpeechBox(0x4e,&D_8019b17c,0,0x20,0x78);
      gActors[63].rgba.G = 0x80;
      gActors[63].rgba.B = 0x80;
    }
    if (((uint)gActors[77].unk_0x16C & 2) != 0) {
      SFX_Play_1(jump);
    }
    break;
  case 0xb2:
    if (((uint)gActors[77].unk_0x16C & 1) != 0) {
      SFX_Play_1(0x91);
    }
    func_80193F9C_67FABC(index);
    if (gActors[77].field55_0x11c < 0.0) {
      thisActor.actorState = 0x30;
      thisActor.field52_0x110 = 120.0;
    }
  }
  MigenJrActor.flag3 = 0;
  gActors[49].flag3 = 0;
  gActors[55].flag3 = 0;
  gActors[56].flag3 = 0;
  gActors[62].flag3 = 0;
  gActors[63].flag3 = 0;
  gActors[77].flag3 = 0;
  return;
lab_80195034_caseD_1003:
  func_80193ED8_67F9F8(3);
  func_80194B10_680630();
  FUN_8003f138(0.5,gActors[63].pos.x,gActors[63].pos.y,gActors[63].pos.z_w._hi);
  SFX_Play_1(0x43);
  thisActor.actorState++;
lab_80195034_caseD_1004:
  if (gPlayerActor.actorState != 3) {
    MigenJrActor.flag3 = 0;
    gActors[49].flag3 = 0;
    gActors[55].flag3 = 0;
    gActors[56].flag3 = 0;
    gActors[62].flag3 = 0;
    gActors[63].flag3 = 0;
    gActors[77].flag3 = 0;
    return;
  }
  if ((D_800be5f4 & 0xff) != 0) {
    MigenJrActor.flag3 = 0;
    gActors[49].flag3 = 0;
    gActors[55].flag3 = 0;
    gActors[56].flag3 = 0;
    gActors[62].flag3 = 0;
    gActors[63].flag3 = 0;
    gActors[77].flag3 = 0;
    return;
  }
  if ((D_801373e0.field31_0x64 & 0x20) == 0) {
    MigenJrActor.flag3 = 0;
    gActors[49].flag3 = 0;
    gActors[55].flag3 = 0;
    gActors[56].flag3 = 0;
    gActors[62].flag3 = 0;
    gActors[63].flag3 = 0;
    gActors[77].flag3 = 0;
    return;
  }
  thisActor.actorState++;
  D_800be5f4 = 0x11;
  SFX_ActorPanX(dash,0);
  thisActor.unk_0x150 = 10;
  gActors[97].flag = 0x2002;
  DAT_800be6e8 = 1;
  ACTORINIT(100,ACTORTYPE_MIGENTHEO);
  MigenJrActor.flag3 = 0;
  gActors[49].flag3 = 0;
  gActors[55].flag3 = 0;
  gActors[56].flag3 = 0;
  gActors[62].flag3 = 0;
  gActors[63].flag3 = 0;
  gActors[77].flag3 = 0;
  gActors[100].actorState = 0x180;
  return;
lab_80195064_caseD_418:
  thisActor.actorState++;
  func_80193DF0_67F910(index,4);
  thisActor.unk_0x114 = 0.0;
lab_80195064_caseD_419:
  func_80193F9C_67FABC(index);
  uVar10 = 0x31;
  if ((gActors[49].unk_0x16C & 1)) {
    FUN_80081790(0x4d,&D_8019d480);
    thisActor.health-=100; //stop hitting yourself!
    gActors[63].rgba.R = 0x80;
    gActors[63].rgba.G = 0x80;
    gActors[63].rgba.B = 0x80;
    SFX_ActorPanX(0x2d,0x4d);
    func_8005CA34(-5,0x1e);
    thisActor.unk_0x114 = 1.0;
    thisActor.field52_0x110 = 26.0;
    gActors[65].unk_0x180 |= 1;
    uVar11 = func_8003123C(&D_8019db74,0,0,0);
    if (uVar11) {
      gActors[uVar11].unk_0x130 = 80.0;
      gActors[uVar11].flag2 = |= 0x10;
      gActors[uVar11].unk_0x14C = gActors[80].actorType;
      gActors[uVar11].unk_0x134 = 0.0;
      gActors[uVar11].unk_0x13C = 0.0;
      gActors[uVar11].rgba.R = 0x7f;
      gActors[uVar11].unk_0x148 = 26.0;
      thisActor.unk_0x118 = uVar11;
      thisActor.unk_0x150 = 0x38000;
      thisActor.unk_0x154 = 0xffe60000;
    }
  }
  if (thisActor.unk_0x114 == 0.0) goto lab_80197a84;
  fVar13 = thisActor.field54_0x118;
  thisActor.unk_0x110-=1.0;
  if (false) {
    fVar4 = ROUND(fVar13);
  }
  else {
    fVar4 = FLOOR(fVar13);
  }
  uVar10 = (uint)fVar4;
  if (true) {
    if ((int)uVar10 < 0) goto lab_80197830;
  }
  else {
    if (false) {
      fVar13 = ROUND(fVar13 - 2.147484e+09);
    }
    else {
      fVar13 = FLOOR(fVar13 - 2.147484e+09);
    }
    uVar10 = (uint)fVar13;
    if (false) {
lab_80197830:
      uVar10 = 0xffffffff;
    }
  }
  uVar10 = uVar10 & 0xffff;
  if (uVar10 != 0) {
    if (23.0 <= thisActor.field52_0x110) {
      gActors[uVar10].rgba.A = 0;
    }
    else {
      gActors[uVar10].rgba.A = 0xfe;
    }
    iVar12 = thisActor.unk_0x150 + -0x4800;
    iVar9 = thisActor.unk_0x154 + iVar12;
    thisActor.unk_0x150 = iVar12;
    thisActor.unk_0x154 = iVar9;
    if (iVar9 < 0) {
      iVar9 = iVar9 + 0xffff;
    }
    gActors[uVar10].unk_0x138 = (float)(iVar9 >> 0x10);
    if ((int)thisActor.unk_0x150 < 0) gActors[uVar10].rgba.R+=8;
    else MODi(gActors[uVar10].rgba.R,0,0x10);
    gActors[uVar10].rgba.G = gActors[uVar10].rgba.R;
    gActors[uVar10].rgba.B = gActors[uVar10].rgba.R;
  }
  //spawn red gems
  if ((thisActor.field52_0x110 == 0.0) && (0 < D_8019E570)) {
    D_8019E570--;
    for(iVar9=0;iVar9!=3;iVar9++) {
      uVar11 = Gem_ActorSpawn(0x50,GEMFLAG_BOUNCE|GEMFLAG_UNK,0);
      if (uVar11) {
        if (iVar9 == 1) { //space the gems out
          gActors[uVar11].vel.x_w = -0x28000;
          gActors[uVar11].vel.y_w/=2;
        }
        else if (iVar9 == 2) {
            gActors[uVar11].vel.x_w = 0x28000;
            gActors[uVar11].vel.y_w/=2;
        }
      }
    }
  }
  if (thisActor.field52_0x110 < 0.0) {
    thisActor.unk_0x114 = 0.0;
  }
  else {
    gActors[index + 0x20].unk_0x13C = 9.0;
  }
lab_80197a84:
  if (gActors[uVar10].field55_0x11c < 0.0) {
    thisActor.actorState = 0x30;
    func_80194E64_680984(index,0x3c);
  }
  func_80193CC4_67F7E4(index,0);
  MigenJrActor.flag3 = 0;
  gActors[49].flag3 = 0;
  gActors[55].flag3 = 0;
  gActors[56].flag3 = 0;
  gActors[62].flag3 = 0;
  gActors[63].flag3 = 0;
  gActors[77].flag3 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194F8C_680AAC.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197EFC_683A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197F58_683A78.s")

void func_80197F90_683AB0(uint16_t x){}
void func_80197F98_683AB8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197FA0_683AC0.s")
//theo behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019809C_683BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198708_684228.s")

uint16_t func_8019882C_68434C(void) {
    return Actor_GetInactiveInRange(0x67, 0x68);
}
//migen Sr. energy ball spawn
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198850_684370.s")
//migen Sr. energy ball behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019893C_68445C.s")

void func_80198ED8_6849F8(uint16_t x){}
void func_80198EE0_684A00(uint16_t x){}
//migen Sr. teleports.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198EE8_684A08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198F70_684A90.s")

//keep Migen Sr.'s cape on his back.
void func_80199094_684BB4(uint16_t index){
    uint16_t other=index+1;
    gActors[other].rgba.a=thisActor.rgba.a;
    gActors[other].scaleX=thisActor.scaleX;
    gActors[other].scaleY=thisActor.scaleY;
    gActors[other].pos.x=thisActor.pos.x;
    gActors[other].pos.y=thisActor.pos.y;
    gActors[other].pos.z_w=thisActor.pos.z_w+-1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019911C_684C3C.s")
//Migen Sr. behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801992AC_684DCC.s")
//Migen Sr. heals son.
#ifdef NON_MATCHING
void func_80199DA8_6858C8(uint16_t index){  
  switch(thisActor.actorState) {
    case 0:
    thisActor.actorState++;
    thisActor.flag2 = 0x201;
    thisActor.flag = 3;
    thisActor.graphicTime = 1;
    thisActor.graphicList = D_800E164C;
    thisActor.unk_0x18C._p = &gSpriteData_GreenGem;
    thisActor.scaleX = 4.0;
    Actor_Shade(index,0x7f);
    SFX_ActorPanX(SFX_GEM_APPEAR,index);
    case 1:
    MODi(thisActor.rgba.a,0xff,4);
    MODf(thisActor.scaleX,1.7,0.06);
    thisActor.rgba.r = thisActor.rgba.g = thisActor.rgba.b = ModInRange_i(thisActor.rgba.r,0,4);
    thisActor.pos.x = MigenSrActor.pos.x;
    thisActor.pos.y = MigenSrActor.pos.y;
    thisActor.pos.z_w = MigenSrActor.pos.z_w;
    break;
    case 2:
    thisActor.vel.y_w-=0x3000;
    thisActor.vel.z_w = 0x80000;
    if (thisActor.pos.y <(gActors[79].pos.y + -0x14)) {
      thisActor.flag = 0;
      MigenJrActor.actorState = 0xb0;
      SFX_ActorPanX(SFX_GEM_BLUE,index);
      D_8019E570 = 2;
    }
  }
  thisActor.scaleY = thisActor.scaleX;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80199DA8_6858C8.s")
#endif
void func_80199F54_685A74(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80199F5C_685A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A3B8_685ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A604_686124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A6AC_6861CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A888_6863A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AB04_686624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AD40_686860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AEE4_686A04.s")
