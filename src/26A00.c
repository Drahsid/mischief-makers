#include "common.h"
#include "dma.h"

#include "linker.h"

extern s32 Trouble_RLE_Type1(u8* src, u8* dst);

typedef struct {
    u8* dispatch_table_rom_start;
    u8* dispatch_table_rom_end;
    u8* object_rom_start;
    u8* object_rom_end;
} OverlayLoadEntry;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
} UnkStruct_D_800D0E84;

extern u16 D_800CBF50;
extern u16 D_800CBF54;
extern u8 D_800DE348[];
extern u32 D_8013772C;
extern u32 D_80137730;
extern u32 D_80137734;
extern u32 D_80137738;
extern u32 D_8013773C;
extern u32 D_80137740;
extern u32 D_80137744;
extern u32 D_80137748;
extern u32 D_8013774C;
extern u32 D_80137750;
extern u32 D_801376C0;
extern u32 D_801376C4;
extern u32 D_801376C8;
extern u32 D_801376CC;
extern u32 D_801376D0;
extern u32 D_801376D4;
extern u32 D_801376D8;
extern u32 D_801376DC;
extern u32 D_801376E0;
extern s32 D_801376E4;
extern u32 D_801376E8;
extern u32 D_801376EC;
extern u32 D_801376F0;
extern u32 D_801376F4;
extern u32 D_801376F8;
extern u32 D_801376FC;
extern u32 D_80137700;
extern u32 D_80137704;
extern u32 D_80137708;
extern u32 D_8013770C;
extern u32 D_80137710;
extern u32 D_80137714;
extern u32 D_80137718;
extern u32 D_8013771C;
extern u32 D_80137720;
extern u32 D_80137724;
extern u32 D_80137728;
extern u32 D_8013776C;
extern u32 D_80137770;
extern u32 D_80137774;
extern u32 D_80137778;
extern u32 D_8013777C;
extern u32 D_80137780;
extern u32 D_80137784;
extern u32 D_80137788;
extern u32 D_8013778C;
extern u32 D_80137790;

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

#define RLE_SCRATCH_HIGH      ((u8*)0x80259000)
#define RLE_SCRATCH_LOW       ((u8*)0x801C4400)
#define SEGMENT_06_DEST       ((u8*)0x80200400)
#define SEGMENT_06_SCRATCH    ((u8*)0x80267DC0)
#define SEGMENT_07_DEST       ((u8*)0x80296000)
#define MAP_BANK_DEST         ((u8*)0x80380000)
#define MAP_BANK_DEST_ALT     ((u8*)0x8038DE00)
#define MAP_BANK_DATA_DEST    ((u8*)0x80388000)
#define MAP_COLLISION_DEST    ((u8*)0x803A0600)
#define ACTOR_LIST_DEST       ((u8*)0x801C3000)
#define COLLISION_DEST        ((u8*)0x801C4300)
#define COLLISION_SCRATCH_ALT ((u8*)0x801D4400)
#define STAGE_TABLE0_DEST     ((u8*)0x801C2000)
#define STAGE_TABLE1_DEST     ((u8*)0x801C4200)
#define STAGE_TABLE2_DEST     ((u8*)0x801C1000)
#define ASSET_DEST0           ((u8*)0x802CA500)
#define ASSET_DEST1           ((u8*)0x802E0000)
#define ASSET_DEST2           ((u8*)0x80300000)
#define ASSET_DEST3           ((u8*)0x80320000)
#define ASSET_DEST4           ((u8*)0x80340000)
#define ASSET_DEST5           ((u8*)0x80360000)
#define ASSET_DEST6           ((u8*)0x803CE800)
#define ASSET_DEST6_TABLE     ((u8*)0x803D7748)
#define D_800D0E84_PU32       ((u32*)D_800D0E84) // TODO

extern u32 D_800CEC10[];
extern u32 D_800D0E88[];
extern u32 D_800D0E8C[];
extern u32 D_800D0E90[];
extern u32 D_800D0E94[];
extern u32 D_800D0E98[];

// used by code outside this file
u32 D_800CD080[] = {
    0x00000004, 0x00000000, 0x000A0A00,
};

OverlayLoadEntry D_800CD08C[] = {
    { overlay_6D1BF0_dispatch_table_ROM_START, overlay_6D1BF0_dispatch_table_ROM_END, overlay_6D1BF0_ROM_START, overlay_6D1BF0_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_67DBA0_dispatch_table_ROM_START, overlay_67DBA0_dispatch_table_ROM_END, overlay_67DBA0_ROM_START, overlay_67DBA0_ROM_END },
    { overlay_6F9330_dispatch_table_ROM_START, overlay_6F9330_dispatch_table_ROM_END, overlay_6F9330_ROM_START, overlay_6F9330_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_6D2750_dispatch_table_ROM_START, overlay_6D2750_dispatch_table_ROM_END, overlay_6D2750_ROM_START, overlay_6D2750_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_6D9FB0_dispatch_table_ROM_START, overlay_6D9FB0_dispatch_table_ROM_END, overlay_6D9FB0_ROM_START, overlay_6D9FB0_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_68A090_dispatch_table_ROM_START, overlay_68A090_dispatch_table_ROM_END, overlay_68A090_ROM_START, overlay_68A090_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_6A00C0_dispatch_table_ROM_START, overlay_6A00C0_dispatch_table_ROM_END, overlay_6A00C0_ROM_START, overlay_6A00C0_ROM_END },
    { overlay_6AAA80_dispatch_table_ROM_START, overlay_6AAA80_dispatch_table_ROM_END, overlay_6AAA80_ROM_START, overlay_6AAA80_ROM_END },
    { overlay_6BCD80_dispatch_table_ROM_START, overlay_6BCD80_dispatch_table_ROM_END, overlay_6BCD80_ROM_START, overlay_6BCD80_ROM_END },
    { overlay_6E2AE0_dispatch_table_ROM_START, overlay_6E2AE0_dispatch_table_ROM_END, overlay_6E2AE0_ROM_START, overlay_6E2AE0_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_6EE550_dispatch_table_ROM_START, overlay_6EE550_dispatch_table_ROM_END, overlay_6EE550_ROM_START, overlay_6EE550_ROM_END },
    { overlay_6F3DA0_dispatch_table_ROM_START, overlay_6F3DA0_dispatch_table_ROM_END, overlay_6F3DA0_ROM_START, overlay_6F3DA0_ROM_END },
    { overlay_6F7B20_dispatch_table_ROM_START, overlay_6F7B20_dispatch_table_ROM_END, overlay_6F7B20_ROM_START, overlay_6F7B20_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
    { overlay_713600_dispatch_table_ROM_START, overlay_713600_dispatch_table_ROM_END, overlay_713600_ROM_START, overlay_713600_ROM_END },
};

OverlayLoadEntry D_800CD60C[] = {
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_722A30_dispatch_table_ROM_START, overlay_722A30_dispatch_table_ROM_END, overlay_722A30_ROM_START, overlay_722A30_ROM_END },
    { overlay_72B120_dispatch_table_ROM_START, overlay_72B120_dispatch_table_ROM_END, overlay_72B120_ROM_START, overlay_72B120_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_753860_dispatch_table_ROM_START, overlay_753860_dispatch_table_ROM_END, overlay_753860_ROM_START, overlay_753860_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_749C90_dispatch_table_ROM_START, overlay_749C90_dispatch_table_ROM_END, overlay_749C90_ROM_START, overlay_749C90_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_754570_dispatch_table_ROM_START, overlay_754570_dispatch_table_ROM_END, overlay_754570_ROM_START, overlay_754570_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_75D630_dispatch_table_ROM_START, overlay_75D630_dispatch_table_ROM_END, overlay_75D630_ROM_START, overlay_75D630_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_73D070_dispatch_table_ROM_START, overlay_73D070_dispatch_table_ROM_END, overlay_73D070_ROM_START, overlay_73D070_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_742CA0_dispatch_table_ROM_START, overlay_742CA0_dispatch_table_ROM_END, overlay_742CA0_ROM_START, overlay_742CA0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_719700_dispatch_table_ROM_START, overlay_719700_dispatch_table_ROM_END, overlay_719700_ROM_START, overlay_719700_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
    { overlay_731DD0_dispatch_table_ROM_START, overlay_731DD0_dispatch_table_ROM_END, overlay_731DD0_ROM_START, overlay_731DD0_ROM_END },
};

OverlayLoadEntry D_800CDB8C[] = {
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_78CB60_dispatch_table_ROM_START, overlay_78CB60_dispatch_table_ROM_END, overlay_78CB60_ROM_START, overlay_78CB60_ROM_END },
    { overlay_78CB60_dispatch_table_ROM_START, overlay_78CB60_dispatch_table_ROM_END, overlay_78CB60_ROM_START, overlay_78CB60_ROM_END },
    { overlay_78CB60_dispatch_table_ROM_START, overlay_78CB60_dispatch_table_ROM_END, overlay_78CB60_ROM_START, overlay_78CB60_ROM_END },
    { overlay_78CB60_dispatch_table_ROM_START, overlay_78CB60_dispatch_table_ROM_END, overlay_78CB60_ROM_START, overlay_78CB60_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_78B430_dispatch_table_ROM_START, overlay_78B430_dispatch_table_ROM_END, overlay_78B430_ROM_START, overlay_78B430_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_78CB60_dispatch_table_ROM_START, overlay_78CB60_dispatch_table_ROM_END, overlay_78CB60_ROM_START, overlay_78CB60_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_766080_dispatch_table_ROM_START, overlay_766080_dispatch_table_ROM_END, overlay_766080_ROM_START, overlay_766080_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76F390_dispatch_table_ROM_START, overlay_76F390_dispatch_table_ROM_END, overlay_76F390_ROM_START, overlay_76F390_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_76FD60_dispatch_table_ROM_START, overlay_76FD60_dispatch_table_ROM_END, overlay_76FD60_ROM_START, overlay_76FD60_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_775460_dispatch_table_ROM_START, overlay_775460_dispatch_table_ROM_END, overlay_775460_ROM_START, overlay_775460_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_77F240_dispatch_table_ROM_START, overlay_77F240_dispatch_table_ROM_END, overlay_77F240_ROM_START, overlay_77F240_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_7854B0_dispatch_table_ROM_START, overlay_7854B0_dispatch_table_ROM_END, overlay_7854B0_ROM_START, overlay_7854B0_ROM_END },
    { overlay_78B430_dispatch_table_ROM_START, overlay_78B430_dispatch_table_ROM_END, overlay_78B430_ROM_START, overlay_78B430_ROM_END },
    { overlay_78B430_dispatch_table_ROM_START, overlay_78B430_dispatch_table_ROM_END, overlay_78B430_ROM_START, overlay_78B430_ROM_END },
    { overlay_78B430_dispatch_table_ROM_START, overlay_78B430_dispatch_table_ROM_END, overlay_78B430_ROM_START, overlay_78B430_ROM_END },
};

