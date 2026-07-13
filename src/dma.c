#include <ultra64.h>
#include "inttypes.h"

void DMA_ReadSync(void* device_addr, void* vram_addr, s32 length);
void DMA_AwaitMessage(void);
void DMA_Read(u8* device_addr, u8* vram_addr, u32 length);

extern OSMesgQueue gDmaMessageQueue;

// Synchronously (blocking) read length bytes from rom_addr to vram_addr
void DMA_ReadSync(void* rom_addr, void* vram_addr, s32 length) {
    OSIoMesg iomesg;
    OSMesg dummy;

    osInvalDCache(vram_addr, length);
    osPiStartDma(&iomesg, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t)rom_addr, vram_addr, length, &gDmaMessageQueue);
    osRecvMesg(&gDmaMessageQueue, &dummy, OS_MESG_BLOCK);
}

// Synchronously (blocking) wait to receive a message event on gDmaMessageQueue
void DMA_AwaitMessage(void) {
    OSMesg dummy;
    osRecvMesg(&gDmaMessageQueue, &dummy, OS_MESG_BLOCK);
}

// Start reading length bytes from rom_addr to vram_addr
void DMA_Read(u8* device_addr, u8* vram_addr, u32 length) {
    OSIoMesg iomesg;

    osInvalDCache(vram_addr, length);
    osPiStartDma(&iomesg, OS_MESG_PRI_NORMAL, OS_READ, (u32)device_addr, vram_addr, length, &gDmaMessageQueue);
}
