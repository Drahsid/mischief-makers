#include "common.h"
#include "actor.h"
#include "Alphabet.h"

extern ActorFunc D_801AF758_795A48[];
extern ActorFunc D_801AF778_795A68[];
extern u16 D_801AF79C_795A8C[];
extern u16 D_801AF7C4_795AB4[];
extern u16 D_801AF7C6_795AB6[];
extern f32 D_801AFA24_795D14[];
extern u8 D_801AF606_7958F6[];

void func_801A7C14_78DF04(u16);
void func_801A7CA4_78DF94(u16);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6900_78CBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A6ED4_78D1C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7200_78D4F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7304_78D5F4.s")

void func_801A73F4_78D6E4(s32 arg0, s32 arg1) {
}

void func_801A7400_78D6F0(s32 arg0, s32 arg1) {
}

void func_801A740C_78D6FC(s32 arg0, s32 arg1) {
}

void func_801A7418_78D708(s32 arg0, s32 arg1) {
}

u16 func_801A7424_78D714(u16 arg0){
    u16 actor_index;

    actor_index = Actor_RangeFindInactive(0x90,0xb8);
    if (actor_index != 0){
        gActors[actor_index].actorType = 0x1a01;
        func_8001E2D0(actor_index);
        gActors[actor_index].graphicIndex = GINDEX_SOLIDSQARE;
    }
    return actor_index;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A74A0_78D790.s")

void func_801A76AC_78D99C(u16 arg0){
    u16 actor_index;
    u16 rand;

    actor_index = func_801A7424_78D714(arg0);
    if (actor_index != 0) {
        rand = Rand();
        gActors[actor_index].posX.whole = gActors[arg0].posX.whole + ((rand-0x80)/2);
        gActors[actor_index].posY.whole = 0x80;
        gActors[actor_index].posZ.whole = gActors[arg0].posZ.whole + 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A774C_78DA3C.s")

#ifdef NONMATCHING
void func_801A7878_78DB68(u16 arg0, u16 arg1){
    if (arg1 == 0) {
        gActors[arg0].colorR = 0;
        gActors[arg0].colorG = 0;
        gActors[arg0].colorB = 49;
    }
    else {
        gActors[arg0].colorR = (u8)-((arg1 >> 2)& 1);
        gActors[arg0].colorG = (u8)-((arg1 >> 1) & 1);
        gActors[arg0].colorB = (u8)-(arg1 & 1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7878_78DB68.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7940_78DC30.s")

void func_801A7C0C_78DEFC(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7C14_78DF04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7CA4_78DF94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A7E98_78E188.s")

void func_801A821C_78E50C(u16 actor_index) {
    if (gActors[actor_index].unk_0D8 > 1) {
        func_801A7C14_78DF04(actor_index);
        func_801A7CA4_78DF94(actor_index);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8284_78E574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8380_78E670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8428_78E718.s")

#ifdef NONMATCHING
u8 func_801A8780_78EA70(u16* arg0) {
    u16 c;

    c = *arg0;
    if ((s32) c < ALPHA_EN3_LOWER_A) {
        return 6U;
    }
    if (c & 0x8000) {
        return 0U;
    }
    return D_801AF606_7958F6[c];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8780_78EA70.s")
#endif

u16 func_801A87C0_78EAB0(s32 arg0) {
    u16 value;
    s32 next = arg0;

    arg0 = next;
    arg0 += 2;
    value = func_801A8780_78EA70(next, arg0);
    return value + func_801A8780_78EA70(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8800_78EAF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A8D38_78F028.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A913C_78F42C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A92D8_78F5C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9440_78F730.s")

void func_801A9508_78F7F8(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9510_78F800.s")

void func_801A9690_78F980(s32 arg0) {
}

void func_801A9698_78F988(u16 actor_index) {
    gActors[actor_index].flags = 0;
}

void func_801A96CC_78F9BC(s32 arg0) {
}

void func_801A96D4_78F9C4(s32 arg0) {
}

void func_801A96DC_78F9CC(u16 actor_index) {
    u8 table_index;

    table_index = gActors[gActors[actor_index].var_158].var_154 & 0xFF;
    D_801AF758_795A48[table_index](actor_index);
}

void func_801A9768_78FA58(u16 actor_index) {
    u8 table_index;

    table_index = (gActors[gActors[actor_index].var_158].var_154 & 0xFF00) >> 8;
    D_801AF778_795A68[table_index](actor_index);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A97FC_78FAEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A99E4_78FCD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9A6C_78FD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9C24_78FF14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9DD4_7900C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801A9FF0_7902E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA108_7903F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA208_7904F8.s")

void func_801AA2A4_790594(u16 actor_index){
    if (gActors[actor_index].pfn_190 != NULL){
        gActors[actor_index].pfn_190(actor_index);
    }
}

void func_801AA2FC_7905EC(s32 arg0, s32 arg1) {
    gFestivalData.unk_9A = 0;
}

void func_801AA310_790600(s32 arg0, s32 arg1){
    u16 index;
    FestivalStruct* p;
    u8* n;

    p = &gFestivalData;
    n = p->eventsPlayed;
    for (index = 0; index<10; index++){
        n[index] = FALSE;
    }
    p->eventClearCount = 0;
    p->pointsWhite = 0;
    p->pointsRed = 0;
    gLetterboxMode = LETTERBOX_HORIZONTAL;
}

void func_801AA368_790658(void) {
}

void func_801AA370_790660(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA378_790668.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA42C_79071C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AA480_790770.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAB78_790E68.s")

void func_801AAFC4_7912B4(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AAFCC_7912BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB14C_79143C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB1EC_7914DC.s")

void func_801AB3EC_7916DC(u16 actor_index, u16* arg1) {
    gActors[0x33].posX.whole = arg1[gActors[actor_index].unk_170 * 3] - gActors[actor_index].unk_180 + 0x30;
    gActors[0x33].posY.whole = arg1[gActors[actor_index].unk_170 * 3 + 1];
    gActors[0x33].flags |= 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB474_791764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB5B4_7918A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB610_791900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB6B4_7919A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB710_791A00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AB7A0_791A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABA40_791D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABAE4_791DD4.s")

void func_801ABB44_791E34(u16 actor_index, u16 arg1) {
    gStageCinemaState = 0;
    D_800D28F0 = D_801AF7C6_795AB6[arg1 * 2];
    D_800D28E4 = 0x62;
}

void func_801ABB80_791E70(u16 actor_index) {
    gFestivalData.currentEvent = D_801AF79C_795A8C[actor_index * 3];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABBAC_791E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABC8C_791F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABDA8_792098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ABE24_792114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC0F8_7923E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC13C_79242C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC250_792540.s")

void func_801AC360_792650(u16 actor_index) {
    Actor* actorP;

    actorP=&gActors[0x3a];
    actorP->actorType = 0x1A08;
    func_8001E2D0(0x3A);
    actorP->flags |= ACTOR_FLAG_FREEZE_POS;
    actorP->posX.whole = 0;
    actorP->posY.whole = 0;
    actorP->unk_178 = (s32)D_801AFA24_795D14;
}

void func_801AC3C0_7926B0(u16 actor_index, u16 arg1) {
    gActors[actor_index].actorType = 0x1A07;
    func_8001E2D0(actor_index);
    gActors[actor_index].graphicFlags = ACTOR_GFLAG_UNK11;
    gActors[actor_index].flags = ACTOR_FLAG_FREEZE_POS | ACTOR_FLAG_ACTIVE;
    gActors[actor_index].posZ.whole = 0x80;
    gActors[actor_index].var_150 = arg1;
    gActors[actor_index].unk_164 = 0x40;
}

void func_801AC448_792738(u16 actor_index) {
    Actor* actorP;
    
    actorP =&gActors[0x32];
    actorP->actorType = 0;
    func_8001E2D0(0x32);
    actorP->graphicFlags = 0x800;
    actorP->flags = 0x2003;
    actorP->graphicIndex = 0x81C;
    actorP->posX.whole = 0;
    actorP->posY.whole = -0x22;
    actorP->posZ.whole = -1;
    actorP->unk_188 = 0x60;
    actorP->hitboxBY0 = 0x12;
    actorP->hitboxBY1 = -0x12;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;

    actorP =&gActors[0x34];
    actorP->actorType = 0;
    func_8001E2D0(0x34);
    actorP->flags = 0x2002;
    actorP->graphicIndex = 0;
    actorP->posX.whole = -0x2C;
    actorP->posY.whole = -0x38;
    actorP->posZ.whole = 0x60;
    actorP->hitboxBY0 = 0x10;
    actorP->hitboxBY1 = -0x10;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;
    
    actorP =&gActors[0x35];
    actorP->actorType = 0;
    func_8001E2D0(0x35);
    actorP->flags = 0x2002;
    actorP->graphicIndex = 0;
    actorP->posX.whole = 0x2C;
    actorP->posY.whole = -0x38;
    actorP->posZ.whole = 0x60;
    actorP->hitboxBY0 = 0x10;
    actorP->hitboxBY1 = -0x10;
    actorP->hitboxBX0 = -0x14;
    actorP->hitboxBX1 = 0x14;

    actorP =&gActors[0x33];
    actorP->actorType = 0x1A00;
    func_8001E2D0(0x33);
    actorP->posX.whole = 0;
    actorP->posY.whole = 0x48;
    actorP->posZ.whole = -1;
    actorP->timer_110 = -1.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC624_792914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC698_792988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AC760_792A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACB58_792E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACC90_792F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACD80_793070.s")

void func_801ACEE8_7931D8(u16 actor_index) {
    Actor* actorP;
    
    actorP =&gActors[60];
    func_801AC3C0_7926B0(60, D_801AF7C4_795AB4[gFestivalData.currentEvent * 2]);
    actorP->posX.whole = 0;
    actorP->posY.whole = 0x20;
    actorP->unk_164 = 0x280A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ACF40_793230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD0AC_79339C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD37C_79366C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD4F4_7937E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD628_793918.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD658_793948.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD71C_793A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD840_793B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AD9B0_793CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801ADE64_794154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE0DC_7943CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE5A0_794890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE5C8_7948B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE804_794AF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE8B4_794BA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AE8DC_794BCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEA60_794D50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB10_794E00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB3C_794E2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEB68_794E58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEBD4_794EC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEC44_794F34.s")

void func_801AECA0_794F90(s32 arg0) {
}

void func_801AECA8_794F98(s32 arg0) {
}

void func_801AECB0_794FA0(s32 arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AECB8_794FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AED30_795020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AED88_795078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AEE00_7950F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF024_795314.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF10C_7953FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF1EC_7954DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_2/overlay_78CB60/78CBF0/func_801AF480_795770.s")
