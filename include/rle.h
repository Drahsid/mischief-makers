#ifndef RLE_H
#define RLE_H

#include <PR/ultratypes.h>

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
#define ASSET_DEST5_TABLE     ((u8*)0x8036BAC0)
#define ASSET_DEST6           ((u8*)0x803CE800)
#define ASSET_DEST6_TABLE     ((u8*)0x803D7748)

s32 Trouble_RLE_Type1(u8* src, u8* dst);
void Trouble_RLE_Type2(u8* src, u8* dst, s32 length);

#endif // RLE_H