OverlayLoadEntry D_800CE10C[] = {
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7A6E60_dispatch_table_ROM_START, overlay_7A6E60_dispatch_table_ROM_END, overlay_7A6E60_ROM_START, overlay_7A6E60_ROM_END },
    { overlay_7B3FC0_dispatch_table_ROM_START, overlay_7B3FC0_dispatch_table_ROM_END, overlay_7B3FC0_ROM_START, overlay_7B3FC0_ROM_END },
    { overlay_7AC7F0_dispatch_table_ROM_START, overlay_7AC7F0_dispatch_table_ROM_END, overlay_7AC7F0_ROM_START, overlay_7AC7F0_ROM_END },
    { overlay_7A6E60_dispatch_table_ROM_START, overlay_7A6E60_dispatch_table_ROM_END, overlay_7A6E60_ROM_START, overlay_7A6E60_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7BC840_dispatch_table_ROM_START, overlay_7BC840_dispatch_table_ROM_END, overlay_7BC840_ROM_START, overlay_7BC840_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7969B0_dispatch_table_ROM_START, overlay_7969B0_dispatch_table_ROM_END, overlay_7969B0_ROM_START, overlay_7969B0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7986D0_dispatch_table_ROM_START, overlay_7986D0_dispatch_table_ROM_END, overlay_7986D0_ROM_START, overlay_7986D0_ROM_END },
    { overlay_7A13D0_dispatch_table_ROM_START, overlay_7A13D0_dispatch_table_ROM_END, overlay_7A13D0_ROM_START, overlay_7A13D0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7B8760_dispatch_table_ROM_START, overlay_7B8760_dispatch_table_ROM_END, overlay_7B8760_ROM_START, overlay_7B8760_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
    { overlay_7C0AB0_dispatch_table_ROM_START, overlay_7C0AB0_dispatch_table_ROM_END, overlay_7C0AB0_ROM_START, overlay_7C0AB0_ROM_END },
};

OverlayLoadEntry D_800CE68C[] = {
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7EA3C0_dispatch_table_ROM_START, overlay_7EA3C0_dispatch_table_ROM_END, overlay_7EA3C0_ROM_START, overlay_7EA3C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7DAAA0_dispatch_table_ROM_START, overlay_7DAAA0_dispatch_table_ROM_END, overlay_7DAAA0_ROM_START, overlay_7DAAA0_ROM_END },
    { overlay_7DAAA0_dispatch_table_ROM_START, overlay_7DAAA0_dispatch_table_ROM_END, overlay_7DAAA0_ROM_START, overlay_7DAAA0_ROM_END },
    { overlay_7DAAA0_dispatch_table_ROM_START, overlay_7DAAA0_dispatch_table_ROM_END, overlay_7DAAA0_ROM_START, overlay_7DAAA0_ROM_END },
    { overlay_7DAAA0_dispatch_table_ROM_START, overlay_7DAAA0_dispatch_table_ROM_END, overlay_7DAAA0_ROM_START, overlay_7DAAA0_ROM_END },
    { overlay_7DAAA0_dispatch_table_ROM_START, overlay_7DAAA0_dispatch_table_ROM_END, overlay_7DAAA0_ROM_START, overlay_7DAAA0_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7EA3C0_dispatch_table_ROM_START, overlay_7EA3C0_dispatch_table_ROM_END, overlay_7EA3C0_ROM_START, overlay_7EA3C0_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000, (u8*)0x00000000 },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7EA710_dispatch_table_ROM_START, overlay_7EA710_dispatch_table_ROM_END, overlay_7EA710_ROM_START, overlay_7EA710_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7C6AB0_dispatch_table_ROM_START, overlay_7C6AB0_dispatch_table_ROM_END, overlay_7C6AB0_ROM_START, overlay_7C6AB0_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7CE060_dispatch_table_ROM_START, overlay_7CE060_dispatch_table_ROM_END, overlay_7CE060_ROM_START, overlay_7CE060_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7D40C0_dispatch_table_ROM_START, overlay_7D40C0_dispatch_table_ROM_END, overlay_7D40C0_ROM_START, overlay_7D40C0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7DC7A0_dispatch_table_ROM_START, overlay_7DC7A0_dispatch_table_ROM_END, overlay_7DC7A0_ROM_START, overlay_7DC7A0_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E2A30_dispatch_table_ROM_START, overlay_7E2A30_dispatch_table_ROM_END, overlay_7E2A30_ROM_START, overlay_7E2A30_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E6A20_dispatch_table_ROM_START, overlay_7E6A20_dispatch_table_ROM_END, overlay_7E6A20_ROM_START, overlay_7E6A20_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
    { overlay_7E7EB0_dispatch_table_ROM_START, overlay_7E7EB0_dispatch_table_ROM_END, overlay_7E7EB0_ROM_START, overlay_7E7EB0_ROM_END },
};

