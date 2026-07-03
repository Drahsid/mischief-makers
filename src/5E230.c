#include "common.h"

#define OVERLAY0_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY0_DISPATCH_TABLE_VRAM)
#define OVERLAY1_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY1_DISPATCH_TABLE_VRAM)
#define OVERLAY2_DISPATCH_ACTOR2 ((Actor2Func*)OVERLAY2_DISPATCH_TABLE_VRAM)

void OverlayABI_Slot1_fn3_u16(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[3](arg0, 0);
}

void OverlayABI_Slot1_fn4_u16_u16_0(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[4](arg0, arg1);
}

void OverlayABI_Slot1_fn5_u16_u16_0(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, arg1);
}

void OverlayABI_Slot1_fn6_u16_u16_0(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[6](arg0, arg1);
}

void OverlayABI_Slot0_fn11_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[11](arg0, 0);
}

void OverlayABI_Slot0_fn12_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[12](arg0, 0);
}

void OverlayABI_Slot1_fn5_u16_u16_1(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, arg1);
}

void OverlayABI_Slot1_fn6_u16_u16_1(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[6](arg0, arg1);
}

void OverlayABI_Slot1_fn7_u16_0(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[7](arg0, 0);
}

void OverlayABI_Slot1_fn7_u16_1(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[7](arg0, 0);
}

void OverlayABI_Slot1_fn5_u16(u16 arg0) {
    OVERLAY1_DISPATCH_ACTOR2[5](arg0, 0);
}

void OverlayABI_Slot1_fn3_u16_u16(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[3](arg0, arg1);
}

void OverlayABI_Slot1_fn4_u16_u16_1(u16 arg0, u16 arg1) {
    OVERLAY1_DISPATCH_ACTOR2[4](arg0, arg1);
}

void OverlayABI_Slot0_fn24_u16_u16(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[24](arg0, arg1);
}

void OverlayABI_Slot0_fn25_u16_u16_0(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[25](arg0, arg1);
}

void OverlayABI_Slot0_fn26_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[26](arg0, 0);
}

void OverlayABI_Slot0_fn27_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[27](arg0, 0);
}

void OverlayABI_Slot0_fn28_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[28](arg0, 0);
}

void OverlayABI_Slot0_fn15_u16_u16(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[15](arg0, arg1);
}

void OverlayABI_Slot0_fn25_u16_u16_1(u16 arg0, u16 arg1) {
    OVERLAY0_DISPATCH_ACTOR2[25](arg0, arg1);
}

void OverlayABI_Slot2_fn17_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[17](arg0, 0);
}

void OverlayABI_Slot2_fn18_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[18](arg0, 0);
}

void OverlayABI_Slot2_fn19_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[19](arg0, 0);
}

void OverlayABI_Slot2_fn20_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[20](arg0, 0);
}

void OverlayABI_Slot2_fn21_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[21](arg0, 0);
}

void OverlayABI_Slot2_fn22_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[22](arg0, 0);
}

void OverlayABI_Slot2_fn23_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[23](arg0, 0);
}

void OverlayABI_Slot2_fn24_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[24](arg0, 0);
}

void OverlayABI_Slot2_fn25_void(void) {
    OVERLAY2_DISPATCH_ACTOR2[25](0, 0);
}

void OverlayABI_Slot2_fn26_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[26](arg0, 0);
}

void OverlayABI_Slot2_fn27_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[27](arg0, 0);
}

void OverlayABI_Slot2_fn28_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[28](arg0, 0);
}

void OverlayABI_Slot2_fn29_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[29](arg0, 0);
}

void OverlayABI_Slot2_fn30_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[30](arg0, 0);
}

void OverlayABI_Slot2_fn31_u16(u16 arg0) {
    OVERLAY2_DISPATCH_ACTOR2[31](arg0, 0);
}

void OverlayABI_Slot2_fn32_void(void) {
    OVERLAY2_DISPATCH_ACTOR2[32](0, 0);
}

void OverlayABI_Slot0_fn8_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[8](arg0, 0);
}

void OverlayABI_Slot0_fn10_u16(u16 arg0) {
    OVERLAY0_DISPATCH_ACTOR2[10](arg0, 0);
}
