#include "actor.h"
#include "dma.h"
#include "globalData.h"
#include "linker.h"
#include "rle.h"

#define RLE_DEST_8027AEE8 ((u8*)0x8027AEE8)
#define RLE_DEST_8027BEE8 ((u8*)0x8027BEE8)
#define Segment_05_VRAM 0x05000000

extern u8* sprite_table_4A0918_05095C98[];

// .bss
u16 gCopiedSegment5;

void MarinaGraphics_Copy(void) {
    s32 pad[4];
    u32 graphicsMask;
    u32 graphicsFlags;
    u32 offsets[2];
    u16 temp_t1;
    u8* device_addr;

    graphicsMask = ACTOR_GFLAG_UNK15 | ACTOR_GFLAG_UNK14 | ACTOR_GFLAG_3DOBJ | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11;
    graphicsFlags = ACTOR_GFLAG_UNK14 | ACTOR_GFLAG_SCALEZ | ACTOR_GFLAG_UNK11;
    if (((gPlayerActor.flags & ACTOR_FLAG_DRAW) || (D_800BE714 != 0)) &&
        ((gPlayerActor.graphicIndex & graphicsMask) == graphicsFlags)) {
        D_800BE714 = 0;
        temp_t1 = ((gPlayerActor.graphicIndex & 0x7FF) % 802);
        // compute the base ROM device address: ROM_BASE + (SEG_5_ADDR - SEG_5_BASE)
        if (temp_t1) {
            device_addr = &Segment_05_ROM_START[(uintptr_t) sprite_table_4A0918_05095C98 + (temp_t1 << 2) - (Segment_05_VRAM + 4)];
        }
        else {
            device_addr = &Segment_05_ROM_START[(uintptr_t) sprite_table_4A0918_05095C98 - Segment_05_VRAM];
        }
        // copy start+end offsets from ROM
        DMA_ReadSync(device_addr, &offsets, 8);
        // copy ROM data from (ROM_BASE + (SEG_5_OFFSET - SEG_5_BASE)) to  RLE_SCRATCH LOW
        DMA_Read(&Segment_05_ROM_START[offsets[0]] - Segment_05_VRAM, RLE_SCRATCH_LOW, offsets[1] - offsets[0]);
        gCopiedSegment5 = TRUE;
    }
    else {
        gCopiedSegment5 = FALSE;
    }
}

void MarinaGraphics_Decompress(void) {
    s32 bank;

    if (gCopiedSegment5) {
        DMA_AwaitMessage();
        bank = (D_800BE6A4 & 0x7FFF) + gCurrentFramebufferIndex;
        switch (bank) {
        case 0:
            Trouble_RLE_Type2(RLE_SCRATCH_LOW, RLE_DEST_8027AEE8, 0x1000);
            break;
        case 1:
            Trouble_RLE_Type2(RLE_SCRATCH_LOW, RLE_DEST_8027BEE8, 0x1000);
            break;
        }
        D_800BE6A4 &= 0x7FFF;
    }
}
