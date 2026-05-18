#ifndef GAMEDMA_H
#define GAMEDMA_H

#include "inttypes.h"

extern void DMA_ReadSync(void* device_addr, void* vram_addr, s32 length);
extern void DMA_AwaitMessage(void);
extern void DMA_Read(u8* device_addr, u8* vram_addr, u32 length);

#endif
