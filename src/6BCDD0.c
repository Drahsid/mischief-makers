#include "common.h"
//"final battle" actor funcs
# define BossActor gActors[49]

void func_80192100_6BCDD0(uint16_t index){
    gActors[index].actorType=0x21;
    Actor_Spawn(index);
    gActors[index].unk_0x94=0x118;
    gActors[index].flag=3;
}


#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019216C_6BCE3C.s")

void func_801921E0_6BCEB0(uint16_t x){
    func_80192100_6BCDD0(81);
    gActors[81].unk_0x84=0x83A;
}


#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019220C_6BCEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801922EC_6BCFBC.s")
/*
void func_8019232C_6BCFFC(uint16_t index){
    uint16_t x=index+10;
    if(gActors[index].unk_0x138!=0.0) x=index+15;
    gActors[x].unk_0x84=0x203A;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019232C_6BCFFC.s")

void func_801923D0_6BD0A0(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801923D8_6BD0A8.s")
void func_801924B4_6BD184(uint16_t x){
    func_80192100_6BCDD0(84);
    gActors[84].unk_0x84=0x100E;
    func_80192100_6BCDD0(85);
    gActors[85].unk_0x84=0x1016;
}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801924F4_6BD1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192698_6BD368.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801929DC_6BD6AC.s")

void func_80192C8C_6BD95C(uint16_t x){
    func_80192100_6BCDD0(86);
    gActors[86].unk_0x84=0x200C;
    func_80192100_6BCDD0(87);
    gActors[87].unk_0x84=0x2014;
}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192CCC_6BD99C.s")

void func_80192D74_6BDA44(uint16_t x){
    func_80192100_6BCDD0(88);
    gActors[88].unk_0x84=0x812;
}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192DA0_6BDA70.s")

void func_80192E48_6BDB18(uint16_t x){
    func_80192100_6BCDD0(89);
    gActors[89].unk_0x84=0x812;
}
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192E74_6BDB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192F30_6BDC00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80192FB4_6BDC84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80193024_6BDCF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801932DC_6BDFAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80193B50_6BE820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80193EFC_6BEBCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801940E4_6BEDB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801946D8_6BF3A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801948DC_6BF5AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80194C14_6BF8E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80194C70_6BF940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80194CE8_6BF9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80194EEC_6BFBBC.s")
//catch and throw fist?
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80194FA0_6BFC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80195D44_6C0A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80195DA0_6C0A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80195F14_6C0BE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196030_6C0D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801960B0_6C0D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196530_6C1200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019654C_6C121C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801965D0_6C12A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801966B0_6C1380.s")
//modify x velocity
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196794_6C1464.s")
//modify y velocity
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801967F4_6C14C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196854_6C1524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196BE8_6C18B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196BF0_6C18C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196C78_6C1948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196D60_6C1A30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80196E88_6C1B58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801970F8_6C1DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197100_6C1DD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197108_6C1DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197110_6C1DE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801971A0_6C1E70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197968_6C2638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197A04_6C26D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197AD0_6C27A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197BA4_6C2874.s")

void func_80197C64_6C2934(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197C6C_6C293C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197E08_6C2AD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197F00_6C2BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80197F28_6C2BF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198330_6C3000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198370_6C3040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801983B0_6C3080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801983F0_6C30C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198430_6C3100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198470_6C3140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801984B0_6C3180.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198508_6C31D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198578_6C3248.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801985D8_6C32A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198638_6C3308.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801986DC_6C33AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019878C_6C345C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198858_6C3528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801988E8_6C35B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198AE4_6C37B4.s")
//spawns the boss actor?
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198C24_6C38F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198E70_6C3B40.s")
//gauges boss health
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80198F10_6C3BE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019902C_6C3CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801990EC_6C3DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199190_6C3E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199208_6C3ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199254_6C3F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199278_6C3F48.s")

void func_801992A4_6C3F74(void) {}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801992AC_6C3F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019946C_6C413C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199504_6C41D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801996A4_6C4374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199BA8_6C4878.s")
//main behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_80199CD4_6C49A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019D4D8_6C81A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019D7A0_6C8470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019D908_6C85D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019D970_6C8640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019D9D8_6C86A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DA3C_6C870C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DAAC_6C877C.s")
//aim camera while holding fist?
#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DAF0_6C87C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DBEC_6C88BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DC88_6C8958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DCB8_6C8988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DCE8_6C89B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DF44_6C8C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019DFB0_6C8C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E004_6C8CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E030_6C8D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E07C_6C8D4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E0C8_6C8D98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E12C_6C8DFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E424_6C90F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E564_6C9234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E7E8_6C94B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019E8B0_6C9580.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019EB80_6C9850.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019EC00_6C98D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019EC70_6C9940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019ECEC_6C99BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019ED74_6C9A44.s")

void func_8019EE70_6C9B40(void){
    gActors[48].flag=0;
    gActors[67].flag=0;
    gActors[84].flag=0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019EE8C_6C9B5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_8019EF50_6C9C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A0228_6CAEF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A02F4_6CAFC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A05A0_6CB270.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A06B4_6CB384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A0BA8_6CB878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/6BCDD0/func_801A0C74_6CB944.s")
