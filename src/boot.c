#include "common.h"
#include "boot.h"
#include "input.h"

// forward declarations

void Video_Clear_Framebuffer(void);
void boot(s32 unused);
void Thread_IdleProc(void* argument);
void Video_Interface_Adjust_Mode_Start(void);
void Graphics_Begin_Frame(u16 buffer_index);
void Thread_MainProc(void* unused);

extern Gfx gDefaultRenderSetupDisplayList[];
extern Gfx gDefaultViewportSetupDisplayList[];

// bss

u64 gBootStack[STACK_SIZE / sizeof(u64)]; // 80123670->80124670
u64 D_80124670[STACK_SIZE / sizeof(u64)]; // 80124670->80125670
u64 gIdleStack[STACK_SIZE / sizeof(u64)]; // 80125670->80126670
u64 D_80126670[STACK_SIZE / sizeof(u64)]; // 80126670->80127670
u64 gMainStack[STACK_SIZE / sizeof(u64)]; // 80127670->80128670
u64 gRmonStack[STACK_SIZE / sizeof(u64)]; // 80128670->80129670
u64 D_80129670[STACK_SIZE / sizeof(u64)]; // 80129670->8012A670

Gfx* gDisplayListHead;
OSMesg gPiManagerMessageBuffer[8];

OSThread gIdleThread;
OSThread gMainThread;
OSThread gRmonThread;

OSMesgQueue gDmaMessageQueue;

OSMesgQueue gVideoInterfaceMessageQueue;
OSMesgQueue gSignalProcessorMessageQueue;
OSMesgQueue gDisplayProcessorMessageQueue;
OSMesgQueue gSerialInterfaceMessageQueue;
OSMesgQueue gControllerInitMessageQueue;
OSMesgQueue D_8012AC38[2];

OSMesg gDmaMessageBuffer;
OSMesg gVideoInterfaceMessageBuffer;
OSMesg gSignalProcessorMessageBuffer;
OSMesg gDisplayProcessorMessageBuffer;
OSMesg gSerialInterfaceMessageBuffer;
OSMesg gControllerInitMessageBuffer;
OSMesg gEventMessage;
OSTask* gCurrentGraphicsTask;
OSTask gGraphicsTasks[2];

OSViMode* gOSViModep;
OSViMode gOSViMode;

OSContStatus gContStatus[4];

OSContPad gContpadArrayA[4];
OSContPad gContpadArrayB[4];
OSMesgQueue gControllerReadMessageQueue;

OSMesg gControllerReadMessageBuffer;

GfxData gDisplayListData[2];

u32 gPlayerControllerIndex;
u16 gButtonCurrent;

u16 D_801370C6;
u32 gFramesInPlayTime;
u16 D_801370CC;
u16 D_801370CE;


// text

void Video_Clear_Framebuffer(void) {
    u64* framebuffer;
    s32 index;

    osViBlack(1);
    framebuffer = (u64*)0x803DA800;

    // possibly SCREEN_WD/HT inner loops
    for (index = 0; index < 1200; index++) {
        framebuffer[15] = 0x10001;\
        framebuffer[14] = 0x10001;\
        framebuffer[13] = 0x10001;\
        framebuffer[12] = 0x10001;\
        framebuffer[11] = 0x10001;\
        framebuffer[10] = 0x10001;\
        framebuffer[9] = 0x10001;\
        framebuffer[8] = 0x10001;\
        framebuffer[7] = 0x10001;\
        framebuffer[6] = 0x10001;\
        framebuffer[5] = 0x10001;\
        framebuffer[4] = 0x10001;\
        framebuffer[3] = 0x10001;\
        framebuffer[2] = 0x10001;\
        framebuffer[1] = 0x10001;\
        framebuffer[0] = 0x10001;
        framebuffer += 16;
    }

    osViSwapBuffer((void*)0x803DA800);
    osViBlack(0);
}

void boot(s32 unused) {
    osInitialize();
    osCreateThread(&gIdleThread, 1, Thread_IdleProc, NULLPTR, __gIdleStackEnd, 10);
    osStartThread(&gIdleThread);
}

