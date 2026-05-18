#ifndef SEGMENT03_H
#define SEGMENT03_H

#include <PR/ultratypes.h>

// 0 is segment base, then 88 entries:
// lookup RLE start, tile RLE start, tile RLE end
extern u32 D_800CEED0[];

// 0 is segment base, then 88 start/end entries; copied to 0x801C2000
extern u32 D_800CF2F4[];

// 0 is segment base, then 88 start/end entries; copied to 0x801C4200
extern u32 D_800CF5B8[];

// 0 is segment base, then 88 start/end entries; copied to 0x801C1000
extern u32 D_800CF87C[];

#include "../assets/generated/Segment_03/rle.h"
#include "../assets/generated/Segment_03/map_assets.h"

#endif
