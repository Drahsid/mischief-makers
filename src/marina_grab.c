#include "boot.h"
#include "overlays.h"
#include "marina.h"
#include "1F1E0.h"
#include "marina_grab.h"
#include "marina_hit.h"
#include "marina_effect.h"

// states when Marina is grabbing/holding/throwing/shake-shaking something

// .bss
extern u16 D_801373D8;
extern s16 D_801373EE;
extern s8 D_801373F3;

// forward declarations
void MarinaGrab_Noop(u16 actor_0, u16 actor_1);
void func_8005278C(u16 actor_0, u16 actor_1);
void MarinaGrab_Type4(u16 actor_0, u16 actor_1);
void func_8005396C(u16 actor_0, u16 actor_1);
void MarinaGrab_Type6(u16 actor_0, u16 actor_1);
void MarinaGrab_Type7(u16 actor_0, u16 actor_1);
void MarinaGrab_Hurt(u16 actor_0, u16 actor_1);
void MarinaGrab_Type13(u16 actor_0, u16 actor_1);
void func_8005498C(u16 actor_0, u16 actor_1);
void MarinaGrab_Type20(u16 actor_0, u16 actor_1);
void MarinaGrab_Type21(u16 actor_0, u16 actor_1);
void MarinaThrow_Noop(u16 actor_0, u16 actor_1);
void func_80055538(u16 actor_0, u16 actor_1);
void MarinaThrow_Type3(u16 actor_0, u16 actor_1);
void MarinaThrow_Type4(u16 actor_0, u16 actor_1);
void MarinaThrow_Type5(u16 actor_0, u16 actor_1);
void MarinaThrow_Type6(u16 actor_0, u16 actor_1);
void MarinaThrow_Type7(u16 actor_0, u16 actor_1);
void func_800569AC(u16 actor_0, u16 actor_1);
void func_80056CCC(u16 actor_0, u16 actor_1);
void MarinaHit_Type1(u16 actor_0, u16 actor_1);
void func_80058A38(u16 actor_0, u16 actor_1);
void func_80058AE0(u16 actor_0, u16 actor_1);
void MarinaHit_Boom(u16 actor_0, u16 actor_1);
void MarinaHit_Shock(u16 actor_0, u16 actor_1);
void MarinaHit_Type15(u16 actor_0, u16 actor_1);
void MarinaHit_Type17(u16 actor_0, u16 actor_1);
void MarinaHit_Type18(u16 actor_0, u16 actor_1);
void MarinaHit_Type19(u16 actor_0, u16 actor_1);
void MarinaHit_Type22(u16 actor_0, u16 actor_1);

Actor2Func gMarinaGrabTable[] = {
    MarinaGrab_Noop,                 // GRABTYPE_0
    func_8005278C,                   // GRABTYPE_1
    func_8005278C,                   // GRABTYPE_2
    func_8005278C,                   // GRABTYPE_3
    MarinaGrab_Type4,                // GRABTYPE_4
    func_8005396C,                   // GRABTYPE_5
    MarinaGrab_Type6,                // GRABTYPE_6
    MarinaGrab_Type7,                // GRABTYPE_7
    func_8005396C,                   // GRABTYPE_8
    MarinaGrab_Noop,                 // GRABTYPE_9
    OverlayABI_Slot0_fn24_u16_u16,   // GRABTYPE_10
    OverlayABI_Slot1_fn4_u16_u16_0,  // GRABTYPE_11
    MarinaGrab_Hurt,                 // GRABTYPE_HURT
    MarinaGrab_Type13,               // GRABTYPE_13
    OverlayABI_Slot1_fn5_u16_u16_1,  // GRABTYPE_14
    OverlayABI_Slot1_fn3_u16_u16,    // GRABTYPE_15
    func_8005498C,                   // GRABTYPE_16
    func_8005498C,                   // GRABTYPE_17
    OverlayABI_Slot0_fn15_u16_u16,   // GRABTYPE_18
    OverlayABI_Slot0_fn25_u16_u16_1, // GRABTYPE_19
    MarinaGrab_Type20,               // GRABTYPE_20
    MarinaGrab_Type21,               // GRABTYPE_21
    func_8005278C,                   // GRABTYPE_22
    MarinaGrab_Noop                  // GRABTYPE_23
};

Actor2Func gMarinaThrowTable[] = {
    MarinaThrow_Noop,                // GRABTYPE_0
    func_80055538,                   // GRABTYPE_1
    func_80055538,                   // GRABTYPE_2
    MarinaThrow_Type3,               // GRABTYPE_3
    MarinaThrow_Type4,               // GRABTYPE_4
    MarinaThrow_Type5,               // GRABTYPE_5
    MarinaThrow_Type6,               // GRABTYPE_6
    MarinaThrow_Type7,               // GRABTYPE_7
    func_800569AC,                   // GRABTYPE_8
    MarinaThrow_Noop,                // GRABTYPE_9
    OverlayABI_Slot0_fn25_u16_u16_0, // GRABTYPE_10
    OverlayABI_Slot1_fn5_u16_u16_0,  // GRABTYPE_11
    MarinaThrow_Noop,                // GRABTYPE_HURT
    MarinaThrow_Noop,                // GRABTYPE_13
    OverlayABI_Slot1_fn6_u16_u16_1,  // GRABTYPE_14
    OverlayABI_Slot1_fn4_u16_u16_1,  // GRABTYPE_15
    MarinaThrow_Noop,                // GRABTYPE_16
    MarinaThrow_Noop,                // GRABTYPE_17
    func_800569AC,                   // GRABTYPE_18
    MarinaThrow_Noop,                // GRABTYPE_19
    func_80056CCC,                   // GRABTYPE_20
    func_80056CCC,                   // GRABTYPE_21
    func_80055538,                   // GRABTYPE_22
    MarinaThrow_Noop                 // GRABTYPE_23
};

Actor2Func gMarinaHitTable[] = {
    MarinaHit_Noop,                 // HITTYPE_0
    MarinaHit_Type1,                // HITTYPE_1
    func_80058A38,                  // HITTYPE_2
    func_80058A38,                  // HITTYPE_3
    func_80058A38,                  // HITTYPE_4
    func_80058A38,                  // HITTYPE_5
    func_80058AE0,                  // HITTYPE_6
    func_80058AE0,                  // HITTYPE_7
    func_80058AE0,                  // HITTYPE_8
    MarinaHit_Boom,                 // HITTYPE_BOOM_9
    MarinaHit_Boom,                 // HITTYPE_BOOM_10
    MarinaHit_Boom,                 // HITTYPE_BOOM_11
    MarinaHit_Shock,                // HITTYPE_SHOCK_12
    MarinaHit_Shock,                // HITTYPE_SHOCK_13
    MarinaHit_Shock,                // HITTYPE_SHOCK_14
    MarinaHit_Type15,               // HITTYPE_15
    OverlayABI_Slot1_fn6_u16_u16_0, // HITTYPE_16
    MarinaHit_Type17,               // HITTYPE_17
    MarinaHit_Type18,               // HITTYPE_18
    MarinaHit_Type19,               // HITTYPE_19
    MarinaHit_Noop,                 // HITTYPE_20
    MarinaHit_Noop,                 // HITTYPE_21
    MarinaHit_Type22,               // HITTYPE_22
    MarinaHit_Noop,                 // HITTYPE_23
};

ActorFunc gMarinaEffectTable[] = {
    MarinaEffect_Noop,
    MarinaEffect_Dash,
    MarinaEffect_Type2,
    MarinaEffect_Burn,
    MarinaEffect_Noop,
    MarinaEffect_Noop,
    MarinaEffect_Noop,
    MarinaEffect_Noop,
    MarinaEffect_Noop,
    MarinaEffect_Noop,
    NULL, // file break?
    NULL
};

s8 D_800D4000[][4] = {
    { 0xF6, 0x0A, 0x12, 0xF2 },
    { 0xF6, 0x0A, 0x0C, 0xF2 },
    { 0xF4, 0x0C, 0x0E, 0xF2 },
    { 0xF4, 0x0C, 0x02, 0xF2 },
    { 0xF6, 0x0A, 0x12, 0x02 },
    { 0xFA, 0x06, 0x00, 0xF2 },
    { 0xF8, 0x08, 0x08, 0xF8 },
};

s8 D_800D401C[] = {
    0x00, 0x10, 0x12, 0xF2,
    0x05, 0x16, 0x12, 0xF4,
    0x07, 0x1A, 0x12, 0xF6,
    0x09, 0x22, 0x12, 0xF8,
    0x0A, 0x2A, 0x12, 0xFA,
};

s8 D_800D4030[] = {
    0xF6, 0x12, 0x16, 0xF8,
    0xF6, 0x11, 0x1A, 0xFC,
    0xF6, 0x10, 0x1E, 0x00,
    0xF6, 0x0F, 0x22, 0x04,
    0xF6, 0x0E, 0x2A, 0x08,
};

s8 D_800D4044[] = {
    0xF6, 0x12, 0x08, 0xF0,
    0xF6, 0x11, 0x04, 0xEE,
    0xF6, 0x10, 0x00, 0xEA,
    0xF6, 0x0F, 0xFC, 0xE6,
    0xF6, 0x0E, 0xF8, 0xE2,
};

s8 D_800D4058[] = {
    0x00, 0x10, 0x12, 0xF2,
    0x05, 0x16, 0x12, 0xF4,
    0x08, 0x1A, 0x12, 0xF6,
    0x09, 0x22, 0x12, 0xF8,
    0x0A, 0x2A, 0x12, 0xFA,
};

s8 D_800D406C[] = {
    0xF6, 0x12, 0x16, 0xF8,
    0xF6, 0x11, 0x1A, 0xFC,
    0xF6, 0x10, 0x1E, 0x00,
    0xF6, 0x0F, 0x22, 0x04,
    0xF6, 0x0E, 0x2A, 0x08,
};

s8 D_800D4080[] = {
    0xF6, 0x12, 0x08, 0xF0,
    0xF6, 0x11, 0x04, 0xEE,
    0xF6, 0x10, 0x00, 0xEA,
    0xF6, 0x0F, 0xFC, 0xE6,
    0xF6, 0x0E, 0xF8, 0xE2
};

s8* D_800D4094[] = {
    D_800D401C,
    D_800D4030,
    D_800D4044,
    D_800D4058,
    D_800D406C,
    D_800D4080
};

s8 D_800D40AC[] = {
    0x15, 0x0D, 0x16, 0x0C,
    0x0E, 0x07, 0xFA, 0x05,
    0xF2, 0x04, 0xF2, 0x03,
    0xFC, 0x06, 0x08, 0x08,
    0x10, 0x09, 0x00, 0x00
};

s8 D_800D40C0[] = {
    0x00, 0x1A, 0x01, 0x1A,
    0x02, 0x1A, 0x03, 0x1A,
    0x03, 0x1A, 0x04, 0x1A,
    0x04, 0x1A, 0x05, 0x1A,
    0x05, 0x1A, 0x06, 0x1A,
    0x06, 0x1A, 0x07, 0x1A,
    0x08, 0x1A, 0x00, 0x00
};

s8 D_800D40DC[] = {
    0x0E, 0x08, 0x0E, 0x08,
    0x10, 0x04, 0x0D, 0xFD,
    0x0A, 0xFA, 0x00, 0x00
};

s8 D_800D40E8[] = {
    0xE8, 0x01, 0xEF, 0x09,
    0xF0, 0x0E, 0xF0, 0x0E,
    0xF0, 0x0F, 0xF1, 0x0F,
    0xF6, 0x10, 0x05, 0x10
};

s8 D_800D40F8[] = {
    0xFE, 0x0A, 0xF8, 0x0E,
    0xF1, 0x0E, 0xF0, 0x0F,
    0xEE, 0x10, 0xEF, 0x12,
    0xF2, 0x14, 0xF5, 0x18,
    0xFF, 0x19, 0x0A, 0x10
};

s8* D_800D410C[] = {
    D_800D40AC,
    D_800D40C0,
    D_800D40DC,
    D_800D40E8,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D40F8
};

s16 D_800D4130[] = { 0x12, 0x6 };
s16 D_800D4134[] = { 0xFFFF, 0xFFF2 };
s16 D_800D4138[] = { 0xA, 0xFFF6 };
s16 D_800D413C[] = {
    0x0007, 0xFFF8,
    0x001B, 0x0012,
    0xFFF8, 0xFFEA
};

s8 D_800D4148[] = {
    4, 4, 4, 4,
    4, 4, 4, 4,
    4, 4, 4, 4,
    4, 4, 4, 4
};
s8 D_800D4158[] = { 0xF8, 0xF9, 0x00, 0x00 };
s8 D_800D415C[] = { 0xF8, 0xF6, 0xF9, 0xFE };
s8 D_800D4160[] = { 0xF8, 0xF7, 0xF9, 0xFF };
s8 D_800D4164[] = {
    0xFF, 0xFE, 0x01, 0x04,
    0x05, 0x00, 0x00, 0x00,
};
s8 D_800D416C[] = {
    0x05, 0x04, 0x03, 0x01,
    0xFF, 0x00, 0x00, 0x00,
};
s8 D_800D4174[] = {
    0xFF, 0x0C, 0x10, 0x0F,
    0x0C, 0x08, 0x02, 0xFD,
    0xF8, 0xF9, 0x00, 0x00
};

s8 D_800D4180[] = { 0xFE, 0xF9, 0xF6, 0x00 };

s8* D_800D4184[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D4180,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D4180,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D4148,
    NULL,
    NULL,
    D_800D4158,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D415C,
    D_800D4160,
    NULL,
    D_800D415C,
    D_800D4160,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D4164,
    D_800D416C,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    D_800D4174
};

u16 D_800D431C[] = {
    0x5801, 0x0003,
    0x5802, 0x0003,
    0x5803, 0x0003,
    0x5804, 0x0003,
    0x5805, 0x0003,
    0x5806, 0x0003,
    0x5807, 0x0003,
    0x5808, 0x0003,
    0x5809, 0x0003,
    0x580A, 0x0003,
    0x580B, 0x0003,
    0x580C, 0x0003,
    0xFFF4, 0x0000
};

u16 D_800D4350[] = {
    0x581D, 0x0003,
    0x581E, 0x0003,
    0x581F, 0x0003,
    0x5820, 0x0003,
    0x5821, 0x0003,
    0x5822, 0x0003,
    0x5823, 0x0003,
    0x5824, 0x0003,
    0x5825, 0x0003,
    0x5826, 0x0003,
    0x5827, 0x0003,
    0x5828, 0x0003,
    0xFFF4, 0x0000,
};

