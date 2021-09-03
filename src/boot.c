#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

// this is hand-written
#pragma GLOBAL_ASM("asm/nonmatchings/boot/entrypoint.s")

#ifdef NON_MATCHING
/* I have no idea how this regalloc is produced
 * It stores 0 in a bunch of registers, and uses about 10 at a time to write to the cfb
 * However, obviously this should get get optimized to use $r0
 * And that is what we see in this current code
 */
void Framebuffer_Clear(void) {
    uint32_t* cfb;
    int32_t index;
    int32_t t8;
    int32_t t7;
    int32_t t6;
    int32_t t4;
    int32_t t2;
    int32_t t0;

    osViBlack(1);
    do {
        index = 0;
        cfb = (uint32_t*)0x803DA800;
    } while (0);
    do {
        t7 = 0x00010001;
        t6 = 0;
        t8 = 0;
        t0 = 0;
        t2 = 0;
        t4 = 0;

        index += 4;
        cfb[0x38] = t4;
        cfb[0x2e] = t4;
        cfb[0x24] = t4;
        cfb[0x5a] = t4;
        cfb[0x50] = t4;
        cfb[0x46] = t4;
        cfb[0x7c] = t4;
        cfb[0x72] = t4;
        cfb[0x68] = t4;
        cfb[0x3a] = t2;
        cfb[0x30] = t2;
        cfb[0x26] = t2;
        cfb[0x5c] = t2;
        cfb[0x52] = t2;
        cfb[0x48] = t2;
        cfb[0x7e] = t2;
        cfb[0x74] = t2;
        cfb[0x6a] = t2;
        cfb[0x60] = t2;
        cfb[0x3c] = t0;
        cfb[0x32] = t0;
        cfb[0x28] = t0;
        cfb[0x5e] = t0;
        cfb[0x54] = t0;
        cfb[0x4a] = t0;
        cfb[0x40] = t0;
        cfb[0x76] = t0;
        cfb[0x6c] = t0;
        cfb[0x62] = t0;
        cfb[0x3e] = t8;
        cfb[0x34] = t8;
        cfb[0x2a] = t8;
        cfb[0x20] = t8;
        cfb[0x56] = t8;
        cfb[0x4c] = t8;
        cfb[0x42] = t8;
        cfb[0x78] = t8;
        cfb[0x6e] = t8;
        cfb[100] = t8;
        cfb[0x36] = t6;
        cfb[0x2c] = t6;
        cfb[0x22] = t6;
        cfb[0x58] = t6;
        cfb[0x4e] = t6;
        cfb[0x44] = t6;
        cfb[0x7a] = t6;
        cfb[0x70] = t6;
        cfb[0x66] = t6;
        cfb[0x3f] = t7;
        cfb[0x3d] = t7;
        cfb[0x3b] = t7;
        cfb[0x39] = t7;
        cfb[0x37] = t7;
        cfb[0x35] = t7;
        cfb[0x33] = t7;
        cfb[0x31] = t7;
        cfb[0x2f] = t7;
        cfb[0x2d] = t7;
        cfb[0x2b] = t7;
        cfb[0x29] = t7;
        cfb[0x27] = t7;
        cfb[0x25] = t7;
        cfb[0x23] = t7;
        cfb[0x21] = t7;
        cfb[0x5f] = t7;
        cfb[0x5d] = t7;
        cfb[0x5b] = t7;
        cfb[0x59] = t7;
        cfb[0x57] = t7;
        cfb[0x55] = t7;
        cfb[0x53] = t7;
        cfb[0x51] = t7;
        cfb[0x4f] = t7;
        cfb[0x4d] = t7;
        cfb[0x4b] = t7;
        cfb[0x49] = t7;
        cfb[0x47] = t7;
        cfb[0x45] = t7;
        cfb[0x43] = t7;
        cfb[0x41] = t7;
        cfb[0x7f] = t7;
        cfb[0x7d] = t7;
        cfb[0x7b] = t7;
        cfb[0x79] = t7;
        cfb[0x77] = t7;
        cfb[0x75] = t7;
        cfb[0x73] = t7;
        cfb[0x71] = t7;
        cfb[0x6f] = t7;
        cfb[0x6d] = t7;
        cfb[0x6b] = t7;
        cfb[0x69] = t7;
        cfb[0x67] = t7;
        cfb[0x65] = t7;
        cfb[99] = t7;
        cfb[0x61] = t7;
        cfb[0x16] = 0;
        cfb[0xc] = 0;
        cfb[2] = 0;
        cfb[0x18] = 0;
        cfb[0xe] = 0;
        cfb[4] = 0;
        cfb[0x1a] = 0;
        cfb[0x10] = 0;
        cfb[6] = 0;
        cfb[0x1c] = 0;
        cfb[0x12] = 0;
        cfb[8] = 0;
        cfb[0x1e] = 0;
        cfb[0x14] = 0;
        cfb[10] = 0;
        cfb[0] = 0;
        cfb[0x1f] = t7;
        cfb[0x1d] = t7;
        cfb[0x1b] = t7;
        cfb[0x19] = t7;
        cfb[0x17] = t7;
        cfb[0x15] = t7;
        cfb[0x13] = t7;
        cfb[0x11] = t7;
        cfb[0xf] = t7;
        cfb[0xd] = t7;
        cfb[0xb] = t7;
        cfb[9] = t7;
        cfb[7] = t7;
        cfb[5] = t7;
        cfb[3] = t7;
        cfb += 0x80;
    } while (index != 0x4B0);

    cfb[1] = t7;
    osViSwapBuffer((void*)0x803DA800);
    osViBlack((uint8_t)0U);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/Framebuffer_Clear.s")
#endif

void mainproc(int32_t arg0) {
    osInitialize();
    osCreateThread(&idleThread, 1, Thread_IdleProc, 0, &D_80126670, 0xA);
    osStartThread(&idleThread);
}

#ifdef NON_MATCHING
// OK besides regalloc and do while loops
void Thread_IdleProc(int32_t arg0) {
    int32_t* phi_t0;
    int32_t* phi_t7;
    int32_t* phi_t5;
    int32_t* phi_t1;
    int32_t* phi_v0;

    osCreateViManager(0xFE);
    if (osTvType == OS_TV_MPAL) {
        osViSetMode(&osViModeTable[OS_VI_MPAL_LAN1]);
        Framebuffer_Clear();
        phi_t0 = &osViModeTable[OS_VI_MPAL_LAN1];
        phi_t7 = &D_8012AD10;
        phi_v0 = &osViModeTable[OS_VI_MPAL_LAN1];

        do {
            phi_t7[0] = phi_t0[0];
            phi_t7[1] = phi_t0[1];
            phi_t7[2] = phi_t0[2];

            phi_t0 += 3;
            phi_t7 += 3;
        } while (phi_t0 != (int32_t*)&osViModeTable[OS_VI_MPAL_LAN1 + 1]);

        phi_t7[0] = phi_t0[0];
        phi_t7[1] = phi_t0[1];
    }
    else {
        osViSetMode(&osViModeTable[OS_VI_NTSC_LAN1]);
        Framebuffer_Clear();
        phi_t5 = &osViModeTable[OS_VI_NTSC_LAN1];
        phi_t1 = &D_8012AD10;
        phi_v0 = &osViModeTable[OS_VI_NTSC_LAN1];

        do {
            phi_t1[0] = phi_t5[0];
            phi_t1[1] = phi_t5[1];
            phi_t1[2] = phi_t5[2];

            phi_t1 += 3;
            phi_t5 += 3;
        } while (phi_t5 != (int32_t*)&osViModeTable[OS_VI_NTSC_LAN1 + 1]);

        phi_t1[0] = phi_t5[0];
        phi_t1[1] = phi_t5[1];
    }
    D_8012AD08 = phi_v0;

    osCreatePiManager(0x96, &D_8012AC38, &D_8012A678, 8);
    osCreateThread(&rmonThread, 0, &Thread_RmonProc, 0, &D_80129670, 0xFA);
    osStartThread(&rmonThread);
    osCreateThread(&mainThread, 3, &Thread_MainProc, arg0, &D_80128670, 0xA);
    osStartThread(&mainThread);
    osSetThreadPri(0, 0);

    while (1) {
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/Thread_IdleProc.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800008E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000A84.s")

#ifdef NON_MATCHING
// Almost OK! Need to produce the sra 3, srl 3 at D_8012AC84->t.data_ptr = ..., then regalloc
void Thread_MainProc(int32_t arg0) {
    uint16_t* cfb;

    Sound_InitPlayers();
    osCreateMesgQueue(&D_8012ABA8, &D_8012AC68, 1);
    osCreateMesgQueue(&D_8012ABD8, &D_8012AC70, 1);
    osSetEventMesg(4, &D_8012ABD8, D_8012AC80);
    Sound_SetEventMesg();
    osCreateMesgQueue(&D_8012ABF0, &D_8012AC74, 1);
    osSetEventMesg(9U, &D_8012ABF0, D_8012AC80);
    osCreateMesgQueue(&D_8012ABC0, &D_8012AC6C, 1);
    osViSetSpecialFeatures(0xA);
    osViSetEvent(&D_8012ABC0, D_8012AC80, 1U);

    func_800008E0();
    func_80022D10();
    func_80000A84(gCurrentFramebufferIndex);

    gPlayerControllerIndex = Input_GetFirstController();
    cfb = D_803DA800;

    while (1) {
        osContStartReadData(&gContMesgq);
        osRecvMesg(&gContMesgq, NULL, 1);
        osContGetReadData(gConpadArrayB);
        if (gPlayerControllerIndex != -1) {
            osContStartReadData(&D_8012AC08);
        }

        D_8012AC84->t.type = 1;
        D_8012AC84->t.flags = 0;
        D_8012AC84->t.ucode_boot = (uint64_t*)rspbootTextStart;
        D_8012AC84->t.ucode_boot_size = (uint32_t)rspbootTextEnd - (uint32_t)rspbootTextStart;
        D_8012AC84->t.ucode = (uint64_t*)gspFast3DTextStart;
        D_8012AC84->t.ucode_data = (uint64_t*)gspFast3DDataStart;
        D_8012AC84->t.output_buff = NULL;
        D_8012AC84->t.output_buff_size = NULL;
        D_8012AC84->t.ucode_size = 0x1000;
        D_8012AC84->t.ucode_data_size = 0x800;
        D_8012AC84->t.dram_stack = (uint64_t*)&D_8011D970;
        D_8012AC84->t.dram_stack_size = 0x400;

        //(uint64_t*)((gCurrentFramebufferIndex * 0x6180) + gDListTail + 0x180);
        D_8012AC84->t.data_ptr = &gDListTail[gCurrentFramebufferIndex][48];

        //((s32)(((gDListHead - gDListTail) + -(s32)(gCurrentFramebufferIndex * 0x6180)) - 0x180) >> 3) * 8;
        D_8012AC84->t.data_size = (uint32_t)gDListHead - (uint32_t)(&gDListTail[gCurrentFramebufferIndex][48]);

        D_8012AC84->t.yield_data_ptr = (uint64_t*)&D_8011DDF0;
        D_8012AC84->t.yield_data_size = 0xDA0;

        osWritebackDCacheAll();
        osSpTaskLoad(D_8012AC84);
        osSpTaskStartGo(D_8012AC84);
        Sound_Tick();
        func_800028D0();

        gCurrentFramebufferIndex = 1 - gCurrentFramebufferIndex;

        func_80000A84(gCurrentFramebufferIndex);
        osRecvMesg(&D_8012ABF0, NULL, 1);
        func_800029EC();
        osViSwapBuffer(cfb);
        func_80010898();

        // D_8012ABC0 is probably the retrace/vsync queue
        if (MQ_IS_FULL(&D_8012ABC0)) { // if (D_8012ABC0.validCount >= D_8012ABC0.msgCount) {
            Sound_Tick(&D_8012ABC0);
            func_800028D0();
            osRecvMesg(&D_8012ABC0, &D_8012AC80, 1);
            func_800029EC();
        }

        osRecvMesg(&D_8012ABC0, &D_8012AC80, 1);

        if (gCurrentFramebufferIndex != 0) {
            cfb = D_801DA800;
        }

        Input_Update();
    }
    Sound_Tick();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/Thread_MainProc.s")
#endif

void Input_Update(void) {
    osContGetReadData(gConpadArrayB);
    if (!gConpadArrayA[gPlayerControllerIndex].errno) {}

    osContGetReadData(gConpadArrayA);

    if (gConpadArrayA[gPlayerControllerIndex].errno == 0) {
        gButtonCur = gConpadArrayA[gPlayerControllerIndex].button;
        gJoyX = gConpadArrayA[gPlayerControllerIndex].stick_x;
        gJoyY = gConpadArrayA[gPlayerControllerIndex].stick_y;
    }
    else gButtonCur = 0U;

    gButtonPress = (gButtonCur ^ D_800BE538) & gButtonCur;
    gButtonHold = gButtonCur;
    D_800BE538 = gButtonCur;
}
/*
s32 Input_GetFirstController(void){
  s32 sVar1;
  byte abStack5 [5];

  osCreateMesgQueue(&D_8012AC20,&D_8012AC7C,1);
  osSetEventMesg(5,&D_8012AC20,(OSMesg)0x1);
  osContReset(&D_8012AC20,abStack5,contStatArray);
  osCreateMesgQueue(&D_8012AC08,&OSMesg_8012ac78,1);
  osSetEventMesg(5,&D_8012AC08,(OSMesg)0x0);
  osCreateMesgQueue(&gContMesgq,&OSMesg_8012adb8,2);
  osSetEventMesg(5,&gContMesgq,(OSMesg)0x2);
  if (((abStack5[0] & 1) == 0) || ((contStatArray[0].errno & CONT_NO_RESPONSE_ERROR))) {
    if (((abStack5[0] & 2) == 0) || ((contStatArray[1].errno & CONT_NO_RESPONSE_ERROR))) {
      if (((abStack5[0] & 4) == 0) || ((contStatArray[2].errno & CONT_NO_RESPONSE_ERROR))) {
        if ((abStack5[0] & 8) == 0) sVar1 = -1;
        else {
          sVar1 = -1;
          if ((contStatArray[3].errno & CONT_NO_RESPONSE_ERROR) == 0) {sVar1 = 3;
        }
      }
      else sVar1 = 2;
    }
    else sVar1 = 1;
  }
  else sVar1 = 0;
  return sVar1;
}*/


#pragma GLOBAL_ASM("asm/nonmatchings/boot/Input_GetFirstController.s")

int32_t func_800011F0(uint32_t devaddr, void* vaddr, uint32_t nbytes) {
    OSIoMesg mb;
    OSMesg mesg;

    osInvalDCache(vaddr, nbytes);
    osPiStartDma(&mb, 0, 0, devaddr, vaddr, nbytes, &D_8012ABA8);
    return osRecvMesg(&D_8012ABA8, &mesg, 1);
}

int32_t func_80001264(void) {
    OSMesg mesg;
    return osRecvMesg(&D_8012ABA8, &mesg, 1);
}

int32_t func_80001290(int32_t dir, void* vaddr, uint32_t nbytes) {
    OSIoMesg mb; // rewrite so this is OSIoMesg and matches

    osInvalDCache(vaddr, nbytes);
    return osPiStartDma(&mb, 0, 0, dir, vaddr, nbytes, &D_8012ABA8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800012F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000147C.s")

void GameState_Tick(void) {
    switch (gGameState) {
        case 0: {
            func_80022F48(); // soft reset
            break;
        }
        case 1: {
            Intro_Tick(); // intro
            break;
        }
        case 2: {
            TitleScreen_Tick(); // titlescreen
            break;
        }
        case 3: {
            SoundTest_Tick(); // sound test
            break;
        }
        case 4: {
            StageSelect_Tick(); // debug level select
            break;
        }
        case 5: {
            func_800232A4(); // loading stage
            break;
        }
        case 6: {
            GamePlay_Tick(); // stage update
            break;
        }
        case 7: {
            GamePlay_Tick_Continue(); // game over
            break;
        }
        case 8: {
            func_80388000(); // unknown
            break;
        }
        case 9: {
            func_80388008(); // unknown
            break;
        }
        case 10: {
            AttractMode_Tick(); // demo mode
            break;
        }
        case 11: {
            func_80007C8C(); // fileselect
            break;
        }
        case 12: {
            func_8001B460(); // transition
            break;
        }
        case 14: {
            func_8001D654(); // level select (best times?)
            break;
        }
        default: {
            break; // applies for case 13?
        }
    }
}

// this is a linear congruential algorithm for prng
uint16_t Rand(void) {
    gRNGSeed = (gRNGSeed * 0x85) + 1;
    return gRNGSeed / 0x100;
}