u32 D_800CEC0C[] = {
    (u32)Segment_04_DATA_START,
    (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end, (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end,
    (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end, (u32)rle_0004_1197F0_040296F0, (u32)rle_0004_1197F0_040296F0_end,
    (u32)rle_0006_1622C0_040721C0, (u32)rle_0006_1622C0_040721C0_end, (u32)rle_0002_1017D0_040116D0, (u32)rle_0002_1017D0_040116D0_end,
    (u32)rle_0007_16C960_0407C860, (u32)rle_0007_16C960_0407C860_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0006_1622C0_040721C0, (u32)rle_0006_1622C0_040721C0_end, (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end,
    (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end, (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end,
    (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end, (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end,
    (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end, (u32)rle_0000_F0100_04000000, (u32)rle_0000_F0100_04000000_end,
    (u32)rle_0007_16C960_0407C860, (u32)rle_0007_16C960_0407C860_end, (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end,
    (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end,
    (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end, (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end,
    (u32)rle_0002_1017D0_040116D0, (u32)rle_0002_1017D0_040116D0_end, (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end,
    (u32)rle_0002_1017D0_040116D0, (u32)rle_0002_1017D0_040116D0_end, (u32)rle_0002_1017D0_040116D0, (u32)rle_0002_1017D0_040116D0_end,
    (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end, (u32)rle_0009_181E20_04091D20, (u32)rle_0009_181E20_04091D20_end,
    (u32)rle_0007_16C960_0407C860, (u32)rle_0007_16C960_0407C860_end, (u32)rle_0006_1622C0_040721C0, (u32)rle_0006_1622C0_040721C0_end,
    (u32)rle_0007_16C960_0407C860, (u32)rle_0007_16C960_0407C860_end, (u32)rle_0002_1017D0_040116D0, (u32)rle_0002_1017D0_040116D0_end,
    (u32)rle_0001_F01C0_040000C0, (u32)rle_0001_F01C0_040000C0_end, (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end,
    (u32)rle_0003_10A250_0401A150, (u32)rle_0003_10A250_0401A150_end, (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end,
    (u32)rle_0005_137760_04047660, (u32)rle_0005_137760_04047660_end, (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end,
    (u32)rle_0010_18BF70_0409BE70, (u32)rle_0010_18BF70_0409BE70_end, (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end,
    (u32)rle_0011_1C6690_040D6590, (u32)rle_0011_1C6690_040D6590_end, (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0007_16C960_0407C860, (u32)rle_0007_16C960_0407C860_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end,
    (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end, (u32)rle_0012_1D18F0_040E17F0, (u32)rle_0012_1D18F0_040E17F0_end,
};

u32 D_800CEED0[] = {
    (u32)Segment_03_DATA_START,
    (u32)collision_0005_4A2020_03000060, (u32)collision_0006_4A2040_03000080, (u32)collision_0007_4A2148_03000188,
    (u32)collision_0007_4A2148_03000188, (u32)collision_0008_4A2180_030001C0, (u32)collision_0009_4A2308_03000348,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0009_4A2308_03000348, (u32)collision_0010_4A2318_03000358, (u32)collision_0013_4A2358_03000398,
    (u32)collision_0011_4A2328_03000368, (u32)collision_0012_4A2340_03000380, (u32)collision_0013_4A2358_03000398,
    (u32)collision_0013_4A2358_03000398, (u32)collision_0014_4A2368_030003A8, (u32)collision_0015_4A2378_030003B8,
    (u32)collision_0015_4A2378_030003B8, (u32)collision_0016_4A2398_030003D8, (u32)collision_0017_4A23C8_03000408,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0017_4A23C8_03000408, (u32)collision_0018_4A23F0_03000430, (u32)collision_0019_4A2550_03000590,
    (u32)collision_0019_4A2550_03000590, (u32)collision_0020_4A2588_030005C8, (u32)collision_0021_4A26A8_030006E8,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0021_4A26A8_030006E8, (u32)collision_0022_4A26C8_03000708, (u32)collision_0023_4A2740_03000780,
    (u32)collision_0023_4A2740_03000780, (u32)collision_0024_4A2750_03000790, (u32)collision_0025_4A2760_030007A0,
    (u32)collision_0023_4A2740_03000780, (u32)collision_0024_4A2750_03000790, (u32)collision_0025_4A2760_030007A0,
    (u32)collision_0023_4A2740_03000780, (u32)collision_0024_4A2750_03000790, (u32)collision_0025_4A2760_030007A0,
    (u32)collision_0003_4A2000_03000040, (u32)collision_0004_4A2010_03000050, (u32)collision_0005_4A2020_03000060,
    (u32)collision_0025_4A2760_030007A0, (u32)collision_0026_4A2770_030007B0, (u32)collision_0027_4A2788_030007C8,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0027_4A2788_030007C8, (u32)collision_0028_4A27D8_03000818, (u32)collision_0029_4A2A20_03000A60,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0031_4A2F48_03000F88, (u32)collision_0032_4A2FA0_03000FE0, (u32)collision_0033_4A32F8_03001338,
    (u32)collision_0003_4A2000_03000040, (u32)collision_0004_4A2010_03000050, (u32)collision_0005_4A2020_03000060,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0003_4A2000_03000040, (u32)collision_0004_4A2010_03000050, (u32)collision_0005_4A2020_03000060,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0033_4A32F8_03001338, (u32)collision_0034_4A3310_03001350, (u32)collision_0035_4A3358_03001398,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0035_4A3358_03001398, (u32)collision_0036_4A3370_030013B0, (u32)collision_0037_4A33A0_030013E0,
    (u32)collision_0037_4A33A0_030013E0, (u32)collision_0038_4A3400_03001440, (u32)collision_0039_4A3748_03001788,
    (u32)collision_0039_4A3748_03001788, (u32)collision_0040_4A3780_030017C0, (u32)collision_0041_4A38C0_03001900,
    (u32)collision_0041_4A38C0_03001900, (u32)collision_0042_4A38E8_03001928, (u32)collision_0043_4A3958_03001998,
    (u32)collision_0043_4A3958_03001998, (u32)collision_0044_4A3998_030019D8, (u32)collision_0045_4A3B90_03001BD0,
    (u32)collision_0045_4A3B90_03001BD0, (u32)collision_0046_4A3BD8_03001C18, (u32)collision_0047_4A3D40_03001D80,
    (u32)collision_0047_4A3D40_03001D80, (u32)collision_0048_4A3D70_03001DB0, (u32)collision_0049_4A3E28_03001E68,
    (u32)collision_0049_4A3E28_03001E68, (u32)collision_0050_4A3E50_03001E90, (u32)collision_0051_4A3ED8_03001F18,
    (u32)collision_0051_4A3ED8_03001F18, (u32)collision_0052_4A3EE8_03001F28, (u32)collision_0053_4A3EF8_03001F38,
    (u32)collision_0053_4A3EF8_03001F38, (u32)collision_0054_4A3F30_03001F70, (u32)collision_0055_4A4080_030020C0,
    (u32)collision_0055_4A4080_030020C0, (u32)collision_0056_4A40E0_03002120, (u32)collision_0057_4A44A0_030024E0,
    (u32)collision_0057_4A44A0_030024E0, (u32)collision_0058_4A44F8_03002538, (u32)collision_0059_4A4A90_03002AD0,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0059_4A4A90_03002AD0, (u32)collision_0060_4A4AA0_03002AE0, (u32)collision_0061_4A4AB0_03002AF0,
    (u32)collision_0061_4A4AB0_03002AF0, (u32)collision_0062_4A4B00_03002B40, (u32)collision_0063_4A4C38_03002C78,
    (u32)collision_0063_4A4C38_03002C78, (u32)collision_0064_4A4C68_03002CA8, (u32)collision_0065_4A4E98_03002ED8,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0029_4A2A20_03000A60, (u32)collision_0030_4A2A78_03000AB8, (u32)collision_0031_4A2F48_03000F88,
    (u32)collision_0065_4A4E98_03002ED8, (u32)collision_0066_4A4EC0_03002F00, (u32)collision_0067_4A5058_03003098,
    (u32)collision_0067_4A5058_03003098, (u32)collision_0068_4A5088_030030C8, (u32)collision_0069_4A52E8_03003328,
    (u32)collision_0069_4A52E8_03003328, (u32)collision_0070_4A5318_03003358, (u32)collision_0071_4A5520_03003560,
    (u32)collision_0071_4A5520_03003560, (u32)collision_0072_4A5540_03003580, (u32)collision_0073_4A5640_03003680,
    (u32)collision_0073_4A5640_03003680, (u32)collision_0074_4A5670_030036B0, (u32)collision_0075_4A56F8_03003738,
    (u32)collision_0075_4A56F8_03003738, (u32)collision_0076_4A5730_03003770, (u32)collision_0077_4A5880_030038C0,
    (u32)collision_0077_4A5880_030038C0, (u32)collision_0078_4A58A0_030038E0, (u32)collision_0079_4A5970_030039B0,
    (u32)collision_0079_4A5970_030039B0, (u32)collision_0080_4A5990_030039D0, (u32)collision_0081_4A59D8_03003A18,
    (u32)collision_0081_4A59D8_03003A18, (u32)collision_0082_4A5A18_03003A58, (u32)collision_0083_4A5C50_03003C90,
    (u32)collision_0083_4A5C50_03003C90, (u32)collision_0084_4A5C98_03003CD8, (u32)collision_0085_4A5E68_03003EA8,
    (u32)collision_0085_4A5E68_03003EA8, (u32)collision_0086_4A5EA8_03003EE8, (u32)collision_0087_4A6018_03004058,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0087_4A6018_03004058, (u32)collision_0088_4A6040_03004080, (u32)collision_0089_4A61D8_03004218,
    (u32)collision_0089_4A61D8_03004218, (u32)collision_0090_4A6208_03004248, (u32)collision_0091_4A6448_03004488,
    (u32)collision_0091_4A6448_03004488, (u32)collision_0092_4A6488_030044C8, (u32)collision_0093_4A6640_03004680,
    (u32)collision_0093_4A6640_03004680, (u32)collision_0094_4A6698_030046D8, (u32)collision_0095_4A68E0_03004920,
    (u32)collision_0095_4A68E0_03004920, (u32)collision_0096_4A6920_03004960, (u32)collision_0097_4A6BA0_03004BE0,
    (u32)collision_0097_4A6BA0_03004BE0, (u32)collision_0098_4A6BE0_03004C20, (u32)collision_0099_4A6D40_03004D80,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0099_4A6D40_03004D80, (u32)collision_0100_4A6D50_03004D90, (u32)collision_0101_4A6D68_03004DA8,
    (u32)collision_0101_4A6D68_03004DA8, (u32)collision_0102_4A6D78_03004DB8, (u32)collision_0103_4A6D90_03004DD0,
    (u32)collision_0103_4A6D90_03004DD0, (u32)collision_0104_4A6DA0_03004DE0, (u32)collision_0105_4A6DB8_03004DF8,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0000_4A1FC0_03000000, (u32)collision_0001_4A1FD0_03000010, (u32)collision_0002_4A1FE0_03000020,
    (u32)collision_0105_4A6DB8_03004DF8, (u32)collision_0106_4A6DD0_03004E10, (u32)collision_0107_4A6DE8_03004E28,
    (u32)collision_0107_4A6DE8_03004E28, (u32)collision_0108_4A6E08_03004E48, (u32)collision_0109_4A6E78_03004EB8,
    (u32)collision_0109_4A6E78_03004EB8, (u32)collision_0110_4A6EA8_03004EE8, (u32)map_table0_4A6F60_03004FA0,
};

u32 D_800CF2F4[] = {
    (u32)Segment_03_DATA_START,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A7320_03005360, (u32)map_table0_4A73E0_03005420,
    (u32)map_table0_4A85A8_030065E8, (u32)map_table0_4A8668_030066A8,
    (u32)map_table0_4A7620_03005660, (u32)map_table0_4A77E0_03005820,
    (u32)map_table0_4A77E0_03005820, (u32)map_table0_4A7928_03005968,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A8468_030064A8, (u32)map_table0_4A85A8_030065E8,
    (u32)map_table0_4A85A8_030065E8, (u32)map_table0_4A8668_030066A8,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A77E0_03005820, (u32)map_table0_4A7928_03005968,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A6F60_03004FA0, (u32)map_table0_4A6FE0_03005020,
    (u32)map_table0_4A77E0_03005820, (u32)map_table0_4A7928_03005968,
    (u32)map_table0_4A85A8_030065E8, (u32)map_table0_4A8668_030066A8,
    (u32)map_table0_4A77E0_03005820, (u32)map_table0_4A7928_03005968,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A6FE0_03005020, (u32)map_table0_4A72E0_03005320,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A72E0_03005320, (u32)map_table0_4A7320_03005360,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7FE8_03006028, (u32)map_table0_4A8468_030064A8,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A7928_03005968, (u32)map_table0_4A7FE8_03006028,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A77E0_03005820, (u32)map_table0_4A7928_03005968,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
    (u32)map_table0_4A8668_030066A8, (u32)map_cell_table_4A8B30_03006B70,
};

u32 D_800CF5B8[] = {
    (u32)Segment_03_DATA_START,
    (u32)map_cell_table_4A8B30_03006B70, (u32)map_cell_table_4A8C30_03006C70,
    (u32)map_cell_table_4A8C30_03006C70, (u32)map_cell_table_4A8D30_03006D70,
    (u32)map_cell_table_4A8D30_03006D70, (u32)map_cell_table_4A8E30_03006E70,
    (u32)map_cell_table_4A8E30_03006E70, (u32)map_cell_table_4A8F30_03006F70,
    (u32)map_cell_table_4A9030_03007070, (u32)map_cell_table_4A9130_03007170,
    (u32)map_cell_table_4A9030_03007070, (u32)map_cell_table_4A9130_03007170,
    (u32)map_cell_table_4A9930_03007970, (u32)map_cell_table_4A9A30_03007A70,
    (u32)map_cell_table_4A9230_03007270, (u32)map_cell_table_4A9330_03007370,
    (u32)map_cell_table_4A9330_03007370, (u32)map_cell_table_4A9430_03007470,
    (u32)map_cell_table_4A9430_03007470, (u32)map_cell_table_4A9530_03007570,
    (u32)map_cell_table_4A9530_03007570, (u32)map_cell_table_4A9630_03007670,
    (u32)map_cell_table_4A9630_03007670, (u32)map_cell_table_4A9730_03007770,
    (u32)map_cell_table_4A9730_03007770, (u32)map_cell_table_4A9830_03007870,
    (u32)map_cell_table_4A9830_03007870, (u32)map_cell_table_4A9930_03007970,
    (u32)map_cell_table_4A9930_03007970, (u32)map_cell_table_4A9A30_03007A70,
    (u32)map_cell_table_4A9A30_03007A70, (u32)map_cell_table_4A9B30_03007B70,
    (u32)map_cell_table_4A9B30_03007B70, (u32)map_cell_table_4A9C30_03007C70,
    (u32)map_cell_table_4A9C30_03007C70, (u32)map_cell_table_4A9D30_03007D70,
    (u32)map_cell_table_4A9D30_03007D70, (u32)map_cell_table_4A9E30_03007E70,
    (u32)map_cell_table_4A9E30_03007E70, (u32)map_cell_table_4A9F30_03007F70,
    (u32)map_cell_table_4A9F30_03007F70, (u32)map_cell_table_4AA030_03008070,
    (u32)map_cell_table_4AA030_03008070, (u32)map_cell_table_4AA130_03008170,
    (u32)map_cell_table_4A9F30_03007F70, (u32)map_cell_table_4AA030_03008070,
    (u32)map_cell_table_4AA230_03008270, (u32)map_cell_table_4AA330_03008370,
    (u32)map_cell_table_4AA330_03008370, (u32)map_cell_table_4AA430_03008470,
    (u32)map_cell_table_4A9E30_03007E70, (u32)map_cell_table_4A9F30_03007F70,
    (u32)map_cell_table_4AA530_03008570, (u32)map_cell_table_4AA630_03008670,
    (u32)map_cell_table_4A9E30_03007E70, (u32)map_cell_table_4A9F30_03007F70,
    (u32)map_cell_table_4AA730_03008770, (u32)map_cell_table_4AA830_03008870,
    (u32)map_cell_table_4AA830_03008870, (u32)map_cell_table_4AA930_03008970,
    (u32)map_cell_table_4AA930_03008970, (u32)map_cell_table_4AAA30_03008A70,
    (u32)map_cell_table_4AAA30_03008A70, (u32)map_cell_table_4AAB30_03008B70,
    (u32)map_cell_table_4AAB30_03008B70, (u32)map_cell_table_4AAC30_03008C70,
    (u32)map_cell_table_4AAC30_03008C70, (u32)map_cell_table_4AAD30_03008D70,
    (u32)map_cell_table_4AAD30_03008D70, (u32)map_cell_table_4AAE30_03008E70,
    (u32)map_cell_table_4AAE30_03008E70, (u32)map_cell_table_4AAF30_03008F70,
    (u32)map_cell_table_4AAF30_03008F70, (u32)map_cell_table_4AB030_03009070,
    (u32)map_cell_table_4AB030_03009070, (u32)map_cell_table_4AB130_03009170,
    (u32)map_cell_table_4AB130_03009170, (u32)map_cell_table_4AB230_03009270,
    (u32)map_cell_table_4AB230_03009270, (u32)map_cell_table_4AB330_03009370,
    (u32)map_cell_table_4AB330_03009370, (u32)map_cell_table_4AB430_03009470,
    (u32)map_cell_table_4AB430_03009470, (u32)map_cell_table_4AB530_03009570,
    (u32)map_cell_table_4AB530_03009570, (u32)map_cell_table_4AB630_03009670,
    (u32)map_cell_table_4AB630_03009670, (u32)map_cell_table_4AB730_03009770,
    (u32)map_cell_table_4AB730_03009770, (u32)map_cell_table_4AB830_03009870,
    (u32)map_cell_table_4AB830_03009870, (u32)map_cell_table_4AB930_03009970,
    (u32)map_cell_table_4AB930_03009970, (u32)map_cell_table_4ABA30_03009A70,
    (u32)map_cell_table_4ABA30_03009A70, (u32)map_cell_table_4ABB30_03009B70,
    (u32)map_cell_table_4ABB30_03009B70, (u32)map_cell_table_4ABC30_03009C70,
    (u32)map_cell_table_4ABC30_03009C70, (u32)map_cell_table_4ABD30_03009D70,
    (u32)map_cell_table_4ABD30_03009D70, (u32)map_cell_table_4ABE30_03009E70,
    (u32)map_cell_table_4ABE30_03009E70, (u32)map_cell_table_4ABF30_03009F70,
    (u32)map_cell_table_4ABF30_03009F70, (u32)map_cell_table_4AC030_0300A070,
    (u32)map_cell_table_4AC030_0300A070, (u32)map_cell_table_4AC130_0300A170,
    (u32)map_cell_table_4AC130_0300A170, (u32)map_cell_table_4AC230_0300A270,
    (u32)map_cell_table_4AC230_0300A270, (u32)map_cell_table_4AC330_0300A370,
    (u32)map_cell_table_4AC330_0300A370, (u32)map_cell_table_4AC430_0300A470,
    (u32)map_cell_table_4AC430_0300A470, (u32)map_cell_table_4AC530_0300A570,
    (u32)map_cell_table_4A8B30_03006B70, (u32)map_cell_table_4A8C30_03006C70,
    (u32)map_cell_table_4AC630_0300A670, (u32)map_cell_table_4AC730_0300A770,
    (u32)map_cell_table_4AC730_0300A770, (u32)map_cell_table_4AC830_0300A870,
    (u32)map_cell_table_4AC830_0300A870, (u32)map_cell_table_4AC930_0300A970,
    (u32)map_cell_table_4AC930_0300A970, (u32)map_cell_table_4ACA30_0300AA70,
    (u32)map_cell_table_4ACA30_0300AA70, (u32)map_cell_table_4ACB30_0300AB70,
    (u32)map_cell_table_4ACB30_0300AB70, (u32)map_cell_table_4ACC30_0300AC70,
    (u32)map_cell_table_4ACC30_0300AC70, (u32)map_cell_table_4ACD30_0300AD70,
    (u32)map_cell_table_4ACD30_0300AD70, (u32)map_cell_table_4ACE30_0300AE70,
    (u32)map_cell_table_4ACE30_0300AE70, (u32)map_cell_table_4ACF30_0300AF70,
    (u32)map_cell_table_4ACF30_0300AF70, (u32)map_cell_table_4AD030_0300B070,
    (u32)map_cell_table_4AD030_0300B070, (u32)map_cell_table_4AD130_0300B170,
    (u32)map_cell_table_4AD130_0300B170, (u32)map_cell_table_4AD230_0300B270,
    (u32)map_cell_table_4AD230_0300B270, (u32)map_cell_table_4AD330_0300B370,
    (u32)map_cell_table_4AD330_0300B370, (u32)map_cell_table_4AD430_0300B470,
    (u32)map_cell_table_4AD430_0300B470, (u32)map_cell_table_4AD530_0300B570,
    (u32)map_cell_table_4AD530_0300B570, (u32)map_cell_table_4AD630_0300B670,
    (u32)map_cell_table_4AD630_0300B670, (u32)map_cell_table_4AD730_0300B770,
    (u32)map_cell_table_4AD730_0300B770, (u32)map_cell_table_4AD830_0300B870,
    (u32)map_cell_table_4AD830_0300B870, (u32)map_cell_table_4AD930_0300B970,
    (u32)map_cell_table_4AD930_0300B970, (u32)map_cell_table_4ADA30_0300BA70,
    (u32)map_cell_table_4AA730_03008770, (u32)map_cell_table_4AA830_03008870,
    (u32)map_cell_table_4ADB30_0300BB70, (u32)map_cell_table_4ADC30_0300BC70,
    (u32)map_cell_table_4ADC30_0300BC70, (u32)map_cell_table_4ADD30_0300BD70,
    (u32)map_cell_table_4ADD30_0300BD70, (u32)map_cell_table_4ADE30_0300BE70,
    (u32)map_cell_table_4ADE30_0300BE70, (u32)map_cell_table_4ADF30_0300BF70,
    (u32)map_cell_table_4ADF30_0300BF70, (u32)map_cell_table_4AE030_0300C070,
    (u32)map_cell_table_4AE030_0300C070, (u32)map_cell_table_4AE130_0300C170,
    (u32)map_cell_table_4AE130_0300C170, (u32)map_cell_table_4AE230_0300C270,
    (u32)map_cell_table_4AE230_0300C270, (u32)map_table2_4AE330_0300C370,
};

u32 D_800CF87C[] = {
    (u32)Segment_03_DATA_START,
    (u32)map_table2_4B09E0_0300EA20, (u32)map_table2_4B14A0_0300F4E0,
    (u32)map_table2_4B3920_03011960, (u32)map_table2_4B3C60_03011CA0,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B0310_0300E350, (u32)map_table2_4B09E0_0300EA20,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B3C60_03011CA0, (u32)map_table2_4B4180_030121C0,
    (u32)map_table2_4AFBC0_0300DC00, (u32)map_table2_4B0310_0300E350,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B4700_03012740, (u32)map_table2_4B4A70_03012AB0,
    (u32)map_table2_4B81B0_030161F0, (u32)map_table2_4B8530_03016570,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B5880_030138C0, (u32)map_table2_4B61B0_030141F0,
    (u32)map_table2_4B5880_030138C0, (u32)map_table2_4B61B0_030141F0,
    (u32)map_table2_4B5880_030138C0, (u32)map_table2_4B61B0_030141F0,
    (u32)map_table2_4B5880_030138C0, (u32)map_table2_4B61B0_030141F0,
    (u32)map_table2_4B61B0_030141F0, (u32)map_table2_4B6400_03014440,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B8780_030167C0, (u32)map_table2_4B8A00_03016A40,
    (u32)map_table2_4B6400_03014440, (u32)map_table2_4B6B80_03014BC0,
    (u32)map_table2_4B79F0_03015A30, (u32)map_table2_4B7AB0_03015AF0,
    (u32)map_table2_4B8530_03016570, (u32)map_table2_4B8780_030167C0,
    (u32)map_table2_4B92D0_03017310, (u32)map_table2_4B94C0_03017500,
    (u32)map_table2_4B94C0_03017500, (u32)map_table2_4B94C0_03017500_end,
    (u32)map_table2_4AE440_0300C480, (u32)map_table2_4AEAF0_0300CB30,
    (u32)map_table2_4B4180_030121C0, (u32)map_table2_4B4700_03012740,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B4A70_03012AB0, (u32)map_table2_4B5390_030133D0,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B3980_030119C0, (u32)map_table2_4B3B00_03011B40,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B6DF0_03014E30, (u32)map_table2_4B79F0_03015A30,
    (u32)map_table2_4B6B80_03014BC0, (u32)map_table2_4B6DF0_03014E30,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B7AB0_03015AF0, (u32)map_table2_4B7F20_03015F60,
    (u32)map_table2_4B7F20_03015F60, (u32)map_table2_4B81B0_030161F0,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B14A0_0300F4E0, (u32)map_table2_4B17F0_0300F830,
    (u32)map_table2_4B17F0_0300F830, (u32)map_table2_4B1A70_0300FAB0,
    (u32)map_table2_4B1A70_0300FAB0, (u32)map_table2_4B1B50_0300FB90,
    (u32)map_table2_4B1B50_0300FB90, (u32)map_table2_4B1DA0_0300FDE0,
    (u32)map_table2_4B1DA0_0300FDE0, (u32)map_table2_4B2560_030105A0,
    (u32)map_table2_4B09E0_0300EA20, (u32)map_table2_4B14A0_0300F4E0,
    (u32)map_table2_4B2560_030105A0, (u32)map_table2_4B2820_03010860,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B3B00_03011B40, (u32)map_table2_4B3C60_03011CA0,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AEAF0_0300CB30, (u32)map_table2_4AF190_0300D1D0,
    (u32)map_table2_4AF190_0300D1D0, (u32)map_table2_4AF6B0_0300D6F0,
    (u32)map_table2_4AF6B0_0300D6F0, (u32)map_table2_4AFBC0_0300DC00,
    (u32)map_table2_4B2820_03010860, (u32)map_table2_4B2CA0_03010CE0,
    (u32)map_table2_4B2CA0_03010CE0, (u32)map_table2_4B3920_03011960,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B5390_030133D0, (u32)map_table2_4B5880_030138C0,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B8DD0_03016E10, (u32)map_table2_4B92D0_03017310,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4B8A00_03016A40, (u32)map_table2_4B8DD0_03016E10,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
    (u32)map_table2_4AE330_0300C370, (u32)map_table2_4AE440_0300C480,
};

u32 D_800CFB40[] = {
    (u32)Segment_02_DATA_START, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)Segment_02_DATA_START, (u32)D_4A15B0_02000010, (u32)D_4A15B0_02000010,
    (u32)D_4A15CC_0200002C, (u32)D_4A15CC_0200002C, (u32)D_4A15DC_0200003C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A15DC_0200003C, (u32)D_4A15EC_0200004C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A15EC_0200004C, (u32)D_4A15FC_0200005C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A15FC_0200005C, (u32)D_4A160C_0200006C, (u32)D_4A160C_0200006C,
    (u32)D_4A161C_0200007C, (u32)D_4A161C_0200007C, (u32)D_4A162C_0200008C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A162C_0200008C, (u32)D_4A1F84_020009E4, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1F84_020009E4, (u32)D_4A1FB8_02000A18, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18, (u32)D_4A1FBC_02000A1C, (u32)D_4A1FB8_02000A18,
    (u32)D_4A1FBC_02000A1C,
};

u32 D_800CFE04[] = {
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0007_29CF70_01054030, (u32)rle_0007_29CF70_01054030_end,
    0x00000000, 0x00000000, (u32)rle_0030_33DE00_010F4EC0, (u32)rle_0030_33DE00_010F4EC0_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0002_291F60_01049020, (u32)rle_0002_291F60_01049020_end, (u32)rle_0020_2F1A90_010A8B50, (u32)rle_0020_2F1A90_010A8B50_end,
    0x00000000, 0x00000000, (u32)rle_0036_3B0E50_01167F10, (u32)rle_0036_3B0E50_01167F10_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0021_2FC020_010B30E0, (u32)rle_0021_2FC020_010B30E0_end,
    (u32)rle_0026_322600_010D96C0, (u32)rle_0026_322600_010D96C0_end, (u32)rle_0031_34BF80_01103040, (u32)rle_0031_34BF80_01103040_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    0x00000000, 0x00000000, (u32)rle_0011_2C7A20_0107EAE0, (u32)rle_0011_2C7A20_0107EAE0_end,
    (u32)rle_0012_2CC080_01083140, (u32)rle_0012_2CC080_01083140_end, 0x00000000, 0x00000000,
    (u32)rle_0044_3E14E0_011985A0, (u32)rle_0044_3E14E0_011985A0_end, 0x00000000, 0x00000000,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0009_2B0D90_01067E50, (u32)rle_0009_2B0D90_01067E50_end,
    0x00000000, 0x00000000, (u32)rle_0032_373A40_0112AB00, (u32)rle_0032_373A40_0112AB00_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0001_2568F0_0100D9B0, (u32)rle_0001_2568F0_0100D9B0_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0033_38EB20_01145BE0, (u32)rle_0033_38EB20_01145BE0_end,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0002_291F60_01049020, (u32)rle_0002_291F60_01049020_end, (u32)rle_0011_2C7A20_0107EAE0, (u32)rle_0011_2C7A20_0107EAE0_end,
    (u32)rle_0012_2CC080_01083140, (u32)rle_0012_2CC080_01083140_end, (u32)rle_0013_2D0A70_01087B30, (u32)rle_0013_2D0A70_01087B30_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0044_3E14E0_011985A0, (u32)rle_0044_3E14E0_011985A0_end, (u32)rle_0048_4007C0_011B7880, (u32)rle_0048_4007C0_011B7880_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0009_2B0D90_01067E50, (u32)rle_0009_2B0D90_01067E50_end,
    (u32)rle_0025_31E2C0_010D5380, (u32)rle_0025_31E2C0_010D5380_end, (u32)rle_0032_373A40_0112AB00, (u32)rle_0032_373A40_0112AB00_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0006_29B620_010526E0, (u32)rle_0006_29B620_010526E0_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0042_3DBE20_01192EE0, (u32)rle_0042_3DBE20_01192EE0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    0x00000000, 0x00000000, (u32)rle_0011_2C7A20_0107EAE0, (u32)rle_0011_2C7A20_0107EAE0_end,
    (u32)rle_0012_2CC080_01083140, (u32)rle_0012_2CC080_01083140_end, 0x00000000, 0x00000000,
    (u32)rle_0044_3E14E0_011985A0, (u32)rle_0044_3E14E0_011985A0_end, 0x00000000, 0x00000000,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0021_2FC020_010B30E0, (u32)rle_0021_2FC020_010B30E0_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0001_2568F0_0100D9B0, (u32)rle_0001_2568F0_0100D9B0_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0033_38EB20_01145BE0, (u32)rle_0033_38EB20_01145BE0_end,
    (u32)rle_0043_3DD280_01194340, (u32)rle_0043_3DD280_01194340_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0008_2AD8F0_010649B0, (u32)rle_0008_2AD8F0_010649B0_end,
    (u32)rle_0026_322600_010D96C0, (u32)rle_0026_322600_010D96C0_end, (u32)rle_0031_34BF80_01103040, (u32)rle_0031_34BF80_01103040_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0008_2AD8F0_010649B0, (u32)rle_0008_2AD8F0_010649B0_end,
    (u32)rle_0025_31E2C0_010D5380, (u32)rle_0025_31E2C0_010D5380_end, 0x00000000, 0x00000000,
    (u32)rle_0043_3DD280_01194340, (u32)rle_0043_3DD280_01194340_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0009_2B0D90_01067E50, (u32)rle_0009_2B0D90_01067E50_end,
    (u32)rle_0026_322600_010D96C0, (u32)rle_0026_322600_010D96C0_end, (u32)rle_0033_38EB20_01145BE0, (u32)rle_0033_38EB20_01145BE0_end,
    0x00000000, 0x00000000, (u32)rle_0046_3F12D0_011A8390, (u32)rle_0046_3F12D0_011A8390_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0004_298480_0104F540, (u32)rle_0004_298480_0104F540_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0005_299850_01050910, (u32)rle_0005_299850_01050910_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0010_2C0EA0_01077F60, (u32)rle_0010_2C0EA0_01077F60_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0035_3AA240_01161300, (u32)rle_0035_3AA240_01161300_end,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0001_2568F0_0100D9B0, (u32)rle_0001_2568F0_0100D9B0_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0029_33B4F0_010F25B0, (u32)rle_0029_33B4F0_010F25B0_end,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0038_3BD900_011749C0, (u32)rle_0038_3BD900_011749C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0003_293E80_0104AF40, (u32)rle_0003_293E80_0104AF40_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0038_3BD900_011749C0, (u32)rle_0038_3BD900_011749C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0022_307D90_010BEE50, (u32)rle_0022_307D90_010BEE50_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0038_3BD900_011749C0, (u32)rle_0038_3BD900_011749C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0028_338300_010EF3C0, (u32)rle_0028_338300_010EF3C0_end,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0023_30A950_010C1A10, (u32)rle_0023_30A950_010C1A10_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0034_39DFB0_01155070, (u32)rle_0034_39DFB0_01155070_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0001_2568F0_0100D9B0, (u32)rle_0001_2568F0_0100D9B0_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0033_38EB20_01145BE0, (u32)rle_0033_38EB20_01145BE0_end,
    0x00000000, 0x00000000, (u32)rle_0046_3F12D0_011A8390, (u32)rle_0046_3F12D0_011A8390_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    0x00000000, 0x00000000, (u32)rle_0048_4007C0_011B7880, (u32)rle_0048_4007C0_011B7880_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0010_2C0EA0_01077F60, (u32)rle_0010_2C0EA0_01077F60_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0046_3F12D0_011A8390, (u32)rle_0046_3F12D0_011A8390_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0038_3BD900_011749C0, (u32)rle_0038_3BD900_011749C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0037_3B37B0_0116A870, (u32)rle_0037_3B37B0_0116A870_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0039_3CE000_011850C0, (u32)rle_0039_3CE000_011850C0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, (u32)rle_0027_331750_010E8810, (u32)rle_0027_331750_010E8810_end,
    (u32)rle_0040_3D3130_0118A1F0, (u32)rle_0040_3D3130_0118A1F0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0042_3DBE20_01192EE0, (u32)rle_0042_3DBE20_01192EE0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0021_2FC020_010B30E0, (u32)rle_0021_2FC020_010B30E0_end,
    0x00000000, 0x00000000, (u32)rle_0028_338300_010EF3C0, (u32)rle_0028_338300_010EF3C0_end,
    (u32)rle_0042_3DBE20_01192EE0, (u32)rle_0042_3DBE20_01192EE0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0010_2C0EA0_01077F60, (u32)rle_0010_2C0EA0_01077F60_end,
    0x00000000, 0x00000000, (u32)rle_0035_3AA240_01161300, (u32)rle_0035_3AA240_01161300_end,
    (u32)rle_0041_3DB170_01192230, (u32)rle_0041_3DB170_01192230_end, (u32)rle_0046_3F12D0_011A8390, (u32)rle_0046_3F12D0_011A8390_end,
    (u32)rle_0002_291F60_01049020, (u32)rle_0002_291F60_01049020_end, (u32)rle_0011_2C7A20_0107EAE0, (u32)rle_0011_2C7A20_0107EAE0_end,
    (u32)rle_0012_2CC080_01083140, (u32)rle_0012_2CC080_01083140_end, (u32)rle_0013_2D0A70_01087B30, (u32)rle_0013_2D0A70_01087B30_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0014_2D9A40_01090B00, (u32)rle_0014_2D9A40_01090B00_end,
    (u32)rle_0015_2DDDF0_01094EB0, (u32)rle_0015_2DDDF0_01094EB0_end, (u32)rle_0016_2E3440_0109A500, (u32)rle_0016_2E3440_0109A500_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0017_2E61A0_0109D260, (u32)rle_0017_2E61A0_0109D260_end,
    (u32)rle_0018_2E8B10_0109FBD0, (u32)rle_0018_2E8B10_0109FBD0_end, (u32)rle_0019_2ED290_010A4350, (u32)rle_0019_2ED290_010A4350_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0011_2C7A20_0107EAE0, (u32)rle_0011_2C7A20_0107EAE0_end,
    (u32)rle_0012_2CC080_01083140, (u32)rle_0012_2CC080_01083140_end, (u32)rle_0013_2D0A70_01087B30, (u32)rle_0013_2D0A70_01087B30_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0020_2F1A90_010A8B50, (u32)rle_0020_2F1A90_010A8B50_end,
    0x00000000, 0x00000000, (u32)rle_0035_3AA240_01161300, (u32)rle_0035_3AA240_01161300_end,
    0x00000000, 0x00000000, 0x00000000, 0x00000000,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0021_2FC020_010B30E0, (u32)rle_0021_2FC020_010B30E0_end,
    (u32)rle_0026_322600_010D96C0, (u32)rle_0026_322600_010D96C0_end, (u32)rle_0031_34BF80_01103040, (u32)rle_0031_34BF80_01103040_end,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, (u32)rle_0021_2FC020_010B30E0, (u32)rle_0021_2FC020_010B30E0_end,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
    (u32)rle_0000_248F40_01000000, (u32)rle_0000_248F40_01000000_end, 0x00000000, 0x00000000,
    (u32)rle_0024_317270_010CE330, (u32)rle_0024_317270_010CE330_end, 0x00000000, 0x00000000,
    (u32)rle_0042_3DBE20_01192EE0, (u32)rle_0042_3DBE20_01192EE0_end, (u32)rle_0045_3E7AB0_0119EB70, (u32)rle_0045_3E7AB0_0119EB70_end,
};

UnkStruct_D_800D0E84 D_800D0E84[] = {
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x80308A88, 0x802E0000, 0x8033DBB8, 0x802E0000, 0x8037F270 },
    { 0x802D18E0, 0x8031BC08, 0x802E0000, 0x80329AC0, 0x802E0000, 0x802E0000 },
    { 0x802DFF30, 0x802FB388, 0x8031A080, 0x803599B8, 0x802E0000, 0x8037F270 },
    { 0x802E0000, 0x802F89E8, 0x80318148, 0x802E0000, 0x8034E4C0, 0x802E0000 },
    { 0x802DFF30, 0x802FB558, 0x802E0000, 0x8034BDC8, 0x802E0000, 0x8037F270 },
    { 0x80315ED8, 0x802E0000, 0x802E0000, 0x8033AA00, 0x80341260, 0x8037F270 },
    { 0x802D18E0, 0x802F89E8, 0x80318148, 0x8035EC68, 0x802E0000, 0x802E0000 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E4C0, 0x80370350 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FB558, 0x80311820, 0x8034BDC8, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E7900, 0x8031ADC8, 0x802E0000, 0x80342AB0, 0x8037F270 },
    { 0x802E0000, 0x802F89E8, 0x80318148, 0x802E0000, 0x8034E4C0, 0x802E0000 },
    { 0x802DFF30, 0x802FB388, 0x8031ADC8, 0x802E0000, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x80315ED8, 0x802E0000, 0x802E0000, 0x8033AA00, 0x8034ABC0, 0x8037F270 },
    { 0x802DFF30, 0x802ED3F8, 0x8031A080, 0x803599B8, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802ED3F8, 0x80311820, 0x802E0000, 0x8034ABC0, 0x8037F270 },
    { 0x802DFF30, 0x802FB558, 0x8031A080, 0x8033AA00, 0x802E0000, 0x8037D198 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E4D18, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x8033D278, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x8033D278, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x8033D278, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E4B08, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802EC540, 0x8031ADC8, 0x8033B5B8, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x80315ED8, 0x802E0000, 0x802E0000, 0x8032A938, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035C4D0, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802EE210, 0x8031ADC8, 0x80339918, 0x8035C4D0, 0x8037F270 },
    { 0x802DFF30, 0x802E4110, 0x8031ADC8, 0x80339918, 0x8035C4D0, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x8032F880, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802FD860, 0x8031ADC8, 0x8033D278, 0x802E0000, 0x8037F270 },
    { 0x80315ED8, 0x802E0000, 0x802E0000, 0x8033AA00, 0x802E0000, 0x8037D198 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x802E0000, 0x80370350 },
    { 0x802DFF30, 0x802EC540, 0x802E0000, 0x802E0000, 0x802E0000, 0x8037D198 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035C4D0, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x80356FD8, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x8034E220, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x80339918, 0x8035A098, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80341260, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80342AB0, 0x8037F270 },
    { 0x802DFF30, 0x802FB388, 0x8031ADC8, 0x8032F880, 0x80342AB0, 0x8037F270 },
    { 0x802DFF30, 0x802EC540, 0x802E0000, 0x8033B5B8, 0x80341260, 0x8037D198 },
    { 0x802D18E0, 0x802F89E8, 0x80318148, 0x8035EC68, 0x802E0000, 0x802E0000 },
    { 0x802E0000, 0x802F98C8, 0x8031BA58, 0x8033CA78, 0x802E0000, 0x802E0000 },
    { 0x802E0000, 0x802F1F88, 0x80315910, 0x8033D988, 0x802E0000, 0x802E0000 },
    { 0x802E0000, 0x802F89E8, 0x80318148, 0x8035EC68, 0x802E0000, 0x802E0000 },
    { 0x802E0000, 0x8031BC08, 0x802E0000, 0x8033B5B8, 0x802E0000, 0x802E0000 },
    { 0x802DFF30, 0x802FB388, 0x8031A080, 0x803599B8, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802FB388, 0x8031ADC8, 0x802E0000, 0x802E0000, 0x8037F270 },
    { 0x802DFF30, 0x802E0000, 0x8031ADC8, 0x802E0000, 0x80342AB0, 0x8037F270 },
};

u16 D_800D16C4[] = {
    0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000,
};

void func_80025E00(void) {
    D_801376DC = (u32)SEGMENT_06_DEST;
    DMA_ReadSync(Segment_06_ROM_START, SEGMENT_06_SCRATCH, Segment_06_ROM_SIZE);
    D_801376E0 = (u32)SEGMENT_06_DEST + Trouble_RLE_Type1(SEGMENT_06_SCRATCH, SEGMENT_06_DEST);
}

void func_80025E6C(void) {
    u32 size = Segment_07_ROM_SIZE;
    D_801376E4 = (u32)SEGMENT_07_DEST;
    D_801376E8 = size + (u32)SEGMENT_07_DEST;
    DMA_ReadSync(Segment_07_ROM_START, (u8*)D_801376E4, Segment_07_ROM_SIZE);
}

void func_80025EC4(u16 index) {
    s32 length0;
    s32 length1;

    index += 0;

    if (D_800CD08C[index].dispatch_table_rom_start != NULL) {
        length0 = D_800CD08C[index].dispatch_table_rom_end - D_800CD08C[index].dispatch_table_rom_start;
        D_8013772C = OVERLAY0_DISPATCH_TABLE_VRAM;
        D_80137730 = OVERLAY0_DISPATCH_TABLE_VRAM + length0;
        DMA_ReadSync(D_800CD08C[index].dispatch_table_rom_start, (u8*)D_8013772C, length0);

        length1 = D_800CD08C[index].object_rom_end - D_800CD08C[index].object_rom_start;
        D_8013772C = OVERLAY0_OBJECT_VRAM;
        D_80137730 = OVERLAY0_OBJECT_VRAM + length1;
        DMA_ReadSync(D_800CD08C[index].object_rom_start, (u8*)D_8013772C, length1);
    }
}

void func_80025F70(u16 index) {
    s32 length0;
    s32 length1;

    index += 0;

    if (D_800CD60C[index].dispatch_table_rom_start != NULL) {
        length0 = D_800CD60C[index].dispatch_table_rom_end - D_800CD60C[index].dispatch_table_rom_start;
        D_80137734 = OVERLAY1_DISPATCH_TABLE_VRAM;
        D_80137738 = OVERLAY1_DISPATCH_TABLE_VRAM + length0;
        DMA_ReadSync(D_800CD60C[index].dispatch_table_rom_start, (u8*)D_80137734, length0);

        length1 = D_800CD60C[index].object_rom_end - D_800CD60C[index].object_rom_start;
        D_80137734 = OVERLAY1_OBJECT_VRAM;
        D_80137738 = OVERLAY1_OBJECT_VRAM + length1;
        DMA_ReadSync(D_800CD60C[index].object_rom_start, (u8*)D_80137734, length1);
    }
}

void func_8002601C(u16 index) {
    s32 length0;
    s32 length1;

    index += 0;

    if (D_800CDB8C[index].dispatch_table_rom_start != NULL) {
        length0 = D_800CDB8C[index].dispatch_table_rom_end - D_800CDB8C[index].dispatch_table_rom_start;
        D_8013773C = OVERLAY2_DISPATCH_TABLE_VRAM;
        D_80137740 = OVERLAY2_DISPATCH_TABLE_VRAM + length0;
        DMA_ReadSync(D_800CDB8C[index].dispatch_table_rom_start, (u8*)D_8013773C, length0);

        length1 = D_800CDB8C[index].object_rom_end - D_800CDB8C[index].object_rom_start;
        D_8013773C = OVERLAY2_OBJECT_VRAM;
        D_80137740 = OVERLAY2_OBJECT_VRAM + length1;
        DMA_ReadSync(D_800CDB8C[index].object_rom_start, (u8*)D_8013773C, length1);
    }
}

void func_800260C8(u16 index) {
    s32 length0;
    s32 length1;

    index += 0;

    if (D_800CE10C[index].dispatch_table_rom_start != NULL) {
        length0 = D_800CE10C[index].dispatch_table_rom_end - D_800CE10C[index].dispatch_table_rom_start;
        D_80137744 = OVERLAY3_DISPATCH_TABLE_VRAM;
        D_80137748 = OVERLAY3_DISPATCH_TABLE_VRAM + length0;
        DMA_ReadSync(D_800CE10C[index].dispatch_table_rom_start, (u8*)D_80137744, length0);

        length1 = D_800CE10C[index].object_rom_end - D_800CE10C[index].object_rom_start;
        D_80137744 = OVERLAY3_OBJECT_VRAM;
        D_80137748 = OVERLAY3_OBJECT_VRAM + length1;
        DMA_ReadSync(D_800CE10C[index].object_rom_start, (u8*)D_80137744, length1);
    }
}

void func_80026174(u16 index) {
    s32 length0;
    s32 length1;

    index += 0;

    if (D_800CE68C[index].dispatch_table_rom_start != NULL) {
        length0 = D_800CE68C[index].dispatch_table_rom_end - D_800CE68C[index].dispatch_table_rom_start;
        D_8013774C = OVERLAY4_DISPATCH_TABLE_VRAM;
        D_80137750 = OVERLAY4_DISPATCH_TABLE_VRAM + length0;
        DMA_ReadSync(D_800CE68C[index].dispatch_table_rom_start, (u8*)D_8013774C, length0);

        length1 = D_800CE68C[index].object_rom_end - D_800CE68C[index].object_rom_start;
        D_8013774C = OVERLAY4_OBJECT_VRAM;
        D_80137750 = OVERLAY4_OBJECT_VRAM + length1;
        DMA_ReadSync(D_800CE68C[index].object_rom_start, (u8*)D_8013774C, length1);
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/3R7AG
void func_80026220(u16 index) {
    if ((index == 2) || (D_800D28E4 == 0x66) || (gGameState == GAMESTATE_UNKNOWN0) || (gGameState == GAMESTATE_UNKNOWN1)) {
        DMA_ReadSync(((D_800CEC0C[5] - D_800CEC0C[0]) + (u32)Segment_04_ROM_START), RLE_SCRATCH_LOW, D_800CEC0C[6] - D_800CEC0C[5]);
        D_80137724 = (u32)MAP_BANK_DEST;
        D_80137728 = (u32)MAP_BANK_DEST + Trouble_RLE_Type1(RLE_SCRATCH_LOW, MAP_BANK_DEST);
        DMA_ReadSync(overlay_F00D0_ROM_START, MAP_BANK_DATA_DEST, overlay_F00D0_ROM_END - overlay_F00D0_ROM_START);
        return;
    }

    if (D_800CEC0C[index * 2 + 1] == (u32)&rle_0007_16C960_0407C860) {
        DMA_ReadSync(((D_800CEC0C[index * 2 + 1] - D_800CEC0C[0]) + (u32)Segment_04_ROM_START), RLE_SCRATCH_HIGH, (u32)rle_0008_171720_04081620 - D_800CEC0C[index * 2 + 1]);
        D_80137724 = (u32)MAP_BANK_DEST;
        D_80137728 = (u32)MAP_BANK_DEST + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, MAP_BANK_DEST);

        DMA_ReadSync(((rle_0008_171720_04081620 - D_800CEC0C[0]) + (u32)Segment_04_ROM_START), RLE_SCRATCH_HIGH, rle_0009_181E20_04091D20 - (u32)rle_0008_171720_04081620);
        D_80137724 = (u32)MAP_BANK_DEST_ALT;
        D_80137728 = (u32)MAP_BANK_DEST_ALT + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, MAP_BANK_DEST_ALT);
    }
    else {
        DMA_ReadSync(((rle_0008_171720_04081620 - D_800CEC0C[0]) + (u32)Segment_04_ROM_START), RLE_SCRATCH_HIGH, D_800CEC0C[index * 2 + 2] - (u32)rle_0008_171720_04081620);
        D_80137724 = (u32)MAP_BANK_DEST;
        D_80137728 = (u32)MAP_BANK_DEST + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, MAP_BANK_DEST);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26A00/func_80026220.s")
#endif

void func_80026428(u16 index) {
    u32 start;
    u32* entry;

    entry = &D_800CEC0C[index * 2];
    start = entry[1];
    DMA_ReadSync((void*)((start - D_800CEC0C[0]) + (u32)Segment_04_ROM_START), RLE_SCRATCH_LOW, entry[2] - start);
    Trouble_RLE_Type1(RLE_SCRATCH_LOW, MAP_BANK_DEST);
}

void func_80026494(u16 index, u16 offset) {
    u32* entry = &D_800CEC0C[index * 2];
    DMA_ReadSync(((entry[1] - D_800CEC0C[0]) + Segment_04_ROM_START), RLE_SCRATCH_LOW, entry[2] - entry[1]);
    Trouble_RLE_Type1(RLE_SCRATCH_LOW, MAP_COLLISION_DEST);
    DMA_ReadSync((void*)(((u32)palette_1E51F0_040F50F0 - D_800CEC0C[0]) + (u32)Segment_04_ROM_START),
                 MAP_BANK_DEST + offset, 0x200);
}

void func_8002653C(void) {
    u32 source;

    source = (u32)Segment_04_ROM_START;
    source += (u32)palettes_1E53F8_040F52F8;
    DMA_ReadSync((u8*)(source - (u32)Segment_04_DATA_START), D_800DE348, 0x1500);
}

void func_80026584(u16 index) {
    u32 start;
    u32 length;
    u32 source;
    s32 new_var;
    u32* dest_ptr;
    u32* entry;

    entry = &D_800CFB40[index * 2];
    start = entry[1];
    source = (start - D_800CFB40[0]) + (u32)Segment_02_ROM_START;
    new_var = entry[2] - start;
    length = new_var;
    dest_ptr = &D_8013776C;
    *dest_ptr = (u32)ACTOR_LIST_DEST;
    D_80137770 = (u32)ACTOR_LIST_DEST + length;
    DMA_ReadSync((u8*)source, (u8*)*dest_ptr, length);
}

void func_800265FC(u16 index) {
    u32 start;
    u32 source;
    s32 new_var;
    u32* entry;

    entry = &D_800CEED0[index * 3];
    start = entry[1];
    source = (start - D_800CEED0[0]) + (u32)Segment_03_ROM_START;
    new_var = entry[2] - start;
    D_80137774 = (u32)COLLISION_DEST;
    DMA_ReadSync((u8*)source, RLE_SCRATCH_LOW, new_var);
    D_80137778 = (u32)COLLISION_DEST + Trouble_RLE_Type1(RLE_SCRATCH_LOW, COLLISION_DEST);
}

void func_80026694(u16 index) {
    u32 start;
    u32* entry;

    entry = &D_800CEED0[index * 3];
    start = entry[2];
    DMA_ReadSync((u8*)((start - D_800CEED0[0]) + (u32)Segment_03_ROM_START), COLLISION_SCRATCH_ALT, entry[3] - start);
    Trouble_RLE_Type1(COLLISION_SCRATCH_ALT, RLE_SCRATCH_LOW);
}

void func_8002670C(u16 index) {
    u32 start;
    u32 length;
    u32 source;
    s32 new_var;
    u32* dest_ptr;
    u32* entry;

    entry = &D_800CF2F4[index * 2];
    start = entry[1];
    source = (start - D_800CF2F4[0]) + (u32)Segment_03_ROM_START;
    new_var = entry[2] - start;
    length = new_var;
    dest_ptr = &D_8013777C;
    *dest_ptr = (u32)STAGE_TABLE0_DEST;
    D_80137780 = (u32)STAGE_TABLE0_DEST + length;
    DMA_ReadSync((u8*)source, (u8*)*dest_ptr, length);
}

void func_80026784(u16 index) {
    u32 start;
    u32 length;
    u32 source;
    s32 new_var;
    u32* dest_ptr;
    u32* entry;

    entry = &D_800CF5B8[index * 2];
    start = entry[1];
    source = (start - D_800CF5B8[0]) + (u32)Segment_03_ROM_START;
    new_var = entry[2] - start;
    length = new_var;
    dest_ptr = &D_80137784;
    *dest_ptr = (u32)STAGE_TABLE1_DEST;
    D_80137788 = (u32)STAGE_TABLE1_DEST + length;
    DMA_ReadSync((u8*)source, (u8*)*dest_ptr, length);
}

void func_800267FC(u16 index) {
    u32 start;
    u32 length;
    u32 source;
    s32 new_var;
    u32* dest_ptr;
    u32* entry;

    entry = &D_800CF87C[index * 2];
    start = entry[1];
    source = (start - D_800CF87C[0]) + (u32)Segment_03_ROM_START;
    new_var = entry[2] - start;
    length = new_var;
    dest_ptr = &D_8013778C;
    *dest_ptr = (u32)STAGE_TABLE2_DEST;
    D_80137790 = (u32)STAGE_TABLE2_DEST + length;
    DMA_ReadSync((u8*)source, (u8*)*dest_ptr, length);
}

void func_80026874(u16 index) {
    s32 start;
    u32 new_var;

    D_8013770C = D_80137710 = (u32)ASSET_DEST0;

    new_var = D_800CFE04[index * 12 + 0];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_HIGH, D_800CFE04[index * 12 + 1] - D_800CFE04[index * 12 + 0]);
        D_80137710 = (u32)ASSET_DEST0 + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, ASSET_DEST0);
        D_801376D0 = D_800D0E84_PU32[index * 6];
    }
}

void func_8002694C(u16 index) {
    s32 start;
    u32 new_var;

    D_801376EC = (D_801376F0 = (u32)ASSET_DEST1);
    new_var = D_800CFE04[index * 12 + 2];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_HIGH, D_800CFE04[index * 12 + 3] - D_800CFE04[index * 12 + 2]);
        D_801376F0 = (u32)ASSET_DEST1 + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, ASSET_DEST1);
        D_801376C0 = D_800D0E88[index * 6];
    }
}

#ifdef NON_MATCHING
void func_80026A18(u16 index) {
    u32 start;
    u32 new_var;

    D_800CBF54 = 0;
    D_801376F4 = D_801376F8 = (u32)ASSET_DEST2;
    new_var = D_800CFE04[index * 12 + 4];
    start = new_var;
    if (new_var != 0) {
        if (start == (u32)rle_0024_317270_010CE330) {
            D_800CBF54 = 1;
        }
        start = (start - (u32)Segment_01_DATA_START) + (u32)Segment_01_ROM_START;
        DMA_ReadSync(start, RLE_SCRATCH_HIGH, D_800CFE04[index * 12 + 5] - D_800CFE04[index * 12 + 4]);
        D_801376F8 = (u32)ASSET_DEST2 + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, ASSET_DEST2);
        D_801376C4 = D_800D0E8C[index * 6];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26A00/func_80026A18.s")
#endif

void func_80026B04(u16 index) {
    s32 start;
    u32 new_var;

    D_801376FC = D_80137700 = (u32)ASSET_DEST3;
    new_var = D_800CFE04[index * 12 + 6];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_HIGH, D_800CFE04[index * 12 + 7] - D_800CFE04[index * 12 + 6]);
        D_80137700 = (u32)ASSET_DEST3 + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, ASSET_DEST3);
        D_801376C8 = D_800D0E90[index * 6];
    }
}

void func_80026BD0(u16 index) {
    s32 start;
    u32 new_var;

    D_80137704 = D_80137708 = (u32)ASSET_DEST4;
    new_var = D_800CFE04[index * 12 + 8];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_HIGH, D_800CFE04[index * 12 + 9] - D_800CFE04[index * 12 + 8]);
        D_80137708 = (u32)ASSET_DEST4 + Trouble_RLE_Type1(RLE_SCRATCH_HIGH, ASSET_DEST4);
        D_801376CC = D_800D0E94[index * 6];
    }
}

#ifdef MATCHING_NON_MATCHING
// This matches, but using __inline or -O3 changes codegen elsewhere in this file. Need to reconstruct all of the small functions that got inlined to fix.

#define D_800CFE04_ENTRY(I) D_800CFE04[index * 12 + I]

static __inline u32 Start_Seg01(u32 start) {
    return (start - ((u32)Segment_01_DATA_START)) + ((u32)Segment_01_ROM_START);
}

void func_80026C9C(u16 index) {
    u32 start;

    D_800CBF50 = 0;
    D_80137714 = D_80137718 = 0x80360000U;
    if (D_800CFE04_ENTRY(10) == 0) {
        return;
    }

    if ((u32)rle_0045_3E7AB0_0119EB70 == D_800CFE04_ENTRY(10)) {
        D_800CBF50 = 1;
    }

    start = Start_Seg01(D_800CFE04_ENTRY(10));
    DMA_ReadSync((u8*)start, (u8*)0x80259000U, D_800CFE04_ENTRY(11) - D_800CFE04_ENTRY(10));
    D_80137718 = 0x80360000U + Trouble_RLE_Type1((u8*)0x80259000U, (u8*)0x80360000U);
    D_801376D4 = D_800D0E98[index * 6];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26A00/func_80026C9C.s")
#endif

void func_80026D88(u16 index) {
    s32 start;
    u32 new_var;

    D_8013770C = D_80137710 = (u32)ASSET_DEST0;
    new_var = D_800CFE04[index * 12 + 0];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_LOW, D_800CFE04[index * 12 + 1] - D_800CFE04[index * 12 + 0]);
        D_80137710 = (u32)ASSET_DEST0 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST0);
        D_801376D0 = D_800D0E84_PU32[index * 6];
    }
}

void func_80026E60(u16 index) {
    s32 start;
    u32 new_var;

    D_801376EC = D_801376F0 = (u32)ASSET_DEST1;
    new_var = D_800CFE04[index * 12 + 2];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_LOW, D_800CFE04[index * 12 + 3] - D_800CFE04[index * 12 + 2]);
        D_801376F0 = (u32)ASSET_DEST1 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST1);
        D_801376C0 = D_800D0E88[index * 6];
    }
}

#ifdef NON_MATCHING
void func_80026F2C(u16 index) {
    u32 start;
    s32 unused[2];

    D_800CBF54 = 0;
    D_801376F4 = D_801376F8 = (u32)ASSET_DEST2;
    start = D_800CFE04[index * 12 + 4];
    if (start != 0) {
        if ((u32)&rle_0024_317270_010CE330 == start) {
            D_800CBF54 = 1;
        }
        DMA_ReadSync((void*)((start - (u32)Segment_01_DATA_START) + (u32)Segment_01_ROM_START), RLE_SCRATCH_LOW,
                     D_800CFE04[index * 12 + 5] - start);
        D_801376F8 = (u32)ASSET_DEST2 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST2);
        D_801376C4 = D_800D0E8C[index * 6];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26A00/func_80026F2C.s")
#endif

void func_80027018(u16 index) {
    s32 start;
    u32 new_var;

    D_801376FC = D_80137700 = (u32)ASSET_DEST3;
    new_var = D_800CFE04[index * 12 + 6];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_LOW, D_800CFE04[index * 12 + 7] - D_800CFE04[index * 12 + 6]);
        D_80137700 = (u32)ASSET_DEST3 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST3);
        D_801376C8 = D_800D0E90[index * 6];
    }
}

void func_800270E4(u16 index) {
    s32 start;
    u32 new_var;

    D_80137704 = D_80137708 = (u32)ASSET_DEST4;
    new_var = D_800CFE04[index * 12 + 8];
    start = new_var;
    if (start != 0) {
        start = (start - (s32)Segment_01_DATA_START) + (s32)Segment_01_ROM_START;
        DMA_ReadSync((u8*)start, RLE_SCRATCH_LOW, D_800CFE04[index * 12 + 9] - D_800CFE04[index * 12 + 8]);
        D_80137708 = (u32)ASSET_DEST4 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST4);
        D_801376CC = D_800D0E94[index * 6];
    }
}

#ifdef NON_MATCHING
void func_800271B0(u16 index) {
    u32 start;
    s32 unused[2];

    D_800CBF50 = 0;
    D_80137714 = D_80137718 = (u32)ASSET_DEST5;
    start = D_800CFE04[index * 12 + 10];
    if (start != 0) {
        if ((u32)&rle_0045_3E7AB0_0119EB70 == start) {
            D_800CBF50 = 1;
        }
        DMA_ReadSync((void*)((start - (u32)Segment_01_DATA_START) + (u32)Segment_01_ROM_START), RLE_SCRATCH_LOW,
                     D_800CFE04[index * 12 + 11] - start);
        D_80137718 = (u32)ASSET_DEST5 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST5);
        D_801376D4 = D_800D0E98[index * 6];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26A00/func_800271B0.s")
#endif

void func_8002729C(u16 index) {
    u32 start;

    D_8013771C = D_80137720 = (u32)ASSET_DEST6;
    ;
    if ((u32)&rle_0012_1D18F0_040E17F0 == D_800CEC10[index * 2]) {
    }
    else if ((u32)&rle_0000_F0100_04000000 == D_800CEC10[index * 2]) {
    }
    else {
        start = (u32)rle_0049_406880_011BD940;
        DMA_ReadSync((u8*)((start + (u32)Segment_01_ROM_START) - (u32)Segment_01_DATA_START), RLE_SCRATCH_LOW,
                     (u32)rle_0049_406880_011BD940_end - start);
        D_80137720 = (u32)ASSET_DEST6 + Trouble_RLE_Type1(RLE_SCRATCH_LOW, ASSET_DEST6);
        D_801376D8 = (u32)ASSET_DEST6_TABLE;
    }
}