u16 D_800D4384[] = {
    0x5829, 0x0002,
    0x582A, 0x0002,
    0x582B, 0x0002,
    0x582C, 0x000A,
    0x582D, 0x0003,
    0x582E, 0x0004,
    0x582F, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D43A4[] = {
    0x5830, 0x0002,
    0x5831, 0x0002,
    0x5832, 0x0002,
    0x5833, 0x000A,
    0x5834, 0x0003,
    0x5835, 0x0004,
    0x5836, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D43C4[] = {
    0x5837, 0x0002,
    0x5838, 0x0002,
    0x5839, 0x0002,
    0x583A, 0x000A,
    0x583B, 0x0003,
    0x583C, 0x0004,
    0x583D, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D43E4[] = {
    0x583E, 0x0002,
    0x583F, 0x0002,
    0x5840, 0x0002,
    0x5841, 0x000A,
    0x5842, 0x0003,
    0x5843, 0x0004,
    0x5844, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4404[] = {
    0x5845, 0x0002,
    0x5846, 0x0002,
    0x5847, 0x0002,
    0x5848, 0x000A,
    0x5849, 0x0003,
    0x584A, 0x0004,
    0x584B, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4424[] = {
    0x584C, 0x0002,
    0x584D, 0x0002,
    0x584E, 0x0002,
    0x584F, 0x000A,
    0x5850, 0x0003,
    0x5851, 0x0004,
    0x5852, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4444[] = {
    0x5853, 0x0002,
    0x5854, 0x0002,
    0x5855, 0x0002,
    0x5856, 0x000A,
    0x5857, 0x0003,
    0x5858, 0x0004,
    0x5859, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4464[] = {
    0x585A, 0x0002,
    0x585B, 0x0002,
    0x585C, 0x0002,
    0x585D, 0x000A,
    0x585E, 0x0003,
    0x585F, 0x0004,
    0x5860, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4484[] = {
    0x5865, 0x0001,
    0x5866, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4490[] = {
    0x5867, 0x0004,
    0x5868, 0x0004,
    0x5869, 0x0002,
    0x586A, 0x0002,
    0x586B, 0x0003,
    0x0000, 0x0000,
};

u16 D_800D44A8[] = {
    0x586C, 0x0004,
    0x586D, 0x0003,
    0x586E, 0x0003,
    0x586F, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D44BC[] = {
    0x5870, 0x0002,
    0x5871, 0x0004,
    0x5872, 0x0002,
    0x5873, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D44D0[] = {
    0x5878, 0x0003,
    0x5879, 0x0004,
    0x587A, 0x0005,
    0x587B, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D44E4[] = {
    0x587C, 0x0005,
    0x587D, 0x0004,
    0x587E, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D44F4[] = {
    0x587F, 0x0003,
    0x5880, 0x0004,
    0x5881, 0x0005,
    0x5882, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4508[] = {
    0x5883, 0x0005,
    0x5884, 0x0004,
    0x5885, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4518[] = {
    0x58A6, 0x0003,
    0x58A7, 0x0002,
    0x58A8, 0x0002,
    0x58A9, 0x0003,
    0x0000, 0x0000,
};

u16 D_800D452C[] = {
    0x58AA, 0x0004,
    0x58AB, 0x0003,
    0x58AC, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D453C[] = {
    0x58AA, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4544[] = {
    0x58AD, 0x0004,
    0x58AE, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4550[] = {
    0x58AF, 0x0002,
    0x58B0, 0x0005,
    0x58B1, 0x0004,
    0x58B2, 0x0005,
    0x58B3, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4568[] = {
    0x58B4, 0x0002,
    0x58B5, 0x0002,
    0x58B6, 0x0002,
    0x58B7, 0x0002,
    0x58B8, 0x0006,
    0x0000, 0x0000,
};

u16 D_800D4580[] = {
    0x5AD4, 0x0004,
    0x5AD5, 0x0004,
    0x5AD6, 0x0004,
    0x5AD7, 0x0004,
    0x5AD8, 0x0004,
    0x5AD9, 0x0004,
    0x5ADA, 0x0004,
    0x5ADB, 0x0004,
    0xFFF8, 0x0000,
};

u16 D_800D45A4[] = {
    0x5908, 0x0002,
    0x5909, 0x0002,
    0x590A, 0x0002,
    0x590B, 0x0002,
    0x590C, 0x0002,
    0x590D, 0x0002,
    0x590E, 0x0002,
    0x590F, 0x0002,
    0x5910, 0x0002,
    0x5911, 0x0002,
    0x5912, 0x0002,
    0x5913, 0x0002,
    0x5914, 0x0002,
    0x5915, 0x0002,
    0x5916, 0x0002,
    0x5917, 0x0002,
    0xFFF0, 0x0000,
};

u16 D_800D45E8[] = {
    0x5918, 0x0001,
    0x5919, 0x0001,
    0x591A, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D45F8[] = {
    0x591B, 0x0003,
    0x591C, 0x0002,
    0x591D, 0x0004,
    0x591E, 0x0002,
    0x591F, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4610[] = {
    0x5920, 0x0004,
    0x5921, 0x0004,
    0x5922, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4620[] = {
    0x5923, 0x0002,
    0x5924, 0x0004,
    0x5925, 0x0003,
    0x5926, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4634[] = {
    0x596A, 0x0004,
    0x596B, 0x0004,
    0x5962, 0x0005,
    0x5963, 0x0004,
    0x5964, 0x0003,
    0x5965, 0x0003,
    0x5966, 0x0003,
    0x5967, 0x0003,
    0x5968, 0x0004,
    0x5969, 0x0005,
    0xFFF6, 0x0000,
    0x596C, 0x0002,
    0x596D, 0x0002,
    0x596E, 0x0004,
    0x596F, 0x0003,
    0x5970, 0x0002,
    0x5971, 0x0002,
    0x5972, 0x0002,
    0x5973, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4684[] = {
    0x5886, 0x0003,
    0x5887, 0x0003,
    0x5888, 0x0003,
    0x5889, 0x0003,
    0x588A, 0x0003,
    0x588B, 0x0003,
    0x588C, 0x0003,
    0x588D, 0x0003,
    0xFFF8, 0x0000,
};

u16 D_800D46A8[] = {
    0x588E, 0x0003,
    0x588F, 0x0003,
    0x5890, 0x0003,
    0x5891, 0x0003,
    0x5892, 0x0003,
    0x5893, 0x0003,
    0x5894, 0x0003,
    0x5895, 0x0003,
    0xFFF8, 0x0000,
};

u16 D_800D46CC[] = {
    0x58BF, 0x0003,
    0x58C0, 0x0002,
    0x58C1, 0x0003,
    0x58C2, 0x0004,
    0x58C3, 0x0006,
    0x0000, 0x0000,
};

u16 D_800D46E4[] = {
    0x58C9, 0x0003,
    0x58CA, 0x0002,
    0x58CB, 0x0003,
    0x58CC, 0x0004,
    0x58CD, 0x0006,
    0x0000, 0x0000,
};

u16 D_800D46FC[] = {
    0x5927, 0x0002,
    0x5928, 0x0002,
    0x5929, 0x0002,
    0x592A, 0x000A,
    0x592B, 0x0003,
    0x592C, 0x0004,
    0x592D, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D471C[] = {
    0x592E, 0x0002,
    0x592F, 0x0002,
    0x5930, 0x0002,
    0x5931, 0x000A,
    0x5932, 0x0003,
    0x5933, 0x0004,
    0x5934, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D473C[] = {
    0x5935, 0x0002,
    0x5936, 0x0002,
    0x5937, 0x0002,
    0x5938, 0x000A,
    0x5939, 0x0003,
    0x593A, 0x0004,
    0x593B, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D475C[] = {
    0x593C, 0x0002,
    0x593D, 0x0002,
    0x593E, 0x0002,
    0x593F, 0x000A,
    0x5940, 0x0003,
    0x5941, 0x0004,
    0x5942, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D477C[] = {
    0x5943, 0x0001,
    0x5944, 0x0001,
    0x5945, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D478C[] = {
    0x5946, 0x0003,
    0x5947, 0x0002,
    0x5948, 0x0004,
    0x5949, 0x0002,
    0x594A, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D47A4[] = {
    0x594B, 0x0004,
    0x594C, 0x0004,
    0x594D, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D47B4[] = {
    0x594E, 0x0002,
    0x594F, 0x0004,
    0x5950, 0x0003,
    0x5951, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D47C8[] = {
    0x5952, 0x0002,
    0x5953, 0x0002,
    0x5954, 0x0002,
    0x5955, 0x0002,
    0x5956, 0x0002,
    0x5957, 0x0002,
    0x5958, 0x0002,
    0x5959, 0x0002,
    0x595A, 0x0002,
    0x595B, 0x0002,
    0x595C, 0x0002,
    0x595D, 0x0002,
    0x595E, 0x0002,
    0x595F, 0x0002,
    0x5960, 0x0002,
    0x5961, 0x0002,
    0xFFF0, 0x0000,
    0x5985, 0x0002,
    0x5986, 0x0002,
    0x5987, 0x0002,
    0x5988, 0x0002,
    0x5989, 0x0004,
    0x598A, 0x0005,
    0x598B, 0x0002,
    0x598C, 0x0002,
    0x598D, 0x0002,
    0x598E, 0x0002,
    0x598F, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D483C[] = {
    0x5994, 0x0002,
    0x5995, 0x0002,
    0x5996, 0x0002,
    0x5997, 0x0002,
    0x5998, 0x0005,
    0x5999, 0x0004,
    0x599A, 0x0003,
    0x599B, 0x0002,
    0x599C, 0x0002,
    0x0000, 0x0000,
    0x59B3, 0x0003,
    0x59B4, 0x0002,
    0x59B5, 0x0006,
    0x59B6, 0x0005,
    0x59B7, 0x0004,
    0x59B8, 0x0003,
    0x59B9, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4884[] = {
    0x59BF, 0x0002,
    0x59C0, 0x0002,
    0x59C1, 0x0002,
    0x59C2, 0x0003,
    0x59C3, 0x0004,
    0x59C4, 0x0003,
    0x59C5, 0x0002,
    0x59C6, 0x0002,
    0x59C7, 0x0002,
    0x59C8, 0x0002,
    0x59C9, 0x0002,
    0x59CA, 0x0002,
    0x59CB, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D48BC[] = {
    0x59D2, 0x0002,
    0x59D3, 0x0002,
    0x59D4, 0x0002,
    0x59D5, 0x0002,
    0x59D6, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D48D4[] = {
    0x59DF, 0x0002,
    0x59E0, 0x0002,
    0x59E1, 0x0002,
    0x59E2, 0x0005,
    0x59E3, 0x0004,
    0x59E4, 0x0003,
    0x59E5, 0x0002,
    0x59E6, 0x0002,
    0x59E7, 0x0002,
    0x59E8, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4900[] = {
    0x59ED, 0x0002,
    0x59EE, 0x0002,
    0x59EF, 0x0002,
    0x59F0, 0x0005,
    0x59F1, 0x0004,
    0x59F2, 0x0003,
    0x59F3, 0x0002,
    0x59F4, 0x0002,
    0x59F5, 0x0002,
    0x59F6, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D492C[] = {
    0x59FB, 0x0002,
    0x59FC, 0x0002,
    0x59FD, 0x0002,
    0x59FE, 0x0004,
    0x59FF, 0x0003,
    0x5A00, 0x0002,
    0x5A01, 0x0002,
    0x5A02, 0x0002,
    0x5A03, 0x0002,
    0x5A04, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4958[] = {
    0x5A09, 0x0002,
    0x5A0A, 0x0002,
    0x5A0B, 0x0003,
    0x5A0C, 0x0005,
    0x5A0D, 0x0002,
    0x5A0E, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4974[] = {
    0x58B9, 0x0003,
    0x58BA, 0x0003,
    0x58BB, 0x0004,
    0x58BC, 0x0006,
    0x58BD, 0x0003,
    0x58BE, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4990[] = {
    0x58CE, 0x0005,
    0x58CF, 0x0004,
    0x58D0, 0x0003,
    0x58D1, 0x0003,
    0x58D2, 0x0005,
    0x58D3, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D49AC[] = {
    0x58C4, 0x0005,
    0x58C5, 0x0004,
    0x58C6, 0x0003,
    0x58C7, 0x0005,
    0x58C8, 0x0004,
    0x0000, 0x0000,
    0x5973, 0x0002,
    0x5974, 0x0007,
    0x5975, 0x0005,
    0x5976, 0x0003,
    0x0000, 0x0000,
    0x5990, 0x0008,
    0x5991, 0x0004,
    0x5992, 0x0003,
    0x5993, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D49EC[] = {
    0x599D, 0x0002,
    0x599E, 0x0002,
    0x599F, 0x0002,
    0x59A0, 0x0006,
    0x59A1, 0x0004,
    0x59A2, 0x0003,
    0x59A3, 0x0002,
    0x59A4, 0x0004,
    0x0000, 0x0000,
    0x59BA, 0x0002,
    0x59BB, 0x0008,
    0x59BC, 0x0006,
    0x59BD, 0x0004,
    0x59BE, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4A28[] = {
    0x59CC, 0x0002,
    0x59CD, 0x0008,
    0x59CE, 0x0005,
    0x59CF, 0x0004,
    0x59D0, 0x0003,
    0x59D1, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4A44[] = {
    0x59D7, 0x0002,
    0x59D8, 0x0002,
    0x59D9, 0x0002,
    0x59DA, 0x0002,
    0x59DB, 0x0008,
    0x59DC, 0x0005,
    0x59DD, 0x0004,
    0x59DE, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4A68[] = {
    0x59E9, 0x0008,
    0x59EA, 0x0005,
    0x59EB, 0x0004,
    0x59EC, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4A7C[] = {
    0x59F7, 0x0008,
    0x59F8, 0x0005,
    0x59F9, 0x0004,
    0x59FA, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4A90[] = {
    0x5A05, 0x0008,
    0x5A06, 0x0005,
    0x5A07, 0x0004,
    0x5A08, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4AA4[] = {
    0x5A0F, 0x0002,
    0x5A10, 0x0002,
    0x5A11, 0x0002,
    0x5A12, 0x0002,
    0x5A13, 0x0002,
    0x5A14, 0x0002,
    0x5A15, 0x0002,
    0x5A16, 0x0002,
    0x5A17, 0x0002,
    0x5A18, 0x0004,
    0x0000, 0x0000,
    0x5A09, 0x0002,
    0x5A0A, 0x0002,
    0x5A0B, 0x0002,
    0x5A0C, 0x0003,
    0x5A0D, 0x0003,
    0x5A0E, 0x0003,
    0x5A0F, 0x0003,
    0x5A10, 0x0002,
    0x5A11, 0x0002,
    0x5A12, 0x0002,
    0x5A13, 0x0002,
    0x5A14, 0x0002,
    0x5A15, 0x0002,
    0x5A16, 0x0002,
    0x5A17, 0x0002,
    0x5A18, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4B14[] = {
    0x5AB4, 0x0002,
    0x5AB5, 0x0002,
    0x5AB6, 0x0002,
    0x5AB7, 0x0002,
    0x5AB8, 0x0002,
    0x5AB9, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4B30[] = {
    0x5ABA, 0x0002,
    0x5ABB, 0x0003,
    0x5ABC, 0x0003,
    0x5ABD, 0x0003,
    0x5ABE, 0x0008,
    0x0000, 0x0000,
};

u16 D_800D4B48[] = {
    0x5861, 0x0001,
    0x5862, 0x0001,
    0x5863, 0x0001,
    0x5864, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4B5C[] = {
    0x5874, 0x0001,
    0x5875, 0x0001,
    0x5876, 0x0001,
    0x5877, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4B70[] = {
    0x5AE4, 0x0004,
    0x5AE5, 0x0004,
    0x5AE6, 0x0004,
    0x5AE7, 0x0004,
    0x5AE8, 0x0004,
    0x5AE9, 0x0004,
    0x5AEA, 0x0004,
    0x5AEB, 0x0004,
    0xFFF9, 0x0000,
};

u16 D_800D4B94[] = {
    0x5896, 0x0002,
    0x5897, 0x0002,
    0x5898, 0x0002,
    0x5899, 0x0002,
    0x589A, 0x0002,
    0x589B, 0x0002,
    0x589C, 0x0002,
    0x589D, 0x0002,
    0xFFF8, 0x0000,
};

u16 D_800D4BB8[] = {
    0x59AD, 0x0002,
    0x59AE, 0x0002,
    0x59AF, 0x0002,
    0x59B0, 0x0002,
    0x59B1, 0x0002,
    0x59B2, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4BD4[] = {
    0x589E, 0x0002,
    0x589F, 0x0002,
    0x58A0, 0x0002,
    0x58A1, 0x0002,
    0x58A2, 0x0002,
    0x58A3, 0x0002,
    0x58A4, 0x0002,
    0x58A5, 0x0002,
    0xFFF8, 0x0000,
};

u16 D_800D4BF8[] = {
    0x58D4, 0x0005,
    0x58D5, 0x0005,
    0x58D6, 0x0005,
    0x58D7, 0x0005,
    0x58D8, 0x0005,
    0x58D9, 0x0005,
    0x58DA, 0x0005,
    0x58DB, 0x0005,
    0xFFF8, 0x0000,
};

u16 D_800D4C1C[] = {
    0x58DC, 0x0002,
    0x58DD, 0x0002,
    0x58DE, 0x0002,
    0x58DF, 0x0003,
    0x0000, 0x0000,
};

u16 D_800D4C30[] = {
    0x58E0, 0x0004,
    0x58E1, 0x0003,
    0x58E2, 0x0003,
    0x58E3, 0x0002,
    0x58E4, 0x0002,
    0x58E5, 0x0002,
    0x58E6, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4C50[] = {
    0x58E7, 0x0007,
    0x58E8, 0x0005,
    0x58E9, 0x0003,
    0x58EA, 0x0004,
    0x58EB, 0x0006,
    0x58EC, 0x0004,
    0x58ED, 0x0003,
    0x58EE, 0x0005,
    0x58EF, 0x0007,
    0xFFF7, 0x0000,
};

u16 D_800D4C78[] = {
    0x58F0, 0x0001,
    0x58F1, 0x0001,
    0x58F2, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4C88[] = {
    0x58F3, 0x0002,
    0x58F4, 0x0002,
    0x58F5, 0x0002,
    0x58F6, 0x0002,
    0x58F7, 0x0002,
    0x58F8, 0x0002,
    0x58F9, 0x0002,
    0x58FA, 0x0002,
    0x58FB, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4CB0[] = {
    0x58FC, 0x0003,
    0x58FD, 0x0003,
    0x58FE, 0x0004,
    0x58FF, 0x0006,
    0x5900, 0x0004,
    0x5901, 0x0003,
    0x5902, 0x0003,
    0x5903, 0x0003,
    0x5904, 0x0004,
    0x5905, 0x0006,
    0x5906, 0x0004,
    0x5907, 0x0003,
    0xFFF4, 0x0000,
};

u16 D_800D4CE4[] = {
    0x59A5, 0x0004,
    0x59A6, 0x0003,
    0x59A7, 0x0002,
    0x59A8, 0x0002,
    0x59A9, 0x0002,
    0x59AA, 0x0002,
    0x59AB, 0x0002,
    0x59AC, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4D08[] = {
    0x5A19, 0x0002,
    0x5A1A, 0x0002,
    0x5A1B, 0x0002,
    0x5A1C, 0x0002,
    0x5A1D, 0x0008,
    0x0000, 0x0000,
};

u16 D_800D4D20[] = {
    0x5A1E, 0x0002,
    0x5A1F, 0x0002,
    0x5A20, 0x0002,
    0x5A21, 0x0008,
    0x0000, 0x0000,
};

u16 D_800D4D34[] = {
    0x5A22, 0x0004,
    0x5A23, 0x0004,
    0x5A24, 0x0004,
    0x5A25, 0x000A,
    0x0000, 0x0000,
};

u16 D_800D4D48[] = {
    0x5A26, 0x0002,
    0x5A27, 0x0002,
    0x5A28, 0x0002,
    0x5A29, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4D5C[] = {
    0x5A2A, 0x0002,
    0x5A2B, 0x0002,
    0x5A2C, 0x0002,
    0x5A2D, 0x0002,
    0x5A2E, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4D74[] = {
    0x5A2F, 0x0004,
    0x5A30, 0x0004,
    0x5A31, 0x0003,
    0x5A32, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4D88[] = {
    0x5A33, 0x0002,
    0x5A34, 0x0002,
    0x5A35, 0x0003,
    0x5A36, 0x0004,
    0x5A37, 0x0005,
    0x0000, 0x0000,
};

u16 D_800D4DA0[] = {
    0x5A37, 0x0002,
    0x5A38, 0x0004,
    0x5A39, 0x0003,
    0x5A3A, 0x0002,
    0x5A3B, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4DB8[] = {
    0x5A3C, 0x0001,
    0x5A3D, 0x0001,
    0x5A3E, 0x0001,
    0x5A3F, 0x0001,
    0x5A40, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4DD0[] = {
    0x5A41, 0x0001,
    0x5A42, 0x0001,
    0x5A43, 0x0001,
    0x5A44, 0x0001,
    0x5A45, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4DE8[] = {
    0x5A46, 0x0002,
    0x5A47, 0x0002,
    0x5A48, 0x0002,
    0x5A49, 0x0004,
    0x5A4A, 0x0005,
    0x5A4B, 0x0002,
    0x5A4C, 0x0003,
    0x5A4D, 0x0005,
    0x0000, 0x0000,
};

u16 D_800D4E0C[] = {
    0x5ABF, 0x0003,
    0x5AC0, 0x0002,
    0x5AC1, 0x0002,
    0x5AC2, 0x0003,
    0x5AC3, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D4E24[] = {
    0x5A53, 0x0002,
    0x5A54, 0x0002,
    0x5A55, 0x0002,
    0x5A56, 0x0002,
    0x5A57, 0x000A,
    0x0000, 0x0000,
};

u16 D_800D4E3C[] = {
    0x5AC4, 0x0001,
    0x5AC5, 0x0001,
    0x5AC6, 0x0001,
    0x5AC7, 0x0001,
    0x5AC8, 0x0002,
    0x5AC9, 0x0001,
    0x5ACA, 0x0002,
    0x5ACB, 0x0002,
    0x5ACC, 0x0002,
    0x5ACD, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4E68[] = {
    0x5ACE, 0x0003,
    0x5ACF, 0x0004,
    0x5AD0, 0x0001,
    0x5AD1, 0x0001,
    0x5AD2, 0x0001,
    0x5AD3, 0x0001,
    0x0000, 0x0000,
};

u16 D_800D4E84[] = {
    0x5A58, 0x0006,
    0x5A59, 0x0005,
    0x5A5A, 0x0004,
    0x5A5B, 0x0005,
    0x5A5C, 0x0006,
    0x5A5D, 0x0005,
    0x5A5E, 0x0004,
    0x5A5F, 0x0005,
    0xFFF8, 0x0000,
};

u16 D_800D4EA8[] = {
    0x5A96, 0x0006,
    0x5A97, 0x0005,
    0x5A98, 0x0004,
    0x5A99, 0x0005,
    0x5A9A, 0x0006,
    0x5A9B, 0x0005,
    0x5A9C, 0x0004,
    0x5A9D, 0x0005,
    0xFFF8, 0x0000,
};

u16 D_800D4ECC[] = {
    0x5A66, 0x0002,
    0x5A65, 0x0002,
    0x5A64, 0x0002,
    0x5A63, 0x0002,
    0x5A62, 0x0002,
    0x5A61, 0x0002,
    0x5A60, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4EEC[] = {
    0x5A60, 0x0002,
    0x5A61, 0x0002,
    0x5A62, 0x0002,
    0x5A63, 0x0002,
    0x5A64, 0x0002,
    0x5A65, 0x0002,
    0x5A66, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4F0C[] = {
    0x5A67, 0x0010,
    0x5A68, 0x0004,
    0x5A69, 0x0002,
    0x5A6A, 0x0004,
    0x5A6B, 0x0010,
    0x5A6C, 0x0002,
    0x5A6D, 0x0002,
    0x5A6E, 0x0002,
    0x5A6F, 0x0002,
    0x5A70, 0x0002,
    0x5A71, 0x0002,
    0x5A72, 0x0002,
    0x5A73, 0x0002,
    0x5A74, 0x0003,
    0x5A75, 0x0008,
    0x5A76, 0x0005,
    0x5A77, 0x0004,
    0x5A78, 0x0003,
    0x5A79, 0x0003,
    0x5A7A, 0x0002,
    0x5A7B, 0x0002,
    0x5A7C, 0x0002,
    0x5A7D, 0x0010,
    0x0000, 0x0000,
};

u16 D_800D4F6C[] = {
    0x5ADC, 0x0004,
    0x5ADD, 0x0004,
    0x5ADE, 0x0004,
    0x5ADF, 0x0004,
    0x5AE0, 0x0004,
    0x5AE1, 0x0004,
    0x5AE2, 0x0004,
    0x5AE3, 0x0004,
    0xFFF8, 0x0000,
};

u16 D_800D4F90[] = {
    0x5AEC, 0x0004,
    0x5AED, 0x0004,
    0x5AEE, 0x0004,
    0x5AEF, 0x0004,
    0x5AF0, 0x0004,
    0x5AF1, 0x0004,
    0x5AF2, 0x0004,
    0x5AF3, 0x0004,
    0xFFF8, 0x0000,
    0x5A80, 0x0002,
    0x0000, 0x0000,
    0x5A81, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D4FC4[] = {
    0x5B0A, 0x0002,
    0x5B0B, 0x0002,
    0x5B0C, 0x0002,
    0x5B0D, 0x0003,
    0x5B0E, 0x0003,
    0x5B0F, 0x0004,
    0x5B10, 0x0005,
    0x5B11, 0x0004,
    0x5B12, 0x0004,
    0x5B13, 0x0003,
    0x5B14, 0x0002,
    0x5B15, 0x0002,
    0x5B16, 0x0002,
    0x5B17, 0x0002,
    0x5B18, 0x0002,
    0x5B19, 0x0003,
    0x5B1A, 0x0003,
    0x5B1B, 0x0004,
    0x5B1C, 0x0005,
    0x5B1D, 0x0004,
    0x5B1E, 0x0004,
    0x5B1F, 0x0003,
    0x5B20, 0x0002,
    0x5B21, 0x0002,
    0xFFE8, 0x0000,
};

u16 D_800D5028[] = {
    0x5A82, 0x0002,
    0x5A83, 0x0002,
    0x5A84, 0x0002,
    0x5A85, 0x0002,
    0x5A86, 0x0002,
    0x5A87, 0x0002,
    0x5A88, 0x0002,
    0x5A89, 0x0002,
    0x5A8A, 0x0002,
    0x5A8B, 0x0002,
    0x5A8C, 0x0002,
    0x5A8D, 0x0002,
    0x5A8E, 0x0002,
    0x5A8F, 0x0002,
    0x5A90, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5068[] = {
    0x5A91, 0x0002,
    0x5A92, 0x0002,
    0x5A93, 0x0002,
    0x5A94, 0x0002,
    0x5A95, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5080[] = {
    0x588D, 0x0003,
    0x588C, 0x0003,
    0x588B, 0x0003,
    0x588A, 0x0003,
    0x5889, 0x0003,
    0x5888, 0x0003,
    0x5887, 0x0003,
    0x5886, 0x0003,
    0xFFF8, 0x0000,
    0x5A6B, 0x0003,
    0x5A6A, 0x0002,
    0x5A69, 0x0003,
    0x5A68, 0x0004,
    0x5A67, 0x0005,
    0x0000, 0x0000,
};

u16 D_800D50BC[] = {
    0x5A9E, 0x0003,
    0x5A9F, 0x0003,
    0x5AA0, 0x0003,
    0x5AA1, 0x0003,
    0x5AA2, 0x0003,
    0x5AA3, 0x0003,
    0x5AA4, 0x0003,
    0x5AA5, 0x0003,
    0x5AA6, 0x0003,
    0x5AA7, 0x0003,
    0x5AA8, 0x0003,
    0x5AA9, 0x0003,
    0xFFF4, 0x0000,
};

u16 D_800D50F0[] = {
    0x5AAE, 0x0002,
    0x5AAD, 0x0002,
    0x5AAC, 0x0002,
    0x5AAB, 0x0002,
    0x5AAA, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5108[] = {
    0x5AAA, 0x0002,
    0x5AAB, 0x0002,
    0x5AAC, 0x0002,
    0x5AAD, 0x0002,
    0x5AAE, 0x0002,
    0x0000, 0x0000,
    0x5AAF, 0x0002,
    0x5AB0, 0x0002,
    0x5AB1, 0x0002,
    0x5AB2, 0x0002,
    0x5AB3, 0x0002,
    0x0000, 0x0000,
    0x5AB3, 0x0002,
    0x5AB2, 0x0002,
    0x5AB1, 0x0002,
    0x5AB0, 0x0002,
    0x5AAF, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5150[] = {
    0x5A22, 0x0001,
    0x5A23, 0x0001,
    0x5A24, 0x0001,
    0x5A25, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5164[] = {
    0x597E, 0x0001,
    0x597F, 0x0001,
    0x5980, 0x0001,
    0x5981, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5178[] = {
    0x598D, 0x0001,
    0x598E, 0x0001,
    0x598F, 0x0001,
    0x5990, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D518C[] = {
    0x59C8, 0x0001,
    0x59CA, 0x0001,
    0x59CB, 0x0001,
    0x59CC, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D51A0[] = {
    0x59D3, 0x0001,
    0x59D6, 0x0001,
    0x59D8, 0x0001,
    0x59DA, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D51B4[] = {
    0x5A52, 0x0001,
    0x5A51, 0x0001,
    0x5A50, 0x0001,
    0x5A4E, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D51C8[] = {
    0x5A25, 0x0001,
    0x5A24, 0x0001,
    0x5A23, 0x0001,
    0x5A21, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D51DC[] = {
    0x599C, 0x0001,
    0x599D, 0x0001,
    0x599E, 0x0001,
    0x59A0, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D51F0[] = {
    0x5A77, 0x0002,
    0x5A78, 0x0002,
    0x5A79, 0x0002,
    0x5A7A, 0x0002,
    0x5A7B, 0x0002,
    0x5A7C, 0x0010,
    0x0000, 0x0000,
};

u16 D_800D520C[] = {
    0x586E, 0x0003,
    0x586F, 0x0003,
    0x5870, 0x0004,
    0x5871, 0x0005,
    0x5872, 0x0006,
    0xFFFB, 0x0000,
};

u16 D_800D5224[] = {
    0x5918, 0x0005,
    0x5919, 0x0004,
    0x591A, 0x0005,
    0x5919, 0x0004,
    0xFFFC, 0x0000,
};

u16 D_800D5238[] = {
    0x5943, 0x0005,
    0x5944, 0x0004,
    0x5945, 0x0005,
    0x5944, 0x0004,
    0xFFFC, 0x0000,
};

u16 D_800D524C[] = {
    0x5A7B, 0x0004,
    0x5A7A, 0x0004,
    0x5A79, 0x0004,
    0x5A78, 0x0004,
    0x5A77, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D5264[] = {
    0x5A25, 0x0002,
    0x5A26, 0x0003,
    0x5A27, 0x0003,
    0x5A28, 0x0004,
    0x5A29, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D527C[] = {
    0x5981, 0x0004,
    0x5982, 0x0004,
    0x5983, 0x0005,
    0x5984, 0x0003,
    0x0000, 0x0000,
};

u16 D_800D5290[] = {
    0x5990, 0x0004,
    0x5991, 0x0004,
    0x5992, 0x0005,
    0x5993, 0x0003,
    0x0000, 0x0000,
};

u16 D_800D52A4[] = {
    0x59CE, 0x0004,
    0x59CF, 0x0004,
    0x59D0, 0x0004,
    0x59D1, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D52B8[] = {
    0x59DB, 0x0004,
    0x59DC, 0x0004,
    0x59DD, 0x0004,
    0x59DE, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D52CC[] = {
    0x5A4F, 0x0005,
    0x5A50, 0x0005,
    0x5A51, 0x0004,
    0x597C, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D52E0[] = {
    0x5A21, 0x0005,
    0x5A20, 0x0005,
    0x5A1F, 0x0002,
    0x5A1A, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D52F4[] = {
    0x59A0, 0x0004,
    0x59A1, 0x0004,
    0x59A2, 0x0004,
    0x59A3, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D5308[] = {
    0x5977, 0x0002,
    0x5978, 0x0002,
    0x5979, 0x0002,
    0x597A, 0x0002,
    0x597B, 0x0002,
    0x597C, 0x0002,
    0x597D, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5328[] = {
    0x58CD, 0x0002,
    0x58CE, 0x0002,
    0x58CF, 0x0002,
    0x58D0, 0x0002,
    0x58D1, 0x0002,
    0x58D2, 0x0002,
    0x58D3, 0x0002,
    0x0000, 0x0000,
};

u16 D_800D5348[] = {
    0x580D, 0x0003,
    0x580E, 0x0002,
    0x580F, 0x0002,
    0x5810, 0x0002,
    0x5811, 0x0002,
    0x5812, 0x0002,
    0x5813, 0x0002,
    0x5814, 0x0002,
    0x5815, 0x0003,
    0x5816, 0x0002,
    0x5817, 0x0002,
    0x5818, 0x0002,
    0x5819, 0x0002,
    0x581A, 0x0002,
    0x581B, 0x0002,
    0x581C, 0x0002,
    0xFFF0, 0x0000,
};

u16 D_800D538C[] = {
    0x5878, 0x0005,
    0x5879, 0x0006,
    0x587A, 0x0008,
    0x5879, 0x0006,
    0x5878, 0x0005,
    0x587F, 0x0005,
    0x5880, 0x0006,
    0x5881, 0x0008,
    0x5880, 0x0006,
    0x587F, 0x0005,
    0xFFF6, 0x0000,
};

u16 D_800D53B8[] = {
    0x58A7, 0x0006,
    0x58A8, 0x0006,
    0x58A9, 0x0006,
    0x58AA, 0x0006,
    0x58AE, 0x0006,
    0x0000, 0x0000,
};

u16 D_800D53D0[] = {
    0x5B17, 0x0001,
    0x5B18, 0x0001,
    0x5B19, 0x0001,
    0x5B1A, 0x0002,
    0x5B1B, 0x0003,
    0x5B1C, 0x0003,
    0x5B1D, 0x0002,
    0x5B1E, 0x0002,
    0x5B1F, 0x0001,
    0x5B20, 0x0001,
    0x5B21, 0x0001,
    0x5B0A, 0x0001,
    0x5B0B, 0x0001,
    0x5B0C, 0x0001,
    0x5B0D, 0x0001,
    0x5B0E, 0x0002,
    0x5B0F, 0x0003,
    0x5B10, 0x0003,
    0x5A75, 0x0005,
    0x5A76, 0x0004,
    0x5A77, 0x0003,
    0x5A78, 0x0003,
    0x5A79, 0x0003,
    0x5A7A, 0x0003,
    0x5A7B, 0x0003,
    0x5A7C, 0x0004,
    0x5A7D, 0x0002,
    0x5A7E, 0x0002,
    0x5A7F, 0x0010,
    0x0000, 0x0000,
};

u16 D_800D5448[] = {
    0x5926, 0x0004,
    0x5925, 0x0003,
    0x5924, 0x0004,
    0x0000, 0x0000,
};

u16 D_800D5458[] = {
    0x5A19, 0x0002,
    0x5A1A, 0x0003,
    0x5A1B, 0x0004,
    0x5A1C, 0x0005,
    0x5A1D, 0x0006,
    0x0000, 0x0000,
};

u16 D_800D5470[] = {
    0x5A1D, 0x0002,
    0x5A1C, 0x0002,
    0x5A1B, 0x0002,
    0x5A1A, 0x0002,
    0x5A19, 0x0002,
    0x0000, 0x0000,
    0x5B02, 0x0004,
    0x5B03, 0x0004,
    0x5B04, 0x0004,
    0x5B05, 0x0004,
    0x5B06, 0x0004,
    0x5B07, 0x0004,
    0x5B08, 0x0004,
    0x5B09, 0x0004,
    0xFFF8, 0x0000,
    0x5AF4, 0x0002,
    0x5AF5, 0x0003,
    0x5AF6, 0x0004,
    0x5AF7, 0x0005,
    0x5AF8, 0x0003,
    0x5AF9, 0x0002,
    0x5AFA, 0x0001,
    0x5AFB, 0x0001,
    0x5AFC, 0x0001,
    0x0000, 0x0000,
    0x5AFD, 0x0010,
    0x5AFE, 0x0005,
    0x5AFF, 0x0004,
    0x5B00, 0x0003,
    0x5B01, 0x0002,
    0x0000, 0x0000,
};

u16* D_800D54EC[] = {
    NULL,
    D_800D431C,
    D_800D4E84,
    D_800D4EA8,
    D_800D520C,
    D_800D520C,
    D_800D4FC4,
    D_800D50BC,
    D_800D4580,
    D_800D50F0,
    D_800D5108,
    D_800D4B70,
    D_800D5448,
    D_800D4F6C,
    D_800D50F0,
    D_800D5108,
    D_800D4F90,
    D_800D5448,
    D_800D5224,
    D_800D5224,
    D_800D5238,
    D_800D5238,
    D_800D4BD4,
    D_800D4B48,
    D_800D4DB8,
    D_800D4DD0,
    D_800D4B5C,
    D_800D4DB8,
    D_800D4DD0,
    D_800D4350,
    D_800D5348,
    D_800D45A4,
    D_800D47C8,
    D_800D4484,
    D_800D45E8,
    D_800D477C,
    D_800D4490,
    D_800D45F8,
    D_800D478C,
    D_800D44A8,
    D_800D4610,
    D_800D47A4,
    D_800D44BC,
    D_800D4620,
    D_800D47B4,
    D_800D44BC,
    D_800D4620,
    D_800D47B4,
    D_800D4568,
    D_800D46E4,
    D_800D4C1C,
    D_800D46CC,
    D_800D4D5C,
    D_800D4D88,
    D_800D4974,
    D_800D4990,
    D_800D4C30,
    D_800D49AC,
    D_800D4D74,
    D_800D4DA0,
    D_800D4974,
    D_800D4990,
    D_800D4C30,
    D_800D49AC,
    D_800D4D74,
    D_800D4DA0,
    D_800D4C50,
    D_800D4CB0,
    D_800D4BF8,
    D_800D4C78,
    D_800D4C88,
    D_800D4384,
    D_800D43A4,
    D_800D43C4,
    D_800D4424,
    D_800D4444,
    D_800D4464,
    D_800D43E4,
    D_800D4404,
    D_800D46FC,
    D_800D477C,
    D_800D4DE8,
    D_800D471C,
    D_800D47B4,
    D_800D4DE8,
    D_800D473C,
    D_800D478C,
    D_800D4DE8,
    D_800D475C,
    D_800D47B4,
    D_800D4DE8,
    D_800D4B14,
    D_800D4B30,
    D_800D4E0C,
    D_800D4E24,
    D_800D4E3C,
    D_800D4E68,
    D_800D46A8,
    D_800D4684,
    D_800D4684,
    D_800D5080,
    D_800D4634,
    D_800D483C,
    D_800D4884,
    D_800D48BC,
    D_800D4CE4,
    D_800D48D4,
    D_800D4958,
    D_800D492C,
    D_800D4900,
    D_800D49EC,
    D_800D4A28,
    D_800D4A44,
    D_800D4BB8,
    D_800D4A68,
    D_800D4AA4,
    D_800D4A90,
    D_800D4A7C,
    D_800D518C,
    D_800D5178,
    D_800D5150,
    D_800D5164,
    D_800D51A0,
    D_800D51C8,
    D_800D51DC,
    D_800D51B4,
    D_800D52A4,
    D_800D5290,
    D_800D5264,
    D_800D527C,
    D_800D52B8,
    D_800D52E0,
    D_800D52F4,
    D_800D52CC,
    D_800D5308,
    D_800D5328,
    D_800D4D08,
    D_800D4D20,
    D_800D4D34,
    D_800D4D48,
    D_800D5028,
    D_800D5068,
    D_800D46A8,
    D_800D4684,
    D_800D44D0,
    D_800D44E4,
    D_800D44F4,
    D_800D4508,
    D_800D4518,
    D_800D4518,
    D_800D452C,
    D_800D452C,
    D_800D453C,
    D_800D453C,
    D_800D4544,
    D_800D4544,
    D_800D4550,
    D_800D4550,
    D_800D4B94,
    D_800D4ECC,
    D_800D4EEC,
    D_800D4F0C,
    D_800D51F0,
    D_800D524C,
    D_800D538C,
    D_800D53B8,
    D_800D53D0,
    D_800D5458,
    D_800D5470,
    D_800D431C
};

s32 gMarinaActionSpeeds[] = {
    FIXED_UNIT(1.0/4), // MARINAMOVE_0
    FIXED_UNIT(2.0),   // MARINAMOVE_WALKTARGET
    FIXED_UNIT(2.0),   // MARINAMOVE_2
    FIXED_UNIT(1.0),   // MARINAMOVE_3
    FIXED_UNIT(0.5),   // MARINAMOVE_4
    FIXED_UNIT(3.5),   // MARINAMOVE_5
    FIXED_UNIT(3.5),   // MARINAMOVE_6
    FIXED_UNIT(3.5),   // MARINAMOVE_7
    FIXED_UNIT(2.5),   // MARINAMOVE_8
    FIXED_UNIT(0.15),  // MARINAMOVE_9
    FIXED_UNIT(5.0),   // MARINAMOVE_10
    FIXED_UNIT(5.0),   // MARINAMOVE_11
    FIXED_UNIT(5.0),   // MARINAMOVE_12
    FIXED_UNIT(5.0),   // MARINAMOVE_13
    FIXED_UNIT(5.0),   // MARINAMOVE_14
    FIXED_UNIT(3.0),   // MARINAMOVE_15
    FIXED_UNIT(3.0),   // MARINAMOVE_16
    FIXED_UNIT(3.0),   // MARINAMOVE_17
    FIXED_UNIT(2.5),   // MARINAMOVE_18
    FIXED_UNIT(0.375), // MARINAMOVE_19
    FIXED_UNIT(2.5),   // MARINAMOVE_20
    FIXED_UNIT(2.5),   // MARINAMOVE_21
    FIXED_UNIT(2.5),   // MARINAMOVE_22
    FIXED_UNIT(2.0),   // MARINAMOVE_23
    FIXED_UNIT(3.5),   // MARINAMOVE_24
    FIXED_UNIT(3.5),   // MARINAMOVE_25
    FIXED_UNIT(3.5),   // MARINAMOVE_26
    FIXED_UNIT(2.5),   // MARINAMOVE_27
    FIXED_UNIT(3.0),   // MARINAMOVE_28
    FIXED_UNIT(3.0),   // MARINAMOVE_29
    FIXED_UNIT(3.0),   // MARINAMOVE_30
    FIXED_UNIT(2.0)    // MARINAMOVE_31
};

s32 func_8004F2B0(u16 actor_index) {
    s32 pad;

    if (!(D_801370CE & gButton_B)) {
        return 0;
    }
    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    gActors[actor_index].unk_140_u8[0] = func_80048C28(0);
    if (!(D_801373D8 & ~0x80)) {
        return 1;
    }
    return 2;
}

s32 func_8004F35C(u16 actor_index, u32* arg1) {
    if (func_8005D418(actor_index) != 0) {
        gActors[actor_index].unk_12F_u8 = 0;
        Sound_PlaySfx(SFX_JUMP_00AD);
        return 1;
    }
    *arg1 += 1;
    if (!(*arg1 & 0x40000000)) {
        if ((*arg1 & 0x3FFFFFFF) >= 0x10) {
            if (func_8005D338(actor_index) == 0x6B) {
                Sound_PlaySfx(SFX_MARINA_YELL1);
            }
            else {
                Sound_PlaySfx(SFX_MARINA_YELL3);
            }
            *arg1 |= 0x40000000;
        }
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 0)) {
        return 0;
    }
    if (!(*arg1 & 0x80000000)) {
        if (!(D_801370CE & gButton_B)) {
            return 0;
        }
        *arg1 |= 0x80000000;
    }
    if (!(D_801370CC & gButton_B)) {
        return 0;
    }
    gActors[actor_index].unk_170_s8[0] = 0x7F;
    *arg1 += 4;
    return 0;
}

// detatch actor from marina
// @param actor0 Marina's index
// @param actor1 index of actor to release
void Marina_DropActor(u16 actor0, u16 actor1) {
    gActors[actor0].flags &= ~ACTOR_FLAG_ATTACHED;
    if (actor1 != 0xFFFF) {
        if (gActors[actor1].flags & ACTOR_FLAG_ACTIVE) {
            gActors[actor1].flags_098 &= ~ACTOR_FLAG3_GRAB;
        }
        if (actor0 == PLAYER_INDEX) {
            gActors[actor0].unk_140_u16[1] = gActors[actor0].parentIndex;
            gActors[actor0].unk_140_u8[1] = 30;
        }
    }
}

void func_8004F5B0(u16 actor_index) {
    switch (gActors[actor_index].unk_140_u16[1]) {
    case 0:
        gActors[actor_index].unk_140_u16[1] = 1;
        break;
    case 8:
        gActors[actor_index].unk_140_u16[1] = 2;
        break;
    default:
        gActors[actor_index].unk_140_u16[1] = 0;
        break;
    }
}

u16 func_8004F614(u16 actor_index, s32 arg1, s32 arg2, s16 arg3) {
    s32 sp34[5];
    u16 temp_s0;
    u16 index;
    s32 var_v0;

    temp_s0 = gActors[actor_index].parentIndex;
    index = gActors[actor_index].unk_140_u16[1];
    if (index > 2) {
        index = 0;
    }
    sp34[0] = 0x12;
    sp34[1] = D_800D413C[2 * index];
    sp34[2] = 1;
    sp34[4] = (intptr_t)PALETTE_8022D4E8;

    func_80059D88(actor_index, sp34, 0, 3.0f);
    gActors[actor_index].flags &= ~ACTOR_FLAG_ATTACHED;
    if (temp_s0 == 0xFFFF) {
        return temp_s0;
    }
    if (!(gActors[temp_s0].flags & ACTOR_FLAG_ACTIVE)) {
        return 0xFFFF;
    }
    Marina_DropActor(actor_index, temp_s0);
    gActors[temp_s0].flags_098 |= ACTOR_FLAG3_THROWN;
    gActors[temp_s0].hitByFlags = HITFLAG_7 | HITFLAG_6;
    gActors[temp_s0].hitByType = HITTYPE_25;
    gActors[temp_s0].pendingDamage = arg3;
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[temp_s0].unk_0F8.raw = arg1;
    }
    else {
        gActors[temp_s0].unk_0F8.raw = -arg1;
    }
    gActors[temp_s0].unk_0FC.raw = arg2;
    if (temp_s0 == 0) {
        gActors[temp_s0].unk_13C_s16[1] = arg3;
        var_v0 = func_8005C774(2);
        func_8005C520(var_v0 + 1, 6);
    }
    return temp_s0;
}

s32 func_8004F7D8(u16 actor_index) {
    u16 index;
    s32 temp_t5;
    s32 var_a0;
    s32 var_a1;
    s32 var_t0;
    s32 temp_a3;
    s32 temp_2;
    s32 sp28;
    s32 temp_3;

    index = gActors[actor_index].parentIndex;
    func_8002877C(index);
    gActors[actor_index].flags_098 |= gActors[index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    sp28 = gActors[index].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    if (Math_AbsS32_2(((gActors[index].posX.raw + TO_FIXED(gScreenPosCurrentX.whole)) - TO_FIXED(gScreenPosNextX.whole)) - gActors[index].unk_104) >= FIXED_UNIT(1.0)) {
        gActors[actor_index].posX.raw = ((gActors[actor_index].posX.raw + gActors[index].posX.raw + TO_FIXED(gScreenPosCurrentX.whole)) - gActors[index].unk_104) - TO_FIXED(gScreenPosNextX.whole);
    }
    var_a0 = TO_FIXED(gScreenPosCurrentY.whole);\
    var_a1 = TO_FIXED(gScreenPosNextY.whole);
    temp_2 = gActors[index].posY.raw;
    temp_3 = gActors[index].unk_108;
    if (((var_a1 + temp_3) != (temp_2 + var_a0)) && !(gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
        gActors[actor_index].posY.raw += ((temp_2 + var_a0) - temp_3) - var_a1;
    }
    gActors[index].unk_104 = gActors[actor_index].posX.raw;
    gActors[index].unk_108 = gActors[actor_index].posY.raw;
    gActors[index].unk_10C = gActors[actor_index].posZ.raw - FIXED_UNIT(1.0/4);
    temp_t5 = gActors[actor_index].unk_140_u16[1] * 2;
    var_a1 = D_800D4130[temp_t5];
    var_t0 = D_800D413C[temp_t5];
    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
        if ((var_a1 + gActors[index].hitboxBX0) < D_800D4130[temp_t5 + 1]) {
            var_a1 = D_800D4130[temp_t5 + 1] - gActors[index].hitboxBX0;
        }
    }
    else {
        var_a1 = -var_a1;
        if ((var_a1 + gActors[index].hitboxBX1) > -D_800D4130[temp_t5 + 1]) {
            var_a1 = -D_800D4130[temp_t5 + 1] - gActors[index].hitboxBX1;
        }
    }
    if ((var_t0 + gActors[index].hitboxBY1) < D_800D413C[temp_t5 + 1]) {
        var_t0 = D_800D413C[temp_t5 + 1] - gActors[index].hitboxBY1;
    }

    temp_a3 = FIXED_UNIT(4.0) - (func_8005D1B0(index) * FIXED_UNIT(1.0/4));
    var_a1 = TO_FIXED(var_a1);
    var_t0 = TO_FIXED(var_t0);
    if (temp_a3 >= Math_AbsS32_2(var_a1 - gPlayerData.unk_00[0].raw)) {
        gPlayerData.unk_00[0].raw = var_a1;
    }
    else if (gPlayerData.unk_00[0].raw < var_a1) {
        gPlayerData.unk_00[0].raw += temp_a3;
    }
    else {
        gPlayerData.unk_00[0].raw -= temp_a3;
    }

    if (temp_a3 >= Math_AbsS32_2(var_t0 - gPlayerData.unk_00[1].raw)) {
        gPlayerData.unk_00[1].raw = var_t0;
    }
    else if (gPlayerData.unk_00[1].raw < var_t0) {
        gPlayerData.unk_00[1].raw += temp_a3;
    }
    else {
        gPlayerData.unk_00[1].raw -= temp_a3;
    }

    var_a0 = gPlayerData.unk_00[0].raw;
    var_a1 = gPlayerData.unk_00[1].raw;
    gActors[index].unk_104 += var_a0;
    gActors[index].unk_108 += var_a1;
    return sp28;
}

void func_8004FB30(u16 actor_index, s32 index) {
    s32 temp_f16;
    s8* temp_v0;
    u16 actor_1;
    s8 temp;

    temp_v0 = D_800D410C[index];
    if (temp_v0 != NULL) {
        actor_1 = gActors[actor_index].parentIndex;
        gActors[actor_1].unk_104 = gActors[actor_index].posX.raw;
        gActors[actor_1].unk_108 = gActors[actor_index].posY.raw;
        temp_f16 = TO_FIXED(temp_v0[gActors[actor_index].unk_170_s8[1] * 2]);
        temp_f16 *= gActors->unk_120;
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_1].unk_104 += temp_f16;
        }
        else {
            gActors[actor_1].unk_104 -= temp_f16;
        }
        temp_f16 = TO_FIXED(temp_v0[gActors[actor_index].unk_170_s8[1] * 2 + 1]);
        temp_f16 *= gActors->unk_120;
        gActors[actor_1].unk_108 += temp_f16;
    }
}

s32 func_8004FC68(u16 actor_0, u16 actor_1) {
    s16 var_v0;
    s16 var_t0;

    var_v0 = D_800D4130[0];
    var_t0 = D_800D413C[0];
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        if ((var_v0 + gActors[actor_1].hitboxBX0) < D_800D4130[1]) {
            var_v0 = D_800D4130[1] - gActors[actor_1].hitboxBX0;
        }
        var_v0 += gActors[actor_1].hitboxBX1;
        if (gActors[actor_0].unk_140_u8[0] != 0) {
            var_v0 -= 2;
        }
    }
    else {
        var_v0 = -var_v0;
        if ((var_v0 + gActors[actor_1].hitboxBX1) > -D_800D4130[1]) {
            var_v0 = -D_800D4130[1] - gActors[actor_1].hitboxBX1;
        }
        var_v0 += gActors[actor_1].hitboxBX0;
        if (gActors[actor_0].unk_140_u8[0] != 0) {
            var_v0 += 2;
        }
    }
    if ((var_t0 + gActors[actor_1].hitboxBY1) < D_800D413C[1]) {
        var_t0 = D_800D413C[1] - gActors[actor_1].hitboxBY1;
    }
    var_t0 += gActors[actor_1].hitboxBY1;
    if (func_8001FCA0(actor_1, gActors[actor_0].posX.whole + var_v0, gActors[actor_0].posY.whole + var_t0) & 0x80) {
        return 1;
    }
    return 0;
}

// Marina's Shake-Shake state
void Marina_ShakeShake(u16 actor_index) {
    u16 index;

    func_8004F7D8(actor_index);
    index = gActors[actor_index].parentIndex;
    if (!(gPlayerData.flags & PLAYERDATA_UNK16) && (func_80049040(actor_index) != 0)) {
        func_8005D370(actor_index, 0x28);
        gActors[actor_index].state = MARINASTATE_26;
    }
    else {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].var_154 = 0;
            gActors[actor_index].unk_170 = 101;
            Sound_PlaySfx(SFX_MARINA_SHAKE);
            gActors[actor_index].stateUpper += 1;
        }
        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 7)) {
            Sound_PlaySfx(SFX_SHAKE_00C2);
        }
        if ((gPlayerData.unk_12 == 0) && (gPlayerData.unk_10 >= 5) && (gPlayerData.unk_10 < 0xC) && (gActors[actor_index].var_154 < 8)) {
            gActors[index].flags_098 |= ACTOR_FLAG3_SHAKE;
            gActors[actor_index].var_154 += 1;
        }
        gActors[actor_index].var_150 += gActors[actor_index].var_154;
        gActors[actor_index].unk_170_s8[0] += gPlayerData.unk_0C[1] / (1000 / ((gActiveFrames & 1) + 4));
        gActors[actor_index].var_150 = gActors[actor_index].var_150 % 4;
        if (func_8005D418(actor_index) != 0) {
            if (gActors[actor_index].var_154 != 0) {
                gActors[actor_index].var_154 -= 1;
            }
            func_8005D3D8(actor_index);
            if ((gPlayerData.unk_10 < 5) || (gPlayerData.unk_10 >= 0xC) || (gPlayerData.unk_12 >= 0xE)) {
                gActors[actor_index].unk_170_s8[1] = 0x7F;
                gActors[actor_index].state = MARINASTATE_IDLEHOLD;
            }
        }
    }
}

void Marina_IdleHoldingState(u16 actor_index) {
    u16 index;
    u16 var_a3;

    func_8004F7D8(actor_index);
    gActors[actor_index].unk_17C = 0;
    index = gActors[actor_index].parentIndex;
    if (((D_801373D8 & 0x20) || func_8004FC68(actor_index, index)) && gActors[index].grabType != GRABTYPE_22) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
        if (func_8005D1B0(index) != ACTOR0DF_0_2) {
            var_a3 = 0xB;
        }
        else {
            var_a3 = 0x10;
        }
        if ((func_8005D338(actor_index) == 8) || (func_8005D338(actor_index) == 0xD)) {
            if (func_8005D1B0(index) != ACTOR0DF_0_2) {
                var_a3 = 9;
            }
            else {
                var_a3 = 0xE;
            }
            func_8005D370(actor_index, var_a3);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        }
    }
    else {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        if (func_8005D1B0(index) != ACTOR0DF_0_2) {
            var_a3 = 8;
        }
        else {
            var_a3 = 0xD;
        }
        if ((func_8005D338(actor_index) == 0xB) || (func_8005D338(actor_index) == 0x10)) {
            if (func_8005D1B0(index) != ACTOR0DF_0_2) {
                var_a3 = 0xA;
            }
            else {
                var_a3 = 0xF;
            }
            func_8005D370(actor_index, var_a3);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        }
        if (D_801373D8 & 0x10) {
            gActors[actor_index].unk_17C = 1;
            if (func_8005D1B0(index) != ACTOR0DF_0_2) {
                var_a3 = 0xC;
            }
            else {
                var_a3 = 0x11;
            }
        }
    }

    if (gPlayerData.flags & PLAYERDATA_UNK16) {
        if ((gPlayerData.unk_12 == 0) && (gPlayerData.unk_11 < 0xE) && (gPlayerData.unk_10 >= 5) && (gPlayerData.unk_10 < 0xC) && (gActors[actor_index].unk_140_u16[1] == 0)) {
            gActors[actor_index].state = MARINASTATE_SHAKE;
        }
        else {
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
                if (func_8005D418(actor_index) != 0) {
                    gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
                }
            }
            if (!(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
                if (D_801373D8 & 0x80) {
                    gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
                }
                func_8005D370(actor_index, var_a3);
            }
        }
        return;
    }

    gActors[actor_index].unk_12C_u16[0] = 7;
    if ((gActors[actor_index].unk_0A0 & 7) == 7) {
        if (!(gActors[actor_index].unk_0A0 & 0x10)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_a3 = 0x12;
            }
            else {
                var_a3 = 0x13;
            }
            gActors[actor_index].velocityX.raw = FIXED_UNIT(-0.375);
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                var_a3 = 0x13;
            }
            else {
                var_a3 = 0x12;
            }
            gActors[actor_index].velocityX.raw = FIXED_UNIT(0.375);
        }
        if (gActors[actor_index].unk_140_u16[1] == 1) {
            var_a3 += 2;
        }
        if ((var_a3 != func_8005D338(actor_index)) && !(gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
            func_8005D370(actor_index, var_a3);
        }
    }
    if (gActors[actor_index].velocityX.raw != 0) {
        if ((D_801373D8 & 0x80) && (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(WALKTARGET))) {
            gActors[actor_index].state = MARINASTATE_10;
            return;
        }

        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
    }

    if (D_801373D8 & 0x80) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x19;
        }
        else {
            gActors[actor_index].unk_170 = 0x18;
        }
        gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
        if (D_801373D8 & 2) {
            gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
    }
    if (var_a3 != func_8005D338(actor_index)) {
        if (gActors[actor_index].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
            if (func_8005D418(actor_index) != 0) {
                gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
            }
        }
        else if (gActors[actor_index].velocityX.raw == 0) {
            func_8005D370(actor_index, var_a3);
        }
    }
}

void Marina_LandHoldingState(u16 actor_index) {
    u16 index;

    gActors[actor_index].unk_12C_u16[0] = 7;
    index = gActors[actor_index].parentIndex;
    func_8004F7D8(actor_index);
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
    if (gActors[actor_index].stateUpper == 0) {
        func_8005A4B0(actor_index, 1.0f);
        if (func_8005D1B0(index) != ACTOR0DF_0_2) {
            Sound_PlaySfx(SFX_LAND_00AC);
        }
        else { // ..so no difference?
            Sound_PlaySfx(SFX_LAND_00AC);
        }
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x2C;
        }
        else {
            gActors[actor_index].unk_170 = 0x2B;
        }
        gActors[actor_index].stateUpper += 1;
    }
    if (gActors[actor_index].unk_170_s8[1] == 1) {
        gActors[actor_index].unk_170_s8[0] = 0;
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].unk_170_s8[1] = 2;
        }
        else {
            gActors[actor_index].var_150 = gActors[actor_index].var_150 - 1;
        }
    }
    if (func_8005D418(actor_index) != 0) {
        gActors[actor_index].state = MARINASTATE_IDLEHOLD;
    }
}

void Marina_WalkHoldingState(u16 actor_index) {
    u16 index;
    s32 var_a1;

    gActors[actor_index].unk_12C_u16[0] = 7;
    func_8004F7D8(actor_index);
    var_a1 = MARINA_MOVE(WALKTARGET);
    if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
        var_a1 = -var_a1;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, var_a1, Math_AbsS32_2(var_a1) / 12);
    index = gActors[actor_index].parentIndex;
    if (((D_801373D8 & 0x20) || ((func_8004FC68(actor_index, index) != 0))) && (gActors[index].grabType != 0x16)) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
        if (func_8005D338(actor_index) != 0x20) {
            gActors[actor_index].unk_170_u16[1] = 0x20;
        }
    }
    else {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        if (func_8005D338(actor_index) != 0x1F) {
            gActors[actor_index].unk_170_u16[1] = 0x1F;
        }
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 8))) {
        Sound_PlaySfx(SFX_STEP_0053);
    }
    if (!(D_801373D8 & 3) || (D_801373D8 & 0x80)) {
        gActors[actor_index].state = MARINASTATE_IDLEHOLD;
    }
}

void func_800508F4(u16 actor_index) {
    gActors[actor_index].unk_12C_u16[0] = 7;
    func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper == 0) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x2F;
        }
        else {
            gActors[actor_index].unk_170 = 0x2E;
        }
        gActors[actor_index].stateUpper = 1;
    }
    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) * 2);
    if (gActors[actor_index].velocityX.raw != 0) {
        gActors[actor_index].unk_180_u8[3] = MARINAEFF_4;
    }
    else {
        gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
        gActors[actor_index].state = MARINASTATE_IDLEHOLD;
    }
}

void Marina_GroundDashHoldingState(u16 actor_index) {
    s16 var_a0;
    u16 sp2C;
    s32 sp28;
    s32 temp2;
    s32 temp;

    sp2C = gActors[actor_index].parentIndex;
    gActors[actor_index].unk_12C_u16[0] = 2;
    sp28 = func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper == 0) {
        Sound_PlaySfx(SFX_DASH_0027);
        gActors[actor_index].var_150 = 0x10;
        if (gPlayerData.unk_10 == 4) {
            if (!(sp28 & 8)) {
                temp = MARINA_MOVE(5);
                temp2 = MARINA_MOVE(9);
                gActors[actor_index].velocityX.raw = temp + (temp2 * (gPlayerData.unk_0C[1] / 100));
                if (MARINA_MOVE(10) < gActors[actor_index].velocityX.raw) {
                    gActors[actor_index].velocityX.raw = MARINA_MOVE(10);
                }
            }
            gActors[actor_index].stateUpper = 2;
            if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        if (gPlayerData.unk_10 == 12) {
            if (!(sp28 & 4)) {
                temp = MARINA_MOVE(5);
                temp2 = MARINA_MOVE(9);
                gActors[actor_index].velocityX.raw = -(temp + (temp2 * (gPlayerData.unk_0C[1] / 100)));
                if (gActors[actor_index].velocityX.raw < -MARINA_MOVE(10)) {
                    gActors[actor_index].velocityX.raw = -MARINA_MOVE(10);
                }
            }
            gActors[actor_index].stateUpper = 1;
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].stateUpper |= 0x80;
            }
        }
        gActors[actor_index].hitFlags = 0;
        gActors[actor_index].hitType = HITTYPE_21;
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 4;
        gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
        if (!(gActors[actor_index].stateUpper & 0x80)) {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
                if (gActors[actor_index].unk_140_u8[0] != 0) {
                    gActors[actor_index].hitboxAX1 = (gActors[actor_index].hitboxAX1 + gActors[sp2C].hitboxBX1) - gActors[sp2C].hitboxBX0;
                }
                gActors[actor_index].hitboxAX0 = 0;
            }
            else {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
                if (gActors[actor_index].unk_140_u8[0] != 0) {
                    gActors[actor_index].hitboxAX0 = (gActors[actor_index].hitboxAX0 + gActors[sp2C].hitboxBX0) - gActors[sp2C].hitboxBX1;
                }
            }
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 = 0x50;
            }
            else {
                gActors[actor_index].unk_170 = 0x4F;
            }
        }
        else {
            if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_index].hitboxAX1 = 0;
                gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0 - 1;
            }
            else {
                gActors[actor_index].hitboxAX0 = 0;
                gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1 + 1;
            }
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 = 0x53;
            }
            else {
                gActors[actor_index].unk_170 = 0x52;
            }
        }
        MarinaEffect_Set(actor_index, MARINAEFF_DASH);
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 2;
        gActors[actor_index].unk_180_u8[2] = (s8) gPlayerData.unk_10;
        gPlayerData.unk_12 = 100;
        gPlayerData.unk_13 = 1;
    }
    if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3))) {
        D_801370D2 = 0;
        Marina_SpawnAfterImage(actor_index);
    }
    if (D_801373D8 & 0x10) {
        gActors[actor_index].state = MARINASTATE_10;
        return;
    }
    gActors[actor_index].var_150--;
    if (gActors[actor_index].var_150 < 0xA) {
        gActors[actor_index].unk_12C_u16[0] |= 4;
    }
    if (gActors[actor_index].var_150 < 8) {
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0));
    }
    if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) >= FIXED_UNIT(3.0)) {
        temp2 = Math_AbsS32_2(gActors[actor_index].hitboxAX0);
        temp = Math_AbsS32_2(gActors[actor_index].hitboxAX1);
        if (temp2 < temp) {
            var_a0 = gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1 + 1;
        }
        else {
            var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0) - 1;
        }
        if (func_80012AB4(var_a0, gActors[actor_index].posY.whole) & 0x80) {
            gActors[actor_index].velocityX.raw = (s32) (-gActors[actor_index].velocityX.raw * 0.75);
            gActors[actor_index].stateUpper = 1;
            gActors[actor_index].stateLower = MARINASTATE_AIRDASHHOLD_19;
            return;
        }
        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
    }
    if (gActors[actor_index].var_150 == 0) {
        gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
        gActors[actor_index].flags |= ACTOR_FLAG_UNK6;
        gActors[actor_index].state = MARINASTATE_IDLEHOLD;
    }
}

void Marina_SlideDashHoldingState(u16 actor_index) {
    s32 step;
    s32 sp28;
    u32 orig_flags;
    s32 temp_v0;

    sp28 = func_8004F7D8(actor_index);
    if (gActors[actor_index].stateUpper < 2) {
        gActors[actor_index].unk_12E_u8 |= 0x80;
        orig_flags = gActors[actor_index].flags;
        temp_v0 = func_8004F2B0(actor_index);
        if (temp_v0 == 1) {
            gActors[actor_index].state = MARINASTATE_DROP;
            return;
        }
        else if (temp_v0 == 2) {
            gActors[actor_index].flags = orig_flags;
            gActors[actor_index].unk_140_u8[0] = 4;
            gActors[actor_index].state = MARINASTATE_39;
            return;
        }
    }
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        Sound_PlaySfx(SFX_DASH_00AE);
        Sound_PlaySfx(SFX_MARINA_YELL1);
        MarinaEffect_Set(actor_index, MARINAEFF_DASH);
        gActors[actor_index].damage = 0;
        gActors[actor_index].hitFlags = HITFLAG_0;
        gActors[actor_index].hitType = HITTYPE_22;
        gActors[actor_index].hitboxAY0 = D_800D4000[3][2] + gActors[gActors[actor_index].parentIndex].hitboxBY0;
        gActors[actor_index].hitboxAY1 = D_800D4000[2][3];
        if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_index].hitboxAX1 = D_800D4000[2][1] + gActors[gActors[actor_index].parentIndex].hitboxBX1;
            gActors[actor_index].hitboxAX0 = 0;
            if (!(sp28 & 8)) {
                gActors[actor_index].velocityX.raw = MARINA_MOVE(11);
            }
            gActors[actor_index].unk_180_u8[2] = 4;
        }
        else {
            gActors[actor_index].hitboxAX1 = 0;
            gActors[actor_index].hitboxAX0 = gActors[gActors[actor_index].parentIndex].hitboxBX0 - D_800D4000[2][1];
            if (!(sp28 & 4)) {
                gActors[actor_index].velocityX.raw = -MARINA_MOVE(11);
            }
            gActors[actor_index].unk_180_u8[2] = 12;
        }
        gActors[actor_index].unk_170 = 0x5D;
        gActors[actor_index].unk_17C = 2;
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
    }
    if ((gActors[actor_index].flags_098 & ACTOR_FLAG3_UNK0) || (gActors[actor_index].var_150 != 0)) {
        if (gActors[actor_index].var_150 == 0) {
            gActors[actor_index].unk_170_u16[1] |= 0x4000;
            gActors[actor_index].unk_104 = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_108 = gActors[actor_index].velocityY.raw;
            gActors[actor_index].velocityX.raw = 0;
            gActors[actor_index].velocityY.raw = 0;
        }
        gActors[actor_index].var_150++;
        if (gActors[actor_index].var_150 >= 5) {
            gActors[actor_index].unk_170_u16[1] &= 0xBFFF;
            gActors[actor_index].var_150 = 0;
            gActors[actor_index].velocityX.raw = gActors[actor_index].unk_104;
            gActors[actor_index].velocityY.raw = gActors[actor_index].unk_108;
        }
        else {
            return;
        }
    }
    gActors[actor_index].unk_0F8.raw = FIXED_UNIT(3.0);
    gActors[actor_index].unk_0FC.raw = FIXED_UNIT(3.0);
    if ((gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) && (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > FIXED_UNIT(1.0))) {
        gActors[actor_index].unk_180_u8[3] = MARINAEFF_4;
    }
    if (gActors[actor_index].stateUpper == 1) {
        if ((gActors[actor_index].unk_170_s8[0] == 0) && ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 2) || (gActors[actor_index].unk_170_s8[1] == 4))) {
            D_801370D2 = 0;
            Marina_SpawnAfterImage(actor_index);
        }
        step = MARINA_MOVE(0) / 8;
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_170 = 0x5E;
            gActors[actor_index].unk_17C_s8[1] = 3;
            gActors[actor_index].stateUpper = 2;
        }
        else {
            gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
        }
    }
    else if (gActors[actor_index].stateUpper == 2) {
        step = MARINA_MOVE(0);
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
        if (func_8005D418(actor_index) != 0) {
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 3;
            gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
            gActors[actor_index].state = MARINASTATE_IDLEHOLD;
        }
        if (func_80049040(actor_index) != 0) {
            gActors[actor_index].state = MARINASTATE_26;
        }
    }
}

// Marina states 18 and 19
void func_80051324(u16 actor_index) {
    s16 var_a0;
    s32 var_a3;
    u16 index;
    s32 pad2;

    index = gActors[actor_index].parentIndex;
    func_8004F7D8(actor_index);
    if (func_800491B8(actor_index, 0, -0xE) != 0) {
        gActors[actor_index].state = MARINASTATE_LANDHOLD;
    }
    else {
        if (gActors[actor_index].stateUpper == 0) {
            gActors[actor_index].unk_0F8.raw = gActors[actor_index].velocityX.raw;
            gActors[actor_index].unk_0FC.raw = gActors[actor_index].velocityY.raw;
            gActors[actor_index].var_150 = 0x10;
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD_19) {
                gActors[actor_index].var_150 = 0x20;
            }
            gActors[actor_index].var_158 = 0;
            gActors[actor_index].stateUpper = 1;
            switch (gPlayerData.unk_10) {
            case 0:
                if ((-MARINA_MOVE(28) * 0.25) <= gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(28) * 1.5;
                }
                else {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(28);
                }
                gActors[actor_index].var_150 = 0x18;
                gActors[actor_index].var_158 = MARINA_MOVE(19) * 0.358;
                gActors[actor_index].unk_170 = 0x55;
                break;
            case 8:
                if ((MARINA_MOVE(28) + FIXED_UNIT(-12.0)) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw -= MARINA_MOVE(28);
                }
                if ((-MARINA_MOVE(28) * 2) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = -MARINA_MOVE(28) * 2;
                }
                gActors[actor_index].unk_170 = 0x58;
                break;
            default:
                gActors[actor_index].damage = 0;
                gActors[actor_index].hitFlags = 0;
                gActors[actor_index].hitType = HITTYPE_21;
                gActors[actor_index].hitboxAY0 = gActors[actor_index].hitboxBY0 - 4;
                gActors[actor_index].hitboxAY1 = gActors[actor_index].hitboxBY1 + 8;
                if (!(gPlayerData.unk_10 & 8)) {
                    gActors[actor_index].hitboxAX0 = 0;
                    gActors[actor_index].hitboxAX1 = gActors[actor_index].hitboxBX1;
                    if (gActors[actor_index].velocityX.raw < MARINA_MOVE(28)) {
                        gActors[actor_index].velocityX.raw = MARINA_MOVE(28);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        if (gActors[actor_index].unk_140_u8[0] != 0) {
                            gActors[actor_index].hitboxAX1 = (gActors[actor_index].hitboxAX1 + gActors[index].hitboxBX1) - gActors[index].hitboxBX0;
                        }
                        gActors[actor_index].unk_170 = 0x4F;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x52;
                    }
                }
                else {
                    gActors[actor_index].hitboxAX1 = 0;
                    gActors[actor_index].hitboxAX0 = gActors[actor_index].hitboxBX0;
                    if (-MARINA_MOVE(28) < gActors[actor_index].velocityX.raw) {
                        gActors[actor_index].velocityX.raw = -MARINA_MOVE(28);
                    }
                    if (!(gActors[actor_index].flags & ACTOR_FLAG_FLIPPED)) {
                        gActors[actor_index].unk_170 = 0x52;
                    }
                    else {
                        if (gActors[actor_index].unk_140_u8[0] != 0) {
                            gActors[actor_index].hitboxAX0 = (gActors[actor_index].hitboxAX0 + gActors[index].hitboxBX0) - gActors[index].hitboxBX1;
                        }
                        gActors[actor_index].unk_170 = 0x4F;
                    }
                }
                if ((MARINA_MOVE(15) * 1.5) < gActors[actor_index].velocityY.raw) {
                    gActors[actor_index].velocityY.raw = MARINA_MOVE(15) * 1.5;
                }
                if (gActors[actor_index].velocityY.raw < 0) {
                    gActors[actor_index].velocityY.raw = 0;
                }
                break;
            }

            if (gActors[actor_index].unk_140_u8[0] == 0) {
                gActors[actor_index].unk_170 += 1;
            }
            MarinaEffect_Set(actor_index, MARINAEFF_DASH);
            gActors[actor_index].unk_180_u8[2] = gPlayerData.unk_10;
            gActors[actor_index].var_15C = gPlayerData.unk_10;
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD_19) {
                gActors[actor_index].unk_12E_u8 |= 0x40;
                gActors[actor_index].velocityX.raw = gActors[actor_index].unk_0F8.raw;
                gActors[actor_index].velocityY.raw = gActors[actor_index].unk_0FC.raw;
            }
            Sound_PlaySfx(SFX_DASH_0081);
        }
        else {
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD_18) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), gActors[actor_index].var_158);
                if (Math_AbsS32_2(gActors[actor_index].velocityX.raw) > MARINA_MOVE(28)) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, FIXED_UNIT(32.0/256));
                }
                gActors[actor_index].var_158 = Math_ApproachS32(gActors[actor_index].var_158, MARINA_MOVE(19), MARINA_MOVE(19) / 16);
                if ((func_8005D338(actor_index) != 0x28) && (func_8005D338(actor_index) != 0x29) && func_8005D418(actor_index)) {
                    if (gActors[actor_index].unk_140_u8[0] == 0) {
                        gActors[actor_index].unk_170 = 0x29;
                    }
                    else {
                        gActors[actor_index].unk_170 = 0x28;
                    }
                }
                if (gActors[actor_index].var_150 < 4.0) {
                    gActors[actor_index].unk_12C_u16[0] |= 4;
                }
                if (gActors[actor_index].var_15C == 0) {
                    gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 2);
                    gActors[actor_index].unk_12C_u16[0] |= 8;
                }
                else if ((gActors[actor_index].var_15C != 8) && (gActors[actor_index].var_150 >= 9) && (Math_AbsS32_2(gActors[actor_index].velocityX.raw) >= FIXED_UNIT(2.5))) {
                    if (Math_AbsS32_2(gActors[actor_index].hitboxAX0) < Math_AbsS32_2(gActors[actor_index].hitboxAX1)) {
                        var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX1) + 1;
                    }
                    else {
                        var_a0 = (gActors[actor_index].posX.whole + gActors[actor_index].hitboxAX0) - 1;
                    }
                    if (func_80012AB4(var_a0, gActors[actor_index].posY.whole) & 0x80) {
                        gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw * 0.75;
                        gActors[actor_index].var_150 += 0x10;
                        gActors[actor_index].stateUpper = 3;
                        gActors[actor_index].stateLower = MARINASTATE_AIRDASHHOLD_19;
                        return;
                    }
                    else {
                        gActors[actor_index].flags |= ACTOR_FLAG_UNK7;
                    }
                }
            }
            if (gActors[actor_index].stateLower == MARINASTATE_AIRDASHHOLD_19) {
                var_a3 = MARINA_MOVE(0);
                if (gActors[actor_index].stateUpper == 2) {
                    var_a3 *= 4;
                }
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, var_a3);
                if (gActors[actor_index].stateUpper == 3) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) / 2);
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, var_a3 * 2);
                }
                if (gActors[actor_index].var_150 < 12.0) {
                    gActors[actor_index].unk_12C_u16[0] |= 4;
                }
                else {
                    gActors[actor_index].unk_12E_u8 |= 0x40;
                }
            }
    
            gActors[actor_index].var_150--;
            if (gActors[actor_index].var_150 == 0) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_UNK7;
                gActors[actor_index].stateUpper = 2;
                gActors[actor_index].stateLower = MARINASTATE_26;
            }
        }

        if ((func_8005D338(actor_index) != 0x28) && (func_8005D338(actor_index) != 0x29) && (gActors[actor_index].unk_170_s8[0] == 0)) {
            if ((gActors[actor_index].unk_170_s8[1] == 0) || (gActors[actor_index].unk_170_s8[1] == 3) || (gActors[actor_index].unk_170_s8[1] == 5)) {
                D_801370D2 = 0;
                Marina_SpawnAfterImage(actor_index);
            }
        }
    }
}

void func_80051C48(u16 actor_index) {
    s32 sp34[5];
    s32 angle;
    u16 index;

    index = gActors[actor_index].parentIndex;
    func_8004F7D8(actor_index);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        if (((D_801373D8 & 0x20) || (func_8004FC68(actor_index, index))) && (gActors[index].grabType != GRABTYPE_22)) {
            gActors[actor_index].unk_140_u8[0] = 0;
            gActors[actor_index].unk_140_u16[1] = 1;
            func_8005D370(actor_index, 0x23);
        }
        else {
            gActors[actor_index].unk_140_u8[0] = 4;
            gActors[actor_index].unk_140_u16[1] = 0;
            func_8005D370(actor_index, 0x22);
        }
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, MARINA_MOVE(0) / 2);
        if (func_8005D418(actor_index) == 0) {
            break;
        }
        gActors[actor_index].velocityY.raw = MARINA_MOVE(15);
        sp34[0] = gActors[actor_index].posX.whole;
        sp34[1] = gActors[actor_index].posY.whole + gActors[actor_index].hitboxBY1 + 4;
        sp34[2] = gActors[actor_index].posZ.whole + 1;
        sp34[3] = 0x1AA;
        sp34[4] = 0;
        func_80059F30(actor_index, sp34, 1.0f, 0x14);
        gActors[actor_index].stateUpper = 0x14;
        break;
    case 10:
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            func_8005D370(actor_index, 0x23);
        }
        else {
            func_8005D370(actor_index, 0x22);
        }
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 0xB;
        break;
    case 11:
        if (func_8005D418(actor_index) == 0) {
            break;
        }
        switch (func_80048C28(1)) {
        case 4:
            angle = 0;
            break;
        case 6:
            angle = 0x380;
            break;
        case 8:
            angle = 0x380;
            break;
        default:
            angle = 0x80;
            break;
        }
        gActors[actor_index].velocityX.raw = Math_AbsS32_2(MARINA_MOVE(15) * COS(angle));
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        gActors[actor_index].velocityY.raw = MARINA_MOVE(15) * SIN(angle);
        gActors[actor_index].stateUpper = 0x14;
        break;
    }

    if (gActors[actor_index].stateUpper == 0x14) {
        if (gActors[actor_index].unk_140_u8[0] == 0) {
            gActors[actor_index].unk_170 = 0x26;
        }
        else {
            gActors[actor_index].unk_170 = 0x25;
        }
        gActors[actor_index].unk_17C = 4;
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        Sound_PlaySfx(SFX_JUMP_0024);
        gActors[actor_index].state = MARINASTATE_26;
    }
}

void func_80052004(u16 actor_index) {
    u16 index;
    s32 target;
    s32 step;

    index = gActors[actor_index].parentIndex;
    if (((D_801373D8 & 0x20) || (func_8004FC68(actor_index, index))) && (gActors[index].grabType != GRABTYPE_22)) {
        gActors[actor_index].unk_140_u8[0] = 0;
        gActors[actor_index].unk_140_u16[1] = 1;
    }
    else if (D_801373D8 & 0x3) {
        gActors[actor_index].unk_140_u8[0] = 4;
        gActors[actor_index].unk_140_u16[1] = 0;
    }
    func_8004F7D8(actor_index);
    if (func_800491B8(actor_index, 0, -0xE) != 0) {
        gActors[actor_index].state = MARINASTATE_LANDHOLD;
    }
    else {
        if (gActors[actor_index].stateLower != MARINASTATE_29) {
            gActors[actor_index].unk_12C_u16[0] |= 4;
        }
        if (D_801373D8 & 0x80) {
            if ((gActors[actor_index].stateLower != MARINASTATE_26) && (gActors[actor_index].stateLower != MARINASTATE_29)) {
                gActors[actor_index].stateLower = MARINASTATE_26;
            }
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                func_8005D370(actor_index, 0x1C);
            }
            else {
                func_8005D370(actor_index, 0x1B);
            }
            gActors[actor_index].flags ^= ACTOR_FLAG_FLIPPED;
            if (D_801373D8 & 2) {
                gActors[actor_index].flags &= ~ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 1) {
                gActors[actor_index].flags |= ACTOR_FLAG_FLIPPED;
            }
        }
        if ((gActors[actor_index].velocityY.raw > 0) && (gActors[actor_index].flags_098 & (ACTOR_FLAG3_UNK14 | ACTOR_FLAG3_UNK4))) {
            gActors[actor_index].velocityY.raw /= 2;
        }
        if (func_8005D338(actor_index) == 0x1B || func_8005D338(actor_index) == 0x1C) {
            if (func_8005D418(actor_index) != 0) {
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    gActors[actor_index].unk_170 = 0x26;
                }
                else {
                    gActors[actor_index].unk_170 = 0x25;
                }
                gActors[actor_index].unk_170_s8[1] = 2;
            }
        }

        switch (gActors[actor_index].stateUpper) {
        case 0:
            if (gActors[actor_index].unk_140_u8[0] != 0) {
                gActors[actor_index].unk_140_u8[0] = 4;
            }
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].var_150 = 0x14;
            gActors[actor_index].unk_17C_s8[1] = 2;
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_index].stateUpper = 1;
            /* fallthrough */
        case 1:
            gActors[actor_index].var_150--;
            if ((gActors[actor_index].stateLower != MARINASTATE_27) && 
                (gActors[actor_index].velocityY.raw > 0) && 
                (gActors[actor_index].var_150 > 0) &&
                (D_801370CC & gButton_A)) {
                break;
            }
            gActors[actor_index].stateUpper = 2;
            /* fallthrough */
        case 2:
            if (gActors[actor_index].stateLower == MARINASTATE_26) {
                if (!(D_801373D8 & 0x10)) {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
                }
                else {
                    gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 1.5);
                }
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_27) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_28) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
            }
            else if (gActors[actor_index].stateLower == MARINASTATE_29) {
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
                if (gActors[actor_index].velocityY.raw < (-MARINA_MOVE(28) * 0.7)) {
                    gActors[actor_index].stateLower = MARINASTATE_26;
                }
            }
            break;
        }

        if (gActors[actor_index].velocityY.raw > 0) {
            if ((func_8005D338(actor_index) == 0x25) || (func_8005D338(actor_index) == 0x26) || (func_8005D418(actor_index) != 0)) {
                if (gActors[actor_index].unk_140_u8[0] == 0) {
                    if (func_8005D338(actor_index) == 0x25) {
                        gActors[actor_index].unk_170_u16[1] = 0x26;
                    }
                    else {
                        func_8005D370(actor_index, 0x26);
                    }
                }
                else if (func_8005D338(actor_index) == 0x26) {
                    gActors[actor_index].unk_170_u16[1] = 0x25;
                }
                else {
                    func_8005D370(actor_index, 0x25);
                }
            }
        }
        else if ((func_8005D338(actor_index) == 0x25) || (func_8005D338(actor_index) == 0x26) || (func_8005D338(actor_index) == 0x28) || (func_8005D338(actor_index) == 0x29) || (func_8005D418(actor_index) != 0)) {
            if (gActors[actor_index].unk_140_u8[0] == 0) {
                if (func_8005D338(actor_index) == 0x28) {
                    gActors[actor_index].unk_170_u16[1] = 0x29;
                }
                else {
                    func_8005D370(actor_index, 0x29);
                }
            }
            else if (func_8005D338(actor_index) == 0x29) {
                gActors[actor_index].unk_170_u16[1] = 0x28;
            }
            else {
                func_8005D370(actor_index, 0x28);
            }
            gActors[actor_index].unk_17C = 0;
            gActors[actor_index].unk_17C_s8[1] = 1;
        }
        if (gActors[actor_index].stateLower != MARINASTATE_27) {
            step = MARINA_MOVE(20) / 10;
            if (D_801373D8 & 2) {
                target = MARINA_MOVE(20);
                if (target < gActors[actor_index].velocityX.raw) {
                    target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw < 0) {
                    step *= 2;
                }
            }
            if (D_801373D8 & 1) {
                target = -MARINA_MOVE(20);
                if (gActors[actor_index].velocityX.raw < target) {
                    target = gActors[actor_index].velocityX.raw;
                }
                if (gActors[actor_index].velocityX.raw > 0) {
                    step *= 2;
                }
            }
            if (!(D_801373D8 & 3)) {
                if (gActors[actor_index].stateLower == MARINASTATE_26) {
                    target = 0;
                }
                if (gActors[actor_index].stateLower == MARINASTATE_28) {
                    target = gActors[actor_index].velocityX.raw;
                }
            }
            gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, target, step);
        }
    }
}

void MarinaGrab_Noop(u16 actor_0, u16 actor_1) {
}

void func_8005278C(u16 actor_0, u16 actor_1) {
    if (gActors[actor_1].grabType == GRABTYPE_22) {
        gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].unk_140_u16[1] = 0;
    }
    func_8004F7D8(actor_0);
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_0].unk_12C_u16[0] |= 2;
    }
    if (gActors[actor_0].stateUpper == 0) {
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 60;
        }
        else {
            gActors[actor_0].unk_170 = 63;
        }
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].unk_170 += 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].stateUpper = 1;
    }
    if (func_8005D418(actor_0)) {
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = MARINASTATE_IDLEHOLD;
        }
        else {
            gActors[actor_0].state = MARINASTATE_29;
        }
    }
}

s32 func_800528F4(u16 actor_0, u16 actor_1) {
    if (actor_1 == 0xFFFF) {
        return 0;
    }
    if (!(gActors[actor_1].flags & ACTOR_FLAG_ACTIVE) || (gActors[actor_1].flags_098 & ACTOR_FLAG3_GRAB) || (gActors[actor_1].health <= 0)) {
        Marina_DropActor(actor_0, actor_1);
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = MARINASTATE_IDLE;
        }
        else {
            gActors[actor_0].state = MARINASTATE_22;
        }
        return 1;
    }
    else {
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_GRAB;
        gActors[actor_1].parentIndex = actor_0;
        if (!(gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK16)) {
            return 0;
        }
        gActors[actor_1].pendingDamage = 0;
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_THROWN;
        Marina_DropActor(actor_0, actor_1);
        gActors[actor_0].velocityX.raw = gActors[actor_0].unk_0F8.raw;
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].state = MARINASTATE_IDLE;
        }
        else {
            gActors[actor_0].velocityY.raw = gActors[actor_0].unk_0FC.raw;
            gActors[actor_0].state = MARINASTATE_22;
        }
        return 2;
    }
}

s32 func_80052A6C(u16 actor_0, u16 actor_1) {
    s32 var_v1;
    s32 temp_v0;
    s32 pad1;

    if (gPlayerData.unk_12 != 0) {
        return 0;
    }

    MarinaEffect_Set(actor_0, MARINAEFF_DASH);
    gActors[actor_0].unk_180_u8[2] = gPlayerData.unk_10;
    switch (gPlayerData.unk_10) {
        case 0:
            var_v1 = 0x55;
        break;
        case 8:
            var_v1 = 0x58;
        break;
        default:
            if (!(gPlayerData.unk_10 & 8)) {
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    var_v1 = 0x4F;
                }
                else {
                    var_v1 = 0x52;
                }
            }
            else {
                var_v1 = !(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) ? 0x52 : 0x4F;
            }
        break;
    }
    if (gActors[actor_0].unk_140_u8[0] == 0) {
        var_v1 += 1;
    }
    if (gActors[actor_0].unk_140_u8[0] == 8) {
        if ((var_v1 == 0x52) || (var_v1 == 0x55)) {
            var_v1 = 0;
        }
        else {
            var_v1 += 2;
        }
    }
    if (var_v1 != 0) {
        gActors[actor_0].flags |= ACTOR_FLAG_UNK6;
        if (!(gActors[actor_1].unk_0DF & ACTOR0DF_3) && (var_v1 == 0x58)) {
            temp_v0 = func_8005D338(actor_0);
            if (var_v1 != temp_v0) {
                Sound_PlaySfx(SFX_MARINA_SHAKE);
            }
        }
        gActors[actor_0].unk_170 = var_v1;
    }
    if (actor_1 == 0xFFFF) {
        return 2;
    }
    else {
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_SHAKE;
        return 1;
    }
}

void func_80052C4C(u16 actor_0, u16 actor_1) {
    if (gActors[actor_1].graphicFlags & ACTOR_GFLAG_UNK11) {
        gActors[actor_0].posZ.raw = gActors[actor_1].unk_188 + FIXED_UNIT(1.0);
    }
    else {
        gActors[actor_0].posZ.raw = gActors[actor_1].posZ.raw + FIXED_UNIT(1.0);
    }
}

void func_80052CD0(u16 actor_0, u16 actor_1) {
    s16 pos_x;
    s16 pos_y;
    s32 flags_098_mask;
    s32 var_t1;
    s32 var_t0;
    s32 offset;

    if (actor_1 == 0xFFFF) {
        if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16))) {
            pos_x = 0;
            if (gActors[actor_0].unk_140_u16[1] == 0) {
                pos_y = 2;
                flags_098_mask = ACTOR_FLAG3_UNK4;
            }
            else {
                pos_x = 2;
                if (gActors[actor_0].unk_140_u16[1] == 8) {
                    pos_x = 0;
                    pos_y = -2;
                    flags_098_mask = ACTOR_FLAG3_UNK5;
                }
                else {
                    pos_y = 0;
                    flags_098_mask = (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
                }
            }
            if (!(gActors[actor_0].flags_098 & flags_098_mask)) {
                if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
                    pos_x = -pos_x;
                }
                gActors[actor_0].velocityX.whole = pos_x;
                gActors[actor_0].velocityY.whole = pos_y;
            }
            else {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityY.raw = 0;
            }
        }
    }
    else {
        func_80052C4C(actor_0, actor_1);
        offset = FIXED_UNIT(1.0);
        if (!(gActors[actor_0].unk_140_u16[1] & 7)) {
            if ((gActors[actor_0].hitboxBX0 + gActors[actor_0].posX.whole < gActors[actor_1].hitboxBX0 + gActors[actor_1].posX.whole) && 
                (gActors[actor_0].hitboxBX1 + gActors[actor_0].posX.whole < gActors[actor_1].hitboxBX1 + gActors[actor_1].posX.whole)) {
                gPlayerData.unk_00[0].raw -= offset;
            }
            if ((gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX1 < gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX1) && 
                (gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX0 < gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX0)) {
                gPlayerData.unk_00[0].raw += offset;
            }
            var_t1 = 0;
            if (gActors[actor_0].unk_140_u16[1] == 0) {
                var_t0 = TO_FIXED(gActors[actor_0].hitboxBY0 - gActors[actor_1].hitboxBY1);
            }
            else {
                var_t0 = TO_FIXED(gActors[actor_0].hitboxBY1 - gActors[actor_1].hitboxBY0);
            }
        }
        else {
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                var_t1 = TO_FIXED(gActors[actor_0].hitboxBX1 - gActors[actor_1].hitboxBX0);
            }
            else {
                var_t1 = TO_FIXED(gActors[actor_0].hitboxBX0 - gActors[actor_1].hitboxBX1);
            }
            var_t0 = 0;
            if ((gActors[actor_0].hitboxBY1 + gActors[actor_0].posY.whole < gActors[actor_1].hitboxBY1 + gActors[actor_1].posY.whole) && 
                (gActors[actor_0].hitboxBY0 + gActors[actor_0].posY.whole < gActors[actor_1].hitboxBY0 + gActors[actor_1].posY.whole)) {
                gPlayerData.unk_00[1].raw -= offset;
            }
            if ((gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0 < gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY0) && 
                (gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY1 < gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY1)) {
                gPlayerData.unk_00[1].raw += offset;
            }
        }
        offset = FIXED_UNIT(2.0);
        if (var_t1 != 0) {
            if (Math_AbsS32_2(gPlayerData.unk_00[0].raw - var_t1) < offset) {
                gPlayerData.unk_00[0].raw = var_t1;
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
            }
            else if (gPlayerData.unk_00[0].raw < var_t1) {
                gPlayerData.unk_00[0].raw += offset;
            }
            else {
                gPlayerData.unk_00[0].raw -= offset;
            }
        }
        if (var_t0 != 0) {
            if (Math_AbsS32_2(gPlayerData.unk_00[1].raw - var_t0) < FIXED_UNIT(4.0)) {
                gPlayerData.unk_00[1].raw = var_t0;
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
                gActors[actor_0].flags |= ACTOR_FLAG_UNK16;
            }
            else if (gPlayerData.unk_00[1].raw < var_t0) {
                gPlayerData.unk_00[1].raw += offset;
            }
            else {
                gPlayerData.unk_00[1].raw -= offset;
            }
        }
        gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - gPlayerData.unk_00[0].raw;
        func_8002877C(actor_0);
        if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
            gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + gPlayerData.unk_00[0].raw;
            gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
        }
        var_t0 = gActors[actor_0].posY.raw + gPlayerData.unk_00[1].raw;
        if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && 
            (var_t0 < gActors[actor_1].posY.raw)) {
            gActors[actor_1].posY.raw = var_t0;
            gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
        }
        else {
            if (!(gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK5) || (gActors[actor_0].posY.raw < (gActors[actor_1].posY.raw - gPlayerData.unk_00[1].raw))) {
                gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - gPlayerData.unk_00[1].raw;
            }
        }
        gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
        gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
        gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
    }
}

s32 func_80053210(u16 actor_0, u16 actor_1) {
    s32 var_v0;

    var_v0 = func_8004F2B0(actor_0);
    if (var_v0 == 1) {
        Marina_DropActor(actor_0, actor_1);
        gActors[actor_0].unk_12F_u8 = 0;
        gActors[actor_0].state = MARINASTATE_22;
        return 3;
    }
    else if (var_v0 == 2) {
        gActors[actor_0].unk_12F_u8 = 0;
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        if (actor_1 == 0xFFFF) {
            gActors[actor_0].state = MARINASTATE_37;
            return 2;
        }
        gActors[actor_0].state = MARINASTATE_THROW;
        return 2;
    }
    else if (func_80048F70(actor_0)) {
        Marina_DropActor(actor_0, actor_1);
        gActors[actor_0].state = MARINASTATE_20;
        gActors[actor_0].stateUpper = 0xA;
        return 4;
    }
    else {
        return 0;
    }
}

void MarinaGrab_Type4(u16 actor_0, u16 actor_1) {
    s32 temp_v0;
    s32 var_a2;

    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        if (actor_1 != 0xFFFF) {
            if (((gActors[actor_1].hitboxBX0 + gActors[actor_1].posX.whole) >= (gActors[actor_0].hitboxBX1 + gActors[actor_0].posX.whole)) || 
                ((gActors[actor_0].posX.whole + gActors[actor_0].hitboxBX0) >= (gActors[actor_1].posX.whole + gActors[actor_1].hitboxBX1))) {
                gActors[actor_0].unk_140_u8[0] = 4;
            }
            if ((gActors[actor_1].hitboxBY1 + gActors[actor_1].posY.whole) >= (gActors[actor_0].hitboxBY0 + gActors[actor_0].posY.whole)) {
                gActors[actor_0].unk_140_u8[0] = 0;
            }
            if ((gActors[actor_0].posY.whole + gActors[actor_0].hitboxBY1) >= (gActors[actor_1].posY.whole + gActors[actor_1].hitboxBY0)) {
                gActors[actor_0].unk_140_u8[0] = 8;
            }
        }
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0];
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    var_a2 = 0x42;
    if (gActors[actor_0].unk_140_u8[0] == 0) {
        var_a2 = 0x43;
    }
    if (gActors[actor_0].unk_140_u8[0] == 8) {
        var_a2 += 2;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, var_a2);
    }
    func_80052A6C(actor_0, actor_1);
    func_80052CD0(actor_0, actor_1);
    temp_v0 = func_80053210(actor_0, actor_1);
    if (temp_v0 == 2) {
        if (gActors[actor_0].unk_140_u16[1] != 4) {
            if (D_801373D8 & 2) {
                gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
            }
            if (D_801373D8 & 1) {
                gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
            }
        }
        switch (gActors[actor_0].unk_140_u16[1]) {
        case 0:
            gActors[actor_0].unk_140_u8[0] &= 7;
            if (gActors[actor_0].unk_140_u8[0] == 0) {
                gActors[actor_0].unk_140_u8[0] |= 8;
            }
            if (gActors[actor_0].unk_140_u8[0] < 8) {
                gActors[actor_0].unk_140_u8[0] = 6;
            }
            break;
        case 4:
            if (gActors[actor_0].unk_140_u8[0] < 4) {
                gActors[actor_0].unk_140_u8[0] = 2;
            }
            if (gActors[actor_0].unk_140_u8[0] > 4) {
                gActors[actor_0].unk_140_u8[0] = 6;
            }
            break;
        case 8:
            gActors[actor_0].unk_140_u8[0] &= 0x7;
            if (gActors[actor_0].unk_140_u8[0] > 0) {
                gActors[actor_0].unk_140_u8[0] = 2;
            }
            break;
        }
    }
    else if (temp_v0 == 4) {
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gActors[actor_0].stateUpper = 2;
            gActors[actor_0].unk_17C = 0;
            gActors[actor_0].stateLower = MARINASTATE_22;
        }
        else if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].state = MARINASTATE_20;
        }
        else {
            gActors[actor_0].unk_170 = 0x45;
            gActors[actor_0].state = MARINASTATE_35;
        }
    }
}

