#include "common.h"


//.bss
int16_t D_8019e570,D_8019e572,D_8019e574;
int32_t D_8019e578,D_8019e57C;
int16_t D_8019e580;

void func_80192100_67DC20(uint16_t x){}

void func_80192108_67DC28(uint16_t x){
    Actor* actorp;
    uint16_t index=func_8003123C(&D_800E154C,gActors[79].pos.x,gActors[79].pos.y+32,gActors[79].pos.z+5);
    if(index){
        actorp =&thisActor;
        actorp->unk_0x94=1;
        actorp->scaleX=1.5;
        actorp->scaleY=1.5;
        actorp->unk_0x148=60;
    }
}
//#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192108_67DC28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019219C_67DCBC.s")
#ifdef NON_MATCHING
void func_8019237C_67DE9C(uint16_t x){
    gActors[78].unk_0x180_w=60;
    gActors[79].unk_0x180_w=8;
    gActors[80].unk_0x180_w=0xFE;
    gActors[78].unk_0x140_f=0;
}
#else
extern void func_8019237C_67DE9C(uint16_t x);
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019237C_67DE9C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801923B0_67DED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801926CC_67E1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801927DC_67E2FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192820_67E340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801928A8_67E3C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801929C0_67E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192C4C_67E76C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192E68_67E988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80192FE4_67EB04.s")
#ifdef NON_MATCHING
void func_801934F0_67F010(){
    ACTORINIT(94,0x2F);
    gActors[94].flag|=0xA302;
    gActors[94].health=1;
    gActors[97].unk_0xAE=0x50;
    gActors[97].unk_0xB0=-0x20;
    gActors[97].unk_0xAA=-0x50;
    gActors[97].unk_0xAC=0x50;
    gActors[97].unk_0xA6=-0x20;
    gActors[97].unk_0xA8=-0x80;
    gActors[97].unk_0xA2=-0x100;
    gActors[97].unk_0xA4=0x100;
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
    gActors[97].unk_0xAE=0x10;
    gActors[97].unk_0xB0=-0x10;
    gActors[97].unk_0xAA=-0x100;
    gActors[97].unk_0xAC=0x100;
    
}

void func_80193600_67F120(uint16_t index){
    gActors[index].unk_0xAE=8;
    gActors[index].unk_0xB0=-0x18;
    func_8002ACFC(index,-14,20);
    gActors[index].unk_0xA6=18;
    gActors[index].unk_0xA8=-8;
    func_8002AC7C(index,-12,10);
}

void func_80193694_67F1B4(uint16_t index){
    gActors[index].unk_0xAE=16;
    gActors[index].unk_0xB0=-12;
    func_8002ACFC(index,-4,26);
    gActors[index].unk_0xA6=12;
    gActors[index].unk_0xA8=-12;
    func_8002AC7C(index,-16,6);
}

void func_80193728_67F248(uint16_t index){
    ACTORINIT(index,0X1D);
    gActors[index].unk_0x94|=1;
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
    gActors[63].unk_0x94|=0x10;
    gActors[63].rgba.r=c;
    gActors[63].rgba.g=c;
    gActors[63].rgba.b=c;
}

void func_80193F70_67FA90(uint16_t x,uint16_t c){
    gActors[63].unk_0x94&=~0x10;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194B68_680688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194B80_6806A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194D3C_68085C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194E64_680984.s")
//rock camera up and down.
void func_80194EE4_680A04(){
    if(gSceneFrames&0x80) MODi(gScreenPosTargetY._w,0x19C0000,0x1000);
    else MODi(gScreenPosTargetY._w,0x1A20000,0x1000);
}

void func_80194F48_680A68(){
    if(gActors[55].flag&0x200){
        gActors[55].unk_0x94&=~0x10;
        Actor_Shade(55,47);
    }
}
//main behavior
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80194F8C_680AAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197EFC_683A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197F58_683A78.s")

void func_80197F90_683AB0(uint16_t x){}
void func_80197F98_683AB8(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80197FA0_683AC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019809C_683BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198708_684228.s")

void func_8019882C_68434C(void) {
    Actor_GetInactiveInRange(0x67, 0x68);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198850_684370.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019893C_68445C.s")

void func_80198ED8_6849F8(uint16_t x){}
void func_80198EE0_684A00(uint16_t x){}
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198EE8_684A08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80198F70_684A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80199094_684BB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019911C_684C3C.s")
//Migen Sr. behavior?
#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_801992AC_684DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80199DA8_6858C8.s")

void func_80199F54_685A74(uint16_t x){}

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_80199F5C_685A7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A3B8_685ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A604_686124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A6AC_6861CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019A888_6863A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AB04_686624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AD40_686860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ActorFuncs1/MigenBrawl/func_8019AEE4_686A04.s")