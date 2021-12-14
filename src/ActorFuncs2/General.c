#include "common.h"

void func_8019B100_731E60(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B108_731E68.s")

void func_8019B21C_731F7C(uint16_t index){
    gActors[index].unk_0xAE=28;
    gActors[index].unk_0xB0=-4;
    gActors[index].unk_0xAA=-12;
    gActors[index].unk_0xAC=12;
}

void func_8019B270_731FD0(uint16_t index){
    gActors[index].flag|=0x2400;
    gActors[index].unk_0xDA = 4;
    gActors[index].unk_0xDB = 6;
    gActors[index].unk_0xAE=16;
    gActors[index].unk_0xB0=-16;
    gActors[index].unk_0xAA=-20;
    gActors[index].unk_0xAC=20;
    gActors[index].unk_0xA6=22;
    gActors[index].unk_0xA8=-22;
    gActors[index].unk_0xA2=-26;
    gActors[index].unk_0xA4=26;
}

void func_8019B300_732060(uint16_t index, uint16_t index1){
    func_8002CCD0(index1,gActors[index].pos.x,gActors[index].pos.y,3);
}


#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B360_7320C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B5A8_732308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B68C_7323EC.s")

void func_8019B738_732498(uint16_t index){
    func_8002A404(index,0x2000);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B764_7324C4.s")
extern uint32_t func_8019B930_732690(uint16_t index);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019B930_732690.s")

void func_8019BA78_7327D8(uint16_t index){
  if (gActors[index + 1].flag & 0x80) {
    gActors[index + 1].health-=0x100;
    if (gActors[index + 1].health < 0) {
      gActors[index + 1].health = 0;
    }
    gActors[index + 1].flag&=~0x80;
  }
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019BAF4_732854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019BDF4_732B54.s")

void func_8019C0A0_732E00(uint16_t index){
    gActors[index].unk_0xAE=8;
    gActors[index].unk_0xB0=-40;
    gActors[index].unk_0xAA=-16;
    gActors[index].unk_0xAC=16;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C0F4_732E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C1C4_732F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C23C_732F9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C544_7332A4.s")

void func_8019C6B4_733414(uint16_t index){
  if ((gActors[index].actorState & 0x8000) == 0) {
    if (gActors[index].flag & 0x20) {
      gActors[index + 1].unk_0x130 = -1.0;
      gActors[index].unk_0x138 = 1.0;
    }
    else{
      gActors[index + 1].unk_0x130 = 1.0;
      gActors[index].unk_0x138 = 0.0;
    }
  }
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C778_7334D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019C80C_73356C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019D6D0_734430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019D77C_7344DC.s")

void func_8019DB10_734870(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DB58_7348B8(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DBA0_734900(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DBE8_734948(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DC30_734990(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DC78_7349D8(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_8019DCC0_734A20(uint16_t index){
    gActors[index].unk_0x98&= ~0x00200600;
}

void func_8019DD08_734A68(uint16_t index){
    func_8007B73C(index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019DD30_734A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019DE88_734BE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019E094_734DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019E240_734FA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019E364_7350C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019EB14_735874.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019EBA8_735908.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019EBD8_735938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019EC6C_7359CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019ED3C_735A9C.s")

void func_8019EFBC_735D1C(uint16_t index){
    gActors[index].unk_0xAE=8;
    gActors[index].unk_0xB0=-24;
    gActors[index].unk_0xAA=-8;
    gActors[index].unk_0xAC=8;
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F00C_735D6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F204_735F64.s")

void func_8019F2A4_736004(uint16_t index){
    func_8002A404(index,0x3000);
}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F2D0_736030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F370_7360D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F404_736164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F6FC_73645C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019F9EC_73674C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019FAE4_736844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_8019FCF0_736A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A08E8_737648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A099C_7376FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A0AB4_737814.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A0C0C_73796C.s")

void func_801A0F5C_737CBC(uint16_t index){
    func_8019FCF0_736A50(index);
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_801A0FC0_737D20(uint16_t index){
    func_8019FCF0_736A50(index);
    gActors[index].unk_0x98&= ~0x00200600;
}
void func_801A1024_737D84(uint16_t index){
    func_8019FCF0_736A50(index);
    gActors[index].unk_0x98&= ~0x00200600;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1088_737DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1158_737EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1440_7381A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1560_7382C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1644_7383A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1718_738478.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1848_7385A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1C9C_7389FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1D4C_738AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A1E74_738BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A206C_738DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A2098_738DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A20EC_738E4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A2290_738FF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A2664_7393C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A2720_739480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A27D8_739538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A283C_73959C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A28A0_739600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A2920_739680.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3290_739FF0.s")
//in Japanese version, Marina has a speech bubble of the shaken weapon's new effect.
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3664_73A3C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A37C0_73A520.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3874_73A5D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3928_73A688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3AC4_73A824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3B64_73A8C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3BF0_73A950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3C6C_73A9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A3EE8_73AC48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A406C_73ADCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs2/General/func_801A4730_73B490.s")

void func_801A4758_73B4B8(uint16_t x){}

void func_801A4760_73B4C0(uint16_t x){}