void func_800536CC(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 sp28;
    s32 step;

    step = FIXED_UNIT(4.0);
    func_80052C4C(actor_0, actor_1);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C = TO_FIXED(gActors[actor_0].hitboxBX1 - gActors[actor_1].hitboxBX0);
    }
    else {
        sp2C = TO_FIXED(gActors[actor_0].hitboxBX0 - gActors[actor_1].hitboxBX1);
    }
    sp28 = TO_FIXED((-(gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1) / 2) + D_800D413C[0]);
    if (Math_AbsS32_2(gPlayerData.unk_00[0].raw - sp2C) < step) {
        gPlayerData.unk_00[0].raw = sp2C;
    }
    else if (gPlayerData.unk_00[0].raw < sp2C) {
        gPlayerData.unk_00[0].raw += step;
    }
    else {
        gPlayerData.unk_00[0].raw -= step;
    }
    if (Math_AbsS32_2(gPlayerData.unk_00[1].raw - sp28) < step) {
        gPlayerData.unk_00[1].raw = sp28;
    }
    else if (gPlayerData.unk_00[1].raw < sp28) {
        gPlayerData.unk_00[1].raw += step;
    }
    else {
        gPlayerData.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - gPlayerData.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + gPlayerData.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    sp28 = gActors[actor_0].posY.raw + gPlayerData.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (sp28 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = sp28;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - gPlayerData.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_8005396C(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (D_801373D8 & 2) {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    if (D_801373D8 & 1) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0];
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void func_80053B28(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 sp28;
    s32 step;

    func_80052C4C(actor_0, actor_1);
    sp2C = -((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C += (D_800D4138[0] / 2);
    }
    else {
        sp2C -= (D_800D4138[0] / 2);
    }
    sp2C = TO_FIXED(sp2C);
    sp28 = TO_FIXED(gActors[actor_0].hitboxBY1 - gActors[actor_1].hitboxBY0);
    step = FIXED_UNIT(4.0);
    if (Math_AbsS32_2(gPlayerData.unk_00[0].raw - sp2C) < step) {
        gPlayerData.unk_00[0].raw = sp2C;
    }
    else if (gPlayerData.unk_00[0].raw < sp2C) {
        gPlayerData.unk_00[0].raw += step;
    }
    else {
        gPlayerData.unk_00[0].raw -= step;
    }
    if (Math_AbsS32_2(gPlayerData.unk_00[1].raw - sp28) < step) {
        gPlayerData.unk_00[1].raw = sp28;
    }
    else if (gPlayerData.unk_00[1].raw < sp28) {
        gPlayerData.unk_00[1].raw += step;
    }
    else {
        gPlayerData.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - gPlayerData.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + gPlayerData.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    sp28 = gActors[actor_0].posY.raw + gPlayerData.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (sp28 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = sp28;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - gPlayerData.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void MarinaGrab_Type6(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 8;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x44U);
    }
    func_80052A6C(actor_0, actor_1);
    func_80053B28(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

void func_80053F34(u16 actor_0, u16 actor_1) {
    s32 sp2C;
    s32 temp_a2;
    s32 step;

    func_80052C4C(actor_0, actor_1);
    sp2C = -((gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1) / 2);
    if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
        sp2C += D_800D4134[0];
    }
    else {
        sp2C -= D_800D4134[0];
    }
    sp2C = TO_FIXED(sp2C);
    step = FIXED_UNIT(4.0);
    temp_a2 = TO_FIXED(gActors[actor_0].hitboxBY0 - gActors[actor_1].hitboxBY1) + step;
    if (Math_AbsS32_2(gPlayerData.unk_00[0].raw - sp2C) < step) {
        gPlayerData.unk_00[0].raw = sp2C;
    }
    else if (gPlayerData.unk_00[0].raw < sp2C) {
        gPlayerData.unk_00[0].raw += step;
    }
    else {
        gPlayerData.unk_00[0].raw -= step;
    }
    if (Math_AbsS32_2(gPlayerData.unk_00[1].raw - temp_a2) < step) {
        gPlayerData.unk_00[1].raw = temp_a2;
    }
    else if (gPlayerData.unk_00[1].raw < temp_a2) {
        gPlayerData.unk_00[1].raw += step;
    }
    else {
        gPlayerData.unk_00[1].raw -= step;
    }
    gActors[actor_0].posX.raw = gActors[actor_1].posX.raw - gPlayerData.unk_00[0].raw;
    func_8002877C(actor_0);
    if (gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2)) {
        gActors[actor_1].posX.raw = gActors[actor_0].posX.raw + gPlayerData.unk_00[0].raw;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & (ACTOR_FLAG3_UNK3 | ACTOR_FLAG3_UNK2);
    }
    temp_a2 = gActors[actor_0].posY.raw + gPlayerData.unk_00[1].raw;
    if ((gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4) && (temp_a2 < gActors[actor_1].posY.raw)) {
        gActors[actor_1].posY.raw = temp_a2;
        gActors[actor_1].flags_098 |= gActors[actor_0].flags_098 & ACTOR_FLAG3_UNK4;
    }
    else {
        gActors[actor_0].posY.raw = gActors[actor_1].posY.raw - gPlayerData.unk_00[1].raw;
    }
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void MarinaGrab_Type7(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 0;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x43);
    }
    func_80052A6C(actor_0, actor_1);
    func_80053F34(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
    }
}

// If Marina grabs and actor of GRABTYPE_HURT, it will instead inflict damage on her.
void MarinaGrab_Hurt(u16 actor_0, u16 actor_1) {
    s32 sp24;

    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].stateUpper = 1;
        Marina_DropActor(actor_0, actor_1);
        gActors[actor_1].flags_098 |= ACTOR_FLAG3_UNK16;
        func_80058924(actor_0);
        if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
            gActors[actor_0].unk_0F8.raw = FIXED_UNIT(-1.5);
        }
        else {
            gActors[actor_0].unk_0F8.raw = FIXED_UNIT(1.5);
        }
        gActors[actor_0].unk_0FC.raw = FIXED_UNIT(3.0);
        func_8005C550(actor_0, 0x3C);
        sp24 = Marina_SubHealth(actor_0, gActors[actor_1].damage);
        if (sp24 >= MARINADMG_KO) {
            func_800575C0(actor_0);
            if (sp24 == MARINADMG_KO) {
                Sound_PlaySfx(SFX_CLANCERDEATH);
            }
        }
        gMarinaHitTable[gActors[actor_1].hitType](actor_0, actor_1);
    }
}

void MarinaGrab_Type13(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_ATTACHED;
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].parentIndex;
        gActors[actor_0].unk_140_u8[1] = 0x1E;
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 0x36;
        }
        else {
            gActors[actor_0].unk_170 = 0x39;
        }
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            gActors[actor_0].unk_170 += 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 8) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].stateUpper += 1;
    }
    gActors[actor_0].flags |= ACTOR_FLAG_UNK6;
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_0].state = MARINASTATE_IDLE;
    }
    else {
        gActors[actor_0].state = MARINASTATE_22;
    }
}

