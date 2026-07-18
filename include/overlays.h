#ifndef OVERLAYS_H
#define OVERLAYS_H

#include <PR/ultratypes.h>

#define OVERLAY0_DISPATCH_TABLE_VRAM (0x80192000)
#define OVERLAY0_OBJECT_VRAM         (0x80192100)
#define OVERLAY1_DISPATCH_TABLE_VRAM (0x8019B000)
#define OVERLAY1_OBJECT_VRAM         (0x8019B100)
#define OVERLAY2_DISPATCH_TABLE_VRAM (0x801A6800)
#define OVERLAY2_OBJECT_VRAM         (0x801A6900)
#define OVERLAY3_DISPATCH_TABLE_VRAM (0x801B0800)
#define OVERLAY3_OBJECT_VRAM         (0x801B0900)
#define OVERLAY4_DISPATCH_TABLE_VRAM (0x801B9800)
#define OVERLAY4_OBJECT_VRAM         (0x801B9900)

void OverlayABI_Slot0_fn8_u16(u16 arg0);
void OverlayABI_Slot0_fn10_u16(u16 arg0);
void OverlayABI_Slot0_fn11_u16(u16 arg0);
void OverlayABI_Slot0_fn12_u16(u16 arg0);
void OverlayABI_Slot0_fn15_u16_u16(u16 arg0, u16 arg1);
void OverlayABI_Slot0_fn24_u16_u16(u16 arg0, u16 arg1);
void OverlayABI_Slot0_fn25_u16_u16_0(u16 arg0, u16 arg1);
void OverlayABI_Slot0_fn25_u16_u16_1(u16 arg0, u16 arg1);
void OverlayABI_Slot0_fn26_u16(u16 arg0);
void OverlayABI_Slot0_fn27_u16(u16 arg0);
void OverlayABI_Slot0_fn28_u16(u16 arg0);

void OverlayABI_Slot1_fn3_u16_u16(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn3_u16(u16 arg0);
void OverlayABI_Slot1_fn4_u16_u16_0(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn4_u16_u16_1(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn5_u16_u16_0(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn5_u16_u16_1(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn5_u16(u16 arg0);
void OverlayABI_Slot1_fn6_u16_u16_0(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn6_u16_u16_1(u16 arg0, u16 arg1);
void OverlayABI_Slot1_fn7_u16_0(u16 arg0);
void OverlayABI_Slot1_fn7_u16_1(u16 arg0);

void OverlayABI_Slot2_fn17_u16(u16 arg0);
void OverlayABI_Slot2_fn18_u16(u16 arg0);
void OverlayABI_Slot2_fn19_u16(u16 arg0);
void OverlayABI_Slot2_fn20_u16(u16 arg0);
void OverlayABI_Slot2_fn21_u16(u16 arg0);
void OverlayABI_Slot2_fn22_u16(u16 arg0);
void OverlayABI_Slot2_fn23_u16(u16 arg0);
void OverlayABI_Slot2_fn24_u16(u16 arg0);
void OverlayABI_Slot2_fn25_void(void);
void OverlayABI_Slot2_fn26_u16(u16 arg0);
void OverlayABI_Slot2_fn27_u16(u16 arg0);
void OverlayABI_Slot2_fn28_u16(u16 arg0);
void OverlayABI_Slot2_fn29_u16(u16 arg0);
void OverlayABI_Slot2_fn30_u16(u16 arg0);
void OverlayABI_Slot2_fn31_u16(u16 arg0);
void OverlayABI_Slot2_fn32_void(void);

#endif // OVERLAYS_H