void Thread_IdleProc(void* argument) {
    osCreateViManager(OS_PRIORITY_VIMGR);
    if (osTvType == OS_TV_MPAL) {
        osViSetMode(&osViModeTable[OS_VI_MPAL_LAN1]);
        Video_Clear_Framebuffer();
        gOSViMode = osViModeTable[OS_VI_MPAL_LAN1];
        gOSViModep = &osViModeTable[OS_VI_MPAL_LAN1];
    }
    else {
        osViSetMode(&osViModeTable[OS_VI_NTSC_LAN1]);
        Video_Clear_Framebuffer();
        gOSViMode = osViModeTable[OS_VI_NTSC_LAN1];
        gOSViModep = &osViModeTable[OS_VI_NTSC_LAN1];
    }

    osCreatePiManager(OS_PRIORITY_PIMGR, &D_8012AC38, &gPiManagerMessageBuffer, 8);
    osCreateThread(&gRmonThread, 0, rmonMain, NULL, __gRmonStackEnd, OS_PRIORITY_RMON);
    osStartThread(&gRmonThread);
    osCreateThread(&gMainThread, 3, Thread_MainProc, argument, __gMainStackEnd, 10);
    osStartThread(&gMainThread);
    osSetThreadPri(0, 0);

    while (1) {
    }
}

void Video_Interface_Adjust_Mode_Start(void) {
    u32 start;
    u16 upper_start;
    u16 lower_start;

    start = gOSViMode.comRegs.hStart;
    upper_start = (s32)start >> 16;
    lower_start = start;
    gOSViModep->comRegs.hStart = (((upper_start + 10) % 0xFFFF) << 16)
                                | (((s32)(lower_start + 10)) % 0xFFFF);

    start = gOSViMode.fldRegs[0].vStart;
    upper_start = (s32)start >> 16;
    lower_start = start;
    gOSViModep->fldRegs[0].vStart = (((upper_start + 8) % 0xFFFF) << 16)
                                   | (((s32)(lower_start + 8)) % 0xFFFF);

    start = gOSViMode.fldRegs[1].vStart;
    upper_start = (s32)start >> 16;
    lower_start = start;
    gOSViModep->fldRegs[1].vStart = (((upper_start + 8) % 0xFFFF) << 16)
                                   | (((s32)(lower_start + 8)) % 0xFFFF);
}

// main update setup
void Graphics_Begin_Frame(u16 buffer_index) {
    u16* framebuffer;

    gCurrentGraphicsTask = &gGraphicsTasks[buffer_index];
    gCurrentDisplayListBase = gDisplayListData[buffer_index].unk_000;
    gDisplayListHead = gCurrentDisplayListBase + 48;

    if (buffer_index) {
        framebuffer = FRAMEBUFFER0;
    }
    else {
        framebuffer = FRAMEBUFFER1;
    }

    gSPSegment(gDisplayListHead++, 0, 0);
    gSPSegment(gDisplayListHead++, 6, osVirtualToPhysical(gCurrentDisplayListBase));
    gSPDisplayList(gDisplayListHead++, gDefaultViewportSetupDisplayList);
    gSPDisplayList(gDisplayListHead++, gDefaultRenderSetupDisplayList);
    gDPPipeSync(gDisplayListHead++);
    gDPSetColorImage(
        gDisplayListHead++,
        G_IM_FMT_RGBA,
        G_IM_SIZ_16b,
        320,
        osVirtualToPhysical(framebuffer)
    );

    func_8000147C();

    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);
}