void func_8005457C(u16 actor_0, u16 actor_1) {
    s32 sp34;
    s32 sp30;
    s32 temp_f18;
    s32 sp28;
    s32 sp24;

    gActors[actor_0].graphicFlags |= ACTOR_GFLAG_ROTZ;
    gActors[actor_0].rotateZ = gActors[actor_1].unk_140_f32;
    func_80052C4C(actor_0, actor_1);
    if (gActors[actor_1].grabType == GRABTYPE_16) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        sp28 = 0x12;
        sp24 = 4;
    }
    if (gActors[actor_1].grabType == GRABTYPE_17) {
        sp28 = -1;
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        sp24 = 0x1B;
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
    }
    if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
        sp28 = -sp28;
    }
    temp_f18 = DEG_TO_INDEX(gActors[actor_0].rotateZ);
    sp34 = sp28 * COS(temp_f18);
    sp30 = sp24 * COS(temp_f18);
    sp34 -= sp24 * SIN(temp_f18);
    sp30 += sp28 * SIN(temp_f18);
    sp34 = TO_FIXED(sp34);
    sp30 = TO_FIXED(sp30);

    temp_f18 = FIXED_UNIT(4.0);
    if (Math_AbsS32_2(gPlayerData.unk_00[0].raw - sp34) < temp_f18) {
        gPlayerData.unk_00[0].raw = sp34;
    }
    else if (gPlayerData.unk_00[0].raw < sp34) {
        gPlayerData.unk_00[0].raw += temp_f18;
    }
    else {
        gPlayerData.unk_00[0].raw -= temp_f18;
    }

    if (Math_AbsS32_2(gPlayerData.unk_00[1].raw - sp30) < temp_f18) {
        gPlayerData.unk_00[1].raw = sp30;
    }
    else if (gPlayerData.unk_00[1].raw < sp30) {
        gPlayerData.unk_00[1].raw += temp_f18;
    }
    else {
        gPlayerData.unk_00[1].raw -= temp_f18;
    }

    gActors[actor_0].posX.raw = (gActors[actor_1].posX.raw + ((TO_FIXED(gActors[actor_1].hitboxBX0 + gActors[actor_1].hitboxBX1)) / 2)) - gPlayerData.unk_00[0].raw;
    gActors[actor_0].posY.raw = (gActors[actor_1].posY.raw + ((TO_FIXED(gActors[actor_1].hitboxBY0 + gActors[actor_1].hitboxBY1)) / 2)) - gPlayerData.unk_00[1].raw;
    gActors[actor_0].unk_0F8.raw = ((gActors[actor_1].posX.raw + gScreenPosCurrentX.raw) - gActors[actor_1].unk_104) - gScreenPosNextX.raw;
    gActors[actor_1].unk_104 = gActors[actor_1].posX.raw;
    gActors[actor_0].unk_0FC.raw = ((gActors[actor_1].posY.raw + gScreenPosCurrentY.raw) - gActors[actor_1].unk_108) - gScreenPosNextY.raw;
    gActors[actor_1].unk_108 = gActors[actor_1].posY.raw;
    gActors[actor_1].unk_10C = gActors[actor_1].posZ.raw;
}

