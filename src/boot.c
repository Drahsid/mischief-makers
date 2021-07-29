#include <data_symbols.h>
#include <function_symbols.h>
#include <inttypes.h>
#include <ultra64.h>

#pragma GLOBAL_ASM("asm/nonmatchings/boot/romMain.s")

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

    osViBlack((uint8_t)1U);
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
    osCreateThread(&D_8012A698, 1, &initproc, 0, &D_80126670, 0xA);
    osStartThread(&D_8012A698);
}

#ifdef NON_MATCHING
// Need to figure out the structures in the loop
void initproc(int32_t arg0) {
    uint32_t temp_t0;
    uint32_t temp_t1;
    uint32_t temp_t5;
    uint32_t temp_t7;
    uint32_t phi_t0;
    uint32_t phi_t7;
    uint32_t phi_t5;
    uint32_t phi_t1;
    uint32_t phi_v0;

    osCreateViManager(0xFE);
    if (osTvType == 2) {
        osViSetMode(osViModeTable + 0x1e); // osViSetMode ?
        Framebuffer_Clear();
        phi_t0 = (uint32_t)&osViModeTable + 0x1e;
        phi_t7 = (uint32_t)&D_8012AD10;
    loop_2:
        temp_t0 = phi_t0 + 0xC;
        *((uint32_t*)phi_t7) = *((uint32_t*)phi_t0);
        temp_t7 = phi_t7 + 0xC;
        *((uint32_t*)temp_t7 - 8) = *((uint32_t*)temp_t0 - 8);
        *((uint32_t*)temp_t7 - 4) = *((uint32_t*)temp_t0 - 4);
        phi_t0 = temp_t0;
        phi_t7 = temp_t7;
        if (temp_t0 != (&osViModeTable + 0x1e + 0x48)) {
            goto loop_2;
        }
        *((uint32_t*)temp_t7 + 0) = *((uint32_t*)temp_t0 + 0);
        *((uint32_t*)temp_t7 + 4) = *((uint32_t*)temp_t0 + 4);
        phi_v0 = &osViModeTable + 0x1e;
    }
    else {
        osViSetMode(osViModeTable + 2);
        Framebuffer_Clear();
        phi_t5 = (uint32_t)osViModeTable + 2;
        phi_t1 = (uint32_t)&D_8012AD10;
    loop_5:
        temp_t5 = phi_t5 + 0xC;
        *((uint32_t*)phi_t1) = *((uint32_t*)phi_t5);
        temp_t1 = phi_t1 + 0xC;
        *((uint32_t*)temp_t1 - 8) = *((uint32_t*)temp_t5 - 8);
        *((uint32_t*)temp_t1 - 4) = *((uint32_t*)temp_t5 - 4);
        phi_t5 = temp_t5;
        phi_t1 = temp_t1;
        if (temp_t5 != (uint32_t)(osViModeTable + 2 + 0x48)) {
            goto loop_5;
        }
        *((uint32_t*)temp_t1 + 0) = *((uint32_t*)temp_t5 + 0);
        *((uint32_t*)temp_t1 + 4) = *((uint32_t*)temp_t5 + 4);
        phi_v0 = &osViModeTable + 2;
    }
    D_8012AD08 = phi_v0;
    func_80099CF0(0x96, &D_8012AC38, &D_8012A678, 8);                     // osCreatePiManager ?
    osCreateThread(&D_8012A9F8, 0, &func_8009A2B8, 0, &D_80129670, 0xFA); // This is from libultra!
    osStartThread(&D_8012A9F8);
    osCreateThread(&D_8012A848, 3, &func_80000C20, arg0, &D_80128670, 0xA);
    osStartThread(&D_8012A848);
    osSetThreadPri(0, 0);

    while (1) {
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/initproc.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800008E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000A84.s")

#ifdef NON_MATCHING
// primary issue in matching is loading of data_ptr / data_size
void func_80000C20(int32_t arg0) {
    OSMesgQueue* new_var3;
    int new_var;
    void* phi_s2;

    func_80001B38();
    osCreateMesgQueue((OSMesgQueue*)(&D_8012ABA8), (void**)(&D_8012AC68), 1);
    new_var3 = &D_8012ABC0;
    osCreateMesgQueue((OSMesgQueue*)(&D_8012ABD8), (void**)(&D_8012AC70), 1);
    osSetEventMesg(4, &D_8012ABD8, D_8012AC80);
    func_800020BC();
    osCreateMesgQueue((OSMesgQueue*)(&D_8012ABF0), (void**)(&D_8012AC74), 1);
    osSetEventMesg(9, &D_8012ABF0, D_8012AC80);
    osCreateMesgQueue(new_var3, (void**)(&D_8012AC6C), 1);
    func_8009A790(0xA);
    func_8009A9B0(new_var3, D_8012AC80, 1);
    func_800008E0();
    func_80022D10();
    func_80000A84(D_800BE700);
    PlayerPort = get_first_active_controller();
    phi_s2 = (void*)0x803DA800;
    while (1) {
        func_8009AA80(&D_8012ADA0);
        osRecvMesg(&D_8012ADA0, 0, 1);
        osContGetReadData(&D_8012AD88);
        if (PlayerPort != -1) {
            if (1) {
                func_8009AA80(&D_8012AC08);
            }
        }

        D_8012AC84->t.type = 1;
        D_8012AC84->t.flags = 0;
        D_8012AC84->t.ucode_boot = 0x800BA9E0;
        D_8012AC84->t.ucode_boot_size = (&D_800BAAB0) - ((uint32_t*)0x800BA9E0);
        D_8012AC84->t.ucode = (uint64_t*)(&D_800BAAB0);
        D_8012AC84->t.ucode_data = (uint64_t*)(&D_800EEA10);
        D_8012AC84->t.output_buff = 0;
        D_8012AC84->t.output_buff_size = 0;
        D_8012AC84->t.ucode_size = 0x1000;
        D_8012AC84->t.ucode_data_size = 0x800;
        D_8012AC84->t.dram_stack = (uint64_t*)(&D_8011D970);
        D_8012AC84->t.dram_stack_size = 0x400;
        D_8012AC84->t.data_ptr = ((D_800BE700 * 0x6180) + 0x8012ADC0) + (new_var = 0x180);
        D_8012AC84->t.data_size = (((int32_t)((((*((uint32_t*)0x8012A670)) - 0x8012ADC0) + ((-((int32_t)(D_800BE700 * 0x6180))) & 0xFFFFu)) - new_var)) >> 3) * 8;
        D_8012AC84->t.yield_data_ptr = (uint64_t*)(&D_8011DDF0);
        D_8012AC84->t.yield_data_size = 0xDA0;

        osWritebackDCacheAll();
        osSpTaskLoad(D_8012AC84);
        osSpTaskStartGo(D_8012AC84);
        func_80002114();
        func_800028D0();
        D_800BE700 = 1 - (D_800BE700 & 0xFFFF);
        func_80000A84(D_800BE700 & 0xFFFF);
        osRecvMesg(&D_8012ABF0, 0, 1);
        func_800029EC();
        osViSwapBuffer(phi_s2);
        func_80010898();
        if (D_8012ABC0.validCount >= D_8012ABC0.msgCount) {
            D_8012AC84->t.ucode_boot = 0x800BA9E0;
            func_800028D0();
            osRecvMesg((uint32_t*)new_var3, &D_8012AC80, 1);
            func_800029EC();
        }

        phi_s2 = &D_8012AC80;
        osRecvMesg((uint32_t*)new_var3, phi_s2, 1);
        phi_s2 = (void*)0x803DA800;
        if (D_800BE700 != 0) {
            phi_s2 = (void*)0x801DA800;
        }

        getControllerInput();
    }

    func_80002114(new_var3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80000C20.s")
#endif

void getControllerInput(void) {
    osContGetReadData(ConpadArrayB);
    if (!ConpadArrayA[PlayerPort].errno) {
    }

    osContGetReadData(ConpadArrayA);

    if (ConpadArrayA[PlayerPort].errno == 0) {
        ButtonRaw = ConpadArrayA[PlayerPort].button;
        gJoyX = ConpadArrayA[PlayerPort].stick_x;
        gJoyY = ConpadArrayA[PlayerPort].stick_y;
    }
    else {
        ButtonRaw = 0U;
    }

    gButtonPress = (ButtonRaw ^ D_800BE538) & ButtonRaw;
    gButtonHold = ButtonRaw;
    D_800BE538 = ButtonRaw;
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/get_first_active_controller.s")

void func_800011F0(int32_t arg0, uint32_t arg1, uint32_t arg2) {
    uint32_t sp30[6];
    uint32_t sp2C;

    osInvalDCache(arg1, arg2);
    osPiStartDma(&sp30, 0, 0, arg0, arg1, arg2, &D_8012ABA8);
    osRecvMesg(&D_8012ABA8, &sp2C, 1);
}

void func_80001264(void) {
    uint32_t sp1C;
    osRecvMesg(&D_8012ABA8, &sp1C, 1);
}

void func_80001290(int32_t arg0, uint32_t arg1, uint32_t arg2) {
    uint32_t sp2C[2];
    uint16_t sp28[8];

    osInvalDCache(arg1, arg2);
    osPiStartDma(&sp28, 0, 0, arg0, arg1, arg2, &D_8012ABA8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800012F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000147C.s")

void GameMode_tick(void) {
    switch (gGameState) {
        case 0: {
            func_80022F48(); // soft reset
            break;
        }
        case 1: {
            SplashScreen_tick(); // intro
            break;
        }
        case 2: {
            TitleScreen_tick(); // titlescreen
            break;
        }
        case 3: {
            SoundTest_tick(); // sound test
            break;
        }
        case 4: {
            StageSelect_tick(); // debug level select
            break;
        }
        case 5: {
            func_800232A4(); // loading stage
            break;
        }
        case 6: {
            GamePlay_tick(); // stage update
            break;
        }
        case 7: {
            continue_screen(); // game over
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
            AttrectMode_tick(); // demo mode
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
uint16_t func_8000178C(void) {
    D_800BE5A4 = (D_800BE5A4 * 0x85) + 1;
    return D_800BE5A4 / 0x100;
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800017D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001988.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001A80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80001B38.s")

void func_800020BC(void) {
    osCreateMesgQueue(&D_801377D0, &D_801378C0, 1);
    osSetEventMesg(4, &D_801377D0, 0);
    osSendMesg(&D_801377D0, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800028D0.s")

void func_800029EC(void) {
    osWritebackDCacheAll();
    osSpTaskLoad(D_8016E6F0);
    osSpTaskStartGo(D_8016E6F0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002A2C.s")

void func_80002AE0(int32_t arg0, uint32_t arg1, uint32_t arg2) {
    osWritebackDCacheAll();
    osPiStartDma(&D_801378C8, 0, 0, arg0, arg1, arg2, &D_801377B8);
    osRecvMesg(&D_801377B8, 0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80002F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800032C4.s")

int32_t func_8000334C(UNK_TYPE arg0) {
    return func_80003020(arg0, -1, -1, 0x81, 0xFF, 0);
}

void func_80003380(UNK_TYPE arg0) {
    func_80003020(arg0, -1, -1, 0x91, 0xFF, 0);
}

#ifdef NON_MATCHING
// Differences are regalloc
void func_800033B4(UNK_TYPE arg0, int16_t arg1) {
    func_80003020(arg0, arg1, -1, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800033B4.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void func_800033F0(UNK_TYPE arg0, int8_t arg1) {
    func_80003020(-1, arg1, -1, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800033F0.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void func_80003430(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    func_80003020(arg0, arg1, arg2, 0x81, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003430.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void func_80003474(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    func_80003020(arg0, arg1, arg2, 0x91, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003474.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void func_800034B8(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    func_80003020(arg0, arg1, arg2, 0x92, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800034B8.s")
#endif

#ifdef NON_MATCHING
// Differences are regalloc
void func_800034FC(UNK_TYPE arg0, int16_t arg1, int8_t arg2) {
    func_80003020(arg0, arg1, arg2, 0x93, 0xFF, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800034FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800035F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800036C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003828.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800038C8.s")

#ifdef NON_MATCHING
// Differences are regalloc
void func_80003980(UNK_TYPE arg0, uint16_t arg1) {
    func_80003020(arg0, -1, -1, 0xC1, arg1, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003980.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800039B8.s")

void func_80003A10(void) {
    func_80003A38();
    func_80003A64();
}

void func_80003A38(void) {
    alSeqpStop(D_8016DFE4);
    bssStart = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003A64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80003F24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800040A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_800045F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004648.s")

void func_800046FC(int32_t* arg0) {
    int32_t sp1C;
    int32_t* temp_a0;

    temp_a0 = &sp1C;
    sp1C = *arg0;
    spFinish(temp_a0);
    *arg0 = (int32_t)(sp1C - 8);
}

void NOTosSetTime(int32_t arg0, uint32_t arg1) {
    D_800C4EC4 = arg0;
    D_800C4EC8 = arg1;
}

void func_8000474C(int32_t arg0, uint32_t arg1) {
    D_800C4EBC = arg0;
    D_800C4EC0 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004760.s")

#ifdef NON_MATCHING
void func_8000477C(uint64_t arg0, int8_t arg1, int8_t arg2, int8_t arg3) {
    int8_t new_var;
    new_var = arg3;
    D_800C4EAC = arg0;
    D_800C4EB0 = (0, arg1);
    D_800C4EB4 = arg2;
    D_800C4EB8 = new_var;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_8000477C.s")
#endif

void func_800047B0(int32_t arg0) {
    UNK_TYPE* new_var;
    new_var = &D_800C4E5C;
    spClearAttribute(&D_800C4E5C, 0xFFFF);
    if (arg0 != 0) {
        spSetAttribute(new_var, 1);
    }
    else {
        spClearAttribute(new_var, 1);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/boot/sprite_func.s")

#pragma GLOBAL_ASM("asm/nonmatchings/boot/func_80004910.s")