void Thread_MainProc(void* unused) {
    u16* framebuffer;

    Sound_InitPlayers();
    osCreateMesgQueue(&gDmaMessageQueue, &gDmaMessageBuffer, 1);
    osCreateMesgQueue(&gSignalProcessorMessageQueue, &gSignalProcessorMessageBuffer, 1);
    osSetEventMesg(OS_EVENT_SP, &gSignalProcessorMessageQueue, gEventMessage);
    Sound_SetEventMesg();
    osCreateMesgQueue(&gDisplayProcessorMessageQueue, &gDisplayProcessorMessageBuffer, 1);
    osSetEventMesg(OS_EVENT_DP, &gDisplayProcessorMessageQueue, gEventMessage);
    osCreateMesgQueue(&gVideoInterfaceMessageQueue, &gVideoInterfaceMessageBuffer, 1);
    osViSetSpecialFeatures(OS_VI_GAMMA_OFF | OS_VI_GAMMA_DITHER_OFF);
    osViSetEvent(&gVideoInterfaceMessageQueue, gEventMessage, 1);

    Video_Interface_Adjust_Mode_Start();
    func_80022D10();
    Graphics_Begin_Frame(gCurrentFramebufferIndex);

    gPlayerControllerIndex = Input_GetFirstController();

    framebuffer = FRAMEBUFFER1;

    while (1) {
        osContStartReadData(&gControllerReadMessageQueue);
        osRecvMesg(&gControllerReadMessageQueue, NULL, 1);
        osContGetReadData(gContpadArrayB);
        if (gPlayerControllerIndex != -1) {
            osContStartReadData(&gSerialInterfaceMessageQueue);
        }

        gCurrentGraphicsTask->t.type = M_GFXTASK;
        gCurrentGraphicsTask->t.flags = 0;
        gCurrentGraphicsTask->t.ucode_boot = (u64*)rspbootTextStart;
        gCurrentGraphicsTask->t.ucode_boot_size = (u32)rspbootTextEnd - (u32)rspbootTextStart;
        gCurrentGraphicsTask->t.ucode = (u64*)gspFast3DTextStart;
        gCurrentGraphicsTask->t.ucode_data = (u64*)gspFast3DDataStart;
        gCurrentGraphicsTask->t.output_buff = NULL;
        gCurrentGraphicsTask->t.output_buff_size = NULL;
        gCurrentGraphicsTask->t.ucode_size = 0x1000;
        gCurrentGraphicsTask->t.ucode_data_size = 0x800;
        gCurrentGraphicsTask->t.dram_stack = gDramStack;
        gCurrentGraphicsTask->t.dram_stack_size = sizeof(gDramStack);
        gCurrentGraphicsTask->t.data_ptr = gDisplayListData[gCurrentFramebufferIndex].dlist;
        gCurrentGraphicsTask->t.data_size = (u32)(
            (gDisplayListHead - gDisplayListData[gCurrentFramebufferIndex].dlist) * sizeof(Gfx)
        );
        gCurrentGraphicsTask->t.yield_data_ptr = gYeildData;
        gCurrentGraphicsTask->t.yield_data_size = sizeof(gYeildData);

        osWritebackDCacheAll();
        osSpTaskLoad(gCurrentGraphicsTask);
        osSpTaskStartGo(gCurrentGraphicsTask);
        Sound_Update();
        Sound_NextBuffer();

        gCurrentFramebufferIndex = 1 - gCurrentFramebufferIndex;

        Graphics_Begin_Frame(gCurrentFramebufferIndex);
        osRecvMesg(&gDisplayProcessorMessageQueue, NULL, 1);
        Sound_StartTask();
        osViSwapBuffer(framebuffer);
        LookAt_Update();

        if (MQ_IS_FULL(&gVideoInterfaceMessageQueue)) {
            Sound_Update();
            Sound_NextBuffer();
            osRecvMesg(&gVideoInterfaceMessageQueue, &gEventMessage, 1);
            Sound_StartTask();
        }

        osRecvMesg(&gVideoInterfaceMessageQueue, &gEventMessage, 1);

        if (gCurrentFramebufferIndex) {
            framebuffer = FRAMEBUFFER0; // framebuffer = gFramebuffer0;
        }
        else {
            framebuffer = FRAMEBUFFER1; // framebuffer = gFramebuffer1;
        }

        Input_Update();
    }
    Sound_Update();
}