void func_8005498C(u16 actor_0, u16 actor_1) {
    s32 sp34;
    s32 check;
    s32 sp2C;

    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_0].stateUpper = 1;
    }
    if ((gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) && (func_8005D418(actor_0) != 0)) {
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        if (gActors[actor_1].grabType == GRABTYPE_16) {
            gActors[actor_0].unk_140_u8[0] = 4;
            func_8005D370(actor_0, 0x3F);
        }
        if (gActors[actor_1].grabType == GRABTYPE_17) {
            gActors[actor_0].unk_140_u8[0] = 0;
            func_8005D370(actor_0, 0x43);
        }
    }
    func_80052A6C(actor_0, actor_1);
    func_8005457C(actor_0, actor_1);
    sp34 = func_80053210(actor_0, actor_1);
    if (sp34 != 0) {
        gActors[actor_0].graphicFlags &= ~ACTOR_GFLAG_ROTZ;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        Sound_PlaySfx(SFX_JUMP_0024);
    }
    if (sp34 == 3) {
        if (gActors[actor_0].unk_0F8.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].unk_0F8.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].unk_0F8.raw, FIXED_UNIT(8.0));
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].unk_0FC.raw, FIXED_UNIT(8.0));
        gActors[actor_0].state = MARINASTATE_23;
    }
    else if (sp34 == 2) {
        sp2C = 0;
        check = D_801373D8 & 2;
        if (D_801373D8 & 1) {
            sp2C = 8;
        }
        if (D_801373D8 & 0x20) {
            sp2C = 4;
            if (check) {
                sp2C = 2;
            }
            if (D_801373D8 & 1) {
                sp2C = 6;
            }
        }
        if (D_801373D8 & 0x10) {
            sp2C = 0xC;
            if (check) {
                sp2C = 0xE;
            }
            if (D_801373D8 & 1) {
                sp2C = 0xA;
            }
        }
        sp2C <<= 6;
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_1].unk_0F8.raw, FIXED_UNIT(8.0));
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_1].unk_0FC.raw, FIXED_UNIT(8.0));
        gActors[actor_0].velocityX.raw += ((f32)FIXED_UNIT(3.0) * COS(sp2C));
        gActors[actor_0].velocityY.raw += ((f32)FIXED_UNIT(3.0) * SIN(sp2C));
        if (gActors[actor_0].velocityX.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].velocityX.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        Marina_DropActor(actor_0, actor_1);
        gActors[actor_0].unk_170_s8[1] = 0x7F;
        gActors[actor_0].state = MARINASTATE_23;
    }
    else if (sp34 == 4) {
        if (gActors[actor_0].unk_0F8.raw > 0) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (gActors[actor_0].unk_0F8.raw < 0) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].velocityX.raw = Math_ClampLimit(gActors[actor_0].unk_0F8.raw, FIXED_UNIT(8.0));
        gActors[actor_0].velocityY.raw = Math_ClampLimit(gActors[actor_0].unk_0FC.raw, FIXED_UNIT(8.0));
        gActors[actor_0].state = MARINASTATE_23;
    }
}

