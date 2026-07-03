#include "common.h"

#define OVERLAY0_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY0_DISPATCH_TABLE_VRAM)
#define OVERLAY1_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY1_DISPATCH_TABLE_VRAM)
#define OVERLAY2_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY2_DISPATCH_TABLE_VRAM)

void func_8005D630(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[3](arg0, 0);
}

void func_8005D664(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[4](arg0, arg1);
}

void func_8005D6A0(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, arg1);
}

void func_8005D6DC(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[6](arg0, arg1);
}

void func_8005D718(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[11](arg0, 0);
}

void func_8005D74C(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[12](arg0, 0);
}

void func_8005D780(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, arg1);
}

void func_8005D7BC(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[6](arg0, arg1);
}

void func_8005D7F8(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[7](arg0, 0);
}

void func_8005D82C(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[7](arg0, 0);
}

void func_8005D860(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, 0);
}

void func_8005D894(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[3](arg0, arg1);
}

void func_8005D8D0(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[4](arg0, arg1);
}

void func_8005D90C(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[24](arg0, arg1);
}

void func_8005D948(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[25](arg0, arg1);
}

void func_8005D984(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[26](arg0, 0);
}

void func_8005D9B8(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[27](arg0, 0);
}

void func_8005D9EC(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[28](arg0, 0);
}

void func_8005DA20(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[15](arg0, arg1);
}

void func_8005DA5C(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[25](arg0, arg1);
}

void func_8005DA98(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[17](arg0, 0);
}

void func_8005DACC(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[18](arg0, 0);
}

void func_8005DB00(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[19](arg0, 0);
}

void func_8005DB34(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[20](arg0, 0);
}

void func_8005DB68(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[21](arg0, 0);
}

void func_8005DB9C(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[22](arg0, 0);
}

void func_8005DBD0(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[23](arg0, 0);
}

void func_8005DC04(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[24](arg0, 0);
}

void func_8005DC38(void) {
    OVERLAY2_DISPATCH_ACTOR2[25](0, 0);
}

void func_8005DC64(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[26](arg0, 0);
}

void func_8005DC98(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[27](arg0, 0);
}

void func_8005DCCC(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[28](arg0, 0);
}

void func_8005DD00(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[29](arg0, 0);
}

void func_8005DD34(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[30](arg0, 0);
}

void func_8005DD68(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[31](arg0, 0);
}

void func_8005DD9C(void) {
    OVERLAY2_DISPATCH_ACTOR2[32](0, 0);
}

void func_8005DDC8(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[8](arg0, 0);
}

void func_8005DDFC(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[10](arg0, 0);
}