void MarinaGrab_Type20(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (!(gActors[actor_1].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void MarinaGrab_Type21(u16 actor_0, u16 actor_1) {
    gActors[actor_0].unk_12E_u8 |= 0x80;
    if (!(gActors[actor_1].flags & ACTOR_FLAG_FLIPPED)) {
        gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
    }
    else {
        gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
    }
    if (gActors[actor_0].stateUpper == 0) {
        gActors[actor_0].unk_140_u16[1] = gActors[actor_0].unk_140_u8[0] = 4;
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
        gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
        gActors[actor_0].stateUpper = 1;
    }
    if (gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6)) {
        if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6);
        }
    }
    if (!(gActors[actor_0].flags & (ACTOR_FLAG_UNK14 | ACTOR_FLAG_UNK6))) {
        func_8005D370(actor_0, 0x3F);
    }
    func_80052A6C(actor_0, actor_1);
    func_800536CC(actor_0, actor_1);
    if (func_80053210(actor_0, actor_1) == 2) {
        if (D_801373D8 & 2) {
            gActors[actor_0].flags &= ~ACTOR_FLAG_FLIPPED;
        }
        if (D_801373D8 & 1) {
            gActors[actor_0].flags |= ACTOR_FLAG_FLIPPED;
        }
        gActors[actor_0].unk_140_u16[1] = 4;
    }
}

void func_80055188(u16 actor_0) {
    u16 actor_1 = gActors[actor_0].parentIndex;
    gMarinaGrabTable[gActors[actor_1].grabType](actor_0, actor_1);
}

void func_800551F8(u16 actor_index) {
    s32 sp24;
    s32 temp_v0;
    s32 temp_v0_2;

    gActors[actor_index].unk_12E_u8 |= 1;
    if (gActors[actor_index].stateUpper == 0) {
        gActors[actor_index].unk_170 = 0x45;
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].stateUpper = 1;
    }
    else if ((gActors[actor_index].stateUpper == 1) && (func_8005D418(actor_index) != 0)) {
        temp_v0 = func_80048C28(1);
        switch (temp_v0) {
        case 4:
            sp24 = 0x30;
            break;
        case 6:
            sp24 = 0x380;
            break;
        case 8:
            sp24 = 0x380;
            break;
        default:
            sp24 = 0x80;
            break;
        }
        temp_v0_2 = MARINA_MOVE(15);
        gActors[actor_index].velocityX.raw = Math_AbsS32_2(COS(sp24) * temp_v0_2);
        if (gActors[actor_index].flags & ACTOR_FLAG_FLIPPED) {
            gActors[actor_index].velocityX.raw = -gActors[actor_index].velocityX.raw;
        }
        temp_v0_2 = MARINA_MOVE(15);
        gActors[actor_index].velocityY.raw = SIN(sp24) * temp_v0_2;
        gActors[actor_index].unk_170 = 0x46;
        if (gActors[actor_index].velocityY.raw > 0) {
            gActors[actor_index].unk_17C = 4;
        }
        gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
        gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        gPlayerData.unk_13 = 0;
        Sound_PlaySfx(SFX_JUMP_0024);
        gActors[actor_index].state = MARINASTATE_22;
    }
}

void func_800553EC(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x81;
    MarinaGrab_Type4(actor_index, 0xFFFF);
}

void func_8005544C(u16 actor_index) {
    gActors[actor_index].unk_12E_u8 |= 0x81;
    MarinaThrow_Type4(actor_index, 0xFFFF);
}

void func_800554AC(u16 actor_0, u16 actor_1) {
    s32 idx;

    if (actor_1 != 0xFFFF) {
        idx = gActors[actor_0].unk_140_u8[0];
        gActors[actor_1].unk_0F8.raw = D_800E3630[gActors[actor_1].unk_0CE * 10 + idx];
        gActors[actor_1].unk_0FC.raw = D_800E3630[gActors[actor_1].unk_0CE * 10 + idx + 1];
    }
}

void MarinaThrow_Noop(u16 actor_0, u16 actor_1) {
}

void func_80055538(u16 actor_0, u16 actor_1) {
    s32 var_v0;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
            gActors[actor_0].unk_170 = 0x66;
            gActors[actor_0].var_15C = 0;
        }
        else {
            gActors[actor_0].unk_170 = 0x6A;
            gActors[actor_0].var_15C = 4;
        }
        if (gActors[actor_1].grabType == GRABTYPE_22) {
            gActors[actor_0].unk_140_u8[0] = 4;
            gActors[actor_0].unk_140_u16[1] = 0;
        }
        var_v0 = 0;
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            var_v0 = 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 2) {
            var_v0 += 3;
        }
        if (gActors[actor_0].unk_140_u8[0] >= 5) {
            var_v0 += 2;
        }
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].var_15C += var_v0;
        gActors[actor_0].unk_170 += var_v0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_8004F7D8(actor_0);
        func_8004FB30(actor_0, gActors[actor_0].var_15C);
        if (func_8004F35C(actor_0, (u32*) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 30);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            gMarinaActionSpeeds[MARINAMOVE_19] = 0;
            if ((s32) gActors[actor_0].unk_140_u8[0] >= 5) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(-3.0);
                }
                else {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_0].state = MARINASTATE_25;
            }
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -14) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void MarinaThrow_Type3(u16 actor_0, u16 actor_1) {
    u16 var_v1;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_140_u16[1] = 0;
        var_v1 = func_80048C28(1);
        if (var_v1 == 0xFF) {
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                var_v1 = 4;
            }
            else {
                var_v1 = 12;
            }
        }
        else if ((D_801373D8 & 1) && (var_v1 & 7)) {
            var_v1 = 16 - var_v1;
        }
        if (gActors[actor_0].flags & ACTOR_FLAG_FLIPPED) {
            var_v1 = Math_AbsS32_2(var_v1 - 16);
        }
        gActors[actor_0].var_15C = var_v1;
        var_v1 /= 2;
        gActors[actor_0].unk_170 = var_v1 + 118;
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_8004F7D8(actor_0);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            if (gActors[actor_0].var_15C >= 9) {
                gActors[actor_1].unk_0F8.raw = -gActors[actor_1].unk_0F8.raw;
            }
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 30);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            Sound_StopSfx(SFX_MARINA_YELL1);
            Sound_StopSfx(SFX_MARINA_YELL3);
            Sound_PlaySfx(SFX_MARINA_YELL4);
            gMarinaActionSpeeds[MARINAMOVE_19] = 0;
            if (gActors[actor_0].unk_140_u8[0] >= 5) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(-2.0);
                }
                else {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void MarinaThrow_Type4(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80052CD0(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(8.5);
                break;
            case 2:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(7.25);
                break;
            case 4:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(2.0);
                break;
            case 6:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(-1.0);
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gMarinaScale;
            gActors[actor_0].velocityY.raw *= gMarinaScale;
            Sound_PlaySfx(SFX_JUMP_0024);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.unk_13 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void MarinaThrow_Type5(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(8.5);
                break;
            case 2:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(7.25);
                break;
            case 4:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(2.0);
                break;
            case 6:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(-1.0);
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gMarinaScale;
            gActors[actor_0].velocityY.raw *= gMarinaScale;
            Sound_PlaySfx(SFX_JUMP_0024);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.unk_13 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void MarinaThrow_Type6(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80053B28(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(8.5);
                break;
            case 2:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(7.25);
                break;
            case 4:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(2.0);
                break;
            case 6:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(-1.0);
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gMarinaScale;
            gActors[actor_0].velocityY.raw *= gMarinaScale;
            Sound_PlaySfx(SFX_JUMP_0024);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.unk_13 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void MarinaThrow_Type7(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_80053F34(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(8.5);
                break;
            case 2:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(7.25);
                break;
            case 4:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(2.0);
                break;
            case 6:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = 0;
                break;
            case 8:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.0);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(-1.0);
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gMarinaScale;
            gActors[actor_0].velocityY.raw *= gMarinaScale;
            Sound_PlaySfx(SFX_JUMP_0024);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.unk_13 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 4) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void func_800569AC(u16 actor_0, u16 actor_1) {
    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        if (gActors[actor_0].unk_140_u8[0] < 5) {
            gActors[actor_0].unk_170 += 2;
        }
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_8004F5B0(actor_0);
            func_8004F614(actor_0, 0, 0, 0);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            switch (gActors[actor_0].unk_140_u8[0]) {
            case 0:
            case 2:
            case 4:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = FIXED_UNIT(7.25);
                break;
            case 6:
            case 8:
                gActors[actor_0].velocityX.raw = FIXED_UNIT(2.5);
                gActors[actor_0].velocityY.raw = 0;
                break;
            }
            if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                gActors[actor_0].velocityX.raw = -gActors[actor_0].velocityX.raw;
            }
            gActors[actor_0].velocityX.raw *= gMarinaScale;
            gActors[actor_0].velocityY.raw *= gMarinaScale;
            Sound_PlaySfx(SFX_JUMP_0024);
            gActors[actor_0].var_150 = 0xA;
            gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
            gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
            gPlayerData.unk_13 = 0;
            gActors[actor_0].stateUpper = 2;
        }
        break;
    case 2:
        gActors[actor_0].unk_12C_u16[0] |= 4;
        if (gActors[actor_0].unk_140_u8[0] < 5) {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19));
        }
        else {
            gActors[actor_0].velocityY.raw = Math_ApproachS32(gActors[actor_0].velocityY.raw, FIXED_UNIT(-6.0), MARINA_MOVE(19) * 0.5);
        }
        if (func_800491B8(actor_0, 0, -0xE) != 0) {
            gActors[actor_0].state = MARINASTATE_LAND;
        }
        else if (func_8005D418(actor_0) != 0) {
            gActors[actor_0].var_150--;
            if (gActors[actor_0].var_150 <= 0) {
                gActors[actor_0].flags ^= ACTOR_FLAG_FLIPPED;
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void func_80056CCC(u16 actor_0, u16 actor_1) {
    s32 var_v0;
    s32 pad;

    switch (gActors[actor_0].stateUpper) {
    case 0:
        gActors[actor_0].unk_170 = 0x6A;
        gActors[actor_0].var_15C = 4;
        var_v0 = 0;
        if (gActors[actor_0].unk_140_u8[0] == 0) {
            var_v0 = 1;
        }
        if (gActors[actor_0].unk_140_u8[0] == 2) {
            var_v0 += 3;
        }
        if (gActors[actor_0].unk_140_u8[0] > 4) {
            var_v0 += 2;
        }
        gActors[actor_0].velocityY.raw = 0;
        gActors[actor_0].velocityX.raw = 0;
        gActors[actor_0].var_150 = 0;
        gActors[actor_0].var_15C += var_v0;
        gActors[actor_0].unk_170 += var_v0;
        gActors[actor_0].stateUpper = 1;
        /* fallthrough */
    case 1:
        func_800536CC(actor_0, actor_1);
        if (func_8004F35C(actor_0, (u32* ) &gActors[actor_0].var_150) != 0) {
            func_800554AC(actor_0, actor_1);
            func_8004F614(actor_0, gActors[actor_1].unk_0F8.raw, gActors[actor_1].unk_0FC.raw, 0x1E);
            gActors[actor_0].unk_170 = func_8005D338(actor_0) + 8;
            gMarinaActionSpeeds[MARINAMOVE_19] = 0;
            if (gActors[actor_0].unk_140_u8[0] > 4) {
                gActors[actor_0].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16);
                gActors[actor_0].flags |= ACTOR_FLAG_UNK17;
                if (!(gActors[actor_0].flags & ACTOR_FLAG_FLIPPED)) {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(-3.0);
                }
                else {
                    gActors[actor_0].velocityX.raw = FIXED_UNIT(3.0);
                }
                if (gActors[actor_0].unk_140_u8[0] == 8) {
                    gActors[actor_0].velocityX.raw = 0;
                }
                gActors[actor_0].velocityY.raw = FIXED_UNIT(3.0);
                gActors[actor_0].velocityX.raw = gActors[actor_0].velocityX.raw * gActors->unk_120;
                gActors[actor_0].velocityY.raw = gActors[actor_0].velocityY.raw * gActors->unk_120;
            }
            if (gActors[actor_0].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                gActors[actor_0].flags |= ACTOR_FLAG_UNK14;
                gActors[actor_0].state = MARINASTATE_IDLE;
            }
            else {
                gActors[actor_0].state = MARINASTATE_22;
            }
        }
        break;
    }
}

void Marina_ThrowState(u16 actor_index) {
    if (gActors[actor_index].flags & ACTOR_FLAG_ATTACHED) {
        func_8005C550(actor_index, 8);
    }
    gActors[actor_index].unk_12E_u8 |= 0x81;
    gMarinaThrowTable[gActors[gActors[actor_index].parentIndex].grabType](actor_index, gActors[actor_index].parentIndex);
}

void func_8005701C(u16 actor_index) {
    u16 index;
    s32 step;

    index = gActors[actor_index].parentIndex;
    gActors[actor_index].unk_12E_u8 |= 0x81;
    func_8005C550(actor_index, 1);
    switch (gActors[actor_index].stateUpper) {
    case 0:
        gActors[actor_index].unk_17C = 0;
        gActors[actor_index].unk_17C_s8[1] = 3;
        gActors[actor_index].unk_170 = 0x5F;
        gActors[actor_index].var_15C = 8;
        gActors[actor_index].var_150 = 0;
        gActors[actor_index].stateUpper = 1;
        /* fallthrough */
    case 1:
        if ((gActors[actor_index].unk_170_s8[0] == 0) && (gActors[actor_index].unk_170_s8[1] == 3)) {
            gActors[actor_index].velocityY.raw = MARINA_MOVE(15);
            gActors[actor_index].flags &= ~(ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK22 | ACTOR_FLAG_UNK17 | ACTOR_FLAG_UNK16); \
            gActors[actor_index].flags |= ACTOR_FLAG_UNK17;
        }
        func_8004F7D8(actor_index);
        func_8004FB30(actor_index, gActors[actor_index].var_15C);
        if (func_8004F35C(actor_index, (u32* ) &gActors[actor_index].var_150) != 0) {
            gActors[actor_index].velocityX.raw = gActors[actor_index].velocityX.raw / 2;
            func_800554AC(actor_index, index);
            func_8004F614(actor_index, gActors[index].unk_0F8.raw, gActors[index].unk_0FC.raw, 0x32);
            gActors[index].hitByType = HITTYPE_27;
            gActors[actor_index].unk_170 = 0x60;
            gActors[actor_index].stateUpper = 2;
        case 2:
            if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                step = MARINA_MOVE(0);
                gActors[actor_index].velocityX.raw = Math_ApproachS32(gActors[actor_index].velocityX.raw, 0, step);
            }
            else {
                step = MARINA_MOVE(0);
                gActors[actor_index].velocityY.raw = Math_ApproachS32(gActors[actor_index].velocityY.raw, 0, step);
            }
            if (func_8005D418(actor_index) != 0) {
                if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
                    gActors[actor_index].flags |= ACTOR_FLAG_UNK14;
                    gActors[actor_index].state = MARINASTATE_IDLE;
                }
                else {
                    gActors[actor_index].state = MARINASTATE_22;
                }
            }
        }
        break;
    }
}

void Marina_DropState(u16 actor_index) {
    s32 pad;

    gActors[actor_index].unk_12E_u8 |= 0x81;
    gActors[actor_index].velocityX.raw = 0;
    gActors[actor_index].velocityY.raw = 0;
    Marina_DropActor(actor_index, gActors[actor_index].parentIndex);
    gActors[actor_index].unk_12F_u8 = 0;
    D_801370CE &= ~gButton_B;
    if (gActors[actor_index].flags & (ACTOR_FLAG_UNK23 | ACTOR_FLAG_UNK16)) {
        gActors[actor_index].state = MARINASTATE_IDLE;
    }
    else {
        gActors[actor_index].state = MARINASTATE_25;
    }
}
